<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSuratsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('surats', function (Blueprint $table) {
            $table->id();
            $table->integer('nik');
            $table->foreignId('jsurat_id');
            $table->foreignId('jkel_id');
            $table->foreignId('agama_id');
            $table->foreignId('user_id');
            $table->string('nama');
            $table->string('ttl');
            $table->string('alamat');
            $table->string('telepon');
            $table->string('pekerjaan');
            $table->timestamp('published_at')->nullable();
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
        Schema::dropIfExists('surats');
    }
}
