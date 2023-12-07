/* A continuacion se presenta el BackUp generado de la base de datos "mundial" de mi proyecto final. En esta incluyo todas las 5 tablas iniciales de datos 
[equipos, arbitro, estadios, jugadores, partidos] y las tablas generadas para los triggers de auditoria [aud_partidos y aud_jugadores],
 las cuales no tienen valores cargados */
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: mundial
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `arbitro`
--

LOCK TABLES `arbitro` WRITE;
/*!40000 ALTER TABLE `arbitro` DISABLE KEYS */;
INSERT INTO `arbitro` VALUES (1,111,'Inglaterra','Wayne','Barnes'),(2,222,'Georgia','Nika','Amashukeli'),(3,333,'Irlanda','Andrew','Brace'),(4,444,'Australia','Nic','Berry'),(5,555,'Inglaterra','Matthew','Carley'),(6,666,'Inglaterra','Karl','Dickson'),(7,777,'Australia','Angus','Gardner'),(8,888,'Nueva Zelanda','Ben','O Keeffe'),(9,999,'Inglaterra','Luke','Pearce'),(10,1110,'Sudafrica','Jaco','Peyper'),(11,1221,'Francia','Mathieu','Raynal'),(12,1332,'Nueva Zelanda','Paul','Williams'),(14,1819,'Sudafrica','Prueba','Prueba');
/*!40000 ALTER TABLE `arbitro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `aud_jugadores`
--

LOCK TABLES `aud_jugadores` WRITE;
/*!40000 ALTER TABLE `aud_jugadores` DISABLE KEYS */;
/*!40000 ALTER TABLE `aud_jugadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `aud_partidos`
--

LOCK TABLES `aud_partidos` WRITE;
/*!40000 ALTER TABLE `aud_partidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `aud_partidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES (1,'Namibia',0,0,0,0),(2,'Sudafrica',0,0,0,0),(3,'Argentina',0,0,0,0),(4,'Uruguay',0,0,0,0),(5,'Francia',0,0,0,0),(6,'Inglaterra',0,0,0,0),(7,'Irlanda',0,0,0,0),(8,'Nueva Zelanda',0,0,0,0),(9,'Tonga',0,0,0,0),(10,'Italia',0,0,0,0),(11,'Australia',0,0,0,0),(12,'Japon',0,0,0,0),(13,'Gales',0,0,0,0),(14,'Rumania',0,0,0,0),(15,'Georgia',0,0,0,0),(16,'Chile',0,0,0,0),(17,'Escocia',0,0,0,0),(18,'Fiji',0,0,0,0),(19,'Portugal',0,0,0,0),(20,'Samoa',0,0,0,0);
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estadios`
--

LOCK TABLES `estadios` WRITE;
/*!40000 ALTER TABLE `estadios` DISABLE KEYS */;
INSERT INTO `estadios` VALUES (1,'Saint-Denis','Stade de France',80000),(2,'Marsella','Stade Velodrome',67000),(3,'Saint-Etienne','Stade Geoffroy Guichard',42000),(4,'Nantes','Stade de la Beaujoire',35000),(5,'Bordeaux','Stade de Bordeaux',42000),(6,'Lille','Stade Pierre Mauroy',50000),(7,'Lyon','OL',58883),(8,'Niza','Stade de Nice',35000),(9,'Toulouse','Stadium Toulouse',33000);
/*!40000 ALTER TABLE `estadios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `jugadores`
--

LOCK TABLES `jugadores` WRITE;
/*!40000 ALTER TABLE `jugadores` DISABLE KEYS */;
INSERT INTO `jugadores` VALUES (1,121,3,'Nicolas','Sanchez','Apertura'),(2,242,8,'Aaron','Smith','Medio Scrum'),(3,363,2,'Eben','Etzebeth','Segunda linea'),(4,484,6,'Maro','Itoje','Segunda linea'),(5,605,8,'William','Jordan','Wing'),(6,726,7,'Jonathan','Sexton','Apertura'),(7,847,7,'Peter','O Mahony','Tercera linea'),(8,968,3,'Eduardo ','Bello','Primera linea'),(9,1089,3,'Thomas ','Gallo','Primera linea'),(10,1210,3,'Francisco ','Gómez Kodela','Primera linea'),(11,1331,3,'Joel ','Sclavi','Primera linea'),(12,1452,3,'Mayco ','Vivas','Primera linea'),(13,1573,3,'Agustín ','Creevy','Primera linea'),(14,1694,3,'Julián ','Montoya','Primera linea'),(15,1815,3,'Ignacio ','Ruiz','Primera linea'),(16,1936,3,'Matías ','Alemanno','Segunda linea'),(17,2057,3,'Tomás ','Lavanini','Segunda linea'),(18,2178,3,'Guido ','Petti','Segunda linea'),(19,2299,3,'Lucas ','Paulos','Segunda linea'),(20,2420,3,'Juan Martin','Gonzalez','Tercera linea'),(21,2541,3,'Joaquín ','Oviedo','Tercera linea'),(22,2662,3,'Facundo ','Isa','Tercera linea'),(23,2783,3,'Marcos ','Kremer','Tercera linea'),(24,2904,3,'Pedro ','Rubiolo','Tercera linea'),(25,3025,3,'Rodrigo ','Bruni','Tercera linea'),(26,3146,3,'Lautaro ','Bazán Vélez','Medio Scrum'),(27,3267,3,'Gonzalo ','Bertranou','Medio Scrum'),(28,3388,3,'Tomás ','Cubelli','Medio Scrum'),(29,3509,3,'Santiago ','Carreras','Apertura'),(30,3630,3,'Santiago ','Chocobares','Centro'),(31,3751,3,'Lucio ','Cinti','Centro'),(32,3872,3,'Jerónimo ','de la Fuente','Centro'),(33,3993,3,'Matías ','Moroni','Centro'),(34,4114,3,'Martín ','Bogado','Wing'),(35,4235,3,'Mateo ','Carreras','Wing'),(36,4356,3,'Juan ','Imhoff','Wing'),(37,4477,3,'Rodrigo ','Isgró','Wing'),(38,4598,3,'Emiliano ','Boffelli ','Fullback'),(39,4719,3,'Juan Cruz','Mallia','Fullback'),(40,4840,8,'Dane','Coles','Primera linea'),(41,4961,8,'Samisoni','Taukei’aho','Primera linea'),(42,5082,8,'Codie','Taylor','Primera linea'),(43,5203,8,'Ethan','de Groot','Primera linea'),(44,5324,8,'Tyrel','Lomax','Primera linea'),(45,5445,8,'Nepo','Laulala','Primera linea'),(46,5566,8,'Fletcher','Newell','Primera linea'),(47,5687,7,'Andrew','Porter','Primera linea'),(48,5808,8,'Ofa','Tu’ungafasi','Primera linea'),(49,5929,8,'Tamaiti','Williams','Primera linea'),(50,6050,8,'Scott','Barrett','Segunda linea'),(51,6171,8,'Brodie','Retallick','Segunda linea'),(52,6292,8,'Tupou','Vaa’i','Segunda linea'),(53,6413,8,'Samuel','Whitelock','Segunda linea'),(54,6534,8,'Sam','Cane','Tercera linea'),(55,6655,8,'Shannon','Frizell','Tercera linea'),(56,6776,8,'Luke','Jacobson','Tercera linea'),(57,6897,8,'Dalton','Papali’i','Tercera linea'),(58,7018,8,'Ardie','Savea','Tercera linea'),(59,7139,8,'Finlay','Christie','Medio Scrum'),(60,7260,8,'Cam','Roigard','Medio Scrum'),(61,7381,8,'Beauden','Barrett','Apertura'),(62,7502,8,'Damian','McKenzie','Apertura'),(63,7623,8,'Richie','Mo unga','Apertura'),(64,7744,8,'Jordie','Barrett','Centro'),(65,7865,8,'David','Havili','Centro'),(66,7986,8,'Rieko','Ioane','Centro'),(67,8107,8,'Anton','Lienert-Brown','Centro'),(68,8228,8,'Caleb','Clarke','Wing'),(69,8349,8,'Leicester','Fainga’anuku','Wing'),(70,8470,8,'Emoni','Narawa','Fullback'),(71,8591,8,'Mark','Telea','Fullback'),(72,8712,7,'Ronan','Kelleher','Primera linea'),(73,8833,7,'Tadhg','Furlong','Primera linea'),(74,8954,7,'Tadhg','Beirne','Segunda linea'),(75,9075,7,'James','Ryan','Segunda linea'),(76,9196,7,'Josh','Van der Flier','Tercera linea'),(77,9317,7,'Caelan','Doris','Tercera linea'),(78,9438,7,'Jamison','Gibson-Park','Medio Scrum'),(79,9559,7,'James','Lowe','Wing'),(80,9680,7,'Bundee','Aki','Centro'),(81,9801,7,'Garry','Ringrose','Centro'),(82,9922,7,'Mack','Hansen','Wing'),(83,10043,7,'Hugo','Keenan','Fullback'),(84,10164,2,'Steven','Kitshoff','Primera linea'),(85,10285,2,'Mbongeni','Mbonambi','Primera linea'),(86,10406,2,'Frans','Malherbe','Primera linea'),(87,10527,2,'Franco','Mostert','Segunda linea'),(88,10648,2,'Siya','Kolisi','Tercera linea'),(89,10769,2,'Pieter-Steph','Du Toit','Tercera linea'),(90,10890,2,'Duane','Vermeulen','Tercera linea'),(91,11011,2,'Faf','de Klerk','Medio Scrum'),(92,11132,2,'Handre','Pollard','Apertura'),(93,11253,2,'Cheslin','Kolbe','Wing'),(94,11374,2,'Damian','de Allende','Centro'),(95,11495,2,'Jesse','Kriel','Centro'),(96,11616,2,'Kurt-Lee','Arendse','Wing'),(97,11737,2,'Damian','Willemse','Fullback'),(98,22,1,'Prueba','Prueba','Prueba');
/*!40000 ALTER TABLE `jugadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `partidos`
--

LOCK TABLES `partidos` WRITE;
/*!40000 ALTER TABLE `partidos` DISABLE KEYS */;
INSERT INTO `partidos` VALUES (1,'Grupo A','2023-09-08',5,1,5,27,8,13,1),(2,'Grupo A','2023-09-09',10,2,10,52,1,8,2),(3,'Grupo B','2023-09-09',7,3,7,82,14,8,3),(4,'Grupo C','2023-09-09',11,4,11,35,15,15,4),(5,'Grupo D','2023-09-09',6,5,6,27,3,10,5),(6,'Grupo D','2023-09-10',12,6,12,42,16,12,6),(7,'Grupo B','2023-09-10',2,7,2,18,17,3,7),(8,'Grupo D','2023-09-10',13,8,13,32,18,26,8),(9,'Grupo A','2023-09-14',5,9,5,27,4,12,9),(10,'Grupo A','2023-09-15',8,1,8,71,1,3,10),(11,'Grupo D','2023-09-16',20,2,20,43,16,10,11),(12,'Grupo C','2023-09-16',13,3,13,28,19,8,12),(13,'Grupo B','2023-09-16',7,4,7,59,9,16,1),(14,'Grupo B','2023-09-17',2,5,2,76,14,0,2),(15,'Grupo C','2023-09-17',18,6,11,15,18,22,3);
/*!40000 ALTER TABLE `partidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-06 22:07:09
