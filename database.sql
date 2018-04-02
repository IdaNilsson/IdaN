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

CREATE DATABASE idan;
USE idan;

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
INSERT INTO `movie` VALUES (1,'Öde Stugan','Skräck','Beda Holmberg','Maurits Westin',2017,1),(2,'Djupt vatten','Skräck','Märit Jernberg','	Justina Engblom',1979,1),(3,'Förevigt','Romantik','Sara Lindholm','Hardy Lidman',2001,1),(4,'Solsken','Romantik','Elise Lindstrand','Florence Björnsson',2005,1),(5,'En sprucken läpp','Drama','	Valborg Vikman','Vivi-Ann Ledin',1999,1),(6,'Lågt i tak','Drama','Carina Andersen','Henrik Söderholm',1989,1),(7,'Stefan Löfvens affär','Action','Stefan Löfven','Henrik Leijon',2018,1),(8,'Carl XVI Gustafs äventyr','Action','Carl XVI Gustaf','Ingegerd Ingemarsson',2010,1),(9,'Soldaten','Komedi','Lucia Sundgren','Serafia Ekman',1954,0),(10,'Mister Ärta','Komedi','Thomas Hedman','Hulda Collin',1992,0),(11,'Carl XVI Gustafs äventyr','Action','Beda Carl XVI Gustaf','Ingegerd Ingemarsson',2010,1);
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
  CONSTRAINT `customerId` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `empolyeeId` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `movieId` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentinfo`
--

LOCK TABLES `rentinfo` WRITE;
/*!40000 ALTER TABLE `rentinfo` DISABLE KEYS */;
INSERT INTO `rentinfo` VALUES (1,'2018-01-01','2018-01-04',1,1,1),(2,'2018-01-01','2018-01-05',2,2,2),(3,'2018-01-01','2018-01-06',3,3,3),(4,'2018-01-06','2018-01-10',4,4,4),(5,'2018-01-06','2018-01-10',1,5,5),(6,'2018-01-10','2018-01-13',2,6,6),(7,'2018-01-14','2018-01-17',1,7,7),(8,'2018-01-17','2018-01-25',1,8,8),(9,'2018-01-01','2018-01-04',1,1,11);
/*!40000 ALTER TABLE `rentinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistics`
--

DROP TABLE IF EXISTS `statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statistics` (
  `id` int(11) NOT NULL,
  `movieTitle` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `rentalDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics`
--

LOCK TABLES `statistics` WRITE;
/*!40000 ALTER TABLE `statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `statistics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-02 14:26:09
