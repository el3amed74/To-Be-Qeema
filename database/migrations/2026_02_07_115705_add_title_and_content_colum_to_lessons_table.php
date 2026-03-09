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
        Schema::table('lessons', function (Blueprint $table) {
            $table->json('title');
            $table->json('content');
            $table->text('searchable_title');
            $table->text('searchable_content');
            $table->fullText('searchable_title');
            $table->fullText('searchable_content');
            $table->tinyInteger('order')->default(0);
            $table->unique(['course_id', 'order']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('lessons', function (Blueprint $table) {
            $table->dropColumn('title');
            $table->dropColumn('content');
            $table->dropColumn('searchable_title');
            $table->dropColumn('searchable_content');
            $table->dropFullText('searchable_title');
            $table->dropFullText('searchable_content');
            $table->dropUnique(['course_id', 'order']);
            $table->dropColumn('order');
        });
    }
};
