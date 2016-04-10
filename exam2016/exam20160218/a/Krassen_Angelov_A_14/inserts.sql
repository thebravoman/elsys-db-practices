-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 
-- Версия на сървъра: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Структура на таблица `article_13`
--

CREATE TABLE IF NOT EXISTS `article_13` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `published_on` date NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `article_13`
--

INSERT INTO `article_13` (`id`, `name`, `published_on`, `content`) VALUES
(1, 'asdasdasd', '2016-02-01', 'dsadasdasdasdasdasdasd'),
(2, 'sadasdasd', '2016-02-02', 'asdasdasdasda');

-- --------------------------------------------------------

--
-- Структура на таблица `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `date_created_on` date NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `article_13_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `category`
--

INSERT INTO `category` (`id`, `date_created_on`, `created_by`, `article_13_id`) VALUES
(1, '2016-02-01', 'sadasdasdasd', 1),
(2, '2016-02-02', 'asdasdasdasdasd', 2);

-- --------------------------------------------------------

--
-- Структура на таблица `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `second_priority` float NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `tag`
--

INSERT INTO `tag` (`id`, `description`, `second_priority`, `category_id`) VALUES
(1, 'dasdasdasdasdasd', 23.231, 1),
(2, 'asdasdasdafas', 132.23, 2);

-- --------------------------------------------------------

--
-- Структура на таблица `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `income` float NOT NULL,
  `picture_url` varchar(255) NOT NULL,
  `gender` varchar(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `user`
--

INSERT INTO `user` (`id`, `income`, `picture_url`, `gender`) VALUES
(1, 3.212, 'dsadasdasdaasd', 'dasw'),
(2, 3.231, 'dasdasdasdad', 'dass');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article_13`
--
ALTER TABLE `article_13`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article_13`
--
ALTER TABLE `article_13`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
