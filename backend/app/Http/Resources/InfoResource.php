<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class InfoResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id'=>$this->id,
            'title'=>$this->title,
            'logo'=>$this->logo,
            'provider'=>[
                'title'=>$this->provider->title,
                'logo'=>$this->provider->logo
            ],
            'firstSend'=>$this->first_send,
            'area'=>$this->area,
            'rocket'=>$this->rockets
        ];
    }
}
