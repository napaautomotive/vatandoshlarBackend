<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Column;
use App\Models\Contact;
use App\Models\News;
use App\Models\Sponsr;
use App\Services\ApiService;

class ApiController extends Controller
{
    /**
     * @OA\Get(
     *     path="/api/news",
     *     tags={"News"},
     *     summary="Get data by short name",
     *     operationId="getNews",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */
    public function getNews()
    {
        $service = new ApiService(new News);
        return $service->getApi();
    }

    /**
     * @OA\Get(
     *     path="/api/news/{id}",
     *     tags={"News"},
     *     summary="Get data by short name",
     *     operationId="getOneNews",
     *     @OA\Parameter(
     *         name="id",
     *         in="path",
     *         description="flage of country that needs to be got",
     *         required=true,
     *         @OA\Schema(
     *             type="integer",
     *             format="int32"
     *         )
     *     ),
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function getOneNews($id)
    {
        $service = new ApiService(new News);
        return $service->getApi($id);
    }

    /**
     * @OA\Get(
     *     path="/api/news/count/{count}",
     *     tags={"News"},
     *     summary="Get data by short name",
     *     operationId="getNewsPag",
     *     @OA\Parameter(
     *         name="count",
     *         in="path",
     *         description="flage of country that needs to be got",
     *         required=true,
     *         @OA\Schema(
     *             type="integer",
     *             format="int32"
     *         )
     *     ),
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function getNewsPag($count)
    {
        $service = new ApiService(new News);
        return $service->paginateApi($count);
    }

    /**
     * @OA\Get(
     *     path="/api/contacts",
     *     tags={"Contact"},
     *     summary="Get data by short name",
     *     operationId="getContact",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function getContact()
    {
        $service = new ApiService(new Contact);
        return $service->firstOfModel();
    }

    /**
     * @OA\Get(
     *     path="/api/sponsrs",
     *     tags={"Sponsr"},
     *     summary="Get data by short name",
     *     operationId="getSponsrs",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function getSponsrs()
    {
        $service = new ApiService(new Sponsr);
        return $service->getApi();
    }

    /**
     * @OA\Get(
     *     path="/api/columns",
     *     tags={"Columns"},
     *     summary="Get data by short name",
     *     operationId="getColumns",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function getColumns()
    {
        $service = new ApiService(new Column);
        return $service->getApi();
    }
}
