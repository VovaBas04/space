<?php

namespace App\Services;

use App\Models\SpacePort;

class ImageService
{
    public function getStatistic(SpacePort $spacePort)
    {
        return $spacePort->imageGraphs;
    }

    public function getRocket(SpacePort $spacePort)
    {
        return $spacePort->imageRockets;
    }

    public function getPlace(SpacePort $spacePort)
    {
        return $spacePort->imagePlaces;
    }
}
