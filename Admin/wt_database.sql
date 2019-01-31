-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2017 at 01:48 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wt_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `Username` varchar(30) NOT NULL,
  `Fname` varchar(30) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `CID` int(5) NOT NULL,
  `DID` int(5) NOT NULL,
  `DOV` date NOT NULL,
  `Timestamp` datetime NOT NULL,
  `Status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`Username`, `Fname`, `Gender`, `CID`, `DID`, `DOV`, `Timestamp`, `Status`) VALUES
('bilal', 'sadiq', 'male', 1, 1, '2018-10-04', '2018-10-03 08:16:43', 'Cancelled'),
('usama', 'majeed', 'male', 1, 1, '2018-09-27', '2018-10-03 11:45:41', 'Checked '),
('sohail', 'butt', 'male', 1, 1, '2018-11-06', '2018-11-03 05:41:09', 'Cancelled by Patient'),
('mubasher', 'rafiq', 'male', 2, 3, '2018-11-06', '2018-11-05 10:28:40', 'Cancelled by Patient');

-- --------------------------------------------------------

--
-- Table structure for table `clinic`
--

CREATE TABLE `clinic` (
  `cid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `town` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `mid` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clinic`
--

INSERT INTO `clinic` (`cid`, `name`, `address`, `town`, `city`, `contact`, `mid`) VALUES
(1, 'DentoCare ', '12B, madina town', 'madina town', 'faisalabad', 8484568564, 0),
(2, 'ConfiDental', '1,legal Towers', 'kohinoor', 'faisalabad', 8564578456, 0),
(3, 'Smile Studio', '23A, lahore lycume', 'DHA', 'lahore', 7894127854, 0),
(4, 'Smile Statement', '24, comercial area', 'eden garden', 'faisalabad', 9845784987, 0);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `did` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `experience` int(11) NOT NULL,
  `specialization` varchar(30) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `region` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`did`, `name`, `gender`, `dob`, `experience`, `specialization`, `contact`, `address`, `username`, `password`, `region`) VALUES
(1, 'Muhammad Bilal Sadiq', 'male', '1997-04-17', 3, 'Orthodontist', 03236669161, '108-X-D Kohinoor Town Faisalabad', 'drbilal', 'drbilal', 'faisalabad'),
(2, 'Muhammad Hafeez', 'male', '1975-02-03', 10, 'MD', 485062658, '102-A paradise velley Faisalabad', 'drhafeez', 'drhafeez', 'Islamabad'),
(3, 'Husnain Yaseen', 'male', '1994-11-04', 5, 'Orthodontist', 7897897897, '101 B, shahbaz garden, faisalabad', 'drhusnain', 'drhusnain', 'lahore');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_availability`
--

CREATE TABLE `doctor_availability` (
  `cid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `day` varchar(50) NOT NULL,
  `starttime` time NOT NULL,
  `endtime` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_availability`
--

INSERT INTO `doctor_availability` (`cid`, `did`, `day`, `starttime`, `endtime`) VALUES
(1, 1, 'Monday', '14:00:00', '20:00:00'),
(1, 1, 'Tueday', '14:00:00', '20:00:00'),
(1, 1, 'Wednesday', '14:00:00', '20:00:00'),
(1, 2, 'Friday', '14:00:00', '20:00:00'),
(1, 2, 'Monday', '14:00:00', '20:00:00'),
(1, 2, 'Thursday', '14:00:00', '20:00:00'),
(2, 3, 'Monday', '13:00:00', '17:00:00'),
(2, 3, 'Tueday', '13:00:00', '17:00:00'),
(2, 3, 'Wednesday', '13:00:00', '17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `mid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `contact` bigint(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `region` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`mid`, `name`, `gender`, `dob`, `contact`, `address`, `username`, `password`, `region`) VALUES
(1, 'ch bilal', 'male', '1997-04-17', 9145095767, 'A-1, madina town, Near susan road, faisalabad', 'bilal', 'bilal', 'faisalabad');

-- --------------------------------------------------------

--
-- Table structure for table `manager_clinic`
--

CREATE TABLE `manager_clinic` (
  `cid` int(11) NOT NULL,
  `mid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager_clinic`
--

INSERT INTO `manager_clinic` (`cid`, `mid`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `name` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `contact` bigint(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`name`, `gender`, `dob`, `contact`, `email`, `username`, `password`) VALUES
('sohail butt', 'male', '1998-02-03', 8446356355, 'sohail@gmail.com', 'sohail', 'sohail'),
('usama majeed', 'male', '1997-05-04', 8458457894, 'usama@gmail.com', 'usama', 'usama'),
('patient', 'male', '1997-02-04', 7894578944, 'patientgmail.com', 'patient', 'patien'),
('mubasher', 'male', '1997-03-02', 7878978979, 'mubasher@gmail.com', 'mubasher', 'mubasher');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor_availability`
--
ALTER TABLE `doctor_availability`
  ADD PRIMARY KEY (`cid`,`did`,`day`,`starttime`,`endtime`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
