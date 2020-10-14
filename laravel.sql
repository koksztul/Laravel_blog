-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2020 at 08:17 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `txt` varchar(500) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `txt`, `post_id`, `user_id`) VALUES
(26, 'Curabitur ac ex non massa convallis placerat. Aliquam erat volutpat.', 12, 3),
(28, 'commodo molestie molestie consectetur, viverra quis risus.', 12, 7),
(33, 'Morbi ac eros ex. Proin pulvinar vestibulum vulputate.', 12, 1),
(34, 'Cras suscipit erat nulla, sed condimentum nisi molestie eu.', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(5, '2020_07_01_085002_add_gender_field_to_users_table', 2);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(10000) NOT NULL,
  `text` varchar(10000) NOT NULL,
  `user` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `user`, `user_id`) VALUES
(12, 'pierwszy post', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pretium diam nec faucibus laoreet. Curabitur blandit elit ut venenatis tincidunt. Sed convallis pellentesque viverra. In vulputate lacinia urna non vehicula. Nulla ullamcorper molestie interdum. Cras orci massa, vehicula vel euismod ut, facilisis vitae odio. Etiam eu nisl arcu. Morbi ac eros ex. Proin pulvinar vestibulum vulputate. Suspendisse sit amet nunc metus. Ut ligula nulla, faucibus sed lectus id, vulputate viverra felis.', 'admin321', 7),
(13, 'drugi post', 'Nulla ullamcorper bibendum nisi. Nulla et dolor vitae purus accumsan porttitor non sit amet elit. Aenean enim urna, mattis sed metus et, convallis hendrerit tortor. Sed sed dignissim massa. Aliquam eget auctor massa. Donec ac malesuada tellus, et malesuada elit. Nam nisl enim, laoreet sed auctor at, faucibus sit amet mi. Nullam a ante ut nibh lobortis lacinia vel eu velit. Mauris eu libero pulvinar, tincidunt nulla quis, dignissim mi. Pellentesque enim leo, commodo molestie molestie consectetur, viverra quis risus.', 'admin321', 7),
(14, 'trzeci post', 'Duis egestas rutrum iaculis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas volutpat quam id lectus pretium, quis porttitor erat sagittis. In sit amet risus dapibus, efficitur lacus vitae, sodales augue. Cras malesuada lacus in purus dignissim venenatis. Nunc pellentesque mi ac felis interdum, sit amet tincidunt mauris laoreet. Nam pretium dapibus neque a dapibus. Maecenas vestibulum faucibus rutrum. Aliquam non lectus viverra, cursus enim eu, eleifend tellus. Integer euismod eros eu suscipit rhoncus. Ut facilisis rutrum augue, vitae porta lacus consequat id.', 'moderator123', 3),
(15, 'czwarty post', 'Pellentesque vitae erat rutrum, molestie libero ac, dictum risus. Nam elit risus, ultricies a leo vel, tincidunt sollicitudin orci. Nunc interdum sapien enim, in maximus quam placerat nec. Curabitur volutpat maximus libero eu tincidunt. Vivamus justo ipsum, suscipit vel fringilla nec, pellentesque vitae justo. Nunc vel eleifend urna. Pellentesque malesuada neque sit amet enim pulvinar vulputate. Fusce eleifend aliquet ipsum, sit amet tincidunt leo suscipit id. Morbi vitae ultricies ipsum, eget dignissim mauris. Pellentesque luctus nisi augue, commodo venenatis sapien lacinia a. Integer dolor eros, posuere sed fermentum id, fermentum et libero.', 'moderator123', 3);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `id_group`) VALUES
(1, 'janusz123', 'janusz123@o2.pl', NULL, '$2y$10$RvVbBsSwXtPtYob1Z4r9Yuk1kUJ7rM2wEQmoMSent.DOMhuVYXuq6', NULL, '2020-06-19 09:21:18', '2020-06-19 09:21:18', ''),
(2, 'admin123', 'admin@o2.pl', NULL, '$2y$10$GjaLo/EHpmCCHLmSzD5KOevxIuVBwngSNbYBYohR/Rn.Ex0c13Jke', NULL, '2020-07-01 06:24:11', '2020-07-01 06:24:11', 'admin'),
(3, 'moderator123', 'moderator123@o2.pl', NULL, '$2y$10$PHllJ9cP2/jB3iU2YDbjkedtNH0W9buaRHMNfpYc2P9zJDm2jarXq', NULL, '2020-07-01 06:24:42', '2020-07-01 06:24:42', 'moderator'),
(4, 'janusz321', 'janusz321@o2.pl', NULL, '$2y$10$PaBV8GhbzM9Dc8BmSyrIqeveNscCEjevZ9pHiInung9zlFJCVTHt2', NULL, '2020-07-01 06:42:27', '2020-07-01 06:42:27', '0'),
(5, 'michal321', 'michal321@o2.pl', NULL, '$2y$10$EJ9MrNs1SN7J3zwVTY6tDeTzDiQOnB4VxZxaIyQn2rrcRZ51x2yCu', NULL, '2020-07-01 06:42:58', '2020-07-01 06:42:58', 'moderator'),
(6, 'kuba123', 'kuba123@o2.pl', NULL, '$2y$10$EPFCWLoqco.vhvZ3ZFqJtuvqaK7t6t2LELPteE/J0CX2FrlTB3JV6', NULL, '2020-07-01 06:57:36', '2020-07-01 06:57:36', '0'),
(7, 'admin321', 'admin321@o2.pl', NULL, '$2y$10$tIpmN6APGXaKpm94iVJ18uQddB5sYcc7OiW4/VNpeLEFJ.tCB8zJS', NULL, '2020-07-01 07:03:27', '2020-07-01 07:03:27', 'admin'),
(8, 'mariusz321', 'mariusz321@o2.pl', NULL, '$2y$10$Zz/E6sxtlQhNx1NtaDe2/ehC1CFLTx/1HnvJS66GUtGbTLGGw/sb2', NULL, '2020-07-02 07:08:20', '2020-07-02 07:08:20', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users_group`
--

CREATE TABLE `users_group` (
  `id` int(11) NOT NULL,
  `user` varchar(500) NOT NULL,
  `id_group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_group`
--

INSERT INTO `users_group` (`id`, `user`, `id_group`) VALUES
(1, 'admin123', 2),
(2, 'moderator123', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_group`
--
ALTER TABLE `users_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users_group`
--
ALTER TABLE `users_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
