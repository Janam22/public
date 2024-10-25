<?php

namespace App\Jobs;

use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Foundation\Queue\Queueable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\Cart;
use App\Models\CustomerAddressBook;
use App\Models\DeliveryInformation;
use App\Models\WebsiteData;
use App\Models\Customer;
use App\Services\OrdersApiDataService;
use Illuminate\Support\Facades\Mail;
use App\Mail\OrderConfirmationMail;
use Illuminate\Support\Facades\Log;
use Exception;

class ProcessOrder implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;
    protected $customerId;
    protected $cartId;
    protected $ordersApiDataService;

    /**
     * Create a new job instance.
     */
    public function __construct($customerId, $cartId, OrdersApiDataService $ordersApiDataService)
    {
        $this->customerId = $customerId;
        $this->cartId = $cartId;
        $this->ordersApiDataService = $ordersApiDataService;
    }

    /**
     * Execute the job.
     */
    public function handle(): void
    {    
        try {
            $customer = Customer::findOrFail($this->customerId);
            $cart = Cart::findOrFail($this->cartId);
            $websitedata = WebsiteData::first();
            $company_name = $websitedata->company_name;
            $company_logo_header = $websitedata->company_logo_header;

            // Fetch addresses
            $addresses = CustomerAddressBook::where('customer_id', $customer->id)->get();
            if ($addresses->isEmpty()) {
                throw new Exception('No addresses found in address book.');
            }

            $billingAddress = $addresses->firstWhere('default_billing', 'Y') ?? $addresses->first();
            $shippingAddress = $addresses->firstWhere('default_shipping', 'Y') ?? $addresses->first();

            // Create delivery information
            $billingdeliveryInfo = DeliveryInformation::create([
                'customer_id' => $this->customerId,
                'full_name' => $billingAddress->full_name,
                'invoice_email' => $customer->email,
                'phone' => $billingAddress->phone,
                'province_id' => $billingAddress->province_id,
                'city_id' => $billingAddress->city_id,
                'zone_id' => $billingAddress->zone_id,
                'address' => $billingAddress->address,
                'landmark' => $billingAddress->landmark,
                'address_type' => $billingAddress->address_type,
                'type' => 'billing',
            ]);

            $shippingdeliveryInfo = DeliveryInformation::create([
                'customer_id' => $this->customerId,
                'full_name' => $shippingAddress->full_name,
                'invoice_email' => $customer->email,
                'phone' => $shippingAddress->phone,
                'province_id' => $shippingAddress->province_id,
                'city_id' => $shippingAddress->city_id,
                'zone_id' => $shippingAddress->zone_id,
                'address' => $shippingAddress->address,
                'landmark' => $shippingAddress->landmark,
                'address_type' => $shippingAddress->address_type,
                'type' => 'shipping',
            ]);

            // Generate new order ID
            $prefix = '#ORD';
            $timestamp = now()->format('Ymd');
            $latestOrder = Order::whereDate('created_at', now()->toDateString())->latest('id')->first();
            $latestOrderId = $latestOrder ? intval(substr($latestOrder->order_id, -4)) : 0;
            $newOrderIdNumeric = $latestOrderId + 1;
            $newOrderId = $prefix . $timestamp . str_pad($newOrderIdNumeric, 4, '0', STR_PAD_LEFT);

            // Calculate order totals
            $ordersubtotal = $cart->subtotal;
            $ordershippingcost = $cart->shipping_cost_total;
            $total_before_tax = $ordersubtotal + $ordershippingcost;
            $tax_amount = 0;
            $total_amount = $tax_amount + $total_before_tax;

            // Create the order
            $order = Order::create([
                'order_id' => $newOrderId,
                'customer_id' => $this->customerId,
                'shipping_delivery_information_id' => $shippingdeliveryInfo->id,
                'billing_delivery_information_id' => $billingdeliveryInfo->id,
                'payment_method' => 'C', // Example, adjust as needed
                'subtotal' => $ordersubtotal,
                'tax' => $tax_amount,
                'shipping_cost' => $ordershippingcost,
                'total_amount' => $total_amount,
                'order_status' => 'Processing',
                'payment_status' => 'Pending',
            ]);

            // Update delivery information with the order ID
            $billingdeliveryInfo->update(['order_id' => $order->order_id]);
            $shippingdeliveryInfo->update(['order_id' => $order->order_id]);

            // Create order items
            foreach ($cart->items as $cartItem) {
                OrderItem::create([
                    'order_id' => $order->order_id,
                    'product_code' => $cartItem->product_code,
                    'quantity' => $cartItem->quantity,
                    'price' => $cartItem->price,
                    'subtotal' => $cartItem->quantity * $cartItem->price,
                ]);
            }

            // Prepare user details
            $userDetails = [
                'userCode' => $order->customer_id,
                'userName' => $customer->full_name,
                'phone' => $customer->phone,
                'deliveryTime' => now(),
            ];

            $Order = OrderItem::with('product')->where('order_id', $order->order_id)->get()->map(function($item) {
                return [
                    'product_name' => $item->product->product_name,
                    'sku' => $item->product_code,
                    'quantity' => $item->quantity,
                    'unitPrice' => $item->price,
                    'finalPrice' => $item->subtotal,
                ];
            })->toArray();

            // Send the order to the external API
            $this->ordersApiDataService->sendOrderData($newOrderId, $userDetails, $Order);

            // Send confirmation email
            Mail::to($customer->email)->send(new OrderConfirmationMail($newOrderId, $userDetails, $Order, $company_name, $company_logo_header));

            // Clear the cart
            $cart->update(['subtotal' => 0, 'shipping_cost_total' => 0]);
            $cart->items()->delete();
        } catch (Exception $e) {
            Log::error('Order processing failed: ' . $e->getMessage());
            throw $e; // Rethrow to handle it later
        }
    }
}
