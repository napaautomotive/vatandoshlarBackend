<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Sendproject;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;


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
     *                     property="images",
     *                     description="required",
     *                     type="file"
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
        ]);
        $project = new Sendproject();
        $project->name = $request->name;
        $project->email = $request->email;
        $project->phone = $request->phone;
        $project->columnName = $request->columnName;
        $project->about = $request->about;
        $project->images = $request->images;
        $project->socials = $request->socials;
        $project->save();
        $token = '5964507943:AAHQiIkjpQ-A_JEpVpeeZeXfO5YO9gGEbcc';
        $chat_id = -1001937538897;
        $text ='Ismi: ' . $request->name .'%0A'. 'Phone: ' . $request->phone .' dan Yangi loyiha keldi';
        $sendToTelegram = fopen("https://api.telegram.org/bot{$token}/sendMessage?chat_id={$chat_id}&parse_mode=html&text={$text}", "r");
        return response()->json([
            'message' => 'Send contact User:',
            'User:' => $project->name,
            'Phone:' => $project->phone,
            'Text:' => $project->text,
            'Send Telegram:' => $sendToTelegram?"True":"False"
        ], 200);
    }
}
