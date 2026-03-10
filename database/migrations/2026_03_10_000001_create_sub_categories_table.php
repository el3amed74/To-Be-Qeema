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
        Schema::create('sub_categories', function (Blueprint $table) {
            $table->id();
            $table->json('name');
            $table->json('description')->nullable();
            $table->string('image')->nullable();
            $table->text('searchable_name');
            $table->text('searchable_description')->nullable();
            $table->foreignId('category_id')->constrained('categories', 'id')->cascadeOnDelete();
            $table->timestamps();

            $table->fullText('searchable_name');
            $table->fullText('searchable_description');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sub_categories');
    }
};
