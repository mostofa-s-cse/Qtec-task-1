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
        Schema::create('form_fields', function (Blueprint $table) {
            $table->id('field_id');
            $table->unsignedBigInteger('form_id');
            $table->foreign('form_id')->references('form_id')->on('forms'); // Assuming 'forms' is your Forms table name
            $table->string('type');
            $table->string('label');
            $table->text('options')->nullable(); // Nullable for types other than Multiple Choice or Checkbox
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('form_fields');
    }
};
