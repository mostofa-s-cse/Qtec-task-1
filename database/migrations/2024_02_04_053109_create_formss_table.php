<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('formss', function (Blueprint $table) {
            $table->id(); // Primary Key
            $table->unsignedBigInteger('category_id'); // Foreign Key
            $table->string('name');
            $table->text('description');
            $table->timestamps();
            $table->foreign('category_id')->references('id')->on('categories'); // Foreign Key Relationship
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('formss');
    }
};
