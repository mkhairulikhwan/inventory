-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2020 at 08:44 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

SET AUTOCOMMIT = 0;

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
-- Table structure for table `notes`
--

CREATE TABLE `NOTES` (
  `ID` INT(11) NOT NULL,
  `CONTENTS` TEXT NOT NULL,
  `ADMIN` VARCHAR(20) NOT NULL,
  `STATUS` VARCHAR(8) NOT NULL DEFAULT 'aktif'
) ENGINE=MYISAM DEFAULT CHARSET=LATIN1;

--
-- Dumping data for table `notes`
--

INSERT INTO `NOTES` (
  `ID`,
  `CONTENTS`,
  `ADMIN`,
  `STATUS`
) VALUES (
  21,
  'Disini bisa tulis notes',
  'Stock',
  'aktif'
);

-- --------------------------------------------------------

--
-- Table structure for table `sbrg_keluar`
--

CREATE TABLE `SBRG_KELUAR` (
  `ID` INT(11) NOT NULL,
  `IDX` INT(11) NOT NULL,
  `TGL` DATE NOT NULL,
  `JUMLAH` INT(11) NOT NULL,
  `PENERIMA` VARCHAR(35) NOT NULL,
  `KETERANGAN` TEXT NOT NULL
) ENGINE=MYISAM DEFAULT CHARSET=LATIN1;

--
-- Dumping data for table `sbrg_keluar`
--

INSERT INTO `SBRG_KELUAR` (
  `ID`,
  `IDX`,
  `TGL`,
  `JUMLAH`,
  `PENERIMA`,
  `KETERANGAN`
) VALUES (
  15,
  244,
  '2020-08-29',
  1000,
  'Kasmina',
  'Laku'
);

-- --------------------------------------------------------

--
-- Table structure for table `sbrg_masuk`
--

CREATE TABLE `SBRG_MASUK` (
  `ID` INT(11) NOT NULL,
  `IDX` INT(11) NOT NULL,
  `TGL` DATE NOT NULL,
  `JUMLAH` INT(11) NOT NULL,
  `KETERANGAN` TEXT NOT NULL
) ENGINE=MYISAM DEFAULT CHARSET=LATIN1;

--
-- Dumping data for table `sbrg_masuk`
--

INSERT INTO `SBRG_MASUK` (
  `ID`,
  `IDX`,
  `TGL`,
  `JUMLAH`,
  `KETERANGAN`
) VALUES (
  9,
  244,
  '2020-08-07',
  600,
  'kk'
);

-- --------------------------------------------------------

--
-- Table structure for table `slogin`
--

CREATE TABLE `SLOGIN` (
  `ID` INT(11) NOT NULL,
  `USERNAME` VARCHAR(30) NOT NULL,
  `PASSWORD` VARCHAR(255) NOT NULL,
  `NICKNAME` VARCHAR(20) NOT NULL,
  `ROLE` VARCHAR(10) NOT NULL
) ENGINE=MYISAM DEFAULT CHARSET=LATIN1;

--
-- Dumping data for table `slogin`
--

INSERT INTO `SLOGIN` (
  `ID`,
  `USERNAME`,
  `PASSWORD`,
  `NICKNAME`,
  `ROLE`
) VALUES (
  7,
  'guest',
  '084e0343a0486ff05530df6c705c8bb4',
  'Stock',
  'stock'
);

-- --------------------------------------------------------

--
-- Table structure for table `sstock_brg`
--

CREATE TABLE `SSTOCK_BRG` (
  `IDX` INT(11) NOT NULL,
  `NAMA` VARCHAR(55) NOT NULL,
  `JENIS` VARCHAR(30) NOT NULL,
  `MERK` VARCHAR(40) NOT NULL,
  `UKURAN` VARCHAR(20) NOT NULL,
  `STOCK` INT(12) NOT NULL,
  `SATUAN` VARCHAR(10) NOT NULL,
  `LOKASI` VARCHAR(55) NOT NULL
) ENGINE=MYISAM DEFAULT CHARSET=LATIN1;

--
-- Dumping data for table `sstock_brg`
--

INSERT INTO `SSTOCK_BRG` (
  `IDX`,
  `NAMA`,
  `JENIS`,
  `MERK`,
  `UKURAN`,
  `STOCK`,
  `SATUAN`,
  `LOKASI`
) VALUES (
  243,
  'Mata Bor',
  'Flame',
  'Garryson',
  '50',
  2992,
  'Buah',
  'PT Willtec'
),
(
  244,
  'Mata Bor',
  'Ball Nosed Cone',
  'Garryson',
  '17',
  1000,
  'Unit',
  'PT Wiltec'
);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notes`
--
ALTER TABLE `NOTES` ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sbrg_keluar`
--
ALTER TABLE `SBRG_KELUAR` ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sbrg_masuk`
--
ALTER TABLE `SBRG_MASUK` ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `slogin`
--
ALTER TABLE `SLOGIN` ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sstock_brg`
--
ALTER TABLE `SSTOCK_BRG` ADD PRIMARY KEY (`IDX`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `NOTES` MODIFY `ID` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sbrg_keluar`
--
ALTER TABLE `SBRG_KELUAR` MODIFY `ID` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sbrg_masuk`
--
ALTER TABLE `SBRG_MASUK` MODIFY `ID` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `slogin`
--
ALTER TABLE `SLOGIN` MODIFY `ID` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sstock_brg`
--
ALTER TABLE `SSTOCK_BRG` MODIFY `IDX` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;