<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\JsonResponse;
use App\Models\Categoryshow;
use App\Models\Infocategorysshow;




class CategoryshowController extends Controller
{

    /**
     * @OA\Get(
     *     path="/api/infocategoryshows",
     *     tags={"Turkum ko'rsatuvlar"},
     *     summary="Get data by short name",
     *     operationId="getInfocategorysshows",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function getInfocategorysshows():JsonResponse
    {
        $data = Infocategorysshow::all()->first();
        if ($data){
            return $this->success($data);
        }
        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/categoryshows",
     *     tags={"Turkum ko'rsatuvlar"},
     *     summary="Get data by short name",
     *     operationId="getCategoryshows",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */
    public function getCategoryshows(): JsonResponse
    {
        $data = Categoryshow::all();
        if ($data) {
            return $this->success($data);
        }

        return $this->error(['message' => 'no data']);
    }


    /**
     * @OA\Get(
     *     path="/api/categoryshows/{id}",
     *     tags={"Turkum ko'rsatuvlar"},
     *     summary="Get data by short name",
     *     operationId="getOneCategoryshows",
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

    public function getOneCategoryshows($id)
    {
        $PubliceventViewers = Categoryshow::find($id);

        if ($PubliceventViewers){
            $PubliceventViewers->update([
                'viewers' => $PubliceventViewers->viewers + 1
            ]);

            return $this->success($PubliceventViewers);
        }

        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/categoryshows/page/{count}",
     *     tags={"Turkum ko'rsatuvlar"},
     *     summary="Get data by short name",
     *     operationId="getCategoryshowsPag",
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

    public function getCategoryshowsPag($count): JsonResponse
    {
        $data = Categoryshow::orderBy("data", "DESC")->simplePaginate($count);

        if ($data) {
            return $this->success([$data, 'total' => Categoryshow::count()]);
        }

        return $this->error(['message' => 'no data']);
    }
}
