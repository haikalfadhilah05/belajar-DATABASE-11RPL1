-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2022 at 10:00 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujian_haikal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_obat`
--

CREATE TABLE `tbl_obat` (
  `kode_obat` varchar(25) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `stok` int(20) NOT NULL,
  `harga_beli` int(20) NOT NULL,
  `harga_jual` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_obat`
--

INSERT INTO `tbl_obat` (`kode_obat`, `nama_obat`, `jenis`, `satuan`, `stok`, `harga_beli`, `harga_jual`) VALUES
('K001', 'Allerin 120cc', 'Obat Terbatas', 'Botol', 50, 20000, 22000),
('K002', 'Becombion 110ml', 'Obat Bebas', 'Botol', 10, 15000, 16000),
('K003', 'Becombion 60ml', 'Obat Bebas', 'Botol', 5, 8000, 9000),
('K004', 'Betadine Vag Plus', 'Obat Bebas', 'Botol', 12, 12000, 13000),
('K006', 'Diazepam', 'Obat keras', 'Tablet', 4, 55000, 60000),
('K007', 'CTM', 'Obat Bebas', 'Tablet', 10, 70000, 75000),
('K008', 'Amoxicilin', 'Obat Terbatas', 'Tablet', 74, 975, 1100),
('K009', 'Antimo', 'Obat Bebas', 'Tablet', 2, 5100, 6000),
('K010', 'Parasetamol', 'Obat Bebas', 'Strips', 100, 3000, 4000),
('K011', 'Paramex', 'Obat bebas', 'lembar', 14, 4000, 5000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_obat`
--
ALTER TABLE `tbl_obat`
  ADD PRIMARY KEY (`kode_obat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
