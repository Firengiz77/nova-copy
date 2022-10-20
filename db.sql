-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table anas.action_events
CREATE TABLE IF NOT EXISTS `action_events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `batch_id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `actionable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `actionable_id` bigint(20) unsigned NOT NULL,
  `target_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned DEFAULT NULL,
  `fields` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'running',
  `exception` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `original` mediumtext COLLATE utf8_unicode_ci,
  `changes` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `action_events_actionable_type_actionable_id_index` (`actionable_type`,`actionable_id`),
  KEY `action_events_batch_id_model_type_model_id_index` (`batch_id`,`model_type`,`model_id`),
  KEY `action_events_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table anas.action_events: ~8 rows (approximately)
/*!40000 ALTER TABLE `action_events` DISABLE KEYS */;
INSERT INTO `action_events` (`id`, `batch_id`, `user_id`, `name`, `actionable_type`, `actionable_id`, `target_type`, `target_id`, `model_type`, `model_id`, `fields`, `status`, `exception`, `created_at`, `updated_at`, `original`, `changes`) VALUES
	(1, '94b11248-de7f-4592-825b-16ae59da239d', 1, 'Create', 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, '', 'finished', '', '2021-10-22 05:59:28', '2021-10-22 05:59:28', NULL, '{"address":"Baku","email":"ilkin_mov22@mail.ru","phone":"0519267503","Fax":"34","lngt":"444","lgt":"32","updated_at":"2021-10-22T05:59:28.000000Z","created_at":"2021-10-22T05:59:28.000000Z","id":1}'),
	(2, '94b11280-37a1-4fd6-be19-10173746c3db', 1, 'Update', 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, '', 'finished', '', '2021-10-22 06:00:05', '2021-10-22 06:00:05', '{"fax":"34"}', '{"fax":"111111"}'),
	(3, '94b11883-921c-49bb-a758-407884e960bd', 1, 'Update', 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, '', 'finished', '', '2021-10-22 06:16:53', '2021-10-22 06:16:53', '{"address":"Baku"}', '{"address":"{\\"az\\":444,\\"en\\":455555,\\"ru\\":7777777}"}'),
	(4, '94b122b4-9103-453b-b586-70ee6706fffa', 1, 'Create', 'App\\Models\\Page', 1, 'App\\Models\\Page', 1, 'App\\Models\\Page', 1, '', 'finished', '', '2021-10-22 06:45:23', '2021-10-22 06:45:23', NULL, '{"title":{"az":"Haqqiizda","en":"wer","ru":"wer"},"description":{"az":"<div>sdf<\\/div>","en":"<div>wer<\\/div>","ru":"<div>wer<\\/div>"},"updated_at":"2021-10-22T06:45:23.000000Z","created_at":"2021-10-22T06:45:23.000000Z","id":1}'),
	(5, '94b7353b-1d5c-4a90-87cd-b17a691e9b21', 1, 'Update', 'App\\Models\\Page', 1, 'App\\Models\\Page', 1, 'App\\Models\\Page', 1, '', 'finished', '', '2021-10-25 07:12:10', '2021-10-25 07:12:10', '{"title":"{\\"az\\":\\"Haqqiizda\\",\\"en\\":\\"wer\\",\\"ru\\":\\"wer\\"}"}', '{"title":"{\\"az\\":\\"Haqqimizda\\",\\"en\\":\\"wer\\",\\"ru\\":\\"wer\\"}"}'),
	(6, '94b735d6-0348-4e63-9f6f-0900ad5e58f3', 1, 'Update', 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, 'App\\Models\\Contact', 1, '', 'finished', '', '2021-10-25 07:13:51', '2021-10-25 07:13:51', '{"address":"{\\"az\\":444,\\"en\\":455555,\\"ru\\":7777777}"}', '{"address":"{\\"az\\":\\"Azerbaijan, AZ1143, Baku, H.Javid avenue 119 Institute of Geology and                         Geophysics of ANAS\\",\\"en\\":455555,\\"ru\\":7777777}"}'),
	(7, '94b74e49-d60b-45d8-8e34-a002d671faf6', 1, 'Create', 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, 'App\\Models\\Slider', 1, '', 'finished', '', '2021-10-25 08:22:13', '2021-10-25 08:22:13', NULL, '{"updated_at":"2021-10-25T08:22:13.000000Z","created_at":"2021-10-25T08:22:13.000000Z","id":1}'),
	(8, '94b74e59-5a91-4ccc-8779-bcbcc9b215da', 1, 'Create', 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, 'App\\Models\\Slider', 2, '', 'finished', '', '2021-10-25 08:22:24', '2021-10-25 08:22:24', NULL, '{"updated_at":"2021-10-25T08:22:24.000000Z","created_at":"2021-10-25T08:22:24.000000Z","id":2}'),
	(9, '94b74e93-fcac-4a33-9bbf-334672e9e485', 1, 'Create', 'App\\Models\\Slider', 3, 'App\\Models\\Slider', 3, 'App\\Models\\Slider', 3, '', 'finished', '', '2021-10-25 08:23:02', '2021-10-25 08:23:02', NULL, '{"updated_at":"2021-10-25T08:23:02.000000Z","created_at":"2021-10-25T08:23:02.000000Z","id":3}');
/*!40000 ALTER TABLE `action_events` ENABLE KEYS */;

-- Dumping structure for table anas.contacts
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(2550) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lgt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lngt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `map_url` varchar(2550) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table anas.contacts: ~1 rows (approximately)
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` (`id`, `address`, `phone`, `fax`, `email`, `lgt`, `lngt`, `map_url`, `created_at`, `updated_at`) VALUES
	(1, '{"az":"Azerbaijan, AZ1143, Baku, H.Javid avenue 119 Institute of Geology and                         Geophysics of ANAS","en":455555,"ru":7777777}', '0519267503', '111111', 'ilkin_mov22@mail.ru', '32', '444', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1519.6074756700957!2d49.89561917685667!3d40.38192836437485!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40307d22f1660e07%3A0xe7be75297b2fadc3!2sHunerGroup!5e0!3m2!1sru!2s!4v1631257355122!5m2!1sru!2s', '2021-10-22 05:59:28', '2021-10-25 07:13:51');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;

-- Dumping structure for table anas.country_and_locations
CREATE TABLE IF NOT EXISTS `country_and_locations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sort_number` int(11) NOT NULL DEFAULT '0',
  `name` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_and_locations_parent_id_foreign` (`parent_id`),
  CONSTRAINT `country_and_locations_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `country_and_locations` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table anas.country_and_locations: ~0 rows (approximately)
/*!40000 ALTER TABLE `country_and_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `country_and_locations` ENABLE KEYS */;

-- Dumping structure for table anas.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table anas.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table anas.languages
CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table anas.languages: ~0 rows (approximately)
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` (`id`, `name`, `language`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'az', '2021-10-22 05:36:08', '2021-10-22 05:36:08'),
	(2, NULL, 'en', '2021-10-22 05:36:08', '2021-10-22 05:36:08'),
	(3, NULL, 'ru', '2021-10-22 05:36:08', '2021-10-22 05:36:08');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;

-- Dumping structure for table anas.media
CREATE TABLE IF NOT EXISTS `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  `uuid` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_uuid_unique` (`uuid`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table anas.media: ~2 rows (approximately)
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
	(1, 'App\\Models\\Slider', 1, 'aa4ff4c4-b7e5-4802-b57d-1087fb149b70', 'image', 'slider_01', 'slider_01.jpg', 'image/jpeg', 'public', 'public', 138978, '[]', '[]', '{"preview": true}', '[]', 1, '2021-10-25 08:22:14', '2021-10-25 08:22:18'),
	(2, 'App\\Models\\Slider', 2, '4aed3573-8bea-4dee-a13f-99ebbde35947', 'image', 'slider_02', 'slider_02.jpg', 'image/jpeg', 'public', 'public', 142664, '[]', '[]', '{"preview": true}', '[]', 1, '2021-10-25 08:22:24', '2021-10-25 08:22:24'),
	(3, 'App\\Models\\Slider', 3, 'c98376e0-ebaf-44ff-8761-e8b0f5c75ff5', 'image', 'subheader_img', 'subheader_img.jpg', 'image/jpeg', 'public', 'public', 120967, '[]', '[]', '{"preview": true}', '[]', 1, '2021-10-25 08:23:02', '2021-10-25 08:23:02');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;

-- Dumping structure for table anas.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table anas.migrations: ~10 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
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
	(14, '2021_10_25_091629_create_country_and_locations_table', 5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table anas.pages
CREATE TABLE IF NOT EXISTS `pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `sort_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table anas.pages: ~1 rows (approximately)
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `title`, `description`, `sort_number`, `created_at`, `updated_at`) VALUES
	(1, '{"az":"Haqqimizda","en":"wer","ru":"wer"}', '{"az":"<div>sdf<\\/div>","en":"<div>wer<\\/div>","ru":"<div>wer<\\/div>"}', 0, '2021-10-22 06:45:23', '2021-10-25 07:12:10');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;

-- Dumping structure for table anas.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table anas.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table anas.sliders
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sort_number` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table anas.sliders: ~2 rows (approximately)
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` (`id`, `sort_number`, `created_at`, `updated_at`) VALUES
	(1, 0, '2021-10-25 08:22:13', '2021-10-25 08:22:42'),
	(2, 1, '2021-10-25 08:22:24', '2021-10-25 08:22:42'),
	(3, 0, '2021-10-25 08:23:02', '2021-10-25 08:23:02');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;

-- Dumping structure for table anas.translations
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(10) unsigned NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key` text COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `translations_language_id_foreign` (`language_id`),
  CONSTRAINT `translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table anas.translations: ~0 rows (approximately)
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;

-- Dumping structure for table anas.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `domain_id` bigint(20) unsigned DEFAULT NULL,
  `basket_token` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_active` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table anas.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `phone`, `phone_verified_at`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`, `domain_id`, `basket_token`, `admin_active`) VALUES
	(1, 'Kamil', 'k@mail.ru', NULL, NULL, NULL, '$2y$10$6ZTafex1F8TyoOl5tXvtre0T/ElhPYfH4r9VNKc.2xwYH9g0rUfua', NULL, NULL, '2021-10-22 05:37:42', '2021-10-22 05:37:42', NULL, NULL, 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
