-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 08, 2024 at 10:02 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `organization_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `organization_id`, `name`, `author`, `description`, `created_at`, `updated_at`) VALUES
(1, '2', 'Web Developer', '2', 'details-1', '2024-02-08 09:49:30', NULL),
(2, '2', 'Web Desginer', '2', 'details-2', '2024-02-08 09:49:46', NULL),
(3, '3', 'Sales Man', '3', 'details-1', '2024-02-08 09:53:04', NULL),
(4, '3', 'Marketing', '3', 'details-2', '2024-02-08 09:53:22', '2024-02-08 09:54:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` bigint UNSIGNED NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_id` bigint UNSIGNED NOT NULL,
  `form` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `author`, `category_id`, `form_id`, `form`, `created_at`, `updated_at`) VALUES
(1, '4', '1', 1, '{\"author\": \"4\", \"category_id\": \"1\", \"text-1707385832418-0\": \"User 1\", \"number-1707385858310-0\": \"090909\"}', '2024-02-08 09:56:59', '2024-02-08 09:56:59'),
(2, '4', '4', 4, '{\"author\": \"4\", \"category_id\": \"4\", \"text-1707386159918-0\": \"User-1\", \"number-1707386171678-0\": \"9090\"}', '2024-02-08 09:57:18', '2024-02-08 09:57:18'),
(3, '4', '2', 2, '{\"author\": \"4\", \"category_id\": \"2\", \"text-1707385917869-0\": \"User 1\", \"number-1707385915319-0\": \"8888\"}', '2024-02-08 09:57:31', '2024-02-08 09:57:31'),
(4, '4', '3', 3, '{\"author\": \"4\", \"category_id\": \"3\", \"text-1707386103358-0\": \"user 1\", \"number-1707386114807-0\": \"555\"}', '2024-02-08 09:58:30', '2024-02-08 09:58:30'),
(5, '5', '1', 1, '{\"author\": \"5\", \"category_id\": \"1\", \"text-1707385832418-0\": \"User 2\", \"number-1707385858310-0\": \"222222\"}', '2024-02-08 09:59:58', '2024-02-08 09:59:58'),
(6, '5', '2', 2, '{\"author\": \"5\", \"category_id\": \"2\", \"text-1707385917869-0\": \"User 2\", \"number-1707385915319-0\": \"2222333\"}', '2024-02-08 10:00:09', '2024-02-08 10:00:09'),
(7, '5', '3', 3, '{\"author\": \"5\", \"category_id\": \"3\", \"text-1707386103358-0\": \"user 222\", \"number-1707386114807-0\": \"232332\"}', '2024-02-08 10:00:20', '2024-02-08 10:00:20'),
(8, '5', '4', 4, '{\"author\": \"5\", \"category_id\": \"4\", \"text-1707386159918-0\": \"User-2\", \"number-1707386171678-0\": \"23232323\"}', '2024-02-08 10:00:30', '2024-02-08 10:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `form_builders`
--

CREATE TABLE `form_builders` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` json NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_builders`
--

INSERT INTO `form_builders` (`id`, `category_id`, `category_name`, `content`, `author`, `created_at`, `updated_at`) VALUES
(1, '1', 'Web Developer', '\"[{\\\"type\\\":\\\"header\\\",\\\"subtype\\\":\\\"h2\\\",\\\"label\\\":\\\"Web Developer Form\\\",\\\"access\\\":false},{\\\"type\\\":\\\"text\\\",\\\"required\\\":false,\\\"label\\\":\\\"Your Name\\\",\\\"className\\\":\\\"form-control\\\",\\\"name\\\":\\\"text-1707385832418-0\\\",\\\"access\\\":false,\\\"subtype\\\":\\\"text\\\"},{\\\"type\\\":\\\"number\\\",\\\"required\\\":false,\\\"label\\\":\\\"Number\\\",\\\"className\\\":\\\"form-control\\\",\\\"name\\\":\\\"number-1707385858310-0\\\",\\\"access\\\":false,\\\"subtype\\\":\\\"number\\\"}]\"', '2', '2024-02-08 09:51:13', '2024-02-08 09:51:13'),
(2, '2', 'Web Desginer', '\"[{\\\"type\\\":\\\"header\\\",\\\"subtype\\\":\\\"h2\\\",\\\"label\\\":\\\"Web Designer Form\\\",\\\"access\\\":false},{\\\"type\\\":\\\"text\\\",\\\"required\\\":false,\\\"label\\\":\\\"Name\\\",\\\"className\\\":\\\"form-control\\\",\\\"name\\\":\\\"text-1707385917869-0\\\",\\\"access\\\":false,\\\"subtype\\\":\\\"text\\\"},{\\\"type\\\":\\\"number\\\",\\\"required\\\":false,\\\"label\\\":\\\"Phone Number\\\",\\\"className\\\":\\\"form-control\\\",\\\"name\\\":\\\"number-1707385915319-0\\\",\\\"access\\\":false,\\\"subtype\\\":\\\"number\\\"}]\"', '2', '2024-02-08 09:52:25', '2024-02-08 09:52:25'),
(3, '3', 'Sales Man', '\"[{\\\"type\\\":\\\"header\\\",\\\"subtype\\\":\\\"h2\\\",\\\"label\\\":\\\"Squre Sales Man Form\\\",\\\"access\\\":false},{\\\"type\\\":\\\"text\\\",\\\"required\\\":false,\\\"label\\\":\\\"Name\\\",\\\"className\\\":\\\"form-control\\\",\\\"name\\\":\\\"text-1707386103358-0\\\",\\\"access\\\":false,\\\"subtype\\\":\\\"text\\\"},{\\\"type\\\":\\\"number\\\",\\\"required\\\":false,\\\"label\\\":\\\"Number\\\",\\\"className\\\":\\\"form-control\\\",\\\"name\\\":\\\"number-1707386114807-0\\\",\\\"access\\\":false,\\\"subtype\\\":\\\"number\\\"}]\"', '3', '2024-02-08 09:55:18', '2024-02-08 09:55:18'),
(4, '4', 'Marketing', '\"[{\\\"type\\\":\\\"header\\\",\\\"subtype\\\":\\\"h2\\\",\\\"label\\\":\\\"Squre Marketing Form\\\",\\\"access\\\":false},{\\\"type\\\":\\\"text\\\",\\\"required\\\":false,\\\"label\\\":\\\"Name\\\",\\\"className\\\":\\\"form-control\\\",\\\"name\\\":\\\"text-1707386159918-0\\\",\\\"access\\\":false,\\\"subtype\\\":\\\"text\\\"},{\\\"type\\\":\\\"number\\\",\\\"required\\\":false,\\\"label\\\":\\\"Number\\\",\\\"className\\\":\\\"form-control\\\",\\\"name\\\":\\\"number-1707386171678-0\\\",\\\"access\\\":false,\\\"subtype\\\":\\\"number\\\"}]\"', '3', '2024-02-08 09:56:13', '2024-02-08 09:56:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(31, '2014_10_12_000000_create_users_table', 1),
(32, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(33, '2014_10_12_100000_create_password_resets_table', 1),
(34, '2019_08_19_000000_create_failed_jobs_table', 1),
(35, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(36, '2023_10_29_223039_create_form_builders_table', 1),
(37, '2023_10_29_223047_create_form_builder_transactions_table', 1),
(38, '2024_02_04_053006_create_organizations_table', 1),
(39, '2024_02_04_053033_create_categories_table', 1),
(40, '2024_02_05_164928_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'organizations', 'web', NULL, NULL),
(2, 'categories', 'web', NULL, NULL),
(3, 'admin', 'web', NULL, NULL),
(4, 'user', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'User', 'web', NULL, NULL),
(2, 'Admin', 'web', NULL, NULL),
(3, 'Super Admin', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(1, 2),
(2, 2),
(3, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `types` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_id`, `types`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'superadmin@gmail.com', NULL, '$2y$10$rfII2TvfI85EU.14et9/seCueyUcg7kvJbhW8lNX6Qric4CBlTFLa', '3', 'Non Organizations', NULL, '2024-02-08 09:42:56', '2024-02-08 09:42:56'),
(2, 'BDTask', 'bdtask@gmail.com', NULL, '$2y$10$ckbYNwe/NBFJJZabH1LnZu88E1iUw22CYGJ4UofYzFk8B316g9f06', '2', 'Organizations', NULL, '2024-02-08 09:44:35', NULL),
(3, 'Squre', 'squre@gmail.com', NULL, '$2y$10$puBqanxxBVfNr/.BR1yv8OUUS9TWkhFwMioOhwHiCfjbuEiCy5bVy', '2', 'Organizations', NULL, '2024-02-08 09:45:05', NULL),
(4, 'User 1', 'user@gmail.com', NULL, '$2y$10$xUG6dDw2jYtjE4Sc4RIzuu3lJzi5Pd76NdwU4bcBFl94bYUqm2t0i', '1', 'Non Organizations', NULL, '2024-02-08 09:45:58', NULL),
(5, 'User 2', 'user1@gmail.com', NULL, '$2y$10$DQrjZa7EZjMJi6lnrns6ceKAYYsTVo7WbUYQ8NTaNzwWw423B3FGG', '1', 'Non Organizations', NULL, '2024-02-08 09:59:31', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forms_form_id_foreign` (`form_id`);

--
-- Indexes for table `form_builders`
--
ALTER TABLE `form_builders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `organizations_name_unique` (`name`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `form_builders`
--
ALTER TABLE `form_builders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `forms`
--
ALTER TABLE `forms`
  ADD CONSTRAINT `forms_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `form_builders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
