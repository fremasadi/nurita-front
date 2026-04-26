<?php

namespace Database\Seeders;

use App\Models\ContactSetting;
use Illuminate\Database\Seeder;

class ContactSettingSeeder extends Seeder
{
    public function run(): void
    {
        ContactSetting::create([
            'email' => 'technurita09@gmail.com',
            'phone' => '+6282876543298',
            'address' => 'Kediri, Jawa Timur',
            'whatsapp_number' => '6282876543298',
            'whatsapp_message_id' => 'Halo, saya ingin berkonsultasi mengenai kebutuhan sistem digital untuk bisnis saya.',
            'whatsapp_message_en' => 'Hello, I would like to consult about digital system needs for my business.',
            'section_title_id' => 'Konsultasikan Kebutuhan Sistem Anda',
            'section_title_en' => 'Consult Your System Needs',
            'section_highlight_id' => 'Gratis & Tanpa Komitmen',
            'section_highlight_en' => 'Free & No Commitment',
            'section_description_id' => 'Diskusikan kebutuhan bisnis Anda bersama kami. Kami siap membantu memberikan solusi terbaik yang sesuai dengan proses bisnis Anda secara profesional dan terstruktur.',
            'section_description_en' => 'Discuss your business needs with us. We are ready to help provide the best solution that suits your business processes in a professional and structured manner.',
        ]);
    }
}
