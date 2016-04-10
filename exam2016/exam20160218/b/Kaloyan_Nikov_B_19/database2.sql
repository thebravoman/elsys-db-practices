-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: exam
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.12.04.1

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
-- Table structure for table `Article_18`
--

DROP TABLE IF EXISTS `Article_18`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Article_18` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `Article_18_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `Category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Article_18`
--

LOCK TABLES `Article_18` WRITE;
/*!40000 ALTER TABLE `Article_18` DISABLE KEYS */;
INSERT INTO `Article_18` VALUES (1,'PRODAVAM LIUTENICA',13,'PRODAVAM LIUTENICA',1),(2,'PRODAVAM LIUTENICA',82,'PRODAVAM LIUTENICA',2),(3,'PRODAVAM LIUTENICA',69,'PRODAVAM LIUTENICA',3),(4,'PRODAVAM LIUTENICA',23,'PRODAVAM LIUTENICA',4),(5,'PRODAVAM LIUTENICA',48,'PRODAVAM LIUTENICA',5);
/*!40000 ALTER TABLE `Article_18` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  `created_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES (1,'Az naistina prodavam liutenica','PRODAVAM LIUTENICA'),(2,'Az naistina prodavam liutenica','PRODAVAM LIUTENICA'),(3,'Az naistina prodavam liutenica','PRODAVAM LIUTENICA'),(4,'Az naistina prodavam liutenica','PRODAVAM LIUTENICA'),(5,'Az naistina prodavam liutenica','PRODAVAM LIUTENICA');
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Category_part1`
--

DROP TABLE IF EXISTS `Category_part1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Category_part1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category_part1`
--

LOCK TABLES `Category_part1` WRITE;
/*!40000 ALTER TABLE `Category_part1` DISABLE KEYS */;
INSERT INTO `Category_part1` VALUES (1,'PRODAVAM LIUTENICA'),(2,'PRODAVAM LIUTENICA'),(3,'PRODAVAM LIUTENICA'),(4,'PRODAVAM LIUTENICA'),(5,'PRODAVAM LIUTENICA');
/*!40000 ALTER TABLE `Category_part1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Category_part2`
--

DROP TABLE IF EXISTS `Category_part2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Category_part2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category_part2`
--

LOCK TABLES `Category_part2` WRITE;
/*!40000 ALTER TABLE `Category_part2` DISABLE KEYS */;
INSERT INTO `Category_part2` VALUES (1,'Az naistina prodavam liutenica'),(2,'Az naistina prodavam liutenica'),(3,'Az naistina prodavam liutenica'),(4,'Az naistina prodavam liutenica'),(5,'Az naistina prodavam liutenica');
/*!40000 ALTER TABLE `Category_part2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tag`
--

DROP TABLE IF EXISTS `Tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(16) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_id` (`category_id`),
  CONSTRAINT `Tag_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `Category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tag`
--

LOCK TABLES `Tag` WRITE;
/*!40000 ALTER TABLE `Tag` DISABLE KEYS */;
INSERT INTO `Tag` VALUES (1,'m5b2l3213b461443','PRODAVAM LIUTENICA',1),(2,'m5b2l3213b461443','PRODAVAM LIUTENICA',2),(3,'m5b2l3213b461443','PRODAVAM LIUTENICA',3),(4,'m5b2l3213b461443','PRODAVAM LIUTENICA',4),(5,'m5b2l3213b461443','PRODAVAM LIUTENICA',5);
/*!40000 ALTER TABLE `Tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture_url` varchar(255) DEFAULT NULL,
  `description` text,
  `age` int(11) DEFAULT NULL,
  `article_18_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `article_18_id` (`article_18_id`),
  CONSTRAINT `User_ibfk_1` FOREIGN KEY (`article_18_id`) REFERENCES `Article_18` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'http://liutenica.com/my_liutenica','Az naistina prodavam liutenica',88,1),(2,'http://liutenica.com/my_liutenica','Az naistina prodavam liutenica',72,2),(3,'http://liutenica.com/my_liutenica','Az naistina prodavam liutenica',21,3),(4,'http://liutenica.com/my_liutenica','Az naistina prodavam liutenica',95,4),(5,'http://liutenica.com/my_liutenica','Az naistina prodavam liutenica',62,5);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-17  8:12:38
