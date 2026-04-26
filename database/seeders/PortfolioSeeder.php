<?php

namespace Database\Seeders;

use App\Models\Portfolio;
use Illuminate\Database\Seeder;

class PortfolioSeeder extends Seeder
{
    public function run(): void
    {
        $portfolios = [
            [
                'title_id' => 'Sistem Perizinan Karyawan',
                'title_en' => 'Employee Leave Management System',
                'category_id' => 'Website Development',
                'category_en' => 'Website Development',
                'description_id' => 'Aplikasi web untuk mengelola pengajuan izin, cuti, dan kehadiran karyawan secara digital dan terpusat.',
                'description_en' => 'A web application to manage employee leave requests, time off, and attendance digitally and centrally.',
                'image' => null,
                'tags' => ['Laravel', 'Vue.js', 'MySQL'],
                'demo_url' => null,
                'order' => 1,
            ],
            [
                'title_id' => 'Dashboard Inventory',
                'title_en' => 'Inventory Dashboard',
                'category_id' => 'Website Development',
                'category_en' => 'Website Development',
                'description_id' => 'Sistem manajemen inventori real-time dengan laporan stok, transaksi masuk-keluar, dan notifikasi otomatis.',
                'description_en' => 'Real-time inventory management system with stock reports, in-out transactions, and automatic notifications.',
                'image' => null,
                'tags' => ['Laravel', 'Inertia.js', 'Chart.js'],
                'demo_url' => null,
                'order' => 2,
            ],
            [
                'title_id' => 'Sistem ERP Manufaktur',
                'title_en' => 'Manufacturing ERP System',
                'category_id' => 'Enterprise System',
                'category_en' => 'Enterprise System',
                'description_id' => 'Platform ERP terintegrasi untuk mengelola produksi, bahan baku, penjualan, dan laporan keuangan.',
                'description_en' => 'Integrated ERP platform to manage production, raw materials, sales, and financial reports.',
                'image' => null,
                'tags' => ['Laravel', 'Vue.js', 'PostgreSQL'],
                'demo_url' => null,
                'order' => 3,
            ],
            [
                'title_id' => 'Aplikasi POS Retail',
                'title_en' => 'Retail POS Application',
                'category_id' => 'Mobile & Web',
                'category_en' => 'Mobile & Web',
                'description_id' => 'Point of sale berbasis web yang mendukung multi-kasir, manajemen produk, dan laporan penjualan harian.',
                'description_en' => 'Web-based point of sale supporting multi-cashier, product management, and daily sales reports.',
                'image' => null,
                'tags' => ['React', 'Node.js', 'MongoDB'],
                'demo_url' => null,
                'order' => 4,
            ],
        ];

        foreach ($portfolios as $portfolio) {
            Portfolio::create($portfolio);
        }
    }
}
