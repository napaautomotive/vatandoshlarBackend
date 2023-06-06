<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use App\Models\Headcolumn;
use App\Models\Aboutcolumn;
use App\Models\Column;
use App\Models\ColumnMenu;
use App\Models\News;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\DB;

class ColumnController extends Controller
{
    /**
     * @OA\Get(
     *     path="/api/column-menus",
     *     tags={"Column"},
     *     summary="Get data by short name",
     *     operationId="getColumnMenu",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function getColumnMenu():JsonResponse
    {
        $data = ColumnMenu::all();
        if ($data){
            return $this->success($data);
        }
        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/columns",
     *     tags={"Column"},
     *     summary="Get data by short name",
     *     operationId="getColumns",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function getColumns():JsonResponse
    {
        $data = Column::all();
        if ($data){
            return $this->success($data);
        }
        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/columns/{id}",
     *     tags={"Column"},
     *     summary="Get data by short name",
     *     operationId="getOneColumn",
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

    public function getOneColumn($id):JsonResponse
    {
        $columnViewers = Column::find($id);

        if ($columnViewers){
            $columnViewers->update([
                'viewers' => $columnViewers->viewers + 1
            ]);

            return $this->success($columnViewers);
        }

        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/columns/page/{count}/{id}",
     *     tags={"Column"},
     *     summary="Get data by short name",
     *     operationId="getColumnsPag",
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

    public function getColumnsPag($count, $id)
    {
        $data = Column::query()
            ->where('menu_uz', $id)
            ->orderBy("data", "DESC")
            ->simplePaginate($count);

        if ($data){
            return $this->success([$data, 'total'=>Column::query()->where('menu_uz', $id)->count()]);
        }

        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/columns/brandColumn/{count}",
     *     tags={"Column"},
     *     summary="Get data by short name",
     *     operationId="BrandColumn",
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
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function BrandColumn($count)
    {
        $data = Column::query()
            ->orderBy("viewers", "DESC")
            ->simplePaginate($count);

        if ($data){
            return $this->success([$data, 'total'=>Column::query()->count()]);
        }

        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/headcolumns",
     *     tags={"Column"},
     *     summary="Get data by short name",
     *     operationId="getHeadcolumn",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function getHeadcolumn():JsonResponse
    {
        $data = Headcolumn::all();
//        $user = DB::table('columns')->select('menu_uz', DB::raw('count(*) as total'))->groupBy('menu_uz')->get();
//        dd($user);

        if ($data){
            return $this->success($data);
        }
        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/aboutcolumns",
     *     tags={"Column"},
     *     summary="Get data by short name",
     *     operationId="getAboutcolumns",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function getAboutcolumns():JsonResponse
    {
        $data = Aboutcolumn::all()->first();

        if ($data){
            return $this->success($data);
        }
        return $this->error(['message'=>'no data']);
    }
}
