-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2024 at 08:34 AM
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
(1, 'admin', 'admin@gmail.com', '25f9e794323b453885f5181f1b624d0b');

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
(33, 21, '::1', 27, 1),
(34, 35, '::1', 0, 1),
(35, 1, '::1', -1, 1),
(36, 7, '::1', 1, 1);

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
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_pro_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(15) DEFAULT NULL,
  `amt` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_pro_id`, `order_id`, `product_id`, `qty`, `amt`) VALUES
(73, 1, 1, 1, 5000),
(74, 1, 4, 2, 64000),
(75, 1, 8, 1, 40000),
(91, 2, 50, 1, 200000),
(92, 3, 2, 1, 8500),
(93, 4, 26, 1, 400000),
(94, 4, 2, 1, 8500),
(95, 4, 3, 1, 25000),
(96, 4, 6, 1, 153000),
(97, 4, 51, 1, 300000),
(98, 5, 9, 1, 1320000),
(99, 5, 12, 1, 20000),
(100, 6, 1, 1, 5000),
(101, 7, 6, 1, 153000),
(102, 8, 3, 1, 25000),
(103, 9, 3, 1, 25000),
(104, 10, 7, 1, 254000),
(105, 11, 1, 1, 5000),
(106, 12, 1, 1, 5000),
(107, 13, 1, 1, 5000),
(108, 14, 1, 1, 5000),
(109, 14, 2, 1, 8500),
(110, 15, 1, 1, 5000),
(111, 15, 2, 1, 8500),
(112, 16, 21, 1, 15000),
(113, 21, 3, 1, 25000),
(114, 27, 1, 1, 5000),
(115, 32, 1, 1, 5000),
(116, 33, 1, 1, 5000),
(117, 34, 4, 1, 50000),
(118, 35, 3, 1, 25000),
(119, 36, 8, 1, 545000),
(120, 37, 8, 1, 545000),
(121, 38, 7, 1, 254000),
(122, 39, 1, 1, 5000),
(123, 40, 3, 1, 25000),
(124, 41, 3, 1, 25000),
(125, 42, 1, 1, 5000),
(126, 43, 9, 1, 1320000),
(127, 44, 8, 1, 545000),
(128, 45, 2, 1, 8500),
(129, 46, 7, 1, 254000);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `f_name` varchar(255) NOT NULL,
  `payment_id` int(255) NOT NULL,
  `order_pro_id` int(11) NOT NULL,
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

INSERT INTO `payment` (`f_name`, `payment_id`, `order_pro_id`, `id_game`, `mobile`, `payment_date`, `amount`, `payment_method`, `status`) VALUES
('edi gurero', 18, 0, 12388653, '081744125639', '2024-05-31 10:52:44', 400000, 'Mandiri - xxxxxxx', 'Success'),
('edi gurero', 19, 0, 998776221, '081744125639', '2024-05-31 11:48:06', 110000, 'BRI - xxxxxxx', 'Success'),
('depa sayo', 20, 0, 23348890, '081714425263', '2024-06-02 13:48:32', 15000, 'Mandiri - xxxxxxx', 'Success'),
(' ryan piskadinata', 21, 0, 2147483647, '089612508842', '2024-06-03 08:07:44', 75000, 'BCA - xxxxxxx', 'Success'),
('edi gurero', 22, 0, 75590021, '081744125639', '2024-06-04 08:07:35', 254000, 'Mandiri - xxxxxxx', 'Success');

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
(1, 'edi', 'gurero', 'editampan@gmail.com', 'edipanjang', '081744125639', 'cisarua', 'bogor'),
(12, 'Rangga', 'Nurta', 'rangga@gmail.com', 'rangganurta', '081322575253', 'Pangandaran', '46094'),
(26, 'Asep', 'Surasep', 'asep@gmail.com', 'asepkasep', '081366758762', 'Jalan Pluto No.2', 'Bandung'),
(27, 'depa', 'sayo', 'depasayo@gmail.com', 'qwe123098', '081714425263', 'kranggan', 'bekasi');

--
-- Triggers `user_info`
--
DELIMITER $$
CREATE TRIGGER `after_user_info_insert` AFTER INSERT ON `user_info` FOR EACH ROW BEGIN 
INSERT INTO user_info_backup VALUES(new.user_id,new.first_name,new.last_name,new.email,new.password,new.mobile,new.address1,new.address2);
END
$$
DELIMITER ;

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
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_pro_id`),
  ADD KEY `order_products` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`) USING BTREE;

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
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_pro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products` FOREIGN KEY (`order_id`) REFERENCES `orders_info` (`order_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
