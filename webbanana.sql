-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2022 at 10:11 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webbanana`
--

-- --------------------------------------------------------

--
-- Table structure for table `cooperativetb`
--

CREATE TABLE `cooperativetb` (
  `copid` int(34) NOT NULL,
  `copename` text NOT NULL,
  `telephones` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cooperativetb`
--

INSERT INTO `cooperativetb` (`copid`, `copename`, `telephones`) VALUES
(1, '', 0),
(2, '', 0),
(3, '', 0),
(5, '', 0),
(6, '', 0),
(7, '', 0),
(8, 'juki', 0),
(9, 'juki', 0),
(10, 'koko', 0),
(11, 'koko', 0),
(12, 'koko', 0),
(13, 'koko', 0),
(14, 'koko', 0),
(15, 'koko', 0),
(16, 'koko', 0),
(17, 'koko', 0),
(18, 'koko', 0),
(19, 'helloo', 0),
(20, '', 0),
(21, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customertb`
--

CREATE TABLE `customertb` (
  `custid` int(34) NOT NULL,
  `email` varchar(78) NOT NULL,
  `reason` text NOT NULL,
  `message` varchar(43) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `farmertb`
--

CREATE TABLE `farmertb` (
  `f-id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `role` text NOT NULL,
  `email` varchar(43) NOT NULL,
  `birthday` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cooperativetb`
--
ALTER TABLE `cooperativetb`
  ADD PRIMARY KEY (`copid`);

--
-- Indexes for table `customertb`
--
ALTER TABLE `customertb`
  ADD PRIMARY KEY (`custid`);

--
-- Indexes for table `farmertb`
--
ALTER TABLE `farmertb`
  ADD PRIMARY KEY (`f-id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cooperativetb`
--
ALTER TABLE `cooperativetb`
  MODIFY `copid` int(34) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `customertb`
--
ALTER TABLE `customertb`
  MODIFY `custid` int(34) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farmertb`
--
ALTER TABLE `farmertb`
  MODIFY `f-id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
