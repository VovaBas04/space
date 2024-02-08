<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateImageTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('image_graphs', function (Blueprint $table) {
            $table->id();
            $table->string('caption');
            $table->string('image');
            $table->unsignedBigInteger('space_port_id');
            $table->foreign('space_port_id')->on('space_ports')->references('id')->onDelete('cascade');
            $table->timestamps();
        });
        Schema::create('image_rockets', function (Blueprint $table) {
            $table->id();
            $table->string('caption');
            $table->string('image');
            $table->unsignedBigInteger('space_port_id');
            $table->foreign('space_port_id')->on('space_ports')->references('id')->onDelete('cascade');
            $table->timestamps();
        });
        Schema::create('image_places', function (Blueprint $table) {
            $table->id();
            $table->string('caption');
            $table->string('image');
            $table->unsignedBigInteger('space_port_id');
            $table->foreign('space_port_id')->on('space_ports')->references('id')->onDelete('cascade');
            $table->timestamps();
        });
        Schema::dropIfExists('rockets');
        Schema::table('space_ports',function (Blueprint $table){
            $table->dropColumn('image_graph');
            $table->dropColumn('image_place');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('image_tables');
    }
}
