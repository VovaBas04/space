<?php

namespace App\Services;

use App\Models\SpacePort;

class Description
{
    public function getDescriptionInfo()
    {
        return SpacePort::all();
    }
}
