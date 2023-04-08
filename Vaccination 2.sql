/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.19-MariaDB : Database - vaccination2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`vaccination2` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `vaccination2`;

/*Table structure for table `center` */

DROP TABLE IF EXISTS `center`;

CREATE TABLE `center` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `InchargeName` varchar(255) DEFAULT NULL,
  `Contact` char(11) DEFAULT NULL,
  PRIMARY KEY (`Id`,`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `center` */

insert  into `center`(`Id`,`Name`,`Address`,`InchargeName`,`Contact`) values 
(2,'kohat-2','Jerma kohat','Salman','03119876543'),
(6,'kohat','kohat','obaid','03119197645'),
(8,'peshawar','peshawar','saqib','123');

/*Table structure for table `subject` */

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `CNIC` char(14) DEFAULT NULL,
  `Contact` char(11) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Age` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `subject` */

insert  into `subject`(`Id`,`Name`,`CNIC`,`Contact`,`Address`,`Age`) values 
(1,'Muhammad Hammad',NULL,NULL,NULL,NULL),
(2,'Mohammad Haris',NULL,NULL,NULL,NULL),
(3,'Salman',NULL,NULL,NULL,NULL),
(4,'Farman',NULL,NULL,NULL,NULL),
(5,'Fazal Mohammad',NULL,NULL,NULL,NULL),
(6,'Muhammad',NULL,NULL,NULL,NULL),
(7,'Mohammad',NULL,NULL,NULL,NULL);

/*Table structure for table `subject_vaccination` */

DROP TABLE IF EXISTS `subject_vaccination`;

CREATE TABLE `subject_vaccination` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `VaccineId` bigint(20) NOT NULL,
  `SubjectId` bigint(20) NOT NULL,
  `CenterId` bigint(20) NOT NULL,
  `Date` date DEFAULT NULL,
  `DoseNo` enum('Dose_1','Dose_2','Dose_3') DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `VaccineId` (`VaccineId`),
  KEY `SubjectId` (`SubjectId`),
  KEY `CenterId` (`CenterId`),
  CONSTRAINT `subject_vaccination_ibfk_1` FOREIGN KEY (`VaccineId`) REFERENCES `vaccine` (`Id`),
  CONSTRAINT `subject_vaccination_ibfk_2` FOREIGN KEY (`SubjectId`) REFERENCES `subject` (`Id`),
  CONSTRAINT `subject_vaccination_ibfk_3` FOREIGN KEY (`CenterId`) REFERENCES `center` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `subject_vaccination` */

/*Table structure for table `type` */

DROP TABLE IF EXISTS `type`;

CREATE TABLE `type` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Origine` enum('China','UK','US') DEFAULT NULL,
  `Formula` varchar(255) DEFAULT NULL,
  `NoDose` tinyint(4) DEFAULT 1 COMMENT 'No of days',
  `Life` tinyint(4) DEFAULT NULL,
  `Quantity` tinyint(4) DEFAULT NULL,
  `DoseVolume` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `type` */

insert  into `type`(`Id`,`Name`,`Origine`,`Formula`,`NoDose`,`Life`,`Quantity`,`DoseVolume`) values 
(1,'Sinovac','China','CH1',2,30,50,10),
(2,'PakVec','China','CH1',4,40,50,5),
(3,'pfizer','US','US1',3,10,127,2),
(4,'Moderna','US','US2',2,60,127,15),
(5,'Moderna 2','US','US2',2,5,127,15);

/*Table structure for table `vaccine` */

DROP TABLE IF EXISTS `vaccine`;

CREATE TABLE `vaccine` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `TypeId` bigint(20) NOT NULL,
  `MfgDate` date DEFAULT NULL,
  `DelDate` date DEFAULT NULL,
  `CenterId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `TypeId` (`TypeId`),
  KEY `CenterId` (`CenterId`),
  CONSTRAINT `vaccine_ibfk_1` FOREIGN KEY (`TypeId`) REFERENCES `type` (`Id`),
  CONSTRAINT `vaccine_ibfk_2` FOREIGN KEY (`CenterId`) REFERENCES `center` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8mb4;

/*Data for the table `vaccine` */

insert  into `vaccine`(`Id`,`TypeId`,`MfgDate`,`DelDate`,`CenterId`) values 
(1,1,'2021-06-01','2021-06-10',6),
(2,1,'2021-06-01','2021-06-10',6),
(3,1,'2021-06-01','2021-06-10',6),
(4,1,'2021-06-01','2021-06-10',6),
(5,1,'2021-06-01','2021-06-10',6),
(6,1,'2021-06-01','2021-06-10',6),
(7,1,'2021-06-01','2021-06-10',6),
(8,1,'2021-06-01','2021-06-10',6),
(9,1,'2021-06-01','2021-06-10',6),
(10,1,'2021-06-01','2021-06-10',6),
(11,1,'2021-06-01','2021-06-10',6),
(12,1,'2021-06-01','2021-06-10',6),
(13,1,'2021-06-01','2021-06-10',6),
(14,1,'2021-06-01','2021-06-10',6),
(15,1,'2021-06-01','2021-06-10',6),
(16,1,'2021-06-01','2021-06-10',6),
(17,1,'2021-06-01','2021-06-10',6),
(18,1,'2021-06-01','2021-06-10',6),
(19,1,'2021-06-01','2021-06-10',6),
(20,1,'2021-06-01','2021-06-10',6),
(21,1,'2021-06-01','2021-06-10',6),
(22,1,'2021-06-01','2021-06-10',6),
(23,1,'2021-06-01','2021-06-10',6),
(24,1,'2021-06-01','2021-06-10',6),
(25,1,'2021-06-01','2021-06-10',6),
(26,1,'2021-06-01','2021-06-10',6),
(27,1,'2021-06-01','2021-06-10',6),
(28,1,'2021-06-01','2021-06-10',6),
(29,1,'2021-06-01','2021-06-10',6),
(30,1,'2021-06-01','2021-06-10',6),
(31,1,'2021-06-01','2021-06-10',6),
(32,1,'2021-06-01','2021-06-10',6),
(33,1,'2021-06-01','2021-06-10',6),
(34,1,'2021-06-01','2021-06-10',6),
(35,1,'2021-06-01','2021-06-10',6),
(36,1,'2021-06-01','2021-06-10',6),
(37,1,'2021-06-01','2021-06-10',6),
(38,1,'2021-06-01','2021-06-10',6),
(39,1,'2021-06-01','2021-06-10',6),
(40,1,'2021-06-01','2021-06-10',6),
(41,1,'2021-06-01','2021-06-10',6),
(42,1,'2021-06-01','2021-06-10',6),
(43,1,'2021-06-01','2021-06-10',6),
(44,1,'2021-06-01','2021-06-10',6),
(45,1,'2021-06-01','2021-06-10',6),
(46,1,'2021-06-01','2021-06-10',6),
(47,1,'2021-06-01','2021-06-10',6),
(48,1,'2021-06-01','2021-06-10',6),
(49,1,'2021-06-01','2021-06-10',6),
(50,1,'2021-06-01','2021-06-10',6),
(51,1,'2021-06-01','2021-06-10',6),
(52,1,'2021-06-01','2021-06-10',6),
(53,1,'2021-06-01','2021-06-10',6),
(54,1,'2021-06-01','2021-06-10',6),
(55,1,'2021-06-01','2021-06-10',6),
(56,1,'2021-06-01','2021-06-10',6),
(57,1,'2021-06-01','2021-06-10',6),
(58,1,'2021-06-01','2021-06-10',6),
(59,1,'2021-06-01','2021-06-10',6),
(60,1,'2021-06-01','2021-06-10',6),
(61,1,'2021-06-01','2021-06-10',6),
(62,1,'2021-06-01','2021-06-10',6),
(63,1,'2021-06-01','2021-06-10',6),
(64,1,'2021-06-01','2021-06-10',6),
(65,1,'2021-06-01','2021-06-10',6),
(66,1,'2021-06-01','2021-06-10',6),
(67,1,'2021-06-01','2021-06-10',6),
(68,1,'2021-06-01','2021-06-10',6),
(69,1,'2021-06-01','2021-06-10',6),
(70,1,'2021-06-01','2021-06-10',6),
(71,1,'2021-06-01','2021-06-10',6),
(72,1,'2021-06-01','2021-06-10',6),
(73,1,'2021-06-01','2021-06-10',6),
(74,1,'2021-06-01','2021-06-10',6),
(75,1,'2021-06-01','2021-06-10',6),
(76,1,'2021-06-01','2021-06-10',6),
(77,1,'2021-06-01','2021-06-10',6),
(78,1,'2021-06-01','2021-06-10',6),
(79,1,'2021-06-01','2021-06-10',6),
(80,1,'2021-06-01','2021-06-10',6),
(81,1,'2021-06-01','2021-06-10',6),
(82,1,'2021-06-01','2021-06-10',6),
(83,1,'2021-06-01','2021-06-10',6),
(84,1,'2021-06-01','2021-06-10',6),
(85,1,'2021-06-01','2021-06-10',6),
(86,1,'2021-06-01','2021-06-10',6),
(87,1,'2021-06-01','2021-06-10',6),
(88,1,'2021-06-01','2021-06-10',6),
(89,1,'2021-06-01','2021-06-10',6),
(90,1,'2021-06-01','2021-06-10',6),
(91,1,'2021-06-01','2021-06-10',6),
(92,1,'2021-06-01','2021-06-10',6),
(93,4,'2021-06-01','2021-06-10',6),
(94,4,'2021-06-01','2021-06-10',6),
(95,4,'2021-06-01','2021-06-10',6),
(96,4,'2021-06-01','2021-06-10',6),
(97,4,'2021-06-01','2021-06-10',6),
(98,4,'2021-06-01','2021-06-10',6),
(99,4,'2021-06-01','2021-06-10',6),
(100,4,'2021-06-01','2021-06-10',6),
(101,1,'2021-06-01','2021-06-10',2),
(102,1,'2021-06-01','2021-06-10',2),
(103,1,'2021-06-01','2021-06-10',2),
(104,1,'2021-06-01','2021-06-10',2),
(105,1,'2021-06-01','2021-06-10',2),
(106,1,'2021-06-01','2021-06-10',2),
(107,1,'2021-06-01','2021-06-10',2),
(108,1,'2021-06-01','2021-06-10',2),
(109,1,'2021-06-01','2021-06-10',2),
(110,1,'2021-06-01','2021-06-10',2),
(111,1,'2021-06-01','2021-06-10',2),
(112,1,'2021-06-01','2021-06-10',2),
(113,1,'2021-06-01','2021-06-10',2),
(114,1,'2021-06-01','2021-06-10',2),
(115,1,'2021-06-01','2021-06-10',2),
(116,1,'2021-06-01','2021-06-10',2),
(117,1,'2021-06-01','2021-06-10',2),
(118,1,'2021-06-01','2021-06-10',2),
(119,1,'2021-06-01','2021-06-10',2),
(120,1,'2021-06-01','2021-06-10',2),
(121,1,'2021-06-01','2021-06-10',2),
(122,1,'2021-06-01','2021-06-10',2),
(123,1,'2021-06-01','2021-06-10',2),
(124,1,'2021-06-01','2021-06-10',2),
(125,1,'2021-06-01','2021-06-10',2),
(126,1,'2021-06-01','2021-06-10',2),
(127,1,'2021-06-01','2021-06-10',2),
(128,1,'2021-06-01','2021-06-10',2),
(129,1,'2021-06-01','2021-06-10',2),
(130,1,'2021-06-01','2021-06-10',2),
(131,1,'2021-06-01','2021-06-10',2),
(132,1,'2021-06-01','2021-06-10',2),
(133,1,'2021-06-01','2021-06-10',2),
(134,1,'2021-06-01','2021-06-10',2),
(135,1,'2021-06-01','2021-06-10',2),
(136,4,'2021-06-01','2021-06-10',2),
(137,4,'2021-06-01','2021-06-10',2),
(138,4,'2021-06-01','2021-06-10',2),
(139,4,'2021-06-01','2021-06-10',2),
(140,4,'2021-06-01','2021-06-10',2),
(141,1,'2021-06-01','2021-06-10',2),
(142,3,'2021-06-01','2021-06-10',2),
(143,3,'2021-06-01','2021-06-10',2),
(144,3,'2021-06-01','2021-06-10',2),
(145,3,'2021-06-01','2021-06-10',2),
(146,2,'2021-06-01','2021-06-10',2),
(147,2,'2021-06-01','2021-06-10',2),
(148,2,'2021-06-01','2021-06-10',2),
(149,2,'2021-06-01','2021-06-10',2),
(150,2,'2021-06-01','2021-06-10',2),
(151,1,'2021-06-01','2021-06-10',NULL),
(152,1,'2021-06-01','2021-06-10',NULL),
(153,1,'2021-06-01','2021-06-10',NULL),
(154,1,'2021-06-01','2021-06-10',NULL),
(155,1,'2021-06-01','2021-06-10',NULL),
(156,1,'2021-06-01','2021-06-10',NULL),
(157,1,'2021-06-01','2021-06-10',NULL),
(158,1,'2021-06-01','2021-06-10',NULL),
(159,1,'2021-06-01','2021-06-10',NULL),
(160,1,'2021-06-01','2021-06-10',NULL),
(161,1,'2021-06-01','2021-06-10',NULL),
(162,1,'2021-06-01','2021-06-10',NULL),
(163,1,'2021-06-01','2021-06-10',NULL),
(164,1,'2021-06-01','2021-06-10',NULL),
(165,1,'2021-06-01','2021-06-10',NULL),
(166,1,'2021-06-01','2021-06-10',NULL),
(167,1,'2021-06-01','2021-06-10',NULL),
(168,1,'2021-06-01','2021-06-10',NULL),
(169,1,'2021-06-01','2021-06-10',NULL),
(170,1,'2021-06-01','2021-06-10',NULL),
(171,1,'2021-06-01','2021-06-10',NULL),
(172,1,'2021-06-01','2021-06-10',NULL),
(173,1,'2021-06-01','2021-06-10',NULL),
(174,1,'2021-06-01','2021-06-10',NULL),
(175,1,'2021-06-01','2021-06-10',NULL),
(176,1,'2021-06-01','2021-06-10',NULL),
(177,1,'2021-06-01','2021-06-10',NULL),
(178,1,'2021-06-01','2021-06-10',NULL),
(179,1,'2021-06-01','2021-06-10',NULL),
(180,1,'2021-06-01','2021-06-10',NULL),
(181,1,'2021-06-01','2021-06-10',NULL),
(182,1,'2021-06-01','2021-06-10',NULL),
(183,1,'2021-06-01','2021-06-10',NULL),
(184,1,'2021-06-01','2021-06-10',NULL),
(185,1,'2021-06-01','2021-06-10',NULL),
(186,1,'2021-06-01','2021-06-10',NULL),
(187,1,'2021-06-01','2021-06-10',NULL),
(188,1,'2021-06-01','2021-06-10',NULL),
(189,1,'2021-06-01','2021-06-10',NULL),
(190,1,'2021-06-01','2021-06-10',NULL),
(191,1,'2021-06-01','2021-06-10',NULL),
(192,1,'2021-06-01','2021-06-10',NULL),
(193,1,'2021-06-01','2021-06-10',NULL),
(194,1,'2021-06-01','2021-06-10',NULL),
(195,1,'2021-06-01','2021-06-10',NULL),
(196,1,'2021-06-01','2021-06-10',NULL),
(197,1,'2021-06-01','2021-06-10',NULL),
(198,1,'2021-06-01','2021-06-10',NULL),
(199,1,'2021-06-01','2021-06-10',NULL),
(200,1,'2021-06-01','2021-06-10',NULL),
(211,3,NULL,NULL,NULL),
(212,3,NULL,NULL,NULL),
(213,3,NULL,NULL,NULL),
(214,3,NULL,NULL,NULL),
(215,3,NULL,NULL,NULL),
(216,3,NULL,NULL,NULL),
(217,3,NULL,NULL,NULL),
(218,3,NULL,NULL,NULL),
(219,3,NULL,NULL,NULL),
(220,3,NULL,NULL,NULL),
(221,3,NULL,NULL,NULL),
(222,3,NULL,NULL,NULL),
(223,3,NULL,NULL,NULL),
(224,3,NULL,NULL,NULL),
(225,4,NULL,NULL,NULL),
(226,4,NULL,NULL,NULL),
(227,4,NULL,NULL,NULL),
(228,4,NULL,NULL,NULL),
(229,4,NULL,NULL,NULL),
(231,4,NULL,NULL,NULL),
(232,4,NULL,NULL,NULL),
(233,4,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;