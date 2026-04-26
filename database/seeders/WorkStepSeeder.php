<?php

namespace Database\Seeders;

use App\Models\WorkStep;
use Illuminate\Database\Seeder;

class WorkStepSeeder extends Seeder
{
    public function run(): void
    {
        $steps = [
            [
                'number' => '01',
                'title_id' => 'Analisa',
                'title_en' => 'Analysis',
                'description_id' => 'Kami memahami kebutuhan bisnis Anda secara mendalam melalui diskusi dan analisa untuk menentukan solusi yang paling tepat.',
                'description_en' => 'We deeply understand your business needs through discussion and analysis to determine the most appropriate solution.',
                'order' => 1,
            ],
            [
                'number' => '02',
                'title_id' => 'Desain',
                'title_en' => 'Design',
                'description_id' => 'Kami merancang struktur sistem dan tampilan antarmuka (UI/UX) yang intuitif, efisien, dan sesuai dengan kebutuhan pengguna.',
                'description_en' => 'We design the system structure and user interface (UI/UX) that is intuitive, efficient, and suited to user needs.',
                'order' => 2,
            ],
            [
                'number' => '03',
                'title_id' => 'Development',
                'title_en' => 'Development',
                'description_id' => 'Tim kami mulai mengembangkan sistem dengan standar coding yang baik untuk memastikan performa, keamanan, dan skalabilitas.',
                'description_en' => 'Our team starts developing the system with good coding standards to ensure performance, security, and scalability.',
                'order' => 3,
            ],
            [
                'number' => '04',
                'title_id' => 'Testing & Launch',
                'title_en' => 'Testing & Launch',
                'description_id' => 'Sistem diuji secara menyeluruh sebelum diluncurkan untuk memastikan semua fitur berjalan sempurna tanpa bug.',
                'description_en' => 'The system is thoroughly tested before launch to ensure all features run perfectly without bugs.',
                'order' => 4,
            ],
        ];

        foreach ($steps as $step) {
            WorkStep::create($step);
        }
    }
}
