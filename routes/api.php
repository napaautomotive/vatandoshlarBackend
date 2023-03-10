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
// News
Route::get('/news', [ApiController::class, "getNews"]);
Route::get('/news/{id}', [ApiController::class, "getOneNews"]);
Route::get('/news/count/2?page=2', [ApiController::class, "getNewsPag"]);

// Contacts
Route::get('/contacts', [ApiController::class, "getContact"]);
// Sponsrs
Route::get('/sponsrs', [ApiController::class, "getSponsrs"]);
// Partners
Route::get('/partners', [ApiController::class, "getPartners"]);

// Columns
Route::get('/columns', [ApiController::class, "getColumns"]);
Route::get("/country_relationship/{flage}", [CountryController::class, 'countries']);
