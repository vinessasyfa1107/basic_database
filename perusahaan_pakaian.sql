-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Jun 2022 pada 16.53
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perusahaan_pakaian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bahan_baku`
--

CREATE TABLE `bahan_baku` (
  `Kode_Bahan` varchar(10) NOT NULL,
  `Jenis_Bahan` varchar(20) NOT NULL,
  `Harga_Bahan` int(15) NOT NULL,
  `Id_Pemasok` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bahan_baku`
--

INSERT INTO `bahan_baku` (`Kode_Bahan`, `Jenis_Bahan`, `Harga_Bahan`, `Id_Pemasok`) VALUES
('B001', 'Katun', 16500, 'A001'),
('B002', 'Wol', 10000, 'A002'),
('B003', 'Sutra', 15000, 'A003'),
('B004', 'Rayon', 18000, 'A004'),
('B005', 'Fleece', 14000, 'A005');

-- --------------------------------------------------------

--
-- Struktur dari tabel `departemen`
--

CREATE TABLE `departemen` (
  `Id_Departemen` varchar(10) NOT NULL,
  `Nama_Departemen` varchar(50) NOT NULL,
  `Jumlah_Karyawan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `departemen`
--

INSERT INTO `departemen` (`Id_Departemen`, `Nama_Departemen`, `Jumlah_Karyawan`) VALUES
('C001', 'Produksi', 10),
('C002', 'HR', 5),
('C003', 'Purchasing', 5),
('C004', 'Pengiriman', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `Id_Karyawan` varchar(10) NOT NULL,
  `Nama_Karyawan` varchar(50) NOT NULL,
  `Jenis_Kelamin` enum('Wanita','Pria') NOT NULL,
  `Tanggal_Lahir` date NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `No_Telepon` varchar(20) NOT NULL,
  `Jabatan` varchar(30) NOT NULL,
  `Id_User` varchar(10) NOT NULL,
  `Id_Departemen` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`Id_Karyawan`, `Nama_Karyawan`, `Jenis_Kelamin`, `Tanggal_Lahir`, `Alamat`, `No_Telepon`, `Jabatan`, `Id_User`, `Id_Departemen`) VALUES
('F001', 'Sri Heryanti', 'Wanita', '1989-06-02', 'Jl. Cemara V No. 32', '086633203461', 'Kepala Divisi Produksi', 'D006', 'C001'),
('F002', 'Danto Yudis', 'Pria', '1995-08-07', 'Jl. Gading No. 450', '086047770466', 'Kepala Divisi HR', 'D007', 'C002'),
('F003', 'Andriyanto', 'Pria', '1994-12-23', 'Jl. Baranang Siang No. 244', '084981868414', 'Kepala Divisi Purchasing', 'D008', 'C003'),
('F004', 'Irwan Rusdi', 'Pria', '1998-09-19', 'Jl. Bakhita No. 821', '087169904149', 'Kepala Divisi Pengiriman', 'D009', 'C004'),
('F005', 'Siti Maryam', 'Wanita', '1991-02-28', 'Jl. Bakit No. 151', '089501053590', 'Staf Produksi', 'D010', 'C001'),
('F006', 'Nurjanah', 'Wanita', '1993-10-04', 'Jl. Sugiyopranoto No. 115', '089492280250', 'Staf Produksi', 'D011', 'C001'),
('F007', 'Bagus Rizki', 'Pria', '1989-01-30', 'Jl. Achmad Yani No. 965', '082727381566', 'Staf HR', 'D012', 'C002'),
('F008', 'Vera Haryanti', 'Wanita', '1995-02-21', 'Jl. Sugiyopranoto No. 115', '082119647766', 'Staf Purchasing', 'D013', 'C003'),
('F009', 'Jail Hutapea', 'Pria', '1994-04-06', 'Jl. Ketandan No. 590', '089818684147', 'Staf Pengiriman', 'D014', 'C004'),
('F010', 'Ilyas Siregar', 'Pria', '0000-00-00', 'Jl. Abdul No. 344', '087564130900', 'Staf Produksi', 'D015', 'C001'),
('F011', 'Viktor Ramadan', 'Pria', '1997-03-02', 'Jl. Supono No. 15', '083618160892', 'Staf Pengiriman', 'D016', 'C004'),
('F012', 'Ratih Hasanah', 'Wanita', '1990-07-18', 'Jl. Bacang No. 38', '089427335260', 'Staf Produksi', 'D017', 'C001'),
('F013', 'Laras Mayasari', 'Wanita', '1996-02-22', 'Jl. Sukajadi No. 87', '086326306344', 'Staf Produksi', 'D018', 'C001'),
('F014', 'Calista Laksita', 'Wanita', '1994-07-13', 'Jl. Suryo Pranoto No. 580', '082019647767', 'Staf Purchasing', 'D019', 'C003'),
('F015', 'Vivi Rahimah', 'Wanita', '1992-09-02', 'Jl. Basket No. 143', '085765946319', 'Staf Pengiriman', 'D020', 'C004'),
('F016', 'Halimah Ratih', 'Wanita', '1990-01-24', 'Jl. Padang No. 160', '086400686381', 'Staf Produksi', 'D021', 'C001'),
('F017', 'Yessi Suryatmi', 'Wanita', '1993-06-02', 'Jl. Pacuan Kuda No. 56', '086999797227', 'Staf Produksi', 'D022', 'C001'),
('F018', 'Eryan Julaika', 'Pria', '1991-11-13', 'Jl. Sugiono No. 589', '089067441474', 'Staf Produksi', 'D023', 'C001'),
('F019', 'Sabrina Nasyiah', 'Wanita', '1991-08-04', 'Jl. Baja Raya No. 28', '082128952878', 'Staf HR', 'D024', 'C002'),
('F020', 'Dadap Prayoga', 'Pria', '1992-04-15', 'Jl. Kasablanka No. 17', '086703284360', 'Staf HR', 'D025', 'C002'),
('F021', 'Betania Tari', 'Wanita', '1998-05-20', 'Jl. Sudirman No. 74', '085790447847', 'Staf Produksi', 'D026', 'C001'),
('F022', 'Tarno Hasanudin', 'Pria', '1990-10-17', 'Jl. Singkawang No.15', '087997178233', 'Staf Purchasing', 'D027', 'C003'),
('F023', 'Aji Gunawan', 'Pria', '1995-05-30', 'Jl. Akordion No. 13', '086369782556', 'Staf Pengiriman', 'D028', 'C004'),
('F024', 'Rina Puspasari', 'Wanita', '1991-01-16', 'Jl. Bagis Utama No. 10', '088033841997', 'Staf HR', 'D029', 'C002'),
('F025', 'Bakiadi Prasasta', 'Pria', '1993-12-30', 'Jl. Gading No. 65', '081785936844', 'Staf Purchasing', 'D030', 'C003');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `Kode_Kategori` varchar(10) NOT NULL,
  `Nama_Kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`Kode_Kategori`, `Nama_Kategori`) VALUES
('G001', 'T-Shirt'),
('G002', 'Kemeja'),
('G003', 'Hoodie'),
('G004', 'Blouse'),
('G005', 'Outerwear');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_pembayaran`
--

CREATE TABLE `log_pembayaran` (
  `Id_Pembayaran` varchar(10) DEFAULT NULL,
  `Status_Awal` enum('Diproses','Dibatalkan','Berhasil') DEFAULT NULL,
  `Status_Akhir` enum('Diproses','Dibatalkan','Berhasil') DEFAULT NULL,
  `Tanggal_Perubahan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `log_pembayaran`
--

INSERT INTO `log_pembayaran` (`Id_Pembayaran`, `Status_Awal`, `Status_Akhir`, `Tanggal_Perubahan`) VALUES
('K001', 'Diproses', 'Berhasil', '2022-03-05'),
('K002', 'Diproses', 'Berhasil', '2022-03-05'),
('K003', 'Diproses', 'Berhasil', '2022-03-06'),
('K004', 'Diproses', 'Berhasil', '2022-03-08'),
('K005', 'Diproses', 'Berhasil', '2022-03-13'),
('K006', 'Diproses', 'Dibatalkan', '2022-03-16'),
('K007', 'Diproses', 'Berhasil', '2022-03-17'),
('K008', 'Diproses', 'Berhasil', '2022-03-20'),
('K009', 'Diproses', 'Berhasil', '2022-03-20'),
('K010', 'Diproses', 'Berhasil', '2022-03-22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_pemesanan`
--

CREATE TABLE `log_pemesanan` (
  `Id_Pemesanan` varchar(10) DEFAULT NULL,
  `Status_Awal` enum('Diproses','Dibatalkan','Selesai') DEFAULT NULL,
  `Status_Akhir` enum('Diproses','Dibatalkan','Selesai') DEFAULT NULL,
  `Tanggal_Perubahan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `log_pemesanan`
--

INSERT INTO `log_pemesanan` (`Id_Pemesanan`, `Status_Awal`, `Status_Akhir`, `Tanggal_Perubahan`) VALUES
('J001', 'Diproses', 'Selesai', '2022-03-06'),
('J002', 'Diproses', 'Selesai', '2022-03-06'),
('J003', 'Diproses', 'Selesai', '2022-03-07'),
('J005', 'Diproses', 'Dibatalkan', '2002-03-12'),
('J007', 'Diproses', 'Dibatalkan', '2022-03-15'),
('J009', 'Diproses', 'Dibatalkan', '2022-03-17'),
('J011', 'Diproses', 'Dibatalkan', '2022-03-19'),
('J013', 'Diproses', 'Selesai', '2022-03-21'),
('J015', 'Diproses', 'Dibatalkan', '2022-03-24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_pengiriman`
--

CREATE TABLE `log_pengiriman` (
  `Id_Pengiriman` varchar(10) DEFAULT NULL,
  `Status_Awal` enum('Dalam Perjalanan','Tiba di Tujuan') DEFAULT NULL,
  `Status_Akhir` enum('Dalam Perjalanan','Tiba di Tujuan') DEFAULT NULL,
  `Tanggal_Perubahan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `log_pengiriman`
--

INSERT INTO `log_pengiriman` (`Id_Pengiriman`, `Status_Awal`, `Status_Akhir`, `Tanggal_Perubahan`) VALUES
('M001', 'Dalam Perjalanan', 'Tiba di Tujuan', '2022-03-07'),
('M002', 'Dalam Perjalanan', 'Tiba di Tujuan', '2022-03-07'),
('M003', 'Dalam Perjalanan', 'Tiba di Tujuan', '2022-03-08'),
('M008', 'Dalam Perjalanan', 'Tiba di Tujuan', '2022-03-22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mesin`
--

CREATE TABLE `mesin` (
  `Id_Mesin` varchar(10) NOT NULL,
  `Jenis_Mesin` varchar(20) NOT NULL,
  `Tahun_Pembelian` year(4) NOT NULL,
  `Keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mesin`
--

INSERT INTO `mesin` (`Id_Mesin`, `Jenis_Mesin`, `Tahun_Pembelian`, `Keterangan`) VALUES
('I001', 'Mesin Potong', 2018, 'Masih Beroperasi'),
('I002', 'Mesin Jahit', 2018, 'Masih Beroperasi'),
('I003', 'Mesin Press Uap', 2018, 'Masih Beroperasi'),
('I004', 'Mesin Cetak', 2019, 'Masih Beroperasi'),
('I005', 'Mesin Pengemas', 2019, 'Masih Beroperasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `Id_Pelanggan` varchar(10) NOT NULL,
  `Nama_Pelanggan` varchar(50) NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `No_Telepon` varchar(20) NOT NULL,
  `No_Rekening` int(15) NOT NULL,
  `Id_User` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`Id_Pelanggan`, `Nama_Pelanggan`, `Alamat`, `No_Telepon`, `No_Rekening`, `Id_User`) VALUES
('E001', 'Target', 'Jl. Garu I No. 19B', '02150008000', 2147483647, 'D001'),
('E002', 'Topson Downs', 'Jl. Pembangunan V No. 67A', '08135273000', 2147483647, 'D002'),
('E003', 'Kohl\'s', 'Jl. Yehesi Timur No. 90', '0218934503', 2147483647, 'D003'),
('E004', 'Forever 21', 'Jl. MH. Thamrin, Kb. Melati', '081122780997', 2147483647, 'D004'),
('E005', 'GAP', 'Jl. Kramat Raya No.160', '081337742345', 2147483647, 'D005');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemasok`
--

CREATE TABLE `pemasok` (
  `Id_Pemasok` varchar(10) NOT NULL,
  `Nama_Pemasok` varchar(50) NOT NULL,
  `Alamat_Pemasok` varchar(30) NOT NULL,
  `No_Telepon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemasok`
--

INSERT INTO `pemasok` (`Id_Pemasok`, `Nama_Pemasok`, `Alamat_Pemasok`, `No_Telepon`) VALUES
('A001', 'PT. Cendrawasih Textiles', 'Jl. Cikoko No. 60', '085259011900'),
('A002', 'PT. Garmen Jaya', 'Jl. Dewi Sartika No. 12', '082110976321'),
('A003', 'PT. Bali Nirwana', 'Jl. Teratai No. 80', '089457789327'),
('A004', 'PT. Amos Indah', 'Jl. Timor No. 20', '081221255507'),
('A005', 'PT. Greens Production', 'Jl. Sirsak No. 34', '087747890512');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `Id_Pembayaran` varchar(10) NOT NULL,
  `Id_Pemesanan` varchar(10) NOT NULL,
  `Tanggal_Pembayaran` date NOT NULL,
  `Total_Pembayaran` int(15) NOT NULL,
  `Status_Pembayaran` enum('Diproses','Dibatalkan','Berhasil') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`Id_Pembayaran`, `Id_Pemesanan`, `Tanggal_Pembayaran`, `Total_Pembayaran`, `Status_Pembayaran`) VALUES
('K001', 'J001', '2022-03-04', 1200000, 'Berhasil'),
('K002', 'J002', '2022-03-04', 1125000, 'Berhasil'),
('K003', 'J003', '2022-03-05', 1250000, 'Berhasil'),
('K004', 'J004', '2022-03-07', 1100000, 'Berhasil'),
('K005', 'J006', '2022-03-12', 1800000, 'Berhasil'),
('K006', 'J008', '2022-03-15', 2500000, 'Dibatalkan'),
('K007', 'J010', '2022-03-16', 1400000, 'Berhasil'),
('K008', 'J012', '2022-03-19', 1125000, 'Berhasil'),
('K009', 'J013', '2022-03-19', 1500000, 'Berhasil'),
('K010', 'J014', '2022-03-21', 3500000, 'Berhasil');

--
-- Trigger `pembayaran`
--
DELIMITER $$
CREATE TRIGGER `Pembayaran` BEFORE UPDATE ON `pembayaran` FOR EACH ROW BEGIN 
INSERT INTO Log_Pembayaran
SET Id_Pembayaran = old.Id_Pembayaran, 
Status_Awal = old.Status_Pembayaran, 
Status_Akhir = new.Status_Pembayaran,
Tanggal_Perubahan = old.Tanggal_Pembayaran + 1;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `Id_Pemesanan` varchar(10) NOT NULL,
  `Id_Pelanggan` varchar(10) NOT NULL,
  `Id_Produk` varchar(10) NOT NULL,
  `Tanggal_Pemesanan` date NOT NULL,
  `Jumlah` int(10) NOT NULL,
  `Status_Pemesanan` enum('Diproses','Dibatalkan','Selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`Id_Pemesanan`, `Id_Pelanggan`, `Id_Produk`, `Tanggal_Pemesanan`, `Jumlah`, `Status_Pemesanan`) VALUES
('J001', 'E001', 'H001', '2022-03-04', 20, 'Selesai'),
('J002', 'E002', 'H002', '2022-03-04', 25, 'Selesai'),
('J003', 'E003', 'H003', '2022-03-05', 25, 'Selesai'),
('J004', 'E004', 'H004', '2022-03-07', 20, 'Diproses'),
('J005', 'E005', 'H005', '2002-03-10', 30, 'Dibatalkan'),
('J006', 'E001', 'H009', '2022-03-12', 20, 'Diproses'),
('J007', 'E002', 'H012', '2022-03-13', 20, 'Dibatalkan'),
('J008', 'E003', 'H011', '2022-03-15', 25, 'Diproses'),
('J009', 'E001', 'H007', '2022-03-15', 30, 'Dibatalkan'),
('J010', 'E002', 'H008', '2022-03-16', 20, 'Diproses'),
('J011', 'E003', 'H013', '2022-03-17', 25, 'Dibatalkan'),
('J012', 'E004', 'H002', '2022-03-19', 25, 'Diproses'),
('J013', 'E005', 'H003', '2022-03-19', 30, 'Selesai'),
('J014', 'E001', 'H014', '2022-03-21', 25, 'Diproses'),
('J015', 'E002', 'H015', '2022-03-22', 30, 'Dibatalkan');

--
-- Trigger `pemesanan`
--
DELIMITER $$
CREATE TRIGGER `Pemesanan` BEFORE UPDATE ON `pemesanan` FOR EACH ROW BEGIN 
INSERT INTO Log_Pemesanan
SET Id_Pemesanan = old.Id_Pemesanan, 
Status_Awal = old.Status_Pemesanan, 
Status_Akhir = new.Status_Pemesanan,
Tanggal_Perubahan = old.Tanggal_Pemesanan + 2;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengiriman`
--

CREATE TABLE `pengiriman` (
  `Id_Pengiriman` varchar(10) NOT NULL,
  `Id_Pembayaran` varchar(10) NOT NULL,
  `Kurir` varchar(20) NOT NULL,
  `Tanggal_Pengiriman` date NOT NULL,
  `Status_Pengiriman` enum('Dalam Perjalanan','Tiba di Tujuan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengiriman`
--

INSERT INTO `pengiriman` (`Id_Pengiriman`, `Id_Pembayaran`, `Kurir`, `Tanggal_Pengiriman`, `Status_Pengiriman`) VALUES
('M001', 'K001', 'JNE Express', '2022-03-06', 'Tiba di Tujuan'),
('M002', 'K002', 'SiCepat', '2022-03-06', 'Tiba di Tujuan'),
('M003', 'K003', 'JNE Express', '2022-03-07', 'Tiba di Tujuan'),
('M004', 'K004', 'J&T Express', '2022-03-09', 'Dalam Perjalanan'),
('M005', 'K005', 'Ninja Xpress', '2022-03-17', 'Dalam Perjalanan'),
('M006', 'K007', 'Tiki', '2022-03-18', 'Dalam Perjalanan'),
('M007', 'K008', 'J&T Express', '2022-03-21', 'Dalam Perjalanan'),
('M008', 'K009', 'SiCepat', '2022-03-21', 'Tiba di Tujuan'),
('M009', 'K010', 'J&T Express', '2022-03-23', 'Dalam Perjalanan');

--
-- Trigger `pengiriman`
--
DELIMITER $$
CREATE TRIGGER `Pengiriman` BEFORE UPDATE ON `pengiriman` FOR EACH ROW BEGIN 
INSERT INTO Log_Pengiriman
SET Id_Pengiriman = old.Id_Pengiriman, 
Status_Awal = old.Status_Pengiriman, 
Status_Akhir = new.Status_Pengiriman,
Tanggal_Perubahan = old.Tanggal_Pengiriman + 1;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `Id_Produk` varchar(10) NOT NULL,
  `Kode_Kategori` varchar(10) NOT NULL,
  `Kode_Bahan` varchar(10) NOT NULL,
  `Warna` varchar(20) NOT NULL,
  `Harga` int(15) NOT NULL,
  `Stok` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`Id_Produk`, `Kode_Kategori`, `Kode_Bahan`, `Warna`, `Harga`, `Stok`) VALUES
('H001', 'G001', 'B001', 'Hitam', 60000, 20),
('H002', 'G001', 'B001', 'Putih', 45000, 30),
('H003', 'G001', 'B001', 'Biru', 50000, 35),
('H004', 'G001', 'B001', 'Orange', 55000, 28),
('H005', 'G001', 'B001', 'Kuning', 60000, 25),
('H006', 'G002', 'B003', 'Hitam', 80000, 30),
('H007', 'G002', 'B003', 'Putih', 80000, 25),
('H008', 'G002', 'B003', 'Biru', 70000, 25),
('H009', 'G003', 'B005', 'Abu-abu', 90000, 27),
('H010', 'G003', 'B005', 'Biru', 90000, 30),
('H011', 'G004', 'B004', 'Hitam', 100000, 35),
('H012', 'G004', 'B004', 'Merah', 95000, 25),
('H013', 'G004', 'B004', 'Biru', 95000, 27),
('H014', 'G005', 'B002', 'Hitam', 140000, 30),
('H015', 'G005', 'B002', 'Putih', 130000, 30);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produksi`
--

CREATE TABLE `produksi` (
  `Id_Produksi` varchar(10) NOT NULL,
  `Id_Produk` varchar(10) NOT NULL,
  `Id_Mesin` varchar(10) NOT NULL,
  `Tanggal_Produksi` date NOT NULL,
  `Waktu_Produksi` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produksi`
--

INSERT INTO `produksi` (`Id_Produksi`, `Id_Produk`, `Id_Mesin`, `Tanggal_Produksi`, `Waktu_Produksi`) VALUES
('L001', 'H001', 'I001', '2022-03-05', '10:00:00'),
('L002', 'H001', 'I002', '2022-03-05', '10:45:00'),
('L003', 'H002', 'I001', '2022-03-05', '10:55:00'),
('L004', 'H001', 'I003', '2022-03-05', '11:50:00'),
('L005', 'H002', 'I002', '2022-03-05', '11:50:00'),
('L006', 'H001', 'I004', '2022-03-05', '12:25:00'),
('L007', 'H002', 'I003', '2022-03-05', '13:10:00'),
('L008', 'H001', 'I005', '2022-03-05', '13:20:00'),
('L009', 'H002', 'I005', '2022-03-05', '13:52:00'),
('L010', 'H003', 'I001', '2022-03-06', '10:00:00'),
('L011', 'H003', 'I002', '2022-03-06', '10:55:00'),
('L012', 'H003', 'I003', '2022-03-06', '12:15:00'),
('L013', 'H003', 'I005', '2022-03-06', '12:57:00'),
('L014', 'H004', 'I001', '2022-03-08', '10:00:00'),
('L015', 'H004', 'I002', '2022-03-08', '10:45:00'),
('L016', 'H004', 'I003', '2022-03-08', '11:50:00'),
('L017', 'H004', 'I005', '2022-03-08', '12:25:00'),
('L018', 'H009', 'I001', '2022-03-13', '10:00:00'),
('L019', 'H009', 'I002', '2022-03-13', '10:45:00'),
('L020', 'H009', 'I003', '2022-03-13', '11:50:00'),
('L021', 'H009', 'I004', '2022-03-13', '12:25:00'),
('L022', 'H009', 'I005', '2022-03-13', '13:20:00'),
('L023', 'H008', 'I001', '2022-03-17', '10:00:00'),
('L024', 'H008', 'I002', '2022-03-17', '10:55:00'),
('L025', 'H008', 'I003', '2022-03-17', '12:15:00'),
('L026', 'H008', 'I005', '2022-03-17', '12:57:00'),
('L027', 'H002', 'I001', '2022-03-20', '10:00:00'),
('L028', 'H002', 'I002', '2022-03-20', '10:55:00'),
('L029', 'H003', 'I001', '2022-03-20', '11:05:00'),
('L030', 'H003', 'I002', '2022-03-20', '12:10:00'),
('L031', 'H002', 'I003', '2022-03-20', '12:15:00'),
('L032', 'H002', 'I005', '2022-03-20', '12:57:00'),
('L033', 'H003', 'I003', '2022-03-20', '13:45:00'),
('L034', 'H003', 'I005', '2022-03-20', '14:35:00'),
('L035', 'H014', 'I001', '2022-03-22', '10:00:00'),
('L036', 'H014', 'I002', '2022-03-22', '10:55:00'),
('L037', 'H014', 'I003', '2022-03-22', '12:15:00'),
('L038', 'H014', 'I005', '2022-03-22', '12:57:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `Id_User` varchar(10) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`Id_User`, `Username`, `Password`) VALUES
('D001', 'targetfashion', 'target1122'),
('D002', 'itstopsondowns', 'topsond123'),
('D003', 'kohlsbrand', 'kohlsfashion'),
('D004', 'forever21store', 'forever2121'),
('D005', 'GAPstore', 'gapgap'),
('D006', 'Sri Heryanti', 'srh.89'),
('D007', 'Danto Yudis', 'yd__07'),
('D008', 'Andriyanto', 'and_to'),
('D009', 'Irwan Rusdi', '1998rsd'),
('D010', 'Siti Maryam', 'st.mrym'),
('D011', 'Nurjanah', 'nrjnh_'),
('D012', 'Bagus Rizki', 'bagus_04'),
('D013', 'Vera Haryanti', 'ver95'),
('D014', 'Jail Hutapea', 'jailhutapea23'),
('D015', 'Ilyas Siregar', 'ilyass56'),
('D016', 'Viktor Ramadan', 'viktoram98'),
('D017', 'Ratih Hasanah', 'ratinah32'),
('D018', 'Laras Mayasari', 'larass16'),
('D019', 'Calista Laksita', 'calaksit_'),
('D020', 'Vivi Rahimah', 'vivie21'),
('D021', 'Halimah Ratih', 'hlmhrth24'),
('D022', 'Yessi Suryatmi', 'yesyessi2'),
('D023', 'Eryan Julaika', 'ryanjul91'),
('D024', 'Sabrina Nasyiah', 'brinbrina'),
('D025', 'Dadap Prayoga', 'dadapp154'),
('D026', 'Betania Tari', 'tanitari'),
('D027', 'Tarno Hasanudin', 'tarnohsd90'),
('D028', 'Aji Gunawan', 'ajigunnn'),
('D029', 'Rina Puspasari', 'puspar161'),
('D030', 'Bakiadi Prasasta', 'prasas3093');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bahan_baku`
--
ALTER TABLE `bahan_baku`
  ADD PRIMARY KEY (`Kode_Bahan`),
  ADD KEY `Id_Pemasok` (`Id_Pemasok`);

--
-- Indeks untuk tabel `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`Id_Departemen`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`Id_Karyawan`),
  ADD KEY `karyawan_ibfk_1` (`Id_User`),
  ADD KEY `karyawan_ibfk_2` (`Id_Departemen`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`Kode_Kategori`);

--
-- Indeks untuk tabel `log_pembayaran`
--
ALTER TABLE `log_pembayaran`
  ADD KEY `Id_Pembayaran` (`Id_Pembayaran`);

--
-- Indeks untuk tabel `log_pemesanan`
--
ALTER TABLE `log_pemesanan`
  ADD KEY `Id_Pemesanan` (`Id_Pemesanan`);

--
-- Indeks untuk tabel `log_pengiriman`
--
ALTER TABLE `log_pengiriman`
  ADD KEY `Id_Pengiriman` (`Id_Pengiriman`);

--
-- Indeks untuk tabel `mesin`
--
ALTER TABLE `mesin`
  ADD PRIMARY KEY (`Id_Mesin`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`Id_Pelanggan`),
  ADD KEY `Id_User` (`Id_User`);

--
-- Indeks untuk tabel `pemasok`
--
ALTER TABLE `pemasok`
  ADD PRIMARY KEY (`Id_Pemasok`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`Id_Pembayaran`),
  ADD KEY `pembayaran_ibfk_1` (`Id_Pemesanan`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`Id_Pemesanan`),
  ADD KEY `pemesanan_ibfk_1` (`Id_Pelanggan`),
  ADD KEY `pemesanan_ibfk_2` (`Id_Produk`);

--
-- Indeks untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`Id_Pengiriman`),
  ADD KEY `pengiriman_ibfk_1` (`Id_Pembayaran`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`Id_Produk`),
  ADD KEY `Kode_Kategori` (`Kode_Kategori`),
  ADD KEY `Kode_Bahan` (`Kode_Bahan`);

--
-- Indeks untuk tabel `produksi`
--
ALTER TABLE `produksi`
  ADD PRIMARY KEY (`Id_Produksi`),
  ADD KEY `Id_Produk` (`Id_Produk`),
  ADD KEY `Id_Mesin` (`Id_Mesin`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id_User`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bahan_baku`
--
ALTER TABLE `bahan_baku`
  ADD CONSTRAINT `bahan_baku_ibfk_1` FOREIGN KEY (`Id_Pemasok`) REFERENCES `pemasok` (`Id_Pemasok`);

--
-- Ketidakleluasaan untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD CONSTRAINT `karyawan_ibfk_1` FOREIGN KEY (`Id_User`) REFERENCES `user` (`Id_User`) ON UPDATE CASCADE,
  ADD CONSTRAINT `karyawan_ibfk_2` FOREIGN KEY (`Id_Departemen`) REFERENCES `departemen` (`Id_Departemen`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `log_pembayaran`
--
ALTER TABLE `log_pembayaran`
  ADD CONSTRAINT `log_pembayaran_ibfk_1` FOREIGN KEY (`Id_Pembayaran`) REFERENCES `pembayaran` (`Id_Pembayaran`);

--
-- Ketidakleluasaan untuk tabel `log_pemesanan`
--
ALTER TABLE `log_pemesanan`
  ADD CONSTRAINT `log_pemesanan_ibfk_1` FOREIGN KEY (`Id_Pemesanan`) REFERENCES `pemesanan` (`Id_Pemesanan`);

--
-- Ketidakleluasaan untuk tabel `log_pengiriman`
--
ALTER TABLE `log_pengiriman`
  ADD CONSTRAINT `log_pengiriman_ibfk_1` FOREIGN KEY (`Id_Pengiriman`) REFERENCES `pengiriman` (`Id_Pengiriman`);

--
-- Ketidakleluasaan untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `pelanggan_ibfk_1` FOREIGN KEY (`Id_User`) REFERENCES `user` (`Id_User`);

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`Id_Pemesanan`) REFERENCES `pemesanan` (`Id_Pemesanan`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`Id_Pelanggan`) REFERENCES `pelanggan` (`Id_Pelanggan`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pemesanan_ibfk_2` FOREIGN KEY (`Id_Produk`) REFERENCES `produk` (`Id_Produk`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD CONSTRAINT `pengiriman_ibfk_1` FOREIGN KEY (`Id_Pembayaran`) REFERENCES `pembayaran` (`Id_Pembayaran`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`Kode_Kategori`) REFERENCES `kategori` (`Kode_Kategori`),
  ADD CONSTRAINT `produk_ibfk_2` FOREIGN KEY (`Kode_Bahan`) REFERENCES `bahan_baku` (`Kode_Bahan`);

--
-- Ketidakleluasaan untuk tabel `produksi`
--
ALTER TABLE `produksi`
  ADD CONSTRAINT `produksi_ibfk_1` FOREIGN KEY (`Id_Produk`) REFERENCES `produk` (`Id_Produk`),
  ADD CONSTRAINT `produksi_ibfk_2` FOREIGN KEY (`Id_Mesin`) REFERENCES `mesin` (`Id_Mesin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
