-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2019 at 11:54 AM
-- Server version: 10.2.10-MariaDB
-- PHP Version: 7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
CREATE TABLE IF NOT EXISTS `leads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `city` varchar(100) CHARACTER SET utf8 NOT NULL,
  `agree` tinyint(1) DEFAULT NULL,
  `divur` tinyint(1) DEFAULT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `name`, `email`, `phone`, `city`, `agree`, `divur`, `date`) VALUES
(1, 'Gal', 'ggg@ggg.com', '0501111111', '', NULL, 0, '2019-08-21 12:42:01'),
(2, 'Test', 'galtest@cc.com', '0502222222', '', NULL, 0, '2019-08-12 11:09:42'),
(3, 'Gal', 'gg@sdfsdf.com', '0502211554', '', NULL, 0, '2019-08-12 11:15:06'),
(6, 'popup add2', 'popup@check.add', '0521155441', '', NULL, 0, '2019-08-21 12:51:24'),
(16, 'test', 'test@fdfdf.com', '0502211554', '', NULL, 0, '2019-08-21 12:41:12'),
(18, 'dfg', 'dfgdfg@dfg.com', '0502211221', 'אחיהוד', 0, 0, '2019-08-21 12:48:49'),
(28, 'fdfsd', 'dfgdfg@df.com', '0502211221', 'אבו כף אום בטין', 1, 0, '2019-08-21 12:39:52');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
