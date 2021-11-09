-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 16, 2021 at 04:19 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoppingonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `contack`
--

CREATE TABLE `contack` (
  `cid` int(10) NOT NULL,
  `csuject` varchar(100) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `cemail` varchar(100) NOT NULL,
  `ccompany` varchar(100) NOT NULL,
  `cmessage` text NOT NULL,
  `ctime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `mid` int(10) NOT NULL,
  `muser` varchar(50) NOT NULL,
  `mpassword` varchar(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `tel` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`mid`, `muser`, `mpassword`, `name`, `email`, `tel`) VALUES
(1, 'admin', '1234', 'รชต', 'admin@gmail.com', '0987654230'),
(2, 'nathakon', '1234', 'ณฐกร', 'nathakon@gmail.com', '0828529117'),
(3, 'window', '1234', 'ติ๋ติ่', 'window@gmail.com', '0822689784'),
(4, 'rkira', '147258', 'ออย', 'rkira@gmail.com', '0987416548'),
(5, 'member', '369258', 'ดาด้า', 'member@gmail.com', '0982657147'),
(6, 'aaa', '11111', 'aaaa', 'aaa@gmail.com', '1144');

-- --------------------------------------------------------

--
-- Table structure for table `orderproduct`
--

CREATE TABLE `orderproduct` (
  `id` int(11) NOT NULL,
  `ordersid` varchar(150) NOT NULL,
  `procode` varchar(150) NOT NULL,
  `ounit` int(11) NOT NULL,
  `pribe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orderproduct`
--

INSERT INTO `orderproduct` (`id`, `ordersid`, `procode`, `ounit`, `pribe`) VALUES
(1, 'sdsad', 'asdasd', 100, 100),
(2, '1213', 'B2', 2, 2418),
(3, '1213', 'B9', 3, 2811),
(4, '1213', 'A5', 1, 2891),
(5, '1213', 'B2', 2, 2418),
(6, '1213', 'B9', 3, 2811),
(7, '1213', 'A5', 1, 2891),
(8, '1213', 'B2', 2, 2418),
(9, '1213', 'B9', 3, 2811),
(10, '1213', 'A5', 1, 2891),
(11, '1214', 'B1', 1, 1980),
(12, '1214', 'A4', 1, 3690),
(13, '1214', 'C3', 1, 6810),
(14, '1214', 'B2', 1, 1209),
(15, '1214', 'B9', 2, 1471),
(16, '1214', 'B8', 3, 3469),
(17, '1214', 'B2', 1, 1209),
(18, '1214', 'B9', 2, 1471),
(19, '1214', 'B8', 3, 3469),
(20, '1214', 'B2', 1, 1209),
(21, '1214', 'B9', 2, 1471),
(22, '1214', 'B8', 3, 3469),
(23, '1214', 'B2', 1, 1209),
(24, '1214', 'B9', 2, 1471),
(25, '1214', 'B8', 3, 3469),
(26, '1', 'A1', 1, 2546),
(27, '2', 'A1', 2, 5092),
(28, '2', 'A4', 3, 10222),
(29, '2', 'B4', 5, 15600),
(30, '2', 'C5', 2, 21550),
(31, '2', 'B4', 5, 15600),
(32, '2', 'C5', 2, 21550),
(33, '2', 'B4', 5, 15600),
(34, '2', 'C5', 2, 21550),
(35, '2', 'A1', 2, 5092),
(36, '2', 'A3', 4, 15476),
(37, '2', 'B10', 2, 252),
(38, '3', 'B4', 1, 3120),
(39, '4', 'B10', 1, 126),
(40, '5', 'A1', 2, 5092),
(41, '5', 'B7', 7, 5617);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `oid` int(10) NOT NULL,
  `pricetotal` int(11) NOT NULL,
  `tel` int(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `name2` varchar(200) NOT NULL,
  `muser` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`oid`, `pricetotal`, `tel`, `address`, `name`, `name2`, `muser`) VALUES
(1, 2546, 563453, '2/1 T.Talat A.Mueang Mahasarakham, Thailand 44000', 'ddd', 'ddd', 'admin'),
(2, 15476, 2683963, '2/1 T.Talat A.Mueang Mahasarakham, Thailand 44000', 'ณฐกร', ' หีบแก้ว', 'admin'),
(3, 3120, 2683963, '2/1 ถ.ศรีสวัสดิ์ดำเนิน ต.ตลาด', 'Autchi ', ' TV', 'admin'),
(4, 126, 5465665, '2/1', 'Nathakon', 'fhjfghgf', 'admin'),
(5, 5617, 2683963, '2/1 T.Talat A.Mueang Mahasarakham, Thailand 44000', 'fff', 'dedd', 'nathakon');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `price` double NOT NULL,
  `tproid` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `sale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `name`, `code`, `image`, `price`, `tproid`, `unit`, `sale`) VALUES
(1, 'ไดร์เป่าผม Vs Sassoon', 'A1', 'images/A1.jpg', 2680, 1000, 18, 5),
(2, 'เครื่องหนีบผมไฟฟ้า', 'A2', 'images/A2.jpg', 1250, 1000, 28, 10),
(3, 'เครื่องทำผมอเนกประสงค์', 'A3', 'images/A3.jpg', 2950, 1000, 36, 12),
(4, 'แบตตาเลี่ยน ตัดผม', 'A4', 'images/A4.jpg', 1900, 1000, 36, 10),
(5, 'ชุดย้อมผมสีย้อมผม DIY', 'A5', 'images/A5.jpg', 90, 1000, 96, 12),
(6, 'เครื่องนวดหน้าแบบสั่น', 'B1', 'images/B1.jpg', 2200, 2000, 99, 10),
(7, 'Xunb เครื่องดูดสิวเสี้ยน', 'B2', 'images/B2.jpg', 1300, 2000, 30, 7),
(8, 'อุปกรณ์ทำความสะอาดหน้า', 'B3', 'images/B3.jpg', 5000, 2000, 30, 15),
(9, 'เครื่องเลเซอร์กำจัดขน IPL', 'B4', 'images/B4.jpg', 3900, 2000, 4, 20),
(11, 'ครีมมาส์กหน้าน้ำนมเข้มข้น ', 'B6', 'images/B6.jpg', 1960, 2000, 40, 14),
(12, 'แปรงแอชลี่ย์ แปรงปัดแก้ม', 'B7', 'images/B7.jpg', 75, 2000, 113, 0),
(13, 'แปรงแต่งหน้า แปรงปัดแก้ม', 'B8', 'images/B8.jpg', 740, 2000, 68, 10),
(14, 'เมย์เบลลีน มาสคาร่าล้างออกง่าย', 'B9', 'images/B9.jpg', 149, 2000, 133, 12),
(15, 'MACFEE มาสคาร่า กันน้ำ ', 'B10', 'images/B10.jpg', 140, 2000, 27, 10),
(16, '5 in1 ตะไบเล็บเสริมสวย', 'C1', 'images/C1.jpg', 150, 3000, 100, 10),
(17, 'เครื่องทำเล็บมือเล็บเท้าไฟฟ้า', 'C2', 'images/C2.jpg', 1200, 3000, 40, 7),
(18, 'อุปกรณ์ต่อเล็บอะคริลิค', 'C3', 'images/C3.jpg', 3900, 3000, 29, 20),
(19, 'น้ำมันบำรุงขอบเล็บNSI', 'C4', 'images/C4.jpg', 450, 3000, 30, 12),
(20, 'ผงแป้งปั้นนูน ชุดใหญ่', 'C5', 'images/C5.jpg', 3500, 3000, 44, 15),
(21, 'เล็บ PVC เต็มเล็บสีขุ่น แบบกล่อง', 'C6', 'images/C6.jpg', 250, 3000, 40, 10),
(22, 'กากเพชร ชุดใหญ่', 'C7', 'images/C7.jpg', 1400, 3000, 120, 20),
(23, 'น้ำยาทาเล็บ Tribal ชุดใหญ่ 12 สี', 'C8', 'images/C8.jpg', 880, 3000, 80, 10),
(24, 'ชุดเครื่องมือทำเล็บ', 'C9', 'images/C9.jpg', 150, 3000, 100, 5),
(25, 'กาวต่อเล็บ PVC ใหญ่ สีเขียว', 'C10', 'images/C10.jpg', 120, 3000, 30, 0);

-- --------------------------------------------------------

--
-- Table structure for table `typeproduct`
--

CREATE TABLE `typeproduct` (
  `tproid` int(11) NOT NULL,
  `tproname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `typeproduct`
--

INSERT INTO `typeproduct` (`tproid`, `tproname`) VALUES
(1000, 'T1'),
(2000, 'T2'),
(3000, 'T3'),
(4000, 'T4'),
(5000, 'T5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contack`
--
ALTER TABLE `contack`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `orderproduct`
--
ALTER TABLE `orderproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`id`,`code`);

--
-- Indexes for table `typeproduct`
--
ALTER TABLE `typeproduct`
  ADD PRIMARY KEY (`tproid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contack`
--
ALTER TABLE `contack`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `mid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orderproduct`
--
ALTER TABLE `orderproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `oid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `typeproduct`
--
ALTER TABLE `typeproduct`
  MODIFY `tproid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5001;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
