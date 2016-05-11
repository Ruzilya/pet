-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.48-log - MySQL Community Server (GPL)
-- ОС Сервера:                   Win64
-- HeidiSQL Версия:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица pet.cellvalue
DROP TABLE IF EXISTS `cellvalue`;
CREATE TABLE IF NOT EXISTS `cellvalue` (
  `cv_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы pet.cellvalue: ~14 rows (приблизительно)
/*!40000 ALTER TABLE `cellvalue` DISABLE KEYS */;
INSERT INTO `cellvalue` (`cv_id`, `value`) VALUES
	(1, '2'),
	(2, '4'),
	(3, '8'),
	(4, '16'),
	(5, '32'),
	(6, '64'),
	(7, '128'),
	(8, '256'),
	(9, '512'),
	(10, '1024'),
	(11, '2048'),
	(12, '4096'),
	(13, '8192'),
	(14, '16384');
/*!40000 ALTER TABLE `cellvalue` ENABLE KEYS */;


-- Дамп структуры для таблица pet.image
DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  `cv_id` int(11) DEFAULT NULL,
  `theme_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`image_id`),
  KEY `FK_mgoj7j6aovw1auts9stpll3d5` (`theme_id`),
  KEY `FK_j6egwxyvgvwemx0urxbtmxstb` (`cv_id`),
  CONSTRAINT `FK_j6egwxyvgvwemx0urxbtmxstb` FOREIGN KEY (`cv_id`) REFERENCES `cellvalue` (`cv_id`),
  CONSTRAINT `FK_mgoj7j6aovw1auts9stpll3d5` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы pet.image: ~14 rows (приблизительно)
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` (`image_id`, `path`, `cv_id`, `theme_id`) VALUES
	(1, 'src\\main\\webapp\\resources\\9_may\\2.jpg', 1, 1),
	(2, 'src\\main\\webapp\\resources\\9_may\\4.jpg', 2, 1),
	(3, 'src\\main\\webapp\\resources\\9_may\\8.jpg', 3, 1),
	(4, 'src\\main\\webapp\\resources\\9_may\\16.jpg', 4, 1),
	(5, 'src\\main\\webapp\\resources\\9_may\\32.jpg', 5, 1),
	(6, 'src\\main\\webapp\\resources\\9_may\\64.jpg', 6, 1),
	(7, 'src\\main\\webapp\\resources\\9_may\\128.jpg', 7, 1),
	(8, 'src\\main\\webapp\\resources\\9_may\\256.jpg', 8, 1),
	(9, 'src\\main\\webapp\\resources\\9_may\\512.jpg', 9, 1),
	(10, 'src\\main\\webapp\\resources\\9_may\\1024.jpg', 10, 1),
	(11, 'src\\main\\webapp\\resources\\9_may\\2048.jpg', 11, 1),
	(12, 'src\\main\\webapp\\resources\\9_may\\4096.jpg', 12, 1),
	(13, 'src\\main\\webapp\\resources\\9_may\\8192.jpg', 13, 1),
	(14, 'src\\main\\webapp\\resources\\9_may\\16384.jpg', 14, 1);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;


-- Дамп структуры для таблица pet.person
DROP TABLE IF EXISTS `person`;
CREATE TABLE IF NOT EXISTS `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы pet.person: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` (`id`, `country`, `name`) VALUES
	(1, 'Russia', 'Ruslan');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;


-- Дамп структуры для таблица pet.theme
DROP TABLE IF EXISTS `theme`;
CREATE TABLE IF NOT EXISTS `theme` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы pet.theme: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `theme` DISABLE KEYS */;
INSERT INTO `theme` (`theme_id`, `name`) VALUES
	(1, '9_may'),
	(2, 'standart');
/*!40000 ALTER TABLE `theme` ENABLE KEYS */;


-- Дамп структуры для таблица pet.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы pet.user: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`, `name`, `password`, `score`) VALUES
	(1, 'Ruslan', 911, 128000);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
