<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Column;
use App\Models\Contact;
use App\Models\News;
use App\Models\Partner;
use App\Models\Sponsr;
use Illuminate\Http\Request;

class ApiController extends Controller
{
    // news
    public function getNews(Request $req)
    {
        try {
            $data = News::all();
            return response()->json([
                'ok' => true,
                'data' => $data,
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'ok' => false,
                'msg' => $e->getMessage(),
            ]);
        }
    }

    public function getOneNews(Request $req, $id)
    {
        try {

            $news = News::where("id", $id)->first();
            return response()->json([
                'ok' => true,
                "data" => $news
            ]);
        } catch (\Exception $e) {
            if (str_contains($e->getMessage(), 'seen')) {
                return response()->json([
                    'ok' => false,
                    'msg' => "Invalid id.",
                ]);
            }
            return response()->json([
                'ok' => false,
                'msg' => $e->getMessage(),
            ]);
        }
    }

    public function getNewsPag(Request $req, $count)
    {
        try {
            //
            if (intval($count) == 0) {
                throw new \ErrorException('not found');
            }


            $data = News::orderBy("created_at", "DESC")->simplePaginate($count);
            return response()->json([
                'ok' => true,
                'data' => $data,
                "total_number" => News::all()->count()
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'ok' => false,
                'msg' => $e->getMessage(),
            ]);
        }
    }

    // contact
    public function getContact(Request $req)
    {
        try {
            $data = Contact::all()->first();
            return response()->json([
                'ok' => true,
                'data' => $data,
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'ok' => false,
                'msg' => $e->getMessage(),
            ]);
        }
    }

    // sponsrs
    public function getSponsrs(Request $req)
    {
        try {
            $data = Sponsr::all();
            return response()->json([
                'ok' => true,
                'data' => $data,
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'ok' => false,
                'msg' => $e->getMessage(),
            ]);
        }
    }

      // partners
      public function getPartners(Request $req)
      {
          try {
              $data = Partner::all();
              return response()->json([
                  'ok' => true,
                  'data' => $data,
              ]);
          } catch (\Exception $e) {
              return response()->json([
                  'ok' => false,
                  'msg' => $e->getMessage(),
              ]);
          }
      }

         // columns
         public function getColumns(Request $req)
         {
             try {
                 $data = Column::all();
                 return response()->json([
                     'ok' => true,
                     'data' => $data,
                 ]);
             } catch (\Exception $e) {
                 return response()->json([
                     'ok' => false,
                     'msg' => $e->getMessage(),
                 ]);
             }
         }
}
