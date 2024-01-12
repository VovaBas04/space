<?php

namespace App\Services;

use App\Actions\SaveImageAction;
use App\Http\Requests\SpacePort\SpacePortSaveRequest;
use App\Models\Country;
use App\Models\SpacePort;
use Illuminate\Support\Collection;

class SpacePortService
{
    private SaveImageAction $imageAction;
    public function __construct(SaveImageAction $imageAction)
    {
        $this->imageAction = $imageAction;
    }
    public function list():Collection
    {
        return SpacePort::with('provider','country','rockets')->get();
    }
    public function store(Collection $files,array $data):SpacePort
    {
        $spacePort = (new SpacePort())->fill($data);
        $spacePort->fill($this->imageAction->handle($files))->save();
        return $spacePort;
    }
    public function destroy(SpacePort $spacePort):SpacePort
    {
        $spacePort->delete();
        return $spacePort;
    }
}
