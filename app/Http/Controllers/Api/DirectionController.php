<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use App\Models\Direction;
use Illuminate\Http\JsonResponse;

class DirectionController extends Controller
{
    /**
     * @OA\Get(
     *     path="/api/directions",
     *     tags={"Asosiy yo‘nalishlari"},
     *     summary="Get data by short name",
     *     operationId="getDirections",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */
    public function getDirections(): JsonResponse
    {
        $data = Direction::all();
        if ($data) {
            return $this->success($data);
        }

        return $this->error(['message' => 'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/directions/page/{count}",
     *     tags={"Asosiy yo‘nalishlari"},
     *     summary="Get data by short name",
     *     operationId="getDirectionsPag",
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

    public function getDirectionsPag($count): JsonResponse
    {
        $data = Direction::orderBy("created_at", "DESC")->simplePaginate($count);

        if ($data) {
            return $this->success([$data, 'total' => Direction::count()]);
        }

        return $this->error(['message' => 'no data']);
    }
}
