<?php

use App\Http\Controllers\Api\ApiController;
use App\Http\Controllers\Api\CountryController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::controller(ApiController::class)->group(function () {
    Route::get('/news', "getNews");
    Route::get('/news/{id}', "getOneNews");
    Route::get('/news/page/{count}', "getNewsPag");
    Route::get('/contacts', "getContact");
    Route::get('/sponsrs', "getSponsrs");
    Route::get('/columns', "getColumns");
    Route::get('/countries', "getCountries");
});

Route::get("/country_relationship/{flage}", [CountryController::class, 'countries']);
