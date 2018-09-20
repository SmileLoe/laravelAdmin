-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 2018-09-20 09:51:08
-- 服务器版本： 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `okl`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin_menu`
--

DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE IF NOT EXISTS `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Index', 'fa-bar-chart', '/', NULL, NULL),
(2, 0, 2, '后台设置', 'fa-tasks', NULL, NULL, '2018-09-19 22:35:48'),
(3, 2, 3, '用户', 'fa-users', 'auth/users', NULL, '2018-09-19 22:31:37'),
(4, 2, 4, '角色', 'fa-user', 'auth/roles', NULL, '2018-09-19 22:32:35'),
(5, 2, 5, '权限', 'fa-ban', 'auth/permissions', NULL, '2018-09-19 22:38:35'),
(6, 2, 6, '菜单', 'fa-bars', 'auth/menu', NULL, '2018-09-19 22:34:38'),
(7, 2, 7, '操作日志', 'fa-history', 'auth/logs', NULL, '2018-09-19 22:35:13'),
(8, 0, 0, '前台用户管理', 'fa-male', '/users', '2018-09-20 00:33:35', '2018-09-20 00:34:23');

-- --------------------------------------------------------

--
-- 表的结构 `admin_operation_log`
--

DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE IF NOT EXISTS `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=375 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(374, 1, 'admin/auth/roles', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:48:54', '2018-09-20 01:48:54'),
(373, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:48:51', '2018-09-20 01:48:51'),
(372, 1, 'admin', 'GET', '::1', '[]', '2018-09-20 01:48:34', '2018-09-20 01:48:34'),
(371, 1, 'admin/auth/logout', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:48:28', '2018-09-20 01:48:28'),
(370, 1, 'admin', 'GET', '::1', '[]', '2018-09-20 01:48:24', '2018-09-20 01:48:24'),
(369, 1, 'admin/auth/permissions', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:48:03', '2018-09-20 01:48:03'),
(368, 1, 'admin/auth/roles', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:47:33', '2018-09-20 01:47:33'),
(366, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\",\"id\":\"100\"}', '2018-09-20 01:47:28', '2018-09-20 01:47:28'),
(367, 1, 'admin/auth/users', 'GET', '::1', '{\"id\":\"100\",\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:47:31', '2018-09-20 01:47:31'),
(365, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2018-09-20 01:47:17', '2018-09-20 01:47:17'),
(362, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:53', '2018-09-20 01:46:53'),
(363, 1, 'admin/auth/roles', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:54', '2018-09-20 01:46:54'),
(364, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:54', '2018-09-20 01:46:54'),
(361, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:52', '2018-09-20 01:46:52'),
(360, 1, 'admin/auth/permissions', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:51', '2018-09-20 01:46:51'),
(359, 1, 'admin/auth/roles', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:51', '2018-09-20 01:46:51'),
(358, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:50', '2018-09-20 01:46:50'),
(357, 1, 'admin/auth/roles', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:50', '2018-09-20 01:46:50'),
(356, 1, 'admin/auth/permissions', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:49', '2018-09-20 01:46:49'),
(355, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:49', '2018-09-20 01:46:49'),
(354, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:48', '2018-09-20 01:46:48'),
(353, 1, 'admin/auth/permissions', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:48', '2018-09-20 01:46:48'),
(352, 1, 'admin/auth/roles', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:47', '2018-09-20 01:46:47'),
(351, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:46', '2018-09-20 01:46:46'),
(349, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:43', '2018-09-20 01:46:43'),
(350, 1, 'admin/auth/roles', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:46', '2018-09-20 01:46:46'),
(348, 1, 'admin/auth/permissions', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:42', '2018-09-20 01:46:42'),
(347, 1, 'admin/auth/roles', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:41', '2018-09-20 01:46:41'),
(346, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:41', '2018-09-20 01:46:41'),
(345, 1, 'admin/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:39', '2018-09-20 01:46:39'),
(344, 1, 'admin/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:36', '2018-09-20 01:46:36'),
(341, 1, 'admin/auth/permissions', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:33', '2018-09-20 01:46:33'),
(342, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:34', '2018-09-20 01:46:34'),
(343, 1, 'admin/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:35', '2018-09-20 01:46:35'),
(340, 1, 'admin/auth/roles', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:33', '2018-09-20 01:46:33'),
(339, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:32', '2018-09-20 01:46:32'),
(336, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:30', '2018-09-20 01:46:30'),
(337, 1, 'admin/auth/permissions', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:31', '2018-09-20 01:46:31'),
(338, 1, 'admin/auth/roles', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:32', '2018-09-20 01:46:32'),
(335, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:29', '2018-09-20 01:46:29'),
(332, 1, 'admin', 'GET', '::1', '[]', '2018-09-20 01:46:09', '2018-09-20 01:46:09'),
(333, 1, 'admin/auth/roles', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:27', '2018-09-20 01:46:27'),
(334, 1, 'admin/auth/permissions', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:28', '2018-09-20 01:46:28'),
(331, 1, 'admin/auth/logout', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:46:04', '2018-09-20 01:46:04'),
(330, 1, 'admin', 'GET', '::1', '[]', '2018-09-20 01:45:46', '2018-09-20 01:45:46'),
(329, 1, 'admin/auth/logout', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:41:48', '2018-09-20 01:41:48'),
(328, 2, 'admin/auth/logout', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:41:38', '2018-09-20 01:41:38'),
(325, 2, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:41:25', '2018-09-20 01:41:25'),
(326, 2, 'admin/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:41:26', '2018-09-20 01:41:26'),
(327, 2, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:41:30', '2018-09-20 01:41:30'),
(324, 2, 'admin/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:41:24', '2018-09-20 01:41:24'),
(323, 2, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:41:23', '2018-09-20 01:41:23'),
(320, 2, 'admin/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:41:19', '2018-09-20 01:41:19'),
(321, 2, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:41:21', '2018-09-20 01:41:21'),
(322, 2, 'admin/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:41:22', '2018-09-20 01:41:22'),
(319, 2, 'admin/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:41:16', '2018-09-20 01:41:16'),
(318, 2, 'admin', 'GET', '::1', '[]', '2018-09-20 01:41:11', '2018-09-20 01:41:11'),
(317, 1, 'admin', 'GET', '::1', '[]', '2018-09-20 01:37:02', '2018-09-20 01:37:02'),
(316, 1, 'admin/auth/logout', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:36:55', '2018-09-20 01:36:55'),
(315, 1, 'admin/auth/permissions', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:36:53', '2018-09-20 01:36:53'),
(314, 1, 'admin/auth/roles', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:36:52', '2018-09-20 01:36:52'),
(313, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:36:51', '2018-09-20 01:36:51'),
(312, 1, 'admin/auth/roles', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:36:49', '2018-09-20 01:36:49'),
(311, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:36:48', '2018-09-20 01:36:48'),
(310, 1, 'admin/auth/roles', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:36:48', '2018-09-20 01:36:48'),
(309, 1, 'admin/auth/permissions', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:36:47', '2018-09-20 01:36:47'),
(308, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:36:47', '2018-09-20 01:36:47'),
(307, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:36:46', '2018-09-20 01:36:46'),
(302, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:36:31', '2018-09-20 01:36:31'),
(303, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:36:41', '2018-09-20 01:36:41'),
(304, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:36:44', '2018-09-20 01:36:44'),
(305, 1, 'admin/auth/roles', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:36:44', '2018-09-20 01:36:44'),
(306, 1, 'admin/auth/permissions', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 01:36:45', '2018-09-20 01:36:45');

-- --------------------------------------------------------

--
-- 表的结构 `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE IF NOT EXISTS `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, '所有权限', '*', '', '*', NULL, '2018-09-19 22:38:09'),
(2, '仪表板', 'dashboard', 'GET', '/', NULL, '2018-09-19 22:42:01'),
(3, '登录', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, '2018-09-19 22:42:17'),
(4, '用户设置', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, '2018-09-19 22:42:35'),
(5, 'Auth管理', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, '2018-09-19 22:42:58');

-- --------------------------------------------------------

--
-- 表的结构 `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE IF NOT EXISTS `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, '超级管理员', 'administrator', '2018-09-19 22:28:50', '2018-09-19 22:36:16'),
(2, '总经理', '总经理', '2018-09-20 01:08:40', '2018-09-20 01:08:40'),
(3, '常务副总', '常务副总', '2018-09-20 01:11:04', '2018-09-20 01:11:04'),
(4, '副总经理', '副总经理', '2018-09-20 01:11:33', '2018-09-20 01:11:33'),
(5, '财务总监', '财务总监', '2018-09-20 01:11:52', '2018-09-20 01:11:52'),
(6, '草坪总监', '草坪总监', '2018-09-20 01:12:09', '2018-09-20 01:12:09'),
(7, '成本会计', '成本会计', '2018-09-20 01:12:54', '2018-09-20 01:12:54'),
(8, '采购经理', '采购经理', '2018-09-20 01:13:13', '2018-09-20 01:13:13'),
(9, '行政经理', '行政经理', '2018-09-20 01:13:31', '2018-09-20 01:13:31'),
(10, '采购专员', '采购专员', '2018-09-20 01:13:57', '2018-09-20 01:13:57');

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_menu`
--

DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE IF NOT EXISTS `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_permissions`
--

DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE IF NOT EXISTS `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 3, NULL, NULL),
(2, 4, NULL, NULL),
(2, 2, NULL, NULL),
(3, 2, NULL, NULL),
(3, 3, NULL, NULL),
(3, 4, NULL, NULL),
(4, 2, NULL, NULL),
(4, 3, NULL, NULL),
(4, 4, NULL, NULL),
(5, 2, NULL, NULL),
(5, 3, NULL, NULL),
(5, 4, NULL, NULL),
(6, 2, NULL, NULL),
(6, 3, NULL, NULL),
(6, 4, NULL, NULL),
(7, 2, NULL, NULL),
(7, 3, NULL, NULL),
(7, 4, NULL, NULL),
(8, 2, NULL, NULL),
(8, 3, NULL, NULL),
(8, 4, NULL, NULL),
(9, 2, NULL, NULL),
(9, 3, NULL, NULL),
(9, 4, NULL, NULL),
(10, 2, NULL, NULL),
(10, 3, NULL, NULL),
(10, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_users`
--

DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE IF NOT EXISTS `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(10, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$ZSKllGbOl9MDAqCiuGT3yuf2o6vyz5R9tLwjX6ItFezTCSonzlL5O', '李杰', 'images/2.jpg', 'TpiAug5q8AcGL7puGfC9Nd5bRCbL2mzLr7w0DFfeTW7M1PrLqV7CxixQTZqq', '2018-09-19 22:28:50', '2018-09-20 00:20:56'),
(2, 'yangchao', '$2y$10$kXyuIqIulqzi4r2rtFC3LOkO8ZP8nc6FtKhDjdmyFXgSzWjy7ICIu', '杨超', 'images/315445d9100cfc8761983d7d5cd3776a.jpg', '6UKzs0PQKuppfZWcotRGpGXyiNSlqgJPW6SJrDVJVZBDGZWPnpwl5veYfDt7', '2018-09-20 01:14:41', '2018-09-20 01:14:41');

-- --------------------------------------------------------

--
-- 表的结构 `admin_user_permissions`
--

DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE IF NOT EXISTS `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1);

-- --------------------------------------------------------

--
-- 表的结构 `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
