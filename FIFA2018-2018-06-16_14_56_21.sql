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
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=latin1 COMMENT='Registro de apuestas realizadas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apuestas`
--

LOCK TABLES `apuestas` WRITE;
/*!40000 ALTER TABLE `apuestas` DISABLE KEYS */;
INSERT INTO `apuestas` VALUES (86,4,1,2,0,7,'2018-06-15','11:36:17',1),(87,4,3,0,2,10,'2018-06-15','11:37:05',1),(88,4,5,1,1,5,'2018-06-15','11:37:21',1),(89,4,7,2,1,7,'2018-06-15','11:37:36',1),(90,2,1,2,1,10,'2018-06-15','11:38:19',1),(91,2,3,1,3,8,'2018-06-15','11:38:49',1),(92,2,5,1,2,5,'2018-06-15','11:39:03',1),(93,2,7,2,3,8,'2018-06-15','11:39:16',1),(94,5,1,3,1,10,'2018-06-15','11:40:40',1),(95,5,3,1,2,10,'2018-06-15','11:41:01',1),(96,5,5,1,1,4,'2018-06-15','11:41:24',1),(97,5,7,3,2,15,'2018-06-15','11:41:36',1),(98,15,1,2,0,10,'2018-06-15','11:42:12',1),(99,15,3,0,2,10,'2018-06-15','11:42:44',1),(100,15,5,1,0,20,'2018-06-15','11:43:07',1),(101,15,7,1,1,20,'2018-06-15','11:43:27',1),(102,16,5,1,0,5,'2018-06-15','11:44:23',1),(103,16,7,2,2,15,'2018-06-15','11:44:38',1),(104,16,1,3,1,10,'2018-06-15','11:45:09',1),(105,14,3,1,2,10,'2018-06-15','11:46:21',1),(106,14,5,2,0,15,'2018-06-15','11:46:35',1),(107,14,7,1,0,10,'2018-06-15','11:46:53',1),(108,12,3,1,2,50,'2018-06-15','11:48:05',1),(109,11,1,2,0,10,'2018-06-15','11:49:00',1),(110,11,3,0,3,15,'2018-06-15','11:49:22',1),(111,11,5,1,1,5,'2018-06-15','11:49:36',1),(112,11,7,2,1,5,'2018-06-15','11:49:50',1),(113,3,1,1,0,15,'2018-06-15','11:52:14',1),(114,3,3,0,2,8,'2018-06-15','11:52:36',1),(115,3,5,1,1,4,'2018-06-15','11:52:58',1),(116,3,7,1,2,10,'2018-06-15','11:53:13',1),(117,1,1,1,0,10,'2018-06-15','11:54:01',1),(118,1,3,0,3,5,'2018-06-15','11:54:21',1),(119,1,5,0,0,5,'2018-06-15','11:54:42',1),(120,1,7,0,3,5,'2018-06-15','11:54:58',1),(121,13,5,1,0,5,'2018-06-15','11:56:48',1),(122,13,7,0,0,10,'2018-06-15','11:57:00',1),(123,12,7,3,2,40,'2018-06-15','12:10:10',1),(124,12,3,1,3,10,'2018-06-15','07:00:00',1),(125,11,12,2,0,50,'2018-06-15','03:45:23',0),(126,11,13,2,1,10,'2018-06-15','03:46:12',0),(127,5,12,2,1,15,'2018-06-15','03:58:05',0),(128,5,13,2,1,16,'2018-06-15','04:02:09',0),(129,16,12,2,1,5,'2018-06-15','04:25:26',0),(130,16,13,2,1,5,'2018-06-15','04:26:05',0),(131,16,14,2,0,5,'2018-06-15','04:26:36',0),(132,16,15,1,3,5,'2018-06-15','04:27:06',0),(133,16,20,1,1,5,'2018-06-15','04:27:45',0),(134,16,21,2,0,10,'2018-06-15','04:28:09',0),(135,16,22,3,0,30,'2018-06-15','04:28:58',0),(136,1,13,3,0,15,'2018-06-15','05:40:05',0),(137,1,14,1,0,5,'2018-06-15','05:40:51',0),(138,13,13,1,0,10,'2018-06-15','05:54:37',0),(139,13,14,1,1,10,'2018-06-15','05:55:21',0),(140,13,15,1,2,10,'2018-06-15','05:56:07',0),(141,13,21,2,0,10,'2018-06-15','05:56:36',0),(142,13,22,3,1,10,'2018-06-15','05:56:51',0),(143,1,12,0,1,10,'2018-06-15','06:42:43',0),(144,15,12,3,0,40,'2018-06-15','07:45:09',0),(145,15,13,2,0,20,'2018-06-15','07:49:15',0),(146,17,3,0,2,10,'2018-06-15','08:45:28',0),(147,2,12,2,1,10,'2018-06-15','21:48:23',0),(148,2,13,2,2,10,'2018-06-15','21:49:05',0),(149,4,12,3,1,10,'2018-06-15','21:50:47',0),(150,4,13,2,1,7,'2018-06-15','21:51:05',0),(151,18,12,2,0,20,'2018-06-15','22:00:45',0),(152,17,12,3,2,3,'2018-06-15','22:17:05',0),(153,17,13,2,1,3,'2018-06-15','22:17:45',0),(154,17,14,1,2,3,'2018-06-15','22:18:30',0),(155,18,14,0,1,10,'2018-06-15','22:19:44',0),(156,18,13,2,1,25,'2018-06-15','22:20:13',0),(157,14,12,3,1,20,'2018-06-15','22:27:47',0),(158,12,12,3,2,30,'2018-06-15','23:44:46',0),(159,12,13,2,0,100,'2018-06-15','23:46:03',0),(160,14,13,2,0,10,'2018-06-16','06:55:49',0),(161,3,12,2,1,20,'2018-06-16','08:12:20',0),(162,3,13,1,1,20,'2018-06-16','08:13:00',0);
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
  `cotizacion` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco_central_laplacio`
--

LOCK TABLES `banco_central_laplacio` WRITE;
/*!40000 ALTER TABLE `banco_central_laplacio` DISABLE KEYS */;
INSERT INTO `banco_central_laplacio` VALUES (1194,65,18.3636);
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
INSERT INTO `participantes` VALUES (1,'DAVID',25,'DAVID'),(2,'LORE',50,'LORE'),(3,'SOFI',19,'SOFI'),(4,'SERGIO',38,'SERGIO'),(5,'PAULA',30,'PAULA'),(11,'LUIS MIGUEL',5,'LUIS'),(12,'PEDRO',60,'PEDRO'),(13,'MYRI',45,'MYRI'),(14,'KATY',15,'KATY'),(15,'JUAN CARLOS',30,'JUAN'),(16,'ALEXANDER',20,'ALEXANDER'),(17,'ANDRES',73,'ANDRES'),(18,'MARU',37,'MARU');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COMMENT='Partidos disponibles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidos`
--

LOCK TABLES `partidos` WRITE;
/*!40000 ALTER TABLE `partidos` DISABLE KEYS */;
INSERT INTO `partidos` VALUES (1,'RUSIA','ARABIA SAUDITA','2018-06-14','10:00:00',5,0,1),(3,'EGITPO','URUGUAY','2018-06-15','07:00:00',0,1,1),(5,'MARRUECOS','IRAN','2018-06-15','10:00:00',0,1,1),(7,'PORTUGAL','ESPANA','2018-06-15','13:00:00',3,3,1),(12,'FRANCIA','AUSTRALIA','2018-06-16','05:00:00',2,1,0),(13,'ARGENTINA','ISLANDIA','2018-06-16','08:00:00',1,1,0),(14,'PERU','DINAMARCA','2018-06-16','11:00:00',NULL,NULL,0),(15,'CROACIA','NIGERIA','2018-06-16','14:00:00',NULL,NULL,0),(20,'COSTA RICA','SERBIA','2018-06-17','07:00:00',NULL,NULL,0),(21,'ALEMANIA','MEXICO','2018-06-17','10:00:00',NULL,NULL,0),(22,'BRASIL','SUIZA','2018-06-17','13:00:00',NULL,NULL,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=latin1 COMMENT='Transacciones de laplacios';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transacciones`
--

LOCK TABLES `transacciones` WRITE;
/*!40000 ALTER TABLE `transacciones` DISABLE KEYS */;
INSERT INTO `transacciones` VALUES (101,4,86,7,35,'2018-06-15','11:57:58'),(102,2,90,10,39,'2018-06-15','11:57:58'),(103,5,94,10,38,'2018-06-15','11:57:58'),(104,15,98,10,20,'2018-06-15','11:57:58'),(105,16,104,10,50,'2018-06-15','11:57:58'),(106,11,109,10,35,'2018-06-15','11:57:58'),(107,3,113,15,48,'2018-06-15','11:57:58'),(108,1,117,10,45,'2018-06-15','11:57:58'),(109,4,87,10,55,'2018-06-15','11:58:17'),(110,2,91,8,55,'2018-06-15','11:58:17'),(111,5,95,20,68,'2018-06-15','11:58:17'),(112,15,99,10,40,'2018-06-15','11:58:17'),(113,14,105,20,45,'2018-06-15','11:58:17'),(114,12,108,100,150,'2018-06-15','11:58:17'),(115,11,110,15,65,'2018-06-15','11:58:17'),(116,3,114,8,64,'2018-06-15','11:58:17'),(117,1,118,5,55,'2018-06-15','11:58:17'),(118,2,92,10,70,'2018-06-15','11:58:58'),(119,15,101,40,90,'2018-06-15','03:03:26'),(120,16,103,30,85,'2018-06-15','03:03:26'),(121,13,122,20,65,'2018-06-15','03:03:26');
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

-- Dump completed on 2018-06-16 14:56:21
