<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Models\WebsiteData;
use App\Models\Product;
use App\Models\Shipping;
use App\Models\Cart;
use App\Models\CartItem;
use App\Models\Province;
use App\Models\CustomerAddressBook;
use App\Models\AddressZone;
use App\Models\Order;
use App\Models\Wishlist;

class FrontendCartController extends Controller
{

    // cart
    public function cart()
    {
        $websitedata = WebsiteData::first();
        $provinces = Province::all()->pluck('province_name', 'id');
        $cartproducts = collect(); // Ensure $cartproducts is always a collection
        $selectedCity = null;
        $selectedProvince = null;
        $shippingCost = 0;
        $cartItemCount = 0;
        $orderCount = 0;
        $wishitem_count = 0;
        $isCartEmpty = true;
        $address = null; // Initialize address for both authenticated and guest users
        $default_shipping_addresses = null;

        if (auth('customer')->check()) {
            // For authenticated users
            $customerId = auth('customer')->id();
            $wishitem_count = Wishlist::where('customer_id', $customerId)->count();
            
            $orderCount = Order::where('customer_id', $customerId)
                ->where('order_status', '!=', 'cancelled')
                ->count();
                
            // Fetch all addresses for the authenticated customer where default_shipping = 'Y'
            $default_shipping_addresses = CustomerAddressBook::where('customer_id', $customerId)
                ->where('default_shipping', 'Y')
                ->with(['province', 'city', 'zone']) // Eager load the province and city relationships
                ->first();
            
            // If no default shipping address found, fetch any available address
            if (!$default_shipping_addresses) {
                $default_shipping_addresses = CustomerAddressBook::where('customer_id', $customerId)
                    ->with(['province', 'city', 'zone']) // Eager load the province, city and zone relationships
                    ->first();
            }

            //For cart details
            $cart = Cart::where('customer_id', $customerId)->first();
            if ($cart) {

                $cartItemCount = $cart->items()->count();
                $isCartEmpty = $cartItemCount === 0;
                $shippingCost = $cart->shipping_cost;

                // Retrieve cart items
                $cartData = $cart->items()->get();
                $cartproducts = Product::whereIn('product_code', $cartData->pluck('product_code'))
                    ->with('images') // Eager load images
                    ->get();
                          
            }

        } else {
            // For guest users
            $cart = session()->get('cart', []);
            $cartItemCount = count($cart); // Count items in the guest cart
            $isCartEmpty = $cartItemCount === 0;
            $cartproducts = Product::whereIn('product_code', array_keys($cart))->with('images')->get();
                
            $cartData = [];
            $checkoutData = session()->get('shipping', [
                'city' => null,
                'province' => null,
                'shipping_cost' => 0
            ]);
            $selectedCity = $checkoutData['city'] ?? null;
            $selectedProvince = $checkoutData['province'] ?? null;
            $shippingCost = $checkoutData['shipping_cost'] ?? 0;
        }

        return view("frontend.cart", compact("websitedata", "cart", "cartproducts", "cartItemCount", "shippingCost", "selectedCity", "selectedProvince", "isCartEmpty", "provinces", "default_shipping_addresses", "orderCount", "wishitem_count"));
    }


    public function cart_shippingcost(Request $request)
    {
        $websitedata = WebsiteData::first();
        $selectedCity = null;
        $selectedProvince = null;
        $shippingCost = 0;
        $cart = session()->get('cart', []);
        $cartItemCount = count($cart);

            // For guest users
            if ($request->has('getshippingcost')) {
                $request->validate([
                    'province' => 'required',
                    'city' => 'required'
                ]);

                $selectedCity = $request->input('city');
                $selectedProvince = $request->input('province');
                $shippingCost = Shipping::where('id', $selectedCity)->first();
                $shippingcosttotal = $shippingCost->shipping_cost;

                if ($cartItemCount >= 1){
                    if ($websitedata->shipping_cost_apply_type === "citywisecost"){
                        $shippingcosttotal = $shippingCost->shipping_cost;
                    } else if ($websitedata->shipping_cost_apply_type === "itemwisecost"){
                        $shippingcosttotal = $shippingcosttotal * $cartItemCount;
                    }
                } else {
                    $shippingcosttotal = 0;
                }

                // Store shipping details separately in the session
                session()->put('shipping', [
                    'city' => $selectedCity,
                    'province' => $selectedProvince,
                    'shipping_cost' => $shippingcosttotal
                ]);

            }

        return redirect()->route('frontend.cart')->with('success', 'Shipping cost calculated successfully!');
    }

    public function addItem(Request $request)
    {
        // Retrieve the product code and quantity
        $productId = $request->input('product_code');
        $quantity = $request->input('quantity');

        // Retrieve the product and its price
        $product = Product::where('product_code', $productId)->firstOrFail();
        $price = $product->sell_price;

        if (auth('customer')->check()) {
            // User is authenticated
            $customerId = auth('customer')->id();
            $customer_user = Auth::user();

            // Find or create a cart for the user
            $cart = Cart::where('customer_id', $customerId)->first();

            if (!$cart) {
                $cart = Cart::create([
                    'customer_id' => $customerId,
                    'province_id' => null,
                    'city_id' => null,
                    'tax' => 0, // Set default or calculated tax
                    'shipping_cost' => 0, // Set default or calculated shipping cost
                    'subtotal' => 0, // Set default or calculated subtotal
                ]);
            }

            // Find or create a cart item
            $cartItem = $cart->items()->where('product_code', $productId)->first();

            if ($cartItem) { 
                return redirect()->route('frontend.cart')->with('error', 'Item already in cart!');
            } else if ($quantity > $product->available_quantity) {
                return back()->with('error', 'Please select less than available quantity!');
            } else {
                // Add new item to the cart
                $cart->items()->create([
                    'product_code' => $productId,
                    'quantity' => $quantity,
                    'price' => $price,
                    'cart_id' => $cart->id // Save the cart_id
                ]);
            }

            $this->updateCartShippingCost($cart);
            // Update cart subtotal and save changes
            $this->updateCartTotals($cart);
            
            // Remove the same product from the wishlist
            $wishlistItem = Wishlist::where('customer_id', $customerId)
                        ->where('product_code', $productId) // Assuming `product_code` is the field to identify the item
                        ->first();

            if ($wishlistItem) {
                $wishlistItem->delete();
            }

        } else {

            $cart = session()->get('cart', []);
            // Check if the requested quantity exceeds available quantity
            if ($quantity > $product->available_quantity) {
                return back()->with('error', 'Please select less than available quantity!');
            }

            if (isset($cart[$productId])) {
                $cart[$productId] += $quantity;
            } else {
                $cart[$productId] = $quantity;
            }

            session()->put('cart', $cart);
            
            $shippingData = session()->get('shipping');
            if (!$shippingData) {
                $shippingData = [
                    'city' => null,
                    'province' => null,
                    'shipping_cost' => 0
                ];
            }
            $selectedCity = $shippingData['city'] ?? null;
            $selectedProvince = $shippingData['province'] ?? null;
            if ($selectedCity) {
                $websitedata = WebsiteData::first();
                $shippingcostapplytype = $websitedata->shipping_cost_apply_type;
                $shipping = Shipping::where('id', $selectedCity)->first();
                $shippingCost = $shipping->shipping_cost;
                if ($shippingcostapplytype === 'itemwisecost') {
                    $cartItemCount = count($cart); // Count items in the guest cart
                    $shippingCost = $shippingCost * $cartItemCount;
                } else if ($shippingcostapplytype === 'citywisecost') {
                    $shippingCost = $shippingCost;
                }
                
                session()->put('shipping', [
                    'city' => $selectedCity,
                    'province' => $selectedProvince,
                    'shipping_cost' => $shippingCost
                ]);

            }
            
        }
        return redirect()->route('frontend.cart')->with('success', 'Item added to cart successfully!');
    }

    private function updateCartShippingCost($cart)
    {
        $customerId = $cart->customer_id;

        // Fetch the customer's address
        $address = CustomerAddressBook::where('customer_id', $customerId)
            ->where('default_billing', 'Y') // Assuming you have a way to determine the default address
            ->first();

        if ($address) {
            $cityId = $address->city_id;

            // Fetch the shipping cost based on the city_id
            $shippingSetting = Shipping::where('id', $cityId)->first();
            $shippingcosttotal = $shippingSetting->shipping_cost;

            // Update the cart with the shipping cost if found
            if ($shippingSetting) {
                $cart->shipping_cost = $shippingcosttotal;
                $cart->save();
            }
        }
    }

    private function updateCartTotals($cart)
    {
        $websitedata = WebsiteData::first();
        $subtotal = $cart->items()->with('product')->get()->sum(function ($item) {
            return $item->quantity * $item->product->sell_price;
        });

        $numberOfItems = $cart->items()->count();
        $shippingCost = $cart->shipping_cost;
        if ($numberOfItems >= 1){
            if ($websitedata->shipping_cost_apply_type === "citywisecost"){
                $shippingcosttotal = $shippingCost;
            } else if ($websitedata->shipping_cost_apply_type === "itemwisecost"){
                $shippingcosttotal = $shippingCost * $numberOfItems;
            }
        } else {
            $shippingcosttotal = 0;
        }

        //$tax = $this->calculateTax($subtotal);
        $tax = 0;

        $user = auth('customer')->user();
        // Fetch the user's address
        $address = CustomerAddressBook::where('customer_id', $user->id)
            ->where('default_billing', 'Y') // Assuming you have a way to determine the default address
            ->first();

        // Default province and city ids
        $provinceId = null;
        $cityId = null;

        if ($address) {
            $provinceId = $address->province_id;
            $cityId = $address->city_id;
        }

        $cart->update([
            'subtotal' => $subtotal,
            'tax' => $tax,
            'shipping_cost_total' => $shippingcosttotal,
            'province_id' => $provinceId,
            'city_id' => $cityId,
        ]);
    }

    private function calculateSubtotal($items)
    {
        // Retrieve products and their sell prices
        $products = Product::whereIn('product_code', array_keys($items))->get();

        $subtotal = $products->sum(function ($product) use ($items) {
            return $product->sell_price * $items[$product->product_code];
        });

        return $subtotal;
    }

    private function calculateTax($subtotal)
    {
        // Example tax calculation (13% tax rate)
        return $subtotal;
    }

    public function removeItem(Request $request)
    {

        $productId = $request->input('product_code');

        if (auth('customer')->check()) {
            // For authenticated users
            $cart = Cart::where('customer_id', auth('customer')->id())->first();
            if ($cart) {
                $cartItem = $cart->items()->where('product_code', $productId)->first();
                if ($cartItem) {
                    $cartItem->delete();

                    // Optionally update cart totals after removal
                    $this->updateCartTotals($cart);
                }
            }
        } else {
            // For guest users
            $cart = session()->get('cart', []);
            if (isset($cart[$productId])) {
                unset($cart[$productId]);
                session()->put('cart', $cart);
                
                // Retrieve the selected city and province from the shipping session data
                $shippingData = session()->get('shipping', []);
                $selectedCity = $shippingData['city'] ?? null; // Default to null if not set
                $selectedProvince = $shippingData['province'] ?? null; // Default to null if not set
    
                // Recalculate shipping cost after item removal
                $websitedata = WebsiteData::first(); // Get website data, assuming needed for shipping rules
                $cartItemCount = count($cart); // Count the remaining items
    
                // Logic to determine the shipping cost based on the remaining items
                $shippingCost = 0;
    
                // Logic to determine shipping cost based on the current cart
                if ($cartItemCount > 0) {
                    // shipping cost calculation logic
                    $shippingDetails = Shipping::where('id', $selectedCity)->first(); // Assume you have $selectedCity
                    if ($shippingDetails) {
                        $shippingCost = $websitedata->shipping_cost_apply_type === "citywisecost"
                            ? $shippingDetails->shipping_cost
                            : $shippingDetails->shipping_cost * $cartItemCount;
                    }
                }

            }

            // Update the shipping info in the session
            session()->put('shipping', [
                'city' => $selectedCity,
                'province' => $selectedProvince,
                'shipping_cost' => $shippingCost
            ]);

        }

        return redirect()->route('frontend.cart')->with('success', 'Item removed from cart!');
    }


    public function update(Request $request)
    {
        // Handle removal of a product
        if ($request->has('remove_product')) {
            $productCode = $request->input('remove_product');

            if (auth('customer')->check()) {
                // For authenticated users
                $cart = Cart::where('customer_id', auth('customer')->id())->first();
                if ($cart) {
                    $cartItem = $cart->items()->where('product_code', $productCode)->first();
                    if ($cartItem) {
                        $cartItem->delete();

                        // Optionally update cart totals after removal
                        $this->updateCartTotals($cart);
                    }
                }
            } else {
                // For guest users
                $cart = session()->get('cart', []);
                if (isset($cart[$productCode])) {
                    unset($cart[$productCode]);
                    session()->put('cart', $cart);

                    // Retrieve the selected city and province from the shipping session data
                    $shippingData = session()->get('shipping', []);
                    $selectedCity = $shippingData['city'] ?? null; // Default to null if not set
                    $selectedProvince = $shippingData['province'] ?? null; // Default to null if not set
        
                    // Recalculate shipping cost after item removal
                    $websitedata = WebsiteData::first(); // Get website data, assuming needed for shipping rules
                    $cartItemCount = count($cart); // Count the remaining items
        
                    // You might have your logic to determine the shipping cost based on the remaining items
                    $shippingCost = 0;
        
                    // Logic to determine shipping cost based on the current cart
                    if ($cartItemCount > 0) {
                        // Add your shipping cost calculation logic here
                        // For example:
                        $shippingDetails = Shipping::where('id', $selectedCity)->first(); // Assume you have $selectedCity
                        if ($shippingDetails) {
                            $shippingCost = $websitedata->shipping_cost_apply_type === "citywisecost"
                                ? $shippingDetails->shipping_cost
                                : $shippingDetails->shipping_cost * $cartItemCount;
                        }
                    }
                }
                
                // Update the shipping info in the session
                session()->put('shipping', [
                    'city' => $selectedCity,
                    'province' => $selectedProvince,
                    'shipping_cost' => $shippingCost
                ]);

            }

            return redirect()->back()->with('success', 'Item removed from cart successfully.');
        }

        // Handle cart update
        if ($request->has('update_cart')) {
            $validatedData = $request->validate([
                'quantities.*' => 'required|integer|min:1',
            ]);

            if (auth('customer')->check()) {
                // For authenticated users
                $cart = Cart::where('customer_id', auth('customer')->id())->first();
                if ($cart) {
                    foreach ($validatedData['quantities'] as $productCode => $quantity) {
                        $cartItem = $cart->items()->where('product_code', $productCode)->first();
                        if ($cartItem) {
                            if ($quantity <= 0) {
                                $cartItem->delete();
                            } else {
                                // $cartItem = new CartItem();
                                $cartItem->quantity = $quantity;
                                $cartItem->save();
                            }
                        } else if ($quantity > 0) {
                            $cart->items()->create([
                                'product_code' => $productCode,
                                'quantity' => $quantity,
                                'price' => Product::where('product_code', $productCode)->value('sell_price')
                            ]);
                        }
                    }

                    // Update cart totals
                    $this->updateCartTotals($cart);
                }
            } else {
                // For guest users
                $cart = session()->get('cart', []);
                foreach ($validatedData['quantities'] as $productCode => $quantity) {
                    if ($quantity <= 0) {
                        unset($cart[$productCode]);
                    } else {
                        $cart[$productCode] = $quantity;
                    }
                }
                session()->put('cart', $cart);
            }

            return redirect()->route('frontend.cart')->with('success', 'Cart updated successfully!');
        }

        // Handle clearing the cart
        if ($request->has('clear_cart')) {
            if (auth('customer')->check()) {
                // For authenticated users
                $cart = Cart::where('customer_id', auth('customer')->id())->first();
                if ($cart) {
                    $cart->items()->delete(); // Delete all cart items
                    $cart->update([
                        'subtotal' => 0,
                        'tax' => 0,
                        'shipping_cost_total' => 0
                    ]);
                }
            } else {
                // For guest users
                session()->forget('cart');
                
                // Retrieve the selected city and province from the shipping session data
                $shippingData = session()->get('shipping', []);
                $selectedCity = $shippingData['city'] ?? null; // Default to null if not set
                $selectedProvince = $shippingData['province'] ?? null; // Default to null if not set
                
                // You might have your logic to determine the shipping cost based on the remaining items
                $shippingCost = 0;
                
                // Update the shipping info in the session
                session()->put('shipping', [
                    'city' => $selectedCity,
                    'province' => $selectedProvince,
                    'shipping_cost' => $shippingCost
                ]);
                
            }

            return redirect()->route('frontend.cart')->with('success', 'Cart has been cleared!');
        }
    }

    public function getCities($province_id)
    {
        // Check if the Shipping model is correctly set up
        try {
            $cities = Shipping::where('province_id', $province_id)
                ->pluck('city', 'id');
            return response()->json($cities);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Unable to fetch cities'], 500);
        }
    }
    
    public function getZones($city_id)
    {
        // Check if the Shipping model is correctly set up
        try {
            $zones = AddressZone::where('city_id', $city_id)
                ->pluck('zone_name', 'id');

            return response()->json($zones);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Unable to fetch zones'], 500);
        }
    }

}
