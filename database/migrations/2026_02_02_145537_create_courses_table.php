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
        Schema::create('courses', function (Blueprint $table) {
            $table->id();
            $table->json('name');
            $table->json('description')->nullable();
            $table->string('image')->nullable();
            $table->enum('type',['live','offline','recorded'])->default('offline');
            $table->text('searchable_name');
            $table->text('searchable_description')->nullable();
            $table->foreignId('category_id')->nullable()->constrained('categories','id')->nullOnDelete();
            $table->foreignId('level_id')->nullable()->constrained('levels','id')->nullOnDelete();
            $table->foreignId('mentor_id')->nullable()->constrained('users','id')->nullOnDelete();
            $table->timestamps();

            $table->fullText('searchable_name');
            $table->fullText('searchable_description');
            $table->index('type');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('courses');
    }
};
