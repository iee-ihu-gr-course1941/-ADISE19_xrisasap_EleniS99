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

/*Table structure for table `board` */

DROP TABLE IF EXISTS `board`;

CREATE TABLE `board` (
  `id` int(100) NOT NULL,
  `filla` varchar(100) CHARACTER SET utf8 NOT NULL,
  `price` varchar(20) CHARACTER SET utf8 NOT NULL,
  `color` varchar(20) CHARACTER SET utf8 NOT NULL,
  `x` tinyint(1) NOT NULL,
  `y` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `board` */

insert  into `board`(`id`,`filla`,`price`,`color`,`x`,`y`) values (1,'1','P','K',1,1),(2,'1','K','K',1,2),(3,'1','T','M',1,3),(4,'1','M','M',1,4),(5,'2','P','K',1,5),(6,'2','K','K',2,1),(7,'2','T','M',2,2),(8,'2','M','M',2,3),(9,'3','P','K',2,4),(10,'3','K','K',2,5),(11,'3','T','M',3,1),(12,'3','M','M',3,2),(14,'4','P','K',3,3),(15,'4','K','K',3,4),(16,'4','T','M',3,5),(17,'4','M','M',4,1),(18,'5','P','K',4,2),(19,'5','K','K',4,3),(20,'5','T','M',4,4),(21,'5','M','M',4,5),(22,'6','P','K',5,1),(23,'6','K','K',5,2),(24,'6','T','M',5,3),(25,'6','M','M',5,4),(26,'7','P','K',5,5),(27,'7','K','K',1,6),(28,'7','T','M',2,6),(29,'7','M','M',3,6),(30,'8','P','K',4,6),(31,'8','K','K',5,6),(32,'8','T','M',0,0),(33,'8','M','M',0,0),(34,'9','P','K',0,0),(35,'9','K','K',0,0),(36,'9','T','M',0,0),(37,'9','M','M',0,0),(38,'10','P','K',0,0),(39,'10','K','K',0,0),(40,'10','T','M',0,0),(41,'10','M','M',0,0),(42,'J','P','K',0,0),(43,'J','K','K',0,0),(45,'J','T','M',0,0),(46,'J','M','M',0,0),(47,'Q','P','K',0,0),(48,'Q','K','K',0,0),(49,'Q','T','M',0,0),(50,'Q','M','M',0,0),(51,'K','P','K',0,0),(52,'K','K','K',0,0),(53,'K','T','M',0,0),(54,'K','M','M',0,0);

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
  `xeri_1` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`xeri_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `p1` */

insert  into `p1`(`id`,`xeri_1`) values (1,'xeri1'),(2,'xeri1'),(3,'xeri1'),(4,'xeri1'),(5,'xeri1'),(6,'xeri1'),(7,'xeri1'),(8,'xeri1'),(9,'xeri1'),(10,'xeri1'),(11,'xeri1'),(12,'xeri1'),(13,'xeri1'),(14,'xeri1'),(15,'xeri1'),(16,'xeri1'),(17,'xeri1'),(18,'xeri1'),(19,'xeri1'),(20,'xeri1'),(21,'xeri1'),(22,'xeri1'),(23,'xeri1'),(24,'xeri1'),(25,'xeri1'),(26,'xeri1'),(27,'xeri1'),(28,'xeri1'),(29,'xeri1'),(30,'xeri1'),(31,'xari1'),(32,'xeri1'),(33,'xeri1'),(34,'xeri1'),(35,'xeri1'),(36,'xeri1'),(37,'xeri1'),(38,'xeri1'),(39,'xeri1'),(40,'xeri1'),(41,'xeri1'),(42,'xeri1'),(43,'xeri1'),(44,'xeri1'),(45,'xeri1'),(46,'xeri1'),(47,'xeri1'),(48,'xeri1'),(49,'xeri1'),(50,'xeri1'),(51,'xari1'),(52,'xeri1'),(53,'xeri1'),(54,'xeri1');

/*Table structure for table `p2` */

DROP TABLE IF EXISTS `p2`;

CREATE TABLE `p2` (
  `id` int(100) NOT NULL,
  `xeri_2` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`xeri_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `p2` */

insert  into `p2`(`id`,`xeri_2`) values (1,'xeri2'),(2,'xeri2'),(3,'xeri2'),(4,'xeri2'),(5,'xeri2'),(6,'xeri2'),(7,'xeri2'),(8,'xeri2'),(9,'xeri2'),(10,'xeri2'),(11,'xeri2'),(12,'xeri2'),(13,'xeri2'),(14,'xeri2'),(15,'xeri2'),(16,'xeri2'),(17,'xeri2'),(18,'xeri2'),(19,'xeri2'),(20,'xeri2'),(21,'xeri2'),(22,'xeri2'),(23,'xeri2'),(24,'xeri2'),(25,'xeri2'),(26,'xeri2'),(27,'xeri2'),(28,'xeri2'),(29,'xeri2'),(30,'xeri2'),(31,'xeri2'),(32,'xeri2'),(33,'xeri2'),(34,'xeri2'),(35,'xeri2'),(36,'xeri2'),(37,'xeri2'),(38,'xeri2'),(39,'xeri2'),(40,'xeri2'),(41,'xeri2'),(42,'xeri2'),(43,'xeri2'),(44,'xeri2'),(45,'xeri2'),(46,'xeri2'),(47,'xeri2'),(48,'xeri2'),(49,'xeri2'),(50,'xeri2'),(51,'xeri2'),(52,'xeri2'),(53,'xeri2'),(54,'xeri2');

/*Table structure for table `p3` */

DROP TABLE IF EXISTS `p3`;

CREATE TABLE `p3` (
  `id` int(100) NOT NULL,
  `katw` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`katw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `p3` */

insert  into `p3`(`id`,`katw`) values (1,'katw'),(2,'katw'),(3,'katw'),(4,'katw'),(5,'katw'),(6,'katw'),(7,'katw'),(8,'katw'),(9,'katw'),(10,'katw'),(11,'katw'),(12,'katw'),(13,'katw'),(14,'katw'),(15,'katw'),(16,'katw'),(17,'katw'),(18,'katw'),(19,'katw'),(20,'katw'),(21,'katw'),(22,'katw'),(23,'katw'),(24,'katw'),(25,'katw'),(26,'katw'),(27,'katw'),(28,'katw'),(29,'katw'),(30,'katw'),(31,'katw'),(32,'katw'),(33,'katw'),(34,'katw'),(35,'katw'),(36,'katw'),(37,'katw'),(38,'katw'),(39,'katw'),(40,'katw'),(41,'katw'),(42,'katw'),(43,'katw'),(44,'katw'),(45,'katw'),(46,'katw'),(47,'katw'),(48,'katw'),(49,'katw'),(50,'katw'),(51,'katw'),(52,'katw'),(53,'katw'),(54,'katw');

/*Table structure for table `p4` */

DROP TABLE IF EXISTS `p4`;

CREATE TABLE `p4` (
  `id` int(100) NOT NULL,
  `mirasma` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`mirasma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `p4` */

insert  into `p4`(`id`,`mirasma`) values (1,'mirasma'),(2,'mirasma'),(3,'mirasma'),(4,'mirasma'),(5,'mirasma'),(6,'mirasma'),(7,'mirasma'),(8,'mirasma'),(9,'mirasma'),(10,'mirasma'),(11,'mirasma'),(12,'mirasma'),(13,'mirasma'),(14,'mirasma'),(15,'mirasma'),(16,'mirasma'),(17,'mirasma'),(18,'mirasma'),(19,'mirasma'),(20,'mirasma'),(21,'mirasma'),(22,'mirasma'),(23,'mirasma'),(24,'mirasma'),(25,'mirasma'),(26,'mirasma'),(27,'mirasma'),(28,'mirasma'),(29,'mirasma'),(30,'mirasma'),(31,'mirasma'),(32,'mirasma'),(33,'mirasma'),(34,'mirasma'),(35,'mirasma'),(36,'mirasma'),(37,'mirasma'),(38,'mirasma'),(39,'mirasma'),(40,'mirasma'),(41,'mirasma'),(42,'mirasma'),(43,'mirasma'),(44,'mirasma'),(45,'mirasma'),(46,'mirasma'),(47,'mirasma'),(48,'mirasma'),(49,'mirasma'),(50,'mirasma'),(51,'mirasma'),(52,'mirasma'),(53,'mirasma'),(54,'mirasma');

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

insert  into `players`(`username`,`paiktis`,`token`,`idpaikti`) values ('',1,'15d4c9daf64ac1f65a5801c0c107bf74',100),('',2,'89703ced141f2f7c3b0b04c050c96fb6',200);

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
update `players` set username=null, token=null;
update `game_status` set `status`='not active', `p_turn`=null, `result`=null;
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
