<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderItemCancel extends Model
{
    use HasFactory;
    protected $table = 'order_cancel'; // specify the correct table name
    protected $fillable = ['order_item_id', 'cancel_reason', 'reason_description', 'policy_checked'];

    public function orderItem()
    {
        return $this->belongsTo(OrderItem::class, 'id', 'order_item_id'); // Assuming 'order_item_id' is the foreign key
    }
    
    public function reason()
    {
        return $this->belongsTo(OrderCancelReasons::class, 'cancel_reason', 'id'); // Adjust according to your foreign key
    }

}
