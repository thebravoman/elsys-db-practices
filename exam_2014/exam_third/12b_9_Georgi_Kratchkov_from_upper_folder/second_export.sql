-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2014 at 06:45 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `published_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `name`, `url`, `published_on`) VALUES
(1, 'Asen', 'exam.com', '2005-02-02'),
(2, 'Ivan', 'exam.com', '2005-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `article_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `created_by`, `article_id`) VALUES
(1, 'Ivan', 'Petar', 1),
(2, 'Ivan2', 'Simo', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tag_has_article`
--

CREATE TABLE IF NOT EXISTS `tag_has_article` (
  `tag_id` int(11) NOT NULL DEFAULT '0',
  `article_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tag_id`,`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tag_has_article`
--

INSERT INTO `tag_has_article` (`tag_id`, `article_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tag_part1`
--

CREATE TABLE IF NOT EXISTS `tag_part1` (
  `id` int(11) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tag_part1`
--

INSERT INTO `tag_part1` (`id`, `description`) VALUES
(1, 'description'),
(2, 'description2');

-- --------------------------------------------------------

--
-- Table structure for table `tag_part2`
--

CREATE TABLE IF NOT EXISTS `tag_part2` (
  `id` int(11) NOT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tag_part2`
--

INSERT INTO `tag_part2` (`id`, `priority`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL DEFAULT '0',
  `description` longtext,
  `age` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `tag_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`tag_id`),
  UNIQUE KEY `tag_id` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `description`, `age`, `name`, `tag_id`) VALUES
(1, 'description', 12, 'Pesho', 1),
(2, 'description2', 18, 'Pesho2', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
