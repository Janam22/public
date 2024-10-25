<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Customer;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\Inquiry;
use App\Models\Newsletter;
use App\Models\User;
use App\Models\Reviews;

class AdminDashboardController extends Controller
{
    
    public function index()
    {
        $product_count = Product::count();
        $customer_count = Customer::count();
        $order_count = Order::where('order_status', '!=', 'Cancelled')->count();
        $inquiry_count = Inquiry::count();
        $newsletter_count = Newsletter::count();
        $user_count = User::count();
        $reviews_count = Reviews::count();
        
        $orders = Order::with('customer') // Eager load relationships
            ->orderBy('created_at', 'desc')
            ->limit(5)
            ->get()
            ->map(function ($order) {
                // Count the total items in the order
                $order->total_items = OrderItem::where('order_id', $order->order_id)->count();

                return $order;
            });

        return view('backend.dashboard', compact('product_count', 'customer_count', 'order_count', 'inquiry_count', 'newsletter_count', 'user_count', 'orders', 'reviews_count'));
    }
}
