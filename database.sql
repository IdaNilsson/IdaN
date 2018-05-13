CREATE DATABASE  IF NOT EXISTS `idanilsson` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `idanilsson`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: idanilsson
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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'Dennis','Quade'),(2,'Ida','Nilsson'),(3,'Robert','Gustavsson');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actor_movie`
--

DROP TABLE IF EXISTS `actor_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor_movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actorid` int(11) NOT NULL,
  `movieid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_index` (`actorid`,`movieid`),
  KEY `movie_actor` (`movieid`),
  CONSTRAINT `actor_actor` FOREIGN KEY (`actorid`) REFERENCES `actor` (`id`) ON DELETE CASCADE,
  CONSTRAINT `movie_actor` FOREIGN KEY (`movieid`) REFERENCES `movie` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor_movie`
--

LOCK TABLES `actor_movie` WRITE;
/*!40000 ALTER TABLE `actor_movie` DISABLE KEYS */;
INSERT INTO `actor_movie` VALUES (1,1,1),(5,1,3),(7,1,4),(10,1,7),(2,2,1),(3,2,2),(8,2,5),(11,2,8),(4,3,2),(6,3,3),(9,3,6),(12,3,9),(13,3,10);
/*!40000 ALTER TABLE `actor_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `adress` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Karolina','Svensson','karro@hotmail.com','Cementgatan 15','Malmö','21618'),(2,'Sofia','Svensson','sofia@hotmail.com','Cementgatan 15','Malmö','21618'),(3,'Tommy','Gustavsson','tompa@gmail.com','Bondegatan 5','Mjölby','59520'),(4,'Carl','Karlsson','kalle@gmail.com','Motalavägen 65','Motala','45451'),(5,'Niklas','Blomberg','blomman@gmail.com','Skänningegatan 11A','Vadstena','47875'),(6,'David','Jokkamotti','david@hotmail.com','Gatan 1','Mantorp','29982'),(7,'Erik','Hermansson','erik@hotmail.com','Vägen 2','Mjölby','21618'),(8,'Maria','Ragnar','maria@hotmail.com','Stigen 15','Linköping','080908'),(9,'Laura','Didriksson','laura@hotmail.com','Gången 23','Norrköping','76490'),(10,'Linda','Person','lindis@hotmail.com','Brunnbäcksgatan 13','Stockholm','08473');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'Henrik','Söderholm'),(2,'Henrik','Lejon'),(3,'Peter','Olsson');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director_movie`
--

DROP TABLE IF EXISTS `director_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director_movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `directorid` int(11) NOT NULL,
  `movieid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_index` (`directorid`,`movieid`),
  KEY `movie_director` (`movieid`),
  CONSTRAINT `director_director` FOREIGN KEY (`directorid`) REFERENCES `director` (`id`) ON DELETE CASCADE,
  CONSTRAINT `movie_director` FOREIGN KEY (`movieid`) REFERENCES `movie` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director_movie`
--

LOCK TABLES `director_movie` WRITE;
/*!40000 ALTER TABLE `director_movie` DISABLE KEYS */;
INSERT INTO `director_movie` VALUES (1,1,1),(6,1,3),(8,1,4),(11,1,7),(2,2,1),(4,2,2),(9,2,5),(12,2,8),(14,2,10),(3,3,2),(7,3,3),(10,3,6),(13,3,9);
/*!40000 ALTER TABLE `director_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Olle','Karlsson','olle.k@hotmail.com'),(2,'Lux','Tunholm','luxie.t@gmail.com'),(3,'Tilde','Tildesson','tildis@tildis.nu');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Skräck'),(2,'Romantik'),(3,'Drama'),(4,'Action');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre_movie`
--

DROP TABLE IF EXISTS `genre_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre_movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genreid` int(11) NOT NULL,
  `movieid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_index` (`genreid`,`movieid`),
  KEY `genre_movie` (`movieid`),
  CONSTRAINT `genre_genre` FOREIGN KEY (`genreid`) REFERENCES `genre` (`id`) ON DELETE CASCADE,
  CONSTRAINT `genre_movie` FOREIGN KEY (`movieid`) REFERENCES `movie` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre_movie`
--

LOCK TABLES `genre_movie` WRITE;
/*!40000 ALTER TABLE `genre_movie` DISABLE KEYS */;
INSERT INTO `genre_movie` VALUES (1,1,1),(3,1,2),(6,1,4),(12,1,10),(2,2,1),(7,2,5),(5,3,3),(8,3,6),(11,3,9),(4,4,2),(9,4,7),(10,4,8);
/*!40000 ALTER TABLE `genre_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `releaseyear` date DEFAULT NULL,
  `isleased` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'Håkan bråkar','2005-01-01',1),(2,'Armageddon','2001-01-01',0),(3,'Blow','1999-01-01',1),(4,'Hårda vindar','2001-01-01',0),(5,'Djurens värld','2002-01-01',0),(6,'Vaktelägget','2003-01-01',0),(7,'The clown','2004-01-01',0),(8,'Darkness','2005-01-01',0),(9,'The Cat','2006-01-01',0),(10,'Skogen','2007-01-01',0);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental_info`
--

DROP TABLE IF EXISTS `rental_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rental_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `startdate` datetime NOT NULL,
  `enddate` datetime DEFAULT NULL,
  `employeeid` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `movieid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rental_customer` (`customerid`),
  KEY `rental_employee` (`employeeid`),
  KEY `rental_movie` (`movieid`),
  CONSTRAINT `rental_customer` FOREIGN KEY (`customerid`) REFERENCES `customer` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `rental_employee` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `rental_movie` FOREIGN KEY (`movieid`) REFERENCES `movie` (`id`) ON DELETE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_info`
--

LOCK TABLES `rental_info` WRITE;
/*!40000 ALTER TABLE `rental_info` DISABLE KEYS */;
INSERT INTO `rental_info` VALUES (1,'2018-05-10 14:42:37',NULL,1,1,1),(2,'2018-05-05 00:00:00','2018-05-07 00:00:00',2,2,2),(3,'2018-05-04 00:00:00',NULL,1,3,3),(4,'2018-04-01 00:00:00','2018-04-03 00:00:00',1,2,3),(6,'2018-04-04 00:00:00','2018-04-06 00:00:00',2,3,2),(7,'2018-04-04 00:00:00','2018-04-06 00:00:00',2,3,3),(8,'2018-04-15 00:00:00','2018-04-18 00:00:00',1,6,6),(9,'2018-04-15 00:00:00','2018-04-18 00:00:00',2,7,7),(10,'2018-04-15 00:00:00','2018-04-18 00:00:00',3,8,8),(11,'2018-04-15 00:00:00','2018-04-18 00:00:00',1,9,9),(12,'2018-04-15 00:00:00','2018-04-18 00:00:00',2,10,10),(13,'2018-04-20 00:00:00','2018-04-22 00:00:00',3,6,8),(14,'2018-04-20 00:00:00','2018-04-22 00:00:00',2,9,2),(15,'2018-04-23 00:00:00','2018-04-25 00:00:00',2,10,2);
/*!40000 ALTER TABLE `rental_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_allhorrormovies`
--

DROP TABLE IF EXISTS `v_allhorrormovies`;
/*!50001 DROP VIEW IF EXISTS `v_allhorrormovies`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_allhorrormovies` AS SELECT 
 1 AS `title`,
 1 AS `Genre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_allownedmovies`
--

DROP TABLE IF EXISTS `v_allownedmovies`;
/*!50001 DROP VIEW IF EXISTS `v_allownedmovies`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_allownedmovies` AS SELECT 
 1 AS `title`,
 1 AS `releaseyear`,
 1 AS `isleased`,
 1 AS `Actorname`,
 1 AS `Directorname`,
 1 AS `Genre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_allrentedmovies`
--

DROP TABLE IF EXISTS `v_allrentedmovies`;
/*!50001 DROP VIEW IF EXISTS `v_allrentedmovies`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_allrentedmovies` AS SELECT 
 1 AS `title`,
 1 AS `Customername`,
 1 AS `Employeename`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_delayedreturn`
--

DROP TABLE IF EXISTS `v_delayedreturn`;
/*!50001 DROP VIEW IF EXISTS `v_delayedreturn`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_delayedreturn` AS SELECT 
 1 AS `Title`,
 1 AS `Customername`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_norentedmoviesperemployee`
--

DROP TABLE IF EXISTS `v_norentedmoviesperemployee`;
/*!50001 DROP VIEW IF EXISTS `v_norentedmoviesperemployee`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_norentedmoviesperemployee` AS SELECT 
 1 AS `Employeename`,
 1 AS `TotalLeasedMovies`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_statisticsoflastmonthtop5rentedmovies`
--

DROP TABLE IF EXISTS `v_statisticsoflastmonthtop5rentedmovies`;
/*!50001 DROP VIEW IF EXISTS `v_statisticsoflastmonthtop5rentedmovies`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_statisticsoflastmonthtop5rentedmovies` AS SELECT 
 1 AS `Title`,
 1 AS `NumberOfRentals`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'idanilsson'
--

--
-- Final view structure for view `v_allhorrormovies`
--

/*!50001 DROP VIEW IF EXISTS `v_allhorrormovies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_allhorrormovies` AS select `m`.`title` AS `title`,group_concat(distinct `g`.`name` separator ',') AS `Genre` from ((`movie` `m` join `genre_movie` `gm`) join `genre` `g` on((`g`.`id` = `gm`.`genreid`))) where ((`gm`.`movieid` = `m`.`id`) and (`g`.`name` = 'Skräck')) group by `m`.`title` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_allownedmovies`
--

/*!50001 DROP VIEW IF EXISTS `v_allownedmovies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_allownedmovies` AS select `m`.`title` AS `title`,`m`.`releaseyear` AS `releaseyear`,`m`.`isleased` AS `isleased`,group_concat(distinct concat_ws(' ',`a`.`firstname`,`a`.`lastname`) separator ',') AS `Actorname`,group_concat(distinct concat_ws(' ',`d`.`firstname`,`d`.`lastname`) separator ',') AS `Directorname`,group_concat(distinct `g`.`name` separator ',') AS `Genre` from ((((((`movie` `m` join `actor_movie` `am`) join `director_movie` `dm`) join `genre_movie` `gm`) join `actor` `a` on((`a`.`id` = `am`.`actorid`))) join `director` `d` on((`d`.`id` = `dm`.`directorid`))) join `genre` `g` on((`g`.`id` = `gm`.`genreid`))) where ((`am`.`movieid` = `m`.`id`) and (`dm`.`movieid` = `m`.`id`) and (`gm`.`movieid` = `m`.`id`)) group by `m`.`title` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_allrentedmovies`
--

/*!50001 DROP VIEW IF EXISTS `v_allrentedmovies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_allrentedmovies` AS select `m`.`title` AS `title`,concat_ws(' ',`c`.`firstname`,`c`.`lastname`) AS `Customername`,concat_ws(' ',`e`.`firstname`,`e`.`lastname`) AS `Employeename` from (((`movie` `m` join `rental_info` `ri` on((`ri`.`movieid` = `m`.`id`))) join `customer` `c` on((`c`.`id` = `ri`.`customerid`))) join `employee` `e` on((`e`.`id` = `ri`.`employeeid`))) where ((`m`.`isleased` = 1) and isnull(`ri`.`enddate`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_delayedreturn`
--

/*!50001 DROP VIEW IF EXISTS `v_delayedreturn`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_delayedreturn` AS select `m`.`title` AS `Title`,concat_ws(' ',`c`.`firstname`,`c`.`lastname`) AS `Customername` from ((`movie` `m` join `rental_info` `ri` on((`ri`.`movieid` = `m`.`id`))) join `customer` `c` on((`c`.`id` = `ri`.`customerid`))) where ((`m`.`isleased` = 1) and ((curdate() - cast(`ri`.`startdate` as date)) >= 4) and isnull(`ri`.`enddate`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_norentedmoviesperemployee`
--

/*!50001 DROP VIEW IF EXISTS `v_norentedmoviesperemployee`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_norentedmoviesperemployee` AS select concat_ws(' ',`e`.`firstname`,`e`.`lastname`) AS `Employeename`,count(`ri`.`employeeid`) AS `TotalLeasedMovies` from (`employee` `e` left join `rental_info` `ri` on((`ri`.`employeeid` = `e`.`id`))) group by `ri`.`employeeid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_statisticsoflastmonthtop5rentedmovies`
--

/*!50001 DROP VIEW IF EXISTS `v_statisticsoflastmonthtop5rentedmovies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_statisticsoflastmonthtop5rentedmovies` AS select `m`.`title` AS `Title`,count(`ri`.`movieid`) AS `NumberOfRentals` from (`movie` `m` join `rental_info` `ri` on((`ri`.`movieid` = `m`.`id`))) where ((year(`ri`.`startdate`) = year((curdate() - interval 1 month))) and (month(`ri`.`startdate`) = month((curdate() - interval 1 month)))) group by `ri`.`movieid` order by count(`ri`.`movieid`) desc limit 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-13 17:32:45
