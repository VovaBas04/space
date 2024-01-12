<?php

namespace Database\Seeders;

use App\Models\SpacePort;
use Illuminate\Database\Seeder;

class SpacePortSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        SpacePort::factory()->hasRockets(10)->count(10)->create();
    }
}
