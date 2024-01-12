<?php

namespace App\Http\Controllers;

use App\Http\Resources\DescriptionResource;
use App\Http\Resources\InfoResource;
use App\Models\SpacePort;
use App\Services\Description;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class DescriptionController extends Controller
{
    public function __invoke(SpacePort $spacePort):JsonResponse
    {
        return new JsonResponse(new DescriptionResource($spacePort));
    }
}
