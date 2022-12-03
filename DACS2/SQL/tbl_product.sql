-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 05, 2018 at 03:20 AM
-- Server version: 5.6.36-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Table structure for table `tbl_dangky`
--

CREATE TABLE IF NOT EXISTS `tbl_dangky` (
  `id_dangky` int(11) NOT NULL AUTO_INCREMENT,
  `tenkhachhang` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL,
  PRIMARY KEY (`id_dangky`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Table structure for table `tbl_danhmuc`
--

CREATE TABLE IF NOT EXISTS `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL,
  PRIMARY KEY (`id_danhmuc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Table structure for table `tbl_marque`
--

CREATE TABLE IF NOT EXISTS `tbl_marque` (
  `id_hang` int(11) NOT NULL AUTO_INCREMENT,
  `tenhang` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL,
  PRIMARY KEY (`id_hang`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE IF NOT EXISTS `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL AUTO_INCREMENT,
  `tensanpham` varchar(100) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` float NOT NULL,
  `soluongsp` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `chitiet` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  PRIMARY KEY (`id_sanpham`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_product`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
