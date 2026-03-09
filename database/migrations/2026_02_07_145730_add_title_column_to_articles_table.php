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
        Schema::table('articles', function (Blueprint $table) {
            $table->json('title');
            $table->text('searchable_title');
            $table->fullText('searchable_title');
            $table->text('searchable_content')->nullable();
            $table->fullText('searchable_content');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('articles', function (Blueprint $table) {
            $table->dropColumn('title');
            $table->dropColumn('searchable_title');
            $table->dropFullText('searchable_title');
            $table->dropFullText('searchable_content');
            $table->dropColumn('searchable_content');
        });
    }
};
