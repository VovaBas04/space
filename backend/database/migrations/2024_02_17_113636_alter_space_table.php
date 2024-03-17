<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterSpaceTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('space_ports', function (Blueprint $table){
            $table->text('about_history_country')->nullable();
            $table->text('other_info')->nullable();
            $table->date('create_port')->nullable();
            $table->text('present_state')->nullable();
        });
        Schema::table('image_graphs', function (Blueprint $table) {
            $table->text('caption')->change();
        });
        Schema::table('image_rockets', function (Blueprint $table) {
            $table->text('caption')->change();
        });
        Schema::table('image_places', function (Blueprint $table) {
            $table->text('caption')->change();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
