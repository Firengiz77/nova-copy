-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 12 Haz 2022, 17:55:36
-- Sunucu sürümü: 10.4.21-MariaDB
-- PHP Sürümü: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `nova`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `action_events`
--

CREATE TABLE `action_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `actionable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `actionable_id` bigint(20) UNSIGNED NOT NULL,
  `target_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fields` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'running',
  `exception` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `original` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `changes` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `action_events`
--

INSERT INTO `action_events` (`id`, `batch_id`, `user_id`, `name`, `actionable_type`, `actionable_id`, `target_type`, `target_id`, `model_type`, `model_id`, `fields`, `status`, `exception`, `created_at`, `updated_at`, `original`, `changes`) VALUES
(1, '94b11248-de7f-4592-825b-16ae59da239d', 1, 'Create', 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, '', 'finished', '', '2021-10-22 01:59:28', '2021-10-22 01:59:28', NULL, '{\"address\":\"Baku\",\"email\":\"ilkin_mov22@mail.ru\",\"phone\":\"0519267503\",\"Fax\":\"34\",\"lngt\":\"444\",\"lgt\":\"32\",\"updated_at\":\"2021-10-22T05:59:28.000000Z\",\"created_at\":\"2021-10-22T05:59:28.000000Z\",\"id\":1}'),
(2, '94b11280-37a1-4fd6-be19-10173746c3db', 1, 'Update', 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, '', 'finished', '', '2021-10-22 02:00:05', '2021-10-22 02:00:05', '{\"fax\":\"34\"}', '{\"fax\":\"111111\"}'),
(3, '94b11883-921c-49bb-a758-407884e960bd', 1, 'Update', 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, '', 'finished', '', '2021-10-22 02:16:53', '2021-10-22 02:16:53', '{\"address\":\"Baku\"}', '{\"address\":\"{\\\"az\\\":444,\\\"en\\\":455555,\\\"ru\\\":7777777}\"}'),
(4, '94b122b4-9103-453b-b586-70ee6706fffa', 1, 'Create', 'App\\Models\\Page', 1, 'App\\Models\\Page', 1, 'App\\Models\\Page', 1, '', 'finished', '', '2021-10-22 02:45:23', '2021-10-22 02:45:23', NULL, '{\"title\":{\"az\":\"Haqqiizda\",\"en\":\"wer\",\"ru\":\"wer\"},\"description\":{\"az\":\"<div>sdf<\\/div>\",\"en\":\"<div>wer<\\/div>\",\"ru\":\"<div>wer<\\/div>\"},\"updated_at\":\"2021-10-22T06:45:23.000000Z\",\"created_at\":\"2021-10-22T06:45:23.000000Z\",\"id\":1}'),
(5, '94b7353b-1d5c-4a90-87cd-b17a691e9b21', 1, 'Update', 'App\\Models\\Page', 1, 'App\\Models\\Page', 1, 'App\\Models\\Page', 1, '', 'finished', '', '2021-10-25 03:12:10', '2021-10-25 03:12:10', '{\"title\":\"{\\\"az\\\":\\\"Haqqiizda\\\",\\\"en\\\":\\\"wer\\\",\\\"ru\\\":\\\"wer\\\"}\"}', '{\"title\":\"{\\\"az\\\":\\\"Haqqimizda\\\",\\\"en\\\":\\\"wer\\\",\\\"ru\\\":\\\"wer\\\"}\"}'),
(6, '94b735d6-0348-4e63-9f6f-0900ad5e58f3', 1, 'Update', 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, '', 'finished', '', '2021-10-25 03:13:51', '2021-10-25 03:13:51', '{\"address\":\"{\\\"az\\\":444,\\\"en\\\":455555,\\\"ru\\\":7777777}\"}', '{\"address\":\"{\\\"az\\\":\\\"Azerbaijan, AZ1143, Baku, H.Javid avenue 119 Institute of Geology and                         Geophysics of ANAS\\\",\\\"en\\\":455555,\\\"ru\\\":7777777}\"}'),
(7, '94b74e49-d60b-45d8-8e34-a002d671faf6', 1, 'Create', 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, '', 'finished', '', '2021-10-25 04:22:13', '2021-10-25 04:22:13', NULL, '{\"updated_at\":\"2021-10-25T08:22:13.000000Z\",\"created_at\":\"2021-10-25T08:22:13.000000Z\",\"id\":1}'),
(8, '94b74e59-5a91-4ccc-8779-bcbcc9b215da', 1, 'Create', 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, '', 'finished', '', '2021-10-25 04:22:24', '2021-10-25 04:22:24', NULL, '{\"updated_at\":\"2021-10-25T08:22:24.000000Z\",\"created_at\":\"2021-10-25T08:22:24.000000Z\",\"id\":2}'),
(9, '94b74e93-fcac-4a33-9bbf-334672e9e485', 1, 'Create', 'App\\Models\\Slider', 3, 'App\\Models\\Slider', 3, 'App\\Models\\Slider', 3, '', 'finished', '', '2021-10-25 04:23:02', '2021-10-25 04:23:02', NULL, '{\"updated_at\":\"2021-10-25T08:23:02.000000Z\",\"created_at\":\"2021-10-25T08:23:02.000000Z\",\"id\":3}'),
(10, '967e446a-c555-4c47-bf5f-dbd979ccd5f2', 2, 'Update', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '', 'finished', '', '2022-06-08 08:16:18', '2022-06-08 08:16:18', '{\"name\":\"Kamil\"}', '{\"name\":\"Fira\"}'),
(11, '96840864-1883-4dfe-b724-823895870ab0', 2, 'Create', 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, '', 'finished', '', '2022-06-11 05:03:26', '2022-06-11 05:03:26', NULL, '{\"email\":\"info@nutro.az\",\"phone\":\"070-888-45-81\",\"address\":\"Azerbaijan,Baku city,Nerimanov\",\"updated_at\":\"2022-06-11T09:03:26.000000Z\",\"created_at\":\"2022-06-11T09:03:26.000000Z\",\"id\":1}'),
(12, '968418e8-8142-4e24-996a-d3041206550a', 2, 'Create', 'App\\Models\\Category', 1, 'App\\Models\\Category', 1, 'App\\Models\\Category', 1, '', 'finished', '', '2022-06-11 05:49:37', '2022-06-11 05:49:37', NULL, '{\"name\":\"Hazelnut\",\"updated_at\":\"2022-06-11T09:49:37.000000Z\",\"created_at\":\"2022-06-11T09:49:37.000000Z\",\"id\":1}'),
(13, '968418f1-9e88-4e8d-b1cc-d720db25614d', 2, 'Create', 'App\\Models\\Category', 2, 'App\\Models\\Category', 2, 'App\\Models\\Category', 2, '', 'finished', '', '2022-06-11 05:49:43', '2022-06-11 05:49:43', NULL, '{\"name\":\"Sweet\",\"updated_at\":\"2022-06-11T09:49:43.000000Z\",\"created_at\":\"2022-06-11T09:49:43.000000Z\",\"id\":2}'),
(14, '96842906-5516-4966-b523-a84a3a75d670', 2, 'Create', 'App\\Models\\Product', 1, 'App\\Models\\Product', 1, 'App\\Models\\Product', 1, '', 'finished', '', '2022-06-11 06:34:41', '2022-06-11 06:34:41', NULL, '{\"category_id\":1,\"name\":\"Hazelnut Product 1\",\"short_desc\":\"Reference site about Lorem Ipsum, giving information on its origins, as\",\"desc\":\"Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator.\",\"updated_at\":\"2022-06-11T10:34:41.000000Z\",\"created_at\":\"2022-06-11T10:34:41.000000Z\",\"id\":1}'),
(15, '96842ba9-9c42-4395-9a42-99603f91bd47', 2, 'Create', 'App\\Models\\Product', 2, 'App\\Models\\Product', 2, 'App\\Models\\Product', 2, '', 'finished', '', '2022-06-11 06:42:03', '2022-06-11 06:42:03', NULL, '{\"category_id\":2,\"name\":\"Sweet Product\",\"short_desc\":\"@endforeach   @endforeach\",\"desc\":\"@endforeach   @endforeach   @endforeach   @endforeach   @endforeach   @endforeach\",\"updated_at\":\"2022-06-11T10:42:03.000000Z\",\"created_at\":\"2022-06-11T10:42:03.000000Z\",\"id\":2}'),
(16, '96842bc7-dfda-4c13-be1b-592a4e06324b', 2, 'Update', 'App\\Models\\Product', 2, 'App\\Models\\Product', 2, 'App\\Models\\Product', 2, '', 'finished', '', '2022-06-11 06:42:23', '2022-06-11 06:42:23', '{\"name\":\"Sweet Product\"}', '{\"name\":\"Sweet Product 1\"}'),
(17, '968430d1-d643-4961-bda8-dac6a230181a', 2, 'Update', 'App\\Models\\Product', 1, 'App\\Models\\Product', 1, 'App\\Models\\Product', 1, '', 'finished', '', '2022-06-11 06:56:29', '2022-06-11 06:56:29', '[]', '[]'),
(18, '9684312f-f2a2-4a91-94ce-248086985950', 2, 'Update', 'App\\Models\\Product', 2, 'App\\Models\\Product', 2, 'App\\Models\\Product', 2, '', 'finished', '', '2022-06-11 06:57:30', '2022-06-11 06:57:30', '[]', '[]'),
(19, '968432e8-0162-4152-9a43-1ec1963429ad', 2, 'Update', 'App\\Models\\Product', 2, 'App\\Models\\Product', 2, 'App\\Models\\Product', 2, '', 'finished', '', '2022-06-11 07:02:19', '2022-06-11 07:02:19', '[]', '[]'),
(20, '968433ac-d311-4398-bc01-68be91b6fe56', 2, 'Create', 'App\\Models\\Product', 3, 'App\\Models\\Product', 3, 'App\\Models\\Product', 3, '', 'finished', '', '2022-06-11 07:04:28', '2022-06-11 07:04:28', NULL, '{\"category_id\":1,\"name\":\"Hazelnut 2\",\"short_desc\":\"Tasty and delicious\",\"desc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"updated_at\":\"2022-06-11T11:04:28.000000Z\",\"created_at\":\"2022-06-11T11:04:28.000000Z\",\"id\":3}'),
(21, '968433bb-a02b-4e8f-9345-637e0d69c444', 2, 'Update', 'App\\Models\\Product', 3, 'App\\Models\\Product', 3, 'App\\Models\\Product', 3, '', 'finished', '', '2022-06-11 07:04:37', '2022-06-11 07:04:37', '[]', '[]'),
(24, '96843cb8-aab9-468c-8d21-bce15f47c335', 2, 'Update', 'App\\Models\\Category', 2, 'App\\Models\\Category', 2, 'App\\Models\\Category', 2, '', 'finished', '', '2022-06-11 07:29:45', '2022-06-11 07:29:45', '[]', '[]'),
(25, '96843ce3-6970-49a9-92f4-7e920c2ea3c1', 2, 'Update', 'App\\Models\\Category', 1, 'App\\Models\\Category', 1, 'App\\Models\\Category', 1, '', 'finished', '', '2022-06-11 07:30:13', '2022-06-11 07:30:13', '{\"slug\":\"\"}', '{\"slug\":\"hazelnut\"}'),
(26, '96843f22-a9f4-4a65-ad35-e5766410766a', 2, 'Update', 'App\\Models\\Category', 2, 'App\\Models\\Category', 2, 'App\\Models\\Category', 2, '', 'finished', '', '2022-06-11 07:36:30', '2022-06-11 07:36:30', '{\"slug\":\"\"}', '{\"slug\":\"sweet\"}'),
(27, '96843fe6-4ada-4c7c-b82f-147091e0f757', 2, 'Update', 'App\\Models\\Product', 3, 'App\\Models\\Product', 3, 'App\\Models\\Product', 3, '', 'finished', '', '2022-06-11 07:38:39', '2022-06-11 07:38:39', '{\"slug\":\"\"}', '{\"slug\":\"hazelnut-2\"}'),
(28, '96843ff2-55bf-48a4-a36b-05b65b916093', 2, 'Update', 'App\\Models\\Product', 2, 'App\\Models\\Product', 2, 'App\\Models\\Product', 2, '', 'finished', '', '2022-06-11 07:38:46', '2022-06-11 07:38:46', '{\"slug\":\"\"}', '{\"slug\":\"sweet-product-1\"}'),
(29, '96843ffe-56bb-4218-b53f-2c7ba9e2f570', 2, 'Update', 'App\\Models\\Product', 1, 'App\\Models\\Product', 1, 'App\\Models\\Product', 1, '', 'finished', '', '2022-06-11 07:38:54', '2022-06-11 07:38:54', '{\"slug\":\"\"}', '{\"slug\":\"hazelnut-product-1\"}'),
(30, '968446d4-64d9-404d-855f-92f4ba73736c', 2, 'Delete', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '', 'finished', '', '2022-06-11 07:58:01', '2022-06-11 07:58:01', NULL, NULL),
(31, '9684470e-996c-43c1-9c9d-9f805e6bbbb8', 2, 'Update', 'App\\Models\\Page', 1, 'App\\Models\\Page', 1, 'App\\Models\\Page', 1, '', 'finished', '', '2022-06-11 07:58:39', '2022-06-11 07:58:39', '{\"description\":\"{\\\"az\\\":\\\"<div>sdf<\\\\\\/div>\\\",\\\"en\\\":\\\"<div>wer<\\\\\\/div>\\\",\\\"ru\\\":\\\"<div>wer<\\\\\\/div>\\\"}\"}', '{\"description\":\"{\\\"az\\\":\\\"<div>s<strong>df<\\\\\\/strong><\\\\\\/div>\\\",\\\"en\\\":\\\"<div>wer<\\\\\\/div>\\\",\\\"ru\\\":\\\"<div>wer<\\\\\\/div>\\\"}\"}'),
(32, '96844eff-adb1-49f7-81f2-d7a8930e896f', 2, 'Create', 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, '', 'finished', '', '2022-06-11 08:20:52', '2022-06-11 08:20:52', NULL, '{\"title\":\"Nutro az\",\"desc1\":\"Slider 1 desc 1.1\",\"desc2\":\"Slider 1 desc 2.1\",\"link\":\"link any\",\"updated_at\":\"2022-06-11T12:20:52.000000Z\",\"created_at\":\"2022-06-11T12:20:52.000000Z\",\"id\":1}'),
(33, '96844f37-b5ea-47ed-b25c-bcb5aa2a2895', 2, 'Create', 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, '', 'finished', '', '2022-06-11 08:21:29', '2022-06-11 08:21:29', NULL, '{\"title\":\"Nutro Az slider 2\",\"desc1\":\"slider 2 desc 1.2\",\"desc2\":\"slider 2 desc 2.1\",\"link\":\"linkayns2\",\"updated_at\":\"2022-06-11T12:21:29.000000Z\",\"created_at\":\"2022-06-11T12:21:29.000000Z\",\"id\":2}'),
(34, '96845093-a54d-4af6-a8d1-6060f0d5f86a', 2, 'Update', 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, '', 'finished', '', '2022-06-11 08:25:17', '2022-06-11 08:25:17', '[]', '[]'),
(35, '96845383-2a5f-4e4e-825c-0587122ccdb4', 2, 'Update', 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, '', 'finished', '', '2022-06-11 08:33:29', '2022-06-11 08:33:29', '[]', '[]');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Hazelnut', '2022-06-11 05:49:37', '2022-06-11 07:30:13', 'hazelnut'),
(2, 'Sweet', '2022-06-11 05:49:43', '2022-06-11 07:36:30', 'sweet');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'info@nutro.az', 'Azerbaijan,Baku city,Nerimanov', '070-888-45-81', '2022-06-11 05:03:26', '2022-06-11 05:03:26');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `languages`
--

INSERT INTO `languages` (`id`, `name`, `language`, `created_at`, `updated_at`) VALUES
(1, NULL, 'az', '2021-10-22 01:36:08', '2021-10-22 01:36:08'),
(2, NULL, 'en', '2021-10-22 01:36:08', '2021-10-22 01:36:08'),
(3, NULL, 'ru', '2021-10-22 01:36:08', '2021-10-22 01:36:08');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Slider', 1, 'aa4ff4c4-b7e5-4802-b57d-1087fb149b70', 'image', 'slider_01', 'slider_01.jpg', 'image/jpeg', 'public', 'public', 138978, '[]', '[]', '{\"preview\": true}', '[]', 1, '2021-10-25 04:22:14', '2021-10-25 04:22:18'),
(2, 'App\\Models\\Slider', 2, '4aed3573-8bea-4dee-a13f-99ebbde35947', 'image', 'slider_02', 'slider_02.jpg', 'image/jpeg', 'public', 'public', 142664, '[]', '[]', '{\"preview\": true}', '[]', 1, '2021-10-25 04:22:24', '2021-10-25 04:22:24'),
(3, 'App\\Models\\Slider', 3, 'c98376e0-ebaf-44ff-8761-e8b0f5c75ff5', 'image', 'subheader_img', 'subheader_img.jpg', 'image/jpeg', 'public', 'public', 120967, '[]', '[]', '{\"preview\": true}', '[]', 1, '2021-10-25 04:23:02', '2021-10-25 04:23:02'),
(4, 'App\\Models\\Product', 1, '6d6915c0-943c-41a1-8fdf-d888bf6014de', 'images', 'hazelnut1', 'hazelnut1.jpg', 'image/jpeg', 'public', 'public', 9716, '[]', '[]', '{\"preview\":true}', '[]', 1, '2022-06-11 06:56:29', '2022-06-11 06:56:29'),
(6, 'App\\Models\\Product', 2, 'b7588eb8-81b4-459e-8fc0-be35250675cb', 'images', 'hazelnut2', 'hazelnut2.jpg', 'image/jpeg', 'public', 'public', 16282, '[]', '[]', '{\"preview\":true}', '[]', 1, '2022-06-11 06:57:30', '2022-06-11 07:02:19'),
(7, 'App\\Models\\Product', 2, 'd1e6e2e0-239f-48de-9002-06ff3535ff5d', 'images', 'hazelnut3', 'hazelnut3.jpg', 'image/jpeg', 'public', 'public', 8797, '[]', '[]', '{\"preview\":true}', '[]', 2, '2022-06-11 06:57:30', '2022-06-11 07:02:19'),
(9, 'App\\Models\\Product', 3, '41a410ba-39d5-48ad-bf16-2f5724924db5', 'images', 'hazelnut3', 'hazelnut3.jpg', 'image/jpeg', 'public', 'public', 8797, '[]', '[]', '{\"preview\":true}', '[]', 1, '2022-06-11 07:04:28', '2022-06-11 07:04:37'),
(10, 'App\\Models\\Product', 3, 'f63b7185-d114-468d-8f3c-a43b8ae9d507', 'images', 'hazelnut4', 'hazelnut4.jpg', 'image/jpeg', 'public', 'public', 9450, '[]', '[]', '{\"preview\":true}', '[]', 2, '2022-06-11 07:04:28', '2022-06-11 07:04:37'),
(11, 'App\\Models\\Product', 3, '207bae77-4af5-43be-8e8d-84ec85006e88', 'images', 'hazelnut5', 'hazelnut5.jpg', 'image/jpeg', 'public', 'public', 7655, '[]', '[]', '{\"preview\":true}', '[]', 3, '2022-06-11 07:04:28', '2022-06-11 07:04:37'),
(14, 'App\\Models\\Slider', 2, 'e6c2f656-a309-4883-8581-23025a123e31', 'images', 'error-wait', 'error-wait.gif', 'image/gif', 'public', 'public', 407297, '[]', '[]', '{\"preview\":true}', '[]', 1, '2022-06-11 08:25:17', '2022-06-11 08:25:17'),
(15, 'App\\Models\\Slider', 1, 'b2fdd592-2284-4fd8-829a-e13f88a79eb2', 'images', 'hazelnut3 1(1)', 'hazelnut3-1(1).jpg', 'image/jpeg', 'public', 'public', 261868, '[]', '[]', '{\"preview\":true}', '[]', 1, '2022-06-11 08:33:29', '2022-06-11 08:33:29');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `msg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `msg`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@gmail.com', 'test for nutro', '2022-06-11 05:46:07', '2022-06-11 05:46:07'),
(2, 'test', 'test@gmail.com', 'test for nutro', '2022-06-11 05:46:27', '2022-06-11 05:46:27');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_01_01_000000_create_action_events_table', 1),
(4, '2018_08_29_200844_create_languages_table', 1),
(5, '2018_08_29_205156_create_translations_table', 1),
(6, '2019_05_10_000000_add_fields_to_action_events_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2021_06_14_122719_create_media_table', 1),
(9, '2021_06_25_103419_add_to_users', 1),
(10, '2021_06_25_115527_add_to_users_admin_active', 1),
(11, '2021_10_22_054411_create_contact_table', 2),
(12, '2021_10_22_060702_create_pages_table', 3),
(13, '2021_10_25_081202_create_sliders_table', 4),
(14, '2021_10_25_091629_create_country_and_locations_table', 5),
(15, '2019_12_14_000001_create_personal_access_tokens_table', 6),
(16, '2022_06_11_085511_create_contacts_table', 7),
(17, '2022_06_11_092509_create_messages_table', 8),
(18, '2022_06_11_094741_create_categories_table', 9),
(19, '2022_06_11_101643_create_products_table', 10),
(20, '2022_06_11_112000_add_column_to_slug_products_table', 11),
(21, '2022_06_11_112145_add_slug_to_categories_table', 11),
(22, '2022_06_11_121213_create_sliders_table', 12),
(23, '2022_06_11_121703_add_column_to_sliders_table', 13);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `sort_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `pages`
--

INSERT INTO `pages` (`id`, `title`, `description`, `sort_number`, `created_at`, `updated_at`) VALUES
(1, '{\"az\":\"Haqqimizda\",\"en\":\"wer\",\"ru\":\"wer\"}', '{\"az\":\"<div>s<strong>df<\\/strong><\\/div>\",\"en\":\"<div>wer<\\/div>\",\"ru\":\"<div>wer<\\/div>\"}', 0, '2021-10-22 02:45:23', '2022-06-11 07:58:39');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `name`, `short_desc`, `desc`, `category_id`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Hazelnut Product 1', 'Reference site about Lorem Ipsum, giving information on its origins, as', 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator.', 1, '2022-06-11 06:34:41', '2022-06-11 07:38:54', 'hazelnut-product-1'),
(2, 'Sweet Product 1', '@endforeach   @endforeach', '@endforeach   @endforeach   @endforeach   @endforeach   @endforeach   @endforeach', 2, '2022-06-11 06:42:03', '2022-06-11 07:38:46', 'sweet-product-1'),
(3, 'Hazelnut 2', 'Tasty and delicious', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, '2022-06-11 07:04:28', '2022-06-11 07:38:39', 'hazelnut-2');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `desc1`, `desc2`, `created_at`, `updated_at`, `link`) VALUES
(1, 'Nutro az', 'Slider 1 desc 1.1', 'Slider 1 desc 2.1', '2022-06-11 08:20:52', '2022-06-11 08:20:52', 'link any'),
(2, 'Nutro Az slider 2', 'slider 2 desc 1.2', 'slider 2 desc 2.1', '2022-06-11 08:21:29', '2022-06-11 08:21:29', 'linkayns2');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key` text COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` timestamp NULL DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `domain_id` bigint(20) UNSIGNED DEFAULT NULL,
  `basket_token` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_active` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `phone`, `phone_verified_at`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`, `domain_id`, `basket_token`, `admin_active`) VALUES
(2, 'Admin', 'admin@a.a', NULL, NULL, NULL, '$2y$10$pmKfklw0fZB4BqIC2k5dm.LOB/vJgcBNCJ/dqjB.84q/JvDY9QxSq', NULL, NULL, '2022-06-08 08:13:03', '2022-06-08 08:13:03', NULL, NULL, 1);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `action_events`
--
ALTER TABLE `action_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action_events_actionable_type_actionable_id_index` (`actionable_type`,`actionable_id`),
  ADD KEY `action_events_batch_id_model_type_model_id_index` (`batch_id`,`model_type`,`model_id`),
  ADD KEY `action_events_user_id_index` (`user_id`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Tablo için indeksler `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `action_events`
--
ALTER TABLE `action_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Tablo için AUTO_INCREMENT değeri `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `translations`
--
ALTER TABLE `translations`
  ADD CONSTRAINT `translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
