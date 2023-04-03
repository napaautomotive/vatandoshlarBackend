<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use App\Models\Management;
use Illuminate\Http\JsonResponse;

class ManagementController extends Controller
{
    /**
     * @OA\Get(
     *     path="/api/managements",
     *     tags={"Rahbariyat tarkibi"},
     *     summary="Get data by short name",
     *     operationId="getManagements",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */
    public function getManagements(): JsonResponse
    {
        $data = Management::all();
        if ($data) {
            return $this->success($data);
        }

        return $this->error(['message' => 'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/managements/page/{count}",
     *     tags={"Rahbariyat tarkibi"},
     *     summary="Get data by short name",
     *     operationId="getManagementsPag",
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

    public function getManagementsPag($count): JsonResponse
    {
        $data = Management::orderBy("created_at", "DESC")->simplePaginate($count);

        if ($data) {
            return $this->success([$data, 'total' => Management::count()]);
        }

        return $this->error(['message' => 'no data']);
    }
}
