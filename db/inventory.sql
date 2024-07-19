-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jul 2024 pada 10.12
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `contents` text NOT NULL,
  `admin` varchar(20) NOT NULL,
  `status` varchar(8) NOT NULL DEFAULT 'aktif'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sbrg_keluar`
--

CREATE TABLE `sbrg_keluar` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `penerima` varchar(35) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sbrg_keluar`
--

INSERT INTO `sbrg_keluar` (`id`, `idx`, `tgl`, `jumlah`, `penerima`, `keterangan`) VALUES
(17, 285, '2023-11-14', 1, 'Kepala Desa sei tatas', 'Baik'),
(18, 279, '2023-12-01', 1, 'Kepala desa anjir palambang', 'Baik'),
(19, 287, '2024-03-07', 5, 'Gudang Masyarakat', 'Rusak'),
(21, 293, '2024-03-07', 5, 'Gudang', 'Rusak'),
(22, 292, '2024-03-08', 1, 'Gudang', 'Rusak'),
(23, 311, '2024-03-08', 5, 'Tempat Sampah', 'Rusak'),
(24, 294, '2024-03-22', 1, 'Gudang', 'Rusak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sbrg_masuk`
--

CREATE TABLE `sbrg_masuk` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sbrg_masuk`
--

INSERT INTO `sbrg_masuk` (`id`, `idx`, `tgl`, `jumlah`, `keterangan`) VALUES
(14, 278, '2023-08-28', 2, 'Baik'),
(16, 286, '2024-03-01', 2, 'Baik'),
(17, 287, '2022-01-01', 20, 'Baik'),
(18, 298, '2024-03-01', 5, 'Baik'),
(19, 288, '2022-01-01', 20, 'Baik'),
(20, 293, '2024-03-07', 25, 'Baik'),
(23, 308, '2023-01-02', 2, 'Baik'),
(22, 295, '2024-03-08', 15, 'Baik'),
(25, 311, '2024-03-08', 30, 'Baik'),
(26, 305, '2020-01-02', 20, 'Baik'),
(27, 304, '2020-01-02', 20, 'Baik'),
(28, 312, '2024-02-22', 3, 'Baik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sbrg_order`
--

CREATE TABLE `sbrg_order` (
  `idx` int(11) NOT NULL,
  `nama` varchar(55) CHARACTER SET latin1 NOT NULL,
  `jenis` varchar(30) CHARACTER SET latin1 NOT NULL,
  `merk` varchar(40) CHARACTER SET latin1 NOT NULL,
  `ukuran` varchar(20) CHARACTER SET latin1 NOT NULL,
  `stock` int(12) NOT NULL,
  `satuan` varchar(10) CHARACTER SET latin1 NOT NULL,
  `keterangan` varchar(55) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sbrg_order`
--

INSERT INTO `sbrg_order` (`idx`, `nama`, `jenis`, `merk`, `ukuran`, `stock`, `satuan`, `keterangan`) VALUES
(7, 'Meja Guru', 'A01', 'Sinar Alam', 'Kebutuhan Sekolah', 20, 'Buah', 'Baik'),
(8, 'Kursi Guru', 'A02', 'Sinar Alam', 'Kebutuhan Sekolah', 20, 'Buah', 'Baik'),
(9, 'Kursi Siswa', 'A01', 'Sinar Alam', 'Kebutuhan Sekolah', 100, 'Buah', 'Baik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sbrg_rusak`
--

CREATE TABLE `sbrg_rusak` (
  `idx` int(11) NOT NULL,
  `nama` varchar(55) CHARACTER SET latin1 NOT NULL,
  `jenis` varchar(30) CHARACTER SET latin1 NOT NULL,
  `merk` varchar(40) CHARACTER SET latin1 NOT NULL,
  `ukuran` varchar(20) CHARACTER SET latin1 NOT NULL,
  `stock` int(12) NOT NULL,
  `satuan` varchar(10) CHARACTER SET latin1 NOT NULL,
  `keterangan` varchar(55) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sbrg_rusak`
--

INSERT INTO `sbrg_rusak` (`idx`, `nama`, `jenis`, `merk`, `ukuran`, `stock`, `satuan`, `keterangan`) VALUES
(7, 'HVS A4', 'A12', 'Sidu', 'Kebutuhan Sekolah', 5, 'Unit', 'Dipakai Habis'),
(12, 'Tinta Printer', 'A05', 'Canon', 'Kebutuhan Sekolah', 1, 'Buah', 'Dipakai Habis');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slogin`
--

CREATE TABLE `slogin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `slogin`
--

INSERT INTO `slogin` (`id`, `username`, `password`, `nickname`, `role`) VALUES
(7, 'guest', '084e0343a0486ff05530df6c705c8bb4', 'Stock', 'stock');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sstock_brg`
--

CREATE TABLE `sstock_brg` (
  `idx` int(11) NOT NULL,
  `nama` varchar(55) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `merk` varchar(40) NOT NULL,
  `ukuran` varchar(20) NOT NULL,
  `stock` int(12) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `lokasi` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sstock_brg`
--

INSERT INTO `sstock_brg` (`idx`, `nama`, `jenis`, `merk`, `ukuran`, `stock`, `satuan`, `lokasi`) VALUES
(292, 'Tempat Sampah', 'A08', 'AISAH', 'Kebutuhan Sekolah', 19, 'Unit', 'Baik'),
(312, 'Tinta Printer', 'A05', 'Canon', 'Kebutuhan Sekolah', 3, 'Item', 'Baik'),
(310, 'Printer', 'A12', 'Canon', 'Kebutuhan Sekolah', 0, 'Unit', 'Baik'),
(291, 'Papan Tulis', 'A09', 'SIANKO', 'Kebutuhan Sekolah', 12, 'Unit', 'Baik'),
(307, 'Kursi Siswa', 'A04', 'Sinar Alam', 'Kebutuhan Sekolah', 0, 'Item', 'Baik'),
(294, 'Papan Struktur', 'A07', '-', 'Kebutuhan Sekolah', 14, 'Buah', 'Baik'),
(311, 'Spidol', 'A10', 'Snowman', 'Pemakaian Guru', 25, 'Item', 'Baik'),
(304, 'Meja Guru', 'A01', 'Sinar Alam', 'Kebutuhan Sekolah', 20, 'Buah', 'Baik'),
(305, 'Kursi Guru', 'A02', 'Sinar Alam', 'Kebutuhan Sekolah', 20, 'Item', 'Baik'),
(306, 'Meja Siswa', 'A03', 'Sinar Alam', 'Kebutuhan Sekolah', 0, 'Item', 'Baik');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sbrg_keluar`
--
ALTER TABLE `sbrg_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sbrg_masuk`
--
ALTER TABLE `sbrg_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sbrg_order`
--
ALTER TABLE `sbrg_order`
  ADD PRIMARY KEY (`idx`);

--
-- Indeks untuk tabel `sbrg_rusak`
--
ALTER TABLE `sbrg_rusak`
  ADD PRIMARY KEY (`idx`);

--
-- Indeks untuk tabel `slogin`
--
ALTER TABLE `slogin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sstock_brg`
--
ALTER TABLE `sstock_brg`
  ADD PRIMARY KEY (`idx`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `sbrg_keluar`
--
ALTER TABLE `sbrg_keluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `sbrg_masuk`
--
ALTER TABLE `sbrg_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `sbrg_order`
--
ALTER TABLE `sbrg_order`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `sbrg_rusak`
--
ALTER TABLE `sbrg_rusak`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `slogin`
--
ALTER TABLE `slogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `sstock_brg`
--
ALTER TABLE `sstock_brg`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
