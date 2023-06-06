<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Sendcontact;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;


class SendContactController extends Controller
{
    /**
     * @OA\Post(
     *     path="/api/sendContact",
     *     tags={"Send Contact"},
     *     summary="Get data by short name",
     *     operationId="Sendcontact",
     *     @OA\RequestBody(
     *         description="Input data format",
     *         @OA\MediaType(
     *             mediaType="application/json",
     *             @OA\Schema(
     *                 type="object",
     *                 @OA\Property(
     *                     property="name",
     *                     description="required|max:50",
     *                     type="string",
     *                 ),
     *                 @OA\Property(
     *                     property="phone",
     *                     description="required|min:2|max:15",
     *                     type="string"
     *                 ),
     *                 @OA\Property(
     *                     property="text",
     *                     description="null",
     *                     type="string"
     *                 )
     *             )
     *         )
     *     ),
     *     @OA\Response(
     *         response=405,
     *         description="Invalid input"
     *     ),
     * )
     */

    public function postContact(Request $request)
    {
        $request->validate([
            'name' => 'required|max:50',
            'phone' => 'required|min:2|max:15',
        ]);
        $connect = new Sendcontact();
        $connect->name = $request->name;
        $connect->phone = $request->phone;
        $connect->text = $request->text;
        $connect->save();
        $token = '5964507943:AAHQiIkjpQ-A_JEpVpeeZeXfO5YO9gGEbcc';
        $chat_id = -1001937538897;
        $text ='Ismi: ' . $connect->name .'%0A'. 'Phone: ' . $request->phone .' dan xabar keldi';
        $sendToTelegram = fopen("https://api.telegram.org/bot{$token}/sendMessage?chat_id={$chat_id}&parse_mode=html&text={$text}", "r");
        return response()->json([
            'message' => 'Send contact User:',
            'User:' => $connect->name,
            'Phone:' => $connect->phone,
            'Text:' => $connect->text,
            'Send Telegram:' => $sendToTelegram?"True":"False"
        ], 200);
    }

}
