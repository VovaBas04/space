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
            'id' => $this->id,
            'title' => $this->title,
            'description' => $this->description,
            'target' => $this->target,
            'firstSend' => $this->first_send,
            'aboutPlace' => $this->about_place,
            'imagePlace' => $this->imagePlaces[0]->image,
            'area' => $this->area,
            'logo' => $this->logo,
            'provider' => $this->provider->title,
            'aboutHistory' => $this->about_history_country,
            'otherInfo' => $this->other_info,
            'createPort' => $this->create_port,
            'presentState' => $this->present_state
        ];
    }
}
