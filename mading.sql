-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2023 at 02:04 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mading`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'icon-chart-bar', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'icon-server', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'icon-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'icon-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'icon-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'icon-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'icon-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 7, 'Helpers', 'icon-cogs', '', NULL, '2023-11-02 05:23:49', '2023-11-02 05:23:49'),
(9, 8, 8, 'Scaffold', 'icon-keyboard', 'helpers/scaffold', NULL, '2023-11-02 05:23:49', '2023-11-02 05:23:49'),
(10, 8, 9, 'Database terminal', 'icon-database', 'helpers/terminal/database', NULL, '2023-11-02 05:23:49', '2023-11-02 05:23:49'),
(11, 8, 10, 'Laravel artisan', 'icon-terminal', 'helpers/terminal/artisan', NULL, '2023-11-02 05:23:49', '2023-11-02 05:23:49'),
(12, 8, 11, 'Routes', 'icon-list-alt', 'helpers/routes', NULL, '2023-11-02 05:23:49', '2023-11-02 05:23:49');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-11-02 05:21:57', '2023-11-02 05:21:57'),
(2, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-11-02 05:22:12', '2023-11-02 05:22:12'),
(3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-11-02 05:22:17', '2023-11-02 05:22:17'),
(4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-11-02 05:23:57', '2023-11-02 05:23:57'),
(5, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-11-02 05:24:02', '2023-11-02 05:24:02'),
(6, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-11-02 05:25:32', '2023-11-02 05:25:32'),
(7, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-11-02 05:28:23', '2023-11-02 05:28:23'),
(8, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2023-11-02 05:30:00', '2023-11-02 05:30:00'),
(9, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-11-02 05:30:02', '2023-11-02 05:30:02'),
(10, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2023-11-02 05:30:04', '2023-11-02 05:30:04'),
(11, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-11-02 05:30:12', '2023-11-02 05:30:12'),
(12, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"dashboard\",\"model_name\":\"App\\\\Models\\\\Dashboard\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\DashboardController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"header_name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"k86sXUKw2I44qkA3jK2LdavgVCoSAE168u8cKLEw\"}', '2023-11-02 05:33:18', '2023-11-02 05:33:18'),
(13, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-11-02 05:33:21', '2023-11-02 05:33:21'),
(14, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2023-11-02 05:33:55', '2023-11-02 05:33:55'),
(15, 1, 'admin/dashboards', 'GET', '127.0.0.1', '[]', '2023-11-02 05:33:57', '2023-11-02 05:33:57'),
(16, 1, 'admin/dashboards/create', 'GET', '127.0.0.1', '[]', '2023-11-02 05:34:01', '2023-11-02 05:34:01'),
(17, 1, 'admin/dashboards', 'POST', '127.0.0.1', '{\"header_name\":\"Mading\",\"_token\":\"k86sXUKw2I44qkA3jK2LdavgVCoSAE168u8cKLEw\"}', '2023-11-02 05:34:21', '2023-11-02 05:34:21'),
(18, 1, 'admin/dashboards', 'GET', '127.0.0.1', '[]', '2023-11-02 05:34:21', '2023-11-02 05:34:21'),
(19, 1, 'admin/dashboards/1', 'GET', '127.0.0.1', '[]', '2023-11-02 05:34:35', '2023-11-02 05:34:35'),
(20, 1, 'admin/dashboards', 'GET', '127.0.0.1', '[]', '2023-11-02 05:34:39', '2023-11-02 05:34:39'),
(21, 1, 'admin/dashboards/1/edit', 'GET', '127.0.0.1', '[]', '2023-11-02 05:34:42', '2023-11-02 05:34:42'),
(22, 1, 'admin/dashboards', 'GET', '127.0.0.1', '[]', '2023-11-02 05:34:43', '2023-11-02 05:34:43'),
(23, 1, 'admin/dashboards/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"k86sXUKw2I44qkA3jK2LdavgVCoSAE168u8cKLEw\"}', '2023-11-02 05:35:43', '2023-11-02 05:35:43'),
(24, 1, 'admin/dashboards', 'GET', '127.0.0.1', '[]', '2023-11-02 05:35:44', '2023-11-02 05:35:44'),
(25, 1, 'admin/dashboards', 'GET', '127.0.0.1', '[]', '2023-11-02 05:35:47', '2023-11-02 05:35:47'),
(26, 1, 'admin/dashboards', 'GET', '127.0.0.1', '[]', '2023-11-02 05:35:50', '2023-11-02 05:35:50'),
(27, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-11-02 05:35:52', '2023-11-02 05:35:52'),
(28, 1, 'admin/dashboards', 'GET', '127.0.0.1', '[]', '2023-11-02 05:36:02', '2023-11-02 05:36:02'),
(29, 1, 'admin/dashboards/create', 'GET', '127.0.0.1', '[]', '2023-11-02 05:36:51', '2023-11-02 05:36:51'),
(30, 1, 'admin/dashboards', 'POST', '127.0.0.1', '{\"header_name\":\"test\",\"_token\":\"k86sXUKw2I44qkA3jK2LdavgVCoSAE168u8cKLEw\"}', '2023-11-02 05:36:55', '2023-11-02 05:36:55'),
(31, 1, 'admin/dashboards', 'GET', '127.0.0.1', '[]', '2023-11-02 05:36:56', '2023-11-02 05:36:56'),
(32, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-11-02 05:40:16', '2023-11-02 05:40:16'),
(33, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-11-02 05:42:38', '2023-11-02 05:42:38'),
(34, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-11-02 05:42:46', '2023-11-02 05:42:46'),
(35, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-11-02 05:45:00', '2023-11-02 05:45:00'),
(36, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-11-02 05:45:13', '2023-11-02 05:45:13'),
(37, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-11-02 05:45:47', '2023-11-02 05:45:47'),
(38, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-11-02 05:45:56', '2023-11-02 05:45:56'),
(39, 1, 'admin/auth/menu/13', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"k86sXUKw2I44qkA3jK2LdavgVCoSAE168u8cKLEw\"}', '2023-11-02 05:46:01', '2023-11-02 05:46:01'),
(40, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-11-02 05:46:02', '2023-11-02 05:46:02'),
(41, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-11-02 05:46:06', '2023-11-02 05:46:06'),
(42, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2023-11-02 05:46:20', '2023-11-02 05:46:20'),
(43, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2023-11-02 05:46:22', '2023-11-02 05:46:22'),
(44, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-11-02 05:46:24', '2023-11-02 05:46:24'),
(45, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-11-02 05:46:31', '2023-11-02 05:46:31');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `http_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2023-11-02 05:23:49', '2023-11-02 05:23:49');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2023-11-02 05:20:59', '2023-11-02 05:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$12$zpGU1qJAkDQNBhzcwaB7IOIUA32Wa2oBTiFm16LAu0yAWUw5M0uvO', 'Administrator', NULL, NULL, '2023-11-02 05:20:59', '2023-11-02 05:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_01_04_173148_create_admin_tables', 2),
(6, '2023_11_02_123319_create_dashboard_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
