<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('hero_sections', function (Blueprint $table) {
            $table->id();
            $table->string('title_id');
            $table->string('title_en');
            $table->string('highlight_id');
            $table->string('highlight_en');
            $table->text('description_id');
            $table->text('description_en');
            $table->string('button_text_id')->default('Lebih Lanjut');
            $table->string('button_text_en')->default('Learn More');
            $table->string('button_url')->default('#kontak');
            $table->string('image')->nullable();
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('hero_sections');
    }
};
