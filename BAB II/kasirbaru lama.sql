-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2022 at 09:46 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasirbaru`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(1, 'Bc.Kt180T20.001', 2, 'Bedcover Set Kintakun Dluxe Ukuran King 180x200 Rumbai - New Edition 2022 - Modern Minimalis', 'Kintakun', '366988', '367998', 'PCS', '10', '22 June 2022, 1:50', NULL),
(2, 'Bc.Kt180T20.002', 2, 'Bedcover Set Kintakun Dluxe Ukuran King 180x200 Flat - New Edition 2022 - Modern Minimalis', 'Kintakun', '319988', '322998', 'PCS', '10', '22 June 2022, 1:50', NULL),
(3, 'Sp.Kt200T20.001', 1, 'Sprei Kintakun Dluxe Ukuran Extra King 200x200 - New Edition 2022 - Modern Minimalis - Anak - Kotak Aesthetic - Seprei Double', 'Kintakun', '115988', '117998', 'PCS', '10', '22 June 2022, 1:50', NULL),
(4, 'Sp.Kt180T20.001', 1, 'Sprei Kintakun Dluxe Ukuran King 180x200 - New Edition 2022 - Modern Minimalis - Anak - Kotak Aesthetic - Seprei Double', 'Kintakun', '111988', '112998', 'PCS', '10', '22 June 2022, 1:50', NULL),
(5, 'Sp.Kt160T20.001', 1, 'Sprei Kintakun Dluxe Ukuran Queen 160x200 - New Edition 2022 - Modern Minimalis - Anak - Kotak Aesthetic - Seprei Double', 'Kintakun', '108988', '110998', 'PCS', '9', '22 June 2022, 1:50', NULL),
(6, 'Sp.Kt120T20.001', 1, 'Sprei Kintakun Dluxe Ukuran Extra Single 120x200 - New Edition 2022 - Modern Minimalis - Anak - Kotak Aesthetic - Seprei Single', 'Kintakun', '77988', '79998', 'PCS', '10', '22 June 2022, 1:50', NULL),
(7, 'Sp.Kt100T20.001', 1, 'Sprei Kintakun Dluxe Ukuran Single 100x200 - New Edition 2022 - Modern Minimalis - Anak - Kotak Aesthetic - Seprei Single', 'Kintakun', '75988', '77998', 'PCS', '10', '22 June 2022, 1:50', NULL),
(8, 'Sp.Kt180T20.002', 1, 'Sprei Kintakun Dluxe Ukuran Double King 180x200 - Minimalis - Polos Embos - Flowers - Anak Edisi 2', 'Kintakun', '111988', '112998', 'PCS', '10', '22 June 2022, 1:50', NULL),
(9, 'Sp.Kt160T20.002', 1, 'Sprei Kintakun Dluxe Ukuran Double Queen 160x200 - Minimalis - Polos Embos - Flowers - Anak Edisi 2', 'Kintakun(180x200)', '108988', '110998', 'PCS', '10', '22 June 2022, 2:25', '22 June 2022, 2:43'),
(10, 'Sp.Kt180T20.003', 1, 'Sprei Kintakun Dluxe Double King 180x200 - New Edition - Minimalis - Anak - Kotak Aesthetic - Polos Embos', 'Kintakun(160x200)', '111988', '112998', 'PCS', '10', '22 June 2022, 2:27', '22 June 2022, 2:34'),
(11, 'Sp.Kt160T20.003', 1, 'Sprei Kintakun Dluxe Double Queen 160x200 - New Edition - Minimalis - Anak - Kotak Aesthetic - Polos Embos', 'Kintakun(160x200)', '108988', '110998', 'PCS', '10', '21 June 2022, 5:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(1, 'Sprei', '15 June 2022, 1:50'),
(2, 'Bedcover', '22 June 2022, 13:10');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `level` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `id_member`, `user`, `pass`, `level`) VALUES
(1, 1, 'rizaluardi', '150fb021c56c33f82eef99253eb36ee1', 'admin'),
(10, 2, 'tes', '1d0258c2440a8d19e716292b231e3190', 'manager'),
(12, 2, 'isam', 'c7911af3adbd12a035b289556d96470a', 'kasir'),
(13, 2, 'desy', 'c7911af3adbd12a035b289556d96470a', 'kasir'),
(14, 2, 'astri', 'c7911af3adbd12a035b289556d96470a', 'kasir');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
(1, 'Rizaluardi', 'Kolmas', '0812356789', 'rizaluardiaps@gmail.com', 'unnamed.jpg', '123456778'),
(2, 'rizaluardi', 'tes', '082120132826', 'rizaluardi@gmail.com', 'unnamed.jpg', '1111111111');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `periode`) VALUES
(1, 'Sp.Kt160T20.002', 2, '1', '111988', '15 June 2022, 2:41', '06-2022'),
(2, 'Sp.Kt160T20.001', 2, '1', '110998', '22 June 2022, 13:55', '06-2022');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'INStore', 'Margajaya, Kec. Ngamprah, Kabupaten Bandung Barat, Jawa Barat 40552', '(022) 91197823', 'ADMIN');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_barang` (`id_barang`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`),
  ADD KEY `login_ibfk_1` (`id_member`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
