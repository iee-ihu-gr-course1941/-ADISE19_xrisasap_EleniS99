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
  `filla` char(13) DEFAULT 'null',
  `color` char(4) DEFAULT 'null',
  `sintetagmenes` int(4) NOT NULL,
  PRIMARY KEY (`sintetagmenes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `board` */

/*Table structure for table `players` */

DROP TABLE IF EXISTS `players`;

CREATE TABLE `players` (
  `username` varchar(20) DEFAULT 'null',
  `paiktis` int(2) NOT NULL,
  PRIMARY KEY (`paiktis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `players` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
