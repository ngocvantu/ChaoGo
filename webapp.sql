-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2018 at 05:54 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `webapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `knowledge`
--

CREATE TABLE IF NOT EXISTS `knowledge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(11) DEFAULT '0',
  `topicid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `knowledge`
--

INSERT INTO `knowledge` (`id`, `name`, `desc`, `datecreated`, `userid`, `topicid`) VALUES
(4, '12', '12', '2018-07-03 16:20:35', 0, 43),
(5, 'khong', 'so easy', '2018-07-03 16:20:40', 0, 43),
(9, 'meo', 'hoang 1', '2018-07-04 09:30:03', 0, 45),
(11, 'shut down', 'stop business', '2018-07-04 09:59:59', 0, 61),
(12, 'aftermath', 'hậu quả (the period of time after an event, particularly an event that has a big impact)', '2018-07-04 10:00:14', 0, 61),
(13, 'outlets', 'thị trường, chỗ tiêu thụ, cửa hàng tiêu thụ', '2018-07-04 10:00:27', 0, 61),
(14, 'Hyphens', 'dấu gạch nối', '2018-07-04 10:00:38', 0, 61);

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE IF NOT EXISTS `terms` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KEY_J` varchar(20) DEFAULT NULL,
  `KEY_E` varchar(20) DEFAULT NULL,
  `VAL_E` varchar(50) DEFAULT NULL,
  `VAL_J` varchar(50) DEFAULT NULL,
  `VAL_V` varchar(50) DEFAULT NULL,
  `CATEGORY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`ID`, `KEY_J`, `KEY_E`, `VAL_E`, `VAL_J`, `VAL_V`, `CATEGORY`) VALUES
(1, 'ads', 'adsf', 'asdf', 'asdf', 'asdf', 1),
(2, 'ssaaaa', 'asdf3', '23', '①', '', 1),
(3, 'komento', 'comment', 'comment', '作成する\r\n', 'Ghi chú', 2),
(4, 'enoduya', 'end user ', 'end user', 'ch', 'người dùng cuối', 2);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `test2`
--

CREATE TABLE IF NOT EXISTS `test2` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE IF NOT EXISTS `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`id`, `name`, `desc`, `datecreated`, `userid`) VALUES
(61, 'Từ vựng', 'từ vựng tiếng anh', '2018-07-03 15:52:10', NULL),
(62, 'WMS', 'dự án ở TSDV: ket thuc: 2018-05-30', '2018-07-04 10:01:34', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
