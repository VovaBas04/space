<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class DescriptionResource extends JsonResource
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
            'description'=>$this->description,
            'target'=>$this->target,
            'firstSend'=>$this->first_send,
            'aboutPlace'=>$this->about_place,
            'imagePlace'=>$this->image_place,
            'logo'=>$this->logo,
            'provider'=>$this->provider->title,
            'imageGraph'=>$this->image_graph,
        ];
    }
}
