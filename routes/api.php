<?php

use App\Http\Controllers\Api\ApiController;
use App\Http\Controllers\Api\PublicEventsController;
use App\Http\Controllers\Api\CategoryshowController;
use App\Http\Controllers\Api\SendContactController;
use App\Http\Controllers\Api\SendProjectsController;
use App\Http\Controllers\Api\MediatekaController;
use App\Http\Controllers\Api\NewsController;
use App\Http\Controllers\Api\ColumnController;
use App\Http\Controllers\Api\SearchController;
use App\Http\Controllers\Api\ManagementController;
use App\Http\Controllers\Api\DirectionController;
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

Route::controller(NewsController::class)->group(function () {
    Route::get('/news', "getNews");
    Route::get('/news/search/{title}', "getNewsByTitle");
    Route::get('/news/{id}', "getOneNews");
    Route::get('/news/page/{count}', "getNewsPag");
});


Route::controller(ApiController::class)->group(function () {
    Route::get('/contacts', "getContact");
    Route::get('/abouts', "getAbout");
    Route::get('/sponsrs', "getSponsrs");
    Route::get('/countries', "getCountries");
    Route::get('/interactive-services', "getInteractiveServices");
    Route::get('/trusts', "getTrustees");
    Route::get('/trusts/page/{count}', "getTrustPag");
    Route::get('/sliders', "getSliders");
    Route::get('/sliders/{id}', "getOneSlider");
    Route::get('/aboutassosiations', "getAboutAssosiation");
    Route::get('/assosiations', "getAssosiation");
    Route::get('/location-assosiations', "getLocationAssosiation");
    Route::get('/location-assosiations/{id}', "getLocationAssosiationById");
    Route::get('/assosiationcategory', "getAssosiationCategory");
    Route::get('/infographics', "getInfographics");
    Route::get('/infographics/{id}', "getOneInfographics");
    Route::get('/infographics/page/{count}', "getInfographicsPag");
    Route::get('/events', "getEvents");
    Route::get('/events/{id}', "getOneEvents");
    Route::get('/events/page/{count}', "getEventsPag");
    Route::get('/webinars', "getWebinar");
    Route::get('/faqs', "getFaq");
});

Route::controller(PublicEventsController::class)->group(function () {
    Route::get('/infopublicevents', "getInfopublicevent");
    Route::get('/publicevents', "getPublicevents");
    Route::get('/publicevents/{id}', "getOnePublicevent");
    Route::get('/publicevents/page/{count}', "getPubliceventPag");

});



Route::controller(ColumnController::class)->group(function () {
    Route::get('/column-menus', "getColumnMenu");
    Route::get('/headcolumns', "getHeadcolumn");
    Route::get('/aboutcolumns', "getAboutcolumns");
    Route::get('/columns', "getColumns");
    Route::get('/columns/{id}', "getOneColumn");
    Route::get('/columns/page/{count}/{id}', "getColumnsPag");
    Route::get('/columns/brandColumn/{count}', "BrandColumn");
});

Route::controller(CategoryshowController::class)->group(function () {
    Route::get('/infocategoryshows', "getInfocategorysshows");
    Route::get('/categoryshows', "getCategoryshows");
    Route::get('/categoryshows/{id}', "getOneCategoryshows");
    Route::get('/categoryshows/page/{count}', "getCategoryshowsPag");
});

Route::controller(MediatekaController::class)->group(function () {
    Route::get('/mediateka-videos', "getMediatekavideos");
    Route::get('/mediateka-videos/{id}', "getOneMediatekavideos");
    Route::get('/mediateka-videos/page/{count}', "getMediatekavideosPag");
    Route::get('/mediateka-videos/page/{count}/{id}', "getMediatekavideosPagID");
    Route::get('/mediateka-video-menus', "getMediatekavideomenus");
    Route::get('/mediateka-image-menus', "getMediatekaimagemenus");
    Route::get('/mediateka-images', "getMediatekaimages");
    Route::get('/mediateka-images/{id}', "getOneMediatekaimages");
    Route::get('/mediateka-images/page/{count}', "getMediatekaimagesPag");
    Route::get('/mediateka-images/page/{count}/{id}', "getMediatekaimagesPagID");
});

Route::controller(SearchController::class)->group(function () {
//    Route::get('/tag/{search}', "searchByTag");
    Route::get('/tagsearch/{search}/{paginate}', "TagSearch");
    Route::get('/brandtag/{paginate}', "Brandtag");
    Route::get('/latesttag/{paginate}', "LatestTag");
    Route::get('/titlesearch/{search}/{paginate}', "TitleSearch");
});

Route::controller(ManagementController::class)->group(function () {
    Route::get('/managements', "getManagements");
    Route::get('/managements/page/{count}', "getManagementsPag");
});

Route::controller(DirectionController::class)->group(function () {
    Route::get('/directions', "getDirections");
    Route::get('/directions/page/{count}', "getDirectionsPag");
});

Route::post("/sendContact", [SendContactController::class, 'postContact']);

Route::post("/sendProject", [SendProjectsController::class, 'sendproject']);

Route::get("/country_relationship/{flage}", [CountryController::class, 'countries']);
