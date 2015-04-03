-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Време на генериране: 
-- Версия на сървъра: 5.5.16
-- Версия на PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данни: `donald`
--

-- --------------------------------------------------------

--
-- Структура на таблица `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Ссхема на данните от таблица `company`
--

INSERT INTO `company` (`id`, `name`) VALUES
(1, 'company1'),
(2, 'company2');

-- --------------------------------------------------------

--
-- Структура на таблица `developer`
--

CREATE TABLE IF NOT EXISTS `developer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Ссхема на данните от таблица `developer`
--

INSERT INTO `developer` (`id`, `name`, `company_id`) VALUES
(1, 'dev1', 1),
(2, 'dev2', 2);

-- --------------------------------------------------------

--
-- Структура на таблица `internship`
--

CREATE TABLE IF NOT EXISTS `internship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Ссхема на данните от таблица `internship`
--

INSERT INTO `internship` (`id`, `name`, `company_id`) VALUES
(1, 'internship1', 1),
(2, 'internship2', 2);

-- --------------------------------------------------------

--
-- Структура на таблица `internship_developer_rel`
--

CREATE TABLE IF NOT EXISTS `internship_developer_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dev_id` int(11) DEFAULT NULL,
  `internshp_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Ссхема на данните от таблица `internship_developer_rel`
--

INSERT INTO `internship_developer_rel` (`id`, `dev_id`, `internshp_id`) VALUES
(1, 1, 2),
(2, 2, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
