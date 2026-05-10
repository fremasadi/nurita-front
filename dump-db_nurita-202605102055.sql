/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.7.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_nurita
-- ------------------------------------------------------
-- Server version	10.11.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES
('da4b9237bacccdf19c0760cab7aec4a8359010b0','i:1;',1778421097),
('da4b9237bacccdf19c0760cab7aec4a8359010b0:timer','i:1778421097;',1778421097),
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3','i:1;',1778420583),
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer','i:1778420583;',1778420583);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_settings`
--

DROP TABLE IF EXISTS `contact_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `whatsapp_number` varchar(255) NOT NULL,
  `whatsapp_message_id` text NOT NULL,
  `whatsapp_message_en` text NOT NULL,
  `section_title_id` varchar(255) NOT NULL DEFAULT 'Konsultasikan Kebutuhan Sistem Anda',
  `section_title_en` varchar(255) NOT NULL DEFAULT 'Consult Your System Needs',
  `section_highlight_id` varchar(255) NOT NULL DEFAULT 'Gratis & Tanpa Komitmen',
  `section_highlight_en` varchar(255) NOT NULL DEFAULT 'Free & No Commitment',
  `section_description_id` text NOT NULL,
  `section_description_en` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_settings`
--

LOCK TABLES `contact_settings` WRITE;
/*!40000 ALTER TABLE `contact_settings` DISABLE KEYS */;
INSERT INTO `contact_settings` VALUES
(1,'technurita09@gmail.com','+6282876543298','Kediri, Jawa Timur','6282876543298','Halo, saya ingin berkonsultasi mengenai kebutuhan sistem digital untuk bisnis saya.','Hello, I would like to consult about digital system needs for my business.','Konsultasikan Kebutuhan Sistem Anda','Consult Your System Needs','Gratis & Tanpa Komitmen','Free & No Commitment','Diskusikan kebutuhan bisnis Anda bersama kami. Kami siap membantu memberikan solusi terbaik yang sesuai dengan proses bisnis Anda secara profesional dan terstruktur.','Discuss your business needs with us. We are ready to help provide the best solution that suits your business processes in a professional and structured manner.','2026-04-25 19:04:12','2026-04-25 19:04:12');
/*!40000 ALTER TABLE `contact_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `features` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `icon` text NOT NULL,
  `title_id` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `description_id` text NOT NULL,
  `description_en` text NOT NULL,
  `order` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES
(1,'<svg class=\"w-7 h-7\" fill=\"none\" stroke=\"currentColor\" viewBox=\"0 0 24 24\"><path stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.5\" d=\"M12 6V4m0 2a2 2 0 100 4m0-4a2 2 0 110 4m-6 8a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4m6 6v10m6-2a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4\"/></svg>','Solusi Sesuai Kebutuhan','Tailored Solutions','Setiap sistem yang kami bangun dirancang khusus sesuai dengan proses bisnis Anda, bukan solusi template yang terbatas.','Every system we build is custom-designed to match your business processes, not a limited template solution.',1,1,'2026-04-25 19:04:12','2026-04-25 19:04:12'),
(2,'<svg class=\"w-7 h-7\" fill=\"none\" stroke=\"currentColor\" viewBox=\"0 0 24 24\"><path stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.5\" d=\"M9 17V7m0 10a2 2 0 01-2 2H5a2 2 0 01-2-2V7a2 2 0 012-2h2a2 2 0 012 2m0 10a2 2 0 002 2h2a2 2 0 002-2M9 7a2 2 0 012-2h2a2 2 0 012 2m0 10V7m0 10a2 2 0 002 2h2a2 2 0 002-2V7a2 2 0 00-2-2h-2a2 2 0 00-2 2\"/></svg>','Proses Kerja Terstruktur','Structured Work Process','Kami menggunakan alur kerja yang jelas mulai dari analisa, desain, development hingga deployment untuk memastikan hasil yang maksimal.','We use a clear workflow from analysis, design, development to deployment to ensure maximum results.',2,1,'2026-04-25 19:04:12','2026-04-25 19:04:12'),
(3,'<svg class=\"w-7 h-7\" fill=\"none\" stroke=\"currentColor\" viewBox=\"0 0 24 24\"><path stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.5\" d=\"M18.364 5.636l-3.536 3.536m0 5.656l3.536 3.536M9.172 9.172L5.636 5.636m3.536 9.192l-3.536 3.536M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-5 0a4 4 0 11-8 0 4 4 0 018 0z\"/></svg>','Dukungan Berkelanjutan','Ongoing Support','Kami tidak hanya membangun sistem, tetapi juga menyediakan dukungan dan maintenance untuk memastikan sistem tetap berjalan optimal.','We not only build systems, but also provide support and maintenance to ensure the system continues to run optimally.',3,1,'2026-04-25 19:04:12','2026-04-25 19:04:12'),
(4,'<svg class=\"w-7 h-7\" fill=\"none\" stroke=\"currentColor\" viewBox=\"0 0 24 24\"><path stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.5\" d=\"M13 10V3L4 14h7v7l9-11h-7z\"/></svg>','Teknologi Modern','Modern Technology','Menggunakan stack teknologi terkini yang terbukti andal, aman, dan mudah di-maintain untuk jangka panjang.','Using the latest technology stack that is proven reliable, secure, and easy to maintain for the long term.',4,1,'2026-04-25 19:04:12','2026-04-25 19:04:12'),
(5,'<svg class=\"w-7 h-7\" fill=\"none\" stroke=\"currentColor\" viewBox=\"0 0 24 24\"><path stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.5\" d=\"M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z\"/></svg>','Keamanan Terjamin','Guaranteed Security','Setiap sistem dibangun dengan standar keamanan yang tinggi untuk melindungi data dan aset digital bisnis Anda.','Every system is built with high security standards to protect your business data and digital assets.',5,1,'2026-04-25 19:04:12','2026-04-25 19:04:12'),
(6,'<svg class=\"w-7 h-7\" fill=\"none\" stroke=\"currentColor\" viewBox=\"0 0 24 24\"><path stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.5\" d=\"M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0z\"/></svg>','Tim Berpengalaman','Experienced Team','Didukung oleh tim developer dan desainer berpengalaman yang siap memberikan solusi terbaik untuk bisnis Anda.','Supported by an experienced team of developers and designers ready to provide the best solutions for your business.',6,1,'2026-04-25 19:04:12','2026-04-25 19:04:12');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hero_sections`
--

DROP TABLE IF EXISTS `hero_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `hero_sections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title_id` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `highlight_id` varchar(255) NOT NULL,
  `highlight_en` varchar(255) NOT NULL,
  `description_id` text NOT NULL,
  `description_en` text NOT NULL,
  `button_text_id` varchar(255) NOT NULL DEFAULT 'Lebih Lanjut',
  `button_text_en` varchar(255) NOT NULL DEFAULT 'Learn More',
  `button_url` varchar(255) NOT NULL DEFAULT '#kontak',
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hero_sections`
--

LOCK TABLES `hero_sections` WRITE;
/*!40000 ALTER TABLE `hero_sections` DISABLE KEYS */;
INSERT INTO `hero_sections` VALUES
(1,'Membantu Bisnis Anda Lebih Efisien dengan Sistem Digital','Helping Your Business Become More Efficient with Digital Systems','Lebih Efisien','More Efficient','Kami mengembangkan sistem berbasis web seperti ERP, inventory, dan dashboard internal untuk membantu operasional bisnis Anda menjadi lebih terstruktur dan efisien.','We develop web-based systems such as ERP, inventory, and internal dashboards to help your business operations become more structured and efficient.','Lebih Lanjut','Learn More','#kontak','hero/01KR92F1H5193W89QXD8QS6WHE.png','2026-04-25 19:04:12','2026-05-10 06:50:40');
/*!40000 ALTER TABLE `hero_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'0001_01_01_000000_create_users_table',1),
(2,'0001_01_01_000001_create_cache_table',1),
(3,'0001_01_01_000002_create_jobs_table',1),
(4,'2026_04_26_000001_create_hero_sections_table',2),
(5,'2026_04_26_000002_create_services_table',2),
(6,'2026_04_26_000003_create_features_table',2),
(7,'2026_04_26_000004_create_portfolios_table',2),
(8,'2026_04_26_000005_create_work_steps_table',2),
(9,'2026_04_26_000006_create_contact_settings_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolios`
--

DROP TABLE IF EXISTS `portfolios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `portfolios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title_id` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `category_en` varchar(255) NOT NULL,
  `description_id` text NOT NULL,
  `description_en` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`tags`)),
  `demo_url` varchar(255) DEFAULT NULL,
  `order` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolios`
--

LOCK TABLES `portfolios` WRITE;
/*!40000 ALTER TABLE `portfolios` DISABLE KEYS */;
INSERT INTO `portfolios` VALUES
(1,'Sistem Perizinan Karyawan','Employee Leave Management System','Website Development','Website Development','Aplikasi web untuk mengelola pengajuan izin, cuti, dan kehadiran karyawan secara digital dan terpusat.','A web application to manage employee leave requests, time off, and attendance digitally and centrally.',NULL,'[\"Laravel\",\"Vue.js\",\"MySQL\"]',NULL,1,1,'2026-04-25 19:04:12','2026-04-25 19:04:12'),
(2,'Dashboard Inventory','Inventory Dashboard','Website Development','Website Development','Sistem manajemen inventori real-time dengan laporan stok, transaksi masuk-keluar, dan notifikasi otomatis.','Real-time inventory management system with stock reports, in-out transactions, and automatic notifications.',NULL,'[\"Laravel\",\"Inertia.js\",\"Chart.js\"]',NULL,2,1,'2026-04-25 19:04:12','2026-04-25 19:04:12'),
(3,'Sistem ERP Manufaktur','Manufacturing ERP System','Enterprise System','Enterprise System','Platform ERP terintegrasi untuk mengelola produksi, bahan baku, penjualan, dan laporan keuangan.','Integrated ERP platform to manage production, raw materials, sales, and financial reports.',NULL,'[\"Laravel\",\"Vue.js\",\"PostgreSQL\"]',NULL,3,1,'2026-04-25 19:04:12','2026-04-25 19:04:12'),
(4,'Aplikasi POS Retail','Retail POS Application','Mobile & Web','Mobile & Web','Point of sale berbasis web yang mendukung multi-kasir, manajemen produk, dan laporan penjualan harian.','Web-based point of sale supporting multi-cashier, product management, and daily sales reports.',NULL,'[\"React\",\"Node.js\",\"MongoDB\"]',NULL,4,1,'2026-04-25 19:04:12','2026-04-25 19:04:12');
/*!40000 ALTER TABLE `portfolios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `icon` text NOT NULL,
  `title_id` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `description_id` text NOT NULL,
  `description_en` text NOT NULL,
  `order` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES
(1,'<svg class=\"w-8 h-8\" fill=\"none\" stroke=\"currentColor\" viewBox=\"0 0 24 24\"><path stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.5\" d=\"M9.75 17L9 20l-1 1h8l-1-1-.75-3M3 13h18M5 17h14a2 2 0 002-2V5a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z\"/></svg>','Web Development','Web Development','Kami membangun website profesional dan sistem berbasis web yang cepat, aman, dan sesuai kebutuhan bisnis Anda.','We build professional websites and web-based systems that are fast, secure, and tailored to your business needs.',1,1,'2026-04-25 19:04:12','2026-04-25 19:04:12'),
(2,'<svg class=\"w-8 h-8\" fill=\"none\" stroke=\"currentColor\" viewBox=\"0 0 24 24\"><path stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.5\" d=\"M12 18h.01M8 21h8a2 2 0 002-2V5a2 2 0 00-2-2H8a2 2 0 00-2 2v14a2 2 0 002 2z\"/></svg>','Mobile Applications','Mobile Applications','Pengembangan aplikasi mobile Android & iOS untuk meningkatkan aksesibilitas dan pengalaman pengguna bisnis Anda.','Android & iOS mobile application development to enhance accessibility and user experience for your business.',2,1,'2026-04-25 19:04:12','2026-04-25 19:04:12'),
(3,'<svg class=\"w-8 h-8\" fill=\"none\" stroke=\"currentColor\" viewBox=\"0 0 24 24\"><path stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.5\" d=\"M7 21a4 4 0 01-4-4V5a2 2 0 012-2h4a2 2 0 012 2v12a4 4 0 01-4 4zm0 0h12a2 2 0 002-2v-4a2 2 0 00-2-2h-2.343M11 7.343l1.657-1.657a2 2 0 012.828 0l2.829 2.829a2 2 0 010 2.828l-8.486 8.485M7 17h.01\"/></svg>','UI/UX Design','UI/UX Design','Desain antarmuka yang modern dan user-friendly untuk meningkatkan kenyamanan dan kepuasan pengguna.','Modern and user-friendly interface design to enhance user comfort and satisfaction.',3,1,'2026-04-25 19:04:12','2026-04-25 19:04:12');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES
('1Ge512OlWNLkF5pta3o8LuCcUWDMt6ajPJ1BVCtK',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YToyOntzOjY6Il90b2tlbiI7czo0MDoiUXR0aEFobklWaWR0NGJOYTB5QTNZRUtoYzJUNmk4eE9oN2VKWGJpUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1777169862),
('3vR50gRKrXotgWGkV4gwqr3rz3te1stS4mrxOCKF',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoib3RPcFFZNHlTUFVEZjV5WmtSdHc2MWhoUHJWU1haTXJoQUdWVTJBWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9udXJpdGEtZnJvbnQudGVzdC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1777170054),
('CUQVsRXtmUbTcqRWGWCPXVPsM2qouCuC2nc2FM1R',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUhWcDU0UHRzUTg1aWxMVXpRSUE2Y0NDdUZFMkxDakdJdHg4OUtxMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9udXJpdGEtZnJvbnQudGVzdC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1777170011),
('EBJb8DFwUow6jmkR5E7j44uYQI8Fdo2FDHq8a7DA',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQUdnVURVS3ZHNjg4dkdXTm44MzZLVEtibWIySjRJdXF4aWY4ZXVkdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9udXJpdGEtZnJvbnQudGVzdC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1777169844),
('f3xHnnRRjhLWs67T8b0UDhXKoTc7nPQp7POVSWUc',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YToyOntzOjY6Il90b2tlbiI7czo0MDoib2JBUVVNYnR5MmtoY0RTV1pIa2QyblQ5bE9LM0NBeHltalZTRnhLZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1777169877),
('fgrFa7uILHDrPrF6NmoDKBMnfuAXWopD0zIFMag3',NULL,'192.168.1.4','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWpjR2hOdzlzZW1HMTQ1UzgyWVBka0hPcU1ZS04wQlBSYXdKS1lGYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xOTIuMTY4LjEuNDo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1777165943),
('FZ4wmAyUJN1SjTTjoTKSQg7qT4GccdcxzSrgJBbX',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiem1BQkVVMFRKbnpKMER4NW9id3hLNTFGbThmdmROVU5LNDVSakhLRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly9udXJpdGEtZnJvbnQudGVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1777169826),
('hbmKBTk3aAJzYguBLToZJLejn04fm1AJyP5tvtjx',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoieHlJbE1wa0Z0VnRCNWZhcnh6R3ZhbFg2U2lBYXFLYlNwU2kyVDFScCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9udXJpdGEtZnJvbnQudGVzdC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1777169870),
('IVb4OKqJAZ5zaDJ76RM4cRxh2ZK7iJbOTUPOAgDJ',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiV29OQ3RMQVA2SjZuSUpOMHdIMnRiZ041cEN5am9adFJjUWxMSVBUSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9udXJpdGEtZnJvbnQudGVzdC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1777169871),
('J09E2D9chy6j3xOVcIBAfprv0bqDgmdK3XFa1RkT',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkdCUldKQVRnc21XTVdZaTdCUXdzaEx2Vk1NWk5MN3VzS3RIeXVTSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9udXJpdGEtZnJvbnQudGVzdC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1777170053),
('J8uar2OW6LrG3vyqjC7fTM8Ueozl50JBotGlPtxA',NULL,'192.168.1.4','WhatsApp/2.2613.101 W','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0FMcld5NHpXcG5PaXF0cENDdFBGdFhlZDZ6b1AwaklvTHNYQm1YNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xOTIuMTY4LjEuNDo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1777165927),
('KOm8ujhcJUgrEwLjlZgNkjEefSJxBPiJggtdJ9Fp',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUU5kR1pHUHFzaG1OQjdrcGFlY0VRdWNaY1owSDFWZ2JKMzN0eHZReiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMDoiaHR0cDovL251cml0YS1mcm9udC50ZXN0L2FkbWluIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9udXJpdGEtZnJvbnQudGVzdC9hZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1777169832),
('KvJaHMZ9ysa88VLumEMZ7BEzGm493DVVgbYmUiIk',NULL,'192.168.1.14','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnJlTXpsWlA0TnUybWVqcUNmNXl6NVFhMVdHRVh2OTRNaGJ3WkFXOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xOTIuMTY4LjEuNDo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1777166352),
('KzMTMkflyjSXnzcf621Qc4g1jZwWmyndSTEsWdY3',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YToyOntzOjY6Il90b2tlbiI7czo0MDoibUtRSkhVbWQxbWt5NGVjSTlQSHpkcnZrQ1FaRjhyVzV3YlBIaWZGWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1777169840),
('lgH64h307uYosxxuXB6UixWB37m7okul4t2CG5Z8',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoic1VxaTdPN3BDVThJY1pvNVA4dm02MWhYOUlSZzgxcUk1NktQUUc0RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9udXJpdGEtZnJvbnQudGVzdC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1777170054),
('LIamDe9rJzlUJ7UTP0MtFxjfqqKpv9z0yTBw1HpQ',NULL,'192.168.1.5','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQUZMZkxNR2lMYUlaYlVnUmZpSGRLam9jNHNzajh2Q1NjTVBDRGdWNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xOTIuMTY4LjEuNDo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1777166004),
('N1a1kT3cVl8j6HUWxjK9ZMFYHB5qhTAuzPshrVpf',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YToyOntzOjY6Il90b2tlbiI7czo0MDoiekFGcUR6ajhuNDMybXBxRXhTZEZNRmJRZjZFN3N3N3NXODNhdm1EbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1777170016),
('O6oTnRequuAKcwsyFspwavvZV0uO1zbUyKQlPDtQ',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGo2b05BZ0xIRENRYWlCdUhGaTd1ZE5mTWFHNHp1b0U0YzFsOHVEeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9udXJpdGEtZnJvbnQudGVzdC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1777170019),
('ocN03OQrnSekqWcuSMQBSc60Q6oMFEqiV1ux2hZM',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZnhBeGxpN1FtRzB5cDRTdGVpUE1hV3BnOW5IZVlLdDNpV2dXSGZYcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9udXJpdGEtZnJvbnQudGVzdC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1777170064),
('OmxKk8o7EL77XN7UvXIbHNJslZNSjOVGM0YeLf8V',NULL,'192.168.1.4','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRFQ4eUROOHFoV083cmxHNXIzd3dVSnpGNzliM3JZTTNQdXlCTmxDbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xOTIuMTY4LjEuNDo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1777165919),
('oTRYdr8K6JOGmHOrZyFXT8Jli5diapbtvtoWs1Sj',NULL,'192.168.1.14','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjVPdTh5cFhSUThVTWRKR3VzTFdqdHZ0RzBNM0Yyazd2WEJCZE5PWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xOTIuMTY4LjEuNDo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1777166200),
('oV4cQSZ6dDzGIuZqUvMoYSYmMosPO6OVj9WjsXM6',NULL,'192.168.1.4','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRjRFcjBDTDlIU25VU3hNQnZZRXp0SHlMdVpMRUlTUXBtSXhpNEp5eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xOTIuMTY4LjEuNDo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1777165947),
('pCzbCCqWInWphg5sg22XVU1USOT0owSc1K2c07ku',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDg4cDd4UDFsUXZLYmV1T2RTS3JIbm5zS3RUQzhOSGdaY29WREVOdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9udXJpdGEtZnJvbnQudGVzdC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1777169885),
('q4oxXfKZcJEfGbZBMYTQDo7MiyjK9dr5mZzi5gcZ',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YToyOntzOjY6Il90b2tlbiI7czo0MDoieDg5Q0FRbUdLVGV0UmNqUkIzWkRzblF5N3kzUnF5UnFMM1oxQ3l3QSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1777169849),
('RBdwkGiviJ1HrCF8ORfhPK35vcHUKzZdZ9HdUNLC',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZHFhekF0VWRWWHQ5SHVoRXlKS0I2dXYxU1dJZ2NLcTJlS0UyN0pueiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9udXJpdGEtZnJvbnQudGVzdC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1777169853),
('RUBY3C7GVVB8bqBVjWaChSanvk76qvo6SGlwJ4C4',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.28.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzg4bDdrVnczOHhnRzcxUGhOWVJuNWZ6ZG9laXl1dWx3ajhMWFpzcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly9udXJpdGEtZnJvbnQudGVzdC8/aGVyZD1wcmV2aWV3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1777169986),
('S20M2MfMKcrKNc8ZRwTrdUDFUgeGLAz5MImejgVC',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YToyOntzOjY6Il90b2tlbiI7czo0MDoiV2tBN2JQSGhyVUxVdnF3RXFTazRFSW9qOTNMQk03WDRPa2VnY1p3RyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1777170060),
('sKxgfhfMGB0RBWN2remeBhcEIywh5Sq4JsLlua66',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.28.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoib2ZWRENGeTBtVHhWWHlCY0RvOWFLQU9PN25OMDNPRDdvY1l1RWIwcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vbnVyaXRhLWZyb250LnRlc3QvP2hlcmQ9cHJldmlldyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1777164345),
('SL7q1d8no4zypvDujl1V2Xfq5pTsGOdzakRdyh8F',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.28.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaDBOU1lWVkE5WXRnZ29PNmc3V0RvT0pMWmhmRnRON0pSb0tFMlJWUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly9udXJpdGEtZnJvbnQudGVzdC8/aGVyZD1wcmV2aWV3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1777170047),
('TnWEjkP2MVd0lDumqq6Adz8S8Dfjp6uM6S9p2BD8',NULL,'192.168.1.4','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoic01yOThBTzFGZnVOZlFOMmVacFc0VmFHNmdlcm5hYzdoMzk2Yk56bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xOTIuMTY4LjEuNDo4MDAwL2FkbWluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyOToiaHR0cDovLzE5Mi4xNjguMS40OjgwMDAvYWRtaW4iO319',1777169806),
('uBIgEGSaO6K8gDKhkfGY4BYQgRKupyTyo4NH796e',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.28.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibER6WXlsZDd2bTJLQzVqa2JTajVKanVRQ1BhNjlDcE5YMGRqWlZqVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly9udXJpdGEtZnJvbnQudGVzdC8/aGVyZD1wcmV2aWV3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1777169823),
('uDSkna52xVpTsQASv6ofZ4YFruYCFjimNKZLRWjh',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmZEMzVidllBdUN6dVVNbTN3Z3pUeG9vZ0l1dk0zTk81ZzhaOGZtSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9udXJpdGEtZnJvbnQudGVzdC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1777169865),
('UeURNl1DfgXHRxL64TRaQr4KNo6x4satBAcagWE9',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.28.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnU5dnNQVlZ4Q0N4YzdyTnc4S1JNTHhlblYwcmpWMVR1M202MU1sTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vbnVyaXRhLWZyb250LnRlc3QvP2hlcmQ9cHJldmlldyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1777164662),
('UGS0blnNnNc8u0PBqiea14FCY2ZO05ZYXLD8jmGs',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWms1d2NwcElIdkFha0FCUEhuWThDeW9kd2tteTJJWFgwbEJzUHZLdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9udXJpdGEtZnJvbnQudGVzdC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1777169832),
('vHb03AcAtBeloAbeEBxDtaXNJD7YSvEIK34QW0ZP',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVTY3VGl2M21VV2VrSG9xZ2RvZ3NjTW1WamtCeW1HeXNwdjBnZ1pIRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly9udXJpdGEtZnJvbnQudGVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1777165602),
('wc1L9PIFcCsjHrXPTXGLi2FWHwiRf62PvTRnOG22',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YToyOntzOjY6Il90b2tlbiI7czo0MDoiWjJNdGtqNHhCVTRLODdWSkQwNFQ3ZFpOMjlWWnBwYXRpYWpLUFFrUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1777170071),
('WKbVNQy8bA1NMdCfHvixM3N5C5gcZ8VkGPAdG449',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.28.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGNyTEtVOWx3SjJSdUdwM2JtVUVNeEZMMVNsd3NUZHVURVliOXltUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly9udXJpdGEtZnJvbnQudGVzdC8/aGVyZD1wcmV2aWV3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1777170038),
('Wmh0IdKamdfieeUFLOoqYJOjbW4s0FFZOJ7nfUg1',NULL,'127.0.0.1','WhatsApp/2.2613.101 W','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUFcxRHVnMWhRVXROOVVZaGdYb2RqSDh0VnRLTEMzVkFIZUp0Y3pybSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly9udXJpdGEtZnJvbnQudGVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1777165382),
('xAk5hLbMWXxR4sExfB910T6Vd0AvOAf4M8VJrFY1',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoicHh3UUM0dkF6RzdMdE9sS2I3dUVaaVB1REc1ZVhzZFhidHNFZmh5cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9udXJpdGEtZnJvbnQudGVzdC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1777169870),
('XFkQdAvQBH7mFlGHOWbUbPueziTG9epA52GCZkJi',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3F4cDhqRkJiclh2UzBoN2ZsUWhiUVZVZkVGYTBpY3FTS1NWR1Y3RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9udXJpdGEtZnJvbnQudGVzdC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1777169870),
('YYzgD2MmL0TiAV0Bj9zeaeQE75rqhElXI13cHMFf',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiN1FadkhyYTBvTUlNTTFMUlVsWW9GV2J2dE14MzlIUnNBZXVCZjB0WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vbnVyaXRhLWZyb250LnRlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1777164351),
('Z8LqVEiyORbvATAxhshUL5vOD2ef312H3nxfJvUa',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmhKdFVtVUtuc3ZIRU5ZWlNWR1hNQWRHYWZuTEhsWGM2aGhOcUpwNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9udXJpdGEtZnJvbnQudGVzdC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1777170074),
('zCCcq2yNvhvuagDbIz66owfNqA09gryeF2lnFQi2',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.28.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2R0SEpJWEdGT2JCdXZwUHdqdXdMSGhHc25sYk9OUEQxWUQ4S2o1ciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly9udXJpdGEtZnJvbnQudGVzdC8/aGVyZD1wcmV2aWV3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1777164898);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'Admin Nurita','admin@nurita.com',NULL,'$2y$12$DKlQZ27VwqPTgPH/l1z2v.boT1MKTLkM23cvH/xKj9ggi31ccLSEm',NULL,'2026-04-25 19:07:47','2026-04-25 19:07:47'),
(2,'adminnurita','nurita@gmail.com',NULL,'$2y$12$gEDVG9rtWztiIFskf5wCFOem5Cb6hxzXQzYeEThrq2/Y50Y2r7MJK',NULL,'2026-05-10 06:41:44','2026-05-10 06:41:44');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_steps`
--

DROP TABLE IF EXISTS `work_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_steps` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(5) NOT NULL,
  `title_id` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `description_id` text NOT NULL,
  `description_en` text NOT NULL,
  `order` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_steps`
--

LOCK TABLES `work_steps` WRITE;
/*!40000 ALTER TABLE `work_steps` DISABLE KEYS */;
INSERT INTO `work_steps` VALUES
(1,'01','Analisa','Analysis','Kami memahami kebutuhan bisnis Anda secara mendalam melalui diskusi dan analisa untuk menentukan solusi yang paling tepat.','We deeply understand your business needs through discussion and analysis to determine the most appropriate solution.',1,1,'2026-04-25 19:04:12','2026-04-25 19:04:12'),
(2,'02','Desain','Design','Kami merancang struktur sistem dan tampilan antarmuka (UI/UX) yang intuitif, efisien, dan sesuai dengan kebutuhan pengguna.','We design the system structure and user interface (UI/UX) that is intuitive, efficient, and suited to user needs.',2,1,'2026-04-25 19:04:12','2026-04-25 19:04:12'),
(3,'03','Development','Development','Tim kami mulai mengembangkan sistem dengan standar coding yang baik untuk memastikan performa, keamanan, dan skalabilitas.','Our team starts developing the system with good coding standards to ensure performance, security, and scalability.',3,1,'2026-04-25 19:04:12','2026-04-25 19:04:12'),
(4,'04','Testing & Launch','Testing & Launch','Sistem diuji secara menyeluruh sebelum diluncurkan untuk memastikan semua fitur berjalan sempurna tanpa bug.','The system is thoroughly tested before launch to ensure all features run perfectly without bugs.',4,1,'2026-04-25 19:04:12','2026-04-25 19:04:12');
/*!40000 ALTER TABLE `work_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_nurita'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-05-10 20:55:36
