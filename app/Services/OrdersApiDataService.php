<?php
namespace App\Services;

use Illuminate\Support\Facades\Http;
use App\Models\Product;
use App\Models\Order;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class OrdersApiDataService
{
    public function sendOrderData($orderNumber, array $userDetails, array $Order)
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
            ->where('api_name', 'O') // Assuming 'P' is the identifier for product config
            ->first(['api_value as api_url', 'db_name']);

        if (!$apiConfig || !$apiConfig->api_url) {
            Log::error('API URL not found.');
            return;
        }

        $dbName = $apiConfig->db_name;
        $dataarrayformat = [
            'Storecode' => $dbName,
            'orderNumber' => $orderNumber, // Replace with your actual order number
            'Order' => $Order, // Ensure this is formatted correctly
            'userDetails' => $userDetails
        ];

        // Send order using the generated token
        try{
            $response = Http::withHeaders([
                'Authorization' => 'Bearer ' . $accessToken,
                'Content-Type' => 'application/json'
            ])->post($apiConfig->api_url, $dataarrayformat);
            
            if ($response->successful()) {
                // Directly access the orderNumber from the response
                $responseData = $response->json();
                $api_order_number = $responseData['orderNumber'] ?? null;
    
                if ($api_order_number) {
                    // Update the order record
                    $updated = Order::where('order_id', $orderNumber)->update([
                        'api_order_id' => $api_order_number
                    ]);

                    if ($updated) {
                        Log::info('Order updated successfully:', [
                            'order_id' => $orderNumber,
                            'api_order_id' => $api_order_number,
                        ]);
                    } else {
                        Log::warning('Order update failed: No records updated', [
                            'order_id' => $orderNumber,
                            'api_order_id' => $api_order_number,
                        ]);
                    }
                } else {
                    Log::warning('API response did not contain an order number', [
                        'response' => $response->json()
                    ]);
                }
            } else {
                Log::error('API request was unsuccessful:', [
                    'status' => $response->status(),
                    'body' => $response->json(),
                ]);
            }



        } catch (\Exception $e) {
            Log::error('Exception occurred while sending orders', ['error' => $e->getMessage()]);
        }
        

    }
}