<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\WebsiteData;
use App\Models\Cart;
use App\Models\OrderItem;
use App\Models\OrderItemCancel;
use App\Models\OrderCancelReasons;
use App\Models\Order;
use App\Models\Customer;
use App\Models\Wishlist;
use App\Services\OrderCancelApiDataService;
use Illuminate\Support\Facades\Mail;
use App\Mail\OrderCancelledMail;

class FrontendOrderCancelController extends Controller
{
    
    protected $orderCancelApiDataService;

    public function __construct(OrderCancelApiDataService $orderCancelApiDataService)
    {
        $this->orderCancelApiDataService = $orderCancelApiDataService;
    }
    
        //  ordercancellation
        public function MyOrderCancellation(Request $request)
        {
            $websitedata = WebsiteData::first();
            $cartItemCount = 0;
            $wishitem_count = 0;
            $orderCount = 0;
            $cartproducts = collect(); // Initialize as an empty collection
            $cancelreasons = OrderCancelReasons::all()->pluck('reason_name', 'id');
    
            $customerId = auth('customer')->id();
            $wishitem_count = Wishlist::where('customer_id', $customerId)->count();
            $cart = Cart::where('customer_id', $customerId)->first();
            $orderCount = Order::where('customer_id', $customerId)
                ->where('order_status', '!=', 'cancelled')
                ->count();
            if ($cart) {
                $cartItemCount = $cart->items()->count();
                $cartData = $cart->items()->get();
                $cartproducts = Product::whereIn('product_code', $cartData->pluck('product_code'))
                    ->with('images') // Eager load images
                    ->get();
    
            } else {
                // Handle the case where no cart is found
                $cartData = collect(); // Empty collection
            }

            $orderitemId = $request->input('order_item_id');
            $orderitem = OrderItem::where('id', $orderitemId)
                ->with('product.images')
                ->orderBy('created_at', 'desc')
                ->first(); // Get the most recent order

            return view("frontend.cancel-order", compact("websitedata", "cart", "cartproducts", "cartItemCount", "orderitem", "cancelreasons", "orderCount", "wishitem_count"));
        }


        public function CancelMyOrder(Request $request)
        {

            $websitedata = WebsiteData::first();
            $company_name = $websitedata->company_name;
            $company_logo_header = $websitedata->company_logo_header;
            
            // Validate additional details
            $request->validate([
                'reason_description' => 'required|string'
            ]);
        
            $order_item_id = $request->input('order_item_id');
            $cancel_reason = $request->input('cancel_reason');
            $reason_description = $request->input('reason_description');
            $policy_checked = $request->input('policy_checked'); 
            if ($policy_checked === "on") {
                $policy_checked = 'Y';
            } else {
                $policy_checked = 'N';
            }
            
            // Find the order item being canceled
            $orderItem = OrderItem::with('order')->findOrFail($order_item_id);
            $cancelreasons = OrderCancelReasons::findOrFail($cancel_reason);

            $order = $orderItem->order;
            $orderNumber = $orderItem->order->order_id;
            $api_order_id = $orderItem->order->api_order_id;
            $remarks = $cancelreasons->reason_name;

            $Order = [
                    'sku' => $orderItem->product_code,
                    'quantity' => 0,
                    'unitPrice' => 0,
                    'finalPrice' => 0,
                ];
    
            // Fetch only the canceled item details
            $OrderMail = [
                [
                    'product_name' => $orderItem->product->product_name,
                    'sku' => $orderItem->product_code,
                    'quantity' => $orderItem->quantity,
                    'unitPrice' => $orderItem->price,
                    'finalPrice' => $orderItem->subtotal,
                ]
            ];
    
            OrderItemCancel::create([
                'order_item_id' => $order_item_id,
                'cancel_reason' => $cancel_reason,
                'reason_description' => $reason_description,
                'policy_checked' => $policy_checked
            ]);
            
            // After creating the order items
            $customer_details = Customer::where('id', $order->customer_id)->first();
            $customer_name = $customer_details->full_name;
            Mail::to($customer_details->email)->send(new OrderCancelledMail($orderNumber, $remarks, $OrderMail, $customer_name, $company_name, $company_logo_header));

            //Send order to oms api
            $this->orderCancelApiDataService->sendOrderCancelData($api_order_id, $remarks, $Order);

            // Count remaining items that are not canceled
            $remainingItems = $order->orderItems()
                ->where('id', '!=', $order_item_id)
                ->whereNotIn('id', function($query) {
                    $query->select('order_item_id')
                        ->from('order_cancel');
                })
                ->count();
    
            if ($remainingItems === 0) {
                // If no remaining items, update order status to "Cancelled"
                $order->update(['order_status' => 'Cancelled',
                                'payment_status' => 'Cancelled']);
            } else {
                
                // Calculate new totals
                $subtotalReduction = $orderItem->subtotal; // Get the subtotal of the cancelled item
                $newSubtotal = $order->subtotal - $subtotalReduction;
                $newTotalAmount = $order->total_amount - $subtotalReduction;

                // Update order with new total amount and subtotal
                $order->update([
                    'subtotal' => $newSubtotal,
                    'total_amount' => $newTotalAmount,
                ]);
            }

            return redirect()->route('frontend.dash-my-order')->with('success', 'Your order item has been cancelled successfully.');

        }
}
