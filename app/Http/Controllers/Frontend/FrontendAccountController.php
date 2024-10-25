<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\Rule;
use Illuminate\Http\Request;
use App\Models\WebsiteData;
use App\Models\Cart;
use App\Models\Product;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\Province;
use App\Models\Shipping;
use App\Models\Wishlist;
use App\Models\CustomerAddressBook;
use App\Models\OrderItemCancel;
use App\Models\AddressZone;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Http;

class FrontendAccountController extends Controller
{
    // account
    public function account()
    {
        $websitedata = WebsiteData::first();
        $cartItemCount = 0;
        $cartproducts = collect(); // Initialize as an empty collection
        $orderCount = 0;
        $cancelledCount = 0;
        $wishitem_count = 0;

        $userData = session('user_data');
        $customer_user = Auth::user();
        $customerId = auth('customer')->id();
        $wishitem_count = Wishlist::where('customer_id', $customerId)->count();
        $cart = Cart::where('customer_id', $customerId)->first();
        $orderCount = Order::where('customer_id', $customerId)
            ->where('order_status', '!=', 'cancelled')
            ->count();
        $cancelledCount = Order::where('customer_id', $customerId)
            ->where('order_status', '=', 'cancelled')
            ->count();

        // Retrieve addresses with province and city relationships
        $addresses = $customer_user->addresses()
            ->with(['province', 'city', 'zone'])
            ->get();

        // Fetch default shipping and billing addresses
        $defaultShippingAddress = $addresses->firstWhere('default_shipping', 'Y');
        $defaultBillingAddress = $addresses->firstWhere('default_billing', 'Y');

        $order = Order::where('customer_id', $customerId)
            ->orderBy('created_at', 'desc')
            ->first(); // Get the most recent order

        if ($order) {
            // Fetch the items associated with the recent order
            $orderItems = OrderItem::where('order_id', $order->order_id)
            ->whereNotIn('id', function ($query) {
                $query->select('order_item_id')
                    ->from('order_cancel');
            })
            ->with('product.images')
            ->get();

        } else {
            $orderItems = []; // No items if no order found
        }


        if ($cart) {
            // Ensure $cart is not null before accessing its methods
            $cartItemCount = $cart->items()->count();
            $cartData = $cart->items()->get();

            // Ensure cartData is not empty
            if ($cartData->isNotEmpty()) {
                $cartproducts = Product::whereIn('product_code', $cartData->pluck('product_code'))
                    ->with('images') // Eager load images
                    ->get();

            }
        }

        return view("frontend.account", compact("websitedata", "cart", "cartproducts", "cartItemCount", "orderCount", "cancelledCount", "order", "orderItems", "customer_user", "addresses", "defaultShippingAddress", "defaultBillingAddress", "wishitem_count", "userData"));
    }

    //  dash-my-order 
    public function dashMyOrder(Request $request)
    {
        $websitedata = WebsiteData::first();
        $cartItemCount = 0;
        $orderCount = 0;
        $wishitem_count = 0;
        $cartproducts = collect(); // Initialize as an empty collection

        $customerId = auth('customer')->id();
        $wishitem_count = Wishlist::where('customer_id', $customerId)->count();
        $cart = Cart::where('customer_id', $customerId)->first();
        $orderCount = Order::where('customer_id', $customerId)
            ->where('order_status', '!=', 'cancelled')
            ->count();

        $cancelledItems = OrderItemCancel::distinct()->pluck('order_item_id');
        
        // Default to 'last 5 orders' if no filter is applied
        $filter = $request->input('filter', 'last_5_orders');
        
        $query = Order::where('customer_id', $customerId)
            ->with(['orderItems' => function ($query) use ($cancelledItems) {
                $query->whereNotIn('id', $cancelledItems); // Exclude canceled order items
            }, 'orderItems.product.images'])
            ->whereHas('orderItems', function ($query) use ($cancelledItems) {
                $query->whereNotIn('id', $cancelledItems); // Ensure only orders with non-canceled items are fetched
            });
            
        switch ($filter) {
            case 'last_5_orders':
                $query->latest()->take(5);
                break;
            case 'last_15_days':
                $query->where('created_at', '>=', Carbon::now()->subDays(15));
                break;
            case 'last_30_days':
                $query->where('created_at', '>=', Carbon::now()->subDays(30));
                break;
            case 'last_6_months':
                $query->where('created_at', '>=', Carbon::now()->subMonths(6));
                break;
            case 'last_12_months':
                $query->where('created_at', '>=', Carbon::now()->subMonths(12));
                break;
            case 'all_orders':
                break; // No filter applied
        }

        $orders = $query->orderBy('created_at', 'desc')->get();

        // Prepare each product with the path of the first image
        foreach ($orders as $order) {
            foreach ($order->orderItems as $orderItem) {
                // Ensure the product exists
                if ($orderItem->product) {
                    // Get the first image of the product
                    $firstImage = $orderItem->product->images->first();
                    // Set the image path or null if no image
                    $orderItem->product->image_path = $firstImage ? asset('public/' . $firstImage->image_path) : null;
                }
            }
        }

        if ($cart) {
            // Ensure $cart is not null before accessing its methods
            $cartItemCount = $cart->items()->count();
            $cartData = $cart->items()->get();

            // Ensure cartData is not empty
            if ($cartData->isNotEmpty()) {
                $cartproducts = Product::whereIn('product_code', $cartData->pluck('product_code'))
                    ->with('images') // Eager load images
                    ->get();

            }
        }
        return view("frontend.dash-my-order", compact("websitedata", "cart", "cartproducts", "cartItemCount", "orders", "orderCount", "filter", "wishitem_count"));
    }

    // address-book 
    public function address_book()
    {
        $websitedata = WebsiteData::first();
        $cartItemCount = 0;
        $orderCount = 0;
        $wishitem_count = 0;
        $cartproducts = collect(); // Initialize as an empty collection

        $customer_user = Auth::user();
        $addresses = $customer_user->addresses()
            ->with(['province', 'city', 'zone'])
            ->get();

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
        return view("frontend.address-book", compact("websitedata", "cart", "cartproducts", "cartItemCount", "addresses", "orderCount", "wishitem_count"));
    }

    // profile-edit
    public function profile_edit()
    {
        $websitedata = WebsiteData::first();
        $customer_user = Auth::user();
        $cartItemCount = 0;
        $orderCount = 0;
        $wishitem_count = 0;
        $cartproducts = collect(); // Initialize as an empty collection

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
        return view("frontend.profile-edit", compact("websitedata", "cart", "cartproducts", "cartItemCount", "customer_user", "orderCount", "wishitem_count"));
    }

    public function profile_update(Request $request)
    {

        // Get the authenticated user
        $customer_user = Auth::user();

        // Validate the input
        $request->validate([
            'full_name' => 'required|string',
            'phone' => 'required|string'
        ]);

        // Update user details
        $customer_user->full_name = $request->input('full_name');
        $customer_user->phone = $request->input('phone');
        $customer_user->save();

        // Redirect with a success message
        return redirect()->route('frontend.account')->with('success', 'Profile updated successfully!');
    }

    // address-add page
    public function address_add()
    {
        $websitedata = WebsiteData::first();
        $customer_user = Auth::user();
        $provinces = Province::all()->pluck('province_name', 'id');
        $cartItemCount = 0;
        $orderCount = 0;
        $wishitem_count = 0;
        $cartproducts = collect(); // Initialize as an empty collection

        $customerId = auth('customer')->id();
        $wishitem_count = Wishlist::where('customer_id', $customerId)->count();
        $cart = Cart::where('customer_id', $customerId)->first();
        $orderCount = Order::where('customer_id', $customerId)
            ->where('order_status', '!=', 'cancelled')
            ->count();

        // Check if the user has any address with default_shipping or default_billing set to 'Y'
        $user = auth('customer')->user();
        $hasDefaultAddress = $user->addresses()->where(function ($query) {
            $query->where('default_shipping', 'Y')
                ->orWhere('default_billing', 'Y');
        })->exists();

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
        return view("frontend.address-add", compact("websitedata", "cart", "cartproducts", "cartItemCount", "provinces", "hasDefaultAddress", "customer_user", "orderCount", "wishitem_count"));

    }

    // address-edit
    public function address_edit($id)
    {
        $websitedata = WebsiteData::first();
        $cartItemCount = 0;
        $orderCount = 0;
        $wishitem_count = 0;
        $selectedProvince = null;
        $selectedCity = null;
        $selectedZone = null;
        $cartproducts = collect(); // Initialize as an empty collection

        $customerId = auth('customer')->id();
        $wishitem_count = Wishlist::where('customer_id', $customerId)->count();
        $address = CustomerAddressBook::with(['province', 'city'])->findOrFail($id);
        $provinces = Province::pluck('province_name', 'id');
        $selectedProvince = $address->province_id;
        $selectedCity = $address->city_id;
        $selectedZone = $address->zone_id;

        $cart = Cart::where('customer_id', $customerId)->first();
        $orderCount = Order::where('customer_id', $customerId)
            ->where('order_status', '!=', 'cancelled')
            ->count();
        if ($cart) {
            $cartItemCount = $cart->items()->count();
            $cartData = $cart->items()->get();
            $cartproducts = Product::whereIn('product_code', $cartData->pluck('product_code'))->get();
            $cartproducts = Product::whereIn('product_code', $cartData->pluck('product_code'))
                ->with('images') // Eager load images
                ->get();

        } else {
            // Handle the case where no cart is found
            $cartData = collect(); // Empty collection
        }
        return view("frontend.address-edit", compact("websitedata", "cart", "cartproducts", "cartItemCount", "address", "provinces", "selectedCity", "selectedProvince", "selectedZone", "orderCount", "wishitem_count"));
    }

    public function address_update(Request $request, $id)
    {
        $request->validate([
            'full_name' => 'required',
            'phone' => 'required',
            'province' => 'required',
            'city' => 'required',
            'zone' => 'required',
            'address' => 'required',
        ]);

        $address = CustomerAddressBook::findOrFail($id);
        $provinceId = $request->input('province');
        $cityId = $request->input('city');
        $zoneId = $request->input('zone');

        $address->update([
            'full_name' => $request->input('full_name'),
            'phone' => $request->input('phone'),
            'province_id' => $provinceId,
            'city_id' => $cityId,
            'zone_id' => $zoneId,
            'address' => $request->input('address'),
            'landmark' => $request->input('landmark'),
            'address_type' => $request->input('address_type'),
        ]);

        return redirect()->route('frontend.address.book')->with('success', 'Address updated successfully');
    }
    

    // change-password
    public function change_password()
    {
        $websitedata = WebsiteData::first();
        $customer_user = Auth::user();
        $cartItemCount = 0;
        $orderCount = 0;
        $wishitem_count = 0;
        $cartproducts = collect(); // Initialize as an empty collection

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
        return view("frontend.change-password", compact("websitedata", "cart", "cartproducts", "cartItemCount", "customer_user", "orderCount", "wishitem_count"));
    }
    
    // change-password
    public function password_update(Request $request)
    {
        $websitedata = WebsiteData::first();
        $company_name = $websitedata->company_name;
        $company_logo_header = $websitedata->company_logo_header;

        // Validate additional details
        $request->validate([
            'old_password' => 'required|string',
            'new_password' => 'required|string',
            'confirm_new_password' => 'required'
        ]);


        // Fetch API configuration for token generation
        $changepasswordapi = DB::table('api')
            ->where('api_name', 'CP') // Assuming 'P' is the identifier for auth config
            ->first(['api_value as change_password_url', 'db_name']);
           
        if (!$changepasswordapi || !$changepasswordapi->change_password_url) {
            Log::error('Change Password api not found.');
            return;
        }
        
        $userName = $request->userName;
        $oldPassword = $request->old_password;
        $newPassword = $request->new_password;
        $confirmNewPassword = $request->confirm_new_password;
        $access_token = session('user_data.accessToken');

        // Send change password data to external API
        $apiResponse = $this->sendChangePasswordDataToExternalApi($changepasswordapi, $userName, $oldPassword, $newPassword, $confirmNewPassword, $access_token);
            
        // Handle the API response
        if ($apiResponse && ($apiResponse['status'] === 'success')) {
            // Send verification email
            // Mail::to($customer->email)->send(new VerificationCodeMail($customer_name, $apiResponse['ActCode'], $company_name, $company_logo_header));
            return back()->with('success', 'Password Changed successfully.');
        }

    }
    
    protected function sendChangePasswordDataToExternalApi($changepasswordapi, $userName, $oldPassword, $newPassword, $confirmNewPassword, $access_token)
    {
        try {
            // Prepare the URL with query parameters
            $url = $changepasswordapi->change_password_url . '?' . http_build_query([
                'storecode' => $changepasswordapi->db_name,
                'userName' => $userName,
                'prevPass' => $oldPassword,
                'newPass' => $newPassword,
                'confirmPass' => $confirmNewPassword
            ]);
    
            // Send the POST request to the constructed URL
            $response = Http::withHeaders([
                'Authorization' => 'Bearer ' . $access_token
            ])->post($url);
    
            if ($response->successful()) {
                return $response->json();
            } else {
                Log::error('API response error', [
                    'status' => $response->status(),
                    'body' => $response->body()
                ]);
                return null;
            }
        } catch (\Exception $e) {
            Log::error('Exception occurred while changing password.', ['error' => $e->getMessage()]);
            return null;
        }
    }
    

    public function setDefaultShipping($id)
    {
        // Set the current address as default shipping
        CustomerAddressBook::where('default_shipping', 'Y')->update(['default_shipping' => null]);
        $address = CustomerAddressBook::find($id);
        if ($address) {
            $address->default_shipping = 'Y';
            $address->save();
        }

        return redirect()->back()->with('success', 'Default shipping address updated successfully.');
    }

    public function setDefaultBilling($id)
    {
        // Set the current address as default billing
        CustomerAddressBook::where('default_billing', 'Y')->update(['default_billing' => null]);
        $address = CustomerAddressBook::find($id);
        if ($address) {
            $address->default_billing = 'Y';
            $address->save();
        }

        return redirect()->back()->with('success', 'Default billing address updated successfully.');
    }

    public function address_create(Request $request)
    {

        $customerId = auth('customer')->id();
        $request->validate([
            'full_name' => 'required',
            'phone' => 'required',
            'province' => 'required',
            'city' => 'required',
            'zone' => 'required',
            'address' => 'required',
        ]);
        $addressbook = new CustomerAddressBook();
        $addressbook->customer_id = $customerId;
        $addressbook->full_name = $request->full_name;
        $addressbook->phone = $request->phone;
        $addressbook->province_id = $request->province;
        $addressbook->city_id = $request->city;
        $addressbook->zone_id = $request->zone;
        $addressbook->landmark = $request->landmark;
        $addressbook->address = $request->address;
        $addressbook->address_type = $request->address_type;
        $addressbook->default_shipping = $request->default_shipping;
        $addressbook->default_billing = $request->default_billing;

        if ($addressbook->save()) {
            session()->flash('success', 'Address have been successfully created.');
        } else {
            session()->flash('error', 'Error !');
        }
        return redirect()->route('frontend.address.book');
    }

    public function getCity($province_id)
    {
        // Check if the Shipping model is correctly set up
        try {
            // Ensure $province_id is valid
            if (!is_numeric($province_id)) {
                throw new \Exception("Invalid province ID.");
            }

            $cities = Shipping::where('province_id', $province_id)
                ->pluck('city', 'id');

            return response()->json($cities);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Unable to fetch cities'], 500);
        }
    }
    
    public function getZone($city_id)
    {
        // Check if the AddressZone model is correctly set up
        try {
            // Ensure $city_id is valid
            if (!is_numeric($city_id)) {
                throw new \Exception("Invalid city ID.");
            }

            $zones = AddressZone::where('city_id', $city_id)
                ->pluck('zone_name', 'id');

            return response()->json($zones);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Unable to fetch zones'], 500);
        }
    }

}
