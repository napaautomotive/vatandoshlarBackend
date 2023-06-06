<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\News;
use Illuminate\Http\JsonResponse;

class NewsController extends Controller
{
    /**
     * @OA\Get(
     *     path="/api/news",
     *     tags={"News"},
     *     summary="Get data by short name",
     *     operationId="getNews",
     *     @OA\Response(
     *         response=200,
     *         description="Successfull operation"
     *     ),
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */
    public function getNews($count=null):JsonResponse
    {
        $data = News::all();

        if ($data){
            return $this->success($data);
        }


        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/news/search/{title}",
     *     tags={"News"},
     *     summary="Get data by title",
     *     operationId="getNewsByTitle",
     *     @OA\Parameter(
     *         name="title",
     *         in="path",
     *         description="flage of country that needs to be got",
     *         required=true,
     *         @OA\Schema(
     *             type="string",
     *             format="string"
     *         )
     *     ),
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function getNewsByTitle($title)
    {
        $news = News::where('title_uz', $title)->get();
        return response()->json([
            'data'=>$news
        ]);
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
        $newViewers = News::find($id);

        if ($newViewers){
            $newViewers->update([
                'viewers' => $newViewers->viewers + 1
            ]);

            return $this->success($newViewers);
        }

        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/news/page/{count}",
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

    public function getNewsPag($count): JsonResponse
    {
        $data = News::orderBy("data", "DESC")->simplePaginate($count);

        if ($data){
            return $this->success([$data, 'total'=>News::count()]);
        }

        return $this->error(['message'=>'no data']);
    }

}
