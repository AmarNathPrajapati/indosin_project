-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2022 at 10:12 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `indosin2`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `country` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `flag` int(11) NOT NULL DEFAULT 0 COMMENT '0-products page\r\n, 1- contact page',
  `archive` int(11) NOT NULL DEFAULT 0 COMMENT '0-no, 1-yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `email`, `name`, `phone`, `country`, `state`, `message`, `flag`, `archive`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 'xyzhjs@gmail.com', 'asdasdsdfg', 7851332230, 'UK', 'chhatisgarh', 'yydydyud', 1, 0, '2022-04-17 18:13:57', '2022-04-26 07:56:22', NULL),
(13, 'iit2020024@iiita.ac.in', 'asdasdsdfg', 343452323433, 'india', 'chhatisgarh', 'hvhvhjjjh', 1, 0, '2022-04-17 18:23:38', '2022-04-26 07:56:22', NULL),
(14, 'piyushbansal941@gmail.com', 'Piyush', 7851332230, 'UK', 'chhatisgarh', 'jbhvhjvh', 1, 0, '2022-04-21 13:11:39', '2022-04-26 07:11:37', NULL),
(15, 'mohnishsagarwanshi1205@gmail.com', 'Mohnish Sagarvanshi', 1234567890, 'India', 'Chhattisgarh', 'nothing', 0, 0, '2022-04-23 06:13:21', '2022-04-26 07:11:38', NULL),
(16, 'mohnishsagarwanshi1205@gmail.com', 'Mohnish Sagarvanshi', 1234567890, 'India', 'Chhattisgarh', 'ok', 0, 0, '2022-04-23 06:14:07', '2022-04-26 07:11:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `page_flags`
--

CREATE TABLE `page_flags` (
  `id` int(11) NOT NULL,
  `flag` int(11) DEFAULT NULL,
  `page` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_query`
--

CREATE TABLE `product_query` (
  `id` int(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `flag` int(11) NOT NULL DEFAULT 0 COMMENT '0-contact us, 1- faq',
  `product` text DEFAULT NULL,
  `archive` int(11) NOT NULL DEFAULT 0 COMMENT '0- no, 1-yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_query`
--

INSERT INTO `product_query` (`id`, `email`, `name`, `phone`, `message`, `flag`, `product`, `archive`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 'ram@gmail.com', 'ram', 75356356356, 'test query', 1, NULL, 0, '2022-04-06 15:25:29', '2022-04-26 07:56:15', NULL),
(10, 'xyzhjs@gmail.com', 'asdasdsdfgefe', 343452323433, 'nmvvnvhjjh', 1, 'Oleoresins', 0, '2022-04-17 17:54:23', '2022-04-26 07:56:15', NULL),
(11, 'kartik@designavenue.co.in', 'Piyush', 646467463367, 'hstsatrstrstysytk', 1, 'Absolutes', 0, '2022-04-17 17:55:25', '2022-04-26 07:11:30', NULL),
(15, 'mohnishsagarwanshi1205@gmail.com', 'Mohnish Sagarvanshi', 1234567890, 'nothing', 1, 'Essential Oils', 0, '2022-04-23 06:08:21', '2022-04-25 12:30:05', NULL),
(16, 'mohnishsagarwanshi1205@gmail.com', 'Mohnish Sagarvanshi', 1234567890, 'nothing', 1, 'Essential Oils', 0, '2022-04-23 06:10:41', '2022-04-25 12:26:36', NULL),
(17, 'mohnishsagarwanshi1205@gmail.com', 'Mohnish Sagarvanshi', 1234567890, 'nothing', 1, 'Essential Oils', 0, '2022-04-23 06:12:05', '2022-04-25 12:26:35', NULL),
(18, 'mohnishsagarwanshi1205@gmail.com', 'Mohnish Sagarvanshi', 1234567890, 'nothing', 1, 'Herbal Products', 0, '2022-04-23 06:40:37', '2022-04-25 12:26:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) DEFAULT NULL,
  `role` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`) VALUES
(0, 'student'),
(1, 'super admin'),
(2, 'agent'),
(3, 'gleam admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `is_admin` int(11) NOT NULL DEFAULT 0 COMMENT ' 1-godfather, 2-super admin,3-admin, \r\n',
  `verification_code` text DEFAULT NULL,
  `forgot_token` text DEFAULT NULL,
  `verified` int(10) NOT NULL DEFAULT 0 COMMENT '0-No, 1-Yes',
  `user_block` int(10) NOT NULL DEFAULT 0 COMMENT '0-unblock, 1-block',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `is_admin`, `verification_code`, `forgot_token`, `verified`, `user_block`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, '    admin 123', 'admin@gmail.com', 7775875580, '$2y$10$0HoVpDL4bhRdmw4cGlFfZeilr0C8EyHslRdWDiQcQiLyB63GcdCym', 1, NULL, '6616', 1, 0, '2022-03-03 07:44:41', '2022-04-26 07:14:22', NULL),
(62, 'Mohnish', 'mohnishsagarwanshi1205@gmail.com', 1234567890, '$2y$10$9E11g1Ez3rYWG7vzdiUepeWghn0VaAsb0OC4uIybDhqewQtqMPxYW', 2, NULL, NULL, 1, 0, '2022-04-26 07:27:36', NULL, NULL),
(63, 'Piyush Bansal', 'piyushbansal941@gmail.com', 1234567890, '$2y$10$6AQvFyt71a0pqFNTbtkYvOGF.N1oVbfJ9U2Ms2twws8dIdToklae.', 2, NULL, NULL, 1, 0, '2022-04-26 07:28:04', '2022-04-26 07:28:19', '2022-04-26 07:28:19'),
(64, 'Piyush Bansal', 'piyushbansal941@gmail.com', 1234567890, '$2y$10$0WeYpnYiLOMUIcEkysx5jeQqa3u74dq6umRl4Q74otLrFsg0OeUVe', 3, NULL, NULL, 1, 0, '2022-04-26 07:59:18', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_flags`
--
ALTER TABLE `page_flags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_query`
--
ALTER TABLE `product_query`
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
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `page_flags`
--
ALTER TABLE `page_flags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_query`
--
ALTER TABLE `product_query`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
