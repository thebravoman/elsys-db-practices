-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: exam
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

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
-- Table structure for table `Article_16_part1`
--

DROP TABLE IF EXISTS `Article_16_part1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Article_16_part1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Article_16_part1`
--

LOCK TABLES `Article_16_part1` WRITE;
/*!40000 ALTER TABLE `Article_16_part1` DISABLE KEYS */;
INSERT INTO `Article_16_part1` VALUES (1,'LEVSKI I TECHNO'),(2,'LEVSKI I TECHNO'),(3,'LEVSKI I TECHNO'),(4,'LEVSKI I TECHNO'),(5,'LEVSKI I TECHNO');
/*!40000 ALTER TABLE `Article_16_part1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Article_16_part2`
--

DROP TABLE IF EXISTS `Article_16_part2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Article_16_part2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `Article_16_part2_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `Tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Article_16_part2`
--

LOCK TABLES `Article_16_part2` WRITE;
/*!40000 ALTER TABLE `Article_16_part2` DISABLE KEYS */;
INSERT INTO `Article_16_part2` VALUES (1,67,'LEVSKI I TECHNO',1),(2,16,'LEVSKI I TECHNO',2),(3,33,'LEVSKI I TECHNO',3),(4,83,'LEVSKI I TECHNO',4),(5,53,'LEVSKI I TECHNO',5);
/*!40000 ALTER TABLE `Article_16_part2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `date_created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES (1,'LEVSKI I TECHNO','1914-02-07 13:04:20'),(2,'LEVSKI I TECHNO','1914-02-07 13:04:20'),(3,'LEVSKI I TECHNO','1914-02-07 13:04:20'),(4,'LEVSKI I TECHNO','1914-02-07 13:04:20'),(5,'LEVSKI I TECHNO','1914-02-07 13:04:20');
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
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
INSERT INTO `Tag` VALUES (1,'c8b1a9953c461129','LEVSKI I TECHNO',1),(2,'c8b1a9953c461129','LEVSKI I TECHNO',2),(3,'c8b1a9953c461129','LEVSKI I TECHNO',3),(4,'c8b1a9953c461129','LEVSKI I TECHNO',4),(5,'c8b1a9953c461129','LEVSKI I TECHNO',5);
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
  `description` text,
  `gender` varchar(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'This is placeholder text: bla bla bla bla...','female','LEVSKI I TECHNO'),(2,'This is placeholder text: bla bla bla bla...','male','LEVSKI I TECHNO'),(3,'This is placeholder text: bla bla bla bla...','male','LEVSKI I TECHNO'),(4,'This is placeholder text: bla bla bla bla...','male','LEVSKI I TECHNO'),(5,'This is placeholder text: bla bla bla bla...','male','LEVSKI I TECHNO');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_Article_16`
--

DROP TABLE IF EXISTS `User_Article_16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User_Article_16` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `article_16_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `article_16_id` (`article_16_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `User_Article_16_ibfk_1` FOREIGN KEY (`article_16_id`) REFERENCES `Article_16_part2` (`id`),
  CONSTRAINT `User_Article_16_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_Article_16`
--

LOCK TABLES `User_Article_16` WRITE;
/*!40000 ALTER TABLE `User_Article_16` DISABLE KEYS */;
INSERT INTO `User_Article_16` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5);
/*!40000 ALTER TABLE `User_Article_16` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-18  8:34:43
