<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use App\Models\Product;
use App\Models\ProductImages;

class APIController extends Controller
{
    public function generateToken(Request $request)
    {
        // Define fixed username and password
        $inputEmail = $request->input('email');
        $inputPassword = $request->input('password');
        
        $user = User::where('email', $inputEmail)->first();

        // Attempt to authenticate the user
        if ($user && Hash::check($inputPassword, $user->password)) {
            // Create a new token for the user
            $tokenData = $user->createToken('API Token');

            // Set token expiration to 30 minutes
            $tokenExpiration = now()->addMinutes(30);
            return response()->json([
                'access_token' => $tokenData->accessToken,
                'token_type' => 'bearer',
                'expires_at' => $tokenData->token->expires_at->toISOString(),
            ]);
        }

        return response()->json(['error' => 'Unauthorized'], 401);
    }

    public function productImages()
    {
        $products = Product::with('images')->get();
        return response()->json([
            'message' => 'Product Images fetched successfully',
            'status' => 'success',
            'timestamp' => now()->format('m/d/Y h:i:s A'),
            'data' => $products,
        ]);
    
    }
}
