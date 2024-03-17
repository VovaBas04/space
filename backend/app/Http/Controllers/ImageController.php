<?php

namespace App\Http\Controllers;

use App\Http\Resources\ImageResourceCollection;
use App\Models\SpacePort;
use App\Services\ImageService;
use Illuminate\Http\JsonResponse;

class ImageController extends Controller
{

    private ImageService $imageService;

    public function __construct(ImageService $imageService)
    {
        $this->imageService = $imageService;
    }

    public function getImage(string $type, SpacePort $spacePort)
    {
        $data = [];
        switch ($type){
            case 'statistics':
                $data = $this->imageService->getStatistic($spacePort);
                break;
            case 'schemes':
                $data = $this->imageService->getPlace($spacePort);
                break;
            case 'rockets':
                $data = $this->imageService->getRocket($spacePort);
        }
        $data = collect($data)->map(function ($item){
            $item['image'] = env("APP_URL") . "/storage/" . $item['image'];

            return $item;
        })->toArray();

        return new JsonResponse($data);
    }
}
