<?php

namespace Database\Factories;

use App\Models\Country;
use App\Models\Provider;
use Illuminate\Database\Eloquent\Factories\Factory;

class SpacePortFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $ports =collect(['Байконур','Восточный','Северный','Плесецк','Алкантара','Канарвел','Вумера','Веньчан','Капустин Яр','Шахруд','Наро','Куру','Морской старт','Сан Марко']);
        $lenPorts = $ports->count();
        return [
            //
            'title'=>$ports[$this->faker->unique()->numberBetween(0,$lenPorts-1)],
            'description'=>$this->faker->paragraph,
            'position_x'=>$this->faker->numberBetween(0,200),
            'position_y'=>$this->faker->numberBetween(0,200),
            'target'=>$this->faker->paragraph,
            'about_place'=>$this->faker->paragraph,
            'image_place'=>'Здесь будет какая то картинка',
            'image_graph'=>'Здесь будет какая-то картинка',
            'first_send'=>$this->faker->date,
            'area'=>$this->faker->numberBetween(0,10000000),
            'logo'=>'Здесь будет какая-то картинка',
            'provider_id'=>Provider::factory(),
            'country_id'=>Country::factory()
        ];
    }
}
