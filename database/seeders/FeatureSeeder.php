<?php

namespace Database\Seeders;

use App\Models\Feature;
use Illuminate\Database\Seeder;

class FeatureSeeder extends Seeder
{
    public function run(): void
    {
        $features = [
            [
                'icon' => '<svg class="w-7 h-7" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M12 6V4m0 2a2 2 0 100 4m0-4a2 2 0 110 4m-6 8a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4m6 6v10m6-2a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4"/></svg>',
                'title_id' => 'Solusi Sesuai Kebutuhan',
                'title_en' => 'Tailored Solutions',
                'description_id' => 'Setiap sistem yang kami bangun dirancang khusus sesuai dengan proses bisnis Anda, bukan solusi template yang terbatas.',
                'description_en' => 'Every system we build is custom-designed to match your business processes, not a limited template solution.',
                'order' => 1,
            ],
            [
                'icon' => '<svg class="w-7 h-7" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M9 17V7m0 10a2 2 0 01-2 2H5a2 2 0 01-2-2V7a2 2 0 012-2h2a2 2 0 012 2m0 10a2 2 0 002 2h2a2 2 0 002-2M9 7a2 2 0 012-2h2a2 2 0 012 2m0 10V7m0 10a2 2 0 002 2h2a2 2 0 002-2V7a2 2 0 00-2-2h-2a2 2 0 00-2 2"/></svg>',
                'title_id' => 'Proses Kerja Terstruktur',
                'title_en' => 'Structured Work Process',
                'description_id' => 'Kami menggunakan alur kerja yang jelas mulai dari analisa, desain, development hingga deployment untuk memastikan hasil yang maksimal.',
                'description_en' => 'We use a clear workflow from analysis, design, development to deployment to ensure maximum results.',
                'order' => 2,
            ],
            [
                'icon' => '<svg class="w-7 h-7" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M18.364 5.636l-3.536 3.536m0 5.656l3.536 3.536M9.172 9.172L5.636 5.636m3.536 9.192l-3.536 3.536M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-5 0a4 4 0 11-8 0 4 4 0 018 0z"/></svg>',
                'title_id' => 'Dukungan Berkelanjutan',
                'title_en' => 'Ongoing Support',
                'description_id' => 'Kami tidak hanya membangun sistem, tetapi juga menyediakan dukungan dan maintenance untuk memastikan sistem tetap berjalan optimal.',
                'description_en' => 'We not only build systems, but also provide support and maintenance to ensure the system continues to run optimally.',
                'order' => 3,
            ],
            [
                'icon' => '<svg class="w-7 h-7" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M13 10V3L4 14h7v7l9-11h-7z"/></svg>',
                'title_id' => 'Teknologi Modern',
                'title_en' => 'Modern Technology',
                'description_id' => 'Menggunakan stack teknologi terkini yang terbukti andal, aman, dan mudah di-maintain untuk jangka panjang.',
                'description_en' => 'Using the latest technology stack that is proven reliable, secure, and easy to maintain for the long term.',
                'order' => 4,
            ],
            [
                'icon' => '<svg class="w-7 h-7" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z"/></svg>',
                'title_id' => 'Keamanan Terjamin',
                'title_en' => 'Guaranteed Security',
                'description_id' => 'Setiap sistem dibangun dengan standar keamanan yang tinggi untuk melindungi data dan aset digital bisnis Anda.',
                'description_en' => 'Every system is built with high security standards to protect your business data and digital assets.',
                'order' => 5,
            ],
            [
                'icon' => '<svg class="w-7 h-7" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0z"/></svg>',
                'title_id' => 'Tim Berpengalaman',
                'title_en' => 'Experienced Team',
                'description_id' => 'Didukung oleh tim developer dan desainer berpengalaman yang siap memberikan solusi terbaik untuk bisnis Anda.',
                'description_en' => 'Supported by an experienced team of developers and designers ready to provide the best solutions for your business.',
                'order' => 6,
            ],
        ];

        foreach ($features as $feature) {
            Feature::create($feature);
        }
    }
}
