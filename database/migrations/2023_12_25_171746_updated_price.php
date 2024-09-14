<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdatedPrice extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('updated_price', function (Blueprint $table) {
            $table->id();
            $table->string('24k', 255);
            $table->string('22k', 255);
            $table->string('21k', 255);
            $table->string('20k', 255);
            $table->string('18k', 255);
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
        Schema::dropIfExists('updated_price');
    }
}
