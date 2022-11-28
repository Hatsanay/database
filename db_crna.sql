-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2022 at 04:05 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_crna`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `memid` int(5) NOT NULL,
  `memusername` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `mempassword` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `memlavel` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `memdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`memid`, `memusername`, `mempassword`, `memlavel`, `memdate`) VALUES
(18, 'admin1', '1234', '1', '0000-00-00'),
(19, 'admin2', '1234', '', '0000-00-00'),
(20, 'admin4', '1234', '1', '0000-00-00'),
(21, 'admin5', '1234', '1', '0000-00-00'),
(22, 'admin6', '1234', '1', '2022-11-28'),
(23, 'test1', '1234', '1', '2022-11-28');

-- --------------------------------------------------------

--
-- Table structure for table `typemembers`
--

CREATE TABLE `typemembers` (
  `typememid` int(2) NOT NULL,
  `typememname` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `typemembers`
--

INSERT INTO `typemembers` (`typememid`, `typememname`) VALUES
(1, 'ผู้ใช้ทั่วไป'),
(2, 'อู่/ศูนย์'),
(3, 'ช่างอิสระ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`memid`);

--
-- Indexes for table `typemembers`
--
ALTER TABLE `typemembers`
  ADD PRIMARY KEY (`typememid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `memid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `typemembers`
--
ALTER TABLE `typemembers`
  MODIFY `typememid` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
