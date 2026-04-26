<?php

namespace Database\Seeders;

use App\Models\Service;
use Illuminate\Database\Seeder;

class ServiceSeeder extends Seeder
{
    public function run(): void
    {
        $services = [
            [
                'icon' => '<svg class="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M9.75 17L9 20l-1 1h8l-1-1-.75-3M3 13h18M5 17h14a2 2 0 002-2V5a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"/></svg>',
                'title_id' => 'Web Development',
                'title_en' => 'Web Development',
                'description_id' => 'Kami membangun website profesional dan sistem berbasis web yang cepat, aman, dan sesuai kebutuhan bisnis Anda.',
                'description_en' => 'We build professional websites and web-based systems that are fast, secure, and tailored to your business needs.',
                'order' => 1,
            ],
            [
                'icon' => '<svg class="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M12 18h.01M8 21h8a2 2 0 002-2V5a2 2 0 00-2-2H8a2 2 0 00-2 2v14a2 2 0 002 2z"/></svg>',
                'title_id' => 'Mobile Applications',
                'title_en' => 'Mobile Applications',
                'description_id' => 'Pengembangan aplikasi mobile Android & iOS untuk meningkatkan aksesibilitas dan pengalaman pengguna bisnis Anda.',
                'description_en' => 'Android & iOS mobile application development to enhance accessibility and user experience for your business.',
                'order' => 2,
            ],
            [
                'icon' => '<svg class="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M7 21a4 4 0 01-4-4V5a2 2 0 012-2h4a2 2 0 012 2v12a4 4 0 01-4 4zm0 0h12a2 2 0 002-2v-4a2 2 0 00-2-2h-2.343M11 7.343l1.657-1.657a2 2 0 012.828 0l2.829 2.829a2 2 0 010 2.828l-8.486 8.485M7 17h.01"/></svg>',
                'title_id' => 'UI/UX Design',
                'title_en' => 'UI/UX Design',
                'description_id' => 'Desain antarmuka yang modern dan user-friendly untuk meningkatkan kenyamanan dan kepuasan pengguna.',
                'description_en' => 'Modern and user-friendly interface design to enhance user comfort and satisfaction.',
                'order' => 3,
            ],
        ];

        foreach ($services as $service) {
            Service::create($service);
        }
    }
}
