-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 06, 2022 at 09:54 AM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id19526641_prime`
--

-- --------------------------------------------------------

--
-- Table structure for table `prime`
--

CREATE TABLE `prime` (
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `firstnumber` int(255) NOT NULL,
  `secondnumber` int(255) NOT NULL,
  `result` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `prime`
--

INSERT INTO `prime` (`time_stamp`, `firstnumber`, `secondnumber`, `result`) VALUES
('2022-09-06 09:11:03', 2, 10, '2, 3, 5, 7'),
('2022-09-06 09:14:55', 2, 5, ', 2, 3, 5'),
('2022-09-06 09:30:34', 2, 5, ', 2, 3, 5'),
('2022-09-06 09:30:46', 1, 15, ', 1, 2, 3, 5, 7, 11, 13'),
('2022-09-06 09:30:57', 1, 15, ', 1, 2, 3, 5, 7, 11, 13'),
('2022-09-06 09:32:14', 2, 19, ', 2, 3, 5, 7, 11, 13, 17, 19'),
('2022-09-06 09:41:12', 1, 15, ', 1, 2, 3, 5, 7, 11, 13'),
('2022-09-06 09:43:30', 1, 10, ', 1, 2, 3, 5, 7'),
('2022-09-06 09:43:33', 1, 50, ', 1, 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47'),
('2022-09-06 09:43:45', 20, 50, ', 23, 29, 31, 37, 41, 43, 47'),
('2022-09-06 09:44:04', 1, 100, ', 1, 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97'),
('2022-09-06 09:47:03', 1, 20, ', 1, 2, 3, 5, 7, 11, 13, 17, 19'),
('2022-09-06 09:48:28', 1, 20, ', 1, 2, 3, 5, 7, 11, 13, 17, 19');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
