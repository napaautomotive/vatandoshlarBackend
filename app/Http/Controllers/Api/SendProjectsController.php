<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Sendproject;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\Storage;


class SendProjectsController extends Controller
{
    /**
     * Send project
     */

    /**
     * @OA\Post(
     *     path="/api/sendProject",
     *     tags={"Send Project"},
     *     summary="Get data by short name",
     *     operationId="sendproject",
     *     @OA\RequestBody(
     *         description="Input data format",
     *         @OA\MediaType(
     *             mediaType="multipart/form-data",
     *             @OA\Schema(
     *                 type="object",
     *                 @OA\Property(
     *                     property="name",
     *                     description="required|max:50",
     *                     type="string",
     *                 ),
     *                 @OA\Property(
     *                     property="email",
     *                     description="required|max:100",
     *                     type="string"
     *                 ),
     *                 @OA\Property(
     *                     property="phone",
     *                     description="required|min:2|max:15",
     *                     type="string"
     *                 ),
     *                 @OA\Property(
     *                     property="columnName",
     *                     description="required|max:100",
     *                     type="string"
     *                 ),
     *                 @OA\Property(
     *                     property="about",
     *                     description="required",
     *                     type="string"
     *                 ),
     *               @OA\Property(
     *                     property="files",
     *                     description="images",
     *                     type="array",
     *                          @OA\Items(type="file",collectionFormat="multi", format="multiple"),
     *                 ),
     *                 @OA\Property(
     *                     property="socials",
     *                     description="required",
     *                     type="string"
     *                 ),
     *             )
     *         )
     *     ),
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function sendproject(Request $request): JsonResponse
    {
        $request->validate([
            'name' => 'required|max:50',
            'phone' => 'required|min:2|max:15',
            'files' => 'required',
            'files.*' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $month=Carbon::now()->monthName;
        $year=Carbon::now()->year;
        $monthYear= "$month$year";
        $data = [];

        if ($request->hasFile('files')) {
            foreach ($request->file('files') as $image){
                $name = "/sendprojects/$monthYear/".time().'.'.$image->getClientOriginalName().'.'.$image->getClientOriginalExtension();
                $destinationPath = public_path("/storage/sendprojects/$monthYear/");
                $image->move($destinationPath, $name);
                $data[] = $name;
            }
        }


        $project = new Sendproject();
        $project->name = $request->name;
        $project->email = $request->email;
        $project->phone = $request->phone;
        $project->columnName = $request->columnName;
        $project->about = $request->about;
        $project->images = json_encode($data);
        $project->socials = $request->socials;
        $project->save();
        $token = '5964507943:AAHQiIkjpQ-A_JEpVpeeZeXfO5YO9gGEbcc';
        $chat_id = -1001937538897;
        $text ='Ismi: ' . $request->name .'%0A'. 'Phone: ' . $request->phone .' dan Yangi loyiha keldi: https://vatanparvarbackend.napaautomotive.uz/admin/sendprojects';
        $telegramphoto = "https://vatanparvarbackend.napaautomotive.uz/storage/$data[0]";
        $sendToTelegram = fopen("https://api.telegram.org/bot{$token}/sendPhoto?chat_id={$chat_id}&parse_mode=html&photo={$telegramphoto}&caption={$text}", "r");
        return response()->json([
            'message' => 'Send contact User:',
            'User:' => $project->name,
            'Phone:' => $project->phone,
            'Text:' => $project->about,
            'Images:' => json_encode($data),
            'Send Telegram:' => $sendToTelegram?"True":"False"
        ], 200);
    }
}
