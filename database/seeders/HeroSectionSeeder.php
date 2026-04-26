<?php

namespace Database\Seeders;

use App\Models\HeroSection;
use Illuminate\Database\Seeder;

class HeroSectionSeeder extends Seeder
{
    public function run(): void
    {
        HeroSection::create([
            'title_id' => 'Membantu Bisnis Anda Lebih Efisien dengan Sistem Digital',
            'title_en' => 'Helping Your Business Become More Efficient with Digital Systems',
            'highlight_id' => 'Lebih Efisien',
            'highlight_en' => 'More Efficient',
            'description_id' => 'Kami mengembangkan sistem berbasis web seperti ERP, inventory, dan dashboard internal untuk membantu operasional bisnis Anda menjadi lebih terstruktur dan efisien.',
            'description_en' => 'We develop web-based systems such as ERP, inventory, and internal dashboards to help your business operations become more structured and efficient.',
            'button_text_id' => 'Lebih Lanjut',
            'button_text_en' => 'Learn More',
            'button_url' => '#kontak',
            'image' => null,
        ]);
    }
}
