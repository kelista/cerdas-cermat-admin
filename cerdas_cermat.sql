-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2017 at 09:03 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cerdas_cermat`
--

-- --------------------------------------------------------

--
-- Table structure for table `paket_soal`
--

CREATE TABLE `paket_soal` (
  `kode_soal` varchar(2) NOT NULL,
  `no_soal` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paket_soal`
--

INSERT INTO `paket_soal` (`kode_soal`, `no_soal`) VALUES
('A', 1),
('A', 2),
('A', 3),
('A', 4),
('A', 5),
('A', 6),
('A', 7),
('A', 8),
('A', 9),
('A', 10);

-- --------------------------------------------------------

--
-- Table structure for table `soal_bs`
--

CREATE TABLE `soal_bs` (
  `no_soal` int(4) NOT NULL,
  `pertanyaan` text NOT NULL,
  `jawaban` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal_bs`
--

INSERT INTO `soal_bs` (`no_soal`, `pertanyaan`, `jawaban`) VALUES
(1, 'Benarkah 1 + 1 = 2 ?', 0),
(2, 'Hello World biasa digunakan saat belajar program', 0),
(3, 'Boot adalah proses saat komputer mati', 1),
(4, 'Monitor adalah alat output', 0),
(5, 'Motherboard adalah alat input', 1),
(6, 'Mouse adalah alat output', 1),
(7, 'Mouse adalah tikus', 0),
(8, 'Keyboard standar memiliki 108-118 tombol', 0),
(9, 'Komputer generasi pertama menggunakan Vacuum Tube', 0),
(10, 'Komputer Menggunakan air sebagai sumber tenaga', 1),
(11, 'IF ((IF True THEN False) AND FALSE) THEN TRUE', 0);

-- --------------------------------------------------------

--
-- Table structure for table `soal_saat_ini`
--

CREATE TABLE `soal_saat_ini` (
  `no_soal` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal_saat_ini`
--

INSERT INTO `soal_saat_ini` (`no_soal`) VALUES
(1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `paket_soal`
--
ALTER TABLE `paket_soal`
  ADD PRIMARY KEY (`kode_soal`,`no_soal`);

--
-- Indexes for table `soal_bs`
--
ALTER TABLE `soal_bs`
  ADD PRIMARY KEY (`no_soal`);

--
-- Indexes for table `soal_saat_ini`
--
ALTER TABLE `soal_saat_ini`
  ADD PRIMARY KEY (`no_soal`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `soal_bs`
--
ALTER TABLE `soal_bs`
  MODIFY `no_soal` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
