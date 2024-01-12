<?php

namespace App\Http\Responses;
use Illuminate\Http\JsonResponse;
use Laravel\Fortify\Contracts\RegisterResponse as RegisterResponseContract;
class RegisterResponse implements RegisterResponseContract
{
    public function toResponse($request)
    {
        $token = $request->user()->createToken("Authorization");
        return new JsonResponse(['token' => $token->plainTextToken]);
    }
}
