-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 12, 2012 at 06:49 AM
-- Server version: 5.1.33
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `laptopthay`
--

-- --------------------------------------------------------

--
-- Table structure for table `banggia`
--

CREATE TABLE IF NOT EXISTS `banggia` (
  `mabanggia` int(11) NOT NULL AUTO_INCREMENT,
  `tenbanggia` varchar(200) NOT NULL,
  PRIMARY KEY (`mabanggia`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `banggia`
--

INSERT INTO `banggia` (`mabanggia`, `tenbanggia`) VALUES
(1, 'Bang gia laptop.pdf'),
(2, 'Bang gia may bo.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE IF NOT EXISTS `donhang` (
  `idDH` int(12) NOT NULL AUTO_INCREMENT,
  `Makhachhang` int(11) NOT NULL,
  `ThoiDiemDatHang` date NOT NULL,
  `ThoiDiemGiaoHang` date NOT NULL,
  `DiaDiemGiaoHang` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TenNguoiNhan` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GhiChu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `TinhTrang` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idDH`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`idDH`, `Makhachhang`, `ThoiDiemDatHang`, `ThoiDiemGiaoHang`, `DiaDiemGiaoHang`, `TenNguoiNhan`, `GhiChu`, `TinhTrang`) VALUES
(12, 5, '2009-07-29', '2009-07-29', 'TPHCM', 'Administrator', NULL, 0),
(13, 1, '2011-01-28', '2010-01-29', 'qqqqqqqq', 'ger', NULL, 0),
(14, 1, '2011-01-28', '2012-01-15', 'wwwwwwwwwwwwwww', 'ger', NULL, 0),
(15, 2, '2011-02-10', '2011-04-04', 'uuuu', 'dan', NULL, 0),
(16, 1, '2011-02-10', '2011-06-06', 'hhhhh', 'dan', NULL, 0),
(17, 2, '2011-02-10', '2011-07-07', 'cdn', 'dan', NULL, 0),
(18, 5, '2011-02-10', '2011-11-11', 'Phước Bình', 'dan', NULL, 0),
(19, 0, '2011-07-08', '2011-07-08', 'Phước long ', 'nhien', NULL, 0),
(20, 0, '2011-07-08', '2011-07-08', 'Quận 9', 'nhien', NULL, 0),
(21, 0, '2011-07-11', '2011-07-11', 'Thủ đức', 'nhien', NULL, 0),
(22, 0, '2011-07-11', '2011-07-11', 'quận 99', 'nhien', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `donhangchitiet`
--

CREATE TABLE IF NOT EXISTS `donhangchitiet` (
  `idChiTiet` int(12) NOT NULL AUTO_INCREMENT,
  `Malaptop` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(4) NOT NULL,
  `Dongia` int(11) NOT NULL,
  `idDH` int(12) NOT NULL,
  PRIMARY KEY (`idChiTiet`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `donhangchitiet`
--

INSERT INTO `donhangchitiet` (`idChiTiet`, `Malaptop`, `SoLuong`, `Dongia`, `idDH`) VALUES
(24, 'SO0001', 1, 14832000, 12),
(23, 'DE0001', 1, 20375460, 12),
(25, 'AC002', 1, 16852860, 12),
(26, 'AC002', 4, 16852860, 13),
(27, 'DE0001', 4, 16852860, 14),
(28, 'AS0001', 2, 14832000, 14),
(29, 'AS0004', 1, 9200060, 14),
(30, 'DE0001', 2, 10200000, 16),
(31, 'DE0002', 1, 10600000, 16),
(32, 'SO0002', 6, 10000000, 17),
(33, 'DE0002', 2, 10600000, 18),
(34, 'AS003', 1, 35000000, 18),
(35, 'SO0002', 3, 10000000, 19),
(36, 'HP0002', 1, 10200000, 19),
(37, 'DE0002', 1, 10600000, 19),
(38, 'DE0008', 1, 11000000, 19),
(39, 'SO0006', 3, 13000000, 19),
(40, 'AS101', 3, 11000000, 19),
(41, 'AC006', 5, 15000000, 19),
(42, 'SO0002', 3, 10000000, 20),
(43, 'DE0002', 1, 10600000, 20),
(44, 'HP0004', 1, 14200000, 20),
(45, 'SO0002', 1, 10000000, 20),
(46, 'AC001', 1, 15200000, 20),
(47, 'DE0001', 1, 10500000, 21),
(48, 'AC002', 1, 10200000, 21),
(49, 'HP0002', 5, 11500000, 21),
(50, 'SO0002', 3, 10000000, 21),
(51, 'SO0003', 1, 10500000, 22),
(52, 'HP0003', 1, 9600000, 22);

-- --------------------------------------------------------

--
-- Table structure for table `hanglaptop`
--

CREATE TABLE IF NOT EXISTS `hanglaptop` (
  `Mahanglaptop` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Tenhanglaptop` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Diachi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Dienthoai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Mahanglaptop`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hanglaptop`
--

INSERT INTO `hanglaptop` (`Mahanglaptop`, `Tenhanglaptop`, `Diachi`, `Dienthoai`, `Email`) VALUES
('SO', 'SONY', '123 Nguyễn Du - Quận 1 - TP.HCM', '8794561', 'sony@vnm.com'),
('DE', 'DELL', 'Khu công nghiệp Sóng Thần Bình Dương', '7895632', 'dell@ntf.com'),
('AS', 'ASUS', 'Khu công nghiệp Sóng Thần Bình Dương', '5789321', 'asus@ds.com'),
('LE', 'LENOVO', 'Khu công nghiệp Biên Hòa - Đồng Nai', '7826451', 'lenovo@dl.com'),
('HP', 'HP', 'Khu công nghiệp Sóng Thần Bình Dương', '6258943', 'hp@dm.com'),
('AC', 'ACER', 'Công ty nhập khẩu Việt Nam', '8741258', 'acer@mj.com'),
('TO', 'TOSHIBA', '123 Điện Biên Phủ', '08123456', 'toshiba@yahoo.com'),
('Fuj', ' Fujitsu ', '160B, Lý Chính Thắng ,Q3 ,TPHCM ', '0909090909', ' Fujitsu @yahoo.com ');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE IF NOT EXISTS `khachhang` (
  `Makhachhang` int(11) NOT NULL AUTO_INCREMENT,
  `Tenkhachhang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Phai` tinyint(1) NOT NULL,
  `Diachi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Dienthoai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Matkhau` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `Macv` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `xacnhanmatkhau` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Makhachhang`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`Makhachhang`, `Tenkhachhang`, `Phai`, `Diachi`, `Dienthoai`, `user`, `Matkhau`, `Macv`, `email`, `ngaysinh`, `xacnhanmatkhau`) VALUES
(1, 'Võ Văn Nhiên', 1, '101 Đỗ Xuân Hợp Q9 TPHCM', '0902071111', 'nhien', '56397d952c6ba7d29e04e3da5625885cd6d24162', '1', '', '0000-00-00', '0'),
(2, 'Lê Duy Anh', 1, '102 Đỗ Xuân Hợp Q9 TPHCM', '0902072222', 'luan', '202cb962ac59075b964b07152d234b70', '0', '', '0000-00-00', '0'),
(3, 'Lưu Gia Thoại', 1, '103 Đỗ Xuân Hợp Q9 TPHCM', '0902073333', 'thoai', '123', '0', '', '0000-00-00', '0'),
(4, 'Trần Ngọc Dân', 1, '104 Đỗ Xuân Hợp Q9 TPHCM', '0902074444', 'dan', '123', '0', '', '0000-00-00', '0'),
(5, 'Nguyễn Văn Hưng', 1, '105 Đỗ Xuân Hợp Q9 TPHCM', '0902075555', 'hung', '123', '0', '', '0000-00-00', '0'),
(6, 'Mai Phương Uyên', 0, '106 Đỗ Xuân Hợp Q9 TPHCM', '0902076666', 'uyen', '123', '0', '', '0000-00-00', '0'),
(7, 'Châu Thị Chứa', 0, '107 Đỗ Xuân Hợp Q9 TPHCM', '0902077777', 'chua', '123', '0', '', '0000-00-00', '0'),
(10, 'Võ Văn Kiến', 0, 'www', '09090999', 'kien', '123', '0', 'kien@giahuchamcom', '1995-12-10', '123'),
(9, ' Nguyễn Thị Vân Hảo ', 0, '123 Võ Văn Ngân', '0909090909', 'hao', '123', '0', 'hao@yahoo.com', '1983-10-10', '123'),
(11, 'tí', 1, '', '', '', '', '0', '', '2012-12-10', ''),
(12, 'tủn', 0, '', '', '', '', '0', '', '2012-12-10', ''),
(13, 'nhien', 0, '', '', '', '', '0', '', '2012-12-10', ''),
(14, 'nhien', 0, '', '', 'nhien2', '', '0', '', '2012-12-10', ''),
(15, 'ffff', 0, 'ffff', '4444', 'ddd', '123', '0', 'e@yahoo.com', '2012-12-10', ''),
(16, 'aa', 0, 'aaa', '444', '', '', '0', 'ddd@yahoo.com', '2012-12-10', ''),
(17, 'ggg', 0, 'gggg', '5555', 'ggg', '123', '0', 'rr@yahoo.com', '2012-12-10', '123'),
(18, 'dddd', 0, 'dddd', '5555', 'yyy', '123', '0', 'dd@yahoo.com', '2012-12-10', '123'),
(19, 'mit', 0, 'sss', '555', 'mit', '202cb962ac59075b964b07152d234b70', '0', 'mit@yahoo.com', '2012-12-10', '202cb962ac59075b964b07152d234b70'),
(20, 'meo', 0, 'sddd', '0909099', 'meo', '56397d952c6ba7d29e04e3da5625885cd6d24162', '0', 'meo@yahoo.com', '2012-12-10', '56397d952c6ba7d29e04e3da5625885cd6d24162');

-- --------------------------------------------------------

--
-- Table structure for table `laptop`
--

CREATE TABLE IF NOT EXISTS `laptop` (
  `Malaptop` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `Tenlaptop` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Mahanglaptop` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Maloailaptop` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `Mota` text COLLATE utf8_unicode_ci NOT NULL,
  `Soluong` int(11) NOT NULL,
  `Dongia` int(11) NOT NULL,
  `Hinh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Ngaynhap` date NOT NULL DEFAULT '2008-10-08',
  `NoiBat` int(11) NOT NULL,
  PRIMARY KEY (`Malaptop`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `laptop`
--

INSERT INTO `laptop` (`Malaptop`, `Tenlaptop`, `Mahanglaptop`, `Maloailaptop`, `Mota`, `Soluong`, `Dongia`, `Hinh`, `Ngaynhap`, `NoiBat`) VALUES
('SO0002', 'Sony vaio VPC-Y216FX/V (Purple violet )', 'SO', 'S', 'Intel® Core™ i3-330UM 1.20GHz 3MB L3 Cache, 500GB 5400rpm Serial ATA, 4GB (2GB x 2)\r\nDDR3/800 RAM, No Optical Drive, 13.3" (1366 x 768) LED, Intel® HD Graphics, camera and\r\nmicrophone with face-tracking technology Bluetooth®, 802.11 b/g/n, Genuine Microsoft®\r\nWindows® 7 Home Premium 64-bit', 400, 11000000, '614_mainimage.jpg ', '2010-12-01', 0),
('SO0003', 'Sony vaio VPC-Y216FX/L (Teal Blue )1', 'SO', 'S', '  Intel® Core™ i3-330UM 1.20GHz 3MB L3 Cache, 500GB 5400rpm Serial ATA, 4GB (2GB x 2)\r\nDDR3/800 RAM, No Optical Drive, 13.3" (1366 x 768) LED, Intel® HD Graphics, camera and\r\nmicrophone with face-tracking technology Bluetooth®, 802.11 b/g/n, Genuine Microsoft®\r\nWindows® 7 Home Premium 64-bit', 400, 10500000, '570_mainimage.jpg', '2008-10-08', 0),
('SO0004', 'Sony vaio VPC-Y216FX/S (Silver )', 'SO', 'S', 'Intel® Core™ i3-330UM 1.20GHz 3MB L3 Cache, 500GB 5400rpm Serial ATA, 4GB (2GB x 2)\r\nDDR3/800 RAM, No Optical Drive, 13.3" (1366 x 768) LED, Intel® HD Graphics, camera and\r\nmicrophone with face-tracking technology Bluetooth®, 802.11 b/g/n, Genuine Microsoft®\r\nWindows® 7 Home Premium 64-bit', 400, 10000000, '833_mainimage.gif ', '2008-10-08', 0),
('SO0005', 'Sony vaio VPC-Y216FX/B (Black)', 'SO', 'S', 'Intel® Core™ i3-330UM 1.20GHz 3MB L3 Cache, 500GB 5400rpm Serial ATA, 4GB (2GB x 2)\r\nDDR3/800 RAM, No Optical Drive, 13.3" (1366 x 768) LED, Intel® HD Graphics, camera and\r\nmicrophone with face-tracking technology Bluetooth®, 802.11 b/g/n, Genuine Microsoft®\r\nWindows® 7 Home Premium 64-bit', 400, 12000000, '900_mainimage.jpg ', '2008-10-08', 0),
('SO0006', 'Sony VAIO® VPC-EA21FX/WI - White', 'SO', 'S', 'Intel® Core i3 330M (2.13 GHz, 3 MB L3 cache, DDR3 1066 MHz), 500GB HDD, 4GB (2GBx2)\r\nDDR3/1066, DVD RW+/- Double Layer, 14" (1366x768) LCD LED, NVIDIA® GeForce® 310M\r\nGPU with T256MB dedicated video RAM, Built-in MOTION EYE® camera and microphone with\r\nface-tracking technology, Bluetooth® Technology, 802.11 b/g/n, Microsoft® Windows® 7 Home\r\nPremium 64-bit', 370, 13000000, 'vdn1285903746.jpg ', '2009-08-18', 0),
('DE0001', 'Dell Inspiron 1440 (AIN-I1440n) (Black)', 'DE', 'D', 'Intel® Core™ i5 - 540M (2.53GHz with Turbo Boost Technology up to 3.06GHz, 3MB L3\r\nCache, 1066MHz DDR3), 500GB HDD, 3GB (2GB+1GB) DDR3/1066, DVD RW+/- Double Layer,\r\n14"(1366x768 ) LCD LED, NVIDIA® GeForce® 310M GPU with 256MB dedicated video RAM,\r\nBuilt-in MOTION EYE® camera and microphone with face-tracking technology, Bluetooth®\r\nTechnology, 802.11 b/g/n, Microsoft® Windows® 7 Professional 64-bit', 400, 10200000, '186_1_mini.jpg ', '2008-10-08', 0),
('DE0002', 'Dell Inspiron 14R N4010- (GCTD51) Obsidian Black', 'DE', 'D', 'Intel Core i3-350M (2.26GHz, Bus 1066FSB, cache 3MB), 4GB (2GB x 2), 320GB (5400),\r\nDVD±RW Double Layer, 14" (1366 x 768) LCD LED, Intel® Graphics Media Accelerator HD,\r\nIntel® 802.11a/b/g/n, build in Webcam, Bluetooth®, Microsoft® Windows® 7 Home Premium 64-\r\nbit,', 900, 10600000, '224_1_mini.jpg ', '2008-10-08', 0),
('DE0006', 'Dell Vostro 3400 (H9YKD1) Aluminum body', 'DE', 'D', 'Intel Core i3-350M (2.26GHz, Bus 1066FSB, cache 3MB), 4GB (2GB x 2), 500GB (5400), 14"\r\n(1366 x 768) LCD LED, Intel® Graphics Media Accelerator HD, DVDRW± Double Layer, Intel®\r\n802.11a/b/g/n, build in Webcam, BlueTooth Integrated Stereo A2DP (2.1 + EDR), Microsoft®\r\nWindows® 7 Home Premium 64-bit', 360, 11500000, 'show_image_in_imgtag(8).png ', '2008-10-08', 0),
('DE0008', 'Dell Vostro 3400 (H9YKD2) Aluminum body', 'DE', 'D', 'Intel Core i3-350M (2.26GHz, Bus 1066FSB, cache 3MB), 4GB (4GB x 1) RAM, 320GB HDD,\r\nDVD±RW Double Layer, 14" (1366 x 768) LCD LED, ATI Mobility Radeon™ HD 5145 Graphics\r\n(512MB Dedicated), Atheros 802.11b/g/n, BlueTooth, build in Webcam, Microsoft® Windows® 7\r\nProfessional 64-bit', 100, 11000000, 'tb_1674.png ', '2010-10-08', 0),
('DE0009', 'DELL STUDIO 1458 (9GKMV4) - New (BLACK)', 'DE', 'D', 'Intel® Core™ i5-460M (2.53GHz, 1066Mhz, 3MB Cache, turbo Boost 2.8Ghz), 500GB\r\n5400rpm Serial ATA, 4GB (2GBx2) DDR3/1066MHz, Blu-Ray DvDRW +/- Double Layer, 14"\r\n(1366 x 768) LED, ATI Mobility Radeon™ HD 5650 1024MB of dedicated video RAM , Builtin\r\nMOTION EYE® camera and microphone with face-tracking technology, Integrated Stereo A2DP\r\n(2.1 + EDR) , Intel® Centrino® Advanced-N 6200 (802.11b/g/n), Microsoft® Windows® 7\r\nProfessional', 180, 11000000, 'a.gif', '2008-11-09', 0),
('DE0010', 'Dell Latitude E6410', 'DE', 'D', 'Intel® Core™ i5-460M (2.53GHz, 1066Mhz, 3MB Cache, turbo Boost 2.8Ghz), 500GB\r\n5400rpm Serial ATA, 4GB (2GBx2), DDR3/1066MHz, DvDRW +/- Double Layer, 14" (1366 x\r\n768) LED, ATI Mobility Radeon™ HD 5650 1024MB of dedicated video RAM , Built-in\r\nMOTION EYE® camera and microphone with face-tracking technology, Integrated Stereo A2DP\r\n(2.1 + EDR) , Intel® Centrino® Advanced-N 6200 (802.11b/g/n), Microsoft® Windows® 7\r\nProfessional', 110, 15000000, 'b.jpg ', '2009-10-23', 0),
('DE0011', 'Dell Inspiron 14R - N4010 (T560821VN)', 'DE', 'D', 'Intel Core i3-350M (2.26GHz, Bus 1066FSB, cache 3MB), 4GB (2GB x 2) RAM, 320GB (5400)\r\nHDD, DVD±R Double Layer, 15.5" (1366 x 768) LCD, Intel® Graphics Media Accelerator HD,\r\nIntel® Centrino® Advanced-N 6200 (802.11a/b/g/n), build in Webcam, Microsoft® Windows® 7\r\nHome Premium 64-bit', 180, 16000000, 'c.jpg ', '2010-10-08', 0),
('LE0001', 'Lenovo IdeaPad 3000 - B460 (5905-1007)', 'LE', 'L', 'Intel Core i3-350M (2.26GHz, Bus 1066FSB, cache 3MB), 4GB (2GB x 2) RAM, 320GB (5400)\r\nHDD, DVD±R Double Layer, 15.5" (1366 x 768) LCD, Intel® Graphics Media Accelerator HD,\r\nIntel® 802.11a/b/g/n, build in Webcam, Microsoft® Windows® 7 Home Premium 64-bit', 900, 12000000, 'small_ccu1286331796.jpg ', '2008-10-08', 0),
('LE0002', 'Lenovo ThinkPad L412 4403-69U', 'LE', 'L', 'Intel Core i3-350M (2.26GHz, Bus 1066FSB, cache 3MB), 4GB (2GB x 2) RAM, 500GB (5400)\r\nHDD, DVD±R Double Layer, 15.5" (1366 x 768) LCD, Intel® Graphics Media Accelerator HD,\r\nIntel® 802.11a/b/g/n, build in Webcam, Microsoft® Windows® 7 Home Premium 64-bit', 454, 12300000, 'small_eep1274409307.jpg ', '2008-10-08', 0),
('HP0001', 'Hp Compaq Presario CQ42-261TU', 'HP', 'H', 'Intel Core i3-350M (2.26GHz, Bus 1066FSB, cache 3MB), 4GB (2GB x 2) RAM, 500GB (5400)\r\nHDD, DVD±R Double Layer, 15.5" (1366 x 768) LCD, Intel® Graphics Media Accelerator HD,\r\nIntel® 802.11a/b/g/n, build in Webcam, Microsoft® Windows® 7 Home Premium 64-bit', 900, 13200000, '213_1_mini.jpg ', '2008-10-08', 0),
('HP0002', 'Hp Compaq Presario CQ42-263TU (XB803PA)', 'HP', 'H', 'Intel® Core™ i3 - 370M 2.40GHz, 3MB cache, 500GB 5400rpm Serial ATA, 4GB (2GBx2)\r\nDDR3/1066MHz, DvDRW +/- Double Layer, 15.5" (1366 x 768 ) LED, Intel® HD Graphics, Builtin\r\nMOTION EYE® camera and microphone with face-tracking technology, Intel® Centrino®\r\nAdvanced-N 6200 (802.11b/g/n), Microsoft® Windows® 7 Home Premium 64-bit', 400, 10200000, '254_1_mini.jpg ', '2008-10-08', 0),
('HP0003', 'HP Probook 4420s (XB676PA#UUF)', 'HP', 'H', 'Intel® Core™ i3 - 370M 2.40GHz, 3MB cache, 500GB 5400rpm Serial ATA, 4GB (2GBx2)\r\nDDR3/1066MHz, DvDRW +/- Double Layer, 15.5" (1366 x 768 ) LED, Intel® HD Graphics, Builtin\r\nMOTION EYE® camera and microphone with face-tracking technology, Intel® Centrino®\r\nAdvanced-N 6200 (802.11b/g/n), Microsoft® Windows® 7 Home Premium 64-bit', 400, 9600000, '772_mainimage.jpg ', '2010-10-14', 0),
('HP0004', 'HP Pavilion G42-361TU (XU571PA)', 'HP', 'H', 'Intel® Core™ i7 - 720QM 1.60GHz with Turbo Boost Technology up to 2.80GHz, 6MB cache,\r\n500GB (5400rpm)Serial ATA, 4GB (2GBx2) DDR3/1333MHz, DVDRW +/- double layer, 16.4"\r\n(1600 x 900), NVIDIA® GeForce® 310M GPU with 512MB of dedicated video RAM, Built-in\r\nMOTION EYE® camera and microphone, Bluetooth® Technology, 802.11 b/g/n, Microsoft®\r\nWindows® 7 Professional 64-bit', 900, 14200000, 'tb_2061.jpg ', '2008-10-08', 0),
('HP0005', 'HP Pavilion G42-360TU (XT843PA)', 'HP', 'H', 'Intel® Core™ i7 - 720QM 1.60GHz with Turbo Boost Technology up to 2.80GHz, 6MB cache,\r\n320GB (5400rpm) Serial ATA, 4GB (2GBx2) DDR3/1333MHz, DVDRW +/- double layer, 16.4"\r\n(1600 x 900), NVIDIA® GeForce® 310M GPU with 512MB of dedicated video RAM, Built-in\r\nMOTION EYE® camera and microphone, Bluetooth® Technology, 802.11 b/g/n, Microsoft®\r\nWindows® 7 Professional 64-bit', 900, 12600000, 'tb_1973.jpg ', '2008-10-08', 0),
('AC001', 'Apple iPad WiFi + 3G 32G', 'AC', 'C', 'Intel® Core™ i7 - 740QM 1.73GHz with Turbo Boost Technology up to 2.93GHz, 6MB L3 Cache,\r\n4GB (2GBx2) DDR3/1333MHz, 320GB 7200rpm Serial ATA, DvDRW +/- Double Layer, 16.4"\r\n(1600 x 900), NVIDIA® GeForce® 330M GPU 1024MB of dedicated video RAM, camera and\r\nmicrophone with face-tracking technology, BlueTooth, 802.11 b/g/n, Microsoft® Windows® 7\r\nHome Premium 64-bit', 400, 15200000, '256_1_mini.jpg ', '2008-10-08', 0),
('AC002', 'Apple iPad WiFi + 3G 64GB (MC497LL/A)', 'AC', 'C', 'Intel® Core™ i7 - 740QM 1.73GHz with Turbo Boost Technology up to 2.93GHz, 6MB L3 Cache,\r\n4GB (2GBx2) DDR3/1333MHz, 320GB 7200rpm Serial ATA, DvDRW +/- Double Layer, 16.4"\r\n(1600 x 900), NVIDIA® GeForce® 310M GPU 512MB of dedicated video RAM, Camera and\r\nmicrophone with face-tracking technology, BlueTooth, 802.11 b/g/n, Microsoft® Windows® 7\r\nProfessional 64-bit', 400, 12000000, '261_1_mini.jpg ', '2008-10-08', 0),
('AC003', 'Apple Macbook MC375LL/A - Precision aluminum unibody', 'AC', 'C', 'Intel® Core™ i7 - 740QM 1.73GHz with Turbo Boost Technology up to 2.93GHz, 6MB L3 Cache,\r\n4GB (2GBx2) DDR3/1333MHz, 320GB 7200rpm Serial ATA, Blu-ray DvDRW +/- Double Layer,\r\n16.4" (1600 x 900), NVIDIA® GeForce® 310M GPU 512MB of dedicated video RAM, camera and\r\nmicrophone with face-tracking technology, BlueTooth, 802.11 b/g/n, Microsoft® Windows® 7\r\nHome Premium 64-bit', 400, 12200000, 'tb_1386.jpg ', '2008-10-08', 0),
('AC004', 'Apple MacBook Pro MC371LL/A', 'AC', 'C', 'Intel® Core™ i5 - 430M (2.26GHz1 with Turbo Boost Technology up to 2.53GHz, 3MB L3\r\nCache, 1066MHz DDR3), 4GB DDR3 SDRAM, 500GB (5400rpm) Serial ATA, DVDRW +/- Double\r\nLayer, 13.3" WXGA (1366 x 768) TFT colour display, Intel GMA HD HM55, build in Camera and\r\nMicrophone, Bluetooth® standard Ver. 2.1+EDR, Wireless LAN IEEE 802.11a/b/g/n, Windows®\r\n7 Home Premium', 400, 12000000, 'tb_1673.jpg ', '2011-10-08', 0),
('AC005', 'Apple MacBook Pro MC372LL/A', 'AC', 'C', 'Intel(R) Pentium(R) Processor T4500 (2.3GHz/800 FSB/1MB Cache), 320GB SATA, 2GB\r\n(1x2GB) DDR2, DVD±RW Double Layer, 14.0 " High Definition (1366x768) LED, Integrated\r\nIntel(R) Graphics Media Accelerator X4500HD, WL b/g - BlueTooth, Camera 1.3 M, Reader 6.1,\r\n2.4 Kg 6-cell Li-Ion Battery, DOS', 400, 12400000, 'tb_1901.jpg ', '2008-10-08', 0),
('AC006', 'Apple MacBook Pro MC373LL/A', 'AC', 'C', 'Intel® Core™ i3-350M (2*2.26GHz, 4Threads, 3MB L3 cache) Intel HM57 Chipset, 2GB DDR3,\r\n320GB SATA, DVD±RW Double Layer, 14.0 HD WLED TrueLife, Intel® HD Graphics, 2*USB2.0,\r\n1*eSATA, HDMI, 10/100TX, Bluetooth, Dell802.11gn, 7 in1 Card, SRS Premium Sound, 4.96\r\nlbs (2.25 kg), FreeDOS, 6cell, 3.5hours', 200, 15000000, 'tb_1969.jpg ', '2008-10-08', 0),
('AC007', 'Apple MacBook Pro MC024LL/A', 'AC', 'C', 'Intel® Core™ i3-350M (2*2.26GHz, 4Threads, 3MB L3 cache) Intel HM57 Chipset, 2GB DDR3\r\nRAM, 320GB SATA HDD, DvD RW +/- Double Layer, 14.0 HD WLED TrueLife, Intel® HD\r\nGraphics, 2*USB2.0, 1*eSATA, HDMI 10/100TX Bluetooth Dell802.11gn, 7 in1 Card 1.3MP\r\nWebCam SRS Premium Sound 2.39kg, Windows 7 Home Premium, 6cell 3.5hours', 400, 14000000, 'tb_2060.jpg ', '2010-11-09', 0),
('AS101', 'Asus Eee PC 1001PX WHI016W', 'AS', 'A', 'Intel(R) Core(TM) i3-370M (2.4Ghz, 4 Threads, 3M cache), 320GB SATA, 2GB 1333MHz DDR3,\r\n13.3" Widescreen HD WLED, Intel(R) HD Graphics, DVD±RW External USB 2.0, WL b/g - BT, 7-\r\nin-1 Memory Card, Camera 1.3 M, SRS Premium Sound, 1.92 Kg, 6-cell Li-Ion Battery, DOS', 360, 11000000, '245_1_laptop_sanh_dieu_01_10.gif ', '2009-10-08', 0),
('AS102', 'Asus Eee PC 1005PX RED007W', 'AS', 'A', 'Intel Core i3-370M Processor (2.40Ghz, 3M L2, 1066Mhz), 2GB DDR3 RAM, 320GB HDD,\r\nDVDRW +/- double Layer, 14" HD WLED, Intel Mobile HD, build in Camera 3.0M, Finger Print,\r\nBluetooth, 10/100/1000, 802.11 bgn, 56K Modem, 7 in 1 card reader, 6 cells Li-Ion, DOS, 4.96\r\nlbs (2.25 kg)', 360, 12000000, '253_1_mini.jpg ', '2010-12-12', 0),
('AS003', 'Asus Eee PC 1015PED RED023S', 'AS', 'A', 'Intel core i3 -370M ( 2*2.4GHZ/3MB L3 cache), 4GB DDR3 -1066, HDD 500GB, DVD RW +/-\r\nDouble Layer, 14" WXGA TrueLife LED Black-Light, Intel(R) HD Graphics, Card reader 5 in1,\r\nbuild in Webcam 1.3M, NIC, Pin 6 Cells, Wireless 802.11 b,g, Buetooth, e-sata, Free DOS', 200, 35000000, '269_1_mini.jpg ', '2008-10-08', 0),
('AS004', 'Asus Eee PC 1018P (BLK098S/ )', 'AS', 'A', 'Intel® Core™ i3-380M Processor (2.53 GHz, 3M Cache ) , 2GB DDR3 -1066 RAM, HDD 320GB,\r\nDVDRW +/- Double Layer, 14.0" WXGA TrueLife LED Black-Light, Intel HD graphic , build in\r\nWebcam 1.3M, Buetooth, e-sata, Card reader 5 in1, NIC, Pin 6 Cells, Wireless 802.11 b,g, DOS,\r\n4.96 lbs (2.25 kg)', 200, 25000000, '272_1_mini.jpg', '2008-10-08', 0),
('AS005', 'Asus Eee PC 1215N- SIV005W', 'AS', 'A', 'Intel® Core™ i3-350M (2*2.26GHz, 4Threads, 3MB L3 cache), 2GB DDR3, 320GB SATA\r\n7200rpm, DVD±RW Double Layer, 14.0 HD WLED, Intel® GMA X4500MHD (share), build in\r\n2.0MP WebCam, 3*USB2.0, HDMI, 1*USB/eSATA, Express Card/34, Gigabit, 802.11bgn, 8 in1\r\nCard, 2.1kg, DOS, 6cell, 3.5hours, Mediakey cảm ứng,', 120, 20000000, '273_2_mini.jpg ', '2008-10-08', 0),
('AS006', 'Asus A42F-VX247 (K42F-2CVX)', 'AS', 'A', 'Intel® Core™ i5 - 450M 2.40GHz with Turbo Boost Technology up to 2.66GHz, L3 Cache 3MB,\r\n3GB DDR3, 320GB SATA, DVD±RW External USB 2.0, 13.3 HD WLED TrueLife, Intel® HD\r\nGraphics, Bluetooth, 2*USB2.0, 1*eSATA, HDMI, 10/100TX, Dell 802.11gn, 7 in1 Card, SRS\r\nPremium Sound, 1.96kg, FreeDOS, 6cell,', 900, 11000000, '277_1_laptop_sanh_dieu_01_10.gif', '2010-10-30', 0),
('AS017', 'Asus X42JE-VX039 (K42JE-3HVX) ', 'AS', 'A', 'Intel core i3 -370M ( 2*2.4GHZ/3MB L3 cache), 4GB DDR3 -1066, HDD 500GB, DVD RW Double\r\nLayer, 15.6" WXGA TrueLife LED Black-Light, ATI Mobility Radeon(TM) HD 5470 - 1GB, Card\r\nreader 5 in1, build in Webcam 1.3M, NIC, Pin 6 Cells, Wireless 802.11 b,g, Buetooth, e-sata,\r\nWeight 2.0Kg', 450, 13200000, 'small_oez1285820029.jpg ', '2008-10-08', 0),
('AS008', 'Asus X42JE-VX124 (K42JE-3EVX) ', 'AS', 'A', 'Intel Core i3-370M (2*2.4GHz/3MB), 2GB DDR3, 320GB SATA, DVD±RW Double Layer, 14.0\r\nHD WLED, Intel® HD Graphic, BlueTooth, 3*USB2.0, HDMI, 1*USB/eSATA, Express Card/34,\r\nGigabit, 802.11bgn, 8 in1 Card, 2.1kg, DOS, 6cell, 3.5hours', 450, 16200000, 'small10.jpg ', '2010-11-06', 0),
('AS009', 'Asus X42JE-VX031 (K42JE-3FVX) ', 'AS', 'A', 'Intel® Core™ i5-460M (2.53GHz, 1066Mhz, 3MB Cache, turbo Boost 2.8Ghz), 2GB DDR3\r\nRAM, 500GB HDD, DVDRW +/- Double Layer, 14" HD WLED, ATI Mobility Radeon HD5470\r\n1GB ATI Graphic, build in Camera 3.0M, Bluetooth, 10/100/1000, 802.11 bgn, 56K Modem, 7 in\r\n1 card reader, 6 cells Li-Ion, DOS', 400, 15000000, 'a1.jpg ', '2008-10-08', 0),
('AS010', 'Asus A42JE-VX042 (K42JE-2CVX) ', 'AS', 'A', 'Intel Core i5-520M (2.40GHz/1066FSB/3MB), 4GB DDR3 RAM, 320GB HDD, DVDRW +/-\r\nDouble Layer, 14.1" WLED, Intel X4500HD, Backlit Keyboard, build in Camera 3.0M, Finger\r\nPrint, Bluetooth, 10/100/1000, 802.11 bgn, 56K Modem, 5 in 1 card reader, 6 cells Li-Ion, DOS', 400, 30000000, 'small_ows1286332128.jpg', '2008-10-08', 0),
('AS011', 'Asus K42JE-VX036 (K42JE-1AVX) ', 'AS', 'A', 'Intel® Core™ i3-350M (2*2.26GHz, 4Threads, 3MB L3 cache) Intel HM55 Chipset, 2GB DDR3\r\nRAM, 250GB 7200rpm, DVD±RW Double Layer, 14.0 HD WLED BrightView, Intel® HD Graphics,\r\nbuild in 0.3M WebCam, Bluetooth, 3*USB2.0, HDMI, 10/100TX, 802.11bgn, 5in1 Card, 2.2kg,\r\nFreeDOS, 6cell, 3.0hours', 400, 9000000, 'small_yul1273029516.png', '2010-07-08', 0),
('AS012', 'Asus X42JE-VX093 (K42JE-3EVX) ', 'AS', 'A', 'Intel® Core™ i5-450M (2*2.40GHz Turbo Boost 2.66GHz, 4Threads, 3MB L3 cache), Intel HM55\r\nChipset, 2GB DDR3 RAM, 320GB 7200rpm, DVD±RW Double Layer, 14.0 HD WLED BrightView,\r\nIntel® HD Graphics, build in 0.3M WebCam, Bluetooth, 3*USB2.0, HDMI, 10/100TX, 802.11bgn,\r\n5in1 Card, 2.2kg, FreeDOS, 6cell, 3.0hours', 900, 10350000, 'small_cbk1244517578.jpg', '2008-10-08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loailaptop`
--

CREATE TABLE IF NOT EXISTS `loailaptop` (
  `Maloailaptop` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `Tenloai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Maloailaptop`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loailaptop`
--

INSERT INTO `loailaptop` (`Maloailaptop`, `Tenloai`) VALUES
('S', 'LaptopSony'),
('D', 'LaptopDELL'),
('H', 'LaptopHP'),
('A', 'LaptopAsus'),
('C', 'LaptopACER'),
('T', 'LaptopTOSHIBA');

-- --------------------------------------------------------

--
-- Table structure for table `loaitin`
--

CREATE TABLE IF NOT EXISTS `loaitin` (
  `MaLT` int(11) NOT NULL AUTO_INCREMENT,
  `Ngonngu` char(10) NOT NULL DEFAULT 'viet',
  `TenLT` varchar(100) NOT NULL,
  `TenLT_KhongDau` varchar(100) DEFAULT NULL,
  `MaTL` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`MaLT`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=75 ;

--
-- Dumping data for table `loaitin`
--

INSERT INTO `loaitin` (`MaLT`, `Ngonngu`, `TenLT`, `TenLT_KhongDau`, `MaTL`) VALUES
(1, 'viet', 'Bóng đá', 'Bong-da', 1),
(2, 'viet', 'Tennis', 'Ten-nis', 1),
(3, 'viet', 'Hình sự', 'Hinh-su', 2),
(4, 'viet', 'Ký sự', 'Ky-su', 2),
(5, 'viet', 'Khoa học', 'Khoa-hoc', 3),
(6, 'viet', 'Tuyển sinh', 'Tuyen-sinh', 3),
(7, 'viet', 'Âm nhạc', 'Am-nhac', 4),
(8, 'viet', 'Thời trang', 'Thoi-trang', 4);

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE IF NOT EXISTS `theloai` (
  `MaTL` int(11) NOT NULL AUTO_INCREMENT,
  `Ngonngu` char(10) NOT NULL DEFAULT 'viet',
  `TenTL` varchar(255) NOT NULL,
  `TenTL_KhongDau` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`MaTL`),
  UNIQUE KEY `TenTL` (`TenTL`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`MaTL`, `Ngonngu`, `TenTL`, `TenTL_KhongDau`) VALUES
(1, 'viet', 'Thể thao', 'The-thao'),
(2, 'viet', 'Pháp luật', 'Phap-luat'),
(3, 'viet', 'Giáo dục', 'Giao-duc'),
(4, 'viet', 'Văn hóa nghệ thuật', 'Van-hoa-nghe-thuat');

-- --------------------------------------------------------

--
-- Table structure for table `tin`
--

CREATE TABLE IF NOT EXISTS `tin` (
  `MaTin` int(11) NOT NULL AUTO_INCREMENT,
  `TieuDe` varchar(255) NOT NULL,
  `TomTat` varchar(1000) DEFAULT NULL,
  `Hinh` varchar(255) DEFAULT NULL,
  `Ngay` datetime DEFAULT '0000-00-00 00:00:00',
  `Noidung` text,
  `MaTL` int(11) NOT NULL,
  `MaLT` int(11) NOT NULL,
  PRIMARY KEY (`MaTin`),
  FULLTEXT KEY `TimKiemToanVan` (`TieuDe`,`TomTat`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=357 ;

--
-- Dumping data for table `tin`
--

INSERT INTO `tin` (`MaTin`, `TieuDe`, `TomTat`, `Hinh`, `Ngay`, `Noidung`, `MaTL`, `MaLT`) VALUES
(1, 'Thủ môn Tấn Trường và vợ rạng rỡ trước ngày cưới', 'Ngày 13/2 thủ môn đội tuyển quốc gia Tấn Trường sẽ lên xe hoa cùng cô dâu Ngọc Liên tại quê nhà Lai Vung và thành phố Cao Lãnh, Đồng Tháp.', 'tan-truong-123_jpg_thumb210x0_ns.jpg', '2009-05-03 00:00:00', 'Tấn Trường quê ở huyện Lai Vung (Đồng Tháp), vợ sắp cưới 22 tuổi Ngọc Liên sống ở thành phố Cao Lãnh. Tấn Trường cho biết hai người quen nhau đã gần 5 năm và quyết định đi đến hôn nhân khi Ngọc Liên đã học xong đại học, còn anh cũng đã có sự nghiệp ổn định.\r\nThay vì thuê các cửa hàng chụp ảnh cưới, Tấn Trường đã cùng Ngọc Liên thực hiện bộ ảnh cưới dưới sự giúp đỡ của các phóng viên thể thao tại Vũng Tàu trong vòng 2 ngày.', 1, 1),
(2, 'Chelsea cầu viện Guus Hiddink ', '"Phù thủy" người Hà Lan có thể là một phần quan trọng trong kế hoạch tái thiết Chelsea. ', 'a2.jpg', '2008-06-09 00:00:00', 'Phong độ gần đây của Chelsea khiến ông chủ Roman Abramovich không thể hài lòng. Vậy nên, sau khi hoàn thành nhiệm vụ đưa World Cup 2018 đến với quê hương Nga, ông đã quay trở lại để tập trung cơ cấu lại đội bóng thành London.\r\nKế hoạch đã được khởi động ấn tượng bằng việc chi tiền bổ sung lực lượng - mà khoản phí chuyển nhượng lớn nhất trong lịch sử bóng đá Anh (50 triệu bảng) để mua tiền đạo Fernando Torres là một minh chứng. ', 1, 1),
(3, 'Diego Milito nghỉ thi đấu 4 tuần vì chấn thương ', 'Tiền đạo Diego Milito sẽ phải nghỉ thi đấu 4 tuần vì chấn thương đùi - CLB Inter Milan vừa cho biết thông tin này.', 'militojpg-095715.jpg', '2009-04-16 00:00:00', '<p>Milito bị chấn thương trong trận Inter Milan thắng AS Roma 5-3 hôm Chủ nhật vừa rồi</p>\r\n<p>Tiền đạo người Argentina sẽ phải nghỉ thi đấu khoảng 4 tuần, đồng nghĩa với việc không thể tham dự trận đấu ở vòng 1/8 Champion League giữa Inter Milan và Bayern Munich, diễn ra ngày 23.2</p>\r\n', 1, 1),
(4, 'Kaka: Tôi hài lòng với sự trở lại của mình', 'Dân Việt - Tiền vệ Ricardo Kaka cho biết, anh cảm thấy rất hài lòng với những màn trình diễn của mình sau khi trở lại từ ca phẫu thuật chấn thương đầu gối.', '080211_the-thao_Kaka.jpg', '2010-04-08 00:00:00', '<p>Ở trận tiếp Real Sociedad diễn ra vào rạng sáng thứ Hai vừa qua, cầu thủ 28 tuổi đã ghi bàn thắng mở tỷ số cho Real Madrid và góp công lớn giúp Los Blancos giành chiến thắng 4-1. Đây cũng là pha lập công thứ hai của Kaka sau khi trở lại hồi đầu tháng 1.</p>\r\n<p>Kaka nói: “Tôi cảm thấy rất thoải mái và tự tin. Các bước chạy của tôi đã trở nên nhanh nhẹn và thanh thoát hơn. Tôi luôn cố gắng để cải thiện phong độ để thi đấu tốt nhằm đóng góp vào sự thành công chung của CLB.</p>\r\n', 1, 1),
(5, 'Nadal đoạt giải Oscar thể thao ', 'Siêu sao quần vợt người Tây Ban Nha đoạt giải Nam VĐV thể thao hay nhất - một trong những danh hiệu của Viện Hàn lâm thể thao thế giới Laureus tại buổi Gala tối qua ở Abu Dhabi, Các tiểu vương quốc Ảrập thống nhất.', 'nadal2_jpg_thumb210x0_ns.jpg', '2007-04-05 00:00:00', 'Giải Đội tuyển xuất sắc đã tôn vinh đội tuyển bóng đá nam Tây Ban Nha với chức vô địch World Cup 2010. Mặc dù được xem là một trong những đại gia bóng đá, Tây Ban Nha luôn tỏ ra vô duyên tại World Cup cho đến khi thắng Hà Lan 1-0 trong trận chung kết mùa hè trước. Tây Ban Nha đã khiến người hâm mộ thán phục bằng lối chơi tấn công và khả năng chuyền bóng biến hóa.', 1, 2),
(6, '11 tay vợt nữ hàng đầu mang 11 quốc tịch khác nhau ', 'Từ Australia đến Belarus, từ Mỹ đến Trung Quốc..., top 11 tay vợt nữ hiện nay chẳng khác nào một Liên hợp quốc thu nhỏ. ', 'tn_a2.jpg', '2006-04-04 00:00:00', 'Xếp sau tay vợt số một thế giới hiện nay Wozniacki (Đan Mạch) lần lượt là tân vô địch Australia Mở rộng Kim Clijsters (Bỉ), Vera Zvonareva (Nga), Francesca Schiavone (Italy), Sam Stosur (Australia), Venus Williams (Mỹ), Li Na (Trung Quốc), Jelena Jankovic (Serbia), Victoria Azarenka (Belarus), Agnieszka Radwanska (Ba Lan) và Shahar Peer (Israel).', 1, 2),
(7, 'Murray nghỉ ngơi sau thất bại ở Australia Mở rộng', 'Tay vợt số 5 thế giới có thể sẽ xa sân đấu một thời gian để tĩnh tâm, sau thất bại thứ ba trong một trận chung kết Grand Slam. ', 'tn_3.jpg', '2007-01-01 00:00:00', 'Andy Murray đã khởi đầu đầy hứa hẹn ở Australia Mở rộng, và đứng trước cơ hội để có danh hiệu Grand Slam đầu tiên trong sự nghiệp. Nhưng đúng vào thời điểm quyết định anh lại không thể hiện được mình, và chịu thua hoàn toàn trước Novak Djokovic sau ba set. ', 1, 2),
(8, 'Sao nổi cáu ở Australia mở rộng 2011 ', 'Không khí ngột ngạt, oi bức và tính chất căng thẳng ở các cuộc tranh tài khiến các tay vợt dự giải có nhiều phen không giữ được bình tĩnh.', 'tn_4.jpg', '2007-04-06 00:00:00', '<p>Sophie Ferguson cũng có phản ứng tương tự Wawrinka khi thua đối thủ Croatia, Petra Martic ngay vòng một và trở thành tay vợt chủ nhà đầu tiên nói lời tạm biệt Australia mở rộng 2011. </p>\r\n<p>Agnieszka Radwanska trút giận sau một pha đánh bóng không như ý trong trận thắng Shuai Peng ở vòng bốn.</p>\r\n', 1, 2),
(9, 'Hại vợ vì bị ngăn cản uống rượu', 'Án mạng kinh hoàng xảy ra tại ki-ốt bán quần áo vào ngày giáp Tết sau khi người vợ cằn nhằn chồng liên tục uống rượu suốt buổi tối.', 'hs_1.jpg', '2007-04-05 00:00:00', '<p>Tối 28/1 thấy Cừ ôm khư khư chai rượu uống liên hồi, chị Liên can ngăn. Nói mãi không được, người vợ bế con 8 tháng tuổi đi ngủ trước. Bực tức vì bị cằn nhằn, cộng với men rượu đã ngấm, Cừ xách con dao quắm ở góc nhà lao vào quát mắng và chém vợ.</p>\r\n<p>Bị thương, chị Liên cố chạy thoát ra ngoài nhưng cửa nhà đã khóa… Biết vợ bị thương, Cừ để mặc lên giường đi ngủ. Khoảng 4h sáng hôm sau, anh ta tỉnh dậy, gọi hàng xóm đưa chị Liên đi cấp cứu. Nạn nhân tử vong trong sáng 29/1 do vết thương quá nặng.</p>\r\n', 2, 3),
(10, 'Nữ sinh về quê ăn Tết bị tài xế làm nhục', 'Ngày 28/1 công an đã bắt lái xe Lê Ngọc Hùng để điều tra tố cáo hiếp dâm một nữ sinh viên khi cô này đi nhờ xe tải từ Đà Nẵng về Thanh Hóa ăn Tết.', 'hs_2.jpg', '2009-04-04 00:00:00', '<p>Khoảng 19h ngày 27/1, tại Đà Nẵng 2 nữ sinh viên đón ôtô tải để về quê Thanh Hóa, trên xe có 2 tài xế. Đến địa phận thôn Hà Thanh, xã Gio Châu, huyện Gio Linh, tỉnh Quảng Trị, một cô bị lái xe đẩy xuống đường. Người còn lại bị tài xế Hùng giữ lại trong xe để hiếp dâm.</p>\r\n<p>Sau khi giở trò đồi bại, anh ta đẩy cô này xuống đường. Nạn nhân được người dân xung quanh giúp đỡ đưa đến Công an huyện Gio Linh trình báo sự việc.</p>\r\n', 2, 3),
(11, 'Nghi phạm sát hại chủ nhà trọ bị bắt', 'Chiều 24/1, Công an Hà Nội đã bắt Vũ Trọng Tâm - nghi phạm gây ra cái chết thương tâm cho ông chủ nhà trọ Lê Văn Lưu (57 tuổi).', 'hs_3.jpg', '2010-04-02 00:00:00', '<p>Trước đó 3 ngày, xác nạn nhân được phát hiện ở bên tường khu nhà trọ tại phường Yên Hòa, Cầu Giấy, phần ngực và đầu có hơn chục vết thương do vật nhọn tác động. Trong túi quần của ông Lưu, cơ quan điều tra tìm thấy hơn 100 triệu đồng.</p>\r\n<p>Khám nghiệm hiện trường, cảnh sát tìm thấy ở bãi cỏ cách nhà nạn nhân có con dao nhọn, một chiếc khóa hình chữ U có dấu vết máu. Lần theo manh mối, người thuê trọ tên Tâm, 51 tuổi, hành nghề lái xe ôm bị đưa vào "tầm ngắm" và bị bắt tại một nhà nghỉ ở huyện Gia Lâm.</p>\r\n', 2, 3),
(12, 'Nghi phạm vụ xác nữ không đầu bị bắt', 'Sau 30 giờ điều tra, công an Hải Phòng đã bắt được nghi phạm liên quan đến vụ án xảy ra ở quận Kiến An (Hải Phòng). ', 'hs_4.jpg', '2009-04-04 00:00:00', 'Sáng 9/1, một cán bộ Công an TP Hải Phòng cho VnExpress.net biết đã bắt được nghi phạm liên quan đến vụ xác chết không đầu ở khu chợ Đầm Triều, phường Quán Trữ (quận Kiến An).Trước đó, chiều 7/1, một công nhân vệ sinh môi trường đô thị khi quét rác tại khu đất trống gần chợ phát hiện xác người phụ nữ mất đầu và tay. Nạn nhân khoảng 40 tuổi chết trong tình trạng chân trái có vết cắt, mặc chiếc quần lót, rác phủ lên người.\r\n\r\n', 2, 3),
(13, 'Trở thành sát thủ vì những mối tình học trò', 'Đang tuổi cắp sách đến trường nhưng không ít cô cậu học trò đã chìm đắm trong những mối tình', 'ks_1.jpg', '2009-04-02 00:00:00', 'Nhanh chóng đến hiện trường, các chiến sĩ công an không khỏi đau lòng khi thấy Đặng Hoàng Tiến (15 tuổi, học sinh lớp 10 trường THPT Lê Thị Hồng Gấm) nằm gục trên vũng máu. Cạnh bên là chiếc cặp học sinh và xe đạp ngã chỏng chơ. Cách đó không xa, một xe máy được xác định là của hung thủ cùng lưỡi lê dài khoảng 35 cm và chiếc cặp khác chứa đầy sách vở nằm lăn lóc trên đường. Dù được đưa đi cấp cứu sau đó nhưng nạn nhân đã chết do vết thương quá nặng.', 2, 4),
(14, 'Bi kịch gia đình từ mối tình tội lỗi với chị dâu', 'Gần đến giờ xử án, người đàn ông càng co rúm trước vành móng ngựa, ánh mắt hoảng loạn liên tục đảo quanh', 'ks_2.jpg', '2008-04-07 00:00:00', 'Khi được tòa gọi đến, Trọng lê từng bước nặng nhọc đến gần vành móng ngựa hơn. Trên đôi chân bị xiềng xích, những ngón chân cáu bẩn của gã bấu chặt vào đôi dép nhựa đã sờn cũ. Không một lần ngẩng mặt, bị cáo khai nhận toàn bộ tội lỗi của mình. Cả khán phòng im phăng phắc dõi theo những lời khai. Vài người không giấu được thảng thốt, ngỡ ngàng trước tấm bi kịch đầy đau khổ của đại gia đình bị cáo.', 2, 4),
(15, 'Hậu họa từ cuộc tình với thiếu nữ bị câm', 'Dù anh đã khuyên nhủ, nhưng tình yêu cháy bỏng của thiếu nữ cùng hoàn cảnh câm điếc đã khiến hai người vượt qua sự ngăn cấm của gia đình và pháp luật… ', 'ks_3.jpg', '2009-04-14 00:00:00', 'Người đàn ông có gương mặt hốc hác, nhăn nhó cứ thấp thỏm trước vành móng ngựa trong khán phòng rộng lớn của TAND quận 8 (TP HCM). Ánh mắt âu lo cứ bám riết lấy người phụ nữ đứng tuổi tại chiếc bàn được kê chếch phía trái của phòng. Bà là hiệu trưởng của trường khuyết tật Hy Vọng quận 8, cô giáo Tôn Nữ Thị Nhi. Còn anh là Nguyễn Văn Hồng (39 tuổi), vốn câm điếc bẩm sinh bị truy tố về tội “giao cấu với trẻ em”.', 2, 4),
(16, 'Cô giáo trẻ xin giảm án cho kẻ giết mình', 'Cô ngồi bất động, mệt mỏi, đôi tay chằng chịt sẹo hững hờ đan vào nhau. Đến khi gã thanh niên khai lại toàn bộ hành vi phạm tội', 'ks_4.jpg', '2009-04-05 00:00:00', ' Thế mà chỉ ít phút sau đó, khi được Tòa phúc thẩm TAND Tối cao tại TP HCM gọi đến, cô nhẹ nhàng: “Đúng là tôi đã may mắn khi sống sót sau những gì bị cáo đã gây ra. Nhưng mức án chung thân mà bị cáo phải chịu cứ làm tôi cảm thấy nặng lòng. Bị cáo còn trẻ tuổi, tôi tin tưởng cậu ấy sẽ thực sự hối cải, hoàn lương khi hiểu được ý nghĩa của sự tha thứ này. Tôi tha thiết mong tòa giảm án để bị cáo có cơ hội sửa chữa, sớm trở về với gia đình…”\r\n\r\n', 2, 4),
(17, 'Con trai nhà thơ thành nhà toán học tầm cỡ', 'TTXuân - 41 tuổi, giáo sư Vũ Hà Văn đã công bố 80 công trình trên các tạp chí toán học hàng đầu thế giới', 'kh_1.bmp', '2009-04-06 00:00:00', 'Năm 2009, Vũ Hà Văn được Nhà nước Việt Nam công nhận là giáo sư kiêm chức của Viện Toán học, khi anh 39 tuổi. Ngô Bảo Châu và Vũ Hà Văn là hai giáo sư trẻ nhất Việt Nam. \r\nTrong ba năm 2007-2010, khi Ngô Bảo Châu từ Đại học Paris 11 chuyển sang làm việc tại Viện Nghiên cứu cao cấp Princeton, Châu, Văn và Đàm Thanh Sơn (đến từ Đại học Washington, Seattle) trở thành ba người bạn thân. Cả ba anh đều sinh ra và lớn lên ở Hà Nội, đều là dân chuyên toán cũ và đều có chung ý nguyện gắn bó với quê hương. \r\n', 3, 5),
(18, 'Robot thương hiệu Việt', 'TTXuân - Ở tuổi 29, Hồ Vĩnh Hoàng, tổng giám đốc Công ty cổ phần Robotics Tosy (đường Láng, Hà Nội), đã sở hữu Topio - robot dáng người biết đánh bóng bàn và đĩa bay Tosy', 'kh_2.bmp', '2007-04-09 00:00:00', 'Hồ Vĩnh Hoàng có một tuổi thơ đam mê và khám phá. Lúc còn đi học, thay vì được bố mẹ mua đồ chơi thì cậu học trò đất Hà thành tự mày mò làm đồ chơi cho mình. Ở tuổi lên 5, “công trình sáng tạo” đầu tiên của Hoàng ra đời: chiếc canô chạy dưới nước bằng pin. Năm cuối cùng của thời học sinh ở khối chuyên toán - tin Đại học Khoa học tự nhiên (Đại học Quốc gia Hà Nội), một quả bóng được di chuyển bằng bộ điều khiển từ xa được Hoàng chế tạo sau ba tháng mày mò. \r\nĐồ chơi đĩa bay mang tên Tosy dần lớn lên trong tâm trí cậu học trò năm cuối phổ thông. Đến năm 2002, khi đang là sinh viên năm 2 Đại học Bách khoa Hà Nội, Hoàng quyết tâm thực hiện bằng được ước mơ và rủ thêm một số người bạn thành lập công ty. Năm 2003, Hoàng cùng đội robocon của trường đoạt giải nhất cuộc thi Robocon trong vai trò đội trưởng\r\n', 3, 5),
(19, 'Robot “thương hiệu sinh viên”', 'Nói đến chế tạo robot, người ta thường nghĩ đến đội ngũ kỹ sư giỏi với các nhà máy hiện đại. Thế nhưng ở VN, những học sinh, sinh viên cũng đang tạo ra nhiều robot có chức năng rất thực tế', 'kh_3.bmp', '2007-04-10 00:00:00', 'Tại liên hoan Sáng tạo khoa học công nghệ trẻ TP.HCM vừa diễn ra đầu tháng 1-2011, người xem được chiêm ngưỡng robot nhện của hai sinh viên năm cuối khoa khoa học và kỹ thuật máy tính, Trường ĐH Bách khoa (ĐHQG TP.HCM) là Nguyễn Lâm Vinh Cường và Lã Ngọc Đức.Robot này có hình thù giống con nhện chỉ với sáu chân nên có thể di chuyển dễ dàng trên những địa hình phức tạp. Mục đích tạo ra robot nhằm phục vụ những công việc như thám hiểm các địa hình phức tạp nhờ gắn camera quan sát trên thân robot... \r\nNgoài ra còn có robot hoa có thể đóng mở cánh hoa, đung đưa thân, lá và “nhảy múa” theo nhạc... hay robot cá có thể lặn sâu hơn 1.000m để thám hiểm, tìm kiếm, cứu hộ dưới lòng sông, đáy biển...\r\nMột nhóm sinh viên năm cuối khác gồm Nguyễn Tấn Cường, Nguyễn Minh Tuấn và Cao Việt Dũng cũng của khoa khoa học và kỹ thuật máy tính Trường ĐH Bách khoa (ĐHQG TP.HCM) vừa chế tạo robot có thể nhận diện được chữ in và cả chữ viết tay, đồng thời phát âm chữ viết đó. \r\n', 3, 5),
(20, 'Robot đi học thay', 'Để giúp học sinh Nga Stepan 12 tuổi tiếp tục việc học mặc dù bị bệnh bạch cầu, người ta lắp đặt một robot trong lớp học để đi học thay cậu bé', 'kh_4.bmp', '2010-03-03 00:00:00', 'Chú robot ngồi ở ghế của cậu bé trong lớp, được gắn camera, micro và loa để giúp cậu học hành qua màn hình. Từ nhà, qua chú robot, Stepan có thể đặt câu hỏi với cô giáo Alla Guevak. Cô nói: “Chúng tôi cũng gọi robot là Stepan. Lúc đầu chúng tôi thấy lạ nhưng rồi quen dần. Trong giờ chơi, robot cũng giao tiếp rất tích cực với các học sinh khác. Chúng tôi đối xử với robot như là Stepan hiện diện thật sự vậy”.\r\n\r\nStepan cho biết cậu có thể cho robot đi chậm hoặc đi nhanh, cho đầu nó quay qua trái hoặc phải một cách linh động. Do đó cậu cảm thấy như mình ngồi học thật sự trong lớp.\r\n\r\n', 3, 5),
(21, 'ĐH Giao thông vận tải TP.HCM: Bắt đầu tuyển nữ ngành hàng hải', 'Nhiều năm nay hai ngành thuộc nhóm ngành hàng hải là điều khiển tàu biển và khai thác máy tàu thủy của Trường ĐH Giao thông vận tải TP.HCM chỉ tuyển nam, không tuyển nữ', 'ts_1.bmp', '2009-03-02 00:00:00', 'Tương tự ở bậc cao đẳng, hai ngành này cũng tuyển nữ. Đây là nhóm ngành có cơ hội việc làm tốt và thu nhập cao. Các công việc trên tàu gồm điều khiển tàu biển, quản lý và vận hành hệ thống máy móc, hệ thống điện, điện tử trên tàu, bảo quản hàng hóa chuyên chở trên tàu… thường khá vất vả. Vì vậy yêu cầu về sức khỏe đối với thí sinh: tổng thị lực hai mắt phải đạt 18/10 trở lên, không mắc bệnh mù màu, phải nghe rõ khi nói thường cách 5m và nói thầm cách 0.5m và có cân nặng từ 45 kg trở lên. \r\n\r\n', 3, 6),
(22, 'Tư vấn nhóm ngành kinh tế tại Đăk Lăk', 'Em được biết trường ĐH kinh tế luật mới được tách ra gần đây. Vậy chỉ tiêu các ngành kinh tế của trường trong năm nay? Ngành thương mại quốc tế học gì?', 'ts_2.bmp', '2008-03-30 00:00:00', '- Th.S Trần Thế Hoàng: Tiếng Anh là xu thế bắt buộc cho mọi trường ĐH, mọi ngành nghề nên chúng ta nên đầu tư vào ngoại ngữ. Hiện các trường công bố chuẩn đầu ra đều yêu cầu ngoại ngữ. \r\n- ThS Hứa Minh Tuấn: học sinh trường huyện thường yếu về ngoại ngữ. Nhưng các em chọn ngành kinh tế vẫn được. Nếu tiếng Anh thuộc hạng xoàng, chúng ta có thể thi khối A. Khi vào trường, tiếng Anh căn bản đào tạo bậc ĐH cao đẳng thiết kế 10 đơn vị học trình, tổng cộng 150 tiết, tuy nhiên cũng tùy từng trường có cơ cấu học khác nhau. Ở Trường ĐH tài chính makerting, sau khi vào trường, các em được chia thành 4 cấp độ, các em kém được kèm riêng, tách ra lớp riêng để phụ đạo. Sau phần căn bản các em có thể dễ dàng tiếp cận tiếng Anh chuyên ngành. Nếu các em chăm chỉ học tập thì không phải lo lắng nhiều về việc cải thiện trình độ ngoại ngữ.\r\n', 3, 6),
(23, '2500 học sinh tham gia ngày hội tuyển sinh tại Tiền Giang', 'Sáng nay 9-1, mặc dù chương trình đến 8g 30 mới chính thức diễn ra, nhưng từ 7g30 học sinh từ các huyện lân cận TP Mỹ Tho như Chợ Gạo, Châu Thành, Cái Bè... đã về Trường ĐH Tiền Giang ', 'ts_3.bmp', '2007-03-05 00:00:00', 'Các học sinh Trường THPT Nguyễn Văn Tiếp (huyện Tân Phước) đến tham gia từ 7g. Một học sinh cho biết rất vui khi dự chương trình: "Em muốn thi vào ngành công nghệ thông tin nhưng vẫn còn phân vân chưa biết thi ở Tiền Giang hay lên TP.HCM. Hôm nay sẽ nhờ các thầy tư vấn để có quyết định cuối cùng".\r\n\r\nTrường ĐH Tiền Giang đã mở cửa các khu nhà xưởng, thí nghiệm, thực hành để học sinh tham quan trước khi tham gia chương trình tư vấn. Các nhóm học sinh đến sớm đã được các sinh viên tình nguyện tận tình hướng dẫn đi tham quan để có cái nhìn tổng thể về môi trường học tập ở bậc ĐH.\r\n\r\nChương trình tư vấn tuyển sinh hướng nghiệp 2011 được tổ chức tại Trường ĐH Tiền Giang (phường 5, TP Mỹ Tho, Tiền Giang) do báo Tuổi Trẻ, Bộ GD-ĐT, Sở GD-ĐT Tiền Giang và trường ĐH Tiền Giang phối hợp tổ chức\r\n', 3, 6),
(24, 'Chỉ tiêu tuyển sinh dự kiến của ĐHQG TP.HCM', 'Theo TS Nguyễn Đức Nghĩa - phó giám đốc ĐHQG TP.HCM, kỳ thi tuyển sinh 2011 ĐHQG TP.HCM vẫn thực hiện thi tuyển sinh theo “ba chung” và không có thay đổi gì lớn so với kỳ thi năm trước', 'ts_4.bmp', '2010-03-03 00:00:00', 'TS Nguyễn Thanh Nam - Trưởng phòng đào tạo Trường ĐH Bách khoa, cho biết kỳ thi tuyển sinh năm 2011 trường dự kiến tuyển 3.950 chỉ tiêu và không mở thêm ngành mới. Theo đó, ở bậc ĐH trường dự kiến tăng thêm 50 chỉ tiêu, gồm các ngành: điện - điện tử 650 chỉ tiêu (tăng 10 chỉ tiêu so với năm 2010), nhóm ngành công nghệ hóa - thực phẩm - sinh học 430 chỉ tiêu (tăng 20 chỉ tiêu) và ngành kỹ thuật giao thông 180 chỉ tiêu (tăng 20 chỉ tiêu). \r\n\r\nRiêng ngành kiến trúc thi khối V gồm toán và vật lý (theo đề khối A) và môn năng khiếu (vẽ đầu tượng). Trường cũng sẽ tuyển 170 sinh viên chương trình Việt - Pháp đào tạo kỹ sư chất lượng cao từ các thí sinh đã trúng tuyển vào trường ở tất cả các ngành; tuyển 50 sinh viên vào khóa 5 chương trình đào tạo tiên tiến theo dự án của Bộ GD-ĐT nhóm ngành điện - điện tử, theo chương trình của Đại học Illinois, Hoa Kỳ\r\n', 3, 6),
(25, 'Nam ca sĩ của nhóm Boney M đột tử  ', 'Nam ca sĩ của nhóm nhạc Boney M - Bobby Farrell đã bất ngờ qua đời vào sáng 30.12 tại một khách sạn ở thành phố Saint Petersburg (Nga)', 'an_1.jpg', '2007-03-11 00:00:00', 'Theo Seine, Farrell đã than rằng ông cảm thấy khó thở trước và sau buổi diễn tối 29.12.\r\n\r\nTrong khi đó, cơ quan điều tra ở thành phố Saint Petersburg cho biết, nguyên nhân cái chết vẫn đang được điều tra làm rõ.\r\n\r\nLà nam ca sĩ duy nhất kiêm vai trò vũ công của ban nhạc 4 người Boney M, Farrell nổi tiếng với giọng hát trầm và những bước nhảy mạnh mẽ.\r\n\r\nBan nhạc Boney M gốc vốn được biết đến nhiều trong những thập niên 70 và 80 của thế kỷ trước nhờ các bản "hit" sôi động như Daddy Cool, Rivers of Babylon và Rasputin trước khi giải tán vào năm 1986\r\n', 4, 7),
(26, '10 ca khúc “đỉnh” nhất năm 2010  ', 'Ngày 27.12, kênh truyền hình âm nhạc nổi tiếng châu Á Channel V đã công bố danh sách 10 ca khúc hay nhất năm 2010', 'an_2.jpg', '2010-03-09 00:00:00', 'Ca khúc Bad Romance của Nghệ sĩ tiêu biểu nhất năm 2010 Lady Gaga (theo bầu chọn của tạp chí Billboard) đã giành được vị trí đầu tiên trong danh sách 10 ca khúc hay nhất năm 2010 do khán giả Channel V bình chọn. \r\n\r\nBad Romance cũng đã giúp Lady Gaga lãnh trọn 7 giải thưởng của MTV Video Music Awards 2010 (gồm Video của năm, Video của nữ ca sĩ xuất sắc nhất, Video nhạc pop xuất sắc nhất,Video nhạc dance xuất sắc nhất, Đạo diễn xuất sắc nhất, Vũ đạo xuất sắc nhất và Video được biên tập tốt nhất).\r\n', 4, 7),
(27, '5 album Giáng sinh được chờ đợi nhất  ', 'Sự trở lại của một số diva và nhóm nhạc đã làm thị trường nhạc Giáng sinh năm nay thêm rộn rã', 'an_3.jpg', '2009-03-08 00:00:00', 'Hiện tượng âm nhạc thế giới năm 2009 Susan Boyle giới thiệu album mới nhất: The gift trong mùa Giáng sinh năm nay. Ra mắt đầu tháng 11, The gift lập tức đứng đầu nhiều bảng xếp hạng âm nhạc thế giới với hơn 1 triệu đĩa bán ra. The gift có nhiều ca khúc được Susan Boyle thể hiện theo phong cách pop, acoustic và cả thánh ca như: Perfect day, Hallelujah, Don’t dream it’s over... \r\n\r\nAlbum thứ 5 nhưng là album đầu về Giáng sinh của ca sĩ Scotland Annie Lennox: A Christmas Cornucopia cũng là một hiện tượng của năm. Các ca khúc kinh điển như Silent night, The first Noel, Lullay Lullay... được Annie Lennox thể hiện cùng sáng tác mới nhất của cô Universal child trong album này.  \r\n\r\n', 4, 7),
(28, 'Justin Bieber thống trị American Music Awards  ', 'Thần tượng mới 16 tuổi người Canada Justin Bieber đã qua mặt đàn anh Eminem để thống trị tại lễ trao giải American Music Awards (AMA) 2010 vừa kết thúc sáng nay (22.11, giờ VN)', 'an_4.jpg', '2010-03-03 00:00:00', 'Ca sĩ 16 tuổi cũng ngỏ lời cám ơn huyền thoại Michael Jackson khi nhận giải dành cho Ca sĩ nhạc pop qua câu nói: “Không có Michael Jackson, không ai trong chúng ta có thể có mặt tại đây”.\r\n\r\nBieber, người lớn lên tại Stratford, Ontario (Canada) song hiện sống tại Mỹ, chính là một trong những gương mặt “hot” nhất trong thế giới âm nhạc hiện nay. Cậu hiện là người trong mộng của hàng triệu cô gái trẻ, những người đã làm ngập lụt cả mạng xã hội Twitter bằng các thông điệp bày tỏ sự ngưỡng mộ. Đây là lợi thế lớn cho Bieber do các giải thưởng được người hâm mộ quyết định thông qua việc bầu chọn qua mạng.\r\n', 4, 7),
(29, 'Năng động cùng jean  ', 'Xu hướng thời trang jean cho mùa đông và xuân năm nay không chỉ giúp bạn trẻ năng động, thoải mái mà kiểu dáng còn mềm mại', 'tt_1.jpg', '2010-03-05 00:00:00', '(TNTS) Xu hướng thời trang jean cho mùa đông và xuân năm nay không chỉ giúp bạn trẻ năng động, thoải mái mà kiểu dáng còn mềm mại, ôm sát người rất phù hợp với tiết trời se lạnh. \r\nĐặc biệt với phái đẹp, dù bạn có vóc dáng cân đối hay không không quan trọng bởi các kiểu quần jeans mùa này thiết kế chú trọng đến những điểm nhấn nơi eo, hông và vòng 3, thật dễ dàng cho bạn lựa chọn nhằm tôn thêm vẻ duyên dáng, quyến rũ. \r\n\r\n', 4, 8),
(30, 'Dạ hội tóc  ', 'Diễn ra vào trung tuần tháng 10 vừa qua tại London (Anh), show trình diễn tóc uy tín nhất thế giới Alternative Hair Show lần thứ 28 ', 'tt_2.jpg', '2010-03-07 00:00:00', ' Diễn ra vào trung tuần tháng 10 vừa qua tại London (Anh), show trình diễn tóc uy tín nhất thế giới Alternative Hair Show lần thứ 28 thu hút một đội ngũ đông đảo các nhà tạo mẫu tóc hàng đầu thế giới tham dự. Đêm diễn giới thiệu nhiều kiểu tóc ấn tượng, độc đáo, phù hợp với chủ đề Masquerade (Dạ hội hóa trang). \r\nDưới đây là một số mẫu tóc vừa được giới thiệu tại show trình diễn tóc Alternative Hair Show 2010\r\n', 4, 8),
(31, 'Đêm của những giấc mơ  ', 'Đêm duy nhất Đẹp fashion show 9 có sự tham gia của các siêu mẫu hàng đầu VN và hàng loạt người đẹp từng đoạt danh hiệu tại các cuộc thi Hoa hậu VN', 'tt_3.jpg', '2010-03-09 00:00:00', ' Trong đêm diễn được mong chờ này, người xem đã được trải nghiệm một đêm thời trang đặc biệt trong sự kết hợp với các loại hình nghệ thuật khác như hội họa, âm nhạc, video, nhiếp ảnh, múa đương đại, xiếc, nghệ thuật trình diễn... \r\n\r\nNgoài các gương mặt quen thuộc trong làng thiết kế Việt như Hoàng Ngân, Kelly Bùi, Đỗ Mạnh Cường, đêm diễn còn có sự góp mặt của nhà thiết kế người Đức Juliane Kunze (Đức) và nhà thiết kế trẻ Lưu Anh Tuấn, một hiện tượng trong giới thời trang Hungary những năm gần đây. \r\n\r\n', 4, 8),
(32, 'Những mẫu thiết kế độc đáo  ', 'Trong khuôn khổ các tuần lễ thời trang dành cho xuân hè 2011 vừa qua, ngoài những bộ trang phục mang tính ứng dụng cao', 'tt_4.jpg', '2010-09-06 00:00:00', 'Trong khuôn khổ các tuần lễ thời trang dành cho xuân hè 2011 vừa qua, ngoài những bộ trang phục mang tính ứng dụng cao, các nhà tạo mẫu còn giới thiệu những mẫu thiết kế ngộ nghĩnh, thiên về trình diễn. Dưới đây là một số mẫu thiết kế hết sức độc đáo, lạ mắt, lấy ý tưởng từ những vật dụng trong cuộc sống hằng ngày, trích từ bốn tuần lễ thời trang xuân hè lớn nhất trong năm: New York, London, Milan, Paris và một số tuần lễ thời trang khác', 4, 8);
