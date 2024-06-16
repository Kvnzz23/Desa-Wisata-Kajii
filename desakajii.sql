-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jun 2024 pada 09.24
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `desakajii`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_menu`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'icon-chart-bar', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'icon-server', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'icon-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'icon-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'icon-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'icon-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'icon-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 7, 'Helpers', 'icon-cogs', '', NULL, '2024-03-18 07:05:02', '2024-03-18 07:05:02'),
(9, 8, 8, 'Scaffold', 'icon-keyboard', 'helpers/scaffold', NULL, '2024-03-18 07:05:02', '2024-03-18 07:05:02'),
(10, 8, 9, 'Database terminal', 'icon-database', 'helpers/terminal/database', NULL, '2024-03-18 07:05:02', '2024-03-18 07:05:02'),
(11, 8, 10, 'Laravel artisan', 'icon-terminal', 'helpers/terminal/artisan', NULL, '2024-03-18 07:05:02', '2024-03-18 07:05:02'),
(12, 8, 11, 'Routes', 'icon-list-alt', 'helpers/routes', NULL, '2024-03-18 07:05:02', '2024-03-18 07:05:02'),
(13, 0, 11, 'Atraksis', 'icon-file', 'atraksis', NULL, '2024-03-18 07:09:27', '2024-03-18 07:09:27'),
(17, 0, 11, 'Ikans', 'icon-file', 'ikans', NULL, '2024-04-10 05:54:22', '2024-04-10 05:54:22'),
(20, 0, 11, 'Homestays', 'icon-file', 'homestays', NULL, '2024-04-19 05:34:08', '2024-04-19 05:34:08'),
(21, 0, 11, 'Pakets', 'icon-file', 'pakets', NULL, '2024-04-19 05:56:14', '2024-04-19 05:56:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_operation_log`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-18 07:02:17', '2024-03-18 07:02:17'),
(2, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-18 07:06:48', '2024-03-18 07:06:48'),
(3, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-18 07:07:00', '2024-03-18 07:07:00'),
(4, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-18 07:08:44', '2024-03-18 07:08:44'),
(5, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"atraksi\",\"model_name\":\"App\\\\Models\\\\Atraksi\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\AtraksiController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"cXevTaXdMs9iIb4NjIvshSgex1hAsNs6wnrlS3oC\"}', '2024-03-18 07:09:26', '2024-03-18 07:09:26'),
(6, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-18 07:09:30', '2024-03-18 07:09:30'),
(7, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-18 07:11:35', '2024-03-18 07:11:35'),
(8, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-18 07:11:37', '2024-03-18 07:11:37'),
(9, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-18 07:16:20', '2024-03-18 07:16:20'),
(10, 1, 'admin/atraksis/create', 'GET', '127.0.0.1', '[]', '2024-03-18 07:16:47', '2024-03-18 07:16:47'),
(11, 1, 'admin/atraksis', 'POST', '127.0.0.1', '{\"name\":\"Live Musik\",\"_token\":\"cXevTaXdMs9iIb4NjIvshSgex1hAsNs6wnrlS3oC\"}', '2024-03-18 07:25:10', '2024-03-18 07:25:10'),
(12, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-18 07:25:11', '2024-03-18 07:25:11'),
(13, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-18 07:25:19', '2024-03-18 07:25:19'),
(14, 1, 'admin/atraksis/2', 'GET', '127.0.0.1', '[]', '2024-03-18 07:25:37', '2024-03-18 07:25:37'),
(15, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-18 07:25:42', '2024-03-18 07:25:42'),
(16, 1, 'admin/atraksis/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-18 07:25:44', '2024-03-18 07:25:44'),
(17, 1, 'admin/atraksis/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-18 07:26:09', '2024-03-18 07:26:09'),
(18, 1, 'admin/atraksis/2', 'PUT', '127.0.0.1', '{\"name\":\"Live Musik\",\"_token\":\"cXevTaXdMs9iIb4NjIvshSgex1hAsNs6wnrlS3oC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/atraksis\"}', '2024-03-18 07:26:11', '2024-03-18 07:26:11'),
(19, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-18 07:26:11', '2024-03-18 07:26:11'),
(20, 1, 'admin/atraksis/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-18 07:26:50', '2024-03-18 07:26:50'),
(21, 1, 'admin/atraksis/1', 'PUT', '127.0.0.1', '{\"name\":\"Membatik\",\"_token\":\"cXevTaXdMs9iIb4NjIvshSgex1hAsNs6wnrlS3oC\",\"_method\":\"PUT\"}', '2024-03-18 07:30:55', '2024-03-18 07:30:55'),
(22, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-18 07:30:56', '2024-03-18 07:30:56'),
(23, 1, 'admin/atraksis/1', 'GET', '127.0.0.1', '[]', '2024-03-18 07:31:07', '2024-03-18 07:31:07'),
(24, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-18 07:31:18', '2024-03-18 07:31:18'),
(25, 1, 'admin/atraksis/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"cXevTaXdMs9iIb4NjIvshSgex1hAsNs6wnrlS3oC\"}', '2024-03-18 07:31:25', '2024-03-18 07:31:25'),
(26, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-18 07:31:26', '2024-03-18 07:31:26'),
(27, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-19 05:58:30', '2024-03-19 05:58:30'),
(28, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-19 05:58:38', '2024-03-19 05:58:38'),
(29, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-19 06:00:36', '2024-03-19 06:00:36'),
(30, 1, 'admin/atraksis/create', 'GET', '127.0.0.1', '[]', '2024-03-19 06:00:38', '2024-03-19 06:00:38'),
(31, 1, 'admin/atraksis', 'POST', '127.0.0.1', '{\"name\":\"blabla\",\"_token\":\"VP3pKbfsmzI8DiTkhEYbKh7C8x5vQ64WU2z8UhrA\"}', '2024-03-19 06:00:57', '2024-03-19 06:00:57'),
(32, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-19 06:00:57', '2024-03-19 06:00:57'),
(33, 1, 'admin/atraksis/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"VP3pKbfsmzI8DiTkhEYbKh7C8x5vQ64WU2z8UhrA\"}', '2024-03-19 06:01:28', '2024-03-19 06:01:28'),
(34, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-19 06:01:28', '2024-03-19 06:01:28'),
(35, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-22 23:22:53', '2024-03-22 23:22:53'),
(36, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-22 23:22:57', '2024-03-22 23:22:57'),
(37, 1, 'admin/atraksis/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Ctxgay4iPBcPOrwgFCtibr0iq65Mzdi3b4cEd0Df\"}', '2024-03-22 23:23:02', '2024-03-22 23:23:02'),
(38, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-22 23:23:03', '2024-03-22 23:23:03'),
(39, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-22 23:23:15', '2024-03-22 23:23:15'),
(40, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-22 23:35:02', '2024-03-22 23:35:02'),
(41, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-22 23:35:14', '2024-03-22 23:35:14'),
(42, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-22 23:35:20', '2024-03-22 23:35:20'),
(43, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-03-22 23:35:23', '2024-03-22 23:35:23'),
(44, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"desakajii\",\"name\":\"desakajii\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"desakajii\",\"roles\":[\"1\",null],\"search_terms\":null,\"permissions\":[\"1\",null],\"_token\":\"1sPWYD9XwgYPZF8z3yQmSixEQjtZxLIWxhDfzAWx\"}', '2024-03-22 23:36:10', '2024-03-22 23:36:10'),
(45, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-22 23:36:11', '2024-03-22 23:36:11'),
(46, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-22 23:36:20', '2024-03-22 23:36:20'),
(47, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-22 23:36:29', '2024-03-22 23:36:29'),
(48, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-22 23:36:34', '2024-03-22 23:36:34'),
(49, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-22 23:36:36', '2024-03-22 23:36:36'),
(50, 2, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-22 23:36:42', '2024-03-22 23:36:42'),
(51, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-22 23:37:09', '2024-03-22 23:37:09'),
(52, 2, 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2024-03-22 23:37:12', '2024-03-22 23:37:12'),
(53, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-22 23:37:16', '2024-03-22 23:37:16'),
(54, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-22 23:37:22', '2024-03-22 23:37:22'),
(55, 2, 'admin/atraksis/create', 'GET', '127.0.0.1', '[]', '2024-03-22 23:39:33', '2024-03-22 23:39:33'),
(56, 2, 'admin/atraksis', 'POST', '127.0.0.1', '{\"name\":\"Mentoring Ikan Hias\",\"_token\":\"MwUCchmfOsj2386JiHev9FDzAYQO4KzptdKUCLUa\"}', '2024-03-22 23:40:26', '2024-03-22 23:40:26'),
(57, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-22 23:40:26', '2024-03-22 23:40:26'),
(58, 2, 'admin/atraksis/create', 'GET', '127.0.0.1', '[]', '2024-03-22 23:40:32', '2024-03-22 23:40:32'),
(59, 2, 'admin/atraksis', 'POST', '127.0.0.1', '{\"name\":\"Membuat Wayang Ikan\",\"_token\":\"MwUCchmfOsj2386JiHev9FDzAYQO4KzptdKUCLUa\"}', '2024-03-22 23:41:24', '2024-03-22 23:41:24'),
(60, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-22 23:41:24', '2024-03-22 23:41:24'),
(61, 2, 'admin/atraksis/create', 'GET', '127.0.0.1', '[]', '2024-03-22 23:41:28', '2024-03-22 23:41:28'),
(62, 2, 'admin/atraksis', 'POST', '127.0.0.1', '{\"name\":\"Kontes Ikan Hias\",\"_token\":\"MwUCchmfOsj2386JiHev9FDzAYQO4KzptdKUCLUa\"}', '2024-03-22 23:41:59', '2024-03-22 23:41:59'),
(63, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-22 23:42:00', '2024-03-22 23:42:00'),
(64, 2, 'admin/atraksis/create', 'GET', '127.0.0.1', '[]', '2024-03-22 23:42:02', '2024-03-22 23:42:02'),
(65, 2, 'admin/atraksis', 'POST', '127.0.0.1', '{\"name\":\"Outbound\",\"_token\":\"MwUCchmfOsj2386JiHev9FDzAYQO4KzptdKUCLUa\"}', '2024-03-22 23:42:27', '2024-03-22 23:42:27'),
(66, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-22 23:42:27', '2024-03-22 23:42:27'),
(67, 2, 'admin/atraksis/create', 'GET', '127.0.0.1', '[]', '2024-03-22 23:42:38', '2024-03-22 23:42:38'),
(68, 2, 'admin/atraksis', 'POST', '127.0.0.1', '{\"name\":\"Membatik\",\"_token\":\"MwUCchmfOsj2386JiHev9FDzAYQO4KzptdKUCLUa\"}', '2024-03-22 23:43:10', '2024-03-22 23:43:10'),
(69, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-22 23:43:11', '2024-03-22 23:43:11'),
(70, 2, 'admin/atraksis/create', 'GET', '127.0.0.1', '[]', '2024-03-22 23:43:15', '2024-03-22 23:43:15'),
(71, 2, 'admin/atraksis', 'POST', '127.0.0.1', '{\"name\":\"Topeng\",\"_token\":\"MwUCchmfOsj2386JiHev9FDzAYQO4KzptdKUCLUa\"}', '2024-03-22 23:43:56', '2024-03-22 23:43:56'),
(72, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-22 23:43:57', '2024-03-22 23:43:57'),
(73, 2, 'admin/atraksis/create', 'GET', '127.0.0.1', '[]', '2024-03-22 23:44:09', '2024-03-22 23:44:09'),
(74, 2, 'admin/atraksis', 'POST', '127.0.0.1', '{\"name\":\"Reog Ria Kelana\",\"_token\":\"MwUCchmfOsj2386JiHev9FDzAYQO4KzptdKUCLUa\"}', '2024-03-22 23:44:27', '2024-03-22 23:44:27'),
(75, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-22 23:44:27', '2024-03-22 23:44:27'),
(76, 2, 'admin/atraksis/create', 'GET', '127.0.0.1', '[]', '2024-03-22 23:44:30', '2024-03-22 23:44:30'),
(77, 2, 'admin/atraksis', 'POST', '127.0.0.1', '{\"name\":\"Gerobak Sapi\",\"_token\":\"MwUCchmfOsj2386JiHev9FDzAYQO4KzptdKUCLUa\"}', '2024-03-22 23:44:56', '2024-03-22 23:44:56'),
(78, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-22 23:44:57', '2024-03-22 23:44:57'),
(79, 2, 'admin/atraksis/create', 'GET', '127.0.0.1', '[]', '2024-03-22 23:45:13', '2024-03-22 23:45:13'),
(80, 2, 'admin/atraksis', 'POST', '127.0.0.1', '{\"name\":\"Live Musik\",\"_token\":\"MwUCchmfOsj2386JiHev9FDzAYQO4KzptdKUCLUa\"}', '2024-03-22 23:45:30', '2024-03-22 23:45:30'),
(81, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-22 23:45:31', '2024-03-22 23:45:31'),
(82, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-22 23:46:34', '2024-03-22 23:46:34'),
(83, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-24 00:00:08', '2024-03-24 00:00:08'),
(84, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-24 00:00:11', '2024-03-24 00:00:11'),
(85, 2, 'admin/atraksis/4/edit', 'GET', '127.0.0.1', '[]', '2024-03-24 00:00:16', '2024-03-24 00:00:16'),
(86, 2, 'admin/atraksis/4', 'PUT', '127.0.0.1', '{\"name\":\"Mentoring Ikan Hias\",\"image_file_del_\":\"images\\/DSC00569.JPG,\",\"_token\":\"KTq1LtTfuFGqbPNHVJG3s4SS3GkUWDyYNLRY5eVz\",\"_method\":\"PUT\"}', '2024-03-24 00:00:50', '2024-03-24 00:00:50'),
(87, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-24 00:00:50', '2024-03-24 00:00:50'),
(88, 2, 'admin/atraksis/4/edit', 'GET', '127.0.0.1', '[]', '2024-03-24 00:00:59', '2024-03-24 00:00:59'),
(89, 2, 'admin/atraksis/4', 'PUT', '127.0.0.1', '{\"name\":\"Mentoring Ikan Hias\",\"_token\":\"KTq1LtTfuFGqbPNHVJG3s4SS3GkUWDyYNLRY5eVz\",\"_method\":\"PUT\"}', '2024-03-24 00:01:06', '2024-03-24 00:01:06'),
(90, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-24 00:01:07', '2024-03-24 00:01:07'),
(91, 2, 'admin/atraksis/4/edit', 'GET', '127.0.0.1', '[]', '2024-03-24 00:01:31', '2024-03-24 00:01:31'),
(92, 2, 'admin/atraksis/4', 'PUT', '127.0.0.1', '{\"name\":\"Mentoring Ikan Hias\",\"image_file_del_\":\"images\\/DSC00569.JPG,\",\"_token\":\"KTq1LtTfuFGqbPNHVJG3s4SS3GkUWDyYNLRY5eVz\",\"_method\":\"PUT\"}', '2024-03-24 00:01:44', '2024-03-24 00:01:44'),
(93, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-24 00:01:45', '2024-03-24 00:01:45'),
(94, 2, 'admin/atraksis/4', 'GET', '127.0.0.1', '[]', '2024-03-24 00:01:57', '2024-03-24 00:01:57'),
(95, 2, 'admin/atraksis/4/edit', 'GET', '127.0.0.1', '[]', '2024-03-24 00:02:01', '2024-03-24 00:02:01'),
(96, 2, 'admin/atraksis/4', 'PUT', '127.0.0.1', '{\"name\":\"Mentoring Ikan Hias\",\"_token\":\"KTq1LtTfuFGqbPNHVJG3s4SS3GkUWDyYNLRY5eVz\",\"_method\":\"PUT\"}', '2024-03-24 00:02:09', '2024-03-24 00:02:09'),
(97, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-24 00:02:09', '2024-03-24 00:02:09'),
(98, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-24 00:02:20', '2024-03-24 00:02:20'),
(99, 2, 'admin/atraksis/5/edit', 'GET', '127.0.0.1', '[]', '2024-03-24 00:02:27', '2024-03-24 00:02:27'),
(100, 2, 'admin/atraksis/5', 'PUT', '127.0.0.1', '{\"name\":\"Membuat Wayang Ikan\",\"image_file_del_\":\"images\\/DSC00701.JPG,\",\"_token\":\"KTq1LtTfuFGqbPNHVJG3s4SS3GkUWDyYNLRY5eVz\",\"_method\":\"PUT\"}', '2024-03-24 00:02:41', '2024-03-24 00:02:41'),
(101, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-24 00:02:42', '2024-03-24 00:02:42'),
(102, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-24 00:02:44', '2024-03-24 00:02:44'),
(103, 2, 'admin/atraksis/5/edit', 'GET', '127.0.0.1', '[]', '2024-03-24 00:02:49', '2024-03-24 00:02:49'),
(104, 2, 'admin/atraksis/5', 'PUT', '127.0.0.1', '{\"name\":\"Membuat Wayang Ikan\",\"_token\":\"KTq1LtTfuFGqbPNHVJG3s4SS3GkUWDyYNLRY5eVz\",\"_method\":\"PUT\"}', '2024-03-24 00:03:04', '2024-03-24 00:03:04'),
(105, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-24 00:03:04', '2024-03-24 00:03:04'),
(106, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-24 00:03:06', '2024-03-24 00:03:06'),
(107, 2, 'admin/atraksis/8/edit', 'GET', '127.0.0.1', '[]', '2024-03-24 00:03:17', '2024-03-24 00:03:17'),
(108, 2, 'admin/atraksis/8', 'PUT', '127.0.0.1', '{\"name\":\"Membatik\",\"image_file_del_\":\"images\\/DSC00182.JPG,\",\"_token\":\"KTq1LtTfuFGqbPNHVJG3s4SS3GkUWDyYNLRY5eVz\",\"_method\":\"PUT\"}', '2024-03-24 00:03:31', '2024-03-24 00:03:31'),
(109, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-24 00:03:31', '2024-03-24 00:03:31'),
(110, 2, 'admin/atraksis/8/edit', 'GET', '127.0.0.1', '[]', '2024-03-24 00:03:35', '2024-03-24 00:03:35'),
(111, 2, 'admin/atraksis/8', 'PUT', '127.0.0.1', '{\"name\":\"Membatik\",\"_token\":\"KTq1LtTfuFGqbPNHVJG3s4SS3GkUWDyYNLRY5eVz\",\"_method\":\"PUT\"}', '2024-03-24 00:03:40', '2024-03-24 00:03:40'),
(112, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-24 00:03:40', '2024-03-24 00:03:40'),
(113, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-24 00:03:42', '2024-03-24 00:03:42'),
(114, 2, 'admin/atraksis/9/edit', 'GET', '127.0.0.1', '[]', '2024-03-24 00:03:46', '2024-03-24 00:03:46'),
(115, 2, 'admin/atraksis/9', 'PUT', '127.0.0.1', '{\"name\":\"Topeng\",\"image_file_del_\":\"images\\/IMG_5939.png,\",\"_token\":\"KTq1LtTfuFGqbPNHVJG3s4SS3GkUWDyYNLRY5eVz\",\"_method\":\"PUT\"}', '2024-03-24 00:03:58', '2024-03-24 00:03:58'),
(116, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-24 00:03:58', '2024-03-24 00:03:58'),
(117, 2, 'admin/atraksis/9/edit', 'GET', '127.0.0.1', '[]', '2024-03-24 00:04:02', '2024-03-24 00:04:02'),
(118, 2, 'admin/atraksis/9', 'PUT', '127.0.0.1', '{\"name\":\"Topeng\",\"_token\":\"KTq1LtTfuFGqbPNHVJG3s4SS3GkUWDyYNLRY5eVz\",\"_method\":\"PUT\"}', '2024-03-24 00:04:14', '2024-03-24 00:04:14'),
(119, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-24 00:04:14', '2024-03-24 00:04:14'),
(120, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-24 00:04:16', '2024-03-24 00:04:16'),
(121, 2, 'admin/atraksis/12/edit', 'GET', '127.0.0.1', '[]', '2024-03-24 00:04:25', '2024-03-24 00:04:25'),
(122, 2, 'admin/atraksis/12', 'PUT', '127.0.0.1', '{\"name\":\"Live Musik\",\"image_file_del_\":\"images\\/DSC00825.JPG,\",\"_token\":\"KTq1LtTfuFGqbPNHVJG3s4SS3GkUWDyYNLRY5eVz\",\"_method\":\"PUT\"}', '2024-03-24 00:04:28', '2024-03-24 00:04:28'),
(123, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-24 00:04:28', '2024-03-24 00:04:28'),
(124, 2, 'admin/atraksis/12/edit', 'GET', '127.0.0.1', '[]', '2024-03-24 00:04:30', '2024-03-24 00:04:30'),
(125, 2, 'admin/atraksis/12', 'PUT', '127.0.0.1', '{\"name\":\"Live Musik\",\"_token\":\"KTq1LtTfuFGqbPNHVJG3s4SS3GkUWDyYNLRY5eVz\",\"_method\":\"PUT\"}', '2024-03-24 00:04:41', '2024-03-24 00:04:41'),
(126, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-24 00:04:41', '2024-03-24 00:04:41'),
(127, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-24 00:04:43', '2024-03-24 00:04:43'),
(128, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-24 00:05:11', '2024-03-24 00:05:11'),
(129, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-24 00:05:13', '2024-03-24 00:05:13'),
(130, 2, 'admin/atraksis/10/edit', 'GET', '127.0.0.1', '[]', '2024-03-24 00:05:16', '2024-03-24 00:05:16'),
(131, 2, 'admin/atraksis/10', 'PUT', '127.0.0.1', '{\"name\":\"Reog Ria Kelana\",\"image_file_del_\":\"images\\/Ria Kelana 1.jpg,\",\"_token\":\"KTq1LtTfuFGqbPNHVJG3s4SS3GkUWDyYNLRY5eVz\",\"_method\":\"PUT\"}', '2024-03-24 00:05:23', '2024-03-24 00:05:23'),
(132, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-24 00:05:23', '2024-03-24 00:05:23'),
(133, 2, 'admin/atraksis/10/edit', 'GET', '127.0.0.1', '[]', '2024-03-24 00:05:26', '2024-03-24 00:05:26'),
(134, 2, 'admin/atraksis/10', 'PUT', '127.0.0.1', '{\"name\":\"Reog Ria Kelana\",\"_token\":\"KTq1LtTfuFGqbPNHVJG3s4SS3GkUWDyYNLRY5eVz\",\"_method\":\"PUT\"}', '2024-03-24 00:05:30', '2024-03-24 00:05:30'),
(135, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-24 00:05:31', '2024-03-24 00:05:31'),
(136, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-25 00:47:00', '2024-03-25 00:47:00'),
(137, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-25 00:48:33', '2024-03-25 00:48:33'),
(138, 2, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"FarmVisit\",\"model_name\":\"App\\\\Models\\\\Farm\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\FarmController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"harga\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"MvXkewONElyTbn2zpDsmQmMzl6V4ZeGOPpV8WrXE\"}', '2024-03-25 00:50:13', '2024-03-25 00:50:13'),
(139, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-25 00:50:17', '2024-03-25 00:50:17'),
(140, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-25 00:50:19', '2024-03-25 00:50:19'),
(141, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-25 00:51:34', '2024-03-25 00:51:34'),
(142, 2, 'admin/farms/create', 'GET', '127.0.0.1', '[]', '2024-03-25 00:52:10', '2024-03-25 00:52:10'),
(143, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-25 00:52:36', '2024-03-25 00:52:36'),
(144, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-25 00:52:47', '2024-03-25 00:52:47'),
(145, 2, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '[]', '2024-03-25 00:52:52', '2024-03-25 00:52:52'),
(146, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-25 00:53:00', '2024-03-25 00:53:00'),
(147, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-25 00:53:05', '2024-03-25 00:53:05'),
(148, 2, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-03-25 00:53:20', '2024-03-25 00:53:20'),
(149, 2, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2024-03-25 00:53:23', '2024-03-25 00:53:23'),
(150, 2, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-03-25 00:53:25', '2024-03-25 00:53:25'),
(151, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-25 00:53:28', '2024-03-25 00:53:28'),
(152, 2, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"FarmVisit\",\"model_name\":\"App\\\\Models\\\\Farm\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\FarmController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"paket\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"harga\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"MvXkewONElyTbn2zpDsmQmMzl6V4ZeGOPpV8WrXE\"}', '2024-03-25 00:55:27', '2024-03-25 00:55:27'),
(153, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-25 00:55:28', '2024-03-25 00:55:28'),
(154, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-25 00:55:47', '2024-03-25 00:55:47'),
(155, 2, 'admin/farms/create', 'GET', '127.0.0.1', '[]', '2024-03-25 00:55:49', '2024-03-25 00:55:49'),
(156, 2, 'admin/farms', 'POST', '127.0.0.1', '{\"paket\":\"Paket A\",\"harga\":\"150.000\",\"fasilitas\":\"4 Farm + Edukasi Pemandu Wisata Sepeda Makan & Minum Kenangan\",\"_token\":\"MvXkewONElyTbn2zpDsmQmMzl6V4ZeGOPpV8WrXE\"}', '2024-03-25 00:56:29', '2024-03-25 00:56:29'),
(157, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-25 00:56:30', '2024-03-25 00:56:30'),
(158, 2, 'admin/farms/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-25 00:56:39', '2024-03-25 00:56:39'),
(159, 2, 'admin/farms/1', 'PUT', '127.0.0.1', '{\"paket\":\"Paket A\",\"harga\":\"150.000\",\"fasilitas\":\"1. 4 Farm + Edukasi 2. Pemandu Wisata 3. Sepeda 4. Makan & Minum 5. Kenangan\",\"_token\":\"MvXkewONElyTbn2zpDsmQmMzl6V4ZeGOPpV8WrXE\",\"_method\":\"PUT\"}', '2024-03-25 00:58:54', '2024-03-25 00:58:54'),
(160, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-25 00:58:55', '2024-03-25 00:58:55'),
(161, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-25 00:59:42', '2024-03-25 00:59:42'),
(162, 2, 'admin/farms/create', 'GET', '127.0.0.1', '[]', '2024-03-25 00:59:54', '2024-03-25 00:59:54'),
(163, 2, 'admin/farms', 'POST', '127.0.0.1', '{\"paket\":\"Paket B\",\"harga\":\"100.000\",\"fasilitas\":\"1. 2 Farm + Edukasi 2. Pemandu Wisata 3. Makan & Minum 4. Kenangan\",\"_token\":\"MvXkewONElyTbn2zpDsmQmMzl6V4ZeGOPpV8WrXE\"}', '2024-03-25 01:01:45', '2024-03-25 01:01:45'),
(164, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-25 01:01:46', '2024-03-25 01:01:46'),
(165, 2, 'admin/farms/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-25 01:01:50', '2024-03-25 01:01:50'),
(166, 2, 'admin/farms/1', 'PUT', '127.0.0.1', '{\"paket\":\"Paket A\",\"harga\":\"150.000\",\"fasilitas\":\"1. 4 Farm + Edukasi 2. Pemandu Wisata 3. Sepeda 4. Makan & Minum 5. Kenangan\",\"image_file_del_\":\"images\\/paketA.jpg,\",\"_token\":\"MvXkewONElyTbn2zpDsmQmMzl6V4ZeGOPpV8WrXE\",\"_method\":\"PUT\"}', '2024-03-25 01:02:01', '2024-03-25 01:02:01'),
(167, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-25 01:02:02', '2024-03-25 01:02:02'),
(168, 2, 'admin/farms/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-25 01:02:05', '2024-03-25 01:02:05'),
(169, 2, 'admin/farms/1', 'PUT', '127.0.0.1', '{\"paket\":\"Paket A\",\"harga\":\"150.000\",\"fasilitas\":\"1. 4 Farm + Edukasi 2. Pemandu Wisata 3. Sepeda 4. Makan & Minum 5. Kenangan\",\"_token\":\"MvXkewONElyTbn2zpDsmQmMzl6V4ZeGOPpV8WrXE\",\"_method\":\"PUT\"}', '2024-03-25 01:02:11', '2024-03-25 01:02:11'),
(170, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-25 01:02:11', '2024-03-25 01:02:11'),
(171, 2, 'admin/farms/create', 'GET', '127.0.0.1', '[]', '2024-03-25 01:02:15', '2024-03-25 01:02:15'),
(172, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-25 01:02:19', '2024-03-25 01:02:19'),
(173, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-25 01:02:20', '2024-03-25 01:02:20'),
(174, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-25 01:02:22', '2024-03-25 01:02:22'),
(175, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-25 01:02:24', '2024-03-25 01:02:24'),
(176, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-25 01:02:27', '2024-03-25 01:02:27'),
(177, 2, 'admin/auth/menu/15', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"MvXkewONElyTbn2zpDsmQmMzl6V4ZeGOPpV8WrXE\"}', '2024-03-25 01:02:30', '2024-03-25 01:02:30'),
(178, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-25 01:02:31', '2024-03-25 01:02:31'),
(179, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-25 01:02:34', '2024-03-25 01:02:34'),
(180, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-25 01:02:36', '2024-03-25 01:02:36'),
(181, 2, 'admin/farms/create', 'GET', '127.0.0.1', '[]', '2024-03-25 01:03:23', '2024-03-25 01:03:23'),
(182, 2, 'admin/farms', 'POST', '127.0.0.1', '{\"paket\":\"Paket C\",\"harga\":\"75.000\",\"fasilitas\":\"1. 2 Farm + Edukasi 2. Pemandu Wisata 3. Snack & Minum 4. Kenangan\",\"_token\":\"MvXkewONElyTbn2zpDsmQmMzl6V4ZeGOPpV8WrXE\"}', '2024-03-25 01:04:03', '2024-03-25 01:04:03'),
(183, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-25 01:04:04', '2024-03-25 01:04:04'),
(184, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-25 01:09:09', '2024-03-25 01:09:09'),
(185, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-29 04:05:15', '2024-03-29 04:05:15'),
(186, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-29 04:05:20', '2024-03-29 04:05:20'),
(187, 2, 'admin/atraksis/4/edit', 'GET', '127.0.0.1', '[]', '2024-03-29 04:05:28', '2024-03-29 04:05:28'),
(188, 2, 'admin/atraksis/4', 'PUT', '127.0.0.1', '{\"name\":\"Mentoring Ikan\",\"_token\":\"hyTGMVxYy5G3L0T3M7EmgQiPU4VgUcSOR25q8oFf\",\"_method\":\"PUT\"}', '2024-03-29 04:05:32', '2024-03-29 04:05:32'),
(189, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-29 04:05:33', '2024-03-29 04:05:33'),
(190, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-29 04:05:40', '2024-03-29 04:05:40'),
(191, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-29 04:06:03', '2024-03-29 04:06:03'),
(192, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-29 04:06:09', '2024-03-29 04:06:09'),
(193, 1, 'admin/atraksis/4/edit', 'GET', '127.0.0.1', '[]', '2024-03-29 04:06:13', '2024-03-29 04:06:13'),
(194, 1, 'admin/atraksis/4', 'PUT', '127.0.0.1', '{\"name\":\"Mentoring Ikan Hias\",\"_token\":\"7SZjYwiLrBdfVygImGPw5jBsyaWJWrXgkJtdDX3a\",\"_method\":\"PUT\"}', '2024-03-29 04:06:19', '2024-03-29 04:06:19'),
(195, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-29 04:06:19', '2024-03-29 04:06:19'),
(196, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-29 04:06:25', '2024-03-29 04:06:25'),
(197, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-31 02:40:29', '2024-03-31 02:40:29'),
(198, 2, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-03-31 02:40:36', '2024-03-31 02:40:36'),
(199, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-31 02:40:37', '2024-03-31 02:40:37'),
(200, 2, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-03-31 02:40:40', '2024-03-31 02:40:40'),
(201, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-31 02:40:46', '2024-03-31 02:40:46'),
(202, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-31 02:41:14', '2024-03-31 02:41:14'),
(203, 2, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-31 02:41:18', '2024-03-31 02:41:18'),
(204, 2, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-31 02:41:22', '2024-03-31 02:41:22'),
(205, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-31 02:41:25', '2024-03-31 02:41:25'),
(206, 2, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '[]', '2024-03-31 02:41:31', '2024-03-31 02:41:31'),
(207, 2, 'admin/auth/menu/14', 'GET', '127.0.0.1', '[]', '2024-03-31 02:41:37', '2024-03-31 02:41:37'),
(208, 2, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '[]', '2024-03-31 02:41:37', '2024-03-31 02:41:37'),
(209, 2, 'admin/auth/menu/14', 'GET', '127.0.0.1', '[]', '2024-03-31 02:41:45', '2024-03-31 02:41:45'),
(210, 2, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '[]', '2024-03-31 02:41:46', '2024-03-31 02:41:46'),
(211, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-31 02:41:49', '2024-03-31 02:41:49'),
(212, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-31 02:41:58', '2024-03-31 02:41:58'),
(213, 2, 'admin/farms/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-31 02:42:39', '2024-03-31 02:42:39'),
(214, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-31 02:43:57', '2024-03-31 02:43:57'),
(215, 2, 'admin/farms/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-31 02:44:01', '2024-03-31 02:44:01'),
(216, 2, 'admin/farms/1', 'PUT', '127.0.0.1', '{\"paket\":\"Paket A (Paket Farm visit)\",\"harga\":\"150.000\",\"fasilitas\":\"1. 4 Farm + Edukasi 2. Pemandu Wisata 3. Sepeda 4. Makan & Minum 5. Kenangan\",\"_token\":\"7CokhT09NTfjjSw4BeW5jHs3yUmMec8jgX93VBdF\",\"_method\":\"PUT\"}', '2024-03-31 02:44:15', '2024-03-31 02:44:15'),
(217, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-31 02:44:16', '2024-03-31 02:44:16'),
(218, 2, 'admin/farms/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-31 02:44:20', '2024-03-31 02:44:20'),
(219, 2, 'admin/farms/1', 'PUT', '127.0.0.1', '{\"paket\":\"Paket A (Paket Farm Visit)\",\"harga\":\"150.000\",\"fasilitas\":\"1. 4 Farm + Edukasi 2. Pemandu Wisata 3. Sepeda 4. Makan & Minum 5. Kenangan\",\"_token\":\"7CokhT09NTfjjSw4BeW5jHs3yUmMec8jgX93VBdF\",\"_method\":\"PUT\"}', '2024-03-31 02:44:29', '2024-03-31 02:44:29'),
(220, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-31 02:44:29', '2024-03-31 02:44:29'),
(221, 2, 'admin/farms/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-31 02:44:32', '2024-03-31 02:44:32'),
(222, 2, 'admin/farms/2', 'PUT', '127.0.0.1', '{\"paket\":\"Paket B (Paket Farm Visit)\",\"harga\":\"100.000\",\"fasilitas\":\"1. 2 Farm + Edukasi 2. Pemandu Wisata 3. Makan & Minum 4. Kenangan\",\"_token\":\"7CokhT09NTfjjSw4BeW5jHs3yUmMec8jgX93VBdF\",\"_method\":\"PUT\"}', '2024-03-31 02:44:35', '2024-03-31 02:44:35'),
(223, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-31 02:44:36', '2024-03-31 02:44:36'),
(224, 2, 'admin/farms/3/edit', 'GET', '127.0.0.1', '[]', '2024-03-31 02:44:38', '2024-03-31 02:44:38'),
(225, 2, 'admin/farms/3', 'PUT', '127.0.0.1', '{\"paket\":\"Paket C (Paket Farm Visit)\",\"harga\":\"75.000\",\"fasilitas\":\"1. 2 Farm + Edukasi 2. Pemandu Wisata 3. Snack & Minum 4. Kenangan\",\"_token\":\"7CokhT09NTfjjSw4BeW5jHs3yUmMec8jgX93VBdF\",\"_method\":\"PUT\"}', '2024-03-31 02:44:42', '2024-03-31 02:44:42'),
(226, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-31 02:44:43', '2024-03-31 02:44:43'),
(227, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-31 02:46:31', '2024-03-31 02:46:31'),
(228, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-31 02:56:28', '2024-03-31 02:56:28'),
(229, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-31 02:56:31', '2024-03-31 02:56:31'),
(230, 2, 'admin/farms/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-31 02:56:35', '2024-03-31 02:56:35'),
(231, 2, 'admin/farms/1', 'PUT', '127.0.0.1', '{\"paket\":\"Paket A <br>(Paket Farm Visit)\",\"harga\":\"150.000\",\"fasilitas\":\"1. 4 Farm + Edukasi 2. Pemandu Wisata 3. Sepeda 4. Makan & Minum 5. Kenangan\",\"_token\":\"fKtl9okHMppEnKyHM0VLYh3KYGhrV9EcyUjZ4oJA\",\"_method\":\"PUT\"}', '2024-03-31 02:56:45', '2024-03-31 02:56:45'),
(232, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-31 02:56:45', '2024-03-31 02:56:45'),
(233, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-31 02:56:58', '2024-03-31 02:56:58'),
(234, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-31 02:57:06', '2024-03-31 02:57:06'),
(235, 2, 'admin/farms/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-31 02:57:08', '2024-03-31 02:57:08'),
(236, 2, 'admin/farms/1', 'PUT', '127.0.0.1', '{\"paket\":\"Paket A (Paket Farm Visit)\",\"harga\":\"150.000\",\"fasilitas\":\"1. 4 Farm + Edukasi 2. Pemandu Wisata 3. Sepeda 4. Makan & Minum 5. Kenangan\",\"_token\":\"fKtl9okHMppEnKyHM0VLYh3KYGhrV9EcyUjZ4oJA\",\"_method\":\"PUT\"}', '2024-03-31 02:57:13', '2024-03-31 02:57:13'),
(237, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-03-31 02:57:14', '2024-03-31 02:57:14'),
(238, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-31 02:57:17', '2024-03-31 02:57:17'),
(239, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-01 22:11:37', '2024-04-01 22:11:37'),
(240, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-04-01 22:11:40', '2024-04-01 22:11:40'),
(241, 2, 'admin/farms/1/edit', 'GET', '127.0.0.1', '[]', '2024-04-01 22:11:44', '2024-04-01 22:11:44'),
(242, 2, 'admin/farms/1', 'PUT', '127.0.0.1', '{\"paket\":\"Paket A Paket Farm Visit\",\"harga\":\"150.000\",\"fasilitas\":\"1. 4 Farm + Edukasi 2. Pemandu Wisata 3. Sepeda 4. Makan & Minum 5. Kenangan\",\"_token\":\"XbYBLStM34JosBvqWODdz7e4dWVnnX1A1pCdgqTT\",\"_method\":\"PUT\"}', '2024-04-01 22:11:48', '2024-04-01 22:11:48'),
(243, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-04-01 22:11:49', '2024-04-01 22:11:49'),
(244, 2, 'admin/farms/2/edit', 'GET', '127.0.0.1', '[]', '2024-04-01 22:11:51', '2024-04-01 22:11:51'),
(245, 2, 'admin/farms/2', 'PUT', '127.0.0.1', '{\"paket\":\"Paket B Paket Farm Visit\",\"harga\":\"100.000\",\"fasilitas\":\"1. 2 Farm + Edukasi 2. Pemandu Wisata 3. Makan & Minum 4. Kenangan\",\"_token\":\"XbYBLStM34JosBvqWODdz7e4dWVnnX1A1pCdgqTT\",\"_method\":\"PUT\"}', '2024-04-01 22:11:54', '2024-04-01 22:11:54'),
(246, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-04-01 22:11:55', '2024-04-01 22:11:55'),
(247, 2, 'admin/farms/3/edit', 'GET', '127.0.0.1', '[]', '2024-04-01 22:11:56', '2024-04-01 22:11:56'),
(248, 2, 'admin/farms/3', 'PUT', '127.0.0.1', '{\"paket\":\"Paket C Paket Farm Visit\",\"harga\":\"75.000\",\"fasilitas\":\"1. 2 Farm + Edukasi 2. Pemandu Wisata 3. Snack & Minum 4. Kenangan\",\"_token\":\"XbYBLStM34JosBvqWODdz7e4dWVnnX1A1pCdgqTT\",\"_method\":\"PUT\"}', '2024-04-01 22:12:00', '2024-04-01 22:12:00'),
(249, 2, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-04-01 22:12:00', '2024-04-01 22:12:00'),
(250, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-04-01 22:12:06', '2024-04-01 22:12:06'),
(251, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-01 22:19:43', '2024-04-01 22:19:43'),
(252, 1, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-04-01 22:19:46', '2024-04-01 22:19:46'),
(253, 1, 'admin/farms/1/edit', 'GET', '127.0.0.1', '[]', '2024-04-01 22:19:51', '2024-04-01 22:19:51'),
(254, 1, 'admin/farms/1', 'PUT', '127.0.0.1', '{\"paket\":\"Paket A      Paket Farm Visit\",\"harga\":\"150.000\",\"fasilitas\":\"1. 4 Farm + Edukasi 2. Pemandu Wisata 3. Sepeda 4. Makan & Minum 5. Kenangan\",\"_token\":\"Jpqr2oKKrOJgbPhQb9yAcwjyyk1pGNsU47ILGBGD\",\"_method\":\"PUT\"}', '2024-04-01 22:19:57', '2024-04-01 22:19:57'),
(255, 1, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-04-01 22:19:57', '2024-04-01 22:19:57'),
(256, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-01 22:20:32', '2024-04-01 22:20:32'),
(257, 1, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-04-01 22:20:33', '2024-04-01 22:20:33'),
(258, 1, 'admin/farms/1/edit', 'GET', '127.0.0.1', '[]', '2024-04-01 22:20:37', '2024-04-01 22:20:37'),
(259, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-01 22:27:40', '2024-04-01 22:27:40'),
(260, 1, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-04-01 22:27:42', '2024-04-01 22:27:42'),
(261, 1, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-04-01 22:29:19', '2024-04-01 22:29:19'),
(262, 1, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-04-01 22:29:29', '2024-04-01 22:29:29'),
(263, 1, 'admin/farms/create', 'GET', '127.0.0.1', '[]', '2024-04-01 22:29:35', '2024-04-01 22:29:35'),
(264, 1, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-04-01 22:29:37', '2024-04-01 22:29:37'),
(265, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-01 22:30:33', '2024-04-01 22:30:33'),
(266, 1, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-04-01 22:30:35', '2024-04-01 22:30:35'),
(267, 1, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-04-01 22:32:04', '2024-04-01 22:32:04'),
(268, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-01 22:38:08', '2024-04-01 22:38:08'),
(269, 1, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-04-01 22:38:09', '2024-04-01 22:38:09'),
(270, 1, 'admin/farms/1/edit', 'GET', '127.0.0.1', '[]', '2024-04-01 22:38:12', '2024-04-01 22:38:12'),
(271, 1, 'admin/farms/1', 'PUT', '127.0.0.1', '{\"paket\":\"Paket A\",\"harga\":\"150.000\",\"fasilitas\":\"4 Farm + Edukasi , Pemandu Wisata, Sepeda, Makan & Minum, Kenangan\",\"_token\":\"Jpqr2oKKrOJgbPhQb9yAcwjyyk1pGNsU47ILGBGD\",\"_method\":\"PUT\"}', '2024-04-01 22:38:40', '2024-04-01 22:38:40'),
(272, 1, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-04-01 22:38:40', '2024-04-01 22:38:40'),
(273, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-01 22:39:52', '2024-04-01 22:39:52'),
(274, 1, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-04-01 22:39:53', '2024-04-01 22:39:53'),
(275, 1, 'admin/farms/1/edit', 'GET', '127.0.0.1', '[]', '2024-04-01 22:40:31', '2024-04-01 22:40:31'),
(276, 1, 'admin/farms/1', 'PUT', '127.0.0.1', '{\"paket\":\"Paket A\",\"harga\":\"150.000\",\"fasilitas\":null,\"_token\":\"Jpqr2oKKrOJgbPhQb9yAcwjyyk1pGNsU47ILGBGD\",\"_method\":\"PUT\"}', '2024-04-01 22:40:37', '2024-04-01 22:40:37'),
(277, 1, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-04-01 22:40:37', '2024-04-01 22:40:37'),
(278, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-01 22:45:13', '2024-04-01 22:45:13'),
(279, 1, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-04-01 22:45:15', '2024-04-01 22:45:15'),
(280, 1, 'admin/farms/1/edit', 'GET', '127.0.0.1', '[]', '2024-04-01 22:45:16', '2024-04-01 22:45:16'),
(281, 1, 'admin/farms/1', 'PUT', '127.0.0.1', '{\"paket\":\"Paket A\",\"harga\":\"150.000\",\"fasilitas\":\"4 Farm + Edukasi, Pemandu Wisata, Sepeda, Makan & Minum, Kenangan\",\"_token\":\"Jpqr2oKKrOJgbPhQb9yAcwjyyk1pGNsU47ILGBGD\",\"_method\":\"PUT\"}', '2024-04-01 22:45:54', '2024-04-01 22:45:54'),
(282, 1, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-04-01 22:45:54', '2024-04-01 22:45:54'),
(283, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-01 22:51:32', '2024-04-01 22:51:32'),
(284, 1, 'admin/farms', 'GET', '127.0.0.1', '[]', '2024-04-01 22:51:39', '2024-04-01 22:51:39'),
(285, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-01 22:51:58', '2024-04-01 22:51:58'),
(286, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-01 22:52:00', '2024-04-01 22:52:00'),
(287, 1, 'admin/auth/menu/14', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Jpqr2oKKrOJgbPhQb9yAcwjyyk1pGNsU47ILGBGD\"}', '2024-04-01 22:52:05', '2024-04-01 22:52:05'),
(288, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-01 22:52:05', '2024-04-01 22:52:05'),
(289, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-01 22:52:09', '2024-04-01 22:52:09'),
(290, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-03 06:11:29', '2024-04-03 06:11:29'),
(291, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-03 06:11:37', '2024-04-03 06:11:37'),
(292, 2, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"Paket\",\"model_name\":\"App\\\\Models\\\\Paket\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\PaketController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"type\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"harga\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas1\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas2\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas3\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas4\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas5\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"eJdo3Ft9qwSF0TPw7nJhmkIzZKOmhOX1TTSNBgpD\"}', '2024-04-03 06:15:37', '2024-04-03 06:15:37'),
(293, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-03 06:15:40', '2024-04-03 06:15:40'),
(294, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-03 06:16:26', '2024-04-03 06:16:26'),
(295, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-03 06:16:29', '2024-04-03 06:16:29'),
(296, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-03 06:16:59', '2024-04-03 06:16:59'),
(297, 2, 'admin/pakets/create', 'GET', '127.0.0.1', '[]', '2024-04-03 06:17:02', '2024-04-03 06:17:02'),
(298, 2, 'admin/pakets', 'POST', '127.0.0.1', '{\"name\":\"Paket A\",\"type\":\"Paket Farm Visit\",\"harga\":\"150.000\",\"fasilitas1\":\"1. 4 Farm + Edukasi\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Sepeda\",\"fasilitas4\":\"4. Makan & Minum\",\"fasilitas5\":\"5. Kenangan\",\"_token\":\"eJdo3Ft9qwSF0TPw7nJhmkIzZKOmhOX1TTSNBgpD\"}', '2024-04-03 06:19:17', '2024-04-03 06:19:17'),
(299, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-03 06:19:18', '2024-04-03 06:19:18'),
(300, 2, 'admin/pakets/create', 'GET', '127.0.0.1', '[]', '2024-04-03 06:19:25', '2024-04-03 06:19:25'),
(301, 2, 'admin/pakets', 'POST', '127.0.0.1', '{\"name\":\"Paket B\",\"type\":\"Paket Farm Visit\",\"harga\":\"100.000\",\"fasilitas1\":\"2 Farm + Edukasi\",\"fasilitas2\":\"Pemandu Wisata\",\"fasilitas3\":\"Makan & Minum\",\"fasilitas4\":\"Kenangan\",\"fasilitas5\":null,\"_token\":\"eJdo3Ft9qwSF0TPw7nJhmkIzZKOmhOX1TTSNBgpD\"}', '2024-04-03 06:20:30', '2024-04-03 06:20:30'),
(302, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-03 06:20:31', '2024-04-03 06:20:31'),
(303, 2, 'admin/pakets/2/edit', 'GET', '127.0.0.1', '[]', '2024-04-03 06:20:35', '2024-04-03 06:20:35'),
(304, 2, 'admin/pakets/2', 'PUT', '127.0.0.1', '{\"name\":\"Paket B\",\"type\":\"Paket Farm Visit\",\"harga\":\"100.000\",\"fasilitas1\":\"1. 2 Farm + Edukasi\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Makan & Minum\",\"fasilitas4\":\"4. Kenangan\",\"fasilitas5\":null,\"_token\":\"eJdo3Ft9qwSF0TPw7nJhmkIzZKOmhOX1TTSNBgpD\",\"_method\":\"PUT\"}', '2024-04-03 06:20:46', '2024-04-03 06:20:46'),
(305, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-03 06:20:47', '2024-04-03 06:20:47'),
(306, 2, 'admin/pakets/create', 'GET', '127.0.0.1', '[]', '2024-04-03 06:20:49', '2024-04-03 06:20:49'),
(307, 2, 'admin/pakets', 'POST', '127.0.0.1', '{\"name\":\"Paket C\",\"type\":\"Paket Farm Visit\",\"harga\":\"75.000\",\"fasilitas1\":\"1. 2 Farm + Edukasi\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Snack & Minum\",\"fasilitas4\":\"4. Kenangan\",\"fasilitas5\":null,\"_token\":\"eJdo3Ft9qwSF0TPw7nJhmkIzZKOmhOX1TTSNBgpD\"}', '2024-04-03 06:21:52', '2024-04-03 06:21:52'),
(308, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-03 06:21:53', '2024-04-03 06:21:53'),
(309, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-04-03 06:25:26', '2024-04-03 06:25:26'),
(310, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-03 07:04:34', '2024-04-03 07:04:34'),
(311, 1, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-03 07:04:40', '2024-04-03 07:04:40'),
(312, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-03 07:08:47', '2024-04-03 07:08:47'),
(313, 1, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-03 07:10:28', '2024-04-03 07:10:28'),
(314, 1, 'admin/pakets/create', 'GET', '127.0.0.1', '[]', '2024-04-03 07:10:33', '2024-04-03 07:10:33'),
(315, 1, 'admin/pakets', 'POST', '127.0.0.1', '{\"name\":\"Paket A\",\"type\":\"Paket Anak\",\"harga\":\"115.000\",\"fasilitas1\":\"1. 2 Farm\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Atraksi tangkap ikan\",\"fasilitas4\":\"4. Outbound ceria\",\"fasilitas5\":\"5. Makan, Minum & Souvernir, dll\",\"_token\":\"ZryeBRyTbpN5qnCt4Bp6E0hAdThIPinQXBbvNGHr\"}', '2024-04-03 07:12:37', '2024-04-03 07:12:37'),
(316, 1, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-03 07:12:38', '2024-04-03 07:12:38'),
(317, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-03 07:14:44', '2024-04-03 07:14:44'),
(318, 1, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-03 07:14:46', '2024-04-03 07:14:46'),
(319, 1, 'admin/pakets/create', 'GET', '127.0.0.1', '[]', '2024-04-03 07:14:52', '2024-04-03 07:14:52'),
(320, 1, 'admin/pakets', 'POST', '127.0.0.1', '{\"name\":\"Paket B\",\"type\":\"Paket Anak\",\"harga\":\"85.000\",\"fasilitas1\":\"1. 2 Farm\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Atraksi Tangkap Ikan\",\"fasilitas4\":\"4. Outbound Ceria\",\"fasilitas5\":\"5. Makan, Minum & Souvenir\",\"_token\":\"ZryeBRyTbpN5qnCt4Bp6E0hAdThIPinQXBbvNGHr\"}', '2024-04-03 07:16:27', '2024-04-03 07:16:27'),
(321, 1, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-03 07:16:27', '2024-04-03 07:16:27'),
(322, 1, 'admin/pakets/5/edit', 'GET', '127.0.0.1', '[]', '2024-04-03 07:16:32', '2024-04-03 07:16:32'),
(323, 1, 'admin/pakets/5', 'PUT', '127.0.0.1', '{\"name\":\"Paket B\",\"type\":\"Paket Anak\",\"harga\":\"85.000\",\"fasilitas1\":\"1. 2 Farm\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Atraksi Tangkap Ikan\",\"fasilitas4\":\"4. Outbound Ceria\",\"fasilitas5\":\"5. Makan, Minum & Souvenir\",\"_token\":\"ZryeBRyTbpN5qnCt4Bp6E0hAdThIPinQXBbvNGHr\",\"_method\":\"PUT\"}', '2024-04-03 07:16:51', '2024-04-03 07:16:51'),
(324, 1, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-03 07:16:51', '2024-04-03 07:16:51'),
(325, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-04-03 07:19:29', '2024-04-03 07:19:29'),
(326, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-08 05:11:10', '2024-04-08 05:11:10'),
(327, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-08 05:11:15', '2024-04-08 05:11:15'),
(328, 2, 'admin/pakets/create', 'GET', '127.0.0.1', '[]', '2024-04-08 05:11:22', '2024-04-08 05:11:22'),
(329, 2, 'admin/pakets', 'POST', '127.0.0.1', '{\"name\":\"Paket A\",\"type\":\"2 hari 1 Malam\",\"harga\":\"500.000 \\/ org\",\"fasilitas1\":null,\"fasilitas2\":null,\"fasilitas3\":null,\"fasilitas4\":null,\"fasilitas5\":null,\"_token\":\"lQKeVVBcNY1KP6EeJUUJYPYNQX1Vm8fS84kfPyru\"}', '2024-04-08 05:12:30', '2024-04-08 05:12:30'),
(330, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-08 05:12:31', '2024-04-08 05:12:31'),
(331, 2, 'admin/pakets/6/edit', 'GET', '127.0.0.1', '[]', '2024-04-08 05:12:35', '2024-04-08 05:12:35'),
(332, 2, 'admin/pakets/6', 'PUT', '127.0.0.1', '{\"name\":\"Paket A\",\"type\":\"2 hari 1 Malam\",\"harga\":\"500.000\\/Org *Minimal 10 orang\",\"fasilitas1\":\"1. Trainer\",\"fasilitas2\":\"2. Visit Farm + Free Dokumentasi\",\"fasilitas3\":\"3. Welcome Drink + Snack dan Makan + Gala Dinner\",\"fasilitas4\":\"4. Homestay\",\"fasilitas5\":\"5. Sepeda + Sunset, Dll\",\"_token\":\"lQKeVVBcNY1KP6EeJUUJYPYNQX1Vm8fS84kfPyru\",\"_method\":\"PUT\"}', '2024-04-08 05:15:51', '2024-04-08 05:15:51'),
(333, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-08 05:15:52', '2024-04-08 05:15:52'),
(334, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-08 05:29:54', '2024-04-08 05:29:54'),
(335, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-08 05:29:56', '2024-04-08 05:29:56'),
(336, 2, 'admin/pakets/create', 'GET', '127.0.0.1', '[]', '2024-04-08 05:29:58', '2024-04-08 05:29:58'),
(337, 2, 'admin/pakets', 'POST', '127.0.0.1', '{\"name\":\"Paket B\",\"type\":\"2 Hari 1 Malam\",\"harga\":\"450.000\\/Org *Minimal 10 orang\",\"fasilitas1\":\"1. Trainer\",\"fasilitas2\":\"2. Visit Farm + Free Dokumentasi\",\"fasilitas3\":\"3. Welcome Drink + Snack dan Makan + Gala Dinner\",\"fasilitas4\":\"4. Homestay\",\"fasilitas5\":\"5. Sepeda + Sunset\",\"_token\":\"lQKeVVBcNY1KP6EeJUUJYPYNQX1Vm8fS84kfPyru\"}', '2024-04-08 05:31:51', '2024-04-08 05:31:51'),
(338, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-08 05:31:52', '2024-04-08 05:31:52'),
(339, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-08 05:32:14', '2024-04-08 05:32:14'),
(340, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-08 05:32:16', '2024-04-08 05:32:16'),
(341, 2, 'admin/pakets/7/edit', 'GET', '127.0.0.1', '[]', '2024-04-08 05:32:22', '2024-04-08 05:32:22'),
(342, 2, 'admin/pakets/7', 'PUT', '127.0.0.1', '{\"name\":\"Paket B\",\"type\":\"2 Hari 1 Malam\",\"harga\":\"450.000\\/Org *Minimal 10 orang\",\"fasilitas1\":\"1. Trainer\",\"fasilitas2\":\"2. Visit Farm + Free Dokumentasi\",\"fasilitas3\":\"3. Welcome Drink + Snack dan Makan + Gala Dinner\",\"fasilitas4\":\"4. Homestay\",\"fasilitas5\":\"5. Sepeda + Sunset + Wayang Ikan\",\"_token\":\"lQKeVVBcNY1KP6EeJUUJYPYNQX1Vm8fS84kfPyru\",\"_method\":\"PUT\"}', '2024-04-08 05:32:45', '2024-04-08 05:32:45'),
(343, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-08 05:32:45', '2024-04-08 05:32:45'),
(344, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-08 05:33:23', '2024-04-08 05:33:23'),
(345, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-08 05:33:25', '2024-04-08 05:33:25'),
(346, 2, 'admin/pakets/5/edit', 'GET', '127.0.0.1', '[]', '2024-04-08 05:33:27', '2024-04-08 05:33:27'),
(347, 2, 'admin/pakets/5', 'PUT', '127.0.0.1', '{\"name\":\"Paket B\",\"type\":\"Paket Anak\",\"harga\":\"85.000\",\"fasilitas1\":\"1. 2 Farm\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Atraksi Tangkap Ikan\",\"fasilitas4\":\"4. Outbound Ceria\",\"fasilitas5\":\"5. Makan, Minum & Souvenir\",\"_token\":\"lQKeVVBcNY1KP6EeJUUJYPYNQX1Vm8fS84kfPyru\",\"_method\":\"PUT\"}', '2024-04-08 05:33:31', '2024-04-08 05:33:31'),
(348, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-08 05:33:31', '2024-04-08 05:33:31'),
(349, 2, 'admin/pakets/7/edit', 'GET', '127.0.0.1', '[]', '2024-04-08 05:33:33', '2024-04-08 05:33:33'),
(350, 2, 'admin/pakets/7', 'PUT', '127.0.0.1', '{\"name\":\"Paket B\",\"type\":\"2 Hari 1 Malam\",\"harga\":\"450.000\\/Org *Minimal 10 orang\",\"fasilitas1\":\"1. Trainer\",\"fasilitas2\":\"2. Visit Farm + Free Dokumentasi\",\"fasilitas3\":\"3. Welcome Drink + Snack dan Makan + Gala Dinner\",\"fasilitas4\":\"4. Homestay\",\"fasilitas5\":\"5. Sepeda + Sunset + Wayang Ikan\",\"_token\":\"lQKeVVBcNY1KP6EeJUUJYPYNQX1Vm8fS84kfPyru\",\"_method\":\"PUT\"}', '2024-04-08 05:33:35', '2024-04-08 05:33:35');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(351, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-08 05:33:35', '2024-04-08 05:33:35'),
(352, 2, 'admin/pakets/6/edit', 'GET', '127.0.0.1', '[]', '2024-04-08 05:33:37', '2024-04-08 05:33:37'),
(353, 2, 'admin/pakets/6', 'PUT', '127.0.0.1', '{\"name\":\"Paket A\",\"type\":\"2 hari 1 Malam\",\"harga\":\"500.000\\/Org *Minimal 10 orang\",\"fasilitas1\":\"1. Trainer\",\"fasilitas2\":\"2. Visit Farm + Free Dokumentasi\",\"fasilitas3\":\"3. Welcome Drink + Snack dan Makan + Gala Dinner\",\"fasilitas4\":\"4. Homestay\",\"fasilitas5\":\"5. Sepeda + Sunset + Wayang Ikan + Belajar Gamelan\",\"_token\":\"lQKeVVBcNY1KP6EeJUUJYPYNQX1Vm8fS84kfPyru\",\"_method\":\"PUT\"}', '2024-04-08 05:33:49', '2024-04-08 05:33:49'),
(354, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-08 05:33:49', '2024-04-08 05:33:49'),
(355, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-08 05:34:53', '2024-04-08 05:34:53'),
(356, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-08 05:34:55', '2024-04-08 05:34:55'),
(357, 2, 'admin/pakets/6/edit', 'GET', '127.0.0.1', '[]', '2024-04-08 05:34:57', '2024-04-08 05:34:57'),
(358, 2, 'admin/pakets/6', 'PUT', '127.0.0.1', '{\"name\":\"Paket A\",\"type\":\"2 hari 1 Malam\",\"harga\":\"500.000\\/Org *Minimal 10 orang\",\"fasilitas1\":\"1. Trainer\",\"fasilitas2\":\"2. Visit Farm + Free Dokumentasi\",\"fasilitas3\":\"3. Welcome Drink + Snack dan Makan + Gala Dinner\",\"fasilitas4\":\"4. Homestay\",\"fasilitas5\":\"5. Sepeda + Sunset + 2 Kegiatan\",\"_token\":\"lQKeVVBcNY1KP6EeJUUJYPYNQX1Vm8fS84kfPyru\",\"_method\":\"PUT\"}', '2024-04-08 05:35:06', '2024-04-08 05:35:06'),
(359, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-08 05:35:07', '2024-04-08 05:35:07'),
(360, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-10 05:53:03', '2024-04-10 05:53:03'),
(361, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-10 05:53:19', '2024-04-10 05:53:19'),
(362, 2, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"Ikan\",\"model_name\":\"App\\\\Models\\\\Ikan\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\IkanController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"waOOXigbNxpiDaM6whrjHBuMr7eIn0bm45iSf5VC\"}', '2024-04-10 05:54:15', '2024-04-10 05:54:15'),
(363, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-10 05:54:24', '2024-04-10 05:54:24'),
(364, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-10 05:55:04', '2024-04-10 05:55:04'),
(365, 2, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-04-10 05:55:07', '2024-04-10 05:55:07'),
(366, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-10 18:28:33', '2024-04-10 18:28:33'),
(367, 2, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-04-10 18:28:38', '2024-04-10 18:28:38'),
(368, 2, 'admin/ikans/create', 'GET', '127.0.0.1', '[]', '2024-04-10 18:35:33', '2024-04-10 18:35:33'),
(369, 2, 'admin/ikans', 'POST', '127.0.0.1', '{\"name\":\"Ikan Guppy\",\"_token\":\"0463qKUVog4Oj9mRBM96ULKtoMUQDGLDklXwE69y\"}', '2024-04-10 18:35:59', '2024-04-10 18:35:59'),
(370, 2, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-04-10 18:36:00', '2024-04-10 18:36:00'),
(371, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-10 19:16:58', '2024-04-10 19:16:58'),
(372, 2, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-04-10 19:19:18', '2024-04-10 19:19:18'),
(373, 2, 'admin/ikans/create', 'GET', '127.0.0.1', '[]', '2024-04-10 19:19:23', '2024-04-10 19:19:23'),
(374, 2, 'admin/ikans', 'POST', '127.0.0.1', '{\"name\":\"Ikan Gold Fish\",\"image_file_del_\":\"new\\/goldfish.jpg,\",\"_token\":\"0463qKUVog4Oj9mRBM96ULKtoMUQDGLDklXwE69y\"}', '2024-04-10 19:20:05', '2024-04-10 19:20:05'),
(375, 2, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-04-10 19:20:06', '2024-04-10 19:20:06'),
(376, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-10 19:20:19', '2024-04-10 19:20:19'),
(377, 2, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-04-10 19:20:21', '2024-04-10 19:20:21'),
(378, 2, 'admin/ikans/2/edit', 'GET', '127.0.0.1', '[]', '2024-04-10 19:20:24', '2024-04-10 19:20:24'),
(379, 2, 'admin/ikans/2', 'PUT', '127.0.0.1', '{\"name\":\"Ikan Gold Fish\",\"_token\":\"0463qKUVog4Oj9mRBM96ULKtoMUQDGLDklXwE69y\",\"_method\":\"PUT\"}', '2024-04-10 19:20:29', '2024-04-10 19:20:29'),
(380, 2, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-04-10 19:20:30', '2024-04-10 19:20:30'),
(381, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-10 19:24:13', '2024-04-10 19:24:13'),
(382, 2, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-04-10 19:24:15', '2024-04-10 19:24:15'),
(383, 2, 'admin/ikans/create', 'GET', '127.0.0.1', '[]', '2024-04-10 19:24:21', '2024-04-10 19:24:21'),
(384, 2, 'admin/ikans', 'POST', '127.0.0.1', '{\"name\":\"Ikan Koki Oranda\",\"_token\":\"0463qKUVog4Oj9mRBM96ULKtoMUQDGLDklXwE69y\"}', '2024-04-10 19:26:41', '2024-04-10 19:26:41'),
(385, 2, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-04-10 19:26:41', '2024-04-10 19:26:41'),
(386, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-10 19:33:52', '2024-04-10 19:33:52'),
(387, 2, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-04-10 19:33:55', '2024-04-10 19:33:55'),
(388, 2, 'admin/ikans/create', 'GET', '127.0.0.1', '[]', '2024-04-10 19:33:57', '2024-04-10 19:33:57'),
(389, 2, 'admin/ikans', 'POST', '127.0.0.1', '{\"name\":\"Ikan Molly\",\"_token\":\"0463qKUVog4Oj9mRBM96ULKtoMUQDGLDklXwE69y\"}', '2024-04-10 19:35:32', '2024-04-10 19:35:32'),
(390, 2, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-04-10 19:35:33', '2024-04-10 19:35:33'),
(391, 2, 'admin/ikans/create', 'GET', '127.0.0.1', '[]', '2024-04-10 19:35:43', '2024-04-10 19:35:43'),
(392, 2, 'admin/ikans', 'POST', '127.0.0.1', '{\"name\":\"Ikan Platy\",\"_token\":\"0463qKUVog4Oj9mRBM96ULKtoMUQDGLDklXwE69y\"}', '2024-04-10 19:37:03', '2024-04-10 19:37:03'),
(393, 2, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-04-10 19:37:04', '2024-04-10 19:37:04'),
(394, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-10 19:38:37', '2024-04-10 19:38:37'),
(395, 2, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-04-10 19:38:39', '2024-04-10 19:38:39'),
(396, 2, 'admin/ikans/create', 'GET', '127.0.0.1', '[]', '2024-04-10 19:38:40', '2024-04-10 19:38:40'),
(397, 2, 'admin/ikans', 'POST', '127.0.0.1', '{\"name\":\"Ikan Manfish\",\"_token\":\"0463qKUVog4Oj9mRBM96ULKtoMUQDGLDklXwE69y\"}', '2024-04-10 19:40:37', '2024-04-10 19:40:37'),
(398, 2, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-04-10 19:40:38', '2024-04-10 19:40:38'),
(399, 2, 'admin/ikans/create', 'GET', '127.0.0.1', '[]', '2024-04-10 19:40:43', '2024-04-10 19:40:43'),
(400, 2, 'admin/ikans', 'POST', '127.0.0.1', '{\"name\":\"Ikan Arwana\",\"_token\":\"0463qKUVog4Oj9mRBM96ULKtoMUQDGLDklXwE69y\"}', '2024-04-10 19:42:18', '2024-04-10 19:42:18'),
(401, 2, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-04-10 19:42:18', '2024-04-10 19:42:18'),
(402, 2, 'admin/ikans/create', 'GET', '127.0.0.1', '[]', '2024-04-10 19:49:31', '2024-04-10 19:49:31'),
(403, 2, 'admin/ikans', 'POST', '127.0.0.1', '{\"name\":\"Sapu Sapu Brushmouth\",\"image_file_del_\":\"new\\/brushmouth.jpg,\",\"_token\":\"0463qKUVog4Oj9mRBM96ULKtoMUQDGLDklXwE69y\"}', '2024-04-10 19:50:31', '2024-04-10 19:50:31'),
(404, 2, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-04-10 19:50:31', '2024-04-10 19:50:31'),
(405, 2, 'admin/ikans/8/edit', 'GET', '127.0.0.1', '[]', '2024-04-10 19:50:34', '2024-04-10 19:50:34'),
(406, 2, 'admin/ikans/8', 'PUT', '127.0.0.1', '{\"name\":\"Sapu Sapu Brushmouth\",\"_token\":\"0463qKUVog4Oj9mRBM96ULKtoMUQDGLDklXwE69y\",\"_method\":\"PUT\"}', '2024-04-10 19:50:38', '2024-04-10 19:50:38'),
(407, 2, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-04-10 19:50:39', '2024-04-10 19:50:39'),
(408, 2, 'admin/ikans/create', 'GET', '127.0.0.1', '[]', '2024-04-10 19:51:32', '2024-04-10 19:51:32'),
(409, 2, 'admin/ikans', 'POST', '127.0.0.1', '{\"name\":\"Ikan Peacock Bass\",\"_token\":\"0463qKUVog4Oj9mRBM96ULKtoMUQDGLDklXwE69y\"}', '2024-04-10 19:51:51', '2024-04-10 19:51:51'),
(410, 2, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-04-10 19:51:52', '2024-04-10 19:51:52'),
(411, 2, 'admin/ikans/create', 'GET', '127.0.0.1', '[]', '2024-04-10 19:51:53', '2024-04-10 19:51:53'),
(412, 2, 'admin/ikans', 'POST', '127.0.0.1', '{\"name\":\"Ikan Channa\",\"_token\":\"0463qKUVog4Oj9mRBM96ULKtoMUQDGLDklXwE69y\"}', '2024-04-10 19:52:10', '2024-04-10 19:52:10'),
(413, 2, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-04-10 19:52:10', '2024-04-10 19:52:10'),
(414, 2, 'admin/ikans/create', 'GET', '127.0.0.1', '[]', '2024-04-10 19:52:15', '2024-04-10 19:52:15'),
(415, 2, 'admin/ikans', 'POST', '127.0.0.1', '{\"name\":\"Ikan Rainbow\",\"_token\":\"0463qKUVog4Oj9mRBM96ULKtoMUQDGLDklXwE69y\"}', '2024-04-10 19:52:31', '2024-04-10 19:52:31'),
(416, 2, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-04-10 19:52:31', '2024-04-10 19:52:31'),
(417, 2, 'admin/ikans/create', 'GET', '127.0.0.1', '[]', '2024-04-10 19:52:33', '2024-04-10 19:52:33'),
(418, 2, 'admin/ikans', 'POST', '127.0.0.1', '{\"name\":\"Ikan Cichild\",\"_token\":\"0463qKUVog4Oj9mRBM96ULKtoMUQDGLDklXwE69y\"}', '2024-04-10 19:52:51', '2024-04-10 19:52:51'),
(419, 2, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-04-10 19:52:52', '2024-04-10 19:52:52'),
(420, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-04-10 19:52:57', '2024-04-10 19:52:57'),
(421, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-11 23:43:37', '2024-04-11 23:43:37'),
(422, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-11 23:43:46', '2024-04-11 23:43:46'),
(423, 2, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"Homestay\",\"model_name\":\"App\\\\Models\\\\Homestay\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\HomestayController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"harga\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas1\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas2\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas3\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas4\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas5\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas6\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"S62z2xqluNovh0XkhenfkI96MNUwiDWc3OyG9enO\"}', '2024-04-11 23:46:19', '2024-04-11 23:46:19'),
(424, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-11 23:46:28', '2024-04-11 23:46:28'),
(425, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-11 23:47:47', '2024-04-11 23:47:47'),
(426, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-12 00:01:55', '2024-04-12 00:01:55'),
(427, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-12 00:01:58', '2024-04-12 00:01:58'),
(428, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-18 07:25:29', '2024-04-18 07:25:29'),
(429, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-18 07:25:37', '2024-04-18 07:25:37'),
(430, 2, 'admin/homestays/create', 'GET', '127.0.0.1', '[]', '2024-04-18 07:25:41', '2024-04-18 07:25:41'),
(431, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-18 07:27:19', '2024-04-18 07:27:19'),
(432, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-18 07:28:51', '2024-04-18 07:28:51'),
(433, 2, 'admin/auth/menu/18', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"yvSqrTIS0x7dk2R9HagmmTdiV90XxQxftPxqOOhB\"}', '2024-04-18 07:28:54', '2024-04-18 07:28:54'),
(434, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-18 07:28:55', '2024-04-18 07:28:55'),
(435, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-18 07:29:03', '2024-04-18 07:29:03'),
(436, 2, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"Homestay\",\"model_name\":\"App\\\\Models\\\\Homestay\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\HomestayController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"harga\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas1\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas2\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas3\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas4\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas5\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas6\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"yvSqrTIS0x7dk2R9HagmmTdiV90XxQxftPxqOOhB\"}', '2024-04-18 07:30:06', '2024-04-18 07:30:06'),
(437, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-18 07:30:08', '2024-04-18 07:30:08'),
(438, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-18 07:31:18', '2024-04-18 07:31:18'),
(439, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-18 07:31:46', '2024-04-18 07:31:46'),
(440, 2, 'admin/homestays/create', 'GET', '127.0.0.1', '[]', '2024-04-18 07:31:48', '2024-04-18 07:31:48'),
(441, 2, 'admin/homestays', 'POST', '127.0.0.1', '{\"name\":\"Homestay Molly\",\"harga\":\"Rp. 150.000\",\"fasilitas1\":\"Kamar Mandi Pribadi\",\"fasilitas2\":\"Kipas Angin\",\"fasilitas3\":\"Musholla\",\"fasilitas4\":\"Perlengkapan Mandi\",\"fasilitas5\":\"Sarapan Pagi\",\"fasilitas6\":null,\"image_file_del_\":\"new\\/HS-molly.jpg,\",\"_token\":\"yvSqrTIS0x7dk2R9HagmmTdiV90XxQxftPxqOOhB\"}', '2024-04-18 07:33:08', '2024-04-18 07:33:08'),
(442, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-18 07:33:08', '2024-04-18 07:33:08'),
(443, 2, 'admin/homestays/1/edit', 'GET', '127.0.0.1', '[]', '2024-04-18 07:33:27', '2024-04-18 07:33:27'),
(444, 2, 'admin/homestays/1', 'PUT', '127.0.0.1', '{\"name\":\"Homestay Molly\",\"harga\":\"Rp. 150.000\",\"fasilitas1\":\"Kamar Mandi Pribadi\",\"fasilitas2\":\"Kipas Angin\",\"fasilitas3\":\"Musholla\",\"fasilitas4\":\"Perlengkapan Mandi\",\"fasilitas5\":\"Sarapan Pagi\",\"fasilitas6\":null,\"_token\":\"yvSqrTIS0x7dk2R9HagmmTdiV90XxQxftPxqOOhB\",\"_method\":\"PUT\"}', '2024-04-18 07:33:31', '2024-04-18 07:33:31'),
(445, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-18 07:33:32', '2024-04-18 07:33:32'),
(446, 2, 'admin/homestays/create', 'GET', '127.0.0.1', '[]', '2024-04-18 07:35:54', '2024-04-18 07:35:54'),
(447, 2, 'admin/homestays', 'POST', '127.0.0.1', '{\"name\":\"Homestay Platy\",\"harga\":\"Rp. 150.000\",\"fasilitas1\":\"Kamar Mandi Bersama\",\"fasilitas2\":\"Kipas Angin\",\"fasilitas3\":\"Perlengkapan Mandi\",\"fasilitas4\":\"Sarapan Pagi\",\"fasilitas5\":null,\"fasilitas6\":null,\"image_file_del_\":\"new\\/HS-platy.jpg,\",\"_token\":\"yvSqrTIS0x7dk2R9HagmmTdiV90XxQxftPxqOOhB\"}', '2024-04-18 07:37:19', '2024-04-18 07:37:19'),
(448, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-18 07:37:19', '2024-04-18 07:37:19'),
(449, 2, 'admin/homestays/2/edit', 'GET', '127.0.0.1', '[]', '2024-04-18 07:37:34', '2024-04-18 07:37:34'),
(450, 2, 'admin/homestays/2', 'PUT', '127.0.0.1', '{\"name\":\"Homestay Platy\",\"harga\":\"Rp. 150.000\",\"fasilitas1\":\"Kamar Mandi Bersama\",\"fasilitas2\":\"Kipas Angin\",\"fasilitas3\":\"Perlengkapan Mandi\",\"fasilitas4\":\"Sarapan Pagi\",\"fasilitas5\":null,\"fasilitas6\":null,\"_token\":\"yvSqrTIS0x7dk2R9HagmmTdiV90XxQxftPxqOOhB\",\"_method\":\"PUT\"}', '2024-04-18 07:37:44', '2024-04-18 07:37:44'),
(451, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-18 07:37:44', '2024-04-18 07:37:44'),
(452, 2, 'admin/homestays/create', 'GET', '127.0.0.1', '[]', '2024-04-18 07:37:46', '2024-04-18 07:37:46'),
(453, 2, 'admin/homestays', 'POST', '127.0.0.1', '{\"name\":\"Homestay Channa\",\"harga\":\"Rp. 150.000\",\"fasilitas1\":\"Kamar Mandi Bersama\",\"fasilitas2\":\"Kipas Angin\",\"fasilitas3\":\"Perlengkapan Mandi\",\"fasilitas4\":\"Sarapan Pagi\",\"fasilitas5\":null,\"fasilitas6\":null,\"_token\":\"yvSqrTIS0x7dk2R9HagmmTdiV90XxQxftPxqOOhB\"}', '2024-04-18 07:38:41', '2024-04-18 07:38:41'),
(454, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-18 07:38:42', '2024-04-18 07:38:42'),
(455, 2, 'admin/homestays/create', 'GET', '127.0.0.1', '[]', '2024-04-18 07:39:00', '2024-04-18 07:39:00'),
(456, 2, 'admin/homestays', 'POST', '127.0.0.1', '{\"name\":\"Homestay Manfish\",\"harga\":\"Rp. 150.000\",\"fasilitas1\":\"Air Conditioner\",\"fasilitas2\":\"Kamar Mandi Pribadi\",\"fasilitas3\":\"Perlengkapan Mandi\",\"fasilitas4\":\"Sarapan Pagi\",\"fasilitas5\":null,\"fasilitas6\":null,\"_token\":\"yvSqrTIS0x7dk2R9HagmmTdiV90XxQxftPxqOOhB\"}', '2024-04-18 07:39:42', '2024-04-18 07:39:42'),
(457, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-18 07:39:43', '2024-04-18 07:39:43'),
(458, 2, 'admin/homestays/create', 'GET', '127.0.0.1', '[]', '2024-04-18 07:39:50', '2024-04-18 07:39:50'),
(459, 2, 'admin/homestays', 'POST', '127.0.0.1', '{\"name\":\"Homestay Guppy\",\"harga\":\"Rp.150.000\",\"fasilitas1\":\"Kamar Mandi Bersama\",\"fasilitas2\":\"Kipas Angin\",\"fasilitas3\":\"Perlengkapan Mandi\",\"fasilitas4\":\"Sarapan Pagi\",\"fasilitas5\":\"Televisi\",\"fasilitas6\":\"Wifi Area\",\"_token\":\"yvSqrTIS0x7dk2R9HagmmTdiV90XxQxftPxqOOhB\"}', '2024-04-18 07:41:05', '2024-04-18 07:41:05'),
(460, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-18 07:41:05', '2024-04-18 07:41:05'),
(461, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-04-18 07:43:08', '2024-04-18 07:43:08'),
(462, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-18 08:04:15', '2024-04-18 08:04:15'),
(463, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-18 08:04:17', '2024-04-18 08:04:17'),
(464, 2, 'admin/homestays/1/edit', 'GET', '127.0.0.1', '[]', '2024-04-18 08:04:21', '2024-04-18 08:04:21'),
(465, 2, 'admin/homestays/1', 'PUT', '127.0.0.1', '{\"name\":\"Homestay Molly\",\"harga\":\"Rp. 150.000\",\"fasilitas1\":\"1. Kamar Mandi Pribadi\",\"fasilitas2\":\"2. Kipas Angin\",\"fasilitas3\":\"3. Musholla\",\"fasilitas4\":\"4. Perlengkapan Mandi\",\"fasilitas5\":\"5. Sarapan Pagi\",\"fasilitas6\":null,\"_token\":\"34ZIm85E3Tf3258e8q6AylHaIBVnNTL7MxufnygT\",\"_method\":\"PUT\"}', '2024-04-18 08:04:35', '2024-04-18 08:04:35'),
(466, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-18 08:04:35', '2024-04-18 08:04:35'),
(467, 2, 'admin/homestays/2/edit', 'GET', '127.0.0.1', '[]', '2024-04-18 08:04:39', '2024-04-18 08:04:39'),
(468, 2, 'admin/homestays/2', 'PUT', '127.0.0.1', '{\"name\":\"Homestay Platy\",\"harga\":\"Rp. 150.000\",\"fasilitas1\":\"1. Kamar Mandi Bersama\",\"fasilitas2\":\"2. Kipas Angin\",\"fasilitas3\":\"3. Perlengkapan Mandi\",\"fasilitas4\":\"4. Sarapan Pagi\",\"fasilitas5\":null,\"fasilitas6\":null,\"_token\":\"34ZIm85E3Tf3258e8q6AylHaIBVnNTL7MxufnygT\",\"_method\":\"PUT\"}', '2024-04-18 08:04:53', '2024-04-18 08:04:53'),
(469, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-18 08:04:54', '2024-04-18 08:04:54'),
(470, 2, 'admin/homestays/3/edit', 'GET', '127.0.0.1', '[]', '2024-04-18 08:04:56', '2024-04-18 08:04:56'),
(471, 2, 'admin/homestays/3', 'PUT', '127.0.0.1', '{\"name\":\"Homestay Channa\",\"harga\":\"Rp. 150.000\",\"fasilitas1\":\"1. Kamar Mandi Bersama\",\"fasilitas2\":\"2. Kipas Angin\",\"fasilitas3\":\"3. Perlengkapan Mandi\",\"fasilitas4\":\"4. Sarapan Pagi\",\"fasilitas5\":null,\"fasilitas6\":null,\"_token\":\"34ZIm85E3Tf3258e8q6AylHaIBVnNTL7MxufnygT\",\"_method\":\"PUT\"}', '2024-04-18 08:05:06', '2024-04-18 08:05:06'),
(472, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-18 08:05:06', '2024-04-18 08:05:06'),
(473, 2, 'admin/homestays/4/edit', 'GET', '127.0.0.1', '[]', '2024-04-18 08:05:09', '2024-04-18 08:05:09'),
(474, 2, 'admin/homestays/4', 'PUT', '127.0.0.1', '{\"name\":\"Homestay Manfish\",\"harga\":\"Rp. 150.000\",\"fasilitas1\":\"1. Air Conditioner\",\"fasilitas2\":\"2. Kamar Mandi Pribadi\",\"fasilitas3\":\"3. Perlengkapan Mandi\",\"fasilitas4\":\"4. Sarapan Pagi\",\"fasilitas5\":null,\"fasilitas6\":null,\"_token\":\"34ZIm85E3Tf3258e8q6AylHaIBVnNTL7MxufnygT\",\"_method\":\"PUT\"}', '2024-04-18 08:05:21', '2024-04-18 08:05:21'),
(475, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-18 08:05:21', '2024-04-18 08:05:21'),
(476, 2, 'admin/homestays/5/edit', 'GET', '127.0.0.1', '[]', '2024-04-18 08:05:23', '2024-04-18 08:05:23'),
(477, 2, 'admin/homestays/5', 'PUT', '127.0.0.1', '{\"name\":\"Homestay Guppy\",\"harga\":\"Rp.150.000\",\"fasilitas1\":\"1. Kamar Mandi Bersama\",\"fasilitas2\":\"2. Kipas Angin\",\"fasilitas3\":\"3. Perlengkapan Mandi\",\"fasilitas4\":\"4. Sarapan Pagi\",\"fasilitas5\":\"5. Televisi\",\"fasilitas6\":\"6. Wifi Area\",\"_token\":\"34ZIm85E3Tf3258e8q6AylHaIBVnNTL7MxufnygT\",\"_method\":\"PUT\"}', '2024-04-18 08:05:39', '2024-04-18 08:05:39'),
(478, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-18 08:05:39', '2024-04-18 08:05:39'),
(479, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-04-18 08:05:45', '2024-04-18 08:05:45'),
(480, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-19 05:30:06', '2024-04-19 05:30:06'),
(481, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-19 05:30:09', '2024-04-19 05:30:09'),
(482, 2, 'admin/homestays/1/edit', 'GET', '127.0.0.1', '[]', '2024-04-19 05:30:14', '2024-04-19 05:30:14'),
(483, 2, 'admin/homestays/1', 'PUT', '127.0.0.1', '{\"name\":\"Homestay Molly\",\"harga\":\"Rp. 150.000\",\"fasilitas1\":\"1. Kamar Mandi Pribadi\",\"fasilitas2\":\"2. Kipas Angin\",\"fasilitas3\":\"3. Musholla\",\"fasilitas4\":\"4. Perlengkapan Mandi\",\"fasilitas5\":\"5. Sarapan Pagi\",\"fasilitas6\":null,\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\",\"_method\":\"PUT\"}', '2024-04-19 05:30:39', '2024-04-19 05:30:39'),
(484, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-19 05:30:39', '2024-04-19 05:30:39'),
(485, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-19 05:31:28', '2024-04-19 05:31:28'),
(486, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-19 05:31:31', '2024-04-19 05:31:31'),
(487, 2, 'admin/auth/menu/19', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\"}', '2024-04-19 05:31:34', '2024-04-19 05:31:34'),
(488, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-19 05:31:35', '2024-04-19 05:31:35'),
(489, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-19 05:31:38', '2024-04-19 05:31:38'),
(490, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-19 05:31:42', '2024-04-19 05:31:42'),
(491, 2, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"Homestay\",\"model_name\":\"App\\\\Models\\\\Homestay\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\HomestayController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"harga\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"link\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas1\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas2\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas3\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas4\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas5\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas6\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\"}', '2024-04-19 05:34:07', '2024-04-19 05:34:07'),
(492, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-19 05:34:11', '2024-04-19 05:34:11'),
(493, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-19 05:34:57', '2024-04-19 05:34:57'),
(494, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-19 05:34:59', '2024-04-19 05:34:59'),
(495, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-19 05:35:31', '2024-04-19 05:35:31'),
(496, 2, 'admin/homestays/create', 'GET', '127.0.0.1', '[]', '2024-04-19 05:35:34', '2024-04-19 05:35:34'),
(497, 2, 'admin/homestays', 'POST', '127.0.0.1', '{\"name\":\"Homestay Molly\",\"harga\":\"Rp. 150.000\",\"link\":\"https:\\/\\/wa.me\\/+6285811062212?text=Permisi,+saya+ingin+reservasi+homestay+molly\",\"fasilitas1\":\"1. Kamar Mandi Pribadi\",\"fasilitas2\":\"2. Kipas Angin\",\"fasilitas3\":\"3. Musholla\",\"fasilitas4\":\"4. Perlengkapan Mandi\",\"fasilitas5\":\"5. Sarapan Pagi\",\"fasilitas6\":null,\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\"}', '2024-04-19 05:36:59', '2024-04-19 05:36:59'),
(498, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-19 05:36:59', '2024-04-19 05:36:59'),
(499, 2, 'admin/homestays/create', 'GET', '127.0.0.1', '[]', '2024-04-19 05:37:07', '2024-04-19 05:37:07'),
(500, 2, 'admin/homestays', 'POST', '127.0.0.1', '{\"name\":\"Homestay Platy\",\"harga\":\"Rp. 150.000\",\"link\":\"https:\\/\\/wa.me\\/+6285811062212?text=Permisi,+saya+ingin+reservasi+homestay+platy\",\"fasilitas1\":\"1. Kamar Mandi Bersama\",\"fasilitas2\":\"2. Kipas Angin\",\"fasilitas3\":\"3. Perlengkapan Mandi\",\"fasilitas4\":\"4. Sarapan Pagi\",\"fasilitas5\":null,\"fasilitas6\":null,\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\"}', '2024-04-19 05:38:29', '2024-04-19 05:38:29'),
(501, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-19 05:38:29', '2024-04-19 05:38:29'),
(502, 2, 'admin/homestays/create', 'GET', '127.0.0.1', '[]', '2024-04-19 05:39:19', '2024-04-19 05:39:19'),
(503, 2, 'admin/homestays', 'POST', '127.0.0.1', '{\"name\":\"Homestay Channa\",\"harga\":\"Rp. 150.000\",\"link\":\"https:\\/\\/wa.me\\/+6285811062212?text=Permisi,+saya+ingin+reservasi+homestay+channa\",\"fasilitas1\":\"1. Kamar Mandi Bersama\",\"fasilitas2\":\"2. Kipas Angin\",\"fasilitas3\":\"3. Perlengkapan Mandi\",\"fasilitas4\":\"4. Sarapan Pagi\",\"fasilitas5\":null,\"fasilitas6\":null,\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\"}', '2024-04-19 05:40:41', '2024-04-19 05:40:41'),
(504, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-19 05:40:42', '2024-04-19 05:40:42'),
(505, 2, 'admin/homestays/create', 'GET', '127.0.0.1', '[]', '2024-04-19 05:40:44', '2024-04-19 05:40:44'),
(506, 2, 'admin/homestays', 'POST', '127.0.0.1', '{\"name\":\"Homestay Manfish\",\"harga\":\"Rp. 150.000\",\"link\":\"https:\\/\\/wa.me\\/+6285811062212?text=Permisi,+saya+ingin+reservasi+homestay+channa\",\"fasilitas1\":\"1. Air Conditioner\",\"fasilitas2\":\"2. Kamar Mandi Pribadi\",\"fasilitas3\":\"3. Perlengkapan Mandi\",\"fasilitas4\":\"4. Sarapan Pagi\",\"fasilitas5\":null,\"fasilitas6\":null,\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\"}', '2024-04-19 05:41:49', '2024-04-19 05:41:49'),
(507, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-19 05:41:50', '2024-04-19 05:41:50'),
(508, 2, 'admin/homestays/4/edit', 'GET', '127.0.0.1', '[]', '2024-04-19 05:41:54', '2024-04-19 05:41:54'),
(509, 2, 'admin/homestays/4', 'PUT', '127.0.0.1', '{\"name\":\"Homestay Manfish\",\"harga\":\"Rp. 150.000\",\"link\":\"https:\\/\\/wa.me\\/+6285811062212?text=Permisi,+saya+ingin+reservasi+homestay+manfish\",\"fasilitas1\":\"1. Air Conditioner\",\"fasilitas2\":\"2. Kamar Mandi Pribadi\",\"fasilitas3\":\"3. Perlengkapan Mandi\",\"fasilitas4\":\"4. Sarapan Pagi\",\"fasilitas5\":null,\"fasilitas6\":null,\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\",\"_method\":\"PUT\"}', '2024-04-19 05:42:02', '2024-04-19 05:42:02'),
(510, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-19 05:42:02', '2024-04-19 05:42:02'),
(511, 2, 'admin/homestays/create', 'GET', '127.0.0.1', '[]', '2024-04-19 05:42:06', '2024-04-19 05:42:06'),
(512, 2, 'admin/homestays', 'POST', '127.0.0.1', '{\"name\":\"Homestay Guppy\",\"harga\":\"Rp. 150.000\",\"link\":\"https:\\/\\/wa.me\\/+6285811062212?text=Permisi,+saya+ingin+reservasi+homestay+guppy\",\"fasilitas1\":\"1. Kamar Mandi Bersama\",\"fasilitas2\":\"2. Kipas Angin\",\"fasilitas3\":\"3. Perlengkapan Mandi\",\"fasilitas4\":\"4. Sarapan Pagi\",\"fasilitas5\":\"5. Televisi\",\"fasilitas6\":\"6. Wifi Area\",\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\"}', '2024-04-19 05:43:26', '2024-04-19 05:43:26'),
(513, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-19 05:43:26', '2024-04-19 05:43:26'),
(514, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-19 05:51:54', '2024-04-19 05:51:54'),
(515, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 05:51:57', '2024-04-19 05:51:57'),
(516, 2, 'admin/pakets/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\"}', '2024-04-19 05:52:04', '2024-04-19 05:52:04'),
(517, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 05:52:05', '2024-04-19 05:52:05'),
(518, 2, 'admin/pakets/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\"}', '2024-04-19 05:52:08', '2024-04-19 05:52:08'),
(519, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 05:52:09', '2024-04-19 05:52:09'),
(520, 2, 'admin/pakets/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\"}', '2024-04-19 05:52:11', '2024-04-19 05:52:11'),
(521, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 05:52:12', '2024-04-19 05:52:12'),
(522, 2, 'admin/pakets/4', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\"}', '2024-04-19 05:52:15', '2024-04-19 05:52:15'),
(523, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 05:52:15', '2024-04-19 05:52:15'),
(524, 2, 'admin/pakets/5', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\"}', '2024-04-19 05:52:26', '2024-04-19 05:52:26'),
(525, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 05:52:27', '2024-04-19 05:52:27'),
(526, 2, 'admin/pakets/6', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\"}', '2024-04-19 05:52:30', '2024-04-19 05:52:30'),
(527, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 05:52:30', '2024-04-19 05:52:30'),
(528, 2, 'admin/pakets/7', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\"}', '2024-04-19 05:52:33', '2024-04-19 05:52:33'),
(529, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 05:52:33', '2024-04-19 05:52:33'),
(530, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-19 05:52:56', '2024-04-19 05:52:56'),
(531, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-19 05:53:00', '2024-04-19 05:53:00'),
(532, 2, 'admin/auth/menu/16', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\"}', '2024-04-19 05:53:04', '2024-04-19 05:53:04'),
(533, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-19 05:53:04', '2024-04-19 05:53:04'),
(534, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-19 05:53:07', '2024-04-19 05:53:07'),
(535, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-19 05:53:23', '2024-04-19 05:53:23'),
(536, 2, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"Paket\",\"model_name\":\"App\\\\Models\\\\Paket\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\PaketController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"type\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"harga\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"link\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas1\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas2\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas3\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas4\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas5\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas6\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas7\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas8\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas9\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fasilitas10\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\"}', '2024-04-19 05:56:13', '2024-04-19 05:56:13'),
(537, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-19 05:56:15', '2024-04-19 05:56:15'),
(538, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-19 05:56:44', '2024-04-19 05:56:44'),
(539, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 05:56:46', '2024-04-19 05:56:46'),
(540, 2, 'admin/pakets/create', 'GET', '127.0.0.1', '[]', '2024-04-19 05:56:48', '2024-04-19 05:56:48'),
(541, 2, 'admin/pakets', 'POST', '127.0.0.1', '{\"name\":\"Paket A\",\"type\":\"Paket Farm Visit\",\"harga\":\"150.000\",\"link\":\"https:\\/\\/wa.me\\/+6285811062212?text=Permisi,+saya+ingin+reservasi+Paket+A+Paket+Farm+Visit\",\"fasilitas1\":\"1. 4 Farm + Edukasi\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Sepeda\",\"fasilitas4\":\"4. Makan & Minum\",\"fasilitas5\":\"5. Kenangan\",\"fasilitas6\":null,\"fasilitas7\":null,\"fasilitas8\":null,\"fasilitas9\":null,\"fasilitas10\":null,\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\"}', '2024-04-19 06:00:31', '2024-04-19 06:00:31'),
(542, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 06:00:32', '2024-04-19 06:00:32'),
(543, 2, 'admin/pakets/create', 'GET', '127.0.0.1', '[]', '2024-04-19 06:00:41', '2024-04-19 06:00:41'),
(544, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 06:00:44', '2024-04-19 06:00:44'),
(545, 2, 'admin/pakets/1/edit', 'GET', '127.0.0.1', '[]', '2024-04-19 06:00:46', '2024-04-19 06:00:46'),
(546, 2, 'admin/pakets/1', 'PUT', '127.0.0.1', '{\"name\":\"Paket A\",\"type\":\"Paket Farm Visit\",\"harga\":\"150.000\",\"link\":\"https:\\/\\/wa.me\\/+6285811062212?text=Permisi,+saya+ingin+reservasi+Paket+A+Paket+Farm+Visit\",\"fasilitas1\":\"1. 4 Farm + Edukasi\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Sepeda\",\"fasilitas4\":\"4. Makan & Minum\",\"fasilitas5\":\"5. Kenangan\",\"fasilitas6\":null,\"fasilitas7\":null,\"fasilitas8\":null,\"fasilitas9\":null,\"fasilitas10\":null,\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\",\"_method\":\"PUT\"}', '2024-04-19 06:00:51', '2024-04-19 06:00:51'),
(547, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 06:00:51', '2024-04-19 06:00:51'),
(548, 2, 'admin/pakets/create', 'GET', '127.0.0.1', '[]', '2024-04-19 06:01:00', '2024-04-19 06:01:00'),
(549, 2, 'admin/pakets', 'POST', '127.0.0.1', '{\"name\":\"Paket B\",\"type\":\"Paket Farm Visit\",\"harga\":\"100.000\",\"link\":\"https:\\/\\/wa.me\\/+6285811062212?text=Permisi,+saya+ingin+reservasi+Paket+B+Paket+Farm+Visit\",\"fasilitas1\":\"1. 2 Farm + Edukasi\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Makan & Minum\",\"fasilitas4\":\"4. Kenangan\",\"fasilitas5\":null,\"fasilitas6\":null,\"fasilitas7\":null,\"fasilitas8\":null,\"fasilitas9\":null,\"fasilitas10\":null,\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\"}', '2024-04-19 06:02:10', '2024-04-19 06:02:10'),
(550, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 06:02:11', '2024-04-19 06:02:11'),
(551, 2, 'admin/pakets/create', 'GET', '127.0.0.1', '[]', '2024-04-19 06:02:13', '2024-04-19 06:02:13'),
(552, 2, 'admin/pakets', 'POST', '127.0.0.1', '{\"name\":\"Paket C\",\"type\":\"Paket Farm Visit\",\"harga\":\"75.000\",\"link\":\"https:\\/\\/wa.me\\/+6285811062212?text=Permisi,+saya+ingin+reservasi+Paket+C+Paket+Farm+Visit\",\"fasilitas1\":\"2 Farm + Edukasi\",\"fasilitas2\":\"Pemandu Wisata\",\"fasilitas3\":\"Snack & Minum\",\"fasilitas4\":\"Kenangan\",\"fasilitas5\":null,\"fasilitas6\":null,\"fasilitas7\":null,\"fasilitas8\":null,\"fasilitas9\":null,\"fasilitas10\":null,\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\"}', '2024-04-19 06:03:16', '2024-04-19 06:03:16'),
(553, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 06:03:16', '2024-04-19 06:03:16'),
(554, 2, 'admin/pakets/create', 'GET', '127.0.0.1', '[]', '2024-04-19 06:03:21', '2024-04-19 06:03:21'),
(555, 2, 'admin/pakets', 'POST', '127.0.0.1', '{\"name\":\"Paket A\",\"type\":\"Paket Anak-Anak\",\"harga\":\"115.000\",\"link\":null,\"fasilitas1\":\"1. 2 Farm\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Atraksi tangkap ikan\",\"fasilitas4\":\"4. Outbound ceria\",\"fasilitas5\":\"5. Makan & Minum\",\"fasilitas6\":\"6. Souvenir\",\"fasilitas7\":\"7. Melukis Wayang Ikan\",\"fasilitas8\":null,\"fasilitas9\":null,\"fasilitas10\":null,\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\"}', '2024-04-19 06:05:08', '2024-04-19 06:05:08'),
(556, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 06:05:09', '2024-04-19 06:05:09'),
(557, 2, 'admin/pakets/4/edit', 'GET', '127.0.0.1', '[]', '2024-04-19 06:05:15', '2024-04-19 06:05:15'),
(558, 2, 'admin/pakets/4', 'PUT', '127.0.0.1', '{\"name\":\"Paket A\",\"type\":\"Paket Anak-Anak\",\"harga\":\"115.000\",\"link\":\"https:\\/\\/wa.me\\/+6285811062212?text=Permisi,+saya+ingin+reservasi+Paket+A+Paket+Anak-Anak\",\"fasilitas1\":\"1. 2 Farm\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Atraksi tangkap ikan\",\"fasilitas4\":\"4. Outbound ceria\",\"fasilitas5\":\"5. Makan & Minum\",\"fasilitas6\":\"6. Souvenir\",\"fasilitas7\":\"7. Melukis Wayang Ikan\",\"fasilitas8\":null,\"fasilitas9\":null,\"fasilitas10\":null,\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\",\"_method\":\"PUT\"}', '2024-04-19 06:05:40', '2024-04-19 06:05:40'),
(559, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 06:05:41', '2024-04-19 06:05:41'),
(560, 2, 'admin/pakets/create', 'GET', '127.0.0.1', '[]', '2024-04-19 06:05:45', '2024-04-19 06:05:45'),
(561, 2, 'admin/pakets', 'POST', '127.0.0.1', '{\"name\":\"Paket B\",\"type\":\"Paket Anak-Anak\",\"harga\":\"85.000\",\"link\":null,\"fasilitas1\":\"1. 2 Farm\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Atraksi tangkap ikan\",\"fasilitas4\":\"4. Outbound ceria\",\"fasilitas5\":\"5. Makan & Minum\",\"fasilitas6\":\"6. Souvenir\",\"fasilitas7\":null,\"fasilitas8\":null,\"fasilitas9\":null,\"fasilitas10\":null,\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\"}', '2024-04-19 06:07:04', '2024-04-19 06:07:04'),
(562, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 06:07:05', '2024-04-19 06:07:05'),
(563, 2, 'admin/pakets/5/edit', 'GET', '127.0.0.1', '[]', '2024-04-19 06:07:07', '2024-04-19 06:07:07'),
(564, 2, 'admin/pakets/5', 'PUT', '127.0.0.1', '{\"name\":\"Paket B\",\"type\":\"Paket Anak-Anak\",\"harga\":\"85.000\",\"link\":\"https:\\/\\/wa.me\\/+6285811062212?text=Permisi,+saya+ingin+reservasi+Paket+B+Paket+Anak-Anak\",\"fasilitas1\":\"1. 2 Farm\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Atraksi tangkap ikan\",\"fasilitas4\":\"4. Outbound ceria\",\"fasilitas5\":\"5. Makan & Minum\",\"fasilitas6\":\"6. Souvenir\",\"fasilitas7\":null,\"fasilitas8\":null,\"fasilitas9\":null,\"fasilitas10\":null,\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\",\"_method\":\"PUT\"}', '2024-04-19 06:07:25', '2024-04-19 06:07:25'),
(565, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 06:07:26', '2024-04-19 06:07:26'),
(566, 2, 'admin/pakets/create', 'GET', '127.0.0.1', '[]', '2024-04-19 06:07:29', '2024-04-19 06:07:29'),
(567, 2, 'admin/pakets', 'POST', '127.0.0.1', '{\"name\":\"Paket A\",\"type\":\"2 Hari 1 Malam\",\"harga\":\"500.00\\/Org *minimal 10 orang\",\"link\":\"https:\\/\\/wa.me\\/+6285811062212?text=Permisi,+saya+ingin+reservasi+Paket+A+Paket+2+Hari+1+Malam\",\"fasilitas1\":\"1. Trainer\",\"fasilitas2\":\"2. Visit Farm\",\"fasilitas3\":\"3. Welcome Drink\",\"fasilitas4\":\"4. Snack dan Makan\",\"fasilitas5\":\"5. Gala Dinner\",\"fasilitas6\":\"6. Free Dokumentasi\",\"fasilitas7\":\"7. Homestay\",\"fasilitas8\":\"8. Sepeda + Sunset\",\"fasilitas9\":\"9. Wayang Ikan\",\"fasilitas10\":\"10. Belajar Gamelan\",\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\"}', '2024-04-19 06:11:38', '2024-04-19 06:11:38'),
(568, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 06:11:39', '2024-04-19 06:11:39'),
(569, 2, 'admin/pakets/create', 'GET', '127.0.0.1', '[]', '2024-04-19 06:11:46', '2024-04-19 06:11:46'),
(570, 2, 'admin/pakets', 'POST', '127.0.0.1', '{\"name\":\"Paket B\",\"type\":\"2 Hari 1 Malam\",\"harga\":\"450.000\\/Org *Minimal 10 orang\",\"link\":null,\"fasilitas1\":\"1. Trainer\",\"fasilitas2\":\"2. Visit Farm\",\"fasilitas3\":\"3. Welcome Drink\",\"fasilitas4\":\"4. Snack dan Makan\",\"fasilitas5\":\"5. Gala Dinner\",\"fasilitas6\":\"6. Free Dokumentasi\",\"fasilitas7\":\"7. Homestay\",\"fasilitas8\":\"8. Sepeda + Sunset\",\"fasilitas9\":\"9. Wayang Ikan\",\"fasilitas10\":null,\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\"}', '2024-04-19 06:13:35', '2024-04-19 06:13:35'),
(571, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 06:13:36', '2024-04-19 06:13:36'),
(572, 2, 'admin/pakets/6/edit', 'GET', '127.0.0.1', '[]', '2024-04-19 06:13:41', '2024-04-19 06:13:41'),
(573, 2, 'admin/pakets/6', 'PUT', '127.0.0.1', '{\"name\":\"Paket A\",\"type\":\"2 Hari 1 Malam\",\"harga\":\"500.00\\/Org *Minimal 10 orang\",\"link\":\"https:\\/\\/wa.me\\/+6285811062212?text=Permisi,+saya+ingin+reservasi+Paket+A+Paket+2+Hari+1+Malam\",\"fasilitas1\":\"1. Trainer\",\"fasilitas2\":\"2. Visit Farm\",\"fasilitas3\":\"3. Welcome Drink\",\"fasilitas4\":\"4. Snack dan Makan\",\"fasilitas5\":\"5. Gala Dinner\",\"fasilitas6\":\"6. Free Dokumentasi\",\"fasilitas7\":\"7. Homestay\",\"fasilitas8\":\"8. Sepeda + Sunset\",\"fasilitas9\":\"9. Wayang Ikan\",\"fasilitas10\":\"10. Belajar Gamelan\",\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\",\"_method\":\"PUT\"}', '2024-04-19 06:13:48', '2024-04-19 06:13:48'),
(574, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 06:13:49', '2024-04-19 06:13:49'),
(575, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 06:14:00', '2024-04-19 06:14:00'),
(576, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-19 06:18:40', '2024-04-19 06:18:40'),
(577, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 06:18:42', '2024-04-19 06:18:42'),
(578, 2, 'admin/pakets/6/edit', 'GET', '127.0.0.1', '[]', '2024-04-19 06:18:46', '2024-04-19 06:18:46'),
(579, 2, 'admin/pakets/6', 'PUT', '127.0.0.1', '{\"name\":\"Paket A\",\"type\":\"2 Hari 1 Malam\",\"harga\":\"500.00\\/Org *Minimal 10 orang\",\"link\":\"https:\\/\\/wa.me\\/+6285811062212?text=Permisi,+saya+ingin+reservasi+Paket+A+Paket+2+Hari+1+Malam\",\"fasilitas1\":\"1. Trainer\",\"fasilitas2\":\"2. Visit Farm\",\"fasilitas3\":\"3. Welcome Drink\",\"fasilitas4\":\"4. Snack dan Makan\",\"fasilitas5\":\"5. Gala Dinner\",\"fasilitas6\":\"6. Free Dokumentasi\",\"fasilitas7\":\"7. Homestay\",\"fasilitas8\":\"8. Sepeda + Sunset\",\"fasilitas9\":\"9. Wayang Ikan\",\"fasilitas10\":\"10. Belajar Gamelan\",\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\",\"_method\":\"PUT\"}', '2024-04-19 06:18:50', '2024-04-19 06:18:50'),
(580, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 06:18:51', '2024-04-19 06:18:51'),
(581, 2, 'admin/pakets/7/edit', 'GET', '127.0.0.1', '[]', '2024-04-19 06:18:52', '2024-04-19 06:18:52'),
(582, 2, 'admin/pakets/7', 'PUT', '127.0.0.1', '{\"name\":\"Paket B\",\"type\":\"2 Hari 1 Malam\",\"harga\":\"450.000\\/Org *Minimal 10 orang\",\"link\":\"https:\\/\\/wa.me\\/+6285811062212?text=Permisi,+saya+ingin+reservasi+Paket+B+Paket+2+Hari+1+Malam\",\"fasilitas1\":\"1. Trainer\",\"fasilitas2\":\"2. Visit Farm\",\"fasilitas3\":\"3. Welcome Drink\",\"fasilitas4\":\"4. Snack dan Makan\",\"fasilitas5\":\"5. Gala Dinner\",\"fasilitas6\":\"6. Free Dokumentasi\",\"fasilitas7\":\"7. Homestay\",\"fasilitas8\":\"8. Sepeda + Sunset\",\"fasilitas9\":\"9. Wayang Ikan\",\"fasilitas10\":null,\"_token\":\"5RUjwIXciN0ccHuDVhuuJ31cljfA2jdUuXJi48si\",\"_method\":\"PUT\"}', '2024-04-19 06:19:00', '2024-04-19 06:19:00'),
(583, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 06:19:01', '2024-04-19 06:19:01'),
(584, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-04-19 06:19:06', '2024-04-19 06:19:06'),
(585, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-19 06:26:38', '2024-04-19 06:26:38'),
(586, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-04-19 06:26:40', '2024-04-19 06:26:40'),
(587, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 06:26:41', '2024-04-19 06:26:41'),
(588, 2, 'admin/pakets/2/edit', 'GET', '127.0.0.1', '[]', '2024-04-19 06:26:44', '2024-04-19 06:26:44'),
(589, 2, 'admin/pakets/2', 'PUT', '127.0.0.1', '{\"name\":\"Paket B\",\"type\":\"Paket Farm Visit\",\"harga\":\"100.000\",\"link\":\"https:\\/\\/wa.me\\/+6285811062212?text=Permisi,+saya+ingin+reservasi+Paket+B+Paket+Farm+Visit\",\"fasilitas1\":\"1. 2 Farm + Edukasi\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Makan & Minum\",\"fasilitas4\":\"4. Kenangan\",\"fasilitas5\":null,\"fasilitas6\":null,\"fasilitas7\":null,\"fasilitas8\":null,\"fasilitas9\":null,\"fasilitas10\":null,\"_token\":\"c2MqYKXhqeGIJZEpDq1F0FDhdIR0VAHGKpXwJQOW\",\"_method\":\"PUT\"}', '2024-04-19 06:26:47', '2024-04-19 06:26:47'),
(590, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 06:26:47', '2024-04-19 06:26:47'),
(591, 2, 'admin/pakets/3/edit', 'GET', '127.0.0.1', '[]', '2024-04-19 06:26:49', '2024-04-19 06:26:49'),
(592, 2, 'admin/pakets/3', 'PUT', '127.0.0.1', '{\"name\":\"Paket C\",\"type\":\"Paket Farm Visit\",\"harga\":\"75.000\",\"link\":\"https:\\/\\/wa.me\\/+6285811062212?text=Permisi,+saya+ingin+reservasi+Paket+C+Paket+Farm+Visit\",\"fasilitas1\":\"1. 2 Farm + Edukasi\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Snack & Minum\",\"fasilitas4\":\"4. Kenangan\",\"fasilitas5\":null,\"fasilitas6\":null,\"fasilitas7\":null,\"fasilitas8\":null,\"fasilitas9\":null,\"fasilitas10\":null,\"_token\":\"c2MqYKXhqeGIJZEpDq1F0FDhdIR0VAHGKpXwJQOW\",\"_method\":\"PUT\"}', '2024-04-19 06:26:58', '2024-04-19 06:26:58'),
(593, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-04-19 06:26:59', '2024-04-19 06:26:59'),
(594, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-04-19 06:27:04', '2024-04-19 06:27:04'),
(595, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-10 20:49:32', '2024-06-10 20:49:32'),
(596, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-06-10 20:49:40', '2024-06-10 20:49:40'),
(597, 2, 'admin/pakets/6/edit', 'GET', '127.0.0.1', '[]', '2024-06-10 20:49:47', '2024-06-10 20:49:47'),
(598, 2, 'admin/pakets/6', 'PUT', '127.0.0.1', '{\"name\":\"Paket A\",\"type\":\"2 Hari 1 Malam\",\"harga\":\"500.00\\/Org *Minimal 10 orang\",\"link\":\"https:\\/\\/wa.me\\/+6285811062212?text=Permisi,+saya+ingin+reservasi+Paket+A+Paket+2+Hari+1+Malam\",\"fasilitas1\":\"1. Trainer + Visit Farm\",\"fasilitas2\":\"2. Welcome Drink\",\"fasilitas3\":\"3. Snack dan Makan\",\"fasilitas4\":\"4. Gala Dinner\",\"fasilitas5\":\"5. Free Dokumentasi\",\"fasilitas6\":\"6. Homestay\",\"fasilitas7\":\"7. Sepeda + Sunset\",\"fasilitas8\":\"8. Wayang Ikan\",\"fasilitas9\":\"9. Belajar Gamelan\",\"fasilitas10\":null,\"_token\":\"wL8uvVxcP5dsm224FDNISYdYxn7ZiVG2xGCn1PYR\",\"_method\":\"PUT\"}', '2024-06-10 20:51:02', '2024-06-10 20:51:02'),
(599, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-06-10 20:51:03', '2024-06-10 20:51:03'),
(600, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-06-10 20:51:09', '2024-06-10 20:51:09'),
(601, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-10 23:16:49', '2024-06-10 23:16:49'),
(602, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-06-10 23:16:57', '2024-06-10 23:16:57'),
(603, 2, 'admin/homestays/5/edit', 'GET', '127.0.0.1', '[]', '2024-06-10 23:17:07', '2024-06-10 23:17:07');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(604, 2, 'admin/homestays/5', 'PUT', '127.0.0.1', '{\"name\":\"Homestay Guppy\",\"harga\":\"Rp. 150.000\",\"link\":\"https:\\/\\/wa.me\\/+6285811062212?text=Permisi,+saya+ingin+reservasi+homestay+guppy\",\"fasilitas1\":\"1. Kamar Mandi Bersama\",\"fasilitas2\":\"2. Kipas Angin\",\"fasilitas3\":\"3. Perlengkapan Mandi\",\"fasilitas4\":\"4. Sarapan Pagi\",\"fasilitas5\":\"5. Televisi + Wifi Area\",\"fasilitas6\":null,\"_token\":\"Z2Z5wyYL1zigDpSmisKOq12O7AYvszQoORnzAYRt\",\"_method\":\"PUT\"}', '2024-06-10 23:17:25', '2024-06-10 23:17:25'),
(605, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-06-10 23:17:25', '2024-06-10 23:17:25'),
(606, 2, 'admin/homestays/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-10 23:17:51', '2024-06-10 23:17:51'),
(607, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-06-10 23:17:55', '2024-06-10 23:17:55'),
(608, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-10 23:23:30', '2024-06-10 23:23:30'),
(609, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-06-10 23:23:36', '2024-06-10 23:23:36'),
(610, 2, 'admin/pakets/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-10 23:23:40', '2024-06-10 23:23:40'),
(611, 2, 'admin/pakets/1', 'PUT', '127.0.0.1', '{\"name\":\"Paket A\",\"type\":\"Paket Farm Visit\",\"harga\":\"150.000\",\"link\":\"https:\\/\\/wa.me\\/+62882225208880?text=Permisi,+saya+ingin+reservasi+Paket+A+Paket+Farm+Visit\",\"fasilitas1\":\"1. 4 Farm + Edukasi\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Sepeda\",\"fasilitas4\":\"4. Makan & Minum\",\"fasilitas5\":\"5. Kenangan\",\"fasilitas6\":null,\"fasilitas7\":null,\"fasilitas8\":null,\"fasilitas9\":null,\"fasilitas10\":null,\"_token\":\"iRezrJnVhrFEp7TWXSDjsHWUev0nOMd8Po9wtB9J\",\"_method\":\"PUT\"}', '2024-06-10 23:24:14', '2024-06-10 23:24:14'),
(612, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-06-10 23:24:14', '2024-06-10 23:24:14'),
(613, 2, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-06-10 23:25:05', '2024-06-10 23:25:05'),
(614, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-06-10 23:25:08', '2024-06-10 23:25:08'),
(615, 2, 'admin/pakets/2/edit', 'GET', '127.0.0.1', '[]', '2024-06-10 23:25:14', '2024-06-10 23:25:14'),
(616, 2, 'admin/pakets/2', 'PUT', '127.0.0.1', '{\"name\":\"Paket B\",\"type\":\"Paket Farm Visit\",\"harga\":\"100.000\",\"link\":\"https:\\/\\/wa.me\\/+6285811062212?text=Permisi,+saya+ingin+reservasi+Paket+B+Paket+Farm+Visit\",\"fasilitas1\":\"1. 2 Farm + Edukasi\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Makan & Minum\",\"fasilitas4\":\"4. Kenangan\",\"fasilitas5\":null,\"fasilitas6\":null,\"fasilitas7\":null,\"fasilitas8\":null,\"fasilitas9\":null,\"fasilitas10\":null,\"_token\":\"iRezrJnVhrFEp7TWXSDjsHWUev0nOMd8Po9wtB9J\",\"_method\":\"PUT\"}', '2024-06-10 23:25:21', '2024-06-10 23:25:21'),
(617, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-06-10 23:25:21', '2024-06-10 23:25:21'),
(618, 2, 'admin/pakets/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-10 23:25:23', '2024-06-10 23:25:23'),
(619, 2, 'admin/pakets/1', 'PUT', '127.0.0.1', '{\"name\":\"Paket A\",\"type\":\"Paket Farm Visit\",\"harga\":\"150.000\",\"link\":\"https:\\/\\/wa.me\\/+6285811062212?text=Permisi,+saya+ingin+reservasi+Paket+A+Paket+Farm+Visit\",\"fasilitas1\":\"1. 4 Farm + Edukasi\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Sepeda\",\"fasilitas4\":\"4. Makan & Minum\",\"fasilitas5\":\"5. Kenangan\",\"fasilitas6\":null,\"fasilitas7\":null,\"fasilitas8\":null,\"fasilitas9\":null,\"fasilitas10\":null,\"_token\":\"iRezrJnVhrFEp7TWXSDjsHWUev0nOMd8Po9wtB9J\",\"_method\":\"PUT\"}', '2024-06-10 23:25:28', '2024-06-10 23:25:28'),
(620, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-06-10 23:25:28', '2024-06-10 23:25:28'),
(621, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-06-10 23:27:21', '2024-06-10 23:27:21'),
(622, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-06-10 23:27:23', '2024-06-10 23:27:23'),
(623, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-11 00:03:58', '2024-06-11 00:03:58'),
(624, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-06-11 00:04:02', '2024-06-11 00:04:02'),
(625, 2, 'admin/pakets/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-11 00:04:04', '2024-06-11 00:04:04'),
(626, 2, 'admin/pakets/1', 'PUT', '127.0.0.1', '{\"name\":\"Paket A\",\"type\":\"Paket Farm Visit\",\"harga\":\"150.000\",\"link\":\"https:\\/\\/wa.me\\/6285811062212?text=Halo%20Desa%20Wisata%20Kajii%2C%0ASaya%20ingin%20melakukan%20reservasi%20paket%20wisata.%20Berikut%20detail%20saya%3A%0A%0ANama%20pemesan%3A%20%0AHari%2Ftanggal%3A%20%0ANo%20telepon%3A%20%0APaket%20Wisata%3A%20Paket%20A%20(Farm%20Visit)%20%0A%0ATerima%20kasih!\",\"fasilitas1\":\"1. 4 Farm + Edukasi\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Sepeda\",\"fasilitas4\":\"4. Makan & Minum\",\"fasilitas5\":\"5. Kenangan\",\"fasilitas6\":null,\"fasilitas7\":null,\"fasilitas8\":null,\"fasilitas9\":null,\"fasilitas10\":null,\"_token\":\"1wmlxS94qAME0sgZLydiagYrRsn6bEEKmBXUshkI\",\"_method\":\"PUT\"}', '2024-06-11 00:04:12', '2024-06-11 00:04:12'),
(627, 2, 'admin/pakets/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-11 00:04:15', '2024-06-11 00:04:15'),
(628, 2, 'admin/pakets/1', 'PUT', '127.0.0.1', '{\"name\":\"Paket A\",\"type\":\"Paket Farm Visit\",\"harga\":\"150.000\",\"link\":\"https:\\/\\/wa.me\\/6285811062212?text=Halo%20Desa%20Wisata%20Kajii%2C%0ASaya%20ingin%20melakukan%20reservasi%20paket%20wisata.%20Berikut%20detail%20saya%3A%0A%0ANama%20pemesan%3A%20%0AHari%2Ftanggal%3A%20%0ANo%20telepon%3A%20%0APaket%20Wisata%3A%20Paket%20A%20(Farm%20Visit)%20%0A%0ATerima%20kasih!\",\"fasilitas1\":\"1. 4 Farm + Edukasi\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Sepeda\",\"fasilitas4\":\"4. Makan & Minum\",\"fasilitas5\":\"5. Kenangan\",\"fasilitas6\":null,\"fasilitas7\":null,\"fasilitas8\":null,\"fasilitas9\":null,\"fasilitas10\":null,\"_token\":\"1wmlxS94qAME0sgZLydiagYrRsn6bEEKmBXUshkI\",\"_method\":\"PUT\"}', '2024-06-11 00:05:30', '2024-06-11 00:05:30'),
(629, 2, 'admin/pakets/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-11 00:05:30', '2024-06-11 00:05:30'),
(630, 2, 'admin/pakets/1', 'PUT', '127.0.0.1', '{\"name\":\"Paket A\",\"type\":\"Paket Farm Visit\",\"harga\":\"150.000\",\"link\":\"https:\\/\\/bit.ly\\/3KY3L6d\",\"fasilitas1\":\"1. 4 Farm + Edukasi\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Sepeda\",\"fasilitas4\":\"4. Makan & Minum\",\"fasilitas5\":\"5. Kenangan\",\"fasilitas6\":null,\"fasilitas7\":null,\"fasilitas8\":null,\"fasilitas9\":null,\"fasilitas10\":null,\"_token\":\"1wmlxS94qAME0sgZLydiagYrRsn6bEEKmBXUshkI\",\"_method\":\"PUT\"}', '2024-06-11 00:08:14', '2024-06-11 00:08:14'),
(631, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-06-11 00:08:14', '2024-06-11 00:08:14'),
(632, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-06-11 00:08:21', '2024-06-11 00:08:21'),
(633, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-11 00:10:27', '2024-06-11 00:10:27'),
(634, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-06-11 00:10:30', '2024-06-11 00:10:30'),
(635, 2, 'admin/pakets/2/edit', 'GET', '127.0.0.1', '[]', '2024-06-11 00:10:33', '2024-06-11 00:10:33'),
(636, 2, 'admin/pakets/2', 'PUT', '127.0.0.1', '{\"name\":\"Paket B\",\"type\":\"Paket Farm Visit\",\"harga\":\"100.000\",\"link\":\"https:\\/\\/bit.ly\\/4cfwLBP\",\"fasilitas1\":\"1. 2 Farm + Edukasi\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Makan & Minum\",\"fasilitas4\":\"4. Kenangan\",\"fasilitas5\":null,\"fasilitas6\":null,\"fasilitas7\":null,\"fasilitas8\":null,\"fasilitas9\":null,\"fasilitas10\":null,\"_token\":\"jWrY6uQWF7eZIOnpwYH0n15hRyFuTu8jeXVyQhZ9\",\"_method\":\"PUT\"}', '2024-06-11 00:11:08', '2024-06-11 00:11:08'),
(637, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-06-11 00:11:08', '2024-06-11 00:11:08'),
(638, 2, 'admin/pakets/3/edit', 'GET', '127.0.0.1', '[]', '2024-06-11 00:11:49', '2024-06-11 00:11:49'),
(639, 2, 'admin/pakets/3', 'PUT', '127.0.0.1', '{\"name\":\"Paket C\",\"type\":\"Paket Farm Visit\",\"harga\":\"75.000\",\"link\":\"https:\\/\\/bit.ly\\/4aWpQMH\",\"fasilitas1\":\"1. 2 Farm + Edukasi\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Snack & Minum\",\"fasilitas4\":\"4. Kenangan\",\"fasilitas5\":null,\"fasilitas6\":null,\"fasilitas7\":null,\"fasilitas8\":null,\"fasilitas9\":null,\"fasilitas10\":null,\"_token\":\"jWrY6uQWF7eZIOnpwYH0n15hRyFuTu8jeXVyQhZ9\",\"_method\":\"PUT\"}', '2024-06-11 00:11:52', '2024-06-11 00:11:52'),
(640, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-06-11 00:11:53', '2024-06-11 00:11:53'),
(641, 2, 'admin/pakets/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-11 00:12:39', '2024-06-11 00:12:39'),
(642, 2, 'admin/pakets/1', 'PUT', '127.0.0.1', '{\"name\":\"Paket A\",\"type\":\"Paket Farm Visit\",\"harga\":\"150.000\",\"link\":\"https:\\/\\/bit.ly\\/3KY3L6d\",\"fasilitas1\":\"1. 4 Farm + Edukasi\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Sepeda\",\"fasilitas4\":\"4. Makan & Minum\",\"fasilitas5\":\"5. Kenangan\",\"fasilitas6\":null,\"fasilitas7\":null,\"fasilitas8\":null,\"fasilitas9\":null,\"fasilitas10\":null,\"_token\":\"jWrY6uQWF7eZIOnpwYH0n15hRyFuTu8jeXVyQhZ9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/pakets\"}', '2024-06-11 00:12:41', '2024-06-11 00:12:41'),
(643, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-06-11 00:12:42', '2024-06-11 00:12:42'),
(644, 2, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-06-11 00:12:44', '2024-06-11 00:12:44'),
(645, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-06-11 00:12:45', '2024-06-11 00:12:45'),
(646, 2, 'admin/pakets/4/edit', 'GET', '127.0.0.1', '[]', '2024-06-11 00:12:51', '2024-06-11 00:12:51'),
(647, 2, 'admin/pakets/4', 'PUT', '127.0.0.1', '{\"name\":\"Paket A\",\"type\":\"Paket Anak-Anak\",\"harga\":\"115.000\",\"link\":\"https:\\/\\/bit.ly\\/3xefkmm\",\"fasilitas1\":\"1. 2 Farm\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Atraksi tangkap ikan\",\"fasilitas4\":\"4. Outbound ceria\",\"fasilitas5\":\"5. Makan & Minum\",\"fasilitas6\":\"6. Souvenir\",\"fasilitas7\":\"7. Melukis Wayang Ikan\",\"fasilitas8\":null,\"fasilitas9\":null,\"fasilitas10\":null,\"_token\":\"jWrY6uQWF7eZIOnpwYH0n15hRyFuTu8jeXVyQhZ9\",\"_method\":\"PUT\"}', '2024-06-11 00:13:47', '2024-06-11 00:13:47'),
(648, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-06-11 00:13:47', '2024-06-11 00:13:47'),
(649, 2, 'admin/pakets/5/edit', 'GET', '127.0.0.1', '[]', '2024-06-11 00:13:51', '2024-06-11 00:13:51'),
(650, 2, 'admin/pakets/5', 'PUT', '127.0.0.1', '{\"name\":\"Paket B\",\"type\":\"Paket Anak-Anak\",\"harga\":\"85.000\",\"link\":\"https:\\/\\/bit.ly\\/3Rl0T6R\",\"fasilitas1\":\"1. 2 Farm\",\"fasilitas2\":\"2. Pemandu Wisata\",\"fasilitas3\":\"3. Atraksi tangkap ikan\",\"fasilitas4\":\"4. Outbound ceria\",\"fasilitas5\":\"5. Makan & Minum\",\"fasilitas6\":\"6. Souvenir\",\"fasilitas7\":null,\"fasilitas8\":null,\"fasilitas9\":null,\"fasilitas10\":null,\"_token\":\"jWrY6uQWF7eZIOnpwYH0n15hRyFuTu8jeXVyQhZ9\",\"_method\":\"PUT\"}', '2024-06-11 00:14:17', '2024-06-11 00:14:17'),
(651, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-06-11 00:14:17', '2024-06-11 00:14:17'),
(652, 2, 'admin/pakets/6/edit', 'GET', '127.0.0.1', '[]', '2024-06-11 00:16:23', '2024-06-11 00:16:23'),
(653, 2, 'admin/pakets/6', 'PUT', '127.0.0.1', '{\"name\":\"Paket A\",\"type\":\"2 Hari 1 Malam\",\"harga\":\"500.00\\/Org *Minimal 10 orang\",\"link\":\"https:\\/\\/bit.ly\\/3x8Cyub\",\"fasilitas1\":\"1. Trainer + Visit Farm\",\"fasilitas2\":\"2. Welcome Drink\",\"fasilitas3\":\"3. Snack dan Makan\",\"fasilitas4\":\"4. Gala Dinner\",\"fasilitas5\":\"5. Free Dokumentasi\",\"fasilitas6\":\"6. Homestay\",\"fasilitas7\":\"7. Sepeda + Sunset\",\"fasilitas8\":\"8. Wayang Ikan\",\"fasilitas9\":\"9. Belajar Gamelan\",\"fasilitas10\":null,\"_token\":\"jWrY6uQWF7eZIOnpwYH0n15hRyFuTu8jeXVyQhZ9\",\"_method\":\"PUT\"}', '2024-06-11 00:16:28', '2024-06-11 00:16:28'),
(654, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-06-11 00:16:28', '2024-06-11 00:16:28'),
(655, 2, 'admin/pakets/7/edit', 'GET', '127.0.0.1', '[]', '2024-06-11 00:17:04', '2024-06-11 00:17:04'),
(656, 2, 'admin/pakets/7', 'PUT', '127.0.0.1', '{\"name\":\"Paket B\",\"type\":\"2 Hari 1 Malam\",\"harga\":\"450.000\\/Org *Minimal 10 orang\",\"link\":\"https:\\/\\/bit.ly\\/3xmOF6N\",\"fasilitas1\":\"1. Trainer\",\"fasilitas2\":\"2. Visit Farm\",\"fasilitas3\":\"3. Welcome Drink\",\"fasilitas4\":\"4. Snack dan Makan\",\"fasilitas5\":\"5. Gala Dinner\",\"fasilitas6\":\"6. Free Dokumentasi\",\"fasilitas7\":\"7. Homestay\",\"fasilitas8\":\"8. Sepeda + Sunset\",\"fasilitas9\":\"9. Wayang Ikan\",\"fasilitas10\":null,\"_token\":\"jWrY6uQWF7eZIOnpwYH0n15hRyFuTu8jeXVyQhZ9\",\"_method\":\"PUT\"}', '2024-06-11 00:17:09', '2024-06-11 00:17:09'),
(657, 2, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-06-11 00:17:09', '2024-06-11 00:17:09'),
(658, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-06-11 00:17:20', '2024-06-11 00:17:20'),
(659, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-11 00:25:58', '2024-06-11 00:25:58'),
(660, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-11 00:26:02', '2024-06-11 00:26:02'),
(661, 2, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-11 00:26:06', '2024-06-11 00:26:06'),
(662, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-11 00:26:16', '2024-06-11 00:26:16'),
(663, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-06-11 00:26:20', '2024-06-11 00:26:20'),
(664, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-11 00:26:27', '2024-06-11 00:26:27'),
(665, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-11 00:26:35', '2024-06-11 00:26:35'),
(666, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-11 00:26:38', '2024-06-11 00:26:38'),
(667, 1, 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"desakajii\",\"name\":\"Administrator\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$MJDCY9jMGjyFxiCu\\/To3JOaxx3ioFhzvUvJ99QRe4QBIQL6bU0sUq\",\"roles\":[\"1\",null],\"search_terms\":null,\"permissions\":[null],\"_token\":\"ii8GCM6UBYMCU1KJOgQgBfTf6s9mR4jCLpEoFh7Q\",\"_method\":\"PUT\"}', '2024-06-11 00:26:55', '2024-06-11 00:26:55'),
(668, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-11 00:26:55', '2024-06-11 00:26:55'),
(669, 1, 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"desakajii1\",\"name\":\"Administrator\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$MJDCY9jMGjyFxiCu\\/To3JOaxx3ioFhzvUvJ99QRe4QBIQL6bU0sUq\",\"roles\":[\"1\",null],\"search_terms\":null,\"permissions\":[null],\"_token\":\"ii8GCM6UBYMCU1KJOgQgBfTf6s9mR4jCLpEoFh7Q\",\"_method\":\"PUT\"}', '2024-06-11 00:27:03', '2024-06-11 00:27:03'),
(670, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-11 00:27:03', '2024-06-11 00:27:03'),
(671, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-06-11 00:27:09', '2024-06-11 00:27:09'),
(672, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-11 00:27:19', '2024-06-11 00:27:19'),
(673, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-06-11 00:27:25', '2024-06-11 00:27:25'),
(674, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"desakajii\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$MJDCY9jMGjyFxiCu\\/To3JOaxx3ioFhzvUvJ99QRe4QBIQL6bU0sUq\",\"_token\":\"SUYKcSSYiFDoqFje6vVlEB3Rmw2ELewAru0OvSzi\",\"_method\":\"PUT\"}', '2024-06-11 00:27:50', '2024-06-11 00:27:50'),
(675, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-06-11 00:27:50', '2024-06-11 00:27:50'),
(676, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"desakajii\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$MJDCY9jMGjyFxiCu\\/To3JOaxx3ioFhzvUvJ99QRe4QBIQL6bU0sUq\",\"_token\":\"SUYKcSSYiFDoqFje6vVlEB3Rmw2ELewAru0OvSzi\",\"_method\":\"PUT\"}', '2024-06-11 00:28:02', '2024-06-11 00:28:02'),
(677, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-06-11 00:28:03', '2024-06-11 00:28:03'),
(678, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-11 00:28:06', '2024-06-11 00:28:06'),
(679, 1, 'admin/auth/users/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"SUYKcSSYiFDoqFje6vVlEB3Rmw2ELewAru0OvSzi\"}', '2024-06-11 00:28:09', '2024-06-11 00:28:09'),
(680, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-11 00:28:10', '2024-06-11 00:28:10'),
(681, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-11 00:28:12', '2024-06-11 00:28:12'),
(682, 1, 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"desakajii\",\"name\":\"desakajii\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$MJDCY9jMGjyFxiCu\\/To3JOaxx3ioFhzvUvJ99QRe4QBIQL6bU0sUq\",\"roles\":[\"1\",null],\"search_terms\":null,\"permissions\":[null],\"_token\":\"SUYKcSSYiFDoqFje6vVlEB3Rmw2ELewAru0OvSzi\",\"_method\":\"PUT\"}', '2024-06-11 00:28:15', '2024-06-11 00:28:15'),
(683, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-11 00:28:16', '2024-06-11 00:28:16'),
(684, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-11 00:28:19', '2024-06-11 00:28:19'),
(685, 1, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-06-11 00:28:36', '2024-06-11 00:28:36'),
(686, 1, 'admin/pakets/6/edit', 'GET', '127.0.0.1', '[]', '2024-06-11 00:28:38', '2024-06-11 00:28:38'),
(687, 1, 'admin/pakets/6', 'PUT', '127.0.0.1', '{\"name\":\"Paket A\",\"type\":\"2 Hari 1 Malam\",\"harga\":\"500.000\\/Org *Minimal 10 orang\",\"link\":\"https:\\/\\/bit.ly\\/3x8Cyub\",\"fasilitas1\":\"1. Trainer + Visit Farm\",\"fasilitas2\":\"2. Welcome Drink\",\"fasilitas3\":\"3. Snack dan Makan\",\"fasilitas4\":\"4. Gala Dinner\",\"fasilitas5\":\"5. Free Dokumentasi\",\"fasilitas6\":\"6. Homestay\",\"fasilitas7\":\"7. Sepeda + Sunset\",\"fasilitas8\":\"8. Wayang Ikan\",\"fasilitas9\":\"9. Belajar Gamelan\",\"fasilitas10\":null,\"_token\":\"SUYKcSSYiFDoqFje6vVlEB3Rmw2ELewAru0OvSzi\",\"_method\":\"PUT\"}', '2024-06-11 00:28:43', '2024-06-11 00:28:43'),
(688, 1, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-06-11 00:28:44', '2024-06-11 00:28:44'),
(689, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-06-11 00:28:51', '2024-06-11 00:28:51'),
(690, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-11 00:28:59', '2024-06-11 00:28:59'),
(691, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-06-11 00:29:03', '2024-06-11 00:29:03'),
(692, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-11 20:13:55', '2024-06-11 20:13:55'),
(693, 1, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-06-11 20:14:03', '2024-06-11 20:14:03'),
(694, 1, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-06-11 20:14:10', '2024-06-11 20:14:10'),
(695, 1, 'admin/homestays/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-11 20:20:32', '2024-06-11 20:20:32'),
(696, 1, 'admin/homestays/1', 'PUT', '127.0.0.1', '{\"name\":\"Homestay Molly\",\"harga\":\"Rp. 150.000\",\"link\":\"https:\\/\\/bit.ly\\/45jXhb2\",\"fasilitas1\":\"1. Kamar Mandi Pribadi\",\"fasilitas2\":\"2. Kipas Angin\",\"fasilitas3\":\"3. Musholla\",\"fasilitas4\":\"4. Perlengkapan Mandi\",\"fasilitas5\":\"5. Sarapan Pagi\",\"fasilitas6\":null,\"_token\":\"x66DDEaBAJYplrKUeywZiQGJcb9R4v8q4H3pYHPC\",\"_method\":\"PUT\"}', '2024-06-11 20:21:48', '2024-06-11 20:21:48'),
(697, 1, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-06-11 20:21:49', '2024-06-11 20:21:49'),
(698, 1, 'admin/homestays/2/edit', 'GET', '127.0.0.1', '[]', '2024-06-11 20:26:39', '2024-06-11 20:26:39'),
(699, 1, 'admin/homestays/2', 'PUT', '127.0.0.1', '{\"name\":\"Homestay Platy\",\"harga\":\"Rp. 150.000\",\"link\":\"https:\\/\\/bit.ly\\/3KGuCn2\",\"fasilitas1\":\"1. Kamar Mandi Bersama\",\"fasilitas2\":\"2. Kipas Angin\",\"fasilitas3\":\"3. Perlengkapan Mandi\",\"fasilitas4\":\"4. Sarapan Pagi\",\"fasilitas5\":null,\"fasilitas6\":null,\"_token\":\"x66DDEaBAJYplrKUeywZiQGJcb9R4v8q4H3pYHPC\",\"_method\":\"PUT\"}', '2024-06-11 20:26:43', '2024-06-11 20:26:43'),
(700, 1, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-06-11 20:26:43', '2024-06-11 20:26:43'),
(701, 1, 'admin/homestays/3/edit', 'GET', '127.0.0.1', '[]', '2024-06-11 20:27:58', '2024-06-11 20:27:58'),
(702, 1, 'admin/homestays/3', 'PUT', '127.0.0.1', '{\"name\":\"Homestay Channa\",\"harga\":\"Rp. 150.000\",\"link\":\"https:\\/\\/bit.ly\\/3KE7RzZ\",\"fasilitas1\":\"1. Kamar Mandi Bersama\",\"fasilitas2\":\"2. Kipas Angin\",\"fasilitas3\":\"3. Perlengkapan Mandi\",\"fasilitas4\":\"4. Sarapan Pagi\",\"fasilitas5\":null,\"fasilitas6\":null,\"_token\":\"x66DDEaBAJYplrKUeywZiQGJcb9R4v8q4H3pYHPC\",\"_method\":\"PUT\"}', '2024-06-11 20:28:12', '2024-06-11 20:28:12'),
(703, 1, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-06-11 20:28:13', '2024-06-11 20:28:13'),
(704, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-06-11 20:29:27', '2024-06-11 20:29:27'),
(705, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-11 20:29:29', '2024-06-11 20:29:29'),
(706, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-06-11 20:29:33', '2024-06-11 20:29:33'),
(707, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-11 20:29:34', '2024-06-11 20:29:34'),
(708, 1, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-06-11 20:29:40', '2024-06-11 20:29:40'),
(709, 1, 'admin/homestays/4/edit', 'GET', '127.0.0.1', '[]', '2024-06-11 20:29:50', '2024-06-11 20:29:50'),
(710, 1, 'admin/homestays/4', 'PUT', '127.0.0.1', '{\"name\":\"Homestay Manfish\",\"harga\":\"Rp. 150.000\",\"link\":\"https:\\/\\/bit.ly\\/3Xk2L3F\",\"fasilitas1\":\"1. Air Conditioner\",\"fasilitas2\":\"2. Kamar Mandi Pribadi\",\"fasilitas3\":\"3. Perlengkapan Mandi\",\"fasilitas4\":\"4. Sarapan Pagi\",\"fasilitas5\":null,\"fasilitas6\":null,\"_token\":\"x66DDEaBAJYplrKUeywZiQGJcb9R4v8q4H3pYHPC\",\"_method\":\"PUT\"}', '2024-06-11 20:30:59', '2024-06-11 20:30:59'),
(711, 1, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-06-11 20:31:00', '2024-06-11 20:31:00'),
(712, 1, 'admin/homestays/5/edit', 'GET', '127.0.0.1', '[]', '2024-06-11 20:31:11', '2024-06-11 20:31:11'),
(713, 1, 'admin/homestays/5', 'PUT', '127.0.0.1', '{\"name\":\"Homestay Guppy\",\"harga\":\"Rp. 150.000\",\"link\":\"https:\\/\\/bit.ly\\/3yXIxmd\",\"fasilitas1\":\"1. Kamar Mandi Bersama\",\"fasilitas2\":\"2. Kipas Angin\",\"fasilitas3\":\"3. Perlengkapan Mandi\",\"fasilitas4\":\"4. Sarapan Pagi\",\"fasilitas5\":\"5. Televisi + Wifi Area\",\"fasilitas6\":null,\"_token\":\"x66DDEaBAJYplrKUeywZiQGJcb9R4v8q4H3pYHPC\",\"_method\":\"PUT\"}', '2024-06-11 20:31:51', '2024-06-11 20:31:51'),
(714, 1, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-06-11 20:31:52', '2024-06-11 20:31:52'),
(715, 1, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-06-11 20:31:55', '2024-06-11 20:31:55'),
(716, 1, 'admin/ikans/create', 'GET', '127.0.0.1', '[]', '2024-06-11 20:32:00', '2024-06-11 20:32:00'),
(717, 1, 'admin/ikans', 'POST', '127.0.0.1', '{\"name\":\"dvdvdv\",\"_token\":\"x66DDEaBAJYplrKUeywZiQGJcb9R4v8q4H3pYHPC\"}', '2024-06-11 20:32:11', '2024-06-11 20:32:11'),
(718, 1, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-06-11 20:32:11', '2024-06-11 20:32:11'),
(719, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-06-11 20:32:42', '2024-06-11 20:32:42'),
(720, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-11 20:32:42', '2024-06-11 20:32:42'),
(721, 1, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-06-11 20:32:45', '2024-06-11 20:32:45'),
(722, 1, 'admin/ikans/13', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"x66DDEaBAJYplrKUeywZiQGJcb9R4v8q4H3pYHPC\"}', '2024-06-11 20:32:50', '2024-06-11 20:32:50'),
(723, 1, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-06-11 20:32:50', '2024-06-11 20:32:50'),
(724, 1, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-06-11 20:32:55', '2024-06-11 20:32:55'),
(725, 1, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-06-11 20:32:59', '2024-06-11 20:32:59'),
(726, 1, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-06-11 20:33:02', '2024-06-11 20:33:02'),
(727, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-06-11 20:33:05', '2024-06-11 20:33:05'),
(728, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-06-11 20:33:09', '2024-06-11 20:33:09'),
(729, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-11 20:40:39', '2024-06-11 20:40:39'),
(730, 1, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-06-11 20:40:41', '2024-06-11 20:40:41'),
(731, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-06-11 20:40:43', '2024-06-11 20:40:43'),
(732, 1, 'admin/atraksis/create', 'GET', '127.0.0.1', '[]', '2024-06-11 20:40:47', '2024-06-11 20:40:47'),
(733, 1, 'admin/atraksis', 'POST', '127.0.0.1', '{\"name\":\"sdfknskj\",\"_token\":\"aICAXjGUqFheAKN7bqpJeS2kxbE09YPK9AI1rMaC\"}', '2024-06-11 20:40:54', '2024-06-11 20:40:54'),
(734, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-06-11 20:40:55', '2024-06-11 20:40:55'),
(735, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-06-11 20:41:36', '2024-06-11 20:41:36'),
(736, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-11 20:41:36', '2024-06-11 20:41:36'),
(737, 1, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-06-11 20:41:43', '2024-06-11 20:41:43'),
(738, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-06-11 20:41:46', '2024-06-11 20:41:46'),
(739, 1, 'admin/atraksis/create', 'GET', '127.0.0.1', '[]', '2024-06-11 20:41:49', '2024-06-11 20:41:49'),
(740, 1, 'admin/atraksis', 'POST', '127.0.0.1', '{\"name\":\"efsdfsf\",\"_token\":\"aICAXjGUqFheAKN7bqpJeS2kxbE09YPK9AI1rMaC\"}', '2024-06-11 20:41:55', '2024-06-11 20:41:55'),
(741, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-06-11 20:41:56', '2024-06-11 20:41:56'),
(742, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-06-11 20:42:18', '2024-06-11 20:42:18'),
(743, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-11 20:42:18', '2024-06-11 20:42:18'),
(744, 1, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-06-11 20:42:21', '2024-06-11 20:42:21'),
(745, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-06-11 20:42:22', '2024-06-11 20:42:22'),
(746, 1, 'admin/atraksis/13', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"aICAXjGUqFheAKN7bqpJeS2kxbE09YPK9AI1rMaC\"}', '2024-06-11 20:42:26', '2024-06-11 20:42:26'),
(747, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-06-11 20:42:27', '2024-06-11 20:42:27'),
(748, 1, 'admin/atraksis/14', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"aICAXjGUqFheAKN7bqpJeS2kxbE09YPK9AI1rMaC\"}', '2024-06-11 20:42:30', '2024-06-11 20:42:30'),
(749, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-06-11 20:42:30', '2024-06-11 20:42:30'),
(750, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-06-11 20:47:08', '2024-06-11 20:47:08'),
(751, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-11 20:47:08', '2024-06-11 20:47:08'),
(752, 1, 'admin/pakets', 'GET', '127.0.0.1', '[]', '2024-06-11 20:47:10', '2024-06-11 20:47:10'),
(753, 1, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-06-11 20:47:12', '2024-06-11 20:47:12'),
(754, 1, 'admin/homestays/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-11 20:47:46', '2024-06-11 20:47:46'),
(755, 1, 'admin/homestays/1', 'PUT', '127.0.0.1', '{\"name\":\"Homestay Molly\",\"harga\":\"Rp. 150.000\",\"link\":\"https:\\/\\/shorturl.at\\/wewGn\",\"fasilitas1\":\"1. Kamar Mandi Pribadi\",\"fasilitas2\":\"2. Kipas Angin\",\"fasilitas3\":\"3. Musholla\",\"fasilitas4\":\"4. Perlengkapan Mandi\",\"fasilitas5\":\"5. Sarapan Pagi\",\"fasilitas6\":null,\"_token\":\"aICAXjGUqFheAKN7bqpJeS2kxbE09YPK9AI1rMaC\",\"_method\":\"PUT\"}', '2024-06-11 20:47:50', '2024-06-11 20:47:50'),
(756, 1, 'admin/homestays', 'GET', '127.0.0.1', '[]', '2024-06-11 20:47:50', '2024-06-11 20:47:50'),
(757, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-06-11 20:48:05', '2024-06-11 20:48:05'),
(758, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-13 01:45:10', '2024-06-13 01:45:10'),
(759, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-06-13 01:45:22', '2024-06-13 01:45:22'),
(760, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-06-13 01:45:45', '2024-06-13 01:45:45'),
(761, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-13 02:27:36', '2024-06-13 02:27:36'),
(762, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-06-13 02:27:52', '2024-06-13 02:27:52'),
(763, 1, 'admin/atraksis/4', 'GET', '127.0.0.1', '[]', '2024-06-13 02:27:56', '2024-06-13 02:27:56'),
(764, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-06-13 02:28:05', '2024-06-13 02:28:05'),
(765, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-06-13 02:28:15', '2024-06-13 02:28:15'),
(766, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-13 03:10:57', '2024-06-13 03:10:57'),
(767, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-06-13 03:11:05', '2024-06-13 03:11:05'),
(768, 1, 'admin/ikans', 'GET', '127.0.0.1', '[]', '2024-06-13 03:11:22', '2024-06-13 03:11:22'),
(769, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-06-13 03:11:34', '2024-06-13 03:11:34'),
(770, 1, 'admin/atraksis/create', 'GET', '127.0.0.1', '[]', '2024-06-13 03:11:37', '2024-06-13 03:11:37'),
(771, 1, 'admin/atraksis', 'POST', '127.0.0.1', '{\"name\":\"kkjsdjka\",\"_token\":\"H6zEaZuxBjWPV7Gu3kVHdASnd7pblqqhqIh5LKYq\"}', '2024-06-13 03:11:52', '2024-06-13 03:11:52'),
(772, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-06-13 03:11:54', '2024-06-13 03:11:54'),
(773, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-06-13 03:12:05', '2024-06-13 03:12:05'),
(774, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-13 03:12:06', '2024-06-13 03:12:06'),
(775, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-06-13 03:13:42', '2024-06-13 03:13:42'),
(776, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-13 03:13:43', '2024-06-13 03:13:43'),
(777, 1, 'admin/atraksis', 'GET', '127.0.0.1', '[]', '2024-06-13 03:13:54', '2024-06-13 03:13:54'),
(778, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-13 03:14:03', '2024-06-13 03:14:03'),
(779, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-13 03:14:20', '2024-06-13 03:14:20'),
(780, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-06-13 03:14:58', '2024-06-13 03:14:58'),
(781, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-13 03:14:59', '2024-06-13 03:14:59'),
(782, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-13 03:15:04', '2024-06-13 03:15:04'),
(783, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-13 03:15:12', '2024-06-13 03:15:12'),
(784, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-13 03:15:15', '2024-06-13 03:15:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `http_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2024-03-18 07:05:02', '2024-03-18 07:05:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2024-03-18 07:00:56', '2024-03-18 07:00:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_users`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'desakajii', '$2y$10$MJDCY9jMGjyFxiCu/To3JOaxx3ioFhzvUvJ99QRe4QBIQL6bU0sUq', 'desakajii', 'images/logo dewi kajii.jpg', NULL, '2024-03-18 07:00:56', '2024-06-11 00:28:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `atraksi`
--

CREATE TABLE `atraksi` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `atraksi`
--

INSERT INTO `atraksi` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(4, 'Mentoring Ikan Hias', 'images/DSC00569.JPG', '2024-03-22 23:40:26', '2024-03-29 04:06:19'),
(5, 'Membuat Wayang Ikan', 'images/DSC00701.JPG', '2024-03-22 23:41:24', '2024-03-24 00:03:04'),
(6, 'Kontes Ikan Hias', 'images/Kontes Guppy.jpg', '2024-03-22 23:41:59', '2024-03-22 23:41:59'),
(7, 'Outbound', 'images/Out Bound 1.png', '2024-03-22 23:42:27', '2024-03-22 23:42:27'),
(8, 'Membatik', 'images/DSC00182.JPG', '2024-03-22 23:43:10', '2024-03-24 00:03:40'),
(9, 'Topeng', 'images/IMG_5939.png', '2024-03-22 23:43:56', '2024-03-24 00:04:14'),
(10, 'Reog Ria Kelana', 'images/Ria Kelana 1.jpg', '2024-03-22 23:44:27', '2024-03-24 00:05:30'),
(11, 'Gerobak Sapi', 'images/DSC00323.JPG', '2024-03-22 23:44:56', '2024-03-22 23:44:56'),
(12, 'Live Musik', 'images/DSC00825.JPG', '2024-03-22 23:45:30', '2024-03-24 00:04:41'),
(15, 'kkjsdjka', 'images/logoooo.png', '2024-06-13 03:11:53', '2024-06-13 03:11:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `homestay`
--

CREATE TABLE `homestay` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `fasilitas1` varchar(255) DEFAULT NULL,
  `fasilitas2` varchar(255) DEFAULT NULL,
  `fasilitas3` varchar(255) DEFAULT NULL,
  `fasilitas4` varchar(255) DEFAULT NULL,
  `fasilitas5` varchar(255) DEFAULT NULL,
  `fasilitas6` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `homestay`
--

INSERT INTO `homestay` (`id`, `name`, `harga`, `link`, `fasilitas1`, `fasilitas2`, `fasilitas3`, `fasilitas4`, `fasilitas5`, `fasilitas6`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Homestay Molly', 'Rp. 150.000', 'https://shorturl.at/wewGn', '1. Kamar Mandi Pribadi', '2. Kipas Angin', '3. Musholla', '4. Perlengkapan Mandi', '5. Sarapan Pagi', NULL, 'images/HS-molly_1.jpg', '2024-04-19 05:36:59', '2024-06-11 20:47:50'),
(2, 'Homestay Platy', 'Rp. 150.000', 'https://bit.ly/3KGuCn2', '1. Kamar Mandi Bersama', '2. Kipas Angin', '3. Perlengkapan Mandi', '4. Sarapan Pagi', NULL, NULL, 'images/HS-platy_1.jpg', '2024-04-19 05:38:29', '2024-06-11 20:26:43'),
(3, 'Homestay Channa', 'Rp. 150.000', 'https://bit.ly/3KE7RzZ', '1. Kamar Mandi Bersama', '2. Kipas Angin', '3. Perlengkapan Mandi', '4. Sarapan Pagi', NULL, NULL, 'images/HS-channa_1.jpg', '2024-04-19 05:40:41', '2024-06-11 20:28:12'),
(4, 'Homestay Manfish', 'Rp. 150.000', 'https://bit.ly/3Xk2L3F', '1. Air Conditioner', '2. Kamar Mandi Pribadi', '3. Perlengkapan Mandi', '4. Sarapan Pagi', NULL, NULL, 'images/HS-manfish_1.jpg', '2024-04-19 05:41:49', '2024-06-11 20:31:00'),
(5, 'Homestay Guppy', 'Rp. 150.000', 'https://bit.ly/3yXIxmd', '1. Kamar Mandi Bersama', '2. Kipas Angin', '3. Perlengkapan Mandi', '4. Sarapan Pagi', '5. Televisi + Wifi Area', NULL, 'images/HS-guppy_1.jpg', '2024-04-19 05:43:26', '2024-06-11 20:31:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ikan`
--

CREATE TABLE `ikan` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ikan`
--

INSERT INTO `ikan` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Ikan Guppy', 'images/Screenshot 2024-04-11 083129.png', '2024-04-10 18:36:00', '2024-04-10 18:36:00'),
(2, 'Ikan Gold Fish', 'images/goldfish.jpg', '2024-04-10 19:20:05', '2024-04-10 19:20:30'),
(3, 'Ikan Koki Oranda', 'images/Screenshot 2024-04-11 092554.png', '2024-04-10 19:26:41', '2024-04-10 19:26:41'),
(4, 'Ikan Molly', 'images/Screenshot 2024-04-11 093503.png', '2024-04-10 19:35:32', '2024-04-10 19:35:32'),
(5, 'Ikan Platy', 'images/Screenshot 2024-04-11 093619.png', '2024-04-10 19:37:03', '2024-04-10 19:37:03'),
(6, 'Ikan Manfish', 'images/ikan-manfish.jpg', '2024-04-10 19:40:37', '2024-04-10 19:40:37'),
(7, 'Ikan Arwana', 'images/Screenshot 2024-04-11 094146.png', '2024-04-10 19:42:18', '2024-04-10 19:42:18'),
(8, 'Sapu Sapu Brushmouth', 'images/brushmouth.jpg', '2024-04-10 19:50:31', '2024-04-10 19:50:39'),
(9, 'Ikan Peacock Bass', 'images/peacock.jpg', '2024-04-10 19:51:51', '2024-04-10 19:51:51'),
(10, 'Ikan Channa', 'images/Screenshot 2024-04-11 094401.png', '2024-04-10 19:52:10', '2024-04-10 19:52:10'),
(11, 'Ikan Rainbow', 'images/Screenshot 2024-04-11 094500.png', '2024-04-10 19:52:31', '2024-04-10 19:52:31'),
(12, 'Ikan Cichild', 'images/Screenshot 2024-04-11 094609.png', '2024-04-10 19:52:51', '2024-04-10 19:52:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_01_04_173148_create_admin_tables', 2),
(6, '2024_03_18_140926_create_atraksi_table', 3),
(7, '2024_03_25_075013_create_FarmVisit_table', 4),
(8, '2024_03_25_075527_create_FarmVisit_table', 5),
(9, '2024_04_03_131537_create_Paket_table', 6),
(10, '2024_04_10_125415_create_Ikan_table', 7),
(11, '2024_04_12_064619_create_Homestay_table', 8),
(12, '2024_04_18_143006_create_Homestay_table', 9),
(13, '2024_04_19_123407_create_Homestay_table', 10),
(14, '2024_04_19_125613_create_Paket_table', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket`
--

CREATE TABLE `paket` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `fasilitas1` varchar(255) DEFAULT NULL,
  `fasilitas2` varchar(255) DEFAULT NULL,
  `fasilitas3` varchar(255) DEFAULT NULL,
  `fasilitas4` varchar(255) DEFAULT NULL,
  `fasilitas5` varchar(255) DEFAULT NULL,
  `fasilitas6` varchar(255) DEFAULT NULL,
  `fasilitas7` varchar(255) DEFAULT NULL,
  `fasilitas8` varchar(255) DEFAULT NULL,
  `fasilitas9` varchar(255) DEFAULT NULL,
  `fasilitas10` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `paket`
--

INSERT INTO `paket` (`id`, `name`, `type`, `harga`, `link`, `fasilitas1`, `fasilitas2`, `fasilitas3`, `fasilitas4`, `fasilitas5`, `fasilitas6`, `fasilitas7`, `fasilitas8`, `fasilitas9`, `fasilitas10`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Paket A', 'Paket Farm Visit', '150.000', 'https://bit.ly/3KY3L6d', '1. 4 Farm + Edukasi', '2. Pemandu Wisata', '3. Sepeda', '4. Makan & Minum', '5. Kenangan', NULL, NULL, NULL, NULL, NULL, 'images/paketA.jpg', '2024-04-19 06:00:32', '2024-06-11 00:08:14'),
(2, 'Paket B', 'Paket Farm Visit', '100.000', 'https://bit.ly/4cfwLBP', '1. 2 Farm + Edukasi', '2. Pemandu Wisata', '3. Makan & Minum', '4. Kenangan', NULL, NULL, NULL, NULL, NULL, NULL, 'images/paketB.jpg', '2024-04-19 06:02:10', '2024-06-11 00:11:08'),
(3, 'Paket C', 'Paket Farm Visit', '75.000', 'https://bit.ly/4aWpQMH', '1. 2 Farm + Edukasi', '2. Pemandu Wisata', '3. Snack & Minum', '4. Kenangan', NULL, NULL, NULL, NULL, NULL, NULL, 'images/paketC.jpg', '2024-04-19 06:03:16', '2024-06-11 00:11:52'),
(4, 'Paket A', 'Paket Anak-Anak', '115.000', 'https://bit.ly/3xefkmm', '1. 2 Farm', '2. Pemandu Wisata', '3. Atraksi tangkap ikan', '4. Outbound ceria', '5. Makan & Minum', '6. Souvenir', '7. Melukis Wayang Ikan', NULL, NULL, NULL, 'images/edukasi.jpg', '2024-04-19 06:05:08', '2024-06-11 00:13:47'),
(5, 'Paket B', 'Paket Anak-Anak', '85.000', 'https://bit.ly/3Rl0T6R', '1. 2 Farm', '2. Pemandu Wisata', '3. Atraksi tangkap ikan', '4. Outbound ceria', '5. Makan & Minum', '6. Souvenir', NULL, NULL, NULL, NULL, 'images/gamelan.jpg', '2024-04-19 06:07:05', '2024-06-11 00:14:17'),
(6, 'Paket A', '2 Hari 1 Malam', '500.000/Org *Minimal 10 orang', 'https://bit.ly/3x8Cyub', '1. Trainer + Visit Farm', '2. Welcome Drink', '3. Snack dan Makan', '4. Gala Dinner', '5. Free Dokumentasi', '6. Homestay', '7. Sepeda + Sunset', '8. Wayang Ikan', '9. Belajar Gamelan', NULL, 'images/DSC00314.JPG', '2024-04-19 06:11:39', '2024-06-11 00:28:43'),
(7, 'Paket B', '2 Hari 1 Malam', '450.000/Org *Minimal 10 orang', 'https://bit.ly/3xmOF6N', '1. Trainer', '2. Visit Farm', '3. Welcome Drink', '4. Snack dan Makan', '5. Gala Dinner', '6. Free Dokumentasi', '7. Homestay', '8. Sepeda + Sunset', '9. Wayang Ikan', NULL, 'images/DSC00320.JPG', '2024-04-19 06:13:36', '2024-06-11 00:17:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indeks untuk tabel `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indeks untuk tabel `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indeks untuk tabel `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indeks untuk tabel `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indeks untuk tabel `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indeks untuk tabel `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `atraksi`
--
ALTER TABLE `atraksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `homestay`
--
ALTER TABLE `homestay`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ikan`
--
ALTER TABLE `ikan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=785;

--
-- AUTO_INCREMENT untuk tabel `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `atraksi`
--
ALTER TABLE `atraksi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `homestay`
--
ALTER TABLE `homestay`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `ikan`
--
ALTER TABLE `ikan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `paket`
--
ALTER TABLE `paket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
