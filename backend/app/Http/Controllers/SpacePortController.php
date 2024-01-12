<?php

namespace App\Http\Controllers;

use App\Actions\SaveImageAction;
use App\Http\Requests\SpacePort\SpacePortSaveRequest;
use App\Models\SpacePort;
use App\Response\CollectionResponse;
use App\Services\SpacePortService;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class SpacePortController extends Controller
{
    private SpacePortService $spacePortService;

    public function __construct(SpacePortService $service)
    {
        $this->spacePortService = $service;
    }

    public function index(): CollectionResponse
    {
        return new CollectionResponse($this->spacePortService->list());
    }


    public function store(SpacePortSaveRequest $request): JsonResponse
    {
        return new JsonResponse($this->spacePortService->store(
            collect($request->only(['image_place', 'image_graph', 'logo'])),
            $request->validated()));
    }


    public function show(SpacePort $spacePort): JsonResponse
    {
        //
        return new JsonResponse($spacePort);
    }

    public function destroy(SpacePort $spacePort): JsonResponse
    {
        return new JsonResponse($this->spacePortService->destroy($spacePort));
    }
}
