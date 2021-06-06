-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table openplay_pricing.members
DROP TABLE IF EXISTS `members`;
CREATE TABLE IF NOT EXISTS `members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `membership_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table openplay_pricing.members: ~500 rows (approximately)
DELETE FROM `members`;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` (`id`, `name`, `membership_type`, `date_of_birth`, `created_at`, `updated_at`) VALUES
	(1, 'Cristobal O\'Hara', 'silver', '1945-07-02', '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(2, 'Adrain Koepp', 'gold', '1944-05-15', '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(3, 'Meggie McClure III', 'bronze', '1988-10-20', '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(4, 'Natasha Pagac', 'silver', '1969-06-11', '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(5, 'Ruthie Altenwerth', 'platinum', '2003-10-23', '2021-06-06 15:13:26', '2021-06-06 15:13:26');

/*!40000 ALTER TABLE `members` ENABLE KEYS */;

-- Dumping structure for table openplay_pricing.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table openplay_pricing.migrations: ~6 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2019_06_29_130555_create_pricing_options_table', 1),
	(2, '2019_06_29_130615_create_products_table', 1),
	(3, '2019_06_29_134916_create_pricing_modifiers_table', 1),
	(4, '2019_06_29_135207_create_pricing_option_pricing_modifiers_table', 1),
	(5, '2019_06_30_115016_create_members_table', 1),
	(6, '2019_06_30_120239_create_venues_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table openplay_pricing.pricing_modifiers
DROP TABLE IF EXISTS `pricing_modifiers`;
CREATE TABLE IF NOT EXISTS `pricing_modifiers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table openplay_pricing.pricing_modifiers: ~25 rows (approximately)
DELETE FROM `pricing_modifiers`;
/*!40000 ALTER TABLE `pricing_modifiers` DISABLE KEYS */;
INSERT INTO `pricing_modifiers` (`id`, `name`, `type`, `settings`, `created_at`, `updated_at`) VALUES
	(1, 'Mayert Ltd', 'member_age_multiplier', '{"age_range": {"to": 25, "from": 0}, "multiplier": 0.8}', '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(2, 'Anderson, Rodriguez and Mraz', 'venue_override', '{"multiplier": 5.5, "venue_locations": ["London", "Kidderminster"]}', '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(3, 'Monahan, Crooks and Strosin', 'basic_adjustment', '{"adjustment": -5}', '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(4, 'Considine-Lesch', 'basic_multiplier', '{"multiplier": 1.25}', '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(5, 'Haag-Collins', 'basic_multiplier', '{"multiplier": 0.5}', '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(6, 'Johnston-Bailey', 'basic_override', '{"price": 5}', '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(7, 'Bode Ltd', 'member_age_multiplier', '{"age_range": {"to": 25, "from": 0}, "multiplier": 0.8}', '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(8, 'Weimann PLC', 'venue_override', '{"price": 3, "venue_locations": ["Glasgow"]}', '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(9, 'Mosciski-Mayert', 'member_age_multiplier', '{"age_range": {"to": 25, "from": 0}, "multiplier": 0.8}', '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(10, 'Kreiger Group', 'basic_adjustment', '{"adjustment": 50}', '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(11, 'Bayer PLC', 'membership_type_flat_adjustment', '{"adjustment": -2, "membership_types": ["silver", "gold", "platinum"]}', '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(12, 'Ernser Inc', 'basic_adjustment', '{"adjustment": -15}', '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(13, 'Schinner, Wisoky and Ledner', 'basic_multiplier', '{"multiplier": 0.5}', '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(14, 'Toy, Stroman and Anderson', 'membership_type_flat_adjustment', '{"adjustment": -2, "membership_types": ["silver", "gold", "platinum"]}', '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(15, 'Breitenberg-Schmidt', 'basic_multiplier', '{"multiplier": 0.8}', '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(16, 'Watsica PLC', 'basic_adjustment', '{"adjustment": 2}', '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(17, 'Carroll LLC', 'basic_override', '{"price": 5}', '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(18, 'Nitzsche, Bayer and Jacobs', 'basic_adjustment', '{"adjustment": -15}', '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(19, 'Rowe, Kreiger and Tromp', 'member_age_multiplier', '{"age_range": {"to": 25, "from": 0}, "multiplier": 0.8}', '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(20, 'Dicki-Maggio', 'membership_type_flat_adjustment', '{"price": 0, "membership_types": ["platinum"]}', '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(21, 'Gerhold-Kunze', 'basic_override', '{"price": 5}', '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(22, 'Corwin, Waters and Hills', 'membership_type_flat_adjustment', '{"adjustment": -2, "membership_types": ["silver", "gold", "platinum"]}', '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(23, 'Stiedemann-Brakus', 'venue_override', '{"price": 3, "venue_locations": ["Glasgow"]}', '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(24, 'Simonis-Considine', 'venue_override', '{"price": 3, "venue_locations": ["Glasgow"]}', '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(25, 'Jones Ltd', 'venue_override', '{"multiplier": 5.5, "venue_locations": ["London", "Kidderminster"]}', '2021-06-06 15:13:25', '2021-06-06 15:13:25');
/*!40000 ALTER TABLE `pricing_modifiers` ENABLE KEYS */;

-- Dumping structure for table openplay_pricing.pricing_options
DROP TABLE IF EXISTS `pricing_options`;
CREATE TABLE IF NOT EXISTS `pricing_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table openplay_pricing.pricing_options: ~50 rows (approximately)
DELETE FROM `pricing_options`;
/*!40000 ALTER TABLE `pricing_options` DISABLE KEYS */;
INSERT INTO `pricing_options` (`id`, `name`, `type`, `price`, `created_at`, `updated_at`) VALUES
	(1, 'SlateBlue Elite', 'elite', 114.82, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(2, 'LightGoldenRodYellow Premium', 'premium', 100.00, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(3, 'Magenta Premium', 'premium', 100.00, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(4, 'Magenta Premium', 'premium', 178.05, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(5, 'PapayaWhip Premium', 'premium', 133.48, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(6, 'ForestGreen Elite', 'elite', 12.37, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(7, 'MediumOrchid Basic', 'basic', 100.00, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(8, 'MidnightBlue Basic', 'basic', 167.64, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(9, 'Olive Basic', 'basic', 64.02, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(10, 'WhiteSmoke Premium', 'premium', 150.28, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(11, 'OldLace Premium', 'premium', 7.91, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(12, 'Magenta Basic', 'basic', 51.99, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(13, 'RoyalBlue Premium', 'premium', 165.40, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(14, 'LightBlue Basic', 'basic', 100.00, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(15, 'BurlyWood Basic', 'basic', 12.56, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(16, 'GoldenRod Basic', 'basic', 78.72, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(17, 'GhostWhite Elite', 'elite', 185.40, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(18, 'MediumAquaMarine Elite', 'elite', 42.10, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(19, 'Thistle Premium', 'premium', 178.61, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(20, 'Peru Elite', 'elite', 38.66, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(21, 'DarkCyan Basic', 'basic', 165.32, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(22, 'FloralWhite Basic', 'basic', 122.40, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(23, 'OldLace Elite', 'elite', 17.47, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(24, 'DimGray Premium', 'premium', 114.67, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(25, 'OldLace Basic', 'basic', 64.76, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(26, 'DarkMagenta Premium', 'premium', 148.90, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(27, 'Lime Elite', 'elite', 149.17, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(28, 'Tan Basic', 'basic', 88.54, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(29, 'Crimson Basic', 'basic', 145.41, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(30, 'Magenta Premium', 'premium', 89.60, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(31, 'LightCoral Elite', 'elite', 60.84, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(32, 'LightPink Basic', 'basic', 47.31, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(33, 'Gainsboro Elite', 'elite', 5.22, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(34, 'Snow Elite', 'elite', 184.19, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(35, 'MediumBlue Basic', 'basic', 21.07, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(36, 'Orchid Elite', 'elite', 184.09, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(37, 'MediumVioletRed Premium', 'premium', 147.71, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(38, 'LightCyan Premium', 'premium', 112.93, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(39, 'LightSlateGray Elite', 'elite', 95.83, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(40, 'DarkRed Elite', 'elite', 152.95, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(41, 'Magenta Elite', 'elite', 153.79, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(42, 'GoldenRod Elite', 'elite', 5.17, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(43, 'FireBrick Elite', 'elite', 158.47, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(44, 'Teal Elite', 'elite', 185.98, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(45, 'FireBrick Basic', 'basic', 129.45, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(46, 'Sienna Basic', 'basic', 102.87, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(47, 'DeepPink Elite', 'elite', 195.08, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(48, 'CornflowerBlue Basic', 'basic', 196.18, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(49, 'Fuchsia Basic', 'basic', 17.58, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(50, 'SlateBlue Premium', 'premium', 77.67, '2021-06-06 15:13:25', '2021-06-06 15:13:25');
/*!40000 ALTER TABLE `pricing_options` ENABLE KEYS */;

-- Dumping structure for table openplay_pricing.pricing_option_pricing_modifiers
DROP TABLE IF EXISTS `pricing_option_pricing_modifiers`;
CREATE TABLE IF NOT EXISTS `pricing_option_pricing_modifiers` (
  `pricing_modifier_id` int(10) unsigned NOT NULL,
  `pricing_option_id` int(10) unsigned NOT NULL,
  `valid_from` datetime NOT NULL,
  `valid_to` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `pricing_option_pricing_modifiers_pricing_modifier_id_foreign` (`pricing_modifier_id`),
  KEY `pricing_option_pricing_modifiers_pricing_option_id_foreign` (`pricing_option_id`),
  CONSTRAINT `pricing_option_pricing_modifiers_pricing_modifier_id_foreign` FOREIGN KEY (`pricing_modifier_id`) REFERENCES `pricing_modifiers` (`id`),
  CONSTRAINT `pricing_option_pricing_modifiers_pricing_option_id_foreign` FOREIGN KEY (`pricing_option_id`) REFERENCES `pricing_options` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table openplay_pricing.pricing_option_pricing_modifiers: ~193 rows (approximately)
DELETE FROM `pricing_option_pricing_modifiers`;
/*!40000 ALTER TABLE `pricing_option_pricing_modifiers` DISABLE KEYS */;
INSERT INTO `pricing_option_pricing_modifiers` (`pricing_modifier_id`, `pricing_option_id`, `valid_from`, `valid_to`, `active`, `created_at`, `updated_at`) VALUES
	(2, 1, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(7, 1, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(11, 1, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(21, 1, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(5, 2, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(9, 2, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(12, 2, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(14, 2, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(20, 2, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(22, 2, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(23, 2, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(9, 3, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(16, 3, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(6, 4, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(12, 4, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(18, 4, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(19, 4, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(21, 4, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(3, 5, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(8, 5, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(11, 5, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(12, 5, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(13, 5, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(14, 5, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(16, 5, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(21, 5, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(16, 6, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(1, 7, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(20, 7, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(23, 7, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(24, 7, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(1, 8, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(10, 8, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(11, 8, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(17, 8, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(22, 8, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(24, 8, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(25, 8, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(5, 9, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(6, 9, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(11, 9, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(12, 9, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(13, 9, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(14, 9, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(17, 9, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(21, 9, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(1, 10, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(4, 10, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(9, 10, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(11, 10, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(13, 10, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(16, 10, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(20, 10, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(21, 10, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(1, 11, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(22, 11, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(23, 11, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(1, 12, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(5, 12, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(8, 12, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(11, 12, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(16, 12, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(22, 14, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(3, 15, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(6, 15, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(9, 16, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(10, 16, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(6, 18, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(12, 18, '2021-06-06 15:13:25', NULL, 0, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(14, 18, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(16, 18, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(19, 18, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(22, 18, '2021-06-06 15:13:25', NULL, 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(12, 21, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(13, 21, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(10, 22, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(11, 22, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(12, 22, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(1, 23, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(3, 23, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(6, 23, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(12, 23, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(14, 23, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(15, 23, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(25, 23, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(17, 25, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(23, 25, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(4, 26, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(12, 26, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(15, 26, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(16, 26, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(19, 26, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(25, 26, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(4, 27, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(8, 27, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(10, 27, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(11, 27, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(16, 27, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(11, 28, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(12, 28, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(15, 28, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(3, 30, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(17, 30, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(5, 31, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(6, 31, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(7, 31, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(10, 31, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(15, 31, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(20, 31, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(23, 31, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(25, 31, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(4, 32, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(7, 32, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(13, 32, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(18, 32, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(19, 32, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(23, 32, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(1, 34, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(3, 34, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(8, 34, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(9, 34, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(18, 34, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(22, 34, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(23, 34, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(2, 35, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(12, 35, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(14, 35, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(18, 35, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(20, 35, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(22, 35, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(5, 36, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(8, 36, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(11, 36, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(13, 36, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(18, 36, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(21, 36, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(23, 36, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(2, 37, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(7, 37, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(10, 37, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(16, 37, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(17, 37, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(22, 37, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(21, 38, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(23, 39, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(2, 40, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(8, 40, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(9, 40, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(10, 40, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(11, 40, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(14, 40, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(19, 40, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(21, 40, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(12, 41, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(16, 41, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(20, 41, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(23, 41, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(13, 42, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(17, 42, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(21, 42, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(22, 42, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(5, 43, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(9, 43, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(13, 43, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(15, 43, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(17, 43, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(19, 43, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(25, 43, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(22, 44, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(25, 44, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(10, 45, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(12, 45, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(14, 45, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(22, 45, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(25, 45, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(1, 46, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(2, 46, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(6, 46, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(13, 46, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(14, 46, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(16, 46, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(23, 46, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(1, 48, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(7, 49, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(21, 49, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(12, 50, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(13, 50, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(15, 50, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(16, 50, '2021-06-06 15:13:26', NULL, 0, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(17, 50, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(24, 50, '2021-06-06 15:13:26', NULL, 1, '2021-06-06 15:13:26', '2021-06-06 15:13:26');
/*!40000 ALTER TABLE `pricing_option_pricing_modifiers` ENABLE KEYS */;

-- Dumping structure for table openplay_pricing.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `pricing_option_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_pricing_option_id_foreign` (`pricing_option_id`),
  CONSTRAINT `products_pricing_option_id_foreign` FOREIGN KEY (`pricing_option_id`) REFERENCES `pricing_options` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table openplay_pricing.products: ~100 rows (approximately)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `type`, `description`, `pricing_option_id`, `created_at`, `updated_at`) VALUES
	(1, 'Kids Swim', 'pool-class', 'Debitis saepe nam commodi at fugiat officia. Laudantium et a nam. Est et quos eaque non maxime.', 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(2, 'Interval Training', 'gym-class', 'In maiores labore minus in hic aliquid iste nostrum. Necessitatibus perspiciatis et consectetur quidem tenetur et quia. Sed ea magni id molestiae vel vitae. Officiis ut nulla laboriosam asperiores voluptates sunt et.', 1, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(3, 'Boxercise', 'gym-class', 'Aspernatur voluptate molestiae corporis dicta. Perferendis eligendi aut molestias. Et tenetur quas et incidunt.', 2, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(4, 'Googles (Green)', 'swimwear', 'Culpa cumque qui error molestiae aut voluptatem et. Nulla est sunt qui eum aut quasi deleniti aspernatur. Eius incidunt laboriosam consequatur officiis maiores illum praesentium. A recusandae et quae in et quo perspiciatis.', 2, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(5, 'Kids Swim', 'pool-class', 'Inventore et nihil quis molestiae qui. Quidem officiis voluptatem doloribus. Corrupti quisquam sit ea officiis repellat recusandae. Aperiam dolorum ea tempora soluta dolores cupiditate delectus.', 3, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(6, 'Googles (Green)', 'swimwear', 'Ex nihil nihil dolorem quam voluptas nam. Labore nihil tenetur suscipit libero esse. Veritatis qui officiis libero eos ad deserunt exercitationem.', 3, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(7, 'Interval Training', 'gym-class', 'Harum incidunt voluptatibus consectetur officiis. Eum perferendis animi consectetur enim dolore quam. Provident voluptatem veritatis fugiat laboriosam voluptas. Voluptatum voluptates praesentium perferendis.', 4, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(8, 'Ladies Only Swim', 'pool-class', 'Sequi et quibusdam cum ratione libero. Minima velit odit quae nihil. Omnis rem rerum praesentium necessitatibus tempora. Beatae repellendus ratione ab assumenda hic delectus.', 4, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(9, 'Fitness Instructor Session', 'gym-class', 'Totam necessitatibus repellendus tempore quibusdam sit et. Qui asperiores sit aut magnam. Assumenda incidunt omnis consectetur aut quis incidunt ea. Consequatur perspiciatis sit non enim quo.', 5, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(10, 'Lane Swim', 'pool-class', 'Corrupti architecto autem dolore quisquam labore at vel. Occaecati mollitia ipsam cumque autem illo. Nesciunt quia repellat omnis qui numquam saepe. Voluptas nulla itaque accusantium.', 5, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(11, 'Goggles (Red)', 'swimwear', 'Error doloribus beatae sunt non sit. Dolorum totam impedit quam dolorum ut. Doloremque perferendis facilis minus autem placeat.', 6, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(12, 'Boxercise', 'gym-class', 'Rerum aut facilis nesciunt vel adipisci mollitia minima. Eaque laudantium doloribus ipsam temporibus. Soluta fugit ut cupiditate iure. Consectetur fuga est a voluptatibus.', 6, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(13, 'Interval Training', 'gym-class', 'Deleniti qui eum consequatur. Hic quo amet sunt tenetur voluptas est aut velit. Pariatur voluptatem ut in animi iste consequatur et.', 7, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(14, 'Goggles (Red)', 'swimwear', 'Odio et esse ullam sunt. Perferendis ut non sint. Corporis repudiandae sit veniam maiores quisquam quam in enim.', 7, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(15, 'Goggles (Red)', 'swimwear', 'Ratione quas error velit qui. Quae cum cumque et soluta cupiditate occaecati sunt ea. Ut a consequatur est consequatur ut.', 8, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(16, 'Boxercise', 'gym-class', 'Quaerat alias ut eaque aut architecto accusantium necessitatibus. Ut placeat aliquam dolor minus. Deserunt totam voluptas laudantium ut vel.', 8, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(17, 'Earplugs', 'swimwear', 'Quidem harum non sunt placeat culpa fuga. Voluptatem molestiae cupiditate similique. Est earum laudantium et magnam dolorem est. Quia aliquam itaque enim sequi reprehenderit consectetur.', 9, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(18, 'Swim Trunks', 'swimwear', 'Ad delectus debitis earum ipsum eum aut. Eos ut ipsum nobis quasi. Fuga et vero et corrupti iure voluptates debitis aliquid. Veritatis et sint sapiente quibusdam. Vitae in voluptatem adipisci dolorem sed.', 9, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(19, 'Ladies Only Swim', 'pool-class', 'Rerum impedit est aspernatur libero. Amet earum blanditiis facilis numquam atque ab. Et provident tenetur perspiciatis et. Voluptatem temporibus nesciunt nulla exercitationem alias.', 10, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(20, 'Swim Trunks', 'swimwear', 'Odit nesciunt ut odit quia minima eveniet. Qui perferendis qui consectetur molestias. Cumque quia rerum qui aut aut.', 10, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(21, 'Goggles (Red)', 'swimwear', 'Dolor voluptatibus labore in autem magnam. Incidunt facere impedit occaecati quidem rerum.', 11, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(22, 'Earplugs', 'swimwear', 'Qui iure numquam eum placeat reprehenderit omnis. Aperiam ipsa id enim quas distinctio. Occaecati sed eius est iure dolore optio. Est id labore necessitatibus et est.', 11, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(23, 'Ladies Only Swim', 'pool-class', 'At adipisci mollitia nihil commodi voluptate vero veritatis. Rem corrupti eligendi iure architecto ea. Voluptas unde ipsum alias reprehenderit. Sit repellendus qui dolor provident nemo.', 12, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(24, 'Ladies Only Swim', 'pool-class', 'Dolorem rerum et fugiat laborum amet totam dolorem. Debitis culpa eos ipsam impedit nemo. Mollitia quos quia minus consequatur consequatur.', 12, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(25, 'Lane Swim', 'pool-class', 'Voluptatibus minus voluptatum quod ratione omnis dolores. Quaerat harum qui corporis enim. Eum id facere amet ex voluptas ullam velit.', 13, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(26, 'Interval Training', 'gym-class', 'Rerum nihil qui qui earum aut commodi facere. Atque facilis ab libero veritatis velit.', 13, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(27, 'Googles (Green)', 'swimwear', 'Vitae ut et distinctio consequatur et sint earum. Quia enim sit ducimus repudiandae. Magni tenetur mollitia nemo. Deleniti et dolor nesciunt iure tenetur qui.', 14, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(28, 'Goggles (Red)', 'swimwear', 'Repellat doloribus inventore magnam eveniet officiis. Quia non et voluptatem unde. Blanditiis voluptatem omnis odit rem tempore est.', 14, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(29, 'Swim Trunks', 'swimwear', 'Minus deleniti quidem repudiandae eum. Adipisci aspernatur odit quis. Velit eos aut rem commodi quia. Deserunt et et sed. Delectus explicabo et voluptatem voluptatem dicta.', 15, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(30, 'Kids Swim', 'pool-class', 'Est a ducimus non eum. Quidem velit praesentium saepe corrupti temporibus. Ut excepturi culpa est incidunt rerum aut.', 15, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(31, 'Fitness Instructor Session', 'gym-class', 'Inventore soluta velit earum et magnam necessitatibus quisquam. Sunt quia sequi quia aliquid similique adipisci. Voluptatibus est quia asperiores molestiae distinctio doloribus.', 16, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(32, 'Goggles (Red)', 'swimwear', 'At debitis debitis molestiae deserunt repellat. Debitis unde expedita enim enim corporis quam. Eum nisi et quaerat sed eaque officia. Eveniet reprehenderit vel cupiditate provident dolores eligendi eum.', 16, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(33, 'Interval Training', 'gym-class', 'Fugit blanditiis deserunt veritatis aperiam illo odio. Laboriosam placeat aspernatur qui reprehenderit. Quasi sed eveniet eveniet sit nobis.', 17, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(34, 'Ladies Only Swim', 'pool-class', 'Consequatur tempora earum ut. Ut libero quia nemo eaque illo.', 17, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(35, 'Fitness Instructor Session', 'gym-class', 'Maxime qui dolor in iure. Quia molestiae voluptatem perspiciatis. Soluta aperiam adipisci quia ullam voluptatem. Porro eum nesciunt sunt ex accusantium rerum hic voluptas.', 18, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(36, 'Fitness Instructor Session', 'gym-class', 'Odio nostrum optio voluptas autem quo aliquam alias. Sequi alias excepturi neque et eaque. Dolorum sint iure voluptas molestias sit.', 18, '2021-06-06 15:13:25', '2021-06-06 15:13:25'),
	(37, 'Open Swim', 'pool-class', 'Dolor repudiandae aut praesentium quisquam nulla nemo. Voluptatem omnis placeat et deserunt dicta sapiente non. Quisquam ut earum quis ex sit reiciendis aut. Veritatis hic corporis possimus pariatur est beatae.', 19, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(38, 'Boxercise', 'gym-class', 'Omnis qui sit cupiditate quis qui sunt tenetur. Et aperiam qui numquam nobis dolor et autem minima. Quis iure optio quod amet.', 19, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(39, 'Swim Trunks', 'swimwear', 'Sunt facilis aut repudiandae. Eligendi placeat nobis repellendus nihil velit. Qui quo tempora distinctio libero ut et.', 20, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(40, 'Fitness Instructor Session', 'gym-class', 'Et et illum ullam odit voluptas mollitia. Odio recusandae ipsa tenetur aut sit et similique qui.', 20, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(41, 'Goggles (Red)', 'swimwear', 'Id atque et porro vel. Nisi consequuntur praesentium sapiente dolores excepturi deserunt eligendi. Qui consequatur qui voluptatum explicabo quia soluta. Et minus alias odio sed.', 21, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(42, 'Interval Training', 'gym-class', 'Quos quia voluptatem commodi quia. Deserunt earum optio quas ut aperiam voluptatibus. Necessitatibus harum totam quis vel aut sit. Quam ea perferendis doloremque assumenda excepturi. Voluptatem minus voluptatem officiis eum.', 21, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(43, 'Lane Swim', 'pool-class', 'Deserunt delectus excepturi dolorem unde dolores aut eos. Temporibus earum ea officia officiis fuga voluptatem eum.', 22, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(44, 'Open Swim', 'pool-class', 'Occaecati quo est eos asperiores. Possimus ducimus nam architecto sed enim. Officia ex sequi ex voluptas voluptatem exercitationem. Rerum tempora magni voluptate occaecati expedita.', 22, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(45, 'Interval Training', 'gym-class', 'Laborum aperiam debitis id deleniti nesciunt dolores. Sint enim quam accusantium autem ipsum nulla. Quidem quia esse quia omnis suscipit rerum.', 23, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(46, 'Goggles (Red)', 'swimwear', 'Ab iure commodi deleniti qui velit. Iusto iure omnis enim ducimus qui voluptatem.', 23, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(47, 'Lane Swim', 'pool-class', 'Saepe nisi cum et consequatur corrupti veniam saepe. Omnis sint numquam hic quas sapiente. Est et hic at qui sit. Laudantium dolor et nihil voluptatem amet et eos.', 24, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(48, 'Interval Training', 'gym-class', 'Neque laboriosam pariatur cum nulla dignissimos. Assumenda cupiditate quos illo ad. Animi tempore sit ipsam voluptatibus omnis numquam nihil.', 24, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(49, 'Fitness Instructor Session', 'gym-class', 'Ad nihil explicabo alias vero sed nobis. Cum ab reprehenderit deserunt voluptatem eligendi minima. Et est cumque est error repellat laboriosam. Excepturi dolore nemo aliquid magni. Officiis dolorum repellendus recusandae adipisci est.', 25, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(50, 'Fitness Instructor Session', 'gym-class', 'Perferendis nemo iusto accusantium omnis dolores qui dolores alias. Dolorem ab numquam voluptatem quae hic non et et. Dolore voluptatem laboriosam possimus quia.', 25, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(51, 'Open Swim', 'pool-class', 'Consectetur labore tempora et quia molestiae aliquam rem. Tempora at rem cum ab odit iusto vitae. Et et eos voluptas aliquam.', 26, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(52, 'Kids Swim', 'pool-class', 'Mollitia vel maiores est tenetur. Fugiat architecto sit hic ratione incidunt ea nobis. Tempore vel nemo nostrum sint necessitatibus.', 26, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(53, 'Googles (Green)', 'swimwear', 'Fuga tempore et molestiae dolor et consequatur ipsa. Qui itaque minima et optio. Quia est adipisci et molestiae laudantium atque aut. Possimus officia est similique laborum rerum. Eum fuga aliquid reprehenderit eum dicta.', 27, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(54, 'Goggles (Red)', 'swimwear', 'Vel alias dolore sit hic. Consequatur aliquam quia consequatur incidunt. Aut cupiditate et ea ipsa nesciunt. Officiis delectus placeat et autem placeat sunt vitae.', 27, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(55, 'Ladies Only Swim', 'pool-class', 'Facere dolorem minus et recusandae non molestiae quasi. Minus dolorem et fuga. Deleniti earum quo qui nobis ut qui.', 28, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(56, 'Goggles (Red)', 'swimwear', 'Vel hic atque velit ut dolore repudiandae. Voluptatem aut quo beatae vitae sunt labore. Repudiandae minus officia et at. Tempora sed quis quos.', 28, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(57, 'Fitness Instructor Session', 'gym-class', 'Repellat reiciendis quaerat est voluptas. Quo consequatur quaerat consequatur laudantium tempora.', 29, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(58, 'Interval Training', 'gym-class', 'A qui sed veritatis ullam enim totam voluptatem. Est tempora incidunt earum voluptatibus nisi. Praesentium quia autem voluptatum similique esse ut architecto hic.', 29, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(59, 'Interval Training', 'gym-class', 'Consequatur voluptatem pariatur quas quidem est. Suscipit cum provident assumenda quidem sed eligendi. Debitis asperiores quis qui iure. Voluptas eligendi et eveniet quo praesentium natus inventore. Voluptas ipsum quidem aliquid ut qui quisquam rerum qui.', 30, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(60, 'Googles (Green)', 'swimwear', 'Ut sed aperiam aut consequatur tenetur. Dolores incidunt molestiae et perspiciatis non facere illum magnam. Fuga iusto quibusdam libero autem.', 30, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(61, 'Interval Training', 'gym-class', 'Sed sunt autem sapiente suscipit ab iusto quia. Quibusdam et mollitia dolores quasi officiis. Quis libero nobis ullam eos qui similique corrupti.', 31, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(62, 'Fitness Instructor Session', 'gym-class', 'Doloremque voluptatem commodi adipisci delectus eos asperiores aperiam quibusdam. Numquam vitae sit totam optio. Ipsa aut reprehenderit sed unde velit modi enim.', 31, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(63, 'Ladies Only Swim', 'pool-class', 'Error enim similique quae sit. Blanditiis quasi dolor nesciunt dolorem sit sed. Est aut cupiditate vitae eum voluptatem autem. Nam minima quibusdam velit.', 32, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(64, 'Boxercise', 'gym-class', 'Omnis qui quasi a sunt. Quisquam fugiat voluptas eaque possimus id. Doloribus sit quibusdam unde a.', 32, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(65, 'Boxercise', 'gym-class', 'Et impedit quia ut delectus accusamus nihil quod. Est autem veniam blanditiis et ut.', 33, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(66, 'Open Swim', 'pool-class', 'Assumenda cum inventore necessitatibus sit nostrum. Numquam minima aut rerum. Earum qui dicta voluptatibus iure tenetur cupiditate.', 33, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(67, 'Earplugs', 'swimwear', 'Eligendi odio dolorum quo pariatur. Optio ea quibusdam aut. Non est dolorum ullam quae. Et et et est enim earum ut voluptatem.', 34, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(68, 'Fitness Instructor Session', 'gym-class', 'Non exercitationem atque error fugiat odit nihil provident suscipit. Possimus qui dolor non aut ipsam consequatur amet. Ratione inventore soluta non et dolorem. Non aut nostrum ea doloribus numquam voluptas libero. Minus dolorem in voluptatem esse ea.', 34, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(69, 'Googles (Green)', 'swimwear', 'Ratione veniam et omnis labore. Eos laborum excepturi vel quia. Accusamus dolorem et rerum velit aut. Ad doloremque et id iure.', 35, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(70, 'Kids Swim', 'pool-class', 'Vel tempora non fugiat est voluptas voluptas minima. Dolor impedit excepturi quasi et ut ea sit.', 35, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(71, 'Kids Swim', 'pool-class', 'Sed qui quibusdam qui tempora voluptatem explicabo. Non quidem voluptates ut soluta deleniti quis ex. Dolorum sed omnis voluptate omnis.', 36, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(72, 'Kids Swim', 'pool-class', 'Magnam perferendis unde voluptates accusantium ullam. Sunt ab asperiores fuga modi in eligendi est. Illum sed omnis necessitatibus reiciendis in pariatur.', 36, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(73, 'Kids Swim', 'pool-class', 'Quaerat ipsam et qui vero vel molestias. Modi dolor dolore delectus quia odit. Tempore sequi consectetur voluptatum inventore alias voluptatem. Id eius commodi et praesentium ut. Qui fugit a illum consequatur.', 37, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(74, 'Fitness Instructor Session', 'gym-class', 'Voluptates veritatis dolorum praesentium accusamus et eius veniam quam. Officiis reprehenderit quasi minus. Laboriosam qui ea impedit laborum at consequatur.', 37, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(75, 'Open Swim', 'pool-class', 'Qui et id cumque doloribus et et mollitia. Quaerat labore cum repellat velit. In sit vel quod voluptatibus itaque cum. Consequatur animi facere rerum ab. Voluptas inventore ut ut in dolores deserunt.', 38, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(76, 'Boxercise', 'gym-class', 'Doloremque fuga saepe autem sit est sunt possimus. Rerum quasi necessitatibus vel maiores. Iure culpa aut quae necessitatibus a. Sapiente consequuntur pariatur incidunt cupiditate rerum vero tempora.', 38, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(77, 'Boxercise', 'gym-class', 'Sunt excepturi expedita provident id illum necessitatibus enim. Quo aut porro at. Nostrum odio voluptatem sint porro aut odit et.', 39, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(78, 'Kids Swim', 'pool-class', 'Earum doloremque illum aliquam maxime temporibus ut consequatur atque. Vero molestias amet molestias qui vitae quos.', 39, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(79, 'Googles (Green)', 'swimwear', 'Labore dolores praesentium sit corporis ut sunt modi. Nostrum consequuntur est velit. Consequatur repellat unde impedit id dolore quis. Et voluptatem dolore et quis quaerat illo consectetur.', 40, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(80, 'Open Swim', 'pool-class', 'Adipisci et aut et cupiditate accusantium temporibus. Aut neque ab est. Repudiandae nam eligendi voluptates quis. Sit dolorem ipsum sunt et quasi saepe natus.', 40, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(81, 'Goggles (Red)', 'swimwear', 'Nemo et ea ut enim. Rem itaque vel quidem enim pariatur at possimus. Et cum doloribus neque fugit.', 41, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(82, 'Boxercise', 'gym-class', 'Libero molestiae voluptatibus veritatis eos aut natus. Dolor laborum fugit aut.', 41, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(83, 'Open Swim', 'pool-class', 'Alias vitae inventore omnis rem. Qui facere laboriosam ab praesentium rem. Dolorem adipisci eos et consequuntur. Adipisci provident non et tempore culpa nemo est.', 42, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(84, 'Interval Training', 'gym-class', 'Maxime quia vel voluptas dolores architecto non neque. Reiciendis nostrum corporis dolores ut ratione eaque. Laudantium quaerat accusantium nam iusto id facilis animi.', 42, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(85, 'Interval Training', 'gym-class', 'Quaerat neque minima voluptas iusto ut repellat alias. Natus nihil et numquam commodi eligendi aut. Eos reiciendis voluptate ex laboriosam. Voluptatem aut et in iure.', 43, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(86, 'Swim Trunks', 'swimwear', 'Eum consequatur hic facere aut neque commodi iure. Dolor accusamus quidem eaque et porro facilis ea. Voluptatibus exercitationem quos reiciendis a.', 43, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(87, 'Googles (Green)', 'swimwear', 'Unde qui consequatur neque cum. Laborum quia non eius sunt quis et doloribus. Non dolores maiores beatae reiciendis labore eum placeat. Sed corrupti eaque aut soluta.', 44, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(88, 'Lane Swim', 'pool-class', 'Id aut sapiente cumque totam aut quae. Consequatur quis saepe fuga qui nam. Est ipsum et necessitatibus et dolores. Totam iste qui aut praesentium velit.', 44, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(89, 'Interval Training', 'gym-class', 'Fugiat quia magni ea harum recusandae ut facilis. Quia quod qui a fugiat dicta debitis. Sed autem alias eaque. Modi in saepe neque rerum molestiae.', 45, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(90, 'Interval Training', 'gym-class', 'Facilis quibusdam sunt perferendis est sed excepturi maxime voluptatem. Iure mollitia ut quibusdam iure. Sunt soluta sed exercitationem assumenda fugit culpa. Ab saepe recusandae itaque quaerat beatae.', 45, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(91, 'Open Swim', 'pool-class', 'Consequatur distinctio reprehenderit sit neque odit similique quam quae. Expedita fugit facilis numquam corrupti laudantium. Magnam quia quia iusto ducimus.', 46, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(92, 'Interval Training', 'gym-class', 'Iste velit non excepturi. Provident magnam tempore et. Animi repellat sit dolorum sunt.', 46, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(93, 'Googles (Green)', 'swimwear', 'Et odit nulla officia et et. Sed aut itaque ullam et voluptatem et consequuntur at. Voluptatibus libero soluta at ipsam et suscipit sunt. Repudiandae dolore error voluptatem voluptatem rerum.', 47, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(94, 'Swim Trunks', 'swimwear', 'Nam sed dolorum voluptatem a. Aut temporibus rerum dolores dolores sit. Nisi accusantium quibusdam consequatur voluptatem molestiae molestiae ducimus.', 47, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(95, 'Googles (Green)', 'swimwear', 'Iusto omnis qui eligendi quia et est in. Dolorem eum maiores id.', 48, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(96, 'Fitness Instructor Session', 'gym-class', 'Iusto in aspernatur ad dolores ut. Eum modi eius magni delectus et. Aliquid nemo deleniti voluptatem et alias id perspiciatis.', 48, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(97, 'Boxercise', 'gym-class', 'Dignissimos assumenda sed deleniti voluptates illo neque est necessitatibus. Ut ut harum rerum aliquid. Corporis aut vel laboriosam aut sit omnis.', 49, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(98, 'Boxercise', 'gym-class', 'A expedita omnis sunt ea. Sit ut dolorem dolore quo cum eius. Quasi autem esse necessitatibus rem et mollitia doloribus.', 49, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(99, 'Fitness Instructor Session', 'gym-class', 'Expedita repudiandae sit vitae facilis hic ducimus. Voluptates et ratione dolore sint recusandae sed. Velit velit rerum aspernatur provident est sint ut deleniti. Maiores esse sequi qui ex sit ad doloremque.', 50, '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(100, 'Swim Trunks', 'swimwear', 'Dolore odio quia fugit iste libero et. Debitis asperiores voluptate consequatur tempora. A optio odit est id esse. Et consequatur sed velit ipsum.', 50, '2021-06-06 15:13:26', '2021-06-06 15:13:26');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table openplay_pricing.venues
DROP TABLE IF EXISTS `venues`;
CREATE TABLE IF NOT EXISTS `venues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table openplay_pricing.venues: ~20 rows (approximately)
DELETE FROM `venues`;
/*!40000 ALTER TABLE `venues` DISABLE KEYS */;
INSERT INTO `venues` (`id`, `name`, `location`, `created_at`, `updated_at`) VALUES
	(1, 'Mraz-Bogan Norwich', 'Norwich', '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(2, 'Koelpin, Corkery and Cremin Norwich', 'Norwich', '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(3, 'Runolfsdottir LLC London', 'London', '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(4, 'Wiza, Becker and Gibson London', 'London', '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(5, 'Monahan Inc Glasgow', 'Glasgow', '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(6, 'Batz-Hayes Kidderminster', 'Kidderminster', '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(7, 'Corkery-Borer Glasgow', 'Glasgow', '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(8, 'Bailey-Cremin Norwich', 'Norwich', '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(9, 'Mraz, Boehm and Reichel London', 'London', '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(10, 'Hintz-Kuhlman Glasgow', 'Glasgow', '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(11, 'Emmerich-Kuvalis London', 'London', '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(12, 'Jerde, Larkin and Fay Kidderminster', 'Kidderminster', '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(13, 'Kertzmann, Simonis and Pouros London', 'London', '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(14, 'Jast, Reinger and Okuneva Kidderminster', 'Kidderminster', '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(15, 'Prohaska Group London', 'London', '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(16, 'Rohan-Boyer Kidderminster', 'Kidderminster', '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(17, 'Stark-Cummings London', 'London', '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(18, 'Jerde, Howell and Beahan Kidderminster', 'Kidderminster', '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(19, 'Gulgowski, Kris and O\'Hara London', 'London', '2021-06-06 15:13:26', '2021-06-06 15:13:26'),
	(20, 'Predovic-Treutel Norwich', 'Norwich', '2021-06-06 15:13:26', '2021-06-06 15:13:26');
/*!40000 ALTER TABLE `venues` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
