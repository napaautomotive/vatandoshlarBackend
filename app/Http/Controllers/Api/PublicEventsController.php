<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Infopublicevent;
use Illuminate\Http\JsonResponse;
use App\Models\Publicevent;




class PublicEventsController extends Controller
{
    /**
     * @OA\Get(
     *     path="/api/infopublicevents",
     *     tags={"Jamoat birlashmalar tadbirlari"},
     *     summary="Get data by short name",
     *     operationId="getInfopublicevent",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function getInfopublicevent():JsonResponse
    {
        $data = Infopublicevent::all()->first();
        if ($data){
            return $this->success($data);
        }
        return $this->error(['message'=>'no data']);
    }
    /**
     * @OA\Get(
     *     path="/api/publicevents",
     *     tags={"Jamoat birlashmalar tadbirlari"},
     *     summary="Get data by short name",
     *     operationId="getPublicevents",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */
    public function getPublicevents(): JsonResponse
    {
        $data = Publicevent::all();
        if ($data) {
            return $this->success($data);
        }

        return $this->error(['message' => 'no data']);
    }


    /**
     * @OA\Get(
     *     path="/api/publicevents/{id}",
     *     tags={"Jamoat birlashmalar tadbirlari"},
     *     summary="Get data by short name",
     *     operationId="getOnePublicevent",
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

    public function getOnePublicevent($id)
    {
        $PubliceventViewers = Publicevent::find($id);

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
     *     path="/api/publicevents/page/{count}",
     *     tags={"Jamoat birlashmalar tadbirlari"},
     *     summary="Get data by short name",
     *     operationId="getPubliceventPag",
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

    public function getPubliceventPag($count): JsonResponse
    {
        $data = Publicevent::orderBy("created_at", "DESC")->simplePaginate($count);

        if ($data) {
            return $this->success([$data, 'total' => Publicevent::count()]);
        }

        return $this->error(['message' => 'no data']);
    }
}
