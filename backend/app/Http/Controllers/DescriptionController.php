<?php

namespace App\Http\Controllers;

use App\Http\Resources\DescriptionResource;
use App\Http\Resources\InfoResource;
use App\Models\SpacePort;
use App\Services\Description;
use App\Services\InfoService;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class DescriptionController extends Controller
{
    private InfoService $infoService;
    public function __construct(InfoService $info)
    {
        $this->infoService = $info;
    }
    public function __invoke(SpacePort $spacePort):JsonResponse
    {
        return new JsonResponse(new DescriptionResource($this->infoService->getBigInfo($spacePort)));
    }
}
