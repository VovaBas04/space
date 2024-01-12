<?php

namespace App\Http\Controllers;

use App\Http\Resources\MapResource;
use App\Models\SpacePort;
use App\Services\MapService;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class MapController extends Controller
{
    public function __invoke(MapService $mapService):JsonResponse
    {
        //
        return new JsonResponse(MapResource::collection($mapService->getMapInfo()));
    }
}
