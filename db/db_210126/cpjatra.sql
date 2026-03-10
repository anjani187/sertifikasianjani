-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 21, 2026 at 01:59 AM
-- Server version: 8.0.30
-- PHP Version: 8.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cpjatra`
--

-- --------------------------------------------------------

--
-- Table structure for table `armada`
--

CREATE TABLE `armada` (
  `id` bigint UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_unit` int NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `updated_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `armada`
--

INSERT INTO `armada` (`id`, `image`, `title`, `total_unit`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`) VALUES
(1, 'armada/8d11aab7-d631-405e-a6e6-e3b175ba60f6.png', 'Dump Truck', 115, 7, 0, '2025-12-11 01:10:54', '2025-12-14 19:02:47', '2025-12-14 19:02:47', 7),
(2, 'armada/8df2935a-2ba1-472b-a522-a282629a4fbc.png', 'Ekskavator', 23, 7, 0, '2025-12-11 01:11:46', '2025-12-14 19:02:50', '2025-12-14 19:02:50', 7),
(3, 'armada/c97c70f7-843f-426e-8278-b04044182397.png', 'Compactor', 45, 7, 7, '2025-12-11 01:12:38', '2025-12-14 19:02:53', '2025-12-14 19:02:53', 7),
(4, 'armada/42c0dae8-02c7-478c-8707-16a6ad33ef39.png', 'Excavator  30T', 34, 7, 7, '2025-12-11 01:13:25', '2025-12-14 19:02:41', '2025-12-14 19:02:41', 7),
(5, 'armada/a2ce8113-bc8b-4736-8088-7fd7089e60c9.png', 'Dump Truck', 152, 7, 7, '2025-12-14 19:03:41', '2026-01-19 20:21:24', NULL, 0),
(6, 'armada/900c008d-4377-42cc-87bb-500013af4e39.png', 'Compactor', 10, 7, 7, '2025-12-14 19:12:41', '2026-01-19 20:21:12', NULL, 0),
(7, 'armada/eb688f55-e875-4b48-bdac-0c2e25834ea5.png', 'Excavator', 112, 7, 7, '2025-12-14 19:16:22', '2026-01-19 20:21:00', NULL, 0),
(8, 'armada/bd6465cd-902f-4329-8c12-46782ca8bf90.jpg', 'Excavator 30T', 22, 7, 0, '2025-12-14 19:18:32', '2025-12-21 05:57:34', '2025-12-21 05:57:34', 7),
(9, 'armada/6e1e9850-e640-4af8-b578-1d177e34dbb9.png', 'Excavator Breaker', 2, 7, 0, '2025-12-14 19:20:44', '2025-12-21 15:14:15', '2025-12-21 15:14:15', 7),
(10, 'armada/83b02260-e4c8-4d2a-b64c-95a958443a2b.png', 'Excavator Long Arm', 3, 7, 7, '2025-12-14 19:23:14', '2026-01-19 20:20:40', '2026-01-19 20:20:40', 7),
(11, 'armada/476ab6b4-d12b-4e7d-93f5-20986a14d018.png', 'Excavator 30T', 22, 7, 0, '2025-12-14 19:26:27', '2025-12-21 20:50:36', '2025-12-21 20:50:36', 7),
(12, 'armada/fc7282e5-e533-491e-9d66-24d78fbd4d95.png', 'Motor Grader', 9, 7, 7, '2025-12-14 19:29:24', '2026-01-19 20:20:22', NULL, 0),
(13, 'armada/aef34d2c-a46b-4de2-9077-bf2712d0966a.png', 'Water Truck', 10, 7, 7, '2025-12-14 21:34:45', '2026-01-19 20:20:06', NULL, 0),
(14, 'armada/2576789b-276c-44e8-9e8f-067133db752d.jpg', 'unit', 23, 7, 0, '2025-12-18 07:47:55', '2025-12-18 07:48:09', '2025-12-18 07:48:09', 7),
(15, 'armada/39945759-0c00-4fb1-997c-783578aba019.png', 'Excavator Long Arm', 9, 7, 0, '2026-01-20 18:19:52', '2026-01-20 18:19:52', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-feature_beranda_cta', 'b:1;', 1768961334),
('laravel-cache-feature_beranda_pencapaian', 'b:1;', 1768961334),
('laravel-cache-feature_beranda_portofolio', 'b:1;', 1768961334),
('laravel-cache-feature_karir_galeri', 'b:1;', 1768959569),
('laravel-cache-feature_karir_lowongan', 'b:1;', 1768959569),
('laravel-cache-feature_karir_pendahuluan', 'b:1;', 1768959569),
('laravel-cache-feature_layanan_armada', 'b:1;', 1768961062),
('laravel-cache-feature_layanan_lokasi_site', 'b:1;', 1768961062),
('laravel-cache-feature_layanan_utama', 'b:1;', 1768961062),
('laravel-cache-feature_tata_kelola', 'b:1;', 1768961062),
('laravel-cache-feature_tentang_filosofi_logo', 'b:1;', 1768961075),
('laravel-cache-feature_tentang_nilai_perusahaan', 'b:1;', 1768961075),
('laravel-cache-feature_tentang_rekam_jejak', 'b:1;', 1768961075),
('laravel-cache-feature_tentang_sejarah', 'b:1;', 1768961075),
('laravel-cache-feature_tentang_struktur_organisasi', 'b:1;', 1768961075),
('laravel-cache-feature_tentang_visi_misi', 'b:1;', 1768961075);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `corevalue`
--

CREATE TABLE `corevalue` (
  `id` bigint UNSIGNED NOT NULL,
  `inisial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `updated_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `corevalue`
--

INSERT INTO `corevalue` (`id`, `inisial`, `nilai`, `deskripsi`, `icon`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`) VALUES
(1, 'I', 'Integrity', 'Menjunjung tinggi kejujuran, transparansi, dan tanggung jawab dalam setiap tindakan dan keputusan.', 'corevalue/e85ab5e0-956b-488d-8c45-bdbb3ae8506d.png', 7, 7, '2025-12-07 09:06:58', '2025-12-22 18:37:59', NULL, 0),
(2, 'C', 'Collaboration', 'Hasil terbaik dicapai melalui kerja sama yang kuat., dengan kolaborasi yang terbuka dan saling menghargai, kami membangun sinergi antar tim, mitra, dan klien untuk mencapai tujuan bersama.', 'corevalue/d999e53b-5a9b-489b-9f39-691f1e50c0cb.png', 7, 7, '2025-12-07 10:39:57', '2025-12-22 18:38:31', NULL, 0),
(3, 'A', 'Agile', 'Adaptif terhadap perubahan dan cepat dalam merespons tantangan. Dengan pola kerja yang fleksibel dan inovatif, kami terus berupaya memberikan solusi yang efektif dan relevan.', 'corevalue/f20d7b48-1265-4198-9b81-b00277ad62ca.png', 7, 7, '2025-12-08 18:14:22', '2025-12-22 18:38:57', NULL, 0),
(4, 'R', 'Respect', 'Menghargai setiap individu, perbedaan, dan kontribusi yang diberikan. Rasa saling menghormati menjadi fondasi dalam menciptakan lingkungan kerja yang profesional dan harmonis.', 'corevalue/45060c37-3287-4bac-a1f6-3103d8314c68.png', 7, 7, '2025-12-08 18:15:06', '2025-12-22 18:39:22', NULL, 0),
(5, 'E', 'Empowering', 'Mendorong pengembangan potensi setiap individu melalui kepercayaan, dukungan, dan kesempatan untuk berkembang. Dengan memberdayakan tim, kami menciptakan pertumbuhan berkelanjutan bagi perusahaan dan masyarakat.', 'corevalue/ef1bff71-4ede-4751-845d-7b4986834bd1.png', 7, 7, '2025-12-08 18:15:34', '2025-12-22 18:39:43', NULL, 0),
(6, 'C', 'Agile', 'test', 'corevalue/e177b5ab-e56b-428c-83e0-0e290bbd19c7.jpg', 7, 0, '2025-12-11 20:02:20', '2025-12-11 20:02:36', '2025-12-11 20:02:36', 7),
(7, 'C', 'core', 'Deskripsi lebih lengkap tentang kenapa mengambil warna hijau', 'corevalue/ee372663-e3de-40d1-ae08-c01baf70b7da.jpg', 7, 0, '2025-12-11 20:08:04', '2025-12-12 01:15:10', '2025-12-12 01:15:10', 7),
(8, 'A', 'deskripsi', 'A', 'corevalue/7dac4691-7e2d-4997-a4de-9837de9e8041.jpg', 7, 0, '2025-12-18 07:46:40', '2025-12-18 07:47:02', '2025-12-18 07:47:02', 7),
(9, 'C', '12', 'coba', 'corevalue/382d0656-e04c-4796-aa78-36443331da06.png', 7, 0, '2025-12-18 08:10:12', '2025-12-18 08:10:19', '2025-12-18 08:10:19', 7);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filosofi_logo`
--

CREATE TABLE `filosofi_logo` (
  `id` bigint UNSIGNED NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `updated_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filosofi_logo`
--

INSERT INTO `filosofi_logo` (`id`, `image`, `deskripsi_1`, `deskripsi_2`, `deskripsi_3`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`) VALUES
(1, 'img/sejarah/b3f35d1e-7e48-4ddf-8a55-1b58fd92ca31.png', 'Warna Merah melambangkan energi, semangat, dan percaya diri', 'Warna hijau melambangkan pertumbuhan-kesuburan, ketenangan-kedamaian, harapan-kebebasan', 'Bentuk segitiga melambangkan kekuatan, energi, dan inovasi serta juga memiliki filosofi pertumbuhan, stabilitas dan perlindungan', 3, 7, '2025-11-12 08:12:45', '2025-12-11 02:10:09', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id` bigint UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `updated_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id`, `image`, `title`, `deskripsi`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`) VALUES
(1, 'galeri/d32cdee3-9d5a-4fb1-b8a6-8a098766a52d.jpg', 'Sport Day', 'Deskripsi lebih lengkap tentang kenapa mengambil warna hijau', 7, 0, '2025-12-10 06:35:19', '2025-12-10 07:00:31', '2025-12-10 07:00:31', 7),
(2, 'galeri/efe9329d-ab2d-4648-8bb2-06387edc9346.jpg', 'Test Coba', 'Manokwari, Papua Barat', 7, 0, '2025-12-10 06:35:52', '2025-12-10 07:00:26', '2025-12-10 07:00:26', 7),
(3, 'galeri/4b73b86d-5df7-4850-b4fb-e83cc95204cb.jpg', 'Sport Day', 'Kegiatan kebersamaan dalam perusahaan PT. Jaga Aman Sejahtera', 7, 0, '2025-12-10 07:06:27', '2025-12-14 16:00:17', '2025-12-14 16:00:17', 7),
(4, 'galeri/a45779fe-19ae-446c-acc4-a6b1a2c4b393.jpg', '17 Agustus', 'Memeriahkan hari ekemrdekaan Indonesia', 7, 0, '2025-12-10 07:07:26', '2025-12-14 16:00:13', '2025-12-14 16:00:13', 7),
(5, 'galeri/86907720-3df0-4bda-8e6e-a58917dbca65.png', 'Struktur Organisasi', 'Manokwari, Papua Barat', 7, 0, '2025-12-11 09:58:09', '2025-12-12 07:46:19', '2025-12-12 07:46:19', 7),
(6, 'galeri/759aaba5-6ca3-48a9-85a8-b94f2286d681.png', 'coba coba', 'Deskripsi lebih lengkap tentang kenapa mengambil warna hijau', 7, 0, '2025-12-12 07:47:07', '2025-12-14 16:00:09', '2025-12-14 16:00:09', 7),
(7, 'galeri/f3b6804e-3013-466b-8364-3e868e388880.jpg', 'Site BSJ', 'Deskripsi lebih lengkap tentang kenapa mengambil warna hijau', 7, 0, '2025-12-14 16:02:17', '2025-12-15 04:24:32', '2025-12-15 04:24:32', 7),
(8, 'galeri/8e7493f6-a3ee-4ceb-b085-d7ea2db1ed6e.jpg', 'Title', 'Deskripsi', 7, 0, '2025-12-15 00:51:51', '2025-12-15 00:57:33', '2025-12-15 00:57:33', 7),
(10, 'galeri/8ea9d783-b9d4-43f3-b367-6429cac6cddd.jpeg', 'title', 'deskripsi', 7, 7, '2025-12-15 00:52:42', '2025-12-19 09:12:03', NULL, 0),
(11, 'galeri/98eadae0-018d-4507-956d-4ab79ed0a3d2.jpeg', 'title', 'deskripsi', 7, 0, '2025-12-15 00:54:18', '2025-12-15 00:57:29', '2025-12-15 00:57:29', 7),
(12, 'galeri/ad7de8cb-c93a-4acb-89a4-74cc4772da2b.jpg', 'title', 'deskripsi', 7, 0, '2025-12-15 00:58:18', '2025-12-15 00:58:18', NULL, 0),
(19, 'galeri/9d5531a6-4bf7-4b95-a1b0-3252e085e7b1.jpeg', 'title', 'deksripsi', 7, 0, '2025-12-19 09:12:28', '2025-12-19 09:12:28', NULL, 0),
(20, 'galeri/2f2028ae-75b7-4f3e-9edd-6e0b9bb01c25.jpeg', 'title', 'deskripsi', 7, 0, '2025-12-19 09:13:24', '2025-12-19 09:13:24', NULL, 0),
(22, 'galeri/e5ddc9d8-4ba7-4b6c-89d1-f91be2c1249b.jpeg', 'title', 'deskripsi', 7, 0, '2025-12-22 04:45:51', '2025-12-22 04:45:51', NULL, 0),
(23, 'galeri/49961f6b-8708-4ce5-bf26-3a8be2fcfa20.jpeg', 'title', 'image', 7, 0, '2025-12-22 04:46:17', '2025-12-22 04:46:17', NULL, 0),
(24, 'galeri/f156ed25-b6f7-448f-95f6-8f3f0ba7184b.jpeg', 'tit', 'deskripsi', 7, 7, '2025-12-22 04:46:47', '2026-01-09 02:01:40', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hero_section`
--

CREATE TABLE `hero_section` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `updated_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int NOT NULL DEFAULT '0',
  `image_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hero_section`
--

INSERT INTO `hero_section` (`id`, `title`, `description`, `image`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `image_2`, `image_3`, `video`) VALUES
(1, 'Kontraktor Tambang Nikel', 'Menyediakan seluruh rantai operasional penambangan nikel, meliputi perencanaan, pembersihan lahan, hingga penggalian untuk memastikan produktivitas tambang yang optimal dan berkelanjutan.', 'img/hero/9f1a8720-36a9-48d6-95ce-73ccc92fbda7.jpg', 0, 7, '2025-10-22 07:37:40', '2025-12-23 01:35:41', NULL, 0, 'img/hero/19cae013-9d06-46ef-ac4c-9da97c057e04.jpeg', 'img/hero/7e80ec02-b552-40aa-9985-2375d878f646.jpg', 'video/hero/46664351-84b3-4418-971a-8cf37b4cd5ce.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_lowongan`
--

CREATE TABLE `kategori_lowongan` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `updated_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_lowongan`
--

INSERT INTO `kategori_lowongan` (`id`, `nama_kategori`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`) VALUES
(1, 'Finance', 3, 0, '2025-11-13 06:15:35', '2025-11-13 06:50:15', '2025-11-13 06:50:15', 3),
(2, 'Finance', 3, 0, '2025-11-13 06:16:45', '2025-11-13 06:50:24', '2025-11-13 06:50:24', 3),
(3, 'Finance', 3, 0, '2025-11-13 06:43:59', '2025-11-13 06:50:27', '2025-11-13 06:50:27', 3),
(4, 'Finance', 3, 0, '2025-11-13 06:44:12', '2025-12-12 09:27:03', '2025-12-12 09:27:03', 7),
(5, 'Finance', 3, 0, '2025-11-13 06:44:35', '2025-11-13 06:50:30', '2025-11-13 06:50:30', 3),
(6, 'Finance', 3, 0, '2025-11-13 06:44:57', '2025-11-13 06:50:32', '2025-11-13 06:50:32', 3),
(7, 'Finance', 3, 0, '2025-11-13 06:47:12', '2025-11-13 06:50:19', '2025-11-13 06:50:19', 3),
(8, 'Human Resource Department', 3, 0, '2025-11-13 09:08:14', '2025-11-13 09:08:14', NULL, 0),
(9, 'Health, Safety, and Environment', 3, 7, '2025-11-14 02:50:17', '2025-12-21 22:42:55', NULL, 0),
(10, 'Finance, Accounting, & Tax Manager', 7, 7, '2025-12-04 19:36:46', '2025-12-12 09:25:44', NULL, 0),
(11, 'Procurement', 3, 0, '2025-12-05 01:37:53', '2025-12-05 01:38:42', '2025-12-05 01:38:42', 3),
(12, 'Procurement', 3, 0, '2025-12-05 01:38:18', '2025-12-05 01:38:18', NULL, 0),
(13, 'Engineering', 3, 0, '2025-12-05 01:39:28', '2025-12-05 01:39:28', NULL, 0),
(14, 'Information Technology', 7, 7, '2025-12-11 02:30:25', '2025-12-12 09:22:31', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lokasi_lowongan`
--

CREATE TABLE `lokasi_lowongan` (
  `id` bigint UNSIGNED NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `updated_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lokasi_lowongan`
--

INSERT INTO `lokasi_lowongan` (`id`, `lokasi`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`) VALUES
(1, 'Jakarta', 7, 0, '2025-12-10 13:56:03', '2025-12-10 22:51:22', '2025-12-10 22:51:22', 7),
(2, 'Kendari', 7, 0, '2025-12-10 14:15:40', '2025-12-10 14:15:40', NULL, 0),
(3, 'Jakarta', 7, 0, '2025-12-10 22:56:59', '2025-12-10 23:18:54', '2025-12-10 23:18:54', 7),
(4, 'Sumatera', 7, 0, '2025-12-10 23:08:28', '2025-12-10 23:18:58', '2025-12-10 23:18:58', 7),
(5, 'Jakarta', 7, 0, '2025-12-10 23:19:10', '2025-12-10 23:19:10', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lokasi_site`
--

CREATE TABLE `lokasi_site` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_site` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lokasi_site`
--

INSERT INTO `lokasi_site` (`id`, `nama_site`, `latitude`, `longitude`, `deskripsi`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`) VALUES
(1, 'Kendari, Sulawesi Tenggara', -4.02520900, 122.46694300, 'Site di Kendari, Sulawesi Tenggara', 0, '2025-11-07 07:02:55', '2025-12-03 19:16:44', '2025-12-03 19:16:44', 7),
(2, 'Kendari, Sulawesi Tenggara', -4.02530900, 122.46694300, 'test', 3, '2025-11-07 07:10:39', '2025-11-07 07:13:17', '2025-11-07 07:13:17', 3),
(3, 'Manokwari', -4.02520900, 122.46694300, 'Papua Barat', 0, '2025-11-12 07:34:07', '2025-12-03 19:16:40', '2025-12-03 19:16:40', 7),
(4, 'Kendari, Sulawesi Tenggara', -4.02520900, 122.46694300, 'Deksirpsi', 0, '2025-11-13 09:36:18', '2025-12-03 19:16:36', '2025-12-03 19:16:36', 7),
(5, 'Halmahera', 1.35810000, 127.86300000, 'Site BSJ', 0, '2025-12-03 19:18:21', '2025-12-22 18:51:48', '2025-12-22 18:51:48', 7),
(6, 'Banggai, Sulawesi', -4.02530900, 122.46694300, 'Site KFM', 0, '2025-12-03 19:49:26', '2025-12-22 18:51:41', '2025-12-22 18:51:41', 7),
(7, 'PT. Bumi Sentosa Jaya', -3.44671540, 122.37441600, 'PT. Bumi Sentosa Jaya', 0, '2025-12-22 18:46:20', '2025-12-22 18:46:20', NULL, 0),
(8, 'PT. Mega Haltim Mineral', 0.78581030, 128.05150240, 'PT. Mega Haltim Mineral', 0, '2025-12-22 18:55:15', '2025-12-22 18:55:15', NULL, 0),
(9, 'Kendari, Sulawesi Tenggara', -4.02520900, 122.46694300, 'PT', 0, '2026-01-04 21:18:54', '2026-01-04 21:19:18', '2026-01-04 21:19:18', 7);

-- --------------------------------------------------------

--
-- Table structure for table `lowongan`
--

CREATE TABLE `lowongan` (
  `id` bigint UNSIGNED NOT NULL,
  `posisi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi_id` bigint UNSIGNED DEFAULT NULL,
  `kategori_id` bigint UNSIGNED NOT NULL,
  `expired_date` date NOT NULL,
  `deskripsi_pekerjaan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `persyaratan_pekerjaan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `google_form` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `updated_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lowongan`
--

INSERT INTO `lowongan` (`id`, `posisi`, `lokasi_id`, `kategori_id`, `expired_date`, `deskripsi_pekerjaan`, `persyaratan_pekerjaan`, `status`, `google_form`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`) VALUES
(1, 'Human Resource', NULL, 4, '2025-11-21', 'Melakukan penilaian keamanan dan menyiapkan laporan sesuai dengan kebutuhan perusahaan\r\nMengelola proses mobilisasi dan demobilisasi petugas keamanan (SG), termasuk rekrutmen, penyediaan peralatan, serta pelaksanaan SOP keamanan\r\nMengkoordinasikan pelaksanaan SOP dan pemenuhan Service Level Agreement (SLA), termasuk kunjungan lokasi, patroli, pelatihan, tes kebugaran, dan kegiatan terkait lainnya', 'Gelar Sarjana (S1) di bidang Manajemen atau bidang terkait\r\nPengalaman minimal 2 tahun sebagai Supervisor Keamanan\r\nPemahaman yang kuat tentang keterampilan keamanan dasar, hubungan industrial, investigasi dan manajemen kasus, keselamatan dan kesehatan kerja (K3), serta penilaian keamanan\r\nMampu menangani keluhan dan berkoordinasi dengan efektif dengan pelanggan\r\nMahir dalam Microsoft Office (terutama Word, Excel, dan PowerPoint) serta mampu menyusun laporan kerja yang detail', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 3, 0, '2025-11-13 01:54:48', '2025-11-13 01:55:31', '2025-11-13 01:55:31', 3),
(2, 'Human Resource', NULL, 4, '2025-11-21', 'Melakukan penilaian keamanan dan menyiapkan laporan sesuai dengan kebutuhan perusahaan\r\nMengelola proses mobilisasi dan demobilisasi petugas keamanan (SG), termasuk rekrutmen, penyediaan peralatan, serta pelaksanaan SOP keamanan\r\nMengkoordinasikan pelaksanaan SOP dan pemenuhan Service Level Agreement (SLA), termasuk kunjungan lokasi, patroli, pelatihan, tes kebugaran, dan kegiatan terkait lainnya', 'Gelar Sarjana (S1) di bidang Manajemen atau bidang terkait\r\nPengalaman minimal 2 tahun sebagai Supervisor Keamanan\r\nPemahaman yang kuat tentang keterampilan keamanan dasar, hubungan industrial, investigasi dan manajemen kasus, keselamatan dan kesehatan kerja (K3), serta penilaian keamanan\r\nMampu menangani keluhan dan berkoordinasi dengan efektif dengan pelanggan\r\nMahir dalam Microsoft Office (terutama Word, Excel, dan PowerPoint) serta mampu menyusun laporan kerja yang detail', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 3, 3, '2025-11-13 01:54:52', '2025-11-13 01:55:25', '2025-11-13 01:55:25', 3),
(3, 'Human Resource', NULL, 4, '2025-11-14', 'Melakukan penilaian keamanan dan menyiapkan laporan sesuai dengan kebutuhan perusahaan\r\nMengelola proses mobilisasi dan demobilisasi petugas keamanan (SG), termasuk rekrutmen, penyediaan peralatan, serta pelaksanaan SOP keamanan\r\nMengkoordinasikan pelaksanaan SOP dan pemenuhan Service Level Agreement (SLA), termasuk kunjungan lokasi, patroli, pelatihan, tes kebugaran, dan kegiatan terkait lainnya', 'Gelar Sarjana (S1) di bidang Manajemen atau bidang terkait\r\nPengalaman minimal 2 tahun sebagai Supervisor Keamanan\r\nPemahaman yang kuat tentang keterampilan keamanan dasar, hubungan industrial, investigasi dan manajemen kasus, keselamatan dan kesehatan kerja (K3), serta penilaian keamanan\r\nMampu menangani keluhan dan berkoordinasi dengan efektif dengan pelanggan\r\nMahir dalam Microsoft Office (terutama Word, Excel, dan PowerPoint) serta mampu menyusun laporan kerja yang detail', 0, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 3, 3, '2025-11-13 01:56:44', '2025-12-04 12:21:53', '2025-12-04 12:21:53', 7),
(4, 'Human Resource', NULL, 8, '2025-11-15', 'PT. Jaga Aman Sejahtera (JATRA) tidak hanya membangun bisnis, tetapi juga menciptakan lingkungan yang aman dan sejahtera bagi semua. Kami mencari individu bersemangat dan berintegritas yang siap menjadi bagian dari misi kami untuk memberikan perlindungan dan ketenangan. Jika Anda siap untuk menghadapi tantangan dan berkembang dalam budaya yang mendukung, tempat Anda adalah di sini.', 'PT. Jaga Aman Sejahtera (JATRA) tidak hanya membangun bisnis, tetapi juga menciptakan lingkungan yang aman dan sejahtera bagi semua. Kami mencari individu bersemangat dan berintegritas yang siap menjadi bagian dari misi kami untuk memberikan perlindungan dan ketenangan. Jika Anda siap untuk menghadapi tantangan dan berkembang dalam budaya yang mendukung, tempat Anda adalah di sini.', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 3, 0, '2025-11-13 02:33:35', '2025-11-13 19:30:09', '2025-11-13 19:30:09', 3),
(5, 'Human Resource', NULL, 8, '2025-11-14', 'PT. Jaga Aman Sejahtera (JATRA) tidak hanya membangun bisnis, tetapi juga menciptakan lingkungan yang aman dan sejahtera bagi semua. Kami mencari individu bersemangat dan berintegritas yang siap menjadi bagian dari misi kami untuk memberikan perlindungan dan ketenangan. Jika Anda siap untuk menghadapi tantangan dan berkembang dalam budaya yang mendukung, tempat Anda adalah di sini.', 'PT. Jaga Aman Sejahtera (JATRA) tidak hanya membangun bisnis, tetapi juga menciptakan lingkungan yang aman dan sejahtera bagi semua. Kami mencari individu bersemangat dan berintegritas yang siap menjadi bagian dari misi kami untuk memberikan perlindungan dan ketenangan. Jika Anda siap untuk menghadapi tantangan dan berkembang dalam budaya yang mendukung, tempat Anda adalah di sini.', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 3, 3, '2025-11-13 02:37:14', '2025-12-04 12:21:46', '2025-12-04 12:21:46', 7),
(6, 'Human Resource', NULL, 4, '2025-11-13', 'public function getData(Request $request): JsonResponse\r\n{\r\n    try {\r\n        $search = $request->input(\'search.value\', \'\');\r\n        $start  = intval($request->input(\'start\', 0));\r\n        $limit  = intval($request->input(\'length\', 10));\r\n\r\n        $query = Lowongan::with(\'kategori\');\r\n\r\n        if (!empty($search)) {\r\n            $query->where(function ($q) use ($search) {\r\n                $q->where(\'posisi\', \'LIKE\', \"%{$search}%\")\r\n                    ->orWhere(\'lokasi_penempatan\', \'LIKE\', \"%{$search}%\")\r\n                    ->orWhere(\'expired_date\', \'LIKE\', \"%{$search}%\")\r\n                    ->orWhere(\'deskripsi_pekerjaan\', \'LIKE\', \"%{$search}%\")\r\n                    ->orWhere(\'persyaratan_pekerjaan\', \'LIKE\', \"%{$search}%\")\r\n                    ->orWhereHas(\'kategori\', function ($q2) use ($search) {\r\n                        $q2->where(\'nama_kategori\', \'LIKE\', \"%{$search}%\");\r\n                    });\r\n            });\r\n        }\r\n\r\n        $recordsFiltered = $query->count();\r\n        $lowongan = $query->offset($start)\r\n            ->limit($limit)\r\n            ->orderBy(\'id\', \'desc\')\r\n            ->get()\r\n            ->map(function ($item) {\r\n                return [\r\n                    \'id\' => $item->id,\r\n                    \'posisi\' => $item->posisi,\r\n                    \'lokasi_penempatan\' => $item->lokasi_penempatan,\r\n                    \'kategori\' => $item->kategori ? $item->kategori->nama_kategori : \'-\',\r\n                    \'expired_date\' => $item->expired_date,\r\n                    \'status\' => $item->status ? \'Aktif\' : \'Nonaktif\',\r\n                ];\r\n            });\r\n\r\n        $recordsTotal = Lowongan::count();\r\n\r\n        return response()->json([\r\n            \'draw\' => intval($request->input(\'draw\')),\r\n            \'recordsTotal\' => $recordsTotal,\r\n            \'recordsFiltered\' => $recordsFiltered,\r\n            \'data\' => $lowongan\r\n        ]);\r\n\r\n    } catch (Exception $e) {\r\n        Log::error(\'getData Exception: \' . $e->getMessage());\r\n        return response()->json([\'error\' => \'Terjadi kesalahan saat mengambil data\'], 500);\r\n    }\r\n}', 'public function getData(Request $request): JsonResponse\r\n{\r\n    try {\r\n        $search = $request->input(\'search.value\', \'\');\r\n        $start  = intval($request->input(\'start\', 0));\r\n        $limit  = intval($request->input(\'length\', 10));\r\n\r\n        $query = Lowongan::with(\'kategori\');\r\n\r\n        if (!empty($search)) {\r\n            $query->where(function ($q) use ($search) {\r\n                $q->where(\'posisi\', \'LIKE\', \"%{$search}%\")\r\n                    ->orWhere(\'lokasi_penempatan\', \'LIKE\', \"%{$search}%\")\r\n                    ->orWhere(\'expired_date\', \'LIKE\', \"%{$search}%\")\r\n                    ->orWhere(\'deskripsi_pekerjaan\', \'LIKE\', \"%{$search}%\")\r\n                    ->orWhere(\'persyaratan_pekerjaan\', \'LIKE\', \"%{$search}%\")\r\n                    ->orWhereHas(\'kategori\', function ($q2) use ($search) {\r\n                        $q2->where(\'nama_kategori\', \'LIKE\', \"%{$search}%\");\r\n                    });\r\n            });\r\n        }\r\n\r\n        $recordsFiltered = $query->count();\r\n        $lowongan = $query->offset($start)\r\n            ->limit($limit)\r\n            ->orderBy(\'id\', \'desc\')\r\n            ->get()\r\n            ->map(function ($item) {\r\n                return [\r\n                    \'id\' => $item->id,\r\n                    \'posisi\' => $item->posisi,\r\n                    \'lokasi_penempatan\' => $item->lokasi_penempatan,\r\n                    \'kategori\' => $item->kategori ? $item->kategori->nama_kategori : \'-\',\r\n                    \'expired_date\' => $item->expired_date,\r\n                    \'status\' => $item->status ? \'Aktif\' : \'Nonaktif\',\r\n                ];\r\n            });\r\n\r\n        $recordsTotal = Lowongan::count();\r\n\r\n        return response()->json([\r\n            \'draw\' => intval($request->input(\'draw\')),\r\n            \'recordsTotal\' => $recordsTotal,\r\n            \'recordsFiltered\' => $recordsFiltered,\r\n            \'data\' => $lowongan\r\n        ]);\r\n\r\n    } catch (Exception $e) {\r\n        Log::error(\'getData Exception: \' . $e->getMessage());\r\n        return response()->json([\'error\' => \'Terjadi kesalahan saat mengambil data\'], 500);\r\n    }\r\n}', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 3, 3, '2025-11-13 02:48:41', '2025-12-04 12:21:40', '2025-12-04 12:21:40', 7),
(7, 'Human Resource', NULL, 8, '2025-11-14', 'SELECT id, posisi, kategori_id FROM lowongan;', 'SELECT id, posisi, kategori_id FROM lowongan;', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 3, 3, '2025-11-13 02:54:18', '2025-12-04 12:21:32', '2025-12-04 12:21:32', 7),
(8, 'HSE Officer', NULL, 9, '2025-11-29', '1. Memastikan kesehatan, keselamatan, dan lingkungan kerja sesuai dengan standar yang berlaku, \r\n2. Melalui identifikasi bahaya, penyusunan kebijakan, pelaksanaan audit, pelatihan karyawan, penanganan insiden, dan pelaporan.', '1. Minimal lulusan D3 atau S1 dari jurusan yang relevan seperti:\r\nKesehatan dan Keselamatan Kerja (K3)\r\nTeknik Lingkungan\r\nTeknik Industri\r\nKesehatan Masyarakat\r\n2. Sertifikasi khusus K3 menjadi nilai tambah yang penting, dan sering kali menjadi syarat mutlak.\r\n3. Pengalaman kerja di bidang HSE biasanya disyaratkan, meskipun jenjang pengalaman bisa berbeda-beda', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 3, 7, '2025-11-13 19:53:07', '2025-12-04 12:21:22', '2025-12-04 12:21:22', 7),
(9, 'HSE Officer', NULL, 9, '2025-12-06', 'Deskripsi Pekerjaan', 'Persyaratan', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 0, '2025-12-04 12:13:42', '2025-12-08 04:31:01', '2025-12-08 04:31:01', 7),
(10, 'HSE Officer', NULL, 10, '2025-12-06', 'menggambarkan diri kamu secara profesional. Mulai dari pendidikan, pengalaman, bakat keterampilan, minat, hingga tujuan karier ke depannya. Saat merancang deskripsi diri, kamu juga melatih kemampuan berbahasa kamu sebab harus menulis informasi yang luas dalam kalimat yang sangat ringkas.', 'Sebagai Manajer Desain Produk di GitLab, Anda akan bertanggung jawab mengelola tim yang terdiri dari hingga 5 Desainer Produk berbakat. \" Pendekatan ini memungkinkan para pencari kerja untuk membayangkan diri mereka sendiri dalam peran tersebut sehingga mereka dapat memutuskan apakah posisi tersebut tepat bagi mereka.', 0, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 7, '2025-12-04 12:38:39', '2025-12-10 23:52:37', '2025-12-10 23:52:37', 7),
(11, 'Data Analys', NULL, 8, '2025-12-10', 'Deskrip', 'deskrip', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 0, '2025-12-04 12:50:02', '2025-12-10 23:52:33', '2025-12-10 23:52:33', 7),
(12, 'IT Support', NULL, 8, '2025-12-06', 'Ds', 'DS', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 0, '2025-12-04 12:50:44', '2025-12-10 23:52:29', '2025-12-10 23:52:29', 7),
(13, 'IT Support', NULL, 8, '2025-12-11', 'test', 'test', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 0, '2025-12-04 12:51:20', '2025-12-10 19:41:06', '2025-12-10 19:41:06', 7),
(14, 'IT Support', NULL, 10, '2025-12-16', 'Deskripsi', 'dekrips', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 0, '2025-12-04 12:52:17', '2025-12-10 19:41:00', '2025-12-10 19:41:00', 7),
(15, 'Audit Internal', NULL, 4, '2025-12-05', 'Deskripsi', 'Deksipsi', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 3, '2025-12-04 12:52:53', '2025-12-10 19:40:55', '2025-12-10 19:40:55', 7),
(16, 'Procurement', NULL, 4, '2025-12-05', 'desk', 'desk', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 0, '2025-12-04 12:54:06', '2025-12-10 19:40:51', '2025-12-10 19:40:51', 7),
(17, 'IT Support', NULL, 4, '2025-12-06', 'Deksripsi', 'Syarat', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 0, '2025-12-04 12:54:55', '2025-12-10 19:39:48', '2025-12-10 19:39:48', 7),
(18, 'Supervisor', NULL, 12, '2025-12-06', 'Mengawasi, mengelola, dan membimbing tim atau departemen sehari-hari untuk memastikan kinerja efisien, produktivitas, dan pencapaian target perusahaan, bertindak sebagai jembatan antara manajemen dan staf operasional dengan memberikan arahan, pelatihan, menyelesaikan masalah, serta memastikan kepatuhan terhadap standar dan kebijakan perusahaan.', '1. Pengalaman kerja: Memiliki pengalaman yang cukup di bidang yang sama atau posisi serupa, seringkali minimal 1-3 tahun, tergantung posisi.\r\n2. Pendidikan: Latar belakang pendidikan minimal sarjana atau diploma seringkali diperlukan. Jurusan yang relevan akan bervariasi tergantung industrinya (misalnya, S1 Teknik Informatika untuk IT Supervisor atau D3 untuk Warehouse Supervisor).\r\n3. Kemampuan kepemimpinan: Mampu memotivasi, membimbing, dan mengarahkan tim untuk mencapai tujuan bersama.\r\nKemampuan komunikasi: Mampu berkomunikasi dengan jelas dan efektif secara lisan maupun tulisan kepada semua tingkatan, termasuk mendengarkan dengan baik.\r\n4. Keterampilan manajemen: Mampu mengelola waktu, sumber daya, dan prioritas tugas dengan baik.\r\nProblem-solving: Mampu mengidentifikasi, menganalisis, dan menyelesaikan masalah yang muncul secara efektif.\r\n5. Kemampuan teknis: Menguasai keterampilan teknis yang spesifik untuk industri, seperti penggunaan software produktivitas, alat kolaborasi, atau bahasa pemrograman.\r\nFleksibilitas: Mampu beradaptasi dengan perubahan dan tantangan di lingkungan kerja.', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 3, 0, '2025-12-04 18:44:28', '2025-12-10 19:39:41', '2025-12-10 19:39:41', 7),
(19, 'HSE Officer', NULL, 13, '2025-12-26', 'Deskripsi', 'Persyaratan', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 0, '2025-12-08 04:32:13', '2025-12-10 19:39:36', '2025-12-10 19:39:36', 7),
(20, 'HSE Officer', NULL, 13, '2025-12-09', 'Deskripsi', 'Deskripsi', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 0, '2025-12-08 04:33:29', '2025-12-10 19:38:32', '2025-12-10 19:38:32', 7),
(21, 'Audit Internal', NULL, 10, '2025-12-17', 'Desirpsi', 'asa', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 0, '2025-12-08 04:34:29', '2025-12-10 19:38:09', '2025-12-10 19:38:09', 7),
(22, 'Procurement', NULL, 12, '2026-01-10', '1. Menerima dan memproses permintaan pembelian (Purchase Requisition) dari departemen lain.\r\n2. Melakukan riset pasar untuk menemukan supplier potensial dan menganalisis penawaran harga.\r\n3. Membantu negosiasi harga, syarat pembayaran, dan ketentuan kontrak dengan vendor.\r\n4. Membuat dokumen pemesanan (Purchase Order/PO) dan mengelola kontrak dengan supplier.\r\n5. Memastikan barang/jasa yang diterima sesuai dengan spesifikasi, kuantitas, dan jadwal yang disepakati.', '1. Pengalaman: Diutamakan 1-3 tahun di bidang purchasing/procurement, manajemen rantai pasokan.\r\n1. Hard Skills:\r\n- Kemampuan analisis data & biaya untuk efisiensi.\r\n- Penguasaan sistem atau software manajemen pengadaan.\r\n- Kemampuan negosiasi dan manajemen kontrak dengan vendor.\r\n2. Soft Skills:\r\n- Integritas tinggi dan kejujuran.\r\n- Kemampuan komunikasi (verbal & tertulis) yang baik.\r\n- Manajemen waktu dan perhatian terhadap detail.\r\n- Kemauan untuk terus belajar (kemauan beradaptasi).\r\n- Bahasa: Fasih berbahasa Inggris (terkadang menjadi nilai tambah/syarat)', 0, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 7, '2025-12-10 01:22:45', '2025-12-10 19:38:04', '2025-12-10 19:38:04', 7),
(23, 'IT Support', 2, 13, '2025-12-17', 'Deskripsi', 'Deskripsi', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 0, '2025-12-10 07:16:25', '2025-12-14 09:12:28', '2025-12-14 09:12:28', 7),
(24, 'Programmer Front End', 5, 14, '2026-01-11', 'Deskripsi', 'Deskripsi', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 0, '2025-12-10 19:31:15', '2025-12-10 19:31:15', NULL, 0),
(25, 'Data Analyst', 5, 13, '2025-12-26', 'Deskripsi Pekerjaan', 'Deskripsi Pekerjaan', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 0, '2025-12-10 23:53:37', '2025-12-10 23:53:37', NULL, 0),
(26, 'Penanggung Jawab Operasional', 5, 8, '2025-12-25', 'Deskripsi', 'Deskripsi', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 7, '2025-12-10 23:58:42', '2025-12-12 00:15:06', NULL, 0),
(27, 'Driver', 5, 10, '2026-01-08', 'des', 'des', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 0, '2025-12-11 20:16:43', '2025-12-11 20:16:43', NULL, 0),
(28, 'Finance Staff', 5, 10, '2025-12-26', 'Deskripsi', 'Deskripsi', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 0, '2025-12-12 02:30:14', '2025-12-12 02:30:14', NULL, 0),
(29, 'Accounting Staff', 5, 10, '2025-12-25', 'Deskripsi', 'Persyaratan', 0, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 7, '2025-12-12 02:30:50', '2025-12-14 19:31:42', NULL, 0),
(30, 'Procurement Staff', 2, 12, '2025-12-18', 'Deskripsi', 'Persyaratan', 0, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 7, '2025-12-12 02:32:30', '2025-12-14 19:31:13', NULL, 0),
(31, 'IT Support', 5, 14, '2025-12-19', 'Deksripsi', 'Persyaratan', 0, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 7, '2025-12-12 02:33:06', '2025-12-14 10:37:03', NULL, 0),
(32, 'HSE Officer', 5, 8, '2025-12-18', 'test', 'test', 0, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 7, '2025-12-12 02:36:29', '2025-12-14 10:26:13', NULL, 0),
(33, 'Enji', 5, 10, '2025-12-14', 'Enji', 'Enji', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 0, '2025-12-14 09:40:22', '2025-12-14 10:24:50', '2025-12-14 10:24:50', 7),
(35, 'Audit Internal', 2, 10, '2026-01-10', 'Deskripsi', 'Syarat', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 0, '2025-12-14 21:55:45', '2025-12-14 21:55:45', NULL, 0),
(36, 'HSE Officer', 5, 9, '2026-01-10', 'Deskripsi', 'Syarat', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 0, '2025-12-14 21:56:30', '2025-12-14 21:56:30', NULL, 0),
(37, 'Procurement Staff', 5, 10, '2026-02-05', 'Deskripsi', 'Peryaratan', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 0, '2025-12-14 21:59:31', '2025-12-14 21:59:31', NULL, 0),
(38, 'Enji', 5, 13, '2025-12-16', 'Deskripsi', 'Desk', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 8, 0, '2025-12-15 00:22:37', '2025-12-15 00:26:01', '2025-12-15 00:26:01', 8),
(39, 'Rey', 2, 13, '2025-12-16', 'enji', 'enji', 0, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 8, 8, '2025-12-15 00:25:15', '2025-12-15 00:25:40', NULL, 0),
(41, 'HSE Officer', 2, 9, '2026-01-10', 'Deskripsi', 'Syarat', 1, 'https://forms.gle/bFbD4NvsNBPYAjdk8', 7, 0, '2025-12-20 22:52:40', '2025-12-20 22:52:40', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '0001_01_01_000000_create_users_table', 1),
(5, '0001_01_01_000001_create_cache_table', 1),
(6, '0001_01_01_000002_create_jobs_table', 1),
(7, '2025_10_22_033433_create_hero_section', 2),
(8, '2025_10_22_064300_add_two_hero_images_to_hero_section_table', 3),
(10, '2025_10_27_072057_create_tentang_kami', 4),
(11, '2025_10_28_024418_fix_default_deleted_by_in_tentang_kami_table', 4),
(12, '2025_10_28_025226_alter_description_on_tentang_kami_table', 5),
(13, '2025_10_28_032428_create_ringkasan', 6),
(14, '2025_10_28_081149_create_ringkasan', 7),
(15, '2025_10_28_083502_create_portofolio', 8),
(16, '2025_10_29_011330_create_klien_mitra', 9),
(17, '2025_10_29_042740_create_sejarah', 10),
(18, '2025_10_29_062742_alter_judul_column_in_sejarah_table', 11),
(23, '2025_10_29_063930_create_filosofi_logo', 12),
(24, '2025_10_29_075320_create_visi_misi', 12),
(25, '2025_10_30_013602_create_milestone', 12),
(26, '2025_10_30_023301_create_portofolio', 12),
(27, '2025_11_03_063127_create_portofolio', 13),
(28, '2025_11_03_081208_create_klienmitra', 14),
(29, '2025_11_05_083523_add_multiple_images_to_hero_section_table', 15),
(30, '2025_11_06_060949_create_company_value', 16),
(31, '2025_11_06_063651_create_company_value', 17),
(32, '2025_11_07_031337_create_strukturorg', 18),
(33, '2025_11_07_042327_create_konteninformasi', 19),
(34, '2025_11_07_063933_create_lokasi_site', 20),
(35, '2025_11_10_022520_create_fasilitas', 21),
(36, '2025_11_10_040957_create_karir', 22),
(37, '2025_11_11_014220_add_multiple_images_to_tentang_kami', 22),
(38, '2025_11_12_041103_create_tatakelola', 23),
(39, '2025_11_12_083734_create_pendahuluan_karir', 24),
(40, '2025_11_12_093752_create_lowongan', 25),
(41, '2025_11_13_035553_create_kategori_lowongan', 26),
(42, '2025_11_13_065602_create_lowongan', 27),
(43, '2025_11_14_035919_create_galeri', 28),
(44, '2025_11_14_065130_create_core_value', 29),
(45, '2025_11_21_023059_add_description2_to_hero_sections_table', 30),
(46, '2025_11_21_034001_add_title_to_portofolio_table', 31),
(47, '2025_11_26_092355_create_lokasi', 32),
(48, '2025_11_28_065409_remove_image_from_sejarah_table', 33),
(49, '2025_11_28_065848_add_description_to_sejarah_table', 34),
(50, '2025_12_03_034635_add_image_to_sejarah_table', 35),
(51, '2025_12_03_062239_add_image_to_milestone_tabel', 36),
(52, '2025_12_03_080419_add_deskripsi_3_to_filosofi_logo_tabel', 37),
(53, '2025_12_04_025502_create_armada', 38),
(54, '2025_12_04_170051_create_desain_tambang', 39),
(55, '2025_12_04_170202_create_jasa_tambang', 39),
(56, '2025_12_04_170219_create_infra_tambang', 39),
(57, '2025_12_04_170331_desain_tambang', 40),
(58, '2025_12_05_092418_create_seo_table', 40),
(59, '2025_12_07_102729_create_seo_table', 41),
(60, '2025_12_07_152115_create_corevalue_table', 42),
(62, '2025_12_07_205907_create_contact_table', 43),
(63, '2025_12_07_221842_create_seo_table', 44),
(64, '2025_12_10_041256_create_galeri_tabel', 44),
(65, '2025_12_10_063024_create_galeri', 45),
(66, '2025_12_10_124740_create_lokasi_lowongan', 46),
(67, '2025_12_10_130416_add_lokasi_id_to_lowongan_table', 47),
(68, '2025_12_11_032200_add_unit_to_armada_table', 48),
(69, '2025_12_11_071657_create_armada', 49),
(70, '2025_12_11_072724_alter_armada_fix_columns', 50),
(71, '2025_12_12_022629_create_tatakelola', 51),
(72, '2025_12_15_091728_create_herosectionvid', 52),
(73, '2025_12_15_093933_add_video_to_hero_table', 53),
(74, '2025_12_17_073058_create_ourservices', 54),
(75, '2025_12_19_074822_create_pencapaian', 55),
(76, '2025_12_21_041811_create_pencapaian', 56),
(77, '2026_01_08_143819_create_settings_table', 57),
(78, '2026_01_08_152605_add_page_to_settings_table', 58);

-- --------------------------------------------------------

--
-- Table structure for table `milestone`
--

CREATE TABLE `milestone` (
  `id` bigint UNSIGNED NOT NULL,
  `tahun` year NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `updated_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `milestone`
--

INSERT INTO `milestone` (`id`, `tahun`, `deskripsi`, `image`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`) VALUES
(1, '2025', 'Melewati 2025 dengan untung yang luar biasa!', NULL, 3, 3, '2025-10-31 08:50:43', '2025-12-03 06:31:57', '2025-12-03 06:31:57', 7),
(2, '2025', 'Test1', NULL, 3, 3, '2025-11-07 07:06:57', '2025-11-21 07:30:13', '2025-11-21 07:30:13', 3),
(3, '2026', 'Deskripsi lebih lengkap tentang kenapa mengambil warna hijau', NULL, 3, 0, '2025-11-12 04:29:02', '2025-11-21 07:30:18', '2025-11-21 07:30:18', 3),
(4, '1992', 'PT. Jagaaman Sarana didirikan di Pontianak, sebagai perusahaan jasa kontraktor jalan, perkebunan dan pertambangan juga peyewaan alat berat.', 'milestones/cH3QjZTAvbtie5QQ4jeg2X1nDITpCUWjebuxy2hR.jpg', 7, 7, '2025-12-03 06:45:02', '2025-12-23 03:48:11', NULL, 0),
(5, '2005', 'Mulai masuk proyek tambang bauksit di PT. Harita Prima Abadi Mineral (HPAM) berlokasi di Kendawangan, Kalimantan Barat untuk kegiatan land clearing dan pekerjaan infrastruktur tambang dari tahun 2005 - 2008.', 'milestones/U39KIOi7yStg4emYrrnt6MRHoIOFw9vd8Awixdgv.jpg', 7, 7, '2025-12-03 06:48:26', '2025-12-19 08:11:16', NULL, 0),
(6, '2005', 'Deskripsi lebih lengkap tentang kenapa mengambil warna hijau', 'milestones/1GC9bkmcSDCxBD0aNi9h6E5purHygouMO1veliEN.png', 7, 0, '2025-12-03 07:03:41', '2025-12-19 08:12:50', '2025-12-19 08:12:50', 7),
(7, '2007', 'Sebagai kontraktor untuk kegiatan land clearing dan pekerjaan infrastruktur di PT. Karya Utama Tambangjaya (KUT) berlokasi di Ketapang, Kalimantan Barat', 'milestones/xn8i6YlWerbYk9Kk3Mf3O2TmsyWTvwq9uMyKmUy5.jpg', 7, 7, '2025-12-03 07:05:04', '2025-12-23 09:03:19', NULL, 0),
(8, '2010', 'Mulai masuk menjadi kontraktor tambang nikel di PT. Manusela Prima Mining (MPM) berlokasi di Seram Barat, Maluku', 'milestones/3iRQDcKLZpSrI3hNH78ibRv1RFMNA5UQyDngY2it.jpg', 7, 7, '2025-12-03 07:05:26', '2025-12-23 09:03:27', NULL, 0),
(9, '2011', 'Sebagai kontraktor tambang nikel di PT. Pernick Sultra (PS) berlokasi di Konawe Utara, Sulawesi Tenggara', 'milestones/1OHUbVQcxU7MUrnOosNb9zBuso2HUcYLx7UCB156.jpg', 7, 7, '2025-12-19 08:14:22', '2025-12-23 09:03:38', NULL, 0),
(10, '2012', 'Mulai melakukan kegiatan operasional tambang Nikel di IUP PT. Sinar Jaya Sultra Utama (SJSU) berlokasi di Konawe Utara, Sulawesi Tenggara', 'milestones/f44MJKfWWWvQz3zNItEq8eutBz32fCQKmdRMw423.jpg', 7, 7, '2025-12-19 08:14:54', '2025-12-23 09:03:09', NULL, 0),
(11, '2017', 'Sebagai kontraktor tambang nikel di PT. Adhi Kartiko Pratama (AKP) berlokasi di Konawe Utara, Sulawesi Tenggara', 'milestones/gVm6DL1zVuiC2e1zBgYlEbQutv7zDkFeUYQnT1go.jpg', 7, 7, '2025-12-19 08:19:36', '2025-12-23 09:03:45', NULL, 0),
(12, '2019', 'Sebagai kontraktor tambang nikel di PT. Alam Raya Abadi (ARA) berlokasi di Halmahera Timur, Maluku Utara', 'milestones/3iPu8tEeTOGwa2sSyLoZNhYfQgz1Aq2WSWT3eb8Q.jpg', 7, 7, '2025-12-19 08:20:52', '2025-12-23 09:03:52', NULL, 0),
(13, '2020', 'Sebagai kontraktor tambang nikel di PT. Baula Petra Buana (BPB) berlokasi di Konawe Selatan, Sulawesi Tenggara', 'milestones/HhiwTSRK2KbivkriJNwDTi0X1oafq2C6CHgFGJih.jpg', 7, 7, '2025-12-19 08:21:40', '2025-12-23 09:04:00', NULL, 0),
(14, '2021', 'Sebagai kontraktor tambang nikel di PT. Koninis Fajar Mineral (KFM) , dan PT. Bumi Sentosa Jaya (BSJ)', 'milestones/SGkf600n8stO3lkeDIZgyTzOlcIPiSmr7958Xvwj.jpg', 7, 0, '2025-12-19 08:23:12', '2025-12-19 08:23:12', NULL, 0),
(15, '2022', 'Pada bulan Juli, PT. Jaga Aman Sejahtera didirikan di Jakarta, yang lebih fokus sebagai perusahaan kontraktor pertambangan, sehingga kontrak pertambang dari JASAN dialihkan ke JATRA.', 'milestones/tqIdC9Z9p12MPewamHaH93CKD231rSFIIvXOwkBX.jpg', 7, 7, '2025-12-19 08:29:41', '2025-12-19 08:30:35', NULL, 0),
(16, '2024', 'Sebagai kontraktor tambang nikel di PT. Mega Haltim Mineral (MHM), PT. Bartra Putra Mulia (BPM), di PT. Karya Alam Abadi (KAA)', 'milestones/4XUdUR4AHbzXlzvg2VAyS99bUrCTFGKzpmvFf8gp.jpg', 7, 0, '2025-12-19 08:37:18', '2025-12-19 08:37:18', NULL, 0),
(17, '2029', 'asas', 'milestones/aTPAgFkFSHcXgdVyO5FXbzjeQ69r16Gy5T3SauWj.jpg', 7, 0, '2025-12-23 03:47:52', '2025-12-23 03:47:56', '2025-12-23 03:47:56', 7);

-- --------------------------------------------------------

--
-- Table structure for table `ourservices`
--

CREATE TABLE `ourservices` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `updated_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ourservices`
--

INSERT INTO `ourservices` (`id`, `title`, `deskripsi`, `video`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`) VALUES
(1, 'test', 'deskripsi', 'ourservices/51bf2fe5-9652-4136-aa81-5910c755c21e.mp4', 7, 0, '2025-12-18 07:44:42', '2025-12-18 07:58:22', '2025-12-18 07:58:22', 7),
(2, 'Land Clearing', 'Pembersihan lahan persiapan tambang', 'ourservices/5cbc0c3e-6c88-4b8b-a89a-f3d37789e077.mp4', 7, 7, '2025-12-18 07:59:37', '2025-12-21 08:00:43', NULL, 0),
(3, 'Top Soil Removal', 'Pengupasan dan pemindahan tanah lapisan atas yang subur', 'ourservices/5eb0ef93-17f1-4693-99a1-5c7be885717b.mp4', 7, 7, '2025-12-18 08:18:49', '2025-12-21 07:41:58', NULL, 0),
(4, 'OB Removal', 'Pengupasan lapisan batuan dan tanah penutup', 'ourservices/abf45658-8f1a-4169-9584-d8b5389bc888.mp4', 7, 7, '2025-12-18 08:19:50', '2025-12-21 07:42:22', NULL, 0),
(5, 'Ore Mining', 'Penambangan bijih nikel', 'ourservices/41783872-7d77-4378-b302-ba4063686fe4.mp4', 7, 7, '2025-12-18 08:20:17', '2025-12-21 07:43:01', NULL, 0),
(6, 'Ore Hauling', 'Pemindahan bijih nikel dari lokasi tambang ke lokasi lain (ETO dan EFO).', 'ourservices/a0606334-108a-4aac-a1f0-8124e652601e.mp4', 7, 7, '2025-12-18 08:20:41', '2025-12-22 23:44:52', NULL, 0),
(7, 'Ore Hauling', 'Deskripsi lebih lengkap tentang kenapa mengambil warna hijau', 'ourservices/a88c6895-9606-48c1-a4ce-ad6dcb01d3e9.mp4', 7, 0, '2025-12-18 08:21:07', '2025-12-18 08:21:12', '2025-12-18 08:21:12', 7),
(8, 'Stockpiling Management', 'Pengelolaan terhadap tumpukan material di area penyimpanan sementara.', 'ourservices/ec49cbb9-45cc-477d-b9a9-f9a5ca9cd4e4.mp4', 7, 7, '2025-12-18 08:21:33', '2025-12-22 22:49:45', NULL, 0),
(9, 'Hauling Ore ke Tongkang', 'Pengangkutan ore dari lokasi tambang ke tongkang', 'ourservices/12a2c2bf-cc6c-441e-a43a-319c73be2666.mp4', 7, 7, '2025-12-18 08:21:50', '2025-12-22 22:58:57', NULL, 0),
(10, 'Pengapalan', 'Transportasi bijih nikel dari satu lokasi ke lokasi lain', 'ourservices/66369a2d-899d-48da-aa99-f63f24bf4448.mp4', 7, 7, '2025-12-21 14:33:15', '2025-12-22 23:01:47', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pencapaian`
--

CREATE TABLE `pencapaian` (
  `id` bigint UNSIGNED NOT NULL,
  `section_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `updated_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pencapaian`
--

INSERT INTO `pencapaian` (`id`, `section_key`, `title`, `unit`, `subtitle`, `description`, `image`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`) VALUES
(1, 'banner_top', '6.000.000 +++', 'WMT', 'Hasilkan', NULL, 'img/pencapaian/9a413cb9-d7ea-49cf-b993-68b4a6dd5785.png', 0, 7, '2025-12-20 21:22:53', '2025-12-22 23:06:49', NULL, 0),
(2, 'card_left', '100', '%', 'Menghadirkan tenaga kerja kompeten', NULL, 'img/pencapaian/4c9d743a-a60d-4eae-891b-03c7ce709329.jpeg', 0, 7, '2025-12-20 21:22:53', '2025-12-21 18:25:53', NULL, 0),
(3, 'card_middle', '232', 'Armada', 'Operasional', 'Siap mendukung produktivitas', 'img/pencapaian/3a662404-c358-4508-948c-70b6bae03282.jpg', 0, 7, '2025-12-20 21:22:53', '2025-12-20 21:51:53', NULL, 0),
(4, 'card_right', '30+', 'Tahun', 'sebagai', 'Sebagai Kontraktor Tambang Nikel', 'img/pencapaian/dc1c50fc-b3bd-432e-b4d2-0d80a3432932.jpeg', 0, 7, '2025-12-20 21:22:53', '2025-12-21 19:26:45', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pendahuluan_karir`
--

CREATE TABLE `pendahuluan_karir` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `updated_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pendahuluan_karir`
--

INSERT INTO `pendahuluan_karir` (`id`, `title`, `image`, `deskripsi`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`) VALUES
(1, 'Bangun Karir Bersama JATRA', 'img/pendahuluan/b1d1aa36-c16b-4a04-bc32-834a0d359695.jpg', 'PT. Jaga Aman Sejahtera membuka kesempatan bagi individu yang berdedikasi untuk bergabung dan berkembang bersama kami. Dengan bergabung bersama PT. Jaga Aman Sejahtera, Anda akan menjadi bagian dari tim yang menjunjung integritas, tanggung jawab, serta kinerja yang berkualitas. Kami percaya bahwa sumber daya manusia adalah aset penting dalam mencapai tujuan perusahaan.', 3, 7, '2025-11-12 09:35:10', '2025-12-22 06:32:55', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `portofolio`
--

CREATE TABLE `portofolio` (
  `id` bigint UNSIGNED NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `updated_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portofolio`
--

INSERT INTO `portofolio` (`id`, `image`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `title`) VALUES
(1, 'portofolio/097c40a5-30f0-4b0d-8eec-f8a86bf8c6c3.png', 3, 0, '2025-11-03 08:06:10', '2025-11-03 08:06:24', '2025-11-03 08:06:24', 3, NULL),
(2, 'portofolio/4649c243-0e83-47cd-bef1-f906dd616c54.jpeg', 3, 0, '2025-11-03 08:06:44', '2025-11-04 03:26:28', '2025-11-04 03:26:28', 3, NULL),
(3, 'portofolio/58f139c3-f2f9-4d9c-bf47-ee84f9e63f87.jpeg', 3, 0, '2025-11-04 03:26:59', '2025-11-04 03:27:33', '2025-11-04 03:27:33', 3, NULL),
(4, 'portofolio/eb94a830-13a0-4eea-ad75-5d81ba36863d.jpg', 3, 0, '2025-11-04 03:28:48', '2025-11-18 07:00:39', '2025-11-18 07:00:39', 3, NULL),
(5, 'portofolio/87ac24c7-5035-427e-8f80-160fba3c794f.jpeg', 3, 0, '2025-11-04 03:29:12', '2025-11-18 07:00:37', '2025-11-18 07:00:37', 3, NULL),
(6, 'portofolio/5da134c6-01fd-4874-8ffd-6b5dd6eb9328.jpeg', 3, 0, '2025-11-04 03:29:57', '2025-11-06 04:33:24', '2025-11-06 04:33:24', 3, NULL),
(7, 'portofolio/4374fad9-ef95-4bfe-9546-62834572eff8.jpg', 3, 0, '2025-11-04 03:31:43', '2025-11-06 04:34:03', '2025-11-06 04:34:03', 3, NULL),
(8, 'portofolio/76eb4260-d933-49dc-bcf2-e2bd99e55bf9.jpg', 3, 0, '2025-11-04 03:35:33', '2025-11-04 03:37:09', '2025-11-04 03:37:09', 3, NULL),
(9, 'portofolio/1e42b3d0-32ef-4e64-aa74-3e684ae9e4cf.jpg', 3, 0, '2025-11-04 03:35:47', '2025-11-04 03:36:59', '2025-11-04 03:36:59', 3, NULL),
(10, 'portofolio/21e7704e-5d91-44ee-ba08-be61c1584a5a.jpg', 3, 0, '2025-11-06 04:37:46', '2025-11-18 07:00:35', '2025-11-18 07:00:35', 3, NULL),
(11, 'portofolio/bc221535-3477-4060-87b5-e170d2a03976.jpg', 3, 0, '2025-11-06 07:39:09', '2025-11-18 07:00:33', '2025-11-18 07:00:33', 3, NULL),
(12, 'portofolio/3834527b-80a9-42be-bdab-a295085303d1.jpg', 3, 0, '2025-11-11 03:24:36', '2025-11-11 03:25:04', '2025-11-11 03:25:04', 3, NULL),
(13, 'portofolio/250157f6-3c7d-4904-bfe3-a8ee233f9b9d.png', 3, 3, '2025-11-18 07:01:08', '2025-12-14 21:46:38', '2025-12-14 21:46:38', 7, 'Manokwari'),
(14, 'portofolio/ae152a4d-6b4c-420c-ad83-3fb95cce71e6.png', 3, 3, '2025-11-18 07:12:43', '2025-12-14 21:46:22', '2025-12-14 21:46:22', 7, 'Kendari'),
(15, 'portofolio/5fcca571-e9ec-4fbb-9d76-29f893f0f693.png', 3, 7, '2025-11-21 03:30:43', '2025-12-14 21:46:28', '2025-12-14 21:46:28', 7, 'Kendari'),
(16, 'portofolio/bbe6b079-c264-43b4-badc-dfa2e905a5f2.png', 3, 7, '2025-11-21 03:31:14', '2025-12-11 06:50:26', '2025-12-11 06:50:26', 7, 'Bandung'),
(17, 'portofolio/9fc94b26-1283-43b4-8244-1c6834954a2a.png', 3, 3, '2025-11-21 03:33:22', '2025-12-07 19:55:42', '2025-12-07 19:55:42', 7, 'Denpasar'),
(18, 'portofolio/3690479f-1607-494e-9c24-cccddac52bc6.png', 3, 3, '2025-11-21 03:33:30', '2025-12-10 00:14:54', '2025-12-10 00:14:54', 7, 'Bandung'),
(19, 'portofolio/0e72c4d5-4274-44fe-8b63-0591242443e8.jpg', 7, 0, '2025-12-10 00:17:44', '2025-12-10 10:12:25', '2025-12-10 10:12:25', 7, 'Portofolio'),
(20, 'portofolio/495e4619-e421-4c17-8595-2f5f06ca981a.jpg', 7, 0, '2025-12-10 00:19:10', '2025-12-10 10:12:16', '2025-12-10 10:12:16', 7, 'Kendari'),
(21, 'portofolio/f383c0bc-5771-4008-8324-df0bbff3d876.jpg', 7, 0, '2025-12-11 06:51:32', '2025-12-14 21:38:38', '2025-12-14 21:38:38', 7, 'Kendari'),
(22, 'portofolio/3d7d7b81-9f0d-4ecd-ae5a-ed1d665a3148.jpeg', 7, 0, '2025-12-14 21:40:24', '2025-12-14 21:46:33', '2025-12-14 21:46:33', 7, 'Site ANI'),
(23, 'portofolio/2c66b7d1-289f-4078-8198-abd7e7e3c8f8.jpeg', 7, 0, '2025-12-14 21:41:24', '2025-12-14 21:46:15', '2025-12-14 21:46:15', 7, 'Site ANI'),
(24, 'portofolio/76505b11-ade4-4d07-8622-2279f412bec6.JPG', 7, 0, '2025-12-14 21:42:50', '2025-12-14 21:42:50', NULL, 0, 'Site BPM'),
(25, 'portofolio/7b480f0f-2499-45a5-a8df-09d4a0f3280f.jpg', 7, 0, '2025-12-14 21:43:56', '2025-12-14 21:43:56', NULL, 0, 'Site BPM'),
(26, 'portofolio/1db3cf5d-30ca-4c28-aaaf-a52d85f88538.JPG', 7, 0, '2025-12-14 21:46:08', '2025-12-14 21:46:08', NULL, 0, 'Site BPM'),
(27, 'portofolio/875fa471-2780-4981-8c5f-bef1352e8bd2.jpeg', 7, 0, '2025-12-14 21:50:13', '2025-12-14 21:50:13', NULL, 0, 'Site BSJ'),
(28, 'portofolio/c830fd00-cccc-404b-aefd-82c9acedd490.jpg', 7, 7, '2025-12-14 21:51:22', '2025-12-23 00:03:15', NULL, 0, 'Site KFM'),
(29, 'portofolio/54e9b59b-ba2b-41e6-94bd-16a2f5ed8d30.jpg', 7, 0, '2025-12-23 00:10:15', '2025-12-23 00:10:30', '2025-12-23 00:10:30', 7, 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `sejarah`
--

CREATE TABLE `sejarah` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `updated_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int NOT NULL DEFAULT '0',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sejarah`
--

INSERT INTO `sejarah` (`id`, `title`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `description`, `image`) VALUES
(1, 'Sejarah JATRA', 3, 7, '2025-10-29 06:36:16', '2026-01-12 02:57:09', NULL, 0, 'Didirikan pertama kali di Pontianak pada tahun 1992, kami memulai usaha sebagai bagian dari Jaga Aman Sarana, sebuah perusahaan penyewaan alat berat. Seiring waktu, kami terus menyempurnakan layanan kepada pelanggan dan berkomitmen penuh terhadap kualitas pelayanan kami.\r\n\r\nPada tahun 2005, kami mendapat kesempatan untuk berkembang menjadi perusahaan kontraktor dengan membuka lokasi pertambangan bauksit di Kalimantan Barat. Kini, dengan bangga kami memperkenalkan perkembangan kami dari bagian Jaga Aman Sarana menjadi perusahaan mandiri Jaga Aman Sejahtera, yang berfokus pada pembukaan dan penggalian lokasi pertambangan nikel.', 'sejarah/YdUCvX1ubKlCNU3d4AuS3tSf4KhhTOD3yyfvqpZw.png');

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `robots` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canonical_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('vZWtkXXcHTcUZSPUe7JPjSfNbcqKgdX1OrGpVFFi', 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoic1lFQTJVTkswZUlFR2RWRkpXS3JSZHdjcVNVa083MlNSY1FhNHVRRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo3OiJiZXJhbmRhIjt9czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjc7fQ==', 1768960734);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `feature_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `feature_key`, `feature_name`, `page`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'beranda_cta', 'CTA Tentang Kami', 'beranda', 1, '2026-01-08 08:26:47', '2026-01-20 18:23:22'),
(2, 'beranda_pencapaian', 'Pencapaian', 'beranda', 1, '2026-01-08 08:26:47', '2026-01-20 18:26:43'),
(3, 'beranda_portofolio', 'Portofolio', 'beranda', 1, '2026-01-08 08:26:47', '2026-01-08 18:41:13'),
(4, 'tentang_sejarah', 'Sejarah', 'tentang_kami', 1, '2026-01-08 08:26:47', '2026-01-20 18:27:41'),
(5, 'tentang_visi_misi', 'Visi & Misi', 'tentang_kami', 1, '2026-01-08 08:26:47', '2026-01-08 18:41:34'),
(6, 'tentang_filosofi_logo', 'Filosofi Logo', 'tentang_kami', 1, '2026-01-08 08:26:47', '2026-01-08 08:26:47'),
(7, 'tentang_nilai_perusahaan', 'Nilai Perusahaan', 'tentang_kami', 1, '2026-01-08 08:26:47', '2026-01-08 18:41:52'),
(8, 'tentang_rekam_jejak', 'Rekam Jejak', 'tentang_kami', 1, '2026-01-08 08:26:47', '2026-01-08 08:26:47'),
(9, 'tentang_struktur_organisasi', 'Struktur Organisasi', 'tentang_kami', 1, '2026-01-08 08:26:47', '2026-01-08 08:26:47'),
(10, 'layanan_utama', 'Layanan Kami', 'layanan', 1, '2026-01-08 08:26:48', '2026-01-08 21:03:30'),
(11, 'layanan_lokasi_site', 'Lokasi Site', 'layanan', 1, '2026-01-08 08:26:48', '2026-01-08 10:30:24'),
(12, 'layanan_armada', 'Armada', 'layanan', 1, '2026-01-08 08:26:48', '2026-01-08 21:03:31'),
(13, 'tata_kelola', 'Tata Kelola', 'tata_kelola', 1, '2026-01-08 08:26:48', '2026-01-08 23:21:57'),
(14, 'karir_pendahuluan', 'Pendahuluan', 'karir', 1, '2026-01-08 08:26:48', '2026-01-08 08:26:48'),
(15, 'karir_lowongan', 'Lowongan', 'karir', 1, '2026-01-08 08:26:48', '2026-01-08 10:27:43'),
(16, 'karir_galeri', 'Galeri', 'karir', 1, '2026-01-08 08:26:48', '2026-01-08 19:24:48');

-- --------------------------------------------------------

--
-- Table structure for table `strukturorg`
--

CREATE TABLE `strukturorg` (
  `id` bigint UNSIGNED NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `updated_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `strukturorg`
--

INSERT INTO `strukturorg` (`id`, `image`, `deskripsi`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`) VALUES
(1, 'img/strukturorg/d513fbbe-7d5b-4e24-a489-8d642ae5c959.png', 'Struktur organisasi PT. Jaga Aman Sejahtera dirancang untuk memastikan setiap proses operasional pertambangan Nikel berjalan efektif, terukur, dan berstandar tinggi. Di bawah koordinasi Board of Directors, setiap unit manajerial memiliki peran strategis dalam mendukung kelancaran proyek, pengelolaan fasilitas, keselamatan kerja, hingga administrasi dan rantai pasok.', 3, 7, '2025-11-07 04:21:41', '2025-12-22 07:47:44', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tatakelola`
--

CREATE TABLE `tatakelola` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `updated_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tatakelola`
--

INSERT INTO `tatakelola` (`id`, `icon`, `title`, `deskripsi`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`) VALUES
(1, 'tatakelol/14326a7e-ddfa-4ed2-92a2-95bb84632126.png', 'Anti Korupsi', 'Deskripsi lebih lengkap tentang kenapa mengambil warna hijau', 7, 0, '2025-12-11 19:58:59', '2025-12-14 18:32:28', '2025-12-14 18:32:28', 7),
(2, 'tatakelol/af1b118b-bcc0-43fb-a962-b57765894042.jpg', 'we', 'Test1', 7, 0, '2025-12-11 20:10:31', '2025-12-14 18:32:21', '2025-12-14 18:32:21', 7),
(3, 'tatakelol/b3305bc8-d743-49a8-aa0f-1e7550e0be92.png', 'test', 'Manokwari, Papua Barat', 7, 0, '2025-12-11 20:14:49', '2025-12-14 18:31:44', '2025-12-14 18:31:44', 7),
(4, 'tatakelol/54ffcfe0-ace7-4ce9-9230-96856aed4e15.jpg', 'Test', 'Deskripsi lebih lengkap tentang kenapa mengambil warna hijau', 7, 0, '2025-12-11 20:15:24', '2025-12-14 18:27:59', '2025-12-14 18:27:59', 7),
(5, 'tatakelol/a6a89820-f234-4662-9b29-7c850db67a5c.png', 'res', 'Deskripsi lebih lengkap tentang kenapa mengambil warna hijau', 7, 0, '2025-12-11 20:21:44', '2025-12-14 18:20:39', '2025-12-14 18:20:39', 7),
(6, 'tatakelol/d4f21811-379d-42e6-ba1f-9725e35ad03c.png', 'ENJI', 'Deskripsi lebih lengkap tentang kenapa mengambil warna hijau', 7, 0, '2025-12-11 20:41:10', '2025-12-14 18:19:00', '2025-12-14 18:19:00', 7),
(7, 'tatakelol/251811d7-e002-4e52-9b29-308dc8753163.jpeg', 'test', 'deskripsi', 7, 0, '2025-12-14 18:32:03', '2025-12-14 18:32:16', '2025-12-14 18:32:16', 7),
(8, 'tatakelola/f2bb77ba-532d-4271-9f47-549160dfee91.png', 'Kode Etik', 'Sebagai perusahaan tambang nikel, fokus utama kami adalah menjalankan setiap proyek dengan efisiensi tinggi tanpa mengabaikan aspek keselamatan dan kelestarian alam. Kekuatan kami terletak pada tim profesional yang ahli di bidangnya, yang siap menghadirkan solusi terbaik demi kepuasan klien dan kesejahteraan lingkungan di sekitar wilayah operasional kami.', 7, 7, '2025-12-14 18:48:27', '2025-12-22 23:15:12', NULL, 0),
(9, 'tatakelola/bcc2a45f-1df3-4e8b-8a70-a2236c8c7cc3.png', 'Anti Korupsi', 'Komitmen teguh untuk menjaga integritas dan transparansi dalam seluruh operasi bisnis, mencegah dan menindak tegas segala bentuk praktik korupsi.', 7, 7, '2025-12-14 18:52:54', '2025-12-22 08:33:22', NULL, 0),
(10, 'tatakelola/2ccb585b-8d30-4483-b18f-edbe37058b94.png', 'Internal Audit', 'Melakukan pengawasan independen dan objektif untuk mengevaluasi efektivitas manajemen risiko, pengendalian, dan proses tata kelola perusahaan.', 7, 7, '2025-12-14 18:53:22', '2025-12-22 08:33:36', NULL, 0),
(11, 'tatakelola/08003329-7eeb-4a24-b23f-5de7883e1462.png', 'Manajemen Resiko', 'Proses sistematis untuk mengidentifikasi, menganalisis, mengevaluasi, mengendalikan, dan memantau risiko yang dapat mempengaruhi pencapaian tujuan perusahaan.', 7, 7, '2025-12-14 18:53:49', '2025-12-21 15:49:06', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tentang_kami`
--

CREATE TABLE `tentang_kami` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `updated_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int NOT NULL DEFAULT '0',
  `image_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tentang_kami`
--

INSERT INTO `tentang_kami` (`id`, `title`, `description`, `image`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `image_1`, `image_2`, `image_3`, `image_4`, `image_5`, `image_6`) VALUES
(1, 'Inovasi yang Membentuk Masa Depan Industri Nikel', 'PT. Jaga Aman Sejahtera adalah pemimpin dan kontraktor pertambangan Nikel di Indonesia. Kami berpengalaman luas selama 15 tahun, selalu berdedikasi pada operasional yang aman, efisien, dan berkelanjutan, serta didukung tim profesional dan teknologi terkini.', 'img/tentangkami/d9a85f76-dcdf-4444-be59-93cebba30149.jpg', 3, 7, '2025-10-28 02:53:35', '2025-12-09 00:05:18', NULL, 0, 'img/tentangkami/5d641b1f-6f6d-49ee-9837-a1c74ac120c6.png', 'img/tentangkami/4f6f4a9a-64cc-4c27-9172-ff6973de4a4e.jpg', 'img/tentangkami/6167d97a-00fe-4084-905a-d123cfbe5e26.png', 'img/tentangkami/13befc8a-5f93-42ae-9286-81273408091e.jpg', 'img/tentangkami/0b6f01d7-7977-4d48-bd39-461c3ab75507.jpg', 'img/tentangkami/f73198bf-1a74-474e-944c-fdf6051fc1b9.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'jatra', 'jatra', 'jatra@gmail.com', NULL, '$2y$12$CUFxfa6j37RmAPX0snZELuhUNW8L4NKicFrJE9qLD8fjRme5siFUC', NULL, '2025-11-30 13:03:37', '2026-01-19 01:35:35');

-- --------------------------------------------------------

--
-- Table structure for table `visi_misi`
--

CREATE TABLE `visi_misi` (
  `id` bigint UNSIGNED NOT NULL,
  `visi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `misi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `updated_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visi_misi`
--

INSERT INTO `visi_misi` (`id`, `visi`, `misi`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`) VALUES
(1, 'Menjadi perusahaan pertambangan nikel terkemuka di Indonesia yang mempelopori industri nikel berkelanjutan serta berkontribusi bagi kesejahteraan masyarakat.', '1.  Memberikan layanan terbaik dalam cakupan industri nikel kepada pelanggan kami.\r\n2. Mengelola sumber daya pertambangan dengan cara yang berkelanjutan dan bertanggung jawab terhadap lingkungan, masyarakat, dan pemangku kepentingan lainnya.\r\n3. Menjadi agen perubahan positif dalam industri nikel dengan memimpin inovasi teknologi dan praktik manajemen berkelanjutan demi meningkatkan kesejahteraan bagi seluruh pemangku kepentingan.\r\n4. Meningkatkan kinerja perusahaan dan mengoptimalkan nilai bagi pemegang saham serta pemangku kepentingan dengan berkomitmen untuk beroperasi dengan integritas dan transparansi.', 7, 7, '2025-12-03 06:08:41', '2025-12-23 06:21:53', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `armada`
--
ALTER TABLE `armada`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `corevalue`
--
ALTER TABLE `corevalue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `filosofi_logo`
--
ALTER TABLE `filosofi_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hero_section`
--
ALTER TABLE `hero_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_lowongan`
--
ALTER TABLE `kategori_lowongan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasi_lowongan`
--
ALTER TABLE `lokasi_lowongan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasi_site`
--
ALTER TABLE `lokasi_site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lowongan`
--
ALTER TABLE `lowongan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lowongan_kategori_id_foreign` (`kategori_id`),
  ADD KEY `lowongan_lokasi_id_foreign` (`lokasi_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `milestone`
--
ALTER TABLE `milestone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ourservices`
--
ALTER TABLE `ourservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pencapaian`
--
ALTER TABLE `pencapaian`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pencapaian_section_key_unique` (`section_key`);

--
-- Indexes for table `pendahuluan_karir`
--
ALTER TABLE `pendahuluan_karir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portofolio`
--
ALTER TABLE `portofolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sejarah`
--
ALTER TABLE `sejarah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seo_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_feature_key_unique` (`feature_key`);

--
-- Indexes for table `strukturorg`
--
ALTER TABLE `strukturorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tatakelola`
--
ALTER TABLE `tatakelola`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tentang_kami`
--
ALTER TABLE `tentang_kami`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visi_misi`
--
ALTER TABLE `visi_misi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `armada`
--
ALTER TABLE `armada`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `corevalue`
--
ALTER TABLE `corevalue`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filosofi_logo`
--
ALTER TABLE `filosofi_logo`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `hero_section`
--
ALTER TABLE `hero_section`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_lowongan`
--
ALTER TABLE `kategori_lowongan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `lokasi_lowongan`
--
ALTER TABLE `lokasi_lowongan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lokasi_site`
--
ALTER TABLE `lokasi_site`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lowongan`
--
ALTER TABLE `lowongan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `milestone`
--
ALTER TABLE `milestone`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ourservices`
--
ALTER TABLE `ourservices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pencapaian`
--
ALTER TABLE `pencapaian`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pendahuluan_karir`
--
ALTER TABLE `pendahuluan_karir`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `portofolio`
--
ALTER TABLE `portofolio`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sejarah`
--
ALTER TABLE `sejarah`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `strukturorg`
--
ALTER TABLE `strukturorg`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tatakelola`
--
ALTER TABLE `tatakelola`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tentang_kami`
--
ALTER TABLE `tentang_kami`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `visi_misi`
--
ALTER TABLE `visi_misi`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lowongan`
--
ALTER TABLE `lowongan`
  ADD CONSTRAINT `lowongan_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori_lowongan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lowongan_lokasi_id_foreign` FOREIGN KEY (`lokasi_id`) REFERENCES `lokasi_lowongan` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
