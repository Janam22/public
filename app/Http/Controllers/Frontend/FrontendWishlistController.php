<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\WebsiteData;
use App\Models\Cart;
use App\Models\Product;
use App\Models\Order;
use App\Models\Wishlist;

class FrontendWishlistController extends Controller
{
    
    //  mywishlist
    public function dashMyWishlist(Request $request)
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
            
        $wishitems = Wishlist::where('customer_id', $customerId)
            ->with('product.images')
            ->orderBy('created_at', 'desc')
            ->get(); // Get the most recent order

        return view("frontend.dash-wishlist", compact("websitedata", "cart", "cartproducts", "cartItemCount", "orderCount", "wishitems", "wishitem_count"));
    }

    public function addItem(Request $request)
    {
        // Retrieve the product code and quantity
        $productId = $request->input('product_code');

        // User is authenticated
        $customerId = auth('customer')->id();
        $customer_user = Auth::user();

        // Find or create a wishlist item
        $wishItem = Wishlist::where('product_code', $productId)->first();

        if ($wishItem) { 
            return redirect()->route('frontend.dash-my-wishlist')->with('error', 'Item already in wishlist!');
        } else {
            // Add new item to the cart
            Wishlist::create([
                'customer_id' => $customerId,
                'product_code' => $productId
            ]);
        }

        return redirect()->route('frontend.dash-my-wishlist')->with('success', 'Item added to wishlist successfully!');
    }

}
