<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\JsonResponse;
use App\Models\Contact;
use App\Models\Sponsr;
use App\Models\Country;
use App\Models\InteractiveService;
use App\Models\About;
use App\Models\Trust;
use App\Models\Slider;
use App\Models\Assosiation;
use App\Models\AssosiationCategory;
use App\Models\Infographic;
use App\Models\Event;


class ApiController extends Controller
{

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

    public function getContact():JsonResponse
    {
        $data = Contact::all()->first();
        if ($data){
            return $this->success($data);
        }
        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/abouts",
     *     tags={"Biz haqimizda"},
     *     summary="Get data by short name",
     *     operationId="getAbout",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function getAbout():JsonResponse
    {
        $data = About::all()->first();
        if ($data){
            return $this->success($data);
        }
        return $this->error(['message'=>'no data']);
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

    public function getSponsrs():JsonResponse
    {
        $data = Sponsr::all();
        if ($data){
            return $this->success($data);
        }
        return $this->error(['message'=>'no data']);
    }


    /**
     * @OA\Get(
     *     path="/api/countries",
     *     tags={"Country"},
     *     summary="Get data by short name",
     *     operationId="getCountries",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function getCountries(): JsonResponse
    {
        $data = Country::all();
        if ($data){
            return $this->success($data);
        }
        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/interactive-services",
     *     tags={"InteractiveService"},
     *     summary="Get data by short name",
     *     operationId="getInteractiveServices",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function getInteractiveServices():JsonResponse
    {
        $data = InteractiveService::all();
        if ($data){
            return $this->success($data);
        }
        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/trusts",
     *     tags={"Board of Trustees"},
     *     summary="Get data by short name",
     *     operationId="getTrustees",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function getTrustees():JsonResponse
    {
        $data = Trust::all();
        if ($data){
            return $this->success($data);
        }
        return $this->error(['message'=>'no data']);

    }

    /**
     * @OA\Get(
     *     path="/api/trusts/page/{count}",
     *     tags={"Board of Trustees"},
     *     summary="Get data by short name",
     *     operationId="getTrustPag",
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

    public function getTrustPag($count)
    {
        $data = Trust::orderBy("created_at", "DESC")->simplePaginate($count);

        if ($data){
            return $this->success([$data, 'total'=>Trust::count()]);
        }

        return $this->error(['message'=>'no data']);
    }


    /**
     * @OA\Get(
     *     path="/api/sliders",
     *     tags={"Slider"},
     *     summary="Get data by short name",
     *     operationId="getSliders",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function getSliders():JsonResponse
    {
        $data = Slider::all();
        if ($data){
            return $this->success($data);
        }
        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/sliders/{id}",
     *     tags={"Slider"},
     *     summary="Get data by short name",
     *     operationId="getOneSlider",
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

    public function getOneSlider($id)
    {
        $data = Slider::find($id);
        if ($data){
            return $this->success($data);
        }

        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/assosiations",
     *     tags={"Assosiation"},
     *     summary="Get data by short name",
     *     operationId="getAssosiation",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function getAssosiation():JsonResponse
    {
        $data = Assosiation::all();
        if ($data){
            return $this->success($data);
        }
        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/assosiationcategory",
     *     tags={"Assosiation"},
     *     summary="Get data by short name",
     *     operationId="getAssosiationCategory",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function getAssosiationCategory():JsonResponse
    {
        $data = AssosiationCategory::all();
        if ($data){
            return $this->success($data);
        }
        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/infographics",
     *     tags={"Infographic"},
     *     summary="Get data by short name",
     *     operationId="getInfographics",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function getInfographics()
    {
        $data = Infographic::all();
        if ($data){
            return $this->success($data);
        }
        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/infographics/{id}",
     *     tags={"Infographic"},
     *     summary="Get data by short name",
     *     operationId="getOneInfographics",
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

    public function getOneInfographics($id)
    {
        $infographicsViewers = Infographic::find($id);

        if ($infographicsViewers){
            $infographicsViewers->update([
                'viewers' => $infographicsViewers->viewers + 1
            ]);

            return $this->success($infographicsViewers);
        }

        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/infographics/page/{count}",
     *     tags={"Infographic"},
     *     summary="Get data by short name",
     *     operationId="getInfographicsPag",
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

    public function getInfographicsPag($count)
    {
        $data = Infographic::orderBy("created_at", "DESC")->simplePaginate($count);

        if ($data){
            return $this->success([$data, 'total'=>Infographic::count()]);
        }

        return $this->error(['message'=>'no data']);
    }



    /**
     * @OA\Get(
     *     path="/api/events",
     *     tags={"Event"},
     *     summary="Get data by short name",
     *     operationId="getEvents",
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function getEvents()
    {
        $data = Event::all();
        if ($data){
            return $this->success($data);
        }
        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/events/{id}",
     *     tags={"Event"},
     *     summary="Get data by short name",
     *     operationId="getOneEvents",
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

    public function getOneEvents($id)
    {
        $eventViewers = Event::find($id);

        if ($eventViewers){
            $eventViewers->update([
                'viewers' => $eventViewers->viewers + 1
            ]);

            return $this->success($eventViewers);
        }

        return $this->error(['message'=>'no data']);
    }

    /**
     * @OA\Get(
     *     path="/api/events/page/{count}",
     *     tags={"Event"},
     *     summary="Get data by short name",
     *     operationId="getEventsPag",
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

    public function getEventsPag($count)
    {
        $data = Event::orderBy("created_at", "DESC")->simplePaginate($count);

        if ($data){
            return $this->success([$data, 'total'=>Event::count()]);
        }

        return $this->error(['message'=>'no data']);
    }



}
