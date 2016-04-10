-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2016 at 07:45 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mitov`
--

-- --------------------------------------------------------

--
-- Table structure for table `article_17`
--

CREATE TABLE IF NOT EXISTS `article_17` (
  `password` text NOT NULL,
  `name` varchar(16) NOT NULL,
  `created_on` date NOT NULL,
`UID` int(11) NOT NULL,
  `tagID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `date_created_on` date NOT NULL,
  `description` longtext NOT NULL,
`UID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `priority` int(16) NOT NULL,
`UID` int(11) NOT NULL,
  `name` varchar(16) NOT NULL,
  `categoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `created_on` date NOT NULL,
  `inclome` float NOT NULL,
  `picture_url` text NOT NULL,
  `articleID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article_17`
--
ALTER TABLE `article_17`
 ADD PRIMARY KEY (`UID`), ADD KEY `name` (`name`), ADD KEY `tagID` (`tagID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`UID`), ADD UNIQUE KEY `UID` (`UID`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
 ADD PRIMARY KEY (`UID`), ADD KEY `categoryID` (`categoryID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD KEY `tagID` (`articleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article_17`
--
ALTER TABLE `article_17`
MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `article_17`
--
ALTER TABLE `article_17`
ADD CONSTRAINT `article_17_ibfk_1` FOREIGN KEY (`tagID`) REFERENCES `tag` (`UID`);

--
-- Constraints for table `tag`
--
ALTER TABLE `tag`
ADD CONSTRAINT `tag_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `category` (`UID`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`articleID`) REFERENCES `article_17` (`UID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
