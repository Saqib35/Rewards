<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SubscriptionController;
use App\Http\Controllers\AuthController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);

// check.token
// 'auth:sanctum',

Route::middleware(['auth:sanctum'])->group(function () {
    
    
    Route::post('/password-update', [AuthController::class, 'updatepassword']);
    Route::get('/show-profile', [AuthController::class, 'getUserDetails']);
    Route::post('/update-padometer-step', [AuthController::class, 'updatePadometerStep']);
    Route::post('/update-profile', [AuthController::class, 'updateProfile']);
    Route::get('/get-vouchar', [AuthController::class, 'getUserVouchers']);
    Route::post('/redeem-vouchar', [AuthController::class, 'redeemVoucher']);
    Route::get('/get-vouchar-alreeady-used', [AuthController::class, 'getUserVouchersAlredyUsed']);
    Route::get('/banner-ads-load', [AuthController::class, 'showNextAd']);
    Route::get('/load-business-directory', [AuthController::class, 'loadBusinessDirectory']);

    
    // Route::get('/user', function (Request $request) {
    //     return $request->user();
    // });
    
});




