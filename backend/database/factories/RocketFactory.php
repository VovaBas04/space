<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class RocketFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name'=>$this->faker->name(),
            'image_rocket'=>"Здесь будет картинка",
            'height'=>$this->faker->randomFloat(2,0,100)
        ];
    }
}
