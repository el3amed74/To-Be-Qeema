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
        Schema::create('course_reservations', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained()->onDelete('cascade');
            $table->foreignId('course_id')->constrained()->onDelete('cascade');
            $table->foreignId('mentor_id')->constrained('users')->onDelete('cascade');
            $table->string('phone_number');
            $table->string('job_title');
            $table->string('human_type');
            $table->string('location')->nullable();
            $table->date('date');
            $table->time('time');
            $table->string('payment_gateway');
            $table->string('payment_id')->nullable();
            $table->decimal('amount', 10, 2);
            $table->enum('status', ['pending', 'confirmed', 'cancelled', 'paid'])->default('pending');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('course_reservations');
    }
};
