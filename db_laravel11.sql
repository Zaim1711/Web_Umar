-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Agu 2024 pada 15.38
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laravel11`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_name` varchar(255) NOT NULL,
  `color_realname` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `colors`
--

INSERT INTO `colors` (`id`, `product_id`, `color_name`, `color_realname`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 'Red', 'Rallye Red', 'red_brio.jpg', '2024-08-08 12:49:16', '2024-08-13 11:25:46'),
(2, 2, 'White', 'Taffeta White', 'blue_brio.jpg', '2024-08-08 12:49:16', '2024-08-13 11:26:15'),
(4, 2, 'Black', 'Crystal Black Pearl', '9dohIWevEIdl4hBsv29tIP1BUC2Ys6d5ibp1xi13.png', '2024-08-08 13:30:44', '2024-08-13 11:26:32'),
(6, 2, 'Grey', 'Meteoroid Gray Metallic', 'po7wVk3A5xGfjVO1rLI9ZwNk0SO763saYFaVZARX.png', '2024-08-08 13:46:35', '2024-08-13 11:27:12'),
(7, 2, 'Yellow', 'Electric Lime Metallic', 'lfxtU9QIJVMHyyGgR4PHwPogALc6fNLUQRsC5c7y.png', '2024-08-08 13:46:45', '2024-08-13 11:27:32'),
(8, 2, 'Orange', 'Phoenix Orange Pearl', 'VsRHYBQaVczPxChs1U7HWkaZ6DEGxEf7GZpZy4Yy.png', '2024-08-08 13:46:59', '2024-08-13 11:28:10'),
(9, 2, 'Silver', 'Stella Diamond Pearl', 'Ou1cXFB0BtzY65OxbjSOjJr7auTQJYCFMtF4BBjv.png', '2024-08-08 13:47:18', '2024-08-13 11:27:50'),
(11, 13, 'khaki', 'Sand Khaki Pearl', 'aLQlLIZnF7aw2Qk0b6eyXoduWZ65UYpa2Nb4W8qS.png', '2024-08-13 11:36:57', '2024-08-13 11:51:23'),
(12, 13, 'white', 'Platinum White Pearl', 'l9rAa2wJrnjomkkNJPDaTXuMsFrCSghJrSN9safO.png', '2024-08-13 11:37:30', '2024-08-13 11:37:30'),
(13, 13, 'Silver', 'Lunar Silver Metallic', '528zKa4JPVOzbiSar7yN4U6JrUeggVIj7Wnr9ysN.png', '2024-08-13 11:38:12', '2024-08-13 11:38:12'),
(14, 13, 'Grey', 'Meotoroid Gray Metallic', 'tfF4nPvXguBgJlBfiDXH3tR97vQ6fo6YG2XlEJf8.png', '2024-08-13 11:38:42', '2024-08-13 11:38:42'),
(15, 13, 'Black', 'Crystal Black Pearl', 'wwM70NUH8v4G7w9yyBFLPI2Ul3pnj2Vcw0wF66i1.png', '2024-08-13 11:39:06', '2024-08-13 11:39:06'),
(16, 13, 'Red', 'Ignite Red', 'uCRA8xaSh1t7ylaFZmrtc9KzvGTZk7YRfeqnUMLU.png', '2024-08-13 11:39:21', '2024-08-13 11:39:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `images`
--

INSERT INTO `images` (`id`, `path`, `created_at`, `updated_at`) VALUES
(14, 'BgPnJ041mcBCd4NG0o3XiURKEvya0DXeuEKE1llj.jpg', '2024-07-30 15:28:58', '2024-07-30 15:28:58'),
(15, 'cIIJPEfNJjF91ZD0gJiDgSXBGGzDVAto68bDG0pg.jpg', '2024-07-30 15:30:08', '2024-07-30 15:30:08'),
(16, 'F1TZkDXyJpztYknEfp7P0RHDWFC7fh1D7SCcgSOn.jpg', '2024-07-30 15:30:48', '2024-07-30 15:30:48'),
(17, 'obyB25cIRdSh1ibJIbA9GSz88riiHFbuk6ewZDQ9.jpg', '2024-07-30 17:15:19', '2024-07-30 17:15:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

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
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_27_193848_create_products_table', 1),
(5, '2024_07_27_210323_add_type_and_harga_to_products_table', 2),
(6, '2024_07_27_213132_create_type_prices_table', 3),
(9, '2024_07_30_104801_create_images_table', 4),
(10, '2024_08_05_135853_create_promotions_table', 5),
(11, '2024_08_07_093130_add_video_link_to_products_table', 6),
(12, '2024_08_08_073559_add_type_to_products', 7),
(13, '2024_08_08_194432_create_colors_table', 8),
(17, '2024_08_13_181126_add_color_realname_to_colors_table', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` bigint(20) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `video_link` varchar(255) DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `image`, `title`, `description`, `type`, `price`, `harga`, `created_at`, `updated_at`, `video_link`, `jenis`) VALUES
(2, 'nuE0sDDndubmYYK4P8VuZPaMbZ0hAzyw2pv0zaT7.jpg', 'Honda Brio', 'All New Honda Brio\r\nDeskripsi Umum:\r\nAll New Honda Brio adalah hatchback kompak yang dirancang untuk memberikan kombinasi ideal antara efisiensi, gaya, dan kepraktisan. Dengan desain yang modern dan fitur-fitur canggih, Brio menawarkan kenyamanan berkendara di kota dengan ukuran yang kompak namun tetap memberikan ruang yang cukup di dalam kabin. Cocok untuk Anda yang menginginkan mobil dengan harga terjangkau tetapi tetap stylish dan fungsional.\r\n\r\nDesain Eksterior:\r\nHonda Brio menampilkan desain yang sporty dan dinamis dengan garis-garis tajam dan lekukan yang modern. Lampu depan LED dengan desain yang menawan, grille depan yang agresif, dan velg alloy 15 inci menambah kesan stylish pada tampilan luar. Bagian belakangnya dilengkapi dengan lampu belakang LED yang ramping dan bumper yang terintegrasi dengan desain keseluruhan mobil.\r\n\r\nInterior:\r\nInterior Honda Brio dirancang dengan ergonomis dan fungsional, memberikan kenyamanan dalam setiap perjalanan. Kabin yang luas dilengkapi dengan material berkualitas tinggi dan fitur-fitur modern. Dashboard menampilkan layar sentuh 7 inci yang mendukung Apple CarPlay dan Android Auto, serta sistem audio dengan Bluetooth dan USB. Kursi yang nyaman dan ruang kaki yang cukup memberikan pengalaman berkendara yang menyenangkan.\r\n\r\nFitur Utama:\r\n\r\nDesain Interior Modern: Material berkualitas, dashboard yang ergonomis, dan kursi yang nyaman.\r\nSistem Infotainment: Layar sentuh 7 inci dengan Apple CarPlay, Android Auto, dan Bluetooth.\r\nKenyamanan Berkendara: Kursi pengemudi yang dapat diatur, AC otomatis, dan kontrol audio di kemudi.\r\nFitur Keselamatan: Dual airbags, sistem pengereman anti-lock (ABS), dan kontrol stabilitas kendaraan.\r\nSpesifikasi Utama:\r\n\r\nMesin: 1.2L i-VTEC DOHC 4-silinder\r\nDaya Maksimum: 90 hp @ 6,000 rpm\r\nTorsi Maksimum: 110 Nm @ 4,800 rpm\r\nTransmisi: CVT (Continuously Variable Transmission)\r\nDimensi:\r\nPanjang: 3,815 mm\r\nLebar: 1,680 mm\r\nTinggi: 1,485 mm\r\nJarak Poros Roda: 2,405 mm\r\nKapasitas Bagasi: 258 liter\r\nSuspensi Depan: MacPherson strut\r\nSuspensi Belakang: Torsion beam\r\nSistem Pengereman:\r\nDepan: Disc brakes ventilated\r\nBelakang: Drum brakes\r\nUkuran Ban: 175/65 R14\r\nFitur Keselamatan: Dual front airbags, ABS with EBD, Vehicle Stability Assist (VSA), Hill Start Assist (HSA), Rear parking sensors\r\nKelebihan:\r\n\r\nDesain Kompak dan Stylish: Tampilan yang modern dan sporty cocok untuk penggunaan sehari-hari.\r\nTeknologi Terbaru: Sistem infotainment dengan konektivitas smartphone dan fitur-fitur modern.\r\nEfisiensi Bahan Bakar: Mesin yang efisien memberikan performa optimal dengan konsumsi bahan bakar yang rendah.\r\nKenyamanan: Interior yang nyaman dengan ruang kabin yang cukup dan fitur-fitur yang mendukung.\r\nKesimpulan:\r\nAll New Honda Brio adalah pilihan ideal bagi mereka yang mencari hatchback kompak dengan desain yang stylish dan fitur-fitur modern. Dengan ukuran yang ideal untuk penggunaan perkotaan dan efisiensi bahan bakar yang baik, Brio menawarkan nilai tambah yang luar biasa dalam kategori mobil kecil.', 'Satya S M/T,\r\nSatya E M/T,\r\nSatya E CVT,\r\nRS M/T,\r\nRS CVT', 179500000, 'Rp.179.500.000,\r\nRp.192.300.000,\r\nRp.208.800.000,\r\nRp.253.600.000,\r\nRp.263.600.000', '2024-07-27 13:45:59', '2024-08-07 23:40:14', 'https://www.youtube.com/embed/Po9MIxR5nHM?si=38HrnqtUJgZzdIO7', 'Hatchback'),
(13, 'twc4PleEgCaqVNYCY7T8h1tMt0FDMbrpdLFbccgQ.jpg', 'Honda HRV', 'All New Honda HR-V\r\nDeskripsi Umum:\r\nAll New Honda HR-V adalah SUV kompak yang dirancang untuk menghadirkan pengalaman berkendara yang dinamis, nyaman, dan stylish. Dengan desain yang modern dan teknologi canggih, HR-V menawarkan keseimbangan ideal antara ruang, efisiensi, dan performa. Mobil ini cocok untuk Anda yang menginginkan kendaraan dengan kemampuan menempuh berbagai medan serta fitur-fitur premium.\r\n\r\nDesain Eksterior:\r\nHR-V menampilkan desain eksterior yang sleek dan berkelas dengan garis-garis yang tajam dan bentuk yang aerodinamis. Bagian depan dilengkapi dengan grille berdesain baru yang lebih agresif, lampu depan LED dengan desain yang elegan, dan lampu kabut yang stylish. Velg alloy 17 inci dan desain atap yang terinspirasi oleh coupe memberikan kesan sporty pada SUV ini.\r\n\r\nInterior:\r\nInterior HR-V menggabungkan kenyamanan dan fungsionalitas dengan desain yang elegan. Kabin yang luas menawarkan material berkualitas tinggi dengan desain dashboard yang modern. Layar sentuh 7 inci dengan sistem infotainment terbaru, serta konektivitas Apple CarPlay dan Android Auto, memastikan perjalanan Anda tetap terhubung dan menyenangkan. Fitur-fitur seperti kursi yang dapat diatur, AC otomatis, dan sistem audio premium meningkatkan pengalaman berkendara.\r\n\r\nFitur Utama:\r\n\r\nDesain Interior Premium: Material berkualitas, desain dashboard modern, dan kursi yang nyaman.\r\nSistem Infotainment: Layar sentuh 7 inci dengan Apple CarPlay, Android Auto, dan Bluetooth.\r\nKenyamanan Berkendara: Kursi pengemudi yang dapat diatur, AC otomatis, dan kontrol audio di kemudi.\r\nFitur Keselamatan: Honda Sensing dengan sistem pengereman mitigasi (CMBS), adaptif cruise control, dan lane-keeping assist.\r\nSpesifikasi Utama:\r\n\r\nMesin: 1.5L i-VTEC DOHC 4-silinder\r\nDaya Maksimum: 120 hp @ 6,600 rpm\r\nTorsi Maksimum: 145 Nm @ 4,300 rpm\r\nTransmisi: CVT (Continuously Variable Transmission)\r\nDimensi:\r\nPanjang: 4,330 mm\r\nLebar: 1,790 mm\r\nTinggi: 1,600 mm\r\nJarak Poros Roda: 2,610 mm\r\nKapasitas Bagasi: 437 liter (dengan kursi belakang dilipat)\r\nSuspensi Depan: MacPherson strut\r\nSuspensi Belakang: Torsion beam\r\nSistem Pengereman:\r\nDepan: Disc brakes ventilated\r\nBelakang: Drum brakes\r\nUkuran Ban: 215/55 R17\r\nFitur Keselamatan: Honda Sensing, dual front airbags, ABS with EBD, Vehicle Stability Assist (VSA), Hill Start Assist (HSA)\r\nKelebihan:\r\n\r\nDesain Modern dan Sporty: Tampilan eksterior yang elegan dan sporty dengan interior yang premium.\r\nTeknologi Canggih: Sistem infotainment terbaru dengan fitur konektivitas dan keselamatan yang lengkap.\r\nRuang Kabin Luas: Kapasitas bagasi yang besar dan ruang interior yang nyaman.\r\nFitur Keselamatan Lengkap: Honda Sensing memberikan berbagai fitur keselamatan untuk perlindungan maksimal.\r\nKesimpulan:\r\nAll New Honda HR-V adalah SUV kompak yang menawarkan desain modern, teknologi canggih, dan kenyamanan berkendara. Dengan fitur-fitur yang lengkap dan performa yang handal, HR-V adalah pilihan ideal bagi Anda yang mencari kendaraan serba bisa untuk berbagai kebutuhan.', 'S CVT,\r\nE CVT**,\r\nSE CVT**,\r\nRS CVT**', 395500000, 'Rp 389.500.000,\r\nRp 409.700.000,\r\nRp 430.000.000,\r\nRp 545.800.000', '2024-07-28 14:09:09', '2024-08-08 12:10:55', 'https://www.youtube.com/embed/7YWZfOnIy6o?si=ZROqwvaxIjfXCg2q', 'SUV'),
(14, 'btqUokRGnWx2ACyCF7hL4squPVLC0XHWiqAsy42P.jpg', 'Honda CRV', 'All New Honda CR-V\r\nMenyempurnakan Definisi SUV Premium\r\nAll New Honda CR-V menghadirkan evolusi terbaru dalam desain dan teknologi, memberikan pengalaman berkendara yang lebih premium dan memikat. SUV ini dirancang untuk memenuhi kebutuhan keluarga modern dan penggemar otomotif yang mengutamakan performa, kenyamanan, dan gaya.\r\n\r\nDesain Eksterior yang Memukau\r\nDengan tampilan yang lebih berani dan modern, All New Honda CR-V memancarkan kesan elegan dan sporty. Garis bodi yang tegas, grille depan yang lebar, dan lampu LED yang ramping menambah kesan premium. Dimensi yang lebih besar memberikan ruang yang lebih luas dan stabilitas berkendara yang superior.\r\n\r\nInterior yang Mewah dan Nyaman\r\nDi dalam kabin, All New Honda CR-V menawarkan suasana yang nyaman dan mewah. Dilengkapi dengan material berkualitas tinggi, jok kulit yang empuk, dan ruang kaki yang luas, SUV ini memastikan setiap perjalanan terasa menyenangkan. Fitur-fitur seperti sistem audio premium, layar sentuh berukuran besar, dan kontrol iklim otomatis membuat setiap perjalanan semakin nyaman.\r\n\r\nTeknologi Terkini\r\nAll New Honda CR-V dilengkapi dengan teknologi terbaru untuk meningkatkan keselamatan dan kenyamanan. Sistem infotainment canggih, termasuk Apple CarPlay dan Android Auto, memungkinkan Anda tetap terhubung dengan dunia luar. Fitur-fitur keselamatan seperti Honda Sensing, yang mencakup sistem peringatan tabrakan, cruise control adaptif, dan lane-keeping assist, memberikan rasa aman dan percaya diri saat berkendara.\r\n\r\nPerforma dan Efisiensi\r\nDitenagai oleh mesin turbocharged yang efisien, All New Honda CR-V menawarkan performa yang responsif tanpa mengorbankan efisiensi bahan bakar. Sistem penggerak empat roda (AWD) tersedia untuk meningkatkan traksi dan stabilitas di berbagai kondisi jalan.\r\n\r\nKepraktisan dan Fleksibilitas\r\nDengan ruang bagasi yang luas dan konfigurasi kursi yang dapat dilipat, All New Honda CR-V menawarkan fleksibilitas yang diperlukan untuk memenuhi kebutuhan sehari-hari. Apakah Anda membawa barang bawaan untuk liburan keluarga atau mengangkut barang belanjaan, CR-V siap untuk setiap tantangan.\r\n\r\nKesimpulan\r\nAll New Honda CR-V adalah pilihan ideal untuk mereka yang mencari SUV premium yang menggabungkan desain menawan, teknologi canggih, dan performa yang memuaskan. Dengan fitur-fitur unggulan dan kualitas yang tak tertandingi, CR-V memberikan nilai lebih untuk setiap perjalanan.', '2.0L RS e:HEV(Hybrid),1.5L Turbo(Bensin)', 752400000, 'Rp.814.400.000,Rp.752.400.000', '2024-07-28 15:34:13', '2024-08-08 12:11:04', 'https://www.youtube.com/embed/W_31W332uGE?si=zBY-7S6W2EjJdOCO', 'SUV'),
(21, 'pSuWhjfmU5pICzKk1dllpOdjiDeMNWuLCNef2u6F.jpg', 'Honda City RS', 'Deskripsi Umum:\r\nHonda City Hatchback RS adalah versi sporty dari City Hatchback yang menawarkan kombinasi performa yang bertenaga dan desain yang dinamis. Dikenal dengan karakteristik sporty dan teknologi mutakhir, City Hatchback RS dirancang untuk memberikan pengalaman berkendara yang menyenangkan dan penuh gaya, cocok bagi mereka yang menginginkan kendaraan yang tidak hanya praktis tetapi juga menonjol di jalanan.\r\n\r\nSpesifikasi Utama:\r\n\r\nMesin: 1.5L DOHC i-VTEC 4-silinder\r\nDaya: 121 HP @ 6,600 RPM\r\nTorsi: 145 Nm @ 4,300 RPM\r\nTransmisi: Continuously Variable Transmission (CVT)\r\nPenggerak: Penggerak roda depan (FWD)\r\nKonsumsi BBM: Sekitar 15-17 km/l (tergantung kondisi berkendara dan varian)\r\nFitur Unggulan:\r\n\r\nDesain Eksterior: Penampilan yang agresif dengan grille depan berdesain khusus, lampu depan LED yang tajam, dan bumper sporty dengan aksen hitam. Velg alloy berukuran besar dengan desain yang mencolok menambah kesan sporty pada kendaraan ini.\r\nInterior: Interior yang dirancang untuk memberikan kenyamanan dan kesan premium, termasuk kursi sport dengan penyangga samping yang mendukung dan dashboard modern. Fitur Magic Seat juga tersedia, memungkinkan penataan kursi belakang yang fleksibel untuk memaksimalkan ruang kargo.\r\nTeknologi: Ditenagai oleh sistem infotainment layar sentuh 8 inci dengan Apple CarPlay dan Android Auto, serta sistem audio premium yang meningkatkan pengalaman berkendara. Dilengkapi dengan kamera mundur, sensor parkir belakang, dan sistem navigasi sebagai opsi tambahan.\r\nKeamanan: Fitur Honda Sensing yang mencakup sistem pengereman mitigasi tabrakan, peringatan tabrakan depan, sistem kontrol jelajah adaptif, dan peringatan keberangkatan jalur. Sistem keamanan canggih ini dirancang untuk melindungi Anda dan penumpang di setiap perjalanan.\r\nPengalaman Berkendara:\r\nHonda City Hatchback RS menawarkan performa yang responsif dan halus berkat mesin i-VTEC yang bertenaga dan transmisi CVT yang efisien. Suspensi yang ditingkatkan memberikan kenyamanan berkendara yang baik di berbagai kondisi jalan, sementara sistem penggerak roda depan memberikan stabilitas dan traksi yang optimal.\r\n\r\nKesimpulan:\r\nHonda City Hatchback RS adalah pilihan ideal bagi mereka yang mencari hatchback dengan desain sporty dan performa yang bertenaga. Dengan fitur-fitur canggih dan teknologi mutakhir, City Hatchback RS tidak hanya menawarkan kenyamanan dan kemudahan berkendara tetapi juga tampilan yang menonjol dan karakter yang sporty.', 'RS M/T,\r\nRS CVT,\r\nRS CVT with Honda Sensing', 356100000, 'Rp 356.100.000,\r\nRp 366.200.000,\r\nRp 386.200.000', '2024-07-30 15:50:53', '2024-08-16 10:38:18', NULL, 'Hatchback'),
(24, 'dtTUBUVEXbigOAkjKkkU5zUCLEFJbf3WrPEZ5RWc.jpg', 'Honda BRV N7X', 'Honda BR-V N7X merupakan salah satu model terbaru dalam jajaran kendaraan Honda yang menggabungkan fitur-fitur unggulan dari SUV dan MPV. Nama N7X sendiri merupakan singkatan dari \"New 7-Seater eXcitement\", menandakan bahwa mobil ini dirancang untuk memberikan pengalaman berkendara yang menyenangkan bagi seluruh keluarga.\r\n\r\nDesain Eksterior\r\nHonda BR-V N7X hadir dengan desain eksterior yang modern dan sporty. Garis-garis bodi yang tegas dan dinamis menciptakan tampilan yang tangguh namun elegan. Bagian depan mobil dilengkapi dengan gril besar dan lampu LED yang tajam, memberikan kesan agresif dan stylish. Velg alloy berukuran besar menambah kesan kokoh pada mobil ini.\r\n\r\nInterior dan Kenyamanan\r\nMasuk ke dalam kabin, Honda BR-V N7X menawarkan ruang yang luas dan nyaman untuk tujuh penumpang. Interiornya dilengkapi dengan bahan-bahan berkualitas tinggi dan desain yang ergonomis. Kursi-kursi dapat diatur dengan fleksibel untuk memberikan ruang lebih bagi penumpang atau bagasi. Fitur-fitur kenyamanan seperti sistem infotainment layar sentuh, konektivitas smartphone, dan AC dengan kontrol iklim otomatis memastikan perjalanan yang nyaman bagi seluruh penumpang.\r\n\r\nPerforma dan Keamanan\r\nHonda BR-V N7X dibekali dengan mesin yang bertenaga namun efisien, cocok untuk perjalanan dalam kota maupun perjalanan jauh. Sistem suspensi yang dirancang dengan baik memberikan kenyamanan berkendara di berbagai kondisi jalan. Dari segi keamanan, Honda BR-V N7X dilengkapi dengan berbagai fitur canggih seperti sistem pengereman ABS, kontrol stabilitas, enam airbag, dan kamera belakang untuk membantu parkir.\r\n\r\nTeknologi dan Fitur Tambahan\r\nSelain fitur-fitur dasar, Honda BR-V N7X juga dilengkapi dengan berbagai teknologi canggih seperti keyless entry, push start button, dan cruise control. Sistem hiburan di dalam mobil mendukung berbagai format media dan konektivitas Bluetooth, memastikan penumpang dapat menikmati hiburan selama perjalanan.\r\n\r\nKesimpulan\r\nHonda BR-V N7X adalah pilihan ideal bagi keluarga yang mencari kendaraan yang mampu mengakomodasi kebutuhan sehari-hari dengan gaya dan kenyamanan. Dengan kombinasi desain yang menarik, performa yang andal, dan fitur-fitur canggih, Honda BR-V N7X siap memberikan pengalaman berkendara yang tak terlupakan.', 'S M/T,\r\nE M/T,\r\nCVT,\r\nPrestige CVT,\r\nPrestige CVT with Honda Sensing', 309100000, 'Rp 309.100.000,\r\nRp 323.300.000,\r\nRp 335.600.000,\r\nRp 359.600.000,\r\nRp 379.600.000', '2024-08-07 02:49:34', '2024-08-08 12:10:46', 'https://www.youtube.com/embed/-gy-ANycMnY?si=ox0WabNK-xFSxeX_', 'SUV'),
(25, 'J0zqU4bCgm7dwdgZlxOMuATLFoX9NmX6vBGgT5PS.jpg', 'Civic TYPE R', 'Deskripsi Umum:\r\nHonda Civic Type R adalah mobil sport yang menggabungkan performa yang mengesankan dengan desain yang agresif dan fitur canggih. Dirancang untuk pengemudi yang mengutamakan kecepatan dan keterampilan berkendara, Civic Type R menawarkan pengalaman berkendara yang dinamis dan mengesankan. Dengan mesin turbo charged yang kuat, sistem suspensi yang ditingkatkan, dan aerodinamika yang superior, Civic Type R tidak hanya tampil mencolok tetapi juga memberikan performa yang sangat responsif di jalan raya maupun lintasan balap.\r\n\r\nSpesifikasi Utama:\r\n\r\nMesin: 2.0L Turbocharged 4-silinder\r\nDaya: 306 HP @ 6,500 RPM\r\nTorsi: 400 Nm @ 2,500-4,500 RPM\r\nTransmisi: 6-percepatan manual\r\n0-100 km/jam: Sekitar 5.7 detik\r\nKecepatan Maksimum: 272 km/jam\r\nSistem Penggerak: Penggerak roda depan\r\nSuspensi: MacPherson strut depan, multi-link belakang\r\nRem: Rem cakram ventilasi depan dan belakang\r\nUkuran Ban: 245/30 R20\r\nFitur Unggulan:\r\n\r\nDesain Eksterior: Grille depan yang besar dengan logo Type R, kap mesin dengan ventilasi udara, dan diffuser belakang yang sporty.\r\nInterior: Kursi bucket Recaro yang mendukung, setir yang dilapisi kulit dengan logo Type R, dan panel instrumen dengan desain sporty.\r\nTeknologi: Sistem infotainment layar sentuh 7 inci dengan konektivitas Apple CarPlay dan Android Auto, sistem audio premium, dan kamera mundur.\r\nKeamanan: Sistem pengereman otomatis, kontrol jelajah adaptif, dan sistem peringatan tabrakan depan.\r\nPengalaman Berkendara:\r\nCivic Type R menawarkan kombinasi performa dan kenyamanan yang luar biasa. Dengan handling yang tajam dan responsif, serta kemampuan akselerasi yang mengesankan, Civic Type R sangat cocok untuk penggemar otomotif yang mencari sensasi berkendara yang autentik. Suspensi yang ditingkatkan memastikan kestabilan di kecepatan tinggi, sementara desain aerodinamis membantu menjaga keseimbangan mobil pada berbagai kondisi berkendara.\r\n\r\nKesimpulan:\r\nHonda Civic Type R adalah pilihan utama bagi mereka yang mencari mobil sport dengan performa tinggi dan desain yang menonjol. Dengan teknologi mutakhir dan fitur-fitur premium, Civic Type R memberikan pengalaman berkendara yang tidak hanya memuaskan di jalan raya, tetapi juga di lintasan balap.', '2.0 Turbo M/T', 1430800000, 'Rp 1.430.800.000', '2024-08-07 13:44:51', '2024-08-07 21:08:54', 'https://www.youtube.com/embed/8pCWAKB-ETE?si=PRUkDrjcza63ayOY', 'Sedan'),
(26, 'euJob1Y9v8IwPwcgl9Vd29bHux9ONn9FndZPDzx8.jpg', 'Honda Mobilio', 'All New Honda Mobilio\r\nDeskripsi Umum:\r\nAll New Honda Mobilio adalah generasi terbaru dari MPV yang dirancang untuk memberikan kenyamanan dan fleksibilitas maksimal bagi keluarga modern. Dengan desain yang lebih segar dan dinamis, Mobilio menghadirkan kombinasi sempurna antara gaya, fungsionalitas, dan efisiensi.\r\n\r\nDesain Eksterior:\r\nMobilio terbaru menampilkan desain eksterior yang modern dan elegan dengan garis-garis tegas dan aerodinamis. Gril depan yang besar dan lampu depan LED memberikan tampilan yang agresif dan sporty, sementara desain bumper yang ramping menambah kesan premium.\r\n\r\nInterior:\r\nDi dalam kabin, All New Honda Mobilio menawarkan ruang yang luas dan nyaman dengan konfigurasi kursi yang fleksibel. Interiornya dilengkapi dengan material berkualitas tinggi, dashboard modern dengan layar sentuh, serta sistem infotainment terbaru yang mendukung Apple CarPlay dan Android Auto.\r\n\r\nFitur Utama:\r\n\r\nDesain Interior Premium: Material berkualitas tinggi dan kursi yang nyaman untuk perjalanan panjang.\r\nSistem Infotainment Canggih: Layar sentuh 7 inci, Apple CarPlay, Android Auto, dan konektivitas Bluetooth.\r\nKenyamanan dan Kepraktisan: Sistem AC otomatis, power sliding door, dan kapasitas bagasi yang luas.\r\nFitur Keamanan: Sistem pengereman anti-lock (ABS), kontrol stabilitas kendaraan, dan airbag ganda untuk perlindungan ekstra.\r\nSpesifikasi Utama:\r\n\r\nMesin: 1.5L i-VTEC 4-silinder\r\nDaya Maksimum: 118 hp @ 6,600 rpm\r\nTorsi Maksimum: 145 Nm @ 4,600 rpm\r\nTransmisi: CVT (Continuously Variable Transmission)\r\nDimensi:\r\nPanjang: 4,385 mm\r\nLebar: 1,765 mm\r\nTinggi: 1,690 mm\r\nJarak Poros Roda: 2,650 mm\r\nKapasitas Bagasi: 521 liter (dengan kursi belakang dilipat)\r\nSuspensi Depan: MacPherson strut\r\nSuspensi Belakang: Torsion beam\r\nSistem Pengereman:\r\nDepan: Disc brakes\r\nBelakang: Drum brakes\r\nUkuran Ban: 185/65 R15\r\nFitur Keselamatan: Dual front airbags, ABS with EBD, Vehicle Stability Assist (VSA), Hill Start Assist (HSA)\r\nKelebihan:\r\n\r\nRuang Kabin yang Luas: Ideal untuk keluarga besar dengan ruang kepala dan kaki yang melimpah.\r\nEfisiensi Bahan Bakar: Teknologi mesin terbaru yang mengoptimalkan konsumsi bahan bakar.\r\nFitur Modern: Teknologi mutakhir yang meningkatkan kenyamanan dan keselamatan.\r\nKesimpulan:\r\nAll New Honda Mobilio adalah pilihan tepat untuk Anda yang mencari MPV dengan desain modern, fitur lengkap, dan performa handal. Baik untuk penggunaan sehari-hari atau perjalanan keluarga, Mobilio menjanjikan pengalaman berkendara yang menyenangkan dan nyaman.', 'S M/T', 243400000, 'Rp 243.400.000', '2024-08-07 23:14:25', '2024-08-16 10:35:42', 'https://www.youtube.com/embed/URpD7cadqfo?si=UV76-togipx_VPuO', 'MPV'),
(27, '3oo6Iuzdk5R8I1DoQvaESatTg4KoGtOYz02F9B75.jpg', 'New Civic RS', 'All New Honda Civic RS\r\nDeskripsi Umum:\r\nAll New Honda Civic RS adalah varian sporty dari sedan legendaris Honda Civic, dirancang untuk memberikan performa yang memukau dengan gaya yang agresif. Model ini menggabungkan teknologi terbaru dengan desain yang elegan dan aerodinamis, menjadikannya pilihan ideal bagi penggemar mobil yang mengutamakan performa dan kenyamanan.\r\n\r\nDesain Eksterior:\r\nCivic RS terbaru menampilkan desain eksterior yang lebih tajam dan dinamis, dengan garis-garis bodi yang tegas dan gril depan yang besar. Lampu depan LED dengan desain sleek, serta bumper sporty dengan aksen hitam menambah kesan agresif. Velg alloy 18 inci yang stylish melengkapi tampilan sporty dari Civic RS.\r\n\r\nInterior:\r\nInterior Civic RS mengedepankan kenyamanan dan teknologi mutakhir. Dikenal dengan kualitas material premium dan desain yang ergonomis, kabin Civic RS menawarkan kursi berbahan kulit dengan jahitan merah yang menambah kesan sporty. Dashboard dilengkapi dengan layar sentuh 7 inci, sistem audio premium, serta berbagai fitur canggih yang meningkatkan pengalaman berkendara.\r\n\r\nFitur Utama:\r\n\r\nDesain Interior Sporty: Kursi kulit dengan aksen jahitan merah, dan pedal sport.\r\nSistem Infotainment Modern: Layar sentuh 7 inci dengan Apple CarPlay, Android Auto, dan navigasi GPS.\r\nKenyamanan Berkendara: Sistem AC otomatis, jok yang dapat diatur secara elektrik, dan sistem keyless entry.\r\nFitur Keamanan: Honda Sensing, sistem pengereman anti-lock (ABS), kontrol stabilitas kendaraan, serta airbag ganda.\r\nSpesifikasi Utama:\r\n\r\nMesin: 1.5L Turbocharged DOHC 4-silinder\r\nDaya Maksimum: 178 hp @ 6,000 rpm\r\nTorsi Maksimum: 240 Nm @ 2,000-4,500 rpm\r\nTransmisi: CVT (Continuously Variable Transmission) dengan mode sport\r\nDimensi:\r\nPanjang: 4,677 mm\r\nLebar: 1,801 mm\r\nTinggi: 1,416 mm\r\nJarak Poros Roda: 2,700 mm\r\nKapasitas Bagasi: 430 liter\r\nSuspensi Depan: MacPherson strut\r\nSuspensi Belakang: Multi-link\r\nSistem Pengereman:\r\nDepan: Disc brakes ventilated\r\nBelakang: Disc brakes ventilated\r\nUkuran Ban: 235/40 R18\r\nFitur Keselamatan: Honda Sensing (Adaptive Cruise Control, Lane Keeping Assist, Collision Mitigation Braking System), Dual front airbags, ABS with EBD, Vehicle Stability Assist (VSA), Hill Start Assist (HSA)\r\nKelebihan:\r\n\r\nPerforma Sporty: Mesin turbocharged yang menawarkan akselerasi responsif dan efisiensi bahan bakar yang baik.\r\nFitur Teknologi Canggih: Sistem infotainment terbaru dan fitur keselamatan Honda Sensing.\r\nDesain Premium: Interior dengan material berkualitas tinggi dan desain yang stylish.\r\nKesimpulan:\r\nAll New Honda Civic RS adalah pilihan utama bagi Anda yang mencari sedan dengan performa sport, desain elegan, dan fitur teknologi terkini. Dengan kombinasi dari kualitas berkendara yang superior dan tampilan yang menawan, Civic RS menawarkan pengalaman berkendara yang tidak tertandingi.', 'RS CVT', 621500000, 'Rp 621.500.000', '2024-08-07 23:20:08', '2024-08-07 23:20:08', 'https://www.youtube.com/embed/Yx-7RPJd9J8?si=XNOPZIvdaTABsA-z', 'Sedan'),
(28, 'upAqByD8ThyoIOKzhVe5jmPRJaVUtskNfmFU97uD.jpg', 'Honda New City', 'All New Honda City\r\nDeskripsi Umum:\r\nAll New Honda City merupakan sedan kompak yang menawarkan desain modern, teknologi canggih, dan kenyamanan berkendara yang superior. Mengusung platform baru dan berbagai fitur premium, City terbaru ini dirancang untuk memberikan pengalaman berkendara yang menyenangkan serta efisiensi bahan bakar yang optimal. Ideal untuk penggunaan sehari-hari maupun perjalanan jarak jauh, All New Honda City menggabungkan gaya, performa, dan fungsi dalam satu paket.\r\n\r\nDesain Eksterior:\r\nAll New Honda City menonjol dengan desain eksterior yang elegan dan sporty. Grille depan yang besar dan lampu depan LED yang ramping memberikan kesan modern dan agresif. Dilengkapi dengan velg alloy 16 inci, lampu belakang LED dengan desain menarik, serta aksen krom pada beberapa bagian, City terbaru ini menawarkan tampilan yang memikat dan penuh gaya.\r\n\r\nInterior:\r\nInterior Honda City mengutamakan kenyamanan dan teknologi. Dengan kursi yang ergonomis, bahan berkualitas tinggi, dan dashboard yang modern, City memberikan pengalaman berkendara yang nyaman dan menyenangkan. Fitur-fitur canggih seperti layar sentuh 8 inci dengan Apple CarPlay dan Android Auto, serta sistem audio premium, meningkatkan kualitas perjalanan Anda.\r\n\r\nFitur Utama:\r\n\r\nDesain Interior Modern: Dashboard yang stylish dengan layar sentuh 8 inci, sistem audio premium, dan AC otomatis.\r\nSistem Infotainment: Layar sentuh 8 inci dengan Apple CarPlay, Android Auto, dan sistem navigasi GPS.\r\nKenyamanan Berkendara: Kursi yang dapat diatur, sistem keyless entry, dan AC otomatis.\r\nFitur Keselamatan: Honda Sensing, sistem pengereman anti-lock (ABS), kontrol stabilitas kendaraan, serta airbag ganda.\r\nSpesifikasi Utama:\r\n\r\nMesin: 1.5L i-VTEC DOHC 4-silinder\r\nDaya Maksimum: 121 hp @ 6,600 rpm\r\nTorsi Maksimum: 145 Nm @ 4,300 rpm\r\nTransmisi: CVT (Continuously Variable Transmission)\r\nDimensi:\r\nPanjang: 4,553 mm\r\nLebar: 1,748 mm\r\nTinggi: 1,467 mm\r\nJarak Poros Roda: 2,600 mm\r\nKapasitas Bagasi: 519 liter\r\nSuspensi Depan: McPherson strut\r\nSuspensi Belakang: Multi-link\r\nSistem Pengereman:\r\nDepan: Disc brakes ventilated\r\nBelakang: Drum brakes\r\nUkuran Ban: 185/55 R16\r\nFitur Keselamatan: Honda Sensing (Adaptive Cruise Control, Lane Keeping Assist, Collision Mitigation Braking System), Dual front airbags, ABS with EBD, Vehicle Stability Assist (VSA), Hill Start Assist (HSA)\r\nKelebihan:\r\n\r\nDesain Stylish: Eksterior dan interior yang modern dengan fitur-fitur premium.\r\nTeknologi Canggih: Sistem infotainment terbaru dengan konektivitas smartphone dan sistem audio berkualitas.\r\nFitur Keselamatan Lengkap: Teknologi Honda Sensing yang meningkatkan keselamatan dan kenyamanan berkendara.\r\nKesimpulan:\r\nAll New Honda City menawarkan kombinasi antara desain yang modern, teknologi canggih, dan performa yang handal. Dengan berbagai fitur premium dan efisiensi bahan bakar yang baik, City terbaru ini adalah pilihan yang tepat untuk Anda yang mencari sedan kompak dengan kualitas dan gaya yang menonjol.', 'E CVT  with Honda Sensins', 405600000, 'Rp 405.600.000', '2024-08-07 23:28:28', '2024-08-07 23:45:09', 'https://www.youtube.com/embed/6Ax8DI7MbmQ?si=t1xwVOYIUzP2oMsk', 'Hatchback'),
(29, 'tPthAoFlqo6GAemYKncls3GuEsUtfVM7dT7Ffviv.jpg', 'Honda New WRV', 'All New Honda WR-V\r\nDeskripsi Umum:\r\nAll New Honda WR-V adalah crossover compact yang menggabungkan gaya SUV dengan kenyamanan dan kepraktisan hatchback. Dirancang untuk memberikan performa yang memadai di berbagai kondisi jalan, WR-V menawarkan kabin yang luas, fitur-fitur modern, dan kemampuan berkendara yang menyenangkan. Cocok untuk Anda yang mencari kendaraan dengan tampilan sporty dan fungsionalitas yang optimal.\r\n\r\nDesain Eksterior:\r\nHonda WR-V menampilkan desain eksterior yang dinamis dan modern. Dengan grille depan berukuran besar, lampu depan LED yang tajam, dan garis bodi yang tegas, WR-V memberikan kesan yang kuat dan berani. Dilengkapi dengan velg alloy 17 inci dan aksen krom pada beberapa bagian, crossover ini memiliki tampilan yang premium dan sporty.\r\n\r\nInterior:\r\nInterior Honda WR-V menawarkan ruang kabin yang luas dan nyaman dengan material berkualitas tinggi. Dashboard yang ergonomis dilengkapi dengan layar sentuh 8 inci, sistem infotainment canggih, dan AC otomatis. Dengan konfigurasi kursi yang fleksibel, WR-V memberikan kenyamanan dan kemudahan saat berkendara maupun saat membawa barang.\r\n\r\nFitur Utama:\r\n\r\nDesain Interior Premium: Dashboard modern dengan layar sentuh 8 inci, sistem audio premium, dan AC otomatis.\r\nSistem Infotainment: Layar sentuh 8 inci dengan Apple CarPlay, Android Auto, dan sistem navigasi GPS.\r\nKenyamanan Berkendara: Kursi yang ergonomis, sistem keyless entry, dan AC otomatis.\r\nFitur Keselamatan: Honda Sensing, sistem pengereman anti-lock (ABS), kontrol stabilitas kendaraan, serta airbag ganda.\r\nSpesifikasi Utama:\r\n\r\nMesin: 1.5L i-VTEC DOHC 4-silinder\r\nDaya Maksimum: 121 hp @ 6,600 rpm\r\nTorsi Maksimum: 145 Nm @ 4,300 rpm\r\nTransmisi: CVT (Continuously Variable Transmission)\r\nDimensi:\r\nPanjang: 4,070 mm\r\nLebar: 1,780 mm\r\nTinggi: 1,600 mm\r\nJarak Poros Roda: 2,570 mm\r\nKapasitas Bagasi: 363 liter\r\nSuspensi Depan: McPherson strut\r\nSuspensi Belakang: Multi-link\r\nSistem Pengereman:\r\nDepan: Disc brakes ventilated\r\nBelakang: Drum brakes\r\nUkuran Ban: 205/60 R17\r\nFitur Keselamatan: Honda Sensing (Adaptive Cruise Control, Lane Keeping Assist, Collision Mitigation Braking System), Dual front airbags, ABS with EBD, Vehicle Stability Assist (VSA), Hill Start Assist (HSA)\r\nKelebihan:\r\n\r\nDesain Sporty dan Modern: Eksterior yang menarik dengan tampilan SUV dan fitur premium.\r\nTeknologi Canggih: Sistem infotainment terbaru dengan konektivitas smartphone dan fitur-fitur canggih.\r\nRuang Kabin Luas: Interior yang nyaman dengan fleksibilitas tempat duduk dan ruang penyimpanan.\r\nKesimpulan:\r\nAll New Honda WR-V menawarkan kombinasi antara desain yang sporty, fitur-fitur modern, dan kenyamanan berkendara yang baik. Dengan kemampuan yang handal dan fitur-fitur canggih, WR-V adalah pilihan ideal bagi Anda yang mencari crossover compact dengan gaya dan fungsionalitas yang memadai.', 'E M/T,\r\nE CVT,\r\nRS CVT**,\r\nRS CVT** with Honda Sensing', 286200000, 'Rp 286.200.000,\r\nRp 296.200.000,\r\nRp 315.100.000,\r\nRp 335.200.000', '2024-08-07 23:34:24', '2024-08-08 12:10:36', 'https://www.youtube.com/embed/CHlNi77JFPI', 'SUV'),
(30, 'aL6baCCgcKdGwZ0vGsM8oNQtOYt3455vPdFF2XNl.jpg', 'Honda Accord', 'All New Honda Accord\r\nDeskripsi Umum:\r\nAll New Honda Accord adalah sedan mid-size yang menawarkan kombinasi sempurna antara kenyamanan, performa, dan teknologi canggih. Dikenal dengan desainnya yang elegan dan fitur-fitur premium, Accord menawarkan pengalaman berkendara yang mewah dengan ruang kabin yang luas dan teknologi terbaru. Ideal untuk Anda yang mencari sedan yang mengutamakan kualitas, kenyamanan, dan performa.\r\n\r\nDesain Eksterior:\r\nHonda Accord menampilkan desain eksterior yang modern dan elegan dengan garis bodi yang halus dan profil aerodinamis. Grille depan yang besar dengan aksen krom, lampu depan LED dengan desain tajam, dan velg alloy 18 inci memberikan tampilan yang premium dan berkelas. Bagian belakangnya didesain dengan lampu belakang LED yang ramping dan bumper belakang yang sporty.\r\n\r\nInterior:\r\nInterior Honda Accord dirancang untuk memberikan kenyamanan dan kemewahan. Kabin yang luas dilengkapi dengan material premium seperti kulit berkualitas tinggi dan panel kayu asli. Dashboard yang modern dilengkapi dengan layar sentuh 8 inci, sistem infotainment canggih, serta fitur-fitur kenyamanan seperti kursi berlapis kulit, AC otomatis, dan sistem audio premium.\r\n\r\nFitur Utama:\r\n\r\nDesain Interior Mewah: Material kulit premium, dashboard dengan panel kayu asli, dan kursi ergonomis.\r\nSistem Infotainment: Layar sentuh 8 inci dengan Apple CarPlay, Android Auto, dan sistem navigasi GPS.\r\nKenyamanan Berkendara: Kursi depan yang dapat diatur secara elektrik, sistem keyless entry, dan AC otomatis dengan pengatur suhu dual-zone.\r\nFitur Keselamatan: Honda Sensing, sistem pengereman anti-lock (ABS), kontrol stabilitas kendaraan, dan airbag ganda.\r\nSpesifikasi Utama:\r\n\r\nMesin: 1.5L Turbocharged i-VTEC DOHC 4-silinder\r\nDaya Maksimum: 192 hp @ 5,500 rpm\r\nTorsi Maksimum: 260 Nm @ 1,600-5,000 rpm\r\nTransmisi: CVT (Continuously Variable Transmission)\r\nDimensi:\r\nPanjang: 4,880 mm\r\nLebar: 1,850 mm\r\nTinggi: 1,450 mm\r\nJarak Poros Roda: 2,830 mm\r\nKapasitas Bagasi: 473 liter\r\nSuspensi Depan: MacPherson strut\r\nSuspensi Belakang: Multi-link\r\nSistem Pengereman:\r\nDepan: Disc brakes ventilated\r\nBelakang: Disc brakes solid\r\nUkuran Ban: 235/45 R18\r\nFitur Keselamatan: Honda Sensing (Adaptive Cruise Control, Lane Keeping Assist, Collision Mitigation Braking System), Dual front airbags, ABS with EBD, Vehicle Stability Assist (VSA), Hill Start Assist (HSA)\r\nKelebihan:\r\n\r\nDesain Elegan dan Modern: Eksterior dan interior yang premium dengan detail yang mewah.\r\nTeknologi Canggih: Sistem infotainment terbaru dengan konektivitas smartphone dan fitur-fitur bantuan pengemudi.\r\nRuang Kabin Luas: Interior yang nyaman dengan material berkualitas dan ruang penyimpanan yang luas.\r\nKesimpulan:\r\nAll New Honda Accord adalah pilihan yang sangat baik untuk mereka yang menginginkan sedan mid-size dengan performa yang kuat, kenyamanan tingkat tinggi, dan fitur-fitur modern. Dengan desain yang elegan dan teknologi terbaru, Accord menawarkan pengalaman berkendara yang mewah dan menyenangkan.', '2.0L RS e:HEV,\r\n1.5L Turbo CVT', 791800000, 'Rp 962.900.000,\r\nRp 791.800.000', '2024-08-07 23:38:41', '2024-08-16 10:37:17', 'https://www.youtube.com/embed/vOaL3NJNT7c', 'Sedan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `promotions`
--

INSERT INTO `promotions` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(4, 'Agustus', 'Agustus', 'dbV5kq7K4v04gLNXubhP1SgI4j84WB0itzp29Qus.jpg', '2024-08-05 08:10:28', '2024-08-05 08:10:28'),
(5, 'Agustus', 'Promo', 'EYIY8eLHr5BWlKhEHa33YcDTpDHrXvIoJSptbsMq.jpg', '2024-08-05 08:12:04', '2024-08-05 08:12:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('uhR8I6AMasYoizoFRmeW9XRCVGq7d7FensrScpK2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidnRLcXZqR0RSWjllUVNtM2c5a1ZRRmowUDJYRGRNckUySzQ3WVZLYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1724245414);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `colors_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `colors`
--
ALTER TABLE `colors`
  ADD CONSTRAINT `colors_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
