-- phpMyAdmin SQL Dump
-- version 4.5.3.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 18, 2016 at 08:43 AM
-- Server version: 5.6.27-2
-- PHP Version: 5.6.17-3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `martog`
--

-- --------------------------------------------------------

--
-- Table structure for table `Article_22`
--

CREATE TABLE `Article_22` (
  `UID` int(11) NOT NULL,
  `created_on` date NOT NULL,
  `name` varchar(30) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `UID` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `priority` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Tag`
--

CREATE TABLE `Tag` (
  `UID` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `second_priority` float NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `UID` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `name` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Article_22`
--
ALTER TABLE `Article_22`
  ADD PRIMARY KEY (`UID`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`UID`);

--
-- Indexes for table `Tag`
--
ALTER TABLE `Tag`
  ADD PRIMARY KEY (`UID`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`UID`),
  ADD KEY `tag_id` (`tag_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Article_22`
--
ALTER TABLE `Article_22`
  MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Category`
--
ALTER TABLE `Category`
  MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Tag`
--
ALTER TABLE `Tag`
  MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Article_22`
--
ALTER TABLE `Article_22`
  ADD CONSTRAINT `Article_22_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`UID`);

--
-- Constraints for table `Category`
--
ALTER TABLE `Category`
  ADD CONSTRAINT `Category_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `Article_22` (`UID`);

--
-- Constraints for table `Tag`
--
ALTER TABLE `Tag`
  ADD CONSTRAINT `Tag_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`tag_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
