-- MySQL dump 10.14  Distrib 5.5.56-MariaDB, for Linux (x86_64)
--
-- Host:     Database: FIFA2018
-- ------------------------------------------------------
-- Server version	5.5.56-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `apuestas`
--

DROP TABLE IF EXISTS `apuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apuestas` (
  `id_apuesta` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_participante` bigint(20) NOT NULL,
  `id_partido` bigint(20) NOT NULL,
  `apuesta_equipo_1` int(11) NOT NULL,
  `apuesta_equipo_2` int(11) NOT NULL,
  `apuesta_valor` int(11) NOT NULL,
  `apuesta_fecha` date NOT NULL,
  `apuesta_hora` time NOT NULL,
  `procesada` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_apuesta`),
  UNIQUE KEY `id_apuesta` (`id_apuesta`)
) ENGINE=InnoDB AUTO_INCREMENT=476 DEFAULT CHARSET=latin1 COMMENT='Registro de apuestas realizadas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apuestas`
--

LOCK TABLES `apuestas` WRITE;
/*!40000 ALTER TABLE `apuestas` DISABLE KEYS */;
INSERT INTO `apuestas` VALUES (86,4,1,2,0,7,'2018-06-15','11:36:17',1),(87,4,3,0,2,10,'2018-06-15','11:37:05',1),(88,4,5,1,1,5,'2018-06-15','11:37:21',1),(89,4,7,2,1,7,'2018-06-15','11:37:36',1),(90,2,1,2,1,10,'2018-06-15','11:38:19',1),(91,2,3,1,3,8,'2018-06-15','11:38:49',1),(92,2,5,1,2,5,'2018-06-15','11:39:03',1),(93,2,7,2,3,8,'2018-06-15','11:39:16',1),(94,5,1,3,1,10,'2018-06-15','11:40:40',1),(95,5,3,1,2,10,'2018-06-15','11:41:01',1),(96,5,5,1,1,4,'2018-06-15','11:41:24',1),(97,5,7,3,2,15,'2018-06-15','11:41:36',1),(98,15,1,2,0,10,'2018-06-15','11:42:12',1),(99,15,3,0,2,10,'2018-06-15','11:42:44',1),(100,15,5,1,0,20,'2018-06-15','11:43:07',1),(101,15,7,1,1,20,'2018-06-15','11:43:27',1),(102,16,5,1,0,5,'2018-06-15','11:44:23',1),(103,16,7,2,2,15,'2018-06-15','11:44:38',1),(104,16,1,3,1,10,'2018-06-15','11:45:09',1),(105,14,3,1,2,10,'2018-06-15','11:46:21',1),(106,14,5,2,0,15,'2018-06-15','11:46:35',1),(107,14,7,1,0,10,'2018-06-15','11:46:53',1),(108,12,3,1,2,50,'2018-06-15','11:48:05',1),(109,11,1,2,0,10,'2018-06-15','11:49:00',1),(110,11,3,0,3,15,'2018-06-15','11:49:22',1),(111,11,5,1,1,5,'2018-06-15','11:49:36',1),(112,11,7,2,1,5,'2018-06-15','11:49:50',1),(113,3,1,1,0,15,'2018-06-15','11:52:14',1),(114,3,3,0,2,8,'2018-06-15','11:52:36',1),(115,3,5,1,1,4,'2018-06-15','11:52:58',1),(116,3,7,1,2,10,'2018-06-15','11:53:13',1),(117,1,1,1,0,10,'2018-06-15','11:54:01',1),(118,1,3,0,3,5,'2018-06-15','11:54:21',1),(119,1,5,0,0,5,'2018-06-15','11:54:42',1),(120,1,7,0,3,5,'2018-06-15','11:54:58',1),(121,13,5,1,0,5,'2018-06-15','11:56:48',1),(122,13,7,0,0,10,'2018-06-15','11:57:00',1),(123,12,7,3,2,40,'2018-06-15','12:10:10',1),(124,12,3,1,3,10,'2018-06-15','07:00:00',1),(125,11,12,2,0,50,'2018-06-15','03:45:23',1),(126,11,13,2,1,10,'2018-06-15','03:46:12',1),(127,5,12,2,1,15,'2018-06-15','03:58:05',1),(128,5,13,2,1,16,'2018-06-15','04:02:09',1),(129,16,12,2,1,5,'2018-06-15','04:25:26',1),(130,16,13,2,1,5,'2018-06-15','04:26:05',1),(131,16,14,2,0,5,'2018-06-15','04:26:36',1),(132,16,15,1,3,5,'2018-06-15','04:27:06',1),(133,16,20,1,1,5,'2018-06-15','04:27:45',1),(134,16,21,2,0,10,'2018-06-15','04:28:09',1),(135,16,22,3,0,30,'2018-06-15','04:28:58',1),(136,1,13,3,0,15,'2018-06-15','05:40:05',1),(137,1,14,1,0,5,'2018-06-15','05:40:51',1),(138,13,13,1,0,10,'2018-06-15','05:54:37',1),(139,13,14,1,1,10,'2018-06-15','05:55:21',1),(140,13,15,1,2,10,'2018-06-15','05:56:07',1),(141,13,21,2,0,10,'2018-06-15','05:56:36',1),(142,13,22,3,1,10,'2018-06-15','05:56:51',1),(143,1,12,0,1,10,'2018-06-15','06:42:43',1),(144,15,12,3,0,40,'2018-06-15','07:45:09',1),(145,15,13,2,0,20,'2018-06-15','07:49:15',1),(146,17,3,0,2,10,'2018-06-15','08:45:28',0),(147,2,12,2,1,10,'2018-06-15','21:48:23',1),(148,2,13,2,2,10,'2018-06-15','21:49:05',1),(149,4,12,3,1,10,'2018-06-15','21:50:47',1),(150,4,13,2,1,7,'2018-06-15','21:51:05',1),(151,18,12,2,0,20,'2018-06-15','22:00:45',1),(152,17,12,3,2,3,'2018-06-15','22:17:05',1),(153,17,13,2,1,3,'2018-06-15','22:17:45',1),(154,17,14,1,2,3,'2018-06-15','22:18:30',1),(155,18,14,0,1,10,'2018-06-15','22:19:44',1),(156,18,13,2,1,25,'2018-06-15','22:20:13',1),(157,14,12,3,1,20,'2018-06-15','22:27:47',1),(158,12,12,3,2,30,'2018-06-15','23:44:46',1),(159,12,13,2,0,100,'2018-06-15','23:46:03',1),(160,14,13,2,0,10,'2018-06-16','06:55:49',1),(161,3,12,2,1,20,'2018-06-16','08:12:20',1),(162,3,13,1,1,20,'2018-06-16','08:13:00',1),(163,3,14,2,1,25,'2018-06-16','09:57:07',1),(164,15,14,0,0,20,'2018-06-16','10:02:34',1),(166,5,14,2,2,25,'2018-06-16','10:11:54',1),(167,5,15,2,1,25,'2018-06-16','10:12:55',1),(168,1,15,1,0,10,'2018-06-16','10:13:15',1),(169,4,14,1,1,5,'2018-06-16','10:15:11',1),(170,4,15,2,1,10,'2018-06-16','10:15:27',1),(171,2,14,2,3,10,'2018-06-16','10:21:59',1),(172,2,15,3,1,20,'2018-06-16','10:22:28',1),(173,11,14,2,1,20,'2018-06-16','10:47:24',1),(174,11,15,1,1,20,'2018-06-16','10:48:42',1),(175,12,14,2,2,30,'2018-06-16','11:00:39',1),(176,12,15,2,1,50,'2018-06-16','11:07:23',1),(177,15,15,1,0,30,'2018-06-16','12:55:33',1),(178,3,15,1,0,30,'2018-06-16','13:04:13',1),(179,1,20,0,0,5,'2018-06-16','18:16:32',1),(180,2,20,1,1,10,'2018-06-16','19:36:32',1),(181,2,21,2,1,30,'2018-06-16','19:36:55',1),(182,2,22,3,2,30,'2018-06-16','19:37:34',1),(183,5,20,0,2,25,'2018-06-16','20:07:24',1),(184,5,21,2,1,30,'2018-06-16','20:08:34',1),(185,5,22,2,2,30,'2018-06-16','20:09:11',1),(186,4,20,1,1,8,'2018-06-16','20:23:13',1),(187,15,20,0,2,30,'2018-06-16','20:28:16',1),(188,3,20,0,0,10,'2018-06-16','21:20:38',1),(189,3,21,3,1,25,'2018-06-16','21:23:11',1),(190,11,20,2,1,20,'2018-06-16','21:34:01',1),(191,11,21,1,1,10,'2018-06-16','21:34:25',1),(192,11,22,3,0,35,'2018-06-16','21:34:52',1),(193,12,20,1,1,15,'2018-06-16','23:26:01',1),(194,12,21,3,1,90,'2018-06-16','23:26:45',1),(195,12,22,4,2,65,'2018-06-16','23:27:21',1),(196,18,20,1,1,10,'2018-06-17','06:49:39',1),(197,18,21,3,1,15,'2018-06-17','06:51:39',1),(198,18,22,2,1,10,'2018-06-17','06:52:10',1),(199,1,21,1,0,10,'2018-06-17','07:54:31',1),(200,1,22,2,0,20,'2018-06-17','07:55:08',1),(201,15,21,2,0,70,'2018-06-17','08:58:02',1),(202,4,21,3,1,20,'2018-06-17','09:54:59',1),(203,14,21,3,1,25,'2018-06-17','09:55:05',1),(204,15,22,0,0,20,'2018-06-17','11:58:51',1),(205,3,22,2,1,40,'2018-06-17','12:20:21',1),(206,4,22,2,1,20,'2018-06-17','12:21:51',1),(207,14,22,2,1,25,'2018-06-17','12:34:40',1),(208,15,26,1,0,30,'2018-06-17','20:41:43',1),(209,3,26,1,0,10,'2018-06-17','21:01:47',1),(210,18,26,2,1,3,'2018-06-17','21:33:23',1),(211,18,27,2,1,2,'2018-06-17','21:34:22',1),(212,18,28,0,2,5,'2018-06-17','21:34:58',1),(213,16,26,1,1,5,'2018-06-17','21:46:20',1),(214,16,27,2,0,8,'2018-06-17','21:47:04',1),(215,16,28,2,0,12,'2018-06-17','21:48:41',1),(216,4,26,2,1,10,'2018-06-18','06:47:45',1),(217,5,26,2,1,30,'2018-06-18','06:53:45',1),(218,5,27,2,1,25,'2018-06-18','06:54:26',1),(219,5,28,0,2,35,'2018-06-18','06:55:07',1),(220,2,27,2,1,10,'2018-06-18','07:01:13',1),(221,2,26,3,1,10,'2018-06-18','07:01:26',1),(222,2,28,1,2,10,'2018-06-18','07:02:11',1),(223,15,27,2,0,60,'2018-06-18','08:55:04',1),(224,1,27,1,0,5,'2018-06-18','09:32:34',1),(225,3,27,2,0,10,'2018-06-18','09:38:39',1),(226,4,27,3,0,5,'2018-06-18','09:43:33',1),(227,11,27,2,0,15,'2018-06-18','09:43:53',1),(228,11,28,0,2,15,'2018-06-18','09:44:27',1),(229,14,27,2,1,5,'2018-06-18','09:55:22',1),(230,17,28,1,2,10,'2018-06-18','11:13:07',1),(231,12,28,0,3,65,'2018-06-18','11:53:23',1),(232,15,28,1,1,30,'2018-06-18','11:54:57',1),(233,1,28,0,1,5,'2018-06-18','12:13:28',1),(234,3,28,1,2,20,'2018-06-18','12:52:50',1),(235,12,29,3,1,50,'2018-06-18','19:08:56',1),(236,12,31,3,0,121,'2018-06-18','19:09:53',1),(237,18,29,2,0,10,'2018-06-18','19:23:56',1),(238,18,30,2,1,7,'2018-06-18','19:25:31',1),(239,18,31,1,1,7,'2018-06-18','19:25:59',1),(240,15,29,1,0,30,'2018-06-18','21:00:20',1),(241,15,30,0,1,30,'2018-06-18','21:06:02',1),(242,15,31,0,0,30,'2018-06-18','21:07:28',1),(243,2,29,2,1,20,'2018-06-18','21:28:00',1),(244,2,30,1,1,10,'2018-06-18','21:28:28',1),(245,2,31,3,1,50,'2018-06-18','21:29:18',1),(246,1,29,1,0,5,'2018-06-18','21:31:24',1),(247,16,29,2,1,21,'2018-06-18','22:32:09',1),(248,11,29,1,0,20,'2018-06-18','22:34:12',1),(249,11,30,1,0,10,'2018-06-18','22:35:45',1),(250,11,31,0,1,10,'2018-06-18','22:36:14',1),(251,3,29,1,0,10,'2018-06-18','23:10:30',1),(252,5,29,2,1,35,'2018-06-19','00:29:36',1),(253,5,30,2,2,25,'2018-06-19','00:29:53',1),(254,5,31,1,2,35,'2018-06-19','00:30:22',1),(255,4,29,2,0,20,'2018-06-19','05:01:21',1),(256,4,30,1,0,10,'2018-06-19','05:01:50',1),(257,4,31,2,1,10,'2018-06-19','05:02:03',1),(258,14,29,2,1,5,'2018-06-19','06:50:34',1),(259,17,30,2,1,5,'2018-06-19','08:47:47',1),(260,3,30,1,0,10,'2018-06-19','09:20:42',1),(261,1,30,0,1,5,'2018-06-19','09:24:21',1),(262,13,31,1,0,5,'2018-06-19','12:52:05',1),(263,1,31,1,0,5,'2018-06-19','12:53:09',1),(264,3,31,0,1,10,'2018-06-19','12:53:15',1),(265,16,33,4,1,10,'2018-06-19','15:17:57',1),(266,16,32,3,0,5,'2018-06-19','15:20:39',1),(267,13,32,2,1,5,'2018-06-19','15:37:06',1),(268,13,33,1,0,5,'2018-06-19','15:37:26',1),(269,18,32,2,0,20,'2018-06-19','19:08:39',1),(270,2,32,3,1,100,'2018-06-19','20:02:40',1),(271,2,33,2,1,75,'2018-06-19','20:03:11',1),(272,2,34,1,3,75,'2018-06-19','20:03:39',1),(273,5,32,2,0,35,'2018-06-19','20:48:13',1),(274,5,33,2,0,35,'2018-06-19','20:48:50',1),(275,5,34,1,3,35,'2018-06-19','20:49:20',1),(276,1,32,2,0,10,'2018-06-19','20:54:58',1),(277,1,33,3,1,10,'2018-06-19','20:56:09',1),(278,3,32,2,0,25,'2018-06-19','22:30:28',1),(279,12,32,2,0,42,'2018-06-19','22:31:24',1),(280,11,32,3,0,20,'2018-06-19','22:44:50',1),(281,11,33,3,0,20,'2018-06-19','22:46:02',1),(282,11,34,1,2,20,'2018-06-19','22:47:08',1),(283,3,33,3,0,24,'2018-06-19','23:11:32',1),(284,4,32,2,0,5,'2018-06-20','06:48:42',1),(285,18,33,3,0,15,'2018-06-20','08:58:58',1),(286,1,34,0,2,20,'2018-06-20','09:26:57',1),(287,14,33,2,0,5,'2018-06-20','09:36:18',1),(288,15,33,3,0,180,'2018-06-20','09:37:33',1),(289,4,33,3,0,25,'2018-06-20','09:45:42',1),(290,4,34,0,2,5,'2018-06-20','09:45:54',1),(291,17,33,1,2,10,'2018-06-20','09:55:46',1),(292,17,34,1,1,5,'2018-06-20','09:56:05',1),(293,13,34,0,2,10,'2018-06-20','10:27:34',1),(294,15,34,0,3,90,'2018-06-20','11:57:54',1),(295,12,34,0,3,200,'2018-06-20','12:00:50',1),(296,3,34,0,2,200,'2018-06-20','12:05:07',1),(297,18,34,1,2,20,'2018-06-20','12:10:13',1),(298,13,36,1,0,5,'2018-06-20','15:45:06',1),(299,13,37,1,2,5,'2018-06-20','15:45:18',1),(300,13,35,1,0,5,'2018-06-20','15:45:41',1),(301,1,35,1,0,10,'2018-06-20','20:55:48',1),(302,2,35,1,0,25,'2018-06-20','21:40:14',1),(303,2,36,1,2,50,'2018-06-20','21:40:30',1),(304,2,37,1,1,25,'2018-06-20','21:40:56',1),(305,12,35,1,2,43,'2018-06-20','21:51:23',1),(306,11,35,1,0,25,'2018-06-20','22:02:42',1),(307,11,36,1,0,30,'2018-06-20','22:03:04',1),(308,11,37,1,0,25,'2018-06-20','22:03:55',1),(309,15,35,1,0,50,'2018-06-20','22:19:53',1),(310,5,35,2,1,35,'2018-06-20','22:42:18',1),(311,5,36,2,0,40,'2018-06-20','22:42:48',1),(312,5,37,2,2,30,'2018-06-20','22:43:18',1),(313,17,35,1,2,5,'2018-06-20','23:31:41',1),(314,17,36,2,1,5,'2018-06-20','23:31:55',1),(315,17,37,3,1,5,'2018-06-20','23:32:11',1),(316,3,35,1,0,52,'2018-06-21','00:06:54',1),(317,18,35,1,0,10,'2018-06-21','03:22:38',1),(318,18,36,2,1,20,'2018-06-21','07:09:28',1),(319,18,37,2,1,10,'2018-06-21','07:09:48',1),(320,3,36,1,0,25,'2018-06-21','07:30:36',1),(321,16,36,0,1,5,'2018-06-21','09:00:43',1),(322,16,37,2,1,10,'2018-06-21','09:01:05',1),(323,4,36,2,1,50,'2018-06-21','09:19:37',1),(324,12,36,3,1,441,'2018-06-21','09:32:58',1),(325,1,36,1,1,10,'2018-06-21','09:39:18',1),(326,15,36,1,0,100,'2018-06-21','09:40:46',1),(327,4,37,2,1,20,'2018-06-21','12:06:17',1),(328,3,37,1,0,170,'2018-06-21','12:08:56',1),(329,1,37,0,1,10,'2018-06-21','12:24:34',1),(330,15,37,1,1,100,'2018-06-21','12:42:00',1),(331,13,38,1,1,5,'2018-06-21','16:26:36',1),(332,14,38,2,0,5,'2018-06-21','20:59:36',1),(333,2,38,2,0,125,'2018-06-21','21:40:46',1),(334,2,39,0,2,50,'2018-06-21','21:42:17',1),(335,2,40,0,2,80,'2018-06-21','21:43:05',1),(336,12,38,2,0,282,'2018-06-21','21:56:03',1),(337,11,38,2,0,100,'2018-06-21','22:02:49',1),(338,11,39,0,1,50,'2018-06-21','22:03:45',1),(339,15,38,2,0,350,'2018-06-21','22:03:46',1),(340,11,40,0,0,30,'2018-06-21','22:04:38',1),(341,18,38,3,0,10,'2018-06-21','22:16:15',1),(342,1,38,3,1,100,'2018-06-21','22:27:13',1),(343,3,38,1,0,300,'2018-06-21','23:46:58',1),(344,17,38,2,1,5,'2018-06-21','23:48:02',1),(345,5,38,2,0,50,'2018-06-22','00:47:28',1),(346,5,39,0,1,30,'2018-06-22','00:49:01',1),(347,5,40,1,1,40,'2018-06-22','00:49:43',1),(348,4,38,2,0,100,'2018-06-22','05:15:54',1),(349,13,39,1,2,10,'2018-06-22','08:55:31',1),(350,4,39,1,0,20,'2018-06-22','08:58:09',1),(351,18,39,0,1,10,'2018-06-22','08:58:25',1),(352,18,40,1,1,20,'2018-06-22','08:58:50',1),(353,1,39,0,1,30,'2018-06-22','09:21:38',1),(354,15,39,0,1,50,'2018-06-22','09:30:54',1),(355,16,40,0,1,5,'2018-06-22','09:47:39',1),(356,16,39,1,1,10,'2018-06-22','09:54:27',1),(357,12,39,1,1,50,'2018-06-22','09:57:46',1),(358,13,40,0,1,10,'2018-06-22','11:21:33',1),(359,3,40,0,1,76,'2018-06-22','11:51:25',1),(360,15,40,0,1,50,'2018-06-22','12:00:52',1),(361,17,40,1,1,5,'2018-06-22','12:16:35',1),(362,12,40,0,1,100,'2018-06-22','12:47:07',1),(364,16,43,1,0,7,'2018-06-22','17:18:04',1),(365,16,42,1,3,8,'2018-06-22','17:27:40',1),(366,18,41,2,0,30,'2018-06-22','20:29:56',1),(367,18,42,0,1,10,'2018-06-22','20:30:20',1),(368,18,43,2,1,10,'2018-06-22','20:30:53',1),(369,2,41,2,0,300,'2018-06-22','21:36:28',1),(370,2,42,1,2,100,'2018-06-22','21:36:54',1),(371,2,43,2,1,100,'2018-06-22','21:37:34',1),(372,15,41,3,0,600,'2018-06-22','22:28:47',1),(373,11,41,2,0,200,'2018-06-22','22:32:00',1),(374,11,42,0,1,100,'2018-06-22','22:35:39',1),(375,11,43,2,0,150,'2018-06-22','22:37:09',1),(376,3,42,0,1,350,'2018-06-22','23:32:30',1),(377,3,41,1,0,200,'2018-06-22','23:34:21',1),(378,5,41,2,1,100,'2018-06-22','23:35:55',1),(379,5,42,1,2,50,'2018-06-22','23:37:42',1),(380,5,43,2,0,50,'2018-06-22','23:38:56',1),(381,1,41,1,0,150,'2018-06-23','02:35:34',1),(382,1,42,0,2,160,'2018-06-23','02:36:58',1),(383,12,41,2,0,500,'2018-06-23','06:25:52',1),(384,12,42,0,2,1000,'2018-06-23','06:27:52',1),(385,14,41,3,1,5,'2018-06-23','06:40:28',1),(386,4,41,3,0,200,'2018-06-23','06:50:04',1),(387,4,42,1,2,100,'2018-06-23','09:23:08',1),(388,15,42,1,1,150,'2018-06-23','09:24:21',1),(389,1,43,0,1,21,'2018-06-23','11:55:45',1),(390,4,43,1,1,70,'2018-06-23','11:56:59',1),(391,3,43,2,0,200,'2018-06-23','11:58:07',1),(392,15,43,2,1,400,'2018-06-23','12:49:59',1),(393,12,43,3,1,200,'2018-06-23','12:51:41',1),(394,3,44,2,0,1200,'2018-06-23','21:01:26',1),(395,5,44,3,0,100,'2018-06-23','21:09:24',1),(396,5,45,1,2,75,'2018-06-23','21:11:17',1),(397,5,46,0,1,70,'2018-06-23','21:12:11',1),(398,2,44,3,0,800,'2018-06-23','21:24:45',1),(399,2,45,1,1,50,'2018-06-23','21:26:00',1),(400,2,46,1,2,50,'2018-06-23','21:26:21',1),(401,15,44,2,0,2000,'2018-06-23','21:29:32',1),(402,16,44,2,0,30,'2018-06-23','22:06:26',1),(403,16,46,1,0,5,'2018-06-23','22:07:12',1),(404,16,45,0,1,2,'2018-06-23','22:07:37',1),(405,1,44,2,0,400,'2018-06-23','23:27:57',1),(406,14,44,2,1,7,'2018-06-24','06:51:48',1),(407,18,44,2,0,50,'2018-06-24','06:53:04',1),(408,4,44,3,0,700,'2018-06-24','06:59:22',1),(409,12,44,3,0,3500,'2018-06-24','07:09:57',1),(410,18,45,1,2,25,'2018-06-24','08:42:50',1),(411,15,45,0,2,1200,'2018-06-24','09:26:49',1),(412,4,45,1,2,100,'2018-06-24','09:36:33',1),(413,4,46,1,2,100,'2018-06-24','09:37:04',1),(414,1,45,1,0,100,'2018-06-24','09:37:41',1),(415,3,45,0,1,500,'2018-06-24','09:43:28',1),(416,12,45,1,3,120,'2018-06-24','09:52:43',1),(417,12,46,1,2,240,'2018-06-24','09:57:51',1),(418,18,46,1,2,20,'2018-06-24','10:16:08',1),(419,15,46,1,0,400,'2018-06-24','11:52:16',1),(420,1,46,0,1,120,'2018-06-24','12:34:01',1),(421,3,46,1,2,200,'2018-06-24','12:40:20',1),(422,14,46,1,2,8,'2018-06-24','12:52:03',1),(428,5,49,4,0,500,'2018-06-24','18:20:05',0),(429,5,50,0,2,300,'2018-06-24','18:20:55',0),(430,5,48,1,1,20,'2018-06-24','18:22:13',1),(431,5,47,0,1,20,'2018-06-24','18:22:37',1),(432,12,48,2,2,480,'2018-06-24','18:23:57',1),(433,12,49,3,1,1000,'2018-06-24','18:24:32',0),(434,12,50,0,4,3000,'2018-06-24','18:25:03',0),(435,12,47,1,2,2000,'2018-06-24','18:25:26',1),(441,16,49,3,1,25,'2018-06-24','20:17:13',0),(442,16,50,0,2,25,'2018-06-24','20:18:58',0),(443,16,48,2,1,5,'2018-06-24','20:20:39',1),(444,16,47,0,0,3,'2018-06-24','20:21:33',1),(445,21,47,0,1,100,'2018-06-24','20:45:22',1),(446,21,48,1,1,200,'2018-06-24','20:46:10',1),(447,21,49,2,0,200,'2018-06-24','20:46:40',0),(448,21,50,0,3,250,'2018-06-24','20:47:12',0),(449,1,49,2,0,500,'2018-06-24','20:47:46',0),(450,1,50,0,3,500,'2018-06-24','20:48:30',0),(451,1,48,1,0,40,'2018-06-24','20:48:57',1),(452,3,47,0,2,600,'2018-06-25','01:47:37',1),(453,2,48,2,1,100,'2018-06-25','07:11:04',1),(454,2,47,1,2,150,'2018-06-25','07:11:34',1),(455,2,49,2,1,100,'2018-06-25','07:12:02',0),(456,2,50,1,3,400,'2018-06-25','07:12:35',0),(457,15,47,0,1,1500,'2018-06-25','08:14:32',1),(458,18,47,1,2,40,'2018-06-25','08:16:54',1),(459,15,48,1,1,400,'2018-06-25','08:20:17',1),(460,18,48,1,1,20,'2018-06-25','08:21:54',1),(461,18,49,2,1,100,'2018-06-25','08:30:52',0),(462,18,50,1,2,30,'2018-06-25','08:31:11',0),(463,4,48,1,1,50,'2018-06-25','08:34:36',1),(464,4,49,1,0,100,'2018-06-25','08:34:51',0),(465,4,50,0,1,150,'2018-06-25','08:35:07',0),(466,14,47,0,1,5,'2018-06-25','09:22:11',1),(467,14,48,2,1,5,'2018-06-25','09:22:45',1),(468,13,49,2,1,15,'2018-06-25','10:50:00',0),(469,13,50,1,2,10,'2018-06-25','10:50:16',0),(470,15,49,3,0,3000,'2018-06-25','11:27:33',0),(471,15,50,0,1,390,'2018-06-25','11:27:43',0),(472,3,49,1,0,1600,'2018-06-25','11:36:05',0),(473,11,49,1,0,300,'2018-06-25','12:11:22',0),(474,11,50,0,1,300,'2018-06-25','12:11:42',0),(475,14,49,3,0,15,'2018-06-25','13:01:42',0);
/*!40000 ALTER TABLE `apuestas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banco_central_laplacio`
--

DROP TABLE IF EXISTS `banco_central_laplacio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banco_central_laplacio` (
  `total_laplacios` int(11) NOT NULL,
  `total_dolares` int(11) NOT NULL,
  `reserva` int(11) NOT NULL,
  `impresos` int(11) NOT NULL,
  `cotizacion` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco_central_laplacio`
--

LOCK TABLES `banco_central_laplacio` WRITE;
/*!40000 ALTER TABLE `banco_central_laplacio` DISABLE KEYS */;
INSERT INTO `banco_central_laplacio` VALUES (8135,95,11187,0,85.6316);
/*!40000 ALTER TABLE `banco_central_laplacio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participantes`
--

DROP TABLE IF EXISTS `participantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participantes` (
  `id_participante` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id participante',
  `nombre` varchar(60) NOT NULL COMMENT 'nombre participante',
  `saldo` int(11) NOT NULL COMMENT 'valor del saldo',
  `passwd` varchar(10) NOT NULL,
  PRIMARY KEY (`id_participante`),
  UNIQUE KEY `id_participante` (`id_participante`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COMMENT='Informacion de participantes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantes`
--

LOCK TABLES `participantes` WRITE;
/*!40000 ALTER TABLE `participantes` DISABLE KEYS */;
INSERT INTO `participantes` VALUES (1,'DAVID',80,'DAVID'),(2,'LORE',2605,'LORE'),(3,'SOFI',628,'SOFI'),(4,'SERGIO',1700,'SERGIO'),(5,'PAULA',0,'PAULA'),(11,'LUIS MIGUEL',516,'LUIS'),(12,'PEDRO',1000,'PEDRO'),(13,'MYRI',90,'MYRI'),(14,'KATY',35,'KATY'),(15,'JUAN CARLOS',0,'JUAN'),(16,'ALEXANDER',12,'ALEXANDER'),(17,'ANDRES',111,'ANDRES'),(18,'MARU',101,'MARU'),(19,'GIORGINO',105,'GIORGINO'),(20,'CRIS',513,'CRIS'),(21,'ESTEBAN',638,'ESTEBAN');
/*!40000 ALTER TABLE `participantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partidos`
--

DROP TABLE IF EXISTS `partidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partidos` (
  `id_partido` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `equipo_1` varchar(50) NOT NULL,
  `equipo_2` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `resultado_equipo_1` int(11) DEFAULT NULL,
  `resultado_equipo_2` int(11) DEFAULT NULL,
  `revisado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_partido`),
  UNIQUE KEY `id_partido` (`id_partido`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1 COMMENT='Partidos disponibles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidos`
--

LOCK TABLES `partidos` WRITE;
/*!40000 ALTER TABLE `partidos` DISABLE KEYS */;
INSERT INTO `partidos` VALUES (1,'RUSIA','ARABIA SAUDITA','2018-06-14','10:00:00',5,0,1),(3,'EGITPO','URUGUAY','2018-06-15','07:00:00',0,1,1),(5,'MARRUECOS','IRAN','2018-06-15','10:00:00',0,1,1),(7,'PORTUGAL','ESPANA','2018-06-15','13:00:00',3,3,1),(12,'FRANCIA','AUSTRALIA','2018-06-16','05:00:00',2,1,1),(13,'ARGENTINA','ISLANDIA','2018-06-16','08:00:00',1,1,1),(14,'PERU','DINAMARCA','2018-06-16','11:00:00',0,1,1),(15,'CROACIA','NIGERIA','2018-06-16','14:00:00',2,0,1),(20,'COSTA RICA','SERBIA','2018-06-17','07:00:00',0,1,1),(21,'ALEMANIA','MEXICO','2018-06-17','10:00:00',0,1,1),(22,'BRASIL','SUIZA','2018-06-17','13:00:00',1,1,1),(26,'SUECIA','COREA','2018-06-18','07:00:00',1,0,1),(27,'BELGICA','PANAMA','2018-06-18','10:00:00',3,0,1),(28,'TUNISIA','INGLATERRA','2018-06-18','13:00:00',1,2,1),(29,'COLOMBIA','JAPON','2018-06-19','07:00:00',1,2,1),(30,'POLONIA','SENEGAL','2018-06-19','10:00:00',1,2,1),(31,'RUSIA','EGIPTO','2018-06-19','13:00:00',3,1,1),(32,'PORTUGAL','MARUECOS','2018-06-20','07:00:00',1,0,1),(33,'URUGUAY','ARABIA SAUDITA','2018-06-20','10:00:00',1,0,1),(34,'IRAN','ESPANA','2018-06-20','13:00:00',0,1,1),(35,'DINAMARCA','AUSTRALIA','2018-06-21','07:00:00',1,1,1),(36,'FRANCIA','PERU','2018-06-21','10:00:00',1,0,1),(37,'ARGENTINA','CROACIA','2018-06-21','13:00:00',0,3,1),(38,'BRASIL','COSTA RICA','2018-06-22','07:00:00',2,0,1),(39,'NIGERIA','ISLANDIA','2018-06-22','10:00:00',2,0,1),(40,'SERBIA','SUIZA','2018-06-22','13:00:00',1,2,1),(41,'BELGICA','TUNEZ','2018-06-23','07:00:00',5,2,1),(42,'COREA','MEXICO','2018-06-23','10:00:00',1,2,1),(43,'ALEMANIA','SUECIA','2018-06-23','13:00:00',2,1,1),(44,'INGLATERRA','PANAMA','2018-06-24','07:00:00',6,1,1),(45,'JAPON','SENEGAL','2018-06-24','10:00:00',2,2,1),(46,'POLONIA','COLOMBIA','2018-06-24','13:00:00',0,3,1),(47,'ARABIA SAUDITA','EGIPTO','2018-06-25','09:00:00',2,1,1),(48,'URUGUAY','RUSIA','2018-06-25','09:00:00',3,0,1),(49,'ESPANA','MARRUECOS','2018-06-25','13:00:00',2,2,0),(50,'IRAN','PORTUGAL','2018-06-25','13:00:00',1,1,0);
/*!40000 ALTER TABLE `partidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transacciones`
--

DROP TABLE IF EXISTS `transacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transacciones` (
  `id_transaccion` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_participante` int(11) NOT NULL,
  `id_apuesta` int(11) NOT NULL,
  `monto` int(11) NOT NULL,
  `total_participante` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`id_transaccion`),
  UNIQUE KEY `id_transaccion` (`id_transaccion`)
) ENGINE=InnoDB AUTO_INCREMENT=290 DEFAULT CHARSET=latin1 COMMENT='Transacciones de laplacios';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transacciones`
--

LOCK TABLES `transacciones` WRITE;
/*!40000 ALTER TABLE `transacciones` DISABLE KEYS */;
INSERT INTO `transacciones` VALUES (101,4,86,7,35,'2018-06-15','11:57:58'),(102,2,90,10,39,'2018-06-15','11:57:58'),(103,5,94,10,38,'2018-06-15','11:57:58'),(104,15,98,10,20,'2018-06-15','11:57:58'),(105,16,104,10,50,'2018-06-15','11:57:58'),(106,11,109,10,35,'2018-06-15','11:57:58'),(107,3,113,15,48,'2018-06-15','11:57:58'),(108,1,117,10,45,'2018-06-15','11:57:58'),(109,4,87,10,55,'2018-06-15','11:58:17'),(110,2,91,8,55,'2018-06-15','11:58:17'),(111,5,95,20,68,'2018-06-15','11:58:17'),(112,15,99,10,40,'2018-06-15','11:58:17'),(113,14,105,20,45,'2018-06-15','11:58:17'),(114,12,108,100,150,'2018-06-15','11:58:17'),(115,11,110,15,65,'2018-06-15','11:58:17'),(116,3,114,8,64,'2018-06-15','11:58:17'),(117,1,118,5,55,'2018-06-15','11:58:17'),(118,2,92,10,70,'2018-06-15','11:58:58'),(119,15,101,40,90,'2018-06-15','03:03:26'),(120,16,103,30,85,'2018-06-15','03:03:26'),(121,13,122,20,65,'2018-06-15','03:03:26'),(122,11,125,50,105,'0000-00-00','00:00:00'),(123,5,127,60,105,'0000-00-00','00:00:00'),(124,16,129,20,45,'0000-00-00','00:00:00'),(125,15,144,40,110,'0000-00-00','00:00:00'),(126,2,147,40,100,'0000-00-00','00:00:00'),(127,4,149,10,58,'0000-00-00','00:00:00'),(128,18,151,20,77,'0000-00-00','00:00:00'),(129,17,152,6,82,'0000-00-00','00:00:00'),(130,14,157,20,55,'0000-00-00','00:00:00'),(131,12,158,60,150,'0000-00-00','00:00:00'),(132,3,161,80,119,'0000-00-00','00:00:00'),(133,2,148,20,130,'0000-00-00','00:00:00'),(134,3,162,80,194,'0000-00-00','00:00:00'),(135,17,154,6,91,'0000-00-00','00:00:00'),(136,18,155,40,127,'0000-00-00','00:00:00'),(137,2,171,20,130,'0000-00-00','00:00:00'),(138,5,167,25,105,'0000-00-00','00:00:00'),(139,1,168,10,35,'0000-00-00','00:00:00'),(140,4,170,10,63,'0000-00-00','00:00:00'),(141,2,172,40,190,'0000-00-00','00:00:00'),(142,12,176,50,170,'0000-00-00','00:00:00'),(143,15,177,30,120,'0000-00-00','00:00:00'),(144,3,178,30,224,'0000-00-00','00:00:00'),(145,5,183,25,70,'0000-00-00','00:00:00'),(146,15,187,30,60,'0000-00-00','00:00:00'),(147,5,185,60,160,'0000-00-00','00:00:00'),(148,15,204,40,120,'0000-00-00','00:00:00'),(149,15,208,120,150,'0000-00-00','00:00:00'),(150,3,209,40,159,'0000-00-00','00:00:00'),(151,18,210,6,91,'0000-00-00','00:00:00'),(152,4,216,20,30,'0000-00-00','00:00:00'),(153,5,217,60,160,'0000-00-00','00:00:00'),(154,2,221,10,110,'0000-00-00','00:00:00'),(155,18,211,2,95,'0000-00-00','00:00:00'),(156,16,214,8,36,'0000-00-00','00:00:00'),(157,5,218,25,210,'0000-00-00','00:00:00'),(158,2,220,10,130,'0000-00-00','00:00:00'),(159,15,223,60,270,'0000-00-00','00:00:00'),(160,1,224,5,65,'0000-00-00','00:00:00'),(161,3,225,10,179,'0000-00-00','00:00:00'),(162,4,226,20,55,'0000-00-00','00:00:00'),(163,11,227,15,65,'0000-00-00','00:00:00'),(164,14,229,5,10,'0000-00-00','00:00:00'),(165,18,212,5,105,'0000-00-00','00:00:00'),(166,5,219,35,280,'0000-00-00','00:00:00'),(167,2,222,40,180,'0000-00-00','00:00:00'),(168,11,228,15,95,'0000-00-00','00:00:00'),(169,17,230,40,131,'0000-00-00','00:00:00'),(170,12,231,65,130,'0000-00-00','00:00:00'),(171,1,233,10,80,'0000-00-00','00:00:00'),(172,3,234,80,279,'0000-00-00','00:00:00'),(173,15,241,60,270,'0000-00-00','00:00:00'),(174,1,261,10,121,'0000-00-00','00:00:00'),(175,12,236,121,242,'0000-00-00','00:00:00'),(176,2,245,200,350,'0000-00-00','00:00:00'),(177,4,257,10,35,'0000-00-00','00:00:00'),(178,13,262,5,50,'0000-00-00','00:00:00'),(179,1,263,5,131,'0000-00-00','00:00:00'),(180,16,266,5,10,'0000-00-00','00:00:00'),(181,13,267,10,45,'0000-00-00','00:00:00'),(182,18,269,20,66,'0000-00-00','00:00:00'),(183,2,270,100,300,'0000-00-00','00:00:00'),(184,5,273,35,150,'0000-00-00','00:00:00'),(185,1,276,10,111,'0000-00-00','00:00:00'),(186,3,278,25,50,'0000-00-00','00:00:00'),(187,12,279,42,84,'0000-00-00','00:00:00'),(188,11,280,20,76,'0000-00-00','00:00:00'),(189,4,284,5,10,'0000-00-00','00:00:00'),(190,16,265,10,30,'0000-00-00','00:00:00'),(191,13,268,20,70,'0000-00-00','00:00:00'),(192,2,271,150,525,'0000-00-00','00:00:00'),(193,5,274,35,220,'0000-00-00','00:00:00'),(194,1,277,10,131,'0000-00-00','00:00:00'),(195,11,281,20,116,'0000-00-00','00:00:00'),(196,3,283,24,98,'0000-00-00','00:00:00'),(197,18,285,15,96,'0000-00-00','00:00:00'),(198,14,287,5,10,'0000-00-00','00:00:00'),(199,15,288,180,360,'0000-00-00','00:00:00'),(200,4,289,25,60,'0000-00-00','00:00:00'),(201,2,272,75,675,'0000-00-00','00:00:00'),(202,5,275,35,290,'0000-00-00','00:00:00'),(203,11,282,40,176,'0000-00-00','00:00:00'),(204,1,286,20,171,'0000-00-00','00:00:00'),(205,4,290,5,70,'0000-00-00','00:00:00'),(206,13,293,10,90,'0000-00-00','00:00:00'),(207,15,294,90,540,'0000-00-00','00:00:00'),(208,12,295,200,484,'0000-00-00','00:00:00'),(209,3,296,200,498,'0000-00-00','00:00:00'),(210,18,297,40,156,'0000-00-00','00:00:00'),(211,13,298,20,100,'0000-00-00','00:00:00'),(212,11,307,120,246,'0000-00-00','00:00:00'),(213,5,311,40,265,'0000-00-00','00:00:00'),(214,17,314,10,111,'0000-00-00','00:00:00'),(215,18,318,40,176,'0000-00-00','00:00:00'),(216,3,320,100,376,'0000-00-00','00:00:00'),(217,4,323,100,150,'0000-00-00','00:00:00'),(218,12,324,441,882,'0000-00-00','00:00:00'),(219,15,326,400,790,'0000-00-00','00:00:00'),(220,13,299,5,110,'0000-00-00','00:00:00'),(221,1,329,10,161,'0000-00-00','00:00:00'),(222,14,332,20,30,'0000-00-00','00:00:00'),(223,2,333,500,945,'0000-00-00','00:00:00'),(224,12,336,1128,1860,'0000-00-00','00:00:00'),(225,11,337,400,566,'0000-00-00','00:00:00'),(226,15,339,1400,2090,'0000-00-00','00:00:00'),(227,18,341,10,156,'0000-00-00','00:00:00'),(228,1,342,200,331,'0000-00-00','00:00:00'),(229,3,343,300,600,'0000-00-00','00:00:00'),(230,17,344,5,111,'0000-00-00','00:00:00'),(231,5,345,200,395,'0000-00-00','00:00:00'),(232,4,348,400,530,'0000-00-00','00:00:00'),(233,4,350,20,570,'0000-00-00','00:00:00'),(234,2,335,80,1105,'0000-00-00','00:00:00'),(235,16,355,10,15,'0000-00-00','00:00:00'),(236,13,358,20,115,'0000-00-00','00:00:00'),(237,3,359,152,828,'0000-00-00','00:00:00'),(238,15,360,100,2240,'0000-00-00','00:00:00'),(239,12,362,200,2160,'0000-00-00','00:00:00'),(240,18,366,30,166,'0000-00-00','00:00:00'),(241,2,369,300,1205,'0000-00-00','00:00:00'),(242,15,372,1200,2890,'0000-00-00','00:00:00'),(243,11,373,200,516,'0000-00-00','00:00:00'),(244,3,377,200,478,'0000-00-00','00:00:00'),(245,5,378,100,395,'0000-00-00','00:00:00'),(246,1,381,150,300,'0000-00-00','00:00:00'),(247,12,383,500,1460,'0000-00-00','00:00:00'),(248,14,385,5,35,'0000-00-00','00:00:00'),(249,4,386,400,800,'0000-00-00','00:00:00'),(250,16,365,8,16,'0000-00-00','00:00:00'),(251,18,367,20,196,'0000-00-00','00:00:00'),(252,2,370,400,1705,'0000-00-00','00:00:00'),(253,11,374,200,816,'0000-00-00','00:00:00'),(254,3,376,700,1528,'0000-00-00','00:00:00'),(255,5,379,200,645,'0000-00-00','00:00:00'),(256,1,382,160,620,'0000-00-00','00:00:00'),(257,12,384,1000,3460,'0000-00-00','00:00:00'),(258,4,387,400,1300,'0000-00-00','00:00:00'),(259,16,364,14,37,'0000-00-00','00:00:00'),(260,18,368,40,246,'0000-00-00','00:00:00'),(261,2,371,400,2205,'0000-00-00','00:00:00'),(262,11,375,150,1116,'0000-00-00','00:00:00'),(263,5,380,50,745,'0000-00-00','00:00:00'),(264,3,391,200,1928,'0000-00-00','00:00:00'),(265,15,392,1600,4890,'0000-00-00','00:00:00'),(266,12,393,200,3860,'0000-00-00','00:00:00'),(267,3,394,1200,2428,'0000-00-00','00:00:00'),(268,5,395,100,700,'0000-00-00','00:00:00'),(269,2,398,800,2905,'0000-00-00','00:00:00'),(270,15,401,2000,5290,'0000-00-00','00:00:00'),(271,16,402,30,60,'0000-00-00','00:00:00'),(272,1,405,400,800,'0000-00-00','00:00:00'),(273,14,406,7,34,'0000-00-00','00:00:00'),(274,18,407,50,251,'0000-00-00','00:00:00'),(275,4,408,700,1800,'0000-00-00','00:00:00'),(276,12,409,3500,7000,'0000-00-00','00:00:00'),(277,2,399,100,3055,'0000-00-00','00:00:00'),(278,5,397,70,840,'0000-00-00','00:00:00'),(279,2,400,50,3155,'0000-00-00','00:00:00'),(280,4,413,100,2000,'0000-00-00','00:00:00'),(281,12,417,240,7480,'0000-00-00','00:00:00'),(282,18,418,20,291,'0000-00-00','00:00:00'),(283,1,420,120,1040,'0000-00-00','00:00:00'),(284,3,421,200,2828,'0000-00-00','00:00:00'),(285,14,422,8,50,'0000-00-00','00:00:00'),(286,16,443,5,12,'0000-00-00','00:00:00'),(287,1,451,40,80,'0000-00-00','00:00:00'),(288,2,453,100,2605,'0000-00-00','00:00:00'),(289,14,467,5,35,'0000-00-00','00:00:00');
/*!40000 ALTER TABLE `transacciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-25 20:01:15
