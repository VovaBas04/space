<?php

namespace App\Http\Controllers;

use App\Http\Resources\InfoResource;
use App\Http\Resources\MapResource;
use App\Models\SpacePort;
use App\Services\InfoService;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class InfoController extends Controller
{
    public function __invoke(InfoService $infoService):JsonResponse
    {
        {
            //
            return new JsonResponse(InfoResource::collection($infoService->getSmallInfo()));
        }
    }
}
