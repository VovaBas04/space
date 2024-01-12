<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class MapResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id'=>$this->id,
            'title'=>$this->title,
            'country'=>[
                'title'=>$this->country->title,
                'flag'=>$this->country->flag
            ],
            'coordinate'=>[
                'positionX'=>$this->position_x,
                'positionY'=>$this->position_y
            ]
        ];
    }
}
