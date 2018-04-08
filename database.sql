CREATE DATABASE  IF NOT EXISTS `idan` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci */;
USE `idan`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: idan
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `lastName` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `streetAdress` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `city` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `zipCode` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Gisela','Ceder','gisela.ceder@spamherelots.com','Kråkgatan 1','GÄVLE','804 29'),(2,'Helge','Sundelin','	helge.sundelin@mailmetrash.com','Degervägen 1','STRÖMSTAD','452 91'),(3,'Lizzie','Ericsson','lizzie.ericsson@mailmetrash.com','	Ersk-ersvägen 1','KRISTINEHAMN','	681 30'),(4,'Johny','Löfstedt','johny.lofstedt@spamherelots.com','Posjärvstigen 1','LAHOLM','	312 93'),(5,'Ulla-Britt','Thor','ulla-britt.thor@mailinator.com','Apertingatan 1','MUNKEDAL','455 30'),(6,'Thyra','Lidberg','thyra.lidberg@sogetthis.com','Tubbarpvägen 1','VÅRGÅRDA','447 31'),(7,'Susanne','Fröberg','susanne.froberg@mailinater.com','Jonsbergstigen 1','BORÅS','504 95'),(8,'Märit','Wahlqvist','marit.wahlqvist@mailmetrash.com','Skeppar karls gränd 1','ARVIKA','671 52'),(9,'Bert','Åkerman','bert.akerman@dodgit.com','Knutstorp gränd 1','SALA','733 38'),(10,'Holmfrid','Sandahl','holmfrid.sandahl@sogetthis.com','Hybble gläntan 1','NORBERG','738 92');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `lastName` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Lorentz','Fors','lorentz.fors@max-filmer.com'),(2,'Berit','Klingberg','berit.klingberg@max-filmer.com'),(3,'Natalie','Lovén','natalie.loven@max-filmer.com'),(4,'Veronika','Nykvist','veronika.nykvist@max-filmer.com'),(5,'Arthur','Widlund','arthur.widlund@max-filmer.com');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `genre` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `actor` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `director` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `releaseYear` int(11) DEFAULT NULL,
  `isLeased` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'Öde Stugan','Skräck','Beda Holmberg','Maurits Westin',2017,1),(2,'Djupt vatten','Skräck','Märit Jernberg','	Justina Engblom',1979,1),(3,'Förevigt','Romantik','Sara Lindholm','Hardy Lidman',2001,1),(4,'Solsken','Romantik','Elise Lindstrand','Florence Björnsson',2005,1),(5,'En sprucken läpp','Drama','	Valborg Vikman','Vivi-Ann Ledin',1999,1),(6,'Lågt i tak','Drama','Carina Andersen','Henrik Söderholm',1989,1),(7,'Stefan Löfvens affär','Action','Stefan Löfven','Henrik Leijon',2018,1),(8,'Carl XVI Gustafs äventyr','Action','Carl XVI Gustaf','Ingegerd Ingemarsson',2010,0),(9,'Soldaten','Komedi','Lucia Sundgren','Serafia Ekman',1954,0),(10,'Mister Ärta','Komedi','Thomas Hedman','Hulda Collin',1992,0),(11,'Carl XVI Gustafs äventyr','Action','Carl XVI Gustaf','Ingegerd Ingemarsson',2010,0);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rentinfo`
--

DROP TABLE IF EXISTS `rentinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rentinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `employeeId` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `movieId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empolyeeId_idx` (`employeeId`),
  KEY `customerId_idx` (`customerId`),
  KEY `movieId_idx` (`movieId`),
  CONSTRAINT `customerId` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `empolyeeId` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `movieId` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentinfo`
--

LOCK TABLES `rentinfo` WRITE;
/*!40000 ALTER TABLE `rentinfo` DISABLE KEYS */;
INSERT INTO `rentinfo` VALUES (60,'2018-03-01','2018-03-03',1,1,1),(61,'2018-03-01','2018-03-03',1,2,2),(62,'2018-03-01','2018-03-03',2,3,3),(63,'2018-03-01','2018-03-03',2,4,4),(64,'2018-03-02','2018-03-05',3,5,5),(65,'2018-03-02','2018-04-06',3,6,6),(66,'2018-03-02','2018-03-05',4,7,7),(67,'2018-03-02','2018-03-05',4,8,8),(68,'2018-03-06','2018-03-10',1,6,1),(69,'2018-03-11','2018-03-13',2,7,1),(70,'2018-03-14','2018-03-17',1,8,1),(71,'2018-04-05',NULL,1,1,1),(72,'2018-04-05',NULL,1,2,2),(73,'2018-04-05',NULL,2,3,3),(75,'2018-04-05',NULL,2,4,4),(76,'2018-04-01',NULL,1,5,5),(77,'2018-04-06','2018-04-06',3,6,6),(78,'2018-04-06',NULL,4,7,7),(79,'2018-04-07',NULL,2,8,6);
/*!40000 ALTER TABLE `rentinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistics`
--

DROP TABLE IF EXISTS `statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movieTitle` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `rentalDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics`
--

LOCK TABLES `statistics` WRITE;
/*!40000 ALTER TABLE `statistics` DISABLE KEYS */;
INSERT INTO `statistics` VALUES (4,'Öde Stugan','2018-03-01'),(5,'Djupt vatten','2018-03-01'),(6,'Förevigt','2018-03-01'),(7,'Solsken','2018-03-01'),(8,'En sprucken läpp','2018-03-02'),(9,'Lågt i tak','2018-03-02'),(10,'Stefan Löfvens affär','2018-03-02'),(11,'Carl XVI Gustafs äventyr','2018-03-02'),(12,'Öde Stugan','2018-03-06'),(13,'Öde Stugan','2018-03-11'),(14,'Öde Stugan','2018-03-14'),(15,'Öde Stugan','2018-04-05'),(16,'Djupt vatten','2018-04-05'),(17,'Förevigt','2018-04-05'),(19,'Solsken','2018-04-05'),(20,'En sprucken läpp','2018-04-01'),(21,'Lågt i tak','2018-04-06'),(22,'Stefan Löfvens affär','2018-04-06'),(23,'Lågt i tak','2018-04-07');
/*!40000 ALTER TABLE `statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'idan'
--
/*!50003 DROP FUNCTION IF EXISTS `isLeased` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `isLeased`(f_id int) RETURNS tinyint(4)
BEGIN
declare isLeased tinyint(4);

select m.isLeased into isLeased from movie m
where m.id = f_id;
if isLeased = 0
then
return 0;
else
return 1;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_setMovieStatusIsLeasedToFalse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_setMovieStatusIsLeasedToFalse`(
 p_customerId int, p_movieId int)
BEGIN
update rentinfo ri
join movie m on (ri.movieId = m.id)
set ri.endDate = curdate(),
m.isLeased = 0
where m.id = p_movieId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_setMovieStatusToIsLeased` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_setMovieStatusToIsLeased`(
p_employeeId int, p_customerId int, p_movieId int)
BEGIN
insert into rentinfo (startDate, employeeId, customerId, movieId) values (curdate(), p_employeeId, p_customerId, p_movieId);
update movie set isLeased = 1
where id = p_movieId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-08 11:55:14
