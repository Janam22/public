<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Artisan;
use Illuminate\Support\Facades\Log;

class QueueController extends Controller
{
    
    public function jobsqueuecron(Request $request)
    {
        // Get the token from the request
        $token = $request->input('token');

        // Check if the token is valid
        if ($token !== env('CRON_JOB_TOKEN')) {
            return response('Unauthorized', 401);
        }

        // Trigger the queue worker
        Artisan::call('queue:work', [
            '--tries' => 3,
            '--timeout' => 90,
        ]);

        return 'Queue worker has been triggered.';
    }

}
