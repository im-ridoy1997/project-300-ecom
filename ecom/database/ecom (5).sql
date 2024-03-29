-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2021 at 04:52 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`user_id`, `username`, `password`) VALUES
(1, 'masuk', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(100) NOT NULL,
  `brand_cat` int(11) NOT NULL,
  `city` varchar(100) NOT NULL,
  `licence` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `brand_sts` tinyint(4) NOT NULL,
  `brand_logo` varchar(100) NOT NULL,
  `added_on` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`, `brand_cat`, `city`, `licence`, `user_name`, `email`, `phone`, `password`, `address`, `brand_sts`, `brand_logo`, `added_on`) VALUES
(39, 'infinity', 19, 'Sylhet', '32423', 'masuk', 'samsu32@gmail.com', 0, '12345', 'Subid bazar', 1, '125979696_2412487728897636_7764827119394844222_o.jpg', '2020-12-28 04:14:16'),
(40, 'Gucci', 34, 'Khulna', '12345', 'gucci', 'gucci@gmail.com', 1234555, '12345', 'Subid bazar', 1, '1609150435-gucci.jpg', '2020-12-28 04:13:55pm'),
(41, 'Live Wire', 20, 'Dhaka', '12345', 'live wire', 'l@gmail.com', 12345, '12345', 'Subid bazar', 1, '1609151649-live wire.jpg', '2020-12-28 04:34:09pm'),
(42, 'Sky Link', 20, 'Sunamganj', '12345', 'Sky link', 's@gmail.com', 12345, '12345', 'Subid bazar', 1, '1609152593-Sky Link.jpg', '2020-12-28 04:49:53pm'),
(43, 'Hatil', 19, 'Sylhet', '12345', 'hatil', 'h@gmail.com', 12345, '12345', 'Subid bazar', 1, '1609154012-hatil.jpg', '2020-12-28 05:13:32pm'),
(44, 'infinity', 20, 'Dhaka', '54754', 'masuk7', 'samsu326@gmail.com', 0, '12345', 'Subid bazar435345', 1, 't6-removebg-preview.png', '2020-12-28 23:32:34'),
(45, 'infinity', 19, 'Sylhet', '234234', 'Titu', 'samsu32ss@gmail.com', 0, '234234', 'Subid bazarsfdasd ', 1, 't6-removebg-preview.png', '2020-12-29 00:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE `buy` (
  `buy_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sell_qty` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `chk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`buy_id`, `product_id`, `date`, `user_id`, `sell_qty`, `discount`, `chk_id`) VALUES
(146, 97, '2020-12-28 09:31:45', 7, 7, 30, 143),
(147, 91, '2020-12-28 09:32:49', 7, 3, 30, 144),
(148, 93, '2020-12-28 09:34:50', 7, 4, 0, 145),
(149, 95, '2020-12-28 09:35:22', 7, 4, 0, 146),
(150, 88, '2020-12-28 09:36:11', 7, 4, 0, 147),
(151, 97, '2020-12-28 11:23:20', 7, 5, 30, 148),
(152, 88, '2020-12-28 11:24:48', 7, 3, 0, 149),
(153, 86, '2020-12-30 06:28:08', 17, 5, 0, 150),
(154, 99, '2020-12-31 08:05:58', 17, 9, 30, 151),
(155, 99, '2020-12-31 09:59:23', 17, 1, 0, 152),
(156, 99, '2020-12-31 10:06:15', 17, 1, 30, 153),
(157, 95, '2020-12-31 10:13:47', 17, 3, 20, 154),
(158, 88, '2021-01-01 02:27:34', 17, 5, 0, 155),
(159, 88, '2021-01-01 02:27:34', 17, 3, 0, 155),
(160, 99, '2021-01-01 02:27:34', 17, 12, 0, 155),
(161, 99, '2021-01-01 02:52:24', 17, 1, 0, 160),
(162, 99, '2021-01-01 02:58:57', 17, 2, 0, 162),
(163, 99, '2021-01-01 03:00:09', 17, 5, 0, 163),
(164, 99, '2021-01-01 03:22:33', 17, 2, 0, 164),
(165, 99, '2021-01-01 03:28:07', 17, 1, 0, 165),
(166, 97, '2021-01-01 03:33:26', 17, 5, 0, 166),
(167, 78, '2021-01-01 03:33:26', 17, 5, 0, 166);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `added_on` varchar(50) NOT NULL,
  `cart_qty` int(11) NOT NULL,
  `size` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `buy_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `status`) VALUES
(19, 'Furniture', 1),
(20, 'Digital Device', 1),
(22, 'Medicine', 1),
(32, 'men', 1),
(33, 'women', 1),
(34, 'Fashioin', 1),
(35, 'both', 1);

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `checkout_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phn` varchar(15) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` varchar(70) NOT NULL,
  `address` varchar(255) NOT NULL,
  `payment` varchar(255) NOT NULL,
  `order_status` int(11) NOT NULL,
  `del_boy_id` int(11) NOT NULL,
  `amount_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`checkout_id`, `name`, `email`, `phn`, `user_id`, `date`, `address`, `payment`, `order_status`, `del_boy_id`, `amount_type`) VALUES
(129, 'Dhaka', 'samsu32@gmail.com', '01234555', 7, '2020-12-24 10:45:45', 'Subid bazar,undefined,Sylhet - 3100', 'online', 2, 0, ''),
(130, 'Dhaka', 'samsu32@gmail.com', '01234555', 7, '2020-12-24 04:12:59', 'Subid bazar,undefined,Sylhet - 3100', 'cash', 1, 0, ''),
(131, 'Dhaka', 'samsu32@gmail.com', '01234555', 7, '2020-12-25 06:17:06', 'Subid bazar,undefined,Sylhet - 3100', 'cash', 1, 0, ''),
(132, 'Dhaka', 'samsu32@gmail.com', '01234555', 7, '2020-12-25 06:20:13', 'Subid bazar,undefined,Sylhet - 3100', 'cash', 1, 0, ''),
(133, 'Dhaka', 'samsu32@gmail.com', '01234555', 7, '2020-12-28 03:27:26', 'Subid bazar,undefined,Sylhet - 3100', 'cash', 1, 1, ''),
(138, 'Dhaka', 'samsu32@gmail.com', '01234555', 7, '2020-12-28 08:08:38', 'Subid bazar,undefined,Sylhet - 3100', 'cash', 1, 3, ''),
(141, 'Dhaka', 'samsu32@gmail.com', '01234555', 7, '2020-12-28 08:09:20', 'Subid bazar,undefined,Sylhet - 3100', 'cash', 1, 5, ''),
(143, 'Dhaka', 'samsu32@gmail.com', '01234555', 7, '2020-12-28 09:31:45', 'Subid bazar,undefined,Sylhet - 3100', 'cash', 1, 2, 'checkout'),
(144, 'Dhaka', 'samsu32@gmail.com', '01234555', 7, '2020-12-28 09:32:49', 'Subid bazar,undefined,Sylhet - 3100', 'cash', 1, 2, 'checkout'),
(145, 'Dhaka', 'samsu32@gmail.com', '01234555', 7, '2020-12-28 09:34:50', 'Subid bazar,undefined,Sylhet - 3100', 'cash', 1, 2, 'checkout'),
(146, 'Dhaka', 'samsu32@gmail.com', '01234555', 7, '2020-12-28 09:35:22', 'Subid bazar,undefined,Sylhet - 3100', 'cash', 1, 2, 'checkout'),
(147, 'Dhaka', 'samsu32@gmail.com', '01234555', 7, '2020-12-28 09:36:11', 'Subid bazar,undefined,Sylhet - 3100', 'cash', 1, 2, 'coin'),
(148, 'Dhaka', 'samsu32@gmail.com', '01234555', 7, '2020-12-28 11:23:20', 'Subid bazar,undefined,Sylhet - 3100', 'cash', 1, 2, 'checkout'),
(149, 'Dhaka', 'samsu32@gmail.com', '01234555', 7, '2020-12-28 11:24:48', 'Subid bazar,undefined,Sylhet - 3100', 'cash', 1, 2, 'coin'),
(151, 'Dhaka', 'samsu32@gmail.com', '01234555', 17, '2020-12-31 08:05:58', 'Subid bazar,undefined,Sylhet - 3100', 'cash', 1, 2, 'checkout'),
(152, 'Dhaka', 'samsu32@gmail.com', '01234555', 17, '2020-12-31 09:59:23', 'Subid bazar,undefined,Sylhet - 3100', 'cash', 1, 2, 'coin'),
(153, 'Dhaka', 'samsu32@gmail.com', '01234555', 17, '2020-12-31 10:06:15', 'Subid bazar,undefined,Sylhet - 3100', 'online', 2, 2, 'checkout'),
(154, 'Dhaka', 'samsu32@gmail.com', '01234555', 17, '2020-12-31 10:13:47', 'Subid bazar,undefined,Sylhet - 3100', 'cash', 1, 2, 'checkout'),
(155, 'Dhaka', 'samsu32@gmail.com', '01234555', 17, '2021-01-01 02:27:34', 'Subid bazar,undefined,Sylhet - 3100', 'cash', 1, 2, 'checkout'),
(160, 'Dhaka', 'samsu32@gmail.com', '01234555', 17, '2021-01-01 02:52:24', 'Subid bazar,undefined,Sylhet - 3100', 'cash', 1, 2, 'coin'),
(162, 'Dhaka', 'samsu32@gmail.com', '01234555', 17, '2021-01-01 02:58:57', 'Subid bazar,undefined,Sylhet - 3100', 'cash', 1, 2, 'coin'),
(163, 'Dhaka', 'samsu32@gmail.com', '01234555', 17, '2021-01-01 03:00:09', 'Subid bazar,undefined,Sylhet - 3100', 'cash', 1, 2, 'checkout'),
(164, 'Dhaka', 'samsu32@gmail.com', '01234555', 17, '2021-01-01 03:22:33', 'Subid bazar,undefined,Sylhet - 3100', 'cash', 1, 2, 'coin'),
(165, 'Dhaka', 'samsu32@gmail.com', '01234555', 17, '2021-01-01 03:28:07', 'Subid bazar,undefined,Sylhet - 3100', 'cash', 1, 2, 'coin'),
(166, 'Dhaka', 'samsu32@gmail.com', '01234555', 17, '2021-01-01 03:33:26', 'Subid bazar,undefined,Sylhet - 3100', 'cash', 1, 2, 'coin');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(70) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `name`, `email`, `mobile`, `comment`, `added_on`, `address`) VALUES
(1, 'MaasuquE', 'mdmaasuque@gmail.om', '01725110034', 'Test Web', '2020-09-19 06:33:14', '42/15-Nurani,Bonkolapara,Subidbazar,Sylhet'),
(14, 'Masuk  Mia', 'samsu32@gmail.com', '01725110034', 'sdfsdfsdaf', '27 Sep, 2020', 'Subid bazar'),
(16, 'Dhaka', 'habiba@protonmail.com', '017689608981', 'sdfsadf', '27 Sep, 2020 - 08:07:30', 'Subid bazar');

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL,
  `coupon` varchar(50) NOT NULL,
  `discount` float NOT NULL,
  `status` tinyint(4) NOT NULL,
  `uses_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `coupon`, `discount`, `status`, `uses_time`) VALUES
(0, 'FEASTSYL30', 30, 1, 0),
(0, '31ST NIGHT', 20, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `del_boy_id` int(11) NOT NULL,
  `boy_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` mediumint(9) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL,
  `boy_added_on` varchar(100) NOT NULL,
  `del_boy_sts` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_boy`
--

INSERT INTO `delivery_boy` (`del_boy_id`, `boy_name`, `email`, `mobile`, `age`, `gender`, `city`, `address`, `password`, `img`, `boy_added_on`, `del_boy_sts`) VALUES
(2, 'Dhaka', 'samsu32@gmail.com', 8388607, 23423, 'male', 'Sylhet', 'Subid bazar', '12345', 'pp.jpg', '2020-12-25 03:19:10pm', 1),
(9, 'Dhaka', 'samsu12332@gmail.com', 1234555, 213424, 'male', 'Sylhet', 'Subid bazar', '12323', 'pp.jpg', '2021-01-01 09:39:07pm', 0),
(10, 'Ridoy', 'ridoy@gmail.com', 8388607, 40, 'others', 'Sylhet', 'Subid bazar', '123456', 'pp.jpg', '2021-01-01 09:40:38pm', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `coin` mediumint(9) NOT NULL,
  `discount` int(11) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `long_desc` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `pdt_sts` tinyint(4) NOT NULL,
  `brand_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `category`, `sub_cat_id`, `product_name`, `mrp`, `qty`, `price`, `coin`, `discount`, `short_desc`, `long_desc`, `img`, `pdt_sts`, `brand_id`) VALUES
(77, 34, 0, 'Gucci Cloth Handbag', 0, 993, 2000, 5, 0, '', 'Well design handbag for ladies.', '1609150902-Gucci Cloth Handbag.jpg', 1, 40),
(78, 34, 0, 'Pink Trainer', 0, 995, 3500, 5, 5, '', 'Girl choice best trainer', '1609151158-Pink Trainers.jpg', 1, 40),
(79, 34, 0, 'Men Gucci short Pant', 0, 1000, 1000, 0, 0, '', 'Best seller of 2020 until november.', '1609151260-Short Gucci Pant.jpg', 1, 40),
(80, 34, 0, 'Gucci Cotton T-shirt', 0, 1000, 800, 0, 0, '', 'Very comfortable t-shirt', '1609151388-Gucci Cotton T-shirt.jpg', 1, 40),
(81, 34, 0, 'Gucci Washed T-shirt', 0, 1000, 1200, 0, 0, '', 'T-shirt', '1609151448-Gucci Washed T-shirt.jpg', 1, 40),
(82, 20, 23, 'One Plus 8 pro', 0, 10, 80000, 0, 0, '', 'Without notch best full screen display', '1609152024-One Plus 8 pro.jpg', 1, 41),
(84, 20, 23, 'Redmi K20 Pro', 0, 10, 30000, 0, 0, '', 'Redmi best creation best for gaming.', '1609152183-Redmi K20 Pro.jpg', 1, 41),
(85, 20, 23, 'Samsung Note 20', 0, 10, 70000, 0, 0, '', 'Full display phone', '1609152376-Samsung Note 20.jpg', 1, 41),
(86, 20, 23, 'iphone 12', 0, 1, 150000, 50, 0, '', 'Brand new box mobile', '1609152445-iphone 12.jpg', 1, 41),
(87, 20, 20, 'Full Hd 27\" IPS  LCD Monitor', 0, 20, 22500, 0, 0, '', 'Full Hd screen and best seller', '1609152775-Full Hd  Lcd Monitor.jpg', 1, 42),
(88, 20, 20, 'AMD Ryzen 7 3700X Gaming PC', 0, 100, 170000, 100, 0, '', 'Best gaming pc ever in low budget', '1609152885-AMD Ryzen 7 3700X Gaming PC.jpg', 1, 42),
(89, 20, 20, 'AMD Ryzen 7 3700X Gaming PC', 0, 10, 15000, 0, 2, '', 'Best gaming mouse', '1609153034-Logitech Gaming Mouse G502 HERO.jpg', 1, 42),
(90, 20, 20, 'Logitec K480 Bluetooth Multidevice keyboard', 0, 20, 20000, 0, 0, '', 'Flexible keyboard and useable anywhere', '1609153237-Logitec K480 Bluetoth Multidevice keyboard.jpg', 1, 42),
(91, 34, 0, 'Mens Formal Shirt', 0, 97, 1200, 0, 0, '', 'Cotton Men Formal Shirt', '1609153416-Mens Formal Shirt.jpg', 1, 39),
(92, 34, 0, 'Mens Cargo Pant', 0, 100, 2000, 0, 0, '', 'Imported pant', '1609153519-Mens Cargo Pant.jpg', 1, 39),
(93, 34, 0, 'Infinity Teenage Tops', 0, 96, 1500, 0, 0, '', 'Grls loved this tops very much', '1609153700-Infinity Teenage Tops.jpg', 1, 39),
(94, 34, 0, 'Infinity Teen Pant', 0, 100, 1000, 0, 0, '', 'Teen loved pant', '1609153868-download (1).jpg', 1, 39),
(95, 19, 27, 'Bed', 0, 2, 35000, 0, 0, '', 'Nicely decorated wooden bed', '1609156310-bed.jpg', 1, 43),
(96, 19, 14, 'Single-seat Sofa', 0, 10, 40000, 0, 0, '', 'Soft Foamed sofa', '1609169179-p3.jpg', 1, 43),
(97, 19, 13, 'F chair', 0, 95, 500, 5000, 5, '', 'This is F chair.', '1609169147-p7.jpg', 1, 43),
(98, 32, 11, 'No collar T-shirt', 0, 20, 300, 0, 30, '', 'This is t-shirt is so nice', '1609169321-t6-removebg-preview.png', 1, 39),
(99, 32, 11, 'VIP T-shirt', 1000, 26, 10001, 50000, 12, '', 'adsadfsdaf', '1609333161-231c3d78fef32e545a023136ce6d9149.jpg', 1, 44),
(100, 20, 23, 'rqewrwe', 0, 2342, 2342, 0, 234, '', 'sdfsa', '1609181128-AMD Ryzen 7 3700X Gaming PC.jpg', 1, 45);

-- --------------------------------------------------------

--
-- Table structure for table `product_comment`
--

CREATE TABLE `product_comment` (
  `comment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `comment_date` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_like` mediumint(9) NOT NULL,
  `comment_dislike` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_comment`
--

INSERT INTO `product_comment` (`comment_id`, `product_id`, `comment`, `comment_date`, `user_id`, `comment_like`, `comment_dislike`) VALUES
(12, 65, 'sdfsfds', '2020-12-13 04:28:16am', 17, 0, 0),
(13, 65, 'asdfasdf', '2020-12-13 04:28:19am', 17, 3, 0),
(29, 64, 'sdfsfad', '2020-12-14 12:12:45pm', 7, 1, 2),
(30, 64, 'ddddd', '2020-12-14 12:17:40pm', 7, 4, 3),
(31, 64, 'sdfsdaf', '2020-12-14 12:28:35pm', 7, 20, 9),
(32, 42, 'sdfsdfsdf', '2020-12-14 01:05:52pm', 7, 0, 0),
(33, 60, 'sdfsdf', '2020-12-14 01:07:33pm', 7, 0, 0),
(36, 38, 'sdfsdafsdaf', '2020-12-16 03:19:48pm', 7, 0, 0),
(37, 64, 'dfsdfsdf', '2020-12-22 05:07:32pm', 7, 0, 0),
(38, 67, 'sfsdfsd', '2020-12-22 09:53:00pm', 7, 0, 0),
(42, 68, 'sdafsdf', '2020-12-23 11:42:28pm', 7, 0, 0),
(43, 68, 'sdfsdfa', '2020-12-23 11:42:44pm', 7, 0, 0),
(44, 97, 'dfsdfsdaf', '2020-12-28 09:35:34pm', 7, 0, 0),
(45, 97, 'sadfsadfs', '2020-12-28 09:35:36pm', 7, 0, 0),
(47, 98, 'dfgafdsf', '2021-01-01 02:13:29am', 17, 0, 0),
(48, 98, 'sdfsdfds', '2021-01-01 02:13:32am', 17, 0, 0),
(49, 99, 'sdfsfsdfsd', '2021-01-01 03:02:17am', 17, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_rating`
--

CREATE TABLE `product_rating` (
  `rating_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `1_star` int(11) NOT NULL,
  `2_star` int(11) NOT NULL,
  `3_star` int(11) NOT NULL,
  `4_star` int(11) NOT NULL,
  `5_star` int(11) NOT NULL,
  `rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_rating`
--

INSERT INTO `product_rating` (`rating_id`, `product_id`, `1_star`, `2_star`, `3_star`, `4_star`, `5_star`, `rate`) VALUES
(9, 68, 0, 0, 0, 4, 2, 4.33333),
(10, 60, 0, 0, 0, 3, 0, 4),
(11, 69, 0, 0, 0, 3, 0, 4),
(12, 0, 0, 0, 0, 1, 0, 4),
(13, 70, 0, 0, 0, 1, 0, 4),
(14, 71, 0, 0, 0, 1, 0, 4),
(15, 74, 0, 0, 0, 1, 0, 4),
(16, 75, 0, 0, 0, 1, 0, 4),
(17, 86, 0, 0, 0, 2, 0, 4),
(18, 77, 0, 0, 0, 3, 0, 4),
(19, 95, 0, 0, 0, 3, 0, 4),
(20, 97, 0, 0, 2, 1, 0, 3.33333),
(21, 91, 0, 0, 0, 1, 0, 4),
(22, 93, 0, 0, 0, 1, 0, 4),
(23, 88, 0, 0, 0, 2, 2, 4.5),
(24, 99, 0, 0, 0, 8, 1, 4.11111),
(25, 78, 0, 0, 0, 1, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `slide_product`
--

CREATE TABLE `slide_product` (
  `slide_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `slide_sts` tinyint(4) NOT NULL,
  `added_on` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_product`
--

INSERT INTO `slide_product` (`slide_id`, `product_id`, `slide_sts`, `added_on`) VALUES
(11, 98, 1, '2020-12-28 09:28:59pm'),
(12, 97, 1, '2020-12-28 09:29:00pm'),
(15, 99, 1, '2020-12-31 08:01:31pm'),
(16, 95, 1, '2020-12-31 10:08:23pm'),
(17, 100, 1, '2020-12-31 10:08:36pm');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_id`, `category_id`, `sub_categories`, `status`) VALUES
(11, 32, 'T-shirt', 1),
(12, 33, 'Hijab', 1),
(13, 19, 'Chair', 1),
(14, 19, 'Sufa', 1),
(18, 32, 'Shoes', 1),
(19, 32, 'Sun-glass', 1),
(20, 20, 'computer', 1),
(21, 22, 'Anti-Biotic', 1),
(22, 19, 'City', 1),
(23, 20, 'Mobile', 1),
(24, 22, 'Anti-Gasstic', 1),
(25, 22, 'Paracitemal', 1),
(26, 20, 'Pad', 1),
(27, 19, 'bed', 1),
(28, 19, 'Dining', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `user_coin` bigint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `mobile`, `added_on`, `img`, `password`, `user_coin`) VALUES
(7, 'MaasuquE', 'mdmaasuque@gmail.ocm', '01725110034', '27 Sep, 2020  09:46:01', 'Dining.png', '12345', 1300),
(17, 'Happy', 'masukmia603@gmail.com', '017689608981', '23 Oct, 2020  09:06:45', '125979696_2412487728897636_7764827119394844222_o.jpg', '123456', 14975),
(18, 'Dhaka', 'masuksdfsdf@gmail.com', '01725110034', '23 Oct, 2020  09:07:48', 'pp.jpg', '12345', 0),
(19, 'Dhaka', 'masuksssdf@gmail.com', '01725110034', '23 Oct, 2020  09:11:23', 'pp.jpg', '12345', 0),
(23, 'Happy', 'massdfukdsf@gmail.com', '01725110035', '24 Oct, 2020  09:49:01', 'pp.jpg', '12345', 0),
(24, 'Mim', 'mim@gmail.com', '01725110035', '24 Oct, 2020  09:49:54', 'pp.jpg', '12345', 0),
(26, 'Mim', 'mim23@gmail.com', '01725110035', '24 Oct, 2020  09:51:31', 'pp.jpg', '12345', 0),
(28, 'Dhaka', 'saefsdfsd@dsfsdfsd', '41544', '24 Oct, 2020  09:53:41', 'pp.jpg', '12345', 0),
(30, 'Happy', 'massdfsdfuk@gmail.com', '01725110035', '24 Oct, 2020  10:02:48', 'pp.jpg', '12345', 0),
(32, 'Happy', 'masuk345@gmail.com', '01725110035', '24 Oct, 2020  01:04:45', 'pp.jpg', '12345', 0),
(34, 'Happy', 'masuk222@gmail.com', '01725110035', '24 Oct, 2020  06:43:08', 'pp.jpg', '12345', 0),
(36, 'Happy', 'm32asuk@gmail.com', '01725110035', '24 Oct, 2020  06:47:14', 'pp.jpg', '12345', 0),
(38, 'Dhaka', 'mas23423uk@gmail.com', '01725110035', '24 Oct, 2020  06:51:04', 'pp.jpg', '12345', 0),
(54, 'safasdf', 'samsu2028@gmail.com', '234242423', '03 Dec, 2020  06:55:27', 'wp1969900-kristen-stewart-2017-wallpapers.jpg', '123456', 0),
(55, 'Dhaka', 'samsu32@gmail.com', '01234555', '01 Jan, 2021  09:21:30', 'pp.jpg', '12345', 0),
(56, 'Dhaka', 'samsu324@gmail.com', '01234555', '01 Jan, 2021  09:22:28', 'pp.jpg', '12345', 0),
(57, 'Ridoy', 'ridoy@gmail.com', '0172342342', '2020-12-24 10:20pm', 'pp.jpg', '12345', 0);

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `visitor_id` int(11) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `visiting_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`visitor_id`, `ip_address`, `visiting_date`) VALUES
(554, '::1', '2020-12-24 04:34:56pm');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `added_on` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `product_id`, `user_id`, `added_on`) VALUES
(32, 38, 54, '03 Dec, 2020 06:59:38'),
(33, 98, 7, '28 Dec, 2020 10:53:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`buy_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`checkout_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD PRIMARY KEY (`del_boy_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_comment`
--
ALTER TABLE `product_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `product_rating`
--
ALTER TABLE `product_rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `slide_product`
--
ALTER TABLE `slide_product`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`visitor_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `buy`
--
ALTER TABLE `buy`
  MODIFY `buy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `checkout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  MODIFY `del_boy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `product_comment`
--
ALTER TABLE `product_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `product_rating`
--
ALTER TABLE `product_rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `slide_product`
--
ALTER TABLE `slide_product`
  MODIFY `slide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=555;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
