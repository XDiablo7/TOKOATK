-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2025 at 03:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokoatk`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` varchar(16) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis` varchar(16) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama`, `jenis`, `harga`) VALUES
('5', 'pensil 2B', 'Alat Tulis', 5000),
('1', 'Buku Tulis', 'Alat Tulis', 9000),
('2', 'TAS', 'Alat sekolah', 100000),
('10', 'Laptop', 'Elektronik', 20000000),
('9', 'Perkakas', 'Bangunan', 130000),
('B0001', 'Keyboard', 'Elektronik', 150000);

-- --------------------------------------------------------

--
-- Table structure for table `salesd`
--

CREATE TABLE `salesd` (
  `id` int(11) NOT NULL,
  `salesid` varchar(16) NOT NULL,
  `barangid` varchar(16) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salesd`
--

INSERT INTO `salesd` (`id`, `salesid`, `barangid`, `qty`, `harga`) VALUES
(2, 'SALES-MANUAL-01', '1', 5, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `salesm`
--

CREATE TABLE `salesm` (
  `id` varchar(16) NOT NULL,
  `waktu` datetime NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salesm`
--

INSERT INTO `salesm` (`id`, `waktu`, `username`) VALUES
('SALES-MANUAL-01', '2025-07-04 16:58:21', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `stockd`
--

CREATE TABLE `stockd` (
  `id` int(11) NOT NULL,
  `stockid` varchar(16) NOT NULL,
  `barangid` varchar(16) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stockd`
--

INSERT INTO `stockd` (`id`, `stockid`, `barangid`, `qty`, `harga`) VALUES
(2, 'STOK-MANUAL-01', '1', 20, 3500);

-- --------------------------------------------------------

--
-- Table structure for table `stockm`
--

CREATE TABLE `stockm` (
  `id` varchar(16) NOT NULL,
  `waktu` datetime NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stockm`
--

INSERT INTO `stockm` (`id`, `waktu`, `username`) VALUES
('STOK-MANUAL-01', '2025-07-04 16:58:21', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `password` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `fullname`, `password`) VALUES
('', '', '0192023a7bbd73250516f069df18b500'),
('Admin', 'Admin', 'Admin123'),
('admin', 'Administrator', '0192023a7bbd73250516f069df18b500');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `salesd`
--
ALTER TABLE `salesd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stockd`
--
ALTER TABLE `stockd`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `salesd`
--
ALTER TABLE `salesd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stockd`
--
ALTER TABLE `stockd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
