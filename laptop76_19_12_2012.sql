-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 19, 2012 at 04:11 PM
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `banggia`
--

INSERT INTO `banggia` (`mabanggia`, `tenbanggia`) VALUES
(1, 'Bang gia laptop.pdf'),
(2, 'Bang gia may bo.pdf'),
(3, 'dungcookie_session_9_7_2012.doc');

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
('SO0003', 'Sony vaio VPC-Y216FX/L (Teal Blue )1        ', 'SO', 'S', '  Intel® Core™ i3-330UM 1.20GHz 3MB L3 Cache, 500GB 5400rpm Serial ATA, 4GB (2GB x 2)\r\nDDR3/800 RAM, No Optical Drive, 13.3" (1366 x 768) LED, Intel® HD Graphics, camera and\r\nmicrophone with face-tracking technology Bluetooth®, 802.11 b/g/n, Genuine Microsoft®\r\nWindows® 7 Home Premium 64-bit        ', 2222, 10500000, '570_mainimage.jpg', '2008-10-08', 1),
('SO0004', 'Sony vaio VPC-Y216FX/S (Silver )', 'SO', 'S', 'Intel® Core™ i3-330UM 1.20GHz 3MB L3 Cache, 500GB 5400rpm Serial ATA, 4GB (2GB x 2)\r\nDDR3/800 RAM, No Optical Drive, 13.3" (1366 x 768) LED, Intel® HD Graphics, camera and\r\nmicrophone with face-tracking technology Bluetooth®, 802.11 b/g/n, Genuine Microsoft®\r\nWindows® 7 Home Premium 64-bit', 400, 10000000, '833_mainimage.gif ', '2008-10-08', 0),
('SO0005', 'Sony vaio VPC-Y216FX/B (Black)', 'SO', 'S', 'Intel® Core™ i3-330UM 1.20GHz 3MB L3 Cache, 500GB 5400rpm Serial ATA, 4GB (2GB x 2)\r\nDDR3/800 RAM, No Optical Drive, 13.3" (1366 x 768) LED, Intel® HD Graphics, camera and\r\nmicrophone with face-tracking technology Bluetooth®, 802.11 b/g/n, Genuine Microsoft®\r\nWindows® 7 Home Premium 64-bit', 400, 12000000, '900_mainimage.jpg ', '2008-10-08', 1),
('SO0006', 'Sony VAIO® VPC-EA21FX/WI - White', 'SO', 'S', 'Intel® Core i3 330M (2.13 GHz, 3 MB L3 cache, DDR3 1066 MHz), 500GB HDD, 4GB (2GBx2)\r\nDDR3/1066, DVD RW+/- Double Layer, 14" (1366x768) LCD LED, NVIDIA® GeForce® 310M\r\nGPU with T256MB dedicated video RAM, Built-in MOTION EYE® camera and microphone with\r\nface-tracking technology, Bluetooth® Technology, 802.11 b/g/n, Microsoft® Windows® 7 Home\r\nPremium 64-bit', 370, 13000000, 'vdn1285903746.jpg ', '2009-08-18', 0),
('DE0001', 'Dell Inspiron 1440 (AIN-I1440n) (Black)', 'DE', 'D', 'Intel® Core™ i5 - 540M (2.53GHz with Turbo Boost Technology up to 3.06GHz, 3MB L3\r\nCache, 1066MHz DDR3), 500GB HDD, 3GB (2GB+1GB) DDR3/1066, DVD RW+/- Double Layer,\r\n14"(1366x768 ) LCD LED, NVIDIA® GeForce® 310M GPU with 256MB dedicated video RAM,\r\nBuilt-in MOTION EYE® camera and microphone with face-tracking technology, Bluetooth®\r\nTechnology, 802.11 b/g/n, Microsoft® Windows® 7 Professional 64-bit', 400, 10200000, '186_1_mini.jpg ', '2008-10-08', 0),
('DE0002', 'Dell Inspiron 14R N4010- (GCTD51) Obsidian Black', 'DE', 'D', 'Intel Core i3-350M (2.26GHz, Bus 1066FSB, cache 3MB), 4GB (2GB x 2), 320GB (5400),\r\nDVD±RW Double Layer, 14" (1366 x 768) LCD LED, Intel® Graphics Media Accelerator HD,\r\nIntel® 802.11a/b/g/n, build in Webcam, Bluetooth®, Microsoft® Windows® 7 Home Premium 64-\r\nbit,', 900, 10600000, '224_1_mini.jpg ', '2008-10-08', 1),
('DE0006', 'Dell Vostro 3400 (H9YKD1) Aluminum body', 'DE', 'D', 'Intel Core i3-350M (2.26GHz, Bus 1066FSB, cache 3MB), 4GB (2GB x 2), 500GB (5400), 14"\r\n(1366 x 768) LCD LED, Intel® Graphics Media Accelerator HD, DVDRW± Double Layer, Intel®\r\n802.11a/b/g/n, build in Webcam, BlueTooth Integrated Stereo A2DP (2.1 + EDR), Microsoft®\r\nWindows® 7 Home Premium 64-bit', 360, 11500000, 'show_image_in_imgtag(8).png ', '2008-10-08', 0),
('DE0008', 'Dell Vostro 3400 (H9YKD2) Aluminum body', 'DE', 'D', 'Intel Core i3-350M (2.26GHz, Bus 1066FSB, cache 3MB), 4GB (4GB x 1) RAM, 320GB HDD,\r\nDVD±RW Double Layer, 14" (1366 x 768) LCD LED, ATI Mobility Radeon™ HD 5145 Graphics\r\n(512MB Dedicated), Atheros 802.11b/g/n, BlueTooth, build in Webcam, Microsoft® Windows® 7\r\nProfessional 64-bit', 100, 11000000, 'tb_1674.png ', '2010-10-08', 0),
('DE0009', 'DELL STUDIO 1458 (9GKMV4) - New (BLACK)', 'DE', 'D', 'Intel® Core™ i5-460M (2.53GHz, 1066Mhz, 3MB Cache, turbo Boost 2.8Ghz), 500GB\r\n5400rpm Serial ATA, 4GB (2GBx2) DDR3/1066MHz, Blu-Ray DvDRW +/- Double Layer, 14"\r\n(1366 x 768) LED, ATI Mobility Radeon™ HD 5650 1024MB of dedicated video RAM , Builtin\r\nMOTION EYE® camera and microphone with face-tracking technology, Integrated Stereo A2DP\r\n(2.1 + EDR) , Intel® Centrino® Advanced-N 6200 (802.11b/g/n), Microsoft® Windows® 7\r\nProfessional', 180, 11000000, 'a.gif', '2008-11-09', 0),
('DE0010', 'Dell Latitude E6410', 'DE', 'D', 'Intel® Core™ i5-460M (2.53GHz, 1066Mhz, 3MB Cache, turbo Boost 2.8Ghz), 500GB\r\n5400rpm Serial ATA, 4GB (2GBx2), DDR3/1066MHz, DvDRW +/- Double Layer, 14" (1366 x\r\n768) LED, ATI Mobility Radeon™ HD 5650 1024MB of dedicated video RAM , Built-in\r\nMOTION EYE® camera and microphone with face-tracking technology, Integrated Stereo A2DP\r\n(2.1 + EDR) , Intel® Centrino® Advanced-N 6200 (802.11b/g/n), Microsoft® Windows® 7\r\nProfessional', 110, 15000000, 'b.jpg ', '2009-10-23', 0),
('DE0011', 'Dell Inspiron 14R - N4010 (T560821VN)', 'DE', '1', 'Intel Core i3-350M (2.26GHz, Bus 1066FSB, cache 3MB), 4GB (2GB x 2) RAM, 320GB (5400)\r\nHDD, DVD±R Double Layer, 15.5" (1366 x 768) LCD, Intel® Graphics Media Accelerator HD,\r\nIntel® Centrino® Advanced-N 6200 (802.11a/b/g/n), build in Webcam, Microsoft® Windows® 7\r\nHome Premium 64-bit', 180, 16000000, 'c.jpg ', '2010-10-08', 0),
('LE0001', 'Lenovo IdeaPad 3000 - B460 (5905-1007)', 'LE', 'L', 'Intel Core i3-350M (2.26GHz, Bus 1066FSB, cache 3MB), 4GB (2GB x 2) RAM, 320GB (5400)\r\nHDD, DVD±R Double Layer, 15.5" (1366 x 768) LCD, Intel® Graphics Media Accelerator HD,\r\nIntel® 802.11a/b/g/n, build in Webcam, Microsoft® Windows® 7 Home Premium 64-bit', 900, 12000000, 'small_ccu1286331796.jpg ', '2008-10-08', 0),
('LE0002', 'Lenovo ThinkPad L412 4403-69U', 'LE', 'L', 'Intel Core i3-350M (2.26GHz, Bus 1066FSB, cache 3MB), 4GB (2GB x 2) RAM, 500GB (5400)\r\nHDD, DVD±R Double Layer, 15.5" (1366 x 768) LCD, Intel® Graphics Media Accelerator HD,\r\nIntel® 802.11a/b/g/n, build in Webcam, Microsoft® Windows® 7 Home Premium 64-bit', 454, 12300000, 'small_eep1274409307.jpg ', '2008-10-08', 0),
('HP0001', 'Hp Compaq Presario CQ42-261TU', 'HP', 'H', 'Intel Core i3-350M (2.26GHz, Bus 1066FSB, cache 3MB), 4GB (2GB x 2) RAM, 500GB (5400)\r\nHDD, DVD±R Double Layer, 15.5" (1366 x 768) LCD, Intel® Graphics Media Accelerator HD,\r\nIntel® 802.11a/b/g/n, build in Webcam, Microsoft® Windows® 7 Home Premium 64-bit', 900, 13200000, '213_1_mini.jpg ', '2008-10-08', 1),
('HP0002', 'Hp Compaq Presario CQ42-263TU (XB803PA)', 'HP', 'H', 'Intel® Core™ i3 - 370M 2.40GHz, 3MB cache, 500GB 5400rpm Serial ATA, 4GB (2GBx2)\r\nDDR3/1066MHz, DvDRW +/- Double Layer, 15.5" (1366 x 768 ) LED, Intel® HD Graphics, Builtin\r\nMOTION EYE® camera and microphone with face-tracking technology, Intel® Centrino®\r\nAdvanced-N 6200 (802.11b/g/n), Microsoft® Windows® 7 Home Premium 64-bit', 400, 10200000, '254_1_mini.jpg ', '2008-10-08', 0),
('HP0003', 'HP Probook 4420s (XB676PA#UUF)', 'HP', 'H', 'Intel® Core™ i3 - 370M 2.40GHz, 3MB cache, 500GB 5400rpm Serial ATA, 4GB (2GBx2)\r\nDDR3/1066MHz, DvDRW +/- Double Layer, 15.5" (1366 x 768 ) LED, Intel® HD Graphics, Builtin\r\nMOTION EYE® camera and microphone with face-tracking technology, Intel® Centrino®\r\nAdvanced-N 6200 (802.11b/g/n), Microsoft® Windows® 7 Home Premium 64-bit', 400, 9600000, '772_mainimage.jpg ', '2010-10-14', 0),
('HP0004', 'HP Pavilion G42-361TU (XU571PA)', 'HP', 'H', 'Intel® Core™ i7 - 720QM 1.60GHz with Turbo Boost Technology up to 2.80GHz, 6MB cache,\r\n500GB (5400rpm)Serial ATA, 4GB (2GBx2) DDR3/1333MHz, DVDRW +/- double layer, 16.4"\r\n(1600 x 900), NVIDIA® GeForce® 310M GPU with 512MB of dedicated video RAM, Built-in\r\nMOTION EYE® camera and microphone, Bluetooth® Technology, 802.11 b/g/n, Microsoft®\r\nWindows® 7 Professional 64-bit', 900, 14200000, 'tb_2061.jpg ', '2008-10-08', 1),
('HP0005', '1111HP Pavilion G42-360TU (XT843PA)                ', 'HP', 'H', '111Intel® Core™ i7 - 720QM 1.60GHz with Turbo Boost Technology up to 2.80GHz, 6MB cache,\r\n320GB (5400rpm) Serial ATA, 4GB (2GBx2) DDR3/1333MHz, DVDRW +/- double layer, 16.4"\r\n(1600 x 900), NVIDIA® GeForce® 310M GPU with 512MB of dedicated video RAM, Built-in\r\nMOTION EYE® camera and microphone, Bluetooth® Technology, 802.11 b/g/n, Microsoft®\r\nWindows® 7 Professional 64-bit                ', 888, 8888, '', '2008-10-08', 0),
('AC001', 'Apple iPad WiFi + 3G 32G', 'AC', 'C', 'Intel® Core™ i7 - 740QM 1.73GHz with Turbo Boost Technology up to 2.93GHz, 6MB L3 Cache,\r\n4GB (2GBx2) DDR3/1333MHz, 320GB 7200rpm Serial ATA, DvDRW +/- Double Layer, 16.4"\r\n(1600 x 900), NVIDIA® GeForce® 330M GPU 1024MB of dedicated video RAM, camera and\r\nmicrophone with face-tracking technology, BlueTooth, 802.11 b/g/n, Microsoft® Windows® 7\r\nHome Premium 64-bit', 400, 15200000, '256_1_mini.jpg ', '2008-10-08', 0),
('AC002', 'Apple iPad WiFi + 3G 64GB (MC497LL/A)', 'AC', 'C', 'Intel® Core™ i7 - 740QM 1.73GHz with Turbo Boost Technology up to 2.93GHz, 6MB L3 Cache,\r\n4GB (2GBx2) DDR3/1333MHz, 320GB 7200rpm Serial ATA, DvDRW +/- Double Layer, 16.4"\r\n(1600 x 900), NVIDIA® GeForce® 310M GPU 512MB of dedicated video RAM, Camera and\r\nmicrophone with face-tracking technology, BlueTooth, 802.11 b/g/n, Microsoft® Windows® 7\r\nProfessional 64-bit', 400, 12000000, '261_1_mini.jpg ', '2008-10-08', 1),
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
('AS012', 'Asus X42JE-VX093 (K42JE-3EVX) ', 'AS', 'A', 'Intel® Core™ i5-450M (2*2.40GHz Turbo Boost 2.66GHz, 4Threads, 3MB L3 cache), Intel HM55\r\nChipset, 2GB DDR3 RAM, 320GB 7200rpm, DVD±RW Double Layer, 14.0 HD WLED BrightView,\r\nIntel® HD Graphics, build in 0.3M WebCam, Bluetooth, 3*USB2.0, HDMI, 10/100TX, 802.11bgn,\r\n5in1 Card, 2.2kg, FreeDOS, 6cell, 3.0hours', 900, 10350000, 'small_cbk1244517578.jpg', '2008-10-08', 0),
('s2222', 'sony vip        ', 'SO', 'S', 'ddd        ', 22, 10000000, 'an_4.jpg', '2012-12-12', 1),
('s0444', 'hh', 'SO', 'S', 'ddd', 55, 555, '080211_the-thao_Kaka2222.jpg', '2012-12-12', 0),
('s0555', 'hh', 'SO', 'S', 'ddd', 55, 555, 'a2.jpg', '2012-12-12', 0),
('x8888', 'hh', 'SO', 'S', 'ddd        ', 55, 555, 'tt_4.jpg', '2012-12-12', 1);

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
-- Table structure for table `phpbb_acl_groups`
--

CREATE TABLE IF NOT EXISTS `phpbb_acl_groups` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  KEY `group_id` (`group_id`),
  KEY `auth_opt_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_groups`
--

INSERT INTO `phpbb_acl_groups` (`group_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
(1, 0, 85, 0, 1),
(1, 0, 93, 0, 1),
(1, 0, 111, 0, 1),
(5, 0, 0, 5, 0),
(5, 0, 0, 1, 0),
(2, 0, 0, 6, 0),
(3, 0, 0, 6, 0),
(4, 0, 0, 5, 0),
(4, 0, 0, 10, 0),
(1, 1, 0, 17, 0),
(2, 1, 0, 17, 0),
(3, 1, 0, 17, 0),
(6, 1, 0, 17, 0),
(1, 2, 0, 17, 0),
(2, 2, 0, 15, 0),
(3, 2, 0, 15, 0),
(4, 2, 0, 21, 0),
(5, 2, 0, 14, 0),
(5, 2, 0, 10, 0),
(6, 2, 0, 19, 0),
(5, 3, 0, 14, 0),
(6, 3, 0, 15, 0),
(4, 3, 0, 20, 0),
(1, 3, 0, 17, 0),
(2, 3, 0, 22, 0),
(5, 5, 0, 14, 0),
(6, 5, 0, 15, 0),
(4, 5, 0, 20, 0),
(1, 5, 0, 17, 0),
(2, 5, 0, 22, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_options`
--

CREATE TABLE IF NOT EXISTS `phpbb_acl_options` (
  `auth_option_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `auth_option` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_global` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_local` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `founder_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`auth_option_id`),
  KEY `auth_option` (`auth_option`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=118 ;

--
-- Dumping data for table `phpbb_acl_options`
--

INSERT INTO `phpbb_acl_options` (`auth_option_id`, `auth_option`, `is_global`, `is_local`, `founder_only`) VALUES
(1, 'f_', 0, 1, 0),
(2, 'f_announce', 0, 1, 0),
(3, 'f_attach', 0, 1, 0),
(4, 'f_bbcode', 0, 1, 0),
(5, 'f_bump', 0, 1, 0),
(6, 'f_delete', 0, 1, 0),
(7, 'f_download', 0, 1, 0),
(8, 'f_edit', 0, 1, 0),
(9, 'f_email', 0, 1, 0),
(10, 'f_flash', 0, 1, 0),
(11, 'f_icons', 0, 1, 0),
(12, 'f_ignoreflood', 0, 1, 0),
(13, 'f_img', 0, 1, 0),
(14, 'f_list', 0, 1, 0),
(15, 'f_noapprove', 0, 1, 0),
(16, 'f_poll', 0, 1, 0),
(17, 'f_post', 0, 1, 0),
(18, 'f_postcount', 0, 1, 0),
(19, 'f_print', 0, 1, 0),
(20, 'f_read', 0, 1, 0),
(21, 'f_reply', 0, 1, 0),
(22, 'f_report', 0, 1, 0),
(23, 'f_search', 0, 1, 0),
(24, 'f_sigs', 0, 1, 0),
(25, 'f_smilies', 0, 1, 0),
(26, 'f_sticky', 0, 1, 0),
(27, 'f_subscribe', 0, 1, 0),
(28, 'f_user_lock', 0, 1, 0),
(29, 'f_vote', 0, 1, 0),
(30, 'f_votechg', 0, 1, 0),
(31, 'm_', 1, 1, 0),
(32, 'm_approve', 1, 1, 0),
(33, 'm_chgposter', 1, 1, 0),
(34, 'm_delete', 1, 1, 0),
(35, 'm_edit', 1, 1, 0),
(36, 'm_info', 1, 1, 0),
(37, 'm_lock', 1, 1, 0),
(38, 'm_merge', 1, 1, 0),
(39, 'm_move', 1, 1, 0),
(40, 'm_report', 1, 1, 0),
(41, 'm_split', 1, 1, 0),
(42, 'm_ban', 1, 0, 0),
(43, 'm_warn', 1, 0, 0),
(44, 'a_', 1, 0, 0),
(45, 'a_aauth', 1, 0, 0),
(46, 'a_attach', 1, 0, 0),
(47, 'a_authgroups', 1, 0, 0),
(48, 'a_authusers', 1, 0, 0),
(49, 'a_backup', 1, 0, 0),
(50, 'a_ban', 1, 0, 0),
(51, 'a_bbcode', 1, 0, 0),
(52, 'a_board', 1, 0, 0),
(53, 'a_bots', 1, 0, 0),
(54, 'a_clearlogs', 1, 0, 0),
(55, 'a_email', 1, 0, 0),
(56, 'a_fauth', 1, 0, 0),
(57, 'a_forum', 1, 0, 0),
(58, 'a_forumadd', 1, 0, 0),
(59, 'a_forumdel', 1, 0, 0),
(60, 'a_group', 1, 0, 0),
(61, 'a_groupadd', 1, 0, 0),
(62, 'a_groupdel', 1, 0, 0),
(63, 'a_icons', 1, 0, 0),
(64, 'a_jabber', 1, 0, 0),
(65, 'a_language', 1, 0, 0),
(66, 'a_mauth', 1, 0, 0),
(67, 'a_modules', 1, 0, 0),
(68, 'a_names', 1, 0, 0),
(69, 'a_phpinfo', 1, 0, 0),
(70, 'a_profile', 1, 0, 0),
(71, 'a_prune', 1, 0, 0),
(72, 'a_ranks', 1, 0, 0),
(73, 'a_reasons', 1, 0, 0),
(74, 'a_roles', 1, 0, 0),
(75, 'a_search', 1, 0, 0),
(76, 'a_server', 1, 0, 0),
(77, 'a_styles', 1, 0, 0),
(78, 'a_switchperm', 1, 0, 0),
(79, 'a_uauth', 1, 0, 0),
(80, 'a_user', 1, 0, 0),
(81, 'a_userdel', 1, 0, 0),
(82, 'a_viewauth', 1, 0, 0),
(83, 'a_viewlogs', 1, 0, 0),
(84, 'a_words', 1, 0, 0),
(85, 'u_', 1, 0, 0),
(86, 'u_attach', 1, 0, 0),
(87, 'u_chgavatar', 1, 0, 0),
(88, 'u_chgcensors', 1, 0, 0),
(89, 'u_chgemail', 1, 0, 0),
(90, 'u_chggrp', 1, 0, 0),
(91, 'u_chgname', 1, 0, 0),
(92, 'u_chgpasswd', 1, 0, 0),
(93, 'u_download', 1, 0, 0),
(94, 'u_hideonline', 1, 0, 0),
(95, 'u_ignoreflood', 1, 0, 0),
(96, 'u_masspm', 1, 0, 0),
(97, 'u_masspm_group', 1, 0, 0),
(98, 'u_pm_attach', 1, 0, 0),
(99, 'u_pm_bbcode', 1, 0, 0),
(100, 'u_pm_delete', 1, 0, 0),
(101, 'u_pm_download', 1, 0, 0),
(102, 'u_pm_edit', 1, 0, 0),
(103, 'u_pm_emailpm', 1, 0, 0),
(104, 'u_pm_flash', 1, 0, 0),
(105, 'u_pm_forward', 1, 0, 0),
(106, 'u_pm_img', 1, 0, 0),
(107, 'u_pm_printpm', 1, 0, 0),
(108, 'u_pm_smilies', 1, 0, 0),
(109, 'u_readpm', 1, 0, 0),
(110, 'u_savedrafts', 1, 0, 0),
(111, 'u_search', 1, 0, 0),
(112, 'u_sendemail', 1, 0, 0),
(113, 'u_sendim', 1, 0, 0),
(114, 'u_sendpm', 1, 0, 0),
(115, 'u_sig', 1, 0, 0),
(116, 'u_viewonline', 1, 0, 0),
(117, 'u_viewprofile', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_roles`
--

CREATE TABLE IF NOT EXISTS `phpbb_acl_roles` (
  `role_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_description` text COLLATE utf8_bin NOT NULL,
  `role_type` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_order` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`),
  KEY `role_type` (`role_type`),
  KEY `role_order` (`role_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=23 ;

--
-- Dumping data for table `phpbb_acl_roles`
--

INSERT INTO `phpbb_acl_roles` (`role_id`, `role_name`, `role_description`, `role_type`, `role_order`) VALUES
(1, 'ROLE_ADMIN_STANDARD', 0x524f4c455f4445534352495054494f4e5f41444d494e5f5354414e44415244, 'a_', 1),
(2, 'ROLE_ADMIN_FORUM', 0x524f4c455f4445534352495054494f4e5f41444d494e5f464f52554d, 'a_', 3),
(3, 'ROLE_ADMIN_USERGROUP', 0x524f4c455f4445534352495054494f4e5f41444d494e5f5553455247524f5550, 'a_', 4),
(4, 'ROLE_ADMIN_FULL', 0x524f4c455f4445534352495054494f4e5f41444d494e5f46554c4c, 'a_', 2),
(5, 'ROLE_USER_FULL', 0x524f4c455f4445534352495054494f4e5f555345525f46554c4c, 'u_', 3),
(6, 'ROLE_USER_STANDARD', 0x524f4c455f4445534352495054494f4e5f555345525f5354414e44415244, 'u_', 1),
(7, 'ROLE_USER_LIMITED', 0x524f4c455f4445534352495054494f4e5f555345525f4c494d49544544, 'u_', 2),
(8, 'ROLE_USER_NOPM', 0x524f4c455f4445534352495054494f4e5f555345525f4e4f504d, 'u_', 4),
(9, 'ROLE_USER_NOAVATAR', 0x524f4c455f4445534352495054494f4e5f555345525f4e4f415641544152, 'u_', 5),
(10, 'ROLE_MOD_FULL', 0x524f4c455f4445534352495054494f4e5f4d4f445f46554c4c, 'm_', 3),
(11, 'ROLE_MOD_STANDARD', 0x524f4c455f4445534352495054494f4e5f4d4f445f5354414e44415244, 'm_', 1),
(12, 'ROLE_MOD_SIMPLE', 0x524f4c455f4445534352495054494f4e5f4d4f445f53494d504c45, 'm_', 2),
(13, 'ROLE_MOD_QUEUE', 0x524f4c455f4445534352495054494f4e5f4d4f445f5155455545, 'm_', 4),
(14, 'ROLE_FORUM_FULL', 0x524f4c455f4445534352495054494f4e5f464f52554d5f46554c4c, 'f_', 7),
(15, 'ROLE_FORUM_STANDARD', 0x524f4c455f4445534352495054494f4e5f464f52554d5f5354414e44415244, 'f_', 5),
(16, 'ROLE_FORUM_NOACCESS', 0x524f4c455f4445534352495054494f4e5f464f52554d5f4e4f414343455353, 'f_', 1),
(17, 'ROLE_FORUM_READONLY', 0x524f4c455f4445534352495054494f4e5f464f52554d5f524541444f4e4c59, 'f_', 2),
(18, 'ROLE_FORUM_LIMITED', 0x524f4c455f4445534352495054494f4e5f464f52554d5f4c494d49544544, 'f_', 3),
(19, 'ROLE_FORUM_BOT', 0x524f4c455f4445534352495054494f4e5f464f52554d5f424f54, 'f_', 9),
(20, 'ROLE_FORUM_ONQUEUE', 0x524f4c455f4445534352495054494f4e5f464f52554d5f4f4e5155455545, 'f_', 8),
(21, 'ROLE_FORUM_POLLS', 0x524f4c455f4445534352495054494f4e5f464f52554d5f504f4c4c53, 'f_', 6),
(22, 'ROLE_FORUM_LIMITED_POLLS', 0x524f4c455f4445534352495054494f4e5f464f52554d5f4c494d495445445f504f4c4c53, 'f_', 4);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_roles_data`
--

CREATE TABLE IF NOT EXISTS `phpbb_acl_roles_data` (
  `role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`,`auth_option_id`),
  KEY `ath_op_id` (`auth_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_roles_data`
--

INSERT INTO `phpbb_acl_roles_data` (`role_id`, `auth_option_id`, `auth_setting`) VALUES
(1, 44, 1),
(1, 46, 1),
(1, 47, 1),
(1, 48, 1),
(1, 50, 1),
(1, 51, 1),
(1, 52, 1),
(1, 56, 1),
(1, 57, 1),
(1, 58, 1),
(1, 59, 1),
(1, 60, 1),
(1, 61, 1),
(1, 62, 1),
(1, 63, 1),
(1, 66, 1),
(1, 68, 1),
(1, 70, 1),
(1, 71, 1),
(1, 72, 1),
(1, 73, 1),
(1, 79, 1),
(1, 80, 1),
(1, 81, 1),
(1, 82, 1),
(1, 83, 1),
(1, 84, 1),
(2, 44, 1),
(2, 47, 1),
(2, 48, 1),
(2, 56, 1),
(2, 57, 1),
(2, 58, 1),
(2, 59, 1),
(2, 66, 1),
(2, 71, 1),
(2, 79, 1),
(2, 82, 1),
(2, 83, 1),
(3, 44, 1),
(3, 47, 1),
(3, 48, 1),
(3, 50, 1),
(3, 60, 1),
(3, 61, 1),
(3, 62, 1),
(3, 72, 1),
(3, 79, 1),
(3, 80, 1),
(3, 82, 1),
(3, 83, 1),
(4, 44, 1),
(4, 45, 1),
(4, 46, 1),
(4, 47, 1),
(4, 48, 1),
(4, 49, 1),
(4, 50, 1),
(4, 51, 1),
(4, 52, 1),
(4, 53, 1),
(4, 54, 1),
(4, 55, 1),
(4, 56, 1),
(4, 57, 1),
(4, 58, 1),
(4, 59, 1),
(4, 60, 1),
(4, 61, 1),
(4, 62, 1),
(4, 63, 1),
(4, 64, 1),
(4, 65, 1),
(4, 66, 1),
(4, 67, 1),
(4, 68, 1),
(4, 69, 1),
(4, 70, 1),
(4, 71, 1),
(4, 72, 1),
(4, 73, 1),
(4, 74, 1),
(4, 75, 1),
(4, 76, 1),
(4, 77, 1),
(4, 78, 1),
(4, 79, 1),
(4, 80, 1),
(4, 81, 1),
(4, 82, 1),
(4, 83, 1),
(4, 84, 1),
(5, 85, 1),
(5, 86, 1),
(5, 87, 1),
(5, 88, 1),
(5, 89, 1),
(5, 90, 1),
(5, 91, 1),
(5, 92, 1),
(5, 93, 1),
(5, 94, 1),
(5, 95, 1),
(5, 96, 1),
(5, 97, 1),
(5, 98, 1),
(5, 99, 1),
(5, 100, 1),
(5, 101, 1),
(5, 102, 1),
(5, 103, 1),
(5, 104, 1),
(5, 105, 1),
(5, 106, 1),
(5, 107, 1),
(5, 108, 1),
(5, 109, 1),
(5, 110, 1),
(5, 111, 1),
(5, 112, 1),
(5, 113, 1),
(5, 114, 1),
(5, 115, 1),
(5, 116, 1),
(5, 117, 1),
(6, 85, 1),
(6, 86, 1),
(6, 87, 1),
(6, 88, 1),
(6, 89, 1),
(6, 92, 1),
(6, 93, 1),
(6, 94, 1),
(6, 96, 1),
(6, 97, 1),
(6, 98, 1),
(6, 99, 1),
(6, 100, 1),
(6, 101, 1),
(6, 102, 1),
(6, 103, 1),
(6, 106, 1),
(6, 107, 1),
(6, 108, 1),
(6, 109, 1),
(6, 110, 1),
(6, 111, 1),
(6, 112, 1),
(6, 113, 1),
(6, 114, 1),
(6, 115, 1),
(6, 117, 1),
(7, 85, 1),
(7, 87, 1),
(7, 88, 1),
(7, 89, 1),
(7, 92, 1),
(7, 93, 1),
(7, 94, 1),
(7, 99, 1),
(7, 100, 1),
(7, 101, 1),
(7, 102, 1),
(7, 105, 1),
(7, 106, 1),
(7, 107, 1),
(7, 108, 1),
(7, 109, 1),
(7, 114, 1),
(7, 115, 1),
(7, 117, 1),
(8, 85, 1),
(8, 87, 1),
(8, 88, 1),
(8, 89, 1),
(8, 92, 1),
(8, 93, 1),
(8, 94, 1),
(8, 115, 1),
(8, 117, 1),
(8, 96, 0),
(8, 97, 0),
(8, 109, 0),
(8, 114, 0),
(9, 85, 1),
(9, 88, 1),
(9, 89, 1),
(9, 92, 1),
(9, 93, 1),
(9, 94, 1),
(9, 99, 1),
(9, 100, 1),
(9, 101, 1),
(9, 102, 1),
(9, 105, 1),
(9, 106, 1),
(9, 107, 1),
(9, 108, 1),
(9, 109, 1),
(9, 114, 1),
(9, 115, 1),
(9, 117, 1),
(9, 87, 0),
(9, 96, 0),
(9, 97, 0),
(10, 31, 1),
(10, 32, 1),
(10, 42, 1),
(10, 33, 1),
(10, 34, 1),
(10, 35, 1),
(10, 36, 1),
(10, 37, 1),
(10, 38, 1),
(10, 39, 1),
(10, 40, 1),
(10, 41, 1),
(10, 43, 1),
(11, 31, 1),
(11, 32, 1),
(11, 34, 1),
(11, 35, 1),
(11, 36, 1),
(11, 37, 1),
(11, 38, 1),
(11, 39, 1),
(11, 40, 1),
(11, 41, 1),
(11, 43, 1),
(12, 31, 1),
(12, 34, 1),
(12, 35, 1),
(12, 36, 1),
(12, 40, 1),
(13, 31, 1),
(13, 32, 1),
(13, 35, 1),
(14, 1, 1),
(14, 2, 1),
(14, 3, 1),
(14, 4, 1),
(14, 5, 1),
(14, 6, 1),
(14, 7, 1),
(14, 8, 1),
(14, 9, 1),
(14, 10, 1),
(14, 11, 1),
(14, 12, 1),
(14, 13, 1),
(14, 14, 1),
(14, 15, 1),
(14, 16, 1),
(14, 17, 1),
(14, 18, 1),
(14, 19, 1),
(14, 20, 1),
(14, 21, 1),
(14, 22, 1),
(14, 23, 1),
(14, 24, 1),
(14, 25, 1),
(14, 26, 1),
(14, 27, 1),
(14, 28, 1),
(14, 29, 1),
(14, 30, 1),
(15, 1, 1),
(15, 3, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 11, 1),
(15, 13, 1),
(15, 14, 1),
(15, 15, 1),
(15, 17, 1),
(15, 18, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 27, 1),
(15, 29, 1),
(15, 30, 1),
(16, 1, 0),
(17, 1, 1),
(17, 7, 1),
(17, 14, 1),
(17, 19, 1),
(17, 20, 1),
(17, 23, 1),
(17, 27, 1),
(18, 1, 1),
(18, 4, 1),
(18, 7, 1),
(18, 8, 1),
(18, 9, 1),
(18, 13, 1),
(18, 14, 1),
(18, 15, 1),
(18, 17, 1),
(18, 18, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 27, 1),
(18, 29, 1),
(19, 1, 1),
(19, 7, 1),
(19, 14, 1),
(19, 19, 1),
(19, 20, 1),
(20, 1, 1),
(20, 3, 1),
(20, 4, 1),
(20, 7, 1),
(20, 8, 1),
(20, 9, 1),
(20, 13, 1),
(20, 14, 1),
(20, 17, 1),
(20, 18, 1),
(20, 19, 1),
(20, 20, 1),
(20, 21, 1),
(20, 22, 1),
(20, 23, 1),
(20, 24, 1),
(20, 25, 1),
(20, 27, 1),
(20, 29, 1),
(20, 15, 0),
(21, 1, 1),
(21, 3, 1),
(21, 4, 1),
(21, 5, 1),
(21, 6, 1),
(21, 7, 1),
(21, 8, 1),
(21, 9, 1),
(21, 11, 1),
(21, 13, 1),
(21, 14, 1),
(21, 15, 1),
(21, 16, 1),
(21, 17, 1),
(21, 18, 1),
(21, 19, 1),
(21, 20, 1),
(21, 21, 1),
(21, 22, 1),
(21, 23, 1),
(21, 24, 1),
(21, 25, 1),
(21, 27, 1),
(21, 29, 1),
(21, 30, 1),
(22, 1, 1),
(22, 4, 1),
(22, 7, 1),
(22, 8, 1),
(22, 9, 1),
(22, 13, 1),
(22, 14, 1),
(22, 15, 1),
(22, 16, 1),
(22, 17, 1),
(22, 18, 1),
(22, 19, 1),
(22, 20, 1),
(22, 21, 1),
(22, 22, 1),
(22, 23, 1),
(22, 24, 1),
(22, 25, 1),
(22, 27, 1),
(22, 29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_users`
--

CREATE TABLE IF NOT EXISTS `phpbb_acl_users` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  KEY `user_id` (`user_id`),
  KEY `auth_option_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_users`
--

INSERT INTO `phpbb_acl_users` (`user_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
(2, 0, 0, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_attachments`
--

CREATE TABLE IF NOT EXISTS `phpbb_attachments` (
  `attach_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `post_msg_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `in_message` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_orphan` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `physical_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `real_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `download_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attach_comment` text COLLATE utf8_bin NOT NULL,
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mimetype` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `filesize` int(20) unsigned NOT NULL DEFAULT '0',
  `filetime` int(11) unsigned NOT NULL DEFAULT '0',
  `thumbnail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attach_id`),
  KEY `filetime` (`filetime`),
  KEY `post_msg_id` (`post_msg_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_id` (`poster_id`),
  KEY `is_orphan` (`is_orphan`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phpbb_attachments`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_banlist`
--

CREATE TABLE IF NOT EXISTS `phpbb_banlist` (
  `ban_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ban_userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ban_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_start` int(11) unsigned NOT NULL DEFAULT '0',
  `ban_end` int(11) unsigned NOT NULL DEFAULT '0',
  `ban_exclude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_give_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`ban_id`),
  KEY `ban_end` (`ban_end`),
  KEY `ban_user` (`ban_userid`,`ban_exclude`),
  KEY `ban_email` (`ban_email`,`ban_exclude`),
  KEY `ban_ip` (`ban_ip`,`ban_exclude`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phpbb_banlist`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_bbcodes`
--

CREATE TABLE IF NOT EXISTS `phpbb_bbcodes` (
  `bbcode_id` tinyint(3) NOT NULL DEFAULT '0',
  `bbcode_tag` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_helpline` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_match` text COLLATE utf8_bin NOT NULL,
  `bbcode_tpl` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`bbcode_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_bbcodes`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_bookmarks`
--

CREATE TABLE IF NOT EXISTS `phpbb_bookmarks` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_bookmarks`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_bots`
--

CREATE TABLE IF NOT EXISTS `phpbb_bots` (
  `bot_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bot_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `bot_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bot_agent` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bot_ip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`bot_id`),
  KEY `bot_active` (`bot_active`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=51 ;

--
-- Dumping data for table `phpbb_bots`
--

INSERT INTO `phpbb_bots` (`bot_id`, `bot_active`, `bot_name`, `user_id`, `bot_agent`, `bot_ip`) VALUES
(1, 1, 'AdsBot [Google]', 3, 'AdsBot-Google', ''),
(2, 1, 'Alexa [Bot]', 4, 'ia_archiver', ''),
(3, 1, 'Alta Vista [Bot]', 5, 'Scooter/', ''),
(4, 1, 'Ask Jeeves [Bot]', 6, 'Ask Jeeves', ''),
(5, 1, 'Baidu [Spider]', 7, 'Baiduspider+(', ''),
(6, 1, 'Exabot [Bot]', 8, 'Exabot/', ''),
(7, 1, 'FAST Enterprise [Crawler]', 9, 'FAST Enterprise Crawler', ''),
(8, 1, 'FAST WebCrawler [Crawler]', 10, 'FAST-WebCrawler/', ''),
(9, 1, 'Francis [Bot]', 11, 'http://www.neomo.de/', ''),
(10, 1, 'Gigabot [Bot]', 12, 'Gigabot/', ''),
(11, 1, 'Google Adsense [Bot]', 13, 'Mediapartners-Google', ''),
(12, 1, 'Google Desktop', 14, 'Google Desktop', ''),
(13, 1, 'Google Feedfetcher', 15, 'Feedfetcher-Google', ''),
(14, 1, 'Google [Bot]', 16, 'Googlebot', ''),
(15, 1, 'Heise IT-Markt [Crawler]', 17, 'heise-IT-Markt-Crawler', ''),
(16, 1, 'Heritrix [Crawler]', 18, 'heritrix/1.', ''),
(17, 1, 'IBM Research [Bot]', 19, 'ibm.com/cs/crawler', ''),
(18, 1, 'ICCrawler - ICjobs', 20, 'ICCrawler - ICjobs', ''),
(19, 1, 'ichiro [Crawler]', 21, 'ichiro/2', ''),
(20, 1, 'Majestic-12 [Bot]', 22, 'MJ12bot/', ''),
(21, 1, 'Metager [Bot]', 23, 'MetagerBot/', ''),
(22, 1, 'MSN NewsBlogs', 24, 'msnbot-NewsBlogs/', ''),
(23, 1, 'MSN [Bot]', 25, 'msnbot/', ''),
(24, 1, 'MSNbot Media', 26, 'msnbot-media/', ''),
(25, 1, 'NG-Search [Bot]', 27, 'NG-Search/', ''),
(26, 1, 'Nutch [Bot]', 28, 'http://lucene.apache.org/nutch/', ''),
(27, 1, 'Nutch/CVS [Bot]', 29, 'NutchCVS/', ''),
(28, 1, 'OmniExplorer [Bot]', 30, 'OmniExplorer_Bot/', ''),
(29, 1, 'Online link [Validator]', 31, 'online link validator', ''),
(30, 1, 'psbot [Picsearch]', 32, 'psbot/0', ''),
(31, 1, 'Seekport [Bot]', 33, 'Seekbot/', ''),
(32, 1, 'Sensis [Crawler]', 34, 'Sensis Web Crawler', ''),
(33, 1, 'SEO Crawler', 35, 'SEO search Crawler/', ''),
(34, 1, 'Seoma [Crawler]', 36, 'Seoma [SEO Crawler]', ''),
(35, 1, 'SEOSearch [Crawler]', 37, 'SEOsearch/', ''),
(36, 1, 'Snappy [Bot]', 38, 'Snappy/1.1 ( http://www.urltrends.com/ )', ''),
(37, 1, 'Steeler [Crawler]', 39, 'http://www.tkl.iis.u-tokyo.ac.jp/~crawler/', ''),
(38, 1, 'Synoo [Bot]', 40, 'SynooBot/', ''),
(39, 1, 'Telekom [Bot]', 41, 'crawleradmin.t-info@telekom.de', ''),
(40, 1, 'TurnitinBot [Bot]', 42, 'TurnitinBot/', ''),
(41, 1, 'Voyager [Bot]', 43, 'voyager/1.0', ''),
(42, 1, 'W3 [Sitesearch]', 44, 'W3 SiteSearch Crawler', ''),
(43, 1, 'W3C [Linkcheck]', 45, 'W3C-checklink/', ''),
(44, 1, 'W3C [Validator]', 46, 'W3C_*Validator', ''),
(45, 1, 'WiseNut [Bot]', 47, 'http://www.WISEnutbot.com', ''),
(46, 1, 'YaCy [Bot]', 48, 'yacybot', ''),
(47, 1, 'Yahoo MMCrawler [Bot]', 49, 'Yahoo-MMCrawler/', ''),
(48, 1, 'Yahoo Slurp [Bot]', 50, 'Yahoo! DE Slurp', ''),
(49, 1, 'Yahoo [Bot]', 51, 'Yahoo! Slurp', ''),
(50, 1, 'YahooSeeker [Bot]', 52, 'YahooSeeker/', '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_config`
--

CREATE TABLE IF NOT EXISTS `phpbb_config` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_dynamic` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`config_name`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_config`
--

INSERT INTO `phpbb_config` (`config_name`, `config_value`, `is_dynamic`) VALUES
('active_sessions', '0', 0),
('allow_attachments', '1', 0),
('allow_autologin', '1', 0),
('allow_avatar_local', '0', 0),
('allow_avatar_remote', '0', 0),
('allow_avatar_upload', '0', 0),
('allow_bbcode', '1', 0),
('allow_birthdays', '1', 0),
('allow_bookmarks', '1', 0),
('allow_emailreuse', '0', 0),
('allow_forum_notify', '1', 0),
('allow_mass_pm', '1', 0),
('allow_name_chars', 'USERNAME_CHARS_ANY', 0),
('allow_namechange', '0', 0),
('allow_nocensors', '0', 0),
('allow_pm_attach', '0', 0),
('allow_post_flash', '1', 0),
('allow_post_links', '1', 0),
('allow_privmsg', '1', 0),
('allow_sig', '1', 0),
('allow_sig_bbcode', '1', 0),
('allow_sig_flash', '0', 0),
('allow_sig_img', '1', 0),
('allow_sig_links', '1', 0),
('allow_sig_pm', '1', 0),
('allow_sig_smilies', '1', 0),
('allow_smilies', '1', 0),
('allow_topic_notify', '1', 0),
('attachment_quota', '52428800', 0),
('auth_bbcode_pm', '1', 0),
('auth_flash_pm', '0', 0),
('auth_img_pm', '1', 0),
('auth_method', 'db', 0),
('auth_smilies_pm', '1', 0),
('avatar_filesize', '6144', 0),
('avatar_gallery_path', 'images/avatars/gallery', 0),
('avatar_max_height', '90', 0),
('avatar_max_width', '90', 0),
('avatar_min_height', '20', 0),
('avatar_min_width', '20', 0),
('avatar_path', 'images/avatars/upload', 0),
('avatar_salt', 'af11a3d2aca847102e7f3d32811c9e36', 0),
('board_contact', 'nhienit600@gmail.com', 0),
('board_disable', '0', 0),
('board_disable_msg', '', 0),
('board_dst', '0', 0),
('board_email', 'nhienit600@gmail.com', 0),
('board_email_form', '0', 0),
('board_email_sig', 'Chân thành cám ơn - Người quản lí', 0),
('board_hide_emails', '1', 0),
('board_timezone', '0', 0),
('browser_check', '1', 0),
('bump_interval', '10', 0),
('bump_type', 'd', 0),
('cache_gc', '7200', 0),
('captcha_gd', '1', 0),
('captcha_gd_foreground_noise', '0', 0),
('captcha_gd_x_grid', '25', 0),
('captcha_gd_y_grid', '25', 0),
('check_attachment_content', '1', 0),
('check_dnsbl', '0', 0),
('chg_passforce', '0', 0),
('cookie_domain', 'localhost', 0),
('cookie_name', 'phpbb3_ajkog', 0),
('cookie_path', '/', 0),
('cookie_secure', '0', 0),
('coppa_enable', '0', 0),
('coppa_fax', '', 0),
('coppa_mail', '', 0),
('database_gc', '604800', 0),
('dbms_version', '5.1.33-community', 0),
('default_dateformat', 'D d M, Y g:i a', 0),
('default_style', '2', 0),
('display_last_edited', '1', 0),
('display_order', '0', 0),
('edit_time', '0', 0),
('email_check_mx', '1', 0),
('email_enable', '1', 0),
('email_function_name', 'mail', 0),
('email_package_size', '50', 0),
('enable_confirm', '1', 0),
('enable_pm_icons', '1', 0),
('enable_post_confirm', '1', 0),
('enable_queue_trigger', '0', 0),
('flood_interval', '15', 0),
('force_server_vars', '0', 0),
('form_token_lifetime', '7200', 0),
('form_token_mintime', '0', 0),
('form_token_sid_guests', '1', 0),
('forward_pm', '1', 0),
('forwarded_for_check', '0', 0),
('full_folder_action', '2', 0),
('fulltext_mysql_max_word_len', '254', 0),
('fulltext_mysql_min_word_len', '4', 0),
('fulltext_native_common_thres', '5', 0),
('fulltext_native_load_upd', '1', 0),
('fulltext_native_max_chars', '14', 0),
('fulltext_native_min_chars', '3', 0),
('gzip_compress', '0', 0),
('hot_threshold', '25', 0),
('icons_path', 'images/icons', 0),
('img_create_thumbnail', '0', 0),
('img_display_inlined', '1', 0),
('img_imagick', '', 0),
('img_link_height', '0', 0),
('img_link_width', '0', 0),
('img_max_height', '0', 0),
('img_max_thumb_width', '400', 0),
('img_max_width', '0', 0),
('img_min_thumb_filesize', '12000', 0),
('ip_check', '3', 0),
('jab_enable', '0', 0),
('jab_host', '', 0),
('jab_password', '', 0),
('jab_package_size', '20', 0),
('jab_port', '5222', 0),
('jab_use_ssl', '0', 0),
('jab_username', '', 0),
('ldap_base_dn', '', 0),
('ldap_email', '', 0),
('ldap_password', '', 0),
('ldap_port', '', 0),
('ldap_server', '', 0),
('ldap_uid', '', 0),
('ldap_user', '', 0),
('ldap_user_filter', '', 0),
('limit_load', '0', 0),
('limit_search_load', '0', 0),
('load_anon_lastread', '0', 0),
('load_birthdays', '1', 0),
('load_cpf_memberlist', '0', 0),
('load_cpf_viewprofile', '1', 0),
('load_cpf_viewtopic', '0', 0),
('load_db_lastread', '1', 0),
('load_db_track', '1', 0),
('load_jumpbox', '1', 0),
('load_moderators', '1', 0),
('load_online', '1', 0),
('load_online_guests', '1', 0),
('load_online_time', '5', 0),
('load_onlinetrack', '1', 0),
('load_search', '1', 0),
('load_tplcompile', '0', 0),
('load_user_activity', '1', 0),
('max_attachments', '3', 0),
('max_attachments_pm', '1', 0),
('max_autologin_time', '0', 0),
('max_filesize', '262144', 0),
('max_filesize_pm', '262144', 0),
('max_login_attempts', '3', 0),
('max_name_chars', '20', 0),
('max_pass_chars', '30', 0),
('max_poll_options', '10', 0),
('max_post_chars', '60000', 0),
('max_post_font_size', '200', 0),
('max_post_img_height', '0', 0),
('max_post_img_width', '0', 0),
('max_post_smilies', '0', 0),
('max_post_urls', '0', 0),
('max_quote_depth', '3', 0),
('max_reg_attempts', '5', 0),
('max_sig_chars', '255', 0),
('max_sig_font_size', '200', 0),
('max_sig_img_height', '0', 0),
('max_sig_img_width', '0', 0),
('max_sig_smilies', '0', 0),
('max_sig_urls', '5', 0),
('min_name_chars', '3', 0),
('min_pass_chars', '6', 0),
('min_search_author_chars', '3', 0),
('mime_triggers', 'body|head|html|img|plaintext|a href|pre|script|table|title', 0),
('override_user_style', '0', 0),
('pass_complex', 'PASS_TYPE_ANY', 0),
('pm_edit_time', '0', 0),
('pm_max_boxes', '4', 0),
('pm_max_msgs', '50', 0),
('pm_max_recipients', '0', 0),
('posts_per_page', '10', 0),
('print_pm', '1', 0),
('queue_interval', '600', 0),
('queue_trigger_posts', '3', 0),
('ranks_path', 'images/ranks', 0),
('require_activation', '0', 0),
('referer_validation', '1', 0),
('script_path', '/banlaptop/forum', 0),
('search_block_size', '250', 0),
('search_gc', '7200', 0),
('search_indexing_state', '', 0),
('search_interval', '0', 0),
('search_anonymous_interval', '0', 0),
('search_type', 'fulltext_native', 0),
('search_store_results', '1800', 0),
('secure_allow_deny', '1', 0),
('secure_allow_empty_referer', '1', 0),
('secure_downloads', '0', 0),
('server_name', 'localhost', 0),
('server_port', '80', 0),
('server_protocol', 'http://', 0),
('session_gc', '3600', 0),
('session_length', '3600', 0),
('site_desc', 'Giới thiệu về website của bạn', 0),
('sitename', 'yourdomain.com', 0),
('smilies_path', 'images/smilies', 0),
('smtp_auth_method', 'PLAIN', 0),
('smtp_delivery', '0', 0),
('smtp_host', '', 0),
('smtp_password', '', 0),
('smtp_port', '25', 0),
('smtp_username', '', 0),
('topics_per_page', '25', 0),
('tpl_allow_php', '0', 0),
('upload_icons_path', 'images/upload_icons', 0),
('upload_path', 'files', 0),
('version', '3.0.4', 0),
('warnings_expire_days', '90', 0),
('warnings_gc', '14400', 0),
('cache_last_gc', '1355800486', 1),
('cron_lock', '0', 1),
('database_last_gc', '1355800849', 1),
('last_queue_run', '0', 1),
('newest_user_colour', 'AA0000', 1),
('newest_user_id', '2', 1),
('newest_username', 'admin', 1),
('num_files', '0', 1),
('num_posts', '2', 1),
('num_topics', '2', 1),
('num_users', '1', 1),
('rand_seed', '8a6826161585196e399bd5cb307edcc0', 1),
('rand_seed_last_update', '1355800883', 1),
('record_online_date', '1355800486', 1),
('record_online_users', '2', 1),
('search_last_gc', '1355800854', 1),
('session_last_gc', '1355800857', 1),
('upload_dir_size', '0', 1),
('warnings_last_gc', '1355800844', 1),
('board_startdate', '1355800447', 0),
('default_lang', 'vi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_confirm`
--

CREATE TABLE IF NOT EXISTS `phpbb_confirm` (
  `confirm_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `confirm_type` tinyint(3) NOT NULL DEFAULT '0',
  `code` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `seed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`,`confirm_id`),
  KEY `confirm_type` (`confirm_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_confirm`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_disallow`
--

CREATE TABLE IF NOT EXISTS `phpbb_disallow` (
  `disallow_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `disallow_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`disallow_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phpbb_disallow`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_drafts`
--

CREATE TABLE IF NOT EXISTS `phpbb_drafts` (
  `draft_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `save_time` int(11) unsigned NOT NULL DEFAULT '0',
  `draft_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `draft_message` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`draft_id`),
  KEY `save_time` (`save_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phpbb_drafts`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_extensions`
--

CREATE TABLE IF NOT EXISTS `phpbb_extensions` (
  `extension_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=67 ;

--
-- Dumping data for table `phpbb_extensions`
--

INSERT INTO `phpbb_extensions` (`extension_id`, `group_id`, `extension`) VALUES
(1, 1, 'gif'),
(2, 1, 'png'),
(3, 1, 'jpeg'),
(4, 1, 'jpg'),
(5, 1, 'tif'),
(6, 1, 'tiff'),
(7, 1, 'tga'),
(8, 2, 'gtar'),
(9, 2, 'gz'),
(10, 2, 'tar'),
(11, 2, 'zip'),
(12, 2, 'rar'),
(13, 2, 'ace'),
(14, 2, 'torrent'),
(15, 2, 'tgz'),
(16, 2, 'bz2'),
(17, 2, '7z'),
(18, 3, 'txt'),
(19, 3, 'c'),
(20, 3, 'h'),
(21, 3, 'cpp'),
(22, 3, 'hpp'),
(23, 3, 'diz'),
(24, 3, 'csv'),
(25, 3, 'ini'),
(26, 3, 'log'),
(27, 3, 'js'),
(28, 3, 'xml'),
(29, 4, 'xls'),
(30, 4, 'xlsx'),
(31, 4, 'xlsm'),
(32, 4, 'xlsb'),
(33, 4, 'doc'),
(34, 4, 'docx'),
(35, 4, 'docm'),
(36, 4, 'dot'),
(37, 4, 'dotx'),
(38, 4, 'dotm'),
(39, 4, 'pdf'),
(40, 4, 'ai'),
(41, 4, 'ps'),
(42, 4, 'ppt'),
(43, 4, 'pptx'),
(44, 4, 'pptm'),
(45, 4, 'odg'),
(46, 4, 'odp'),
(47, 4, 'ods'),
(48, 4, 'odt'),
(49, 4, 'rtf'),
(50, 5, 'rm'),
(51, 5, 'ram'),
(52, 6, 'wma'),
(53, 6, 'wmv'),
(54, 7, 'swf'),
(55, 8, 'mov'),
(56, 8, 'm4v'),
(57, 8, 'm4a'),
(58, 8, 'mp4'),
(59, 8, '3gp'),
(60, 8, '3g2'),
(61, 8, 'qt'),
(62, 9, 'mpeg'),
(63, 9, 'mpg'),
(64, 9, 'mp3'),
(65, 9, 'ogg'),
(66, 9, 'ogm');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_extension_groups`
--

CREATE TABLE IF NOT EXISTS `phpbb_extension_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cat_id` tinyint(2) NOT NULL DEFAULT '0',
  `allow_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `download_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `upload_icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `max_filesize` int(20) unsigned NOT NULL DEFAULT '0',
  `allowed_forums` text COLLATE utf8_bin NOT NULL,
  `allow_in_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

--
-- Dumping data for table `phpbb_extension_groups`
--

INSERT INTO `phpbb_extension_groups` (`group_id`, `group_name`, `cat_id`, `allow_group`, `download_mode`, `upload_icon`, `max_filesize`, `allowed_forums`, `allow_in_pm`) VALUES
(1, 'Tập tin hình ảnh', 1, 1, 1, '', 0, '', 0),
(2, 'Tập tin lưu trữ', 0, 1, 1, '', 0, '', 0),
(3, 'Tập tin văn bản thuần túy', 0, 0, 1, '', 0, '', 0),
(4, 'Tập tin văn bản', 0, 0, 1, '', 0, '', 0),
(5, 'Tập tin Real Media', 3, 0, 1, '', 0, '', 0),
(6, 'Tập tin Windows Media', 2, 0, 1, '', 0, '', 0),
(7, 'Tập tin Flash', 5, 0, 1, '', 0, '', 0),
(8, 'Tập tin QuickTime Media', 6, 0, 1, '', 0, '', 0),
(9, 'Tập tin cho tải về', 0, 0, 1, '', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums`
--

CREATE TABLE IF NOT EXISTS `phpbb_forums` (
  `forum_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_parents` mediumtext COLLATE utf8_bin NOT NULL,
  `forum_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc` text COLLATE utf8_bin NOT NULL,
  `forum_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc_options` int(11) unsigned NOT NULL DEFAULT '7',
  `forum_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_password` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_style` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules` text COLLATE utf8_bin NOT NULL,
  `forum_rules_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_options` int(11) unsigned NOT NULL DEFAULT '7',
  `forum_rules_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_topics_per_page` tinyint(4) NOT NULL DEFAULT '0',
  `forum_type` tinyint(4) NOT NULL DEFAULT '0',
  `forum_status` tinyint(4) NOT NULL DEFAULT '0',
  `forum_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics_real` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `forum_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_flags` tinyint(4) NOT NULL DEFAULT '32',
  `display_subforum_list` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_indexing` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_icons` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_prune` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `prune_next` int(11) unsigned NOT NULL DEFAULT '0',
  `prune_days` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prune_viewed` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prune_freq` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`forum_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `forum_lastpost_id` (`forum_last_post_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Dumping data for table `phpbb_forums`
--

INSERT INTO `phpbb_forums` (`forum_id`, `parent_id`, `left_id`, `right_id`, `forum_parents`, `forum_name`, `forum_desc`, `forum_desc_bitfield`, `forum_desc_options`, `forum_desc_uid`, `forum_link`, `forum_password`, `forum_style`, `forum_image`, `forum_rules`, `forum_rules_link`, `forum_rules_bitfield`, `forum_rules_options`, `forum_rules_uid`, `forum_topics_per_page`, `forum_type`, `forum_status`, `forum_posts`, `forum_topics`, `forum_topics_real`, `forum_last_post_id`, `forum_last_poster_id`, `forum_last_post_subject`, `forum_last_post_time`, `forum_last_poster_name`, `forum_last_poster_colour`, `forum_flags`, `display_subforum_list`, `display_on_index`, `enable_indexing`, `enable_icons`, `enable_prune`, `prune_next`, `prune_days`, `prune_viewed`, `prune_freq`) VALUES
(1, 0, 1, 4, '', 'Nhóm chuyên mục nháp', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 0, 0, 1, 1, 1, 1, 2, '', 1355800447, 'admin', 'AA0000', 32, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(2, 1, 2, 3, '', 'Chuyên mục nháp', 0x4ee1bb99692064756e67206769e1bb9b6920746869e1bb87752063e1bba7612063687579c3aa6e206de1bba563206e68c3a1702e, '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 1, 1, 1, 1, 2, 'Chào mừng bạn đến với phpBB', 1355800447, 'admin', 'AA0000', 32, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(3, 0, 5, 10, '', 'Tin tức', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 0, 0, 0, 0, 0, '', 0, '', '', 32, 1, 0, 1, 0, 0, 0, 7, 7, 1),
(4, 3, 6, 7, 0x613a313a7b693a333b613a323a7b693a303b733a393a2254696e2074e1bba963223b693a313b693a313b7d7d, 'HP', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 0, 0, 0, 0, 0, '', 0, '', '', 32, 1, 0, 1, 0, 0, 0, 7, 7, 1),
(5, 3, 8, 9, 0x613a313a7b693a333b613a323a7b693a303b733a393a2254696e2074e1bba963223b693a313b693a313b7d7d, 'Acer', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 1, 1, 1, 2, 2, 'Acer giảm giá', 1355800883, 'admin', 'AA0000', 32, 1, 0, 1, 0, 0, 0, 7, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums_access`
--

CREATE TABLE IF NOT EXISTS `phpbb_forums_access` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`forum_id`,`user_id`,`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_forums_access`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums_track`
--

CREATE TABLE IF NOT EXISTS `phpbb_forums_track` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mark_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_forums_track`
--

INSERT INTO `phpbb_forums_track` (`user_id`, `forum_id`, `mark_time`) VALUES
(2, 5, 1355800883),
(2, 0, 1355800883);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums_watch`
--

CREATE TABLE IF NOT EXISTS `phpbb_forums_watch` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `forum_id` (`forum_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_forums_watch`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_groups`
--

CREATE TABLE IF NOT EXISTS `phpbb_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_type` tinyint(4) NOT NULL DEFAULT '1',
  `group_founder_manage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc` text COLLATE utf8_bin NOT NULL,
  `group_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc_options` int(11) unsigned NOT NULL DEFAULT '7',
  `group_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_type` tinyint(2) NOT NULL DEFAULT '0',
  `group_avatar_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `group_avatar_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `group_rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_sig_chars` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_receive_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_message_limit` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_max_recipients` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_legend` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`group_id`),
  KEY `group_legend_name` (`group_legend`,`group_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Dumping data for table `phpbb_groups`
--

INSERT INTO `phpbb_groups` (`group_id`, `group_type`, `group_founder_manage`, `group_name`, `group_desc`, `group_desc_bitfield`, `group_desc_options`, `group_desc_uid`, `group_display`, `group_avatar`, `group_avatar_type`, `group_avatar_width`, `group_avatar_height`, `group_rank`, `group_colour`, `group_sig_chars`, `group_receive_pm`, `group_message_limit`, `group_max_recipients`, `group_legend`) VALUES
(1, 3, 0, 'GUESTS', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0),
(2, 3, 0, 'REGISTERED', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0),
(3, 3, 0, 'REGISTERED_COPPA', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0),
(4, 3, 0, 'GLOBAL_MODERATORS', '', '', 7, '', 0, '', 0, 0, 0, 0, '00AA00', 0, 0, 0, 0, 1),
(5, 3, 1, 'ADMINISTRATORS', '', '', 7, '', 0, '', 0, 0, 0, 0, 'AA0000', 0, 0, 0, 0, 1),
(6, 3, 0, 'BOTS', '', '', 7, '', 0, '', 0, 0, 0, 0, '9E8DA7', 0, 0, 0, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_icons`
--

CREATE TABLE IF NOT EXISTS `phpbb_icons` (
  `icons_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `icons_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_width` tinyint(4) NOT NULL DEFAULT '0',
  `icons_height` tinyint(4) NOT NULL DEFAULT '0',
  `icons_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`icons_id`),
  KEY `display_on_posting` (`display_on_posting`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

--
-- Dumping data for table `phpbb_icons`
--

INSERT INTO `phpbb_icons` (`icons_id`, `icons_url`, `icons_width`, `icons_height`, `icons_order`, `display_on_posting`) VALUES
(1, 'misc/fire.gif', 16, 16, 1, 1),
(2, 'smile/redface.gif', 16, 16, 9, 1),
(3, 'smile/mrgreen.gif', 16, 16, 10, 1),
(4, 'misc/heart.gif', 16, 16, 4, 1),
(5, 'misc/star.gif', 16, 16, 2, 1),
(6, 'misc/radioactive.gif', 16, 16, 3, 1),
(7, 'misc/thinking.gif', 16, 16, 5, 1),
(8, 'smile/info.gif', 16, 16, 8, 1),
(9, 'smile/question.gif', 16, 16, 6, 1),
(10, 'smile/alert.gif', 16, 16, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_lang`
--

CREATE TABLE IF NOT EXISTS `phpbb_lang` (
  `lang_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `lang_iso` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_dir` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_english_name` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_local_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_author` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`lang_id`),
  KEY `lang_iso` (`lang_iso`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `phpbb_lang`
--

INSERT INTO `phpbb_lang` (`lang_id`, `lang_iso`, `lang_dir`, `lang_english_name`, `lang_local_name`, `lang_author`) VALUES
(1, 'en', 'en', 'British English', 'British English', 'phpBB Group'),
(2, 'vi', 'vi', 'Vietnamese', 'Vietnamese', 'nedka (Nguyen Dang Khoa)');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_log`
--

CREATE TABLE IF NOT EXISTS `phpbb_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reportee_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0',
  `log_operation` text COLLATE utf8_bin NOT NULL,
  `log_data` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_type` (`log_type`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `reportee_id` (`reportee_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=14 ;

--
-- Dumping data for table `phpbb_log`
--

INSERT INTO `phpbb_log` (`log_id`, `log_type`, `user_id`, `forum_id`, `topic_id`, `reportee_id`, `log_ip`, `log_time`, `log_operation`, `log_data`) VALUES
(1, 2, 2, 0, 0, 0, '127.0.0.1', 1355800451, 0x4c4f475f4552524f525f454d41494c, 0x613a313a7b693a303b733a3432343a223c7374726f6e673e454d41494c2f5048502f6d61696c28293c2f7374726f6e673e3c6272202f3e3c656d3e2f62616e6c6170746f702f666f72756d2f696e7374616c6c2f696e6465782e7068703c2f656d3e3c6272202f3e3c6272202f3e3c623e5b70687042422044656275675d20504850204e6f746963653c2f623e3a20696e2066696c65203c623e2f696e636c756465732f66756e6374696f6e735f6d657373656e6765722e7068703c2f623e206f6e206c696e65203c623e3431363c2f623e3a203c623e6d61696c2829205b3c6120687265663d2766756e6374696f6e2e6d61696c273e66756e6374696f6e2e6d61696c3c2f613e5d3a204661696c656420746f20636f6e6e65637420746f206d61696c736572766572206174202671756f743b6c6f63616c686f73742671756f743b20706f72742032352c2076657269667920796f7572202671756f743b534d54502671756f743b20616e64202671756f743b736d74705f706f72742671756f743b2073657474696e6720696e207068702e696e69206f722075736520696e695f73657428293c2f623e3c6272202f3e0a3c6272202f3e223b7d),
(2, 0, 2, 0, 0, 0, '127.0.0.1', 1355800451, 0x4c4f475f494e5354414c4c5f494e5354414c4c4544, 0x613a313a7b693a303b733a353a22332e302e34223b7d),
(3, 0, 2, 0, 0, 0, '127.0.0.1', 1355800650, 0x4c4f475f464f52554d5f414444, 0x613a313a7b693a303b733a393a2254696e2074e1bba963223b7d),
(4, 0, 2, 0, 0, 0, '127.0.0.1', 1355800758, 0x4c4f475f41434c5f4144445f464f52554d5f4c4f43414c5f465f, 0x613a323a7b693a303b733a393a2254696e2074e1bba963223b693a313b733a3231313a223c7370616e20636c6173733d22736570223e4b68c3a163683c2f7370616e3e2c203c7370616e20636c6173733d22736570223e5468c3a06e68207669c3aa6e3c2f7370616e3e2c203c7370616e20636c6173733d22736570223ec49069e1bb81752068c3a06e68207669c3aa6e206368c3ad6e683c2f7370616e3e2c203c7370616e20636c6173733d22736570223e5175e1baa36e207472e1bb8b207669c3aa6e3c2f7370616e3e2c203c7370616e20636c6173733d22736570223e4dc3a1792074c3ac6d206b69e1babf6d3c2f7370616e3e223b7d),
(5, 0, 2, 0, 0, 0, '127.0.0.1', 1355800796, 0x4c4f475f464f52554d5f414444, 0x613a313a7b693a303b733a323a224850223b7d),
(6, 0, 2, 0, 0, 0, '127.0.0.1', 1355800841, 0x4c4f475f464f52554d5f414444, 0x613a313a7b693a303b733a343a2241636572223b7d),
(7, 0, 2, 0, 0, 0, '127.0.0.1', 1355801385, 0x4c4f475f54454d504c4154455f4144445f4653, 0x613a313a7b693a303b733a393a22416e696d655a6f6e65223b7d),
(8, 0, 2, 0, 0, 0, '127.0.0.1', 1355801385, 0x4c4f475f5448454d455f4144445f4653, 0x613a313a7b693a303b733a393a22416e696d655a6f6e65223b7d),
(9, 0, 2, 0, 0, 0, '127.0.0.1', 1355801385, 0x4c4f475f494d4147455345545f4144445f4653, 0x613a313a7b693a303b733a393a22416e696d655a6f6e65223b7d),
(10, 0, 2, 0, 0, 0, '127.0.0.1', 1355801385, 0x4c4f475f5354594c455f414444, 0x613a313a7b693a303b733a393a22416e696d655a6f6e65223b7d),
(11, 0, 2, 0, 0, 0, '127.0.0.1', 1355801386, 0x4c4f475f494d4147455345545f4c414e475f4d495353494e47, 0x613a323a7b693a303b733a393a22416e696d655a6f6e65223b693a313b733a323a227669223b7d),
(12, 0, 2, 0, 0, 0, '127.0.0.1', 1355801599, 0x4c4f475f494d4147455345545f4c414e475f4d495353494e47, 0x613a323a7b693a303b733a393a22416e696d655a6f6e65223b693a313b733a323a227669223b7d),
(13, 0, 2, 0, 0, 0, '127.0.0.1', 1355801615, 0x4c4f475f494d4147455345545f4c414e475f4d495353494e47, 0x613a323a7b693a303b733a393a22416e696d655a6f6e65223b693a313b733a323a227669223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_moderator_cache`
--

CREATE TABLE IF NOT EXISTS `phpbb_moderator_cache` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `disp_idx` (`display_on_index`),
  KEY `forum_id` (`forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_moderator_cache`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_modules`
--

CREATE TABLE IF NOT EXISTS `phpbb_modules` (
  `module_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `module_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `module_display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `module_basename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_class` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module_langname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_mode` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_auth` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`module_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `module_enabled` (`module_enabled`),
  KEY `class_left_id` (`module_class`,`left_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=190 ;

--
-- Dumping data for table `phpbb_modules`
--

INSERT INTO `phpbb_modules` (`module_id`, `module_enabled`, `module_display`, `module_basename`, `module_class`, `parent_id`, `left_id`, `right_id`, `module_langname`, `module_mode`, `module_auth`) VALUES
(1, 1, 1, '', 'acp', 0, 1, 60, 'ACP_CAT_GENERAL', '', ''),
(2, 1, 1, '', 'acp', 1, 4, 17, 'ACP_QUICK_ACCESS', '', ''),
(3, 1, 1, '', 'acp', 1, 18, 39, 'ACP_BOARD_CONFIGURATION', '', ''),
(4, 1, 1, '', 'acp', 1, 40, 47, 'ACP_CLIENT_COMMUNICATION', '', ''),
(5, 1, 1, '', 'acp', 1, 48, 59, 'ACP_SERVER_CONFIGURATION', '', ''),
(6, 1, 1, '', 'acp', 0, 61, 78, 'ACP_CAT_FORUMS', '', ''),
(7, 1, 1, '', 'acp', 6, 62, 67, 'ACP_MANAGE_FORUMS', '', ''),
(8, 1, 1, '', 'acp', 6, 68, 77, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
(9, 1, 1, '', 'acp', 0, 79, 102, 'ACP_CAT_POSTING', '', ''),
(10, 1, 1, '', 'acp', 9, 80, 91, 'ACP_MESSAGES', '', ''),
(11, 1, 1, '', 'acp', 9, 92, 101, 'ACP_ATTACHMENTS', '', ''),
(12, 1, 1, '', 'acp', 0, 103, 156, 'ACP_CAT_USERGROUP', '', ''),
(13, 1, 1, '', 'acp', 12, 104, 135, 'ACP_CAT_USERS', '', ''),
(14, 1, 1, '', 'acp', 12, 136, 143, 'ACP_GROUPS', '', ''),
(15, 1, 1, '', 'acp', 12, 144, 155, 'ACP_USER_SECURITY', '', ''),
(16, 1, 1, '', 'acp', 0, 157, 204, 'ACP_CAT_PERMISSIONS', '', ''),
(17, 1, 1, '', 'acp', 16, 160, 169, 'ACP_GLOBAL_PERMISSIONS', '', ''),
(18, 1, 1, '', 'acp', 16, 170, 179, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
(19, 1, 1, '', 'acp', 16, 180, 189, 'ACP_PERMISSION_ROLES', '', ''),
(20, 1, 1, '', 'acp', 16, 190, 203, 'ACP_PERMISSION_MASKS', '', ''),
(21, 1, 1, '', 'acp', 0, 205, 218, 'ACP_CAT_STYLES', '', ''),
(22, 1, 1, '', 'acp', 21, 206, 209, 'ACP_STYLE_MANAGEMENT', '', ''),
(23, 1, 1, '', 'acp', 21, 210, 217, 'ACP_STYLE_COMPONENTS', '', ''),
(24, 1, 1, '', 'acp', 0, 219, 238, 'ACP_CAT_MAINTENANCE', '', ''),
(25, 1, 1, '', 'acp', 24, 220, 229, 'ACP_FORUM_LOGS', '', ''),
(26, 1, 1, '', 'acp', 24, 230, 237, 'ACP_CAT_DATABASE', '', ''),
(27, 1, 1, '', 'acp', 0, 239, 264, 'ACP_CAT_SYSTEM', '', ''),
(28, 1, 1, '', 'acp', 27, 240, 243, 'ACP_AUTOMATION', '', ''),
(29, 1, 1, '', 'acp', 27, 244, 255, 'ACP_GENERAL_TASKS', '', ''),
(30, 1, 1, '', 'acp', 27, 256, 263, 'ACP_MODULE_MANAGEMENT', '', ''),
(31, 1, 1, '', 'acp', 0, 265, 266, 'ACP_CAT_DOT_MODS', '', ''),
(32, 1, 1, 'attachments', 'acp', 3, 19, 20, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
(33, 1, 1, 'attachments', 'acp', 11, 93, 94, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
(34, 1, 1, 'attachments', 'acp', 11, 95, 96, 'ACP_MANAGE_EXTENSIONS', 'extensions', 'acl_a_attach'),
(35, 1, 1, 'attachments', 'acp', 11, 97, 98, 'ACP_EXTENSION_GROUPS', 'ext_groups', 'acl_a_attach'),
(36, 1, 1, 'attachments', 'acp', 11, 99, 100, 'ACP_ORPHAN_ATTACHMENTS', 'orphan', 'acl_a_attach'),
(37, 1, 1, 'ban', 'acp', 15, 145, 146, 'ACP_BAN_EMAILS', 'email', 'acl_a_ban'),
(38, 1, 1, 'ban', 'acp', 15, 147, 148, 'ACP_BAN_IPS', 'ip', 'acl_a_ban'),
(39, 1, 1, 'ban', 'acp', 15, 149, 150, 'ACP_BAN_USERNAMES', 'user', 'acl_a_ban'),
(40, 1, 1, 'bbcodes', 'acp', 10, 81, 82, 'ACP_BBCODES', 'bbcodes', 'acl_a_bbcode'),
(41, 1, 1, 'board', 'acp', 3, 21, 22, 'ACP_BOARD_SETTINGS', 'settings', 'acl_a_board'),
(42, 1, 1, 'board', 'acp', 3, 23, 24, 'ACP_BOARD_FEATURES', 'features', 'acl_a_board'),
(43, 1, 1, 'board', 'acp', 3, 25, 26, 'ACP_AVATAR_SETTINGS', 'avatar', 'acl_a_board'),
(44, 1, 1, 'board', 'acp', 3, 27, 28, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
(45, 1, 1, 'board', 'acp', 10, 83, 84, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
(46, 1, 1, 'board', 'acp', 3, 29, 30, 'ACP_POST_SETTINGS', 'post', 'acl_a_board'),
(47, 1, 1, 'board', 'acp', 3, 31, 32, 'ACP_SIGNATURE_SETTINGS', 'signature', 'acl_a_board'),
(48, 1, 1, 'board', 'acp', 3, 33, 34, 'ACP_REGISTER_SETTINGS', 'registration', 'acl_a_board'),
(49, 1, 1, 'board', 'acp', 4, 41, 42, 'ACP_AUTH_SETTINGS', 'auth', 'acl_a_server'),
(50, 1, 1, 'board', 'acp', 4, 43, 44, 'ACP_EMAIL_SETTINGS', 'email', 'acl_a_server'),
(51, 1, 1, 'board', 'acp', 5, 49, 50, 'ACP_COOKIE_SETTINGS', 'cookie', 'acl_a_server'),
(52, 1, 1, 'board', 'acp', 5, 51, 52, 'ACP_SERVER_SETTINGS', 'server', 'acl_a_server'),
(53, 1, 1, 'board', 'acp', 5, 53, 54, 'ACP_SECURITY_SETTINGS', 'security', 'acl_a_server'),
(54, 1, 1, 'board', 'acp', 5, 55, 56, 'ACP_LOAD_SETTINGS', 'load', 'acl_a_server'),
(55, 1, 1, 'bots', 'acp', 29, 245, 246, 'ACP_BOTS', 'bots', 'acl_a_bots'),
(56, 1, 1, 'captcha', 'acp', 3, 35, 36, 'ACP_VC_SETTINGS', 'visual', 'acl_a_board'),
(57, 1, 0, 'captcha', 'acp', 3, 37, 38, 'ACP_VC_CAPTCHA_DISPLAY', 'img', 'acl_a_board'),
(58, 1, 1, 'database', 'acp', 26, 231, 232, 'ACP_BACKUP', 'backup', 'acl_a_backup'),
(59, 1, 1, 'database', 'acp', 26, 233, 234, 'ACP_RESTORE', 'restore', 'acl_a_backup'),
(60, 1, 1, 'disallow', 'acp', 15, 151, 152, 'ACP_DISALLOW_USERNAMES', 'usernames', 'acl_a_names'),
(61, 1, 1, 'email', 'acp', 29, 247, 248, 'ACP_MASS_EMAIL', 'email', 'acl_a_email && cfg_email_enable'),
(62, 1, 1, 'forums', 'acp', 7, 63, 64, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
(63, 1, 1, 'groups', 'acp', 14, 137, 138, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
(64, 1, 1, 'icons', 'acp', 10, 85, 86, 'ACP_ICONS', 'icons', 'acl_a_icons'),
(65, 1, 1, 'icons', 'acp', 10, 87, 88, 'ACP_SMILIES', 'smilies', 'acl_a_icons'),
(66, 1, 1, 'inactive', 'acp', 13, 107, 108, 'ACP_INACTIVE_USERS', 'list', 'acl_a_user'),
(67, 1, 1, 'jabber', 'acp', 4, 45, 46, 'ACP_JABBER_SETTINGS', 'settings', 'acl_a_jabber'),
(68, 1, 1, 'language', 'acp', 29, 249, 250, 'ACP_LANGUAGE_PACKS', 'lang_packs', 'acl_a_language'),
(69, 1, 1, 'logs', 'acp', 25, 221, 222, 'ACP_ADMIN_LOGS', 'admin', 'acl_a_viewlogs'),
(70, 1, 1, 'logs', 'acp', 25, 223, 224, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
(71, 1, 1, 'logs', 'acp', 25, 225, 226, 'ACP_USERS_LOGS', 'users', 'acl_a_viewlogs'),
(72, 1, 1, 'logs', 'acp', 25, 227, 228, 'ACP_CRITICAL_LOGS', 'critical', 'acl_a_viewlogs'),
(73, 1, 1, 'main', 'acp', 1, 2, 3, 'ACP_INDEX', 'main', ''),
(74, 1, 1, 'modules', 'acp', 30, 257, 258, 'ACP', 'acp', 'acl_a_modules'),
(75, 1, 1, 'modules', 'acp', 30, 259, 260, 'UCP', 'ucp', 'acl_a_modules'),
(76, 1, 1, 'modules', 'acp', 30, 261, 262, 'MCP', 'mcp', 'acl_a_modules'),
(77, 1, 1, 'permission_roles', 'acp', 19, 181, 182, 'ACP_ADMIN_ROLES', 'admin_roles', 'acl_a_roles && acl_a_aauth'),
(78, 1, 1, 'permission_roles', 'acp', 19, 183, 184, 'ACP_USER_ROLES', 'user_roles', 'acl_a_roles && acl_a_uauth'),
(79, 1, 1, 'permission_roles', 'acp', 19, 185, 186, 'ACP_MOD_ROLES', 'mod_roles', 'acl_a_roles && acl_a_mauth'),
(80, 1, 1, 'permission_roles', 'acp', 19, 187, 188, 'ACP_FORUM_ROLES', 'forum_roles', 'acl_a_roles && acl_a_fauth'),
(81, 1, 1, 'permissions', 'acp', 16, 158, 159, 'ACP_PERMISSIONS', 'intro', 'acl_a_authusers || acl_a_authgroups || acl_a_viewauth'),
(82, 1, 0, 'permissions', 'acp', 20, 191, 192, 'ACP_PERMISSION_TRACE', 'trace', 'acl_a_viewauth'),
(83, 1, 1, 'permissions', 'acp', 18, 171, 172, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(84, 1, 1, 'permissions', 'acp', 18, 173, 174, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(85, 1, 1, 'permissions', 'acp', 17, 161, 162, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(86, 1, 1, 'permissions', 'acp', 13, 109, 110, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(87, 1, 1, 'permissions', 'acp', 18, 175, 176, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(88, 1, 1, 'permissions', 'acp', 13, 111, 112, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(89, 1, 1, 'permissions', 'acp', 17, 163, 164, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(90, 1, 1, 'permissions', 'acp', 14, 139, 140, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(91, 1, 1, 'permissions', 'acp', 18, 177, 178, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(92, 1, 1, 'permissions', 'acp', 14, 141, 142, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(93, 1, 1, 'permissions', 'acp', 17, 165, 166, 'ACP_ADMINISTRATORS', 'setting_admin_global', 'acl_a_aauth && (acl_a_authusers || acl_a_authgroups)'),
(94, 1, 1, 'permissions', 'acp', 17, 167, 168, 'ACP_GLOBAL_MODERATORS', 'setting_mod_global', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(95, 1, 1, 'permissions', 'acp', 20, 193, 194, 'ACP_VIEW_ADMIN_PERMISSIONS', 'view_admin_global', 'acl_a_viewauth'),
(96, 1, 1, 'permissions', 'acp', 20, 195, 196, 'ACP_VIEW_USER_PERMISSIONS', 'view_user_global', 'acl_a_viewauth'),
(97, 1, 1, 'permissions', 'acp', 20, 197, 198, 'ACP_VIEW_GLOBAL_MOD_PERMISSIONS', 'view_mod_global', 'acl_a_viewauth'),
(98, 1, 1, 'permissions', 'acp', 20, 199, 200, 'ACP_VIEW_FORUM_MOD_PERMISSIONS', 'view_mod_local', 'acl_a_viewauth'),
(99, 1, 1, 'permissions', 'acp', 20, 201, 202, 'ACP_VIEW_FORUM_PERMISSIONS', 'view_forum_local', 'acl_a_viewauth'),
(100, 1, 1, 'php_info', 'acp', 29, 251, 252, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
(101, 1, 1, 'profile', 'acp', 13, 113, 114, 'ACP_CUSTOM_PROFILE_FIELDS', 'profile', 'acl_a_profile'),
(102, 1, 1, 'prune', 'acp', 7, 65, 66, 'ACP_PRUNE_FORUMS', 'forums', 'acl_a_prune'),
(103, 1, 1, 'prune', 'acp', 15, 153, 154, 'ACP_PRUNE_USERS', 'users', 'acl_a_userdel'),
(104, 1, 1, 'ranks', 'acp', 13, 115, 116, 'ACP_MANAGE_RANKS', 'ranks', 'acl_a_ranks'),
(105, 1, 1, 'reasons', 'acp', 29, 253, 254, 'ACP_MANAGE_REASONS', 'main', 'acl_a_reasons'),
(106, 1, 1, 'search', 'acp', 5, 57, 58, 'ACP_SEARCH_SETTINGS', 'settings', 'acl_a_search'),
(107, 1, 1, 'search', 'acp', 26, 235, 236, 'ACP_SEARCH_INDEX', 'index', 'acl_a_search'),
(108, 1, 1, 'styles', 'acp', 22, 207, 208, 'ACP_STYLES', 'style', 'acl_a_styles'),
(109, 1, 1, 'styles', 'acp', 23, 211, 212, 'ACP_TEMPLATES', 'template', 'acl_a_styles'),
(110, 1, 1, 'styles', 'acp', 23, 213, 214, 'ACP_THEMES', 'theme', 'acl_a_styles'),
(111, 1, 1, 'styles', 'acp', 23, 215, 216, 'ACP_IMAGESETS', 'imageset', 'acl_a_styles'),
(112, 1, 1, 'update', 'acp', 28, 241, 242, 'ACP_VERSION_CHECK', 'version_check', 'acl_a_board'),
(113, 1, 1, 'users', 'acp', 13, 105, 106, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
(114, 1, 0, 'users', 'acp', 13, 117, 118, 'ACP_USER_FEEDBACK', 'feedback', 'acl_a_user'),
(115, 1, 0, 'users', 'acp', 13, 119, 120, 'ACP_USER_PROFILE', 'profile', 'acl_a_user'),
(116, 1, 0, 'users', 'acp', 13, 121, 122, 'ACP_USER_PREFS', 'prefs', 'acl_a_user'),
(117, 1, 0, 'users', 'acp', 13, 123, 124, 'ACP_USER_AVATAR', 'avatar', 'acl_a_user'),
(118, 1, 0, 'users', 'acp', 13, 125, 126, 'ACP_USER_RANK', 'rank', 'acl_a_user'),
(119, 1, 0, 'users', 'acp', 13, 127, 128, 'ACP_USER_SIG', 'sig', 'acl_a_user'),
(120, 1, 0, 'users', 'acp', 13, 129, 130, 'ACP_USER_GROUPS', 'groups', 'acl_a_user && acl_a_group'),
(121, 1, 0, 'users', 'acp', 13, 131, 132, 'ACP_USER_PERM', 'perm', 'acl_a_user && acl_a_viewauth'),
(122, 1, 0, 'users', 'acp', 13, 133, 134, 'ACP_USER_ATTACH', 'attach', 'acl_a_user'),
(123, 1, 1, 'words', 'acp', 10, 89, 90, 'ACP_WORDS', 'words', 'acl_a_words'),
(124, 1, 1, 'users', 'acp', 2, 5, 6, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
(125, 1, 1, 'groups', 'acp', 2, 7, 8, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
(126, 1, 1, 'forums', 'acp', 2, 9, 10, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
(127, 1, 1, 'logs', 'acp', 2, 11, 12, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
(128, 1, 1, 'bots', 'acp', 2, 13, 14, 'ACP_BOTS', 'bots', 'acl_a_bots'),
(129, 1, 1, 'php_info', 'acp', 2, 15, 16, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
(130, 1, 1, 'permissions', 'acp', 8, 69, 70, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(131, 1, 1, 'permissions', 'acp', 8, 71, 72, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(132, 1, 1, 'permissions', 'acp', 8, 73, 74, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(133, 1, 1, 'permissions', 'acp', 8, 75, 76, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(134, 1, 1, '', 'mcp', 0, 1, 10, 'MCP_MAIN', '', ''),
(135, 1, 1, '', 'mcp', 0, 11, 18, 'MCP_QUEUE', '', ''),
(136, 1, 1, '', 'mcp', 0, 19, 26, 'MCP_REPORTS', '', ''),
(137, 1, 1, '', 'mcp', 0, 27, 32, 'MCP_NOTES', '', ''),
(138, 1, 1, '', 'mcp', 0, 33, 42, 'MCP_WARN', '', ''),
(139, 1, 1, '', 'mcp', 0, 43, 50, 'MCP_LOGS', '', ''),
(140, 1, 1, '', 'mcp', 0, 51, 58, 'MCP_BAN', '', ''),
(141, 1, 1, 'ban', 'mcp', 140, 52, 53, 'MCP_BAN_USERNAMES', 'user', 'acl_m_ban'),
(142, 1, 1, 'ban', 'mcp', 140, 54, 55, 'MCP_BAN_IPS', 'ip', 'acl_m_ban'),
(143, 1, 1, 'ban', 'mcp', 140, 56, 57, 'MCP_BAN_EMAILS', 'email', 'acl_m_ban'),
(144, 1, 1, 'logs', 'mcp', 139, 44, 45, 'MCP_LOGS_FRONT', 'front', 'acl_m_ || aclf_m_'),
(145, 1, 1, 'logs', 'mcp', 139, 46, 47, 'MCP_LOGS_FORUM_VIEW', 'forum_logs', 'acl_m_,$id'),
(146, 1, 1, 'logs', 'mcp', 139, 48, 49, 'MCP_LOGS_TOPIC_VIEW', 'topic_logs', 'acl_m_,$id'),
(147, 1, 1, 'main', 'mcp', 134, 2, 3, 'MCP_MAIN_FRONT', 'front', ''),
(148, 1, 1, 'main', 'mcp', 134, 4, 5, 'MCP_MAIN_FORUM_VIEW', 'forum_view', 'acl_m_,$id'),
(149, 1, 1, 'main', 'mcp', 134, 6, 7, 'MCP_MAIN_TOPIC_VIEW', 'topic_view', 'acl_m_,$id'),
(150, 1, 1, 'main', 'mcp', 134, 8, 9, 'MCP_MAIN_POST_DETAILS', 'post_details', 'acl_m_,$id || (!$id && aclf_m_)'),
(151, 1, 1, 'notes', 'mcp', 137, 28, 29, 'MCP_NOTES_FRONT', 'front', ''),
(152, 1, 1, 'notes', 'mcp', 137, 30, 31, 'MCP_NOTES_USER', 'user_notes', ''),
(153, 1, 1, 'queue', 'mcp', 135, 12, 13, 'MCP_QUEUE_UNAPPROVED_TOPICS', 'unapproved_topics', 'aclf_m_approve'),
(154, 1, 1, 'queue', 'mcp', 135, 14, 15, 'MCP_QUEUE_UNAPPROVED_POSTS', 'unapproved_posts', 'aclf_m_approve'),
(155, 1, 1, 'queue', 'mcp', 135, 16, 17, 'MCP_QUEUE_APPROVE_DETAILS', 'approve_details', 'acl_m_approve,$id || (!$id && aclf_m_approve)'),
(156, 1, 1, 'reports', 'mcp', 136, 20, 21, 'MCP_REPORTS_OPEN', 'reports', 'aclf_m_report'),
(157, 1, 1, 'reports', 'mcp', 136, 22, 23, 'MCP_REPORTS_CLOSED', 'reports_closed', 'aclf_m_report'),
(158, 1, 1, 'reports', 'mcp', 136, 24, 25, 'MCP_REPORT_DETAILS', 'report_details', 'acl_m_report,$id || (!$id && aclf_m_report)'),
(159, 1, 1, 'warn', 'mcp', 138, 34, 35, 'MCP_WARN_FRONT', 'front', 'aclf_m_warn'),
(160, 1, 1, 'warn', 'mcp', 138, 36, 37, 'MCP_WARN_LIST', 'list', 'aclf_m_warn'),
(161, 1, 1, 'warn', 'mcp', 138, 38, 39, 'MCP_WARN_USER', 'warn_user', 'aclf_m_warn'),
(162, 1, 1, 'warn', 'mcp', 138, 40, 41, 'MCP_WARN_POST', 'warn_post', 'acl_m_warn && acl_f_read,$id'),
(163, 1, 1, '', 'ucp', 0, 1, 12, 'UCP_MAIN', '', ''),
(164, 1, 1, '', 'ucp', 0, 13, 22, 'UCP_PROFILE', '', ''),
(165, 1, 1, '', 'ucp', 0, 23, 30, 'UCP_PREFS', '', ''),
(166, 1, 1, '', 'ucp', 0, 31, 42, 'UCP_PM', '', ''),
(167, 1, 1, '', 'ucp', 0, 43, 48, 'UCP_USERGROUPS', '', ''),
(168, 1, 1, '', 'ucp', 0, 49, 54, 'UCP_ZEBRA', '', ''),
(169, 1, 1, 'attachments', 'ucp', 163, 10, 11, 'UCP_MAIN_ATTACHMENTS', 'attachments', 'acl_u_attach'),
(170, 1, 1, 'groups', 'ucp', 167, 44, 45, 'UCP_USERGROUPS_MEMBER', 'membership', ''),
(171, 1, 1, 'groups', 'ucp', 167, 46, 47, 'UCP_USERGROUPS_MANAGE', 'manage', ''),
(172, 1, 1, 'main', 'ucp', 163, 2, 3, 'UCP_MAIN_FRONT', 'front', ''),
(173, 1, 1, 'main', 'ucp', 163, 4, 5, 'UCP_MAIN_SUBSCRIBED', 'subscribed', ''),
(174, 1, 1, 'main', 'ucp', 163, 6, 7, 'UCP_MAIN_BOOKMARKS', 'bookmarks', 'cfg_allow_bookmarks'),
(175, 1, 1, 'main', 'ucp', 163, 8, 9, 'UCP_MAIN_DRAFTS', 'drafts', ''),
(176, 1, 0, 'pm', 'ucp', 166, 32, 33, 'UCP_PM_VIEW', 'view', 'cfg_allow_privmsg'),
(177, 1, 1, 'pm', 'ucp', 166, 34, 35, 'UCP_PM_COMPOSE', 'compose', 'cfg_allow_privmsg'),
(178, 1, 1, 'pm', 'ucp', 166, 36, 37, 'UCP_PM_DRAFTS', 'drafts', 'cfg_allow_privmsg'),
(179, 1, 1, 'pm', 'ucp', 166, 38, 39, 'UCP_PM_OPTIONS', 'options', 'cfg_allow_privmsg'),
(180, 1, 0, 'pm', 'ucp', 166, 40, 41, 'UCP_PM_POPUP_TITLE', 'popup', 'cfg_allow_privmsg'),
(181, 1, 1, 'prefs', 'ucp', 165, 24, 25, 'UCP_PREFS_PERSONAL', 'personal', ''),
(182, 1, 1, 'prefs', 'ucp', 165, 26, 27, 'UCP_PREFS_POST', 'post', ''),
(183, 1, 1, 'prefs', 'ucp', 165, 28, 29, 'UCP_PREFS_VIEW', 'view', ''),
(184, 1, 1, 'profile', 'ucp', 164, 14, 15, 'UCP_PROFILE_PROFILE_INFO', 'profile_info', ''),
(185, 1, 1, 'profile', 'ucp', 164, 16, 17, 'UCP_PROFILE_SIGNATURE', 'signature', ''),
(186, 1, 1, 'profile', 'ucp', 164, 18, 19, 'UCP_PROFILE_AVATAR', 'avatar', ''),
(187, 1, 1, 'profile', 'ucp', 164, 20, 21, 'UCP_PROFILE_REG_DETAILS', 'reg_details', ''),
(188, 1, 1, 'zebra', 'ucp', 168, 50, 51, 'UCP_ZEBRA_FRIENDS', 'friends', ''),
(189, 1, 1, 'zebra', 'ucp', 168, 52, 53, 'UCP_ZEBRA_FOES', 'foes', '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_poll_options`
--

CREATE TABLE IF NOT EXISTS `phpbb_poll_options` (
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_option_text` text COLLATE utf8_bin NOT NULL,
  `poll_option_total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  KEY `poll_opt_id` (`poll_option_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_poll_options`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_poll_votes`
--

CREATE TABLE IF NOT EXISTS `phpbb_poll_votes` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `vote_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vote_user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  KEY `topic_id` (`topic_id`),
  KEY `vote_user_id` (`vote_user_id`),
  KEY `vote_user_ip` (`vote_user_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_poll_votes`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_posts`
--

CREATE TABLE IF NOT EXISTS `phpbb_posts` (
  `post_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poster_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_approved` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `post_checksum` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_postcount` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_edit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_edit_count` smallint(4) unsigned NOT NULL DEFAULT '0',
  `post_edit_locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_ip` (`poster_ip`),
  KEY `poster_id` (`poster_id`),
  KEY `post_approved` (`post_approved`),
  KEY `tid_post_time` (`topic_id`,`post_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `phpbb_posts`
--

INSERT INTO `phpbb_posts` (`post_id`, `topic_id`, `forum_id`, `poster_id`, `icon_id`, `poster_ip`, `post_time`, `post_approved`, `post_reported`, `enable_bbcode`, `enable_smilies`, `enable_magic_url`, `enable_sig`, `post_username`, `post_subject`, `post_text`, `post_checksum`, `post_attachment`, `bbcode_bitfield`, `bbcode_uid`, `post_postcount`, `post_edit_time`, `post_edit_reason`, `post_edit_user`, `post_edit_count`, `post_edit_locked`) VALUES
(1, 1, 2, 2, 0, '127.0.0.1', 1355800447, 1, 0, 1, 1, 1, 1, '', 'Chào mừng bạn đến với phpBB', 0xc490c3a279206cc3a02062c3a069207669e1babf74206de1baab7520c491c6b0e1bba3632074e1baa16f2072612074726f6e67207175c3a1207472c3ac6e682063c3a06920c491e1bab7742068e1bb87207468e1bb916e672063e1bba7612062e1baa16e2e204de1bb8d69207468e1bba92064c6b0e1bb9d6e67206e68c6b020c491616e6720686fe1baa17420c491e1bb996e672074e1bb91742e2042e1baa16e2063c3b3207468e1bb832078c3b3612062c3a069207669e1babf74206ec3a079206ee1babf75207468c3ad63682076c3a0207469e1babf702074e1bba5632063c3b46e67207669e1bb876320746869e1babf74206ce1baad702068e1bb87207468e1bb916e672e2054726f6e67207375e1bb9174207175c3a1207472c3ac6e68207468e1bbb163207468692063c3a06920c491e1bab7742c206e68c3b36d2063687579c3aa6e206de1bba5632076c3a02063687579c3aa6e206de1bba563206de1baab75206ec3a07920c491c3a320c491c6b0e1bba3632063e1baa570207068c3a9702068e1bba370206ce1bb872073e1bab56e2063686f2063c3a163206e68c3b36d207468c3a06e68207669c3aa6e206e68c6b03a207175e1baa36e207472e1bb8b207669c3aa6e2c20c49169e1bb81752068c3a06e68207669c3aa6e2c206dc3a1792074c3ac6d206b69e1babf6d2c206b68c3a163682c207468c3a06e68207669c3aa6e2076c3a02063c3a163207468c3a06e68207669c3aa6e207468656f20c49169e1bb8175206b686fe1baa36e20434f5050412e2042e1baa16e2063c5a96e672063c3b3207468e1bb832078c3b361206e68c3b36d2063687579c3aa6e206de1bba563206e68c3a1702076c3a02063687579c3aa6e206de1bba563206e68c3a170206ec3a079206e68c6b06e6720c491e1bbab6e67207175c3aa6e2063e1baa570207068c3a970206ce1baa1692063687579c3aa6e206de1bba563206de1bb9769206b68692074e1baa16f206de1bb9b6920736175206ec3a0792063686f206e68e1bbaf6e67206e68c3b36d207468c3a06e68207669c3aa6e2062c3aa6e207472c3aa6e2e204368c3ba6e672074c3b469206b687579c3aa6e2062e1baa16e206ec3aa6e20c491e1bb95692074c3aa6e206e68c3b36d2063687579c3aa6e206de1bba563206e68c3a1702076c3a02063687579c3aa6e206de1bba563206e68c3a170206ec3a0792e2053617520c491c3b32c206de1bb9769206b68692074e1baa16f206de1bb9b692063687579c3aa6e206de1bba5632c2062e1baa16e2068c3a379206368e1bb8d6e2073616f206368c3a97020746869e1babf74206ce1baad702063e1baa570207068c3a9702074e1bbab206368c3ba6e672e204368c3ba63207675692076e1babb21, '5dd683b17f641daf84c040bfefc58ce9', 0, '', '', 1, 0, '', 0, 0, 0),
(2, 2, 5, 2, 0, '127.0.0.1', 1355800883, 1, 0, 1, 1, 1, 1, '', 'Acer giảm giá', 0x4e67c3a079206d61692041636572206769e1baa36d20353025, 'b9ef188d0d5ab2a4388484f9807aa95d', 0, '', '2s9s9o4q', 1, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs`
--

CREATE TABLE IF NOT EXISTS `phpbb_privmsgs` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `root_level` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_time` int(11) unsigned NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `message_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_text` mediumtext COLLATE utf8_bin NOT NULL,
  `message_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `message_edit_count` smallint(4) unsigned NOT NULL DEFAULT '0',
  `to_address` text COLLATE utf8_bin NOT NULL,
  `bcc_address` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`msg_id`),
  KEY `author_ip` (`author_ip`),
  KEY `message_time` (`message_time`),
  KEY `author_id` (`author_id`),
  KEY `root_level` (`root_level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phpbb_privmsgs`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs_folder`
--

CREATE TABLE IF NOT EXISTS `phpbb_privmsgs_folder` (
  `folder_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `folder_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pm_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`folder_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phpbb_privmsgs_folder`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs_rules`
--

CREATE TABLE IF NOT EXISTS `phpbb_privmsgs_rules` (
  `rule_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_check` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_connection` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_string` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rule_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_action` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_folder_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rule_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phpbb_privmsgs_rules`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs_to`
--

CREATE TABLE IF NOT EXISTS `phpbb_privmsgs_to` (
  `msg_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pm_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_new` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pm_unread` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pm_replied` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_marked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_forwarded` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(11) NOT NULL DEFAULT '0',
  KEY `msg_id` (`msg_id`),
  KEY `author_id` (`author_id`),
  KEY `usr_flder_id` (`user_id`,`folder_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_privmsgs_to`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_fields`
--

CREATE TABLE IF NOT EXISTS `phpbb_profile_fields` (
  `field_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `field_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_type` tinyint(4) NOT NULL DEFAULT '0',
  `field_ident` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_length` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_minlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_maxlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_novalue` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_validation` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_reg` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_profile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_hide` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_no_view` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`),
  KEY `fld_type` (`field_type`),
  KEY `fld_ordr` (`field_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phpbb_profile_fields`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_fields_data`
--

CREATE TABLE IF NOT EXISTS `phpbb_profile_fields_data` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_profile_fields_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_fields_lang`
--

CREATE TABLE IF NOT EXISTS `phpbb_profile_fields_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_type` tinyint(4) NOT NULL DEFAULT '0',
  `lang_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`,`option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_profile_fields_lang`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_lang`
--

CREATE TABLE IF NOT EXISTS `phpbb_profile_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_explain` text COLLATE utf8_bin NOT NULL,
  `lang_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_profile_lang`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_ranks`
--

CREATE TABLE IF NOT EXISTS `phpbb_ranks` (
  `rank_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rank_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rank_min` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`rank_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `phpbb_ranks`
--

INSERT INTO `phpbb_ranks` (`rank_id`, `rank_title`, `rank_min`, `rank_special`, `rank_image`) VALUES
(1, 'Quản trị viên', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_reports`
--

CREATE TABLE IF NOT EXISTS `phpbb_reports` (
  `report_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `reason_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `report_closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `report_time` int(11) unsigned NOT NULL DEFAULT '0',
  `report_text` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phpbb_reports`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_reports_reasons`
--

CREATE TABLE IF NOT EXISTS `phpbb_reports_reasons` (
  `reason_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `reason_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reason_description` mediumtext COLLATE utf8_bin NOT NULL,
  `reason_order` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`reason_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `phpbb_reports_reasons`
--

INSERT INTO `phpbb_reports_reasons` (`reason_id`, `reason_title`, `reason_description`, `reason_order`) VALUES
(1, 'warez', 0x42c3a069207669e1babf742063c3b3206368e1bba9612063c3a163206c69c3aa6e206be1babf74206c69c3aa6e207175616e20c491e1babf6e206e68e1bbaf6e67207068e1baa76e206de1bb816d2073616f206368c3a970207472c3a169207068c3a170206c75e1baad742e, 1),
(2, 'spam', 0x42c3a069207669e1babf74206368e1bb89206e68e1bab16d206de1bba56320c491c3ad6368207175e1baa36e672063c3a16f2063686f206de1bb99742077656273697465206861792063c3a1632073e1baa36e207068e1baa96d206b68c3a1632e, 2),
(3, 'off_topic', 0x42c3a069207669e1babf742063c3b3206ee1bb99692064756e67206b68c3b46e67207068c3b92068e1bba3702e, 3),
(4, 'other', 0x42c3a069207669e1babf7420c491c3a32062c3a16f2063c3a16f206b68c3b46e67207068e1baa3692076c3ac2063c3a163206e677579c3aa6e206e68c3a26e20c491c3a3206c69e1bb8774206bc3aa20e1bb9f207472c3aa6e2c2062e1baa16e2068c3a3792074e1bbb1206e68e1baad702076c3a06f207468c3b46e672074696e206769e1bb9b6920746869e1bb877520636869207469e1babf742e, 4);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_search_results`
--

CREATE TABLE IF NOT EXISTS `phpbb_search_results` (
  `search_key` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_time` int(11) unsigned NOT NULL DEFAULT '0',
  `search_keywords` mediumtext COLLATE utf8_bin NOT NULL,
  `search_authors` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`search_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_search_results`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_search_wordlist`
--

CREATE TABLE IF NOT EXISTS `phpbb_search_wordlist` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word_text` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `word_common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `word_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`word_id`),
  UNIQUE KEY `wrd_txt` (`word_text`),
  KEY `wrd_cnt` (`word_count`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=94 ;

--
-- Dumping data for table `phpbb_search_wordlist`
--

INSERT INTO `phpbb_search_wordlist` (`word_id`, `word_text`, `word_common`, `word_count`) VALUES
(1, 'đây', 0, 1),
(2, 'bài', 0, 1),
(3, 'viết', 0, 1),
(4, 'mẫu', 0, 1),
(5, 'được', 0, 1),
(6, 'tạo', 0, 1),
(7, 'trong', 0, 1),
(8, 'quá', 0, 1),
(9, 'trình', 0, 1),
(10, 'cài', 0, 1),
(11, 'đặt', 0, 1),
(12, 'thống', 0, 1),
(13, 'của', 0, 1),
(14, 'bạn', 0, 2),
(15, 'mọi', 0, 1),
(16, 'thứ', 0, 1),
(17, 'dường', 0, 1),
(18, 'như', 0, 1),
(19, 'đang', 0, 1),
(20, 'hoạt', 0, 1),
(21, 'động', 0, 1),
(22, 'tốt', 0, 1),
(23, 'thể', 0, 1),
(24, 'xóa', 0, 1),
(25, 'này', 0, 1),
(26, 'nếu', 0, 1),
(27, 'thích', 0, 1),
(28, 'tiếp', 0, 1),
(29, 'tục', 0, 1),
(30, 'công', 0, 1),
(31, 'việc', 0, 1),
(32, 'thiết', 0, 1),
(33, 'lập', 0, 1),
(34, 'suốt', 0, 1),
(35, 'thực', 0, 1),
(36, 'thi', 0, 1),
(37, 'nhóm', 0, 1),
(38, 'chuyên', 0, 1),
(39, 'mục', 0, 1),
(40, 'cấp', 0, 1),
(41, 'phép', 0, 1),
(42, 'hợp', 0, 1),
(43, 'sẵn', 0, 1),
(44, 'cho', 0, 1),
(45, 'các', 0, 1),
(46, 'thành', 0, 1),
(47, 'viên', 0, 1),
(48, 'quản', 0, 1),
(49, 'trị', 0, 1),
(50, 'điều', 0, 1),
(51, 'hành', 0, 1),
(52, 'máy', 0, 1),
(53, 'tìm', 0, 1),
(54, 'kiếm', 0, 1),
(55, 'khách', 0, 1),
(56, 'theo', 0, 1),
(57, 'khoản', 0, 1),
(58, 'coppa', 0, 1),
(59, 'cũng', 0, 1),
(60, 'nháp', 0, 1),
(61, 'nhưng', 0, 1),
(62, 'đừng', 0, 1),
(63, 'quên', 0, 1),
(64, 'lại', 0, 1),
(65, 'mỗi', 0, 1),
(66, 'khi', 0, 1),
(67, 'mới', 0, 1),
(68, 'sau', 0, 1),
(69, 'những', 0, 1),
(70, 'bên', 0, 1),
(71, 'trên', 0, 1),
(72, 'chúng', 0, 1),
(73, 'tôi', 0, 1),
(74, 'khuyên', 0, 1),
(75, 'nên', 0, 1),
(76, 'đổi', 0, 1),
(77, 'tên', 0, 1),
(78, 'hãy', 0, 1),
(79, 'chọn', 0, 1),
(80, 'sao', 0, 1),
(81, 'chép', 0, 1),
(82, 'chúc', 0, 1),
(83, 'vui', 0, 1),
(84, 'chào', 0, 1),
(85, 'mừng', 0, 1),
(86, 'đến', 0, 1),
(87, 'với', 0, 1),
(88, 'phpbb', 0, 1),
(89, 'ngày', 0, 1),
(90, 'mai', 0, 1),
(91, 'acer', 0, 2),
(92, 'giảm', 0, 2),
(93, 'giá', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_search_wordmatch`
--

CREATE TABLE IF NOT EXISTS `phpbb_search_wordmatch` (
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `word_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title_match` tinyint(1) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `unq_mtch` (`word_id`,`post_id`,`title_match`),
  KEY `word_id` (`word_id`),
  KEY `post_id` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_search_wordmatch`
--

INSERT INTO `phpbb_search_wordmatch` (`post_id`, `word_id`, `title_match`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0),
(1, 8, 0),
(1, 9, 0),
(1, 10, 0),
(1, 11, 0),
(1, 12, 0),
(1, 13, 0),
(1, 14, 0),
(1, 14, 1),
(1, 15, 0),
(1, 16, 0),
(1, 17, 0),
(1, 18, 0),
(1, 19, 0),
(1, 20, 0),
(1, 21, 0),
(1, 22, 0),
(1, 23, 0),
(1, 24, 0),
(1, 25, 0),
(1, 26, 0),
(1, 27, 0),
(1, 28, 0),
(1, 29, 0),
(1, 30, 0),
(1, 31, 0),
(1, 32, 0),
(1, 33, 0),
(1, 34, 0),
(1, 35, 0),
(1, 36, 0),
(1, 37, 0),
(1, 38, 0),
(1, 39, 0),
(1, 40, 0),
(1, 41, 0),
(1, 42, 0),
(1, 43, 0),
(1, 44, 0),
(1, 45, 0),
(1, 46, 0),
(1, 47, 0),
(1, 48, 0),
(1, 49, 0),
(1, 50, 0),
(1, 51, 0),
(1, 52, 0),
(1, 53, 0),
(1, 54, 0),
(1, 55, 0),
(1, 56, 0),
(1, 57, 0),
(1, 58, 0),
(1, 59, 0),
(1, 60, 0),
(1, 61, 0),
(1, 62, 0),
(1, 63, 0),
(1, 64, 0),
(1, 65, 0),
(1, 66, 0),
(1, 67, 0),
(1, 68, 0),
(1, 69, 0),
(1, 70, 0),
(1, 71, 0),
(1, 72, 0),
(1, 73, 0),
(1, 74, 0),
(1, 75, 0),
(1, 76, 0),
(1, 77, 0),
(1, 78, 0),
(1, 79, 0),
(1, 80, 0),
(1, 81, 0),
(1, 82, 0),
(1, 83, 0),
(1, 84, 1),
(1, 85, 1),
(1, 86, 1),
(1, 87, 1),
(1, 88, 1),
(2, 89, 0),
(2, 90, 0),
(2, 91, 0),
(2, 91, 1),
(2, 92, 0),
(2, 92, 1),
(2, 93, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_sessions`
--

CREATE TABLE IF NOT EXISTS `phpbb_sessions` (
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_last_visit` int(11) unsigned NOT NULL DEFAULT '0',
  `session_start` int(11) unsigned NOT NULL DEFAULT '0',
  `session_time` int(11) unsigned NOT NULL DEFAULT '0',
  `session_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_page` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_viewonline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `session_autologin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `session_admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `session_time` (`session_time`),
  KEY `session_user_id` (`session_user_id`),
  KEY `session_fid` (`session_forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_sessions`
--

INSERT INTO `phpbb_sessions` (`session_id`, `session_user_id`, `session_forum_id`, `session_last_visit`, `session_start`, `session_time`, `session_ip`, `session_browser`, `session_forwarded_for`, `session_page`, `session_viewonline`, `session_autologin`, `session_admin`) VALUES
('219e36b173dea7b721a8a95b45c960ea', 1, 0, 1355800450, 1355800450, 1355800450, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:17.0) Gecko/20100101 Firefox/17.0', '', 'install/index.php?mode=install&sub=final', 1, 0, 0),
('f135b7a2075e28bfabef4d5d4b13d9c0', 2, 0, 1355800450, 1355800450, 1355801599, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:17.0) Gecko/20100101 Firefox/17.0', '', 'index.php', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_sessions_keys`
--

CREATE TABLE IF NOT EXISTS `phpbb_sessions_keys` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`key_id`,`user_id`),
  KEY `last_login` (`last_login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_sessions_keys`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_sitelist`
--

CREATE TABLE IF NOT EXISTS `phpbb_sitelist` (
  `site_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `site_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `site_hostname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip_exclude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phpbb_sitelist`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_smilies`
--

CREATE TABLE IF NOT EXISTS `phpbb_smilies` (
  `smiley_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `emotion` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_url` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`smiley_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=43 ;

--
-- Dumping data for table `phpbb_smilies`
--

INSERT INTO `phpbb_smilies` (`smiley_id`, `code`, `emotion`, `smiley_url`, `smiley_width`, `smiley_height`, `smiley_order`, `display_on_posting`) VALUES
(1, ':D', 'Rất vui', 'icon_e_biggrin.gif', 15, 17, 1, 1),
(2, ':-D', 'Rất vui', 'icon_e_biggrin.gif', 15, 17, 2, 1),
(3, ':grin:', 'Rất vui', 'icon_e_biggrin.gif', 15, 17, 3, 1),
(4, ':)', 'Mỉm cười', 'icon_e_smile.gif', 15, 17, 4, 1),
(5, ':-)', 'Mỉm cười', 'icon_e_smile.gif', 15, 17, 5, 1),
(6, ':smile:', 'Mỉm cười', 'icon_e_smile.gif', 15, 17, 6, 1),
(7, ';)', 'Nháy mắt', 'icon_e_wink.gif', 15, 17, 7, 1),
(8, ';-)', 'Nháy mắt', 'icon_e_wink.gif', 15, 17, 8, 1),
(9, ':wink:', 'Nháy mắt', 'icon_e_wink.gif', 15, 17, 9, 1),
(10, ':(', 'Buồn', 'icon_e_sad.gif', 15, 17, 10, 1),
(11, ':-(', 'Buồn', 'icon_e_sad.gif', 15, 17, 11, 1),
(12, ':sad:', 'Buồn', 'icon_e_sad.gif', 15, 17, 12, 1),
(13, ':o', 'Nhạc nhiên', 'icon_e_surprised.gif', 15, 17, 13, 1),
(14, ':-o', 'Nhạc nhiên', 'icon_e_surprised.gif', 15, 17, 14, 1),
(15, ':eek:', 'Nhạc nhiên', 'icon_e_surprised.gif', 15, 17, 15, 1),
(16, ':shock:', 'Sốc', 'icon_eek.gif', 15, 17, 16, 1),
(17, ':?', 'Lúng túng', 'icon_e_confused.gif', 15, 17, 17, 1),
(18, ':-?', 'Lúng túng', 'icon_e_confused.gif', 15, 17, 18, 1),
(19, ':???:', 'Lúng túng', 'icon_e_confused.gif', 15, 17, 19, 1),
(20, '8-)', 'Phấn chấn', 'icon_cool.gif', 15, 17, 20, 1),
(21, ':cool:', 'Phấn chấn', 'icon_cool.gif', 15, 17, 21, 1),
(22, ':lol:', 'Cười', 'icon_lol.gif', 15, 17, 22, 1),
(23, ':x', 'Mất trí', 'icon_mad.gif', 15, 17, 23, 1),
(24, ':-x', 'Mất trí', 'icon_mad.gif', 15, 17, 24, 1),
(25, ':mad:', 'Mất trí', 'icon_mad.gif', 15, 17, 25, 1),
(26, ':P', 'Chế giễu', 'icon_razz.gif', 15, 17, 26, 1),
(27, ':-P', 'Chế giễu', 'icon_razz.gif', 15, 17, 27, 1),
(28, ':razz:', 'Chế giễu', 'icon_razz.gif', 15, 17, 28, 1),
(29, ':oops:', 'Ngượng', 'icon_redface.gif', 15, 17, 29, 1),
(30, ':cry:', 'Khóc', 'icon_cry.gif', 15, 17, 30, 1),
(31, ':evil:', 'Điên cuồng', 'icon_evil.gif', 15, 17, 31, 1),
(32, ':twisted:', 'Quỷ', 'icon_twisted.gif', 15, 17, 32, 1),
(33, ':roll:', 'Liếc mắt', 'icon_rolleyes.gif', 15, 17, 33, 1),
(34, ':!:', 'Bó tay', 'icon_exclaim.gif', 15, 17, 34, 1),
(35, ':?:', 'Thắc mắc', 'icon_question.gif', 15, 17, 35, 1),
(36, ':idea:', 'Ý tưởng', 'icon_idea.gif', 15, 17, 36, 1),
(37, ':arrow:', 'Mũi tên', 'icon_arrow.gif', 15, 17, 37, 1),
(38, ':|', 'Trung lập', 'icon_neutral.gif', 15, 17, 38, 1),
(39, ':-|', 'Trung lập', 'icon_neutral.gif', 15, 17, 39, 1),
(40, ':mrgreen:', 'Xanh lè', 'icon_mrgreen.gif', 15, 17, 40, 1),
(41, ':geek:', 'Lập dị', 'icon_e_geek.gif', 17, 17, 41, 1),
(42, ':ugeek:', 'Chuyên viên', 'icon_e_ugeek.gif', 17, 18, 42, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_styles`
--

CREATE TABLE IF NOT EXISTS `phpbb_styles` (
  `style_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `style_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `theme_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `imageset_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`style_id`),
  UNIQUE KEY `style_name` (`style_name`),
  KEY `template_id` (`template_id`),
  KEY `theme_id` (`theme_id`),
  KEY `imageset_id` (`imageset_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `phpbb_styles`
--

INSERT INTO `phpbb_styles` (`style_id`, `style_name`, `style_copyright`, `style_active`, `template_id`, `theme_id`, `imageset_id`) VALUES
(1, 'prosilver', '&copy; phpBB Group', 1, 1, 1, 1),
(2, 'AnimeZone', '&copy; 2007 AnimeZone', 1, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_styles_imageset`
--

CREATE TABLE IF NOT EXISTS `phpbb_styles_imageset` (
  `imageset_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `imageset_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `imageset_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `imageset_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`imageset_id`),
  UNIQUE KEY `imgset_nm` (`imageset_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `phpbb_styles_imageset`
--

INSERT INTO `phpbb_styles_imageset` (`imageset_id`, `imageset_name`, `imageset_copyright`, `imageset_path`) VALUES
(1, 'prosilver', '&copy; phpBB Group', 'prosilver'),
(2, 'AnimeZone', '&copy; phpBB Group, 2003', 'AnimeZone');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_styles_imageset_data`
--

CREATE TABLE IF NOT EXISTS `phpbb_styles_imageset_data` (
  `image_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `image_name` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_filename` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `image_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `imageset_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`image_id`),
  KEY `i_d` (`imageset_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=172 ;

--
-- Dumping data for table `phpbb_styles_imageset_data`
--

INSERT INTO `phpbb_styles_imageset_data` (`image_id`, `image_name`, `image_filename`, `image_lang`, `image_height`, `image_width`, `imageset_id`) VALUES
(1, 'site_logo', 'site_logo.gif', '', 52, 139, 1),
(2, 'forum_link', 'forum_link.gif', '', 27, 27, 1),
(3, 'forum_read', 'forum_read.gif', '', 27, 27, 1),
(4, 'forum_read_locked', 'forum_read_locked.gif', '', 27, 27, 1),
(5, 'forum_read_subforum', 'forum_read_subforum.gif', '', 27, 27, 1),
(6, 'forum_unread', 'forum_unread.gif', '', 27, 27, 1),
(7, 'forum_unread_locked', 'forum_unread_locked.gif', '', 27, 27, 1),
(8, 'forum_unread_subforum', 'forum_unread_subforum.gif', '', 27, 27, 1),
(9, 'topic_moved', 'topic_moved.gif', '', 27, 27, 1),
(10, 'topic_read', 'topic_read.gif', '', 27, 27, 1),
(11, 'topic_read_mine', 'topic_read_mine.gif', '', 27, 27, 1),
(12, 'topic_read_hot', 'topic_read_hot.gif', '', 27, 27, 1),
(13, 'topic_read_hot_mine', 'topic_read_hot_mine.gif', '', 27, 27, 1),
(14, 'topic_read_locked', 'topic_read_locked.gif', '', 27, 27, 1),
(15, 'topic_read_locked_mine', 'topic_read_locked_mine.gif', '', 27, 27, 1),
(16, 'topic_unread', 'topic_unread.gif', '', 27, 27, 1),
(17, 'topic_unread_mine', 'topic_unread_mine.gif', '', 27, 27, 1),
(18, 'topic_unread_hot', 'topic_unread_hot.gif', '', 27, 27, 1),
(19, 'topic_unread_hot_mine', 'topic_unread_hot_mine.gif', '', 27, 27, 1),
(20, 'topic_unread_locked', 'topic_unread_locked.gif', '', 27, 27, 1),
(21, 'topic_unread_locked_mine', 'topic_unread_locked_mine.gif', '', 27, 27, 1),
(22, 'sticky_read', 'sticky_read.gif', '', 27, 27, 1),
(23, 'sticky_read_mine', 'sticky_read_mine.gif', '', 27, 27, 1),
(24, 'sticky_read_locked', 'sticky_read_locked.gif', '', 27, 27, 1),
(25, 'sticky_read_locked_mine', 'sticky_read_locked_mine.gif', '', 27, 27, 1),
(26, 'sticky_unread', 'sticky_unread.gif', '', 27, 27, 1),
(27, 'sticky_unread_mine', 'sticky_unread_mine.gif', '', 27, 27, 1),
(28, 'sticky_unread_locked', 'sticky_unread_locked.gif', '', 27, 27, 1),
(29, 'sticky_unread_locked_mine', 'sticky_unread_locked_mine.gif', '', 27, 27, 1),
(30, 'announce_read', 'announce_read.gif', '', 27, 27, 1),
(31, 'announce_read_mine', 'announce_read_mine.gif', '', 27, 27, 1),
(32, 'announce_read_locked', 'announce_read_locked.gif', '', 27, 27, 1),
(33, 'announce_read_locked_mine', 'announce_read_locked_mine.gif', '', 27, 27, 1),
(34, 'announce_unread', 'announce_unread.gif', '', 27, 27, 1),
(35, 'announce_unread_mine', 'announce_unread_mine.gif', '', 27, 27, 1),
(36, 'announce_unread_locked', 'announce_unread_locked.gif', '', 27, 27, 1),
(37, 'announce_unread_locked_mine', 'announce_unread_locked_mine.gif', '', 27, 27, 1),
(38, 'global_read', 'announce_read.gif', '', 27, 27, 1),
(39, 'global_read_mine', 'announce_read_mine.gif', '', 27, 27, 1),
(40, 'global_read_locked', 'announce_read_locked.gif', '', 27, 27, 1),
(41, 'global_read_locked_mine', 'announce_read_locked_mine.gif', '', 27, 27, 1),
(42, 'global_unread', 'announce_unread.gif', '', 27, 27, 1),
(43, 'global_unread_mine', 'announce_unread_mine.gif', '', 27, 27, 1),
(44, 'global_unread_locked', 'announce_unread_locked.gif', '', 27, 27, 1),
(45, 'global_unread_locked_mine', 'announce_unread_locked_mine.gif', '', 27, 27, 1),
(46, 'pm_read', 'topic_read.gif', '', 27, 27, 1),
(47, 'pm_unread', 'topic_unread.gif', '', 27, 27, 1),
(48, 'icon_back_top', 'icon_back_top.gif', '', 11, 11, 1),
(49, 'icon_contact_aim', 'icon_contact_aim.gif', '', 20, 20, 1),
(50, 'icon_contact_email', 'icon_contact_email.gif', '', 20, 20, 1),
(51, 'icon_contact_icq', 'icon_contact_icq.gif', '', 20, 20, 1),
(52, 'icon_contact_jabber', 'icon_contact_jabber.gif', '', 20, 20, 1),
(53, 'icon_contact_msnm', 'icon_contact_msnm.gif', '', 20, 20, 1),
(54, 'icon_contact_www', 'icon_contact_www.gif', '', 20, 20, 1),
(55, 'icon_contact_yahoo', 'icon_contact_yahoo.gif', '', 20, 20, 1),
(56, 'icon_post_delete', 'icon_post_delete.gif', '', 20, 20, 1),
(57, 'icon_post_info', 'icon_post_info.gif', '', 20, 20, 1),
(58, 'icon_post_report', 'icon_post_report.gif', '', 20, 20, 1),
(59, 'icon_post_target', 'icon_post_target.gif', '', 9, 11, 1),
(60, 'icon_post_target_unread', 'icon_post_target_unread.gif', '', 9, 11, 1),
(61, 'icon_topic_attach', 'icon_topic_attach.gif', '', 10, 7, 1),
(62, 'icon_topic_latest', 'icon_topic_latest.gif', '', 9, 11, 1),
(63, 'icon_topic_newest', 'icon_topic_newest.gif', '', 9, 11, 1),
(64, 'icon_topic_reported', 'icon_topic_reported.gif', '', 14, 16, 1),
(65, 'icon_topic_unapproved', 'icon_topic_unapproved.gif', '', 14, 16, 1),
(66, 'icon_user_warn', 'icon_user_warn.gif', '', 20, 20, 1),
(67, 'subforum_read', 'subforum_read.gif', '', 9, 11, 1),
(68, 'subforum_unread', 'subforum_unread.gif', '', 9, 11, 1),
(69, 'icon_contact_pm', 'icon_contact_pm.gif', 'en', 20, 28, 1),
(70, 'icon_post_edit', 'icon_post_edit.gif', 'en', 20, 42, 1),
(71, 'icon_post_quote', 'icon_post_quote.gif', 'en', 20, 54, 1),
(72, 'icon_user_online', 'icon_user_online.gif', 'en', 58, 58, 1),
(73, 'button_pm_forward', 'button_pm_forward.gif', 'en', 25, 96, 1),
(74, 'button_pm_new', 'button_pm_new.gif', 'en', 25, 84, 1),
(75, 'button_pm_reply', 'button_pm_reply.gif', 'en', 25, 96, 1),
(76, 'button_topic_locked', 'button_topic_locked.gif', 'en', 25, 88, 1),
(77, 'button_topic_new', 'button_topic_new.gif', 'en', 25, 96, 1),
(78, 'button_topic_reply', 'button_topic_reply.gif', 'en', 25, 96, 1),
(79, 'icon_contact_pm', 'icon_contact_pm.gif', 'vi', 20, 28, 1),
(80, 'icon_post_edit', 'icon_post_edit.gif', 'vi', 20, 42, 1),
(81, 'icon_post_quote', 'icon_post_quote.gif', 'vi', 20, 70, 1),
(82, 'icon_user_online', 'icon_user_online.gif', 'vi', 58, 58, 1),
(83, 'icon_user_offline', 'icon_user_offline.gif', 'vi', 0, 0, 1),
(84, 'icon_user_search', 'icon_user_search.gif', 'vi', 0, 0, 1),
(85, 'button_pm_forward', 'button_pm_forward.gif', 'vi', 25, 96, 1),
(86, 'button_pm_new', 'button_pm_new.gif', 'vi', 25, 96, 1),
(87, 'button_pm_reply', 'button_pm_reply.gif', 'vi', 25, 96, 1),
(88, 'button_topic_locked', 'button_topic_locked.gif', 'vi', 25, 88, 1),
(89, 'button_topic_new', 'button_topic_new.gif', 'vi', 25, 96, 1),
(90, 'button_topic_reply', 'button_topic_reply.gif', 'vi', 25, 96, 1),
(91, 'site_logo', 'logo.jpg', '', 0, 0, 2),
(92, 'upload_bar', 'upload_bar.gif', '', 0, 0, 2),
(93, 'poll_left', 'poll_left.gif', '', 0, 0, 2),
(94, 'poll_center', 'poll_center.gif', '', 15, 0, 2),
(95, 'poll_right', 'poll_right.gif', '', 0, 0, 2),
(96, 'forum_link', 'forum_link.gif', '', 0, 0, 2),
(97, 'forum_read', 'forum_read.gif', '', 0, 0, 2),
(98, 'forum_read_locked', 'forum_read_locked.gif', '', 0, 0, 2),
(99, 'forum_read_subforum', 'forum_read_subforum.gif', '', 0, 0, 2),
(100, 'forum_unread', 'forum_unread.gif', '', 0, 0, 2),
(101, 'forum_unread_locked', 'forum_unread_locked.gif', '', 0, 0, 2),
(102, 'forum_unread_subforum', 'forum_unread_subforum.gif', '', 0, 0, 2),
(103, 'topic_moved', 'topic_moved.gif', '', 0, 0, 2),
(104, 'topic_read', 'topic_read.gif', '', 0, 0, 2),
(105, 'topic_read_mine', 'topic_read_mine.gif', '', 0, 0, 2),
(106, 'topic_read_hot', 'topic_read_hot.gif', '', 0, 0, 2),
(107, 'topic_read_hot_mine', 'topic_read_hot_mine.gif', '', 0, 0, 2),
(108, 'topic_read_locked', 'topic_read_locked.gif', '', 0, 0, 2),
(109, 'topic_read_locked_mine', 'topic_read_locked_mine.gif', '', 0, 0, 2),
(110, 'topic_unread', 'topic_unread.gif', '', 0, 0, 2),
(111, 'topic_unread_mine', 'topic_unread_mine.gif', '', 0, 0, 2),
(112, 'topic_unread_hot', 'topic_unread_hot.gif', '', 0, 0, 2),
(113, 'topic_unread_hot_mine', 'topic_unread_hot_mine.gif', '', 0, 0, 2),
(114, 'topic_unread_locked', 'topic_unread_locked.gif', '', 0, 0, 2),
(115, 'topic_unread_locked_mine', 'topic_unread_locked_mine.gif', '', 0, 0, 2),
(116, 'sticky_read', 'sticky_read.gif', '', 0, 0, 2),
(117, 'sticky_read_mine', 'sticky_read_mine.gif', '', 0, 0, 2),
(118, 'sticky_read_locked', 'sticky_read_locked.gif', '', 0, 0, 2),
(119, 'sticky_read_locked_mine', 'sticky_read_locked_mine.gif', '', 0, 0, 2),
(120, 'sticky_unread', 'sticky_unread.gif', '', 0, 0, 2),
(121, 'sticky_unread_mine', 'sticky_unread_mine.gif', '', 0, 0, 2),
(122, 'sticky_unread_locked', 'sticky_unread_locked.gif', '', 0, 0, 2),
(123, 'sticky_unread_locked_mine', 'sticky_unread_locked_mine.gif', '', 0, 0, 2),
(124, 'announce_read', 'announce_read.gif', '', 0, 0, 2),
(125, 'announce_read_mine', 'announce_read_mine.gif', '', 0, 0, 2),
(126, 'announce_read_locked', 'announce_read_locked.gif', '', 0, 0, 2),
(127, 'announce_read_locked_mine', 'announce_read_locked_mine.gif', '', 0, 0, 2),
(128, 'announce_unread', 'announce_unread.gif', '', 0, 0, 2),
(129, 'announce_unread_mine', 'announce_unread_mine.gif', '', 0, 0, 2),
(130, 'announce_unread_locked', 'announce_unread_locked.gif', '', 0, 0, 2),
(131, 'announce_unread_locked_mine', 'announce_unread_locked_mine.gif', '', 0, 0, 2),
(132, 'global_read', 'announce_read.gif', '', 0, 0, 2),
(133, 'global_read_mine', 'announce_read_mine.gif', '', 0, 0, 2),
(134, 'global_read_locked', 'announce_read_locked.gif', '', 0, 0, 2),
(135, 'global_read_locked_mine', 'announce_read_locked_mine.gif', '', 0, 0, 2),
(136, 'global_unread', 'announce_unread.gif', '', 0, 0, 2),
(137, 'global_unread_mine', 'announce_unread_mine.gif', '', 0, 0, 2),
(138, 'global_unread_locked', 'announce_unread_locked.gif', '', 0, 0, 2),
(139, 'global_unread_locked_mine', 'announce_unread_locked_mine.gif', '', 0, 0, 2),
(140, 'pm_read', 'topic_read.gif', '', 0, 0, 2),
(141, 'pm_unread', 'topic_unread.gif', '', 0, 0, 2),
(142, 'icon_post_target', 'icon_post_target.gif', '', 0, 0, 2),
(143, 'icon_post_target_unread', 'icon_post_target_unread.gif', '', 0, 0, 2),
(144, 'icon_topic_attach', 'icon_topic_attach.gif', '', 0, 0, 2),
(145, 'icon_topic_latest', 'icon_topic_latest.gif', '', 0, 0, 2),
(146, 'icon_topic_newest', 'icon_topic_newest.gif', '', 0, 0, 2),
(147, 'icon_topic_reported', 'icon_topic_reported.gif', '', 0, 0, 2),
(148, 'icon_topic_unapproved', 'icon_topic_unapproved.gif', '', 0, 0, 2),
(149, 'icon_contact_aim', 'icon_contact_aim.gif', 'en', 0, 0, 2),
(150, 'icon_contact_email', 'icon_contact_email.gif', 'en', 0, 0, 2),
(151, 'icon_contact_icq', 'icon_contact_icq.gif', 'en', 0, 0, 2),
(152, 'icon_contact_jabber', 'icon_contact_jabber.gif', 'en', 0, 0, 2),
(153, 'icon_contact_msnm', 'icon_contact_msnm.gif', 'en', 0, 0, 2),
(154, 'icon_contact_pm', 'icon_contact_pm.gif', 'en', 0, 0, 2),
(155, 'icon_contact_yahoo', 'icon_contact_yahoo.gif', 'en', 0, 0, 2),
(156, 'icon_contact_www', 'icon_contact_www.gif', 'en', 0, 0, 2),
(157, 'icon_post_delete', 'icon_post_delete.gif', 'en', 0, 0, 2),
(158, 'icon_post_edit', 'icon_post_edit.gif', 'en', 0, 0, 2),
(159, 'icon_post_info', 'icon_post_info.gif', 'en', 0, 0, 2),
(160, 'icon_post_quote', 'icon_post_quote.gif', 'en', 0, 0, 2),
(161, 'icon_post_report', 'icon_post_report.gif', 'en', 0, 0, 2),
(162, 'icon_user_online', 'icon_user_online.gif', 'en', 0, 0, 2),
(163, 'icon_user_offline', 'icon_user_offline.gif', 'en', 0, 0, 2),
(164, 'icon_user_profile', 'icon_user_profile.gif', 'en', 0, 0, 2),
(165, 'icon_user_search', 'icon_user_search.gif', 'en', 0, 0, 2),
(166, 'icon_user_warn', 'icon_user_warn.gif', 'en', 0, 0, 2),
(167, 'button_pm_new', 'button_pm_new.gif', 'en', 0, 0, 2),
(168, 'button_pm_reply', 'button_pm_reply.gif', 'en', 0, 0, 2),
(169, 'button_topic_locked', 'button_topic_locked.gif', 'en', 0, 0, 2),
(170, 'button_topic_new', 'button_topic_new.gif', 'en', 0, 0, 2),
(171, 'button_topic_reply', 'button_topic_reply.gif', 'en', 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_styles_template`
--

CREATE TABLE IF NOT EXISTS `phpbb_styles_template` (
  `template_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `template_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `template_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `template_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'kNg=',
  `template_storedb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template_inherits_id` int(4) unsigned NOT NULL DEFAULT '0',
  `template_inherit_path` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `tmplte_nm` (`template_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `phpbb_styles_template`
--

INSERT INTO `phpbb_styles_template` (`template_id`, `template_name`, `template_copyright`, `template_path`, `bbcode_bitfield`, `template_storedb`, `template_inherits_id`, `template_inherit_path`) VALUES
(1, 'prosilver', '&copy; phpBB Group', 'prosilver', 'lNg=', 0, 0, ''),
(2, 'AnimeZone', '&copy; AnimeZone, 2007', 'AnimeZone', 'kNg=', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_styles_template_data`
--

CREATE TABLE IF NOT EXISTS `phpbb_styles_template_data` (
  `template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `template_filename` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `template_included` text COLLATE utf8_bin NOT NULL,
  `template_mtime` int(11) unsigned NOT NULL DEFAULT '0',
  `template_data` mediumtext COLLATE utf8_bin NOT NULL,
  KEY `tid` (`template_id`),
  KEY `tfn` (`template_filename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_styles_template_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_styles_theme`
--

CREATE TABLE IF NOT EXISTS `phpbb_styles_theme` (
  `theme_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `theme_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `theme_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `theme_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `theme_storedb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme_mtime` int(11) unsigned NOT NULL DEFAULT '0',
  `theme_data` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`theme_id`),
  UNIQUE KEY `theme_name` (`theme_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `phpbb_styles_theme`
--

INSERT INTO `phpbb_styles_theme` (`theme_id`, `theme_name`, `theme_copyright`, `theme_path`, `theme_storedb`, `theme_mtime`, `theme_data`) VALUES
(1, 'prosilver', '&copy; phpBB Group', 'prosilver', 1, 1355800486, 0x2f2a2020706870424220332e30205374796c652053686565740a202020202d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a095374796c65206e616d653a090970726f53696c7665720a094261736564206f6e207374796c653a0970726f53696c766572202874686973206973207468652064656661756c742070687042422033207374796c65290a094f726967696e616c20617574686f723a09737562426c7565202820687474703a2f2f7777772e737562426c75652e636f6d2f20290a094d6f6469666965642062793a09090a090a09436f7079726967687420323030362070687042422047726f7570202820687474703a2f2f7777772e70687062622e636f6d2f20290a202020202d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a2a2f0a0a2f2a2047656e6572616c2070726f53696c766572204d61726b7570205374796c65730d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0d0a0d0a2a207b0d0a092f2a2052657365742062726f77736572732064656661756c74206d617267696e2c2070616464696e6720616e6420666f6e742073697a6573202a2f0d0a096d617267696e3a20303b0d0a0970616464696e673a20303b0d0a7d0d0a0d0a68746d6c207b0d0a09666f6e742d73697a653a20313030253b0d0a092f2a20416c776179732073686f772061207363726f6c6c62617220666f722073686f7274207061676573202d2073746f707320746865206a756d70207768656e20746865207363726f6c6c62617220617070656172732e206e6f6e2d49452062726f7773657273202a2f0d0a096865696768743a20313030253b0d0a096d617267696e2d626f74746f6d3a203170783b0d0a7d0d0a0d0a626f6479207b0d0a092f2a20546578742d53697a696e67207769746820656d733a20687474703a2f2f7777772e636c61676e75742e636f6d2f626c6f672f3334382f202a2f0d0a09666f6e742d66616d696c793a2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0d0a09636f6c6f723a20233832383238323b0d0a096261636b67726f756e642d636f6c6f723a20234646464646463b0d0a092f2a666f6e742d73697a653a2036322e35253b09090920546869732073657473207468652064656661756c7420666f6e742073697a6520746f206265206571756976616c656e7420746f2031307078202a2f0d0a09666f6e742d73697a653a20313070783b0d0a096d617267696e3a20303b0d0a0970616464696e673a203132707820303b0d0a7d0d0a0d0a6831207b0d0a092f2a20466f72756d206e616d65202a2f0d0a09666f6e742d66616d696c793a2056657264616e612c2022547265627563686574204d53222c20417269616c2c2048656c7665746963612c2073616e732d73657269663b0d0a096d617267696e2d72696768743a2032303070783b0d0a09636f6c6f723a20234646464646463b0d0a096d617267696e2d746f703a20313570783b0d0a09666f6e742d7765696768743a20626f6c643b0d0a09666f6e742d73697a653a2032656d3b0d0a7d0d0a0d0a6832207b0d0a092f2a20466f72756d20686561646572207469746c6573202a2f0d0a09666f6e742d66616d696c793a2056657264616e612c2022547265627563686574204d53222c20417269616c2c2048656c7665746963612c2073616e732d73657269663b0d0a09666f6e742d7765696768743a206e6f726d616c3b0d0a09636f6c6f723a20233366336633663b0d0a09666f6e742d73697a653a2032656d3b0d0a096d617267696e3a20302e38656d203020302e32656d20303b0d0a7d0d0a0d0a68322e736f6c6f207b0d0a096d617267696e2d626f74746f6d3a2031656d3b0d0a7d0d0a0d0a6833207b0d0a092f2a205375622d686561646572732028616c736f207573656420617320706f737420686561646572732c2062757420646566696e6564206c6174657229202a2f0d0a09666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b0d0a09666f6e742d7765696768743a20626f6c643b0d0a09746578742d7472616e73666f726d3a207570706572636173653b0d0a09626f726465722d626f74746f6d3a2031707820736f6c696420234343434343433b0d0a096d617267696e2d626f74746f6d3a203370783b0d0a0970616464696e672d626f74746f6d3a203270783b0d0a09666f6e742d73697a653a20312e3035656d3b0d0a09636f6c6f723a20233938393839383b0d0a096d617267696e2d746f703a20323070783b0d0a7d0d0a0d0a6834207b0d0a092f2a20466f72756d20616e6420746f706963206c697374207469746c6573202a2f0d0a09666f6e742d66616d696c793a2056657264616e612c2022547265627563686574204d53222c2048656c7665746963612c20417269616c2c2053616e732d73657269663b0d0a09666f6e742d73697a653a20312e33656d3b0d0a7d0d0a0d0a70207b0d0a096c696e652d6865696768743a20312e33656d3b0d0a09666f6e742d73697a653a20312e31656d3b0d0a096d617267696e2d626f74746f6d3a20312e35656d3b0d0a7d0d0a0d0a696d67207b0d0a09626f726465722d77696474683a20303b0d0a7d0d0a0d0a6872207b0d0a092f2a20416c736f2073656520747765616b732e637373202a2f0d0a09626f726465723a2030206e6f6e6520234646464646463b0d0a09626f726465722d746f703a2031707820736f6c696420234343434343433b0d0a096865696768743a203170783b0d0a096d617267696e3a2035707820303b0d0a09646973706c61793a20626c6f636b3b0d0a09636c6561723a20626f74683b0d0a7d0d0a0d0a68722e646173686564207b0d0a09626f726465722d746f703a203170782064617368656420234343434343433b0d0a096d617267696e3a203130707820303b0d0a7d0d0a0d0a68722e64697669646572207b0d0a09646973706c61793a206e6f6e653b0d0a7d0d0a0d0a702e7269676874207b0d0a09746578742d616c69676e3a2072696768743b0d0a7d0d0a0d0a2f2a204d61696e20626c6f636b730d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0d0a2377726170207b0d0a0970616464696e673a203020323070783b0d0a096d696e2d77696474683a2036353070783b0d0a7d0d0a0d0a2373696d706c652d77726170207b0d0a0970616464696e673a2036707820313070783b0d0a7d0d0a0d0a23706167652d626f6479207b0d0a096d617267696e3a2034707820303b0d0a09636c6561723a20626f74683b0d0a7d0d0a0d0a23706167652d666f6f746572207b0d0a09636c6561723a20626f74683b0d0a7d0d0a0d0a23706167652d666f6f746572206833207b0d0a096d617267696e2d746f703a20323070783b0d0a7d0d0a0d0a236c6f676f207b0d0a09666c6f61743a206c6566743b0d0a0977696474683a206175746f3b0d0a0970616464696e673a20313070782031337078203020313070783b0d0a7d0d0a0d0a61236c6f676f3a686f766572207b0d0a09746578742d6465636f726174696f6e3a206e6f6e653b0d0a7d0d0a0d0a2f2a2053656172636820626f780d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0d0a237365617263682d626f78207b0d0a09636f6c6f723a20234646464646463b0d0a09706f736974696f6e3a2072656c61746976653b0d0a096d617267696e2d746f703a20333070783b0d0a096d617267696e2d72696768743a203570783b0d0a09646973706c61793a20626c6f636b3b0d0a09666c6f61743a2072696768743b0d0a09746578742d616c69676e3a2072696768743b0d0a0977686974652d73706163653a206e6f777261703b202f2a20466f72204f70657261202a2f0d0a7d0d0a0d0a2e72746c20237365617263682d626f78207b0d0a09666c6f61743a206c6566743b0d0a09746578742d616c69676e3a206c6566743b0d0a096d617267696e2d72696768743a20303b0d0a096d617267696e2d6c6566743a203570783b0d0a7d0d0a0d0a237365617263682d626f7820236b6579776f726473207b0d0a0977696474683a20393570783b0d0a096261636b67726f756e642d636f6c6f723a20234646463b0d0a7d0d0a0d0a237365617263682d626f7820696e707574207b0d0a09626f726465723a2031707820736f6c696420236230623062303b0d0a7d0d0a0d0a2f2a202e627574746f6e31207374796c6520646566696e6564206c617465722c206a75737420612066657720747765616b7320666f72207468652073656172636820627574746f6e2076657273696f6e202a2f0d0a237365617263682d626f7820696e7075742e627574746f6e31207b0d0a0970616464696e673a20317078203570783b0d0a7d0d0a0d0a237365617263682d626f78206c69207b0d0a09746578742d616c69676e3a2072696768743b0d0a096d617267696e2d746f703a203470783b0d0a7d0d0a0d0a237365617263682d626f7820696d67207b0d0a09766572746963616c2d616c69676e3a206d6964646c653b0d0a096d617267696e2d72696768743a203370783b0d0a7d0d0a0d0a2f2a2053697465206465736372697074696f6e20616e64206c6f676f202a2f0d0a23736974652d6465736372697074696f6e207b0d0a09666c6f61743a206c6566743b0d0a0977696474683a203730253b0d0a7d0d0a0d0a2e72746c2023736974652d6465736372697074696f6e207b0d0a09666c6f61743a2072696768743b0d0a7d0d0a0d0a23736974652d6465736372697074696f6e206831207b0d0a096d617267696e2d72696768743a20303b0d0a7d0d0a0d0a2f2a20526f756e6420636f726e6572656420626f78657320616e64206261636b67726f756e64730d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0d0a2e686561646572626172207b0d0a096261636b67726f756e643a2023656265626562206e6f6e65207265706561742d78203020303b0d0a09636f6c6f723a20234646464646463b0d0a096d617267696e2d626f74746f6d3a203470783b0d0a0970616464696e673a2030203570783b0d0a7d0d0a0d0a2e6e6176626172207b0d0a096261636b67726f756e642d636f6c6f723a20236562656265623b0d0a0970616464696e673a203020313070783b0d0a7d0d0a0d0a2e666f72616267207b0d0a096261636b67726f756e643a2023623162316231206e6f6e65207265706561742d78203020303b0d0a096d617267696e2d626f74746f6d3a203470783b0d0a0970616464696e673a2030203570783b0d0a09636c6561723a20626f74683b0d0a7d0d0a0d0a2e666f72756d6267207b0d0a096261636b67726f756e643a2023656265626562206e6f6e65207265706561742d78203020303b0d0a096d617267696e2d626f74746f6d3a203470783b0d0a0970616464696e673a2030203570783b0d0a09636c6561723a20626f74683b0d0a7d0d0a0d0a2e70616e656c207b0d0a096d617267696e2d626f74746f6d3a203470783b0d0a0970616464696e673a203020313070783b0d0a096261636b67726f756e642d636f6c6f723a20236633663366333b0d0a09636f6c6f723a20233366336633663b0d0a7d0d0a0d0a2e706f7374207b0d0a0970616464696e673a203020313070783b0d0a096d617267696e2d626f74746f6d3a203470783b0d0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0d0a096261636b67726f756e642d706f736974696f6e3a203130302520303b0d0a7d0d0a0d0a2e706f73743a746172676574202e636f6e74656e74207b0d0a09636f6c6f723a20233030303030303b0d0a7d0d0a0d0a2e706f73743a7461726765742068332061207b0d0a09636f6c6f723a20233030303030303b0d0a7d0d0a0d0a2e626731097b206261636b67726f756e642d636f6c6f723a20236637663766373b7d0d0a2e626732097b206261636b67726f756e642d636f6c6f723a20236632663266323b207d0d0a2e626733097b206261636b67726f756e642d636f6c6f723a20236562656265623b207d0d0a0d0a2e726f776267207b0d0a096d617267696e3a203570782035707820327078203570783b0d0a7d0d0a0d0a2e756370726f776267207b0d0a096261636b67726f756e642d636f6c6f723a20236532653265323b0d0a7d0d0a0d0a2e6669656c64736267207b0d0a092f2a626f726465723a20317078202344424445453220736f6c69643b2a2f0d0a096261636b67726f756e642d636f6c6f723a20236561656165613b0d0a7d0d0a0d0a7370616e2e636f726e6572732d746f702c207370616e2e636f726e6572732d626f74746f6d2c207370616e2e636f726e6572732d746f70207370616e2c207370616e2e636f726e6572732d626f74746f6d207370616e207b0d0a09666f6e742d73697a653a203170783b0d0a096c696e652d6865696768743a203170783b0d0a09646973706c61793a20626c6f636b3b0d0a096865696768743a203570783b0d0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0d0a7d0d0a0d0a7370616e2e636f726e6572732d746f70207b0d0a096261636b67726f756e642d696d6167653a206e6f6e653b0d0a096261636b67726f756e642d706f736974696f6e3a203020303b0d0a096d617267696e3a2030202d3570783b0d0a7d0d0a0d0a7370616e2e636f726e6572732d746f70207370616e207b0d0a096261636b67726f756e642d696d6167653a206e6f6e653b0d0a096261636b67726f756e642d706f736974696f6e3a203130302520303b0d0a7d0d0a0d0a7370616e2e636f726e6572732d626f74746f6d207b0d0a096261636b67726f756e642d696d6167653a206e6f6e653b0d0a096261636b67726f756e642d706f736974696f6e3a203020313030253b0d0a096d617267696e3a2030202d3570783b0d0a09636c6561723a20626f74683b0d0a7d0d0a0d0a7370616e2e636f726e6572732d626f74746f6d207370616e207b0d0a096261636b67726f756e642d696d6167653a206e6f6e653b0d0a096261636b67726f756e642d706f736974696f6e3a203130302520313030253b0d0a7d0d0a0d0a2e686561646267207370616e2e636f726e6572732d626f74746f6d207b0d0a096d617267696e2d626f74746f6d3a202d3170783b0d0a7d0d0a0d0a2e706f7374207370616e2e636f726e6572732d746f702c202e706f7374207370616e2e636f726e6572732d626f74746f6d2c202e70616e656c207370616e2e636f726e6572732d746f702c202e70616e656c207370616e2e636f726e6572732d626f74746f6d2c202e6e6176626172207370616e2e636f726e6572732d746f702c202e6e6176626172207370616e2e636f726e6572732d626f74746f6d207b0d0a096d617267696e3a2030202d313070783b0d0a7d0d0a0d0a2e72756c6573207370616e2e636f726e6572732d746f70207b0d0a096d617267696e3a2030202d3130707820357078202d313070783b0d0a7d0d0a0d0a2e72756c6573207370616e2e636f726e6572732d626f74746f6d207b0d0a096d617267696e3a20357078202d313070782030202d313070783b0d0a7d0d0a0d0a2f2a20486f72697a6f6e74616c206c697374730d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0d0a756c2e6c696e6b6c697374207b0d0a09646973706c61793a20626c6f636b3b0d0a096d617267696e3a20303b0d0a7d0d0a0d0a756c2e6c696e6b6c697374206c69207b0d0a09646973706c61793a20626c6f636b3b0d0a096c6973742d7374796c652d747970653a206e6f6e653b0d0a09666c6f61743a206c6566743b0d0a0977696474683a206175746f3b0d0a096d617267696e2d72696768743a203570783b0d0a09666f6e742d73697a653a20312e31656d3b0d0a096c696e652d6865696768743a20322e32656d3b0d0a7d0d0a0d0a756c2e6c696e6b6c697374206c692e7269676874736964652c20702e726967687473696465207b0d0a09666c6f61743a2072696768743b0d0a096d617267696e2d72696768743a20303b0d0a096d617267696e2d6c6566743a203570783b0d0a09746578742d616c69676e3a2072696768743b0d0a7d0d0a0d0a756c2e6e61766c696e6b73207b0d0a0970616464696e672d626f74746f6d3a203170783b0d0a096d617267696e2d626f74746f6d3a203170783b0d0a09626f726465722d626f74746f6d3a2031707820736f6c696420234646464646463b0d0a09666f6e742d7765696768743a20626f6c643b0d0a7d0d0a0d0a756c2e6c65667473696465207b0d0a09666c6f61743a206c6566743b0d0a096d617267696e2d6c6566743a20303b0d0a096d617267696e2d72696768743a203570783b0d0a09746578742d616c69676e3a206c6566743b0d0a7d0d0a0d0a756c2e726967687473696465207b0d0a09666c6f61743a2072696768743b0d0a096d617267696e2d6c6566743a203570783b0d0a096d617267696e2d72696768743a202d3570783b0d0a09746578742d616c69676e3a2072696768743b0d0a7d0d0a0d0a2f2a205461626c65207374796c65730d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0d0a7461626c652e7461626c6531207b0d0a092f2a2053656520747765616b732e637373202a2f0d0a7d0d0a0d0a237563702d6d61696e207461626c652e7461626c6531207b0d0a0970616464696e673a203270783b0d0a7d0d0a0d0a7461626c652e7461626c6531207468656164207468207b0d0a09666f6e742d7765696768743a206e6f726d616c3b0d0a09746578742d7472616e73666f726d3a207570706572636173653b0d0a09636f6c6f723a20234646464646463b0d0a096c696e652d6865696768743a20312e33656d3b0d0a09666f6e742d73697a653a2031656d3b0d0a0970616464696e673a2030203020347078203370783b0d0a7d0d0a0d0a7461626c652e7461626c6531207468656164207468207370616e207b0d0a0970616464696e672d6c6566743a203770783b0d0a7d0d0a0d0a7461626c652e7461626c65312074626f6479207472207b0d0a09626f726465723a2031707820736f6c696420236366636663663b0d0a7d0d0a0d0a7461626c652e7461626c65312074626f64792074723a686f7665722c207461626c652e7461626c65312074626f64792074722e686f766572207b0d0a096261636b67726f756e642d636f6c6f723a20236636663666363b0d0a09636f6c6f723a20233030303b0d0a7d0d0a0d0a7461626c652e7461626c6531207464207b0d0a09636f6c6f723a20233661366136613b0d0a09666f6e742d73697a653a20312e31656d3b0d0a7d0d0a0d0a7461626c652e7461626c65312074626f6479207464207b0d0a0970616464696e673a203570783b0d0a09626f726465722d746f703a2031707820736f6c696420234641464146413b0d0a7d0d0a0d0a7461626c652e7461626c65312074626f6479207468207b0d0a0970616464696e673a203570783b0d0a09626f726465722d626f74746f6d3a2031707820736f6c696420233030303030303b0d0a09746578742d616c69676e3a206c6566743b0d0a09636f6c6f723a20233333333333333b0d0a096261636b67726f756e642d636f6c6f723a20234646464646463b0d0a7d0d0a0d0a2f2a20537065636966696320636f6c756d6e207374796c6573202a2f0d0a7461626c652e7461626c6531202e6e616d6509097b20746578742d616c69676e3a206c6566743b207d0d0a7461626c652e7461626c6531202e706f73747309097b20746578742d616c69676e3a2063656e7465722021696d706f7274616e743b2077696474683a2037253b207d0d0a7461626c652e7461626c6531202e6a6f696e6564097b20746578742d616c69676e3a206c6566743b2077696474683a203135253b207d0d0a7461626c652e7461626c6531202e616374697665097b20746578742d616c69676e3a206c6566743b2077696474683a203135253b207d0d0a7461626c652e7461626c6531202e6d61726b09097b20746578742d616c69676e3a2063656e7465723b2077696474683a2037253b207d0d0a7461626c652e7461626c6531202e696e666f09097b20746578742d616c69676e3a206c6566743b2077696474683a203330253b207d0d0a7461626c652e7461626c6531202e696e666f20646976097b2077696474683a20313030253b2077686974652d73706163653a206e6f777261703b206f766572666c6f773a2068696464656e3b207d0d0a7461626c652e7461626c6531202e6175746f636f6c097b206c696e652d6865696768743a2032656d3b2077686974652d73706163653a206e6f777261703b207d0d0a7461626c652e7461626c6531207468656164202e6175746f636f6c207b2070616464696e672d6c6566743a2031656d3b207d0d0a0d0a7461626c652e7461626c6531207370616e2e72616e6b2d696d67207b0d0a09666c6f61743a2072696768743b0d0a0977696474683a206175746f3b0d0a7d0d0a0d0a7461626c652e696e666f207464207b0d0a0970616464696e673a203370783b0d0a7d0d0a0d0a7461626c652e696e666f2074626f6479207468207b0d0a0970616464696e673a203370783b0d0a09746578742d616c69676e3a2072696768743b0d0a09766572746963616c2d616c69676e3a20746f703b0d0a09636f6c6f723a20233030303030303b0d0a09666f6e742d7765696768743a206e6f726d616c3b0d0a7d0d0a0d0a2e666f72756d6267207461626c652e7461626c6531207b0d0a096d617267696e3a2030202d327078202d317078202d3170783b0d0a7d0d0a0d0a2f2a204d697363206c61796f7574207374796c65730d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0d0a2f2a20636f6c756d6e5b312d325d207374796c65732061726520636f6e7461696e65727320666f722074776f20636f6c756d6e206c61796f757473200d0a202020416c736f2073656520747765616b732e637373202a2f0d0a2e636f6c756d6e31207b0d0a09666c6f61743a206c6566743b0d0a09636c6561723a206c6566743b0d0a0977696474683a203439253b0d0a7d0d0a0d0a2e636f6c756d6e32207b0d0a09666c6f61743a2072696768743b0d0a09636c6561723a2072696768743b0d0a0977696474683a203439253b0d0a7d0d0a0d0a2f2a2047656e6572616c20636c617373657320666f7220706c6163696e6720666c6f6174696e6720626c6f636b73202a2f0d0a2e6c6566742d626f78207b0d0a09666c6f61743a206c6566743b0d0a0977696474683a206175746f3b0d0a09746578742d616c69676e3a206c6566743b0d0a7d0d0a0d0a2e72696768742d626f78207b0d0a09666c6f61743a2072696768743b0d0a0977696474683a206175746f3b0d0a09746578742d616c69676e3a2072696768743b0d0a7d0d0a0d0a646c2e64657461696c73207b0d0a092f2a666f6e742d66616d696c793a2056657264616e612c20224c7563696461204772616e6465222c2048656c7665746963612c20417269616c2c2073616e732d73657269663b2a2f0d0a09666f6e742d73697a653a20312e31656d3b0d0a7d0d0a0d0a646c2e64657461696c73206474207b0d0a09666c6f61743a206c6566743b0d0a09636c6561723a206c6566743b0d0a0977696474683a203330253b0d0a09746578742d616c69676e3a2072696768743b0d0a09636f6c6f723a20233030303030303b0d0a09646973706c61793a20626c6f636b3b0d0a7d0d0a0d0a646c2e64657461696c73206464207b0d0a096d617267696e2d6c6566743a20303b0d0a0970616464696e672d6c6566743a203570783b0d0a096d617267696e2d626f74746f6d3a203570783b0d0a09636f6c6f723a20233832383238323b0d0a09666c6f61743a206c6566743b0d0a0977696474683a203635253b0d0a7d0d0a0d0a2f2a20506167696e6174696f6e0d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0d0a2e706167696e6174696f6e207b0d0a096865696768743a2031253b202f2a20494520747765616b2028686f6c6c79206861636b29202a2f0d0a0977696474683a206175746f3b0d0a09746578742d616c69676e3a2072696768743b0d0a096d617267696e2d746f703a203570783b0d0a09666c6f61743a2072696768743b0d0a7d0d0a0d0a2e706167696e6174696f6e207370616e2e706167652d736570207b0d0a09646973706c61793a6e6f6e653b0d0a7d0d0a0d0a6c692e706167696e6174696f6e207b0d0a096d617267696e2d746f703a20303b0d0a7d0d0a0d0a2e706167696e6174696f6e207374726f6e672c202e706167696e6174696f6e2062207b0d0a09666f6e742d7765696768743a206e6f726d616c3b0d0a7d0d0a0d0a2e706167696e6174696f6e207370616e207374726f6e67207b0d0a0970616464696e673a2030203270783b0d0a096d617267696e3a2030203270783b0d0a09666f6e742d7765696768743a206e6f726d616c3b0d0a09636f6c6f723a20234646464646463b0d0a096261636b67726f756e642d636f6c6f723a20236266626662663b0d0a09626f726465723a2031707820736f6c696420236266626662663b0d0a09666f6e742d73697a653a20302e39656d3b0d0a7d0d0a0d0a2e706167696e6174696f6e207370616e20612c202e706167696e6174696f6e207370616e20613a6c696e6b2c202e706167696e6174696f6e207370616e20613a766973697465642c202e706167696e6174696f6e207370616e20613a616374697665207b0d0a09666f6e742d7765696768743a206e6f726d616c3b0d0a09746578742d6465636f726174696f6e3a206e6f6e653b0d0a09636f6c6f723a20233734373437343b0d0a096d617267696e3a2030203270783b0d0a0970616464696e673a2030203270783b0d0a096261636b67726f756e642d636f6c6f723a20236565656565653b0d0a09626f726465723a2031707820736f6c696420236261626162613b0d0a09666f6e742d73697a653a20302e39656d3b0d0a096c696e652d6865696768743a20312e35656d3b0d0a7d0d0a0d0a2e706167696e6174696f6e207370616e20613a686f766572207b0d0a09626f726465722d636f6c6f723a20236432643264323b0d0a096261636b67726f756e642d636f6c6f723a20236432643264323b0d0a09636f6c6f723a20234646463b0d0a09746578742d6465636f726174696f6e3a206e6f6e653b0d0a7d0d0a0d0a2e706167696e6174696f6e20696d67207b0d0a09766572746963616c2d616c69676e3a206d6964646c653b0d0a7d0d0a0d0a2f2a20506167696e6174696f6e20696e2076696577666f72756d20666f72206d756c74697061676520746f70696373202a2f0d0a2e726f77202e706167696e6174696f6e207b0d0a09646973706c61793a20626c6f636b3b0d0a09666c6f61743a2072696768743b0d0a0977696474683a206175746f3b0d0a096d617267696e2d746f703a20303b0d0a0970616464696e673a2031707820302031707820313570783b0d0a09666f6e742d73697a653a20302e39656d3b0d0a096261636b67726f756e643a206e6f6e65203020353025206e6f2d7265706561743b0d0a7d0d0a0d0a2e726f77202e706167696e6174696f6e207370616e20612c206c692e706167696e6174696f6e207370616e2061207b0d0a096261636b67726f756e642d636f6c6f723a20234646464646463b0d0a7d0d0a0d0a2e726f77202e706167696e6174696f6e207370616e20613a686f7665722c206c692e706167696e6174696f6e207370616e20613a686f766572207b0d0a096261636b67726f756e642d636f6c6f723a20236432643264323b0d0a7d0d0a0d0a2f2a204d697363656c6c616e656f7573207374796c65730d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0d0a23666f72756d2d7065726d697373696f6e73207b0d0a09666c6f61743a2072696768743b0d0a0977696474683a206175746f3b0d0a0970616464696e672d6c6566743a203570783b0d0a096d617267696e2d6c6566743a203570783b0d0a096d617267696e2d746f703a20313070783b0d0a09746578742d616c69676e3a2072696768743b0d0a7d0d0a0d0a2e636f70797269676874207b0d0a0970616464696e673a203570783b0d0a09746578742d616c69676e3a2063656e7465723b0d0a09636f6c6f723a20233535353535353b0d0a7d0d0a0d0a2e736d616c6c207b0d0a09666f6e742d73697a653a20302e39656d2021696d706f7274616e743b0d0a7d0d0a0d0a2e7469746c657370616365207b0d0a096d617267696e2d626f74746f6d3a20313570783b0d0a7d0d0a0d0a2e6865616465727370616365207b0d0a096d617267696e2d746f703a20323070783b0d0a7d0d0a0d0a2e6572726f72207b0d0a09636f6c6f723a20236263626362633b0d0a09666f6e742d7765696768743a20626f6c643b0d0a09666f6e742d73697a653a2031656d3b0d0a7d0d0a0d0a2e7265706f72746564207b0d0a096261636b67726f756e642d636f6c6f723a20236637663766373b0d0a7d0d0a0d0a6c692e7265706f727465643a686f766572207b0d0a096261636b67726f756e642d636f6c6f723a20236563656365633b0d0a7d0d0a0d0a6469762e72756c6573207b0d0a096261636b67726f756e642d636f6c6f723a20236563656365633b0d0a09636f6c6f723a20236263626362633b0d0a0970616464696e673a203020313070783b0d0a096d617267696e3a203130707820303b0d0a09666f6e742d73697a653a20312e31656d3b0d0a7d0d0a0d0a6469762e72756c657320756c207b0d0a096d617267696e2d6c6566743a20323070783b0d0a7d0d0a0d0a702e72756c6573207b0d0a096261636b67726f756e642d636f6c6f723a20236563656365633b0d0a096261636b67726f756e642d696d6167653a206e6f6e653b0d0a0970616464696e673a203570783b0d0a7d0d0a0d0a702e72756c657320696d67207b0d0a09766572746963616c2d616c69676e3a206d6964646c653b0d0a7d0d0a0d0a702e72756c65732061207b0d0a09766572746963616c2d616c69676e3a206d6964646c653b0d0a09636c6561723a20626f74683b0d0a7d0d0a0d0a23746f70207b0d0a09706f736974696f6e3a206162736f6c7574653b0d0a09746f703a202d323070783b0d0a7d0d0a0d0a2e636c656172207b0d0a09646973706c61793a20626c6f636b3b0d0a09636c6561723a20626f74683b0d0a09666f6e742d73697a653a203170783b0d0a096c696e652d6865696768743a203170783b0d0a096261636b67726f756e643a207472616e73706172656e743b0d0a7d0a2f2a2070726f53696c766572204c696e6b205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a613a6c696e6b097b20636f6c6f723a20233839383938393b20746578742d6465636f726174696f6e3a206e6f6e653b207d0a613a76697369746564097b20636f6c6f723a20233839383938393b20746578742d6465636f726174696f6e3a206e6f6e653b207d0a613a686f766572097b20636f6c6f723a20236433643364333b20746578742d6465636f726174696f6e3a20756e6465726c696e653b207d0a613a616374697665097b20636f6c6f723a20236432643264323b20746578742d6465636f726174696f6e3a206e6f6e653b207d0a0a2f2a20436f6c6f7572656420757365726e616d6573202a2f0a2e757365726e616d652d636f6c6f75726564207b0a09666f6e742d7765696768743a20626f6c643b0a09646973706c61793a20696e6c696e652021696d706f7274616e743b0a0970616464696e673a20302021696d706f7274616e743b0a7d0a0a2f2a204c696e6b73206f6e206772616469656e74206261636b67726f756e6473202a2f0a237365617263682d626f7820613a6c696e6b2c202e6e6176626720613a6c696e6b2c202e666f72756d6267202e68656164657220613a6c696e6b2c202e666f72616267202e68656164657220613a6c696e6b2c20746820613a6c696e6b207b0a09636f6c6f723a20234646464646463b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a237365617263682d626f7820613a766973697465642c202e6e6176626720613a766973697465642c202e666f72756d6267202e68656164657220613a766973697465642c202e666f72616267202e68656164657220613a766973697465642c20746820613a76697369746564207b0a09636f6c6f723a20234646464646463b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a237365617263682d626f7820613a686f7665722c202e6e6176626720613a686f7665722c202e666f72756d6267202e68656164657220613a686f7665722c202e666f72616267202e68656164657220613a686f7665722c20746820613a686f766572207b0a09636f6c6f723a20236666666666663b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b0a7d0a0a237365617263682d626f7820613a6163746976652c202e6e6176626720613a6163746976652c202e666f72756d6267202e68656164657220613a6163746976652c202e666f72616267202e68656164657220613a6163746976652c20746820613a616374697665207b0a09636f6c6f723a20236666666666663b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2f2a204c696e6b7320666f7220666f72756d2f746f706963206c69737473202a2f0a612e666f72756d7469746c65207b0a09666f6e742d66616d696c793a2056657264616e612c2022547265627563686574204d53222c2048656c7665746963612c20417269616c2c2053616e732d73657269663b0a09666f6e742d73697a653a20312e32656d3b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233839383938393b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2f2a20612e666f72756d7469746c653a76697369746564207b20636f6c6f723a20233839383938393b207d202a2f0a0a612e666f72756d7469746c653a686f766572207b0a09636f6c6f723a20236263626362633b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b0a7d0a0a612e666f72756d7469746c653a616374697665207b0a09636f6c6f723a20233839383938393b0a7d0a0a612e746f7069637469746c65207b0a09666f6e742d66616d696c793a2056657264616e612c2022547265627563686574204d53222c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d73697a653a20312e32656d3b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233839383938393b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2f2a20612e746f7069637469746c653a76697369746564207b20636f6c6f723a20236432643264323b207d202a2f0a0a612e746f7069637469746c653a686f766572207b0a09636f6c6f723a20236263626362633b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b0a7d0a0a612e746f7069637469746c653a616374697665207b0a09636f6c6f723a20233839383938393b0a7d0a0a2f2a20506f737420626f6479206c696e6b73202a2f0a2e706f73746c696e6b207b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09636f6c6f723a20236432643264323b0a09626f726465722d626f74746f6d3a2031707820736f6c696420236432643264323b0a0970616464696e672d626f74746f6d3a20303b0a7d0a0a2e706f73746c696e6b3a76697369746564207b0a09636f6c6f723a20236264626462643b0a09626f726465722d626f74746f6d2d7374796c653a20646f747465643b0a09626f726465722d626f74746f6d2d636f6c6f723a20233636363636363b0a7d0a0a2e706f73746c696e6b3a616374697665207b0a09636f6c6f723a20236432643264323b0a7d0a0a2e706f73746c696e6b3a686f766572207b0a096261636b67726f756e642d636f6c6f723a20236636663666363b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09636f6c6f723a20233430343034303b0a7d0a0a2e7369676e617475726520612c202e7369676e617475726520613a766973697465642c202e7369676e617475726520613a6163746976652c202e7369676e617475726520613a686f766572207b0a09626f726465723a206e6f6e653b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e743b0a7d0a0a2f2a2050726f66696c65206c696e6b73202a2f0a2e706f737470726f66696c6520613a6c696e6b2c202e706f737470726f66696c6520613a6163746976652c202e706f737470726f66696c6520613a766973697465642c202e706f737470726f66696c652064742e617574686f722061207b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233839383938393b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2e706f737470726f66696c6520613a686f7665722c202e706f737470726f66696c652064742e617574686f7220613a686f766572207b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b0a09636f6c6f723a20236433643364333b0a7d0a0a0a2f2a2050726f66696c6520736561726368726573756c7473202a2f090a2e736561726368202e706f737470726f66696c652061207b0a09636f6c6f723a20233839383938393b0a09746578742d6465636f726174696f6e3a206e6f6e653b200a09666f6e742d7765696768743a206e6f726d616c3b0a7d0a0a2e736561726368202e706f737470726f66696c6520613a686f766572207b0a09636f6c6f723a20236433643364333b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b200a7d0a0a2f2a204261636b20746f20746f70206f662070616765202a2f0a2e6261636b32746f70207b0a09636c6561723a20626f74683b0a096865696768743a20313170783b0a09746578742d616c69676e3a2072696768743b0a7d0a0a612e746f70207b0a096261636b67726f756e643a206e6f6e65206e6f2d72657065617420746f70206c6566743b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a0977696474683a207b494d475f49434f4e5f4241434b5f544f505f57494454487d70783b0a096865696768743a207b494d475f49434f4e5f4241434b5f544f505f4845494748547d70783b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a2072696768743b0a096f766572666c6f773a2068696464656e3b0a096c65747465722d73706163696e673a203130303070783b0a09746578742d696e64656e743a20313170783b0a7d0a0a612e746f7032207b0a096261636b67726f756e643a206e6f6e65206e6f2d7265706561742030203530253b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a0970616464696e672d6c6566743a20313570783b0a7d0a0a2f2a204172726f77206c696e6b7320202a2f0a612e757009097b206261636b67726f756e643a206e6f6e65206e6f2d726570656174206c6566742063656e7465723b207d0a612e646f776e09097b206261636b67726f756e643a206e6f6e65206e6f2d7265706561742072696768742063656e7465723b207d0a612e6c65667409097b206261636b67726f756e643a206e6f6e65206e6f2d72657065617420337078203630253b207d0a612e726967687409097b206261636b67726f756e643a206e6f6e65206e6f2d72657065617420393525203630253b207d0a0a612e75702c20612e75703a6c696e6b2c20612e75703a6163746976652c20612e75703a76697369746564207b0a0970616464696e672d6c6566743a20313070783b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09626f726465722d626f74746f6d2d77696474683a20303b0a7d0a0a612e75703a686f766572207b0a096261636b67726f756e642d706f736974696f6e3a206c65667420746f703b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e743b0a7d0a0a612e646f776e2c20612e646f776e3a6c696e6b2c20612e646f776e3a6163746976652c20612e646f776e3a76697369746564207b0a0970616464696e672d72696768743a20313070783b0a7d0a0a612e646f776e3a686f766572207b0a096261636b67726f756e642d706f736974696f6e3a20726967687420626f74746f6d3b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a612e6c6566742c20612e6c6566743a6163746976652c20612e6c6566743a76697369746564207b0a0970616464696e672d6c6566743a20313270783b0a7d0a0a612e6c6566743a686f766572207b0a09636f6c6f723a20236432643264323b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a2030203630253b0a7d0a0a612e72696768742c20612e72696768743a6163746976652c20612e72696768743a76697369746564207b0a0970616464696e672d72696768743a20313270783b0a7d0a0a612e72696768743a686f766572207b0a09636f6c6f723a20236432643264323b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a2031303025203630253b0a7d0a2f2a2070726f53696c76657220436f6e74656e74205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a756c2e746f7069636c697374207b0a09646973706c61793a20626c6f636b3b0a096c6973742d7374796c652d747970653a206e6f6e653b0a096d617267696e3a20303b0a7d0a0a756c2e666f72756d73207b0a096261636b67726f756e643a2023663966396639206e6f6e65207265706561742d78203020303b0a7d0a0a756c2e746f7069636c697374206c69207b0a09646973706c61793a20626c6f636b3b0a096c6973742d7374796c652d747970653a206e6f6e653b0a09636f6c6f723a20233737373737373b0a096d617267696e3a20303b0a7d0a0a756c2e746f7069636c69737420646c207b0a09706f736974696f6e3a2072656c61746976653b0a7d0a0a756c2e746f7069636c697374206c692e726f7720646c207b0a0970616464696e673a2032707820303b0a7d0a0a756c2e746f7069636c697374206474207b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a206c6566743b0a0977696474683a203530253b0a09666f6e742d73697a653a20312e31656d3b0a0970616464696e672d6c6566743a203570783b0a0970616464696e672d72696768743a203570783b0a7d0a0a756c2e746f7069636c697374206464207b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a206c6566743b0a09626f726465722d6c6566743a2031707820736f6c696420234646464646463b0a0970616464696e673a2034707820303b0a7d0a0a756c2e746f7069636c6973742064666e207b0a092f2a204c6162656c7320666f7220706f73742f7669657720636f756e7473202a2f0a09646973706c61793a206e6f6e653b0a7d0a0a756c2e746f7069636c697374206c692e726f7720647420612e737562666f72756d207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a2030203530253b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a09706f736974696f6e3a2072656c61746976653b0a0977686974652d73706163653a206e6f777261703b0a0970616464696e673a20302030203020313270783b0a7d0a0a2e666f72756d2d696d616765207b0a09666c6f61743a206c6566743b0a0970616464696e672d746f703a203570783b0a096d617267696e2d72696768743a203570783b0a7d0a0a6c692e726f77207b0a09626f726465722d746f703a2031707820736f6c696420234646464646463b0a09626f726465722d626f74746f6d3a2031707820736f6c696420233866386638663b0a7d0a0a6c692e726f77207374726f6e67207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20233030303030303b0a7d0a0a6c692e726f773a686f766572207b0a096261636b67726f756e642d636f6c6f723a20236636663666363b0a7d0a0a6c692e726f773a686f766572206464207b0a09626f726465722d6c6566742d636f6c6f723a20234343434343433b0a7d0a0a6c692e6865616465722064742c206c692e686561646572206464207b0a096c696e652d6865696768743a2031656d3b0a09626f726465722d6c6566742d77696474683a20303b0a096d617267696e3a2032707820302034707820303b0a09636f6c6f723a20234646464646463b0a0970616464696e672d746f703a203270783b0a0970616464696e672d626f74746f6d3a203270783b0a09666f6e742d73697a653a2031656d3b0a09666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09746578742d7472616e73666f726d3a207570706572636173653b0a7d0a0a6c692e686561646572206474207b0a09666f6e742d7765696768743a20626f6c643b0a7d0a0a6c692e686561646572206464207b0a096d617267696e2d6c6566743a203170783b0a7d0a0a6c692e68656164657220646c2e69636f6e207b0a096d696e2d6865696768743a20303b0a7d0a0a6c692e68656164657220646c2e69636f6e206474207b0a092f2a20547765616b20666f72206865616465727320616c69676e6d656e74207768656e20666f6c6465722069636f6e2075736564202a2f0a0970616464696e672d6c6566743a20303b0a0970616464696e672d72696768743a20353070783b0a7d0a0a2f2a20466f72756d206c69737420636f6c756d6e207374796c6573202a2f0a646c2e69636f6e207b0a096d696e2d6865696768743a20333570783b0a096261636b67726f756e642d706f736974696f6e3a2031307078203530253b09092f2a20506f736974696f6e206f6620666f6c6465722069636f6e202a2f0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a7d0a0a646c2e69636f6e206474207b0a0970616464696e672d6c6566743a20343570783b09090909092f2a20537061636520666f7220666f6c6465722069636f6e202a2f0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a096261636b67726f756e642d706f736974696f6e3a20357078203935253b09092f2a20506f736974696f6e206f6620746f7069632069636f6e202a2f0a7d0a0a64642e706f7374732c2064642e746f706963732c2064642e7669657773207b0a0977696474683a2038253b0a09746578742d616c69676e3a2063656e7465723b0a096c696e652d6865696768743a20322e32656d3b0a09666f6e742d73697a653a20312e32656d3b0a7d0a0a64642e6c617374706f7374207b0a0977696474683a203235253b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a64642e7265646972656374207b0a09666f6e742d73697a653a20312e31656d3b0a096c696e652d6865696768743a20322e35656d3b0a7d0a0a64642e6d6f6465726174696f6e207b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a64642e6c617374706f7374207370616e2c20756c2e746f7069636c6973742064642e7365617263686279207370616e2c20756c2e746f7069636c6973742064642e696e666f207370616e2c20756c2e746f7069636c6973742064642e74696d65207370616e2c2064642e7265646972656374207370616e2c2064642e6d6f6465726174696f6e207370616e207b0a09646973706c61793a20626c6f636b3b0a0970616464696e672d6c6566743a203570783b0a7d0a0a64642e74696d65207b0a0977696474683a206175746f3b0a096c696e652d6865696768743a20323030253b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a64642e6578747261207b0a0977696474683a203132253b0a096c696e652d6865696768743a20323030253b0a09746578742d616c69676e3a2063656e7465723b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a64642e6d61726b207b0a09666c6f61743a2072696768742021696d706f7274616e743b0a0977696474683a2039253b0a09746578742d616c69676e3a2063656e7465723b0a096c696e652d6865696768743a20323030253b0a09666f6e742d73697a653a20312e32656d3b0a7d0a0a64642e696e666f207b0a0977696474683a203330253b0a7d0a0a64642e6f7074696f6e207b0a0977696474683a203135253b0a096c696e652d6865696768743a20323030253b0a09746578742d616c69676e3a2063656e7465723b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a64642e7365617263686279207b0a0977696474683a203437253b0a09666f6e742d73697a653a20312e31656d3b0a096c696e652d6865696768743a2031656d3b0a7d0a0a756c2e746f7069636c6973742064642e7365617263686578747261207b0a096d617267696e2d6c6566743a203570783b0a0970616464696e673a20302e32656d20303b0a09666f6e742d73697a653a20312e31656d3b0a09636f6c6f723a20233333333333333b0a09626f726465722d6c6566743a206e6f6e653b0a09636c6561723a20626f74683b0a0977696474683a203938253b0a096f766572666c6f773a2068696464656e3b0a7d0a0a2f2a20436f6e7461696e657220666f7220706f73742f7265706c7920627574746f6e7320616e6420706167696e6174696f6e202a2f0a2e746f7069632d616374696f6e73207b0a096d617267696e2d626f74746f6d3a203370783b0a09666f6e742d73697a653a20312e31656d3b0a096865696768743a20323870783b0a096d696e2d6865696768743a20323870783b0a7d0a6469765b636c6173735d2e746f7069632d616374696f6e73207b0a096865696768743a206175746f3b0a7d0a0a2f2a20506f737420626f6479207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e706f7374626f6479207b0a0970616464696e673a20303b0a096c696e652d6865696768743a20312e3438656d3b0a09636f6c6f723a20233333333333333b0a0977696474683a203736253b0a09666c6f61743a206c6566743b0a09636c6561723a20626f74683b0a7d0a0a2e706f7374626f6479202e69676e6f7265207b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a2e706f7374626f64792068332e6669727374207b0a092f2a2054686520666972737420706f7374206f6e20746865207061676520757365732074686973202a2f0a09666f6e742d73697a653a20312e37656d3b0a7d0a0a2e706f7374626f6479206833207b0a092f2a20506f7374626f6479207265717569726573206120646966666572656e7420683320666f726d6174202d20736f206368616e67652069742068657265202a2f0a09666f6e742d73697a653a20312e35656d3b0a0970616464696e673a203270782030203020303b0a096d617267696e3a2030203020302e33656d20302021696d706f7274616e743b0a09746578742d7472616e73666f726d3a206e6f6e653b0a09626f726465723a206e6f6e653b0a09666f6e742d66616d696c793a2056657264616e612c2022547265627563686574204d53222c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a096c696e652d6865696768743a20313235253b0a7d0a0a2e706f7374626f647920683320696d67207b0a092f2a20416c736f2073656520747765616b732e637373202a2f0a09766572746963616c2d616c69676e3a20626f74746f6d3b0a7d0a0a2e706f7374626f6479202e636f6e74656e74207b0a09666f6e742d73697a653a20312e33656d3b0a7d0a0a2e736561726368202e706f7374626f6479207b0a0977696474683a203638250a7d0a0a2f2a20546f706963207265766965772070616e656c0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a23726576696577207b0a096d617267696e2d746f703a2032656d3b0a7d0a0a23746f706963726576696577207b0a0970616464696e672d72696768743a203570783b0a096f766572666c6f773a206175746f3b0a096865696768743a2033303070783b0a7d0a0a23746f706963726576696577202e706f7374626f6479207b0a0977696474683a206175746f3b0a09666c6f61743a206e6f6e653b0a096d617267696e3a20303b0a096865696768743a206175746f3b0a7d0a0a23746f706963726576696577202e706f7374207b0a096865696768743a206175746f3b0a7d0a0a23746f706963726576696577206832207b0a09626f726465722d626f74746f6d2d77696474683a20303b0a7d0a0a2f2a20436f6e74656e7420636f6e7461696e6572207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e636f6e74656e74207b0a096d696e2d6865696768743a2033656d3b0a096f766572666c6f773a2068696464656e3b0a096c696e652d6865696768743a20312e34656d3b0a09666f6e742d66616d696c793a2056657264616e612c20224c7563696461204772616e6465222c2022547265627563686574204d53222c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d73697a653a2031656d3b0a09636f6c6f723a20233333333333333b0a7d0a0a2e636f6e74656e742068322c202e70616e656c206832207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20233938393839383b0a09626f726465722d626f74746f6d3a2031707820736f6c696420234343434343433b0a09666f6e742d73697a653a20312e36656d3b0a096d617267696e2d746f703a20302e35656d3b0a096d617267696e2d626f74746f6d3a20302e35656d3b0a0970616464696e672d626f74746f6d3a20302e35656d3b0a7d0a0a2e70616e656c206833207b0a096d617267696e3a20302e35656d20303b0a7d0a0a2e70616e656c2070207b0a09666f6e742d73697a653a20312e32656d3b0a096d617267696e2d626f74746f6d3a2031656d3b0a096c696e652d6865696768743a20312e34656d3b0a7d0a0a2e636f6e74656e742070207b0a09666f6e742d66616d696c793a2056657264616e612c20224c7563696461204772616e6465222c2022547265627563686574204d53222c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d73697a653a20312e32656d3b0a096d617267696e2d626f74746f6d3a2031656d3b0a096c696e652d6865696768743a20312e34656d3b0a7d0a0a646c2e666171207b0a09666f6e742d66616d696c793a2056657264616e612c20224c7563696461204772616e6465222c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d73697a653a20312e31656d3b0a096d617267696e2d746f703a2031656d3b0a096d617267696e2d626f74746f6d3a2032656d3b0a096c696e652d6865696768743a20312e34656d3b0a7d0a0a646c2e666171206474207b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233333333333333b0a7d0a0a2e636f6e74656e7420646c2e666171207b0a09666f6e742d73697a653a20312e32656d3b0a096d617267696e2d626f74746f6d3a20302e35656d3b0a7d0a0a2e636f6e74656e74206c69207b0a096c6973742d7374796c652d747970653a20696e68657269743b0a7d0a0a2e636f6e74656e7420756c2c202e636f6e74656e74206f6c207b0a096d617267696e2d626f74746f6d3a2031656d3b0a096d617267696e2d6c6566743a2033656d3b0a7d0a0a2e706f737468696c6974207b0a096261636b67726f756e642d636f6c6f723a20236633663366333b0a09636f6c6f723a20234243424342433b0a0970616464696e673a20302032707820317078203270783b0a7d0a0a2e616e6e6f756e63652c202e756e72656164706f7374207b0a092f2a20486967686c696768742074686520616e6e6f756e63656d656e7473202620756e7265616420706f73747320626f78202a2f0a09626f726465722d6c6566742d636f6c6f723a20234243424342433b0a09626f726465722d72696768742d636f6c6f723a20234243424342433b0a7d0a0a2f2a20506f737420617574686f72202a2f0a702e617574686f72207b0a096d617267696e3a2030203135656d20302e36656d20303b0a0970616464696e673a203020302035707820303b0a09666f6e742d66616d696c793a2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d73697a653a2031656d3b0a096c696e652d6865696768743a20312e32656d3b0a7d0a0a2f2a20506f7374207369676e6174757265202a2f0a2e7369676e6174757265207b0a096d617267696e2d746f703a20312e35656d3b0a0970616464696e672d746f703a20302e32656d3b0a09666f6e742d73697a653a20312e31656d3b0a09626f726465722d746f703a2031707820736f6c696420234343434343433b0a09636c6561723a206c6566743b0a096c696e652d6865696768743a20313430253b0a096f766572666c6f773a2068696464656e3b0a0977696474683a20313030253b0a7d0a0a6464202e7369676e6174757265207b0a096d617267696e3a20303b0a0970616464696e673a20303b0a09636c6561723a206e6f6e653b0a09626f726465723a206e6f6e653b0a7d0a0a2e7369676e6174757265206c69207b0a096c6973742d7374796c652d747970653a20696e68657269743b0a7d0a0a2e7369676e617475726520756c2c202e7369676e6174757265206f6c207b0a096d617267696e2d626f74746f6d3a2031656d3b0a096d617267696e2d6c6566743a2033656d3b0a7d0a0a2f2a20506f7374206e6f746963696573202a2f0a2e6e6f74696365207b0a09666f6e742d66616d696c793a2056657264616e612c20224c7563696461204772616e6465222c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a0977696474683a206175746f3b0a096d617267696e2d746f703a20312e35656d3b0a0970616464696e672d746f703a20302e32656d3b0a09666f6e742d73697a653a2031656d3b0a09626f726465722d746f703a203170782064617368656420234343434343433b0a09636c6561723a206c6566743b0a096c696e652d6865696768743a20313330253b0a7d0a0a2f2a204a756d7020746f20706f7374206c696e6b20666f72206e6f77202a2f0a756c2e736561726368726573756c7473207b0a096c6973742d7374796c653a206e6f6e653b0a09746578742d616c69676e3a2072696768743b0a09636c6561723a20626f74683b0a7d0a0a2f2a20424220436f6465207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2f2a2051756f746520626c6f636b202a2f0a626c6f636b71756f7465207b0a096261636b67726f756e643a2023656265626562206e6f6e652036707820387078206e6f2d7265706561743b0a09626f726465723a2031707820736f6c696420236462646264623b0a09666f6e742d73697a653a20302e3935656d3b0a096d617267696e3a20302e35656d20317078203020323570783b0a096f766572666c6f773a2068696464656e3b0a0970616464696e673a203570783b0a7d0a0a626c6f636b71756f746520626c6f636b71756f7465207b0a092f2a204e65737465642071756f746573202a2f0a096261636b67726f756e642d636f6c6f723a20236261626162613b0a09666f6e742d73697a653a2031656d3b0a096d617267696e3a20302e35656d20317078203020313570783b090a7d0a0a626c6f636b71756f746520626c6f636b71756f746520626c6f636b71756f7465207b0a092f2a204e65737465642071756f746573202a2f0a096261636b67726f756e642d636f6c6f723a20236534653465343b0a7d0a0a626c6f636b71756f74652063697465207b0a092f2a20557365726e616d652f736f75726365206f662071756f746572202a2f0a09666f6e742d7374796c653a206e6f726d616c3b0a09666f6e742d7765696768743a20626f6c643b0a096d617267696e2d6c6566743a20323070783b0a09646973706c61793a20626c6f636b3b0a09666f6e742d73697a653a20302e39656d3b0a7d0a0a626c6f636b71756f746520636974652063697465207b0a09666f6e742d73697a653a2031656d3b0a7d0a0a626c6f636b71756f74652e756e6369746564207b0a0970616464696e672d746f703a20323570783b0a7d0a0a2f2a20436f646520626c6f636b202a2f0a646c2e636f6465626f78207b0a0970616464696e673a203370783b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465723a2031707820736f6c696420236438643864383b0a09666f6e742d73697a653a2031656d3b0a7d0a0a646c2e636f6465626f78206474207b0a09746578742d7472616e73666f726d3a207570706572636173653b0a09626f726465722d626f74746f6d3a2031707820736f6c696420234343434343433b0a096d617267696e2d626f74746f6d3a203370783b0a09666f6e742d73697a653a20302e38656d3b0a09666f6e742d7765696768743a20626f6c643b0a09646973706c61793a20626c6f636b3b0a7d0a0a626c6f636b71756f746520646c2e636f6465626f78207b0a096d617267696e2d6c6566743a20303b0a7d0a0a646c2e636f6465626f7820636f6465207b0a092f2a20416c736f2073656520747765616b732e637373202a2f0a096f766572666c6f773a206175746f3b0a09646973706c61793a20626c6f636b3b0a096865696768743a206175746f3b0a096d61782d6865696768743a2032303070783b0a0977686974652d73706163653a206e6f726d616c3b0a0970616464696e672d746f703a203570783b0a09666f6e743a20302e39656d204d6f6e61636f2c2022416e64616c65204d6f6e6f222c2022436f7572696572204e6577222c20436f75726965722c206d6f6e6f3b0a096c696e652d6865696768743a20312e33656d3b0a09636f6c6f723a20233862386238623b0a096d617267696e3a2032707820303b0a7d0a0a2e73796e746178626709097b20636f6c6f723a20234646464646463b207d0a2e73796e746178636f6d6d656e74097b20636f6c6f723a20233030303030303b207d0a2e73796e74617864656661756c74097b20636f6c6f723a20236263626362633b207d0a2e73796e74617868746d6c09097b20636f6c6f723a20233030303030303b207d0a2e73796e7461786b6579776f7264097b20636f6c6f723a20233538353835383b207d0a2e73796e746178737472696e67097b20636f6c6f723a20236137613761373b207d0a0a2f2a204174746163686d656e74730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e617474616368626f78207b0a09666c6f61743a206c6566743b0a0977696474683a206175746f3b200a096d617267696e3a20357078203570782035707820303b0a0970616464696e673a203670783b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465723a203170782064617368656420236438643864383b0a09636c6561723a206c6566743b0a7d0a0a2e706d2d6d657373616765202e617474616368626f78207b0a096261636b67726f756e642d636f6c6f723a20236633663366333b0a7d0a0a2e617474616368626f78206474207b0a09666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09746578742d7472616e73666f726d3a207570706572636173653b0a7d0a0a2e617474616368626f78206464207b0a096d617267696e2d746f703a203470783b0a0970616464696e672d746f703a203470783b0a09636c6561723a206c6566743b0a09626f726465722d746f703a2031707820736f6c696420236438643864383b0a7d0a0a2e617474616368626f78206464206464207b0a09626f726465723a206e6f6e653b0a7d0a0a2e617474616368626f782070207b0a096c696e652d6865696768743a20313130253b0a09636f6c6f723a20233636363636363b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636c6561723a206c6566743b0a7d0a0a2e617474616368626f7820702e73746174730a7b0a096c696e652d6865696768743a20313130253b0a09636f6c6f723a20233636363636363b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636c6561723a206c6566743b0a7d0a0a2e6174746163682d696d616765207b0a096d617267696e3a2033707820303b0a0977696474683a20313030253b0a096d61782d6865696768743a2033353070783b0a096f766572666c6f773a206175746f3b0a7d0a0a2e6174746163682d696d61676520696d67207b0a09626f726465723a2031707820736f6c696420233939393939393b0a2f2a09637572736f723a206d6f76653b202a2f0a09637572736f723a2064656661756c743b0a7d0a0a2f2a20496e6c696e6520696d616765207468756d626e61696c73202a2f0a6469762e696e6c696e652d6174746163686d656e7420646c2e7468756d626e61696c2c206469762e696e6c696e652d6174746163686d656e7420646c2e66696c65207b0a09646973706c61793a20626c6f636b3b0a096d617267696e2d626f74746f6d3a203470783b0a7d0a0a6469762e696e6c696e652d6174746163686d656e742070207b0a09666f6e742d73697a653a20313030253b0a7d0a0a646c2e66696c65207b0a09666f6e742d66616d696c793a2056657264616e612c20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09646973706c61793a20626c6f636b3b0a7d0a0a646c2e66696c65206474207b0a09746578742d7472616e73666f726d3a206e6f6e653b0a096d617267696e3a20303b0a0970616464696e673a20303b0a09666f6e742d7765696768743a20626f6c643b0a09666f6e742d66616d696c793a2056657264616e612c20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a7d0a0a646c2e66696c65206464207b0a09636f6c6f723a20233636363636363b0a096d617267696e3a20303b0a0970616464696e673a20303b090a7d0a0a646c2e7468756d626e61696c20696d67207b0a0970616464696e673a203370783b0a09626f726465723a2031707820736f6c696420233636363636363b0a096261636b67726f756e642d636f6c6f723a20234646463b0a7d0a0a646c2e7468756d626e61696c206464207b0a09636f6c6f723a20233636363636363b0a09666f6e742d7374796c653a206974616c69633b0a09666f6e742d66616d696c793a2056657264616e612c20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a7d0a0a2e617474616368626f7820646c2e7468756d626e61696c206464207b0a09666f6e742d73697a653a20313030253b0a7d0a0a646c2e7468756d626e61696c20647420613a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234545454545453b0a7d0a0a646c2e7468756d626e61696c20647420613a686f76657220696d67207b0a09626f726465723a2031707820736f6c696420236432643264323b0a7d0a0a2f2a20506f737420706f6c6c207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a6669656c647365742e706f6c6c73207b0a09666f6e742d66616d696c793a2056657264616e612c2022547265627563686574204d53222c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a7d0a0a6669656c647365742e706f6c6c7320646c207b0a096d617267696e2d746f703a203570783b0a09626f726465722d746f703a2031707820736f6c696420236532653265323b0a0970616464696e673a203570782030203020303b0a096c696e652d6865696768743a20313230253b0a09636f6c6f723a20233636363636363b0a7d0a0a6669656c647365742e706f6c6c7320646c2e766f746564207b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233030303030303b0a7d0a0a6669656c647365742e706f6c6c73206474207b0a09746578742d616c69676e3a206c6566743b0a09666c6f61743a206c6566743b0a09646973706c61793a20626c6f636b3b0a0977696474683a203330253b0a09626f726465722d72696768743a206e6f6e653b0a0970616464696e673a20303b0a096d617267696e3a20303b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a6669656c647365742e706f6c6c73206464207b0a09666c6f61743a206c6566743b0a0977696474683a203130253b0a09626f726465722d6c6566743a206e6f6e653b0a0970616464696e673a2030203570783b0a096d617267696e2d6c6566743a20303b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a6669656c647365742e706f6c6c732064642e726573756c74626172207b0a0977696474683a203530253b0a7d0a0a6669656c647365742e706f6c6c7320646420696e707574207b0a096d617267696e3a2032707820303b0a7d0a0a6669656c647365742e706f6c6c7320646420646976207b0a09746578742d616c69676e3a2072696768743b0a09666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09636f6c6f723a20234646464646463b0a09666f6e742d7765696768743a20626f6c643b0a0970616464696e673a2030203270783b0a096f766572666c6f773a2076697369626c653b0a096d696e2d77696474683a2032253b0a7d0a0a2e706f6c6c62617231207b0a096261636b67726f756e642d636f6c6f723a20236161616161613b0a09626f726465722d626f74746f6d3a2031707820736f6c696420233734373437343b0a09626f726465722d72696768743a2031707820736f6c696420233734373437343b0a7d0a0a2e706f6c6c62617232207b0a096261636b67726f756e642d636f6c6f723a20236265626562653b0a09626f726465722d626f74746f6d3a2031707820736f6c696420233863386338633b0a09626f726465722d72696768743a2031707820736f6c696420233863386338633b0a7d0a0a2e706f6c6c62617233207b0a096261636b67726f756e642d636f6c6f723a20234431443144313b0a09626f726465722d626f74746f6d3a2031707820736f6c696420236161616161613b0a09626f726465722d72696768743a2031707820736f6c696420236161616161613b0a7d0a0a2e706f6c6c62617234207b0a096261636b67726f756e642d636f6c6f723a20236534653465343b0a09626f726465722d626f74746f6d3a2031707820736f6c696420236265626562653b0a09626f726465722d72696768743a2031707820736f6c696420236265626562653b0a7d0a0a2e706f6c6c62617235207b0a096261636b67726f756e642d636f6c6f723a20236638663866383b0a09626f726465722d626f74746f6d3a2031707820736f6c696420234431443144313b0a09626f726465722d72696768743a2031707820736f6c696420234431443144313b0a7d0a0a2f2a20506f737465722070726f66696c6520626c6f636b0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e706f737470726f66696c65207b0a092f2a20416c736f2073656520747765616b732e637373202a2f0a096d617267696e3a203570782030203130707820303b0a096d696e2d6865696768743a20383070783b0a09636f6c6f723a20233636363636363b0a09626f726465722d6c6566743a2031707820736f6c696420234646464646463b0a0977696474683a203232253b0a09666c6f61743a2072696768743b0a09646973706c61793a20696e6c696e653b0a7d0a2e706d202e706f737470726f66696c65207b0a09626f726465722d6c6566743a2031707820736f6c696420234444444444443b0a7d0a0a2e706f737470726f66696c652064642c202e706f737470726f66696c65206474207b0a096c696e652d6865696768743a20312e32656d3b0a096d617267696e2d6c6566743a203870783b0a7d0a0a2e706f737470726f66696c65207374726f6e67207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20233030303030303b0a7d0a0a2e617661746172207b0a09626f726465723a206e6f6e653b0a096d617267696e2d626f74746f6d3a203370783b0a7d0a0a2e6f6e6c696e65207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a203130302520303b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a7d0a0a2f2a20506f737465722070726f66696c652075736564206279207365617263682a2f0a2e736561726368202e706f737470726f66696c65207b0a0977696474683a203330253b0a7d0a0a2f2a20706d206c69737420696e20636f6d706f7365206d657373616765206966206d61737320706d20697320656e61626c6564202a2f0a646c2e706d6c697374206474207b0a0977696474683a203630252021696d706f7274616e743b0a7d0a0a646c2e706d6c697374206474207465787461726561207b0a0977696474683a203935253b0a7d0a0a646c2e706d6c697374206464207b0a096d617267696e2d6c6566743a203631252021696d706f7274616e743b0a096d617267696e2d626f74746f6d3a203270783b0a7d0a2f2a2070726f53696c76657220427574746f6e205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a20526f6c6c6f76657220627574746f6e730a2020204261736564206f6e3a20687474703a2f2f77656c6c7374796c65642e636f6d2f6373732d6e6f7072656c6f61642d726f6c6c6f766572732e68746d6c0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e627574746f6e73207b0a09666c6f61743a206c6566743b0a0977696474683a206175746f3b0a096865696768743a206175746f3b0a7d0a0a2f2a20526f6c6c6f766572207374617465202a2f0a2e627574746f6e7320646976207b0a09666c6f61743a206c6566743b0a096d617267696e3a203020357078203020303b0a096261636b67726f756e642d706f736974696f6e3a203020313030253b0a7d0a0a2f2a20526f6c6c6f6666207374617465202a2f0a2e627574746f6e73206469762061207b0a09646973706c61793a20626c6f636b3b0a0977696474683a20313030253b0a096865696768743a20313030253b0a096261636b67726f756e642d706f736974696f6e3a203020303b0a09706f736974696f6e3a2072656c61746976653b0a096f766572666c6f773a2068696464656e3b0a7d0a0a2f2a2048696465203c613e207465787420616e642068696465206f66662d737461746520696d616765207768656e20726f6c6c696e67206f766572202870726576656e747320666c69636b657220696e20494529202a2f0a2f2a2e627574746f6e7320646976207370616e09097b20646973706c61793a206e6f6e653b207d2a2f0a2f2a2e627574746f6e732064697620613a686f766572097b206261636b67726f756e642d696d6167653a206e6f6e653b207d2a2f0a2e627574746f6e7320646976207370616e0909097b20706f736974696f6e3a206162736f6c7574653b2077696474683a20313030253b206865696768743a20313030253b20637572736f723a20706f696e7465723b7d0a2e627574746f6e732064697620613a686f766572207370616e097b206261636b67726f756e642d706f736974696f6e3a203020313030253b207d0a0a2f2a2042696720627574746f6e20696d61676573202a2f0a2e7265706c792d69636f6e207370616e097b206261636b67726f756e643a207472616e73706172656e74206e6f6e6520302030206e6f2d7265706561743b207d0a2e706f73742d69636f6e207370616e09097b206261636b67726f756e643a207472616e73706172656e74206e6f6e6520302030206e6f2d7265706561743b207d0a2e6c6f636b65642d69636f6e207370616e097b206261636b67726f756e643a207472616e73706172656e74206e6f6e6520302030206e6f2d7265706561743b207d0a2e706d7265706c792d69636f6e207370616e097b206261636b67726f756e643a206e6f6e6520302030206e6f2d7265706561743b207d0a2e6e6577706d2d69636f6e207370616e20097b206261636b67726f756e643a206e6f6e6520302030206e6f2d7265706561743b207d0a2e666f7277617264706d2d69636f6e207370616e20097b206261636b67726f756e643a206e6f6e6520302030206e6f2d7265706561743b207d0a0a2f2a205365742062696720627574746f6e2064696d656e73696f6e73202a2f0a2e627574746f6e73206469762e7265706c792d69636f6e09097b2077696474683a207b494d475f425554544f4e5f544f5049435f5245504c595f57494454487d70783b206865696768743a207b494d475f425554544f4e5f544f5049435f5245504c595f4845494748547d70783b207d0a2e627574746f6e73206469762e706f73742d69636f6e09097b2077696474683a207b494d475f425554544f4e5f544f5049435f4e45575f57494454487d70783b206865696768743a207b494d475f425554544f4e5f544f5049435f4e45575f4845494748547d70783b207d0a2e627574746f6e73206469762e6c6f636b65642d69636f6e097b2077696474683a207b494d475f425554544f4e5f544f5049435f4c4f434b45445f57494454487d70783b206865696768743a207b494d475f425554544f4e5f544f5049435f4c4f434b45445f4845494748547d70783b207d0a2e627574746f6e73206469762e706d7265706c792d69636f6e097b2077696474683a207b494d475f425554544f4e5f504d5f5245504c595f57494454487d70783b206865696768743a207b494d475f425554544f4e5f504d5f5245504c595f4845494748547d70783b207d0a2e627574746f6e73206469762e6e6577706d2d69636f6e09097b2077696474683a207b494d475f425554544f4e5f504d5f4e45575f57494454487d70783b206865696768743a207b494d475f425554544f4e5f504d5f4e45575f4845494748547d70783b207d0a2e627574746f6e73206469762e666f7277617264706d2d69636f6e097b2077696474683a207b494d475f425554544f4e5f504d5f464f52574152445f57494454487d70783b206865696768743a207b494d475f425554544f4e5f504d5f464f52574152445f4845494748547d70783b207d0a0a2f2a205375622d68656164657220286e617669676174696f6e20626172290a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a612e7072696e742c20612e73656e64656d61696c2c20612e666f6e7473697a65207b0a09646973706c61793a20626c6f636b3b0a096f766572666c6f773a2068696464656e3b0a096865696768743a20313870783b0a09746578742d696e64656e743a202d3530303070783b0a09746578742d616c69676e3a206c6566743b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a7d0a0a612e7072696e74207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a0977696474683a20323270783b0a7d0a0a612e73656e64656d61696c207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a0977696474683a20323270783b0a7d0a0a612e666f6e7473697a65207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a2030202d3170783b0a0977696474683a20323970783b0a7d0a0a612e666f6e7473697a653a686f766572207b0a096261636b67726f756e642d706f736974696f6e3a2030202d323070783b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2f2a2049636f6e20696d616765730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e73697465686f6d652c202e69636f6e2d6661712c202e69636f6e2d6d656d626572732c202e69636f6e2d686f6d652c202e69636f6e2d7563702c202e69636f6e2d72656769737465722c202e69636f6e2d6c6f676f75742c0a2e69636f6e2d626f6f6b6d61726b2c202e69636f6e2d62756d702c202e69636f6e2d7375627363726962652c202e69636f6e2d756e7375627363726962652c202e69636f6e2d70616765732c202e69636f6e2d736561726368207b0a096261636b67726f756e642d706f736974696f6e3a2030203530253b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a0970616464696e673a203170782030203020313770783b0a7d0a0a2f2a20506f737465722070726f66696c652069636f6e730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a756c2e70726f66696c652d69636f6e73207b0a0970616464696e672d746f703a20313070783b0a096c6973742d7374796c653a206e6f6e653b0a7d0a0a2f2a20526f6c6c6f766572207374617465202a2f0a756c2e70726f66696c652d69636f6e73206c69207b0a09666c6f61743a206c6566743b0a096d617267696e3a2030203670782033707820303b0a096261636b67726f756e642d706f736974696f6e3a203020313030253b0a7d0a0a2f2a20526f6c6c6f6666207374617465202a2f0a756c2e70726f66696c652d69636f6e73206c692061207b0a09646973706c61793a20626c6f636b3b0a0977696474683a20313030253b0a096865696768743a20313030253b0a096261636b67726f756e642d706f736974696f6e3a203020303b0a7d0a0a2f2a2048696465203c613e207465787420616e642068696465206f66662d737461746520696d616765207768656e20726f6c6c696e67206f766572202870726576656e747320666c69636b657220696e20494529202a2f0a756c2e70726f66696c652d69636f6e73206c69207370616e207b20646973706c61793a6e6f6e653b207d0a756c2e70726f66696c652d69636f6e73206c6920613a686f766572207b206261636b67726f756e643a206e6f6e653b207d0a0a2f2a20506f736974696f6e696e67206f66206d6f64657261746f722069636f6e73202a2f0a2e706f7374626f647920756c2e70726f66696c652d69636f6e73207b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a0970616464696e673a20303b0a7d0a0a2e706f7374626f647920756c2e70726f66696c652d69636f6e73206c69207b0a096d617267696e3a2030203370783b0a7d0a0a2f2a2050726f66696c652026206e617669676174696f6e2069636f6e73202a2f0a2e656d61696c2d69636f6e2c202e656d61696c2d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e61696d2d69636f6e2c202e61696d2d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e7961686f6f2d69636f6e2c202e7961686f6f2d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e7765622d69636f6e2c202e7765622d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e6d736e6d2d69636f6e2c202e6d736e6d2d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e6963712d69636f6e2c202e6963712d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e6a61626265722d69636f6e2c202e6a61626265722d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e706d2d69636f6e2c202e706d2d69636f6e2061090909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e71756f74652d69636f6e2c202e71756f74652d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a0a2f2a204d6f64657261746f722069636f6e73202a2f0a2e7265706f72742d69636f6e2c202e7265706f72742d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e7761726e2d69636f6e2c202e7761726e2d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e656469742d69636f6e2c202e656469742d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e64656c6574652d69636f6e2c202e64656c6574652d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e696e666f2d69636f6e2c202e696e666f2d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a0a2f2a205365742070726f66696c652069636f6e2064696d656e73696f6e73202a2f0a756c2e70726f66696c652d69636f6e73206c692e656d61696c2d69636f6e09097b2077696474683a207b494d475f49434f4e5f434f4e544143545f454d41494c5f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f454d41494c5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e61696d2d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f41494d5f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f41494d5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e7961686f6f2d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f5941484f4f5f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f5941484f4f5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e7765622d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f5757575f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f5757575f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e6d736e6d2d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f4d534e4d5f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f4d534e4d5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e6963712d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f4943515f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f4943515f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e6a61626265722d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f4a41424245525f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f4a41424245525f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e706d2d69636f6e09097b2077696474683a207b494d475f49434f4e5f434f4e544143545f504d5f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f504d5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e71756f74652d69636f6e097b2077696474683a207b494d475f49434f4e5f504f53545f51554f54455f57494454487d70783b206865696768743a207b494d475f49434f4e5f504f53545f51554f54455f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e7265706f72742d69636f6e097b2077696474683a207b494d475f49434f4e5f504f53545f5245504f52545f57494454487d70783b206865696768743a207b494d475f49434f4e5f504f53545f5245504f52545f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e656469742d69636f6e097b2077696474683a207b494d475f49434f4e5f504f53545f454449545f57494454487d70783b206865696768743a207b494d475f49434f4e5f504f53545f454449545f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e64656c6574652d69636f6e097b2077696474683a207b494d475f49434f4e5f504f53545f44454c4554455f57494454487d70783b206865696768743a207b494d475f49434f4e5f504f53545f44454c4554455f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e696e666f2d69636f6e097b2077696474683a207b494d475f49434f4e5f504f53545f494e464f5f57494454487d70783b206865696768743a207b494d475f49434f4e5f504f53545f494e464f5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e7761726e2d69636f6e097b2077696474683a207b494d475f49434f4e5f555345525f5741524e5f57494454487d70783b206865696768743a207b494d475f49434f4e5f555345525f5741524e5f4845494748547d70783b207d0a0a2f2a204669782070726f66696c652069636f6e2064656661756c74206d617267696e73202a2f0a756c2e70726f66696c652d69636f6e73206c692e656469742d69636f6e097b206d617267696e3a203020302030203370783b207d0a756c2e70726f66696c652d69636f6e73206c692e71756f74652d69636f6e097b206d617267696e3a20302030203020313070783b207d0a756c2e70726f66696c652d69636f6e73206c692e696e666f2d69636f6e2c20756c2e70726f66696c652d69636f6e73206c692e7265706f72742d69636f6e097b206d617267696e3a203020337078203020303b207d0a2f2a2070726f53696c76657220436f6e74726f6c2050616e656c205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a0a2f2a204d61696e20435020626f780a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2363702d6d656e75207b0a09666c6f61743a6c6566743b0a0977696474683a203139253b0a096d617267696e2d746f703a2031656d3b0a096d617267696e2d626f74746f6d3a203570783b0a7d0a0a2363702d6d61696e207b0a09666c6f61743a206c6566743b0a0977696474683a203831253b0a7d0a0a2363702d6d61696e202e636f6e74656e74207b0a0970616464696e673a20303b0a7d0a0a2363702d6d61696e2068332c202363702d6d61696e2068722c202363702d6d656e75206872207b0a09626f726465722d636f6c6f723a20236266626662663b0a7d0a0a2363702d6d61696e202e70616e656c2070207b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a2363702d6d61696e202e70616e656c206f6c207b0a096d617267696e2d6c6566743a2032656d3b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a2363702d6d61696e202e70616e656c206c692e726f77207b0a09626f726465722d626f74746f6d3a2031707820736f6c696420236362636263623b0a09626f726465722d746f703a2031707820736f6c696420234639463946393b0a7d0a0a756c2e63706c697374207b0a096d617267696e2d626f74746f6d3a203570783b0a09626f726465722d746f703a2031707820736f6c696420236362636263623b0a7d0a0a2363702d6d61696e202e70616e656c206c692e6865616465722064642c202363702d6d61696e202e70616e656c206c692e686561646572206474207b0a09636f6c6f723a20233030303030303b0a096d617267696e2d626f74746f6d3a203270783b0a7d0a0a2363702d6d61696e207461626c652e7461626c6531207b0a096d617267696e2d626f74746f6d3a2031656d3b0a7d0a0a2363702d6d61696e207461626c652e7461626c6531207468656164207468207b0a09636f6c6f723a20233333333333333b0a09666f6e742d7765696768743a20626f6c643b0a09626f726465722d626f74746f6d3a2031707820736f6c696420233333333333333b0a0970616464696e673a203570783b0a7d0a0a2363702d6d61696e207461626c652e7461626c65312074626f6479207468207b0a09666f6e742d7374796c653a206974616c69633b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e742021696d706f7274616e743b0a09626f726465722d626f74746f6d3a206e6f6e653b0a7d0a0a2363702d6d61696e202e706167696e6174696f6e207b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a0970616464696e672d746f703a203170783b0a7d0a0a2363702d6d61696e202e706f7374626f64792070207b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a2363702d6d61696e202e706d2d6d657373616765207b0a09626f726465723a2031707820736f6c696420236532653265323b0a096d617267696e3a203130707820303b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a0977696474683a206175746f3b0a09666c6f61743a206e6f6e653b0a7d0a0a2e706d2d6d657373616765206832207b0a0970616464696e672d626f74746f6d3a203570783b0a7d0a0a2363702d6d61696e202e706f7374626f64792068332c202363702d6d61696e202e626f7832206833207b0a096d617267696e2d746f703a20303b0a7d0a0a2363702d6d61696e202e627574746f6e73207b0a096d617267696e2d6c6566743a20303b0a7d0a0a2363702d6d61696e20756c2e6c696e6b6c697374207b0a096d617267696e3a20303b0a7d0a0a2f2a204d435020537065636966696320747765616b73202a2f0a2e6d63702d6d61696e202e706f7374626f6479207b0a0977696474683a20313030253b0a7d0a0a2f2a20435020746162626564206d656e750a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2374616273207b0a096c696e652d6865696768743a206e6f726d616c3b0a096d617267696e3a20323070782030202d317078203770783b0a096d696e2d77696474683a2035373070783b0a7d0a0a237461627320756c207b0a096d617267696e3a303b0a0970616464696e673a20303b0a096c6973742d7374796c653a206e6f6e653b0a7d0a0a2374616273206c69207b0a09646973706c61793a20696e6c696e653b0a096d617267696e3a20303b0a0970616464696e673a20303b0a09666f6e742d73697a653a2031656d3b0a09666f6e742d7765696768743a20626f6c643b0a7d0a0a23746162732061207b0a09666c6f61743a206c6566743b0a096261636b67726f756e643a206e6f6e65206e6f2d726570656174203025202d333570783b0a096d617267696e3a203020317078203020303b0a0970616464696e673a203020302030203570783b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09706f736974696f6e3a2072656c61746976653b0a09637572736f723a20706f696e7465723b0a7d0a0a23746162732061207370616e207b0a09666c6f61743a206c6566743b0a09646973706c61793a20626c6f636b3b0a096261636b67726f756e643a206e6f6e65206e6f2d7265706561742031303025202d333570783b0a0970616464696e673a20367078203130707820367078203570783b0a09636f6c6f723a20233832383238323b0a0977686974652d73706163653a206e6f777261703b0a7d0a0a237461627320613a686f766572207370616e207b0a09636f6c6f723a20236263626362633b0a7d0a0a2374616273202e6163746976657461622061207b0a096261636b67726f756e642d706f736974696f6e3a203020303b0a09626f726465722d626f74746f6d3a2031707820736f6c696420236562656265623b0a7d0a0a2374616273202e6163746976657461622061207370616e207b0a096261636b67726f756e642d706f736974696f6e3a203130302520303b0a0970616464696e672d626f74746f6d3a203770783b0a09636f6c6f723a20233333333333333b0a7d0a0a237461627320613a686f766572207b0a096261636b67726f756e642d706f736974696f6e3a2030202d373070783b0a7d0a0a237461627320613a686f766572207370616e207b0a096261636b67726f756e642d706f736974696f6e3a31303025202d373070783b0a7d0a0a2374616273202e61637469766574616220613a686f766572207b0a096261636b67726f756e642d706f736974696f6e3a203020303b0a7d0a0a2374616273202e61637469766574616220613a686f766572207370616e207b0a09636f6c6f723a20233030303030303b0a096261636b67726f756e642d706f736974696f6e3a203130302520303b0a7d0a0a2f2a204d696e6920746162626564206d656e75207573656420696e204d43500a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a236d696e6974616273207b0a096c696e652d6865696768743a206e6f726d616c3b0a096d617267696e3a202d3230707820377078203020303b0a7d0a0a236d696e697461627320756c207b0a096d617267696e3a303b0a0970616464696e673a20303b0a096c6973742d7374796c653a206e6f6e653b0a7d0a0a236d696e6974616273206c69207b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a2072696768743b0a0970616464696e673a203020313070782034707820313070783b0a09666f6e742d73697a653a2031656d3b0a09666f6e742d7765696768743a20626f6c643b0a096261636b67726f756e642d636f6c6f723a20236632663266323b0a096d617267696e2d6c6566743a203270783b0a7d0a0a236d696e69746162732061207b0a7d0a0a236d696e697461627320613a686f766572207b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a236d696e6974616273206c692e616374697665746162207b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a7d0a0a236d696e6974616273206c692e61637469766574616220612c20236d696e6974616273206c692e61637469766574616220613a686f766572207b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20554350206e617669676174696f6e206d656e750a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2f2a20436f6e7461696e657220666f72207375622d6e617669676174696f6e206c697374202a2f0a236e617669676174696f6e207b0a0977696474683a20313030253b0a0970616464696e672d746f703a20333670783b0a7d0a0a236e617669676174696f6e20756c207b0a096c6973742d7374796c653a6e6f6e653b0a7d0a0a2f2a2044656661756c74206c697374207374617465202a2f0a236e617669676174696f6e206c69207b0a096d617267696e3a2031707820303b0a0970616464696e673a20303b0a09666f6e742d7765696768743a20626f6c643b0a09646973706c61793a20696e6c696e653b0a7d0a0a2f2a204c696e6b207374796c657320666f7220746865207375622d73656374696f6e206c696e6b73202a2f0a236e617669676174696f6e2061207b0a09646973706c61793a20626c6f636b3b0a0970616464696e673a203570783b0a096d617267696e3a2031707820303b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233333333b0a096261636b67726f756e643a2023636663666366206e6f6e65207265706561742d79203130302520303b0a7d0a0a236e617669676174696f6e20613a686f766572207b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a096261636b67726f756e642d636f6c6f723a20236336633663363b0a09636f6c6f723a20236263626362633b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a236e617669676174696f6e20236163746976652d73756273656374696f6e2061207b0a09646973706c61793a20626c6f636b3b0a09636f6c6f723a20236433643364333b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a236e617669676174696f6e20236163746976652d73756273656374696f6e20613a686f766572207b0a09636f6c6f723a20236433643364333b0a7d0a0a2f2a20507265666572656e6365732070616e65206c61796f75740a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2363702d6d61696e206832207b0a09626f726465722d626f74746f6d3a206e6f6e653b0a0970616464696e673a20303b0a096d617267696e2d6c6566743a20313070783b0a09636f6c6f723a20233333333333333b0a7d0a0a2363702d6d61696e202e70616e656c207b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a7d0a0a2363702d6d61696e202e706d207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d746f702c202363702d6d656e75207370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d746f70207370616e2c202363702d6d656e75207370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d626f74746f6d2c202363702d6d656e75207370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d626f74746f6d207370616e2c202363702d6d656e75207370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2f2a20546f706963726576696577202a2f0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f702c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207370616e2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207370616e2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2f2a20467269656e6473206c697374202a2f0a2e63702d6d696e69207b0a096261636b67726f756e642d636f6c6f723a20236639663966393b0a0970616464696e673a2030203570783b0a096d617267696e3a203130707820313570782031307078203570783b0a7d0a0a2e63702d6d696e69207370616e2e636f726e6572732d746f702c202e63702d6d696e69207370616e2e636f726e6572732d626f74746f6d207b0a096d617267696e3a2030202d3570783b0a7d0a0a646c2e6d696e69206474207b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233637363736373b0a7d0a0a646c2e6d696e69206464207b0a0970616464696e672d746f703a203470783b0a7d0a0a2e667269656e642d6f6e6c696e65207b0a09666f6e742d7765696768743a20626f6c643b0a7d0a0a2e667269656e642d6f66666c696e65207b0a09666f6e742d7374796c653a206974616c69633b0a7d0a0a2f2a20504d205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a23706d2d6d656e75207b0a096c696e652d6865696768743a20322e35656d3b0a7d0a0a2f2a20504d204d65737361676520686973746f7279202a2f0a2e63757272656e74207b0a09636f6c6f723a20233939393939393b0a7d0a0a2f2a20446566696e65642072756c6573206c69737420666f7220504d206f7074696f6e73202a2f0a6f6c2e6465662d72756c6573207b0a0970616464696e672d6c6566743a20303b0a7d0a0a6f6c2e6465662d72756c6573206c69207b0a096c696e652d6865696768743a20313830253b0a0970616464696e673a203170783b0a7d0a0a2f2a20504d206d61726b696e6720636f6c6f757273202a2f0a2e706d6c697374206c692e626731207b0a09626f726465723a20736f6c696420337078207472616e73706172656e743b0a09626f726465722d77696474683a2030203370783b0a7d0a0a2e706d6c697374206c692e626732207b0a09626f726465723a20736f6c696420337078207472616e73706172656e743b0a09626f726465722d77696474683a2030203370783b0a7d0a0a2e706d6c697374206c692e706d5f6d6573736167655f7265706f727465645f636f6c6f75722c202e706d5f6d6573736167655f7265706f727465645f636f6c6f7572207b0a09626f726465722d6c6566742d636f6c6f723a20236263626362633b0a09626f726465722d72696768742d636f6c6f723a20236263626362633b0a7d0a0a2e706d6c697374206c692e706d5f6d61726b65645f636f6c6f75722c202e706d5f6d61726b65645f636f6c6f7572207b0a09626f726465723a20736f6c69642033707820236666666666663b0a09626f726465722d77696474683a2030203370783b0a7d0a0a2e706d6c697374206c692e706d5f7265706c6965645f636f6c6f75722c202e706d5f7265706c6965645f636f6c6f7572207b0a09626f726465723a20736f6c69642033707820236332633263323b0a09626f726465722d77696474683a2030203370783b090a7d0a0a2e706d6c697374206c692e706d5f667269656e645f636f6c6f75722c202e706d5f667269656e645f636f6c6f7572207b0a09626f726465723a20736f6c69642033707820236264626462643b0a09626f726465722d77696474683a2030203370783b0a7d0a0a2e706d6c697374206c692e706d5f666f655f636f6c6f75722c202e706d5f666f655f636f6c6f7572207b0a09626f726465723a20736f6c69642033707820233030303030303b0a09626f726465722d77696474683a2030203370783b0a7d0a0a2e706d2d6c6567656e64207b0a09626f726465722d6c6566742d77696474683a20313070783b0a09626f726465722d6c6566742d7374796c653a20736f6c69643b0a09626f726465722d72696768742d77696474683a20303b0a096d617267696e2d626f74746f6d3a203370783b0a0970616464696e672d6c6566743a203370783b0a7d0a0a2f2a204176617461722067616c6c657279202a2f0a2367616c6c657279206c6162656c207b0a09706f736974696f6e3a2072656c61746976653b0a09666c6f61743a206c6566743b0a096d617267696e3a20313070783b0a0970616464696e673a203570783b0a0977696474683a206175746f3b0a096261636b67726f756e643a20234646464646463b0a09626f726465723a2031707820736f6c696420234343433b0a09746578742d616c69676e3a2063656e7465723b0a7d0a0a2367616c6c657279206c6162656c3a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234545453b0a7d0a2f2a2070726f53696c76657220466f726d205374796c65730d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0d0a0d0a2f2a2047656e6572616c20666f726d207374796c65730d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0d0a6669656c64736574207b0d0a09626f726465722d77696474683a20303b0d0a09666f6e742d66616d696c793a2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0d0a09666f6e742d73697a653a20312e31656d3b0d0a7d0d0a0d0a696e707574207b0d0a09666f6e742d7765696768743a206e6f726d616c3b0d0a09637572736f723a20706f696e7465723b0d0a09766572746963616c2d616c69676e3a206d6964646c653b0d0a0970616464696e673a2030203370783b0d0a09666f6e742d73697a653a2031656d3b0d0a09666f6e742d66616d696c793a2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0d0a7d0d0a0d0a73656c656374207b0d0a09666f6e742d66616d696c793a2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0d0a09666f6e742d7765696768743a206e6f726d616c3b0d0a09637572736f723a20706f696e7465723b0d0a09766572746963616c2d616c69676e3a206d6964646c653b0d0a09626f726465723a2031707820736f6c696420233636363636363b0d0a0970616464696e673a203170783b0d0a096261636b67726f756e642d636f6c6f723a20234641464146413b0d0a7d0d0a0d0a6f7074696f6e207b0d0a0970616464696e672d72696768743a2031656d3b0d0a7d0d0a0d0a6f7074696f6e2e64697361626c65642d6f7074696f6e207b0d0a09636f6c6f723a2067726179746578743b0d0a7d0d0a0d0a7465787461726561207b0d0a09666f6e742d66616d696c793a2056657264616e612c20224c7563696461204772616e6465222c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0d0a0977696474683a203630253b0d0a0970616464696e673a203270783b0d0a09666f6e742d73697a653a2031656d3b0d0a096c696e652d6865696768743a20312e34656d3b0d0a7d0d0a0d0a6c6162656c207b0d0a09637572736f723a2064656661756c743b0d0a0970616464696e672d72696768743a203570783b0d0a09636f6c6f723a20233637363736373b0d0a7d0d0a0d0a6c6162656c20696e707574207b0d0a09766572746963616c2d616c69676e3a206d6964646c653b0d0a7d0d0a0d0a6c6162656c20696d67207b0d0a09766572746963616c2d616c69676e3a206d6964646c653b0d0a7d0d0a0d0a2f2a20446566696e6974696f6e206c697374206c61796f757420666f7220666f726d730d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0d0a6669656c6473657420646c207b0d0a0970616464696e673a2034707820303b0d0a7d0d0a0d0a6669656c64736574206474207b0d0a09666c6f61743a206c6566743b090d0a0977696474683a203430253b0d0a09746578742d616c69676e3a206c6566743b0d0a09646973706c61793a20626c6f636b3b0d0a7d0d0a0d0a6669656c64736574206464207b0d0a096d617267696e2d6c6566743a203431253b0d0a09766572746963616c2d616c69676e3a20746f703b0d0a096d617267696e2d626f74746f6d3a203370783b0d0a7d0d0a0d0a2f2a205370656369666963206c61796f75742031202a2f0d0a6669656c647365742e6669656c647331206474207b0d0a0977696474683a203130656d3b0d0a09626f726465722d72696768742d77696474683a20303b0d0a7d0d0a0d0a6669656c647365742e6669656c647331206464207b0d0a096d617267696e2d6c6566743a203130656d3b0d0a09626f726465722d6c6566742d77696474683a20303b0d0a7d0d0a0d0a6669656c647365742e6669656c647331207b0d0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e743b0d0a7d0d0a0d0a6669656c647365742e6669656c64733120646976207b0d0a096d617267696e2d626f74746f6d3a203370783b0d0a7d0d0a0d0a2f2a205370656369666963206c61796f75742032202a2f0d0a6669656c647365742e6669656c647332206474207b0d0a0977696474683a203135656d3b0d0a09626f726465722d72696768742d77696474683a20303b0d0a7d0d0a0d0a6669656c647365742e6669656c647332206464207b0d0a096d617267696e2d6c6566743a203136656d3b0d0a09626f726465722d6c6566742d77696474683a20303b0d0a7d0d0a0d0a2f2a20466f726d20656c656d656e7473202a2f0d0a6474206c6162656c207b0d0a09666f6e742d7765696768743a20626f6c643b0d0a09746578742d616c69676e3a206c6566743b0d0a7d0d0a0d0a6464206c6162656c207b0d0a0977686974652d73706163653a206e6f777261703b0d0a09636f6c6f723a20233333333b0d0a7d0d0a0d0a646420696e7075742c206464207465787461726561207b0d0a096d617267696e2d72696768743a203370783b0d0a7d0d0a0d0a64642073656c656374207b0d0a0977696474683a206175746f3b0d0a7d0d0a0d0a6464207465787461726561207b0d0a0977696474683a203835253b0d0a7d0d0a0d0a2f2a20486f7665722065666665637473202a2f0d0a6669656c6473657420646c3a686f766572206474206c6162656c207b0d0a09636f6c6f723a20233030303030303b0d0a7d0d0a0d0a6669656c647365742e6669656c64733220646c3a686f766572206474206c6162656c207b0d0a09636f6c6f723a20696e68657269743b0d0a7d0d0a0d0a2374696d657a6f6e65207b0d0a0977696474683a203935253b0d0a7d0d0a0d0a2a2068746d6c202374696d657a6f6e65207b0d0a0977696474683a203530253b0d0a7d0d0a0d0a2f2a20517569636b2d6c6f67696e206f6e20696e6465782070616765202a2f0d0a6669656c647365742e717569636b2d6c6f67696e207b0d0a096d617267696e2d746f703a203570783b0d0a7d0d0a0d0a6669656c647365742e717569636b2d6c6f67696e20696e707574207b0d0a0977696474683a206175746f3b0d0a7d0d0a0d0a6669656c647365742e717569636b2d6c6f67696e20696e7075742e696e707574626f78207b0d0a0977696474683a203135253b0d0a09766572746963616c2d616c69676e3a206d6964646c653b0d0a096d617267696e2d72696768743a203570783b0d0a096261636b67726f756e642d636f6c6f723a20236633663366333b0d0a7d0d0a0d0a6669656c647365742e717569636b2d6c6f67696e206c6162656c207b0d0a0977686974652d73706163653a206e6f777261703b0d0a0970616464696e672d72696768743a203270783b0d0a7d0d0a0d0a2f2a20446973706c6179206f7074696f6e73206f6e2076696577746f7069632f76696577666f72756d20706167657320202a2f0d0a6669656c647365742e646973706c61792d6f7074696f6e73207b0d0a09746578742d616c69676e3a2063656e7465723b0d0a096d617267696e3a2033707820302035707820303b0d0a7d0d0a0d0a6669656c647365742e646973706c61792d6f7074696f6e73206c6162656c207b0d0a0977686974652d73706163653a206e6f777261703b0d0a0970616464696e672d72696768743a203270783b0d0a7d0d0a0d0a6669656c647365742e646973706c61792d6f7074696f6e732061207b0d0a096d617267696e2d746f703a203370783b0d0a7d0d0a0d0a2f2a20446973706c617920616374696f6e7320666f722075637020616e64206d6370207061676573202a2f0d0a6669656c647365742e646973706c61792d616374696f6e73207b0d0a09746578742d616c69676e3a2072696768743b0d0a096c696e652d6865696768743a2032656d3b0d0a0977686974652d73706163653a206e6f777261703b0d0a0970616464696e672d72696768743a2031656d3b0d0a7d0d0a0d0a6669656c647365742e646973706c61792d616374696f6e73206c6162656c207b0d0a0977686974652d73706163653a206e6f777261703b0d0a0970616464696e672d72696768743a203270783b0d0a7d0d0a0d0a6669656c647365742e736f72742d6f7074696f6e73207b0d0a096c696e652d6865696768743a2032656d3b0d0a7d0d0a0d0a2f2a204d435020666f72756d2073656c656374696f6e2a2f0d0a6669656c647365742e666f72756d2d73656c656374696f6e207b0d0a096d617267696e3a2035707820302033707820303b0d0a09666c6f61743a2072696768743b0d0a7d0d0a0d0a6669656c647365742e666f72756d2d73656c656374696f6e32207b0d0a096d617267696e3a203133707820302033707820303b0d0a09666c6f61743a2072696768743b0d0a7d0d0a0d0a2f2a204a756d70626f78202a2f0d0a6669656c647365742e6a756d70626f78207b0d0a09746578742d616c69676e3a2072696768743b0d0a096d617267696e2d746f703a20313570783b0d0a096865696768743a20322e35656d3b0d0a7d0d0a0d0a6669656c647365742e717569636b6d6f64207b0d0a0977696474683a203530253b0d0a09666c6f61743a2072696768743b0d0a09746578742d616c69676e3a2072696768743b0d0a096865696768743a20322e35656d3b0d0a7d0d0a0d0a2f2a205375626d697420627574746f6e206669656c64736574202a2f0d0a6669656c647365742e7375626d69742d627574746f6e73207b0d0a09746578742d616c69676e3a2063656e7465723b0d0a09766572746963616c2d616c69676e3a206d6964646c653b0d0a096d617267696e3a2035707820303b0d0a7d0d0a0d0a6669656c647365742e7375626d69742d627574746f6e7320696e707574207b0d0a09766572746963616c2d616c69676e3a206d6964646c653b0d0a0970616464696e672d746f703a203370783b0d0a0970616464696e672d626f74746f6d3a203370783b0d0a7d0d0a0d0a2f2a20506f7374696e672070616765207374796c65730d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0d0a0d0a2f2a20427574746f6e73207573656420696e2074686520656469746f72202a2f0d0a23666f726d61742d627574746f6e73207b0d0a096d617267696e3a203135707820302032707820303b0d0a7d0d0a0d0a23666f726d61742d627574746f6e7320696e7075742c2023666f726d61742d627574746f6e732073656c656374207b0d0a09766572746963616c2d616c69676e3a206d6964646c653b0d0a7d0d0a0d0a2f2a204d61696e206d65737361676520626f78202a2f0d0a236d6573736167652d626f78207b0d0a0977696474683a203830253b0d0a7d0d0a0d0a236d6573736167652d626f78207465787461726561207b0d0a09666f6e742d66616d696c793a2056657264616e612c2022547265627563686574204d53222c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0d0a0977696474683a20313030253b0d0a09666f6e742d73697a653a20312e32656d3b0d0a09636f6c6f723a20233333333333333b0d0a7d0d0a0d0a2f2a20456d6f7469636f6e732070616e656c202a2f0d0a23736d696c65792d626f78207b0d0a0977696474683a203138253b0d0a09666c6f61743a2072696768743b0d0a7d0d0a0d0a23736d696c65792d626f7820696d67207b0d0a096d617267696e3a203370783b0d0a7d0d0a0d0a2f2a20496e707574206669656c64207374796c65730d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0d0a2e696e707574626f78207b0d0a096261636b67726f756e642d636f6c6f723a20234646464646463b0d0a09626f726465723a2031707820736f6c696420236330633063303b0d0a09636f6c6f723a20233333333333333b0d0a0970616464696e673a203270783b0d0a09637572736f723a20746578743b0d0a7d0d0a0d0a2e696e707574626f783a686f766572207b0d0a09626f726465723a2031707820736f6c696420236561656165613b0d0a7d0d0a0d0a2e696e707574626f783a666f637573207b0d0a09626f726465723a2031707820736f6c696420236561656165613b0d0a09636f6c6f723a20233462346234623b0d0a7d0d0a0d0a696e7075742e696e707574626f78097b2077696474683a203835253b207d0d0a696e7075742e6d656469756d097b2077696474683a203530253b207d0d0a696e7075742e6e6172726f77097b2077696474683a203235253b207d0d0a696e7075742e74696e7909097b2077696474683a2031313070783b207d0d0a0d0a74657874617265612e696e707574626f78207b0d0a0977696474683a203835253b0d0a7d0d0a0d0a2e6175746f7769647468207b0d0a0977696474683a206175746f2021696d706f7274616e743b0d0a7d0d0a0d0a2f2a20466f726d20627574746f6e207374796c65730d0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0d0a696e7075742e627574746f6e312c20696e7075742e627574746f6e32207b0d0a09666f6e742d73697a653a2031656d3b0d0a7d0d0a0d0a612e627574746f6e312c20696e7075742e627574746f6e312c20696e7075742e627574746f6e332c20612e627574746f6e322c20696e7075742e627574746f6e32207b0d0a0977696474683a206175746f2021696d706f7274616e743b0d0a0970616464696e672d746f703a203170783b0d0a0970616464696e672d626f74746f6d3a203170783b0d0a09666f6e742d66616d696c793a2056657264616e612c20224c7563696461204772616e6465222c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0d0a09636f6c6f723a20233030303b0d0a096261636b67726f756e643a2023464146414641206e6f6e65207265706561742d7820746f703b0d0a7d0d0a0d0a612e627574746f6e312c20696e7075742e627574746f6e31207b0d0a09666f6e742d7765696768743a20626f6c643b0d0a09626f726465723a2031707820736f6c696420233636363636363b0d0a7d0d0a0d0a696e7075742e627574746f6e33207b0d0a0970616464696e673a20303b0d0a096d617267696e3a20303b0d0a096c696e652d6865696768743a203570783b0d0a096865696768743a20313270783b0d0a096261636b67726f756e642d696d6167653a206e6f6e653b0d0a09666f6e742d76617269616e743a20736d616c6c2d636170733b0d0a7d0d0a0d0a2f2a20416c7465726e617469766520627574746f6e202a2f0d0a612e627574746f6e322c20696e7075742e627574746f6e322c20696e7075742e627574746f6e33207b0d0a09626f726465723a2031707820736f6c696420233636363636363b0d0a7d0d0a0d0a2f2a203c613e20627574746f6e20696e20746865207374796c65206f662074686520666f726d20627574746f6e73202a2f0d0a612e627574746f6e312c20612e627574746f6e313a6c696e6b2c20612e627574746f6e313a766973697465642c20612e627574746f6e313a6163746976652c20612e627574746f6e322c20612e627574746f6e323a6c696e6b2c20612e627574746f6e323a766973697465642c20612e627574746f6e323a616374697665207b0d0a09746578742d6465636f726174696f6e3a206e6f6e653b0d0a09636f6c6f723a20233030303030303b0d0a0970616464696e673a20327078203870783b0d0a096c696e652d6865696768743a20323530253b0d0a09766572746963616c2d616c69676e3a20746578742d626f74746f6d3b0d0a096261636b67726f756e642d706f736974696f6e3a2030203170783b0d0a7d0d0a0d0a2f2a20486f76657220737461746573202a2f0d0a612e627574746f6e313a686f7665722c20696e7075742e627574746f6e313a686f7665722c20612e627574746f6e323a686f7665722c20696e7075742e627574746f6e323a686f7665722c20696e7075742e627574746f6e333a686f766572207b0d0a09626f726465723a2031707820736f6c696420234243424342433b0d0a096261636b67726f756e642d706f736974696f6e3a203020313030253b0d0a09636f6c6f723a20234243424342433b0d0a7d0d0a0d0a696e7075742e64697361626c6564207b0d0a09666f6e742d7765696768743a206e6f726d616c3b0d0a09636f6c6f723a20233636363636363b0d0a7d0d0a0d0a2f2a20546f70696320616e6420666f72756d20536561726368202a2f0d0a2e7365617263682d626f78207b0d0a096d617267696e2d746f703a203370783b0d0a096d617267696e2d6c6566743a203570783b0d0a09666c6f61743a206c6566743b0d0a7d0d0a0d0a2e7365617263682d626f7820696e707574207b0d0a7d0d0a0d0a696e7075742e736561726368207b0d0a096261636b67726f756e642d696d6167653a206e6f6e653b0d0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0d0a096261636b67726f756e642d706f736974696f6e3a206c656674203170783b0d0a0970616464696e672d6c6566743a20313770783b0d0a7d0d0a0d0a2e66756c6c207b2077696474683a203935253b207d0d0a2e6d656469756d207b2077696474683a203530253b7d0d0a2e6e6172726f77207b2077696474683a203235253b7d0d0a2e74696e79207b2077696474683a203130253b7d0a2f2a2070726f53696c766572205374796c6520536865657420547765616b730a0a5468657365207374796c6520646566696e6974696f6e7320617265206d61696e6c79204945207370656369666963200a747765616b732072657175697265642064756520746f2069747320706f6f722043535320737570706f72742e0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a2a2068746d6c207461626c652c202a2068746d6c2073656c6563742c202a2068746d6c20696e707574207b20666f6e742d73697a653a20313030253b207d0a2a2068746d6c206872207b206d617267696e3a20303b207d0a2a2068746d6c207370616e2e636f726e6572732d746f702c202a2068746d6c207370616e2e636f726e6572732d626f74746f6d207b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c6566742e67696622293b207d0a2a2068746d6c207370616e2e636f726e6572732d746f70207370616e2c202a2068746d6c207370616e2e636f726e6572732d626f74746f6d207370616e207b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f72696768742e67696622293b207d0a0a7461626c652e7461626c6531207b0a0977696474683a203939253b09092f2a204945203c20362062726f7773657273202a2f0a092f2a2054616e74656b206861636b202a2f0a09766f6963652d66616d696c793a20225c227d5c22223b0a09766f6963652d66616d696c793a20696e68657269743b0a0977696474683a20313030253b0a7d0a68746d6c3e626f6479207461626c652e7461626c6531207b2077696474683a20313030253b207d092f2a205265736574203130302520666f72206f70657261202a2f0a0a2a2068746d6c20756c2e746f7069636c697374206c69207b20706f736974696f6e3a2072656c61746976653b207d0a2a2068746d6c202e706f7374626f647920683320696d67207b20766572746963616c2d616c69676e3a206d6964646c653b207d0a0a2f2a20466f726d207374796c6573202a2f0a68746d6c3e626f6479206464206c6162656c20696e707574207b20766572746963616c2d616c69676e3a20746578742d626f74746f6d3b207d092f2a20416c69676e20636865636b626f7865732f726164696f20627574746f6e73206e6963656c79202a2f0a0a2a2068746d6c20696e7075742e627574746f6e312c202a2068746d6c20696e7075742e627574746f6e32207b0a0970616464696e672d626f74746f6d3a20303b0a096d617267696e2d626f74746f6d3a203170783b0a7d0a0a2f2a204d697363206c61796f7574207374796c6573202a2f0a2a2068746d6c202e636f6c756d6e312c202a2068746d6c202e636f6c756d6e32207b2077696474683a203435253b207d0a0a2f2a204e696365206d6574686f6420666f7220636c656172696e6720666c6f6174656420626c6f636b7320776974686f757420686176696e6720746f20696e7365727420616e79206578747261206d61726b757020286c696b65207370616365722061626f7665290a20202046726f6d20687474703a2f2f7777772e706f736974696f6e697365766572797468696e672e6e65742f65617379636c656172696e672e68746d6c200a23746162733a61667465722c20236d696e69746162733a61667465722c202e706f73743a61667465722c202e6e61766261723a61667465722c206669656c6473657420646c3a61667465722c20756c2e746f7069636c69737420646c3a61667465722c20756c2e6c696e6b6c6973743a61667465722c20646c2e706f6c6c733a6166746572207b0a09636f6e74656e743a20222e223b200a09646973706c61793a20626c6f636b3b200a096865696768743a20303b200a09636c6561723a20626f74683b200a097669736962696c6974793a2068696464656e3b0a7d2a2f0a0a2e636c6561726669782c2023746162732c20236d696e69746162732c206669656c6473657420646c2c20756c2e746f7069636c69737420646c2c20646c2e706f6c6c73207b0a096865696768743a2031253b0a096f766572666c6f773a2068696464656e3b0a7d0a0a2f2a2076696577746f70696320666978202a2f0a2a2068746d6c202e706f7374207b0a096865696768743a203235253b0a096f766572666c6f773a2068696464656e3b0a7d0a0a2f2a206e617662617220666978202a2f0a2a2068746d6c202e636c6561726669782c202a2068746d6c202e6e61766261722c20756c2e6c696e6b6c697374207b0a096865696768743a2034253b0a096f766572666c6f773a2068696464656e3b0a7d0a0a2f2a2053696d706c652066697820736f20666f72756d20616e6420746f706963206c6973747320616c7761797320686176652061206d696e2d686569676874207365742c206576656e20696e204945360a0946726f6d20687474703a2f2f7777772e64757374696e6469617a2e636f6d2f6d696e2d6865696768742d666173742d6861636b202a2f0a646c2e69636f6e207b0a096d696e2d6865696768743a20333570783b0a096865696768743a206175746f2021696d706f7274616e743b0a096865696768743a20333570783b0a7d0a0a2a2068746d6c20237365617263682d626f78207b0a0977696474683a203235253b0a7d0a0a2f2a20436f72726563746c7920636c65617220666c6f6174696e6720666f722064657461696c73206f6e2070726f66696c652076696577202a2f0a2a3a66697273742d6368696c642b68746d6c20646c2e64657461696c73206464207b0a096d617267696e2d6c6566743a203330253b0a09666c6f61743a206e6f6e653b0a7d0a0a2a2068746d6c20646c2e64657461696c73206464207b0a096d617267696e2d6c6566743a203330253b0a09666c6f61743a206e6f6e653b0a7d0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f7220636f6d6d6f6e2e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a68746d6c2c20626f6479207b0a09636f6c6f723a20233533363438323b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a6831207b0a09636f6c6f723a20234646464646463b0a7d0a0a6832207b0a09636f6c6f723a20233238333133463b0a7d0a0a6833207b0a09626f726465722d626f74746f6d2d636f6c6f723a20234343434343433b0a09636f6c6f723a20233131353039383b0a7d0a0a6872207b0a09626f726465722d636f6c6f723a20234646464646463b0a09626f726465722d746f702d636f6c6f723a20234343434343433b0a7d0a0a68722e646173686564207b0a09626f726465722d746f702d636f6c6f723a20234343434343433b0a7d0a0a2f2a2053656172636820626f780a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a237365617263682d626f78207b0a09636f6c6f723a20234646464646463b0a7d0a0a237365617263682d626f7820236b6579776f726473207b0a096261636b67726f756e642d636f6c6f723a20234646463b0a7d0a0a237365617263682d626f7820696e707574207b0a09626f726465722d636f6c6f723a20233030373542303b0a7d0a0a2f2a20526f756e6420636f726e6572656420626f78657320616e64206261636b67726f756e64730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e686561646572626172207b0a096261636b67726f756e642d636f6c6f723a20233132413345423b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f6865616465722e67696622293b0a09636f6c6f723a20234646464646463b0a7d0a0a2e6e6176626172207b0a096261636b67726f756e642d636f6c6f723a20236361646365623b0a7d0a0a2e666f72616267207b0a096261636b67726f756e642d636f6c6f723a20233030373662313b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f6c6973742e67696622293b0a7d0a0a2e666f72756d6267207b0a096261636b67726f756e642d636f6c6f723a20233132413345423b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f6865616465722e67696622293b0a7d0a0a2e70616e656c207b0a096261636b67726f756e642d636f6c6f723a20234543463146333b0a09636f6c6f723a20233238333133463b0a7d0a0a2e706f73743a746172676574202e636f6e74656e74207b0a09636f6c6f723a20233030303030303b0a7d0a0a2e706f73743a7461726765742068332061207b0a09636f6c6f723a20233030303030303b0a7d0a0a2e626731097b206261636b67726f756e642d636f6c6f723a20234543463346373b207d0a2e626732097b206261636b67726f756e642d636f6c6f723a20236531656266323b20207d0a2e626733097b206261636b67726f756e642d636f6c6f723a20236361646365623b207d0a0a2e756370726f776267207b0a096261636b67726f756e642d636f6c6f723a20234443444545323b0a7d0a0a2e6669656c64736267207b0a096261636b67726f756e642d636f6c6f723a20234537453845413b0a7d0a0a7370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c6566742e706e6722293b0a7d0a0a7370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f72696768742e706e6722293b0a7d0a0a7370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c6566742e706e6722293b0a7d0a0a7370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f72696768742e706e6722293b0a7d0a0a2f2a20486f72697a6f6e74616c206c697374730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a756c2e6e61766c696e6b73207b0a09626f726465722d626f74746f6d2d636f6c6f723a20234646464646463b0a7d0a0a2f2a205461626c65207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a7461626c652e7461626c6531207468656164207468207b0a09636f6c6f723a20234646464646463b0a7d0a0a7461626c652e7461626c65312074626f6479207472207b0a09626f726465722d636f6c6f723a20234246433143463b0a7d0a0a7461626c652e7461626c65312074626f64792074723a686f7665722c207461626c652e7461626c65312074626f64792074722e686f766572207b0a096261636b67726f756e642d636f6c6f723a20234346453146363b0a09636f6c6f723a20233030303b0a7d0a0a7461626c652e7461626c6531207464207b0a09636f6c6f723a20233533363438323b0a7d0a0a7461626c652e7461626c65312074626f6479207464207b0a09626f726465722d746f702d636f6c6f723a20234641464146413b0a7d0a0a7461626c652e7461626c65312074626f6479207468207b0a09626f726465722d626f74746f6d2d636f6c6f723a20233030303030303b0a09636f6c6f723a20233333333333333b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a7461626c652e696e666f2074626f6479207468207b0a09636f6c6f723a20233030303030303b0a7d0a0a2f2a204d697363206c61796f7574207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a646c2e64657461696c73206474207b0a09636f6c6f723a20233030303030303b0a7d0a0a646c2e64657461696c73206464207b0a09636f6c6f723a20233533363438323b0a7d0a0a2e736570207b0a09636f6c6f723a20233131393844393b0a7d0a0a2f2a20506167696e6174696f6e0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2e706167696e6174696f6e207370616e207374726f6e67207b0a09636f6c6f723a20234646464646463b0a096261636b67726f756e642d636f6c6f723a20233436393242463b0a09626f726465722d636f6c6f723a20233436393242463b0a7d0a0a2e706167696e6174696f6e207370616e20612c202e706167696e6174696f6e207370616e20613a6c696e6b2c202e706167696e6174696f6e207370616e20613a766973697465642c202e706167696e6174696f6e207370616e20613a616374697665207b0a09636f6c6f723a20233543373538433b0a096261636b67726f756e642d636f6c6f723a20234543454445453b0a09626f726465722d636f6c6f723a20234234424143303b0a7d0a0a2e706167696e6174696f6e207370616e20613a686f766572207b0a09626f726465722d636f6c6f723a20233336384144323b0a096261636b67726f756e642d636f6c6f723a20233336384144323b0a09636f6c6f723a20234646463b0a7d0a0a2f2a20506167696e6174696f6e20696e2076696577666f72756d20666f72206d756c74697061676520746f70696373202a2f0a2e726f77202e706167696e6174696f6e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f70616765732e67696622293b0a7d0a0a2e726f77202e706167696e6174696f6e207370616e20612c206c692e706167696e6174696f6e207370616e2061207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2e726f77202e706167696e6174696f6e207370616e20613a686f7665722c206c692e706167696e6174696f6e207370616e20613a686f766572207b0a096261636b67726f756e642d636f6c6f723a20233336384144323b0a7d0a0a2f2a204d697363656c6c616e656f7573207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2e636f70797269676874207b0a09636f6c6f723a20233535353535353b0a7d0a0a2e6572726f72207b0a09636f6c6f723a20234243324134443b0a7d0a0a2e7265706f72746564207b0a096261636b67726f756e642d636f6c6f723a20234637454345463b0a7d0a0a6c692e7265706f727465643a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234543443544382021696d706f7274616e743b0a7d0a2e737469636b792c202e616e6e6f756e6365207b0a092f2a20796f752063616e206164642061206261636b67726f756e6420666f7220737469636b69657320616e6420616e6e6f756e63656d656e74732a2f0a7d0a0a6469762e72756c6573207b0a096261636b67726f756e642d636f6c6f723a20234543443544383b0a09636f6c6f723a20234243324134443b0a7d0a0a702e72756c6573207b0a096261636b67726f756e642d636f6c6f723a20234543443544383b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f72206c696e6b732e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a613a6c696e6b097b20636f6c6f723a20233130353238393b207d0a613a76697369746564097b20636f6c6f723a20233130353238393b207d0a613a686f766572097b20636f6c6f723a20234433313134313b207d0a613a616374697665097b20636f6c6f723a20233336384144323b207d0a0a2f2a204c696e6b73206f6e206772616469656e74206261636b67726f756e6473202a2f0a237365617263682d626f7820613a6c696e6b2c202e6e6176626720613a6c696e6b2c202e666f72756d6267202e68656164657220613a6c696e6b2c202e666f72616267202e68656164657220613a6c696e6b2c20746820613a6c696e6b207b0a09636f6c6f723a20234646464646463b0a7d0a0a237365617263682d626f7820613a766973697465642c202e6e6176626720613a766973697465642c202e666f72756d6267202e68656164657220613a766973697465642c202e666f72616267202e68656164657220613a766973697465642c20746820613a76697369746564207b0a09636f6c6f723a20234646464646463b0a7d0a0a237365617263682d626f7820613a686f7665722c202e6e6176626720613a686f7665722c202e666f72756d6267202e68656164657220613a686f7665722c202e666f72616267202e68656164657220613a686f7665722c20746820613a686f766572207b0a09636f6c6f723a20234138443846463b0a7d0a0a237365617263682d626f7820613a6163746976652c202e6e6176626720613a6163746976652c202e666f72756d6267202e68656164657220613a6163746976652c202e666f72616267202e68656164657220613a6163746976652c20746820613a616374697665207b0a09636f6c6f723a20234338453646463b0a7d0a0a2f2a204c696e6b7320666f7220666f72756d2f746f706963206c69737473202a2f0a612e666f72756d7469746c65207b0a09636f6c6f723a20233130353238393b0a7d0a0a2f2a20612e666f72756d7469746c653a76697369746564207b20636f6c6f723a20233130353238393b207d202a2f0a0a612e666f72756d7469746c653a686f766572207b0a09636f6c6f723a20234243324134443b0a7d0a0a612e666f72756d7469746c653a616374697665207b0a09636f6c6f723a20233130353238393b0a7d0a0a612e746f7069637469746c65207b0a09636f6c6f723a20233130353238393b0a7d0a0a2f2a20612e746f7069637469746c653a76697369746564207b20636f6c6f723a20233336384144323b207d202a2f0a0a612e746f7069637469746c653a686f766572207b0a09636f6c6f723a20234243324134443b0a7d0a0a612e746f7069637469746c653a616374697665207b0a09636f6c6f723a20233130353238393b0a7d0a0a2f2a20506f737420626f6479206c696e6b73202a2f0a2e706f73746c696e6b207b0a09636f6c6f723a20233336384144323b0a09626f726465722d626f74746f6d2d636f6c6f723a20233336384144323b0a7d0a0a2e706f73746c696e6b3a76697369746564207b0a09636f6c6f723a20233544384642443b0a09626f726465722d626f74746f6d2d636f6c6f723a20233636363636363b0a7d0a0a2e706f73746c696e6b3a616374697665207b0a09636f6c6f723a20233336384144323b0a7d0a0a2e706f73746c696e6b3a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234430453446363b0a09636f6c6f723a20233044343437333b0a7d0a0a2e7369676e617475726520612c202e7369676e617475726520613a766973697465642c202e7369676e617475726520613a6163746976652c202e7369676e617475726520613a686f766572207b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e743b0a7d0a0a2f2a2050726f66696c65206c696e6b73202a2f0a2e706f737470726f66696c6520613a6c696e6b2c202e706f737470726f66696c6520613a6163746976652c202e706f737470726f66696c6520613a766973697465642c202e706f737470726f66696c652064742e617574686f722061207b0a09636f6c6f723a20233130353238393b0a7d0a0a2e706f737470726f66696c6520613a686f7665722c202e706f737470726f66696c652064742e617574686f7220613a686f766572207b0a09636f6c6f723a20234433313134313b0a7d0a0a2f2a2050726f66696c6520736561726368726573756c7473202a2f090a2e736561726368202e706f737470726f66696c652061207b0a09636f6c6f723a20233130353238393b0a7d0a0a2e736561726368202e706f737470726f66696c6520613a686f766572207b0a09636f6c6f723a20234433313134313b0a7d0a0a2f2a204261636b20746f20746f70206f662070616765202a2f0a612e746f70207b0a096261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f4241434b5f544f505f5352437d22293b0a7d0a0a612e746f7032207b0a096261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f4241434b5f544f505f5352437d22293b0a7d0a0a2f2a204172726f77206c696e6b7320202a2f0a612e757009097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f6172726f775f75702e6769662229207d0a612e646f776e09097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f6172726f775f646f776e2e6769662229207d0a612e6c65667409097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f6172726f775f6c6566742e6769662229207d0a612e726967687409097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f6172726f775f72696768742e6769662229207d0a0a612e75703a686f766572207b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e743b0a7d0a0a612e6c6566743a686f766572207b0a09636f6c6f723a20233336384144323b0a7d0a0a612e72696768743a686f766572207b0a09636f6c6f723a20233336384144323b0a7d0a0a0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f7220636f6e74656e742e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a756c2e666f72756d73207b0a096261636b67726f756e642d636f6c6f723a20236565663566393b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f6772616469656e742e67696622293b0a7d0a0a756c2e746f7069636c697374206c69207b0a09636f6c6f723a20233443354437373b0a7d0a0a756c2e746f7069636c697374206464207b0a09626f726465722d6c6566742d636f6c6f723a20234646464646463b0a7d0a0a2e72746c20756c2e746f7069636c697374206464207b0a09626f726465722d72696768742d636f6c6f723a20236666663b0a09626f726465722d6c6566742d636f6c6f723a207472616e73706172656e743b0a7d0a0a756c2e746f7069636c697374206c692e726f7720647420612e737562666f72756d2e72656164207b0a096261636b67726f756e642d696d6167653a2075726c28227b494d475f535542464f52554d5f524541445f5352437d22293b0a7d0a0a756c2e746f7069636c697374206c692e726f7720647420612e737562666f72756d2e756e72656164207b0a096261636b67726f756e642d696d6167653a2075726c28227b494d475f535542464f52554d5f554e524541445f5352437d22293b0a7d0a0a6c692e726f77207b0a09626f726465722d746f702d636f6c6f723a2020234646464646463b0a09626f726465722d626f74746f6d2d636f6c6f723a20233030363038463b0a7d0a0a6c692e726f77207374726f6e67207b0a09636f6c6f723a20233030303030303b0a7d0a0a6c692e726f773a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234636463444303b0a7d0a0a6c692e726f773a686f766572206464207b0a09626f726465722d6c6566742d636f6c6f723a20234343434343433b0a7d0a0a2e72746c206c692e726f773a686f766572206464207b0a09626f726465722d72696768742d636f6c6f723a20234343434343433b0a09626f726465722d6c6566742d636f6c6f723a207472616e73706172656e743b0a7d0a0a6c692e6865616465722064742c206c692e686561646572206464207b0a09636f6c6f723a20234646464646463b0a7d0a0a2f2a20466f72756d206c69737420636f6c756d6e207374796c6573202a2f0a756c2e746f7069636c6973742064642e7365617263686578747261207b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20506f737420626f6479207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e706f7374626f6479207b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20436f6e74656e7420636f6e7461696e6572207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e636f6e74656e74207b0a09636f6c6f723a20233333333333333b0a7d0a0a2e636f6e74656e742068322c202e70616e656c206832207b0a09636f6c6f723a20233131353039383b0a09626f726465722d626f74746f6d2d636f6c6f723a2020234343434343433b0a7d0a0a646c2e666171206474207b0a09636f6c6f723a20233333333333333b0a7d0a0a2e706f737468696c6974207b0a096261636b67726f756e642d636f6c6f723a20234633424643433b0a09636f6c6f723a20234243324134443b0a7d0a0a2f2a20506f7374207369676e6174757265202a2f0a2e7369676e6174757265207b0a09626f726465722d746f702d636f6c6f723a20234343434343433b0a7d0a0a2f2a20506f7374206e6f746963696573202a2f0a2e6e6f74696365207b0a09626f726465722d746f702d636f6c6f723a2020234343434343433b0a7d0a0a2f2a20424220436f6465207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2f2a2051756f746520626c6f636b202a2f0a626c6f636b71756f7465207b0a096261636b67726f756e642d636f6c6f723a20234542454144443b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f71756f74652e67696622293b0a09626f726465722d636f6c6f723a234442444243453b0a7d0a0a626c6f636b71756f746520626c6f636b71756f7465207b0a092f2a204e65737465642071756f746573202a2f0a096261636b67726f756e642d636f6c6f723a234546454544393b0a7d0a0a626c6f636b71756f746520626c6f636b71756f746520626c6f636b71756f7465207b0a092f2a204e65737465642071756f746573202a2f0a096261636b67726f756e642d636f6c6f723a20234542454144443b0a7d0a0a2f2a20436f646520626c6f636b202a2f0a646c2e636f6465626f78207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465722d636f6c6f723a20234339443244383b0a7d0a0a646c2e636f6465626f78206474207b0a09626f726465722d626f74746f6d2d636f6c6f723a2020234343434343433b0a7d0a0a646c2e636f6465626f7820636f6465207b0a09636f6c6f723a20233245384235373b0a7d0a0a2e73796e746178626709097b20636f6c6f723a20234646464646463b207d0a2e73796e746178636f6d6d656e74097b20636f6c6f723a20234646383030303b207d0a2e73796e74617864656661756c74097b20636f6c6f723a20233030303042423b207d0a2e73796e74617868746d6c09097b20636f6c6f723a20233030303030303b207d0a2e73796e7461786b6579776f7264097b20636f6c6f723a20233030373730303b207d0a2e73796e746178737472696e67097b20636f6c6f723a20234444303030303b207d0a0a2f2a204174746163686d656e74730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e617474616368626f78207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465722d636f6c6f723a2020234339443244383b0a7d0a0a2e706d2d6d657373616765202e617474616368626f78207b0a096261636b67726f756e642d636f6c6f723a20234632463346333b0a7d0a0a2e617474616368626f78206464207b0a09626f726465722d746f702d636f6c6f723a20234339443244383b0a7d0a0a2e617474616368626f782070207b0a09636f6c6f723a20233636363636363b0a7d0a0a2e617474616368626f7820702e7374617473207b0a09636f6c6f723a20233636363636363b0a7d0a0a2e6174746163682d696d61676520696d67207b0a09626f726465722d636f6c6f723a20233939393939393b0a7d0a0a2f2a20496e6c696e6520696d616765207468756d626e61696c73202a2f0a0a646c2e66696c65206464207b0a09636f6c6f723a20233636363636363b0a7d0a0a646c2e7468756d626e61696c20696d67207b0a09626f726465722d636f6c6f723a20233636363636363b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a646c2e7468756d626e61696c206464207b0a09636f6c6f723a20233636363636363b0a7d0a0a646c2e7468756d626e61696c20647420613a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234545454545453b0a7d0a0a646c2e7468756d626e61696c20647420613a686f76657220696d67207b0a09626f726465722d636f6c6f723a20233336384144323b0a7d0a0a2f2a20506f737420706f6c6c207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a6669656c647365742e706f6c6c7320646c207b0a09626f726465722d746f702d636f6c6f723a20234443444545323b0a09636f6c6f723a20233636363636363b0a7d0a0a6669656c647365742e706f6c6c7320646c2e766f746564207b0a09636f6c6f723a20233030303030303b0a7d0a0a6669656c647365742e706f6c6c7320646420646976207b0a09636f6c6f723a20234646464646463b0a7d0a0a2e72746c202e706f6c6c626172312c202e72746c202e706f6c6c626172322c202e72746c202e706f6c6c626172332c202e72746c202e706f6c6c626172342c202e72746c202e706f6c6c62617235207b0a09626f726465722d72696768742d636f6c6f723a207472616e73706172656e743b0a7d0a0a2e706f6c6c62617231207b0a096261636b67726f756e642d636f6c6f723a20234141323334363b0a09626f726465722d626f74746f6d2d636f6c6f723a20233734313632433b0a09626f726465722d72696768742d636f6c6f723a20233734313632433b0a7d0a0a2e72746c202e706f6c6c62617231207b0a09626f726465722d6c6566742d636f6c6f723a20233734313632433b0a7d0a0a2e706f6c6c62617232207b0a096261636b67726f756e642d636f6c6f723a20234245314534413b0a09626f726465722d626f74746f6d2d636f6c6f723a20233843314333383b0a09626f726465722d72696768742d636f6c6f723a20233843314333383b0a7d0a0a2e72746c202e706f6c6c62617232207b0a09626f726465722d6c6566742d636f6c6f723a20233843314333383b0a7d0a0a2e706f6c6c62617233207b0a096261636b67726f756e642d636f6c6f723a20234431314134453b0a09626f726465722d626f74746f6d2d636f6c6f723a20234141323334363b0a09626f726465722d72696768742d636f6c6f723a20234141323334363b0a7d0a0a2e72746c202e706f6c6c62617233207b0a09626f726465722d6c6566742d636f6c6f723a20234141323334363b0a7d0a0a2e706f6c6c62617234207b0a096261636b67726f756e642d636f6c6f723a20234534313635333b0a09626f726465722d626f74746f6d2d636f6c6f723a20234245314534413b0a09626f726465722d72696768742d636f6c6f723a20234245314534413b0a7d0a0a2e72746c202e706f6c6c62617234207b0a09626f726465722d6c6566742d636f6c6f723a20234245314534413b0a7d0a0a2e706f6c6c62617235207b0a096261636b67726f756e642d636f6c6f723a20234638313135373b0a09626f726465722d626f74746f6d2d636f6c6f723a20234431314134453b0a09626f726465722d72696768742d636f6c6f723a20234431314134453b0a7d0a0a2e72746c202e706f6c6c62617235207b0a09626f726465722d6c6566742d636f6c6f723a20234431314134453b0a7d0a0a2f2a20506f737465722070726f66696c6520626c6f636b0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e706f737470726f66696c65207b0a09636f6c6f723a20233636363636363b0a09626f726465722d6c6566742d636f6c6f723a20234646464646463b0a7d0a0a2e72746c202e706f737470726f66696c65207b0a09626f726465722d72696768742d636f6c6f723a20234646464646463b0a09626f726465722d6c6566742d636f6c6f723a207472616e73706172656e743b0a7d0a0a2e706d202e706f737470726f66696c65207b0a09626f726465722d6c6566742d636f6c6f723a20234444444444443b0a7d0a0a2e72746c202e706d202e706f737470726f66696c65207b0a09626f726465722d72696768742d636f6c6f723a20234444444444443b0a09626f726465722d6c6566742d636f6c6f723a207472616e73706172656e743b0a7d0a0a2e706f737470726f66696c65207374726f6e67207b0a09636f6c6f723a20233030303030303b0a7d0a0a2e6f6e6c696e65207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f494d4147455345545f4c414e475f504154487d2f69636f6e5f757365725f6f6e6c696e652e67696622293b0a7d0a0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f7220627574746f6e732e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a2042696720627574746f6e20696d61676573202a2f0a2e7265706c792d69636f6e207370616e097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f544f5049435f5245504c595f5352437d22293b207d0a2e706f73742d69636f6e207370616e09097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f544f5049435f4e45575f5352437d22293b207d0a2e6c6f636b65642d69636f6e207370616e097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f544f5049435f4c4f434b45445f5352437d22293b207d0a2e706d7265706c792d69636f6e207370616e097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f504d5f5245504c595f5352437d2229203b7d0a2e6e6577706d2d69636f6e207370616e20097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f504d5f4e45575f5352437d2229203b7d0a2e666f7277617264706d2d69636f6e207370616e097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f504d5f464f52574152445f5352437d2229203b7d0a0a612e7072696e74207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f7072696e742e67696622293b0a7d0a0a612e73656e64656d61696c207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f73656e64656d61696c2e67696622293b0a7d0a0a612e666f6e7473697a65207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f666f6e7473697a652e67696622293b0a7d0a0a2f2a2049636f6e20696d616765730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e73697465686f6d650909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f686f6d652e67696622293b207d0a2e69636f6e2d6661710909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f6661712e67696622293b207d0a2e69636f6e2d6d656d6265727309090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f6d656d626572732e67696622293b207d0a2e69636f6e2d686f6d650909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f686f6d652e67696622293b207d0a2e69636f6e2d7563700909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f7563702e67696622293b207d0a2e69636f6e2d726567697374657209090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f72656769737465722e67696622293b207d0a2e69636f6e2d6c6f676f757409090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f6c6f676f75742e67696622293b207d0a2e69636f6e2d626f6f6b6d61726b09090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f626f6f6b6d61726b2e67696622293b207d0a2e69636f6e2d62756d700909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f62756d702e67696622293b207d0a2e69636f6e2d73756273637269626509090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f7375627363726962652e67696622293b207d0a2e69636f6e2d756e737562736372696265090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f756e7375627363726962652e67696622293b207d0a2e69636f6e2d70616765730909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f70616765732e67696622293b207d0a2e69636f6e2d73656172636809090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f7365617263682e67696622293b207d0a0a2f2a2050726f66696c652026206e617669676174696f6e2069636f6e73202a2f0a2e656d61696c2d69636f6e2c202e656d61696c2d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f454d41494c5f5352437d22293b207d0a2e61696d2d69636f6e2c202e61696d2d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f41494d5f5352437d22293b207d0a2e7961686f6f2d69636f6e2c202e7961686f6f2d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f5941484f4f5f5352437d22293b207d0a2e7765622d69636f6e2c202e7765622d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f5757575f5352437d22293b207d0a2e6d736e6d2d69636f6e2c202e6d736e6d2d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f4d534e4d5f5352437d22293b207d0a2e6963712d69636f6e2c202e6963712d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f4943515f5352437d22293b207d0a2e6a61626265722d69636f6e2c202e6a61626265722d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f4a41424245525f5352437d22293b207d0a2e706d2d69636f6e2c202e706d2d69636f6e2061090909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f504d5f5352437d22293b207d0a2e71756f74652d69636f6e2c202e71756f74652d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f504f53545f51554f54455f5352437d22293b207d0a0a2f2a204d6f64657261746f722069636f6e73202a2f0a2e7265706f72742d69636f6e2c202e7265706f72742d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f504f53545f5245504f52545f5352437d22293b207d0a2e656469742d69636f6e2c202e656469742d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f504f53545f454449545f5352437d22293b207d0a2e64656c6574652d69636f6e2c202e64656c6574652d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f504f53545f44454c4554455f5352437d22293b207d0a2e696e666f2d69636f6e2c202e696e666f2d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f504f53545f494e464f5f5352437d22293b207d0a2e7761726e2d69636f6e2c202e7761726e2d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f555345525f5741524e5f5352437d22293b207d202f2a204e6565642075706461746564207761726e2069636f6e202a2f0a0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f722063702e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a204d61696e20435020626f780a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a2363702d6d61696e2068332c202363702d6d61696e2068722c202363702d6d656e75206872207b0a09626f726465722d636f6c6f723a20234134423342463b0a7d0a0a2363702d6d61696e202e70616e656c206c692e726f77207b0a09626f726465722d626f74746f6d2d636f6c6f723a20234235433143423b0a09626f726465722d746f702d636f6c6f723a20234639463946393b0a7d0a0a756c2e63706c697374207b0a09626f726465722d746f702d636f6c6f723a20234235433143423b0a7d0a0a2363702d6d61696e202e70616e656c206c692e6865616465722064642c202363702d6d61696e202e70616e656c206c692e686561646572206474207b0a09636f6c6f723a20233030303030303b0a7d0a0a2363702d6d61696e207461626c652e7461626c6531207468656164207468207b0a09636f6c6f723a20233333333333333b0a09626f726465722d626f74746f6d2d636f6c6f723a20233333333333333b0a7d0a0a2363702d6d61696e202e706d2d6d657373616765207b0a09626f726465722d636f6c6f723a20234442444545323b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2f2a20435020746162626564206d656e750a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a23746162732061207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f74616273312e67696622293b0a7d0a0a23746162732061207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f74616273322e67696622293b0a09636f6c6f723a20233533363438323b0a7d0a0a237461627320613a686f766572207370616e207b0a09636f6c6f723a20234243324134443b0a7d0a0a2374616273202e6163746976657461622061207b0a09626f726465722d626f74746f6d2d636f6c6f723a20234341444345423b0a7d0a0a2374616273202e6163746976657461622061207370616e207b0a09636f6c6f723a20233333333333333b0a7d0a0a2374616273202e61637469766574616220613a686f766572207370616e207b0a09636f6c6f723a20233030303030303b0a7d0a0a2f2a204d696e6920746162626564206d656e75207573656420696e204d43500a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a236d696e6974616273206c69207b0a096261636b67726f756e642d636f6c6f723a20234531454246323b0a7d0a0a236d696e6974616273206c692e616374697665746162207b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a7d0a0a236d696e6974616273206c692e61637469766574616220612c20236d696e6974616273206c692e61637469766574616220613a686f766572207b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20554350206e617669676174696f6e206d656e750a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a2f2a204c696e6b207374796c657320666f7220746865207375622d73656374696f6e206c696e6b73202a2f0a236e617669676174696f6e2061207b0a09636f6c6f723a20233333333b0a096261636b67726f756e642d636f6c6f723a20234232433243463b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f6d656e752e67696622293b0a7d0a0a236e617669676174696f6e20613a686f766572207b0a096261636b67726f756e642d636f6c6f723a20236161626163363b0a09636f6c6f723a20234243324134443b0a7d0a0a236e617669676174696f6e20236163746976652d73756273656374696f6e2061207b0a09636f6c6f723a20234433313134313b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a236e617669676174696f6e20236163746976652d73756273656374696f6e20613a686f766572207b0a09636f6c6f723a20234433313134313b0a7d0a0a2f2a20507265666572656e6365732070616e65206c61796f75740a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2363702d6d61696e206832207b0a09636f6c6f723a20233333333333333b0a7d0a0a2363702d6d61696e202e70616e656c207b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a7d0a0a2363702d6d61696e202e706d207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d746f702c202363702d6d656e75207370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c656674322e67696622293b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d746f70207370616e2c202363702d6d656e75207370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f7269676874322e67696622293b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d626f74746f6d2c202363702d6d656e75207370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c656674322e67696622293b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d626f74746f6d207370616e2c202363702d6d656e75207370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f7269676874322e67696622293b0a7d0a0a2f2a20546f706963726576696577202a2f0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f702c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c6566742e67696622293b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207370616e2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f72696768742e67696622293b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c6566742e67696622293b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207370616e2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f72696768742e67696622293b0a7d0a0a2f2a20467269656e6473206c697374202a2f0a2e63702d6d696e69207b0a096261636b67726f756e642d636f6c6f723a20236565663566393b0a7d0a0a646c2e6d696e69206474207b0a09636f6c6f723a20233432353036373b0a7d0a0a2f2a20504d205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2f2a20504d204d65737361676520686973746f7279202a2f0a2e63757272656e74207b0a09636f6c6f723a20233939393939392021696d706f7274616e743b0a7d0a0a2f2a20504d206d61726b696e6720636f6c6f757273202a2f0a2e706d6c697374206c692e706d5f6d6573736167655f7265706f727465645f636f6c6f75722c202e706d5f6d6573736167655f7265706f727465645f636f6c6f7572207b0a09626f726465722d6c6566742d636f6c6f723a20234243324134443b0a09626f726465722d72696768742d636f6c6f723a20234243324134443b0a7d0a0a2e706d6c697374206c692e706d5f6d61726b65645f636f6c6f75722c202e706d5f6d61726b65645f636f6c6f7572207b0a09626f726465722d636f6c6f723a20234646363630303b0a7d0a0a2e706d6c697374206c692e706d5f7265706c6965645f636f6c6f75722c202e706d5f7265706c6965645f636f6c6f7572207b0a09626f726465722d636f6c6f723a20234139423843323b0a7d0a0a2e706d6c697374206c692e706d5f667269656e645f636f6c6f75722c202e706d5f667269656e645f636f6c6f7572207b0a09626f726465722d636f6c6f723a20233544384642443b0a7d0a0a706d6c697374206c692e706d5f666f655f636f6c6f75722c202e706d5f666f655f636f6c6f7572207b0a09626f726465722d636f6c6f723a20233030303030303b0a7d0a0a2f2a204176617461722067616c6c657279202a2f0a2367616c6c657279206c6162656c207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465722d636f6c6f723a20234343433b0a7d0a0a2367616c6c657279206c6162656c3a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234545453b0a7d0a0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f7220666f726d732e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a2047656e6572616c20666f726d207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a73656c656374207b0a09626f726465722d636f6c6f723a20233636363636363b0a096261636b67726f756e642d636f6c6f723a20234641464146413b0a7d0a0a6c6162656c207b0a09636f6c6f723a20233432353036373b0a7d0a0a6f7074696f6e2e64697361626c65642d6f7074696f6e207b0a09636f6c6f723a2067726179746578743b0a7d0a0a2f2a20446566696e6974696f6e206c697374206c61796f757420666f7220666f726d730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a6464206c6162656c207b0a09636f6c6f723a20233333333b0a7d0a0a2f2a20486f7665722065666665637473202a2f0a6669656c6473657420646c3a686f766572206474206c6162656c207b0a09636f6c6f723a20233030303030303b0a7d0a0a6669656c647365742e6669656c64733220646c3a686f766572206474206c6162656c207b0a09636f6c6f723a20696e68657269743b0a7d0a0a2f2a20517569636b2d6c6f67696e206f6e20696e6465782070616765202a2f0a6669656c647365742e717569636b2d6c6f67696e20696e7075742e696e707574626f78207b0a096261636b67726f756e642d636f6c6f723a20234632463346333b0a7d0a0a2f2a20506f7374696e672070616765207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a236d6573736167652d626f78207465787461726561207b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20496e707574206669656c64207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e696e707574626f78207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b200a09626f726465722d636f6c6f723a20234234424143303b0a09636f6c6f723a20233333333333333b0a7d0a0a2e696e707574626f783a686f766572207b0a09626f726465722d636f6c6f723a20233131413345413b0a7d0a0a2e696e707574626f783a666f637573207b0a09626f726465722d636f6c6f723a20233131413345413b0a09636f6c6f723a20233046343938373b0a7d0a0a2f2a20466f726d20627574746f6e207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a612e627574746f6e312c20696e7075742e627574746f6e312c20696e7075742e627574746f6e332c20612e627574746f6e322c20696e7075742e627574746f6e32207b0a09636f6c6f723a20233030303b0a096261636b67726f756e642d636f6c6f723a20234641464146413b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f627574746f6e2e67696622293b0a7d0a0a612e627574746f6e312c20696e7075742e627574746f6e31207b0a09626f726465722d636f6c6f723a20233636363636363b0a7d0a0a696e7075742e627574746f6e33207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2f2a20416c7465726e617469766520627574746f6e202a2f0a612e627574746f6e322c20696e7075742e627574746f6e322c20696e7075742e627574746f6e33207b0a09626f726465722d636f6c6f723a20233636363636363b0a7d0a0a2f2a203c613e20627574746f6e20696e20746865207374796c65206f662074686520666f726d20627574746f6e73202a2f0a612e627574746f6e312c20612e627574746f6e313a6c696e6b2c20612e627574746f6e313a766973697465642c20612e627574746f6e313a6163746976652c20612e627574746f6e322c20612e627574746f6e323a6c696e6b2c20612e627574746f6e323a766973697465642c20612e627574746f6e323a616374697665207b0a09636f6c6f723a20233030303030303b0a7d0a0a2f2a20486f76657220737461746573202a2f0a612e627574746f6e313a686f7665722c20696e7075742e627574746f6e313a686f7665722c20612e627574746f6e323a686f7665722c20696e7075742e627574746f6e323a686f7665722c20696e7075742e627574746f6e333a686f766572207b0a09626f726465722d636f6c6f723a20234243324134443b0a09636f6c6f723a20234243324134443b0a7d0a0a696e7075742e736561726368207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f74657874626f785f7365617263682e67696622293b0a7d0a0a696e7075742e64697361626c6564207b0a09636f6c6f723a20233636363636363b0a7d0a);
INSERT INTO `phpbb_styles_theme` (`theme_id`, `theme_name`, `theme_copyright`, `theme_path`, `theme_storedb`, `theme_mtime`, `theme_data`) VALUES
(2, 'AnimeZone', '&copy; AnimeZone, 2007', 'AnimeZone', 0, 1198872970, '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics`
--

CREATE TABLE IF NOT EXISTS `phpbb_topics` (
  `topic_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_approved` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `topic_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_poster` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_time_limit` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_views` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_replies` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_replies_real` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_status` tinyint(3) NOT NULL DEFAULT '0',
  `topic_type` tinyint(3) NOT NULL DEFAULT '0',
  `topic_first_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_first_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_first_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_last_poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_last_view_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_moved_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_bumped` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_bumper` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `poll_start` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_length` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_max_options` tinyint(4) NOT NULL DEFAULT '1',
  `poll_last_vote` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_vote_change` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `forum_id_type` (`forum_id`,`topic_type`),
  KEY `last_post_time` (`topic_last_post_time`),
  KEY `topic_approved` (`topic_approved`),
  KEY `forum_appr_last` (`forum_id`,`topic_approved`,`topic_last_post_id`),
  KEY `fid_time_moved` (`forum_id`,`topic_last_post_time`,`topic_moved_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `phpbb_topics`
--

INSERT INTO `phpbb_topics` (`topic_id`, `forum_id`, `icon_id`, `topic_attachment`, `topic_approved`, `topic_reported`, `topic_title`, `topic_poster`, `topic_time`, `topic_time_limit`, `topic_views`, `topic_replies`, `topic_replies_real`, `topic_status`, `topic_type`, `topic_first_post_id`, `topic_first_poster_name`, `topic_first_poster_colour`, `topic_last_post_id`, `topic_last_poster_id`, `topic_last_poster_name`, `topic_last_poster_colour`, `topic_last_post_subject`, `topic_last_post_time`, `topic_last_view_time`, `topic_moved_id`, `topic_bumped`, `topic_bumper`, `poll_title`, `poll_start`, `poll_length`, `poll_max_options`, `poll_last_vote`, `poll_vote_change`) VALUES
(1, 2, 0, 0, 1, 0, 'Chào mừng bạn đến với phpBB', 2, 1355800447, 0, 0, 0, 0, 0, 0, 1, 'admin', 'AA0000', 1, 2, 'admin', 'AA0000', 'Chào mừng bạn đến với phpBB', 1355800447, 972086460, 0, 0, 0, '', 0, 0, 1, 0, 0),
(2, 5, 0, 0, 1, 0, 'Acer giảm giá', 2, 1355800883, 0, 2, 0, 0, 0, 0, 2, 'admin', 'AA0000', 2, 2, 'admin', 'AA0000', 'Acer giảm giá', 1355800883, 1355800893, 0, 0, 0, '', 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics_posted`
--

CREATE TABLE IF NOT EXISTS `phpbb_topics_posted` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_topics_posted`
--

INSERT INTO `phpbb_topics_posted` (`user_id`, `topic_id`, `topic_posted`) VALUES
(2, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics_track`
--

CREATE TABLE IF NOT EXISTS `phpbb_topics_track` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mark_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`),
  KEY `forum_id` (`forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_topics_track`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics_watch`
--

CREATE TABLE IF NOT EXISTS `phpbb_topics_watch` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `topic_id` (`topic_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_topics_watch`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_users`
--

CREATE TABLE IF NOT EXISTS `phpbb_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(2) NOT NULL DEFAULT '0',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '3',
  `user_permissions` mediumtext COLLATE utf8_bin NOT NULL,
  `user_perm_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_regdate` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_password` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_passchg` int(11) unsigned NOT NULL DEFAULT '0',
  `user_pass_convert` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_email_hash` bigint(20) NOT NULL DEFAULT '0',
  `user_birthday` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_lastvisit` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastmark` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastpost_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastpage` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_confirm_key` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_search` int(11) unsigned NOT NULL DEFAULT '0',
  `user_warnings` tinyint(4) NOT NULL DEFAULT '0',
  `user_last_warning` int(11) unsigned NOT NULL DEFAULT '0',
  `user_login_attempts` tinyint(4) NOT NULL DEFAULT '0',
  `user_inactive_reason` tinyint(2) NOT NULL DEFAULT '0',
  `user_inactive_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_timezone` decimal(5,2) NOT NULL DEFAULT '0.00',
  `user_dst` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_dateformat` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT 'd M Y H:i',
  `user_style` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_unread_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_last_privmsg` int(11) unsigned NOT NULL DEFAULT '0',
  `user_message_rules` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_full_folder` int(11) NOT NULL DEFAULT '-3',
  `user_emailtime` int(11) unsigned NOT NULL DEFAULT '0',
  `user_topic_show_days` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_topic_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_topic_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'd',
  `user_post_show_days` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_post_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_post_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'a',
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_notify_pm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_notify_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_allow_pm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_viewonline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_viewemail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_massemail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_options` int(11) unsigned NOT NULL DEFAULT '895',
  `user_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_type` tinyint(2) NOT NULL DEFAULT '0',
  `user_avatar_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_avatar_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_sig` mediumtext COLLATE utf8_bin NOT NULL,
  `user_sig_bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_sig_bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_from` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_icq` varchar(15) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_aim` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_yim` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_msnm` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_jabber` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_website` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_occ` text COLLATE utf8_bin NOT NULL,
  `user_interests` text COLLATE utf8_bin NOT NULL,
  `user_actkey` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_newpasswd` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_form_salt` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username_clean` (`username_clean`),
  KEY `user_birthday` (`user_birthday`),
  KEY `user_email_hash` (`user_email_hash`),
  KEY `user_type` (`user_type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=53 ;

--
-- Dumping data for table `phpbb_users`
--

INSERT INTO `phpbb_users` (`user_id`, `user_type`, `group_id`, `user_permissions`, `user_perm_from`, `user_ip`, `user_regdate`, `username`, `username_clean`, `user_password`, `user_passchg`, `user_pass_convert`, `user_email`, `user_email_hash`, `user_birthday`, `user_lastvisit`, `user_lastmark`, `user_lastpost_time`, `user_lastpage`, `user_last_confirm_key`, `user_last_search`, `user_warnings`, `user_last_warning`, `user_login_attempts`, `user_inactive_reason`, `user_inactive_time`, `user_posts`, `user_lang`, `user_timezone`, `user_dst`, `user_dateformat`, `user_style`, `user_rank`, `user_colour`, `user_new_privmsg`, `user_unread_privmsg`, `user_last_privmsg`, `user_message_rules`, `user_full_folder`, `user_emailtime`, `user_topic_show_days`, `user_topic_sortby_type`, `user_topic_sortby_dir`, `user_post_show_days`, `user_post_sortby_type`, `user_post_sortby_dir`, `user_notify`, `user_notify_pm`, `user_notify_type`, `user_allow_pm`, `user_allow_viewonline`, `user_allow_viewemail`, `user_allow_massemail`, `user_options`, `user_avatar`, `user_avatar_type`, `user_avatar_width`, `user_avatar_height`, `user_sig`, `user_sig_bbcode_uid`, `user_sig_bbcode_bitfield`, `user_from`, `user_icq`, `user_aim`, `user_yim`, `user_msnm`, `user_jabber`, `user_website`, `user_occ`, `user_interests`, `user_actkey`, `user_newpasswd`, `user_form_salt`) VALUES
(1, 2, 1, '', 0, '', 1355800447, 'Anonymous', 'anonymous', '', 0, 0, '', 0, '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'd M Y H:i', 2, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a819340992cf26ba'),
(2, 3, 5, 0x7a696b307a6a7a696b307a6a7a696b3078730a6931636a796f3030303030300a7a696b307a6a7a68623274630a7a69696d66323030303030300a0a7a69696d6632303030303030, 0, '127.0.0.1', 1355800447, 'admin', 'admin', '$H$9pic.HUoxN6LWN28bmlDZGJEcn1zQR1', 0, 0, 'nhienit600@gmail.com', -29146810820, '', 0, 0, 1355800883, '', '', 0, 0, 0, 0, 0, 0, 2, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 1, 'AA0000', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '4819be53ba09759b'),
(3, 2, 6, '', 0, '', 1355800449, 'AdsBot [Google]', 'adsbot [google]', '', 1355800449, 0, '', 0, '', 0, 1355800449, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '513ba11774576039'),
(4, 2, 6, '', 0, '', 1355800450, 'Alexa [Bot]', 'alexa [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '399f74785436b780'),
(5, 2, 6, '', 0, '', 1355800450, 'Alta Vista [Bot]', 'alta vista [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '40b058b7bee80c53'),
(6, 2, 6, '', 0, '', 1355800450, 'Ask Jeeves [Bot]', 'ask jeeves [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '9c902d6c06b946c7'),
(7, 2, 6, '', 0, '', 1355800450, 'Baidu [Spider]', 'baidu [spider]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a95b30ac5d7162ea'),
(8, 2, 6, '', 0, '', 1355800450, 'Exabot [Bot]', 'exabot [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '3642f69103b9791e'),
(9, 2, 6, '', 0, '', 1355800450, 'FAST Enterprise [Crawler]', 'fast enterprise [crawler]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'cfe92baf54c025e7'),
(10, 2, 6, '', 0, '', 1355800450, 'FAST WebCrawler [Crawler]', 'fast webcrawler [crawler]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2d512ba283311765'),
(11, 2, 6, '', 0, '', 1355800450, 'Francis [Bot]', 'francis [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5c997d581cd11e6b'),
(12, 2, 6, '', 0, '', 1355800450, 'Gigabot [Bot]', 'gigabot [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1bcd99587a766a5f'),
(13, 2, 6, '', 0, '', 1355800450, 'Google Adsense [Bot]', 'google adsense [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '492c1dbdb2682425'),
(14, 2, 6, '', 0, '', 1355800450, 'Google Desktop', 'google desktop', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ca57455279eddd3e'),
(15, 2, 6, '', 0, '', 1355800450, 'Google Feedfetcher', 'google feedfetcher', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1bbf3b71fa78f530'),
(16, 2, 6, '', 0, '', 1355800450, 'Google [Bot]', 'google [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '7b61b32feba1a84d'),
(17, 2, 6, '', 0, '', 1355800450, 'Heise IT-Markt [Crawler]', 'heise it-markt [crawler]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'cd5c633a9dd92d65'),
(18, 2, 6, '', 0, '', 1355800450, 'Heritrix [Crawler]', 'heritrix [crawler]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '7d49eca764ff201e'),
(19, 2, 6, '', 0, '', 1355800450, 'IBM Research [Bot]', 'ibm research [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '32092ff1e291bf7e'),
(20, 2, 6, '', 0, '', 1355800450, 'ICCrawler - ICjobs', 'iccrawler - icjobs', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6eda67ef4d5f7370'),
(21, 2, 6, '', 0, '', 1355800450, 'ichiro [Crawler]', 'ichiro [crawler]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'abcb6608dfc82e72'),
(22, 2, 6, '', 0, '', 1355800450, 'Majestic-12 [Bot]', 'majestic-12 [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'acd930ad71ab1e52'),
(23, 2, 6, '', 0, '', 1355800450, 'Metager [Bot]', 'metager [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '296a153ef566228f'),
(24, 2, 6, '', 0, '', 1355800450, 'MSN NewsBlogs', 'msn newsblogs', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'e29dd9722134be29'),
(25, 2, 6, '', 0, '', 1355800450, 'MSN [Bot]', 'msn [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6d71131e3c77d229'),
(26, 2, 6, '', 0, '', 1355800450, 'MSNbot Media', 'msnbot media', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'b95fa40798ca229e'),
(27, 2, 6, '', 0, '', 1355800450, 'NG-Search [Bot]', 'ng-search [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5d0efabc79458fcd'),
(28, 2, 6, '', 0, '', 1355800450, 'Nutch [Bot]', 'nutch [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '37ea3e4db28e58e8'),
(29, 2, 6, '', 0, '', 1355800450, 'Nutch/CVS [Bot]', 'nutch/cvs [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '29b6f304ba3fa584'),
(30, 2, 6, '', 0, '', 1355800450, 'OmniExplorer [Bot]', 'omniexplorer [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '8f822b168ccb8c23'),
(31, 2, 6, '', 0, '', 1355800450, 'Online link [Validator]', 'online link [validator]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '4b19dc582a437608'),
(32, 2, 6, '', 0, '', 1355800450, 'psbot [Picsearch]', 'psbot [picsearch]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '92467e458b379757'),
(33, 2, 6, '', 0, '', 1355800450, 'Seekport [Bot]', 'seekport [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'e7f971c9f82391b2'),
(34, 2, 6, '', 0, '', 1355800450, 'Sensis [Crawler]', 'sensis [crawler]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '79797e7e39a23e21'),
(35, 2, 6, '', 0, '', 1355800450, 'SEO Crawler', 'seo crawler', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '34e51dd7924b830c'),
(36, 2, 6, '', 0, '', 1355800450, 'Seoma [Crawler]', 'seoma [crawler]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '67ea5727337d32db'),
(37, 2, 6, '', 0, '', 1355800450, 'SEOSearch [Crawler]', 'seosearch [crawler]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '71b9f14e5272fdf7'),
(38, 2, 6, '', 0, '', 1355800450, 'Snappy [Bot]', 'snappy [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '3732776de5025278'),
(39, 2, 6, '', 0, '', 1355800450, 'Steeler [Crawler]', 'steeler [crawler]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '3eb738de7f8d4cdb'),
(40, 2, 6, '', 0, '', 1355800450, 'Synoo [Bot]', 'synoo [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'be64f3f193f627d0'),
(41, 2, 6, '', 0, '', 1355800450, 'Telekom [Bot]', 'telekom [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '81c8a4f81e44b4a0'),
(42, 2, 6, '', 0, '', 1355800450, 'TurnitinBot [Bot]', 'turnitinbot [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '93ba85c195ff6021'),
(43, 2, 6, '', 0, '', 1355800450, 'Voyager [Bot]', 'voyager [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '46b87217761c1f03'),
(44, 2, 6, '', 0, '', 1355800450, 'W3 [Sitesearch]', 'w3 [sitesearch]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5d1298e5f221615a'),
(45, 2, 6, '', 0, '', 1355800450, 'W3C [Linkcheck]', 'w3c [linkcheck]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '7775c25b4f580a99'),
(46, 2, 6, '', 0, '', 1355800450, 'W3C [Validator]', 'w3c [validator]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'eead70eaf7ef3e5f'),
(47, 2, 6, '', 0, '', 1355800450, 'WiseNut [Bot]', 'wisenut [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ec89ad747a44f6a3'),
(48, 2, 6, '', 0, '', 1355800450, 'YaCy [Bot]', 'yacy [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '75edc27014749e8a'),
(49, 2, 6, '', 0, '', 1355800450, 'Yahoo MMCrawler [Bot]', 'yahoo mmcrawler [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'f355b7e9f90cfbc9'),
(50, 2, 6, '', 0, '', 1355800450, 'Yahoo Slurp [Bot]', 'yahoo slurp [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'f8ea7f5f36789cfc'),
(51, 2, 6, '', 0, '', 1355800450, 'Yahoo [Bot]', 'yahoo [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '03f8ea54c87bc932'),
(52, 2, 6, '', 0, '', 1355800450, 'YahooSeeker [Bot]', 'yahooseeker [bot]', '', 1355800450, 0, '', 0, '', 0, 1355800450, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'vi', 0.00, 0, 'D d M, Y g:i a', 2, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 895, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5d0038b326ed58ea');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_user_group`
--

CREATE TABLE IF NOT EXISTS `phpbb_user_group` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_leader` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_pending` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`),
  KEY `group_leader` (`group_leader`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_user_group`
--

INSERT INTO `phpbb_user_group` (`group_id`, `user_id`, `group_leader`, `user_pending`) VALUES
(1, 1, 0, 0),
(2, 2, 0, 0),
(4, 2, 0, 0),
(5, 2, 1, 0),
(6, 3, 0, 0),
(6, 4, 0, 0),
(6, 5, 0, 0),
(6, 6, 0, 0),
(6, 7, 0, 0),
(6, 8, 0, 0),
(6, 9, 0, 0),
(6, 10, 0, 0),
(6, 11, 0, 0),
(6, 12, 0, 0),
(6, 13, 0, 0),
(6, 14, 0, 0),
(6, 15, 0, 0),
(6, 16, 0, 0),
(6, 17, 0, 0),
(6, 18, 0, 0),
(6, 19, 0, 0),
(6, 20, 0, 0),
(6, 21, 0, 0),
(6, 22, 0, 0),
(6, 23, 0, 0),
(6, 24, 0, 0),
(6, 25, 0, 0),
(6, 26, 0, 0),
(6, 27, 0, 0),
(6, 28, 0, 0),
(6, 29, 0, 0),
(6, 30, 0, 0),
(6, 31, 0, 0),
(6, 32, 0, 0),
(6, 33, 0, 0),
(6, 34, 0, 0),
(6, 35, 0, 0),
(6, 36, 0, 0),
(6, 37, 0, 0),
(6, 38, 0, 0),
(6, 39, 0, 0),
(6, 40, 0, 0),
(6, 41, 0, 0),
(6, 42, 0, 0),
(6, 43, 0, 0),
(6, 44, 0, 0),
(6, 45, 0, 0),
(6, 46, 0, 0),
(6, 47, 0, 0),
(6, 48, 0, 0),
(6, 49, 0, 0),
(6, 50, 0, 0),
(6, 51, 0, 0),
(6, 52, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_warnings`
--

CREATE TABLE IF NOT EXISTS `phpbb_warnings` (
  `warning_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `warning_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`warning_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phpbb_warnings`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_words`
--

CREATE TABLE IF NOT EXISTS `phpbb_words` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `replacement` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`word_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phpbb_words`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_zebra`
--

CREATE TABLE IF NOT EXISTS `phpbb_zebra` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `zebra_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `friend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `foe` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`zebra_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_zebra`
--


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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=360 ;

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

-- --------------------------------------------------------

--
-- Table structure for table `webpoll_answers_ver`
--

CREATE TABLE IF NOT EXISTS `webpoll_answers_ver` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `QUESTION_ID` int(11) DEFAULT NULL,
  `ORDER_ID` int(10) DEFAULT NULL,
  `ANSWER` text,
  `COUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `webpoll_answers_ver`
--

INSERT INTO `webpoll_answers_ver` (`ID`, `QUESTION_ID`, `ORDER_ID`, `ANSWER`, `COUNT`) VALUES
(1, 1, 0, 'Answer 1', 0),
(2, 1, 1, 'Answer 2', 0),
(3, 2, 1, 'Acer', 0),
(4, 2, 2, 'HP', 0),
(5, 2, 3, 'Asus', 0),
(6, 2, 4, 'KhÃƒÂ¡c', 0);

-- --------------------------------------------------------

--
-- Table structure for table `webpoll_colors_ver`
--

CREATE TABLE IF NOT EXISTS `webpoll_colors_ver` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SET_NAME` varchar(200) DEFAULT NULL,
  `POLL_BG` varchar(7) DEFAULT NULL,
  `QUESTION_BG` varchar(7) DEFAULT NULL,
  `QUESTION_TXT` varchar(7) DEFAULT NULL,
  `ANSWER_TXT` varchar(7) DEFAULT NULL,
  `MOUSE_OVER` varchar(7) DEFAULT NULL,
  `MOUSE_OUT` varchar(7) DEFAULT NULL,
  `VOTE_BTN_BG` varchar(7) DEFAULT NULL,
  `VOTE_BTN_TXT` varchar(7) DEFAULT NULL,
  `TOTAL_VOTES` varchar(7) DEFAULT NULL,
  `VOTES_BAR` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `webpoll_colors_ver`
--

INSERT INTO `webpoll_colors_ver` (`ID`, `SET_NAME`, `POLL_BG`, `QUESTION_BG`, `QUESTION_TXT`, `ANSWER_TXT`, `MOUSE_OVER`, `MOUSE_OUT`, `VOTE_BTN_BG`, `VOTE_BTN_TXT`, `TOTAL_VOTES`, `VOTES_BAR`) VALUES
(1, 'Default Color Set', '999966', '000000', 'FFFFFF', 'FFFFFF', '999966', 'FFFFFF', '000000', 'FFFFFF', '000000', '000000'),
(2, '', 'FF0099', '33FF00', 'CC0000', 'CC6600', '0000FF', '00CC33', '66CC66', 'FFFF00', '9933CC', '990033');

-- --------------------------------------------------------

--
-- Table structure for table `webpoll_questions_ver`
--

CREATE TABLE IF NOT EXISTS `webpoll_questions_ver` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COLOR_SET_ID` varchar(11) DEFAULT NULL,
  `DAYS` varchar(5) DEFAULT NULL,
  `WIDTH` varchar(10) DEFAULT NULL,
  `HEIGHT` varchar(10) DEFAULT NULL,
  `QUESTION` varchar(100) DEFAULT NULL,
  `SHOW_RESULT` varchar(100) DEFAULT NULL,
  `ON_VOTE` varchar(100) DEFAULT NULL,
  `CUSTOM_MSG` varchar(100) DEFAULT NULL,
  `BTN_MSG` varchar(100) DEFAULT NULL,
  `TOTAL_MSG` varchar(100) DEFAULT NULL,
  `POLL_START` datetime DEFAULT NULL,
  `POLL_END` datetime DEFAULT NULL,
  `ALLOW_VOTE` varchar(5) DEFAULT NULL,
  `USE_TIME_INTERVAL` varchar(5) DEFAULT NULL,
  `VIEW_RESULTS` varchar(5) DEFAULT NULL,
  `VIEW_RESULTS_TITLE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `webpoll_questions_ver`
--

INSERT INTO `webpoll_questions_ver` (`ID`, `COLOR_SET_ID`, `DAYS`, `WIDTH`, `HEIGHT`, `QUESTION`, `SHOW_RESULT`, `ON_VOTE`, `CUSTOM_MSG`, `BTN_MSG`, `TOTAL_MSG`, `POLL_START`, `POLL_END`, `ALLOW_VOTE`, `USE_TIME_INTERVAL`, `VIEW_RESULTS`, `VIEW_RESULTS_TITLE`) VALUES
(1, '1', '0', '200', '400', 'Question?', 'amount_percent', 'total', '', 'Vote me!', 'Total votes:', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'true', 'false', 'true', 'view results'),
(2, '1', '0', '200', '250', 'BÃ¡ÂºÂ¡n thÃƒÂ­ch hÃƒÂ£ng laptop nÃƒÂ o?', 'amount_percent', 'total', '', 'BÃƒÂ¬nh chÃ¡Â»Ân', 'TÃ¡Â»Â•ng cÃ¡Â»Â™ng', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'true', 'false', 'true', 'KÃ¡ÂºÂ¿t quÃ¡ÂºÂ£ bÃƒÂ¬nh chÃ¡Â»Ân');

-- --------------------------------------------------------

--
-- Table structure for table `webpoll_votes_ver`
--

CREATE TABLE IF NOT EXISTS `webpoll_votes_ver` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `QUESTION_ID` int(11) DEFAULT NULL,
  `ANSWER_ID` int(11) DEFAULT NULL,
  `IP` varchar(25) DEFAULT NULL,
  `DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `webpoll_votes_ver`
--

