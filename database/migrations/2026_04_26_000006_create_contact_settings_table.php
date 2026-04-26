<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('contact_settings', function (Blueprint $table) {
            $table->id();
            $table->string('email');
            $table->string('phone');
            $table->string('address');
            $table->string('whatsapp_number');
            $table->text('whatsapp_message_id');
            $table->text('whatsapp_message_en');
            $table->string('section_title_id')->default('Konsultasikan Kebutuhan Sistem Anda');
            $table->string('section_title_en')->default('Consult Your System Needs');
            $table->string('section_highlight_id')->default('Gratis & Tanpa Komitmen');
            $table->string('section_highlight_en')->default('Free & No Commitment');
            $table->text('section_description_id');
            $table->text('section_description_en');
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('contact_settings');
    }
};
