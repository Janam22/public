<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FilterProductsController extends Controller
{

    public function topTrendingFilterProducts(Request $request)
    {
        // Retrieve category_id from the request
        $categoryId = $request->input('category_id');
    
        // Validate if category_id is provided and numeric (optional)
        if (!$categoryId || !is_numeric($categoryId)) {
            // Handle error or redirect back with an error message
            return redirect()->back()->with('error', 'Invalid category ID');
        }
    
        // Define pagination parameters
        $perPage = 12;
        $page = $request->input('page', 1);
    
        // Fetch products that belong to the selected category
        $products = Product::with('images')
            ->withCount(['reviews as review_count' => function ($query) {
                $query->select(DB::raw('count(*)'));
            }])
            ->withAvg('reviews as average_rating', 'rating') // Calculate average rating
            ->where('category_id', $categoryId)
            ->skip(($page - 1) * $perPage)
            ->take($perPage)
            ->get();
    
        // Adjust 'frontend.partials-filter.top-trending-filter' to your actual view path
        return view('frontend.partials-filter.top-trending-filter', compact('products'))->render();
    }



    public function whatsNewFilterProducts(Request $request)
    {
        // Retrieve category_id from the request
        $categoryId = $request->input('category_id');
    
        // Validate if category_id is provided and numeric (optional)
        if (!$categoryId || !is_numeric($categoryId)) {
            // Handle error or redirect back with an error message
            return redirect()->back()->with('error', 'Invalid category ID');
        }
         $perPage = 12;
         // Fetch products that belong to the selected category with pagination
        $whatsnewproducts = Product::with('images')
            ->withCount(['reviews as review_count' => function ($query) {
                $query->select(DB::raw('count(*)'));
            }])
            ->withAvg('reviews as average_rating', 'rating') // Calculate average rating
            ->where('category_id', $categoryId)
            ->paginate($perPage);
    
        // Adjust 'frontend.partials-filter.top-trending-filter' to your actual view path
        return view('frontend.partials-filter.whats-new', compact('whatsnewproducts'))->render();
    }


    public function filterProducts(Request $request)
    {
        $request->validate([
            'category_id' => 'nullable|integer|exists:products,category_id',
            'sub_category_id' => 'nullable|integer|exists:products,subcategory_id',
            'min_price' => 'nullable|numeric|min:0',
            'max_price' => 'nullable|numeric|min:0',
            'brand_ids' => 'nullable|string',
        ]);
    
        $query = Product::withCount(['reviews as review_count' => function ($query) {
                $query->select(DB::raw('count(*)'));
            }])
            ->withAvg('reviews as average_rating', 'rating'); // Calculate average rating
    
        // Filter by category if provided
        if ($request->filled('category_id')) {
            $query->where('category_id', $request->category_id);
        }
    
        // Filter by sub category if provided (allowing for null)
        if ($request->filled('sub_category_id')) {
            $query->where('subcategory_id', $request->sub_category_id);
        }
    
        // Filter by price range if both min and max are provided
        if ($request->filled('min_price') && $request->filled('max_price')) {
            $query->whereBetween('sell_price', [$request->min_price, $request->max_price]);
        } elseif ($request->filled('min_price')) {
            // If only min_price is provided, filter by minimum price
            $query->where('sell_price', '>=', $request->min_price);
        } elseif ($request->filled('max_price')) {
            // If only max_price is provided, filter by maximum price
            $query->where('sell_price', '<=', $request->max_price);
        }
    
    
        if ($request->has('brand_ids') && !empty($request->brand_ids)) {
            // Convert the comma-separated string into an array and trim any extra spaces
            $brandIds = array_map('trim', explode(',', $request->input('brand_ids')));
        
            // Filter the query by the brand IDs
            $query->whereIn(DB::raw('TRIM(brand_id)'), $brandIds);
        }
    
    
    
         // Fetch the filtered products
         $shoplistproducts = $query->get();
         $count = $query->count();
         session(['product_count' => $count]);
    
        // Return the product view partial
        return view('frontend.partials-filter.product-list', compact('shoplistproducts','count'))->render();
    }




    public function exploreFilterProducts(Request $request) {
        
        // Initialize the query for products
        $productsQuery = Product::withCount(['reviews as review_count' => function ($query) {
                $query->select(DB::raw('count(*)'));
            }])
            ->withAvg('reviews as average_rating', 'rating'); // Calculate average rating
    
        // Price Range Filtering
        if ($request->has('price_range') && $request->input('price_range') != '') {
            $priceRange = $request->input('price_range');
            switch ($priceRange) {
                case '500 to 1K':
                    $productsQuery->whereBetween('sell_price', [500, 1000]);
                    break;
                case '2K to 5K':
                    $productsQuery->whereBetween('sell_price', [2000, 5000]);
                    break;
                case '5K to 10K':
                    $productsQuery->whereBetween('sell_price', [5000, 10000]);
                    break;
                case '10K and Above':
                    $productsQuery->where('sell_price', '>=', 10000);
                    break;
            }
        }
    
        // Additional filters for brand, discount, and category
        if ($request->has('brand') && $request->input('brand') != '') {
            $brand = $request->input('brand');
            $productsQuery->whereRaw('TRIM(brand_id) = ?', [$brand]);
        }
        
        if ($request->has('discount') && $request->input('discount') != '') {
            $productsQuery->where('discount', $request->input('discount'));
        }
    
        if ($request->has('category') && $request->input('category') != '') {
            $productsQuery->where('category_id', $request->input('category'));
        }
    
        // Get the filtered products
        $explores = $productsQuery->paginate(25);
    
        // Return the view or data you need
        return view('frontend.partials-filter.explore-filter', compact('explores'));
    }


}
