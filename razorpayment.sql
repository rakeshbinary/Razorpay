-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2022 at 08:30 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `razorpayment`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_29_064139_create_payments_table', 1);

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpay_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_done` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `name`, `email`, `amount`, `payment_id`, `razorpay_id`, `payment_done`, `created_at`, `updated_at`) VALUES
(13, 'Laravel update', NULL, 89, 'order_KNhLMCVbeBFV7I', 'pay_KNhLVVR4d5yPc7', 1, '2022-09-29 05:53:15', '2022-09-29 05:54:13'),
(14, 'Laravel', NULL, 1000, 'order_KNhQjHUTvkjEA1', 'pay_KNhQrEaBslMlU4', 1, '2022-09-29 05:58:20', '2022-09-29 06:03:32'),
(15, 'Rakesh', NULL, 1000, 'order_KNhXhQt7HJJvTV', NULL, 0, '2022-09-29 06:04:56', '2022-09-29 06:04:56'),
(16, 'Rakesh', NULL, 150, 'order_KNhgZGQ9vD5oDr', 'pay_KNhghbHsRocdvx', 1, '2022-09-29 06:13:20', '2022-09-29 06:13:49'),
(17, 'Pizza', 'order_KNhiv2freBoBuA', 1000, 'order_KNhiv2freBoBuA', 'pay_KNhj2qrlgfrcst', 1, '2022-09-29 06:15:33', '2022-09-29 06:15:45'),
(18, 'Laravel', 'order_KNhkXbqJx5ob0T', 123, 'order_KNhkXbqJx5ob0T', 'pay_KNhkemDo2e9Bxz', 1, '2022-09-29 06:17:05', '2022-09-29 06:17:17'),
(19, 'Laravel', 'order_KNhlyr3Okuq7Yq', 200, 'order_KNhlyr3Okuq7Yq', 'pay_KNhm8eC4oUaRVn', 1, '2022-09-29 06:18:27', '2022-09-29 06:18:41'),
(20, 'Laravel', 'order_KNhnS2RYlX8JxP', 1000, 'order_KNhnS2RYlX8JxP', 'pay_KNhnbBLaGIdmKh', 1, '2022-09-29 06:19:51', '2022-09-29 06:20:04'),
(21, 'Rakesh', 'order_KNi5ncvCRzHUDZ', 150, 'order_KNi5ncvCRzHUDZ', NULL, 0, '2022-09-29 06:37:13', '2022-09-29 06:37:13'),
(22, 'Rakesh', 'order_KNi6AFHA9kTswz', 150, 'order_KNi6AFHA9kTswz', NULL, 0, '2022-09-29 06:37:34', '2022-09-29 06:37:34'),
(23, 'Rakesh', 'order_KNi6LlRjCWt8OF', 150, 'order_KNi6LlRjCWt8OF', NULL, 0, '2022-09-29 06:37:44', '2022-09-29 06:37:44'),
(24, 'Laravel', 'order_KNi6ipO1dcZDQq', 150, 'order_KNi6ipO1dcZDQq', 'pay_KNi6qWMFFnVQYh', 1, '2022-09-29 06:38:05', '2022-09-29 06:38:17'),
(25, 'Rakesh', 'rakeshjadhav893@gmail.com', 3000, 'order_KNiFxxLXCBe13l', 'pay_KNiGDDp2aPTxlY', 1, '2022-09-29 06:46:50', '2022-09-29 06:47:09'),
(26, 'Rakesh', NULL, 150, 'order_KNy4PSOuSHrD1x', NULL, 0, '2022-09-29 22:15:01', '2022-09-29 22:15:01'),
(27, 'test', NULL, 1000, 'order_KNy4kkEkUNCUn0', 'pay_KNy4wQ4ts9poqH', 1, '2022-09-29 22:15:21', '2022-09-29 22:15:36'),
(28, 'Laravel', NULL, 150, 'order_KNy7NZiZQ5fqmJ', NULL, 0, '2022-09-29 22:17:50', '2022-09-29 22:17:50'),
(29, 'Pizza', NULL, 500, 'order_KNy9MVZOyeoQkg', 'pay_KNy9W0rSOsmybC', 1, '2022-09-29 22:19:42', '2022-09-29 22:19:55'),
(30, 'Rakesh', NULL, 150, 'order_KNyDlSyZtZqMFp', 'pay_KNyDw62MIBPgDu', 1, '2022-09-29 22:23:52', '2022-09-29 22:24:06'),
(31, 'rohan', NULL, 200, 'order_KNyHfw2a7Zi8Fo', 'pay_KNyHns0OomICO1', 1, '2022-09-29 22:27:34', '2022-09-29 22:27:46'),
(32, 'Rakesh Jadhav', 'rakesh@gmail.com', 600, 'order_KNz5O0SZjp2Mxb', 'pay_KNz5YG0vNTjX0O', 1, '2022-09-29 23:14:38', '2022-09-29 23:14:52');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
