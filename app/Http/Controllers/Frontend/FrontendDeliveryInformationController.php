<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\DeliveryInformation;
use App\Models\Customer;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\Shipping;
use App\Models\Cart;
use App\Models\WebsiteData;
use App\Models\CustomerAddressBook;
use App\Services\OrdersApiDataService;
use Illuminate\Support\Facades\Mail;
use App\Mail\OrderConfirmationMail;
use Illuminate\Support\Facades\Log;
use App\Jobs\ProcessOrder;

class FrontendDeliveryInformationController extends Controller
{

    public function add_delivery_information(Request $request)
    {

        $websitedata = WebsiteData::first();
        $shippingcostapplytype = $websitedata->shipping_cost_apply_type;
        
        $full_name = $request->input('full_name');
        $invoice_email = $request->input('invoice_email');
        $phone = $request->input('phone');
        $selectedCity = $request->input('city');
        $selectedProvince = $request->input('province');
        $selectedZone = $request->input('zone');
        $landmark = $request->input('landmark');
        $address = $request->input('street_address');
        $shipping = Shipping::where('id', $selectedCity)->first();
        $shippingCost = $shipping->shipping_cost;
        if ($shippingcostapplytype === 'itemwisecost') {
            $cart = session()->get('cart', []);
            $cartItemCount = count($cart); // Count items in the guest cart
            $shippingCost = $shippingCost * $cartItemCount;
        } else if ($shippingcostapplytype === 'citywisecost') {
            $shippingCost = $shippingCost;
        }

        session()->put('shipping', [
            'full_name' => $full_name,
            'invoice_email' => $invoice_email,
            'phone' => $phone,
            'city' => $selectedCity,
            'province' => $selectedProvince,
            'zone' => $selectedZone,
            'landmark' => $landmark,
            'address' => $address,
            'shipping_cost' => $shippingCost
        ]);

        // Redirect or handle as needed
        return redirect()->route('frontend.checkout')->with('success', 'Shipping Address set successfully.'); // Example route
    }


    public function create_order(Request $request)
    {

        // Fetch the cart for the authenticated user or session
        if (auth('customer')->check()) {
            $customerId = auth('customer')->id();
            $cart = Cart::where('customer_id', $customerId)->first();
            // Check if cart exists
            if (!$cart) {
                return redirect()->route('frontend.checkout')->withErrors('Cart is empty.');
            }

            // Create an instance of OrdersApiDataService
            $ordersApiDataService = new OrdersApiDataService();

            try {
                ProcessOrder::dispatch($customerId, $cart->id, $ordersApiDataService);
                return redirect()->route('frontend.account')->with('success', 'Order is being processed. You will receive a confirmation email shortly.');
            } catch (\Exception $e) {
                Log::error('Failed to dispatch order: ' . $e->getMessage());
                return redirect()->route('frontend.checkout')->withErrors('Failed to place order. Please try again.');
            }

        } else {
            $cart = session()->get('cart', []);
            $shippingData = session()->get('shipping', []);

            return redirect()->route('frontend.signin')
                ->with('success', 'Please signin to place order.');
        }

    }

}
