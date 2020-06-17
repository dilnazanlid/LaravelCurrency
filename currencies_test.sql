-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 17, 2020 at 07:11 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `currencies_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double(15,8) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `rate`, `date`, `created_at`, `updated_at`) VALUES
(1, 'AUD', 279.87000000, '2020-06-15', '2020-06-15 02:42:16', '2020-06-16 10:36:02'),
(2, 'GBP', 510.98000000, '2020-06-15', '2020-06-15 02:42:16', '2020-06-16 10:36:02'),
(3, 'DKK', 61.37000000, '2020-06-15', '2020-06-15 02:42:16', '2020-06-16 10:36:02'),
(4, 'AED', 109.91000000, '2020-06-15', '2020-06-15 02:42:16', '2020-06-16 10:36:02'),
(5, 'USD', 403.68000000, '2020-06-15', '2020-06-15 02:42:16', '2020-06-16 10:36:02'),
(6, 'EUR', 457.53000000, '2020-06-15', '2020-06-15 02:42:16', '2020-06-16 10:36:02'),
(7, 'CAD', 297.70000000, '2020-06-15', '2020-06-15 02:42:16', '2020-06-16 10:36:02'),
(8, 'CNY', 57.05000000, '2020-06-15', '2020-06-15 02:42:16', '2020-06-16 10:36:02'),
(9, 'KWD', 1313.98000000, '2020-06-15', '2020-06-15 02:42:16', '2020-06-16 10:36:03'),
(10, 'KGS', 5.39000000, '2020-06-15', '2020-06-15 02:42:16', '2020-06-16 10:36:03'),
(11, 'LVL', 300.96000000, '2013-12-31', '2020-06-15 02:42:16', '2020-06-16 10:36:03'),
(12, 'MDL', 23.61000000, '2020-06-15', '2020-06-15 02:42:16', '2020-06-16 10:36:03'),
(13, 'NOK', 42.43000000, '2020-06-15', '2020-06-15 02:42:16', '2020-06-16 10:36:03'),
(14, 'SAR', 107.62000000, '2020-06-15', '2020-06-15 02:42:16', '2020-06-16 10:36:03'),
(15, 'RUB', 5.79000000, '2020-06-15', '2020-06-15 02:42:16', '2020-06-16 10:36:03'),
(16, 'XDR', 556.82000000, '2020-06-15', '2020-06-15 02:42:17', '2020-06-16 10:36:03'),
(17, 'SGD', 290.44000000, '2020-06-15', '2020-06-15 02:42:17', '2020-06-16 10:36:03'),
(18, 'TRL', 0.00010000, '2005-01-05', '2020-06-15 02:42:17', '2020-06-16 10:36:03'),
(19, 'UZS', 0.03980000, '2020-06-15', '2020-06-15 02:42:17', '2020-06-16 10:36:03'),
(20, 'UAH', 15.09000000, '2020-06-15', '2020-06-15 02:42:17', '2020-06-16 10:36:03'),
(21, 'SEK', 43.51000000, '2020-06-15', '2020-06-15 02:42:17', '2020-06-16 10:36:03'),
(22, 'CHF', 426.18000000, '2020-06-15', '2020-06-15 02:42:17', '2020-06-16 10:36:03'),
(23, 'EEK', 12.48000000, '2010-12-31', '2020-06-15 02:42:17', '2020-06-16 10:36:03'),
(24, 'KRW', 0.33330000, '2020-06-15', '2020-06-15 02:42:17', '2020-06-16 10:36:04'),
(25, 'JPY', 3.76000000, '2020-06-15', '2020-06-15 02:42:17', '2020-06-16 10:36:04'),
(26, 'BYN', 170.04000000, '2020-06-15', '2020-06-15 02:42:17', '2020-06-16 10:36:04'),
(27, 'PLN', 103.39000000, '2020-06-15', '2020-06-15 02:42:17', '2020-06-16 10:36:04'),
(28, 'ZAR', 23.67000000, '2020-06-15', '2020-06-15 02:42:17', '2020-06-16 10:36:04'),
(29, 'TRY', 59.05000000, '2020-06-15', '2020-06-15 02:42:17', '2020-06-16 10:36:04'),
(30, 'HUF', 1.32400000, '2020-06-15', '2020-06-15 02:42:17', '2020-06-16 10:36:04'),
(31, 'CZK', 17.21000000, '2020-06-15', '2020-06-15 02:42:17', '2020-06-16 10:36:04'),
(32, 'TJS', 39.21000000, '2020-06-15', '2020-06-15 02:42:17', '2020-06-16 10:36:04'),
(33, 'HKD', 52.09000000, '2020-06-15', '2020-06-15 02:42:17', '2020-06-16 10:36:04'),
(34, 'BRL', 78.30000000, '2020-06-15', '2020-06-15 02:42:17', '2020-06-16 10:36:04'),
(35, 'MYR', 94.54000000, '2020-06-15', '2020-06-15 02:42:17', '2020-06-16 10:36:04'),
(36, 'AZN', 238.44000000, '2020-06-15', '2020-06-15 02:42:17', '2020-06-16 10:36:04'),
(37, 'INR', 5.31000000, '2020-06-15', '2020-06-15 02:42:17', '2020-06-16 10:36:04'),
(38, 'THB', 13.00000000, '2020-06-15', '2020-06-15 02:42:17', '2020-06-16 10:36:04'),
(39, 'AMD', 0.84000000, '2020-06-15', '2020-06-15 02:42:17', '2020-06-16 10:36:04'),
(40, 'GEL', 132.42000000, '2020-06-15', '2020-06-15 02:42:17', '2020-06-16 10:36:04'),
(41, 'IRR', 0.00960000, '2020-06-15', '2020-06-15 02:42:17', '2020-06-16 10:36:04'),
(42, 'MXN', 18.27000000, '2020-06-15', '2020-06-15 02:42:17', '2020-06-16 10:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_06_15_082151_create_currencies_table', 1),
(2, '2020_06_15_082402_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dilnaz', 'dilnaz_01_02@mail.ru', '$2y$10$MXEGdJT0nKk7W2b8N/hBBOyk7unHdYqtuWpngg2MnIf1Li0udmQV6', 'UdiPybVWLGk91whCJMaigzakr65lTRO14PVX5en2yG9We3mr0qYmQHRbYLqv', '2020-06-16 00:26:44', '2020-06-16 00:26:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
