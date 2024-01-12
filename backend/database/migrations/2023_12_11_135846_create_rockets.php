<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRockets extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rockets', function (Blueprint $table) {
            $table->id();
            $table->string('name',255);
            $table->text('image_rocket');
            $table->float('height');
            $table->unsignedBigInteger('space_port_id');
            $table->foreign('space_port_id')->references('id')->on('space_ports')->onDelete('cascade');
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
        Schema::dropIfExists('rockets');
    }
}
