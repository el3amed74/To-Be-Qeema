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
        Schema::table('courses', function (Blueprint $table) {
            if (Schema::hasColumn('courses', 'category_id')) {
                // We wrap this because if SQLite is used, dropping foreign keys might have issues,
                // but for MySQL/PostgreSQL it's standard syntax.
                $table->dropForeign(['category_id']);
                $table->dropColumn('category_id');
            }

            $table->foreignId('sub_category_id')->nullable()->constrained('sub_categories', 'id')->nullOnDelete();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('courses', function (Blueprint $table) {
            if (Schema::hasColumn('courses', 'sub_category_id')) {
                $table->dropForeign(['sub_category_id']);
                $table->dropColumn('sub_category_id');
            }

            $table->foreignId('category_id')->nullable()->constrained('categories', 'id')->nullOnDelete();
        });
    }
};
