-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2015 at 11:24 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mobileshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `blsanpham`
--

CREATE TABLE IF NOT EXISTS `blsanpham` (
  `id_bl` int(10) NOT NULL,
  `id_sp` int(10) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dien_thoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `binh_luan` text COLLATE utf8_unicode_ci NOT NULL,
  `ngay_gio` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blsanpham`
--

INSERT INTO `blsanpham` (`id_bl`, `id_sp`, `ten`, `dien_thoai`, `binh_luan`, `ngay_gio`) VALUES
(1, 1, 'Vietpro Education', '0968 511 155', 'Đây là dòng sản phẩm đáng chờ đợi nhất trong năm nay, với cấu hình mạnh và giá thành tương đối mềm so với các dòng Smart Phone của các hãng khác.', '2013-05-06 09:19:30'),
(2, 1, 'Vietpro Education', '0968 511 155', 'Đây là dòng sản phẩm đáng chờ đợi nhất trong năm nay, với cấu hình mạnh và giá thành tương đối mềm so với các dòng Smart Phone của các hãng khác.', '2013-05-06 09:19:30'),
(3, 1, 'Vietpro Education', '0968 511 155', 'Đây là dòng sản phẩm đáng chờ đợi nhất trong năm nay, với cấu hình mạnh và giá thành tương đối mềm so với các dòng Smart Phone của các hãng khác.', '2013-05-06 09:19:30'),
(4, 1, 'Vietpro Education', '0968 511 155', 'Đây là dòng sản phẩm đáng chờ đợi nhất trong năm nay, với cấu hình mạnh và giá thành tương đối mềm so với các dòng Smart Phone của các hãng khác.', '2013-05-06 09:19:30'),
(5, 1, 'Vietpro Education', '0968 511 155', 'Đây là dòng sản phẩm đáng chờ đợi nhất trong năm nay, với cấu hình mạnh và giá thành tương đối mềm so với các dòng Smart Phone của các hãng khác.', '2013-05-06 09:19:30'),
(6, 35, 'fsfsdre', 'kk', 'kklk', '2014-11-18 11:05:40'),
(7, 3, 'edfd', 'fds', 'fdsfds', '2014-11-19 18:57:57'),
(8, 34, 'djfd', 'sfsdfd', 'sfdsf', '2014-11-24 15:54:57');

-- --------------------------------------------------------

--
-- Table structure for table `dmsanpham`
--

CREATE TABLE IF NOT EXISTS `dmsanpham` (
  `id_dm` int(10) NOT NULL,
  `ten_dm` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dmsanpham`
--

INSERT INTO `dmsanpham` (`id_dm`, `ten_dm`) VALUES
(1, 'iPhone'),
(2, 'Samsung'),
(3, 'Sony Ericson'),
(4, 'LG'),
(5, 'HTC'),
(6, 'Nokia'),
(7, 'Blackberry'),
(8, 'Asus'),
(9, 'Lenovo'),
(10, 'Motorola'),
(11, 'Mobiado'),
(12, 'Vertu'),
(13, 'QMobile');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE IF NOT EXISTS `sanpham` (
  `id_sp` int(10) NOT NULL,
  `id_dm` int(10) NOT NULL,
  `ten_sp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `anh_sp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gia_sp` int(10) NOT NULL,
  `bao_hanh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phu_kien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tinh_trang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `khuyen_mai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trang_thai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dac_biet` int(1) NOT NULL,
  `chi_tiet_sp` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id_sp`, `id_dm`, `ten_sp`, `anh_sp`, `gia_sp`, `bao_hanh`, `phu_kien`, `tinh_trang`, `khuyen_mai`, `trang_thai`, `dac_biet`, `chi_tiet_sp`) VALUES
(1, 1, 'IPhone 3GS 32G Màu Đen', 'IPhone-3GS-32G-Mau-Den.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'adas'),
(6, 2, 'Samsung Galaxy Note N7000 pink', 'Sam-Galaxy-Note-N7000-pink.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, ''),
(12, 3, 'Sony Arc S (LT18i) Trắng', 'Sony-arc-S-LT18i-Trang.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, ''),
(24, 5, 'HTC One Đen 16GB công ty FPT', '011.jpg', 100000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, '<p>&nbsp;123abc</p>'),
(39, 2, 'ABCD', '008.jpg', 55555, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 0, 'ABCDDDDDDD'),
(40, 4, '1DSD', '003.jpg', 100000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 0, 'SDSĐSD');

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE IF NOT EXISTS `thanhvien` (
  `id_thanhvien` int(10) NOT NULL,
  `tai_khoan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quyen_truy_cap` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`id_thanhvien`, `tai_khoan`, `mat_khau`, `quyen_truy_cap`) VALUES
(1, 'admin', 'admin', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blsanpham`
--
ALTER TABLE `blsanpham`
  ADD PRIMARY KEY (`id_bl`);

--
-- Indexes for table `dmsanpham`
--
ALTER TABLE `dmsanpham`
  ADD PRIMARY KEY (`id_dm`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sp`);

--
-- Indexes for table `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`id_thanhvien`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blsanpham`
--
ALTER TABLE `blsanpham`
  MODIFY `id_bl` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `dmsanpham`
--
ALTER TABLE `dmsanpham`
  MODIFY `id_dm` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sp` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `id_thanhvien` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
