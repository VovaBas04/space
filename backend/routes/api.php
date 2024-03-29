<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
//use App\Http\Controllers\MapController;
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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::prefix('/space-port')->group(function (){
    Route::get('/map',MapController::class);
    Route::get('/info',InfoController::class);
    Route::get('/{spacePort}/description',DescriptionController::class);
//    Route::apiResource('/','SpacePortController');
});
Route::apiResource('/space-port','SpacePortController');
Route::controller(ImageController::class)->group(function (){
    Route::get('/{type}/{spacePort}','getImage');
});
