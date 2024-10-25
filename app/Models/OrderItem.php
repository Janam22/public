<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderItem extends Model
{
    use HasFactory;
    protected $table = 'order_items'; // specify the correct table name
    protected $fillable = ['order_id', 'product_code', 'quantity', 'price', 'subtotal'];

    
    public function product()
    {
        return $this->belongsTo(Product::class, 'product_code', 'product_code');
    }

    // Relationship with Order
    public function order()
    {
        return $this->belongsTo(Order::class, 'order_id', 'order_id');
    }
    
    public function cancellations()
    {
        return $this->hasMany(OrderItemCancel::class, 'order_item_id', 'id');
    }


}
