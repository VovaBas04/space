<?php

namespace App\Services;

use App\Models\SpacePort;

class InfoService
{
    public function getSmallInfo()
    {
        return SpacePort::with('provider','imageRockets')->get();
    }
    public function getBigInfo(SpacePort $spacePort)
    {
        return SpacePort::with('imagePlaces','provider')->find($spacePort->id);
    }
}
