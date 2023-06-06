<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\MediatekaVideo;
use App\Models\MediatekaVideoMenu;
use App\Models\MediatekaImage;
use App\Models\MediatekaImageMenu;
use Illuminate\Http\JsonResponse;


class MediatekaController extends Controller
{
    /**
     * @OA\Get(
     *     path="/api/mediateka-video-menus",
     *     tags={"Mediateka"},
     *     summary="Get data by short name",
     *     operationId="getMediatekavideomenus",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function getMediatekavideomenus():JsonResponse
    {
        $data = MediatekaVideoMenu::all();
        if ($data){
            return $this->success($data);
        }
        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/mediateka-videos",
     *     tags={"Mediateka"},
     *     summary="Get data by short name",
     *     operationId="getMediatekavideos",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function getMediatekavideos()
    {
        $data = MediatekaVideo::all();
        if ($data){
            return $this->success($data);
        }
        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/mediateka-videos/{id}",
     *     tags={"Mediateka"},
     *     summary="Get data by short name",
     *     operationId="getOneMediatekavideos",
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

    public function getOneMediatekavideos($id): JsonResponse
    {

        $data = MediatekaVideo::find($id);
        if ($data){
            return $this->success($data);
        }

        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/mediateka-videos/page/{count}",
     *     tags={"Mediateka"},
     *     summary="Get data by short name",
     *     operationId="getMediatekavideosPag",
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

    public function getMediatekavideosPag($count)
    {
        $data = MediatekaVideo::orderBy("created_at", "DESC")->simplePaginate($count);

        if ($data){
            return $this->success([$data, 'total'=>MediatekaVideo::count()]);
        }

        return $this->error(['message'=>'no data']);
    }


    /**
     * @OA\Get(
     *     path="/api/mediateka-videos/page/{count}/{id}",
     *     tags={"Mediateka"},
     *     summary="Get data by short name",
     *     operationId="getMediatekavideosPagID",
     *     @OA\Parameter(
     *         name="count",
     *         in="path",
     *         description="nechta chiqishi kerak?",
     *         required=true,
     *         @OA\Schema(
     *             type="integer",
     *             format="int32"
     *         )
     *     ),
     *     @OA\Parameter(
     *         name="id",
     *         in="path",
     *         description="Qaysi ID?",
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

    public function getMediatekavideosPagID($count, $id)
    {
        $data = MediatekaVideo::query()
            ->where('menu_uz', $id)
            ->orderBy("created_at", "DESC")
            ->simplePaginate($count);

        if ($data){
            return $this->success([$data, 'total'=>MediatekaVideo::query()->where('menu_uz', $id)->count()]);
        }

        return $this->error(['message'=>'no data']);
    }



    /**
     * @OA\Get(
     *     path="/api/mediateka-image-menus",
     *     tags={"Mediateka"},
     *     summary="Get data by short name",
     *     operationId="getMediateka_image_menus",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function getMediatekaimagemenus()
    {
        $data = MediatekaImageMenu::all();
        if ($data){
            return $this->success($data);
        }
        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/mediateka-images",
     *     tags={"Mediateka"},
     *     summary="Get data by short name",
     *     operationId="getMediateka_images",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function getMediatekaimages()
    {
        $data = MediatekaImage::all();
        if ($data){
            return $this->success($data);
        }
        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/mediateka-images/{id}",
     *     tags={"Mediateka"},
     *     summary="Get data by short name",
     *     operationId="getOneMediatekaimages",
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

    public function getOneMediatekaimages($id)
    {
        $data = MediatekaImage::find($id);
        if ($data){
            return $this->success($data);
        }

        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/mediateka-images/page/{count}",
     *     tags={"Mediateka"},
     *     summary="Get data by short name",
     *     operationId="getMediatekaimagesPag",
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

    public function getMediatekaimagesPag($count)
    {
        $data = MediatekaImage::orderBy("created_at", "DESC")->simplePaginate($count);

        if ($data){
            return $this->success([$data, 'total'=>MediatekaImage::count()]);
        }

        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/mediateka-images/page/{count}/{id}",
     *     tags={"Mediateka"},
     *     summary="Get data by short name",
     *     operationId="getMediatekaimagesPagID",
     *     @OA\Parameter(
     *         name="count",
     *         in="path",
     *         description="nechta chiqishi kerak?",
     *         required=true,
     *         @OA\Schema(
     *             type="integer",
     *             format="int32"
     *         )
     *     ),
     *     @OA\Parameter(
     *         name="id",
     *         in="path",
     *         description="Qaysi ID?",
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

    public function getMediatekaimagesPagID($count, $id)
    {
        $data = MediatekaImage::query()
            ->where('menu_uz', $id)
            ->orderBy("created_at", "DESC")
            ->simplePaginate($count);

        if ($data){
            return $this->success([$data, 'total'=>MediatekaImage::query()->where('menu_uz', $id)->count()]);
        }

        return $this->error(['message'=>'no data']);
    }
}
