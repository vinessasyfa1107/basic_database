-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2022 at 03:02 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokopakaian`
--

-- --------------------------------------------------------

--
-- Table structure for table `produk_pakaian`
--

CREATE TABLE `produk_pakaian` (
  `id_produk` varchar(5) NOT NULL,
  `kode_kategori` varchar(5) DEFAULT NULL,
  `nama_kategori` varchar(20) DEFAULT NULL,
  `warna` varchar(20) DEFAULT NULL,
  `harga` int(10) DEFAULT NULL,
  `stok` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk_pakaian`
--

INSERT INTO `produk_pakaian` (`id_produk`, `kode_kategori`, `nama_kategori`, `warna`, `harga`, `stok`) VALUES
('X001', 'R001', 'T-shirt', 'Hitam', 60000, 20),
('X002', 'R003', 'Hoodie', 'Putih', 45000, 30),
('X003', 'R004', 'Blouse', 'Biru', 50000, 35),
('X004', 'R002', 'Kemeja', 'Hitam', 80000, 30),
('X005', 'R005', 'Outerwear', 'Putih', 80000, 25),
('X006', 'R002', 'Kemeja', 'Biru', 70000, 25),
('X007', 'R005', 'Outerwear', 'Abu-abu', 90000, 27),
('X008', 'R004', 'Blouse', 'Biru', 90000, 30),
('X009', 'R003', 'Hoodie', 'Hitam', 100000, 35),
('X010', 'R002', 'Kemeja', 'Biru', 95000, 27),
('X011', 'R003', 'Hoodie', 'Hitam', 140000, 30),
('X012', 'R001', 'T-shirt', 'Putih', 130000, 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk_pakaian`
--
ALTER TABLE `produk_pakaian`
  ADD PRIMARY KEY (`id_produk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
