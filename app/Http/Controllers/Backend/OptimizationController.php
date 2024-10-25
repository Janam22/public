<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Artisan;
use Illuminate\Support\Facades\Log;

class OptimizationController extends Controller
{
    
    public function optimizeClear()
    {
    
        Artisan::call('optimize:clear');
        return redirect()->route('backend.dashboard')->with('success', 'Optimizations cleared successfully.');
    }
    
    public function optimizeClearCron()
    {
        
        // Check for the token in the request
        if (request()->input('token') !== env('CRON_JOB_TOKEN')) {
            Log::error('Unauthorized access attempt to optimizeClearCron.');
            abort(403); // Forbidden response if the token doesn't match
        }
    
        Artisan::call('optimize:clear');
        Log::info('Optimizations cleared successfully.');
        return response()->json(['success' => 'Optimizations cleared successfully.']);
    }
    
}
