/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50514
 Source Host           : localhost
 Source Database       : CooperPebblesStamps_development

 Target Server Type    : MySQL
 Target Server Version : 50514
 File Encoding         : utf-8

 Date: 12/26/2014 15:47:35 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `groupings`
-- ----------------------------
DROP TABLE IF EXISTS `groupings`;
CREATE TABLE `groupings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abrev` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `groupings`
-- ----------------------------
BEGIN;
INSERT INTO `groupings` VALUES ('1', 'A single stamp', 'S', '2014-12-24 22:51:09', '2014-12-24 22:51:09'), ('2', 'A double stamp or a strip of two', 'D', '2014-12-24 22:52:49', '2014-12-24 22:52:49'), ('3', 'A group of 4 or a plate block', 'F', '2014-12-24 22:53:31', '2014-12-24 22:53:31'), ('4', 'A booklet of stamps', 'B', '2014-12-24 22:54:17', '2014-12-24 22:54:17'), ('5', 'A sheet of stamps', 'SH', '2014-12-24 22:54:49', '2014-12-24 22:54:49'), ('6', 'Duplicate of any about', 'DU', '2014-12-24 22:55:23', '2014-12-24 22:55:23'), ('7', 'Any Other combination of stamps', 'O', '2014-12-24 22:55:57', '2014-12-24 22:55:57');
COMMIT;

-- ----------------------------
--  Table structure for `locations`
-- ----------------------------
DROP TABLE IF EXISTS `locations`;
CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abrev` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `locations`
-- ----------------------------
BEGIN;
INSERT INTO `locations` VALUES ('1', 'Album', 'A', '2014-12-24 22:38:55', '2014-12-24 22:38:55'), ('2', 'Box', 'B', '2014-12-24 22:39:14', '2014-12-24 22:39:14'), ('3', 'Album and Box', 'AB', '2014-12-24 22:39:39', '2014-12-24 22:39:39'), ('4', 'Other', 'C', '2014-12-24 22:40:05', '2014-12-24 22:40:05');
COMMIT;

-- ----------------------------
--  Table structure for `schema_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `schema_migrations`
-- ----------------------------
BEGIN;
INSERT INTO `schema_migrations` VALUES ('20141210202240'), ('20141210202446'), ('20141210202543'), ('20141210203608');
COMMIT;

-- ----------------------------
--  Table structure for `stamps`
-- ----------------------------
DROP TABLE IF EXISTS `stamps`;
CREATE TABLE `stamps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `grouping_id` int(11) DEFAULT NULL,
  `scott_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_items` int(11) DEFAULT NULL,
  `num_in_items` int(11) DEFAULT NULL,
  `face_value` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year_issued` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `location_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_type_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_used` int(11) DEFAULT NULL,
  `scotts_used_value` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_mint` int(11) DEFAULT NULL,
  `scotts_mint_value` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_lastr_viewed` date DEFAULT NULL,
  `comments` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `stamps`
-- ----------------------------
BEGIN;
INSERT INTO `stamps` VALUES ('1', '4', null, '1', '65', null, null, '0.03', '1861-66', 'Washington', '', '', '2', '3.000', null, '', '2014-11-30', '', '2014-12-25 01:43:06', '2014-12-25 17:55:52'), ('4', null, null, null, '135', null, null, '0.020', '1875', 'Jackson', '', '', '1', '80.000', null, '', '2014-11-25', '', '2014-12-25 14:47:58', '2014-12-25 14:47:58'), ('5', null, null, null, '210', null, null, '.020', '1883', 'Washington Brown', '', '', '6', '0.750', null, '', '2014-11-24', '', '2014-12-25 18:17:51', '2014-12-25 18:20:03'), ('6', null, null, null, '212', null, null, '0.01', '1887', 'Franklin', '', '', '1', '2.500', null, '', '2014-12-26', '', '2014-12-26 14:05:08', '2014-12-26 14:05:08'), ('7', null, null, null, '213', null, null, '0.02', '1887', 'Washington Green', '', '', '3', '0.600', null, '', '2014-12-26', '', '2014-12-26 14:07:49', '2014-12-26 14:07:49'), ('8', null, null, null, '219', null, null, '0.01', '1890-93', 'Franklin', '', '', '4', '0.750', null, '', '2014-12-26', '', '2014-12-26 14:10:33', '2014-12-26 14:10:33'), ('9', null, null, null, '220', null, null, '0.020', '1889-93', 'Washington', '', '', '35', '0.700', null, '', '2014-12-26', '', '2014-12-26 14:14:47', '2014-12-26 14:14:47'), ('10', null, null, null, '231', null, null, '0.02', '1893', 'Cowm. Exp', '', '', '2', '0.300', null, '', '2014-12-26', '', '2014-12-26 14:22:31', '2014-12-26 14:23:04'), ('11', null, null, null, '248', null, null, '0.02', '1894', 'Washington Pink', '', '', '9', '9.000', null, '', '2014-12-26', '', '2014-12-26 14:25:18', '2014-12-26 14:25:18'), ('12', null, null, null, '279', null, null, '0.01', '1897-1903', 'Franklin DP Gn', '', '', '1', '0.500', null, '', '2014-12-26', '', '2014-12-26 14:28:59', '2014-12-26 14:28:59'), ('13', null, null, null, '300', null, null, '0.01', '1902-03', 'Franklin Gn', '', '', '7', '0.250', null, '', '2014-12-26', '', '2014-12-26 14:31:20', '2014-12-26 14:31:20'), ('14', null, null, null, '301', null, null, '0.02', '1902-03', 'Washingyon', '', '', '31', '0.500', null, '', '2014-12-26', '', '2014-12-26 14:43:41', '2014-12-26 14:43:41'), ('15', null, null, null, '319', null, null, '0.02', '1905', 'Wahington', '', '', '21', '0.250', null, '', '2014-12-26', '', '2014-12-26 14:45:16', '2014-12-26 14:46:34');
COMMIT;

-- ----------------------------
--  Table structure for `types`
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abrev` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `types`
-- ----------------------------
BEGIN;
INSERT INTO `types` VALUES ('1', 'Air Mail', 'A', '2014-12-24 21:13:54', '2014-12-24 21:13:54'), ('3', 'A Block of Stamps', 'B', '2014-12-24 21:22:10', '2014-12-24 21:22:10'), ('4', 'Commemorative', 'C', '2014-12-24 21:24:41', '2014-12-24 21:24:41'), ('5', 'Definitive', 'D', '2014-12-24 21:32:06', '2014-12-24 21:32:06'), ('6', 'To be stored or placed in another location', 'E', '2014-12-24 21:34:38', '2014-12-24 21:34:38'), ('7', 'First Day Covers', 'F', '2014-12-24 21:35:17', '2014-12-24 21:35:17'), ('8', 'Foreign Country Stamps', 'FO', '2014-12-24 21:36:20', '2014-12-24 21:36:20'), ('9', 'Per-Cancel', 'P', '2014-12-24 22:04:15', '2014-12-24 22:04:31'), ('10', 'Post Card', 'PC', '2014-12-24 22:04:59', '2014-12-24 22:04:59'), ('11', 'Postage Due', 'PD', '2014-12-24 22:05:20', '2014-12-24 22:05:20'), ('12', 'Special Delivery', 'S', '2014-12-24 22:06:46', '2014-12-24 22:06:46'), ('13', 'Other', 'O', '2014-12-24 22:07:20', '2014-12-24 22:07:20');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
