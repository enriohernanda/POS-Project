-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2025 at 09:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_point_of_sales_2025`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(35) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(8, 'Main Courses', '2025-10-20 03:28:03', '2025-10-20 03:28:03'),
(9, 'Desserts', '2025-10-20 03:28:12', '2025-10-20 03:28:12'),
(10, 'Snacks', '2025-10-20 03:30:02', '2025-10-20 03:30:02'),
(11, 'Drinks/Beverages', '2025-10-20 03:30:48', '2025-10-20 03:30:48');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_code` varchar(25) NOT NULL,
  `order_date` datetime NOT NULL,
  `order_amount` decimal(10,2) DEFAULT NULL,
  `order_change` decimal(10,2) DEFAULT NULL,
  `order_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `order_subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_code`, `order_date`, `order_amount`, `order_change`, `order_status`, `created_at`, `updated_at`, `order_subtotal`) VALUES
(2, 'ABC-20250802', '2025-10-21 14:28:51', NULL, NULL, 0, '2025-10-28 04:32:50', NULL, 0),
(5, 'ODR-20251027084439', '2025-10-27 08:44:39', 0.00, 0.00, 0, '2025-10-28 04:32:50', NULL, 0),
(6, 'ODR-20251027084442', '2025-10-27 08:44:42', 0.00, 0.00, 0, '2025-10-28 04:32:50', NULL, 0),
(7, 'ODR-20251027084720', '2025-10-27 08:47:20', 110000.00, 0.00, 1, '2025-10-28 04:32:50', NULL, 0),
(8, 'ODR-20251027084720', '2025-10-27 08:47:20', 110000.00, 0.00, 1, '2025-10-28 04:32:50', NULL, 0),
(9, 'ODR-20251027090105', '2025-10-27 09:01:05', 22000.00, 0.00, 1, '2025-10-28 04:32:50', NULL, 0),
(10, 'ODR-20251028021840', '2025-10-28 02:18:40', 22000.00, 0.00, 1, '2025-10-28 04:32:50', NULL, 0),
(11, 'ODR-20251028022102', '2025-10-28 02:21:02', 22000.00, 0.00, 1, '2025-10-28 04:32:50', NULL, 0),
(12, 'ODR-20251028022129', '2025-10-28 02:21:29', 55000.00, 0.00, 1, '2025-10-28 04:32:50', NULL, 0),
(13, 'ODR-20251028022254', '2025-10-28 02:22:54', 0.00, 0.00, 1, '2025-10-28 04:32:50', NULL, 0),
(14, 'ODR-20251028022312', '2025-10-28 02:23:12', 0.00, 0.00, 1, '2025-10-28 04:32:50', NULL, 0),
(15, 'ODR-20251028022314', '2025-10-28 02:23:14', 22000.00, 0.00, 1, '2025-10-28 04:32:50', NULL, 0),
(16, 'ODR-20251028022326', '2025-10-28 02:23:26', 22000.00, 0.00, 1, '2025-10-28 04:32:50', NULL, 0),
(17, 'ODR-20251028022442', '2025-10-28 02:24:42', 0.00, 0.00, 1, '2025-10-28 04:32:50', NULL, 0),
(18, 'ODR-20251028022608', '2025-10-28 02:26:08', 0.00, 0.00, 1, '2025-10-28 04:32:50', NULL, 0),
(19, 'ODR-20251028022733', '2025-10-28 02:27:33', 0.00, 0.00, 1, '2025-10-28 04:32:50', NULL, 0),
(20, 'ODR-20251028022819', '2025-10-28 02:28:19', 0.00, 0.00, 1, '2025-10-28 04:32:50', NULL, 0),
(21, 'ODR-20251028023307', '2025-10-28 02:33:07', 88000.00, 0.00, 1, '2025-10-28 04:32:50', NULL, 0),
(22, 'ODR-20251028023535', '2025-10-28 02:35:35', 88000.00, 0.00, 1, '2025-10-28 04:32:50', NULL, 0),
(23, 'ODR-20251028044708', '2025-10-28 04:47:08', 22000.00, 0.00, 1, '2025-10-28 04:32:50', NULL, 0),
(24, 'ODR-20251028045746', '2025-10-28 04:57:46', 44000.00, 0.00, 1, '2025-10-28 04:32:50', NULL, 0),
(25, 'ODR-20251028051509', '2025-10-28 05:15:09', 154000.00, 0.00, 1, '2025-10-28 04:32:50', NULL, 0),
(26, 'ODR-20251028052030', '2025-10-28 05:20:30', 66000.00, 0.00, 1, '2025-10-28 04:32:50', NULL, 0),
(27, 'ODR-20251028052343', '2025-10-28 05:23:43', 66000.00, 0.00, 1, '2025-10-28 04:32:50', NULL, 0),
(28, 'ODR-20251028053723', '2025-10-28 05:37:23', 22000.00, 0.00, 1, '2025-10-28 04:37:23', NULL, 0),
(29, 'ODR-20251028071848', '2025-10-28 07:18:48', 22000.00, 0.00, 1, '2025-10-28 06:18:48', NULL, 0),
(30, 'ODR-20251028074542', '2025-10-28 07:45:42', 22000.00, 0.00, 1, '2025-10-28 06:45:42', NULL, 0),
(31, 'ODR-20251028074724', '2025-10-28 07:47:24', 66000.00, 0.00, 1, '2025-10-28 06:47:24', NULL, 0),
(32, 'ODR-20251028074742', '2025-10-28 07:47:42', 104500.00, 0.00, 1, '2025-10-28 06:47:42', NULL, 0),
(33, 'ODR-20251028091507', '2025-10-28 09:15:07', 38500.00, NULL, 1, '2025-10-28 08:15:07', NULL, 35000);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(3) NOT NULL,
  `order_price` decimal(10,2) NOT NULL,
  `order_subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `qty`, `order_price`, `order_subtotal`) VALUES
(3, 2, 2, 2, 25000.00, 25000.00),
(7, 9, 12, 1, 20000.00, 20000.00),
(8, 10, 12, 1, 20000.00, 20000.00),
(9, 11, 12, 1, 20000.00, 20000.00),
(10, 12, 12, 1, 20000.00, 20000.00),
(11, 12, 21, 2, 15000.00, 30000.00),
(12, 15, 12, 1, 20000.00, 20000.00),
(13, 16, 12, 1, 20000.00, 20000.00),
(14, 21, 12, 4, 20000.00, 80000.00),
(15, 22, 12, 4, 20000.00, 80000.00),
(16, 23, 12, 1, 20000.00, 20000.00),
(17, 24, 12, 2, 20000.00, 40000.00),
(18, 25, 12, 1, 20000.00, 20000.00),
(19, 25, 21, 2, 15000.00, 30000.00),
(20, 25, 13, 2, 45000.00, 90000.00),
(21, 26, 10, 1, 50000.00, 50000.00),
(22, 26, 11, 1, 10000.00, 10000.00),
(23, 27, 21, 1, 15000.00, 15000.00),
(24, 27, 13, 1, 45000.00, 45000.00),
(25, 28, 12, 1, 20000.00, 20000.00),
(26, 29, 12, 1, 20000.00, 20000.00),
(27, 30, 12, 1, 20000.00, 20000.00),
(28, 31, 12, 3, 20000.00, 60000.00),
(29, 32, 12, 3, 20000.00, 60000.00),
(30, 32, 21, 1, 15000.00, 15000.00),
(31, 32, 11, 2, 10000.00, 20000.00),
(32, 33, 12, 1, 20000.00, 20000.00),
(33, 33, 21, 1, 15000.00, 15000.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_name` varchar(35) DEFAULT NULL,
  `product_photo` varchar(255) DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `product_description` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `product_photo`, `product_price`, `product_description`, `is_active`, `created_at`, `updated_at`) VALUES
(10, 9, 'Cheesecake', 'assets/uploads/1761203387-cheesecake.jpg', 50000.00, 'A soft cake made from cream cheese, eggs, and sugar, usually topped with a biscuit crust. It can be served with fruit, chocolate, or caramel sauce.', 0, '2025-10-20 06:35:53', '2025-10-20 06:35:53'),
(11, 9, 'Es Teler', 'assets/uploads/es_teler.jpg', 10000.00, 'A mixture of avocado, jackfruit, young coconut, and grass jelly, served with sweetened condensed milk and syrup.', 0, '2025-10-20 06:53:26', '2025-10-20 06:53:26'),
(12, 8, 'Nasi Goreng ', 'assets/uploads/nasgor.jpg', 20000.00, 'Rice fried with onions, soy sauce, and chili sauce, often served with a fried egg, chicken, or shrimp.', 0, '2025-10-20 06:54:57', '2025-10-20 06:54:57'),
(13, 8, 'Burger', 'assets/uploads/burger.jpg', 45000.00, 'A patty filled with roast beef, cheese, vegetables, and sauce, served with fries.', 0, '2025-10-20 07:12:49', '2025-10-20 07:12:49'),
(21, 8, ' Milkshake', 'assets/uploads/1761030974-milkshakes.jpg', 15000.00, 'Milkshakes mantap', 0, '2025-10-21 07:16:14', '2025-10-21 07:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'administrator', '2025-10-16 02:36:26', '2025-10-16 02:36:26'),
(2, 'admin', '2025-10-16 02:36:26', '2025-10-16 02:52:14'),
(3, 'operator', '2025-10-16 02:36:26', '2025-10-16 02:52:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `role_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `role_id`, `deleted_at`) VALUES
(1, 'Enrio Hernanda', 'enrio@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '2025-10-16 01:59:30', '2025-10-23 01:21:41', 1, NULL),
(3, 'enrio azaaaa', 'hernanda@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '2025-10-16 02:09:57', '2025-10-23 01:21:24', 2, NULL),
(5, 'enrio nanda', 'nanda@gmail.com', '13774352b79db3dd22b8a8dedf9403c69b2e6dbe', '2025-10-16 07:34:56', '2025-10-21 04:01:34', 2, NULL),
(6, 'alan', 'alan@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', '2025-10-16 07:53:55', '2025-10-21 03:52:44', NULL, NULL),
(9, 'budi', 'budi@gmail.com', 'budi123', '2025-10-20 01:13:21', '2025-10-20 02:06:18', NULL, '2025-10-20 09:06:18'),
(10, 'fufufifi', 'fufufifi@gmail.com', 'fufufafa', '2025-10-20 01:46:21', '2025-10-20 02:04:16', NULL, '2025-10-20 09:04:16'),
(12, 'uhuyyy', 'cihuy@yahoo.com', '12345678', '2025-10-20 02:04:47', '2025-10-20 02:06:26', NULL, '2025-10-20 09:06:26'),
(13, 'roni', 'roni@icloud.com', '12345678', '2025-10-20 02:07:17', '2025-10-20 03:44:12', NULL, '2025-10-20 10:44:12'),
(14, 'Roni', 'roni2@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', '2025-10-21 04:08:38', '2025-10-21 04:08:38', NULL, NULL),
(15, 'aryo jmk48', 'aryojmk@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', '2025-10-21 04:11:25', '2025-10-21 04:11:25', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_id_to_order` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `fk_order_id_to_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
