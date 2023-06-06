<?php

namespace App\Services;

use Illuminate\Http\JsonResponse;

class ApiService
{
    public $model;

    public function __construct($model)
    {
        $this->model = $model;
    }
    public function getApi($id = null): JsonResponse
    {
        try {
            $data = $id
                ? $this->model->find($id)->get()
                : $this->model->all();

            return response()->json([
                'status' => true,
                "data" => $data
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'ok' => false,
                'msg' => $e->getMessage(),
            ]);
        }
    }

    public function paginateApi($count)
    {
        try {
            $data = $this->model->orderBy("created_at", "DESC")->simplePaginate($count);
            return response()->json([
                'status' => true,
                'data' => $data,
                "total_number" => $this->model->all()->count()
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'status' => false,
                'msg' => $e->getMessage(),
            ]);
        }
    }

    public function firstOfModel(){
        try {
            $data = $this->model->all()->first();
            return response()->json([
                'status' => true,
                "data" => $data
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'ok' => false,
                'msg' => $e->getMessage(),
            ]);
        }
    }
}
