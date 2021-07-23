/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.18-MariaDB : Database - qtab
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`qtab` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `qtab`;

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `current_stage` int(11) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `login` */

LOCK TABLES `login` WRITE;

insert  into `login`(`id`,`username`,`password`,`current_stage`) values 
(1,'avsangeeth372@gmail.com','abc123@',3),
(2,'seenu23@gmail.com','wer456@',6),
(3,'rahulpp@gmail.com','234@rahul',1);

UNLOCK TABLES;

/*Table structure for table `quetions_answers` */

DROP TABLE IF EXISTS `quetions_answers`;

CREATE TABLE `quetions_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quetions` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Data for the table `quetions_answers` */

LOCK TABLES `quetions_answers` WRITE;

insert  into `quetions_answers`(`id`,`quetions`) values 
(1,'Who is th father of india ?'),
(2,'In which counrty is nearer to india?'),
(3,'How many days do we have in a week?'),
(4,'How many colors are there in a rainbow?'),
(5,'What is the Color of the Leaves?');

UNLOCK TABLES;

/*Table structure for table `user_now` */

DROP TABLE IF EXISTS `user_now`;

CREATE TABLE `user_now` (
  `id` int(11) DEFAULT NULL,
  `one` varchar(200) DEFAULT NULL,
  `two` varchar(200) DEFAULT NULL,
  `three` varchar(200) DEFAULT NULL,
  `four` varchar(200) DEFAULT NULL,
  `five` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `user_now` */

LOCK TABLES `user_now` WRITE;

insert  into `user_now`(`id`,`one`,`two`,`three`,`four`,`five`) values 
(1,'hello11','Nepal',NULL,NULL,NULL),
(2,'gandhi','Nepal','7','7','green'),
(3,NULL,NULL,NULL,NULL,NULL);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
