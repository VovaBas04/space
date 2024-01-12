<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSpacePorts extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('countries',function (Blueprint $table){
           $table->id();
           $table->string('title',255);
           $table->text('flag');
           $table->timestamps();
        });
        Schema::create('providers',function (Blueprint $table){
            $table->id();
            $table->string('title',255);
            $table->text('logo');
            $table->timestamps();
        });
        Schema::create('space_ports', function (Blueprint $table) {
            $table->id();
            $table->string('title',255);
            $table->unsignedBigInteger('country_id');
            $table->foreign('country_id')->references('id')->on('countries')->onDelete('cascade');
            $table->text('description');
            $table->integer('position_x');
            $table->integer('position_y');
            $table->text('target');
            $table->text('about_place');
            $table->text('image_place');
            $table->text('image_graph');
            $table->date('first_send');
            $table->unsignedBigInteger('area');
            $table->text('logo');
            $table->unsignedBigInteger('provider_id');
            $table->foreign('provider_id')->references('id')->on('providers')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('space_ports');
    }
}
