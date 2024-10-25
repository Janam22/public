<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Reviews;
use App\Models\Cart;
use App\Models\Order;
use App\Models\Wishlist;
use App\Models\Product;
use App\Models\WebsiteData;

class FrontendReviewsController extends Controller
{
        //  myreviews
        public function dashMyReviews(Request $request)
        {
            $websitedata = WebsiteData::first();
            $cartItemCount = 0;
            $orderCount = 0;
            $wishitem_count = 0;
            $cartproducts = collect(); // Initialize as an empty collection

            $customerId = auth('customer')->id();
            $reviews = Reviews::where('customer_id', $customerId)
                ->with('product')
                ->get();
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

            return view("frontend.dash-my-reviews", compact("websitedata", "cart", "cartproducts", "cartItemCount", "orderCount", "wishitems", "wishitem_count", "reviews"));
        }
        
    public function addReview(Request $request)
    {
        // Retrieve the product code and quantity
        $product_code = $request->input('product_code');
        $review_detail = $request->input('review_detail');
        $rating = $request->input('rating');

        // User is authenticated
        if (auth('customer')->check()) {
            $customerId = auth('customer')->id();
            
            // Use user() method to get the authenticated user
            $customer = auth('customer')->user();
            $name = $customer->full_name;
            $email = $customer->email;
        } else {
            $customerId = null;
            $name = $request->input('name');
            $email = $request->input('email');
        }

            // Add new item to the cart
            Reviews::create([
                'customer_id' => $customerId,
                'product_code' => $product_code,
                'name' => $name,
                'email' => $email,
                'review_detail' => $review_detail,
                'rating' => $rating
            ]);

        return redirect()->back()->with('success', 'Thank you for your review!');
    }

}
