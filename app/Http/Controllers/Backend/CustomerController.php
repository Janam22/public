<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Customer;

class CustomerController extends Controller
{

    public function index()
    {
        $customers = Customer::where('email_verified', 1)->get();
        return view('backend.customers.index', compact('customers'));
    }

    public function view(Request $request)
    {
    $customer = Customer::with(['addresses' => function($query) {
        $query->where('address_type', 'H')
              ->orWhere(function($subQuery) {
                  $subQuery->where('address_type', '<>', 'H')
                            ->limit(1); // Limit to one address if no 'H' type found
              });
    }, 'addresses.province', 'addresses.city', 'addresses.zone'])->findOrFail($request->id);
        return view('backend.customers.view', compact('customer'));
    }

}
