-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 13 mars 2024 à 14:30
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `archivedlc`
--

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(25, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(26, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(27, 5, 'id_division', 'text', 'Id Division', 0, 1, 1, 1, 1, 1, '{}', 2),
(28, 5, 'nom_service', 'text', 'Nom Service', 0, 1, 1, 1, 1, 1, '{}', 3),
(29, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(30, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(31, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(32, 8, 'ref', 'text', 'Ref', 0, 1, 1, 1, 1, 1, '{}', 2),
(33, 8, 'fichier', 'file', 'Fichier', 0, 1, 1, 1, 1, 1, '{}', 3),
(34, 8, 'id_user', 'text', 'Id User', 0, 1, 1, 1, 1, 1, '{}', 4),
(35, 8, 'date', 'date', 'Date', 0, 1, 1, 1, 1, 1, '{}', 5),
(36, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(37, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(42, 5, 'service_belongsto_division_relationship', 'relationship', 'divisions', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Division\",\"table\":\"divisions\",\"type\":\"belongsTo\",\"column\":\"id_division\",\"key\":\"id\",\"label\":\"nom\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":null}', 6),
(50, 8, 'document_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"id_user\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(51, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(52, 13, 'key', 'text', 'Key', 1, 1, 1, 1, 1, 1, '{}', 2),
(53, 13, 'table_name', 'text', 'Table Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(54, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(55, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(56, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 14, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(59, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(60, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(61, 15, 'date', 'text', 'Date', 0, 1, 1, 1, 1, 1, '{}', 2),
(62, 15, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{}', 3),
(63, 15, 'id_document', 'text', 'Id Document', 0, 1, 1, 1, 1, 1, '{}', 4),
(64, 15, 'id_type', 'text', 'Id Type', 0, 1, 1, 1, 1, 1, '{}', 5),
(65, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(66, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2024-03-11 14:32:49', '2024-03-11 14:32:49'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2024-03-11 14:32:49', '2024-03-11 14:32:49'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2024-03-11 14:32:49', '2024-03-11 14:32:49'),
(4, 'divisions', 'divisions', 'Division', 'Divisions', NULL, 'App\\Models\\Division', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-03-11 17:03:54', '2024-03-11 17:03:54'),
(5, 'services', 'services', 'Service', 'Services', NULL, 'App\\Models\\Service', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-03-11 17:04:40', '2024-03-11 17:04:40'),
(8, 'documents', 'documents', 'Document', 'Documents', NULL, 'App\\Models\\Document', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-11 17:06:40', '2024-03-11 17:59:50'),
(13, 'permissions', 'permissions', 'Permission', 'Permissions', 'voyager-key', 'TCG\\Voyager\\Models\\Permission', NULL, 'App\\Http\\Controllers\\Voyager\\Admin\\PermissionController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-03-12 23:22:49', '2024-03-12 23:22:49'),
(14, 'type_ops', 'type-ops', 'Type Op', 'Type Ops', NULL, 'App\\Models\\TypeOp', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-03-12 23:28:44', '2024-03-12 23:28:44'),
(15, 'operations', 'operations', 'Operation', 'Operations', NULL, 'App\\Models\\Operation', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-03-12 23:28:59', '2024-03-12 23:28:59');

-- --------------------------------------------------------

--
-- Structure de la table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `divisions`
--

INSERT INTO `divisions` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'Division 1', '2024-03-11 17:54:15', '2024-03-11 17:54:15');

-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `ref` varchar(250) DEFAULT NULL,
  `fichier` longblob DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `documents`
--

INSERT INTO `documents` (`id`, `ref`, `fichier`, `id_user`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Test', 0x5b7b22646f776e6c6f61645f6c696e6b223a22646f63756d656e74735c5c4d61726368323032345c5c534b49614e46445745754c766b72337a324267542e786c7378222c226f726967696e616c5f6e616d65223a22746573742e786c7378227d5d, 1, '2024-03-11', '2024-03-11 18:27:24', '2024-03-11 18:27:24');

-- --------------------------------------------------------

--
-- Structure de la table `etap_docs`
--

CREATE TABLE `etap_docs` (
  `id` int(10) UNSIGNED NOT NULL,
  `etape` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `historiques`
--

CREATE TABLE `historiques` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_document` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-03-11 14:32:50', '2024-03-11 14:32:50');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2024-03-11 14:32:50', '2024-03-11 14:32:50', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 5, 3, '2024-03-11 14:32:50', '2024-03-12 23:30:07', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 2, '2024-03-11 14:32:50', '2024-03-12 23:23:22', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 3, 1, '2024-03-11 14:32:50', '2024-03-12 23:23:24', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 6, '2024-03-11 14:32:50', '2024-03-12 23:30:07', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2024-03-11 14:32:50', '2024-03-12 23:23:12', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2024-03-11 14:32:50', '2024-03-12 23:24:04', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 4, '2024-03-11 14:32:50', '2024-03-12 23:30:07', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 5, '2024-03-11 14:32:50', '2024-03-12 23:30:07', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, 5, 6, '2024-03-11 14:32:50', '2024-03-12 23:30:07', 'voyager.settings.index', NULL),
(11, 1, 'Divisions', '', '_self', 'voyager-group', '#000000', NULL, 3, '2024-03-11 17:03:54', '2024-03-12 23:25:32', 'voyager.divisions.index', 'null'),
(12, 1, 'Services', '', '_self', 'voyager-categories', '#000000', NULL, 4, '2024-03-11 17:04:40', '2024-03-12 23:26:18', 'voyager.services.index', 'null'),
(13, 1, 'Documents', '', '_self', 'voyager-folder', '#000000', NULL, 5, '2024-03-11 17:06:40', '2024-03-12 23:24:34', 'voyager.documents.index', 'null'),
(16, 1, 'Permissions', '', '_self', 'voyager-key', NULL, 3, 2, '2024-03-12 23:22:49', '2024-03-12 23:23:33', 'voyager.permissions.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `operations`
--

CREATE TABLE `operations` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL,
  `id_document` int(11) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `operation_documents`
--

CREATE TABLE `operation_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_document` int(11) DEFAULT NULL,
  `id_operation` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(2, 'browse_bread', NULL, '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(3, 'browse_database', NULL, '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(4, 'browse_media', NULL, '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(5, 'browse_compass', NULL, '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(6, 'browse_menus', 'menus', '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(7, 'read_menus', 'menus', '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(8, 'edit_menus', 'menus', '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(9, 'add_menus', 'menus', '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(10, 'delete_menus', 'menus', '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(11, 'browse_roles', 'roles', '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(12, 'read_roles', 'roles', '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(13, 'edit_roles', 'roles', '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(14, 'add_roles', 'roles', '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(15, 'delete_roles', 'roles', '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(16, 'browse_users', 'users', '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(17, 'read_users', 'users', '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(18, 'edit_users', 'users', '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(19, 'add_users', 'users', '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(20, 'delete_users', 'users', '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(21, 'browse_settings', 'settings', '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(22, 'read_settings', 'settings', '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(23, 'edit_settings', 'settings', '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(24, 'add_settings', 'settings', '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(25, 'delete_settings', 'settings', '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(26, 'browse_divisions', 'divisions', '2024-03-11 17:03:54', '2024-03-11 17:03:54'),
(27, 'read_divisions', 'divisions', '2024-03-11 17:03:54', '2024-03-11 17:03:54'),
(28, 'edit_divisions', 'divisions', '2024-03-11 17:03:54', '2024-03-11 17:03:54'),
(29, 'add_divisions', 'divisions', '2024-03-11 17:03:54', '2024-03-11 17:03:54'),
(30, 'delete_divisions', 'divisions', '2024-03-11 17:03:54', '2024-03-11 17:03:54'),
(31, 'browse_services', 'services', '2024-03-11 17:04:40', '2024-03-11 17:04:40'),
(32, 'read_services', 'services', '2024-03-11 17:04:40', '2024-03-11 17:04:40'),
(33, 'edit_services', 'services', '2024-03-11 17:04:40', '2024-03-11 17:04:40'),
(34, 'add_services', 'services', '2024-03-11 17:04:40', '2024-03-11 17:04:40'),
(35, 'delete_services', 'services', '2024-03-11 17:04:40', '2024-03-11 17:04:40'),
(36, 'browse_documents', 'documents', '2024-03-11 17:06:40', '2024-03-11 17:06:40'),
(37, 'read_documents', 'documents', '2024-03-11 17:06:40', '2024-03-11 17:06:40'),
(38, 'edit_documents', 'documents', '2024-03-11 17:06:40', '2024-03-11 17:06:40'),
(39, 'add_documents', 'documents', '2024-03-11 17:06:40', '2024-03-11 17:06:40'),
(40, 'delete_documents', 'documents', '2024-03-11 17:06:40', '2024-03-11 17:06:40'),
(51, 'browse_permissions', 'permissions', '2024-03-12 23:22:49', '2024-03-12 23:22:49'),
(52, 'read_permissions', 'permissions', '2024-03-12 23:22:49', '2024-03-12 23:22:49'),
(53, 'edit_permissions', 'permissions', '2024-03-12 23:22:49', '2024-03-12 23:22:49'),
(54, 'add_permissions', 'permissions', '2024-03-12 23:22:49', '2024-03-12 23:22:49'),
(55, 'delete_permissions', 'permissions', '2024-03-12 23:22:49', '2024-03-12 23:22:49'),
(56, 'browse_type_ops', 'type_ops', '2024-03-12 23:28:44', '2024-03-12 23:28:44'),
(57, 'read_type_ops', 'type_ops', '2024-03-12 23:28:44', '2024-03-12 23:28:44'),
(58, 'edit_type_ops', 'type_ops', '2024-03-12 23:28:44', '2024-03-12 23:28:44'),
(59, 'add_type_ops', 'type_ops', '2024-03-12 23:28:44', '2024-03-12 23:28:44'),
(60, 'delete_type_ops', 'type_ops', '2024-03-12 23:28:44', '2024-03-12 23:28:44'),
(61, 'browse_operations', 'operations', '2024-03-12 23:28:59', '2024-03-12 23:28:59'),
(62, 'read_operations', 'operations', '2024-03-12 23:28:59', '2024-03-12 23:28:59'),
(63, 'edit_operations', 'operations', '2024-03-12 23:28:59', '2024-03-12 23:28:59'),
(64, 'add_operations', 'operations', '2024-03-12 23:28:59', '2024-03-12 23:28:59'),
(65, 'delete_operations', 'operations', '2024-03-12 23:28:59', '2024-03-12 23:28:59');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(36, 3),
(36, 4),
(37, 1),
(37, 2),
(37, 3),
(37, 4),
(38, 1),
(38, 2),
(38, 3),
(38, 4),
(39, 1),
(39, 2),
(39, 3),
(39, 4),
(40, 1),
(40, 3),
(40, 4),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
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
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(2, 'user', 'Normal User', '2024-03-11 14:32:50', '2024-03-11 14:32:50'),
(3, 'chef_division', 'Chef Division', '2024-03-12 23:17:11', '2024-03-12 23:17:11'),
(4, 'chef_service', 'Chef Service', '2024-03-12 23:17:29', '2024-03-12 23:17:29');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_division` int(11) DEFAULT NULL,
  `nom_service` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id`, `id_division`, `nom_service`, `created_at`, `updated_at`) VALUES
(1, 1, 'Service 1', '2024-03-11 17:54:51', '2024-03-11 17:54:51');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `type_ops`
--

CREATE TABLE `type_ops` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'ayoub', 'admin@admin.com', 'users/default.png', NULL, '$2y$12$hrIHe8.ZgGsFBbVHqmRIFeqM6AfnE7j7E7ffAC/e2OUB8NYnnRQr6', NULL, NULL, '2024-03-11 16:04:00', '2024-03-11 16:04:00'),
(2, 2, 'usertest', 'usertest@email.com', 'users/default.png', NULL, '$2y$12$HyrlPxwCiUTiHij32wxRYO7QBhJAieJjqByMIcmUfc3xQMrnqG/1G', NULL, '{\"locale\":\"en\"}', '2024-03-11 18:23:44', '2024-03-11 18:23:44');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etap_docs`
--
ALTER TABLE `etap_docs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `historiques`
--
ALTER TABLE `historiques`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `operations`
--
ALTER TABLE `operations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `operation_documents`
--
ALTER TABLE `operation_documents`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `type_ops`
--
ALTER TABLE `type_ops`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `etap_docs`
--
ALTER TABLE `etap_docs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `historiques`
--
ALTER TABLE `historiques`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `operations`
--
ALTER TABLE `operations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `operation_documents`
--
ALTER TABLE `operation_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `type_ops`
--
ALTER TABLE `type_ops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
