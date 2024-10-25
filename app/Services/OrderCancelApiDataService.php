<?php
namespace App\Services;

use Illuminate\Support\Facades\Http;
use App\Models\Product;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class OrderCancelApiDataService
{
    public function sendOrderCancelData($api_order_id, $remarks, array $Order)
    {

        // Fetch API configuration for token generation
        $authConfig = DB::table('api')
            ->where('api_name', 'T') // Assuming 'P' is the identifier for auth config
            ->first(['api_value as token_url', 'api_username', 'api_password', 'api_granttype']);

        if (!$authConfig || !$authConfig->token_url || !$authConfig->api_username || !$authConfig->api_password || !$authConfig->api_granttype) {
            Log::error('Auth credentials not found.');
            return;
        }

        // Generate the token
        try {
            $tokenResponse = Http::asForm()->post($authConfig->token_url, [
                'username' => $authConfig->api_username,
                'password' => $authConfig->api_password,
                'grant_type' => $authConfig->api_granttype
            ]);

            $tokenData = $tokenResponse->json();

            if (isset($tokenData['access_token'])) {
                $accessToken = $tokenData['access_token'];
            } else {
                Log::error('Access token not found in response.', ['response' => $tokenData]);
                return;
            }
        } catch (\Exception $e) {
            Log::error('Exception occurred while generating token', ['error' => $e->getMessage()]);
            return;
        }

        // Fetch API configuration for product fetch
        $apiConfig = DB::table('api')
            ->where('api_name', 'OC') // Assuming 'P' is the identifier for product config
            ->first(['api_value as api_url', 'db_name']);

        if (!$apiConfig || !$apiConfig->api_url) {
            Log::error('API URL not found.');
            return;
        }

        $dbName = $apiConfig->db_name;
        $dataarrayformat = [
            'storeCode' => $dbName, // Changed key to match the desired case
            'orderNumber' => $api_order_id,
            'remarks' => $remarks,
            'Order' => [
                [
                    'sku' => $Order['sku'],
                    'quantity' => $Order['quantity'],
                    'unitPrice' => $Order['unitPrice'],
                    'finalPrice' => $Order['finalPrice'],
                ]
            ]
        ];
        
        // Log the request data
        Log::info('Sending order request:', [
            'data' => $dataarrayformat
        ]);

        // Send order using the generated token
        try{
            $response = Http::withHeaders([
                'Authorization' => 'Bearer ' . $accessToken,
                'Content-Type' => 'application/json'
            ])->post($apiConfig->api_url, $dataarrayformat);
            
        } catch (\Exception $e) {
            Log::error('Exception occurred while sending orders', ['error' => $e->getMessage()]);
        }
        

    }
}