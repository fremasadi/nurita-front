<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::table('portfolios', function (Blueprint $table) {
            $table->json('image_json')->nullable()->after('image');
        });

        DB::table('portfolios')
            ->select(['id', 'image'])
            ->orderBy('id')
            ->chunkById(100, function ($portfolios) {
                foreach ($portfolios as $portfolio) {
                    DB::table('portfolios')
                        ->where('id', $portfolio->id)
                        ->update([
                            'image_json' => $portfolio->image
                                ? json_encode([$portfolio->image])
                                : null,
                        ]);
                }
            });

        Schema::table('portfolios', function (Blueprint $table) {
            $table->dropColumn('image');
        });

        Schema::table('portfolios', function (Blueprint $table) {
            $table->renameColumn('image_json', 'image');
        });
    }

    public function down(): void
    {
        Schema::table('portfolios', function (Blueprint $table) {
            $table->string('image_string')->nullable()->after('image');
        });

        DB::table('portfolios')
            ->select(['id', 'image'])
            ->orderBy('id')
            ->chunkById(100, function ($portfolios) {
                foreach ($portfolios as $portfolio) {
                    $images = json_decode($portfolio->image ?? '[]', true);

                    DB::table('portfolios')
                        ->where('id', $portfolio->id)
                        ->update([
                            'image_string' => is_array($images) ? ($images[0] ?? null) : null,
                        ]);
                }
            });

        Schema::table('portfolios', function (Blueprint $table) {
            $table->dropColumn('image');
        });

        Schema::table('portfolios', function (Blueprint $table) {
            $table->renameColumn('image_string', 'image');
        });
    }
};
