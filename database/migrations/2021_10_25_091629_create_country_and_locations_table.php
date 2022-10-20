<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCountryAndLocationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('country_and_locations', function (Blueprint $table) {
            $table->id();
            $table->integer('sort_number')->default(0);
            $table->string('name', 2000);
            $table->timestamps();

            $table->foreignId('parent_id')->nullable()->constrained('country_and_locations')->nullOnDelete();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('country_and_locations');
    }
}
