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
        Schema::create('consultation_sessions', function (Blueprint $table) {
            $table->id();
            $table->json('name');
            $table->json('description')->nullable();
            $table->json('content')->nullable();
            $table->string('image')->nullable();
            $table->string('video_url')->nullable();
            $table->decimal('price', 10, 2)->default(0);
            $table->integer('duration')->nullable(); // in minutes
            $table->enum('type', ['live', 'recorded', 'offline'])->default('live');
            $table->integer('earning_points')->default(0);
            $table->foreignId('consultation_sub_category_id')->constrained('consultation_sub_categories')->onDelete('cascade');
            $table->foreignId('mentor_id')->constrained('users')->onDelete('cascade');
            $table->text('searchable_name')->nullable();
            $table->text('searchable_description')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('consultation_sessions');
    }
};
