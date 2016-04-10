-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 18 фев 2016 в 11:42
-- Версия на сървъра: 5.6.27-0ubuntu1
-- PHP Version: 5.6.11-1ubuntu3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_test`
--

-- --------------------------------------------------------

--
-- Структура на таблица `Article_20`
--

CREATE TABLE IF NOT EXISTS `Article_20` (
  `id` int(5) NOT NULL,
  `url` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `tag_id` int(5) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `Article_20`
--

INSERT INTO `Article_20` (`id`, `url`, `name`, `created_on`, `tag_id`) VALUES
(1, 'www.article1.com', 'Article 1', '2018-02-20 16:00:00', 1),
(2, 'www.article2.com', 'Article 2', '0000-00-00 00:00:00', 2);

-- --------------------------------------------------------

--
-- Структура на таблица `Category`
--

CREATE TABLE IF NOT EXISTS `Category` (
  `id` int(5) NOT NULL,
  `date_created_on` timestamp NULL DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `Category`
--

INSERT INTO `Category` (`id`, `date_created_on`, `name`) VALUES
(1, NULL, 'Category one'),
(2, NULL, 'Category two');

-- --------------------------------------------------------

--
-- Структура на таблица `Tag`
--

CREATE TABLE IF NOT EXISTS `Tag` (
  `id` int(5) NOT NULL,
  `priority` int(2) DEFAULT NULL,
  `second_priority` float DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `Tag`
--

INSERT INTO `Tag` (`id`, `priority`, `second_priority`) VALUES
(1, 1, 1.5),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Структура на таблица `User`
--

CREATE TABLE IF NOT EXISTS `User` (
  `id` int(5) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `description` longtext,
  `age` int(3) DEFAULT NULL,
  `tag_id` int(5) DEFAULT NULL,
  `category_id` int(5) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `User`
--

INSERT INTO `User` (`id`, `name`, `description`, `age`, `tag_id`, `category_id`) VALUES
(1, 'Ivo', 'ivopi4a', 20, 1, 1),
(2, 'Ina', 'ina_', 21, 2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Article_20`
--
ALTER TABLE `Article_20`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Tag`
--
ALTER TABLE `Tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Article_20`
--
ALTER TABLE `Article_20`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Category`
--
ALTER TABLE `Category`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Tag`
--
ALTER TABLE `Tag`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
