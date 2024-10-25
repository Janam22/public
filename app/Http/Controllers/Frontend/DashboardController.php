<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Carousel;
use App\Models\Product;
use App\Models\WebsiteData;
use App\Models\Newsletter;
use App\Models\Province;
use App\Models\Shipping;
use App\Models\Inquiry;
use App\Models\Cart;
use App\Models\Order;
use App\Models\Wishlist;
use App\Models\Reviews;
use App\Models\CustomerAddressBook;
use App\Models\AddressZone;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Rules\Recaptcha;
use Illuminate\Support\Facades\Log;

class DashboardController extends Controller
{
    public function index(Request $request)
    {
        $cartItemCount = 0;
        $orderCount = 0;
        $wishitem_count = 0;
        $cartproducts = collect(); // Initialize as an empty collection
        $noCategoryDisplay = WebsiteData::whereNotNull('no_category_display')->pluck('no_category_display')->first();
        $categories = Product::select('category_id', 'category_name')
        ->whereNotNull('category_id')
        ->whereNotNull('category_name')
        ->groupBy('category_id', 'category_name')
        ->limit($noCategoryDisplay)
        ->get();
        $perPage = 12;
        $page = $request->input('page', 1);
        
        $products = Product::with('images')
            ->withCount(['reviews as review_count' => function ($query) {
                $query->select(DB::raw('count(*)'));
            }])
            ->withAvg('reviews as average_rating', 'rating') // Calculate average rating
            ->skip(($page - 1) * $perPage)
            ->take($perPage)
            ->get();
    
        $newarriveproducts = Product::with('images')
            ->withCount(['reviews as review_count' => function ($query) {
                $query->select(DB::raw('count(*)'));
            }])
            ->withAvg('reviews as average_rating', 'rating') // Calculate average rating
            ->orderBy('created_at', 'desc')
            ->limit(9)
            ->get();
    
        $featureproducts = Product::with('images')
            ->withCount(['reviews as review_count' => function ($query) {
                $query->select(DB::raw('count(*)'));
            }])
            ->withAvg('reviews as average_rating', 'rating') // Calculate average rating
            ->limit(4)
            ->get();
    
        $specialproducts = Product::with('images')
            ->withCount(['reviews as review_count' => function ($query) {
                $query->select(DB::raw('count(*)'));
            }])
            ->withAvg('reviews as average_rating', 'rating') // Calculate average rating
            ->limit(3)
            ->get();
    
        $weeklyproducts = Product::with('images')
            ->withCount(['reviews as review_count' => function ($query) {
                $query->select(DB::raw('count(*)'));
            }])
            ->withAvg('reviews as average_rating', 'rating') // Calculate average rating
            ->orderBy('created_at', 'desc')
            ->limit(3)
            ->get();
    
        $flashproducts = Product::with('images')
            ->withCount(['reviews as review_count' => function ($query) {
                $query->select(DB::raw('count(*)'));
            }])
            ->withAvg('reviews as average_rating', 'rating') // Calculate average rating
            ->inRandomOrder()
            ->limit(3)
            ->get();
            
        $carousel = Carousel::all();
        $websitedata = WebsiteData::first();

        if (auth('customer')->check()) {
            $customerId = auth('customer')->id();
            $wishitem_count = Wishlist::where('customer_id', $customerId)->count();
            
            $orderCount = Order::where('customer_id', $customerId)
                ->where('order_status', '!=', 'cancelled')
                ->count();
            $cart = Cart::where('customer_id', $customerId)->first();
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
        } else {
            $cart = session()->get('cart', []);
            $cartItemCount = count($cart); // Count items in the guest cart
            $cartproducts = Product::whereIn('product_code', array_keys($cart))->with('images')->get();

        }
        
            // Check if request is AJAX
            if ($request->ajax()) {
                // Return JSON response for products
                return response()->json(['products' => $products]);
            }
    
        return view("frontend.index", compact("categories", "products", "carousel", "websitedata", "cart", "cartproducts", "cartItemCount", "newarriveproducts", "featureproducts", "specialproducts", "weeklyproducts", "flashproducts", "orderCount", "wishitem_count"));
    }



    // about 
    public function about()
    {
        $websitedata = WebsiteData::first();
        $cartItemCount = 0;
        $orderCount = 0;
        $wishitem_count = 0;
        $cartproducts = collect(); // Initialize as an empty collection
        if (auth('customer')->check()) {
            $customerId = auth('customer')->id();
            $wishitem_count = Wishlist::where('customer_id', $customerId)->count();
            
            $orderCount = Order::where('customer_id', $customerId)
                ->where('order_status', '!=', 'cancelled')
                ->count();
            $cart = Cart::where('customer_id', $customerId)->first();
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
        } else {
            $cart = session()->get('cart', []);
            $cartItemCount = count($cart); // Count items in the guest cart
            $cartproducts = Product::whereIn('product_code', array_keys($cart))->with('images')->get();

        }
        return view("frontend.about", compact("websitedata", "cart", "cartproducts", "cartItemCount", "orderCount", "wishitem_count"));
    }

    // Best Sale 
    public function bestSale()
    {
        $websitedata = WebsiteData::first();
        $cartItemCount = 0;
        $orderCount = 0;
        $wishitem_count = 0;
        $cartproducts = collect(); // Initialize as an empty collection
        if (auth('customer')->check()) {
            $customerId = auth('customer')->id();
            $wishitem_count = Wishlist::where('customer_id', $customerId)->count();
            
            $orderCount = Order::where('customer_id', $customerId)
                ->where('order_status', '!=', 'cancelled')
                ->count();
            $cart = Cart::where('customer_id', $customerId)->first();
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
        } else {
            $cart = session()->get('cart', []);
            $cartItemCount = count($cart); // Count items in the guest cart
            $cartproducts = Product::whereIn('product_code', array_keys($cart))->with('images')->get();

        }
        return view("frontend.bestSale", compact("websitedata", "cart", "cartproducts", "cartItemCount", "orderCount", "wishitem_count"));
    }


    // checkout 
    public function checkout(Request $request)
    {
        $websitedata = WebsiteData::first();
        $provinces = Province::all()->pluck('province_name', 'id');
        $cartItemCount = 0;
        $shippingCost = 0;
        $orderCount = 0;
        $wishitem_count = 0;
        $isCartEmpty = true;
        $cartproducts = collect(); // Initialize as an empty collection
        $selectedCity = null;
        $selectedProvince = null;
        $selectedZone = null;
        $default_shipping_addresses = collect(); // Initialize as an empty collection
        $default_billing_addresses = collect();
        $deliveryInformation = null; // Initialize as null
        $customerEmail = null;
        if (auth('customer')->check()) {
            $customerId = auth('customer')->id();
            $wishitem_count = Wishlist::where('customer_id', $customerId)->count();
            
            $orderCount = Order::where('customer_id', $customerId)
                ->where('order_status', '!=', 'cancelled')
                ->count();
            $customerEmail = auth('customer')->user()->email;
            // Fetch all addresses for the authenticated customer where default_shipping = 'Y'
            $default_shipping_addresses = CustomerAddressBook::where('customer_id', $customerId)
                ->where('default_shipping', 'Y')
                ->with(['province', 'city', 'zone']) // Eager load the province and city relationships
                ->first();

            // If no default shipping address found, fetch any available address
            if (!$default_shipping_addresses) {
                $default_shipping_addresses = CustomerAddressBook::where('customer_id', $customerId)
                    ->with(['province', 'city']) // Eager load the province and city relationships
                    ->first();
            }

            // Fetch all addresses for the authenticated customer where default_billing = 'Y'
            $default_billing_addresses = CustomerAddressBook::where('customer_id', $customerId)
                ->where('default_billing', 'Y')
                ->with(['province', 'city']) // Eager load the province and city relationships
                ->first();

            // If no default shipping address found, fetch any available address
            if (!$default_billing_addresses) {
                $default_billing_addresses = CustomerAddressBook::where('customer_id', $customerId)
                    ->with(['province', 'city']) // Eager load the province and city relationships
                    ->first();
            }

            $cart = Cart::where('customer_id', $customerId)->first();
            if ($cart) {
                $cartItemCount = $cart->items()->count();
                $isCartEmpty = $cartItemCount === 0;
                $cartData = $cart->items()->get();
                $cartproducts = Product::whereIn('product_code', $cartData->pluck('product_code'))
                    ->with('images') // Eager load images
                    ->get();

            } else {
                // Handle the case where no cart is found
                $cartData = collect(); // Empty collection
            }

        } else {
            $cart = session()->get('cart', []);
            $cartItemCount = count($cart); // Count items in the guest cart
            $isCartEmpty = $cartItemCount === 0;
            $cartproducts = Product::whereIn('product_code', array_keys($cart))->with('images')->get();

            $checkoutData = session()->get('shipping', [
                'full_name' => null,
                'invoice_email' => null,
                'phone' => null,
                'city' => null,
                'province' => null,
                'zone' => null,
                'landmark' => null,
                'address' => null,
                'shipping_cost' => 0
            ]);

            $selectedProvince = $checkoutData['province'];
            $selectedCity = $checkoutData['city'];
            $selectedZone = $checkoutData['zone'] ?? null;

            $selectedProvinceName = Province::find($selectedProvince);
            $selectedCityName = Shipping::find($selectedCity);
            $selectedZoneName = AddressZone::find($selectedZone);

            $shippingCost = $checkoutData['shipping_cost'];

            $deliveryInformation = [
                'full_name' => $checkoutData['full_name'] ?? null,
                'invoice_email' => $checkoutData['invoice_email'] ?? null,
                'phone' => $checkoutData['phone'] ?? null,
                'landmark' => $checkoutData['landmark'] ?? null,
                'address' => $checkoutData['address'] ?? null,
                'shipping_cost' => $checkoutData['shipping_cost'] ?? null,
                'city_name' => $selectedCityName,
                'province_name' => $selectedProvinceName,
                'zone_name' => $selectedZoneName
            ];

        }
        // Return the checkout view with necessary data
        return view("frontend.checkout", [
            "websitedata" => $websitedata,
            "cart" => $cart ?? null,
            "cartproducts" => $cartproducts,
            "cartItemCount" => $cartItemCount,
            "shippingCost" => $shippingCost,
            "deliveryInformation" => $deliveryInformation,
            "default_shipping_addresses" => $default_shipping_addresses,
            "default_billing_addresses" => $default_billing_addresses,
            "customerEmail" => $customerEmail,
            "provinces" => $provinces,
            "selectedCity" => $selectedCity,
            "selectedProvince" => $selectedProvince,
            "selectedZone" => $selectedZone,
            "isCartEmpty" => $isCartEmpty,
            "orderCount" => $orderCount,
            "wishitem_count" => $wishitem_count 
        ]);
    }

    // contact 
    public function contact()
    {
        $websitedata = WebsiteData::first();
        $cartItemCount = 0;
        $orderCount = 0;
        $wishitem_count = 0;
        $cartproducts = collect(); // Initialize as an empty collection
        if (auth('customer')->check()) {
            $customerId = auth('customer')->id();
            $wishitem_count = Wishlist::where('customer_id', $customerId)->count();
            
            $orderCount = Order::where('customer_id', $customerId)
                ->where('order_status', '!=', 'cancelled')
                ->count();
            $cart = Cart::where('customer_id', $customerId)->first();
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
        } else {
            $cart = session()->get('cart', []);
            $cartItemCount = count($cart); // Count items in the guest cart
            $cartproducts = Product::whereIn('product_code', array_keys($cart))->with('images')->get();

        }
        return view("frontend.contact", compact("websitedata", "cart", "cartproducts", "cartItemCount", "orderCount", "wishitem_count"));
    }

    // dash-cancellation 
    public function dashCancellation()
    {
        $websitedata = WebsiteData::first();
        $cartItemCount = 0;
        $orderCount = 0;
        $wishitem_count = 0;
        $cartproducts = collect(); // Initialize as an empty collection
        if (auth('customer')->check()) {
            $customerId = auth('customer')->id();
            $wishitem_count = Wishlist::where('customer_id', $customerId)->count();
            
            $orders = Order::where('customer_id', $customerId)
                ->with([
                    'orderItems' => function ($query) {
                    $query->whereHas('cancellations'); // Ensure only order items with cancellations are fetched
                    },
                    'orderItems.cancellations.reason', // Eager load the cancellations and their reasons
                    'orderItems.product.images' // Eager load product images
                ])
                ->whereHas('orderItems.cancellations') // Ensure only orders with canceled items are fetched
                ->orderBy('created_at', 'desc')
                ->get();

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
        } else {
            $cart = session()->get('cart', []);
            $cartItemCount = count($cart); // Count items in the guest cart
            $cartproducts = Product::whereIn('product_code', array_keys($cart))->with('images')->get();

        }
        return view("frontend.dash-cancellation", compact("websitedata", "cart", "cartproducts", "cartItemCount", "orders", "orderCount", "wishitem_count"));
    }

    // explore 
    public function explore(Request $request)
    {
        $categories = Product::select('category_id', 'category_name')
            ->whereNotNull('category_id') 
            ->whereNotNull('category_name') 
            ->groupBy('category_id', 'category_name')
            ->get();
            
        $brands = Product::select('brand_id', 'brand_name')
            ->whereNotNull('brand_id') 
            ->whereNotNull('brand_name') 
            ->groupBy('brand_id', 'brand_name')
            ->get();
    
        // Fetch the filtered products
        $explores = Product::with('images')
            ->withCount(['reviews as review_count' => function ($query) {
                $query->select(DB::raw('count(*)'));
            }])
            ->withAvg('reviews as average_rating', 'rating') // Calculate average rating
            ->paginate(25);
            
        $websitedata = WebsiteData::first();
        $cartItemCount = 0;
        $orderCount = 0;
        $wishitem_count = 0;
        $cartproducts = collect(); // Initialize as an empty collection
        if (auth('customer')->check()) {
            $customerId = auth('customer')->id();
            $wishitem_count = Wishlist::where('customer_id', $customerId)->count();
            
            $orderCount = Order::where('customer_id', $customerId)
                ->where('order_status', '!=', 'cancelled')
                ->count();
            $cart = Cart::where('customer_id', $customerId)->first();
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
        } else {
            $cart = session()->get('cart', []);
            $cartItemCount = count($cart); // Count items in the guest cart
            $cartproducts = Product::whereIn('product_code', array_keys($cart))->with('images')->get();

        }
        return view("frontend.explore", compact("websitedata", "cart", "cartproducts", "cartItemCount", "explores", "categories", "orderCount","brands", "wishitem_count"));
    }

 
    // lost-password 
    public function lostPassword()
    {
        $websitedata = WebsiteData::first();
        $cartItemCount = 0;
        $orderCount = 0;
        $wishitem_count = 0;
        $cartproducts = collect(); // Initialize as an empty collection
        if (auth('customer')->check()) {
            $customerId = auth('customer')->id();
            $wishitem_count = Wishlist::where('customer_id', $customerId)->count();
            $orderCount = Order::where('customer_id', $customerId)
                ->where('order_status', '!=', 'cancelled')
                ->count();
            $cart = Cart::where('customer_id', $customerId)->first();
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
        } else {
            $cart = session()->get('cart', []);
            $cartItemCount = count($cart); // Count items in the guest cart
            $cartproducts = Product::whereIn('product_code', array_keys($cart))->with('images')->get();

        }
        return view("frontend.lost-password", compact("websitedata", "cart", "cartproducts", "cartItemCount", "orderCount", "wishitem_count"));
    }

    // newarrival
    public function newarrival()
    {
        $newarriveproducts = Product::with('images')
            ->withCount(['reviews as review_count' => function ($query) {
                $query->select(DB::raw('count(*)'));
            }])
            ->withAvg('reviews as average_rating', 'rating') // Calculate average rating
            ->paginate(25);
        $websitedata = WebsiteData::first();
        $cartItemCount = 0;
        $orderCount = 0;
        $wishitem_count = 0;
        $cartproducts = collect(); // Initialize as an empty collection
        if (auth('customer')->check()) {
            $customerId = auth('customer')->id();
            $wishitem_count = Wishlist::where('customer_id', $customerId)->count();
            $orderCount = Order::where('customer_id', $customerId)
                ->where('order_status', '!=', 'cancelled')
                ->count();
            $cart = Cart::where('customer_id', $customerId)->first();
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
        } else {
            $cart = session()->get('cart', []);
            $cartItemCount = count($cart); // Count items in the guest cart
            $cartproducts = Product::whereIn('product_code', array_keys($cart))->with('images')->get();

        }
        return view("frontend.newarrival", compact("websitedata", "cart", "cartproducts", "newarriveproducts", "cartItemCount", "orderCount", "wishitem_count"));
    }

    // product-detail 
    public function productDetails($product_code)
    {
        // $productDetails = Product::where('product_code', $product_code)->first();
        $productDetails = Product::withCount(['reviews as review_count' => function ($query) {
                $query->select(DB::raw('count(*)'));
            }])
            ->withAvg('reviews as average_rating', 'rating') // Calculate average rating
            ->where('product_code', $product_code)
            ->first();
            
        $relatedProducts = $productDetails->relatedProducts();
        
        $websitedata = WebsiteData::first();
        $cartItemCount = 0;
        $orderCount = 0;
        $wishitem_count = 0;
        $reviews = Reviews::where('product_code', $product_code)
                ->get();
        
        $reviewStats = Reviews::where('product_code', $product_code)
            ->selectRaw('count(*) as review_count, avg(rating) as average_rating')
            ->first();
                
        $product_review_count = $reviewStats->review_count;
        $average_rating = $reviewStats->average_rating;
        $cartproducts = collect(); // Initialize as an empty collection
        if (auth('customer')->check()) {
            $customerId = auth('customer')->id();
            
            $wishitem_count = Wishlist::where('customer_id', $customerId)->count();
            $orderCount = Order::where('customer_id', $customerId)
                ->where('order_status', '!=', 'cancelled')
                ->count();
            $cart = Cart::where('customer_id', $customerId)->first();
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
        } else {
            $cart = session()->get('cart', []);
            $cartItemCount = count($cart); // Count items in the guest cart
            $cartproducts = Product::whereIn('product_code', array_keys($cart))->with('images')->get();

        }
        return view("frontend.product-detail", compact("websitedata", "productDetails", "cart", "cartproducts", "cartItemCount", "orderCount", "wishitem_count","relatedProducts", "product_review_count", "average_rating", "reviews"));
    }

    // shop list full 
    public function shopListFull(Request $request)
    {
        $shoplistproducts = Product::withCount(['reviews as review_count' => function ($query) {
                $query->select(DB::raw('count(*)'));
            }])
            ->withAvg('reviews as average_rating', 'rating') // Calculate average rating
            ->latest();
            
        if (!empty($request->get('keyword'))) {
            $keyword = $request->get('keyword');
            $shoplistproducts = $shoplistproducts->where('product_name', 'like', '%' . $keyword . '%')
                ->orWhere('category_name', 'like', '%' . $keyword . '%')
                ->orWhere('brand_name', 'like', '%' . $keyword . '%');
        }
        
        $categories = Product::select(
            'category_id',
            'category_name',
            DB::raw('MIN(subcategory_id) as subcategory_id'),
            DB::raw('MIN(subcategory_name) as subcategory_name')
        )
            ->groupBy('category_id', 'category_name')
            ->get();

        $brands = Product::select('products')->select('brand_id', 'brand_name')->groupBy('brand_id', 'brand_name')->get();
        $shoplistproducts = $shoplistproducts->with('images')->paginate(25);
        $sessionProductCount = session('product_count', 0);
        $websitedata = WebsiteData::first();
        $cartItemCount = 0;
        $orderCount = 0;
        $wishitem_count = 0;
        $cartproducts = collect(); // Initialize as an empty collection
        if (auth('customer')->check()) {
            $customerId = auth('customer')->id();
            $wishitem_count = Wishlist::where('customer_id', $customerId)->count();
            $orderCount = Order::where('customer_id', $customerId)
                ->where('order_status', '!=', 'cancelled')
                ->count();
            $cart = Cart::where('customer_id', $customerId)->first();
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
        } else {
            $cart = session()->get('cart', []);
            $cartItemCount = count($cart); // Count items in the guest cart
            $cartproducts = Product::whereIn('product_code', array_keys($cart))->with('images')->get();

        }
        return view("frontend.shop-list-full", compact("websitedata", "cart", "cartproducts", "cartItemCount", "shoplistproducts", "categories", "brands","sessionProductCount", "orderCount", "wishitem_count"));
    }


    // whatsnew 
    public function whatsnew()
    {
        $noCategoryDisplay = WebsiteData::whereNotNull('no_category_display')->pluck('no_category_display')->first();
        $newcategories = Product::select('category_id', 'category_name')
    ->whereNotNull('category_id')
    ->whereNotNull('category_name')
    ->groupBy('category_id', 'category_name')
    ->limit($noCategoryDisplay)
    ->get();
        $whatsnewproducts = Product::with('images')
            ->withCount(['reviews as review_count' => function ($query) {
                $query->select(DB::raw('count(*)'));
            }])
            ->withAvg('reviews as average_rating', 'rating') // Calculate average rating
            ->orderBy('created_at', 'desc')
            ->paginate(25);
        $websitedata = WebsiteData::first();
        $cartItemCount = 0;
        $orderCount = 0;
        $wishitem_count = 0;
        $cartproducts = collect(); // Initialize as an empty collection
        if (auth('customer')->check()) {
            $customerId = auth('customer')->id();
            $wishitem_count = Wishlist::where('customer_id', $customerId)->count();
            $orderCount = Order::where('customer_id', $customerId)
                ->where('order_status', '!=', 'cancelled')
                ->count();
            $cart = Cart::where('customer_id', $customerId)->first();
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
        } else {
            $cart = session()->get('cart', []);
            $cartItemCount = count($cart); // Count items in the guest cart
            $cartproducts = Product::whereIn('product_code', array_keys($cart))->with('images')->get();

        }
        return view("frontend.whatsnew", compact("websitedata", "cart", "cartproducts", "newcategories", "whatsnewproducts", "cartItemCount", "orderCount", "wishitem_count"));
    }


    public function newsletter_store(Request $request)
    {
        $request->validate([
            'email' => 'required',
            'gender' => 'required'
        ]);
        $newsletter = new Newsletter();
        $newsletter->gender = $request->gender;
        $newsletter->email = $request->email;
        if ($newsletter->save()) {
            session()->flash('success', 'Thank you for Subscription.');
        } else {
            session()->flash('error', 'Error !');
        }
        return redirect()->back();
    }
    
    public function inquiry_store(Request $request)
    {
        try {
            $request->validate([
                'name' => 'required',
                'email' => 'required',
                'subject' => 'required',
                'message' => 'required',
                'g-recaptcha-response' => ['required', new Recaptcha()]
            ]);
    
            $inquiry = new Inquiry();
            $inquiry->name = $request->name;
            $inquiry->email = $request->email;
            $inquiry->subject = $request->subject;
            $inquiry->message = $request->message;
            if ($inquiry->save()) {
                session()->flash('success', 'Thank you for contacting us. We will get back to you soon.');
            } else {
                session()->flash('error', 'Error while submitting contact form. Please try again later!');
            }
            return redirect()->back();
        } catch (\Illuminate\Validation\ValidationException $e) {
            return redirect()->back()->withErrors($e->validator)->with('error', 'ReCaptcha verification failed. Please try again.'); 
        }
    
    }

}
