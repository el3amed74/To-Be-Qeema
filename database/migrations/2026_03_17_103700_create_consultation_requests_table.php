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
        Schema::create('consultation_requests', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->nullable()->constrained()->onDelete('cascade');
            $table->enum('type', ['personal', 'company']);
            $table->string('trainning_type'); // User spelled it "trainning_type"
            $table->text('customer_needs')->nullable();
            $table->text('company_needs')->nullable();
            $table->string('company_name')->nullable();
            $table->integer('employees_num')->nullable();
            $table->string('email');
            $table->string('phone_num');
            $table->string('time_to_call');
            $table->enum('location', ['online', 'offline']);
            $table->string('status')->default('pending');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('consultation_requests');
    }
};
