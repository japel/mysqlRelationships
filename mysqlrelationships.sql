-- --------------------------------------------------------
-- Host:                         localhost
-- Server Version:               10.1.9-MariaDB - mariadb.org binary distribution
-- Server Betriebssystem:        Win32
-- HeidiSQL Version:             9.1.0.4882
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Exportiere Datenbank Struktur für mysqlrelationships
CREATE DATABASE IF NOT EXISTS `mysqlrelationships` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `mysqlrelationships`;


-- Exportiere Struktur von Tabelle mysqlrelationships.group
CREATE TABLE IF NOT EXISTS `group` (
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Exportiere Daten aus Tabelle mysqlrelationships.group: ~5 rows (ungefähr)
DELETE FROM `group`;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` (`name`, `id`, `createdAt`, `updatedAt`) VALUES
	('testgroup1', 1, '2016-01-27 14:28:15', '2016-01-27 14:33:45'),
	('testgroup2', 2, '2016-01-27 14:28:18', '2016-01-27 14:28:18'),
	('testgroup3', 3, '2016-01-27 14:28:20', '2016-01-27 14:28:20'),
	('testgroup4', 4, '2016-01-27 14:28:22', '2016-01-27 14:28:22'),
	('testgroup5', 5, '2016-01-27 14:28:24', '2016-01-27 14:28:24');
/*!40000 ALTER TABLE `group` ENABLE KEYS */;


-- Exportiere Struktur von Tabelle mysqlrelationships.group_user__user_group
CREATE TABLE IF NOT EXISTS `group_user__user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_user` int(11) DEFAULT NULL,
  `user_group` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Exportiere Daten aus Tabelle mysqlrelationships.group_user__user_group: ~4 rows (ungefähr)
DELETE FROM `group_user__user_group`;
/*!40000 ALTER TABLE `group_user__user_group` DISABLE KEYS */;
INSERT INTO `group_user__user_group` (`id`, `group_user`, `user_group`) VALUES
	(1, 4, 1),
	(2, 5, 1),
	(3, 1, 3),
	(4, 1, 2);
/*!40000 ALTER TABLE `group_user__user_group` ENABLE KEYS */;


-- Exportiere Struktur von Tabelle mysqlrelationships.todo
CREATE TABLE IF NOT EXISTS `todo` (
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Exportiere Daten aus Tabelle mysqlrelationships.todo: ~5 rows (ungefähr)
DELETE FROM `todo`;
/*!40000 ALTER TABLE `todo` DISABLE KEYS */;
INSERT INTO `todo` (`name`, `user`, `id`, `createdAt`, `updatedAt`) VALUES
	('testtodo1', 1, 1, '2016-01-27 14:28:39', '2016-01-27 14:31:40'),
	('testtodo2', 1, 2, '2016-01-27 14:28:43', '2016-01-27 14:31:54'),
	('testtodo3', NULL, 3, '2016-01-27 14:28:45', '2016-01-27 14:28:45'),
	('testtodo4', NULL, 4, '2016-01-27 14:28:47', '2016-01-27 14:28:47'),
	('testtodo5', NULL, 5, '2016-01-27 14:28:49', '2016-01-27 14:28:49');
/*!40000 ALTER TABLE `todo` ENABLE KEYS */;


-- Exportiere Struktur von Tabelle mysqlrelationships.user
CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Exportiere Daten aus Tabelle mysqlrelationships.user: ~5 rows (ungefähr)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`name`, `id`, `createdAt`, `updatedAt`) VALUES
	('testuser1', 1, '2016-01-27 14:27:55', '2016-01-27 14:32:37'),
	('testuser2', 2, '2016-01-27 14:27:58', '2016-01-27 14:27:58'),
	('testuser3', 3, '2016-01-27 14:28:01', '2016-01-27 14:28:01'),
	('testuser4', 4, '2016-01-27 14:28:03', '2016-01-27 14:28:03'),
	('testuser5', 5, '2016-01-27 14:28:05', '2016-01-27 14:28:05');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
