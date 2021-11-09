-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2021 at 06:51 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(1, 'ไดร์เป่าผม Vs Sassoon', 'A1', 'images/A1.jpg', 2680, 1000, 25, 5),
(2, 'เครื่องหนีบผมไฟฟ้า', 'A2', 'images/A2.jpg', 1250, 1000, 28, 10),
(3, 'เครื่องทำผมอเนกประสงค์', 'A3', 'images/A3.jpg', 2950, 1000, 40, 12),
(4, 'แบตตาเลี่ยน ตัดผม', 'A4', 'images/A4.jpg', 1900, 1000, 40, 10),
(5, 'ชุดย้อมผมสีย้อมผม DIY', 'A5', 'images/A5.jpg', 90, 1000, 99, 12),
(6, 'เครื่องนวดหน้าแบบสั่น', 'B1', 'images/B1.jpg', 2200, 2000, 100, 10),
(7, 'Xunb เครื่องดูดสิวเสี้ยน', 'B2', 'images/B2.jpg', 1300, 2000, 40, 7),
(8, 'อุปกรณ์ทำความสะอาดหน้า', 'B3', 'images/B3.jpg', 5000, 2000, 30, 15),
(9, 'เครื่องเลเซอร์กำจัดขน IPL', 'B4', 'images/B4.jpg', 3900, 2000, 20, 20),
(10, 'น้ากากมาร์คหน้าทองคำ  ', 'B5', 'images/B5.jpg', 59, 2000, 100, 5),
(11, 'ครีมมาส์กหน้าน้ำนมเข้มข้น ', 'B6', 'images/B6.jpg', 1960, 2000, 40, 14),
(12, 'แปรงแอชลี่ย์ แปรงปัดแก้ม', 'B7', 'images/B7.jpg', 75, 2000, 120, 0),
(13, 'แปรงแต่งหน้า แปรงปัดแก้ม', 'B8', 'images/B8.jpg', 740, 2000, 80, 10),
(14, 'เมย์เบลลีน มาสคาร่าล้างออกง่าย', 'B9', 'images/B9.jpg', 149, 2000, 150, 12),
(15, 'MACFEE มาสคาร่า กันน้ำ ', 'B10', 'images/B10.jpg', 140, 2000, 30, 10),
(16, '5 in1 ตะไบเล็บเสริมสวย', 'C1', 'images/C1.jpg', 150, 3000, 100, 10),
(17, 'เครื่องทำเล็บมือเล็บเท้าไฟฟ้า', 'C2', 'images/C2.jpg', 1200, 3000, 40, 7),
(18, 'อุปกรณ์ต่อเล็บอะคริลิค', 'C3', 'images/C3.jpg', 3900, 3000, 30, 20),
(19, 'น้ำมันบำรุงขอบเล็บNSI', 'C4', 'images/C4.jpg', 450, 3000, 30, 12),
(20, 'ผงแป้งปั้นนูน ชุดใหญ่', 'C5', 'images/C5.jpg', 3500, 3000, 50, 15),
(21, 'เล็บ PVC เต็มเล็บสีขุ่น แบบกล่อง', 'C6', 'images/C6.jpg', 250, 3000, 40, 10),
(22, 'กากเพชร ชุดใหญ่', 'C7', 'images/C7.jpg', 1400, 3000, 120, 20),
(23, 'น้ำยาทาเล็บ Tribal ชุดใหญ่ 12 สี', 'C8', 'images/C8.jpg', 880, 3000, 80, 10),
(24, 'ชุดเครื่องมือทำเล็บ', 'C9', 'images/C9.jpg', 150, 3000, 100, 5),
(25, 'กาวต่อเล็บ PVC ใหญ่ สีเขียว', 'C10', 'images/C10.jpg', 120, 3000, 30, 0),
(28, 'Rachata', 'z001', 'product-images/0.png', 2740, 1000, 31, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
