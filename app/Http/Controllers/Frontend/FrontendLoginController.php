<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Product;
use App\Models\WebsiteData;
use App\Models\CustomerAddressBook;
use App\Models\Cart;
use App\Models\CartItem;
use App\Models\Authe;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Mail;
use App\Mail\ForgotPasswordCodeMail;
use App\Mail\PasswordResetSuccessMail;

class FrontendLoginController extends Controller
{
    public function checkSession()
    {
        if (!Auth::guard('customer')->check()) {
            session()->flash('error', 'Your session has expired. Please log in again.');
            return response()->json(['message' => 'Session expired'], 401); // Session expired
        }
        return response()->json(['message' => 'Session active'], 200); // Session active
    }

    //  signin
    public function signin()
    {
        $websitedata = WebsiteData::first();
        $cartItemCount = 0;
        $orderCount = 0;
        $cartproducts = collect(); // Initialize as an empty collection
        $cart = session()->get('cart', []);
        $cartItemCount = count($cart); // Count items in the guest cart
        $cartproducts = Product::whereIn('product_code', array_keys($cart))->with('images')->get();

        return view("frontend.signin", compact("websitedata", "cart", "cartproducts", "cartItemCount", "orderCount"));
    }

    //  forgot pasword
    public function forgot_password()
    {
        $websitedata = WebsiteData::first();
        $cartItemCount = 0;
        $orderCount = 0;
        $cartproducts = collect(); // Initialize as an empty collection
        $cart = session()->get('cart', []);
        $cartItemCount = count($cart); // Count items in the guest cart
        $cartproducts = Product::whereIn('product_code', array_keys($cart))->with('images')->get();

        return view("frontend.forgot-password", compact("websitedata", "cart", "cartproducts", "cartItemCount", "orderCount"));
    }
    
    // forgot-password-code
    public function forgot_password_code(Request $request)
    {
        $websitedata = WebsiteData::first();
        $company_name = $websitedata->company_name;
        $company_logo_header = $websitedata->company_logo_header;

        // Validate additional details
        $request->validate([
            'email' => 'required|email'
        ]);

        // Fetch API configuration for forgot password api
        $forgotpasswordapi = DB::table('api')
            ->where('api_name', 'FP')
            ->first(['api_value as forgot_password_url', 'db_name']);
           
        if (!$forgotpasswordapi || !$forgotpasswordapi->forgot_password_url) {
            Log::error('Forgot Password api not found.');
            return;
        }
        
        $email = $request->email;
        $code = str_pad(random_int(0, 999999), 6, '0', STR_PAD_LEFT);
        
        // Send forgot password data to external API
        $apiResponse = $this->sendForgotPasswordDataToExternalApi($forgotpasswordapi, $email, $code);
            
        // Handle the API response
        if ($apiResponse && ($apiResponse['status'] === 'success')) {
            // Send forgot password code email
            Mail::to($email)->send(new ForgotPasswordCodeMail($apiResponse['ActCode'], $company_name, $company_logo_header));
            return back()->with('success', 'Password reset code sent successfully. Please check your email.');
        } else {
            return back()->with('error', 'Something went wrong. Please try again later.');
        }
    }
    
    protected function sendForgotPasswordDataToExternalApi($forgotpasswordapi, $email, $code)
    {
        try {
            // Prepare the URL with query parameters
            $url = $forgotpasswordapi->forgot_password_url . '?' . http_build_query([
                'storecode' => $forgotpasswordapi->db_name,
                'email' => $email,
                'actCode' => $code
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
            Log::error('Exception occurred while changing password.', ['error' => $e->getMessage()]);
            return null;
        }
    }

    //  reset pasword page
    public function reset_password(Request $request)
    {
        $websitedata = WebsiteData::first();
        $cartItemCount = 0;
        $cartproducts = collect(); // Initialize as an empty collection
        $cart = session()->get('cart', []);
        $cartItemCount = count($cart); // Count items in the guest cart
        $cartproducts = Product::whereIn('product_code', array_keys($cart))->with('images')->get();
        $code = $request->reset_code;
        
        if($code){
            return view("frontend.reset-password", compact("websitedata", "cart", "cartproducts", "cartItemCount", "code"));
        } else {
            return redirect()->route('frontend.signin');
        }
    }
    
    // reset-password-verify
    public function reset_password_verify(Request $request)
    {
        $websitedata = WebsiteData::first();
        $company_name = $websitedata->company_name;
        $company_logo_header = $websitedata->company_logo_header;

        // Validate additional details
        $request->validate([
            'email' => 'required|email',
            'reset_code' => 'required',
            'new_password' => 'required',
            'confirm_new_password' => 'required'
        ]);

        // Fetch API configuration for token generation
        $resetpasswordapi = DB::table('api')
            ->where('api_name', 'RP') // Assuming 'P' is the identifier for auth config
            ->first(['api_value as reset_password_url', 'db_name']);
           
        if (!$resetpasswordapi || !$resetpasswordapi->reset_password_url) {
            Log::error('Reset Password api not found.');
            return;
        }
        
        $email = $request->email;
        $resetCode = $request->reset_code;
        $newPassword = $request->new_password;
        $confirmNewPassword = $request->confirm_new_password;
        
        // Send change password data to external API
        $apiResponse = $this->sendResetPasswordDataToExternalApi($resetpasswordapi, $email, $resetCode, $newPassword, $confirmNewPassword);
            
        // Handle the API response
        if ($apiResponse && ($apiResponse['status'] === 'success')) {
            // Send verification email
            Mail::to($email)->send(new PasswordResetSuccessMail($company_name, $company_logo_header));
            return redirect()->route('frontend.signin')->with('success', 'Password reset successfull.');
        } else {
            return back()->with('error', 'Invalid or expired reset code. Please try again.');
        }
    }
    
    protected function sendResetPasswordDataToExternalApi($resetpasswordapi, $email, $resetCode, $newPassword, $confirmNewPassword)
    {
        try {
            // Prepare the URL with query parameters
            $url = $resetpasswordapi->reset_password_url . '?' . http_build_query([
                'storecode' => $resetpasswordapi->db_name,
                'email' => $email,
                'actCode' => $resetCode,
                'pass' => $newPassword,
                'confirmpass' => $confirmNewPassword
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
            Log::error('Exception occurred while resetting password.', ['error' => $e->getMessage()]);
            return null;
        }
    }

    public function login(Request $request)
    {
        // $credentials = $request->only('email', 'password');
    
        // Fetch API configuration for token generation
        $loginapi = DB::table('api')
            ->where('api_name', 'L') // Assuming 'L' is the identifier for auth config
            ->first(['api_value as login_url', 'db_name']);
           
        if (!$loginapi || !$loginapi->login_url) {
            Log::error('Login api not found.');
            return;
        }
        
        $email = $request->email;
        $password = $request->password;
        
        // Send registration data to external API
        $apiResponse = $this->checkLoginApi($loginapi, $email, $password);
        
            // Handle the API response
            if ($apiResponse && isset($apiResponse['access_token'])) {
                
                $customer = new Authe($apiResponse);
                Auth::guard('customer')->login($customer);
                
                // Check if the user is authenticated
                if (Auth::guard('customer')->check()) {
                    // Retrieve the authenticated customer instance
                    $authenticatedCustomer = Auth::guard('customer')->user();
                    
                    // Log the customer ID
                    Log::info('Customer successfully logged in: ' . $authenticatedCustomer->getId());
                    // return response()->json([
                    //     'message' => 'Customer successfully logged in.',
                    //     'user_id' => $authenticatedCustomer->getId(),
                    //     'token' =>  $authenticatedCustomer->getToken(),
                    // ]);
                    return redirect()->route('frontend.account');
                } else {
                    Log::info('Login failed.');
                    return response()->json(['message' => 'Unauthorized'], 401);
                }

                // session([
                //         'user_data' => [
                //             'accessToken' => $apiResponse['access_token'],
                //             'userCode' => $apiResponse['userCode']
                //         ],
                // ]);
                
                // $user = new Customer(); // Adjust to your model
                // $user->id = $apiResponse['userCode']; // Set user ID
        
                // Auth::guard('customer')->login($user);
        
                // // Check if the user is authenticated
                // if (Auth::guard('customer')->check()) {
                //     Log::info('User logged in: ' . $user->id); // Log successful login
                    // return redirect()->route('frontend.account');
                // } else {
                //     Log::error('User could not be authenticated after login attempt.');
                //     return back()->with('error', 'Login failed. Please try again.');
                // }
                
            } else {
                return back()->with('error', 'The provided credentials do not match our records.');
            }
            
        
        // if (Auth::guard('customer')->attempt($credentials)) {
        //     // Fetch the logged-in user
        //     $user = Auth::guard('customer')->user();
            
        //     // Check for guest cart items and shipping details in the session
        //     $sessionCart = session()->get('cart', []);
        //     $sessionShipping = session()->get('shipping', []);
    
        //     if (!empty($sessionCart) && !empty($sessionShipping)) {
        //         // Get shipping cost from the session
        //         $shippingCost = $sessionShipping['shipping_cost'] ?? 0;
    
        //         // Initialize new subtotal
        //         $newSubtotal = 0;
    
        //         // Calculate new subtotal from the session cart
        //         foreach ($sessionCart as $product_code => $quantity) {
        //             $product = Product::where('product_code', $product_code)->first();
        //             if ($product) {
        //                 $newSubtotal += $product->sell_price * $quantity;
        //             }
        //         }
    
        //         // Create a new cart for the user
        //         $cart = Cart::create([
        //             'customer_id' => $user->id,
        //             'province_id' => $sessionShipping['province'] ?? null,
        //             'city_id' => $sessionShipping['city'] ?? null,
        //             'subtotal' => $newSubtotal,
        //             'shipping_cost_total' => $shippingCost,
        //         ]);
    
        //         // Add items to the cart
        //         foreach ($sessionCart as $product_code => $quantity) {
        //             $product = Product::where('product_code', $product_code)->first();
        //             if ($product) {
        //                 $cart->items()->create([
        //                     'product_code' => $product_code,
        //                     'quantity' => $quantity,
        //                     'price' => $product->sell_price,
        //                     'cart_id' => $cart->id,
        //                 ]);
        //             }
        //         }
    
        //     }
    
        //     // Add shipping address to the address book
        //     if (!empty($sessionShipping)) {
        //         $d = CustomerAddressBook::create([
        //             'customer_id' => $user->id,
        //             'full_name' => $user->full_name,
        //             'phone' => $user->phone,
        //             'province_id' => $sessionShipping['province'] ?? null,
        //             'city_id' => $sessionShipping['city'] ?? null,
        //             'zone_id' => $sessionShipping['zone'] ?? null,
        //             'address' => $sessionShipping['address'],
        //             'landmark' => $sessionShipping['landmark'],
        //             'address_type' => 'H',
        //             'default_shipping' => 'Y',
        //             'default_billing' => 'Y'
        //         ]);
        //     }
    
            // Redirect to account page
        // }
    
        // Log failed attempts
        // \Log::warning('Failed login attempt for email: ' . $request->input('email'));
    
        // return back()->with('error', 'The provided credentials do not match our records.');
    }
    
    protected function checkLoginApi($loginapi, $email, $password)
    {
        try {
            // Prepare the URL with query parameters
            $url = $loginapi->login_url . '?' . http_build_query([
                'storecode' => $loginapi->db_name,
                'userName' => $email,
                'password' => $password
            ]);
    
            // Log the request details for debugging
            Log::info('Login API Request', [
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
            Log::error('Exception occurred while logging user', ['error' => $e->getMessage()]);
            return null;
        }
    }

    public function customer_logout(Request $request)
    {
        Auth::guard('customer')->logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect()->route('frontend.signin')->with('success', 'You are logged out.');
    }

}
