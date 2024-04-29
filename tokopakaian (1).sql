-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2022 at 01:05 PM
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
-- Table structure for table `baju_2`
--

CREATE TABLE `baju_2` (
  `tuple_id` int(5) NOT NULL,
  `nama_kategori` varchar(20) DEFAULT NULL,
  `warna` varchar(20) DEFAULT NULL,
  `harga` int(10) DEFAULT NULL,
  `stok` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `baju_2`
--

INSERT INTO `baju_2` (`tuple_id`, `nama_kategori`, `warna`, `harga`, `stok`) VALUES
(1, 'T-shirt', 'Hitam', 60000, 20),
(2, 'Hoodie', 'Putih', 45000, 30),
(3, 'Blouse', 'Biru', 50000, 35),
(4, 'Kemeja', 'Hitam', 80000, 30),
(5, 'Outerwear', 'Putih', 80000, 25),
(6, 'Kemeja', 'Biru', 70000, 25),
(7, 'Outerwear', 'Abu-abu', 90000, 27),
(8, 'Blouse', 'Biru', 90000, 30),
(9, 'Hoodie', 'Hitam', 100000, 35),
(10, 'Kemeja', 'Biru', 95000, 27),
(11, 'Hoodie', 'Hitam', 140000, 30),
(12, 'T-shirt', 'Putih', 130000, 30);

-- --------------------------------------------------------

--
-- Table structure for table `barang_blouse`
--

CREATE TABLE `barang_blouse` (
  `id_produk` varchar(5) NOT NULL,
  `kode_kategori` varchar(5) DEFAULT NULL,
  `nama_kategori` varchar(20) DEFAULT NULL,
  `warna` varchar(20) DEFAULT NULL,
  `harga` int(10) DEFAULT NULL,
  `stok` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang_blouse`
--

INSERT INTO `barang_blouse` (`id_produk`, `kode_kategori`, `nama_kategori`, `warna`, `harga`, `stok`) VALUES
('X003', 'R004', 'Blouse', 'Biru', 50000, 35),
('X008', 'R004', 'Blouse', 'merah', 90000, 30);

-- --------------------------------------------------------

--
-- Table structure for table `barang_hoodie`
--

CREATE TABLE `barang_hoodie` (
  `id_produk` varchar(5) NOT NULL,
  `kode_kategori` varchar(5) DEFAULT NULL,
  `nama_kategori` varchar(20) DEFAULT NULL,
  `warna` varchar(20) DEFAULT NULL,
  `harga` int(10) DEFAULT NULL,
  `stok` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang_hoodie`
--

INSERT INTO `barang_hoodie` (`id_produk`, `kode_kategori`, `nama_kategori`, `warna`, `harga`, `stok`) VALUES
('X002', 'R003', 'Hoodie', 'Putih', 45000, 30),
('X009', 'R003', 'Hoodie', 'Hitam', 100000, 35),
('X011', 'R003', 'Hoodie', 'lilac', 140000, 30);

-- --------------------------------------------------------

--
-- Table structure for table `barang_kemeja`
--

CREATE TABLE `barang_kemeja` (
  `id_produk` varchar(5) NOT NULL,
  `kode_kategori` varchar(5) DEFAULT NULL,
  `nama_kategori` varchar(20) DEFAULT NULL,
  `warna` varchar(20) DEFAULT NULL,
  `harga` int(10) DEFAULT NULL,
  `stok` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang_kemeja`
--

INSERT INTO `barang_kemeja` (`id_produk`, `kode_kategori`, `nama_kategori`, `warna`, `harga`, `stok`) VALUES
('X004', 'R002', 'Kemeja', 'Hitam', 80000, 30),
('X006', 'R002', 'Kemeja', 'Biru', 70000, 25),
('X010', 'R002', 'Kemeja', 'Mustard', 95000, 27);

-- --------------------------------------------------------

--
-- Table structure for table `barang_outerwear`
--

CREATE TABLE `barang_outerwear` (
  `id_produk` varchar(5) NOT NULL,
  `kode_kategori` varchar(5) DEFAULT NULL,
  `nama_kategori` varchar(20) DEFAULT NULL,
  `warna` varchar(20) DEFAULT NULL,
  `harga` int(10) DEFAULT NULL,
  `stok` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang_outerwear`
--

INSERT INTO `barang_outerwear` (`id_produk`, `kode_kategori`, `nama_kategori`, `warna`, `harga`, `stok`) VALUES
('X005', 'R005', 'Outerwear', 'Putih', 80000, 25),
('X007', 'R005', 'Outerwear', 'Abu-abu', 90000, 27);

-- --------------------------------------------------------

--
-- Table structure for table `barang_tshirt`
--

CREATE TABLE `barang_tshirt` (
  `id_produk` varchar(5) NOT NULL,
  `kode_kategori` varchar(5) DEFAULT NULL,
  `nama_kategori` varchar(20) DEFAULT NULL,
  `warna` varchar(20) DEFAULT NULL,
  `harga` int(10) DEFAULT NULL,
  `stok` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang_tshirt`
--

INSERT INTO `barang_tshirt` (`id_produk`, `kode_kategori`, `nama_kategori`, `warna`, `harga`, `stok`) VALUES
('X001', 'R001', 'T-shirt', 'Hitam', 60000, 20),
('X012', 'R001', 'T-shirt', 'Putih', 130000, 30);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kode_kategori` varchar(5) NOT NULL,
  `nama_kategori` varchar(20) DEFAULT NULL,
  `harga` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kode_kategori`, `nama_kategori`, `harga`) VALUES
('R001', 'T-shirt', 60000),
('R003', 'Hoodie', 45000),
('R004', 'Blouse', 50000),
('R002', 'Kemeja', 80000),
('R005', 'Outerwear', 80000),
('R002', 'Kemeja', 70000),
('R005', 'Outerwear', 90000),
('R004', 'Blouse', 90000),
('R003', 'Hoodie', 100000),
('R002', 'Kemeja', 95000),
('R003', 'Hoodie', 140000),
('R001', 'T-shirt', 130000),
('R006', 'Kimono', 70000),
('R007', 'Blazer', 175000),
('R008', 'Piyama', 45000);

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
('', 'R008', 'Piyama', 'Kuning', 45000, 35),
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
('X012', 'R001', 'T-shirt', 'Putih', 130000, 30),
('X013', 'R006', 'Kimono', 'Putih', 70000, 27),
('X014', 'R007', 'Blazer', 'Coklat', 175000, 40);

-- --------------------------------------------------------

--
-- Table structure for table `produk_pakaianv`
--

CREATE TABLE `produk_pakaianv` (
  `id_produk` varchar(5) NOT NULL,
  `kode_kategori` varchar(5) DEFAULT NULL,
  `tuple_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk_pakaianv`
--

INSERT INTO `produk_pakaianv` (`id_produk`, `kode_kategori`, `tuple_id`) VALUES
('X001', 'R001', 1),
('X002', 'R003', 2),
('X003', 'R004', 3),
('X004', 'R002', 4),
('X005', 'R005', 5),
('X006', 'R002', 6),
('X007', 'R005', 7),
('X008', 'R004', 8),
('X009', 'R003', 9),
('X010', 'R002', 10),
('X011', 'R003', 11),
('X012', 'R001', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baju_2`
--
ALTER TABLE `baju_2`
  ADD PRIMARY KEY (`tuple_id`);

--
-- Indexes for table `barang_blouse`
--
ALTER TABLE `barang_blouse`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `barang_hoodie`
--
ALTER TABLE `barang_hoodie`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `barang_kemeja`
--
ALTER TABLE `barang_kemeja`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `barang_outerwear`
--
ALTER TABLE `barang_outerwear`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `barang_tshirt`
--
ALTER TABLE `barang_tshirt`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `produk_pakaian`
--
ALTER TABLE `produk_pakaian`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `produk_pakaianv`
--
ALTER TABLE `produk_pakaianv`
  ADD PRIMARY KEY (`id_produk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
