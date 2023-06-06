<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use App\Models\Column;
use App\Models\News;
use App\Models\Categoryshow;
use App\Models\Event;
use App\Models\Infographic;
use App\Models\Publicevent;
use App\Models\Slider;
use Illuminate\Support\Facades\DB;

class SearchController extends Controller
{


//    /**
//     * @OA\Get(
//     *     path="/api/tag/{search}",
//     *     tags={"Search"},
//     *     summary="Get data by short name",
//     *     operationId="searchByTag",
//     *     @OA\Parameter(
//     *         name="search",
//     *         in="path",
//     *         description="nechta chiqishi kerak?",
//     *         required=true,
//     *         @OA\Schema(
//     *             type="string",
//     *             format="text"
//     *         )
//     *     ),
//     *     @OA\Response(
//     *         response=405,
//     *         description="Invalid input"
//     *     ),
//     * )
//     */
//    public function searchByTag($search)
//    {
//        $products = Column::query()->get();
//        $data=[];
//        foreach ($products as $product){
//
//            $terms = explode(", ", $product->tags);
//
//            foreach($terms as $term){
//                if ($term===$search){
//                    $data[]['tag']=$product;
//                }
//            }
//        }
//
//        return $this->success($data);
//
//    }

    /**
     * @OA\Get(
     *     path="/api/tagsearch/{search}/{paginate}",
     *     tags={"Search"},
     *     summary="Get data by short name",
     *     operationId="TagSearch",
     *     @OA\Parameter(
     *         name="search",
     *         in="path",
     *         description="Izlash so'zini kiriting",
     *         required=true,
     *         @OA\Schema(
     *             type="string",
     *             format="text"
     *         )
     *     ),
     *     @OA\Parameter(
     *         name="paginate",
     *         in="path",
     *         description="1 ta sahifada nechta chiqaramiz?",
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
    public function TagSearch($search, $paginate)
    {
        $columns = Column::query()->selectAll($search);
        $sliders = Slider::query()->selectAll($search);
        $events = Event::query()->selectAll($search);
        $news = News::query()->selectAll($search);
        $infographics = Infographic::query()->selectAll($search);
        $categoryshows = Categoryshow::query()->selectAll($search);
        $publicevents = Publicevent::query()->selectAll($search)
            ->union($columns)
            ->union($sliders)
            ->union($events)
            ->union($news)
            ->union($infographics)
            ->union($categoryshows)->orderBy('data', 'DESC')->paginate($paginate);

        return $this->success($publicevents);
    }

    /**
     * @OA\Get(
     *     path="/api/titlesearch/{search}/{paginate}",
     *     tags={"Search"},
     *     summary="Get data by short name",
     *     operationId="TitleSearch",
     *     @OA\Parameter(
     *         name="search",
     *         in="path",
     *         description="Izlash so'zini kiriting",
     *         required=true,
     *         @OA\Schema(
     *             type="string",
     *             format="text"
     *         )
     *     ),
     *     @OA\Parameter(
     *         name="paginate",
     *         in="path",
     *         description="1 ta sahifada nechta chiqaramiz?",
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
    public function TitleSearch($search,$paginate)
    {
        $columns = Column::query()->selectTitle($search);
        $events = Event::query()->selectTitle($search);
        $news = News::query()->selectTitle($search);
        $infographics = Infographic::query()->selectTitle($search);
        $categoryshows = Categoryshow::query()->selectTitle($search);
        $publicevents = Publicevent::query()->selectTitle($search)
            ->union($columns)
            ->union($events)
            ->union($news)
            ->union($infographics)
            ->union($categoryshows)->paginate($paginate);

        return $this->success($publicevents);
    }

    /**
     * @OA\Get(
     *     path="/api/brandtag/{paginate}",
     *     tags={"Search"},
     *     summary="Get data by short name",
     *     operationId="BrandTag",
     *     @OA\Parameter(
     *         name="paginate",
     *         in="path",
     *         description="1 ta sahifada nechta chiqaramiz?",
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
    public function BrandTag($paginate)
    {
        $columns = Column::query()->brandTag();
        $events = Event::query()->brandTag();
        $news = News::query()->brandTag();
        $infographics = Infographic::query()->brandTag();
        $categoryshows = Categoryshow::query()->brandTag();
        $publicevents = Publicevent::query()->brandTag()
            ->union($columns)
            ->union($events)
            ->union($news)
            ->union($infographics)
            ->union($categoryshows)->orderBy('viewers', 'DESC')->paginate($paginate);

        return $this->success($publicevents);
    }

    /**
     * @OA\Get(
     *     path="/api/latesttag/{paginate}",
     *     tags={"Search"},
     *     summary="Get data by short name",
     *     operationId="LatestTag",
     *     @OA\Parameter(
     *         name="paginate",
     *         in="path",
     *         description="1 ta sahifada nechta chiqaramiz?",
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
    public function LatestTag($paginate)
    {
        $columns = Column::query()->brandTag();
        $events = Event::query()->brandTag();
        $news = News::query()->brandTag();
        $infographics = Infographic::query()->brandTag();
        $categoryshows = Categoryshow::query()->brandTag();
        $publicevents = Publicevent::query()->brandTag()
            ->union($columns)
            ->union($events)
            ->union($news)
            ->union($infographics)
            ->union($categoryshows)->orderBy('data', 'DESC')->paginate($paginate);

        return $this->success($publicevents);
    }

}
