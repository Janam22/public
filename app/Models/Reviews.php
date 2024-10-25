<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Reviews extends Model
{
    use HasFactory;
    protected $table = 'product_reviews'; // specify the correct table name
    protected $fillable = ['customer_id', 'product_code', 'name', 'email', 'review_detail', 'rating'];
    
    public function product()
    {
        return $this->belongsTo(Product::class, 'product_code', 'product_code');
    }
    
}
