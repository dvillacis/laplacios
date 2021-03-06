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
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=latin1 COMMENT='Registro de apuestas realizadas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apuestas`
--

LOCK TABLES `apuestas` WRITE;
/*!40000 ALTER TABLE `apuestas` DISABLE KEYS */;
INSERT INTO `apuestas` VALUES (86,4,1,2,0,7,'2018-06-15','11:36:17',1),(87,4,3,0,2,10,'2018-06-15','11:37:05',1),(88,4,5,1,1,5,'2018-06-15','11:37:21',1),(89,4,7,2,1,7,'2018-06-15','11:37:36',1),(90,2,1,2,1,10,'2018-06-15','11:38:19',1),(91,2,3,1,3,8,'2018-06-15','11:38:49',1),(92,2,5,1,2,5,'2018-06-15','11:39:03',1),(93,2,7,2,3,8,'2018-06-15','11:39:16',1),(94,5,1,3,1,10,'2018-06-15','11:40:40',1),(95,5,3,1,2,10,'2018-06-15','11:41:01',1),(96,5,5,1,1,4,'2018-06-15','11:41:24',1),(97,5,7,3,2,15,'2018-06-15','11:41:36',1),(98,15,1,2,0,10,'2018-06-15','11:42:12',1),(99,15,3,0,2,10,'2018-06-15','11:42:44',1),(100,15,5,1,0,20,'2018-06-15','11:43:07',1),(101,15,7,1,1,20,'2018-06-15','11:43:27',1),(102,16,5,1,0,5,'2018-06-15','11:44:23',1),(103,16,7,2,2,15,'2018-06-15','11:44:38',1),(104,16,1,3,1,10,'2018-06-15','11:45:09',1),(105,14,3,1,2,10,'2018-06-15','11:46:21',1),(106,14,5,2,0,15,'2018-06-15','11:46:35',1),(107,14,7,1,0,10,'2018-06-15','11:46:53',1),(108,12,3,1,2,50,'2018-06-15','11:48:05',1),(109,11,1,2,0,10,'2018-06-15','11:49:00',1),(110,11,3,0,3,15,'2018-06-15','11:49:22',1),(111,11,5,1,1,5,'2018-06-15','11:49:36',1),(112,11,7,2,1,5,'2018-06-15','11:49:50',1),(113,3,1,1,0,15,'2018-06-15','11:52:14',1),(114,3,3,0,2,8,'2018-06-15','11:52:36',1),(115,3,5,1,1,4,'2018-06-15','11:52:58',1),(116,3,7,1,2,10,'2018-06-15','11:53:13',1),(117,1,1,1,0,10,'2018-06-15','11:54:01',1),(118,1,3,0,3,5,'2018-06-15','11:54:21',1),(119,1,5,0,0,5,'2018-06-15','11:54:42',1),(120,1,7,0,3,5,'2018-06-15','11:54:58',1),(121,13,5,1,0,5,'2018-06-15','11:56:48',1),(122,13,7,0,0,10,'2018-06-15','11:57:00',1),(123,12,7,3,2,40,'2018-06-15','12:10:10',1),(124,12,3,1,3,10,'2018-06-15','07:00:00',1),(125,11,12,2,0,50,'2018-06-15','03:45:23',1),(126,11,13,2,1,10,'2018-06-15','03:46:12',1),(127,5,12,2,1,15,'2018-06-15','03:58:05',1),(128,5,13,2,1,16,'2018-06-15','04:02:09',1),(129,16,12,2,1,5,'2018-06-15','04:25:26',1),(130,16,13,2,1,5,'2018-06-15','04:26:05',1),(131,16,14,2,0,5,'2018-06-15','04:26:36',1),(132,16,15,1,3,5,'2018-06-15','04:27:06',1),(133,16,20,1,1,5,'2018-06-15','04:27:45',1),(134,16,21,2,0,10,'2018-06-15','04:28:09',1),(135,16,22,3,0,30,'2018-06-15','04:28:58',1),(136,1,13,3,0,15,'2018-06-15','05:40:05',1),(137,1,14,1,0,5,'2018-06-15','05:40:51',1),(138,13,13,1,0,10,'2018-06-15','05:54:37',1),(139,13,14,1,1,10,'2018-06-15','05:55:21',1),(140,13,15,1,2,10,'2018-06-15','05:56:07',1),(141,13,21,2,0,10,'2018-06-15','05:56:36',1),(142,13,22,3,1,10,'2018-06-15','05:56:51',1),(143,1,12,0,1,10,'2018-06-15','06:42:43',1),(144,15,12,3,0,40,'2018-06-15','07:45:09',1),(145,15,13,2,0,20,'2018-06-15','07:49:15',1),(146,17,3,0,2,10,'2018-06-15','08:45:28',0),(147,2,12,2,1,10,'2018-06-15','21:48:23',1),(148,2,13,2,2,10,'2018-06-15','21:49:05',1),(149,4,12,3,1,10,'2018-06-15','21:50:47',1),(150,4,13,2,1,7,'2018-06-15','21:51:05',1),(151,18,12,2,0,20,'2018-06-15','22:00:45',1),(152,17,12,3,2,3,'2018-06-15','22:17:05',1),(153,17,13,2,1,3,'2018-06-15','22:17:45',1),(154,17,14,1,2,3,'2018-06-15','22:18:30',1),(155,18,14,0,1,10,'2018-06-15','22:19:44',1),(156,18,13,2,1,25,'2018-06-15','22:20:13',1),(157,14,12,3,1,20,'2018-06-15','22:27:47',1),(158,12,12,3,2,30,'2018-06-15','23:44:46',1),(159,12,13,2,0,100,'2018-06-15','23:46:03',1),(160,14,13,2,0,10,'2018-06-16','06:55:49',1),(161,3,12,2,1,20,'2018-06-16','08:12:20',1),(162,3,13,1,1,20,'2018-06-16','08:13:00',1),(163,3,14,2,1,25,'2018-06-16','09:57:07',1),(164,15,14,0,0,20,'2018-06-16','10:02:34',1),(166,5,14,2,2,25,'2018-06-16','10:11:54',1),(167,5,15,2,1,25,'2018-06-16','10:12:55',1),(168,1,15,1,0,10,'2018-06-16','10:13:15',1),(169,4,14,1,1,5,'2018-06-16','10:15:11',1),(170,4,15,2,1,10,'2018-06-16','10:15:27',1),(171,2,14,2,3,10,'2018-06-16','10:21:59',1),(172,2,15,3,1,20,'2018-06-16','10:22:28',1),(173,11,14,2,1,20,'2018-06-16','10:47:24',1),(174,11,15,1,1,20,'2018-06-16','10:48:42',1),(175,12,14,2,2,30,'2018-06-16','11:00:39',1),(176,12,15,2,1,50,'2018-06-16','11:07:23',1),(177,15,15,1,0,30,'2018-06-16','12:55:33',1),(178,3,15,1,0,30,'2018-06-16','13:04:13',1),(179,1,20,0,0,5,'2018-06-16','18:16:32',1),(180,2,20,1,1,10,'2018-06-16','19:36:32',1),(181,2,21,2,1,30,'2018-06-16','19:36:55',1),(182,2,22,3,2,30,'2018-06-16','19:37:34',1),(183,5,20,0,2,25,'2018-06-16','20:07:24',1),(184,5,21,2,1,30,'2018-06-16','20:08:34',1),(185,5,22,2,2,30,'2018-06-16','20:09:11',1),(186,4,20,1,1,8,'2018-06-16','20:23:13',1),(187,15,20,0,2,30,'2018-06-16','20:28:16',1),(188,3,20,0,0,10,'2018-06-16','21:20:38',1),(189,3,21,3,1,25,'2018-06-16','21:23:11',1),(190,11,20,2,1,20,'2018-06-16','21:34:01',1),(191,11,21,1,1,10,'2018-06-16','21:34:25',1),(192,11,22,3,0,35,'2018-06-16','21:34:52',1),(193,12,20,1,1,15,'2018-06-16','23:26:01',1),(194,12,21,3,1,90,'2018-06-16','23:26:45',1),(195,12,22,4,2,65,'2018-06-16','23:27:21',1),(196,18,20,1,1,10,'2018-06-17','06:49:39',1),(197,18,21,3,1,15,'2018-06-17','06:51:39',1),(198,18,22,2,1,10,'2018-06-17','06:52:10',1),(199,1,21,1,0,10,'2018-06-17','07:54:31',1),(200,1,22,2,0,20,'2018-06-17','07:55:08',1),(201,15,21,2,0,70,'2018-06-17','08:58:02',1),(202,4,21,3,1,20,'2018-06-17','09:54:59',1),(203,14,21,3,1,25,'2018-06-17','09:55:05',1),(204,15,22,0,0,20,'2018-06-17','11:58:51',1),(205,3,22,2,1,40,'2018-06-17','12:20:21',1),(206,4,22,2,1,20,'2018-06-17','12:21:51',1),(207,14,22,2,1,25,'2018-06-17','12:34:40',1),(208,15,26,1,0,30,'2018-06-17','20:41:43',1),(209,3,26,1,0,10,'2018-06-17','21:01:47',1),(210,18,26,2,1,3,'2018-06-17','21:33:23',1),(211,18,27,2,1,2,'2018-06-17','21:34:22',1),(212,18,28,0,2,5,'2018-06-17','21:34:58',1),(213,16,26,1,1,5,'2018-06-17','21:46:20',1),(214,16,27,2,0,8,'2018-06-17','21:47:04',1),(215,16,28,2,0,12,'2018-06-17','21:48:41',1),(216,4,26,2,1,10,'2018-06-18','06:47:45',1),(217,5,26,2,1,30,'2018-06-18','06:53:45',1),(218,5,27,2,1,25,'2018-06-18','06:54:26',1),(219,5,28,0,2,35,'2018-06-18','06:55:07',1),(220,2,27,2,1,10,'2018-06-18','07:01:13',1),(221,2,26,3,1,10,'2018-06-18','07:01:26',1),(222,2,28,1,2,10,'2018-06-18','07:02:11',1),(223,15,27,2,0,60,'2018-06-18','08:55:04',1),(224,1,27,1,0,5,'2018-06-18','09:32:34',1),(225,3,27,2,0,10,'2018-06-18','09:38:39',1),(226,4,27,3,0,5,'2018-06-18','09:43:33',1),(227,11,27,2,0,15,'2018-06-18','09:43:53',1),(228,11,28,0,2,15,'2018-06-18','09:44:27',1),(229,14,27,2,1,5,'2018-06-18','09:55:22',1),(230,17,28,1,2,10,'2018-06-18','11:13:07',1),(231,12,28,0,3,65,'2018-06-18','11:53:23',1),(232,15,28,1,1,30,'2018-06-18','11:54:57',1),(233,1,28,0,1,5,'2018-06-18','12:13:28',1),(234,3,28,1,2,20,'2018-06-18','12:52:50',1),(235,12,29,3,1,50,'2018-06-18','19:08:56',0),(236,12,31,3,0,121,'2018-06-18','19:09:53',0),(237,18,29,2,0,10,'2018-06-18','19:23:56',0),(238,18,30,2,1,7,'2018-06-18','19:25:31',0),(239,18,31,1,1,7,'2018-06-18','19:25:59',0),(240,15,29,1,0,30,'2018-06-18','21:00:20',0),(241,15,30,0,1,30,'2018-06-18','21:06:02',0),(242,15,31,0,0,30,'2018-06-18','21:07:28',0),(243,2,29,2,1,20,'2018-06-18','21:28:00',0),(244,2,30,1,1,10,'2018-06-18','21:28:28',0),(245,2,31,3,1,50,'2018-06-18','21:29:18',0),(246,1,29,1,0,5,'2018-06-18','21:31:24',0),(247,16,29,2,1,21,'2018-06-18','22:32:09',0),(248,11,29,1,0,20,'2018-06-18','22:34:12',0),(249,11,30,1,0,10,'2018-06-18','22:35:45',0),(250,11,31,0,1,10,'2018-06-18','22:36:14',0),(251,3,29,1,0,10,'2018-06-18','23:10:30',0),(252,5,29,2,1,35,'2018-06-19','00:29:36',0),(253,5,30,2,2,25,'2018-06-19','00:29:53',0),(254,5,31,1,2,35,'2018-06-19','00:30:22',0),(255,4,29,2,0,20,'2018-06-19','05:01:21',0),(256,4,30,1,0,10,'2018-06-19','05:01:50',0),(257,4,31,2,1,10,'2018-06-19','05:02:03',0),(258,14,29,2,1,5,'2018-06-19','06:50:34',0),(259,17,30,2,1,5,'2018-06-19','08:47:47',0),(260,3,30,1,0,10,'2018-06-19','09:20:42',0),(261,1,30,0,1,5,'2018-06-19','09:24:21',0),(262,13,31,1,0,5,'2018-06-19','12:52:05',0),(263,1,31,1,0,5,'2018-06-19','12:53:09',0),(264,3,31,0,1,10,'2018-06-19','12:53:15',0);
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
INSERT INTO `banco_central_laplacio` VALUES (1278,80,1311,0,22.74);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COMMENT='Informacion de participantes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantes`
--

LOCK TABLES `participantes` WRITE;
/*!40000 ALTER TABLE `participantes` DISABLE KEYS */;
INSERT INTO `participantes` VALUES (1,'DAVID',106,'DAVID'),(2,'LORE',100,'LORE'),(3,'SOFI',249,'SOFI'),(4,'SERGIO',15,'SERGIO'),(5,'PAULA',185,'PAULA'),(11,'LUIS MIGUEL',96,'LUIS'),(12,'PEDRO',0,'PEDRO'),(13,'MYRI',40,'MYRI'),(14,'KATY',5,'KATY'),(15,'JUAN CARLOS',180,'JUAN'),(16,'ALEXANDER',15,'ALEXANDER'),(17,'ANDRES',126,'ANDRES'),(18,'MARU',81,'MARU');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1 COMMENT='Partidos disponibles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidos`
--

LOCK TABLES `partidos` WRITE;
/*!40000 ALTER TABLE `partidos` DISABLE KEYS */;
INSERT INTO `partidos` VALUES (1,'RUSIA','ARABIA SAUDITA','2018-06-14','10:00:00',5,0,1),(3,'EGITPO','URUGUAY','2018-06-15','07:00:00',0,1,1),(5,'MARRUECOS','IRAN','2018-06-15','10:00:00',0,1,1),(7,'PORTUGAL','ESPANA','2018-06-15','13:00:00',3,3,1),(12,'FRANCIA','AUSTRALIA','2018-06-16','05:00:00',2,1,1),(13,'ARGENTINA','ISLANDIA','2018-06-16','08:00:00',1,1,1),(14,'PERU','DINAMARCA','2018-06-16','11:00:00',0,1,1),(15,'CROACIA','NIGERIA','2018-06-16','14:00:00',2,0,1),(20,'COSTA RICA','SERBIA','2018-06-17','07:00:00',0,1,1),(21,'ALEMANIA','MEXICO','2018-06-17','10:00:00',0,1,1),(22,'BRASIL','SUIZA','2018-06-17','13:00:00',1,1,1),(26,'SUECIA','COREA','2018-06-18','07:00:00',1,0,1),(27,'BELGICA','PANAMA','2018-06-18','10:00:00',3,0,1),(28,'TUNISIA','INGLATERRA','2018-06-18','13:00:00',1,2,1),(29,'COLOMBIA','JAPON','2018-06-19','07:00:00',1,2,0),(30,'POLONIA','SENEGAL','2018-06-19','10:00:00',1,2,0),(31,'RUSIA','EGIPTO','2018-06-19','13:00:00',NULL,NULL,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=latin1 COMMENT='Transacciones de laplacios';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transacciones`
--

LOCK TABLES `transacciones` WRITE;
/*!40000 ALTER TABLE `transacciones` DISABLE KEYS */;
INSERT INTO `transacciones` VALUES (101,4,86,7,35,'2018-06-15','11:57:58'),(102,2,90,10,39,'2018-06-15','11:57:58'),(103,5,94,10,38,'2018-06-15','11:57:58'),(104,15,98,10,20,'2018-06-15','11:57:58'),(105,16,104,10,50,'2018-06-15','11:57:58'),(106,11,109,10,35,'2018-06-15','11:57:58'),(107,3,113,15,48,'2018-06-15','11:57:58'),(108,1,117,10,45,'2018-06-15','11:57:58'),(109,4,87,10,55,'2018-06-15','11:58:17'),(110,2,91,8,55,'2018-06-15','11:58:17'),(111,5,95,20,68,'2018-06-15','11:58:17'),(112,15,99,10,40,'2018-06-15','11:58:17'),(113,14,105,20,45,'2018-06-15','11:58:17'),(114,12,108,100,150,'2018-06-15','11:58:17'),(115,11,110,15,65,'2018-06-15','11:58:17'),(116,3,114,8,64,'2018-06-15','11:58:17'),(117,1,118,5,55,'2018-06-15','11:58:17'),(118,2,92,10,70,'2018-06-15','11:58:58'),(119,15,101,40,90,'2018-06-15','03:03:26'),(120,16,103,30,85,'2018-06-15','03:03:26'),(121,13,122,20,65,'2018-06-15','03:03:26'),(122,11,125,50,105,'0000-00-00','00:00:00'),(123,5,127,60,105,'0000-00-00','00:00:00'),(124,16,129,20,45,'0000-00-00','00:00:00'),(125,15,144,40,110,'0000-00-00','00:00:00'),(126,2,147,40,100,'0000-00-00','00:00:00'),(127,4,149,10,58,'0000-00-00','00:00:00'),(128,18,151,20,77,'0000-00-00','00:00:00'),(129,17,152,6,82,'0000-00-00','00:00:00'),(130,14,157,20,55,'0000-00-00','00:00:00'),(131,12,158,60,150,'0000-00-00','00:00:00'),(132,3,161,80,119,'0000-00-00','00:00:00'),(133,2,148,20,130,'0000-00-00','00:00:00'),(134,3,162,80,194,'0000-00-00','00:00:00'),(135,17,154,6,91,'0000-00-00','00:00:00'),(136,18,155,40,127,'0000-00-00','00:00:00'),(137,2,171,20,130,'0000-00-00','00:00:00'),(138,5,167,25,105,'0000-00-00','00:00:00'),(139,1,168,10,35,'0000-00-00','00:00:00'),(140,4,170,10,63,'0000-00-00','00:00:00'),(141,2,172,40,190,'0000-00-00','00:00:00'),(142,12,176,50,170,'0000-00-00','00:00:00'),(143,15,177,30,120,'0000-00-00','00:00:00'),(144,3,178,30,224,'0000-00-00','00:00:00'),(145,5,183,25,70,'0000-00-00','00:00:00'),(146,15,187,30,60,'0000-00-00','00:00:00'),(147,5,185,60,160,'0000-00-00','00:00:00'),(148,15,204,40,120,'0000-00-00','00:00:00'),(149,15,208,120,150,'0000-00-00','00:00:00'),(150,3,209,40,159,'0000-00-00','00:00:00'),(151,18,210,6,91,'0000-00-00','00:00:00'),(152,4,216,20,30,'0000-00-00','00:00:00'),(153,5,217,60,160,'0000-00-00','00:00:00'),(154,2,221,10,110,'0000-00-00','00:00:00'),(155,18,211,2,95,'0000-00-00','00:00:00'),(156,16,214,8,36,'0000-00-00','00:00:00'),(157,5,218,25,210,'0000-00-00','00:00:00'),(158,2,220,10,130,'0000-00-00','00:00:00'),(159,15,223,60,270,'0000-00-00','00:00:00'),(160,1,224,5,65,'0000-00-00','00:00:00'),(161,3,225,10,179,'0000-00-00','00:00:00'),(162,4,226,20,55,'0000-00-00','00:00:00'),(163,11,227,15,65,'0000-00-00','00:00:00'),(164,14,229,5,10,'0000-00-00','00:00:00'),(165,18,212,5,105,'0000-00-00','00:00:00'),(166,5,219,35,280,'0000-00-00','00:00:00'),(167,2,222,40,180,'0000-00-00','00:00:00'),(168,11,228,15,95,'0000-00-00','00:00:00'),(169,17,230,40,131,'0000-00-00','00:00:00'),(170,12,231,65,130,'0000-00-00','00:00:00'),(171,1,233,10,80,'0000-00-00','00:00:00'),(172,3,234,80,279,'0000-00-00','00:00:00');
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

-- Dump completed on 2018-06-19 19:54:20
