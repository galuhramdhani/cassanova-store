-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2024 at 11:07 AM
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
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(300) NOT NULL,
  `admin_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'admin@gmail.com', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Mobile Legends'),
(2, 'Free Fire'),
(3, 'Valorant'),
(4, 'PUBG Mobile'),
(5, 'Genshin Impact'),
(6, 'Point Blank'),
(7, 'Arena of Valor');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(161, 3, '::1', 29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Game Mobile'),
(2, 'Game PC');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `f_name` varchar(255) NOT NULL,
  `payment_id` int(255) NOT NULL,
  `id_game` int(11) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `payment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` int(11) NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`f_name`, `payment_id`, `id_game`, `mobile`, `payment_date`, `amount`, `payment_method`, `status`) VALUES
('edi tampan', 1, 2147483647, '085711325672', '2024-06-14 09:06:47', 25000, 'BCA - xxxxxxx', 'Success');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 1, '11 Diamonds', 5000, 'Diamonds Mobile Legends', 'ml.jpg', 'ml mobile legend '),
(2, 1, 1, '25 Diamonds', 8500, 'Diamonds Mobile Legends', 'ml.jpg', 'ml mobile legend'),
(3, 1, 1, '75 Diamonds', 25000, 'Diamonds Mobile Legends', 'ml.jpg', 'ml mobile legend'),
(4, 1, 1, '170 Diamonds', 50000, 'Diamonds Mobile Legends', 'ml.jpg', 'ml mobile legend'),
(5, 1, 1, '265 Diamonds', 100000, 'Diamonds Mobile Legends', 'ml.jpg', 'ml mobile legend'),
(6, 1, 1, '550 Diamonds', 153000, 'Diamonds Mobile Legends', 'ml.jpg', 'ml mobile legend'),
(7, 1, 1, '750 Diamonds', 254000, 'Diamonds Mobile Legends', 'ml.jpg', 'ml mobile legend'),
(8, 1, 1, '1078 Diamonds', 545000, 'Diamonds Mobile Legends', 'ml.jpg', 'ml mobile legend'),
(9, 1, 1, '4012 Diamonds', 1320000, 'Diamonds Mobile Legends', 'ml.jpg', 'ml mobile legend'),
(10, 1, 2, '5 Diamonds', 1000, 'Diamonds Free Fire', 'ff.jpg', 'ff free fire'),
(11, 1, 2, '50 Diamonds', 8000, 'Diamonds Free Fire', 'ff.jpg', 'ff free fire'),
(12, 1, 2, '150 Diamonds', 20000, 'Diamonds Free Fire', 'ff.jpg', 'ff free fire'),
(13, 1, 2, '350 Diamonds', 50000, 'Diamonds Free Fire', 'ff.jpg', 'ff free fire'),
(14, 1, 2, '720 Diamonds', 100000, 'Diamonds Free Fire', 'ff.jpg', 'ff free fire'),
(15, 1, 2, '1500 Diamonds', 200000, 'Diamonds Free Fire', 'ff.jpg', 'ff free fire'),
(16, 1, 2, '3520 Diamonds', 500000, 'Diamonds Free Fire', 'ff.jpg', 'ff free fire'),
(17, 1, 2, '7290 Diamonds', 2000000, 'Diamonds Free Fire', 'ff.jpg', 'ff free fire'),
(19, 1, 2, '36500 Diamonds', 5000000, 'Diamonds Free Fire', 'ff.jpg', 'ff free fire'),
(20, 1, 2, '73100 Diamonds', 10000000, 'Diamonds Free Fire', 'ff.jpg', 'ff free fire'),
(21, 2, 3, '125 Point', 15000, 'Valorant Point', 'valorant.jpg', 'valorant valoran'),
(22, 2, 3, '420 Point ', 50000, 'Valorant Point', 'valorant.jpg', 'valorant valoran'),
(23, 2, 3, '700 Point', 80000, 'Valorant Point', 'valorant.jpg', 'valorant valoran'),
(24, 2, 3, '1375 Point', 150000, 'Valorant Point', 'valorant.jpg', 'valorant valoran'),
(25, 2, 3, '2400 Point', 250000, 'Valorant Point', 'valorant.jpg', 'valorant valoran'),
(26, 2, 3, '4000 Point', 400000, 'Valorant Point', 'valorant.jpg', 'valorant valoran'),
(27, 2, 3, '8150 Point', 800000, 'Valorant Point', 'valorant.jpg', 'valorant valoran'),
(28, 1, 4, '50 UC', 10000, 'UC PUGB Mobile', 'pubgm.jpg', 'pubgm pubg mobile'),
(29, 1, 4, '150 UC', 30000, 'UC PUBG Mobile', 'pubgm.jpg', 'pubgm pubg mobile'),
(30, 1, 4, '250 UC', 50000, 'UC PUBG Mobile', 'pubgm.jpg', 'pubgm pubg mobile'),
(31, 1, 4, '500 UC', 100000, 'UC PUBG Mobile', 'pubgm.jpg', 'pubgm pubg mobile'),
(32, 1, 4, '1250 UC', 250000, 'UC PUBG Mobile', 'pubgm.jpg', 'pubgm pubg mobile'),
(33, 1, 4, '2500 UC', 500000, 'UC PUBG Mobile', 'pubgm.jpg', 'pubgm pubg mobile'),
(34, 1, 5, '60 Genesis Crystal', 15000, 'Genesis Crystal Genshin Impact', 'genshin.jpeg', 'genshin impact'),
(35, 1, 5, '300 Genesis Crystal', 75000, 'Genesis Crystal Genshin Impact', 'genshin.jpeg', 'genshin impact'),
(36, 1, 5, '1000 Genesis Crystal genshin Impact', 250000, 'Genesis Xrystal Genshin Impact', 'genshin.jpeg', 'genshin impact'),
(37, 1, 5, '2000 Genesis Crystal', 480000, 'Genesis Crystal Genshin Impact', 'genshin.jpeg', 'genshin impact'),
(38, 1, 5, '3500 Genesis Crystal', 820000, 'Genesis Crystal Genshin Impact', 'genshin.jpeg', 'genshin impact'),
(39, 1, 5, '6500 Genesis Crystal', 1500000, 'Genesis Crystal Genshin Impact', 'genshin.jpeg', 'genshin impact'),
(40, 2, 6, '1200 CASH', 10000, 'CASH Point Blank', 'pb.jpg', 'pb point blank'),
(41, 2, 6, '2400 CASH', 20000, 'CASH Point Blank', 'pb.jpg', 'pb point blank'),
(42, 2, 6, '6000 CASH', 55000, 'CASH Point Blank', 'pb.jpg', 'pb point blank'),
(43, 2, 6, '12000 CASH', 110000, 'CASH Point Blank', 'pb.jpg', 'pb point blank'),
(44, 2, 6, '24000 CASH', 220000, 'CASH Point Blank', 'pb.jpg', 'pb point blank'),
(45, 2, 6, '36000 CASH', 330000, 'CASH Point Blank', 'pb.jpg', 'pb point blank'),
(46, 2, 6, '6000 CASH', 550000, 'CASH Point Blank', 'pb.jpg', 'pb point blank'),
(47, 1, 7, '90 Voucher', 20000, 'Voucher Arena of Valor', 'aov.jpg', 'aov arena of valor'),
(48, 1, 7, '230 Voucher', 50000, 'Voucher Arena of Valor', 'aov.jpg', 'aov arena of valor'),
(49, 1, 7, '470 Voucher', 100000, 'Voucher Arena of Valor', 'aov.jpg', 'aov arena of valor'),
(50, 1, 7, '950 Vouvher', 200000, 'Voucher Arena of Valor', 'aov.jpg', 'aov arena of valor'),
(51, 1, 7, '1430 Voucher', 300000, 'Voucher Arena of Valor', 'aov.jpg', 'aov arena of valor'),
(52, 1, 7, '2390 Voucher', 500000, 'Voucher Arena of Valor', 'aov.jpg', 'aov arena of valor'),
(53, 1, 7, '4800 Voucher', 1000000, 'Voucher Arena of Valor', 'aov.jpg', 'aov arena of valor'),
(54, 1, 7, '24050 Voucher', 5000000, 'Voucher Arena of Valor', 'aov.jpg', 'aov arena of valor'),
(55, 1, 7, '48200 Voucher', 10000000, 'Voucher Arena of Valor', 'aov.jpg', 'aov arena of valor');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(27, 'ryan', 'piskadinata', 'ryandmasiv@gmail.com', '1234567890', '089612508842', 'klender', 'jakarta tim'),
(28, 'depa', 'sayo', 'depasayo@gmail.com', 'qwe123098', '089887263222', 'buaran', 'jakarta tim'),
(29, 'edi', 'tampan', 'editampan@gmail.com', 'edipanjang', '085711325672', 'tambun', 'bekasi');

--
-- Triggers `user_info`
--
DELIMITER $$
CREATE TRIGGER `after_user_info_insert` AFTER INSERT ON `user_info` FOR EACH ROW BEGIN 
INSERT INTO user_info_backup VALUES(new.user_id,new.first_name,new.last_name,new.email,new.password,new.mobile,new.address1,new.address2);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_info_backup`
--

CREATE TABLE `user_info_backup` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info_backup`
--

INSERT INTO `user_info_backup` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(27, 'ryan', 'piskadinata', 'ryandmasiv@gmail.com', '1234567890', '0896125088', 'klender', 'jakarta tim'),
(28, 'depa', 'sayo', 'depasayo@gmail.com', 'qwe123098', '0898872632', 'buaran', 'jakarta tim'),
(29, 'edi', 'tampan', 'editampan@gmail.com', 'edipanjang', '0857113256', 'tambun', 'bekasi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
