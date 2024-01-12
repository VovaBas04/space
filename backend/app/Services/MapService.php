<?php

namespace App\Services;

use App\Models\SpacePort;
use Illuminate\Support\Collection;

class MapService
{
    public function getMapInfo():Collection
    {
        return SpacePort::with('provider','rockets')->get();
    }
}
