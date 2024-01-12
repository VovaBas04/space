<?php

namespace App\Services;

use App\Models\SpacePort;

class InfoService
{
    public function getSmallInfo()
    {
        return SpacePort::with('provider','rockets')->get();
    }
}
