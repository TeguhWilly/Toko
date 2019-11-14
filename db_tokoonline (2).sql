-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Waktu pembuatan: 14 Nov 2019 pada 11.19
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tokoonline`
--

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `checkout`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `checkout` (
`id_checkout` varchar(255)
,`nama_produk` varchar(255)
,`harga` double(8,2)
,`gambar` varchar(255)
,`jumlah` int(11)
,`nama_user` varchar(255)
,`id_user` varchar(255)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_checkout`
--

CREATE TABLE `detail_checkout` (
  `id_checkout` varchar(255) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_checkout`
--

INSERT INTO `detail_checkout` (`id_checkout`, `id_barang`, `jumlah`) VALUES
('7892754822880381107631435', 3, 2),
('7892754822880381107631435', 5, 1),
('1676136086540750668907693603', 3, 2),
('1676136086540750668907693603', 4, 1),
('1676136086540750668907693603', 3, 1),
('14804882238496192251146028883', 3, 2),
('14804882238496192251146028883', 4, 1),
('14804882238496192251146028883', 3, 1),
('193003725912661486321772119865', 3, 2),
('193003725912661486321772119865', 4, 1),
('193003725912661486321772119865', 3, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `keranjang`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `keranjang` (
`id_keranjang` int(10) unsigned
,`nama_user` varchar(255)
,`nama_produk` varchar(255)
,`harga` double(8,2)
,`gambar` varchar(255)
,`jumlah` int(11)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` double(8,2) NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_barang`
--

INSERT INTO `tbl_barang` (`id`, `nama_produk`, `harga`, `gambar`) VALUES
(3, 'Handphone', 19000.00, '1572345055_hp.jpg'),
(4, 'Gitar', 200000.00, '1572345143_gitar.jpg'),
(5, 'Baju', 400000.00, '1572345246_baju.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_checkout`
--

CREATE TABLE `tbl_checkout` (
  `id_checkout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_checkout`
--

INSERT INTO `tbl_checkout` (`id_checkout`, `id_user`, `total`) VALUES
('679835249384119303900379209', '1', 0.00),
('7892754822880381107631435', '1', 438000.00),
('1676136086540750668907693603', '3', 257000.00),
('14804882238496192251146028883', '3', 257000.00),
('193003725912661486321772119865', '3', 257000.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_keranjang`
--

CREATE TABLE `tbl_keranjang` (
  `id_keranjang` int(10) UNSIGNED NOT NULL,
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_keranjang`
--

INSERT INTO `tbl_keranjang` (`id_keranjang`, `id_user`, `id_barang`, `jumlah`) VALUES
(1, '3', '3', 2),
(2, '3', '4', 1),
(3, '1', '3', 2),
(4, '1', '5', 1),
(5, '3', '3', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_konfirmasi`
--

CREATE TABLE `tbl_konfirmasi` (
  `id_konfirmasi` int(10) UNSIGNED NOT NULL,
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_checkout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bukti` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `nama_user`, `email`, `password`) VALUES
(1, 'User', 'guest@ddd.id', 'whoknows'),
(2, 'User', 'guest@ddd.id', 'guest'),
(3, 'User 2', 'user.dep@ddd.id', 'userdep');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur untuk view `checkout`
--
DROP TABLE IF EXISTS `checkout`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `checkout`  AS  select `tbl_checkout`.`id_checkout` AS `id_checkout`,`tbl_barang`.`nama_produk` AS `nama_produk`,`tbl_barang`.`harga` AS `harga`,`tbl_barang`.`gambar` AS `gambar`,`detail_checkout`.`jumlah` AS `jumlah`,`tbl_user`.`nama_user` AS `nama_user`,`tbl_checkout`.`id_user` AS `id_user` from (((`detail_checkout` join `tbl_checkout` on((`detail_checkout`.`id_checkout` = `tbl_checkout`.`id_checkout`))) join `tbl_user` on((`tbl_checkout`.`id_user` = `tbl_user`.`id`))) join `tbl_barang` on((`detail_checkout`.`id_barang` = `tbl_barang`.`id`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `keranjang`
--
DROP TABLE IF EXISTS `keranjang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `keranjang`  AS  (select `tbl_keranjang`.`id_keranjang` AS `id_keranjang`,`tbl_user`.`nama_user` AS `nama_user`,`tbl_barang`.`nama_produk` AS `nama_produk`,`tbl_barang`.`harga` AS `harga`,`tbl_barang`.`gambar` AS `gambar`,`tbl_keranjang`.`jumlah` AS `jumlah` from ((`tbl_keranjang` join `tbl_barang` on((`tbl_keranjang`.`id_barang` = `tbl_barang`.`id`))) join `tbl_user` on((`tbl_keranjang`.`id_user` = `tbl_user`.`id`)))) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_keranjang`
--
ALTER TABLE `tbl_keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indeks untuk tabel `tbl_konfirmasi`
--
ALTER TABLE `tbl_konfirmasi`
  ADD PRIMARY KEY (`id_konfirmasi`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_keranjang`
--
ALTER TABLE `tbl_keranjang`
  MODIFY `id_keranjang` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_konfirmasi`
--
ALTER TABLE `tbl_konfirmasi`
  MODIFY `id_konfirmasi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
