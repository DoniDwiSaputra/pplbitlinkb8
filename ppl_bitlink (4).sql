-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2024 at 03:25 AM
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
-- Database: `ppl_bitlink`
--

-- --------------------------------------------------------

--
-- Table structure for table `admindinaspertaniannganjuk`
--

CREATE TABLE `admindinaspertaniannganjuk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `nama_instansi` varchar(255) NOT NULL,
  `alamat_lengkap` varchar(255) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admindinaspertaniannganjuk`
--

INSERT INTO `admindinaspertaniannganjuk` (`id`, `id_user`, `nama_instansi`, `alamat_lengkap`, `telepon`, `created_at`, `updated_at`) VALUES
(1, 2, 'Dinas Kabupaten Nganjuk', 'Jl Tunjungan No. 76', '08137799556', '2024-05-26 08:54:59', '2024-05-26 10:14:59');

-- --------------------------------------------------------

--
-- Table structure for table `benih_data`
--

CREATE TABLE `benih_data` (
  `id_benih` bigint(20) UNSIGNED NOT NULL,
  `varietas` varchar(255) NOT NULL,
  `jenis_benih` varchar(50) NOT NULL,
  `stok_benih` int(11) NOT NULL,
  `kualitas_benih` varchar(100) NOT NULL,
  `harga_benih` decimal(10,0) NOT NULL,
  `foto_benih` text NOT NULL,
  `tgl_masuk` date NOT NULL,
  `turun_gudang` int(11) NOT NULL,
  `jemur_kering` int(11) NOT NULL,
  `blower1` int(11) NOT NULL,
  `benih_susut` int(11) NOT NULL,
  `biji_kecil` int(11) NOT NULL,
  `jumlah_benih` int(11) NOT NULL,
  `id_akunp` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `benih_data`
--

INSERT INTO `benih_data` (`id_benih`, `varietas`, `jenis_benih`, `stok_benih`, `kualitas_benih`, `harga_benih`, `foto_benih`, `tgl_masuk`, `turun_gudang`, `jemur_kering`, `blower1`, `benih_susut`, `biji_kecil`, `jumlah_benih`, `id_akunp`, `created_at`, `updated_at`) VALUES
(1, 'Edamame', 'kedelai', 200, 'Benih Pokok', 15000, '/img/benih/1716756874.jpg', '2024-05-26', 10, 10, 10, 10, 10, 10, 3, '2024-05-26 08:55:00', '2024-05-26 13:54:34'),
(2, 'Logawa', 'padi', 164, 'Benih Pokok', 20000, '/img/benih/1716756831.jpg', '2024-05-26', 10, 10, 10, 10, 10, 10, 3, '2024-05-26 08:55:00', '2024-05-27 08:20:18'),
(3, 'Kedelai Putih', 'kedelai', 200, 'Benih Pokok', 20000, '/img/benih/1716756946.jpg', '2024-05-26', 10, 10, 10, 10, 10, 10, 4, '2024-05-26 08:55:00', '2024-05-26 13:55:46'),
(4, 'Padi Ketan', 'padi', 148, 'Benih Pokok', 35000, '/img/benih/1716756918.jpg', '2024-05-26', 10, 10, 10, 10, 10, 10, 4, '2024-05-26 08:55:00', '2024-05-27 07:10:27'),
(5, 'Kedelai Kuning', 'kedelai', 200, 'Benih Pokok', 12000, '/img/benih/1716757030.jpg', '2024-05-26', 10, 10, 10, 10, 10, 10, 5, '2024-05-26 08:55:00', '2024-05-26 13:57:10'),
(6, 'Padi Merah', 'padi', 150, 'Benih Pokok', 25000, '/img/benih/1716757001.jpg', '2024-05-26', 10, 10, 10, 10, 10, 10, 5, '2024-05-26 08:55:00', '2024-05-26 13:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `dataedukasi`
--

CREATE TABLE `dataedukasi` (
  `id_edukasi` bigint(20) UNSIGNED NOT NULL,
  `tanggal_edukasi` date NOT NULL,
  `judul_edukasi` text NOT NULL,
  `isi_edukasi` text NOT NULL,
  `id_akunp` bigint(20) UNSIGNED DEFAULT NULL,
  `id_akun_dinas` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dataedukasi`
--

INSERT INTO `dataedukasi` (`id_edukasi`, `tanggal_edukasi`, `judul_edukasi`, `isi_edukasi`, `id_akunp`, `id_akun_dinas`, `created_at`, `updated_at`) VALUES
(1, '2024-05-27', 'Cara menyimpan benih padi', 'Menyimpan benih padi dengan baik sangat penting untuk mempertahankan kualitasnya. Berikut adalah langkah-langkah umum untuk menyimpan benih padi:\r\n\r\nPilih Benih yang Berkualitas: Pilih benih yang berkualitas baik dan bebas dari penyakit.\r\n\r\nKeringkan dengan Baik: Pastikan benih padi benar-benar kering sebelum disimpan. Anda bisa menjemur benih di bawah sinar matahari langsung atau menggunakan pengering biji-bijian.\r\n\r\nSimpan di Tempat yang Sejuk dan Kering: Benih padi harus disimpan di tempat yang sejuk, kering, dan terlindung dari kelembaban. Hindari penyimpanan di tempat yang lembap karena dapat menyebabkan benih menjadi busuk.\r\n\r\nGunakan Wadah yang Tertutup Rapat: Simpan benih dalam wadah yang kedap udara dan rapat untuk mencegah kelembaban masuk.\r\n\r\nLabel dengan Jelas: Pastikan untuk memberi label pada wadah benih dengan jelas, termasuk tanggal panen dan jenis varietas.\r\n\r\nCek secara Berkala: Periksa benih secara berkala untuk memastikan tidak ada tanda-tanda kelembaban atau pertumbuhan jamur. Buang benih yang terlihat rusak atau terkontaminasi.\r\n\r\nPemanasan: Beberapa petani juga menggunakan teknik pemanasan untuk mengurangi kelembaban di sekitar benih dan membunuh organisme patogen. Ini dapat dilakukan dengan cara pemanasan di bawah sinar matahari atau dengan menggunakan oven terkontrol.\r\n\r\nPenyimpanan Jangka Panjang: Jika Anda menyimpan benih untuk jangka panjang, pertimbangkan untuk menggunakan kemasan vakum atau menambahkan pengering udara untuk menjaga kelembaban tetap rendah.\r\n\r\nDengan mengikuti langkah-langkah tersebut, Anda dapat menyimpan benih padi dengan baik dan mempertahankan kualitasnya untuk musim tanam berikutnya.', NULL, 2, '2024-05-26 10:35:02', '2024-05-26 10:35:02'),
(2, '2024-05-27', 'Panduan Praktis: Menyimpan dan Mengelola Benih dengan Efektif', '1. Pengenalan Tentang Benih\r\nBenih adalah organisme hidup yang berpotensi untuk tumbuh menjadi tanaman baru. Mereka mengandung embrio tanaman, serta cadangan makanan yang diperlukan untuk pertumbuhan awal. Peran benih dalam pertanian sangat penting karena mereka adalah fondasi dari setiap tanaman yang dibudidayakan.\r\n\r\n2. Pentingnya Menyimpan Benih dengan Baik\r\nPenyimpanan benih yang efektif sangat penting untuk mempertahankan kualitas genetik dan keandalan hasil pertanian. Penyimpanan yang tidak tepat dapat mengakibatkan penurunan kualitas benih, bahkan kerusakan total.\r\n\r\n3. Langkah-langkah Menyimpan Benih dengan Efektif\r\nPemilihan Benih yang Berkualitas: Pilih benih yang sehat, berwarna, dan bebas dari kerusakan fisik.\r\nPersiapan Benih Sebelum Disimpan: Pastikan benih kering sepenuhnya sebelum disimpan untuk mencegah pertumbuhan jamur dan bakteri.\r\nTeknik Penyimpanan yang Tepat: Simpan benih dalam wadah yang kedap udara di tempat yang sejuk dan gelap.\r\n4. Cara Memelihara Kondisi Optimal Penyimpanan\r\nKontrol Kelembaban Udara: Jaga agar kelembaban udara di sekitar benih tetap rendah untuk mencegah pertumbuhan jamur.\r\nSuhu dan Pencahayaan yang Tepat: Simpan benih dalam suhu yang stabil dan hindari paparan langsung terhadap sinar matahari.\r\nPencegahan Penyakit dan Serangga: Inspeksi berkala untuk memastikan benih tidak terinfeksi oleh penyakit atau diserang oleh serangga.\r\n5. Strategi Mengelola Stok Benih\r\nPemantauan Kondisi Benih: Periksa benih secara berkala untuk memastikan mereka tetap dalam kondisi baik.\r\nRotasi Stok Benih: Gunakan benih tertua terlebih dahulu untuk mencegah pemborosan dan mempertahankan kesegaran stok.\r\nManajemen Penyimpanan Jangka Panjang: Rencanakan penyimpanan benih jangka panjang dengan mempertimbangkan faktor-faktor lingkungan.\r\n6. Pemeriksaan Berkala dan Pengujian Benih\r\nPentingnya Pemeriksaan Berkala: Lakukan pemeriksaan berkala untuk mendeteksi perubahan kondisi benih.\r\nMetode Pengujian Kualitas Benih: Gunakan berbagai metode pengujian untuk menilai vitalitas dan viabilitas benih.\r\nTindakan yang Dapat Diambil Berdasarkan Hasil Pengujian: Ambil tindakan yang sesuai berdasarkan hasil pengujian untuk menjaga kualitas benih.\r\n7. Teknologi Terkini dalam Penyimpanan Benih\r\nInovasi dalam Penyimpanan Benih: Kenali teknologi terbaru dalam penyimpanan benih untuk meningkatkan efisiensi dan keandalan.\r\nPenggunaan Teknologi untuk Memantau Kondisi Penyimpanan: Manfaatkan sensor dan sistem pemantauan otomatis untuk menjaga kondisi penyimpanan yang optimal.\r\n8. Studi Kasus: Pengalaman Petani dalam Menyimpan Benih\r\nCerita Sukses Petani: Pelajari pengalaman petani yang sukses dalam penyimpanan benih dan tantangan yang mereka hadapi.\r\nTantangan yang Dihadapi dan Solusinya: Identifikasi tantangan umum yang dihadapi petani dalam menyimpan benih dan strategi untuk mengatasi mereka.\r\n9. Sumber Daya Tambahan dan Referensi\r\nDaftar Buku, Artikel, dan Sumber Daya Online: Temukan sumber daya tambahan untuk mendalami topik penyimpanan benih.\r\nOrganisasi dan Komunitas yang Dapat Dikunjungi: Cari dukungan dari organisasi dan komunitas pertanian lokal.\r\n10. Tinjauan Singkat dan Kesimpulan\r\nRangkuman Pentingnya Penyimpanan Benih yang Tepat: Tinjau kembali pentingnya praktik penyimpanan benih yang tepat.\r\nTindakan yang Dapat Dilakukan untuk Meningkatkan Manajemen Benih: Identifikasi tindakan praktis yang dapat diambil untuk meningkatkan manajemen benih Anda.\r\nDengan panduan ini, diharapkan petani dan peneliti dapat meningkatkan efektivitas penyimpanan benih mereka, yang pada gilirannya akan mendukung pertumbuhan dan hasil panen yang lebih baik.', NULL, 2, '2024-05-26 13:38:36', '2024-05-26 13:38:36'),
(3, '2024-05-27', 'Mengenal Lebih Dekat: Benih dan Peran Pentingnya dalam Pertanian', '1. Apa itu Benih?\r\nBenih adalah embrio tumbuhan yang terbungkus oleh lapisan luar yang disebut kulit benih. Mereka adalah \"paket kehidupan\" yang mengandung semua informasi genetik yang diperlukan untuk pertumbuhan dan perkembangan tanaman. Benih juga mengandung cadangan makanan yang diperlukan untuk menyokong pertumbuhan awal tanaman.\r\n\r\n2. Fungsi Utama Benih dalam Pertanian\r\nPenyediaan Tanaman Baru: Benih adalah cara utama reproduksi tanaman dalam pertanian.\r\nPemeliharaan Keanekaragaman Genetik: Benih mempertahankan keanekaragaman genetik suatu tanaman, yang penting untuk adaptasi terhadap lingkungan dan penyakit.\r\nPeran dalam Pertanian Berkelanjutan: Benih berkualitas tinggi mendukung pertanian berkelanjutan dengan meningkatkan produktivitas dan ketahanan tanaman.\r\n3. Proses Penyimpanan Benih yang Efektif\r\nPemilihan Benih yang Berkualitas: Memilih benih yang berkualitas tinggi dan sehat adalah langkah pertama yang penting.\r\nPengeringan Benih: Pastikan benih dikeringkan dengan baik sebelum disimpan untuk mencegah pertumbuhan jamur.\r\nPenyimpanan di Tempat yang Tepat: Simpan benih dalam wadah kedap udara di tempat yang sejuk, kering, dan gelap.\r\n4. Pentingnya Pengujian Kualitas Benih\r\nPengujian Vitalitas: Memastikan benih memiliki vitalitas yang baik untuk memastikan pertumbuhan tanaman yang sukses.\r\nPengujian Viabilitas: Menguji viabilitas benih untuk mengetahui seberapa banyak benih yang dapat tumbuh menjadi tanaman yang kuat.\r\nPengujian Kebersihan: Mengetes benih untuk penyakit, hama, dan kontaminan lainnya yang dapat memengaruhi pertumbuhan tanaman.\r\n5. Manfaat Praktis dari Penyimpanan Benih yang Baik\r\nPemeliharaan Stok Tanaman: Penyimpanan benih yang efektif membantu memelihara stok tanaman untuk musim tanam berikutnya.\r\nMenghemat Biaya: Dengan menyimpan benih yang berkualitas, petani dapat menghemat biaya karena tidak perlu membeli benih baru setiap musim tanam.\r\nKonservasi Keanekaragaman Hayati: Dengan menyimpan benih dari varietas tanaman yang berbeda, kita dapat membantu dalam konservasi keanekaragaman hayati.\r\n6. Strategi Praktis untuk Penyimpanan Benih di Rumah\r\nPilih Tempat yang Tepat: Pilih lokasi yang sejuk, gelap, dan kering untuk menyimpan benih.\r\nGunakan Wadah yang Sesuai: Gunakan wadah yang kedap udara dan tahan air untuk menyimpan benih.\r\nLabel dengan Jelas: Pastikan setiap wadah benih dilabeli dengan jelas dengan informasi tentang jenis benih dan tanggal simpan.\r\n7. Mengelola Kualitas Benih Secara Berkala\r\nPemeriksaan Rutin: Periksa benih secara rutin untuk memastikan mereka tetap dalam kondisi baik.\r\nPenggantian Secara Berkala: Ganti benih yang tua dengan yang baru setiap beberapa tahun untuk memastikan kualitas tanaman yang optimal.\r\nPengujian Kualitas: Lakukan pengujian kualitas secara berkala untuk memastikan benih tetap memiliki vitalitas dan viabilitas yang baik.\r\n8. Mendukung Inovasi dalam Penyimpanan Benih\r\nPengembangan Teknologi: Dukung pengembangan teknologi baru untuk penyimpanan benih yang lebih efektif dan efisien.\r\nPenggunaan Aplikasi dan Perangkat: Manfaatkan aplikasi dan perangkat digital untuk memantau kondisi penyimpanan benih secara real-time.\r\n9. Studi Kasus: Pengalaman Petani dalam Penyimpanan Benih\r\nPengalaman Petani: Pelajari pengalaman petani yang telah berhasil dalam menyimpan dan mengelola benih mereka.\r\nStrategi Sukses dan Tantangan yang Dihadapi: Identifikasi strategi sukses yang digunakan oleh petani dan cara mereka mengatasi tantangan dalam penyimpanan benih.\r\n10. Referensi Tambahan dan Sumber Daya\r\nBuku dan Artikel: Cari tahu lebih lanjut dengan membaca buku dan artikel tentang penyimpanan benih.\r\nKursus dan Pelatihan: Ikuti kursus atau pelatihan tentang manajemen benih yang ditawarkan oleh lembaga-lembaga pertanian dan penelitian.\r\nDengan memahami pentingnya penyimpanan benih yang efektif dan menerapkan praktik-praktik terbaik dalam manajemen benih, petani dapat meningkatkan hasil panen mereka dan mendukung pertanian yang berkelanjutan dan produktif.', NULL, 2, '2024-05-26 13:39:33', '2024-05-26 13:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `dataevaluasi`
--

CREATE TABLE `dataevaluasi` (
  `id_evaluasi` bigint(20) UNSIGNED NOT NULL,
  `id_akunp` bigint(20) UNSIGNED NOT NULL,
  `tgl_evaluasi` date NOT NULL,
  `kinerja_produksi` text NOT NULL,
  `kualitas_benih` varchar(50) NOT NULL,
  `kendala_produksi` text NOT NULL,
  `saran_produksi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dataevaluasi`
--

INSERT INTO `dataevaluasi` (`id_evaluasi`, `id_akunp`, `tgl_evaluasi`, `kinerja_produksi`, `kualitas_benih`, `kendala_produksi`, `saran_produksi`, `created_at`, `updated_at`) VALUES
(1, 3, '2024-05-27', 'Tahap 1', 'Baik', '-', '-', '2024-05-26 11:05:51', '2024-05-26 11:05:51');

-- --------------------------------------------------------

--
-- Table structure for table `data_akun_produsen`
--

CREATE TABLE `data_akun_produsen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `nomor_induk_berusaha` varchar(50) NOT NULL,
  `id_kemitraan` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_akun_produsen`
--

INSERT INTO `data_akun_produsen` (`id`, `id_user`, `nama_perusahaan`, `nomor_induk_berusaha`, `id_kemitraan`, `created_at`, `updated_at`) VALUES
(1, 3, 'PT Gudang Garam Merah', '91201065703', 1, '2024-05-26 08:55:00', '2024-05-26 13:31:51'),
(2, 4, 'PT ABADI', '12345654321', 1, NULL, NULL),
(3, 5, 'PT BANKRUT', '1111111111', 1, NULL, NULL),
(4, 7, 'PT DONI INDO BENIH', '145173', 1, '2024-05-26 10:26:38', '2024-05-26 10:26:38'),
(5, 10, 'i', '8', 1, '2024-05-27 02:06:08', '2024-05-27 02:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `kemitraan_data`
--

CREATE TABLE `kemitraan_data` (
  `id_kemitraan` bigint(20) UNSIGNED NOT NULL,
  `nama_mitra` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kemitraan_data`
--

INSERT INTO `kemitraan_data` (`id_kemitraan`, `nama_mitra`, `created_at`, `updated_at`) VALUES
(1, 'Kelompok Tani Jaya Berkah', '2024-05-26 08:55:00', '2024-05-26 08:55:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_04_06_153231_create_data_mitra_table', 1),
(5, '2024_04_06_153327_create_data_akun_produsen_table', 1),
(6, '2024_04_06_153359_create_data_pencatatan_benih_table', 1),
(7, '2024_04_14_000006_create_akundinasnganjuk_table', 1),
(8, '2024_04_14_000007_create_akundinasnonnganjuk_table', 1),
(9, '2024_04_14_000008_create_data_kontrak_pembelian_table', 1),
(10, '2024_04_14_000009_create_kontrakpembelian_table', 1),
(11, '2024_04_14_074710_create_tracking_table', 1),
(12, '2024_04_14_074729_create_dataevaluasi_table', 1),
(13, '2024_04_14_074744_create_dataedukasi_table', 1),
(14, '2024_04_24_072239_create_pesanans_table', 1),
(15, '2024_04_25_090618_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_benih` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `nama_penerima` varchar(255) NOT NULL,
  `alamat_lengkap` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `tgl_pengiriman` date DEFAULT NULL,
  `tgl_diterima` date DEFAULT NULL,
  `status_pembayaran` enum('SUKSES','BELUM DIBAYAR','DIBATALKAN') NOT NULL DEFAULT 'BELUM DIBAYAR',
  `status_pengiriman` enum('PROSES','SEDANG DIKIRIM','DITERIMA') NOT NULL DEFAULT 'PROSES',
  `snap_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `id_benih`, `id_user`, `quantity`, `harga`, `nama_penerima`, `alamat_lengkap`, `telepon`, `tgl_pengiriman`, `tgl_diterima`, `status_pembayaran`, `status_pengiriman`, `snap_token`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 10, 50000, 'joko', 'Jl. Papua', '082318471623', NULL, NULL, 'BELUM DIBAYAR', 'PROSES', NULL, '2024-05-26 08:55:00', '2024-05-26 08:55:00'),
(2, 2, 6, 1, 20000, 'j', 'j', '0', NULL, NULL, 'BELUM DIBAYAR', 'PROSES', NULL, '2024-05-26 12:12:20', '2024-05-26 12:12:20'),
(3, 6, 3, 1, 25000, 'j', 'j', '0', NULL, NULL, 'BELUM DIBAYAR', 'PROSES', NULL, '2024-05-26 12:21:13', '2024-05-26 12:21:13'),
(4, 4, 3, 1, 35000, 'Doni', 'Jl Kalimantan', '08137799556', NULL, NULL, 'BELUM DIBAYAR', 'PROSES', NULL, '2024-05-26 12:27:55', '2024-05-26 12:27:55'),
(5, 4, 3, 1, 35000, 'Doni', 'Jl Kalimantan', '08137799556', NULL, NULL, 'BELUM DIBAYAR', 'PROSES', NULL, '2024-05-26 12:28:37', '2024-05-26 12:28:37'),
(6, 4, 3, 1, 35000, 'Doni', 'Jl Kalimantan', '08137799556', NULL, NULL, 'BELUM DIBAYAR', 'PROSES', NULL, '2024-05-26 12:32:04', '2024-05-26 12:32:04'),
(7, 4, 3, 1, 35000, 'Doni', 'Jl Kalimantan', '08137799556', NULL, NULL, 'BELUM DIBAYAR', 'PROSES', NULL, '2024-05-26 12:32:42', '2024-05-26 12:32:42'),
(8, 4, 3, 1, 35000, 'Doni', 'Jl Kalimantan', '08137799556', NULL, NULL, 'BELUM DIBAYAR', 'PROSES', NULL, '2024-05-26 12:36:11', '2024-05-26 12:36:11'),
(9, 4, 3, 1, 35000, 'Doni', 'Jl Kalimantan', '08137799556', NULL, NULL, 'BELUM DIBAYAR', 'PROSES', NULL, '2024-05-26 12:36:47', '2024-05-26 12:36:47'),
(10, 4, 3, 1, 35000, 'doni', 'Jl Kalimantan', '08137799556', NULL, NULL, 'BELUM DIBAYAR', 'PROSES', NULL, '2024-05-26 12:41:44', '2024-05-26 12:41:44'),
(11, 4, 3, 1, 35000, 'doni', 'Jl Kalimantan', '08137799556', '2024-05-26', '2024-05-26', 'SUKSES', 'DITERIMA', 'c97d593b-d7ca-4fcd-947f-1eb0475ce2be', '2024-05-26 12:42:11', '2024-05-26 13:07:33'),
(12, 4, 3, 1, 35000, 'Alief', 'Kalimantan', '111', NULL, NULL, 'BELUM DIBAYAR', 'PROSES', NULL, '2024-05-26 18:03:35', '2024-05-26 18:03:35'),
(13, 4, 3, 1, 35000, 'Alief', 'Jl Soekarno', '089675426', NULL, NULL, 'BELUM DIBAYAR', 'PROSES', NULL, '2024-05-26 18:05:43', '2024-05-26 18:05:43'),
(14, 4, 3, 1, 35000, 'Alief', 'Jl Soekarno', '08137799556', NULL, NULL, 'BELUM DIBAYAR', 'PROSES', NULL, '2024-05-26 18:06:44', '2024-05-26 18:06:44'),
(15, 4, 3, 1, 35000, 'Alief', 'Jl Soekarno', '08137799556', NULL, NULL, 'BELUM DIBAYAR', 'PROSES', 'a687106b-ef42-447e-8a43-42bf9471b265', '2024-05-26 18:12:23', '2024-05-26 18:12:24'),
(16, 2, 6, 1, 20000, 'Bli', 'Jl Mastrip', '11111', NULL, NULL, 'BELUM DIBAYAR', 'PROSES', '423edfe3-d096-4144-bd1b-d9bba5aec073', '2024-05-27 06:59:05', '2024-05-27 06:59:06'),
(17, 4, 3, 1, 35000, 'Bli', 'Jl Mastrip', '082142122026', '2024-05-27', '2024-05-27', 'SUKSES', 'DITERIMA', '8ae8dfd5-4205-41cc-9dcf-292aa39fde68', '2024-05-27 07:09:59', '2024-05-27 07:16:10'),
(18, 2, 6, 6, 20000, 'Bli', 'Jl Mastrip', '082142122026', '2024-05-27', NULL, 'SUKSES', 'SEDANG DIKIRIM', 'e4fc863d-e5a7-4cfe-9b77-c544ea73aa8a', '2024-05-27 08:19:40', '2024-05-27 08:21:48');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('mwgqqr6X1k99YTHQPzf3NUcKUogDpsoUjSWc95AH', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOFpGOHFockwwbHBxOVpXY1pLeVYyQ1RJWjhFVU1BNzJNSGFyUkYxZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wZXNhbmFuLzE4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Njt9', 1716823354),
('o5upD3aisa8CPRTeP5iVX1ZCxNNEmVrzko3ux5Sr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUUw1NjJEYURXZGdJT29kMjByeGdndlZxMlR6aHh3ZmUxU2sxdHlFUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly83MTI3LTEwMy0xODQtNTQtMTQubmdyb2stZnJlZS5hcHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716817797);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat_lengkap` varchar(255) DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `role` enum('AKUN DINAS','AKUN DINAS NON NGANJUK','PRODUSEN') NOT NULL DEFAULT 'AKUN DINAS NON NGANJUK',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `password_not_hash` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `alamat_lengkap`, `telepon`, `role`, `email_verified_at`, `password`, `password_not_hash`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Akun Dinas Non Nganjuk', 'akunnondinas@mail.com', 'Jl Ahmad Yani No. 83', '081288994466', 'AKUN DINAS NON NGANJUK', '2024-05-26 08:54:59', '$2y$12$NfO9e8nIEdyFQSYzvaSxZOVsOFvPgS3GmZutse.P2qtqczJrw5pcS', 'password123', 'CgtBZ31hQ5', '2024-05-26 08:54:59', '2024-05-26 08:54:59'),
(2, 'Akun Dinas Nganjuk', 'akundinas@mail.com', 'Jl Tunjungan No. 76', '08137799556', 'AKUN DINAS', '2024-05-26 08:54:59', '$2y$12$rgIJPacV2k2a7n2.A1wkMeFmstXn7VvWDWeUDX.6Qmh5xsxtxIV.y', 'password123', 'j6ARcmrPd7MZDSIJyPiheUn8uxtmLkiLfGFC9usuZ7a2pZdnbTNYsUmcGSVp', '2024-05-26 08:54:59', '2024-05-26 10:14:59'),
(3, 'Produsen 1', 'produsen1@mail.com', 'Jl Gajah Mada No. 36', '081244885522', 'PRODUSEN', '2024-05-26 08:54:59', '$2y$12$Ft6vZ1OTSJWsd7FjmWHNTuLv2yQprnEn7meA6ujHZH.w28n.TTB3G', 'password123', 'cQ6v0HLSEmyRKmx4K8di76BY9O2cNGZtR2HZKilGJ4xhVXVxuO4AzwNROIEd', '2024-05-26 08:54:59', '2024-05-26 13:31:51'),
(4, 'Produsen 2', 'produsen2@mail.com', 'Jl Soedirman No. 70', '081211769022', 'PRODUSEN', '2024-05-26 08:54:59', '$2y$12$y7tmFtCSDOHk54cvKkBLjuWXwYXUHH/JCVwkiPHQ85F/HTcsBepN2', 'password123', '3byWBANAj8kQXplzxZMoB5AHI5SgCgsyIrNeCh7mxqd6jrehebYkmPdjVx3X', '2024-05-26 08:54:59', '2024-05-26 08:54:59'),
(5, 'Produsen 3', 'produsen3@mail.com', 'Jl Pahlawan No. 6', '081722589522', 'PRODUSEN', '2024-05-26 08:55:00', '$2y$12$Ett/TRVSpXL2yECuBTkHZuV7jh7EcXByLQ1fPEEP3sltOlYf8l3t.', 'password123', 'DxdNOj2Nty', '2024-05-26 08:55:00', '2024-05-26 08:55:00'),
(6, 'Doni Dwi Saputra', 'donidwi151218@gmail.com', 'Jl Mastrip', '082142122026', 'AKUN DINAS NON NGANJUK', NULL, '$2y$12$FNMILvjYq0lZ2oUFchf7x.FhhjIOjUUs77iC/3Rg2PK2eNa9PiC9W', '12345678', 'LEHhw2kXEpbf7vlSwOFY28m8LcSE8HTqr3DrUO2L2Zs9iZPLjuCHrhg0kXAH', '2024-05-26 10:05:49', '2024-05-26 11:32:13'),
(7, 'Doni Dwi Saputra', 'doniindo@mail.com', 'Jl Macan', '9854463', 'PRODUSEN', NULL, '$2y$12$Fvmb7KpUuYE7PKVe7Myibu4ZfgBiFetHRirjJNUKSnk625Y8ShcZm', 'password1234', NULL, '2024-05-26 10:26:37', '2024-05-26 10:26:37'),
(9, '73tr', 'produsen111111@mail.com', 'et', 'tyhr', 'AKUN DINAS NON NGANJUK', NULL, '$2y$12$BcKu7ijvcPhOxpCRvx5/k.QNACZ2kAbPaazijmJ1FMUb/KwRq8pui', 'password123', NULL, '2024-05-26 11:29:35', '2024-05-26 11:29:35'),
(10, 'Doni Dwi Saputra', 'a@mail.com', 'k', '9', 'PRODUSEN', NULL, '$2y$12$hS5JrvpIz7hG26p5PNxziuctM3geivrxRb4hEuKQzIrMw822s/zVe', 'doni1111', NULL, '2024-05-27 02:06:08', '2024-05-27 02:06:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admindinaspertaniannganjuk`
--
ALTER TABLE `admindinaspertaniannganjuk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `akundinasnganjuk_id_user_foreign` (`id_user`);

--
-- Indexes for table `benih_data`
--
ALTER TABLE `benih_data`
  ADD PRIMARY KEY (`id_benih`),
  ADD KEY `benih_data_id_akunp_foreign` (`id_akunp`);

--
-- Indexes for table `dataedukasi`
--
ALTER TABLE `dataedukasi`
  ADD PRIMARY KEY (`id_edukasi`),
  ADD KEY `dataedukasi_id_akunp_foreign` (`id_akunp`),
  ADD KEY `dataedukasi_id_akun_dinas_foreign` (`id_akun_dinas`);

--
-- Indexes for table `dataevaluasi`
--
ALTER TABLE `dataevaluasi`
  ADD PRIMARY KEY (`id_evaluasi`),
  ADD KEY `dataevaluasi_id_akunp_foreign` (`id_akunp`);

--
-- Indexes for table `data_akun_produsen`
--
ALTER TABLE `data_akun_produsen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_akun_produsen_id_kemitraan_foreign` (`id_kemitraan`),
  ADD KEY `data_akun_produsen_id_user_foreign` (`id_user`);

--
-- Indexes for table `kemitraan_data`
--
ALTER TABLE `kemitraan_data`
  ADD PRIMARY KEY (`id_kemitraan`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admindinaspertaniannganjuk`
--
ALTER TABLE `admindinaspertaniannganjuk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `benih_data`
--
ALTER TABLE `benih_data`
  MODIFY `id_benih` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dataedukasi`
--
ALTER TABLE `dataedukasi`
  MODIFY `id_edukasi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dataevaluasi`
--
ALTER TABLE `dataevaluasi`
  MODIFY `id_evaluasi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_akun_produsen`
--
ALTER TABLE `data_akun_produsen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kemitraan_data`
--
ALTER TABLE `kemitraan_data`
  MODIFY `id_kemitraan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admindinaspertaniannganjuk`
--
ALTER TABLE `admindinaspertaniannganjuk`
  ADD CONSTRAINT `akundinasnganjuk_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `benih_data`
--
ALTER TABLE `benih_data`
  ADD CONSTRAINT `benih_data_id_akunp_foreign` FOREIGN KEY (`id_akunp`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `dataedukasi`
--
ALTER TABLE `dataedukasi`
  ADD CONSTRAINT `dataedukasi_id_akun_dinas_foreign` FOREIGN KEY (`id_akun_dinas`) REFERENCES `admindinaspertaniannganjuk` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dataedukasi_id_akunp_foreign` FOREIGN KEY (`id_akunp`) REFERENCES `data_akun_produsen` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dataevaluasi`
--
ALTER TABLE `dataevaluasi`
  ADD CONSTRAINT `dataevaluasi_id_akunp_foreign` FOREIGN KEY (`id_akunp`) REFERENCES `data_akun_produsen` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_akun_produsen`
--
ALTER TABLE `data_akun_produsen`
  ADD CONSTRAINT `data_akun_produsen_id_kemitraan_foreign` FOREIGN KEY (`id_kemitraan`) REFERENCES `kemitraan_data` (`id_kemitraan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `data_akun_produsen_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
