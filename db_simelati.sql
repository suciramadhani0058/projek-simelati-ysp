-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2026 at 06:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_simelati`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_log`
--

CREATE TABLE `audit_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `aktivitas` varchar(50) NOT NULL,
  `modul` varchar(50) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_log`
--

INSERT INTO `audit_log` (`id`, `user_id`, `aktivitas`, `modul`, `keterangan`, `created_at`) VALUES
(1, 1, 'login', 'auth', 'Login sebagai admin', '2026-07-11 19:45:23'),
(2, 1, 'tambah', 'petani', 'Tambah petani: Suci Ramadhani', '2026-07-11 21:17:50'),
(3, 1, 'login', 'auth', 'Login sebagai admin', '2026-07-12 10:04:38'),
(4, 1, 'edit', 'produk', 'Edit produk: Melati Bersih', '2026-07-12 10:25:23'),
(5, 1, 'tambah', 'pelanggan', 'Tambah pelanggan: Yasmin Melati', '2026-07-12 10:27:01'),
(6, 1, 'tambah', 'stok_masuk', 'Melati masuk MM-20260712-0001 (20 kg)', '2026-07-12 10:51:06'),
(7, 1, 'tambah', 'stok_masuk', 'Melati masuk MM-20260712-0002 (2 kg)', '2026-07-12 10:57:44'),
(8, 1, 'tambah', 'sortir', 'Sortir SRT-20260712-0001: bersih 1.5kg, karuk 0.4kg', '2026-07-12 11:00:42'),
(9, 1, 'tambah', 'produksi', 'Produksi PRO-20260712-0001: 1.5kg -> 8 ronce', '2026-07-12 11:01:13'),
(10, 1, 'tambah', 'pesanan', 'Pesanan baru ORD-20260712-0001', '2026-07-12 11:09:26'),
(11, 1, 'edit', 'pesanan', 'Ubah status pesanan ORD-20260712-0001 menjadi packing', '2026-07-12 11:39:05'),
(12, 1, 'login', 'auth', 'Login sebagai admin', '2026-07-12 18:22:05'),
(13, 1, 'edit', 'pelanggan', 'Edit pelanggan: Yasmin Melati', '2026-07-12 18:22:48'),
(14, 1, 'tambah', 'sortir', 'Sortir SRT-20260712-0002: bersih 18kg, karuk 1kg', '2026-07-12 18:23:29'),
(15, 1, 'login', 'auth', 'Login sebagai admin', '2026-07-13 15:07:00'),
(16, 1, 'login', 'auth', 'Login sebagai admin', '2026-07-13 15:07:02'),
(17, 1, 'tambah', 'pesanan', 'Pesanan baru ORD-20260713-0001', '2026-07-13 17:31:49'),
(18, 1, 'tambah', 'pesanan', 'Pesanan baru ORD-20260713-0002', '2026-07-13 19:47:32'),
(19, 1, 'tambah', 'pesanan', 'Pesanan baru ORD-20260713-0003', '2026-07-13 20:03:43'),
(20, 1, 'tambah', 'pembayaran', 'Pembayaran PAY-20260713-0001 untuk pesanan #1', '2026-07-13 20:04:14'),
(21, 1, 'edit', 'pengiriman', 'Update pengiriman untuk pesanan #1', '2026-07-13 20:07:37'),
(22, 1, 'edit', 'pengiriman', 'Update pengiriman untuk pesanan #1', '2026-07-13 20:39:55'),
(23, 1, 'tambah', 'pengiriman', 'Tambah pengiriman untuk pesanan #1', '2026-07-13 20:50:23'),
(24, 1, 'edit', 'pengiriman', 'Update pengiriman ID #1', '2026-07-13 20:57:03'),
(25, 1, 'tambah', 'petani', 'Tambah petani: Ghazi', '2026-07-13 22:20:08'),
(26, 1, 'tambah', 'pelanggan', 'Tambah pelanggan: Suci Ramadhani', '2026-07-13 22:33:03'),
(27, 1, 'edit', 'pengiriman', 'Update pengiriman ID #1', '2026-07-13 22:36:26'),
(28, 1, 'tambah', 'stok_masuk', 'Melati masuk MM-20260713-0001 (26 kg)', '2026-07-13 22:37:04'),
(29, 1, 'tambah', 'sortir', 'Sortir SRT-20260713-0001: bersih 22kg, karuk 2kg', '2026-07-13 22:37:30'),
(30, 1, 'tambah', 'produksi', 'Produksi PRO-20260713-0001: 5kg -> 20 ronce', '2026-07-13 22:37:40'),
(31, 1, 'tambah', 'produksi', 'Produksi PRO-20260713-0002: 5kg -> 20 ronce', '2026-07-13 22:37:40'),
(32, 1, 'edit', 'kategori_produk', 'Edit kategori: Melati Segar', '2026-07-13 22:38:18'),
(33, 1, 'edit', 'produk', 'Edit produk: Melati Bersih', '2026-07-13 22:38:32'),
(34, 1, 'tambah', 'pesanan', 'Pesanan baru ORD-20260713-0004', '2026-07-13 22:39:13'),
(35, 1, 'tambah', 'pesanan', 'Pesanan baru ORD-20260713-0005', '2026-07-13 22:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pesanan`
--

CREATE TABLE `detail_pesanan` (
  `id` int(11) UNSIGNED NOT NULL,
  `pesanan_id` int(11) UNSIGNED NOT NULL,
  `produk_id` int(11) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `subtotal` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`id`, `pesanan_id`, `produk_id`, `jumlah`, `harga`, `subtotal`) VALUES
(1, 1, 3, 1, 5000.00, 5000.00),
(2, 2, 1, 1, 45000.00, 45000.00),
(3, 2, 2, 1, 30000.00, 30000.00),
(6, 4, 1, 1, 45000.00, 45000.00),
(7, 5, 3, 1, 5000.00, 5000.00),
(8, 6, 1, 1, 45000.00, 45000.00),
(9, 7, 3, 1, 5000.00, 5000.00);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_produk`
--

INSERT INTO `kategori_produk` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Melati Segar', '2026-07-11 12:04:40', '2026-07-13 22:38:18'),
(2, 'Ronce Melati', '2026-07-11 12:04:40', '2026-07-11 12:04:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2025-01-01-000001', 'App\\Database\\Migrations\\CreateRoles', 'default', 'App', 1783771447, 1),
(2, '2025-01-01-000002', 'App\\Database\\Migrations\\CreateUsers', 'default', 'App', 1783771447, 1),
(3, '2025-01-01-000003', 'App\\Database\\Migrations\\CreatePetani', 'default', 'App', 1783771447, 1),
(4, '2025-01-01-000004', 'App\\Database\\Migrations\\CreateKategoriProduk', 'default', 'App', 1783771447, 1),
(5, '2025-01-01-000005', 'App\\Database\\Migrations\\CreateProduk', 'default', 'App', 1783771447, 1),
(6, '2025-01-01-000006', 'App\\Database\\Migrations\\CreateStok', 'default', 'App', 1783771447, 1),
(7, '2025-01-01-000007', 'App\\Database\\Migrations\\CreateStokMasuk', 'default', 'App', 1783771447, 1),
(8, '2025-01-01-000008', 'App\\Database\\Migrations\\CreateSortir', 'default', 'App', 1783771447, 1),
(9, '2025-01-01-000009', 'App\\Database\\Migrations\\CreateProduksi', 'default', 'App', 1783771447, 1),
(10, '2025-01-01-000010', 'App\\Database\\Migrations\\CreateMutasiStok', 'default', 'App', 1783771447, 1),
(11, '2025-01-01-000011', 'App\\Database\\Migrations\\CreatePelanggan', 'default', 'App', 1783771447, 1),
(12, '2025-01-01-000012', 'App\\Database\\Migrations\\CreatePesanan', 'default', 'App', 1783771447, 1),
(13, '2025-01-01-000013', 'App\\Database\\Migrations\\CreateDetailPesanan', 'default', 'App', 1783771447, 1),
(14, '2025-01-01-000014', 'App\\Database\\Migrations\\CreatePembayaran', 'default', 'App', 1783771447, 1),
(15, '2025-01-01-000015', 'App\\Database\\Migrations\\CreatePengiriman', 'default', 'App', 1783771447, 1),
(16, '2025-01-01-000016', 'App\\Database\\Migrations\\CreateAuditLog', 'default', 'App', 1783771447, 1),
(17, '2025-01-01-000017', 'App\\Database\\Migrations\\CreatePengaturan', 'default', 'App', 1783771447, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_stok`
--

CREATE TABLE `mutasi_stok` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `produk_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `tipe_transaksi` enum('masuk','keluar') NOT NULL,
  `sumber_transaksi` enum('sortir','produksi','penjualan','adjustment') NOT NULL,
  `sumber_id` int(11) DEFAULT NULL,
  `jumlah` decimal(10,2) NOT NULL,
  `stok_sebelum` decimal(10,2) NOT NULL,
  `stok_sesudah` decimal(10,2) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mutasi_stok`
--

INSERT INTO `mutasi_stok` (`id`, `produk_id`, `user_id`, `tipe_transaksi`, `sumber_transaksi`, `sumber_id`, `jumlah`, `stok_sebelum`, `stok_sesudah`, `keterangan`, `created_at`) VALUES
(1, 1, 1, 'masuk', 'sortir', 1, 1.50, 0.00, 1.50, 'Hasil sortir SRT-20260712-0001', '2026-07-12 11:00:42'),
(2, 2, 1, 'masuk', 'sortir', 1, 0.40, 0.00, 0.40, 'Hasil sortir SRT-20260712-0001', '2026-07-12 11:00:42'),
(3, 1, 1, 'keluar', 'produksi', 1, 1.50, 1.50, 0.00, 'Bahan baku produksi PRO-20260712-0001', '2026-07-12 11:01:13'),
(4, 3, 1, 'masuk', 'produksi', 1, 8.00, 0.00, 8.00, 'Hasil produksi PRO-20260712-0001', '2026-07-12 11:01:13'),
(5, 3, 1, 'keluar', 'penjualan', 1, 1.00, 8.00, 7.00, 'Pesanan ORD-20260712-0001', '2026-07-12 11:09:26'),
(6, 1, 1, 'masuk', 'sortir', 2, 18.00, 0.00, 18.00, 'Hasil sortir SRT-20260712-0002', '2026-07-12 18:23:29'),
(7, 2, 1, 'masuk', 'sortir', 2, 1.00, 0.40, 1.40, 'Hasil sortir SRT-20260712-0002', '2026-07-12 18:23:29'),
(8, 1, 1, 'keluar', 'penjualan', 2, 1.00, 18.00, 17.00, 'Pesanan ORD-20260713-0001', '2026-07-13 17:31:49'),
(9, 2, 1, 'keluar', 'penjualan', 2, 1.00, 1.40, 0.40, 'Pesanan ORD-20260713-0001', '2026-07-13 17:31:49'),
(11, 1, 1, 'keluar', 'penjualan', 4, 1.00, 17.00, 16.00, 'Pesanan ORD-20260713-0002', '2026-07-13 19:47:32'),
(12, 3, 1, 'keluar', 'penjualan', 5, 1.00, 7.00, 6.00, 'Pesanan ORD-20260713-0003', '2026-07-13 20:03:43'),
(13, 1, 1, 'masuk', 'sortir', 3, 22.00, 16.00, 38.00, 'Hasil sortir SRT-20260713-0001', '2026-07-13 22:37:30'),
(14, 2, 1, 'masuk', 'sortir', 3, 2.00, 0.40, 2.40, 'Hasil sortir SRT-20260713-0001', '2026-07-13 22:37:30'),
(15, 1, 1, 'keluar', 'produksi', 2, 5.00, 38.00, 33.00, 'Bahan baku produksi PRO-20260713-0001', '2026-07-13 22:37:40'),
(16, 3, 1, 'masuk', 'produksi', 2, 20.00, 6.00, 26.00, 'Hasil produksi PRO-20260713-0001', '2026-07-13 22:37:40'),
(17, 1, 1, 'keluar', 'produksi', 3, 5.00, 33.00, 28.00, 'Bahan baku produksi PRO-20260713-0002', '2026-07-13 22:37:40'),
(18, 3, 1, 'masuk', 'produksi', 3, 20.00, 26.00, 46.00, 'Hasil produksi PRO-20260713-0002', '2026-07-13 22:37:40'),
(19, 1, 1, 'keluar', 'penjualan', 6, 1.00, 28.00, 27.00, 'Pesanan ORD-20260713-0004', '2026-07-13 22:39:13'),
(20, 3, 1, 'keluar', 'penjualan', 7, 1.00, 46.00, 45.00, 'Pesanan ORD-20260713-0005', '2026-07-13 22:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `instagram` varchar(50) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nama`, `alamat`, `telepon`, `instagram`, `catatan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Yasmin Melati', 'Jl. Ahmad Yani No. 25, Kel. Mulyoharjo, Kec. Pemalang, Kab. Pemalang, Jawa Tengah 52319', '081234567890', '@yasminmelati', 'Pelanggan tetap', '2026-07-12 10:27:01', '2026-07-12 18:22:48', NULL),
(2, 'Suci Ramadhani', 'Jl. Mawar Melati No 97, Semarang, Jawa Tengah', '089765458765', '@suci130', 'Pedagang melati ', '2026-07-13 22:33:03', '2026-07-13 22:33:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) UNSIGNED NOT NULL,
  `pesanan_id` int(11) UNSIGNED NOT NULL,
  `nomor_pembayaran` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `metode` varchar(30) NOT NULL,
  `nominal` decimal(12,2) NOT NULL,
  `status` enum('pending','terverifikasi','ditolak') NOT NULL DEFAULT 'pending',
  `bukti_transfer` varchar(255) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `pesanan_id`, `nomor_pembayaran`, `tanggal`, `metode`, `nominal`, `status`, `bukti_transfer`, `catatan`, `created_at`, `updated_at`) VALUES
(1, 1, 'PAY-20260713-0001', '2026-07-13', 'tunai', 25000.00, 'terverifikasi', NULL, NULL, '2026-07-13 20:04:14', '2026-07-13 22:41:06'),
(2, 6, 'PAY-20260713-0002', '2026-07-13', 'tunai', 55000.00, 'terverifikasi', NULL, '', '2026-07-13 22:50:01', '2026-07-13 22:53:53'),
(3, 4, 'PAY-20260713-0003', '2026-07-13', 'tunai', 53000.00, 'terverifikasi', NULL, '', '2026-07-13 22:54:46', '2026-07-13 23:02:43'),
(4, 2, 'PAY-20260713-0004', '2026-07-13', 'tunai', 82000.00, 'terverifikasi', NULL, '', '2026-07-13 22:59:07', '2026-07-13 23:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(11) UNSIGNED NOT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `key` varchar(50) NOT NULL,
  `value` text DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `updated_by`, `key`, `value`, `keterangan`, `updated_at`) VALUES
(1, NULL, 'nama_perusahaan', 'YSP Jasmine', 'Nama perusahaan pada laporan & header', '2026-07-11 12:04:40'),
(2, NULL, 'logo_perusahaan', '', 'Path file logo', '2026-07-11 12:04:40'),
(3, NULL, 'alamat_perusahaan', 'Cikarang, Jawa Barat', 'Alamat perusahaan', '2026-07-11 12:04:40'),
(4, NULL, 'telepon_perusahaan', '08xxxxxxxxxx', 'Nomor telepon perusahaan', '2026-07-11 12:04:40'),
(5, NULL, 'email_perusahaan', 'info@yspjasmine.id', 'Email perusahaan', '2026-07-11 12:04:40'),
(6, NULL, 'stok_minimum_default', '5', 'Nilai default stok minimum produk baru', '2026-07-11 12:04:40'),
(7, NULL, 'footer_laporan', 'Dicetak otomatis oleh SiMelati', 'Teks footer pada laporan PDF/Excel', '2026-07-11 12:04:40');

-- --------------------------------------------------------

--
-- Table structure for table `pengiriman`
--

CREATE TABLE `pengiriman` (
  `id` int(11) UNSIGNED NOT NULL,
  `pesanan_id` int(11) UNSIGNED NOT NULL,
  `nomor_resi` varchar(50) DEFAULT NULL,
  `jasa_pengiriman` varchar(50) DEFAULT NULL,
  `alamat_pengiriman` text NOT NULL,
  `tanggal_kirim` date DEFAULT NULL,
  `status` enum('menunggu','dikirim','sampai') NOT NULL DEFAULT 'menunggu',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengiriman`
--

INSERT INTO `pengiriman` (`id`, `pesanan_id`, `nomor_resi`, `jasa_pengiriman`, `alamat_pengiriman`, `tanggal_kirim`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '-', 'Delivery ', 'Jl. Kusuma Bangsa No.45, Pekalongan barat', '2026-07-13', 'dikirim', '2026-07-13 20:50:23', '2026-07-13 22:36:26');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) UNSIGNED NOT NULL,
  `pelanggan_id` int(11) UNSIGNED NOT NULL,
  `nomor_pesanan` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `ongkir` decimal(10,2) NOT NULL DEFAULT 0.00,
  `grand_total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total_dibayar` decimal(15,2) DEFAULT 0.00,
  `status` enum('menunggu','diproses','packing','dikirim','selesai','batal') NOT NULL DEFAULT 'menunggu',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `pelanggan_id`, `nomor_pesanan`, `tanggal`, `total`, `ongkir`, `grand_total`, `total_dibayar`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'ORD-20260712-0001', '2026-07-12', 5000.00, 20000.00, 25000.00, 0.00, 'packing', '2026-07-12 11:09:26', '2026-07-12 11:39:05'),
(2, 1, 'ORD-20260713-0001', '2026-07-13', 75000.00, 7000.00, 82000.00, 0.00, 'menunggu', '2026-07-13 17:31:49', '2026-07-13 17:31:49'),
(4, 1, 'ORD-20260713-0002', '2026-07-13', 45000.00, 8000.00, 53000.00, 0.00, 'menunggu', '2026-07-13 19:47:32', '2026-07-13 19:47:32'),
(5, 1, 'ORD-20260713-0003', '2026-07-13', 5000.00, 40000.00, 45000.00, 0.00, 'menunggu', '2026-07-13 20:03:43', '2026-07-13 20:03:43'),
(6, 2, 'ORD-20260713-0004', '2026-07-13', 45000.00, 10000.00, 55000.00, 0.00, 'menunggu', '2026-07-13 22:39:13', '2026-07-13 22:39:13'),
(7, 2, 'ORD-20260713-0005', '2026-07-13', 5000.00, 10000.00, 15000.00, 0.00, 'menunggu', '2026-07-13 22:43:54', '2026-07-13 22:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `petani`
--

CREATE TABLE `petani` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `status` enum('aktif','nonaktif') NOT NULL DEFAULT 'aktif',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petani`
--

INSERT INTO `petani` (`id`, `nama`, `alamat`, `telepon`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Suci Ramadhani', 'Ds. Kertosari Rt 03/Rw 02 Kec. Ulujami Kab. Pemalang', '085647695804', 'aktif', '2026-07-11 21:17:50', '2026-07-11 21:17:50', NULL),
(2, 'Ghazi', 'Jl. Kusuma bahagia No 53, Kec Taman, Pemalang', '089765436785', 'aktif', '2026-07-13 22:20:08', '2026-07-13 22:20:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) UNSIGNED NOT NULL,
  `kategori_id` int(11) UNSIGNED NOT NULL,
  `kode_produk` varchar(20) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `foto_produk` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga` decimal(12,2) NOT NULL DEFAULT 0.00,
  `satuan` varchar(20) NOT NULL,
  `status` enum('aktif','nonaktif') NOT NULL DEFAULT 'aktif',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kategori_id`, `kode_produk`, `nama_produk`, `foto_produk`, `deskripsi`, `harga`, `satuan`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'PRD-001', 'Melati Bersih', NULL, 'Bunga melati hasil sortir yang sudah bersih dari kotoran dan tangkai.', 45000.00, 'kg', 'aktif', '2026-07-11 12:04:40', '2026-07-13 22:38:32', NULL),
(2, 1, 'PRD-002', 'Melati Karuk', NULL, 'Bunga melati hasil sortir kualitas kedua.', 30000.00, 'kg', 'aktif', '2026-07-11 12:04:40', '2026-07-11 12:04:40', NULL),
(3, 2, 'PRD-003', 'Ronce Melati', NULL, 'Melati bersih yang dironce menjadi rangkaian siap jual.', 5000.00, 'ikat', 'aktif', '2026-07-11 12:04:40', '2026-07-11 12:04:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produksi`
--

CREATE TABLE `produksi` (
  `id` int(11) UNSIGNED NOT NULL,
  `produk_asal_id` int(11) UNSIGNED NOT NULL,
  `produk_hasil_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `nomor_produksi` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah_pakai` decimal(10,2) NOT NULL,
  `jumlah_hasil` int(11) NOT NULL,
  `catatan` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produksi`
--

INSERT INTO `produksi` (`id`, `produk_asal_id`, `produk_hasil_id`, `user_id`, `nomor_produksi`, `tanggal`, `jumlah_pakai`, `jumlah_hasil`, `catatan`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 1, 'PRO-20260712-0001', '2026-07-12', 1.50, 8, '', '2026-07-12 11:01:13', '2026-07-12 11:01:13'),
(2, 1, 3, 1, 'PRO-20260713-0001', '2026-07-13', 5.00, 20, '', '2026-07-13 22:37:40', '2026-07-13 22:37:40'),
(3, 1, 3, 1, 'PRO-20260713-0002', '2026-07-13', 5.00, 20, '', '2026-07-13 22:37:40', '2026-07-13 22:37:40');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama_role` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `nama_role`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2026-07-11 12:04:40', '2026-07-11 12:04:40'),
(2, 'owner', '2026-07-11 12:04:40', '2026-07-11 12:04:40');

-- --------------------------------------------------------

--
-- Table structure for table `sortir`
--

CREATE TABLE `sortir` (
  `id` int(11) UNSIGNED NOT NULL,
  `stok_masuk_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `nomor_sortir` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah_masuk` decimal(10,2) NOT NULL,
  `hasil_bersih` decimal(10,2) NOT NULL,
  `hasil_karuk` decimal(10,2) NOT NULL,
  `catatan` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sortir`
--

INSERT INTO `sortir` (`id`, `stok_masuk_id`, `user_id`, `nomor_sortir`, `tanggal`, `jumlah_masuk`, `hasil_bersih`, `hasil_karuk`, `catatan`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'SRT-20260712-0001', '2026-07-12', 2.00, 1.50, 0.40, '', '2026-07-12 11:00:42', '2026-07-12 11:00:42'),
(2, 1, 1, 'SRT-20260712-0002', '2026-07-12', 20.00, 18.00, 1.00, '', '2026-07-12 18:23:29', '2026-07-12 18:23:29'),
(3, 3, 1, 'SRT-20260713-0001', '2026-07-13', 26.00, 22.00, 2.00, '', '2026-07-13 22:37:30', '2026-07-13 22:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `stok`
--

CREATE TABLE `stok` (
  `id` int(11) UNSIGNED NOT NULL,
  `produk_id` int(11) UNSIGNED NOT NULL,
  `jumlah_stok` decimal(10,2) NOT NULL DEFAULT 0.00,
  `stok_minimum` decimal(10,2) NOT NULL DEFAULT 0.00,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stok`
--

INSERT INTO `stok` (`id`, `produk_id`, `jumlah_stok`, `stok_minimum`, `updated_at`) VALUES
(1, 1, 27.00, 5.00, '2026-07-13 22:39:13'),
(2, 2, 2.40, 5.00, '2026-07-13 22:37:30'),
(3, 3, 45.00, 5.00, '2026-07-13 22:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `stok_masuk`
--

CREATE TABLE `stok_masuk` (
  `id` int(11) UNSIGNED NOT NULL,
  `petani_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `nomor_transaksi` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah_kg` decimal(10,2) NOT NULL,
  `harga_per_kg` decimal(10,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `status_pembayaran` enum('lunas','belum_lunas') NOT NULL DEFAULT 'belum_lunas',
  `catatan` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stok_masuk`
--

INSERT INTO `stok_masuk` (`id`, `petani_id`, `user_id`, `nomor_transaksi`, `tanggal`, `jumlah_kg`, `harga_per_kg`, `total`, `status_pembayaran`, `catatan`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'MM-20260712-0001', '2026-07-12', 20.00, 45000.00, 900000.00, 'lunas', '', '2026-07-12 10:51:06', '2026-07-12 10:51:06'),
(2, 1, 1, 'MM-20260712-0002', '2026-07-12', 2.00, 60000.00, 120000.00, 'belum_lunas', '', '2026-07-12 10:57:44', '2026-07-12 10:57:44'),
(3, 2, 1, 'MM-20260713-0001', '2026-07-13', 26.00, 35000.00, 910000.00, 'lunas', '', '2026-07-13 22:37:04', '2026-07-13 22:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `role_id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('aktif','nonaktif') NOT NULL DEFAULT 'aktif',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `nama`, `username`, `password`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Administrator', 'admin', '$2y$10$t00RcvXAE6qtPgl/KuFKQecUFKOCXuWxF1Nm72AQ2gs238OM9uRC6', 'aktif', '2026-07-11 12:04:40', '2026-07-11 12:04:40', NULL),
(2, 2, 'Pemilik YSP Jasmine', 'owner', '$2y$10$j9xxm5pRxSI/SjQ5l.l1iucSazFKFA1D1LsnW.RguJDD2jJMSXiuq', 'aktif', '2026-07-11 12:04:40', '2026-07-11 12:04:40', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_log`
--
ALTER TABLE `audit_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_pesanan_pesanan_id_foreign` (`pesanan_id`),
  ADD KEY `detail_pesanan_produk_id_foreign` (`produk_id`);

--
-- Indexes for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi_stok`
--
ALTER TABLE `mutasi_stok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mutasi_stok_user_id_foreign` (`user_id`),
  ADD KEY `produk_id` (`produk_id`),
  ADD KEY `sumber_transaksi_sumber_id` (`sumber_transaksi`,`sumber_id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor_pembayaran` (`nomor_pembayaran`),
  ADD KEY `pembayaran_pesanan_id_foreign` (`pesanan_id`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `pengaturan_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pesanan_id` (`pesanan_id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor_pesanan` (`nomor_pesanan`),
  ADD KEY `pesanan_pelanggan_id_foreign` (`pelanggan_id`);

--
-- Indexes for table `petani`
--
ALTER TABLE `petani`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_produk` (`kode_produk`),
  ADD KEY `produk_kategori_id_foreign` (`kategori_id`);

--
-- Indexes for table `produksi`
--
ALTER TABLE `produksi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor_produksi` (`nomor_produksi`),
  ADD KEY `produksi_produk_asal_id_foreign` (`produk_asal_id`),
  ADD KEY `produksi_produk_hasil_id_foreign` (`produk_hasil_id`),
  ADD KEY `produksi_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_role` (`nama_role`);

--
-- Indexes for table `sortir`
--
ALTER TABLE `sortir`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor_sortir` (`nomor_sortir`),
  ADD KEY `sortir_stok_masuk_id_foreign` (`stok_masuk_id`),
  ADD KEY `sortir_user_id_foreign` (`user_id`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `produk_id` (`produk_id`);

--
-- Indexes for table `stok_masuk`
--
ALTER TABLE `stok_masuk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor_transaksi` (`nomor_transaksi`),
  ADD KEY `stok_masuk_petani_id_foreign` (`petani_id`),
  ADD KEY `stok_masuk_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_log`
--
ALTER TABLE `audit_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `mutasi_stok`
--
ALTER TABLE `mutasi_stok`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pengiriman`
--
ALTER TABLE `pengiriman`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `petani`
--
ALTER TABLE `petani`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produksi`
--
ALTER TABLE `produksi`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sortir`
--
ALTER TABLE `sortir`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stok`
--
ALTER TABLE `stok`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stok_masuk`
--
ALTER TABLE `stok_masuk`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audit_log`
--
ALTER TABLE `audit_log`
  ADD CONSTRAINT `audit_log_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE SET NULL;

--
-- Constraints for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD CONSTRAINT `detail_pesanan_pesanan_id_foreign` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_pesanan_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `mutasi_stok`
--
ALTER TABLE `mutasi_stok`
  ADD CONSTRAINT `mutasi_stok_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `mutasi_stok_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_pesanan_id_foreign` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD CONSTRAINT `pengaturan_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE SET NULL;

--
-- Constraints for table `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD CONSTRAINT `pengiriman_pesanan_id_foreign` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_pelanggan_id_foreign` FOREIGN KEY (`pelanggan_id`) REFERENCES `pelanggan` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori_produk` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `produksi`
--
ALTER TABLE `produksi`
  ADD CONSTRAINT `produksi_produk_asal_id_foreign` FOREIGN KEY (`produk_asal_id`) REFERENCES `produk` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `produksi_produk_hasil_id_foreign` FOREIGN KEY (`produk_hasil_id`) REFERENCES `produk` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `produksi_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `sortir`
--
ALTER TABLE `sortir`
  ADD CONSTRAINT `sortir_stok_masuk_id_foreign` FOREIGN KEY (`stok_masuk_id`) REFERENCES `stok_masuk` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `sortir_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `stok`
--
ALTER TABLE `stok`
  ADD CONSTRAINT `stok_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stok_masuk`
--
ALTER TABLE `stok_masuk`
  ADD CONSTRAINT `stok_masuk_petani_id_foreign` FOREIGN KEY (`petani_id`) REFERENCES `petani` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `stok_masuk_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
