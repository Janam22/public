<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $table = 'products'; // specify the correct table name
    protected $fillable = ['product_code','product_name', 'product_description', 'category_id', 'category_name', 'subcategory_id', 
                            'subcategory_name', 'delivery_target_days', 'discount', 'actual_price', 
                            'sell_price', 'mr_price', 'unit_info', 'available_quantity', 'stock_quantity', 'brand_id', 
                            'brand_name', 'product_location'];
                            
    // Define the relationship with ProductImages
    public function images()
    {
        return $this->hasMany(ProductImages::class, 'product_code', 'product_code');
    }
    
    public function reviews()
    {
        return $this->hasMany(Reviews::class, 'product_code', 'product_code');
    }
    
    // Method to get related products based on category_id
     public function relatedProducts()
     {
        return self::with('images') // Eager load the images relationship
        ->where('category_id', $this->category_id)
        ->where('product_code', '!=', $this->product_code) // Exclude the current product
        ->inRandomOrder() // Randomize the selection
        ->take(4) // Limit the number of related products
        ->get();
     }
}
