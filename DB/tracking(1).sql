-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2021 at 02:55 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tracking`
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
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

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
  `latitude` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_location_addressline` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roleStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `latitude`, `longitude`, `current_location_addressline`, `roleStatus`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, NULL, NULL, '1', NULL, '$2y$10$INqWX3Bf0KyA/xZtMt25Wu/f21DsA6hdWzH5odKIBCQlDOYB4i2pG', NULL, '2021-06-22 04:03:49', '2021-06-22 04:03:49'),
(2, 'sds', 'wali@gmail.com', '23.74574', '90.38309', 'Anwer Khan Modern Medical College Hospital', '1', NULL, '$2y$10$3iXq40lhrO3UNPaADEYlFukFDrnNrOwizUhz9z4RhKyAAXC2svYba', NULL, '2021-06-22 04:55:51', '2021-06-22 04:55:51'),
(3, 'Tahmina Dipty', 'tahminadipty@gmail.com', 'gg', 'ggg', 'gggg', '1', NULL, '$2y$10$1dQiGrUxvWQ3b7c6ZO0OdOOqTkaXD2Xc2pP8c9I89VYLH1dg/m7Bu', NULL, '2021-06-23 03:44:14', '2021-07-10 22:41:51'),
(7, 'user', 'user@gmail.com', '23.74218', '90.38304', 'Labaid Specialized Hospital,Kolabagan', '1', NULL, '$2y$10$.BlTkLsNoHzrdBCsd4hwPO.xnevnQJnHwtc77lzdH4mCWVuWNJc6i', NULL, '2021-06-23 05:12:11', '2021-06-23 05:12:11'),
(8, 'user2', 'user2@gmail.com', '23.74945', '90.38311', 'Kolabagan,Dhaka', '1', NULL, '$2y$10$I4vJJCnF0ClaApCNcB5Y1ujh0W0rIIcgegh9SQDKt5NNVuybBqpy2', NULL, '2021-06-23 05:13:22', '2021-06-23 05:13:22'),
(9, 'NewUser', 'newuser@gmail.com', '23.84186', '90.36883', 'Mirpur DOHS, Dhaka 1205, Bangladesh', '1', NULL, '$2y$10$ff0XudL9.jtxyFXByWVXcO9ZpEq.LRWPF2oPIAz0rfmS4FsYQPfhS', NULL, '2021-06-23 08:30:32', '2021-06-23 08:30:32'),
(10, 'swas', 'test@gmail.com', '233', 'wdsdew', 'dws', '1', NULL, '$2y$10$r5dEd6gCT81xbm0.pDws9uHBH3Wb0n0quPqf4R26mefQGXpkYSxMO', NULL, '2021-07-10 00:10:32', '2021-07-10 00:10:32'),
(11, 'dd', 'dd@gg.tt', 'dd', 'dd', 'dd', '1', NULL, '$2y$10$jXMagWYrlGVOmy1hTQRbVOUTw2DcLyiG7Z5SQEzFUFpvOGXB9Dc26', NULL, '2021-07-11 04:39:48', '2021-07-11 04:39:48'),
(12, 'dd', 'dd2@gg.tt', 'dd', 'dd', 'dd', '1', NULL, '$2y$10$mh4cL36vv3iJpfx1GhC.W.7eu9xBLpWDZ8iEER.KBSHR6dSGKN/ZS', NULL, '2021-07-11 04:42:04', '2021-07-11 04:42:04'),
(13, 'dd', 'dd3@gg.tt', 'dd', 'dd', 'dd', '1', NULL, '$2y$10$MZv6aHgE7dEBjre1JnHS4.cjaEfde1fu31S30C/rQJAfaV34H2/p2', NULL, '2021-07-11 04:42:56', '2021-07-11 04:42:56'),
(14, 'dd', 'dd4@gg.tt', 'dd', 'dd', 'dd', '1', NULL, '$2y$10$Rl1Bt0K3ivP/ME73sXzaSew3KrWJIOrDUZhPXV9b3F/0dn.I5QYjq', NULL, '2021-07-11 05:00:38', '2021-07-11 05:00:38'),
(16, 'dd', 'dd5@gg.tt', 'dd', 'dd', 'dd', '1', NULL, '$2y$10$s3iVE93mdaBFKipB0NmDhelvk23cLNE394pFk7bCDa3oKbRRCffHe', NULL, '2021-07-11 05:03:19', '2021-07-11 05:03:19'),
(17, 'dd', 'dd6@gg.tt', 'dd', 'dd', 'dd', '1', NULL, '$2y$10$qT4/hzzDWC0iQO4XzcJ0Sezo.CBiz3w3VS2gVeK4ukpykciP69MJS', NULL, '2021-07-11 05:03:57', '2021-07-11 05:03:57'),
(20, 'dd', 'dd7@gg.tt', 'dd', 'dd', 'dd', '1', NULL, '$2y$10$MF/fwtxbvkkEQaVkKdsDTuuAlwgp.aWnnMLlPgiDw1RiIa/MxDKdO', NULL, '2021-07-11 05:05:51', '2021-07-11 05:05:51'),
(21, 'dd', 'dd8@gg.tt', 'dd', 'dd', 'dd', '1', NULL, '$2y$10$E3E4A8hdSvHaYzWEhiqsH.0UOEfoaw.5CEo6emYzbzuGlgW0lT3NW', NULL, '2021-07-11 05:08:20', '2021-07-11 05:08:20'),
(22, 'dd', 'dd9@gg.tt', 'dd', 'dd', 'dd', '1', NULL, '$2y$10$qJK7/s5D2b5R51w8KuXizefMdiU74gBFr2SPJTqN7DiL6uAQ.j9lO', NULL, '2021-07-11 05:09:46', '2021-07-11 05:09:46'),
(23, 'dd2', 'dd10@gg.tt', 'dd2', 'dd2', 'dd2', '1', NULL, '$2y$10$YLj9Krkl0E.lgD7dIT9tyOLdV5rVR.8nwT.6XHkidqNMEtM/7b8j6', NULL, '2021-07-11 05:10:12', '2021-07-11 05:10:12'),
(24, 'fff', 'fff@gg.ttt', 'fff', 'dfff', 'ffff', '1', NULL, '$2y$10$Ypn3NHtegogSdB5HDlnwOeQ79YWFbeAZt.I5hH/DEMvy818bbiWuW', NULL, '2021-07-11 05:23:06', '2021-07-11 05:23:06');

-- --------------------------------------------------------

--
-- Table structure for table `user_locations`
--

CREATE TABLE `user_locations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_address` text DEFAULT NULL,
  `latitude` varchar(300) DEFAULT NULL,
  `longitude` varchar(300) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_locations`
--

INSERT INTO `user_locations` (`id`, `user_id`, `user_address`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, NULL, 'sd', 'dsd', 'sdsd', '2021-07-10 00:26:52', '2021-07-10 00:26:52'),
(2, NULL, 'sd', 'dsd', 'sdsd', '2021-07-10 00:42:52', '2021-07-10 00:42:52'),
(3, 3, 'sasa', 'sasa', 'sasa', '2021-07-10 22:10:02', '2021-07-10 22:10:02');

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_locations`
--
ALTER TABLE `user_locations`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_locations`
--
ALTER TABLE `user_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
