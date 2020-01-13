/*
SQLyog Enterprise Trial - MySQL GUI v7.11 
MySQL - 5.5.5-10.4.10-MariaDB : Database - adise_xrisa_eleni
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`adise_xrisa_eleni` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `adise_xrisa_eleni`;

/*Table structure for table `background` */

DROP TABLE IF EXISTS `background`;

CREATE TABLE `background` (
  `kodikos` int(20) NOT NULL,
  `x` tinyint(1) NOT NULL,
  `y` tinyint(1) NOT NULL,
  `color` varchar(20) NOT NULL,
  PRIMARY KEY (`kodikos`,`x`,`y`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `background` */

insert  into `background`(`kodikos`,`x`,`y`,`color`) values (0,1,2,'G'),(0,1,4,'G'),(0,2,2,'G'),(0,2,3,'G'),(0,2,4,'G'),(0,3,2,'G'),(0,3,4,'G'),(0,4,2,'G'),(0,4,4,'G'),(0,5,2,'G'),(0,5,4,'G'),(0,6,2,'G'),(0,6,3,'G'),(0,6,4,'G'),(1,1,1,'G'),(2,2,1,'G'),(3,3,1,'G'),(4,4,1,'G'),(5,5,1,'G'),(6,6,1,'G'),(7,1,5,'G'),(8,2,5,'G'),(9,3,5,'G'),(10,4,5,'G'),(11,5,5,'G'),(12,6,5,'G'),(13,1,3,'G'),(14,3,3,'G'),(15,4,3,'G'),(16,5,3,'G');

/*Table structure for table `board` */

DROP TABLE IF EXISTS `board`;

CREATE TABLE `board` (
  `id` int(100) NOT NULL,
  `filla` varchar(100) CHARACTER SET utf8 NOT NULL,
  `price` varchar(20) CHARACTER SET utf8 NOT NULL,
  `color` varchar(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `board` */

insert  into `board`(`id`,`filla`,`price`,`color`) values (1,'1','P','K'),(2,'1','K','K'),(3,'1','T','M'),(4,'1','M','M'),(5,'2','P','K'),(6,'2','K','K'),(7,'2','T','M'),(8,'2','M','M'),(9,'3','P','K'),(10,'3','K','K'),(11,'3','T','M'),(12,'3','M','M'),(13,'4','P','K'),(14,'4','K','K'),(15,'4','T','M'),(16,'4','M','M'),(17,'5','P','K'),(18,'5','K','K'),(19,'5','T','M'),(20,'5','M','M'),(21,'6','P','K'),(22,'6','K','K'),(23,'6','T','M'),(24,'6','M','M'),(25,'7','P','K'),(26,'7','K','K'),(27,'7','T','M'),(28,'7','M','M'),(29,'8','P','K'),(30,'8','K','K'),(31,'8','T','M'),(32,'8','M','M'),(33,'9','P','K'),(34,'9','K','K'),(35,'9','T','M'),(36,'9','M','M'),(37,'10','P','K'),(38,'10','K','K'),(39,'10','T','M'),(40,'10','M','M'),(41,'J','P','K'),(42,'J','K','K'),(43,'J','T','M'),(44,'J','M','M'),(45,'Q','P','K'),(46,'Q','K','K'),(47,'Q','T','M'),(48,'Q','M','M'),(49,'K','P','K'),(50,'K','K','K'),(51,'K','T','M'),(52,'K','M','M');

/*Table structure for table `game_status` */

DROP TABLE IF EXISTS `game_status`;

CREATE TABLE `game_status` (
  `status` enum('not active','initialized','started','ended','aborded') NOT NULL DEFAULT 'not active',
  `p_turn` enum('1','2') DEFAULT NULL,
  `result` enum('1','2','D') DEFAULT NULL,
  `last_change` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `game_status` */

insert  into `game_status`(`status`,`p_turn`,`result`,`last_change`) values ('aborded',NULL,'1','2020-01-12 13:22:02');

/*Table structure for table `p1` */

DROP TABLE IF EXISTS `p1`;

CREATE TABLE `p1` (
  `id` int(100) NOT NULL,
  `kodikos` int(20) NOT NULL,
  PRIMARY KEY (`id`,`kodikos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `p1` */

insert  into `p1`(`id`,`kodikos`) values (1,0),(2,0),(3,0),(4,0),(5,2),(6,0),(7,0),(8,0),(9,0),(10,0),(11,0),(12,0),(13,1),(14,0),(15,0),(16,0),(17,0),(18,0),(19,0),(20,0),(21,0),(22,0),(23,5),(24,0),(25,0),(26,0),(27,0),(28,0),(29,4),(30,0),(31,0),(32,0),(33,0),(34,0),(35,0),(36,0),(37,3),(38,0),(39,0),(40,0),(41,0),(42,0),(43,0),(44,0),(45,0),(46,0),(47,0),(48,0),(49,0),(50,6),(51,0),(52,0);

/*Table structure for table `p2` */

DROP TABLE IF EXISTS `p2`;

CREATE TABLE `p2` (
  `id` int(100) NOT NULL,
  `kodikos` int(20) NOT NULL,
  PRIMARY KEY (`id`,`kodikos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `p2` */

insert  into `p2`(`id`,`kodikos`) values (1,7),(2,0),(3,0),(4,0),(5,0),(6,0),(7,0),(8,8),(9,0),(10,0),(11,0),(12,0),(13,0),(14,0),(15,9),(16,0),(17,0),(18,0),(19,0),(20,0),(21,0),(22,0),(23,0),(24,0),(25,0),(26,0),(27,0),(28,0),(29,0),(30,0),(31,0),(32,0),(33,0),(34,0),(35,0),(36,12),(37,0),(38,0),(39,11),(40,0),(41,0),(42,0),(43,0),(44,0),(45,0),(46,0),(47,10),(48,0),(49,0),(50,0),(51,0),(52,0);

/*Table structure for table `p3` */

DROP TABLE IF EXISTS `p3`;

CREATE TABLE `p3` (
  `id` int(100) NOT NULL,
  `kodikos` int(20) NOT NULL,
  PRIMARY KEY (`id`,`kodikos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `p3` */

insert  into `p3`(`id`,`kodikos`) values (1,0),(2,14),(3,0),(4,0),(5,0),(6,0),(7,0),(8,0),(9,0),(10,0),(11,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(18,0),(19,0),(20,15),(21,0),(22,0),(23,0),(24,0),(25,0),(26,0),(27,0),(28,0),(29,0),(30,0),(31,0),(32,0),(33,0),(34,0),(35,16),(36,0),(37,0),(38,0),(39,0),(40,0),(41,0),(42,0),(43,0),(44,0),(45,17),(46,0),(47,0),(48,0),(49,0),(50,0),(51,0),(52,0);

/*Table structure for table `p4` */

DROP TABLE IF EXISTS `p4`;

CREATE TABLE `p4` (
  `id` int(100) NOT NULL,
  `kodikos` int(20) NOT NULL,
  PRIMARY KEY (`id`,`kodikos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `p4` */

insert  into `p4`(`id`,`kodikos`) values (1,0),(2,0),(3,13),(4,13),(5,0),(6,13),(7,13),(8,0),(9,0),(10,13),(11,13),(12,13),(13,0),(14,13),(15,13),(16,13),(17,13),(18,13),(19,13),(20,0),(21,13),(22,13),(23,0),(24,13),(25,13),(26,13),(27,13),(28,13),(29,0),(30,13),(31,13),(32,13),(33,13),(34,13),(35,0),(36,0),(37,0),(38,13),(39,0),(40,13),(41,13),(42,13),(43,13),(44,13),(45,0),(46,13),(47,0),(48,13),(49,13),(50,0),(51,13),(52,13);

/*Table structure for table `players` */

DROP TABLE IF EXISTS `players`;

CREATE TABLE `players` (
  `username` varchar(20) CHARACTER SET utf8 DEFAULT 'null',
  `paiktis` int(4) NOT NULL,
  `token` varchar(32) DEFAULT NULL,
  `idpaikti` int(4) NOT NULL,
  `last_action` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`paiktis`,`idpaikti`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `players` */

insert  into `players`(`username`,`paiktis`,`token`,`idpaikti`,`last_action`) values ('',1,'15d4c9daf64ac1f65a5801c0c107bf74',100,'2020-01-12 13:31:43'),('',2,'89703ced141f2f7c3b0b04c050c96fb6',200,'2020-01-12 13:31:43');

/* Trigger structure for table `game_status` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `game_status_update` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `game_status_update` BEFORE UPDATE ON `game_status` FOR EACH ROW BEGIN
SET NEW.last_change = NOW();
END */$$


DELIMITER ;

/* Procedure structure for procedure `clean_board` */

/*!50003 DROP PROCEDURE IF EXISTS  `clean_board` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `clean_board`()
BEGIN
REPLACE INTO board SELECT * FROM p4;
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

