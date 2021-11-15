-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2021 at 05:35 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories_tbl`
--

CREATE TABLE `categories_tbl` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories_tbl`
--

INSERT INTO `categories_tbl` (`cat_id`, `cat_name`) VALUES
(1, 'Men'),
(3, 'Women'),
(4, 'Kids'),
(5, 'Tops'),
(6, 'Bottoms'),
(7, 'Shirts'),
(8, 'Polo'),
(9, 'Jeans'),
(10, 'Dresses'),
(11, 'Skirts'),
(12, 'Trousers'),
(13, 'Blouses'),
(14, 'Blazers'),
(15, 'Jackets');

-- --------------------------------------------------------

--
-- Table structure for table `orders_products_tbl`
--

CREATE TABLE `orders_products_tbl` (
  `product_id` varchar(50) NOT NULL,
  `Order_id` varchar(50) NOT NULL,
  `ord_quantity` int(11) NOT NULL,
  `ord_detail_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_products_tbl`
--

INSERT INTO `orders_products_tbl` (`product_id`, `Order_id`, `ord_quantity`, `ord_detail_id`) VALUES
('3', '0', 0, 1),
('3', '0', 0, 2),
('3', '0', 0, 3),
('2', '0', 0, 4),
('1', '0', 0, 5),
('1', '0', 0, 6),
('a617a83b-0fdb-11ec-973b-482ae389', '0', 1, 7),
('a617a83b-0fdb-11ec-973b-482ae389', '0', 1, 8),
('a617a83b-0fdb-11ec-973b-482ae389', '0', 1, 9),
('a617a83b-0fdb-11ec-973b-482ae389', '0', 1, 10),
('a617a83b-0fdb-11ec-973b-482ae389', '0', 1, 11),
('a617a83b-0fdb-11ec-973b-482ae389', '0', 1, 12),
('a617a83b-0fdb-11ec-973b-482ae389', '0', 1, 13),
('a617a83b-0fdb-11ec-973b-482ae389', '0', 1, 14),
('a617a83b-0fdb-11ec-973b-482ae389', '0', 1, 15),
('a617a83b-0fdb-11ec-973b-482ae389', '0', 1, 16),
('a617a83b-0fdb-11ec-973b-482ae389', '0', 1, 17),
('a617a83b-0fdb-11ec-973b-482ae389', '0', 1, 18),
('a617a83b-0fdb-11ec-973b-482ae389', '0', 1, 19),
('a617a83b-0fdb-11ec-973b-482ae389', '0', 1, 20),
('a617a83b-0fdb-11ec-973b-482ae389', '0', 2, 21),
('a617a83b-0fdb-11ec-973b-482ae389', '0', 2, 22),
('a617a83b-0fdb-11ec-973b-482ae389', '0', 2, 23),
('a617a83b-0fdb-11ec-973b-482ae389', '0', 2, 24),
('a617a83b-0fdb-11ec-973b-482ae389', '0', 2, 25),
('a617a83b-0fdb-11ec-973b-482ae389', '0', 2, 26),
('a617a83b-0fdb-11ec-973b-482ae389', '<br', 3, 27),
('a617a83b-0fdb-11ec-973b-482ae389', '<br', 3, 28),
('a617a83b-0fdb-11ec-973b-482ae389', '<br', 1, 29),
('a617a83b-0fdb-11ec-973b-482ae389', '29', 3, 30),
('a617a83b-0fdb-11ec-973b-482ae389', '29', 3, 31),
('a617a83b-0fdb-11ec-973b-482ae389', '31', 3, 32),
('a617a83b-0fdb-11ec-973b-482ae389', '31', 5, 33),
('a617a83b-0fdb-11ec-973b-482ae389', '33', 2, 34),
('a617a83b-0fdb-11ec-973b-482ae389', '33', 2, 35),
('a617a83b-0fdb-11ec-973b-482ae389', '33', 2, 36),
('a617a83b-0fdb-11ec-973b-482ae389', '33', 2, 37),
('a617a83b-0fdb-11ec-973b-482ae389', '33', 2, 38),
('a617a83b-0fdb-11ec-973b-482ae389', '33', 2, 39),
('a617a83b-0fdb-11ec-973b-482ae389', '33', 2, 40),
('a617a83b-0fdb-11ec-973b-482ae389', '33', 2, 41),
('a617a83b-0fdb-11ec-973b-482ae389', '33', 2, 42),
('a617a83b-0fdb-11ec-973b-482ae389', '33', 1, 43),
('a617a83b-0fdb-11ec-973b-482ae389', '33', 1, 44),
('a617a83b-0fdb-11ec-973b-482ae389', '', 0, 45),
('a617a83b-0fdb-11ec-973b-482ae389', '', 0, 46),
('9d574ada-10a0-11ec-973b-482ae389', '6138ca1e27bdb', 3, 47),
('6138bc7935a45', '6138ca1e27bdb', 4, 48);

-- --------------------------------------------------------

--
-- Table structure for table `orders_tbl`
--

CREATE TABLE `orders_tbl` (
  `order_id` varchar(32) NOT NULL,
  `order_date` datetime NOT NULL,
  `user_id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_tbl`
--

INSERT INTO `orders_tbl` (`order_id`, `order_date`, `user_id`) VALUES
('6137d1bec0cff', '2021-09-07 10:09:00', '61369ac10dc97'),
('6137d46ed8ff7', '2021-09-07 11:09:00', '61369ac10dc97'),
('6137d7c364b70', '2021-09-07 11:09:00', '61369ac10dc97'),
('6137d881d8806', '2021-09-07 11:09:00', '61369ac10dc97'),
('6137d9618e2ec', '2021-09-07 11:09:00', '61369ac10dc97'),
('6137e06b39ea7', '2021-09-07 11:09:00', '61369ac10dc97'),
('6137e1c2b9515', '2021-09-08 12:09:00', '61369ac10dc97'),
('6137e346b46a3', '2021-09-08 12:09:00', '61369ac10dc97'),
('6137e38cc1625', '2021-09-08 12:09:00', '61369ac10dc97'),
('6137e9e8bc7f0', '2021-09-08 12:09:00', '61369ac10dc97'),
('6137ef5d7bcc1', '2021-09-08 01:09:00', '61369ac10dc97'),
('6138b41739476', '2021-09-08 03:09:00', '61369ac10dc97'),
('6138c9741ab74', '2021-09-08 04:09:00', '61369ac10dc97'),
('6138ca1e27bdb', '2021-09-08 04:09:00', '61369ac10dc97'),
('6138d5948ebe1', '2021-09-08 05:09:00', '61369ac10dc97'),
('6138d7a208370', '2021-09-08 05:09:00', '61369ac10dc97');

-- --------------------------------------------------------

--
-- Table structure for table `products_categories_tbl`
--

CREATE TABLE `products_categories_tbl` (
  `category_id` int(11) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `Prd_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_categories_tbl`
--

INSERT INTO `products_categories_tbl` (`category_id`, `product_id`, `Prd_cat_id`) VALUES
(10, '6138bb1657d4d', 2),
(5, '6138bc7935a45', 3);

-- --------------------------------------------------------

--
-- Table structure for table `products_tbl`
--

CREATE TABLE `products_tbl` (
  `prd_id` varchar(50) NOT NULL,
  `prd_name` varchar(45) NOT NULL,
  `prd_description` varchar(100) NOT NULL,
  `store_id` varchar(50) NOT NULL,
  `prd_quantity` int(11) NOT NULL,
  `prd_unitPrice` int(11) NOT NULL,
  `prd_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_tbl`
--

INSERT INTO `products_tbl` (`prd_id`, `prd_name`, `prd_description`, `store_id`, `prd_quantity`, `prd_unitPrice`, `prd_img`) VALUES
('6138bb1657d4d', 'Black Dress', '', '61369b4246db3', 15, 40, '.\\images\\products\\product4.jpg'),
('6138bc7935a45', 'basic white', '', '61369b4246db3', 26, 10, '.\\images\\products\\product6.jpg'),
('9d574ada-10a0-11ec-973b-482ae389', 'Navy Shirt', 'Navy Cotton Shirt', '61369b4246db3', 17, 7, '.\\images\\products\\product5.jpg'),
('a617a83b-0fdb-11ec-973b-482ae389', 'Women\'s shirt', 'Women Long shirt 100% cotton', '61369b4246db3', 2, 20, '.\\images\\products\\product1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `stores_db`
--

CREATE TABLE `stores_db` (
  `str_id` varchar(50) NOT NULL,
  `str_name` varchar(50) NOT NULL,
  `str_email` varchar(45) NOT NULL,
  `str_address` varchar(300) NOT NULL,
  `str_phone_number` varchar(20) NOT NULL,
  `str_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stores_db`
--

INSERT INTO `stores_db` (`str_id`, `str_name`, `str_email`, `str_address`, `str_phone_number`, `str_password`) VALUES
('61369b4246db3', 'Zara', 'zara@gmail.com', 'saida', '96171549883', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92');

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE `users_tbl` (
  `user_id` varchar(50) NOT NULL,
  `user_first_name` varchar(45) NOT NULL,
  `user_last_name` varchar(45) NOT NULL,
  `user_gender` bit(1) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `user_phone_number` varchar(20) NOT NULL,
  `user_email` varchar(45) NOT NULL,
  `user_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`user_id`, `user_first_name`, `user_last_name`, `user_gender`, `user_address`, `user_phone_number`, `user_email`, `user_password`) VALUES
('61369ac10dc97', 'rewa', 'Shoujaa', b'0', 'saida', '8767868768', 'rewa.shoujaa@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories_tbl`
--
ALTER TABLE `categories_tbl`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders_products_tbl`
--
ALTER TABLE `orders_products_tbl`
  ADD PRIMARY KEY (`ord_detail_id`);

--
-- Indexes for table `orders_tbl`
--
ALTER TABLE `orders_tbl`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products_categories_tbl`
--
ALTER TABLE `products_categories_tbl`
  ADD PRIMARY KEY (`Prd_cat_id`);

--
-- Indexes for table `products_tbl`
--
ALTER TABLE `products_tbl`
  ADD PRIMARY KEY (`prd_id`);

--
-- Indexes for table `stores_db`
--
ALTER TABLE `stores_db`
  ADD PRIMARY KEY (`str_id`);

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories_tbl`
--
ALTER TABLE `categories_tbl`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders_products_tbl`
--
ALTER TABLE `orders_products_tbl`
  MODIFY `ord_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `products_categories_tbl`
--
ALTER TABLE `products_categories_tbl`
  MODIFY `Prd_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
