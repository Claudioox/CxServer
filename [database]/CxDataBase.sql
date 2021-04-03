-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         10.2.6-MariaDB-log - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para cxdatabase
CREATE DATABASE IF NOT EXISTS `cxdatabase` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cxdatabase`;

-- Volcando estructura para tabla cxdatabase.items
CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `rare` tinyint(4) NOT NULL DEFAULT 0,
  `can_remove` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cxdatabase.items: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Volcando estructura para tabla cxdatabase.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cxdatabase.jobs: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT IGNORE INTO `jobs` (`name`, `label`) VALUES
	('unemployed', 'Unemployed');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Volcando estructura para tabla cxdatabase.job_grades
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cxdatabase.job_grades: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `job_grades` DISABLE KEYS */;
INSERT IGNORE INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(1, 'unemployed', 0, 'unemployed', 'Unemployed', 200, '{}', '{}');
/*!40000 ALTER TABLE `job_grades` ENABLE KEYS */;

-- Volcando estructura para tabla cxdatabase.users
CREATE TABLE IF NOT EXISTS `users` (
  `identifier` varchar(40) NOT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `position` varchar(255) DEFAULT '{"x":-269.4,"y":-955.3,"z":31.2,"heading":205.8}',
  `firstname` varchar(16) DEFAULT NULL,
  `lastname` varchar(16) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cxdatabase.users: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT IGNORE INTO `users` (`identifier`, `accounts`, `group`, `inventory`, `job`, `job_grade`, `loadout`, `position`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `skin`) VALUES
	('52154dcc2c2aff3c902fc82abc54c26e6541912e', '{"bank":50200,"black_money":0,"money":0}', 'user', '[]', 'unemployed', 0, '[]', '{"y":-988.4,"x":-242.8,"heading":295.4,"z":29.3}', 'Claudioox', 'Dev', '05/24/1989', 'm', 96, '{"makeup_1":0,"tshirt_1":0,"lipstick_2":0,"watches_1":-1,"ears_2":0,"pants_1":0,"glasses_2":0,"skin":0,"blush_2":0,"mask_2":0,"arms":0,"sun_2":0,"face":0,"glasses_1":0,"blemishes_1":0,"bags_2":0,"chain_1":0,"beard_1":0,"hair_2":0,"bodyb_1":0,"helmet_2":0,"hair_1":3,"beard_4":0,"arms_2":0,"chest_3":0,"chain_2":0,"lipstick_3":0,"helmet_1":-1,"pants_2":0,"bags_1":0,"chest_1":0,"eye_color":0,"makeup_4":0,"lipstick_1":0,"eyebrows_4":0,"makeup_3":0,"torso_1":0,"hair_color_1":0,"tshirt_2":0,"shoes_1":0,"beard_3":0,"eyebrows_3":0,"eyebrows_2":0,"decals_2":0,"hair_color_2":0,"torso_2":0,"bracelets_2":0,"complexion_1":0,"complexion_2":0,"bproof_1":0,"moles_2":0,"blush_1":0,"mask_1":0,"blush_3":0,"sex":0,"bodyb_2":0,"makeup_2":0,"decals_1":0,"shoes_2":0,"sun_1":0,"age_1":0,"beard_2":0,"bracelets_1":-1,"eyebrows_1":0,"watches_2":0,"moles_1":0,"ears_1":-1,"blemishes_2":0,"lipstick_4":0,"age_2":0,"bproof_2":0,"chest_2":0}');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
