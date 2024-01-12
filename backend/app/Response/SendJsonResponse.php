<?php

namespace App\Response;

use Illuminate\Http\JsonResponse;
use Illuminate\Http\Response;

/**
 * @property-read mixed $data
 * @property-read int $status
 */
trait SendJsonResponse
{
    public function toResponse($request):JsonResponse
    {
        return new JsonResponse(
            $this->data,
            $this->status
        );
    }
}
