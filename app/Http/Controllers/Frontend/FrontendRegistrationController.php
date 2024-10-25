<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\WebsiteData;
use App\Models\Product;
use App\Models\Customer;
use Illuminate\Support\Facades\Mail;
use App\Mail\VerificationCodeMail;
use App\Mail\RegistrationSuccessMail;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Http;

class FrontendRegistrationController extends Controller
{
    // signup 
    public function signup()
    {
        $websitedata = WebsiteData::first();
        $cartItemCount = 0;
        $cartproducts = collect(); // Initialize as an empty collection
        $cart = session()->get('cart', []);
        $cartItemCount = count($cart); // Count items in the guest cart
        $cartproducts = Product::whereIn('product_code', array_keys($cart))->with('images')->get();

        $registerData = session()->get('register', [
            'email' => null,
            'verification_code' => null,
            'phone' => null,
            'full_name' => null,
            'password' => null
        ]);
        return view("frontend.signup", compact("websitedata", "cart", "cartproducts", "cartItemCount"))->with('registerData', $registerData);
    }

    public function register(Request $request)
    {
        $websitedata = WebsiteData::first();
        $company_name = $websitedata->company_name;
        $company_logo_header = $websitedata->company_logo_header;

        // Validate additional details
        $request->validate([
            'full_name' => 'required|string',
            'password' => 'required|string',
            'phone' => 'required',
            'email' => 'required|email'
        ]);

        // Fetch API configuration for token generation
        $registerapi = DB::table('api')
            ->where('api_name', 'R') // Assuming 'P' is the identifier for auth config
            ->first(['api_value as register_url', 'db_name']);
           
        if (!$registerapi || !$registerapi->register_url) {
            Log::error('Register api not found.');
            return;
        }

        $customer_name = $request->full_name;
        $nameParts = explode(' ', $request->full_name, 2);
        $firstname = $nameParts[0]; // First name
        $lastname = isset($nameParts[1]) ? $nameParts[1] : ''; // Last name (if exists)
        $phone = $request->phone;
        $password = $request->password;
        $email = $request->email;

        // Send registration data to external API
        $apiResponse = $this->sendDataToExternalApi($registerapi, $firstname, $lastname, $phone, $password, $email);
            
        // Handle the API response
        if ($apiResponse && ($apiResponse['status'] === 'success')) {
            // Send verification email
            Mail::to($customer->email)->send(new VerificationCodeMail($customer_name, $apiResponse['ActCode'], $company_name, $company_logo_header));
            return back()->with('success', 'User registered successfully. Please check your email for verification link and code.');
        } else {
            return back()->with('error', 'Something went wrong. Please try again later.');
        }
    }
    
    protected function sendDataToExternalApi($registerapi, $firstname, $lastname, $phone, $password, $email)
    {
        try {
            // Prepare the URL with query parameters
            $url = $registerapi->register_url . '?' . http_build_query([
                'storecode' => $registerapi->db_name,
                'firstname' => $firstname,
                'lastname' => $lastname,
                'username' => $email,
                'email' => $email,
                'mobile' => $phone,
                'password' => $password,
                'codeExpiry' => Carbon::now()->addMinutes(15)->format('Y-m-d H:i'),
                'acttype' => 'e'
            ]);
    
            // Log the request details for debugging
            Log::info('Register API Request', [
                'url' => $url,
            ]);
    
            // Send the POST request to the constructed URL
            $response = Http::post($url);
    
            if ($response->successful()) {
                return $response->json();
            } else {
                Log::error('API response error', [
                    'status' => $response->status(),
                    'body' => $response->body()
                ]);
                return null;
            }
        } catch (\Exception $e) {
            Log::error('Exception occurred while registering user', ['error' => $e->getMessage()]);
            return null;
        }
    }

    public function showVerificationPage($code)
    {
        $websitedata = WebsiteData::first();
        $cartItemCount = 0;
        $cartproducts = collect(); // Initialize as an empty collection
        $cart = session()->get('cart', []);
        $cartItemCount = count($cart); // Count items in the guest cart
        $cartproducts = Product::whereIn('product_code', array_keys($cart))->with('images')->get();
            
        return view("frontend.account-verification", compact("websitedata", "cart", "cartproducts", "cartItemCount", "code"));
    }
    
    public function VerifyAccount(Request $request)
    {
        $websitedata = WebsiteData::first();
        $company_name = $websitedata->company_name;
        $company_logo_header = $websitedata->company_logo_header;

        // Validate additional details
        $request->validate([
            'email' => 'required|email',
            'user_verification_code' => 'required|string'
        ]);

        // Fetch API configuration for token generation
        $validateemailapi = DB::table('api')
            ->where('api_name', 'VE') // Assuming 'P' is the identifier for auth config
            ->first(['api_value as validateemail_url', 'db_name']);
           
        if (!$validateemailapi || !$validateemailapi->validateemail_url) {
            Log::error('Validate Email api not found.');
            return;
        }

        $verification_email = $request->email;
        $user_verification_code = $request->user_verification_code;

        // Send registration data to external API
        $apiResponse = $this->sendVerificationDataToExternalApi($validateemailapi, $verification_email, $user_verification_code);
            
        // Handle the API response
        if ($apiResponse && ($apiResponse['status'] === 'success')) {
            // Send verification email
            Mail::to($verification_email)->send(new RegistrationSuccessMail($company_name, $company_logo_header));
            return back()->with('error', 'Thank you email verification.');
        } else {
            return back()->with('error', 'Something went wrong. Please try again.');
        }
    }
    
    protected function sendVerificationDataToExternalApi($validateemailapi, $verification_email, $user_verification_code)
    {
        try {
            // Prepare the URL with query parameters
            $url = $validateemailapi->validateemail_url . '?' . http_build_query([
                'storecode' => $validateemailapi->db_name,
                'email' => $verification_email,
                'actCode' => $user_verification_code
            ]);
    
            // Send the POST request to the constructed URL
            $response = Http::post($url);
    
            if ($response->successful()) {
                return $response->json();
            } else {
                Log::error('API response error', [
                    'status' => $response->status(),
                    'body' => $response->body()
                ]);
                return null;
            }
        } catch (\Exception $e) {
            Log::error('Exception occurred while validating email.', ['error' => $e->getMessage()]);
            return null;
        }
    }
    
}
