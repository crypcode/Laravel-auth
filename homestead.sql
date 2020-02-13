-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2020 m. Vas 13 d. 13:11
-- Server version: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pavadinimas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nuotrauka` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aprasymas` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `ads`
--

INSERT INTO `ads` (`id`, `pavadinimas`, `nuotrauka`, `aprasymas`, `price`, `email`, `phone`, `location`, `catid`, `created_at`, `updated_at`) VALUES
(4, 'Asus rog', NULL, 'Labai geras kompiuteris', '789.99', 'max@max.com', '8675421', 'Kaunas', '4', '2020-02-07 12:22:23', '2020-02-10 09:13:18'),
(5, 'Acer', NULL, 'Labai geras kompiuteris', '789.99', 'max@max.com', '8675421', 'Kaunas', '4', '2020-02-07 12:35:01', '2020-02-10 09:13:30'),
(6, 'Msi', NULL, 'Beveik naujas', '1300.00', 'max@max.com', '8675421', 'Kaunas', '4', '2020-02-07 12:36:09', '2020-02-10 09:13:57'),
(7, 'HP strong', NULL, 'Labai geras kompiuteris', '789.99', 'max@max.com', '8675421', 'Kaunas', '4', '2020-02-07 12:37:32', '2020-02-10 09:14:23'),
(8, 'Dell vostro', NULL, 'Labai geras kompiuteris', '789.99', 'max@max.com', '8675421', 'Kaunas', '4', '2020-02-07 12:38:15', '2020-02-10 09:14:44'),
(9, 'Dell latitude', NULL, 'Labai geras kompiuteris', '789.99', 'max@max.com', '8675421', 'Kaunas', '4', '2020-02-07 12:38:24', '2020-02-10 09:14:57'),
(11, 'Dell xps', NULL, 'Labai geras kompiuteris', '789.99', 'max@max.com', '8675421', 'Kaunas', '4', '2020-02-10 06:21:28', '2020-02-10 06:21:28'),
(13, 'Muzikinis centras panasonic', NULL, 'beveik naujas', '300.00', 'sadasdsa@fdsaiodfhsdo.com', '8941654984', 'Vilnius', '1', '2020-02-10 06:23:58', '2020-02-10 06:23:58'),
(14, 'Sharp saldytuvas', NULL, 'A++ klase', '700.00', 'sadasdsa@fdsaiodfhsdo.com', '8941654984', 'Garliava', '1', '2020-02-10 08:14:49', '2020-02-10 08:14:49'),
(15, 'Saldytuvas', 'images/pElSfyBLgzuxWO4C9kgVFtsQDqUoaBGzHj210dsI.jpeg', 'Labai geras saldytuvas', '500.00', 'max@max.com', '8675421', 'Kaunas', '1', '2020-02-13 06:58:33', '2020-02-13 09:05:05');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pavadinimas` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `categories`
--

INSERT INTO `categories` (`id`, `pavadinimas`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Elektronika', NULL, '2020-02-07 08:04:14', '2020-02-07 08:04:14'),
(2, 'it', NULL, '2020-02-07 08:05:19', '2020-02-07 08:05:19'),
(4, 'Kompiuteriai', NULL, '2020-02-07 08:42:28', '2020-02-07 08:42:28'),
(5, 'Telefonai', NULL, '2020-02-07 08:50:05', '2020-02-07 08:50:05');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_06_122902_create_categories_table', 1),
(5, '2020_02_06_123725_create_ads_table', 1),
(6, '2020_02_06_130758_create_ads_table', 2),
(7, '2020_02_07_064743_create_skelbimais_table', 3),
(8, '2020_02_07_113043_create_ads_table', 4),
(9, '2020_02_07_121440_create_ads_table', 5);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `users`
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
-- Sukurta duomenų kopija lentelei `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'saidas', 'max@max.com', NULL, '$2y$10$agEKhmEqWMZdHphT/EZwQ.tgcfh9MRQvGs3kWQRdGI/X8ofliVwgu', NULL, '2020-02-13 11:50:07', '2020-02-13 11:50:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
