<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderCancelReasons extends Model
{
    use HasFactory;
    protected $table = 'order_cancel_reasons'; // specify the correct table name
    protected $fillable = ['reason_name'];
}
