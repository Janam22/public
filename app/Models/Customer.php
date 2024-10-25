<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Customer extends Authenticatable
{
    use HasFactory;

    protected $table = 'customers'; // Specify the correct table name
    protected $fillable = [
        'id', 'access_token', 'full_name', 'email', 'email_verification_code', 'code_expires_at', 'password', 'phone', 'email_verified', 'email_verified_at'
    ];

    protected $hidden = [
        'password', 'remember_token',
    ];

    
    // Relationship with Order
    public function orders()
    {
        return $this->hasMany(Order::class);
    }
    
    public function addresses(): HasMany
    {
        return $this->hasMany(CustomerAddressBook::class, 'customer_id');
    }
    
}
