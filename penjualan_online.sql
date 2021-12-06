-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2019 at 04:14 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `username` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `nama_pelanggan` varchar(25) NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`username`, `email`, `password`, `nama_pelanggan`, `no_telp`) VALUES
('Ely', 'elyagustin@gmail.com', '14121996', 'Ely Agustina', '+628 2387675654'),
('Kiky', 'kikysuhayati@gmail.com', '14121996', 'Kiky Suhayati', '+628 2376890978');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(10) NOT NULL,
  `username` varchar(25) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_pembelian` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `username`, `tanggal_pembelian`, `nama_produk`, `harga_produk`, `jumlah`, `total_pembelian`) VALUES
(1, 'Ely', '2019-01-02', 'Fiqih Wanita', 90000, 2, 180000),
(2, 'Kiky', '2019-01-03', 'Fiqih Sholat', 134000, 1, 134000),
(3, 'Ely', '2019-01-24', 'Tasbih Biru', 45000, 2, 90000),
(4, 'Ely', '2019-01-23', 'Rehal Plastik', 43000, 2, 86000),
(5, 'Kiky', '2019-01-08', 'Muhammad Sang Yatim', 95000, 2, 190000),
(6, 'Kiky', '2019-01-07', 'Tasbih Gold', 65000, 2, 130000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(5) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `harga_produk` int(10) NOT NULL,
  `foto_produk` varchar(25) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `foto_produk`, `keterangan`) VALUES
(1, 'Halal & Haram', 125000, 'BK1.jpg', ''),
(2, 'Fiqih Wanita', 90000, 'BK2.jpg', ''),
(3, 'Fiqih Sholat', 134000, 'BK3.jpg', ''),
(5, 'Bimbingan Islam Untuk Hidup', 175000, 'BK5.jpg', ''),
(6, 'Muhammad Sang Yatim', 95000, 'BK6.jpg', ''),
(7, 'Biografi Umar Bin Khattab', 189000, 'BK7.jpg', ''),
(8, 'Biografi Utsman Bin Affan', 189000, 'BK8.jpg', ''),
(9, 'Biografi Abu Bakar Siddiq', 189000, 'BK9.jpg', ''),
(10, 'Biografi Ali Bin Abi Tholib', 189000, 'BK10.jpg', ''),
(16, 'AL-Quran Tafsir Per Kata', 180000, 'QT8.jpg', ''),
(17, 'Tasbih Biru ', 45000, 'TSB1.jpg', ''),
(18, 'Tasbih Biru Putih', 34000, 'TSB2.jpg', ''),
(19, 'Tasbih Biru Hitam', 49000, 'TSB3.jpg', ''),
(20, 'Tasbih Gold', 65000, 'TSB4.jpg', ''),
(21, 'Tasbih Kayu Coklat', 67000, 'TSB5.jpg', ''),
(22, 'Tasbih Kayu Gold', 78000, 'TSB9.jpg', ''),
(23, 'Tasbih Hijau', 50000, 'TSB11.jpg', ''),
(24, 'Rehal Ukir', 123000, 'RH3.jpg', ''),
(25, 'Rehal Ukir Biasa', 90000, 'RH4.jpg', ''),
(26, 'Rehal Meja', 230000, 'RH5.jpg', ''),
(27, 'Rehal Plastik', 43000, 'RH7.jpg', ''),
(28, 'Mukenah Merah', 167000, 'MK1.jpg', ''),
(29, 'Mukenah Batik Pink', 154000, 'MK6.jpg', ''),
(30, 'Mukenah Batik Ungu', 156000, 'MK7.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(25) NOT NULL,
  `paswd` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level` int(1) NOT NULL,
  `ket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `paswd`, `email`, `nama`, `level`, `ket`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'bagoeswidodogallery@gmail.com', 'Bagoes Widodo', 1, 'WEB Developer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
