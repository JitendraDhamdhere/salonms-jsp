-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2025 at 09:18 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saloon`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `uname` varchar(30) DEFAULT NULL,
  `upass` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`uname`, `upass`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `appoint`
--

CREATE TABLE `appoint` (
  `id` int(11) NOT NULL,
  `aname` varchar(100) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `adate` date NOT NULL,
  `atime` time NOT NULL,
  `astatus` varchar(50) NOT NULL,
  `aloc` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_no` int(11) NOT NULL,
  `subtotal` varchar(10) DEFAULT NULL,
  `gst` varchar(10) DEFAULT NULL,
  `grandtotal` varchar(10) DEFAULT NULL,
  `billdate` date DEFAULT NULL,
  `cuname` varchar(30) DEFAULT NULL,
  `ostatus` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_no`, `subtotal`, `gst`, `grandtotal`, `billdate`, `cuname`, `ostatus`) VALUES
(22, '140.0', '25', '165', '2023-03-14', 'gauravpatil', 'Delivered'),
(21, '0.0', '0', '0', '2023-03-14', 'roshan', 'Ordered'),
(20, '300.0', '54', '354', '2023-03-14', 'roshan', 'Delivered'),
(19, '180.0', '32', '212', '2023-03-14', 'gauravpatil', 'Delivered'),
(17, '150.0', '27', '177', '2023-03-07', 'dnyanu', 'Delivered'),
(18, '40.0', '7', '47', '2023-03-07', 'aksash', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `companyname` varchar(120) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`companyname`) VALUES
('Merabharat LLP'),
('GoHard'),
('Shakti Sports'),
('Sports Arcade'),
('Only Play LLP'),
('Super Mat Pvt. Ltd.'),
('AQUA LITE'),
('water purifier'),
('AQUA LITE'),
('AQUA LITE'),
('AQUA LITE'),
('Bislery'),
('AQUA LITE'),
('neel');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `email` varchar(30) DEFAULT NULL,
  `umob` varchar(15) DEFAULT NULL,
  `umsg` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cmob` varchar(15) NOT NULL,
  `cname` varchar(80) DEFAULT NULL,
  `cadd` varchar(120) DEFAULT NULL,
  `carea` varchar(20) DEFAULT NULL,
  `ccity` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `upass` varchar(100) DEFAULT NULL,
  `secq` varchar(200) NOT NULL,
  `ans` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cmob`, `cname`, `cadd`, `carea`, `ccity`, `email`, `uname`, `upass`, `secq`, `ans`) VALUES
('9657795194', 'Jitendra Developer', 'Chakan,Pune', 'jj', 'Pune', 'jitendradeveloper@gmail.com', 'Jitu', '123', 'tesr', 'test'),
('0909090909', 'test', 'pune', 'dc nm', 'PUNE', 'test11@gmail.com', 'test', '123', 't4est', 'test'),
('0007795194', 'Jitendra Developer', 'Chakan,Pune', 'as', 'Pune', 'jitendradeveloper333@gmail.com', 'Jitu123', 'Jitu123', 'asas', 'as');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_address`
--

CREATE TABLE `delivery_address` (
  `aid` int(11) NOT NULL,
  `daddress` varchar(200) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `uname` varchar(100) NOT NULL,
  `pincode` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_address`
--

INSERT INTO `delivery_address` (`aid`, `daddress`, `area`, `city`, `uname`, `pincode`) VALUES
(8, 'siom,vadgaon(bk)', 'Amegaon', 'pune', 'roshan', '000000'),
(7, 'Pachora', 'read', 'jalgoan', 'gauravpatil', '000000');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fid` int(11) NOT NULL,
  `feedback_text` varchar(1000) DEFAULT NULL,
  `cuname` varchar(110) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `feedback_text`, `cuname`) VALUES
(1, 'This is the best sports equipment shopping website', 'pranalid'),
(2, 'roshan will got fist in mca ', 'vishwapatil'),
(3, 'water is very cold', 'dnyanu'),
(4, 'most usable website\r\n', 'gauravpatil'),
(5, 'thand pani add kara rao...', 'roshan');

-- --------------------------------------------------------

--
-- Table structure for table `gamenames`
--

CREATE TABLE `gamenames` (
  `gname` varchar(100) DEFAULT NULL,
  `gtype` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gamenames`
--

INSERT INTO `gamenames` (`gname`, `gtype`) VALUES
('uol', 'Indoor');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `package_description` text NOT NULL,
  `package_image` varchar(255) DEFAULT NULL,
  `package_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `package_name`, `package_description`, `package_image`, `package_price`) VALUES
(1, 'Gold Package', 'Includes haircut, styling, and facial', 'gold.jpg', 999.99),
(2, 'Silver Package', 'Includes haircut and styling', 'silver.jpg', 699.99);

-- --------------------------------------------------------

--
-- Table structure for table `pay_method`
--

CREATE TABLE `pay_method` (
  `bno` int(11) DEFAULT NULL,
  `pay_method` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pay_method`
--

INSERT INTO `pay_method` (`bno`, `pay_method`) VALUES
(9, 'COD'),
(9, 'COD'),
(10, 'tushar@sbi.com'),
(11, ''),
(12, 'shraddha@oksbi'),
(19, '6544464646565'),
(19, '6544464646565'),
(20, 'COD');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `bprice` varchar(10) DEFAULT NULL,
  `pcompany` varchar(40) DEFAULT NULL,
  `pdesc` varchar(100) DEFAULT NULL,
  `bimg` varchar(100) DEFAULT NULL,
  `bcat` varchar(30) DEFAULT NULL,
  `p_origin_country` varchar(40) DEFAULT NULL,
  `manu_year` int(11) DEFAULT NULL,
  `gamename` varchar(40) DEFAULT NULL,
  `bqty` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `pname`, `bprice`, `pcompany`, `pdesc`, `bimg`, `bcat`, `p_origin_country`, `manu_year`, `gamename`, `bqty`) VALUES
(30, 'Aqua Lite bottle 10ltr', '45', 'AQUA', ' pure', 'wa10.JPG', 'General', 'Other', 12, 'General', 76),
(27, 'Aqua Lite bottle 3ltr', '30', 'AQUA', ' pure', 'wa3.JPG', 'General', 'other', 12, 'General', 150),
(28, 'Aqua Lite bottle 1ltr', '15', 'AQUA', ' pure', 'WA1.JPG', 'General', 'other', 12, 'General', 281),
(29, 'Aqua Lite bottle 5ltr', '35', 'AQUA', ' pure', 'Wa5.JPG', 'General', 'other', 12, 'General', 196),
(26, 'Aqua Lite bottle 500ml', '20', 'AQUA', ' pure', 'WA500JPG.webp', 'General', 'other', 12, 'General', 100),
(25, 'Aqua Lite bottle 200ml', '10', 'AQUA', ' pure water', 'wa200.JPG', 'General', 'other', 22, 'General', 60),
(34, 'Aqua Lite bottle jar 20ltr', '60', 'AQUA', ' pure', 'JAr20.JPG', 'General', 'Other', 12, 'General', 85),
(31, 'Aqua Lite bottle 20ltr', '55', 'AQUA', ' pure', 'wa20.JPG', 'General', 'other', 22, 'General', 25),
(32, 'Aqua Lite bottle 15ltr', '50', 'AQUA', ' pure', 'wa15.JPG', 'General', 'other', 12, 'General', 60),
(33, 'Aqua Lite bottle 25ltr', '60', 'AQUA', ' pure', 'wa25.JPG', 'General', 'other', 12, 'General', 130);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `service_description` text DEFAULT NULL,
  `service_image` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `service_description`, `service_image`, `price`) VALUES
(1, 'Hair Cut', 'Cut the Hair', 'C:\\Users\\Jitendra\\OneDrive\\Desktop\\download.jpeg', 200.00),
(2, 'test', 'test', NULL, 299.00);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `sid` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `pqty` int(11) DEFAULT NULL,
  `sdate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`sid`, `pid`, `pqty`, `sdate`) VALUES
(1, 4, 10, '2022-08-13'),
(2, 4, 10, '2022-08-13'),
(3, 4, 1, '2022-08-13'),
(4, 6, 100, '2022-08-19'),
(5, 16, 10, '2023-02-27'),
(6, NULL, 60, '2023-03-07'),
(7, NULL, 60, '2023-03-07'),
(8, 29, 100, '2023-03-14'),
(9, NULL, 60, '2023-03-14'),
(10, NULL, 70, '2023-03-14'),
(11, NULL, 200, '2023-03-14'),
(12, NULL, 50, '2023-03-14'),
(13, NULL, 50, '2023-03-14'),
(14, NULL, 30, '2023-03-14'),
(15, NULL, 54, '2023-03-14'),
(16, NULL, 82, '2023-03-14'),
(17, 29, 100, '2023-03-14'),
(18, 28, 122, '2023-03-14'),
(19, 30, 50, '2023-03-14'),
(20, 31, 25, '2023-03-14'),
(21, 33, 100, '2023-03-14'),
(22, 27, 50, '2023-03-14'),
(23, 26, 100, '2023-03-14'),
(24, 32, 60, '2023-03-14'),
(25, 25, 60, '2023-03-14'),
(26, 34, 90, '2023-03-14'),
(27, 28, 100, '2023-03-14'),
(28, 28, 60, '2023-03-14'),
(29, 27, 100, '2023-03-14'),
(30, 30, 30, '2023-03-14'),
(31, 33, 30, '2023-03-14');

-- --------------------------------------------------------

--
-- Table structure for table `temp_cart`
--

CREATE TABLE `temp_cart` (
  `tcid` int(11) NOT NULL,
  `cuname` varchar(30) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `pname` varchar(100) NOT NULL,
  `ostatus` varchar(20) DEFAULT NULL,
  `itemprice` double NOT NULL,
  `oqty` int(11) DEFAULT NULL,
  `bno` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `temp_cart`
--

INSERT INTO `temp_cart` (`tcid`, `cuname`, `pid`, `pname`, `ostatus`, `itemprice`, `oqty`, `bno`) VALUES
(54, 'gauravpatil', 29, 'Aqua Lite bottle 5ltr', 'Delivered', 35, 4, 22),
(52, 'gauravpatil', 30, 'Aqua Lite bottle 10ltr', 'Delivered', 45, 4, 19),
(53, 'roshan', 34, 'Aqua Lite bottle jar 20ltr', 'Delivered', 60, 5, 20),
(51, 'vishwapatil', 28, 'Aqua Lite bottle 1ltr', 'Delivered', 15, 1, 19);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD UNIQUE KEY `uname` (`uname`);

--
-- Indexes for table `appoint`
--
ALTER TABLE `appoint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_no`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cmob`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- Indexes for table `delivery_address`
--
ALTER TABLE `delivery_address`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `gamenames`
--
ALTER TABLE `gamenames`
  ADD UNIQUE KEY `gname` (`gname`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `temp_cart`
--
ALTER TABLE `temp_cart`
  ADD PRIMARY KEY (`tcid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appoint`
--
ALTER TABLE `appoint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `delivery_address`
--
ALTER TABLE `delivery_address`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `temp_cart`
--
ALTER TABLE `temp_cart`
  MODIFY `tcid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
