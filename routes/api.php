<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\APIController;

Route::post('/token', [APIController::class, 'generateToken']);
Route::middleware('auth:api')->group(function () {
    Route::get('/productImages', [APIController::class, 'productImages']); // Get all products
});
