<?php

namespace App\Http\Requests\SpacePort;

use Illuminate\Foundation\Http\FormRequest;

class SpacePortSaveRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules():array
    {
        return [
            //
            'title'=>'required|unique:space_ports|max:255',
            'description'=>'required',
            'position_x'=>'required|integer',
            'position_y'=>'required|integer',
            'target'=>'required',
            'about_place'=>'required',
            'image_place'=>'required|image',
            'image_graph'=>'required|image',
            'first_send'=>'required|date|after:1950-01-01',
            'area'=>'required|integer|min:0',
            'logo'=>'required|image',
            'provider_id'=>'required|integer|min:1',
            'country_id'=>'required|integer|min:1'
        ];
    }
}
