-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2019 at 07:23 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `columbandb`
--
CREATE DATABASE IF NOT EXISTS `columbandb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `columbandb`;

-- --------------------------------------------------------

--
-- Table structure for table `ay`
--

CREATE TABLE `ay` (
  `AY_ID` int(11) NOT NULL,
  `ACADYR` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `CLASS_ID` int(11) NOT NULL,
  `CLASS_CODE` varchar(30) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `INST_ID` int(11) NOT NULL,
  `SYID` int(11) NOT NULL,
  `AY` varchar(11) NOT NULL,
  `DAY` varchar(20) NOT NULL,
  `C_TIME` varchar(11) NOT NULL,
  `IDNO` int(11) NOT NULL,
  `ROOM` varchar(30) NOT NULL DEFAULT 'NONE',
  `SECTION` varchar(30) NOT NULL DEFAULT 'NONE'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`CLASS_ID`, `CLASS_CODE`, `SUBJ_ID`, `INST_ID`, `SYID`, `AY`, `DAY`, `C_TIME`, `IDNO`, `ROOM`, `SECTION`) VALUES
(3, 'Spiral Filipino', 438, 1, 0, '2013-2014', 'MWF', '7:30-8:30', 0, 'Room01', 'A'),
(4, 'Spiral English', 439, 1, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE', 'NONE'),
(5, 'Spiral Science', 441, 6, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE', 'NONE'),
(6, 'Spiral T.L.E', 442, 6, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE', 'NONE'),
(7, 'Spiral A.P', 443, 6, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE', 'NONE'),
(8, 'Spiral Religion', 444, 6, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE', 'NONE'),
(9, 'Spiral EsP.', 445, 6, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE', 'NONE');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `COURSE_ID` int(11) NOT NULL,
  `COURSE_NAME` varchar(30) NOT NULL,
  `COURSE_LEVEL` int(11) NOT NULL DEFAULT '1',
  `COURSE_MAJOR` varchar(30) NOT NULL DEFAULT 'None',
  `COURSE_DESC` varchar(255) NOT NULL,
  `DEPT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`COURSE_ID`, `COURSE_NAME`, `COURSE_LEVEL`, `COURSE_MAJOR`, `COURSE_DESC`, `DEPT_ID`) VALUES
(47, 'Grade 7', 7, '', 'Grade 7', 1),
(48, 'Grade 8', 8, '', 'Grade 8 ', 1),
(49, 'Grade 9', 9, '', 'Grade 9', 1),
(50, 'Grade 10', 10, '', 'Grade 10', 1),
(53, 'Grade 11', 11, '', 'Grade 11 ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DEPT_ID` int(11) NOT NULL,
  `DEPARTMENT_NAME` varchar(30) NOT NULL,
  `DEPARTMENT_DESC` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DEPT_ID`, `DEPARTMENT_NAME`, `DEPARTMENT_DESC`) VALUES
(1, 'High School', 'High School Department');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `GRADE_ID` int(11) NOT NULL,
  `IDNO` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `INST_ID` int(11) NOT NULL,
  `SYID` int(30) NOT NULL,
  `FIRST` int(11) NOT NULL,
  `SECOND` int(11) NOT NULL,
  `THIRD` int(11) NOT NULL,
  `FOURTH` int(11) NOT NULL,
  `AVE` float NOT NULL,
  `DAY` varchar(30) NOT NULL,
  `G_TIME` time NOT NULL,
  `ROOM` varchar(30) NOT NULL,
  `REMARKS` text NOT NULL,
  `COMMENT` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`GRADE_ID`, `IDNO`, `SUBJ_ID`, `INST_ID`, `SYID`, `FIRST`, `SECOND`, `THIRD`, `FOURTH`, `AVE`, `DAY`, `G_TIME`, `ROOM`, `REMARKS`, `COMMENT`) VALUES
(1, 20004277, 438, 1, 0, 30, 67, 0, 0, 3.85, 'NONE', '00:00:00', '', 'Failed', ''),
(2, 20004277, 439, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(3, 20004207, 438, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(4, 20004207, 439, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(5, 20004180, 438, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(6, 20004180, 439, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(7, 20004180, 440, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(8, 20004180, 441, 6, 0, 60, 78, 80, 90, 77, 'NONE', '00:00:00', '', 'Passed', ''),
(9, 20004180, 442, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(10, 20004180, 443, 6, 0, 90, 89, 78, 90, 87, 'NONE', '00:00:00', '', 'Passed', ''),
(11, 20004180, 444, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(12, 20004180, 445, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(13, 20004180, 447, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(14, 20004623, 438, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(15, 20004623, 439, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(16, 20004623, 440, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(17, 20004623, 441, 6, 0, 80, 80, 78, 80, 80, 'NONE', '00:00:00', '', 'Passed', ''),
(18, 20004623, 442, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(19, 20004623, 443, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(20, 20004623, 444, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(21, 20004623, 445, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(22, 20004623, 447, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', '');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `INST_ID` int(30) NOT NULL,
  `INST_FULLNAME` varchar(255) NOT NULL,
  `INST_ADDRESS` varchar(255) NOT NULL,
  `INST_SEX` varchar(20) NOT NULL DEFAULT 'Male',
  `INST_STATUS` varchar(20) NOT NULL DEFAULT 'Single',
  `SPECIALIZATION` text NOT NULL,
  `INST_EMAIL` varchar(255) NOT NULL,
  `EMPLOYMENT_STATUS` varchar(40) NOT NULL DEFAULT 'Probationary'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`INST_ID`, `INST_FULLNAME`, `INST_ADDRESS`, `INST_SEX`, `INST_STATUS`, `SPECIALIZATION`, `INST_EMAIL`, `EMPLOYMENT_STATUS`) VALUES
(1, 'Joken Villanueva', 'Suay Himamaylan City', 'M', 'Single', 'Computer Etc.', 'joken000189561@gmail.com', 'Probationary'),
(2, 'Erick jason Batuto', 'Kabanakalan City', 'M', 'Married', 'Computer ekc...', 'ejbatuto@hotmail.com', 'Regular'),
(3, 'Joel Bagolcol', 'KCC-TC', 'M', 'Single', 'Automotive', 'joel@yahoo.com', 'Probationary'),
(5, 'Allan', 'No whar', 'M', 'Single', 'Computer ekc...', 'allan@yahoo.com', 'Regular'),
(6, 'sdfsdfsdg', 'dfdf', 'M', 'Single', 'sdfsdf', 'joken@gmail.com', 'dfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `YR_ID` int(11) NOT NULL,
  `LEVEL` varchar(30) NOT NULL,
  `LEVEL_DESCRIPTION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `MAJOR_ID` int(11) NOT NULL,
  `MAJOR` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`MAJOR_ID`, `MAJOR`) VALUES
(1, 'English'),
(2, 'General'),
(3, 'Marketing Management'),
(4, 'Financial Management'),
(5, 'Filipino'),
(6, 'Philosophy'),
(7, 'Math');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `PHOTO_ID` int(11) NOT NULL,
  `FILENAME` text NOT NULL,
  `TYPE` varchar(30) NOT NULL,
  `SIZE` int(30) NOT NULL,
  `CAPTION` varchar(255) NOT NULL,
  `IDNO` int(11) NOT NULL,
  `PRIMARY` varchar(20) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `ROOM_ID` int(11) NOT NULL,
  `ROOM_NAME` varchar(30) NOT NULL,
  `ROOM_DESC` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`ROOM_ID`, `ROOM_NAME`, `ROOM_DESC`) VALUES
(0, 'Room01', 'Room01'),
(2, 'Room02', 'Room 02'),
(4, 'Room 03', 'Room 03');

-- --------------------------------------------------------

--
-- Table structure for table `schoolyr`
--

CREATE TABLE `schoolyr` (
  `SYID` int(11) NOT NULL,
  `AY` varchar(30) NOT NULL,
  `SEMESTER` varchar(20) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `IDNO` int(30) NOT NULL,
  `CATEGORY` varchar(30) NOT NULL DEFAULT 'ENROLLED',
  `DATE_RESERVED` datetime NOT NULL,
  `DATE_ENROLLED` datetime NOT NULL,
  `STATUS` varchar(30) NOT NULL DEFAULT 'New'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoolyr`
--

INSERT INTO `schoolyr` (`SYID`, `AY`, `SEMESTER`, `COURSE_ID`, `IDNO`, `CATEGORY`, `DATE_RESERVED`, `DATE_ENROLLED`, `STATUS`) VALUES
(1, '2013-2014', 'First', 47, 20004277, 'ENROLLED', '2014-03-12 02:10:03', '0000-00-00 00:00:00', 'New'),
(2, '2013-2014', 'First', 47, 20004207, 'ENROLLED', '2014-03-12 02:32:19', '0000-00-00 00:00:00', 'New'),
(3, '2014-2015', 'First', 48, 20004277, 'ENROLLED', '2014-03-13 03:18:56', '0000-00-00 00:00:00', 'Continuing'),
(4, '2013-2014', 'First', 47, 20004180, 'ENROLLED', '2014-03-24 08:28:35', '0000-00-00 00:00:00', 'New'),
(5, '2013-2014', 'First', 47, 20004623, 'ENROLLED', '2014-03-24 09:16:15', '0000-00-00 00:00:00', 'New');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `SEM_ID` int(11) NOT NULL,
  `SEM` varchar(15) NOT NULL DEFAULT 'First'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`SEM_ID`, `SEM`) VALUES
(1, 'First'),
(2, 'Second'),
(3, 'Summer');

-- --------------------------------------------------------

--
-- Table structure for table `studentsubjects`
--

CREATE TABLE `studentsubjects` (
  `STUDSUBJ_ID` int(11) NOT NULL,
  `IDNO` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `LEVEL` int(11) NOT NULL,
  `SEMESTER` varchar(30) NOT NULL,
  `SY` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentsubjects`
--

INSERT INTO `studentsubjects` (`STUDSUBJ_ID`, `IDNO`, `SUBJ_ID`, `LEVEL`, `SEMESTER`, `SY`) VALUES
(6, 20004207, 11, 1, 'First', '2013-2014'),
(8, 20004207, 13, 1, 'First', '2013-2014'),
(9, 20004207, 14, 1, 'First', '2013-2014'),
(10, 20004207, 15, 1, 'First', '2013-2014'),
(13, 20004277, 13, 1, 'First', '2013-2014'),
(14, 20004277, 14, 1, 'First', '2013-2014'),
(15, 20004277, 15, 1, 'First', '2013-2014');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `SUBJ_ID` int(11) NOT NULL,
  `SUBJ_CODE` varchar(30) NOT NULL,
  `SUBJ_DESCRIPTION` varchar(255) NOT NULL,
  `UNIT` int(2) NOT NULL,
  `PRE_REQUISITE` varchar(30) NOT NULL DEFAULT 'None',
  `COURSE_ID` int(11) NOT NULL,
  `AY` varchar(30) NOT NULL,
  `SEMESTER` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SUBJ_ID`, `SUBJ_CODE`, `SUBJ_DESCRIPTION`, `UNIT`, `PRE_REQUISITE`, `COURSE_ID`, `AY`, `SEMESTER`) VALUES
(438, 'Spiral Filipino', 'Filipino for Grade 7 - Spiral Filipino', 3, '', 47, '2013-2014', 'First'),
(439, 'Spiral English', 'English for Grade 7', 3, '', 47, '2013-2014', 'First'),
(440, 'Spiral Mathematics', 'Mathematics for Grade 7 - Spiral Math', 3, '', 47, '2013-2014', 'First'),
(441, 'Spiral Science', 'Science for Grade 7', 3, '', 47, '2013-2014', 'First'),
(442, 'Spiral T.L.E', 'T.L.E for Grade 7', 3, '', 47, '2013-2014', 'First'),
(443, 'Spiral A.P', 'Araling Panlipunan for Grade 7', 3, '', 47, '2013-2014', 'First'),
(444, 'Spiral Religion', 'rekligion for Grade 7', 3, '', 47, '2013-2014', 'First'),
(445, 'Spiral EsP.', 'EsP. for Grade 7', 3, '', 47, '2013-2014', 'First'),
(446, 'MAPEH', 'MAPEH for Grade 8 ', 3, '', 48, '2013-2014', 'First'),
(447, 'MAPEH', 'MAPEH for Grade 7', 3, '', 47, '2013-2014', 'First'),
(448, 'Religion', 'Religion for Grade 8', 3, '', 48, '2013-2014', 'First'),
(449, 'Spiral Filipino', 'Filipino for Grade 8 ', 3, '', 48, '2013-2014', 'First'),
(450, 'Spiral English', 'English for Grade 8', 3, '', 48, '2013-2014', 'First'),
(451, 'Spiral Mathematics', 'Mathematics for Grade 8 ', 3, '', 48, '2013-2014', 'First'),
(452, 'Spiral Science', 'Science for Grade ', 3, '', 48, '2013-2014', 'First'),
(453, 'Spiral T.L.E.', 'T.L.E for Grade 7 ', 3, '', 48, '2013-2014', 'First'),
(454, 'Spiral A.P.', 'Araling Panlipunan for Grade 8', 3, '', 48, '2013-2014', 'First'),
(455, 'Spiral EsP.', 'EsP. for Grade 7', 3, '', 48, '2013-2014', 'First'),
(457, 'Spiral Filipino', 'Filipino for Grade 9', 3, '', 49, '2013-2014', 'First'),
(458, 'Spiral English', 'English for Grade 9', 3, '', 49, '2013-2014', 'First'),
(459, 'Spiral Mathematics', 'Mathematics for Grade 9', 3, '', 49, '2013-2014', 'First'),
(460, 'Spiral Science', 'Science for Grade 9', 3, '', 49, '2013-2014', 'First'),
(461, 'Spiral A.P.', 'Araling Panlipunan for Grade 9', 3, '', 49, '2013-2014', 'First'),
(462, 'Spiral T.L.E.', 'T.L.E for Grade 9', 3, '', 49, '2013-2014', 'First'),
(463, 'Spiral MAPEH', 'MAPEH for Grade 9', 3, '', 49, '2013-2014', 'First'),
(464, 'Values Education', 'Values Education for Grade 9', 3, '', 49, '2013-2014', 'First'),
(465, 'Computer', 'Computer for grade 9', 3, '', 49, '2013-2014', 'First'),
(466, 'Religion IV', 'Religion for Grade 10', 3, '', 50, '2013-2014', 'First'),
(467, 'Spiral Filipino', 'Filipino for Grade 10', 3, '', 50, '2013-2014', 'First'),
(468, 'Spiral Mathematics', 'Mathematics for Grade 10', 3, '', 50, '2013-2014', 'First'),
(469, 'Spiral Science', 'Science for Grade 10', 3, '', 50, '2013-2014', 'First'),
(471, 'Spiral T.L.E.', 'T.L.E for Grade 10', 3, '', 50, '2013-2014', 'First'),
(472, 'Spiral MAPEH', 'MAPEH for Grade 10', 3, '', 50, '2013-2014', 'First'),
(473, 'Values Education', 'Values Education for Grade 10', 3, '', 50, '2013-2014', 'First'),
(474, 'CAT', 'Citizens Advancement Training', 3, '', 50, '2013-2014', 'First'),
(475, 'Computer', 'Computer for grade 10', 3, '', 50, '2013-2014', 'First'),
(476, 'hjgjhggh', 'gj', 3, '', 51, '2013-2014', 'First');

-- --------------------------------------------------------

--
-- Table structure for table `tblrequirements`
--

CREATE TABLE `tblrequirements` (
  `REQ_ID` int(30) NOT NULL,
  `NSO` varchar(5) NOT NULL DEFAULT 'no',
  `BAPTISMAL` varchar(5) NOT NULL DEFAULT 'no',
  `ENTRANCE_TEST_RESULT` varchar(5) NOT NULL DEFAULT 'no',
  `MARRIAGE_CONTRACT` varchar(5) NOT NULL DEFAULT 'no',
  `CERTIFICATE_OF_TRANSFER` varchar(5) NOT NULL DEFAULT 'no',
  `IDNO` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrequirements`
--

INSERT INTO `tblrequirements` (`REQ_ID`, `NSO`, `BAPTISMAL`, `ENTRANCE_TEST_RESULT`, `MARRIAGE_CONTRACT`, `CERTIFICATE_OF_TRANSFER`, `IDNO`) VALUES
(20, 'Yes', 'Yes', 'Yes', 'No', 'No', 20004277),
(21, 'Yes', 'Yes', 'Yes', 'No', 'No', 20004207),
(22, 'Yes', 'Yes', 'Yes', 'No', 'No', 20004180),
(23, 'Yes', 'Yes', 'Yes', 'No', 'No', 20004425),
(24, 'Yes', 'Yes', 'Yes', 'No', 'No', 20002251),
(25, 'Yes', 'Yes', 'Yes', 'No', 'No', 20002838),
(26, 'Yes', 'Yes', 'Yes', 'No', 'No', 20004623),
(27, 'Yes', 'Yes', 'Yes', 'No', 'No', 2001497),
(28, 'Yes', 'Yes', 'No', 'No', 'No', 20001057),
(29, 'Yes', 'Yes', 'Yes', 'No', 'No', 20004407),
(30, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20004749),
(31, 'Yes', 'Yes', 'No', 'No', 'No', 20001484),
(32, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20003333),
(33, 'Yes', 'Yes', 'Yes', 'No', 'No', 20004510),
(34, 'Yes', 'Yes', 'Yes', 'No', 'No', 20001779),
(35, 'Yes', 'Yes', 'No', 'No', 'No', 20001482),
(36, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20001937),
(37, 'Yes', 'Yes', 'Yes', 'No', 'No', 20001648),
(38, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20002408),
(39, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20005936),
(40, 'No', 'No', 'No', 'No', 'No', 20001550),
(41, 'Yes', 'Yes', 'Yes', 'No', 'No', 20002270),
(42, 'Yes', 'Yes', 'Yes', 'No', 'No', 20001932),
(43, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20001498),
(45, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20001503),
(46, 'Yes', 'Yes', 'Yes', 'No', 'No', 20001925),
(47, 'Yes', 'Yes', 'Yes', 'No', 'No', 20001658),
(48, 'Yes', 'No', 'No', 'No', 'No', 20001550),
(49, 'Yes', 'Yes', 'Yes', 'No', 'No', 20001957),
(50, 'No', 'No', 'No', 'No', 'No', 20001456),
(51, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20001673),
(52, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20001557),
(53, 'Yes', 'Yes', 'Yes', 'No', 'No', 20002311),
(54, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20001742),
(55, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20002106),
(56, 'Yes', 'Yes', 'Yes', 'No', 'No', 20001853),
(57, 'Yes', 'Yes', 'No', 'No', 'Yes', 20001645),
(58, 'Yes', 'Yes', 'No', 'Yes', 'No', 123456);

-- --------------------------------------------------------

--
-- Table structure for table `tblstuddetails`
--

CREATE TABLE `tblstuddetails` (
  `DETAIL_ID` int(11) NOT NULL,
  `FATHER` varchar(255) NOT NULL,
  `FATHER_OCCU` varchar(255) NOT NULL,
  `MOTHER` varchar(255) NOT NULL,
  `MOTHER_OCCU` varchar(255) NOT NULL,
  `BOARDING` varchar(5) NOT NULL DEFAULT 'no',
  `WITH_FAMILY` varchar(5) NOT NULL DEFAULT 'yes',
  `GUARDIAN` varchar(255) NOT NULL,
  `GUARDIAN_ADDRESS` varchar(255) NOT NULL,
  `OTHER_PERSON_SUPPORT` varchar(255) NOT NULL,
  `ADDRESS` text NOT NULL,
  `IDNO` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstuddetails`
--

INSERT INTO `tblstuddetails` (`DETAIL_ID`, `FATHER`, `FATHER_OCCU`, `MOTHER`, `MOTHER_OCCU`, `BOARDING`, `WITH_FAMILY`, `GUARDIAN`, `GUARDIAN_ADDRESS`, `OTHER_PERSON_SUPPORT`, `ADDRESS`, `IDNO`) VALUES
(20, 'Walter Da-anoy', 'Employee', 'Jessielyn Da-anoy', 'Housewife', 'No', 'No', '', '', '', '', 20004277),
(21, 'Mario P. Amparado', 'OFW', 'Yolly D. Odasco', 'Housewife', 'Yes', 'No', 'Domingga Gomez', '', '', '', 20004207),
(22, 'robert P. ferrer', 'fisherman', 'josephene b. ferrer', 'Housewife', 'Yes', 'Yes', 'josephene b ferrer', 'brgy.cayhagan,sipalay city,neg.occ.', 'sister', '', 20004180),
(23, 'Renelio Pintuan', 'Driver', 'Nanette Pintuan', 'OFW', 'No', 'Yes', 'Ma. Melca Jaranilla', 'Coloso St. Kabankalan City', '', '', 20004425),
(24, '', '', 'dionalita apawan', 'housewife', 'No', 'No', 'sofronia apawan', 'adela st. brgy. 1', '', '', 20002251),
(25, 'Pablito Vicente', 'Laborer', 'Crislie Vicente', 'Laborer', 'No', 'Yes', 'Angelo Lopez', 'Coloso Subd. Kabankalan City', '', '', 20002838),
(26, 'Luis Balico', 'N/A', 'Leonisa Balico', 'N/A', 'No', 'Yes', 'Mary Ann Balico', 'Brgy Isidro Village, Talubangi Kabankalan City', 'N/A', '', 20004623),
(27, 'Panfilo Catalan Buendia', 'Vendors', 'Gloria Aspan Buendia', 'Vendors', 'Yes', 'Yes', 'Mr. and Mrs. Gloria Buendia', 'Brgy. Tapi, Kabankalan City', '', '', 2001497),
(28, 'Ramar salazar', 'hair stylist', 'Kathryn Lucy salazar', 'none', 'No', 'Yes', 'DR. MIlagros Aurea Sabidalas ', '12 Rizal St. kabankalan city', '', '', 20001057),
(29, 'Ronald Martisano', 'laxborer', 'Jean Martisano', 'Housewife', 'No', 'Yes', '', '', '', '', 20004407),
(30, 'Rollen Gealon', 'Laborer', 'Marife Gealon', 'Housewife', 'No', 'Yes', 'Mr. & Mrs Rollen Gealon', 'Brgy.2 Ilog, Neg.Occ', '', '', 20004749),
(31, 'James Andrew Benedicto', 'Cook', 'Ma. Sheila Benedicto', 'DH', 'No', 'Yes', '', '', '', '', 20001484),
(32, 'Leve Voluntate', 'Farmer', 'Lerma Voluntate', 'Deceased', 'No', 'Yes', '', '', 'Mr.Von Martir', 'Bacolod City', 20003333),
(33, 'Rudy B. Magada, Jr', 'Fish Dealer', 'Mary I. Magada', 'Housewife', 'No', 'Yes', '', '', 'Ezperanza Magada', 'Libon, Tuyom, Cauayan, Negros Occidental', 20004510),
(34, 'Dionisio C. Herrera', 'Farmer', 'Rubylan O. Herrera', 'plane housewife', 'No', 'Yes', 'Dionisio c. Herrera', 'Mohon Brgy1 . kab city neg occ', '', '', 20001779),
(35, 'Adriano Bayog', 'Farmer', 'Mamerna Dulana', 'housekeeper', 'Yes', 'No', 'Seminary Fathers', 'Kabankalan City', 'Parish', 'La Castellana', 20001482),
(36, 'Ruben J. Principe', '', 'Evelina Gumawa Principe', '', 'No', 'No', '', '', '', '', 20001937),
(37, 'Deceased', 'Deceased', 'Lorna Bandolos', 'Housewife', 'No', 'Yes', '', 'Lorna Bandolos', '', 'Brgy Dancalan Ilog Negros Occidental', 20001648),
(38, 'AMBROCIO SERION', 'FARMER', 'NORMENDA SERION', 'HOUSE WIFE', 'No', 'No', 'JONALYN BUGALON', 'Kabankalan City', 'JONALYN BUGALON', 'KABANKALAN CITY', 20002408),
(39, 'no', '', 'Merlita Macurio', 'housewife', 'No', 'No', 'Gerom Bello', 'Brgy,1 fzo subd.', '', '', 20005936),
(40, 'b', '', '', '', 'No', 'No', '', '', '', '', 20001550),
(41, 'Mr. Edgar C. Macario', 'Farmer', 'Mrs. Hilda F. Macario', 'Housewife', 'No', 'Yes', 'Mrs. Imelda M. Gatoc', 'Cabintagan, Brgy. Linao Kabankalan City, Negros Occidental', 'Mr. Robert C. Macario', 'Brgy. Salong Kabankalan City', 20002270),
(42, 'Virgilio Puyogao', 'Carpenter', 'Angelica Puyogao', 'Housewife', 'No', 'Yes', 'Virgilio Puyogao', 'Dancalan, Ilog, Negros Occidental', 'Annabel Puyogao', 'Dancalan, Ilog, Negros Occidental', 20001932),
(43, 'William Bulgado', 'Driver', 'Lolita Bulgado', 'Housewife', 'Yes', 'Yes', 'William Bulgado', 'magsaysay tabu ilog neg.occ', 'none', 'none', 20001498),
(45, 'Ricardo Tayoba Cabiten', 'Farmer', 'Nelly Cuenca Cabiten', 'Housewife', 'No', 'Yes', 'Nancy Cuenca Cabiten', 'Mambugsay, Cauayan, Negros Occidental', 'Romar Cuenca Cabiten', 'Mambugsay, Cauayan, Negros Occidental', 20001503),
(46, 'Joenarie CastaÃ±o', 'Laborer', 'Jeanly CastaÃ±o', 'Housewife', 'No', 'Yes', 'Melinde CastaÃ±o', 'Brgy. Daan Banua, Kabankalan City', 'None', 'N.A', 20001925),
(47, 'Alex Flores', 'Carpenter', 'Nelfa L. Flores', 'Brgy. Custodian', 'No', 'Yes', 'Nelfa L. Flores', 'Brgy. Camugao, Kabankalan City', 'Maria Elena T. Flores', 'Brgy. Camugao, Kabankalan City', 20001658),
(48, 'BENIGNO B. CORTEZ', 'FARMER', 'TERESITA P. CORTEZ', 'HOUSE WIFE', 'Yes', 'No', 'BENIGNO B. CORTEZ', 'TABUGON,kABANKALAN CITY', 'NONE', 'NONE', 20001550),
(49, 'Samuel Daulong', 'Construction Worker', 'Mariles Daulong', 'Office employee', 'Yes', 'Yes', 'Mariles Daulong', 'Caliling,Cauayan Negros Occidental', 'Henry L. Jordan', 'Brgy. Binicuil, Kabankalan City', 20001957),
(50, 'Diosdado Arillo', 'Employee', 'Jesusa Arillo', 'House Wife', 'Yes', 'No', 'Nilda Jestopa', 'Nilda Jestopa', '', 'Adela St. Kabankalan City', 20001456),
(51, 'Jesus M. Gamala', 'Farmer', 'Carmen N. Gamala', 'Housewife', 'Yes', 'No', 'Saro Yana', 'Bonifacio St.Kabankalan City', 'Jeza Gamala', 'DasmariÃ±as Cavite', 20001673),
(52, 'Raul D. Deanon', 'Driver', 'Jonah O. Deanon', 'Housewife', 'No', 'Yes', 'Jonah O. Deanon', 'Dancalan Ilog, Neg, Occ', '', '', 20001557),
(53, 'Ernesto Elijan', 'Welder', 'Emilia Elijan', 'Vendor', 'No', 'Yes', 'Ernalyn Elijan Jamon', 'Pinaguinpinan, KAbankalan City', 'Erline Elijan', 'Saudi Rihad', 20002311),
(54, 'Edward E. Geria', 'Seaman', 'Nilfa G. Geria', 'Agriculturist', 'No', 'Yes', 'Nilfa G.Geria', 'Brgy.Guiljungan Cauayan Negros Occidental', '', '', 20001742),
(55, 'Benjie Melanio Sr.', 'Farmer', 'Delia Melanio', 'Housewife', 'No', 'Yes', 'Benjie Melanio', 'Brgy. Linao', '', '', 20002106),
(56, 'Jose Romel T. Silleva', 'Carpenter', 'Daisy O. Silleva', 'House Wife', 'No', 'Yes', 'Daisy O. Silleva', 'Mapait, Su-ay, Himamaylan City, Negros Occidental', 'Romsdaen O. SIlleva', 'iloilo City', 20001853),
(57, 'Dionisio espadero', 'Farming', 'Rosita Espadero', 'House wife', 'No', 'Yes', 'Erlinda Guinson', 'Tapi kab City', 'Sister', 'Tapi kab City', 20001645),
(58, '', '', '', '', 'No', 'No', '', '', '', '', 123456);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `S_ID` int(11) NOT NULL,
  `IDNO` int(20) NOT NULL,
  `FNAME` varchar(40) NOT NULL,
  `LNAME` varchar(40) NOT NULL,
  `MNAME` varchar(40) NOT NULL,
  `SEX` varchar(10) NOT NULL DEFAULT 'Male',
  `BDAY` date NOT NULL,
  `BPLACE` text NOT NULL,
  `STATUS` varchar(30) NOT NULL,
  `AGE` int(30) NOT NULL,
  `NATIONALITY` varchar(40) NOT NULL,
  `RELIGION` varchar(255) NOT NULL,
  `CONTACT_NO` varchar(40) NOT NULL,
  `HOME_ADD` text NOT NULL,
  `EMAIL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`S_ID`, `IDNO`, `FNAME`, `LNAME`, `MNAME`, `SEX`, `BDAY`, `BPLACE`, `STATUS`, `AGE`, `NATIONALITY`, `RELIGION`, `CONTACT_NO`, `HOME_ADD`, `EMAIL`) VALUES
(17, 20004277, 'JESTERRAMY', 'DA-ANOY ', 'PATETE', 'F', '1995-06-14', 'Butuan City', 'Single', 19, 'Filipino', 'roman catholic', '09099754195', 'Brgy Camugao Kabankalan City', 'jesterramy14@yahoo.com'),
(18, 20004207, 'LHENYL GRACE', 'AMPARADO', 'ODASCO', 'F', '1995-08-27', 'Lancaan Dasmarinas Cavite', 'Single', 18, 'Filipino', 'roman catholic', '09263621995', 'Yao Yao Cauayan negros Occidental', 'lhenylgraceamparado@yahoo.com'),
(19, 20004180, 'MYLENE', 'FERRER', 'BALUCAN', 'F', '1972-05-22', 'brgy.cayhagan,sipalay city,neg.occ.', 'Single', 18, 'Filipino', 'roman catholic', '091071717257', 'brgy.cayhagan,sipalay city,neg.occ.', 'macaferrer@yahoo.com'),
(20, 20004425, 'JOHN KENNETH', 'PINTUAN', 'JARANILLA', 'M', '1996-05-14', 'PGH Manila', 'Single', 17, 'Filipino', 'Roman Catholic', '09305373831', 'Villa San jose Brgy. 6 Kabankalan City Negros Occidental', 'Pintuan123@yahoo.com'),
(21, 20002251, 'ADRIAN', 'APAWAN', 'ELLORAN', 'M', '1995-10-26', 'bacolod city', 'Single', 18, 'filipino', 'roman catholic', '09128214525', 'adela st. brgy.1', 'pidska_dian@yahoo.com'),
(22, 20002838, 'MARK ANTHONY', 'VICENTE', 'TITONG', 'M', '1995-10-19', 'Kabankalan Cit y', 'Single', 18, 'Filipino', 'Roman Catholic', '+639071564380', '', 'mav.makeu_19@ymail.com'),
(23, 20004623, 'SHARAH MAE', 'BALICO', 'PILLONES', 'F', '1990-11-01', 'Tagoloan Misamis Oriental', 'Single', 23, 'Filipino', 'Catholic', '09216230993', 'Brgy Isidro Village, Talubangi Kabankalan City', 'Sharahmae_balico@yahoo.com'),
(24, 2001497, 'RAFFY', 'BUENDIA', 'RENDON', 'M', '1993-04-13', 'Tapi, Kabankalan City', 'Single', 20, 'Filipino', 'Roman Catholic', '09483774901', 'Brgy. Tapi, Kabankalan City, Negros Occidental', 'Zieken@yahoo.com'),
(25, 20001057, 'EVAN LLOYD', 'SALAZAR', 'AYALIN', 'M', '1995-05-17', 'Kabankalan City', 'Single', 18, 'filipino', 'roman catholic', '09173077451', '12 rizal St.kabankalan CIty', 'Evanlloydsalazar@yahoo.com'),
(26, 20004407, 'JOHN MARK', 'MARTISANO', 'DEPRA', 'M', '1993-06-17', 'Ilog, Neg. Occ', 'Single', 20, 'Pilipino', 'Catholic', '09469080812', 'So. Malabong Andulauan Ilog, Neg. Occ.', 'freestyle05@yahoo.com'),
(27, 20004749, 'JAMAICA JAIRAH', 'GEALON', 'DELA CRUZ', 'F', '1994-01-12', 'Brgy.2 Ilog,Neg.Occ.', 'Single', 19, 'Filipino', 'Roman Catholic', '09089917220', 'Brgy.2 Ilog Negros Occidental', 'gealon12@yahoo.com.ph'),
(28, 20001484, 'JAMES ANGELO', 'BENEDICTO', 'GARANGANAO', 'M', '1993-11-18', 'Bacolod City', 'Single', 20, 'Filipino', 'Catholic', '09305446790', 'Dancalan Ilog, Negros Occidental', 'jamesangelobenedicto@yahoo.com'),
(29, 20003333, 'JENEBIE', 'VOLUNTATE', 'TABUCON', 'F', '1991-06-17', 'Kabankalan', 'Single', 22, 'Filipino', 'Roman Catholic', '09102247024', 'Brgy.Camansi,Kabankalan City,Neg.Occ.', 'jhen1704_cute@yahoo.com'),
(30, 20004510, 'RUDY', 'MAGADA, I', 'ITONA', 'M', '1995-02-05', 'Calumpang, Cauayan, Negros Occidental', 'Single', 18, 'Filipino', 'Roman Catholic', '09106910482', 'Libon, Tuyom, Cauayan, Negros Occidental', 'magadarudy@yahoo.com'),
(31, 20001779, 'JOEVEL', 'HERRERA', 'GONZALES', 'M', '1993-05-16', 'Negros Occidental', 'Single', 20, 'Filipino', 'Roman Catholic', '09093789858', 'Brgy 1,Kab city ,Neg Occ', 'herrerajovel@yahoo.com'),
(32, 20001482, 'ALDREN', 'BAYOG', 'DULANA ', 'M', '1993-12-27', 'La Castellana', 'Single', 20, 'Filipino', 'Roman Catholic', '09077898435', 'Kabankalan City', 'Aldz_bayog@yahoo.com'),
(33, 20001937, 'MERRY GRACE', 'PRINCIPE', 'GUMAWA', 'F', '1988-03-12', 'Candoni', 'Single', 25, 'Filipino', 'Roman Catholic', '09094397440', 'Pabera St.Brgy.East,Candoni, Negros Occidental', 'merrygraceprincipe@yahoo.com'),
(34, 20001648, 'SHIELA MARIE', 'BANDOLOS', 'TADAYA', 'F', '1990-08-21', 'Brgy. Dancalan Ilog Negros Occidental', 'Single', 22, 'Filipino', 'Roman Catholic', '09095596773', 'Brgy. Dancalan Ilog Negros Occidental', 'Marie_Bandolos@yahoo.com'),
(35, 20002408, 'ANALYN', 'SERION', 'ONLAGADA', 'F', '1993-10-30', 'Bry. TAMPALON KABANKALAN CITY', 'Single', 20, 'Filipino', 'Catholic', '09476154838', 'Kabankalan City', 'Analynserion@yahoo.com'),
(36, 20005936, 'JEAN', 'MACURIO', 'GONDAO', 'F', '1994-10-29', 'Brgy.Bantayan', 'Single', 19, 'Filipino', 'Baptist', '09125341710', 'Brgy. Bantayan Kabankalan City', 'jean_29_jake@yahoo.com'),
(37, 20001550, 'BENIGNO', 'CORTEZ', 'LACPAO', 'M', '1992-02-03', 'DUMAGUETE', 'Single', 21, 'FILIPINO', 'BAPTIST', '09097313999', 'TABUGON,KABANKALAN CITY,NEGROS OCCIDENTAL', 'deadlyjay_23@yahoo.com'),
(38, 20002270, 'ARHIL JUN', 'MACARIO', 'FERNANDEZ', 'M', '1993-06-12', 'Cabintagan, Brgy. Linao', 'Single', 20, 'Filipino', 'Roman Catholic', '09489776185', 'Cabintagan, Brgy. Linao Kabankalan City, Negros Occidental', 'elehra_jun_09@yahoo.com'),
(39, 20001932, 'ANA MAE', 'PUYOGAO', 'LACSON', 'F', '1992-10-11', 'Dancalan, Ilog, Neg. Occ', 'Single', 21, 'Filipino', 'Baptist', '09079002850', 'Brgy. Dancalan, Ilog, Negros Occidental', 'puyogaoanamae@yahoo.com'),
(40, 20001498, 'GINA', 'BULGADO', 'MALABAGO', 'F', '1992-06-28', 'Magsaysay tabu ilog ', 'Single', 21, 'Filipino', 'Roman Catholic', '0912-981-4177', 'magsaysay tabu,ilog negros occidental', 'carlghin_52@yahoo.com'),
(42, 20001503, 'RHEA MAY', 'CABITEN', 'CUENCA', 'F', '1992-05-01', 'Mambugsay, Cauayan, Negros Occidental', 'Single', 21, 'Filipino', 'Roman Catholic', '09097862920', 'Mambugsay, Cauayan, Negros Occidental', 'rean7901@gmail.com'),
(43, 20001925, 'JOJEAN', 'CASTAÃ±O', 'SOBERANO', 'F', '1994-09-27', 'Silay City', 'Single', 19, 'Filipino', 'Roman Catholic', '09122543919', 'Brgy. Daan Banua, Kabankalan City', 'Jojean_c@yahoo.com'),
(44, 20001658, 'STEVE', 'FLORES', 'LIPER', 'M', '1993-01-02', 'Brgy. Camugao, Kabankalan City', 'Single', 21, 'Filipino', 'Roman Catholic', '09077659710', 'Brgy. Camugao, Kabankalan City', 'skevinz_23@ymail.com'),
(46, 20001957, 'MA. LAVINIA', 'DAULONG', 'CORSINO', 'F', '1994-06-09', 'Caliling,Cauayan Neg. Occ', 'Single', 19, 'Filipino', 'Roman Catholic', '09073837380', 'Caliling,Cauayan Negros Occidental', 'corsin90@yahoo.com'),
(47, 20001456, 'DIWANNIE', 'ARILLO', 'PAGUNSAN', 'F', '1992-10-12', 'Brgy.Tabugon Kabankalan City Neg. Occ.', 'Single', 21, 'Filipino', 'Roman Catholic', '09484525429', 'Brgy. Tabugon Kabankalan City Neg. Occ.', 'dj_arillo@yahoo.com'),
(48, 20001673, 'CARJEI', 'GAMALA', 'NAZARETH', 'M', '1993-04-28', 'Bulata', 'Single', 20, 'Filipino', 'Catholic', '09484207156', 'Bulata Cauyan Negros Occidental', 'kai_luv@yahoo.com'),
(49, 20001557, 'JENNY JOY', 'DEANON', 'O.', 'F', '1992-12-16', 'Dancalan Ilog,Neg, Occ', 'Single', 22, 'Filipino', 'Roman Catholic', '09466021131', 'Dancalan Ilog Neg,Occ', 'jj_deah16@Yahoo.com'),
(50, 20002311, 'ELSIE', 'ELIJAN', 'TABLIGAN', 'F', '1989-10-08', 'Provincial Hospital Bacolod City', 'Single', 24, 'Filipino', 'Baptist', '09128990012', 'Malinao, Dancalan, Ilog Negros Occidental', 'cute_elz20@yahoo.com'),
(51, 20001742, 'GERGEN MAE', 'GERIA', 'GADOT', 'F', '1994-05-19', 'BAcolod City', 'Single', 19, 'Filipino', 'Roman Catholic', '09129207751', 'Brgy.Guiljungan Cauayan Negros Occidental', 'geriaergenmage@yahoo.com'),
(52, 20002106, 'JEROM', 'MELANIO', 'BANDOLON', 'M', '1992-10-12', 'Kabankalan City', 'Single', 21, 'Filipino', 'Cathilic', '09303950074', 'Brgy. Linao, Kabankalan City', 'melaniojerom@yahoo.com'),
(53, 20001853, 'LIEZL', 'SILLEVA', 'ORDOÃ±A', 'F', '1994-05-19', 'Su-ay', 'Single', 19, 'Pilipino', 'Catholic', '09122319960', 'Mapait, Su-ay, Himamaylan City, Negros Occidental', 'lieztryx_16@yahoo.com'),
(54, 20001645, 'ROSELYN', 'ESPADERO', 'T', 'F', '1989-02-11', 'dancalan ilog', 'Single', 24, 'filipino', 'Catholic', '09122292298', 'tapi kab city', 'roselyt.espadero@yahoo.com'),
(55, 123456, 'KEVIN', 'GARGAR', 'DFD', 'M', '2013-07-13', 'bacolod city', 'Single', 12, '', '', '', '', 'Kev@yahoo.cpm');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `ACCOUNT_ID` int(11) NOT NULL,
  `ACCOUNT_NAME` varchar(255) NOT NULL,
  `ACCOUNT_USERNAME` varchar(255) NOT NULL,
  `ACCOUNT_PASSWORD` text NOT NULL,
  `ACCOUNT_TYPE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`ACCOUNT_ID`, `ACCOUNT_NAME`, `ACCOUNT_USERNAME`, `ACCOUNT_PASSWORD`, `ACCOUNT_TYPE`) VALUES
(1, 'Janno Palacios', 'janobe@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Administrator'),
(3, 'Joken Villanueva', 'joken@yahoo.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Administrator'),
(4, 'Hatch Villanueva', 'hatchvillanueva16@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Registrar'),
(6, 'joenin', 'joenin@yahoo.com', '25f3c6036a19460cd5d3f302fa7b99e5be56cb0e', 'Encoder'),
(7, 'Erick jason Batuto', 'ejbatuto@hotmail.com', 'ee9800e8361e948d0106b38fc6e6311ee238beed', 'Administrator'),
(8, 'joken', 'j@y.c', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Student'),
(9, 'Allan', 'allan@yahoo.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Teacher');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ay`
--
ALTER TABLE `ay`
  ADD PRIMARY KEY (`AY_ID`),
  ADD UNIQUE KEY `acadyr` (`ACADYR`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`CLASS_ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`COURSE_ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DEPT_ID`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`GRADE_ID`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`INST_ID`),
  ADD UNIQUE KEY `INST_EMAIL` (`INST_EMAIL`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`YR_ID`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`MAJOR_ID`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`PHOTO_ID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`ROOM_ID`);

--
-- Indexes for table `schoolyr`
--
ALTER TABLE `schoolyr`
  ADD PRIMARY KEY (`SYID`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`SEM_ID`);

--
-- Indexes for table `studentsubjects`
--
ALTER TABLE `studentsubjects`
  ADD PRIMARY KEY (`STUDSUBJ_ID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`SUBJ_ID`);

--
-- Indexes for table `tblrequirements`
--
ALTER TABLE `tblrequirements`
  ADD PRIMARY KEY (`REQ_ID`);

--
-- Indexes for table `tblstuddetails`
--
ALTER TABLE `tblstuddetails`
  ADD PRIMARY KEY (`DETAIL_ID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`S_ID`),
  ADD UNIQUE KEY `IDNO` (`IDNO`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`ACCOUNT_ID`),
  ADD UNIQUE KEY `ACCOUNT_USERNAME` (`ACCOUNT_USERNAME`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ay`
--
ALTER TABLE `ay`
  MODIFY `AY_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `CLASS_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `COURSE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DEPT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `GRADE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `INST_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `YR_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `major`
--
ALTER TABLE `major`
  MODIFY `MAJOR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `PHOTO_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `ROOM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `schoolyr`
--
ALTER TABLE `schoolyr`
  MODIFY `SYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `SEM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `studentsubjects`
--
ALTER TABLE `studentsubjects`
  MODIFY `STUDSUBJ_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `SUBJ_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=477;

--
-- AUTO_INCREMENT for table `tblrequirements`
--
ALTER TABLE `tblrequirements`
  MODIFY `REQ_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tblstuddetails`
--
ALTER TABLE `tblstuddetails`
  MODIFY `DETAIL_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `S_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `curriculumdb`
--
CREATE DATABASE IF NOT EXISTS `curriculumdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `curriculumdb`;

-- --------------------------------------------------------

--
-- Table structure for table `tblauto`
--

CREATE TABLE `tblauto` (
  `id` int(11) NOT NULL,
  `autostart` varchar(30) NOT NULL,
  `autoend` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauto`
--

INSERT INTO `tblauto` (`id`, `autostart`, `autoend`) VALUES
(1, '100', 35),
(2, '0', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE `tblcourse` (
  `CourseId` int(11) NOT NULL,
  `Course` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcourse`
--

INSERT INTO `tblcourse` (`CourseId`, `Course`) VALUES
(1, 'BSIT'),
(5, 'BEED');

-- --------------------------------------------------------

--
-- Table structure for table `tblcurriculum`
--

CREATE TABLE `tblcurriculum` (
  `CurriculumId` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `CourseId` int(11) NOT NULL,
  `Semester` varchar(35) NOT NULL,
  `YearLevel` varchar(32) NOT NULL,
  `AcademicYear` varchar(30) NOT NULL,
  `PreRequisite` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcurriculum`
--

INSERT INTO `tblcurriculum` (`CurriculumId`, `SubjectId`, `CourseId`, `Semester`, `YearLevel`, `AcademicYear`, `PreRequisite`) VALUES
(1, 1, 1, 'First', 'First', '2016-2017', 'None'),
(2, 2, 1, 'First', 'First', '2016-2017', 'None'),
(3, 1, 1, 'First', 'Second', '2016-2017', 'ENG 11'),
(4, 1, 1, 'Second', 'First', '2016-2017', 'None'),
(5, 2, 2, 'First', 'First', '2016-2017', 'None'),
(6, 2, 2, 'First', 'Second', '2016-2017', 'MATH 11');

-- --------------------------------------------------------

--
-- Table structure for table `tblgrades`
--

CREATE TABLE `tblgrades` (
  `GradesId` int(11) NOT NULL,
  `CourseId` int(11) NOT NULL,
  `IdNo` varchar(90) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `Grades` double NOT NULL,
  `YearLevel` varchar(32) NOT NULL,
  `Sem` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblgrades`
--

INSERT INTO `tblgrades` (`GradesId`, `CourseId`, `IdNo`, `SubjectId`, `Grades`, `YearLevel`, `Sem`) VALUES
(1, 1, '123123', 3, 1, 'First', 'First'),
(2, 1, '123123', 4, 2, 'First', 'First'),
(3, 1, '123123', 5, 2, 'First', 'First'),
(4, 1, '123123', 6, 2, 'First', 'First'),
(5, 1, '123123', 7, 2.3, 'First', 'First'),
(6, 1, '123123', 8, 2.1, 'First', 'First'),
(7, 1, '123123', 9, 1.3, 'First', 'First'),
(8, 1, '123123', 10, 0, 'First', 'Second'),
(9, 1, '123123', 11, 0, 'First', 'Second'),
(10, 1, '123123', 12, 0, 'First', 'Second'),
(11, 1, '123123', 13, 0, 'First', 'Second'),
(12, 1, '123123', 14, 0, 'First', 'Second'),
(13, 1, '123123', 15, 0, 'First', 'Second'),
(14, 1, '123123', 16, 0, 'First', 'Second'),
(15, 1, '123123', 17, 0, 'First', 'Second'),
(16, 1, '123123', 18, 0, 'First', 'Second'),
(17, 1, '123123', 19, 0, 'Second', 'First'),
(18, 1, '123123', 20, 0, 'Second', 'First'),
(19, 1, '123123', 21, 0, 'Second', 'First'),
(20, 1, '123123', 22, 0, 'Second', 'First'),
(21, 1, '123123', 23, 0, 'Second', 'First'),
(22, 1, '123123', 24, 0, 'Second', 'First'),
(23, 1, '123123', 25, 0, 'Second', 'First'),
(24, 1, '123123', 26, 0, 'Second', 'First'),
(25, 1, '123123', 27, 0, 'Second', 'First'),
(26, 1, '123123', 28, 0, 'Second', 'Second'),
(27, 1, '123123', 29, 0, 'Second', 'Second'),
(28, 1, '123123', 30, 0, 'Second', 'Second'),
(29, 1, '123123', 31, 0, 'Second', 'Second'),
(30, 1, '123123', 32, 0, 'Second', 'Second'),
(31, 1, '123123', 33, 0, 'Second', 'Second'),
(32, 1, '123123', 34, 0, 'Second', 'Second'),
(33, 1, '123123', 35, 0, 'Second', 'Second'),
(34, 1, '123123', 36, 0, 'Third', 'First'),
(35, 1, '123123', 37, 0, 'Third', 'First'),
(36, 1, '123123', 38, 0, 'Third', 'First'),
(37, 1, '123123', 39, 0, 'Third', 'First'),
(38, 1, '123123', 40, 0, 'Third', 'First'),
(39, 1, '123123', 41, 0, 'Third', 'First'),
(40, 1, '123123', 42, 0, 'Third', 'First'),
(41, 1, '123123', 43, 0, 'Third', 'First'),
(42, 1, '123123', 44, 0, 'Third', 'Second'),
(43, 1, '123123', 45, 0, 'Third', 'Second'),
(44, 1, '123123', 46, 0, 'Third', 'Second'),
(45, 1, '123123', 47, 0, 'Third', 'Second'),
(46, 1, '123123', 48, 0, 'Third', 'Second'),
(47, 1, '123123', 49, 0, 'Third', 'Second'),
(48, 1, '123123', 50, 0, 'Third', 'Second'),
(49, 1, '123123', 51, 0, 'Third', 'Second'),
(50, 1, '123123', 52, 0, 'Fourth', 'First'),
(51, 1, '123123', 53, 0, 'Fourth', 'First'),
(52, 1, '123123', 54, 0, 'Fourth', 'First'),
(53, 1, '123123', 55, 0, 'Fourth', 'First'),
(54, 1, '123123', 56, 0, 'Fourth', 'First'),
(55, 1, '123123', 57, 0, 'Fourth', 'First'),
(56, 1, '123123', 58, 0, 'Fourth', 'Second'),
(57, 1, '123123', 59, 1.1, 'First', 'First'),
(58, 1, '123123', 60, 1.2, 'First', 'First'),
(59, 1, '1234322', 3, 3.2, 'First', 'First'),
(60, 1, '1234322', 4, 2, 'First', 'First'),
(61, 1, '1234322', 5, 3.6, 'First', 'First'),
(62, 1, '1234322', 6, 1, 'First', 'First'),
(63, 1, '1234322', 7, 2.1, 'First', 'First'),
(64, 1, '1234322', 8, 2, 'First', 'First'),
(65, 1, '1234322', 9, 3, 'First', 'First'),
(66, 1, '1234322', 10, 0, 'First', 'Second'),
(67, 1, '1234322', 11, 0, 'First', 'Second'),
(68, 1, '1234322', 12, 0, 'First', 'Second'),
(69, 1, '1234322', 13, 0, 'First', 'Second'),
(70, 1, '1234322', 14, 0, 'First', 'Second'),
(71, 1, '1234322', 15, 0, 'First', 'Second'),
(72, 1, '1234322', 16, 0, 'First', 'Second'),
(73, 1, '1234322', 17, 0, 'First', 'Second'),
(74, 1, '1234322', 18, 0, 'First', 'Second'),
(75, 1, '1234322', 19, 0, 'Second', 'First'),
(76, 1, '1234322', 20, 0, 'Second', 'First'),
(77, 1, '1234322', 21, 0, 'Second', 'First'),
(78, 1, '1234322', 22, 0, 'Second', 'First'),
(79, 1, '1234322', 23, 0, 'Second', 'First'),
(80, 1, '1234322', 24, 0, 'Second', 'First'),
(81, 1, '1234322', 25, 0, 'Second', 'First'),
(82, 1, '1234322', 26, 0, 'Second', 'First'),
(83, 1, '1234322', 27, 0, 'Second', 'First'),
(84, 1, '1234322', 28, 0, 'Second', 'Second'),
(85, 1, '1234322', 29, 0, 'Second', 'Second'),
(86, 1, '1234322', 30, 0, 'Second', 'Second'),
(87, 1, '1234322', 31, 0, 'Second', 'Second'),
(88, 1, '1234322', 32, 0, 'Second', 'Second'),
(89, 1, '1234322', 33, 0, 'Second', 'Second'),
(90, 1, '1234322', 34, 0, 'Second', 'Second'),
(91, 1, '1234322', 35, 0, 'Second', 'Second'),
(92, 1, '1234322', 36, 0, 'Third', 'First'),
(93, 1, '1234322', 37, 0, 'Third', 'First'),
(94, 1, '1234322', 38, 0, 'Third', 'First'),
(95, 1, '1234322', 39, 0, 'Third', 'First'),
(96, 1, '1234322', 40, 0, 'Third', 'First'),
(97, 1, '1234322', 41, 0, 'Third', 'First'),
(98, 1, '1234322', 42, 0, 'Third', 'First'),
(99, 1, '1234322', 43, 0, 'Third', 'First'),
(100, 1, '1234322', 44, 0, 'Third', 'Second'),
(101, 1, '1234322', 45, 0, 'Third', 'Second'),
(102, 1, '1234322', 46, 0, 'Third', 'Second'),
(103, 1, '1234322', 47, 0, 'Third', 'Second'),
(104, 1, '1234322', 48, 0, 'Third', 'Second'),
(105, 1, '1234322', 49, 0, 'Third', 'Second'),
(106, 1, '1234322', 50, 0, 'Third', 'Second'),
(107, 1, '1234322', 51, 0, 'Third', 'Second'),
(108, 1, '1234322', 52, 0, 'Fourth', 'First'),
(109, 1, '1234322', 53, 0, 'Fourth', 'First'),
(110, 1, '1234322', 54, 0, 'Fourth', 'First'),
(111, 1, '1234322', 55, 0, 'Fourth', 'First'),
(112, 1, '1234322', 56, 0, 'Fourth', 'First'),
(113, 1, '1234322', 57, 0, 'Fourth', 'First'),
(114, 1, '1234322', 58, 0, 'Fourth', 'Second'),
(115, 1, '1234322', 59, 1.1, 'First', 'First'),
(116, 1, '1234322', 60, 1.3, 'First', 'First'),
(117, 1, '312312312', 3, 0, 'First', 'First'),
(118, 1, '312312312', 4, 0, 'First', 'First'),
(119, 1, '312312312', 5, 0, 'First', 'First'),
(120, 1, '312312312', 6, 0, 'First', 'First'),
(121, 1, '312312312', 7, 0, 'First', 'First'),
(122, 1, '312312312', 8, 0, 'First', 'First'),
(123, 1, '312312312', 9, 0, 'First', 'First'),
(124, 1, '312312312', 10, 0, 'First', 'Second'),
(125, 1, '312312312', 11, 0, 'First', 'Second'),
(126, 1, '312312312', 12, 0, 'First', 'Second'),
(127, 1, '312312312', 13, 0, 'First', 'Second'),
(128, 1, '312312312', 14, 0, 'First', 'Second'),
(129, 1, '312312312', 15, 0, 'First', 'Second'),
(130, 1, '312312312', 16, 0, 'First', 'Second'),
(131, 1, '312312312', 17, 0, 'First', 'Second'),
(132, 1, '312312312', 18, 0, 'First', 'Second'),
(133, 1, '312312312', 19, 0, 'Second', 'First'),
(134, 1, '312312312', 20, 0, 'Second', 'First'),
(135, 1, '312312312', 21, 0, 'Second', 'First'),
(136, 1, '312312312', 22, 0, 'Second', 'First'),
(137, 1, '312312312', 23, 0, 'Second', 'First'),
(138, 1, '312312312', 24, 0, 'Second', 'First'),
(139, 1, '312312312', 25, 0, 'Second', 'First'),
(140, 1, '312312312', 26, 0, 'Second', 'First'),
(141, 1, '312312312', 27, 0, 'Second', 'First'),
(142, 1, '312312312', 28, 0, 'Second', 'Second'),
(143, 1, '312312312', 29, 0, 'Second', 'Second'),
(144, 1, '312312312', 30, 0, 'Second', 'Second'),
(145, 1, '312312312', 31, 0, 'Second', 'Second'),
(146, 1, '312312312', 32, 0, 'Second', 'Second'),
(147, 1, '312312312', 33, 0, 'Second', 'Second'),
(148, 1, '312312312', 34, 0, 'Second', 'Second'),
(149, 1, '312312312', 35, 0, 'Second', 'Second'),
(150, 1, '312312312', 36, 0, 'Third', 'First'),
(151, 1, '312312312', 37, 0, 'Third', 'First'),
(152, 1, '312312312', 38, 0, 'Third', 'First'),
(153, 1, '312312312', 39, 0, 'Third', 'First'),
(154, 1, '312312312', 40, 0, 'Third', 'First'),
(155, 1, '312312312', 41, 0, 'Third', 'First'),
(156, 1, '312312312', 42, 0, 'Third', 'First'),
(157, 1, '312312312', 43, 0, 'Third', 'First'),
(158, 1, '312312312', 44, 0, 'Third', 'Second'),
(159, 1, '312312312', 45, 0, 'Third', 'Second'),
(160, 1, '312312312', 46, 0, 'Third', 'Second'),
(161, 1, '312312312', 47, 0, 'Third', 'Second'),
(162, 1, '312312312', 48, 0, 'Third', 'Second'),
(163, 1, '312312312', 49, 0, 'Third', 'Second'),
(164, 1, '312312312', 50, 0, 'Third', 'Second'),
(165, 1, '312312312', 51, 0, 'Third', 'Second'),
(166, 1, '312312312', 52, 0, 'Fourth', 'First'),
(167, 1, '312312312', 53, 0, 'Fourth', 'First'),
(168, 1, '312312312', 54, 0, 'Fourth', 'First'),
(169, 1, '312312312', 55, 0, 'Fourth', 'First'),
(170, 1, '312312312', 56, 0, 'Fourth', 'First'),
(171, 1, '312312312', 57, 0, 'Fourth', 'First'),
(172, 1, '312312312', 58, 0, 'Fourth', 'Second'),
(173, 1, '312312312', 59, 0, 'First', 'First'),
(174, 1, '312312312', 60, 0, 'First', 'First'),
(175, 1, '121031', 3, 0, 'First', 'First'),
(176, 1, '121031', 4, 0, 'First', 'First'),
(177, 1, '121031', 5, 0, 'First', 'First'),
(178, 1, '121031', 6, 0, 'First', 'First'),
(179, 1, '121031', 7, 0, 'First', 'First'),
(180, 1, '121031', 8, 0, 'First', 'First'),
(181, 1, '121031', 9, 0, 'First', 'First'),
(182, 1, '121031', 10, 0, 'First', 'Second'),
(183, 1, '121031', 11, 0, 'First', 'Second'),
(184, 1, '121031', 12, 0, 'First', 'Second'),
(185, 1, '121031', 13, 0, 'First', 'Second'),
(186, 1, '121031', 14, 0, 'First', 'Second'),
(187, 1, '121031', 15, 0, 'First', 'Second'),
(188, 1, '121031', 16, 0, 'First', 'Second'),
(189, 1, '121031', 17, 0, 'First', 'Second'),
(190, 1, '121031', 18, 0, 'First', 'Second'),
(191, 1, '121031', 19, 0, 'Second', 'First'),
(192, 1, '121031', 20, 0, 'Second', 'First'),
(193, 1, '121031', 21, 0, 'Second', 'First'),
(194, 1, '121031', 22, 0, 'Second', 'First'),
(195, 1, '121031', 23, 0, 'Second', 'First'),
(196, 1, '121031', 24, 0, 'Second', 'First'),
(197, 1, '121031', 25, 0, 'Second', 'First'),
(198, 1, '121031', 26, 0, 'Second', 'First'),
(199, 1, '121031', 27, 0, 'Second', 'First'),
(200, 1, '121031', 28, 0, 'Second', 'Second'),
(201, 1, '121031', 29, 0, 'Second', 'Second'),
(202, 1, '121031', 30, 0, 'Second', 'Second'),
(203, 1, '121031', 31, 0, 'Second', 'Second'),
(204, 1, '121031', 32, 0, 'Second', 'Second'),
(205, 1, '121031', 33, 0, 'Second', 'Second'),
(206, 1, '121031', 34, 0, 'Second', 'Second'),
(207, 1, '121031', 35, 0, 'Second', 'Second'),
(208, 1, '121031', 36, 0, 'Third', 'First'),
(209, 1, '121031', 37, 0, 'Third', 'First'),
(210, 1, '121031', 38, 0, 'Third', 'First'),
(211, 1, '121031', 39, 0, 'Third', 'First'),
(212, 1, '121031', 40, 0, 'Third', 'First'),
(213, 1, '121031', 41, 0, 'Third', 'First'),
(214, 1, '121031', 42, 0, 'Third', 'First'),
(215, 1, '121031', 43, 0, 'Third', 'First'),
(216, 1, '121031', 44, 0, 'Third', 'Second'),
(217, 1, '121031', 45, 0, 'Third', 'Second'),
(218, 1, '121031', 46, 0, 'Third', 'Second'),
(219, 1, '121031', 47, 0, 'Third', 'Second'),
(220, 1, '121031', 48, 0, 'Third', 'Second'),
(221, 1, '121031', 49, 0, 'Third', 'Second'),
(222, 1, '121031', 50, 0, 'Third', 'Second'),
(223, 1, '121031', 51, 0, 'Third', 'Second'),
(224, 1, '121031', 52, 0, 'Fourth', 'First'),
(225, 1, '121031', 53, 0, 'Fourth', 'First'),
(226, 1, '121031', 54, 0, 'Fourth', 'First'),
(227, 1, '121031', 55, 0, 'Fourth', 'First'),
(228, 1, '121031', 56, 0, 'Fourth', 'First'),
(229, 1, '121031', 57, 0, 'Fourth', 'First'),
(230, 1, '121031', 58, 0, 'Fourth', 'Second'),
(231, 1, '121031', 59, 0, 'First', 'First'),
(232, 1, '121031', 60, 0, 'First', 'First'),
(233, 1, '312312290', 3, 0, 'First', 'First'),
(234, 1, '312312290', 4, 0, 'First', 'First'),
(235, 1, '312312290', 5, 0, 'First', 'First'),
(236, 1, '312312290', 6, 0, 'First', 'First'),
(237, 1, '312312290', 7, 0, 'First', 'First'),
(238, 1, '312312290', 8, 0, 'First', 'First'),
(239, 1, '312312290', 9, 0, 'First', 'First'),
(240, 1, '312312290', 10, 0, 'First', 'Second'),
(241, 1, '312312290', 11, 0, 'First', 'Second'),
(242, 1, '312312290', 12, 0, 'First', 'Second'),
(243, 1, '312312290', 13, 0, 'First', 'Second'),
(244, 1, '312312290', 14, 0, 'First', 'Second'),
(245, 1, '312312290', 15, 0, 'First', 'Second'),
(246, 1, '312312290', 16, 0, 'First', 'Second'),
(247, 1, '312312290', 17, 0, 'First', 'Second'),
(248, 1, '312312290', 18, 0, 'First', 'Second'),
(249, 1, '312312290', 19, 0, 'Second', 'First'),
(250, 1, '312312290', 20, 0, 'Second', 'First'),
(251, 1, '312312290', 21, 0, 'Second', 'First'),
(252, 1, '312312290', 22, 0, 'Second', 'First'),
(253, 1, '312312290', 23, 0, 'Second', 'First'),
(254, 1, '312312290', 24, 0, 'Second', 'First'),
(255, 1, '312312290', 25, 0, 'Second', 'First'),
(256, 1, '312312290', 26, 0, 'Second', 'First'),
(257, 1, '312312290', 27, 0, 'Second', 'First'),
(258, 1, '312312290', 28, 0, 'Second', 'Second'),
(259, 1, '312312290', 29, 0, 'Second', 'Second'),
(260, 1, '312312290', 30, 0, 'Second', 'Second'),
(261, 1, '312312290', 31, 0, 'Second', 'Second'),
(262, 1, '312312290', 32, 0, 'Second', 'Second'),
(263, 1, '312312290', 33, 0, 'Second', 'Second'),
(264, 1, '312312290', 34, 0, 'Second', 'Second'),
(265, 1, '312312290', 35, 0, 'Second', 'Second'),
(266, 1, '312312290', 36, 0, 'Third', 'First'),
(267, 1, '312312290', 37, 0, 'Third', 'First'),
(268, 1, '312312290', 38, 0, 'Third', 'First'),
(269, 1, '312312290', 39, 0, 'Third', 'First'),
(270, 1, '312312290', 40, 0, 'Third', 'First'),
(271, 1, '312312290', 41, 0, 'Third', 'First'),
(272, 1, '312312290', 42, 0, 'Third', 'First'),
(273, 1, '312312290', 43, 0, 'Third', 'First'),
(274, 1, '312312290', 44, 0, 'Third', 'Second'),
(275, 1, '312312290', 45, 0, 'Third', 'Second'),
(276, 1, '312312290', 46, 0, 'Third', 'Second'),
(277, 1, '312312290', 47, 0, 'Third', 'Second'),
(278, 1, '312312290', 48, 0, 'Third', 'Second'),
(279, 1, '312312290', 49, 0, 'Third', 'Second'),
(280, 1, '312312290', 50, 0, 'Third', 'Second'),
(281, 1, '312312290', 51, 0, 'Third', 'Second'),
(282, 1, '312312290', 52, 0, 'Fourth', 'First'),
(283, 1, '312312290', 53, 0, 'Fourth', 'First'),
(284, 1, '312312290', 54, 0, 'Fourth', 'First'),
(285, 1, '312312290', 55, 0, 'Fourth', 'First'),
(286, 1, '312312290', 56, 0, 'Fourth', 'First'),
(287, 1, '312312290', 57, 0, 'Fourth', 'First'),
(288, 1, '312312290', 58, 0, 'Fourth', 'Second'),
(289, 1, '312312290', 59, 0, 'First', 'First'),
(290, 1, '312312290', 60, 0, 'First', 'First'),
(291, 1, '312312312-32', 3, 0, 'First', 'First'),
(292, 1, '312312312-32', 4, 0, 'First', 'First'),
(293, 1, '312312312-32', 5, 0, 'First', 'First'),
(294, 1, '312312312-32', 6, 0, 'First', 'First'),
(295, 1, '312312312-32', 7, 0, 'First', 'First'),
(296, 1, '312312312-32', 8, 0, 'First', 'First'),
(297, 1, '312312312-32', 9, 0, 'First', 'First'),
(298, 1, '312312312-32', 10, 0, 'First', 'Second'),
(299, 1, '312312312-32', 11, 0, 'First', 'Second'),
(300, 1, '312312312-32', 12, 0, 'First', 'Second'),
(301, 1, '312312312-32', 13, 0, 'First', 'Second'),
(302, 1, '312312312-32', 14, 0, 'First', 'Second'),
(303, 1, '312312312-32', 15, 0, 'First', 'Second'),
(304, 1, '312312312-32', 16, 0, 'First', 'Second'),
(305, 1, '312312312-32', 17, 0, 'First', 'Second'),
(306, 1, '312312312-32', 18, 0, 'First', 'Second'),
(307, 1, '312312312-32', 19, 0, 'Second', 'First'),
(308, 1, '312312312-32', 20, 0, 'Second', 'First'),
(309, 1, '312312312-32', 21, 0, 'Second', 'First'),
(310, 1, '312312312-32', 22, 0, 'Second', 'First'),
(311, 1, '312312312-32', 23, 0, 'Second', 'First'),
(312, 1, '312312312-32', 24, 0, 'Second', 'First'),
(313, 1, '312312312-32', 25, 0, 'Second', 'First'),
(314, 1, '312312312-32', 26, 0, 'Second', 'First'),
(315, 1, '312312312-32', 27, 0, 'Second', 'First'),
(316, 1, '312312312-32', 28, 0, 'Second', 'Second'),
(317, 1, '312312312-32', 29, 0, 'Second', 'Second'),
(318, 1, '312312312-32', 30, 0, 'Second', 'Second'),
(319, 1, '312312312-32', 31, 0, 'Second', 'Second'),
(320, 1, '312312312-32', 32, 0, 'Second', 'Second'),
(321, 1, '312312312-32', 33, 0, 'Second', 'Second'),
(322, 1, '312312312-32', 34, 0, 'Second', 'Second'),
(323, 1, '312312312-32', 35, 0, 'Second', 'Second'),
(324, 1, '312312312-32', 36, 0, 'Third', 'First'),
(325, 1, '312312312-32', 37, 0, 'Third', 'First'),
(326, 1, '312312312-32', 38, 0, 'Third', 'First'),
(327, 1, '312312312-32', 39, 0, 'Third', 'First'),
(328, 1, '312312312-32', 40, 0, 'Third', 'First'),
(329, 1, '312312312-32', 41, 0, 'Third', 'First'),
(330, 1, '312312312-32', 42, 0, 'Third', 'First'),
(331, 1, '312312312-32', 43, 0, 'Third', 'First'),
(332, 1, '312312312-32', 44, 0, 'Third', 'Second'),
(333, 1, '312312312-32', 45, 0, 'Third', 'Second'),
(334, 1, '312312312-32', 46, 0, 'Third', 'Second'),
(335, 1, '312312312-32', 47, 0, 'Third', 'Second'),
(336, 1, '312312312-32', 48, 0, 'Third', 'Second'),
(337, 1, '312312312-32', 49, 0, 'Third', 'Second'),
(338, 1, '312312312-32', 50, 0, 'Third', 'Second'),
(339, 1, '312312312-32', 51, 0, 'Third', 'Second'),
(340, 1, '312312312-32', 52, 0, 'Fourth', 'First'),
(341, 1, '312312312-32', 53, 0, 'Fourth', 'First'),
(342, 1, '312312312-32', 54, 0, 'Fourth', 'First'),
(343, 1, '312312312-32', 55, 0, 'Fourth', 'First'),
(344, 1, '312312312-32', 56, 0, 'Fourth', 'First'),
(345, 1, '312312312-32', 57, 0, 'Fourth', 'First'),
(346, 1, '312312312-32', 58, 0, 'Fourth', 'Second'),
(347, 1, '312312312-32', 59, 0, 'First', 'First'),
(348, 1, '312312312-32', 60, 0, 'First', 'First'),
(349, 1, '312312312-32', 3, 0, 'First', 'First'),
(350, 1, '312312312-32', 4, 0, 'First', 'First'),
(351, 1, '312312312-32', 5, 0, 'First', 'First'),
(352, 1, '312312312-32', 6, 0, 'First', 'First'),
(353, 1, '312312312-32', 7, 0, 'First', 'First'),
(354, 1, '312312312-32', 8, 0, 'First', 'First'),
(355, 1, '312312312-32', 9, 0, 'First', 'First'),
(356, 1, '312312312-32', 10, 0, 'First', 'Second'),
(357, 1, '312312312-32', 11, 0, 'First', 'Second'),
(358, 1, '312312312-32', 12, 0, 'First', 'Second'),
(359, 1, '312312312-32', 13, 0, 'First', 'Second'),
(360, 1, '312312312-32', 14, 0, 'First', 'Second'),
(361, 1, '312312312-32', 15, 0, 'First', 'Second'),
(362, 1, '312312312-32', 16, 0, 'First', 'Second'),
(363, 1, '312312312-32', 17, 0, 'First', 'Second'),
(364, 1, '312312312-32', 18, 0, 'First', 'Second'),
(365, 1, '312312312-32', 19, 0, 'Second', 'First'),
(366, 1, '312312312-32', 20, 0, 'Second', 'First'),
(367, 1, '312312312-32', 21, 0, 'Second', 'First'),
(368, 1, '312312312-32', 22, 0, 'Second', 'First'),
(369, 1, '312312312-32', 23, 0, 'Second', 'First'),
(370, 1, '312312312-32', 24, 0, 'Second', 'First'),
(371, 1, '312312312-32', 25, 0, 'Second', 'First'),
(372, 1, '312312312-32', 26, 0, 'Second', 'First'),
(373, 1, '312312312-32', 27, 0, 'Second', 'First'),
(374, 1, '312312312-32', 28, 0, 'Second', 'Second'),
(375, 1, '312312312-32', 29, 0, 'Second', 'Second'),
(376, 1, '312312312-32', 30, 0, 'Second', 'Second'),
(377, 1, '312312312-32', 31, 0, 'Second', 'Second'),
(378, 1, '312312312-32', 32, 0, 'Second', 'Second'),
(379, 1, '312312312-32', 33, 0, 'Second', 'Second'),
(380, 1, '312312312-32', 34, 0, 'Second', 'Second'),
(381, 1, '312312312-32', 35, 0, 'Second', 'Second'),
(382, 1, '312312312-32', 36, 0, 'Third', 'First'),
(383, 1, '312312312-32', 37, 0, 'Third', 'First'),
(384, 1, '312312312-32', 38, 0, 'Third', 'First'),
(385, 1, '312312312-32', 39, 0, 'Third', 'First'),
(386, 1, '312312312-32', 40, 0, 'Third', 'First'),
(387, 1, '312312312-32', 41, 0, 'Third', 'First'),
(388, 1, '312312312-32', 42, 0, 'Third', 'First'),
(389, 1, '312312312-32', 43, 0, 'Third', 'First'),
(390, 1, '312312312-32', 44, 0, 'Third', 'Second'),
(391, 1, '312312312-32', 45, 0, 'Third', 'Second'),
(392, 1, '312312312-32', 46, 0, 'Third', 'Second'),
(393, 1, '312312312-32', 47, 0, 'Third', 'Second'),
(394, 1, '312312312-32', 48, 0, 'Third', 'Second'),
(395, 1, '312312312-32', 49, 0, 'Third', 'Second'),
(396, 1, '312312312-32', 50, 0, 'Third', 'Second'),
(397, 1, '312312312-32', 51, 0, 'Third', 'Second'),
(398, 1, '312312312-32', 52, 0, 'Fourth', 'First'),
(399, 1, '312312312-32', 53, 0, 'Fourth', 'First'),
(400, 1, '312312312-32', 54, 0, 'Fourth', 'First'),
(401, 1, '312312312-32', 55, 0, 'Fourth', 'First'),
(402, 1, '312312312-32', 56, 0, 'Fourth', 'First'),
(403, 1, '312312312-32', 57, 0, 'Fourth', 'First'),
(404, 1, '312312312-32', 58, 0, 'Fourth', 'Second'),
(405, 1, '312312312-32', 59, 0, 'First', 'First'),
(406, 1, '312312312-32', 60, 0, 'First', 'First');

-- --------------------------------------------------------

--
-- Table structure for table `tblprerequisite`
--

CREATE TABLE `tblprerequisite` (
  `PreRequisiteId` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `Pre1` varchar(90) NOT NULL,
  `Pre2` varchar(90) NOT NULL,
  `Pre3` varchar(90) NOT NULL,
  `Pre4` varchar(90) NOT NULL,
  `Pre5` varchar(90) NOT NULL,
  `Pre6` varchar(90) NOT NULL,
  `Pre7` varchar(90) NOT NULL,
  `Pre8` varchar(90) NOT NULL,
  `Pre9` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblprerequisite`
--

INSERT INTO `tblprerequisite` (`PreRequisiteId`, `SubjectId`, `Pre1`, `Pre2`, `Pre3`, `Pre4`, `Pre5`, `Pre6`, `Pre7`, `Pre8`, `Pre9`) VALUES
(1, 3, '', '', '', '', '', '', '', '', ''),
(2, 4, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None'),
(3, 5, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None'),
(4, 6, '', '', '', '', '', '', '', '', ''),
(5, 7, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None'),
(6, 8, '', '', '', '', '', '', '', '', ''),
(7, 9, '', '', '', '', '', '', '', '', ''),
(8, 10, 'ENG 11', '', '', '', '', '', '', '', ''),
(9, 11, '', '', '', '', '', '', '', '', ''),
(10, 12, '', '', '', '', '', '', '', '', ''),
(11, 13, '', '', '', '', '', '', '', '', ''),
(12, 14, 'SOC SCI 11', '', '', '', '', '', '', '', ''),
(13, 15, '', '', '', '', '', '', '', '', ''),
(14, 16, '', '', '', '', '', '', '', '', ''),
(15, 17, '', '', '', '', '', '', '', '', ''),
(16, 18, '', '', '', '', '', '', '', '', ''),
(17, 19, '', '', '', '', '', '', '', '', ''),
(18, 20, '', '', '', '', '', '', '', '', ''),
(19, 21, '', '', '', '', '', '', '', '', ''),
(20, 22, '', '', '', '', '', '', '', '', ''),
(21, 23, '', '', '', '', '', '', '', '', ''),
(22, 24, '', '', '', '', '', '', '', '', ''),
(23, 25, '', '', '', '', '', '', '', '', ''),
(24, 26, '', '', '', '', '', '', '', '', ''),
(25, 27, '', '', '', '', '', '', '', '', ''),
(26, 28, '', '', '', '', '', '', '', '', ''),
(27, 29, '', '', '', '', '', '', '', '', ''),
(28, 30, 'SOC SCI 12', '', '', '', '', '', '', '', ''),
(29, 31, '', '', '', '', '', '', '', '', ''),
(30, 32, '', '', '', '', '', '', '', '', ''),
(31, 33, '', '', '', '', '', '', '', '', ''),
(32, 34, '', '', '', '', '', '', '', '', ''),
(33, 35, '', '', '', '', '', '', '', '', ''),
(34, 36, '', '', '', '', '', '', '', '', ''),
(35, 37, '', '', '', '', '', '', '', '', ''),
(36, 38, '', '', '', '', '', '', '', '', ''),
(37, 39, '', '', '', '', '', '', '', '', ''),
(38, 40, '', '', '', '', '', '', '', '', ''),
(39, 41, '', '', '', '', '', '', '', '', ''),
(40, 42, '', '', '', '', '', '', '', '', ''),
(41, 43, 'SOC SCI 13', '', '', '', '', '', '', '', ''),
(42, 44, '', '', '', '', '', '', '', '', ''),
(43, 45, '', '', '', '', '', '', '', '', ''),
(44, 46, '', '', '', '', '', '', '', '', ''),
(45, 47, '', '', '', '', '', '', '', '', ''),
(46, 48, '', '', '', '', '', '', '', '', ''),
(47, 49, '', '', '', '', '', '', '', '', ''),
(48, 50, '', '', '', '', '', '', '', '', ''),
(49, 51, '', '', '', '', '', '', '', '', ''),
(50, 52, '', '', '', '', '', '', '', '', ''),
(51, 53, '', '', '', '', '', '', '', '', ''),
(52, 54, '', '', '', '', '', '', '', '', ''),
(53, 55, '', '', '', '', '', '', '', '', ''),
(54, 56, '', '', '', '', '', '', '', '', ''),
(55, 57, '', '', '', '', '', '', '', '', ''),
(56, 58, '', '', '', '', '', '', '', '', ''),
(57, 59, '', '', '', '', '', '', '', '', ''),
(58, 60, '', '', '', '', '', '', '', '', ''),
(59, 10025, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None'),
(60, 10027, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None'),
(62, 10028, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None'),
(63, 10029, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None'),
(64, 10031, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None'),
(65, 10032, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None'),
(66, 10033, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None'),
(67, 62, 'FIL 11', 'HIST 12', 'IT 113', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `ID` int(11) NOT NULL,
  `IdNo` varchar(90) NOT NULL,
  `Firstname` varchar(255) NOT NULL,
  `Lastname` varchar(255) NOT NULL,
  `MI` varchar(255) NOT NULL,
  `HomeAddress` varchar(255) NOT NULL,
  `Sex` varchar(35) NOT NULL,
  `CourseId` int(11) NOT NULL,
  `YearLevel` varchar(32) NOT NULL,
  `StudentPhoto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`ID`, `IdNo`, `Firstname`, `Lastname`, `MI`, `HomeAddress`, `Sex`, `CourseId`, `YearLevel`, `StudentPhoto`) VALUES
(1, '123123', 'Mark Antony', 'Fernandez', 'R', 'Kalinga Aklan', 'Male', 1, 'First', 'kisspng-reset-button-clip-art-update-cliparts-5aae91224c2291.1980798515213898583119.jpg'),
(3, '312312312', 'James', 'Yap', 'E', 'Aklan', 'Male', 1, 'First', 'file-clip-art-file-folder.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubject`
--

CREATE TABLE `tblsubject` (
  `SubjectId` int(11) NOT NULL,
  `Subject` varchar(128) NOT NULL,
  `DescriptiveTitle` varchar(255) NOT NULL,
  `LecUnit` int(11) NOT NULL,
  `LabUnit` int(11) NOT NULL,
  `CourseId` int(11) NOT NULL,
  `YearLevel` varchar(30) NOT NULL,
  `Semester` varchar(30) NOT NULL,
  `PreRequisite` varchar(255) NOT NULL,
  `Level` int(11) NOT NULL,
  `PreTaken` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubject`
--

INSERT INTO `tblsubject` (`SubjectId`, `Subject`, `DescriptiveTitle`, `LecUnit`, `LabUnit`, `CourseId`, `YearLevel`, `Semester`, `PreRequisite`, `Level`, `PreTaken`) VALUES
(3, 'ENG 11', 'STUDY AND THINKING SKILLS', 3, 0, 1, 'First', 'First', 'None', 1, 0),
(4, 'MATH 11', 'COLLEGE ALGEBRA', 3, 0, 1, 'First', 'First', 'None', 1, 0),
(5, 'SOC SCI 11', 'GENERAL PSYCHOLOGY WITH DRUG ABUSE PREVENTION', 3, 0, 1, 'First', 'First', 'None', 1, 0),
(6, 'NAT SCI 11', 'BIOLOGICAL SCIENCE', 3, 0, 1, 'First', 'First', 'None', 1, 0),
(7, 'IT 101', 'IT FUNDAMENTALS', 2, 1, 1, 'First', 'First', 'None', 1, 0),
(8, 'IT 102', 'PROGRAMMING LANGUAGE (LOGIC FORMULATION)', 2, 1, 1, 'First', 'First', 'None', 1, 0),
(9, 'NSTP 11', 'NATIONAL SERVICE TRAINING PROGRAM 11', 3, 0, 1, 'First', 'First', 'None', 1, 0),
(10, 'ENG 12', 'WRITING IN THE DISCIPLINE', 3, 0, 1, 'First', 'Second', 'ENG 11', 1, 0),
(11, 'FIL 12', 'PAGBASA AT PAGSULAT TUNGO SA PANANALIKSIK', 3, 0, 1, 'First', 'Second', 'FIL 11', 1, 0),
(12, 'MATH 13', 'PLANE AND SPHERICAL TRIGONOMETRY', 4, 0, 1, 'First', 'Second', 'MATH 11', 1, 0),
(13, 'NAT SCI 12', 'GENERAL PHYSICS ', 3, 0, 1, 'First', 'Second', 'NAT SCI 11', 1, 0),
(14, 'SOC SCI 12', 'SOCIETY, CULTURE AND FAMILY PLANNING', 3, 0, 1, 'First', 'Second', 'SOC SCI 11', 1, 0),
(15, 'HUM 11', 'INTRO TO HUMANITIES', 3, 0, 1, 'First', 'Second', 'None', 1, 0),
(16, 'IT 103', 'PROGRAMMING 2 (STRUCTURED COMP PROG)', 2, 1, 1, 'First', 'Second', 'IT 102', 1, 0),
(17, 'PE 12', 'INDIVIDUAL AND DUAL SPORTS', 2, 0, 1, 'First', 'Second', 'PE 11', 1, 0),
(18, 'NSTP 12', 'NATIONAL SERVICE TRAINING PROGRAM 2', 3, 0, 1, 'First', 'Second', 'NSTP 11', 1, 0),
(19, 'BUS COM 11', 'BUSINESS COMMUNICATION', 3, 0, 1, 'Second', 'First', 'ENG 12', 2, 0),
(20, 'FIL 13', 'MASINING NA PAKIKIPAGTALASTASAN', 3, 0, 1, 'Second', 'First', 'FIL 12', 2, 0),
(21, 'HIST 11', 'LIFE AND WORKS OF RIZAL', 3, 0, 1, 'Second', 'First', 'None', 2, 0),
(22, 'IT 104', 'COMPUTER ORGANIZATION', 2, 1, 1, 'Second', 'First', 'IT 103', 2, 0),
(23, 'IT 105', 'OBJECT ORIENTED PROGRAMMING', 2, 1, 1, 'Second', 'First', 'IT 103', 2, 0),
(24, 'IT 106', 'DISCRETE MATHEMATICS', 3, 0, 1, 'Second', 'First', 'MATH 13', 2, 0),
(25, 'IT 107', 'ACCOUNTING PRINCIPLES AND FINANCIAL SYSTEM', 3, 0, 1, 'Second', 'First', 'MATH 13', 2, 0),
(26, 'IT 108', 'PC SERVICING', 2, 1, 1, 'Second', 'First', 'IT 101', 2, 0),
(27, 'PE 13', 'RHYTHMIC ACTIVITIES', 2, 0, 1, 'Second', 'First', 'PE 11', 2, 0),
(28, 'ENG 13', 'SPEECH AND ORAL COMMUNICATION', 3, 0, 1, 'Second', 'Second', 'ENG 13', 2, 0),
(29, 'STAT 12', 'PROBABILITY AND STATISTICS', 4, 0, 1, 'Second', 'Second', 'MATH 13', 2, 0),
(30, 'SOC SCI 13', 'BASIC ECON. W/ TAXATION AND AGRARIAN  REFORM', 3, 0, 1, 'Second', 'Second', 'SOC SCI 12', 2, 0),
(31, 'HIST 12', 'Philippine History Its roots and Development', 3, 0, 1, 'Second', 'Second', 'None', 2, 0),
(32, 'IT 109', 'DATABASE MANAGEMENT SYSTEM', 2, 1, 1, 'Second', 'Second', 'IT 103,IT 106', 2, 0),
(33, 'IT 110', 'OPERATING SYSTEM APPLICATIONS', 2, 1, 1, 'Second', 'Second', 'IT 108', 2, 0),
(34, 'IT 111', 'NETWORK MANAGEMENT', 2, 1, 1, 'Second', 'Second', 'IT 108', 2, 0),
(35, 'PE 14', 'TEAM SPORTS', 2, 0, 1, 'Second', 'Second', 'PE 11', 2, 0),
(36, 'PHILO 11', 'LOGIC AND PHILOSOPHY OF MAN', 3, 0, 1, 'Third', 'First', 'HUM 11', 3, 0),
(37, 'LIT 11', 'PHILIPPINE LITERATURE', 3, 0, 1, 'Third', 'First', 'None', 3, 0),
(38, 'IT 112', 'WEB DEVELOPMENT', 2, 1, 1, 'Third', 'First', 'IT 105, IT 109', 3, 0),
(39, 'IT 113', 'DATABASE MANAGEMENT SYSTEM 2', 2, 1, 1, 'Third', 'First', 'IT 109', 3, 0),
(40, 'IT 114', 'SYSTEM ANALYSIS AND DESIGN', 3, 0, 1, 'Third', 'First', 'IT 105, IT 109', 3, 0),
(41, 'IT 115', 'IT ELECTIVE 1(FUTURE AND CURRENT TRENDS IN IT)', 3, 0, 1, 'Third', 'First', 'All IT Subjects in First Year', 3, 0),
(42, 'IT 116', 'SEMINARS/FIELTRIPS', 1, 0, 1, 'Third', 'First', '3rd Year Standing', 3, 0),
(43, 'SOC SCI 14', 'POLITICS, GOVERNANCE W/ THE NEW CONSTITUTION', 3, 0, 1, 'Third', 'First', 'SOC SCI 13', 3, 0),
(44, 'LIT 12', 'WOLRD LITERATURE', 3, 0, 1, 'Third', 'Second', 'None', 3, 0),
(45, 'IT 117', 'SOFTWARE ENGINEERING', 2, 1, 1, 'Third', 'Second', 'IT 114, IT 115', 3, 0),
(46, 'IT 118', 'MULTIMEDIA SYSTEM', 2, 1, 1, 'Third', 'Second', 'IT 112, IT 115', 3, 0),
(47, 'IT 119', 'PROFESSIONAL ETHICS', 3, 0, 1, 'Third', 'Second', 'IT 101', 3, 0),
(48, 'IT 120', 'IT ELECTIVE 2(NETWORK ADMIN AND PERFORMANCE)', 2, 1, 1, 'Third', 'Second', 'IT 111', 3, 0),
(49, 'IT 126', 'CONTENT MANAGEMENT SYSTEM', 3, 0, 1, 'Third', 'Second', 'IT 112, IT 113, IT 114', 3, 0),
(50, 'IT 122', 'CAPSTONE PROJECT 1', 2, 1, 1, 'Third', 'Second', 'IT 112, IT 113, IT 114', 3, 0),
(51, 'NAT SCI 16', 'ELECTRICITY AND MAGNETISM ', 3, 0, 1, 'Third', 'Second', 'NAT SCI 12', 3, 0),
(52, 'IT 123', 'CAPSTONE PROJECT 2', 2, 1, 1, 'Fourth', 'First', '4rthYr Standing', 4, 0),
(53, 'IT 124', 'IT ELECTIVE 3(WIRELESS TECH)', 2, 1, 1, 'Fourth', 'First', '4rthYr Standing', 4, 0),
(54, 'IT 125', 'IT ELECTIVE 4(JAVA PROGRAMMING)', 2, 1, 1, 'Fourth', 'First', '4rthYr Standing', 4, 0),
(55, 'IT 121', 'MOBILE COMPUTING', 3, 0, 1, 'Fourth', 'First', '4rthYr Standing', 4, 0),
(56, 'IT 132', 'AUTOCAD', 3, 0, 1, 'Fourth', 'First', '4rthYr Standing', 4, 0),
(57, 'IT 128', 'IT ELECTIVE 5(ARTIFICIAL INTELLIGENCE)', 2, 1, 1, 'Fourth', 'First', '4rtYr Standing', 4, 0),
(58, 'IT 129', 'OJT/INTERNSHIP PROGRAM(600 HOURS)', 0, 9, 1, 'Fourth', 'Second', '4rthYr Standing', 4, 0),
(59, 'FIL 11', 'KOMUNIKASYON SA AKADEMIKONG FILIPINO', 3, 0, 1, 'First', 'First', 'None', 1, 0),
(60, 'PE 11', 'PHYSICAL FITNESS & SELF TESTING ACTIVITIES', 2, 0, 1, 'First', 'First', 'None', 1, 0),
(62, 'hsyah', 'asdasd', 2, 2, 5, 'First', 'First', 'NONE', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccount`
--

CREATE TABLE `tbluseraccount` (
  `UserId` int(11) NOT NULL,
  `Fullname` varchar(255) NOT NULL,
  `User_name` varchar(255) NOT NULL,
  `Pass` varchar(255) NOT NULL,
  `UserType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`UserId`, `Fullname`, `User_name`, `Pass`, `UserType`) VALUES
(1, 'Janobe', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator'),
(2, 'Faculty', 'faculty', '5cee1c23e1604e9ae4f2c0e93bbb4c6eb72b5f2c', 'Faculty');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblauto`
--
ALTER TABLE `tblauto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD PRIMARY KEY (`CourseId`);

--
-- Indexes for table `tblcurriculum`
--
ALTER TABLE `tblcurriculum`
  ADD PRIMARY KEY (`CurriculumId`);

--
-- Indexes for table `tblgrades`
--
ALTER TABLE `tblgrades`
  ADD PRIMARY KEY (`GradesId`);

--
-- Indexes for table `tblprerequisite`
--
ALTER TABLE `tblprerequisite`
  ADD PRIMARY KEY (`PreRequisiteId`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IdNo` (`IdNo`);

--
-- Indexes for table `tblsubject`
--
ALTER TABLE `tblsubject`
  ADD PRIMARY KEY (`SubjectId`);

--
-- Indexes for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblauto`
--
ALTER TABLE `tblauto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcourse`
--
ALTER TABLE `tblcourse`
  MODIFY `CourseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblcurriculum`
--
ALTER TABLE `tblcurriculum`
  MODIFY `CurriculumId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblgrades`
--
ALTER TABLE `tblgrades`
  MODIFY `GradesId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=407;

--
-- AUTO_INCREMENT for table `tblprerequisite`
--
ALTER TABLE `tblprerequisite`
  MODIFY `PreRequisiteId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblsubject`
--
ALTER TABLE `tblsubject`
  MODIFY `SubjectId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `db_laundry`
--
CREATE DATABASE IF NOT EXISTS `db_laundry` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_laundry`;

-- --------------------------------------------------------

--
-- Table structure for table `pricing_product`
--

CREATE TABLE `pricing_product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `reg_price` float(20,2) NOT NULL,
  `pro_price` float(20,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pricing_product`
--

INSERT INTO `pricing_product` (`id`, `product_name`, `reg_price`, `pro_price`) VALUES
(1, 'Breeze', 30.00, 25.00),
(2, 'Ariel', 15.00, 10.00),
(3, '', 0.00, 0.00),
(4, '', 0.00, 0.00),
(5, '', 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `pricing_service`
--

CREATE TABLE `pricing_service` (
  `id` int(11) NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `reg_price` float(20,2) NOT NULL,
  `pro_price` float(20,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pricing_service`
--

INSERT INTO `pricing_service` (`id`, `service_name`, `reg_price`, `pro_price`) VALUES
(1, 'Wash', 60.00, 50.00),
(2, 'Dry', 80.00, 50.00),
(3, 'Dropoff Wash', 50.00, 40.00),
(4, 'Dropoff Dryer', 50.00, 40.00),
(5, '', 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `birthdate` varchar(15) NOT NULL,
  `avatar` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`id`, `username`, `password`, `status`, `position`, `lastName`, `firstName`, `address`, `contact`, `gender`, `birthdate`, `avatar`) VALUES
(66, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Activated', 'Administrator', 'Gonzales', 'Jhan Rey', 'Cabatuan, Isabela', '09359291412', 'Male', '01/06/1998', 0xffd8ffe103cb687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f003c3f787061636b657420626567696e3d27efbbbf272069643d2757354d304d7043656869487a7265537a4e54637a6b633964273f3e0a3c783a786d706d65746120786d6c6e733a783d2761646f62653a6e733a6d6574612f2720783a786d70746b3d27496d6167653a3a45786966546f6f6c2031302e3430273e0a3c7264663a52444620786d6c6e733a7264663d27687474703a2f2f7777772e77332e6f72672f313939392f30322f32322d7264662d73796e7461782d6e7323273e0a0a203c7264663a4465736372697074696f6e207264663a61626f75743d27270a2020786d6c6e733a4765747479496d61676573474946543d27687474703a2f2f786d702e6765747479696d616765732e636f6d2f676966742f312e302f273e0a20203c4765747479496d61676573474946543a417373657449443e3437363038353139383c2f4765747479496d61676573474946543a417373657449443e0a203c2f7264663a4465736372697074696f6e3e0a0a203c7264663a4465736372697074696f6e207264663a61626f75743d27270a2020786d6c6e733a64633d27687474703a2f2f7075726c2e6f72672f64632f656c656d656e74732f312e312f273e0a20203c64633a63726561746f723e0a2020203c7264663a5365713e0a202020203c7264663a6c693e4b7269746368616e75743c2f7264663a6c693e0a2020203c2f7264663a5365713e0a20203c2f64633a63726561746f723e0a20203c64633a6465736372697074696f6e3e0a2020203c7264663a416c743e0a202020203c7264663a6c6920786d6c3a6c616e673d27782d64656661756c74273e427573696e6573736d616e2073696c686f756574746520617320617661746172206f722064656661756c742070726f66696c6520706963747572653c2f7264663a6c693e0a2020203c2f7264663a416c743e0a20203c2f64633a6465736372697074696f6e3e0a203c2f7264663a4465736372697074696f6e3e0a0a203c7264663a4465736372697074696f6e207264663a61626f75743d27270a2020786d6c6e733a70686f746f73686f703d27687474703a2f2f6e732e61646f62652e636f6d2f70686f746f73686f702f312e302f273e0a20203c70686f746f73686f703a4372656469743e476574747920496d616765732f6953746f636b70686f746f3c2f70686f746f73686f703a4372656469743e0a203c2f7264663a4465736372697074696f6e3e0a3c2f7264663a5244463e0a3c2f783a786d706d6574613e0a3c3f787061636b657420656e643d2777273f3effdb0043000a07070807060a0808080b0a0a0b0e18100e0d0d0e1d15161118231f2524221f2221262b372f26293429212230413134393b3e3e3e252e4449433c48373d3e3bffc2000b080264026401011100ffc4001b00010002030101000000000000000000000005060304070201ffda0008010100000001b980000000000000000000000000000000000000000000000f1ec000000000000000000f35ed590f7f7d67ddf600000000000000007c81868dc00df9bb0670000000000000006b5620b1801eed165fa000000000000004651b100012b76cc00000000000001e39c60000090e81f4000000000000057a9e00005ee580000000000000d4a1ea80000b7d880000000000003073dd700000f7d2728000000000000a7d7800000ba4e8000000000000e698400000b2db0000000000000c5ccbe80000160b88000000000001f3977d000002cb6c0000000000001cd308000016db20000000000000e79a2000005d27400000000000050e2800000be4a8000000000000a5c1000001d137400000000000054ab600000f3d3f20000000000000ad54c00001eba780000000000008fa2e0000007a9cb980000000000015ea7800000d8e9200000000000041d28000006e74500000000000023b9f80000097bd0000000000001e798fc000002d1690000000000001418c000002f72c0000000000002b155000007be99e80000000000006bf3bc400003e596da0000000000000f3448b00002ef3400000000000002ad5700007de9990000000000000047f3e00004b5ec00000000000001cef480002e73c00000000000000add4800066e91ec000000000000018f9c610002d368000000000000001438a0002f92a0000000000000039ee80001759c000000000000001cdb5c000b758c0000000000000072ff800059ed40000000000000063e61e8000b05c400000000000000d2e7600026aee0000000000000045d0800049df80000000000000237e6ef39c400059ad75d9ff0060000000000003cd5eb37c94d1a26b800586dff68fa573920000000000008f8582d5744dd6ad134c00b4da0a640a666a63300000000003cc543c36b0746db305163c02df6214faf0fb273333b6000000003143c3446303e748da18e8f140f5749b0a85740f9bf333321f40000003521a1a33e001d1b6c3cd2e107bbc4b029f5e0033cccc4b7b0000062838f8bd2fa000e8bb80f951aeb35ea440a6c00003d4a484c49800021e97880001d0b7c0c1cef0d96d8029506000098ba6500023285f00000bf49831d0a3cb94f8147860000252f9f4001cf34400005e6603cd1a247dbbcc82851600002e73c0011b4000000b9cf055aae0f5d273073dd000001277e000a956c00002d3680c342d10b6d903e733c600001d276000739d40000094be830d123cb7d8811dcfc0000170b0801a7ce7e800007de95983e73cd22e3600556b00000098bc8015ba900000170b08405346c747f41ce75000001efa67a00512240000093bf0f9ceb502df6211b400000017b9600f3ccbc800000e89ba44d101bfd08536000000059ad6011742000000b1db8af53c193a698b9b7800000123d0002b155000000cbd27daad57079ea3e95ca88000007de9bec05162000000171b029f5e07ce91b4e75a6000000be4a80e6984000001bdd0d488502ff2511450000002d76603579bfd0000002f72d418c02f133448900000026aee042d200000004bdeb9cea017093e7800000036fa30157ab0000000743a0e202d3a9020000003e750f40a5c100000004ec07a026a1be0000000f9d137818e0abf1df4000001f7e00fbf0000000f73761920068c0c1eb000000000000003ecace4de400023a161b47e8000000000001ea5a666b3000006a4444c56300000000001f37e565a57d8000001f3422e363b53e800000001f6424a4e533800000000c11da1a3a5a78fe800001f367777b7a437fe8000000000035f4f575b5f5f0e2c3e3c78f9ebde4f79b366d8d9d9dbdcf60000000000000000000000000000000000000000000000000000000000000001ffc4002e1000010401020503040203010100000000030102040500204011121330501014312122243415233335607080ffda0008010100010502ff00cf11c8eff8ce28b9601289e2b972625bc65cfe5a267f2b133f94878d9d15d8d735e9ff0006abc1251e13b12ce40d4a4423b4fc28e74a1606e1304619dbe78c714761edc8ec211e55edb1ce1ba2db22e7cf9c9b31b106423ccfefc39ef8b832b0ccf32f72318733a41b630e5ac42fca798b737283675a66921f979124718720ee926d9fc2d6ce52f96315a011cef905dab5ee1bc6f428fca5b9f98bb7a827343f2852754db7a55fbfc991780d3e36f4ff00b3e513e89b7a54fbfca1939646de993fa7ca4d6f2cedbd427085e52cd384fdbd6270aff296e9f99b7869c21794ba4fecdb2fc31bcacf2974dfebdb35bccef2934eb1a2bce62a6d9155aeaf9a5f75e4ee7f57711ff6bc9dbb78c2dc446f34cf273d9cf077156ce69fe4d511c8ad562ede999e56c47d39db7ac1f4e0f94b917dbb66314a44446a7943890e128df1c9b4e39531555fe5951172c99c93f675c06fb1f31723d9a355cac6a319e6270bad0f65582ea4df352c3d095b1a90f246f35700e616c0425319ad4637cd3d8846144e017bf4f1fe9e72cd78cfefd62f1aff00393979a777ea178c2f392178c9efd32fe3f9ce3ccbdfa55f3847728d3e3bf4cbf91e6e62f087b0a95e13bcdd8af081b0adff0061e6654d145480521e3946851104f093bf5319dcd8eb158f35ae6bdbe51551a92edb17eab5c9cb0325451ca19c048e4eec0aeea7adaa709d1e5162ba2ce14a4f2259d18385b9c3c93495f487fa5e878e392393189149db815ba2e13f2fd036920782b703b0651953c52aa2216ce28f0b7045c2c831b545fd4f5289871cb86f88fecc0aee969b9ff3e84fa28aca50b057235c14901fc2bc8c1216da3b30b6d21f8f7bcabd88dfaba1ec6919360ba2aea44573a057a47d573fe6ec0a6c90e0ae57053e31b7e59400612e46985b2945c5e2e5edc5fd4d2a88e49d5eb1f4b18e23e1416c56eab9ff003f6c47307057066e0ad22931ae6bd36cf2304d2dc05b8eb832e125c836c21fe96b9f5dd3f5109e724486c88cd771fb5de6b9cc51d9ca1e36e9701611cebb29b3db170a521dfb285f583aca5600657a14b953246cecdbfeeeca258923e308d2b3bf3a5fb50aaab97675cbc606a7bda364c96e964f5ae9dd64d76cbc676ce04c58a5efcc91ee64ed2aff00d7e9554449d35653f47d51604ef72cd564bc6c3695323a80eecf2f461ed69d78c3d37042a6b6b9cc7895ee1699cbc676d2b8bd29bddb92f17ed695ff004d25130c39515f109a6babfa7ac8fea176a127581dc965eb4bdad693a73b5144c30e64474427ac0aee96b9e5e942db53979a3f6e597a3176dc55aa222145aa5c8f7523d6aa4f503aae4bb7ab2724deddc9380b6f4e5e68fa6da474c1a00658e76b91cdd328dd795b66bd46f4547276acc9d49db7af3746669947f73234d41f985a2c0dd087b8ad27520f6555111cfea3f7110dee237ad9914707541228a6e8b7373c8dc5313eeecd893a707734e6e0ff005b95fc6d435e52fa91e831b9ea47ee2bc9d39dd9b97fdbb91914256b91edf4ba5d6bf08bc53d2e0fca2dcf156ab5c8f6f62d1fcf3b75507e707a5caff7eb8abcd17d259fdc49dd56bf9e0f60afea1f750cfede57a5b2f19daebd79a06591fa313774affb35c97f4a327c6eeb8fd789962bc6c35d52f1819647eb4bddd4bf966ebb67f2c1de561fa32f25af34cd74cbf8b30feda36f223f9266bba77d37b0cfee6311798dae957e96c7ea1f79c78635799baae17f2f7b5523a464f8d75c748e8aaae5dec25e30b53d8d234d502761a0c906f3e3c2b1ae23835067e020478fdb3438e7c2d33930b18e0f369f728ab24970350066318d1b7be58118d85a65c2c3921f2ad6b88a2ab924c15401b8310c49b52c601f094e25c2554a663c64178e1c2925c1d311707571478d6b589bc2418a5c7d30d71f5325b8f8d2079c7c23515eacaf964c653117195315b8308c5e15e11171f5711d8fa56e3aa24a63a0ca6639ae6671dc714c6c73bf1b592dd8ca622e329c098c81147889c13c73801263ab623b1d4f1971d4a98ea62e2d4ca4c5ad9898b065a67b69099d132672b93d782e74c8b9d03e24492b9fc7cc5c4ab96b894f231295d894c2c6d5444c6c18adc6b5ad4ffe01ffc400411000010202050708090205050000000000010203001112213140512022304150617110233252627281b104133342829192a1c14373143460d1f0637080a2b2ffda0008010100063f02ff006f0c8ce557f465b1fc5fa328a4fea4bce39d682b7a62ba63e18e92be98e99fa4c7b5ff00a18f6e8f13289a5408ddfd093313f5f45c162dab7ed124b81d18ad128a41a4b675d1b32a62a3153c4ee557127db97693149b5850ddb7e93aaa2224c2680c556c4dc5a97c4e929a1452ac44047a4e69ebeadbb8ad5d1114dc55255c289ce6bab87080b6d549276d15aaa091330a755aec180b94ff004cf4844c6d90d0b5c35f0ba213485240911b629b8780d660baaab0180ba4c5446b8f50f1cff7558ed6538bb1305c5f80c2ec169e924cc425c4d8a13daa960588acf1bc51ea2a5b556e75953bc3c9e076a288b65795f736acaf0f1e1f9daae8c167cef0eabb72daaf0ed5e27d651daabdf23786fc7cf6aa4e28fc9bc33dc1b5593883773094e025b55a576a5774a7132daaa58e958224e38a509cebbb850a88ac425b71c2b4aeaced5b511fb9f837967f713e7b527d5503796476e7b51d1d99fcaf20f5524fe3f3b50836182836a4caf0eb9c13b55782b3af08c559db55b786a344ddd2d8b5465000b06d5534ab1420b6e8911f7bb7f12a150e87f7daf589c2fb5255d1ba680679d58db2d3bf09b9848b54642020589121b65c40b65317307536296db5a355a9e1722e1b5c3f6db697c5a8a8f0b8a5a4daa301291202a1b6ca1562848c29a55a937057a42b5e6a76eaf7002e0df8f9edd78efb84b051dbaf1ff515e7707076ff001b74ab133b83e3bbf9db8a5602e2e2714edc7bb86e3c5076e3bc2e2d78f96daaf397a9223d6b9ef28ca5aa14d9b142505b704942e07d2142425247238cbd5b73a95840524820eb1b566a3203598a1e8df5ff00689933275986b84f928aaa23a2ac23d5b82bd471d3079f199eea71e5e280626d9ab5a4d86240d15f54ed2ce744f015c732d78ae39d5cc757572b1fb63968383c708a2bac7baac7481ef481dd47f7c849ec7e7964a93837db1ce05367e6226dad2a1b8ecb993211d3a67b15c734d84ef5571ce3aa56ed594cfed8f2c828704c18af39b362b43280ebe26bd49eae4b7ddc998323888e9d31db8e75b52378ae39b752addaf62cdc5a523798cca4e1dc233025b1f3313716a5f13a16bb8324a162693aa292739ac70cb0948993608f58e56eff00e729aee9d0e6ba6582ab8e799f14454e80705557fe71d48ddae39a6d4ade6a8e9d01d88a4a249c4e919ee0f2ca9113060b8d56d61d5c90840a4a3aa26739c36ab2dbeee939a7549ddaa39c4257c2a8ad45b3da11492a0a188bbd25a82462639a429cfb08cd6d09e35c67bca9602ab831fb69f2d0179819bef230e50db6267ca2aad66d56811dcd3cd0a2938a4ca2b505f78467b1f4aa2417455d555573a09ce770c229baaa46e6cf70680b8b320214b08080a360e4f50a484a946a575b429fdb1e66e7457371bfb880b419a4d86e131d355491054a3326d3746b86595acc922d313b1b1d14e47a974f382c3d6d07040ba49479a574b76fb8297ee8a93c2ea8e27cf2a64c808a29f649b37e4cc1911618a0ba9d4dbbf2dcdd2f2bafaa5749bf2d32ceb39a2ec460b39486ec68ebc4e1961683250b25082e268ac8ac653c77dd5182f34e99b670ce37675bde15945b589a4c5155693d156507de19feea70cb5b9d651375aad84383de13d2b8bd5390bb2305e6e59438260c4a7492ae89c80f3d22bd430cb715ae52177535d43f63a471cd6055c6ee149b456212e0b1427965cf76c4f0c8f52a39cdd9c32db67e237709d4e09691b6bac67785346d6cfdb2bd4a7a4e7964a5d1aadde20292660d994e39aa721c2ee9705a93380458746a1d4146f08c179a7294eeab13c328b06d459c32564748e68bca31466e8a66c10a59b546779439ac8af8e42e56ab372da2359a27c7252c8b1b15f1bcbad7c43fcf9689ced0a3f3bd2d83ef670c840edfe0e5a158281c852d56244cc296ab5467796f05669d134de2695e92ea6d499c0526b044c72b29e27413e54b02d5d6785e8285a2b10142c227a123a800bd964dadf972b69c13a068e281cab735589e17b6fb39ba171ceb289bda167a362b872f040d035c25c840e92f345f1d6f033ff3e5a0717824df44fa48cd3c8eee97968123027cf9081d16f347e6f947ae9d011d7205f424f45cabc75723c7b6740b1839f810a735d89e37d655da97e340ca3124ff009f3bf25cd762b8c38ac544e81e4f0301916376f1becc5a2011af2d23550bf1695d15d9c743e90b3a900c152ab26b37e667d419745690a18189b2a2d9c2d119cdd218a2bfe81a284951dc226ea83630b4c4d289abacaace8f3db13c454626cbb3dcb8e71a5018eadb744099c045690d8ed44dc25c3f211450909180170ce68038a6a8e65df05c67b2a9622bdab2424a8f644e33806c768c738a539f61126d0948dc2edce34956fd71cdb8a47dc466d173818e710a4711b3b35957c55473ae84ee4d715a299edc49200180bee7329f0aa39b7549e35c66d05f8ca33d958f09ec59212547b2271ec65deaa39c7923ba2719c14bef18e6db4a780d8bce36957111d029ee98e6df50ef09c66a9b578ca2b615e15c67a149ef095eb35970fc31ecc27bca8cf7923809c672d6af18a984f8d7121b3f3da42b8a63d881c0911529c4f0319af91c5338cd792788947e99f8a3d8cf82847b0547f2eefd062b65cfa0c7415f2e5b0fca2a6d7f4c7b077e831ec1cf947b03f311d048e2a8ad6d8f1315fa40fa2339d70f09456952b8aa2a611e22712480387fc02fffc4002d1000010202080701010101010100000000010011213140415161718191a1203050b1c1d1f0e110f1607080ffda0008010100013f21ff00cf2149c73547fe3038000b40b54a149582b81265685017c6c743ed0a82ecfa2ff42bedbc206ac3e6c5271fd26af4244fff0008021000264a36e6862091b9ea5c516d45b96c5398090cbb2ab880a80ac40a965fce31453139d1a7fab12a4963675f6c5a8b4e013b838d6890dd39998cdcc0d09563232c24009b1b3e92040382e0d7d70221f649b91e9c4acd570a0130fd756f8a908a4811d68ba3a12c0a6b3e2028512c92fee2f408011c1911d65ff7607eb5100a244488680dbac40cec265c87cc50d92881c06320058845e2003d86c37f562d4c2737dc88dc4e00d94630ec812ec419f557b30b3d2dbbd222599b24fcf558deef06156d48c5005bfe7542498323452f0a43eefdbaa10e18a02e262148c0607aa991a9eea463cd803df55cc86a1fcd21d2d2f1e3aabbecec378a4334d6ed48f556ac8d1ca9317edbaab1613a37ba3c26b95d65d5581cb50fca3dc6fa8f556c791db4aaa35075fc68e705c825850245731dd5754d8a927c6b1d53e2a4bcd270b5a23e3aa5d7795e3fe36a90653818a98483c442913f1580ee7b8eaac76664739ee0d2229134f396cdd55c11da0cbb6f47962b7d8e865b0180b3aad4f81ec3515b60305a2ea2b04ca722026756f3f96f57838b10577041a37706880bc46662661b37598611227bc3b1a1c86e621415584c01d64a20fac88a05c3d09fb11858c87bcbadb5e19f9cf9b2a135a9ec901e4e7d6d80c4cd7ef7a0d5689ec159d1317180583ad82c730172aa353da2a34060178359f1975d67ff0090fe680e5353342ebb969d00140c11bcf9ebb789dc50309bf67aeba6f854046c575c5e46542385019b22743fbd71cff6c84a8108b16e0f8eb8628581a9141221aadbbbad36cdd1151cec09ff0087600800836ca73ec8d8b6b2822d17501f5a68ade67f8075806844480622b1151dbb02383d54fc48c2460138f9e63b3ca2243a2091c94dab4b5127f8cbea44cd11b2a8486d1cd922c2731779baef880c187f1fcfd047851a93f915a911319f95bd49f01e17ed94d19b781ed450024100cbfa2df4c3fa62f454132b429ee64887eeee592c9999ccb55fe9c189846efe488209044411520e19f87526317886e0578627ba5910409929c40bb0774b75070f68e4eed06d3681040012e03242c3b3b2e01c55a7e13f99bf920124002492c00994120936abf5c211eff7e122338722310988345503ef34c20e5ab7da9e45eec9f45bfb134a0c38206a540ee90dc30d93f118cdc8322befd9c23c22b12517c530ad74fbe33e13d813281860c32b83df17d8b79040330a61f01dd04c1cbcf07da836303bd3df9e45a7d022a1076d5bed3906d9036f346490e64727966489c9f6ce22118062088147c235d31fcf093bc88283a0b0ae1771c9deefcb675211150f6493001b6c54c82c835bc90c946447147311fd63270042df74765bf70fa2d78166c8002439ff0002c71cd16239c1bc5d729ff1fe6e81694d4b73113e8720e0d9e479f8ce7050e0ff00510c9ec222b3e021073e2f5e8d0c3300c2156f14e0356f2180aa8679136e4e69be7002abf858b827646fb3e7e44a508080668b83d849d1f4857c57050010c39cadc0221039c932688f2bc34278c48457254a7b7fb437f03740512a7be46403bd11c41d82d202e1c73c834be96af39d14dc36777c446300e49904f3483416ed3c2080510e098284f00082cda38da373b3dd148733c117d5f5a739b72c3cd30fdc9080a2dc84ec7cf1350086e4351dff00ce33a83dce674328048aa3c58791a0028b171f252ddb9cc218078879a360b03381ec38981762177c88fde192c4189bcdfdb8ff00d224d15c88930441b0a1d42d96735832e594101da8d1616013ce5b81c63cb5641c62ead731fd300825594388bf79e3628c59e30f2840519c43187a9ddf98cf16d4901ba018014607031c12c214855867c44801c96011ea641f95f03df792ae92d38e20cfd30f3477e0c4e798ec75e63206bf80fd234a43b2a8628f77e2672549babeb2d785fd4be0d4098c0dc856389a82e791407bce8f2886392396e070796d04841dcf7da90f627cd4b76e12400e60112b69c0097bcf89ded6df2f47c70ba26d54fc4e48060d488f4d67296cdca233301c9469899e65e9064ae5c6140f0494b3aa7b3f1c909bad10776e17413189f9de92d9266c2d8f28f31361b3b3d29dc43535f8d383130f19fe7d8780b931889dd62ce92e57621cc96edcac721650f34ab3b12db4688d73312d1fd836c749bdf1cf6b10061221ff00ae22264bf7b5284e9e310231ee1061c9b36f2be696e3234314bcedfd76dc9d4fe7199275e65edfd630bbf21f3e74b8b8c40964586cdc96e0b80983c296f698b59f03fd68162dc9f3c87cd9b45bf8f51bf50e94c72cceb0dc814396270c5a0818052cc428e4fb4c8e9fcca06ce45d97dc7cff001ed774f8d9532243028cc47df22d0c2eafe29ae01a2fe32cff009828690f1c872d42196aac5a5259bd33033abf5c8b9ba0c29ac0b1b55cb58b026bfde38f23051d67f49f4d75e3f43b9a692c4010642071c6574e0207b5cbf8a73cc82f703d8ec14b79f22582c1690580d4a2d0ec92d269a4802288601040222c0dc64841985c27fb4a7fa27424c19ed020c8d2c124082c44411c972c43ce74cb9cfbc9aac49fe08c0657c1565cb7d277d8214217ca63d27869597d413bcbad010947901c94d46d09c74f6c982f7bb03da621b621407a2437cda681884dc791e976007b204191ea9747e70a2d8983a04ca4cd8fda8eeae5d4d3d1a69173ba69fc9bb0ff00b6ea2000c23ba39af606bd35c3b566a52242df6a8c5ccf714d0482ac9f696c804752030a64d4911b63eca7cf6081f09ec986e737f69f6093218d44100323d12ef0c42d93410426b31b26b4c9ee0b29c9fcc99036c0f0fd17687ca71634d651b4913b03d8c9e587117651e385f1d8b7f97b90032229111817362688a56e03546e37b07875a379fd1339bad806ca656f1f34060000a874f3ce5ae8a26e7e110288680f90bb1ebd105b9beca4c708bd2907c2b54c72c83d8a3319044651e3e84678389a2e2608c93a0591f0242716049e97dd7290e737ba1219c3f2a73f12a449855c4f0aa12e1fa5e3a1e105d51f0a66fe534ca2d80dff00c05fffda0008010100000010000000000000000000000000000000000000000000000008000000000000000000db000000000000000006f200000000000000015ff80000000000000017ff00f400000000000000ff00ff00c00000000000000fff00fe00000000000000bfff00fc0000000000000bff00ff00e00000000000007fff00ff00c0000000000001ff00ff00fe0000000000002fff00ff00e00000000000017fff00ff0080000000000007ff00ff00fc0000000000001fff00ff00e0000000000000ff00ff00fe00000000000007ff00ff00e00000000000007fff00ff0080000000000001ff00ff00fc0000000000003fff00ff00c0000000000001ff00ff00ff0000000000000007ff00ff00f80000000000001fff00ff00e0000000000001ff00ff00fe00000000000007ff00ff00f80000000000007fff00ff00800000000000027fff00fc00000000000007ff00ff00c00000000000003fff00fe000000000000017fff00e000000000000003ff00fe000000000000003fff00e8000000000000017fff000000000000000007ff00f8000000000000001fff00c000000000000000ff00ff000000000000000007ff00f8000000000000007fff00c000000000000005ff00fc000000000000003fff00f000000000000000ff00ff000000000000000015ff00ed0000000000000e17fe0740000000000c707ff87cc000000000bfe0fe03fe200000002ffd05f81ffd00000047ff00e01b80ff00fe800003ff00ff00405007ff00fe40007fff00fc03a03fff00fd0001ff00ff00f05e80ff00ff00f0000fff00ff0081fc0fff00ff008001ff00ff00f817a0bfff00fd000fff00ff00e01805ff00ff00f8007fff00fe81f03fff00ff00c003ff00ff00fc1f81ff00ff00fc003fff00ff00c17c07ff00ff00f803ff00ff00fe83e0ff00ff00ff008017ff00ff00fc3f8bff00ff00fe007fff00ff00d3fe3fff00ff00e007ff00ff00ff001fe3ff00ff00ff00c01fff00ff00f8ff000fff00ff00fc03ff00ff00ff00d3f9ff00ff00ff00f00fff00ff00ff003fe7ff00ff00ff0080ff00ff00ff00fafeff00ff00ff00fc07ff00ff00ff00ff00ff00ff00ff00ff00e027ff00ff00ff003fbfff00ff00fb001bff00ff00ff00ff00ff00ff00fee00007ff00ff00ff00ff00ff00ff00f000002dff00ff00ff00ff00ff00e600000028ff00ff00ff00ff00dd000000000f3fff00ff009a00000000000009bd3400000000000000000000000000000000000000000000000000000000000000007fffc4002d1001000102040504030101010101010000011100213141516140718191a1203050b110c1f0d1e1f1607080ffda0008010100013f10ff00f3cc7c8cac0c4747ff008c71a1c0a658c3a62537243720908ed02cc8c10da1686319d9dd617a286a8ee93b92bf8dfd50989f3a9044e75a2376d7f556df9b8ee7ff000818da510073a3cf8c584cc81194e45dc1bd064b00cdd0bbab49190a01759cf65b6f4c0e54473e01e0ea52640d96c9da6c744a7962c2b7b55dc392ab5c7adc5a0c56cc3f3f2032c1bae8175e54ce08421f73ec521f8b248390c0e8500607b782ce67393a9b36a24d901c7239b72dc9464c0903227ce3600c8ad9d74079c372c3ddc81a1806c7012d9dc4e6a9ef2b3b4ad17c99fa4988998dcf9a97da06412bd8a922121198b0791dd573e08b40a0b4d2d1e4b688780c28911cc7e66c7f301946bca60dc9e0db91560cb5a3570d105fe62480361ce8867f4669466200cc8584b36eabaaf2e11260a5a46a25c6aff3e8b258ec0bce66e2bf2a91ac85d58037540ddacac50b3911fb736fc344f89b71c1d9c1d9a521bd78809beff2ab614099858f253ff3c422b58f7bca0fdce9f2aef2095df67481d388856d84724bf7f289b9b29a8a28019a388c272279c63f7f280812242518d55ccb7106a8c1de6a7e8f952c045f2038833325dcbe5768e3f5dc456e7cbc47cacab65ddbc4098907446f0fcabc44039d524f09c3ac26ad8c3326e95f2fca8e6cbf533edc3bd91501b876403e564899ef35e1f6326d7c83f7f2b925af04d03bc12c6d5603cbe8112432b2b16bf0e82451c4191e894b8098943285bdd2230bedf28d0c6c9bc4ee22f94670063db4cf13b9c4fca2db870e6834190788ff00d8ac3e5090b016a2435e773115e4e21d6c8e82410f9563a010f242e1e605498094eb395f2b63f88a17c44ec28e1ebd20804dc85e84bd280a946c00407cad9955012e306e20f4acb2397904cd7fc61b5089232708aa00e6d4efa4c42c406d121acb4f97340c3204c3d6913005268c9c226326714249125acf995a05c19b2787cbc197f205aa01e5a87d02d020f07ccaa108412af00e711d68006093c15cea402ce079cb0f9b5ff688106281b0cf043c41032437bcbd01f37a26acc5acf48777028b20e2e77402f4a30018e0040763e6f7a7e0221abe5600deea08f00b70652687cc87535f9dbebfe57801f1676633c1f3bc86ff00534e0317fefd3e74b9924076b1e38037329d28fedf3bff00b602bfbe0134843cd83f47ce5cf8f062d187a0e02ed65bd1f9cdc58431dd61e6ac06dc00b2cafe710dc55446827c3c08aea9ca7fb0f9ac79286968af23bc0c52a45e8c4a2336e9975697d40212c8893731a675fe5499afeb8fbf855e5c484394ed040e72fe1cab3c1a20602ae5c8cf2306f0806c9f2a676a100d55c0a4c30c3ed8fb741b34be39509d55bad7f6609f7f8c64822e9351cccf9826621ba887eb13dd502ac054e8580e1d03e19b3b5a80000040197e0c0cebbd08d64ccc77232dc684c96a3d0a9380eae86e750f924ec84ca6e8928eb14ccbe16870f3afd94517292ced618bbb2eff00870680866bdcbfbfccd1bbda659327c3832542b92b005fad5f62fed80969165327a435d32677b1f98bfe2cff005fc0aace250a3044c1ac1f92d63d23f68b5abac6f9b48f542910d62223a3183f166d0657006ed4b91ef9e1549e1b487358201ef418c7abd76bc2808006de8c4e55b587d0629721c4724724d6884a01167e3f071330f6019b87946c0062b46b0dc43b8e4f8996be98b5c3dbfebd38dda4b904b940c12826fb225cd69054308077701c81a14189318837703a9f0b916b0c57ad4a12618def07706a591b062ba141b086498f20d8e951187afc6ac87f07d301fc2c894eac696eae1b391d0de27d5006a1ca6850376f45c5c7735e82d33e9fe268f630418c2a181d9f634c48724a03767eff004687f833cd0b25e53c7c02ef3fbc976a992ab42e698ae485420a90cdf748792562b147e796efb78bcab791fd43c8a0e41b22389481eb37b98cddf899eb58fa1f5947dc5c8335c2a6fc3a0b1dfc3762e2e41ea7c93f87f9eda04209bd2a64449eecf85063db4ef35c47a052ab762c9db20e69583ca0db925b87b7089189d2f9ed4b8b30773ad01d2770533b52687ab3333448c9ce68780391ef383577ac8402208d91a753ba0cba87cb2656b0201191cff18f13ab6cc2641ff0950a5b6a968d93c07797d89b72f7ff002f7f20f523b8250803da2e86d23ab34506ec4395c77a6996e0cae40e26c2bc1bc96a46cb829f58bb634a733181d30072e09c2a71a76c0fd7b055cd2b9ae4066ad8294be30b3feb8b19afe205da59b2672743863ec9ae406fe3970404011c9ab1601785bdc4dda592b2a0f853f4e48dc487808b52a8c352e60f342d334f444ccab15e136abb15faf5adc46003fb2a190459b1ff006782c66bf849cd12e2308d43999611e7ca62665cce3d7227fe9bfdf08058298a6100dad3a9aa14008224899fbf309106527d93d41970a636257bbfbf53a822f005d55c0abe321084b2b4d0eadd83d06f18cc0ae23934da5102c6045f664ec9ebd84794e10924352b923b8a4f8c3c86af79f3f8487346e0b400030385ff00d194f50d244cc6bc800019dfd61c710a46088ce708ce62b05b02ce1277f57f1d7f49c2cd609bb4fac757dec7390e52cf643bf86b91080eb07b1e6f5032804f08e48dc6afc1edbb1d1d066753d2a0969541221f0e87d7ed87a54096c50853060e4221d9e1586f682c42e3de8f60140cc92e7464e9eec1e22a3237e3992ebc31c4112f57540ebeb07a77588e48e49ad4a68930308935092e59930c0fc2117028c40c2c68e45b70b194e3ebb044a0612cd395dd28001970d7a87a230907b8b4e863d3f62288cc02386de2324247b9562f0299484c3b987a9d9812ab00501971a641b3cd4bd432fce2455f08424dff00a39377ae7c2527dffbe870f3e82226085ef07b89b61585c4f07a8e219a0131aa39fd31eab00cd0b72ff86e1d1587a222880f32dd8b9b8503c070a4244e9eac650d1931439c70e12b229aa863ac4501520d82248fb738a62c6cb13778f10b0b79912edbb45f4a2400955802a57360bff126e8d57a9e737b8dd58770d847a5625365870e4dc28000c02387c4a890208994e07f58fb46a9846005d683b816d14879e202a051c9184a3712d0088c832b8a6c9e8981205d071f4282083d4a830a444820f293a1e9ca006389883ca09cfc4e00237ac5f69240084e7214752e941047136fe2bfa603cd25d5e8886c2e8d43f627af25fc72febd09d93463012c6f4d1e75d854c1b181cb899f79c146cedf6b19d3a3610ef3edc54ca23018861d449d685a84382123d9fcb192ed43eb4efa19435843a1c9fce414c32710da61ddc53d30b5a249e4a97931d512787d982f76d9526fd7a7177b3c5f399ec61b1f95facaf907ae659a9498f93cd2fe5b5d5762d09cd9e2c778241a0c1d9ddec930245d4be91c594a2675b105dd87b1f91233be7fe27adc2ae9cfdabf4fc3caeedb704f14af9294000181c5ca397f79fcd7d89c533e67da2808c88e2c083834dafcf8a8ea4c19d674fc3dfc88fbff006bec0098a3d7f017cd2432677770e3135800cd501e0f6013b1e4c7c3e36deecd3333bafe1feecaf60901c81a0a7dcd1242321b2b338c5d86810ba58aacabaf18c4e4e742f785ec2846e33700fb71acc5c0b8184724a0492701b2b329c4d92a35ff00517f7ec4ff00f2e056e1a765b03fc3b1c6873c24fa25ca5ce4eda8927ade7879841568e7638e1ae8bd21cf81ea1535d4a05e7ec5ed88ca263a813ad6f3d7312bdde358a80de968f1186c4afac4f5f5e0d7c16e8d4aa4bde7e8b0ef0695142f5bac0439a050b209b716c596210899941041ec00040200d9bcdfaf19aa32733763037691cc6c2fb5ace72f2a0db763dcd49b2e43db4569ff006205e4c9530272187b5fccea458c83ed41d61a009426df358f4a5b960bb536ea1c70d8cb3b510e5f257f993d1450cc1200ba1c03b298e6fab60b9cd4b9dca3bdba4a281976755941ce2b071e4fca3c27c581cc0b5242ee2d87524eca5463dc7e817d94d94b107318c5dde1a714a44e20d8c0e8d2eb06d18746289d97ed83ea913b2d44ae902c392b3d2844911f8cb59ca402eaf2a8a5ee50235c2a721a8115374a4e843d1a6f44cb799874c12ae61c838c402208d91ce9e54aca6a3aac57ad4c2d1c00e45ddd6a3456032f41051107e251ee7952c82a624fc1a862c57fe0708035b617539a7e9510dd6ef91d8766afb88a540e913d66920d487bca0bfc29810785a7b953ad323724be15800e9524e8c6048f461e68b413393e8d7c57f3ba682b125c9e1e431686244c05d7a52f0ec12cea03cd1809741fbbc50028e7e52bf4a492f349f60f9ac618b9287266d060b40101d3e3f7c34bf92a78cd97b015222f451e4a5bfd8193493dbbf40d0c9d9e6f934f406ffd915fdbaf729e8fe01815e2cd53c76afd50f232282e12f22bcae0fd579a37faa0d2a1cca5f7dafd5464c1fe49af863ffd573a311ed1a783aa29f2feb462f9c8f9550c6752fd8289886cc977935b09f23b1fff00017fffd9),
(89, 'clerk001', 'c7dbfca89675a8080c1dbeaa9f6c1cb9', 'Deactivated', 'Clerk', 'Howlett', 'James', 'Cauayan Isabela', '09359291411', 'Male', '01/01/2000', 0xffd8ffe000104a46494600010100000100010000ffdb00840009060713121215121312151615171815171818171717171715171717171617171517181d2820181a251d181721312125292b2e2e2e171f3338332d37282d2e2b010a0a0a0e0d0e1a10101a2d251f252d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2dffc000110800c2010403012200021101031101ffc4001c0000010501010100000000000000000000000103040506020708ffc4003c10000103020305040903030403010000000100021103210412310541516171061322810714324291a1c1d1f023b1e15262f1337292b25373d215ffc400190100030101010000000000000000000000000102030405ffc400221101010002030100010501000000000000000102110312213141041332335122ffda000c03010002110311003f00b2285d245cc822eda902ed89838c522984dd36a95498aa26a461d8bcab6ad6cf88a8e739cef13b99201302da08d1ba715b6ed56388a628537b417d9e752d65e62fbe2237f4597a5b2d804898bc71238c9d49f84ab3c7167b1ccab58806cc689307c2dd20702ed2da8f92a0c7bc0f0b262d726e7f382d4ed9c7329f85ad802dc07948b9e70b278aae1ee2483f11f6551555f51e6e2f74cb8c294f60f77ec987084ce24e0f099a49710000605cb89dc2f6e654dcb54d8bc346e124c7c37a6367517bdd221ac1ed3cc06b47093be37004ab67e570f0d52f8e7aff00b411a20aab2a517b7da33f0ff29873b74a7f12c70370479288e2991a712091f9d5346576f0929a4b13ceff009a2718f3e7f9aa6dc3e2bb65f5404fd9d8e7d17b5ec711043a24ea388fcd57d11b30b2bd1a755ba54635c3cc491e464792f9b02f73f43d8fef705dd93e2a4f734f43e2691ca1df1053da2c698e047049ea2382b734d27748dc1d50296102994e8279b4d381a92a43028a5ee549ca8ca91a29a0a3d5c32b121705a81629ea60826fd442b87535cf749ed3d551ea212ab6eed22370bab185204a4217302809e604d80bb7d40c6971dc09eb025012a93554f6d7691a186f0e669a872978b656c4983fd4623e2ac365e243ef360d99fdcf410bcf3b5fda66e332063629b1cf0c3bea1812ee4dfb2bc4b5ea46c9abdeb8971cad681e1d5cfb1d4fbb10d117b1d772776be2bbb05cf70062c378e5c67f6e3c6ab67627bba45e48993d245efc627e2542c4372b5b88c482e2ebd3a4778d73d4e00da07357af57b54e2e839fe33a1dee7b64f41330ab5cc572ec5d4ae60358d07dd6b1a001f056187ecf661e206790ebc15db2098dbf1946b61775a9e6131befd56ea8f6498337911cada4f143bb38d1eeef51fb98abf6b263f098115603eb53a6d1a349749277c447cd58d6d99dd090e91cc4b4f457b4f600638b9a2e05bffad79850b1f4de6d333ae6fba7da5f8571bf950626bf283c377cf455f51db8a998ca241fc85172cd95a0cf926aa8830a596ee4d5665bebf749529acd2176d37b84c2edaee683489f2fcb2f48f4238f73316fa0648ab4f30b68ea7707a6573be4bccccf1f9ab0d89b52a61ead3aad75d8e0e03339ba1b89690402245b71416bd7d5708858fec976de9e38536b07ea005d575cb49801199cf204df28e73c8c6ab0b8c6d49cae0e8de343d38aced5c3c1aba012a546cf42110965128d8d39217242ee508d8d1b8485a9d4853d968d42176951b1a600a10e4058b238c507b4048a763122a0f30ccc3fea54e6a31d85ef6996cc1d5a7838687a6e3d538196d97b507aa56beac14f4d00a6018e7e23f05e7edaa43408263d9e53a81f157cea6fa45cdd049cc2f20825b16e5f455f5806de0199803f695ae275db0821a0fb2c1f173889b69fe53357126a54ccef11366cee034fbf529c34c06ba353bbe234f82d4f64fb3191a2b5610e37008d01164f2ca6336bc30b95d23ec4d825a03cb489e504ad461b004e80c718573498eac45835a34107416103a2b3a3850de83f27aac6cb957649309a51e230600bf050eae1a263cadafdd5ced41026387c623ecaac196f359653d5cf66d5bdd48b48d472e855363f0c35bf3d0abbaaf209911fce8abebb4104e9f64f1ba4678ee3218fc3483c4154d56865bf15adaf477aa6da74fe0ba71ae4cb150ba2cb9aa25b3c53f88a605802b8a9a01c89fa2b66ae4b294b4f04adba14e8028490424824a025e1b17529d98f7b44cc02409e300c1eab71d86dbcfa21ef7563796d3a409ef1ef830e02083ac4bac27e181cfb874577d99c5b29556d47970cb25845e1fbb33483981d08b6baa594dc2f95f476cac739ec6e66b9ae80487466bc413077a9dde2a8d8b573d3154fb55435e44ce5968cad077802dd64ef53f32e5dd6e91de23bc5173a33a374692bbc40a8a2e746746e84bef570eaaa3e7485e8dd07bbe4aa3e642ad9320528488439ceb4a9148a8c13d4ca20acdf6a76412eef5b001f689b37917102dd4f11759576c92e21a5cd8924dc1ca37ba353a5a05e16d76f6399fe9d5efa93af92a3438b1c22f76da6371e0b0f89a0293f353c4b6a34ee82c783adda7e8b4870e6cfd999eb35ac0e7b5ae639c3c39b2822dc2741e6bd36931cf8059974b1dfc0f9af33ec36232ed060930f151bd7c25e3feabd9293fc23792a396ddbb383cc7665fe00358de6fbed78d0fc934dc6dc03c75999ddf453195e4104718e9bc10aaf6d332e578f75cd27a13fc7cd2df9b8d64df94bb42e72fd375fec142c4512d21bc4f33cbcc595963687ea67dcd7341e41d6f918299da94bf500dc24f9e83f3929c9587f8a3c7362ea9f126d0aef691248e0413fbc055669ea5c08ebaf9a89f4727c52d5136506b61e4110ac715037a80fabc56f1c597d54e2b0502faaa9c6d08876ed168f1105aaaaab6c42d6567628df6d5721398a107aa661502912848bb6794a03ac3b75573b1b08ea8e25a01c803e0e8e01cd10606975541c56b7b35862ea618d0d71ace899bb1ac904bbfa45e677db822fc4d7a5f66305facdaf49bdd5234a1cc160e7b88be5072cb4000b80127cd6acbd56ec9c30a3458c6e81a05f801fe4f9a926a2e6ead264905e8cea2f788ef11d4fb2567499d46ef11de23a9764ace8cca377881513988ec921c84c35e84fa976674a020a14b3760aeda536128283492d0e10742a8369615a016d4a409d03c0003846fdd2af69b93e6935e208549dbcd703458cc653a8d665ca788f79a41d0c1b12b72eed08103708d2e3e2a0768766641de3037c058e988221d7008f2b1e6acb69e11ee2d0c70a34cf89ef003df1139581c328ea67a259df63af83d9748afed834182de169d3992653f536c8ac32ee7013c80333f288545e907b34da2c0ea2caa5d022b3aa1734bb389152986f87c124106277051bb374007063e2f60e3e1e00489920bb78dd1628cf1d469c59dcb2d69aaad8f355989ca7ff00191e52b8c46d26bd8dac7fa44f23bfe6ad1bb3d94e83e1a1a4b6fc64eef8af3dda58e2c69a638f158c96d6f965a9b4dda1da02010d0de1a195415b6b56758810779b053f61526d46bcb85a40b58b89f76770e27705b9ece6cea3529be5accee6c03ecf752088680662da8d56f8cc77a736732b8dc9e63530555c2411d419504e16ab4dccab2c7f676a51c4d6269ba9b0ba58d6bbc2c6cee783e211613e69ac3bce84c9dc55df1cf3df4d1a66142a94c00792bbaad90abeb366c94a195c59b9bf1fde146689563b470e67f3e4a131a67f75aa5d3298238a73b9d0decbb2c22fa29d856875a67e1f64529b45d98c1de7880204c8d6d17200209e362bd27d17e15b99e45c10e3c816bf2b481cc66f82f3fd9385755acea6c66671245b56b7de737fbb86a791985e9fd92a3ea956961e273833534153c24b044d9c208040f10bd882952b5b2a951326a298fa09a3874faa3751bbc4674ffaba3d5b923ac1ba63bc4b9d3feae81874758374ce74a1c9ef5740a08d0dd701c84f370e951a3db3e52a2510b99402594048510ce30a9549ca1b4a934cab88a8dda0a05d46a100181245c1b7f12aea8343e989e01476b43810620820cf022148d9632b430cd806f58b4a9e49e4747e9afd8835b0752ed6d47e5e136005a3a26b67617255001cced0f0037fccabcad872eb031f811470ada5a5ddc4ebfc5d47bf9764cd0fb4188cac74de47ed75e4fb45d99e7aaf47ed4d78673baf33ac65c53e3f6da397cc245ef65719dd3e0fb2e3f026df40b6b5ebb5cdb8045fcb7da179e609c46eb745a4c2e321a1a6edd7532263e564f3471d44dad84cdd0e824fd4aa61818bf05a4acccf79e93fb2898c6068201fe14e395f859e3b50d5b5940709533166e5417be04ad639b254ed7709e96558ca7709ec6572f27aa6a90faff0b693c6769fc5ddd0dbf45270740d30e7bc40683f1e0bbc0e561ce4dc71faa83b5f697790c6e9a9e67eca7d3d0d8db45d4710daedd43848b5da75106d71c57a3f66f6952ad88aa1efeec3580d0cc086b5ec33c48601ec8927da895e59851713f92be83f473b3a956c0d37b98c7073407372cb4161c8d1c9c1a00b7d53a566eb4b85736ab03da4381de0820f42354e1c3a9585c1b29b4318dcad1a01703e29dee931d55deae9461d587748ee91b1d55feae818753fba47748d8ea80682061d4fee92f7681d503b8429fdda440eaf3e294242942e6285090a020a0c3548a65476a7a99571153a895c50a843ea026c0822fb881f5052d02a354ab1892d8f698d83c60b8e9c449467378b5fd35d7245de1aa5a1318fc516b9ad6ea4df900bac215c0997389de206b6df75cfbdbd1926f6ccf6a6adb4b44f1fcdeb055e7dd173a2f43ed8540e16006b31a792f3da988ca7c2d05dccd8733c7a2d78d1cf7c8ee8e21d4ae648f78710b4386a8080e1706e3a2a1ab5fbca61a40ce6c4810d8e9acad2ec4a6d34bbbf79a24731fc279fcda30fba8eb3d819bef50f175253d8896cce8a2d7bf9a890f2c94f8975c8553b46a43485698b680666e495418e7e6242de393255bce8a76029076aab5e4ab4d940c4fc1697e22206d8f6c01a469ce4a84c0a56d404be7c931484fe7dd0a3b46c57d0de8b369b5f45cc63da59e1c8d0417340680439932d8323e0bc9b64f6371152a566369e67d06f8db20b5c6490038680b418370788b2f61ec2f61695260ad570e28d526cd6bdcf8658b733aa3730748bc10954cfadc0623227c849092cce44644ee54b9500ce449913d95108067223227a11080683509d84203cb501214ad585670a1050828874813ac29a4e315c4d4ea0aa76fb5b4ead3ac5d1208d63979eba2b4c39513b5f862fc2b88f74b5da4c41d470e0792ad6e0c2eb2956585c402c2e07872124a7d9bb345efadb768b1184da4e0594e406c871362622dbeeb518ada429b64d27ba448ca01ff0b9a4d7d7a5ee7e62368e029d4273ceeb891cb76ab2d8fece5300964cc9dde7d3fc27c76d5af7169c3556090dccf6cdc989f00710029789db8c70302d03dda87cc783e6ae4ca7b21598fcb597c3e021c1bfe3a295069f89b3e1368dc529da34e7365a82d625bbbe323cd4bd9ef639a5b13326e227e3d555bfeb3eb638c6d70e687ee300f22a8b158b0db4d92ed771a24b4ce58f2ff3f759bc462a5c0f0babc70679e7ea46d7c4c91d27f39aa9acebc84b8dab3a288ea91bd69230b4cd53f2571816fe9cf255349b99d11fc2b8a432362744e9c41c6628f766946953bccd7b12ccb1c2f947c137b2b0552abe29b492d05e4813958cbb9c780d358171c56f7d156d0c2537e2d98d3fa55a886cc39c44120819417030f371c16fbb138ad83b38d4f57c5b5ceaa402e7e6739ac17c84e501ad9937e496ce4f1b8ecd6cfa74e90a8da6d63eab586a16fbe4361a7a45c0e6ade131b3f1d4ebd36d5a2f6be9bbd9736e0c183f311e4a4246e6110ba420388442e91080e50ba8442038442ea11080e50ba4261e5050105002e666e9050109c3a40ba695c94057135330e5599a0da8c7537896b8411c954d02adf0a56910f2e6d134eaba897410f2c771203a246f1363e6bd330ec61a61b00b40b7974589f4818334710dc43662a882080035ed6b459c38813f1d55e766b1fded283722dd46e98d4cac3965c6ee3bf833d8da383a39ec00363f30a0e228b62df703f3e8ad313b21cf766f6638db7aa8af445390f369991275df1c14fb7d75fef65f15389a206f927f02728b720049e5fb7c54fc5615a7c4d820dc2a8dab882c008d2609916237725585df8e7e4bf9aabed2e22d03c42f33c0c6b3d010b22f74594dda3b44b8dcff0083f4554f72e9934e3caeeb9714cba4ae9e4cd976c647c02650f5001a39a2b569b4a6c94b86c3975ca44770f51c2637823e29ca2d038a7994c5a125465d1b0f73f4138fcd85ad4267bba81e3fdb5469ff0026bbe2bd317cbbd88ed03f018ba55838861706d51b9d48919f30e43c4398eabea2041120c8dc78a98d0244a8402212a440084a9100884a8402212a101e4c501080b066e820a020a0e9122548ae269ea26e15b615ca9a92b4c2b9698a1df68b657ad61df4c0f1112d3c1c3d9de179b767f1470ef8758b490e1fdcd21a66fa4902642f5cc39598ed5f62bbe22b618b5b56497874c5593bc8d0fd0232c7734d38f3eb533ffd36964c0dfc0de3a9b2a7dade2607580897733781f2e0a060a8639999b5309580009243464102e4109368629cd664731cdb7bc0dedc56196e5d577e394b3c5754c716b6dff11f388deb2bb6f68179807883275e04f96f56bb4660f84912d361a19fe7f0154582d895ebb8e46102fe2320741c56d8493d73725b7c525437d53b4708f7e80c6f3bbf95bcc07609a00354973b5cb700f01aa7b1db3773443468070e813b9c44e3ac10c246e47abea56ab13b3e3c207585538ca41b36b7e7f08edb170d2a59437b85b9a9152ab4361a20ef51ebe22442eb094c9dca907f08df8290fa60e9a22952be9f9bd18aa8070e5ba149a297415f45fa23db6dc4ecfa6ccd3530e3b9783a803fd337d41645f883c17cdce375aaec376cea6cda8f34dac7b6a65ced7037cb310e1769f11e3ae88b0e57d368596ec876f309b43c0c764ad12693c8cc6352c3a3c74b8de02d4a1410842082108418489508044a912a09e4a8082858223a094a40829432244a902b89aea995658555ac563865b628ab6c3956148aadc3a7b19b46950667aaf0d1cf53fed6ea4f44cd68181c0b4e84107a110579bed56cb483a8de2f3d0efd171da0ed6beb82ca734e8cc1feba9c3311ecb0f0dfbf827f64fea619b304b7c3d00d3e8b9b9b295ddfa6c6cded4bb2593574fcf35a8c36140b91f2df69855584c2e5ac206ffcd5690b0800fefcf58e6b196daebeb0ce21b0db0bc5a66da112556370199d001dc0f3d23cff008536b548199c600de741e7c561f6f76c29d57faa50aaea63d9157d963df1ec54f78349b67989d411a6d8cb933e5ebc71df68b1b4293fbb17330e2dd1bc6fbccf0584db18accf21ae96eee1e499da39daf2c7e6ce2ce06c41d62147a3489bae8c7191e7e59dcabaa34a4ab2a2070b2668bc3468ba7d5908a93b56a49b587f17516bbe4c08faae9aefcfb28c4fbc7caf74e023cc1cbbf9a5633894b82bcb88d4c27ebd31740185aeea6e6bd8e2d7348735cd30411a1045c15ef1e8f3d253315970f8a73595ec1afd1958f0fed7f2d0eee0bc09a95b522e0a9aa974fb090bc7bd1afa4df67098d7dac29d771d3706562776803cf9f15ec28504210820842100210841bc86b5482b96d6e91e692b3493bfc9235a79efd442e6b6eca49a77dec6f09c352d3d13041e7f0fe175909b46e4a5aab23b152d3c172dadd3e6b9ca7870f92eb21e1f9cd5cb51a8914c6f903e254fa6fca09240004971b00389e0a2526e9a8dd61332b21da9dabde3bba0f2da4d3940feb70de7cf4572d4f595a7da1dac0df0e1cb5ee3ef10728dde11ef7ecb378d0e7973eab8b9f6973b70d6c370e4145041a8d22c2c2fd64c295b52b358e209395e20ef910351b9679659574e38630ce25ed0c30e0e11223791b9597a3dda3de1ad48ee01fd6f94dbfe2b195b194e9121ae2e1b9a6f20ee16527b138f2cda14c9b0a99a947270904f0198055d3fe6ab1e4d651e94ea70f073189fc856352a7840d2e7f3e6a03ea7ea447f0a655f647523e8b9dddf979176afb44fc55514a938e4cc1b4d808199d983439e662e62c6c2cb31b5b006854349cfa6f70f6bbb7676b4ef6e6801c46f2d91cd5d76d362faa54c80785c3335c77b4ee3ba469f0e2b324aefc64d4d3c9cedb95edf5a6d98da78ea6da2fa8d66299e1a4e71cadc4323c149ef366d469b35c6c410dd4055d5b0eea2e752a80b2a31d95c0820b48d410554b4495abc3633d7e89a352f8aa0d2ea2ff7abd1637c745ffd4f6346669d486b9bc132d2b694137263947dd256acd8d14265520c7ec92a3e51a4bbef0cfe4ae1d2ee89dd9f857567b58c173a9e03792afea6cd631c00121a2001ef9e7d52dc834adc3510d6677c651b8cf8b90fbaeb17432804e8e008e46012d77020f1e0afbd5c521ded5687d41ecb4919697281ab954626a124baa99cdb86807113ab825bd9aaedc5096a9bdb45c82993a0e5ea7e8c3d2677393098c79346cda755dad1dc1b50efa7fddeeefb69e532948de12d1cafb1819ba1787fa2af4922806e0b18efd2d295527fd2e14ea7f6703bb43688f70050b08421041084203c992b47e79210b9e221421c8422a842ec0421511fa7a791fd8af2cdabec8ea3fec842b18ae1c3c2ce89aed1fbbf9bd08533eb59f199c1b0779a0f6969bb094c17d47100b83d8018b804dc4f042169c9fc29f0ff00646ec8fd41d07ee54ca5a0f3fa210b923d1ac7fa6a6834b0c48be7709df19098e93785e4847d3f642176e3f1e672ff0027787689d3f2ca6f660c63b0a458fac50d3ff6b5084d31ced560188ac00000a952c2def950e1084d37eb55d8a688aa604f80797895ce01a3bed371fd9085965f553e18734179913d56571b7ab078a10881d631a3bc788dff00651f28e0950ac9d168e08010848dc39a2f65f46fa1aaee7ec9a05ee7388355a0b892435af21a04ee02c02108fc9cf8db2108400842101fffd9);
INSERT INTO `staffs` (`id`, `username`, `password`, `status`, `position`, `lastName`, `firstName`, `address`, `contact`, `gender`, `birthdate`, `avatar`) VALUES
(90, 'bryanfernandez', '2186ce6370670e56701ec5e7dfd5aac6', 'Activated', 'Clerk', 'Fernandez', 'Bryan', 'Cabatuan, Isabela', '09359291412', 'Female', '01/01/2001', 0xffd8ffe000104a46494600010200000100010000ffed009c50686f746f73686f7020332e30003842494d04040000000000801c0267001454625f46614752363464643632546e6a6f5a55691c0228006246424d4430313030306163303033303030306136313630303030633832653030303039313330303030306138333230303030656133653030303063393663303030303538373130303030663537353030303036333762303030306131313130313030ffe2021c4943435f50524f46494c450001010000020c6c636d73021000006d6e74725247422058595a2007dc00010019000300290039616373704150504c0000000000000000000000000000000000000000000000000000f6d6000100000000d32d6c636d7300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a64657363000000fc0000005e637072740000015c0000000b777470740000016800000014626b70740000017c000000147258595a00000190000000146758595a000001a4000000146258595a000001b80000001472545243000001cc0000004067545243000001cc0000004062545243000001cc0000004064657363000000000000000363320000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000074657874000000004642000058595a20000000000000f6d6000100000000d32d58595a20000000000000031600000333000002a458595a200000000000006fa2000038f50000039058595a2000000000000062990000b785000018da58595a2000000000000024a000000f840000b6cf63757276000000000000001a000000cb01c903630592086b0bf6103f15511b3421f1299032183b92460551775ded6b707a0589b19a7cac69bf7dd3c3e930ffffffdb004300090607080706090808080a0a090b0e170f0e0d0d0e1c14151117221e2323211e2020252a352d2527322820202e3f2f3237393c3c3c242d4246413a46353b3c39ffdb0043010a0a0a0e0c0e1b0f0f1b392620263939393939393939393939393939393939393939393939393939393939393939393939393939393939393939393939393939ffc20011080258025803002200011101021101ffc4001b00000203010101000000000000000000000203000104050607ffc400190101010101010100000000000000000000000102030405ffc400190101010101010100000000000000000000000102030405ffda000c03000001110211000001d7934e0f3738995ada9315bba018b2dd0e5d190d523d4baad190d2bd1d883c6752e5651f90ed2721d12050d4b9523829d0bb595518c1a6aa52a234e6f23bc7bbe295ecf95d6f109f97628365dc8addfca997a87f92dd87747369c540c3b73e875c241c006ccbb33778d4c5a5384cecd392d465d1977b42da1a029abd45d9aebd08299cfc885353ab94c5da1af46788c1a562e229efc5d04c96072f42aaf129ab216c6e56b41a992322e487497230f3b65a8156b02580f5b4a3ccb47922c621c1759d3b79daa8e57a71d4f2b3bdcde972d84a3836139151d4e8f9b2cdf4e1c6d98bd24537347563d11b8d47ceb420accedc9ab956dcfbd08985554aa54395d3bb0cf90d36e325ebaa556aa8c74f0b559b7e2b45f33583a727446de57e6681872845321e76ccb28986a36e4834920d68cf96eb53b82adbd1cf3ae3a9783a70c2acd96dcf8974ccbab0ecde972774baca1e2e5e4f7799b7255dc2dce096dc1a1c0b0aea2bf67364d7a39e7b4e1e97670bb1c2988496b23f16ac8b66b4906aad003ab0241aea2da79f20dadc126b4c21ebaa412b5aa9426d2d1d3c5666d98e6a3b4d2a4d31231b2b1ef95cdcafc454b5d3145c7d34a700f5d1e60ad4baa2a7926f3763f05c6ccd98acd2dc6b378e531cc5c97a7a39058a599e8d1db394c3aa8cb9a292d0de950cec51008ea125b6a6e5eb74fcade2facc1cbb97a97c3dabb406f3b159850d855cf790dbcf9459610974c95bd6b52cd7937019362a15cde972762d0adf4e4e8cb88daa52e905daea355c1e6be3ea339607d8d5556adc945d89c43085c909046c605408859299259936e8c324b22e88a178b52b5572e9a5890d8c75333db3a3a10e796dcd798c5158752c9062efd1c96635d30ceece8ac02deb6ab1c791c319999733b3eb414474dd18f5e4d0161cdc9a99b73dbad74413565989e99565ab10531ecd33715c8eb258de852a2cabb2e5505542141b28aeca29714d0712c2a1aaaa833cf7669762346a89b2e5296d2ad96d1312fc7a255d4ec24508865de58077ab7cb31586b995ac94e4ac9a79e9af67453879d6ccec334a2b4742ac65a19291a1a9cfdb93a16241cb8a7c504b72da472f6733a3a695a6b00c9d65c916e0d92ee8a294555d24bab585502920502c325dc36d2630a999525e01317459e7b18b2d2b98d839e957753d17552752a1810d021dc9739d3b475cb116856b92c86ae7d990b3cbcaa4c75616db4c762f2cba4814a5399c1a345192c75034f18c09ea61d6b370babc9ea3883d9124d49242ee45924255424b85c90bb1b0820972ac97541d81046bb879e7b96ed4366d2c172ea3c6e91ac852d98aa7435c7e7d39e6a074455da05dd54baa084a9029b75e8db8f4f1f98dc8d15c2d8ea7ed5371472ec8665e91b01c3702fbb85d32ccd93a19b5af3b89d9bd044bae92aac4b9565dd52dcaa4b9212e45b9744aba065c492e2d42851484aaa1906d6e42921d00f665387b3348d1406a0459e75631179efb0f049b72da76e78f42495569cb19af5ae71f0f94856987399ac56c8f3c5bd6c146e1324d029640d55cb00f95d245795c5d3c3e9b944c77025ca957164bb06328187202c88087454b1a9528ba90925925d8bb2a24a8150d85554110586c55c3e9451a2d2cce8255cf554b10e86e809677256326da69b9bf7b33879fe6e9cf69573f9aeada90916fcba2462e60b7a147225d016b6004219eb379ef4fc9eae4a3a18fb134456d3776aceb8d3af5972c7aed38b7da51c95f668e417472d998755e990752c4d3c6c5c3a2510554ab49576a32e924a85cab0a54522088c6a1b9d1d8963d6320d5d5d580c5b6494417572899f55415c3c6fcca606742af7e6566f48b0e84d915723a8952d0bf302039acd659ba072fa18f5d279ddaf35bbcbdebeeeb68d0f6f1ea92d87999437ae24d0e670afa567083d1e6af39cef539f6f2dabb78f539f9bd501e3d7ddc1d73ce0d69dc451dd832554a282e15152e1248110c1ac5b71bb86dc7ad31c2d253a53ac0380920105a55749eac13a38f8c04c11e020a714613f2a4ebe9e46ec4e862d99b2140ab55944c337473b6177707797f49e7b74f762e8baec6d5f1d68216cc559580da7a0dcb2a19588cfb56632d252f29fbf2599789e9791b9e7326dcde8992981d240728195608dd55ca85c8c059199d0e813cf4b51967d0b17534ba2ab2a48492c086167a226071f0d03515a5222af1a04654629da64ceaa1187e431348a54d748733e4b35e9931f2b665dedbd246cc7573a9dce115125dcb4260d972ed04e4d255c0618c50909cee776b87672f97dbe5fa2620d4be84dd55800c555492aa5c427a3567a599163b2c57d09b1a60e3d0b5006f07752e6e00a32e5b5084a6fd1c60f2f979c5f559c365db9232c59510329a8c550045016d8b74b334702c566b1ec4f4a747681771d5e8cee0ec4e658545552e215c855d4abba2a1924509d19b85dfe2273f0f411d5ce4b93d7284bd5b525cba1ab1ab2030ba58ba7cbd478b772b1ddbd046a9b4e5d29541c3d62090b459f66d9383a169df1d320ba7ad220e1f36834082b62e970ea970a2d031655185125c910d568a41b1267c259fa3abddf27d5c6fd03793b3874e8312dce5e4148ebcc8b3a13999d3b85c5d66fbc6dad5008925ad55d4072fac893cff0033d272b6e3a77f37b4cea7a3a40130d025caa31234f6795d6f3fbf372ba5cfb7aecb2e5e8c42c4ef20c532c6a5a334bd599a073fb7c8df2a8ad1be1ec9463e5f19540a1060d55c64aa290a590e9172ac8ab4a899b2d1ca615895bb469c6bf4d8b3bc3d5e5ec9bf52e46af3e431eac4981a07bd1a74e96795d0d9a24cec7532c20b19756b25c946e522795d9c32f96e675b97e8ce743d1d7202c0d50abaab3125e8f4b0ecf37d1c49b6eb3d0a3571f5062db8ba7251bcecccd05add4966ee6eccb26562cfaf97d8c1679bca54dce092e5ac3cf70e090343a8c4bd7936153d36e9b532168d39b4031c76fa83f22ec6fadcfa3b7d67473eee19cd97a79639795d8b5d3a7b785b19ecbb9fb661b2aeca9290aead65c8b42419931ecccbe5f8fd5e57a33990f47591641a4abab618323b4f02f37d3e3f4b97dbd65f9f4e7e5e84e77e5e9cb5e6b20f2b6929c2951035ef9e764d1ae3ea62c7878f567588e151d12c68d74072d02e245c4eab94f52a655e9056c01a726c8765e77caecd7a5ce5ac859c829a11c9f3beb79cdf95e9f447a5f303ea9bae7ccee30713a479356457217571444aa41c7b71cbe4b169cbe9ce20d0be932d6bdabc7af55af3af14ed9934f46989f3fd1e5f7f93d7b0b2e8cd8ec18b6e7e9ce3f20dcb0cc66b4606a6c08c4eb0270ee7d4e57e7e5f3c5d99d4d4e95c67833575449660d0cb627424bb31544b94975317aac6171e9cb1dacbadfd25b73caeeaea818308e7f4073ae61ec8abd2b365e407acdc92dbab84928aab1ccac7b324be5b95d8e47a606cd5e9239dda797261e67a5c73787c2fbff17d35d213a9ef5361cd202e561a256f9eaceed0b8c4292f5258a8c7b79fbe7adb51aeea8663e594111f4bd118e03355874315744481acc656b142f4d56dc5d49be8d1238eebb397a08472ee2a48b2a5894b958b209a93299732e5e95775655d496eae88372011a159799e6fa1c9d2f4ba95310cbcd77ed78dd5987c57b9f1b7be537733a77edd8ce7d90243591c25bc112c1531e4643b14ac7ab36f96b9473a7485819f960bb1d5d1b30e8cdcba000d48a204d60340074d459999372b53616fe73e75eb293979f4f53b39faf3cf5402b9945605dd1994ec39d6a62340d303b9b926924965493364901952201d65cd6b74da4978d983375f9135d8103b3070ba3cfbebc3cedb5d6f4a1873ed8d5a7368179766b3ced0ae82d03724d332b91ac28216f8ba1967b7494fcb3e5a8c0b55e59e46b2cc7155754cb4b3210d0ba0abab2c0a808c4b7b32de79d7b9d8f17af13d68725b89df779ed09d9566d12573bab81476f2fa4ba0d66c149349242a5d44a951524255c81654a2101ab4ec902b6f21ae68d1df7703a5c9ee75c353b3173eb5cde860d32694af78d2dc46bbf208ca4939a98f564dfac4bb2e5e8dd99c9dfc61872eac0c2192c52d6db9698223060c11496413058b305a43d37a2b78fa1ce87a7837f18db86c1c96828d00bc1e82f1b5dd666d2c15d5d49212a42aaea2490a920557752ea125e7b17e630efbe96d88cf4703d0f13d1ef9a32eec58eabcba95b3f16a418e41de2af554d567b5523765d28db00cf7dab0bdfc516adab2aea592ec220208248a6ad905624173da9a6dadb68098361e87ca46bd6757c76ae57d9179be9e31d3b5b2e684d665e6f579935d0d59f432640557242a5c2aaea2548495022c8b37d65f39a757c57399e874fb383672f6e8c5b3959a5dae7ed4be7e909d3261d78fa677ad0859d2c7ad72449d2d4c4eb05a90fcee80b3cebb96a2ebf149924aea06e694b185c928995716306348c11118751574086816b9acda377eab770fb3c6258ca99c137d19b0f4d0aaa7166e8d39b4325757572acb92aa5491524064ac86d8267f0fed3c375bced7ab676ef1c0de5ead1c4eaf32f2eb9e76636a829bac8548e9ce894fa6b42f3bcacbcf737936e0d675b84f3d94062319737f2416552b98370d1a0196b74555304b16f1272a0a04ab3828497834bd7cd6bbf6b773f7f2d33663d79e7a4c09cee8aa908d6bc517032c92eaaee424a84a90a9024b2a38a0352e3f2deb79bbd625fb1c3bebe727571bb2395d1cbac7428871df3a595a603a3df34455d9d3cc8db9e985e6664c9b336b1baaeb1dd42c1b97029dbf940e1b94eaed2ae0ab199b4ca35545b16c4a60865462631528a8d15cead29d74dbd9f3fd2e5d3baec3b31cde604c154aa95779014952484954141a8ba0a82b0759777554972b3538f6e4dcec5d16a501cb783cdf611af269edf067ac13a70ef482468d631341972c6a344dc16e69d12bb9ae7b2aeb1dd39de8d72df7657e78c188fa1b511825b04961aaa1a69b46ad450e2ab96a886c6d08ad3b2f426cf5375f2d4d60ece48a8ae6e55d4924492895401852726ac2e56583ac260955d5d50ad9517c5ef8f48524b2490925038ba11af31c2fa279cbd7cc0f4326fa64d16f5a07e26b4a74676b0e8cbb7586540e7d94b6b77cb40813c30d45214a968c183486a082aea58c0ad8311a963544326692576af6e6a9af43b383d0e3becb73b7387d8dd972a1634a9182852e85e555ba833bb26b2db04ca3b25cbaa9250d4a340dcdc924b248251d5c4974495666bd036f0bcffbe45df84cff0045c177e347a3ccd74c5b736ab468ea755b5476181aefce610c964902a348e804510d0612864ab83b08ae11a406a98b2869474f3e9bf4fd1f1baf9bd8b3cbbf13d12f8083d066f372bb28cdd29435bb4e26773490590925cbab92541b1c9785fcad5eb6ee5f57a66492495745cba20c85dc952ae12484921336996f99e57bb8dfcda7b4f237d396e4d6cd44ad7ced01ad12ae55d1108a15ae2b62ad1c0322cc7a935cf1ec72a50b5b35990180ac90d55595d8c39032e1625485d7e37671aeb6dc7a784d26b6cc158d85048bba945528a5173e5cc797d37414abb9924b2ac4e2849659891249524849212484921248b399d387cf727d0b8faede6fa1dfe6ce0b1299271f40377903d3569c66fa0a5e36dd7d5ce79eaed64cb31f4152f379ddfe7eaf2b427afacab2f7f265c5cfd4e5ef62607adc2870aa6002275627afcab8f5da7cef63cf7a2cc6cc6341e570f251a322ec210ceb7c8674f6d3a24d665c964ab10a490022c42b92d9242490924249092424909242490e1208e33069bb33a758571f37a4e66b4cdbe77b99db3a9cfcd9c763cea6b4dda3284a3b15ccd42eee3d39167c21532f6781add300b5b61094529a9b085f132539766aecf0babcb5d86e27f18f3cf726b3cc68d15255b82f2e9bfbc05bc4292c92420dc82024a0bc18b249524a2e550524249092424909242490f9eebea71af4eaeee11de5da3f3ec93b05c8a5f39d3d49e9aeee4ae4f37619384bbc302357277f2f7d9cecea0732c39bc8b76723b9c3e9b262df6d90c9aa4b94cea35e9cdcb9ba98eccfb31b2bafa391ab9de99e0761b6f35672fcd59b5a1f43e57d8ef9eb29262492a4945121d1799ea475cb5a92554ba2e48492124849212484921248792d9c69ae9d29e5f375e3ecdbe1865f755e1b68fb3d8bc972f3db9dfcfdbb9b918df9bebf5786d1cddec9d2cd8d2d5d06cbe7b274b9dd2dbd0cb586253514c5b2ce872f7e4c074cde4b4e6d18051a9d9b4e0c92a5ac8dcd59fdbf8cf71ae5a2499c49254cda73434ea228d3a4b925b248492124848012ba2a4362ec38128e55924967cf737607779cf3ad6148d996dc29dd9772c486a24974b39a0cbd6e5ba6b5f4391b31a63f375b96b37673b78e87ccfa8f35bb9df99fdf2e70371a1170465d49669b0f3e8e762354932ddd68e725d951884ab43f36da3d7f97f5338b6eae6649556a6544124a5694b96492a490924249005684e2d4970552e24ababab8b5755679c5dccee183f2cd97a797a4c59baf87ae71cbd3d273b3f713d33cd6ad0ab7acedd2870e49f4de73d4f9fa32c2fcfd0bce7a4f37d6617a5be8ceb6a5f8d155d66a85abd47354ccdd756198b0956b9c8b8704b45e5d59b57a1e97cc7a6cf1d1756cc975552441cfa111a6e5ad492a490924249082552a6e4c5bb951724ab92157567fffc4002d10000201030401040105010003010000000102000311210410123141132022323005233340421415245043ffda0008010000010502fd4333e2aa21e330216cadc47f900a6ca22fc635c95417a965aa5b07ba398b689d37748e5df1e6c213041db5e740182581d966262c33196d2a50a7516a688c7a6536e531ed4a8cb135384aaad299267a70097cae495cdb0310936b9b2013a0313c31b3719dc7fab43310efa9f9ea5c9b88d80c703b5b461f21d0edda12b1b92bdbd48c6d101634d788892f395a79bc539c1230127fa0499daf9988628e32ff00210f5e4475063e904a941965a6603ed0c44a5aa748350ad2e0c7172825cc58d3fcca5d5ef0c138e4621bc787b31a644f10bfee342403521b5c29e49d3113c276d986d7661116d2c2533637c8307470a606c883767f825ed69786087605b6be2e76f18978462a51568fa3c3d365225fda22d4658ba894ea2defb020c7e97aa7b5b632c2398db1beddcf07b02ca0e0c2b7854c582e63289d4189d06ee64ab1ca0104be3c13f233ce62c26039b16208521ef3c0107c43b66d6d8c2c04150ce5737b4338e1bebea45a823fa71b4caf1b4ed08225ccbee76188b5d84a7594812f81f60407a6c20ee1eef87845a1ebc19dedd4b4f3e0833867830204e138e2d8331703e7cf88eda95c166899d972a5a293b30c0b939117013e53027a9f23d3f7ca7a979ea2886b020d51172ab81fec99cf8cf519a31b1a398a8177a949583e9ed0a1daf2fed472b135129d40d0fd93104bfcafb34bed8b99dec60109b1c6dc44265c43d38f95e7f9700104432f78bd1689d3615211f248b08176c0cc132216c62f56b830d40054af71ea9809319a51172c5440df0f5155dab439807143681f8ca2fc82087e318e2ad494888f452a47d33896b6c0cefd80da25660296a90c0e1b6072cf72e73b1d8ec62f416e7129dee5a790c6c5b0ac2dc61eeaa82a944f170522621f94386e52f9a66f08f853b0025ec4f7047785e354167a84c2c65e0d83651f25ef0d72179fc9724b91391d82404aca6d1aa288ce6a33994be316a0972d1825d821664b4e3b5f6bec223b2c5d61b53ac8e5e1f8b0383612f930ed6968a6d2d79c7004e38096845e6620e4337273c84aa419d410a4e568a70f78aceb29be2f931a796200a95ecb3eb2f7f6636f1cac3966f03424dee6079c8cb169d4bde78b5cf72e00f50d9d8b6f79822db5fdc95aa246abc829222552d2e21d8db6f1d0a621bd8994daf322331130cf6b1a6b197e4df5ff004d28a9b9eb88b94104e06fcb8cee1c0f1ce6a6bdcde7826fb5b6b6de25af2c2112f2fb2ce42729797bc0091c6625961b43f6bc30ecb2ca635332d332fed30122254bcbe61d96a031a5b17c98a483ea08cd941f265bc238c4226a5be106653b4c18cd688792b54219aa5c2e602235e729a8ad3b9d7e0bedca5fdaa25a081717e3034bdcda771a15806c765106fc11a1a4d69ca0b7b43182a4bdf6a3df4403628c23e25af0a812df21d068f68a315bec50eca78ce52d9b9e03a2b387edf200212657a965fc77dc6fe45e5a65a16c0632f167285b1d0cec46c162c1b89d4279c3481845b6bfbb918a32df29d04a840ad63294bfee00484e4b17e53fd1bc6f911d9a73889c60371538a2520c6123954c05cb7f9aadc8ff0040edca5c93c8edd410ce8f2b9848001276b438107b00dad08c14850cb6d7f61c2c3f6c5aa19fe4a603fa40540ed8016d76bc62790586e4f9b5a27132b5962b7c4584acf9a3c569566c1eff00a225f65db025af3d3bc65025a28c1412e06c4cb13383407265f1697f7948548dafb7609001bc5bb42b7652142931b242fcdb94a64c6bc3974371077fe00b9c18cb631fec3e9531fd5bcbc060368ad681ac59a5e0737c99c5a08b697c4e32d6963b0f7912d0ace12d11be1637c13cb8c331655e52a592219dcb619471f4ed05a78410ac230cb8c90d947372ad1ef7feb0f672bce446dc8df9319cad39080810b5f607389c5a11ef076bcb4e317e31b26d0ec893810a89721141cc065c71a4a23812c6e05a7973b564b32b7cea0b3466e5fdb1df297dafb0305c8160208d01220ad8b5378d4586e7da3616b96bc24d8da34424ad3e57e87f9b1bf111d62122101a52021107646d54fc1beb57ff008204b6442d3b8b897860526627715d920aa1a0a68d1a9b21f65b600b4ea5af2d69e40cd31185a0ead1a5af3b8b8651ec686c57a261ff00e05f712f3941313c7b454659cd1a701ecf01670138de14869c551161697bc0b685493c271b1116f2d0c023755866a0e50ff4ad2dfd3ea5e068bd5a1dad2fbdf20ec36e3810cbc338cb0b315bf71776f61e9234aa095aa082e21c7e0b7b6db5bfb20c17f79837e5b5ef0f6d03e030865818bde609dcbc1decdd5e36609aa4b823253d805e719c62ac2205bce3385e70333b7199fec03f88effe43184e0d4139dcc57cb9c2e62bcab8456821eed077787b8f79dad6a797a6e80eca2e5127a467a53d2b41420a004ff9c1874f69e8b09e9830e9c434d960b4659c671969696fe90d87b4c1b1d84a8f782a619cb47c44694b350f74cfc42fc548b9b4e371d4ee54c05e98ce562a79338e416e1be2eafa5432a6969f17a601a344d929c097829de7a7156d187ee051cbd1569e843421a1686808d41087d39100b37a62350c9a3381596dadf9c410ec127184468bbf88172ea0056e27ed19314eeb0f1684953ea1b0f96cb89dca7f6a995318fc5a21cdb0e250eaa75a8b96a54c16a62d38c0b9b4b66d185e2f5b0cc2b0aca94af0a18da7571e99a2caa0ab51532ad22b194422d0f52d2db0fc4332d15675390979785601edf2c3991c672550a4197bb37153cae0f68e2c5c5e9e6752a7c59dcf1e52a5f8aae08884f075e534f8953eb55aef4fb4ed62cf036e300b41ed2232c0271b8f44d234f8b4ab4ee2ad3c374c361d9defedb6c201b016979d9f70ceea722013065a130c02d19ae16f17128e092256b14ff227da2f469c168dd27550828d6ba4a717a8a30371b8f6f1dad197d3370454f89acbf28705bbeff1da010dedded6847bed107c9b3395e0ef26253bce13c9181d18ad8e703cfb0f2b897c924c5cca84ca6305be0d964110607420837b7e4a80a47f986b59c718c31e21f78822cee310028bcb096865c4e50309753ed108bc1d7401c5ed03fc7966e4c423607e52d06635e73c39b4a75870575e2a796cf6ba64a2c51040361b01b0fc7525507957bb0fb2d416686d7fc0a3169d0ec8165b46c0637d84b4225c882c775f8eddc61009e7060c41d2c26c53b265f14da39b9b7136c9a771c488a488edf127e349328b6968bd6e371f8dfaafda9b075173956ebc43ee129896c56c4a42fb5b0c6fb05c0c920082916044ea06e5b1ccfacb60e65a159c7637db84b5e196b44c05ef05db015c997205e17174cc5594f71d010c1f99baacb18dc2d8c221f8c30fbd05ca884e6a1bb511f18f0f5e043f639941c23d454aa8e2d3a87a021eed0f623de1ead8836bdb6e506c4e4dca8eb97c6a3fc6f79458446160629d8743ad86d79ca5ff000995d70c305784aab074f83efa7f65186c4196516d89bb62fdb09c726209484ac91a29f88efcc3837b43bdb638831b122f6845a0ee11716bcadd88ad9a75a0aa2527bc59e01979cad3d59ea986b994ebde739ca2b607bd963d3f8d55f891ca9308d91e0fb44d38f9095b0b4c5dbc8805e79132b01c1eaf299cb82cad07d94608b116e47db6d8cee183accbc39613c374e05824e244188ad34ed94eb6aadf1672c50c2f08bc1caf49a0cc11761ee6179592ebd168601b1f6e981b99a9fae9d6ec236028c7804df8b18863fd202672f8b4f379e61d8db6b63c43b19797971c9572eb1be332632ca4b79ff3832a50b4e369a66cd2cecd1c5e14817212f16908298812d38ce3b8f7d512a7753bff005efd31866a4fcb4e36abd742a5f85349f45b1b12604962229ba99e5679df106cdf5f27af2d880d81b6cb1ce7a97bed48e5660cae929359b4f9502158565480e694060fcb5feba8c433a87bbe7d826996c1bbab9a9447c7c3fdaa7d6a7df0a0fc85f9016e5e43721d09fea9c196f11af2f09b4077bde05c3df895f891b29b05611feb7cca9711199a55e682957e738fee69d6c9b3895f1162ea29829a8a564a94cc1f92b755f1181b987bf6ae251e98cede9f50fdaa76e7e6c1894526730222f29c4a868ff7f09f68b18d976ee1c05e875b0382d098f91e0772f07660a61a7fca21a04ab69424d269cb3a8b6ed2ad3e4da94ac5954029415a6a69fa5529eaaad2947f55a8252d7d07833f8751f4abf77ecc6dc6e96bf1052a8e294b2c0012f3b63fca41311ef4c541c48814aa860e1e7fa6ea9ec6318313fd1684de0cc5d89849979cb24f28dd1c4f1fe562a729f2043c2652a66a35350a3d8c2d1f27d2468ba5b16d17a869fe9a8b3fe2a73ff1f44c4d38a705ff0006a3eb56f73996cb2cf4eeba7d135429fa7810fe96951357a56d3320b95f504aee4ae9d0f387a4fac138912ff26fa83655365ee5ad2a189f530ce5783bb46c4bcee275fe7966e65ad2df24bf26b02732d88252a78748d4ed064e9e9d80f698e92c603680c5307e3add56c4ff002a393a502669b46ab4b8069534e0c05a83eae9aeab4b4ad7f0628b412aff00181604fed535365f94a94f00dd5bbbf28abc563ca7d5ef1b6589f23521ee7297c9c41b74eb88dde2d89e69fdd7a26309a6a7951ee30e65a719c60583f1d6fad6eccd25024d1a2271c28b6d569f25a189c6da85ea770cad1bf8ea748f63cd493f20b7d9464b101a1ec62783d9c4f22f2a7c65f00830085671338c3db53302422f3c19e282de2e2188bcd917dedb8d87e4a9d5749c269295920f62adaad653eb0ace916b0632f09bd4abf5adfca9485ad9fa472035c46397bdda0fb43b5e799557e26e220bec1a13167fa620ae4837844104a5d0e9b3288b41ef30ec20fcafd555894eec838ac67ab4eb537e4b04e8e63e1687d875683ecff651cab57664767f85af49545cde3d31c08c3ca7f610c02c25ed287dea5ec7ec9b0cc222c7b72bc06d17e45fada94f0a41748bef7c6e20fca63094e9ec04af4eeb41ed01b8f1aa6e140cd49b52d30c422246fe5a4d87f95302229b54858714c111ce29ecd1af604c204a71cc2339b83601b65bdc637531f7a46c6f29bdaa52381efabd728a60fcf6806de58022aae697d44d5b72aa66b9ac9a45f8a4a9809d44c1ff00f14c9bd92ac56b372f98cc794fab661eb612f99e0cccea0ead2d312f0cb6c0e434739d257c0a93d6020d653ba5556979785808731c58d3317f38f61bce04902c18f05bf227bd7b5ea69c7c45a57e86091fb59b27c974c2e6af753f917351cc5fabca63021fab996c8c433cde72c5e2ec31b1dcae166761d3e626253d410c0b549ff3824698c4f5c40b5205b6d5d65388703fa0d78aa7d9abad99e6b7ee6aa909e2b7daa1b53d41e2a19adf20c8dc60378099cb883721ba6efa9e5ccee5a750ae019d810ed69797dad2d186d686208e2d04a3489344451ee71707e0d4cc1fd4d45514a9ae58621fad1f9574bf1f07f92b7d2aa72aaa9f1a9f02842d4b0e45af178478d145dffd472036203713a5d84b403d97836b4be65e79ab34f4e050ab4f3160f6995d2506887fa75eaa51a75750da9ae26656f8d2d1882183ecd9a88c5a53bcaeb9a8b60ab85e318733731a51fb8d9afbae21d8183e277bec06cb1f039641bedd4794ebb089a85745d40ba544683da65518b7ca9c1fd1d47ea3428cd46aaa6aaa697b8b35adfb3a34f8c7ea97d6ff00b949ec4db95675962d196c8dd2dcc3f77ea808366698b2b6678dc4f07b305a1c05bdcc24c225ac2110f4d28b1b9e6b299a8253d51494f588d16a236e637430ea20fcb59884467b7333f54ae7d3882521c4037826bccd3ad93a955be16b436f4d419cc2b7d982d9099cb3c8cf35251fa08d311be46f17ebe05ef1b025f0361d98b09cc025b1783a6e9b334497d41a6ac88802b6990d57d3d32aba5953d4a2057a967fd49014d40aab694bebf96d796867ea2dcabda2538311629c6a7e75d7118e2b4e579531441e6b501f50db919527d5114187eb5227d61daf2d09833312d78467306e4c1b19e4e21b8d80bc36312989e9fa6d4b52e453aa21aa27a978bc8065e53d3c1d15324520808898fcc21953aabf2ac94af3881b79e850fdcd5a7d23fddcda956b725b5af8a7927f94b66bdcb29b468ff6b6c611723118cee2edcb07301100cf9860e8e20c84369ded813c9ea9b4b8269f404ea2082decb4b451f9cc79c2f5157e12d04aa6cba422fd6d92f57aac472a385e420368998f75d992cac60cbc32d146de6096861138d947504f308bc0b98b2d3cece32af29340602628307b87e41b987a4a2ad502aa87d22316d1bc34d966abf8b4ab6a70c5e9fee52f1acaad69688fc4ff008a51e3f547ef0cbe2f81077e149dad85eee22c3b0ef8e6e6d07c89ecce8432a0b01295a23290b697fe98dcc3292ffee6e5411abd07a88941e8a4638a7d7fa0d70f331463880b7f852c2d43f2a9284f11ba83e9d6cbf19e619e771b0eba8b06c62899bd4e808b298c2083f35f7107b7c533ff00b7eed551016ae557a27f680bbd5278b4ea104d47b80a3e2df7aa653c2c3d31c059e4c596c0dfa97b8169e05fd9d4f1e3cf28279a6b169ca74e25e0fcbca79d87b4c45b255a2c35bee61c8368e8b0d4e9de9a9fe2a6b960c21cc55e6151c0abb1eea769d08dd36d884ed7d96770c1b897cb35cade1eef88363d66d4ad008a2012df8af2f396d7820f699e61fc5add18b353bc2bc5a98b5407e679ccf2be23fd863639847c8cb1200b4ee098d9677043b81989b0cec2132ed2e653315a53378203efbc3099ca1797d808041ee5efdddfb974f4961a149a6a7f4f5302900f2b7197c183efb773fd5ec6f804ef7cc43f29e2770c0443f502182d687a6c98764a9283c530017f6932f0b46a939419968041ef313bfcb7d8d1a4cde924ada0a35256d1d5a2ce252fbf70ec3b849105bd860ee0dbc182d7300dad3c6cb08db95a2bca3562d481e729785e1a91ab08d5e7aa5a25cc44c049c601f80c776a6696a52a41fd2a942955953f4bb355d2d5a7089683a87b512f3b1697d86c66666e3bbc1d677683a569fe98e25cc5a8441a93175781ab8756236b043aa6680bbc5a329d28ab00104b7e176951e68e8711f807e5d5e8d6b2ba709e3c667883bbede7632f2f0ce8a987abe396c365957ddd6eb28aca6b85107e3632b3cd2d0e67fafacd20d42d7a6d49bc4f40fa450aefe27397bee0e620e5169048eeb2aa8a6e3b22f16788ddf5bdb3ec073a7ed0fe426557b4a286bbaa851ec1ec1fd0d4504ae8293b4a74129c24996bc3451e3e99842a44e076102b12ba73069f806d2831299102cac23b5c5a5342ed5348509a6d3835eaadaa7b81862cd3d5022bc5680cbc065fdc63bc66351a8521493de60fe95401271b9f4cdaec0133e57a8a6d4cf126853aa3d1a691cddb4f4b80ae32ac44041847297432be9ed04d22c479a846a73d4e52ae6a8dbc01b183b237a2f794da09782f041bde1319a55a93494380fc0dd8fe93b5f6f04334f49407ac107caac0c52ad306ca390a54ff0072358afa8cceae4ca153d1a46bd5a9539e145de98b075cd767a746927a8da8b0d4013b237317a30ed4bba6221def2fb5e130b4779a4a5ccfb86c62e4ff00485af3103b19f05842bc4a627ea94b854a15ad2854e5397a65f5248a951cca1973fc8c4941e9e941acda86d3d2956b0a73d47e417d4a94580acc6ef041b3468a31c6110c494984469797978272d8b4669455abd54508bdfb4eefd28b0fe92398b5cdd291aac6f168cf45605553a9415a9b0e27f4d6fdeac010816a03a5468692528e092d5134caccf5df4f463bca7a32d17494963be9a92d567af3c882d04178764c83088d04a6d11e2b4e73940d2f098cf198df429c697bbfd6c72dfd314009aca553d44d56a69d3ffaf576ff00b35517515da7a867fd7e9b545a7a8883d094eb88ccd46ba575f4f51acf9d1d65cea1489a3d35c53435222aa4a9a84495354eec8dfb958f1a30660d8431b129ec44a8277045c4be418203394cc388e669bf8fdd4b2b0c4eff00a6baff00dd7d75113ff234a0fd4127fde906ba8b4f5b4b523a696a254a0e8c6b3f0a52b96b3562cd454d56afa65a34c389a465d42d6ae9481d43d496373766d4232543733cc1bda194a0cc11d7006de01c883730c334dfc7edaffc69858dd275fd31c4c6a54cc7a19f48ce061062f2ba545b53284d508d3d2e339bb5194d1da8b3b30e3cb4fa6aa68d4a34db535cad350dc596b0e12a58bd6a7c279820d8c306221d8c65f95b6107406c7a86d117954a5f5f6b8b9d8f63f09602739ca7232e65e5e7297dca5413e420378a615c1a70a9b58ac58d785cdae4081982ca0b1e9b5e9580a952811428832b3d40edf671c8361cf6bb9989e560c81d900cb4b41dac5e86c619a317ae981edf30c4c9fc2c2ff8ae61a4d1bd4857278720b757569911f31565a18628b9a94cd33072977029d636bd2234a82d513d45516595f15bb2b3cda19696cac13bd8ade772d918ded0f4d342bf25fc0e653165fc47f198999e9ab2b51530d0e30d26b32cf4d38b50c9a2d1a9309a51fbfaba81eb011710e432da09a705695f6f1aa1fbcd160d80dfcf71763de25f6538f168721a688fc29f5ef393f8cfe2ffc400281100020202020202010305000000000000000102111030034020211231420413512232415061ffda0008010211013f01176579af1ad2bb0b55771695d7ac5f8589e6fbd180f887165e6cbcaee41e287c563e268f78b3e585dc8c88cc4f3f143e2fe0706bfd046442578af0f82d4bad16262966f0bbf116532cf90b6fc4f89f13e251456c8911e223dd15d38a228a44bfe115bd74a88a114566b5a12e946367c0846ca1b3d9622b62e97044e4f471aa431228702e8bd91e97e9d7a393ee84862c239117ad23e394515b7857f49f73c4848bc4fdedf962c5b91c7ea2717b77897832b5a4521e56ba3e225ecff070ac32f0c9096b5879587e74561322bd8bc6c472097ad4b0fc16bac71ab65b4fc6b1376f0b4c70fc16b58e15e8fcb0f11c33f22b522f145610f5c7d8bd223fdc21962916321f7ad65efe288d9017850d9c7b1313c5656be28d225f443eb362c4be8e3fad88a3d9ef6c38c4723f44565664417a2f5a22f0f62647985c899276c43c59650f6a2258f7a990e44cb2f0b1f961bd8b0fa1744793f9c45663f65ed5d4b23c947ee9f321b9668a2ba6b91a21c8a5b578ad0f62747ef78515e6bbc8bcd6baea4a35e0ba14512e8723c5e8ac2d52e84bcd61656a97468a2bca3b65d0ffc40023110002020202020301010100000000000000010211102012303140031321414250ffda0008010111013f015aacbc574a90a7a521c0fdd1e885a2d10fb2b084726292d1c0e387d565e161ef471381c06b0a2243c459cb4a470251284bad3dd44e25668a28ac71cad68e07038e16b598a1eb18897a0d9c84f4a2b45a22f4a12f45e6c4f3456ef48897b0a45eb79b2cb1112bd3adefaa247d7ad6f17ba23ff151062659c8e673399cce4722cbf56b2b3fc22d9291c8e45e2cb14ce67d82917d6ba6b09690243e98b16f7e8d610df5222cbd5b2c6f0b7b2f7a18fa9085acd911b166fa96522511c7ad4888b4f93c91f185a45f4a2f167325a5f4445a4fc9fe70b45d2b4e1a228ade02d1f925e042d166ba6cb639662ce673436b68e391f6a3959fd26c42d1742d2cbed832532f10795ac7ae5dea5a40a585aae8ac2195baeb42f18587a58b64f4a1c0ad5763f185a21f8ec44a5e856262d9f52cb8d9c4aebb23fa28d1223e490b15943edbd1757c5e472c2c2d50fb5a1f6c32bc7ad2ed8e6f7fe62bb18df6ad5165e5f8ee638f62e84ce587df470389c4e07e6ebaf9179bd9b13e897ab673bc596731c8b2c4c6cb16ad0d6c97a284c71c56287fa50b6922b44bd04d3389450fc0a228b6289265956477a28a2bd150382381f5e2b2e02395117a3c5e887d7659795347216ac6897e1267c63e943f4793232629b2f2f1f2e3e3ea43f43fffc40035100001030302050303030402020300000000011121021031205112304161712240810332911350a15262b1c12342047233d1f1ffda0008010000063f02a69d8633f8d386323298b7a7f24ab98f16826d827e2d3786627ffc3850c1d87b2bde7f81b074178924f4129c881aa22a26cb4ef826076d19f81c4b48e6e498bee97c35b87611187c5a6c831026074ea328f260e14c9b896e2155717c1e4619057c11ab36463a8eb66a4f520b5247637e464dd0596b30c49239be8ded816cf68b62d92babb8c62d9b23a4dd16f27f229028904a30c75190c98d1d2ef66522ce773bdb04db060f47e1494e44292842dbfd8cc3ee39d46b62f04210ba16fb5bc5ff00dd9ece96445b428ee3b5fc1263c1fc8b6c11a90ebc972054738573b0d8515a792d91a10cb8cf64519f4761508befa1b6b328bfe07dc9245624dc56b36959581ecc62f81ad297471c9dce119cf4fe54c7c9feac84a38c7617a989137209f04d296c47221550f50e8a8e7c5ba0a2a1b5a12ed678247643183adb1d4561388c7c0e3916e2416cc7f8b792455616f07443b991874519067720ee490a3a9841d45524551f8ad02ee38bd6cdd05a488227948efdef1a18ceaec3a20e7f81ef23da2db9bd97add55ede9412d365b446b7be66ee647b66d27624cb3de69720dfc7222a3d48e42f29587722d2e30ee79323a2a0b6f3a1c6332a3212ec440e45f3cd7d59bf6b6506a7e6d3a3bf259ecee3298d38b6c7ce8811cc31e46e8839e6ed76b29048f9b70d3f2bcbec76e477b2edb88e4dd754a7e0836d59bcde6dc364b74b3bbd92cc2ba7522d36ed6644fcd9371c83ee67b70a235dbd9b25a39723c2f93fa547cf8e6c231194306e763b8ea3e6f8b7125a2ee4a490ca76724717d8c68643853577e54d9ab4453d2bf0bcaff37916d3232279194d846152ce3b1decca2b13084092ae2af41d17d9468633e7548eda1ad1c887e462cc86ddef3664463038a31064edd07642444e82a7e2fdc6f71dedb0c49d4ea333adbb98e4468c39b696b337917c6085c0f911d065216d262cc2f45b3d9aaea45e17b7b9c7ceafb87d3db44db3af17761d58c10ca41831d0ee22d3d3477d2a4647156cc4fb19e574be79313cd6e82c0e64ee3d4a7a14f524ee6356f75b40b42e054fd92109211884b39ea44522ae1f26fe397049bf9204451af8e4a98938d371ff0063dcea6c840b69bfa558ff00929f93d15fc2929af3235deddf52de6f82a415146fd8e34b6bc9eaa3f07a55fb721573a59724696d3c54e7a8e9fbcc73f3656fde7c5bc12274b499bb5a743de249fdde6f03a9c2b6c983d275e54c08bbe9c5ff00fb1ba9832c7453d74b1155bbfecb0936ed6e2339373d440da966d2a76bf4513a0beafc99304db16c08bf16c0d6c1349f6a1e93d48ca498209431fb03753b1b5b3646114cdd69bcda0c5ddc5445641d3a09cdd8f54982668df633c486187b4fbddad84c5a45bac8c32245dc7b35986523248b7c73274328f47dbd50745714f4a47519744fb952723ed761efd6c864c5daf038e49e94d18f61c4890b9b2ec3fb195e4674e5ad0e38bd343ed69146736b781873631654ab1edbd18ea54d9d86aa0edce9d59304a1b6983b1d6ea4a903d9742dbb0d91877248be3dabd391d13d4409df991cf9210824918616f04a686bc28a870a9e93cfb9554845197727969add56fe99d3db4634cc0f671b169b3e4645b3fbb915398da1addec8d6741ffedbdd2f09a736c1e081faf6196ce97c689f6f893b2a1e07dcdcec32f25742889681fadd6ec3be97205726d1a5bfc18d79b47b5541fa9dd2de39f52f662336ef661c9d083688bc5df52eb8d7086fceee5565e5a594417ff6d717c5a048b75d33f16f3a3b19cf3daccdcea9acbdf90d661ede6d4a0e2a8ea35a4c8ba716dad374b38bc8c993a3fec78d28964418643fb905b70af5d2e9cae863525e0fb9474a94e1ac44134c92a7de7de9ce54b3f2275509dedc5d10e254715a993bdd6f166b6246156d1aa2efa24881b8adfa8bf1a585f4fa6cf9b7a2b5413f52873ef6f3ca5146e4488c2e853c259ba8dd455541c45eb851aea62d36522cda7b98d0e6d68e5ca1287a6b63d5522f93a128e7da7a6aab94abb0fa1960aa9fa8c9b28f4d6eac3558dece82a369aeaf83038e25a3e790bcbc69e112fdfdcd5dc510abb238f5b4916ff42b659d09d2b67fea5330607e82138d5db4606c213a7a1d89c5bb68474b66dc5ee6aed6ec54aa9d86d0b49f513fbb4a277157b1453d89c107127c8badeece649d48c781c9d2f7edeeabdc663e35fd45a57fec7aa93d2ef743cc0c8772510454fb2afe05f24a08a3ff0052e973b5d0cdfb8833d9863249db6b459bddae85fa92cab81ef5542ba0e2ae8a10a8451e953393d56e3a71d75b59f236e499bada6eeb78b4f5f78a5375196ebbad94f9bbf73c21555d4e251ad383d39169e950965b7a463077d32336ac7ecd19bb7f4db844fcd96df557e0f36f2a6c28d954b2e841cd8e96c593445e2cafa716cd99c85f758bad4a2bd913b18c235fb1e547384dd86b56ba1399dc8d39d72861acf4d4a834292beda075d1fa69e56ff3682942a5ec534a7441a9451d8aadc5bdb8aff060decdb0968e4664818c6b7e4b74f6cabd7a1556b951acabb088c2a1e06dd58ed66dcfed5c9c442130ba175b5e5f4e27933efd6bad60e2e9d12f578157e2d3b95f93e9a7772a5ee7a84389bc8eb8b30cbd34ce6dbe9f368d536722ef91c7b6790fecdb8b8ead90e2ad7c274d0dd4a7bc91672bab6a4e1a960a6a24c9393d28716c2daa5bf53bd9743e96b3e87e8ba9207e1a865b42e96e9cf8c936e075f56aa7f2278205110fab56eac7170a709c094bd2b83d47951ba1030ab65bbce86d59d2ba66e8862cfc22fa48aea438b8c764269530decd69e94dd9aca253f02f9b24f516a29ef252f8793d2a3a94a0c820abc4f74d0c39d6d922de753e8663062e9552aca84d1784b4cd9ea4193d9d4bdecda1176912c96a53fa5056c1bdb02aeea270e10f376d18d1e346fa9ede7447beafc98d0a57576baa889ba8b65dc81c57c103d5f8d4faf248fcb5b45b36c13ee332a3220b53aa390a8a3548543eeb7528fc8b5bf5b64415ad83369d5d48b66edcf9f794ff00eba1950ff895976529a6b49d1f5176461b4466ed655e476d2ebc9c5fa0d7cfb97294fed5d6b5d3f297ad77aad91d848193e09134318bf6b3d997540fa7266d1a3cfba63e8af4df5b2e06616a49a4a13e477374ec77d8ee3549f222710948e309ec19f43698fda3f53e9a7c5952caa4543ac988b369dcf266fb59b919d123b5e7437ec714213f4e9fc1c5f4a2ad8ad70a9d06f915a186e53af231cc7b359fdb55ec38aaa1154fb29fc0edc0bd87547a77436bf8b2ddc5e466d822d833c8c99e4650644e73d3f83fa6adbd9fae8451fe957f0a7abe9fe39b1a724688bbebc99b412bec78eb495f6cf4a37d4dc5a5519504933644f690272f1cfe3a92131ee36af7382a49bf1f5d894e67f71eba5e938531d17d8e39cdd064f72d567a2ec7a514e2afd4a3a93b4da2de94bb2209dfa20ca991d88a5ae8f9b70f53eebaa6a9d0cbcee1a72a375eabeeda92472505541a91ea410c4f6115697d9c838966a52951b239e8961aae24516aa178acaa7057838931d1492a6e76fcae3abee5fe392ded7233647fa8a35140f5ba957d25c7f8337e1146fc9522a0b5275c193d68c9d4ec211d4e1ada7b88e7d444c3b5f1a1f4e797fa9574e53fb46b707d2a7cd44af155badd3ea366cac3b18653365a76a154a3e953d647a94e25fb3a20e353f70eab27aaa816be94c8b52e5793366e5b21c29ef771bf936a50e0a12109b30a997153aa0eb8438b6b6c46772a44ea8ce6f592a3743f4fe97f07a87e1308add05a91129a53a26a9d4f6cdb3a7248fd6ad7e2e9ed198f4d1e9ec251fa2aa7ff00093f497f07d8a6246a918745471ba29c3d05e1516a585d8f41c3546ca4ae4e3aa29dc648a483270531c581aa9e87a7ae45e766ceba37b53e35bef77f6934fa4777324b182509a9106e244ee3d0b3ba0b47d4cee4288b522fa7a8e2528a94f75285e37aea47544e853fa934a0952afa69ff00a9943d307a95cfa1537fd98aaa4feafc5975b13368d0daf713c6a5413c7b7761e17b11695b40d5743ef879217f2717415389df36a953ed4c92a22532aeea717f07f6f53288c2a22a2f83ff001e92a73b6b9d0d78d116ec3894fb5c298317c1d74460fb4ff6a7fb51de37361a9c59c97b322d951e16de9ad53c08aa8e8370aa78335b9ff1d4c53c68a9c2a2aee32a7e0a93bdf3abfc5b0e313ab1cc7f6aad5a88f4a60e168a76ea255d1a5c777f26fc865b647724f520f4551b0ce8226d6af5b8d666b3bea5ea62cb5f4c7bf42607250d874ace8a2bd368514fb4a5fa295aea44b4daa6d3d346f6d8db92be792dedbfffc40029100003000202020104020301010100000000011121314151617110208191a130b1c1d1e1f1f040ffda0008010000013f21d3636bef8303841556f66b082a38ad2c5250e05744c39192223728ca426f669879bc08f24978e86913f628ab2139a18463bed9e4e3496551a14b4b939d2f1ec651157d0ba60f75f4459a3a3093e77e0aa36c8d9879a63ccf04f00dd9683335c8ba1ebe5b2af73a72c46eb6b81511c7e44dad1f730e7ee2bad4a2698023c4b029b6bb240c98555f5c7e4659d42b425994761d5f7362e44dafb1fb0333f91da41686cb982e1a44ab08f8180d522f131f90e33c9949e3fc0912acd5d8b9e157a29fd9e44a981ea48a9e9e1108dc6766a1aba30170ef65dd31f91dc21a7c8d2921966ab3662d39436d18ad9749780c3712de323f1302095d1b44858ab655d2cb13a951e25e7b3365f922f1ff004c51c417813a36ed698e47b81f3e454ad1714e48dfe04bbd0e4a51fbd38612b7632ceecdf0f4491e16defd21259357cf627e150c855790e88f63d32ad8b3b59a28f3fe068ecd6972702595a1b5c1c581e70c50a5cf1477cffd11663bc96e86972566e5dae0c558af9f85eec59eca69318f59a610e1e38838f1e0a9bc88787837f1ef8f86153a326d863c96f9274eec6d0a10c33fe08e67d8f22579e45cc68e55e446b494f065cf0f62edc1177871d8cfc5ea60dcd86abeb262ba4ddc155accece558ecbbec4df2c766931564ef9261b4c29b6ead4bae378a2064e8d3ecf145841aa8d411637a33215c09e2b8f27945c9498890cdc06172c10af4987676e9a426c48d9d75d8ddb07fa196c5e11808bf2367793d43619c185792b3232ab2bb37958f26127cb7817156193ee642e74b27e1fe468e22c9b47bb484fee0de70f0458ecba8bd99b25722cb21c57fd12a649992719d8ddf09f9435f03c3470766fbe79e4279abcac9868f3147ce484ecd5e8e44ee0155593e5a63d80f8466d5d31daae9ec20c89242f9761f0837d409ef879153c2369ee8a5222a9beb0493af43625289f4fa85eecc7fb365d21ab4d0b22a245695cfb16b2d31f711e5bbe0f35e9ec41bc15e06e1d44320512d6bf27971fd0f48d95f8513ee5847f59fc92fca341a6cf428e1257e4b6b1d646e1c7e8cc972a8c62bee0b4a2367959344e4dbfc87af25d131fbbc8cc7338ed1c5b7ecc3bb4a428223a239379e8693ce1a43359782d3b933528d2d09b126fb7d1733269bfc89349a3c8f23e4cd31f4c44f03c28b6d6c72c347c8fb9b4c103ccc71919e421f83867ce7c8d0d95e0d6cc91b5da6650ebff2674289aced1ed03cc3913cdc94d8dcaa156a96392b8d8684cad1b670c3a886d2cc49c8d34f6783ced9f736876bbdce06d46c2264c36d1e147aa2bf81cb09e4895132c9ae04992cb690af2447ec2789de06ef4f22eb8fb2a398f2372ed53f3e86ea131d96aad746649b169c662c21877ef6c797a78362243ed241e8a7ff0047c29df2465907c17c891c277fc98e651ae6d6e96a3c28e2353be85ca2650f78560d693dbfc08fc579644b3e1f0c7ba6b96761435d999a1bb1a69f8ff62696e4678d8bc4ab6459d24e4bca4af4103b06da73c0be6fc88d68ae44a2f19f8bef27afec695e78e4c0e3dbefe3db549e76a644a270e8bf229533722ee5669ba872d6fd8e9b60d2c3cd991aec532708c646964f63b6c36943307f629d7a323af0825a6a27e7a347b17b34aa742a762fb1d58dc85bc9176366a22ce3c8b392762524b37933ef747b4559e54278bcf92554d3c1186185c8cda937c1411a535e1a23031843d69a4b678dbd9613465bc2fecbae0f662b5d8c998c1a48dbcd22b4117d8433d64b351f9d21084ce5a252f6d99c7c09d12312baf079d3b18f62feca4631a1cee4bc09d5f62a8ca4f63356d313a1a67f6172317b4251b1ec2fc667381aa33cb23e82a701b92f0e46ed950cad33b4ab035f14a317d8dcab6bc9a813908b0eae215a9f8229d989c11f68ca55f885f03788f1c92b85359ece58b7c8f3aad2d899b362378b4ae31c1bd7b650db26effc321dd4b96575f90b66512ec51d255ebec229f1fd086c8249af81b48a710fed46c69954918d8ba7a193a692e4329b178394d8d2ec6cd569f306e46f9215b5bfb9c3cde474f2791c59ff00a5e5a135129464a95a97273f056e3f718c5c16381ac3645d7c139b3d8704ad2547d5346571d17965b1de4dbecd824582fedb657a6cfdc388e21a77e72667768a5ca4e5947fade4759347188b81b981da839f03e5b486446a826665091ecfbd1095ee8cfb1be64c43edefa26969f91edab3e391de57b12f078d981b7e47593b57c10b8dcec593affe9b327dc9970783265865a6cfda117932e04f4cd59c1730f75604479cbe101c42f8839ade2322b9c3f0398f4b0873ac375b11e17634d7e8ab3f208cab4f6505ea0b89cbc17a9636326b0d08deb44c235e4de5ac980aae8afdb636b2b58d9be20a0db7a462e84f64c7267d8eb4fb19be83156b9db1bdb27037810de4abe60b710e8ae746475c4b932a288724a7b257f6119d58cac24ae0fdb44b1fe878511486e693b0c2ab4f22ee29364a739f85f7308ae32321c9bb90efa322dcc65327e7cc3c036da7e34249b35f8093c49ba36ab391584b0c45a8de71e8e436874cefb183c92e6b1aa8cf109c59b912ef758e86274fc9698a36306567afd8cdeb784862118ecba83d89e60d28b090b594fcdfe7a2659ff82ca3ab2981fd49b3ec31c29eca6ed064f227ec59e848f627b22c4253946b22ef05c57041ec78223da1e0be36f45abce348bf5e8d1be192a73f6e8c29ecff004635851ad729d22ceb494249c86609b466f3bf82d8b9d9cf2cd84b2d47187584d04bd0b3a133ee2c3c7dc41a6668be05c983396f378423520b9d3381219b59e76464afc9cedfe4a5949afe8aaba396d9563de79ab4886d152937794489568aaaff00217a37a165f5e09c97422abc5fb951769d9d15241aa51872eb53a1d67e7c9175393985e596b1bfb07846ff0007f6a7256c2c1c3336fa110a9616c6d722ed16e8ecbc17b32c8e181cd8a36278c9efe4948196cd0f7129daac9b4c419f1ffa21abc10da2f6a8f781783922c1bd43c686331d0b438e9fbb0c5209276234c4cb0f286fb8e74351cf85aa2dc889d3ec52b71a2d5e3fa3ed2ee0d3d01bdd1c8c3b38369f7ae48555344733d871e5fa1265b50cd13ee3835dd1d1639d79233b3fd0bcb7d0c285f4477d0c6f625eb0ded19f512d924d282296e6dc0fbfa036c2b49f833ba35fb1a09a4a7191baf3f17e2ae06c844bcb297e5bf8488446241d58a245bcde09e0b6c72a70841b84b750c964592df9249364cad84916f6c78aaf39132da3c7fd1ad53697f03675f82c78c9125c9885724f34c28ce74c49622d6ca826d64d32a8b26d161fd09cce44a96b42163bfd06e5564ab904d4dbf041b1155672ca4df43523fec5fb7a8324fd8cc11c5fb307ee2b03782b04c88cb2468d58707953087a360670314d9f00ab4a7c3707cc67232e788e2dc4a336510b3f3966be3d7cdf94cc6843766d090a05b03835ff00924fec2cf28a97436a56d8b653619fa3218956bc1530479c21359c19087491867232f2a1a709f7367ff512334521aa84d0c8c186392b10c3f94d1858db1a8973eca7f90384b3083a278f22d6214e9d08c6ad3322e695f7b08378db3a1378f060b18d889284909adb20b368686754cbf226437be44b402fb7ae8d25bd33804fb3309b4f7e86acca2214a237f1c7d28bf17e197fb13e8c8b384a0f03697b195578f0659c19cf9b445b3e114c1fe059b834541c6d512961d09dd893da201b19c9b13c8a32bd536f47e5427236abfc17f6359ff478c1e45a7bf802a8bd3299c48c86d74867782f2d0945a83368c0a660d68b92975d9a63f64a9745e4843083261c791f3ff650d16c4ad781519dafe86b2419069af5c8b3e05db65ac1f81d4df107f1fb8cf0c0c2b4772fe17d085f1f61b77e1cf85f14eca37d1451c1660d5621224bc8862832daf22a59f93b47f646657ecaf626a163433427d885d8f2357a4266f81cd2897fd8f09afc980be089e468af8d89c1a599fb39199e9161e0c71c16cb5e0febc3ec1b12e7d019e6579a6910aaca60c8deef92cf61a8d2412bca68f38de8aa6ed782196a0fcaf81934d19268860d322cd5be506ac3d77c0d91d72657f2600f4af2beb5f15b3884f89dfc2c985ad895c86fe3934ca68d144e7226582ce13624e8a2c8b8d51a7436604da451a1634866951781d01933831e059e0d763877f1b743d791f7c90f3b33ac7509a14e0a8f6bd98eb6e11c249886424f192c135890dc6d043d2ea9cef259962143bae4c7eb8357631ee3c1ee614684af0845292332bad0d22942c667d6bea98f945bf2be51f6117ee307868af8a9295a254c30a88dfb1c0dfec63670cc69cc1ad079e4ef4e827a9255ec6b69df27b457290bc1ecc9f612ac166074d9fb11c30da467f61b619f802e627f92cf2abfc897f91477f631335a460536de05b306611d24694c4be827f3d8ea8bf826c93e18c51aa6cc192df9fc51e49f4df8a5f9d9af8bf5a114a270b93792367a45e21d2d4cb251602a92bf46cc8b9707f77e0673e04d279641b2791874bf0d9d8e1085eb1f18e68eacd3b1ada30cf6fe471572f23618370926f93958e4572b43026ba1b5e8559a4f10897e4943c48f660d73c1b6c24b57ee44e604ce7fe8e3a6ff002370db125731f8bfcd3e1088c863c89a17afa10be3aa78e0a583ef9072e65b2d9e9c7272e4caf4c432d9a6267de99424c7d8d0f883ec53313e5b378f23714653d0c75e0f02a90e1d1648db810a61e5f27fc24e366078ff00a34696944470e0d110b01e8362633870c96f6609f024efeec47622f16353b31431b8466d96efeadfd308244f968383edf42fa277f14a5bcfc5131be05d89aac5266dd21a360fcad7c18312d9561499703f2c6e833b2942c68fbdd181c18cbd94f1b4b912f2dfa1784763da255473e3a15f350dae46f7da6449f92653eb5f1dd4c1e322b5a32a1b109f1a68cad232609f44f85f082486882aa45f0852fb33f54451bafea5f1c94afb85f42cece21b81bf22acc8fcd160a6d835d0c5876899ec6e675333a14ecfb0ca9b8557b1c138394d04a7402be59eb2584a7dc7f774369f38f46aef42e543ced6054a69302f22e98caf03ce2314e85fe04fc8317035f2f09e15d0c7c0f581a1799d07464c1e85d33d89ec7d88427ca9f37e78faafca2a583209d307dfe564662897c11b2b699cf910c2fe1f279885538c4727c9191877c8fc309f0338ca98927b6076d68eae87bf47becc9dfd1c959857e06b5382729e4a7811ba86ef85ac9893becc958f699b02b58cc37c93c986129248c4a6e37a7818f6f2854e0e26cec3ac0d5a81a58ff69a15f919584d42be9d1a204da9444fa31e2a1a25d31fa987d73eae7e941604bc18cc633dfc69f4de1812d20dbe8dd6b9142fb07df19c8a4f0bc1de35b35c0fafd855b0c3c64cc7d8b91a21b5b2314fc0f9953413024c7c1b08dac0d281553f42c781a0644eaf0334c942fb116d86341359426285f6e46354d24217f414f0bd1147979129bbe0740373484ca82df17d9a4d1f9346d91a33a4b83fda464b8028e23bfd9cf69c3e4ad3404647657465fdbe17cb5f4df8976c8972312f7a435c53784863e8d37a1b33c0d814da8343183d06bb3fccc7761b6737f751d2f5166924b381a8b65810e564909e05712896ccc8c33e1a636931a1a51ad13e54cc3ee4360cde76a9d760cdab2f645996a5d3687904460436bb1acc76849e57a1d8ae45868c6268f28353b42a75ca123ec7db10f8a46d23a95330940827f78e7590acd75052daa70f912b6ad31e753aa703df05e216f274899ccc11af841afabd5f84621f2fd14e20a78cf89ab7e3e3778640487f353ca7614e92a5decc1954d079ce4d8363858443df42c0950999c5cc16a5bf000fd1e491d8ea2633293933e546b919b063c989e49e092c9319593705c992723124437343447f91a276e5086a28be048544ed7c1685f62b867e0e4e46b3511b1566860c07f44838d4d0a5d0e9b22b5223448ca0498108606f5f4644f227c1c53725f036eb26725643ff0008d6883d6cd095c0d2d1c9493a4241e5fa6ced5838cd99f1d668b7b707ec1456866f07d88f927934cf15d22ca2168dbc0d272f81d253b3a2c787e0ac141dcb24a310912a843e8fe8c9bec5c494bf662b8d89d7e0fb9e055e323daf627b12334cbc9307af82f8686bb236848628d5a3fe47e099aecf66700a3da2a9c4e05d036c6956469aca2b1bbf4a12a25d0bbe093d7a21fd039d4e0928f48c95f912e7e381da878c8ebfc19c9ac763369c9963458939e044a0a2bf032cb41a2d54b645a755190a3d089f674e0478d2f44381bc0e164476330d9f91367f61a71e9e4c7625d92129a9e721892270c667f624c146df65cd2c213642355c2dd2145f1f14e89214e448d0b2a8935f4344f879a28be81142c6c2d303be533f23b28da1a58722719d8c321a1fcc79211809508a8e8cdec12963d13dce089a781afb7a205794f7035cac9acfc2fd13b5724f451a586cc5a2f013b3cf8f02533ca9e4b4e09bc0a51a39225b3ad16e904f6e3f45cc332a76259e08b13f2616cd643ca1522b831cd9576506a998ae5d1a2cf02896ae21aaf6d684b894f4f627113f8cc4988c488e50f43605f5bf944ccc7173ec917aaca45c089982411569adf62a4278358d3d0d29f4e84abe0b8cf6a356ff002224c7899163d21ace0dbc8908baf8b5f42d1d12ef3f0884db3b6b9124d5e4d8d3d93fc0d53ff8c6a1e273c8a9824bc92d85622afd08df2f03d5db63ed45d9f60d9df2cfd3df2252dbec535e763b9727625c82d452e31e3f43577165ef9318f053046ae5f3f1c32149f1e8421ad9cc84fa27d104c908ebb87f941a9395f7344ff412bfec65b539d34c7a97ccf842d625cf086b926303e0bb3ce2450c1bc1b2d609e3d0bafb0e8448c2654da853447088b908daa245a4d0f1811b276d0ea4e39123b5d911fda2b6e93d8f77dda36573c896fa664c6ccbd1059b7cf0884f468df950abaae45b266165bd0d1e29ce46fd42c72d7e4e4c85bfd874f59dd19f60b9d8baf81d6d427469f2be6fd17e58a1abccca2834a559a4b31ab06b38ec46a9f1c8c964ae46e6c7fa35f291bc16a378544a0a4b7921a0d2dcc8fc30cc7a12790f12a5d2e076d9b3a2ed6b0354a5b24e7d954e8d8c98ae4c5c3f225d059361e0a84ce79191249ab323780d5d28c1877395932dd23195ae45e553d09e31cb196084da21d84ef84d8db3ac7e194abd218f6679c98ad7067467a25e459470536fe0e6f84c629a10409a147f309f2b51909760bcbca83a95c355e8cc89a2a6d27223c43b6791e86337f085b17d91c874c28a79611be6975d608dab726cd742eef428fd811b4dc2fd7826d5bfb12ca10ab74c88f0a0da58e132ff00d11a1ad2c1e0d8f794ecc747ec99486bfa1aaf227e057afee25e724ce52ce4e00499f2514a8694c249e70b1df26596d0d2536bc0d96a2c14a4203874a42eb504251927d9344490e5bc8e591e784334ee2781139afa13ecc34f63327f718b8faaba42de08ff00c07e5086a7133f441a685d9f81707d09fb2fcaf8d3d44e464d840ea93a1d208cbcb6373a814bfa08df7916df7d06cf260906e0e8686987d1fafc50a5cf028d98a4a8a51f9ffc1264afb0b0bd11b13af0192df24e72a2ee9a13566925ae9e3cb1355f4528ba45caa09d8d6185e1d1ee22bd0c5b293812fec122c5b22d3f62634dce8c2ae3b18f80bea54b81bc686b4eac0dc06ffbf0a35fad29fd346965ecdb198ccf028fc0d3c8b313e50960ce123c85d9e208f483a27da90f0eec218b32de5f74f2cf6324914ec6b3be0fb2f03a6cd7b1726ba8af79781d94d62ecfb3fd88dfb07953916169e4af599dae4ce3930a2650edc2c899d30ef8165fec8d3a16db224d6c7b94a26f8196d0d0f3f61cfcb314b44a2a73d5f3c1d3af864626ee32cc08983412b9c32161c088e71645b0b4451ff02db0498893fb9319c3127d2c863c88ecbff4e847070a7272e1bfa10ecb367a965e84af809183ef80f337c220f4ce48e7a1b481be8cfe71f9631dc9c117ac0d6861f19d8b10f267b706fec1ad332bdb6448e1869d691593d6c78d044f89ec89f9958161e06525157d186e727f5ec4f1c8d3ff00b193770ff63718293d5a7d9820226862541f9af1f2d01154e9a2ab30db104889fc2fe15d0ddb04eb5c1bcb8466767837f34ba645b6452f54453cb27043dcaecc5e4ce0cf8c90f2cfd791f61f725cb1a18be80ab6e1145bec5a2e464d05cd4f63d3ec0d24cde3c965d7699ce61b88ff00dc5533688b2fa23ce14be83d660990479fb8f89bff00d3de1bec448821353a0ed3e476e6d0ea7ee1e68e28d86d7c09a4ae8fed7224346370eb791a4afb91c8f3e06b25348ffb90c5f4217d2869fa8e9f25a6307f2dc662decd3fa119343e29bc991b4b79167e722c5934278864de114fdd196dfa12d94560a0727dd2822dd7e9a367949ed1824d707b9651ee20894e860cbddbf626dac6c6f8c05b542b790cb2991f56349d65c0d56c6c6b97c1dbc60c2e9ba6db63cc3304d8778d89e086b57c553b2e1c9f03255b7c434812fc89a7c3129832f620304fd134d7b66e508646b55547041e49ccde51dbbd62324c3a422fae9865ddb33b5c0adb82c213e0d6608c1d13162c78e8a8c61080c60a3ec2e6e0e4ed6c42da2c770abcb8336c4823b726224fdc33c47b5c9b8afc04fd136356df221cd99e4abc933661069224603fd8cde9a442d98f749b5ec91eff00d986ff00030c845fe8a893f23e5bea763bb33e0cb059e4b9edd132d339cf29a0e16fc8b292d7d0ca28eae81eb9f6d90ac887594f80caff0042fac3daa86a22ea88bb8fea7f1c9d23df03c38d8ff30cd747011a7896b2d162e5d8a0a7204ec8da41df7064afc2cc95b64cb8e4fb1808cb7589bbd5b0cdeb909bb528dbd83a78b650fc530c1b6164458054fcdb347ec8f3833cc443aeebfa335994cdfd89aeb109e19f234559d5c9d92e68aa51672e0d8972b0cd49e46c1a141e89cef91ce045e4cf91054f261b29d817d8d0a5893e95ab266c1221d32ff03517f167988d39b1366f81ea708c3960d2d3792168219779307d5fb91b5d9117954cb46ebf422e8a31725277061ac42d74b249d96caccad0d97ec211f09d7c67d14e0ad22c8a77f67e72364a9f43cb9111f82a6d7819ace31bc0cb7308f024604757c0b5304a552e21dd4f319766ce93aea09baffc08bce3b1eb309644f0547b6dae46dad619640e25a3810473b456df6509a17d29084c924893a148417f0b3261a7e0529ab7f255612ac936c5fdc43e85f020a24f1d689ea5a1a129dd319bd092e1ec4d8ce7706c89809e80c36a1aab878a3c28a8d169726f79f2602e78a645276249715521f531346166f3915b56aac74232f18024623a15c2f6a3d9d989c1c175c94ba1b34fc9511ae4ca7ff0369d7fd304c396852b6af5e06fc209e70742ce59134c21fa832a909f025f4cf83c7c309082fe17f08c252c1d68b7157182d5f034899f4586b93b3a3a28952793b11c26a0bb41791a54e399651d96ea7a5f6360987c8e781cb1d9e42cb2c29e62293e4b61a83fc219aa357de06d3e4b877781ab8f42cade4adb4fae0555bef07372e8a6a44d632b26cd3d3d094f0dee0d1f23d0f0978cb25ad633468444d44132d519579db616515687f71b46f63d4397627fd4d44be689fc3190fe44bf9328ec4b637d63748ab511bacab36c52aedf2c38e16c4974ab16cd35446e3e046953c51439ae87cdb54cb1b77e38e168ba52f91b2adbc84306d10c6d0c702e781148f1c51b1839046a568af53625af2a89a4f67d995aaa6fd0ce34725a8d74c6511830a92d989a5b9d109e28cc2eb982c4b395821cc24562cbd107232f03cb1b941ae5fe05d6107c2c975d83c28b0a7dc45b184fe6097c652e851fc53f8efc668a8cb82c67e18aa11819f8ce60b912da6c32e306bbe3239b3c6425560c17a12d61180c9649a31ad906272b467f8bf931c5f921803375a23c72379547310bb434cab96363a47912dd19036d52bbd90d38318c0da3e072d296f056eefec223bbbdb1398f39ab44705bc2cba19cca3370a9705c904f3b1ea730d890f91328be9b06c43f8afe5e076e1217c20991ac45ee644ebc7f6304a6db20726c8b39c84e719325746496606d5eb703dd702cc32a952d226ece02d6b5ae8623dc1a6e3768d4c371b31f6656849a678336cb02775425ca4296160a5014ed3e0bee327b17599e05cfc10b30e5b1362c223f014f19e07e5cf465a6d2837eef0c9a278a73ec8dc2c0870daeb1b33f2c0d7cb32454d9a35fcdbd1e073cf27c17f3267e2c1b506e14671ebe097a4254761636e9129e307827f610802fb0cad6ac47d90e4f3b236fc38c759cd52854b4a256d4538f02263a44b3cb2464cc127c5348d9192c2f632f8ec6ce2af0796d1b8ccd8eb565746857436996868b2f7a3c3a15f341acadb3a255fa3ca1f8b08a3411a434d826d33f50fa8d156d09b93d93b91905bbec41d0769899cc1d9890bc9e488c0f0fb1e63e417f2211c941557e8543b21fb9d12d53326f61c937c3e889b52327a3cdc0cb03dc406714e84ea321d44f65cb3631bb95c6f488826de44a9f8e8984b8464764bac85391088e3879357075d870328d7484e146343f2a13352cf02f9ad9e1562db2eff460f2d55a83b5ebaf81fb04e3c24495d981e2b3e499e4a379476b03458d156ca5962f144ec82799f458a2ff00787ef1c5fc33e99f4dd2b0c295615cd3238c1b7f423b7c989a5628ae826334cfa0f8655419476302d3a585382108bc96c4d8f83c0be4c21b5984ab629ef246c948dd3b3fce5105705cab823a3b39c1b3368e448aa1b8b191abf3b256be432744c7933e28979ca66c9065a59e499d8f1997d1c4479e1f061b82d7fa30c68a3d99afac0b4f10d44e4fb0be54a278cf0316d34fa28b22fe45f545327eceb883bf269ba3f89815dd5c196d18e9816d988e113d43378192a4088fcbf62b7353447f407bd52aabbf2718d61f9139d32d07d898b960d8d0f5056ac1b4f11c2b195d4d8b71c9356182338946e24e7719a69d4e8dd860f584279fb6c4618dafc62a11375d21b7d4d0dbb0a834d5a5da658fa4cbb1af7e45e67ada1298bbc0b30a698624c5f43822d6e4a91fc132fc21894fe0bf0da5c97d3ff83b3553a4e8877b2d7426f82eee1066d9a82d79142d6c8c1a893467229d0fc62dd9dcd2f90a75a1c89eb7a2baad7921254d16866808ac77acc9d26692a0aaf01f731f5c79197b0e3662d19c762b90d6cdc662e1cc09272e449de88759c25d178646f2cac0d9e72223850e32c146488c9376c399cf22709fb2bb27e469c56da7ff001d114b024d0cca12a6d9e7c91a8ba70ac890df3820a9147a27c1f3464e224bf98c0b7e89f87c28b6434c1e8a39a129caf66a183f4625b684229aa93f63652472d1acaf0a2e8784a7e90ce4e3905f882b8246b08f7d90fc0193be18123a9c03ff00461e665492a794ce6b7119be611506f71af4225b0b7859ec844bf61652a974560e47f73ad68ca6a3b6ba9895bd19794425dd7a484a547a1f38c68af4c48aff00443c21da08f617860fc946508faf043248ba24d8b68bda1fb131c66b0b222cce538239228164c64c324425c0bf857c3299b24a153db8492c0b7e10d4d74625c1c0971c085d9a2b4da094a96bfa14f6e4d17a0d870afc3c8a7314194834f8e0a36ce4e462f45c7a3559165e5f46fb57627ed9f824ff00ee1e2e867da1bdf8e455136633f216f3fb1c8dbc0a25c8d5a191faac49b7e453dc4292a4dbdbe8d3cb82a8932b11d3ac97f93275da26eaedf225747601793a5921558f437ecc446366066f30656702ef0e8dd63878c7eb5e03b8ef844646d6971f2605fe26be1fc27c3f30add6c788c482f2c8927f7174583625c23c01abec334c6de8a6765ac9792b46783113019212b6cb8177a791e5d2e57828c65642f7a26c63831924941e84ca54690df2bd16df027cde07b8fec1cd63913c966791ac8b66f414c4cbe464daa676726d2fd8c2bc4ecd3781ae9e0e06b633e15723627223868b93db09623cd1a42ce0af845048cf96c8d537824cf5044a20debee241132fe084831971f14fe3d897c3e3e3b810db3d686b3d9e133a3ff88a496210a338afb8e978a5a8d232a32ac107f6129d686e6ee3ec613c4878cf05914cdae3b7e06ab03e0764582bef8f7a343777453042ce262ec8f4be0ce6c622894d117185cd1ba5b189628c2fe842665e04ebca4c84b0b2b0e98bb9484f1f11de86f4a09b6850db6ea339550c25c85c3c907780e42fdbfb2b20d40f048a7d0c6849fc57ea52891ba651001258c0a633d10bdf59a24cfc8f18ad34257f509548c3625f2315f8126128e8b8420615134eba157dc375f983769be39113b32a3e72373c6044ef81be69f80ff69935664b19f63bc862f639cab1e5e76638c1da761e62f02299a6f3c89e5ed2139baf8392584984e478e6993fe4a50b5e06bad70766df8165b5447ab81b67fa1b3a0cbd3e9883c31d129041317cb27c5c7d17e5bf8a213e86a64b329bf273f3241a1d39ced30c6f1495b99d933bc7f449b5a864b72d0da793207d11335e8bcf58c8d6cf1fe4b2b4defec6b9dcb4f69d8e7f270a6172618348fec2597af063d069fb16728cb5acb36da44257d06dbcac32bcf0c64b46f035fa0bd414b782bdf4c9c68cbb763c25f622dcd3e0fca1db6c3f9847319b34cf5b1169d945db3071fec43c19104b2cd45fc74a3e253f2209f2c79237158581ab1230dbfa62e44a32681fd8235929e4676602a0b2d7e86261c11a9c8a0a665cbe594d6023e9d3641d70d64fc1d9a3118fb1726f25e7e0419742589e37ee26eb243ed938fcdc8a93e52bfce4999495db3430325c1a4682b6c56dbe9f646ecdaf238d56f2cd1c5040a304d4737465321336f06e9fa28f8f5d90bc30c5a5f71232b4be0bf8694a780b932b6c484fa19dc4abf3133e78ff006fad2d56582c4ebca791eecb9e46aee286d26067aff4847cdf241695fb1c2abd18e9b437fd35b30a8c9ba8fa1d171c36febc9ca25f24f5bd0922af1c1d1ad13942b585b34e35695975348cfdc227deb2c45c21df2cf1f91a651fd0b98b233b898c9369e8dde381af581a722f4335b1dc08259e74c4b823d4f8515f2be8a5c0fe074cb08bf2217c3f82cfc365f4b7059f979166d4da8c8588ba3666b3e50955e1e05ea565d4fc2286c3e5ec976f268ee7c0471da50d41b6312f758b12e144a30e0bdb5e0a161c42acea7434cda69b70781b1919ad29a833584efb30d174da50af0ebabc1e30d2f447380de6afb417d8c1d71c91c037eb22a26c5adbfe9a08be286f2c8913e8bf063a4f629c9ee263b7af8905f43f9667e9959d2faa9bbd9b89e4206be4ad31ed5a8db828f78793ec58cef22d64d71d0d8c897c46f0dbb963987745a7d0e35e7b3a0570f258ed424f47b167188724ff00a3c496f93f03237b86a2fdc6ef8154c7b783073f028ded0c9b495f27d8bd89bfe8870bd8d3d62f830e1d0dd86ac3442c38fb8be5ad1f842cf30f84fe28dfc3447a3a1a1db19b47962bc2f9c9512fa8f7c13e17d0c5af9a5bf2e0591e199b6d15c02ba3465ff532811bd39d39e4f555d8d3af3b12eb435db116ac0a5d61082cd99f62ec97e0b86ac15d4783ee399ae3f03e755a29a82447869e05c2d1c864cc972ecb7a4773f0164b0bfd8b97ff00216557fb1b4cd2cff8617c8f1a33e3f261aa19759c365fb11362c4910852fb082770ced2cd0246adf2378353e25e1f025f5b8dad4dbdb698863f639f469f473f4af99f52c82274486cb27879a36ed3d4126db82c76d72298c649515a7c92595a3255512b76b42edec493782bdad791aad17630c217194a912ad3642ff2174d86075d1f75d96af23d5b7b1276f6396a53361995fc8dff00424e69a2674190c9a13a638426c9a84ceccb7fdc7f2c425654784a84fbfc17c4fa592c1871464271aebe95ff00e041d10e0edec63f34133f436cc36c55ce4ad8993d4f06f91bb7b155ce86a7d8b61b4a1bb997b2a5aa88c618a5657fe09c5fb8bf40aeac2f74ef042d1e05e836f75d3a2c9c0d963039b09c43c9f621623d1b44e58b76d429c27fe0c089812219113f82088d67388a9c7d2faf966c5fcd82b4ad76f662053f6371b91beec14d51b3e8564fc8956f8856674eb9163706994fd99b2a96ddb13b76f822cd54ccbd0f94b2c4f5c7fd0d1bdbf03564dc1bff0047818e06cbbf62e9a2e0c8a5ec724f3bf81ffe1936ff006379d0b5e7e46f21cba216ae84229442fa603919d0edb10d712fa72afe5b13ff00c1157ec857a4da5a348f4f0654cbeb50898b426627f9320f7b3c5413734f48b6f9ec74d4e8bc1617b379060f73ec64d1caa17bdb6fd8f988fb87440f46e890b8ecc5adae6f04fb4fd0b1260843ad189ac98d7048ba64c3cb64f17fc107884f1a19a257db1104dcac76571f3578098989fc51885e0dd7d62dac7f903625f2f425f0c2d17ff8524a7a1ad834a742c48da8b96ab7a1580d70fb2c0517099fe02cf0361c25702d2bd03c2b4cceb4ecc91c431b0cd982c234b287aa24591cee7728b8d5e2cc829edd86e51ec961f14cbd18eda876e4c98835d29df91368cdb649367a426d650facf0619c9a765701ba5c8db1a0994f62279466ca48ff00186259bf473f2df7049ffe2aff00eec7cf258cf4e50c777235c6f178300739634e4f04b3dc504977a4c4c5ae7f072b3d17dbfc0e8dbc4c10355fb1c41e68d856d8256cd70952a1abfa8544964ea1707dca723e03d53aad9a1e9d46f469e262e8a3dfc099c059b4de10ad74789e84f4267285f8130cfb1be88a68b37f0910bab2fcef21b8ce95363e167e9d3e1a23302fff001373604feeec715b9ad8c703b10932b53bff0001b08d0acf62b5058d8894de847aba1c95ca8a6c5049f67a30e8566c8d84a268d0b3ab4a2dad799b1f90d69d9ec6bcd0b9cdf4e856328315c9db2868a697936d1b47813b6659173fe84c61432c746071d8f96bc13f612ffb1b3e0248836e8ac4d84277b637c2aecf61c76184536df4202625f53fb7cb883f4ad7c2fe44f97ec446ef08383743cd56c6452e843ad19234e910a0af6d839ab1cdfe48372a57c498d6a6dbc684925f214c97e12932b5197cf385d1549bf0d0d91f14426f16f03ed9ec6a7760bb0cd08d051379328736e08af2272a3d0ff27378c899707bb815aca6335c29972cc51c43cfe11920b2461b5742c5b8f24729a87ee1693db932d5327d8949f4dbf2623ea5afe64091306d7c38726eb9c39927bfc147104b706f6ffd1371ece4dc75b7ba658bc0fdd0c65a768f64950ffb0835b71e58b726bf69b59bf22ffb41290d3bf26ba9095d5c09586d19f23132135c04a16dabc09cd34f0334ce0c55529d9928616e116d86d0de059ce6313e71c914d8a54306b265f2628952a41518209ca5f0b2c6e7242dfb3c0d551e16135f537136f819b9f6efe18c982fa56bf993c3e13b12c7aa0f625cbe86365ee095ec300702e4363f547d860c173619044db019be56c7d20f382def8890b6d3dea43f3d700579f53c9918183a417842c79ff98de8d9b0ad7aff00e825471b645b5d7d18790ffd38645dc163d9d31a3563e44d36aeba11e6a7d518e113362d0974251bb4581970c8dda2ad6b469c7ee8d576375a1e617e42ede9f536172245d27c3c6167ff0090ed6f83fd193a43d209e94716c9ec2bcfe0e42f7e046173a0a6d3f537048d5d71c9a12535f04c6b0740e486a9c9d764452684888d2cc2bd75031b752e5893c4763407e5362ae98fd3641465f057527794c6ab37b13cb1e5ec4773f612c4a5e98b88df83cf4c3a349e564c9ef924ec518fb8b783c88befc8bb4c1a178e78127e5454a9ed6c7ce5f90b926b460cdb15244b8c7c2fa375dfce73fc4c01e2e2c7847a84fca5f1472908ed7ce2b362312a5db3a09290109c5017a94f612941c401f1b06eeb6537f6a602b2c409ecc894badcbb126c7a59299ec37e6cbd9435590ec93bc999da36ba1a5f8418d545d84b31185b2ec83fb046e64dbc53fe852eeaecf1a34de09a0b7227b8638f22e681b3c20dd6329d0df6ac94f1b665cb06587ff83c5e3fc96bd363558233c289989f0be897e0d8333f8911f617c2fa212699e24c919eff00026cba6056d3a3614755d04c51d359eb818ada5f7172c698ceba298cdf23cb344e919b222ec7d5b4fa621e310678ccceec5ea89d3f36919aba3e50950e06857d4a3e013c9b8126d28b46555460fa1bae15a3ec1299fb1f93744604f234b4e04dc9991d1c6f3ae8b709650da611bd8cb4d041b4288fee355fc183f90123f846fe57d1a4977c2eca5d02e8eff436a9505752c1189e927b267dd10b5a3c8ea6b0ee3b3212e702f82d0e636be0426f632492b2ce49b1eb4888248930237f763d3a5c9a0e2f73415d0308693f22a58fb99d783f436739ce4f335a16392165790d62d2f02ca58f030dbcbc978ede448df30c2e9087b78a87be7d2ecc1ee32fc461ec7f4c0d57f82c0963f8d2a21afe0fffda000c03000001110211000010a5ff009cf0fb1eb7e81cc3e79adb0c2f5bc974bfc11c4d9bd4d7313edfbd7f4fb08497acd9a28eff0052ce35afdf3c4c8b8b3c7fe9e1cb18d3fbf3a3bf4c18cabdb707ba60c9d2e79739b8dbbffabcb7fd872f558e32e6730d4edde27f635dd377fd566e0bdf3b8d7e732e9d4ed7a1ce74b7ee9b42495cf1f7721ffc3c16e37dc795f8e71cede16c3e758f774ab03bdc0d17ff00e4b4f3c7badcdf787fbc5d877be9d4363d775912ff000df0a745ec624abac1c7cccfff001b716bf78fefb7549c799f682cb26f1035eb7dbe90b493e985186e3c6b76bf9db7f6bdb7fef6d96ef5af7cfbb925833cfa7ea9fbc3492e6b0fbbdae9a7caedfbdbecbb774b75e4d3241cec3772c13992e7befae58ff3eeb6f154ff001d7f92ef7cb325d8f90de6af67402c63ca38ecc6bee8cbf279cff3e7ebfb3af4dfb9a58ef9cb6f30cd56f2de6f5baf7deb63e56dc1de23757eebeaf351f28eb9acbefbbf9ff0f45cd5ce3441d3f453e3beb2496d624ebd435a7b2249befb9783f51155fdc7e443c30d71f796eea5335152379363ae4fb58afaade3b9effceeeb6ae45186c05d203c6f608fc2fcd26abaeb0e3241858e3fc638d7bd4afdd76962973463cfff00d79fbdea76ce81eea473bfbebb2bb2b12b327fd00c6ace3aba466e795d7bd3fbfc634f7f59095c6d372ede516e959d3dee96bdfb619ed36e59246137feef20ef5da85fe5f6d8eee4f35f7dea6b33dbd76583fe3f66763ddd8f3fbbe777ff00ae1083585c9a6b5ed13d9783676d27cd6ab92aff003a457a5ba556cfe4beff007d1c9765edf313dbfd3335fb72cb08412cddfcd5c7ae3662b6a5bbe62fafbdbb87b2ff00f4dfd6cc6dba62a87f57bedeface2e4acf4e7b9faaa3a91abde5b5b7a57637e9c9fb5b7df7ff005d9aed66fd4ea563ec20fae932996f1aafcb6ef647f872fd7ddff5dd8c779f06dd7c348411882e9c73c7aee6e9b9b54f7e4b63a46f3fb3f6d0dd9eebedc4ed25d5db3afb2f30f7cf2f5fddfd49de3c1e8d6cfbbbe5fddd73d8f93fe46e4d83e198d227bdfbe95d7b4eb9dcdb0279ff00cd5edb7b369609d6bb70fbf130bb8dd3bb3d3fa1de3cfaa334e9cf33ff003a3d17becf6999bcd566ac73ce3bf6528b4fe2cee7a3efdde8b90dde77c2effbecd21f344614eb0c1fb9d994f3b47fd7eda4595b7cf91f561d65ed5f7b29ec39a3f1cf7d159fcfea8d121ef7f39cdf6efefc283961e72dff00f37dd79eec7fb6ef779c374f17f385efccdd5df7dc0ffebdb8f49f79fbcfb771f73ee9b6ade5deed566a2ee5bc417fff00ff00ff006bc28df733d6ff00ccf7b67da79310d26375e7df2723dbdf975fff00ff00ff00cffedf5df5efb91af6fae3f997511b634a5e56fd8c7ffd9f7f8ef5ff00ff00ff00ff00f8cd7cd35bfb6c4efde6effa7fcf02ed6667ff00f3c0cff8dfff003cf7ff00f7a05e8abef02d7fd2cb94f03a3cb1ceb377bffbb6d57fbfff003afb4f3dfaeaff0054dbfad368f667bff4eae778ba856fbdfc2cff00ff00ff00b9d67f735a37e51819014f92b29ff9a9ddbcd9cf5eebf8685b3fff00ff00fd3cd9ca2affc40020110003000203010101010100000000000000011110212031415130617140ffda0008010211013f104b7826f1466c4d8db17f44be62178d1422126558d90e988684de29b76244d13092e84a758a6cde363117284213f824529111e2a13c520bf994422222c5cc17f724a93e894e8de611e2acc58a26434436578b8d1160b8dc410a44517084c6f30acd944558aca4628a52b17e249fc295e622222124bbcc445c62cd289af4ab086ba1be08f826f4a2627f482619b125ef2845843e34a4445c3784ca268d505bec97e0ae8750349da16158413f988b3b13c3172df38888491189b18ba639f67d06d0f7d8d9da1d834785fccdc6f0bf826c79de6e26294b998b84df8317627b0d2f06d8ac693ecfe62cd37c7a62e694de69be14bc5378dabd3ea54fd2a441a114d9384c420b8ec88888b133334a52e59d13435e8c6d826f49e699a578493e84cf0a28b28a211e778d9b36529db435c1b7342d75888825f3845c13e08125e1594aca522211133be1bc97ec6cec4d40e5d8f0d2cecd939249f62ce8a52b294acacb89cd242c256c6d8253a2278321170de2218c7d84922e6f2bcec13aec7b512a436c58365d8c99056fbc578de661a4c4921509bcde6910df0829bac84d1b4375109b4810d543678f3a5e13144d89b18837f310a529728835f386c56ec6aa8494469d8c86935a112505f6594b89c2111114132e84daec6c4a40c34a66e2618b311258453f874b58b52ac4c9413634133384265398377a1a0cc838322c4c5c322b9d88521135b0c5aa21bae224ec67209cbf95bbc4897431363363486994889c1b64121528e1be83526d958944cbb1249d1aa82443a61708b17092f716c6796636bdc125c2220d84de8bf878314cc3504925a28dec6af67c08bd1a690a1b16b095e17c28bf44be0cc6ef06c6fee2f18b0db0e06a1513bd8db12dd6369f45766c8084dc36ec8442488888888858442932a86909bc4e34a327d9111a1ed44d8d04d35044dd1b1923bc292445999a6c76741a4fb248221d0897e49b5d0ade08a08dd9b19b1851e12d32188fb153b6459a5e74fc21a159589c1ec6bf1ac54a410da6c61edec697824db13fa490beb262e22e111055163e8349fa311e187ce118937d0cd86a10253b1b769ba8844b6c6d0cc2a5b1733f07133e86904fd63428ba1fe0937d09f45489410432ba26e9b2ee0f16886d8222e74a3ef034a119a7fbc6970a5d885da3ae64f43a4a0ee09bb4522b152a6ee0b4a1a114b8845984476d0cf077f842130f784dae86269b108d47a09def0ad213a2e8dbd911b22294b98b0bf98b6c65ca1171b9426e8c63157d2854ba2b855b3a0d2a5fcd87be86b31fd2109caf2afa33b92fc12be98dde2237999b8bc09b1cce90886d7853798444fc536ba6772299e9334a529b17f488a27f4442267a0db1e6104be8d3a2fe6c6a84f08888d09066220b104854444435bc273a1a442130931b486dbe17f1a4652b198d18d212bd9fe0d908250841930bac21085486dbe148bf29745289bc1bfa268bf0ff0048248d09b98642217f31327f3ff06888d9fe04d09944c4df85fa4108ce98627899987e14538c21084c23647f08f826c668a8d84a743433c442445882c36c66dccdc24b942108458824822c23cc75c317e2cedff07fffc4002111010101000300030101010101000000000100111021312041516130714081ffda0008010111013f10a7bd41d42cae41fbb20086f96362cb38ce7214f273ee16118ebc9efd9691f2c13c1c8fe71e25161007902ff91fd908174ea6c3638c2c6c2cb2cb38e4993f505ec8807cb241fa81f251627d4164e02023af216db0852dc22d7257b7490b2c2d79142fbe703c816c3d80f0832a792c7ea11f182c25a7f121e1c3f68b78de52c9873c9171907d9c7cb27ab21ea6601f500f38c92fb06c444198012104f2d6de3090fb27ea1138b21bed93a7b6c1be5a95b5ba3596791b77636123ec05859ce5858719c658c1ca11fa81b3f38427f308b27bb6d0690bf729c242c3eca1e5bd42b01b2b39cb0b38de72cb0e3bb610dac3207dbafd90b1c36c8f3a9564e15adafdc7e406ecb3fc32cb2c95b7e0f7ec8596416bfb7e902eb81e4bbe5acebdb16a43ec08c3bfe79648585d5849f96131121fdb4e308fe5a97f21252d21cb78db7803fdb2c3946ce0efd9064596f2a852573bf06cb6de76db6db7fc32c2ce3091202cb090b0b2c83f6cb1e33e0beac7d81e093eec59b3fb07f607ec0e38b7e79613e71964af207d9016964e3de36edec07dcf5e4af6264a792ad7edafdb5fd85fb0ff00663d6cb08f63626fcd595b593f729c9c616120c880fb8226facba12396fc30e356426fdf1adbc92a565b6d9b5b6de31b1e137d8080fab0b5771c37895e33e196164de035f1c2776442b0fdbab09e36db1638d2c2c2ee07ee37e490c936165858596719c6bea6c985f835b7d9b6e96dac33d836cb78ce379feac201f60b6f2422c2c83f64cf88e7125f893d0866a5577825acedb7b61f0d6de4588f2d06d87d809a5843fb75f5009778de7234f26bf125bb905e2a7d59f975f710f2db08b2c78d84fb975631e48265ff0076218f0f515f25fe423d3e184bf9642f1cab358d32703007b79e47702db22659658407d42965d13f9bfb4a99b61212121843b24787c12de2320f783034b268e102526f075df0d207ee4c8fed96585daeb6d95957fd47bc2751bc6b0af19c36dd160e129f5b25c4bbddd957de00642964bbd176b6cfcb360c7b93f2db5972fbd80fb961bc81f5c3c8100596fc183257dbae166ec21b2102deb207eedbcf23d6f0709dcad8f1864bc414c789d7b69c810102c3e477616b6bc3a6ede18eeca07ee08e8b101f6c90ddb1b27af247de00243ee06e47f500f6d2db2c95b6f1bc6100719645d491fd8d922c0c25935803cb79db200b617eedbf561e4abf11b6df983f5383b83bc9785e23a36156d2d2026e6596161ce73dc3f6c2ea11b20f1e185873bce7c007919d642c063d6f1075903656c84fbce103ce75f8edb6b3d3276d6d91f72db6dbc6f1af03d44985f7b1376777584066c4df5c3d77616bf76f184bd75ce7c3ec386ddd84d9cef39c24f2d7801be0cb0f2c24c95f23cd96db38cb246cb3e22640f867c36d78ce0bceb3203ee0397bb3f6ce04df83c776739743a91b79ce75b6db3801bafb67212fdb1305fbb2e930b4e739cb38c391b259c6dadbf0ce46fc76eed6fd604632eb2c2ce339cf8e1c6497d9fcdafcb5f908f6416db65871ac5b2db79cb2cb087f2d31abbbfec0ba7cb2c78ffec040d85965b658585e7a9738ce36d8160032d6cff1008eb8aa0b08859b6243c872afdac0d872771e36de0932cf8df865ed9dd9f0c3fc327f9648fb857261d205f60877611bee7ac233eb7bdb783fb6c25b4cc78c6fdf8c38dff4432d7edbfdb5ba4b71225d0483dc67442dea1fa61d64bddb12b0c83ec991c0d499ff008036fed67ea51e377f77ad903cb3f6eed5b07d4e903e49c0b085e0cd845f8779cf86ff007e1b6de0625f8c3bedd585d6e409132e9853a9bb90ea576165ebb90b5b678f32773fc91e36db5b5e1e45370b1ef02717bbea7de5e5e7ebfc99f8ff00ffc4002910010100020202020202030101010101000111002131415161718191a1c1d1b1e1f0102030f140ffda0008010000013f10b80ba7244094aab4abae23d6da4b12056320f55977ddc2b88a003ad5a525f9eb1dd084444aa80119abd2f18ca096a9ccb536f7c60d400000441e349b3deb096920c081bd30da6f5de2c01020e8b41c5820181aaf4f8afeb349d0c521239d9d7ac406989088028b179f131f3c80b5515e5758e68a8ab847977de998d64d15b07c873bf7bf8c35a9ad000d428a8966f1214a296d2e902e94d4dcc7982ddc94200faef5ac685e815c30ab75d6e5f58761515e082f20dd1d718e329c86511d00c53c7786a99a1801415d3eb5ef2e46c0b1485952f17bc93242023c1d49c1ef79615b8aa480c8cef475d630510a846a83a1e35f38db54c88f0b2fcdbeb2e880ec5847037bcdef057852daa3afc3859d2904233c57de16f6026db0341ae0e7bbc6b9c26c44368c18bcb5c6d88ed143894137df7de59a03a008d90d06ff0038120bd82d307b4d6ae44a570dbb3c6fbf584d434a448bc89b9f384428a2a0c64155e7eb359a50402085a53778e325882534cf221fde7620c10e9e7a7e8c7820817684bdf174eb9f58a91574a9516e5234a02c8ebd60d21138772f8fce1d8922f803e714e22c6abcfe708bb252bd5f1f8c60436e5ba7d9e326d2830582c9358d1c0140d8787dddea654aa23b40f41357bf38d280a06d12ea5a7bd66854892951d8efc0075de3b541186c53a0745f392489605aa415ba66f184920a6008dd073dfe71d250d12105bafade3d46c004004aa25badf5905c515288f5ae7fede38ac155480ed09c9e2fde079a820415065868bf384a22a03612ed17a5cb88e028ecf9c4b086ad120703b78fde29039512082c13d7bc1709252a05d01a001d5efc186bb6254ac0b4576418f3d498c11442940f4e9e7ce03aa2203b8d9bf1e78c75d06a9075a69d8f24de0465a2a3da50f175c5ff0039031ad89b091a7ef0aec88aa0551e21e32161e094e43a4e9fbc5b522501adea7fbc2105102ac00da75554df019772954b0a151d701af79ba728502952072eefe337611112234450743b3471310143129529ce181aa146abe0d7478c7331b445b139af32f78a118a0aaec154deff009c0ac68474c1106af7ba1eb352810d9e5e80f27879f384bac94882348071f9dc7c645b031d41591f37cea6312088a881469d1beb77109d80836835b75b51b7a98da690e428c51e69bd717d6314281ade6f33dfac3004a2b0abe50e9efce21489aa2a4f126ebe263490b01b0559bf5eb2d410532ece5178bf18400420a6d9debcedef2e39801b306a27293d7384b44a83ca1cb640f5900a8a0776da9db92b114d9452f1c7f8c270e844d82cb5dc1a5bd71861a5984d8058de9f1816f0024200743fc7ef0d92042058e0ff007888060c272f087d6ae2e86aa05229ccee7ac6aa5000a6ab92d0b22be3a56e83ce0000a9345aed7ccfac251a02d6cbc21e70b9228648756f171a424990042ce3d649a03a46d8d1876f8fde68622d082f145e7e9cd36694d8279234279c721e8c089d438ac37cfbc25284c2a4ea36fe706ab57608d8288f1cfeb2ee14555a49c2de4f78d85512dd06698dca32cfad604208a55faeb2800c0589d382020d0ab63f13025828a2ef84fe7de2b47048a14fef1e05c713ab74935978002ec830b1d514935ce36e231a3a07d9b30bb08d436a5857bd4c584402020d790d60fe404201deaa466b739f585a1182ce435b3e3e316a91129037093ce2f2e8c481a8a93a586fde2f15402ad8da80d1f9fd66f888ad17bd83a81e1c34205b1bd32f0f38a0d02888a1ed1eb4efd6218a110d43749ae0f180dc374d8e8e8b6ef780f563623ae54d73f5ac6825782aace93c86f105958ab41547fc5fbc20440340da2d54f33877bd4ef00b9aad232dab381600e334eda2408f8f67bc0b8501d8a23b8bc1373166aaa90344e8671c7e7169e00a2c553b9ccca5d1806a6dad80aaf278e30b32401a168da1a82f75cab09934a81a55e48d65ef01280910922f0ced0ddfd63111041a697b67571484148e9d0595c54e954045bcdaf09abf78e19a8111880d0bbaf5d64c42855b40112853d6fb981484d4a6a01103e7b1c6245944d86e965afe2d7ce225143426d56887af1fbc2601086ac11b03ad4d7be71dec363cd7615f11927595c18aa5da3647b0ba7d642b968cd858afc79c69754056d4d272fbfd6346ca4401574bd89e6e50583c88ef9d74bfaf386e05458b4380df2fde142108a910488fbfbc7a68539108d82ec5f3bf1948d104e88a543a4f5320412e8210e9bc47e714341ac502736a78f78ae2cb41b6db50e375ef9c286a200f0f050e6be3195211022d064590bccaeb7719a0d8a082be1e5cb282d814d08e5bfe8c9e8831f624d9d4f5302b050c6c88f87c7bc6c410454a83d3e4f58f60688d523d938bfac2142e8aa852c12f871751354b343f1da612e0120694b75e6fbc075ec46476f87609e661640d1576510e13ab0f38d600452cdf7c7ade32c00b4ab438ff00f99ad0654d3b4b256fc5c0228502aad5515bcdfd62c55a200441ef5c9eb36dfac4505947f73188834242fc9810d445a46fb13ac149179e38c4140a2b584fe705d017a9cfde296823c977306022a615e3d98c0a53708b2dba3ade3e9ec209443a45de318daa8315aa8f1d778c2f244625e57d69df58b3a65100aa7b76df32fbc60db504628af015000afbef0d8ab02db0905e53c63882708050002126d4e7de32042291d20f29ebe79c22c34556d23cb20b3c3871a43a6c164820d7d6be70121b01d2c0f2339deaf79b5803641afa77b7d62025b45b445e80b316918148a36aa3e42386748871d02c5376a7bc3550318c028d9dbafde2ca050a808040179d7ef78e85028a0419c437c7cef204345a516816879fbca110811ad5ba17ba6ae0db54025445ef5c4d7e31d98020a0e9eca77ee7d61dc1497685b0e878e1ef18c82d02abc011b2f3b701ab230336e953a27b7182aa215792723c40d7386600e11459eb7b9df8c7144021eac92e00c0ac51a0b5279eb9c3422a2d8919d9bd9f8c7c3055d553a8ea6040ac633754b61ae7d61378f45a42ed61c9c7189b054506d53b5f8f184a0551476a3538e1217a9de05976000c074329af38463516d390e8febf79e324a41aeea7b1d6bde5480057511b519c4f2645824acc3e0b1b8a64a5d2928711debfeb8f6d018a0ab701d43cef00abd20d517b6d2a60b7a8209355dd35c5eb7f3844a2ad2a28f1279be2e0b746a2aa1d01d878984c4aa0504af83a2f47792440042b47a3de3986151ba9aabd43a30920880a4a44938fbe8d7bc5d0045d767b380c46e0604720b6a77e3a984ca29a76d5e11c4d7625076af10761eb0c5dd05d6c4525df8cb6360884109554e7937fac96c4c0462c227bf1c7bc52c3204280f14a45f3d612084b3566e5e6c14d1ce1c404292023c5a0b37fac42b2016614a3f2f07f1836c5096e853c3cf8f7ce2468851105abd5ea66edd2684010e4f6e3850a09b0a070b1e0c2584a0ae847b35b720c00868f0bfe8fce3ac7f050c9457ef78d02b469b085550fd604ca4400220ef8d5cd2169529627c758100abd2f180621a11dc7e660262a4a6f57c38568b44afb702da543975fe39c6ca5acb0b679c746c345b18f54eb465a02b10540f0f25c6f51da1640015dc26b673de358da0d3457940f1e7022d2082413927b77d64b045048d071c75f8b8e212424aeda2804dddce31252440304478e2cf9c38242c8aaa9ede7138988054111952f3ef1df6b016400e4438c5eba543552b56fd18d18cb6ad174221a0e7342370d2afb9c871a9de35108aa4e1784ff00b59c5228a0534a5af93d6358013b10513b575fbc182003a23686e54f58dd53440214eddea1e6e29ab4aabb51e4148b82d24400918be7a3e23c60800152c2d707c873bb84049511e49dfb7089360a0a2a414b2fbfd6464c4031a5b35ad3793bf584e0d109427b2dfd638ea289343ec7c86fde6a45a36c0478dee3f192e4a2343a23d73471c8045e201d53c9e71a101053723c92e9f5922101855d9790f3efc7bc68a6610a81c33bfce184264d408c8cebd7ef1a5188c0d15e859acd90255920f87deb8f58801449246f2edfe7041601b2a4f3d0af7bf385ac320c1abca7a3eb0ae2ea44a106045b7bb7eb0d8585980bcd19530e90c18741c089dbcf19001ba2e86d603ae2789892d1b0d8a072ae9c6cf2406a2ca3aece07530c1c0105151794e8c6a876a4efb1df784995a888d179bf3fac33125458687b179878c24e4a8ab40eb984fde59d0203c021c21dff001820924ac314e0644f91c62ce99aa06d1dbef208502838408b6f257cdcd583451aa045782cd4fbb84e045420a7205dbfe301408297bb069d9514e27783c4842000a886f435f0e541440012adddfa6af3eb243802285043501f3bbde0ab112ad4abc01d3f786244375061d7bbc611102b4155960dfeb0d880a4d95e8f180422757482581d5fbc3461287bd44aaa4ef8c62ee45a4016bc738a16c225455284e978c42dea762a269026ec2fbe31b62de00a0f42defe306dd6506c4f6f59b0aee6c44725a0277aebe7194a8cd783ef26ec471ddca17522f078e70da88a47d5ed7ac36204b2b5c9c262c0b11ae1df3ce1c86b10620e0e3597ce24deb4734794f5ce36e22426896257dea6f1a74c0669f40116641c8544db51e6f57c47260200a1c1c28f71f8c7506fa5250282f9f58d0ad721175c2f81f3bc9057600706a80a70307b971c6555501517806d0e357ac4594d3628de7731c242d50681c24dfce0233108446b68b6df8c48726231013b0463ef39228328c2b2870bf58ecc8ab034466cbac34b28a2010acb4ff0f18aac811082977bd8a5198922a16c11abc5e788fde08804d508bd0066fc79c6252541255abba59ef22a1266c44e2f5deb596c186a4a13444ebab31a59da4a00749ecff8c13b11bc3402f07698ccc88da23a13c384bd82b50abc06f93cfeb016a02d3002adedf2f78ea0914500655d5be31552aad8ed777efe71631b00113ca1cfd4c7be0040ab53a10796eadc3b5020038587c4c4a3280950764d8f73bc2fa430915e6bd1cf5d7bcb18ba1f74375e0c46082c1a87df6fdcc61114488a9201bd3dcc99026953141a0e3c420512b21513dfce59928002916a7fbd60ed10d51acf0b23f17ef25e8594020fbf8f78869d53340c5a1bf1e70d6818bc3cebbfd62226d3761369f2fab82488695541ecd14f8b31eaaba0a076fb7ae6e229084782414f58fd12820744f0632a068aac056af372410a201687987bf9d7bc36202a514ec23cceae1428247655408ea6f58c4dbc9458e7e383789150c855aa500ebe778a14141a9be900d3f7884d2c36954ba085f9cb337400116d04c41c0a086b9e0f9f5d612245d6ea326fd6552ecc10887a0b19d44cd744409209da1dfc18c28946725744f61cb75856bb212201340cdaa0c9a9962868022bd55e8c722c414a0af61cc0c236a56851f54efd61eb1d84244b648f8d2e331a18f307f183152bc78304d0b1537e79c90024e7abf3e70a1019db75f9c3c2ab1b4f3e328216f1fef1f7ab480913c189d20115596a5f6ef1b298b634af8790f6b83c171b469dc9dc62ef13142d10b54b61b3977eb10a16aaa5426f5d27de5204459201d55e8f18c0d15184a3c884751de0ec245aed88723377d2192d88a01420b164d86328f3425d8a94a6f8fde15016a8b0afc6b12850c41a376419f78c20a2bac06d6787d656d68455ab5ba3ac8831a82021a23cfd37e70dea9b05412ddf86bacb12154d8e92fd6b5dceb3936414aaf4356ceb898a510035876cb424bf5969a1b5da2f281c0bbaf18764d54d809b2f02b67ae71475180422a5689a3f38c182011542b5d7bc61488a85d01d2753ce32002d188a6d6fa3aefce335a2b5009bd93b27571ecd2aee281544237cf5ef1912822e7eceb7eb188031b9bf9770c4b414e5a271139def1804c02a546efbeb5bf790860c4465d9e38bfbc772089c88a083d580e6a10ac8d49bd71575262950889180b982ec7c2eb06c8baa5b58b7cbcfac888b78390b36ff001912028816147337afbc2da20d8f22bc09fce282c34aa9c9cd3813cf78b91529481e2ea1eb78e5142459574e83ef9c620082aa141e00f2f8c35a8c33a148c3bc1c0a9a2c957921c1e8c428421e50f6ff008f1ef0270024e797de008a2ce4bac1d5d5048de3b9c61874021051be71cd25a05600ef578f57ef1db9cd86d10847d637405802c9cddeae25652cdbc0f335ac72c0ca2a0072f75f78a41488515577aebf8c1a851ca2cf8bfc64ae96315dd79679ff001860a8b42ad107807b70883942ed7cbe728214a0b5d539875f5318504482d00d09386f3bdfac1413eecd962eeeff00c601a985a1503351e5ebce50292f05079978c351adac423db0e532e500000b045a37919d1326a546e8239adcdf938270fb9d647706154be3134044e692e2aa254625d3f1e71d946f5d4f9c2aa8ba31b7dfac8537c6e1ce0a2085e69439c21a02b0f8f0bd9f2388594051761c69f838c7616a00c53c293af9c7519a0e2bc2fb1c30d128d9612c3cebde6b400daec0e62f3a2778e59011110bcbe57d2e2435950f256919b3d6be71480db54885dc0e1d3f9cb62684437167693011506828a1108c0e3ce086c10e6d36c14d6fde6f99df962954f58b226b10c89cc3afe70cc4d8080292ebbe7bc16f8446ad55a10e1789d62ced195040395e2bef1cc008aaa0a4878710e092ba51e043872cca2d0a8c280936ab3d4ef18d02a8468a4578988e808868567f8cba24106552eeecdfd6f19c104031a8da3f385e56104e14dd5030222110ecad4090f998d590d40881db3bf78081a905782f99c5f385d684458089dcf10df78ad411009cb6d1f603ea77862831a4d83dc9c7ef36e04103cd100a7109cf790a5005aa21cf3c5ddfd636c4115045e634db37d6502c551d884b7a3bb8a90ca1dc2abaf8bee62561daba1b447cbbfc6302368d515f007af3fac52604445a0bda778caaecb1d1b9c3c1c79e70dc31d0961254ef05d904235d0777a7d6586c0423caf65e72dd5a9a0383c7bf9c4158b12336bf3e7221749c7971a41b25d77f786b49a21afac100583776c5f1e71c248b76e87ba725c675205822be071850162868071ff778b5400801a1f34eae105d8d9b43a0f1fce125054d86db75835174370bfc98608e780dcf1ce0ed2870a12709e1f78c2d08ad760669d6911620f3ade59d3b036068753699028102aaec5a2b67d6481aa3c951a43c1d608c4e28d5d3c01fef16a5d05014799e338cdc21b13853ccd62c898b00c3dfe709dc64ac417f8c930012a6edf9eb0dc683ca7792281a5ea7809af9b8e32dbca6ee5940aac71c402cd3a93ef1b7190544db792e08509d3e3e43092811df3ce0a08494179a3e71a5044d08c8f83d6082a810e80361e378b8a8cbe41bb0f15dfeb144346add27a3b7de3d44a026827227bc2aa1465096ab43a1bcef2c8d46b788bd5cd84a00b32a0c76fbcb81a20a8f0ee95ee638a25074d5aa78bc61f254a3a29d35effce4c90418ee9c209a35ceef8ce8415ae91978edeb9d627b198582122c5e3d738c270a94400bb4e6c2e1a4611a26d4e11e1ef8deb8c36c8a24363b7eeeee09345520a3c26f5864415006a1c967278ef038080a2b237c73ef0f420c20b4700bb5f531b4200ec20ad5f0f3e318fa1073a5380272f5fc643896d635f2459c615403aa3401c29de3040104380f3bdda6b8c950500074a32574bd73ef1ee216a082ca83d5f3c7bca52f104d69904e64e75ce24428eda00eaa8fac9320128ace03be54d6b2e15c504d2548f3ac41b0dad010e39e50dc70298146810538d3e77f9cdd209d82b13f12fde35805450407b2f93bf18fc844662b6a006835e78c36d2d6d76b8e22ba45900f4f9f7897551404e0f4e21b1552a86000143dbfeb10a8d071e70420c48749e7e7005a6e0fbf33046a6ad296fa3c60151a3be37f7e73682a83e4bd182609a8a1b4f17acb9200a56a9ef1d4240510d3f395a405d8f83c1e3e704ad54e3d7ce058781542219b8e9076338df53f789434b641007abde126a209bb13a1c2e0b692280e97de2a8a258ab380edf8ca8430a794ed0164f782d00a4801e55db0c013a540d3b673de0a4141594677928ad5d0ba0f0b8aa06316bc27f795108cdef4bfc4c0091624db01f8c9ab1121bd6124208bb1453a358ea24c01dfb3bfce68e1b1384fa7fbc7680180894f38a88b078191fbc688a51a4d64e8a8c75eb12228871381f9c139a4b4ed0f9ef16980b18b0bde28a6d5ab2bf5e31d16231f7f3e718211080696711f186d08414761384f37c63451b47901d2c1d1324e8ad3b8754e87ce21628097506158f7905806d0853c09f265bed512506c5277df8c1d91a907226d0f0f537f39306450142b382068f3dfbc296a136289a09dac7ce40814aab56f02481cf11df383c1c40ad69113d3e31e94010010b41d727186a14a808c052d45beaf78fa7640501f0ef58fbe468ac178546ef5bbe7c6300c94908ad50ec5e5bbcbcb46b006ac00de98dd981154412b7bef9e31eb70214db3a27f9c46da422767a0ef18d4a1d23388160062a94502acddaa3fae3d648914d910a2c4e167ef190756603c1df779eb25d60ad4474a1c7d61d1b640eeab6fb7d65e448891417c57406b2d04005a223b2f4f9d63253a6aa8418d7de255c4429a8edd76f6e34ec5556f2bcae32a2a315efe0cab7016a0edc06c13443bca942f11df18b4abc738d580976bda79ca482518479f3f9c85057ceb419ca9408ef4fce2dd20ec5efd1e728a58a3b0013b98e943aa210be72f60aba5abaf1729152a3c6803ce1c0a6f4438c025404e7b5f8ef152156986c3e3bcbd0343672af8f586b114082b01e2b80dca6d4544f1722a1a02e955efe3152a552de3f77f78ce824ecd35e795fe30415212daa7624e1f1804491517488d8f9c65223506083d747bc89272402b4ede2e0350d9baf0f97c621b00ec4623d9f7e71c4a83e26fc67263828c8cca921350546f6f9f8d670ed15286f7dcea6314d7451eef8e71432e006543d5b6fde48ce9d5378d94f9de3b63514bb3d738f6435a2247c279c04d86e74b8aa52b457531aea98d186be31d51558c6cc6059dc3fbc9b0bb4bd27c389829035ba8f55ee63180be92f2784f18722511bdaf43e8c5b55590dcb91f9b805d1e45054f33c6dff8c2a22c9055491a68efbc700a91227489cc79b3258cc23b04dabbe35fbc0381d208c58b1417dd314805da2250f082cf9dfc629005c88c05a21d53e664e4850062c2eddd7183da504b41ed96fe0c341220a02c3ab3609bedc8a9d411b41686f52bf830445a2ca097672e899bc159103ae68de3a3c629848b7654f8b3e70222251b5808cdbbb8e52a2514d33c1d62004c220a71574687cb0f7828aa5025d2aa68faf3de1782de4abe4d71ebf7883068a04108ab7ef37a990012a0f0342278cbcd090b11edee613d24441d1381d68fce2ba52346a17a13afa30ac811705568a1ce3329216d557e738143e6bbc1a1b909cf3949296c5ad0c034f5754dcf39dc2d79eee094179e70000d0b0783c5ef35004d3f8cdd5559b5bce0dd822bdf13ce2c76ab61bd9f1e30552bb6beb22eeb2d37a3342b064d6db8da80270b349f38242b6edebebffe60e890b1dd07c1e30d284882359f193036d50a30ee7f19522a056652c0bdcc30a0e30a2fce442300354430601ae82103e7bc7969b202a2befd7bcb06d1182c5e83bc32204a4b02f82621a922408a3d3be3d6314948a3003a9e70d88a0215beaf93fe720a29dc18cf33f8c48445bbaa9f3feb284e969bd8f7891ed449c0677feb1960f96ab48783ac856006a965f3f19a1009429a2f73b70b516355519d07cf9c73555a8f0bdce27bc2281020003808043f790f9895241e23ddf8263412183e5f4f78b42e8beb036b2496cc60d3c3aacb89c0c9f53fbc02a8f18202243a41a9ef1921174476fb98e8412ede1f5978552da691c84b0f589442417483dfa3d62502088a28af0376c34cbdf38f0502b042f8f213abce359121145a892271acdd04089c03d8276529d60494292c04d84f412fbcb6a22a0a8880261782065361e34181c102a91104e95dc9ac26bc2b0103c8bd137663062e9b0505d03365dcfac20a80552882916e9d71ef000ba620409e8700ea588daf32717ab72541ed2b057d7a379155246b6873400763e1d7ac479a25404291e2bc7825c0d95508405294dcf930af76504aeb5f2ebd7bc7050228df4d387e2e385c34ac9b804eff00ce01d4506355ee192c00ee80f7427fbc76ad0ab1a2bcb8402254ae5721de6a6cee1be70141bb346ff78d1ac577ad4f182683eb8bbf184dca27182c5ad967783be5775d71fde50d35021d62952b075be0f196b0bae3a9810776f3a984110873ae336b00337364c1cc1408af07d609101c29b7dcc236b4e5bcafac074ec26b81eb15b11a0f65eee30a052c252dabd1f9ca48089a1a1e8f2fc620494da4d879bfc6272606024f970225a05901f07ac28a54481aafb7bc78c45b64bf1855a85369564bd65e03408a0f33b7de22a415746b7d2f438400825b6a1f831d75da8c9beb5e1c0b8a3b3c876add5ca80954ab353c5c0ec1a3abc1e6e4d26c175153a98ad03b250747bcb4118a8072ce1c15620510ed780f188a80b55d12275885362906d45f189043ab372ca6f59700176528e69a98cd3ce292940222224f38142f1c668deae8efef012d55e61afc63440076c77a9fe725554e177c53afbcac37226d094502adf188ae031d149ada5b5d621d0a42a11968f8e37eb08ea50436208bf13a9ce498124a1a03b7d64902501027b5f6b45f59ac051340424a215d71972010b08a8538c34011392216e8c1f80814488ac6af3adf186239b045fc4be217de3d050c01a02d23dccd7103a04bb058cad39a738120e8e30297e7f5ac632b45b283526c980682f3455ace4a68f38e9c06ed561c375afac220882ba2a6d3546f55f9c0a44140d0820af8d3a9f780a51152d41e409a6fbc92829da174ea6dbf18968c2a2f6106bfe71a3400caa2f2bbd985668020947033cf9b8c4802aeb52651b8712e2008b5e7d7f78765185f8fef10c29c4e31a38c0ed435bf970ba00015c00a6d037d66c2aa6e04dbf38ef4dc86c75736e83226ac85c29596f3be700502d2bbb7e32bb6a6e23c7e301b01a90f07bc22a8acd3488fc62024088bb2c3041130a158d3d621846478a0df7d1ea6090da994a09e0edc168ada2a2f84eb0024a6ce13bdcef2ae0110799e618e289622ea9cb27f389dc1580d03ca1fe31d801bbb0109ddbf8c1d2008a3a7585e00415805853fde6ed238ba223e2738555020c2fadf8f530ccd1a748278bde72c008052b7b37b9e311ca094694439f1bf583a845a6a23e5dfeb3982940564acdce71f98aa02e84ed32dbbb2c42b1e8fef0436b02b58d7b32b48c024e69db711401a56b86dd66aa8a015aa84f05c12510375487b3bc38a0b74016b36f78f4153abb3f39ce0207234c29a5217020a2021ae2fbef02a828339384c01d02548a271ab26b9ef17803065a039547cee7ef22689042012415e3eb38da134288ed15a9277de54084582ba2c0ecf58e58409d29d41781bbf79ad415888160d654c09962a026a345c2325add22ebc0de05fac13a11154d89f2fac590a2288869e48f9d6fa9860928224051903ac7368a1577858cf69fe4f39a0622853686cbcbfc620007a20489b60c7f380bb4e9441422a1a079c248364055506538e70d38056013cd5e2f58e00401a203cce2c30521743a01483ec9d1b1ef369102a020ee1e59aff00589422151452bd3eb2edb25baa1d017584ec162491f1cbaf58ac76ed5d7bc3e7878f781a2aeb8c52c91086b37d75806ab0eb5ce11d2b0dbae0f39a9a7a860dd0b46bac6429647e7e301483bf9984685669d70ff38309bfc6422f86e14a2eb29d014749c1850a5235f78774388ceb19028465bbbe7006876e9564f784403512cdefaff780685b2a86f06c122c5682f7f395a2da82a9e0deb0e025684dbe5f531c240b4aa8f89fce224956ac0a77dbce04ec1500a074d3f79553a6d2c5dd389aeb790223c8926bc6505caa537a6d7b994800a234883f99fbc41c0d021513ab7786b02414bb13a3e705b140810b7c6f87d64d0214559579f3bf78dd40a4d2a0fbf1f8c71125a9e407613bc4b1ba4d38f63e71540d18c95f782ba00e8bb47de12042a88ba3c3af382a89bb2d59fde210a213c8df5d618047647b99b21bf6dbbbac58a28001cedeb034037ab8515c9a849fde3429f1b1d23e3360509ceedcaa5494488f817b1c180812a9d7ad6009401566a8ef6b7adf194c01381b59125e1d33d626d557623526927e30225d1568ac7a2f05dcde20c00d2280d47de41830aa6aab38e8f6cf8c9d82c50ac12de762eae3b46410b645b273ce12400b151d583a0e725288aa1506f7efd60d424136407ceb5fe8f1811a3006a2b230f7974dc6d4425b4783e31729d44094bc8be3096a05568a15b09d7ac1309415440a727c1d5f5701b0aab644eb6f1ebf78588ad62dd36a1cb7f18cd319566c4540f0b4dc678c45501685d5f38f020080f06fbd4c20a227269f6778ea83c7ac59a769c6f5966b5f9c1abb764e7f772071d94c2254f83ce514aecdfb3c7ac20abd71eb288ba49ce2c8055b795fbc52575e23ce02b47bdbe1f3911558c27784391f89ce4f202b084ca7a34f643182800c9c65e0000401bf7836af9c95042b09fe71e0926df9f386b01ab6d931211056adb30633c73ef1294d746faecbef354134db36bf6e76c0c89347be30ca058808023c33b7f18a174d35bd0db5fbc445236d12f7b98a888055251f3bdbef120540c54aafb7bc5d42a280686f6e1b6d60daa2f73fde04c2aa0d22bda376996519856141f7bc7508469a11f276fac556a2242a0a916f5f130656db58d13b03bc4180828a26f0d94446b2c5f3eb27601a6f85ebf18a888056348a757af9c29016ba7fd678ab1d88d33960d8f7b879bde310f086db53bc4a60818339fbeb1a440e13bf9c28095a6b5be6e147ac224efc5c9545c46d21c0f8a7788e045537105a4f33878c671262a9047564d3357f59680da834124d2c9e701020581c33b5db7e70dd46a4507c9273fce0592aaabc6d8c2bc7ce1c636d550d44791e797140c6213409d3f380a0204a811bd2f2a6154c034074a6878eb9c039a0011177564e436f8f7928090ae44b00f1718888a887842ebc61431088564395e83e9c2de5246944f9c46d09510b0a706c6a7ef012a880a281bb6768e0a02c009cd0ee98a900d9787c8b0c6041da4a9cc5978aebf789a0228c79065c0d36c01038d632d409b367c63b550d73be306747f592bb40979c90e78c9d09b39bcff58420ee33e30aacd52fd668d3de52d4765caf61a69eb2923f5eb2ad0192309720b588eb28ea6e537c65762ec75eb24aa2c26db716a6c06131b74c64cab40ea6206d344373168aaefeee6e73cfac4161b78ef06410831f78c6abc7eb007242f6c7f18e5918535dfbc0a04b215e3e3c4c4465195437f1831a0be69a7cfe71a139765838ea2a291ee18f42bbef5fc3336851015209e7d61448222ba51ec37de5c10a2816a3bafc1bc1580ab5d281e7dfbc5181a516ec7c49fbc59536c56216287be66159d402021eef7f8c365559a41d5e4bf189d8db5c074a1c0fb986e8028269a39ffa6694740ea105f9ef10550240903f786ec0a91dd03e3bc40aa0392ff8c048a84a35d33bc80022a459570154a0d4809f77794451ad7bdfbcb8604180b371d72bdcc354c5177107c3c7cf9c41011d5810393108a2554313aac81863045512d1f1ec7f58e19c822b14ff001d7e311700402aa86b0f8de5185a8aec2374f871e565452ed439a778f37045141129aede0bef8cb042a0de44550f3c1bd7396768615404e6fd6bde0f60575750b417fd63aab4146ecdde3f5942b4040942b25efe31028577b443d615d2ee9aaebb9dfce3040b40aa00f28769e758108cb20807a7ac64904aba9c5ba2fc6020a2104525af19042686b952469fbc7b6906b359c88bad9f1e31b4c0bfbc02806e577ce36737773eb07c435bf5f1944d6b5b7cb97286f8faf182f87fce43d704e311c601b7c71ef0d6abafac6a04d06a74e022bb4d278f7836bdadc5234d1fbcaaab7f3338e6ccb281ce51e037fac157550f5904a0e9987c1f182882136f9c044e7ceb9c170e8bf2e718da95cbd21be3571774a4e01d3f59472d95af1fde39544d155a03de1455162f9c76806a084f96e12a8506f47986b8c034caa30acf07571b01410aec384178a6bbc5552285137e40ddae5d0028de2b7df589c6202f30d121e5ee630880a07886228293496816dc7154e515af8f61e1b8268974c17cf998268194595e81e05f19db20a344439939c01b4295e4fa9337ca8c86892e68cd80d8d2bc73960910a36c7c4ce00540ac67cfe305d15b56be3ab8ec836204404d1607dfde5f000401440db0d7c6b07544a220a892b5d4a7ce37345441d820aeb80d713bc5ba60105a22d4b3978e35ef1520d9530414a6f58c05e604da749ea9ab8328d515c8bc4f5eb58814c482f0a0ca7f5de1b62ae869b9b87c13f18c452824925957f1fbc00dc86dd007087fd70650d2c19a5f8ef08c1b4802a9e0deb0cd25550705b5bc2608b42090e8bef1fcb4140228f4938c68a97405b1ed7c1ef782b682d3a7d0cde08d03901d87570df01b05411253fac4404408bb61ef009010182e04d9204c4140e78f59b0addeeff181522d78c04ab29ef4e2af5c6b9e737c3e6e15e0c2f2a9f780f864b90b1c8068e38de438698504bb5b9bec4e9f7ef180486a95e7fac42d548ce302f827bc03a03ef04d833cf58036a7d759adafa4d5cdc03a9b72dba178d7194910f5e7f38247694b82497525e1c66e764310723f3e3069078ebbc394d538bdfc9892851009c4316eac07c44f78c912091dc2f9c2d2a9001647b137ce00a806c584f1bcb1022144d7e1cdf4a80a262f6fc9868510a6a8eafd64618c200505ed6f38092ec6ba403cfbc5b0222edbc9e30a22a6f51e4f1fef08c182ce6df79b89348faf4f867c185c74160105e65b89ab4555455ed3b0f3965cab0009c9cefe715a854875cf83ebce69004f555f8cbe5589e3f3f9cdc084d8b6adc04000603a41eab11c90aa12516120fbb9bb110027033af9bfd60807695ad2041fae7de38c05101a8704f279bf58caa1052b503871910912ba05f570c404411b556469d386d5360382eef9b80949cb434f29bf2e384bac4a14f3efe30e68a3a7a47c7ce2b16249357b9e2610d08289adf5f9c75052f1a5befbc40a50817627a3af9cda1123af077c78c2020108f36742f63800a28c2f23e07ac7f42516a07674af8c560569048a65c3042283b3c7acd095cefd64205b4bf1f58ce21807d5f9d652a1df3ac0ed5c1743bcd48e03dab3021b1fc614107d1ae7de1e575eb20349f9b8e569a2e15b5e59ff00389b60aced981044d9b5f1f063b6d2eb8fde2ecec786738885ae659acabb6efab0fc60aabdbe0c04e075c641a6559f18282563ef6645387788bc1c9960a2095f7fd66869f5eb05c25bc4ef35209f8dfe72a9765946ccf5f8c00b369a6ff9c640a40aeb06a18279aaf93c6136878a1e47ce14848210a1f1e30296c954bf3aeee29820315f8847de1526c120eadf2f7831422022c3c7bc22e80781d66c31d10f4f9c4aca329183fd610da8201c71eb1d402abdeee5bb0a958c278f8cda14d011881c631bd1def93c7fbcdb7bae842c7c6f1b602c605d5c6aa0d35a2cf53109504c50514f9e72e95501175c1c4f38db0420122af1add7200284ac7a2c6799857622f09d31f6eb25145550123866c8055bb43c7bf580854334406caefc759460ec041151ebc98d4432a816a26aece7d7ef3a8500d86c7dceb37100760bcd9e79c08af268053cfce35614084aa9c1e07d629680ad2229e5cd0d41404a283b8fbe3f78c691a6e4d7978ef1a4328ac69e8e36e34d1155bb89df3fac456b15806925e36773f78eca35532f8a600c3b77be1f0614ea8b426fef1e4d056bbff189b9926b7c4c0783bf582e534640344cd9dafbf5972ae9e21bcbe17565ca22f1aa7f9c0055efcf5e708e0225fac8a10bb2bcfaf5821040587b7c7acd5623bf38b8ad21abe316b455936628da29c6f8c5e1500883a3eb3d067572f80d7ce5246375c7ef02b09fcfe7201b69ccebfbc41c0435c6df78e8ce49324972bb4723b174feb36100e26566935cef2078eb2ea2f2d7de0c6ef89cf185deecb7713095a0f378fc636e840c11cb1a006c2e9f04f58db0aa248ed7d8ff007861110100834e3f3e7190ec5b5dcf5940b046858dc5e55dbf2e1068db5c6efce5a1014697140881f57376875a75734dd35aea615d699efbc4cbb1ba3cbe6654132d6697148a950840593d7ef0863529b4ab38d2f9930a2ad85d224f1ef15a21145188b5df7836203526df5f377851542ca512439e77c61152408162a96cf2624a800922012135bf387b51c01501d4f1ef2642d51944179f9c64a0a9abb43871b257682d06ace9f77149110d18b67109b7d61cc8189a48bdf1ce30a48eb4aa9f25cd62ab060bb4d45d753f78065a28c63a284f78e0254404d97bf73cfeb0eb6a0eca8afbd4c668b1012288f11f0f9c7759475a5777ce30915536c9edebe32e5292a8d879f8cb0ceb8d4fce58b4685ce4d2df899b4061cb3465940a15bc4c6dbe03aed98a8515ddf1e70990a82f52e55d80356938afe304551b669e1f378fde2682a8c86d9f181020da1d6a59eb056515d83d7ab88d81b6da11b2e2cd020eb981e6cdcc77010345f3ecc5163cc46eb82b894a1a977a336a8242bde2a53cce3223b1de53615facd543923e3050967d6236af1bf18ed038239795d427ce51237f17204d2bc669d2b96ec79e304d886cae2ee071ac36d5d387252a3328ddbbe7371dbadbbe312ea1a6f19b022f4d6645104429d53bc2230d698dd7eb28206d751d4c22a8b44f2df9c4d556ad0e3f79466a52b5b1c95574fbd7e718f22d7c4d6057641d6f8f9c90823b9a6e08ea2d8f50c0a08800aef99939375cde7f5906b0b052c474a5d9f3ce20828d5958e9b4d6f97c609bb068d557cbbfd62e9c208a8d3b39bf18d6420a68e92c9d980e8a0a003064879d7380695000ded355e8f784b01a056205db8e136288a01d8bbd1e32ec1a515846dbefc62feb09ca1e6f0fc5c7950447605d829df9c23a6597683ebde104001440da3d8f8f78824b00bb92b233bf58cb6d01da9bf58043569d2b26b1840806a9a9e3e30423b508286fcb49964e4025089c0f93f18a901202e47b40f39306ea2209e2e1e814ac1542a2747ac29691115343d97d79cdea8d2b6eb58a051acb38f78936d36f23f580f1835b056caf30ef0e61b5dc46df0972ca94e2535c6bfef18817285a681f586185844e04897a5e8ddc50f22502232f1c3f8c98892a5b3dbe31f86856338407daeb138c10d8417b14ec9f7722c8ca89b0b6f1bc24402574a3793ab0fce2ecd0d47b3fc98f674811bb913f3ac5aa3a00dd85ee6534421a760eafd64ea30147abd6091bb71bb8f108d17cc990dd1d3186b01969af5ce3b68f3b9e3d60b769ae35ff005c036808735e31194bf58aa51d71ae303b477eb341e3ce6821e6e6ee02b478fac3914293ce1aa1c60aec0d10de08b0e7e734907673ac458d296dd26221160569cfac24a390bd08f6630a8090a4a63622852cedfeb2e92abc334fde1a07525e21f8c52439d9b9af3816ddab1d6683836437de4002a6f68f7e33ae4d509d5ef2936219ce2b446c246d40f99cf57082028e4156ed5d0477dde31cc2cba4ace53bcd86d910960f8664cd3002116906758c4504ba000f0d80ea97ce3803a289242707a308a1a9bd28083669d3aefef06828a7902d887a71ec02818c05ce6240002a21e4e3f58da49763c17f8c5141b825adedf8300c2abc21a5ecbe0f18e686d48c81b3cede32ec50082d5d598444a405aa459b661a2516828a1d1e708ead857285629f06fde1ac1a9586d1f18ac00627803a9e7268454406a97eb1b12714163a801749f7726613ba2068542ed50e7bf585e0cb03637e318413ba22079b96f22ab1b5d0fce6a40c6510924ebe716882222c59e1393de325540a028b17c7bfd63089455d9f9e3f587a2114060acab341d3d60a5054426d647678f38c61227cfa7cfce6f8a1740001c9c728eedc390e04514649b7a271dde736c284913eb970e010d0202904b0388fe705c12188abc37927ce575c2d06b10ddb257212695484596f09ef136c5a374248213044d805397ab261d14da04aa9cc2e2a88f230d939be31a01155fc737c7f38680ac18136e504aa36f1ac0a1385b24f9c6b551bccc6949a0be722b4587de4128b463ebde39b4e7f791ecfde1791caca93739c29c060a4489ef9c0dd4e7de011a058a1b3350128549cfde0c1855f3abf8cee10083adbd7bc0a0800ef80f8c06f45357a3d62c8a11978677f8c95448354d2f89704d2de1a87e7005177eb933b19cce7348828da1cfaf58e51343add6f9c988ab23bc2891e27bc334543480dcb399c7ef1c2bb5103145d138d76cfac62814556adf0705f9c149ba22c024e83ab8e3ca203dde5030061553b6aec6dd4d4fbc00a2c10904aa79f1ab86050088413cc7bd19b715b0246b6f3cfac502de6c1535b2ef7953522d10d0747cb97c10112bc76cbd62e010910511f8baf580c1b084dc7afbc3b62087692b578fd600a120134c1936f9f58e8415168020ddb82c0234a8a2cd6b8e7f5884a0c2c6d54617bd7ef1138a091104b0988f00aa0a589dbe2f8c69ac834d946470281807a93bf7f394e040d9da755e765eb1d9020d229c85e59bc222511d111e21e1f3d62911651601d743c130e6d06b43772af587b25460f47b3c18250c264f2927bc18b1093956fe71f88a90176eeb637048108174a386a20109a7931128b75485c9512064bcf9eb583440f6697ce1b5c074a54d40c7788c426fdf24c506450a91634b389fbc9748287611b7d9eb5f381412c215f779d616e5db0510e4b35f7f8c37071012ba4f21fbc17131188c7cb3bc9d2b4b4027169976c10a146f8c6c62186b93f9c342a77f3e9c022850b0c46c1a9066b05a45e671809184c1554b6dbeb2dc1d5c20cbfab8c3483bf18de7ce029b4e2e47b1c9513c23bb82b1d95be170980bba49a3ce04169401dced71294054df8393fee71a9ca4a3a453fce41d214852df2be2e39496c0f2f9c42a377c07062d8b6802f172e8834de4362cb7ca7d625aa9797a9ea60a9116b3d5c354a68bc6ff382e34181dc3b1675e66289d905516b687e43582290ca44dd401daf1ce3011c291aaf135bc8e08b6d74b2803c2f8c33831136d13c3eff005ef0ac7120955e6be3c6a6358ac34466e4ab8418a6826cd2178dc3ef0c806aa7083a135bd611a008bb5bde8bc9e7bc20c0002a8e9e3be57f1de1782c280c20fc6134a3bd31a71aff0078206ea5ad6ea85e2eb1051401530f6ce1c182855adc1e07bd6ee32c9b0ba0da2ed3dd3f18d280b49a6f0dba4f3bc310ba2bc8249779068a15688f73bd6e635d03400106f2d5b96a538569413a4e871c96d6824772af8fde45844a20814d81f1ac3130a65209d1fd75815aac03c8af2f5c614446947a60db6ef18054bbdf0ffaf59b3b58c065de248b75b43638eb40368ae8f3af796638568d63d65ca10587bc22d02bb7dfaf5841d1b11a609a01f580d80e2fabd613a43441014cbdb42ee1cfbc5100115192df5804017c022fbf5eb78f8958ed55e537a7e313d0b0abb6748e20e5b43490bcf5adf187d3499342f68f463013b44128f55f079300b00105d685f1e700502eede29ef2ea4232c9f731a908118d17d6b12c05dbaef7e324528c2bae1f1834920091dbbee6202d73e7ac44560ce7791d1cebe378025135c9e3ef2b4139e6c32c512c2e22283429397eb192a4bcd25c00d0b35a7931cda48846c3adfbc72bc28e9004e18ffce3aaa82eb403d9fd601a2326fcafabc642b13a05e2ff009f9cd06a446bc4ef1179aa8bd49e30024ad44088e1428226bcd7c6025448b5d370e68c36ce9f6e22239dde6638ac1d2904f9ce7f4231d256009c9f3842b1011055b528f32f8cafa5914842709fd60e12d0ad369c8cbc9c61eb54c6950e97a4f1884b6e2a54af36f8c76ab441048c26b1c61d8a41a1ca2f158fd619152022bbe91e49e3789c00a455aa917b89e37f39b302c22c44f2f0ddcfc4ca881a15742ecaf57e358f0a4ec4d41ede3f9cb123bac60774bb0769d6510de8b6d9c3c70f9c40008483a0eb9f2614904608c21a23f1ae0f38669690aaf12df8cacc154aec67130a6028ef69c71de84c290ad11bb1d427ff00cc7ea080118258ae18b1ad269ba2fb71ae0a18ab519364fe7114d95518a03daf9c08a846c0543b571242028a6b180ea0d558ff0039011284926d3b3ce32d4d1b7d983b350fac8681c23765f9c88108131008bbae41b7be6e4f0866d20f184926fce6d4a7c3d1813079a16dc39134b4bde094822df87d608c2a89d7621a4c600b301089a897714c3581145241f2767ad6309b3da12fadd98d00c526b0992904407762e11606216f37fc6026949026e7acde22a575a1c828a15bc7387b00322f6bfc63469aa426f0bcaed61be7facad8ac1afac86e3697c7d618342bf831ea5534eb8c618000df6bf0e352d21bdf2f8ff786e1749a517f3ac846c06a1103807bb829a011601a7de0c800476aa8fd7eb22aa8337a42cfbc176088013a0f393915014474b7bc544a4186b63f17788148934f9be7234018091ad70150f0084b3ef20ec00209cafbc10d6c246b78d312d56859743c9f7844005035437a5e837c61175d51451791e59f3861e1095a3396ff0018214b280150935e328609c45b5eeb797e336082801d9091f27e3132158a2b15e19e30686a86b284bbf570005b1c351d276fad66c048a0ab179d79c48b54202896d0f3ef37fa54512af4df9fd61e804208c03a1ef15f450aa37254fbefce0869160ac40e0f67e309d080a39a5e9f4723f381bb90a90b7712fd62a0dddf09024f8c284510a7221aa78debbc27609148366e4ea7edc4c901a0b51edf7840224436ae80e56f5f770c1031008fe7c9e30925a157500e03e7ce130408ac055e82ef2d1229b0627a30920bb017d1ce14a861adc9eb35d83a15bd278f19643e5f478c755459273af38481406a1acd109b2bbe312155db309a8c586b2c547c7bcd0e9ca75afde216c3f3afc629a0df5b9303ca71c77321cf7f384402ea3bb7cfe71a8171a45f669de1700514454764dc4fde28f452cd51649c758884158a4115ed3a3f382b0a510b5031c12943adc0ede329b14183218c4412952693cfac5168558338c0b5100dbe9f062d50e4a9321b076d35ce44d23b2bef03c3271ac060a9ef7c600515e94387c646e9230a5879c7a540da129f1e722362ec784ecc7440682aa83def1f811539699e1ef0b154044a89d5987621115d16db8dc529b477eb16104c655dbef8d659608c8dd9e4c12a8b15f0e6f74405980a009391db822ddadac397cfac2d8a8b7a7638654584ac004a8f9c3344140d35d23e49a9854223d434919beb99882026b4a1ec78c37a885dea3c426f03c2d6a15756befde3b7ba8d5aa5d7f8c6b1b16bb10b54341e8c2d9888b29b9b0a4e30d8a8a3285195357e7056bab45386cb7cf78e3a15094b03a0f3ef2ed0db4216936d788eb0901a545d89d4ecf7708a201a8c5178f58b70c10e0a9d73c4fbc3400d1436bef7a3cf9f586a8e09426dbe32c140828c47fc7ef0ed0101aa03c1f9ddeb1e4842b36abd2f53ef2708107710796e15a28e4409a89c02778ea041241a8ff7ef1ea244b0aa770bbc35234b3815ebd4c29408c2b385efde18511bbf0fbfce00b4a95d7eb18c6d06efce18b0766fd6223938e7acb12f32be1c48439364cdb4f4d3d60858e869847687ac9de43b719cc3f19049e328d80873b9329d5c439a17c6ae6b5520abd27a7ac7352a84001aa9e66bdf395cc09044395385f7ac4340225784e44ecc3791b3a2c0622717be7783c85a208c3b1f0f9c14b11dba3730530e8ad5d79c249a632734f58d183ee5bbc5ba768d5b82ae87d6f1aad782739b51bbf585410f7ce6fe11dbbdbe59eb00204377d9de150a22242c42ee1de6d2c2d4d21be358ae9608349790fef01d55169c28733c615835122e87adbce21b23bde99e737cb69baf2f835ac818166f72fc626f4095df33a9efce770389d51f79bc42a0836a634219203c9eef7831a0909cdafe329dd79e734c042ea59d80ebee7c6488aa5e100abbe6feb0141846dd79d2ec72596d050181f2ebfc61420060c0af80bc4f731a41491928da77852105745056912e09d0082100912bd3e334940400b500e10f3e7106d1d052a2dd3d9eb0914489622a24389c5b8480d5b408f4bf3e307855116b209bd0f1776e009a453901f1799891011a57712d86b10440d6140382139f9c2b84a02d0bdcea3ac7188810227cf4614ba22b228f8deb04c2560ad11e4ff7d61a244aa3a5efc7e5cad4c22d79bca715ff00a63d62b5872bd3eb34443beb6be69c7c615f05b1b4a5d7c62d5a3a89efdeb39d63ad7c64cd5d907870aab4078f2e034a4ad6b571b7139aeb6e0960443f7940a3bbe4fc64ac095bbc0706479fd614d4cbab325d2e6dc3fac1466f18f8f7ef21c1d63a2ab728c4d8c7a9e2631c5b81a1f3de3c85a020a412b7ce28a241c3e5f026f21c950812a0823fbc72ca887644ea9d648401a04de9aef11dd20a6c69fc61f1a9550defac795468d670601745429943605e7ac1e77cfac034b617c5f5802025614988da020eb6296deee1a431c0daf7be37f39aadecb596f0f9c54291b54038e314ac4e0742c78ef124542d1398f38a945200bbd77f388e54a0002d1f78500c280afb3e7e30d04269884f3feb2e1522e985c76ebba4a81dfbcd4a19b9c8f747c63b60474f784c6044094f392a9d0888cd3de3f82530010ee016f97f181842c882c399b7eb15911810164bbd1fe321b24068d2775bf8c250b06b5276ff00bc5d2208400a3c1c73eb2c6b452210ec8733e70c18ea86eaab3b35fbc0244009ae15a592f8cd300089c00128ff00189648401526e7def8eb10448baea0cf206f0351040a577c13f8bf780005412501283efd6381ac1a946b38ea738dbda44d34578eb5314d08837c9785df4ef0960a9468119bf9c260060e98322ff38c123cb0a83bd6a392286d7536af7ce3a146a05d03b40e265fc20885b13f9f59e010051445f626b2a20c00ef45e263142800d0ed3c18402004b7bc8d6c8419c7b99b12230e8f9c6749158bde14209c45ecc20203adb70dd19bfd618f7f9cf6e5ff00a679394787e3de1e1bf8c345cab70bbf59235efac29f0e22858226cd9710555340414e8d9de4736843601c338f9cba625a7629ad3e653eb0e998f4a8a741e679c438da0258f94c6208450b42f27bc0050a289a16be1fe300443c2d2cb82a8417276e4401cdd2778adbb7eb00fce2155e59cf06110146b5dc0ebfde3230468da81df8c6286253b47cce316a0ba160dcacb15037d05bfeb2680080ddb387161450e248f2f388780000d6dbf7fac0108d9bbd03c07898480461b9517c4ef08834a144fabfac3a2448d20cedf3915350d568f479c1717f289a079b8a89ae8ce2e0b5060ecbc1e2e100400e9e3de5c1763128fa03c382aa1220ae94d221ce08f9411828420f013dcc0c00111d4d9c89e3ef1b60d48114216bebde6e268a150944f29c5d60000480ac52f6964f870d21c2c023750acbf782a00dc3c42c43cdfd63a1052a4dd487cef5820236290a80561dbefacdd5a8a0d28f23b09eefd628d252006ba5f09e638684808f2aad5e0aff008c644a9568ec0392769e0b874023555da1c24b0ff384a622c268179e1de17020002489bdc77e3095056aa9a9143f7ce2982ad15640e5139736dd8517861d9bc6180810563e5d79c32804f0643cf7bf78f55c400074fb663856852ca6c6f2cc1e3d5551a1e8f0e385000b5749fc625a11134cefe31d286a6a915f382d103446bc6685083bf83ce5cb1d901766039a7bdc989dc4df1bde6e4aeb8f2e05c27bec3280562535a9f385104d71eb0d1a71abacf96768f3eb13ce73b4b19ce0a9c5f5663a8130784382f5fbc389068f4464e77df65f8c9e84746b5c0fab4bef1c1121add01d9eb2d5155456bc2f9cb965826b85ff0026281cc008da9d7cfac44506826f6079c2a6d34cd72e0406bbe23c623c1701e1eb0b684a42638c589a6943a3ade1bca521018747df9c730a8335503bbd98d2955478e15c218041095a93f58ea26a02017c3f58d786454a01e09807004bad40f8e9f9c52521508709de329662aacaf61ade0935605473ef5fe3199aa20f357898568d2be06bc38ac4b64304da6cf9fd61b42441deabdfd6282b22da70e6a70542bcfaf5f38c2228208c4384273cfe304d8b53b2dadf1714b110018519e19d6128ae0d837b3ddf38150442355d5a8b783090a0c21288d618ac6342a2415f33069850594574decc70534a72082d1439cb51140aa9a4bca78def27141209da70af9be320a82954363e0389805eda60220730217d62cb54000369e4bd62c60a04575558b3a6f8cba826d140d52a1c7aef059a6c80e84edcbc0a5296157f1d6155514078a9571441231a14e6f8bf38b204ef2b1f3ef1a220847c7ce3db66a206c7cb9645bc77767570ca03342b45f7e32e61158717cbe93ce0142a888900f870450137cf1ebde37c2c23800571f56c9868aa0c63c1ef16820156b61d37df8c41dbb07aabc1ebe71d0a036c827a6e46836d4224e778c621414b48b316551ba12838e2b5b3beff000669aa9dbf1e700d0cdcc1a553f394b4c52cca250ea620eb5c5e70bb94ed984202aa3d0bdce9bbd27c61a60110444b8419b1de49e2a0d5236a9a1d87384e4189158ab28d8e34901476b789e72ee0a91f53bf6fbc2b44d2fc3e315c24125eb1415ba58e445684fde18d77b9ce38f0359802ce160ea7f39b185246363d621342237857af8cbc2888ee6d71115b05225139f99880aabb446805f186256a87912ce7be32cd200d4e7a270e15085104691f3e32183c045177ccc30470d06d1ebeb0820154496814afeb00e220284907df782488a13c6f462a0023428f97c6b7841416143c33bc8008a2821d98a8828052aefb13839fce31a91103a47bff008cdc8885b5400b166f1a494895e53b1c6844cb206d2cd5e2bf8c58a808dd9b1eeb7bf8ca502bd29c1edbd7bcb311a81f24e83b3ef046e476a161d56ebf194d08114d07cdc8ea06189a56ec2f04e3de4f20d6d66bc40e70a4104009a1782dd3fe7194031abc20f47a3e7044a4e2b4019cf899d90ab0ae841b13058401a838eb9a5deb27383154016d135f58364a0076871c528f9c4d040b58407bf65c6d18aa2a5abd9e71e4eb088523c33fde13b2a4bb29ef1c844ab225f679fc66f2ad107a1b7189a2ec5b3cdf9c6e05d8552d4f0eb9c98c0db45700e315ec98884c5a8aa97a3571bec28f010647cfce10c18545aad810bc63b504057b4e10eb191c303995f77795c4260ac679687794f50912ec08926b0234211151f935bc316aa2e8bc36535bc4bcd830dd53e31560294bbe2e3061c338c54192f45e73495d2e0158feb363c1a6e212a704e70c5044a9a22f87ce1f45558588fb6cc44d600b2080a2833b719bb600a5024d1c7be31a404a8ba8179f899755d84deabe261a18b641baf38d0840a74621da5e6f5f195bc2c64b86d855685cba40b2bbc23409754b1fd6fd601a14aecb2fac8122d21dfde51283d44764f8fbc02410b2cb4796de3189340aeda9241b809cd5ad8a552beee6cbcb4169043ee5fd62952a0286b5efac17020ac157dfac41106cd8429d73ac39a05d4d6f8de39b84db9b1f1854628417650e0c6104434168f6efc6b1854d1686eaf58c09626ed698ed20814d0274cdcf5321a5529458f55d6be7105202a9631272faf5fbc8b61126c403c2718d762862a151769ee6bf7874512a84453a77dfbc19450689aed175ac964a061cc4fc7ef11202aaa51674bb3580585028b2a74f9c45a1af5544ca1ef5feb009904e62abe43c6140ea0bbd09c29d38ec805db4a00cde045a500da803bb383de6b028ade1f9f8f78204491176dddf5bde3ca4a00f08ca7a7090094079556c3c9b3fe30c602826a28f4e40be4168687b1bac240c600154eb57530a90d000303db7fc61c148294503d6295a68aeb43ecf780184809390e8b36e24f502a6a08608a9538d718458bb97655fac47409aa302da629401111a951b274e28ea0c449592d1fbc7b44683500ed1ea604a109a5761ff0073926007406bf2e71aa369461bf3af78a12bcc4023f1e311082421bf777930a0121e1c12e9445df330b56f139cd710f5ae335d8ebd606e84c0f3932f388444d2afdb80316a6db21f184688d4242088f87f381776a8da1d578f194a15854297b07ce518231bb7bc48e123c25a62eea3b215b31bc69ddf59ae0f367fbc08c5e7bffb8c2ec07537e9ef18402e84d1efe7de4294d5a754f263d5181e342f1bc5a0e1105aa7591b5dc113743af8c0842800a2ade4f075716b85686d214e2e7231629b55b69cdbfac30410a3bd43957ac83ead0954ea3c35d6067209632b7c62b68256ec5e84c9e115df6383c53813486d83bfce129004588818cb4056eaf1df3de32489bac36e3cd022c157d8ba59806012905587c7188b684c0e216cb7f731b630463056f7a9f8c0a08a02352276ff00582082cc5077eceb0e90414576812d3fc4c1045063552f9de4588145b002c91db7f5ef09113c773eb0796f5092bd7ffcc506e8441227972f14256b5658bbae08201114628b6f1a3f38a845006e0ea6e701cfbce2022ab288f57a318808030a36d2dd3c62e815a1160c9bde9ef262834d22ce746fdf38c68ac548463d6318028a8110382e13901825a634201169d3e52e8c92d50aba80b21bfde38b0a08a012147feb8d54ab0a4ad944e1fce15c608079672e58a0fadf38ac4bae27265ca2a1a2975e32200177ebcbedc1494814763716ed2f141677f17141410019a97ce388af23f9c99c7c601e4eedc41d21f8cd3c87af59e839c0bbd6f0de8c01e2e1ad190973c075975a3f794c0449b349e6e027755d06f7cace1c7295861f6916cc6d4d497a3cb9bb00add701e6ff00186837443d863b40435abe71d121a673ce7b063f9ca951a73efe31aa5830af10eb11d009178673805a854123c3e708e4050d594c6443858ee1caff005924ea8946baf0e13450890a81d73c6044c0c5b822f14de12221c0e40649e31c88a21b44f23fde4cd650150a751d1bddc0590805d47943363515b396793d62868257997b03bc60aaa8a510602d9b3f7927d951dbcfa3bc255420477df9ff0058860bb79e531c0d4d3911f3b84ebf384d04b04d28cd779b154d8683e1ca0076d256ff00de308761441ee8f600e8efc65242288caaa76e19e18944536c9e35cf384a54e417c3d87af190dec174a2ab6822b0304886dbe575ceb10a8a800a71ebe7074872b5a967d1eff597ec18101152502efde32cd269d9be0e35eb78c20e114947b399ea659000104693c1389e71a07904ad5026fd7ac73088ed9b07e611fce548b5d80ec3de2d696a245bc770c5aacab4ac8fccc628b0dbcabd132d74585608f4f90cdc841b1541bcf5832738ced4d5f38e3e9a03b776984e8c1d011ecf787cfe3d60029cbeb8c4e213a9ce14d2dd54231e1bbd7bc70c866930538059b7224aa9b5518040220aa9756b65c325f50d773976f1ef1a1119cc69f929fbc6856ceb4f1f3c66f9b96f5ce0a151f9379e7d05c1e7027193a33afe31745fbf588e0f332cf2aa44d47bf530ec036d2aff00be75eb0850b550e8f6b8d74578101b2cc28240a29ce228dad45be73628bcc9e59eb0911396f1c65daab80485d71be3fbc6d8a3d94cb9a0082914f1e6e33c488d0c4e0df9f3855a284eb653d63ca542f7b79f8c910c242715f59bb5e85f185614695da1bde0262d40d922043ae3ce20512b96a5345de0610580b05f61fe7365a023c8f517af58738200890f9ec0f19041705b42f023b9ef1d48a47d511fe3f79200905a2452b042631ac2b79e5f58cb7420aa7a2b88c41711105ef8e175af58a2e9a22ac4ad13c61949ad18d56237c649006845d2bdfc7e32203436d82f69387c9dfac508d009a01fbeb00ed04363458438e7a98e356ef280f8bd63080b21bd9e35ef3922aa02909627cae0cd785113421d1e4ca952e9d506f674ff00d318f2c04283e164e7c652098391bbe66102825484d4a1e6fde01bdb0da233b27bf930646a875a09455e30a0982e800fb0387def1150c3a5e6fbc1031a352b279c542354826f7e3ce4d21051462be43ac6ec0b4dc49dfde0a25f37b9e1e3c7e70f19714967803a986808495b44af9f393c5d72f6b90c0386119f8b8ce00029349d87ac2a54401203bdf6f9c62aa3b0aa3e7fbcd310c404550891ff0039771925482505ff005bc180e4ad48cea2a63631089a287283ad764fce0e40a8415564ff00797c42691a27d6052ab39f1806c3a99aefff0038d99d7c621c3df380d6bc132004d9a6c4e777e9ff009c9b542005b47b1ede708700f55da25ffb9c60536de7496ffce721005e26df7cb8f2160b60f27ce4d22729ec9817405b0f6f8f9c71423ef5fe73400836640128153681fde4dc6034048ca7cf38e3284056b5ec4f1fbc66055597c0b36f5cdfac120438d344f3821418838bb3ac6a009548ca058bfac8948f0054521de49152b6968d9f3eb2243012b29226b8f585a4000906f69d61ad1093705ed5ea63a7a008ee3d3f1f18ccd840210519c0e42824402477fd61ae98406ad8476f8c2139ada3c8fac29860a1bcb48cf9c686ca696c85b78fbc439886ef4ce37c1f9c2ecf29b6048b3b1e70aa084be4aba17e3771869b29b80f64ba3de19a288d3809bf8dfeb14b89551454343c6b5d6324829420076fbf781042568ce75407d6302c12a0b035fd75f78d3812f62a1e21c64930009045ad8f8d77bc8284482aad12871a4f1bc1ac855b36d3a478c341760080154a03db3567d60532821103e75cebe711b765d00d2de7b0e2e4800329d07c2758031a95af2d3f18c45a1d0ce3e7ce2a834a434be0e38c1b04088c8731a7bc62a440029087380c17b1586c1ea7075f8c43768364368dc3680090ecef0038ebff00174eb8e727643f172b9a11a1babd9e3192148db5f3704426e08803c3bc15b4816aabcd359bd3241544203b2986e98080d82f68bbc0694113521d04e274ff009c606c98d058df187400d1583f0f3964403744bfbc37ff00c5abe32fa1c3c9c9fbcaa02ec4b05ff832e411401d00dd1f8e31de0a406c90deb3400144b747b7c63dd342b0bdce7164d1044b38e1aff170525d8245d500f7f387a3c250074a1e474ef2ce28134a774d2fad7ce4fb0af014e4ac9fce1d11740f35fe3189220425a4ab75f8c56316e6803990c6cd22aa690b07e6feb01600ded8c9abcf788454046f8a64153b0e9dab6e419820a0da163e3c7796cb0a1500d784397ce2d1d15df09c7ccfde1804ac1d699e71ad42143800e72ed516043a1e031108daa9395269c78cd6352b03df6e5176202d687938dfce6c0cdbb4e4c58561186c02adbafc62842086d40449b38878c748a9094609e6706b786c80a35228f0073314f42010405210ea1ef01b002a08ec18d7bc00a820341402e87b1bc7ac2db094d445eb7c3e99f38ab4602f029e5f382f50255500da615202a55d8073feb0ee42544dfcd793165e94055501e4f25ef59498d6d1a148a7b3fe7148250be96519ddf9c280d22374edb7d47052892a1ca76bd186884499a6be3c078c2629120ddaf99de502d3b64623d5ebe712c072e908756f370a76800091796ddfc60a9aa23d06a5467ce200540166ede758ca2346a914e9f59e734569cd6cff00785f20997d73ff0089fefde2314ff180c2364f78c585bc787ef0dd062284a5712a82288db7b6deb0d456cdee33c7fbc594b064fe71472e8ac710ec3066a194e430d64ceae3ace3e1cabdbbf78d48de66116180dddaf47de3ba970eb80175e1de0d7df42aeab5d6310105420a1e77bbf39bd14a1da9606aed753af2e5e40000aa05b535e35304604008022340f5d613051cab5f5f8767f3946948bb6de606a9f18c044480110a0db1f585302800d2029f9d6006500045676f932145697baa2c7ac5b81aab01bd1eb2e86822bb478e3111a9046735913f386541268650e71c81abb12c21ecc20205501dabfd79c2091db1246735ebf180e7b3508bec6cb3cebd61190628a9a2f2640d00c696a9c6aebf78b23045e827618460b45406d7c5e33722d054e74f1af5f39b829b69ae30018468875c3bf2b8c52a081017736cd7e3123145025050603f5bbbb95409b04444796f29845212b4223d89d7e7020a3076c55b4de40ee014d8a6d8f644c84288ad203d5393e70b00d005d10193db7afde290954a8acb507ab9320402ad86ce302c5142d4d07421b47e328826ce5b0b14e3438f244a5bb4790e3596e0caec889087ac54a00ab746f5d4c7707586821dbc72f9c6b42b8a6c9c1ec71268056a80f49393c66e62f480c9d237bc20402aaaba0e0132e22001de898120deb8b1f43663416d9b388e13800c50683bf87ce14f56eb521e30fbcf3eb3fee719ce25121bca6a9f9c1001bc1d60eaa1161eb15100578d73e7e30374351657f39aaad95da063011e1aeb9c2868ff00e7a98f87789a99b90feb0de579bce08683146d07afc668a03001b6968793040424514a3ca738ae41341b4901fb3e72dd09aac4110d4d57f58d22c2010030c007047de21121be75ce381366c40a3dcc20c2a5d69122a6021a0893402ff0dc0852138175e34f1eb142d28210282905f5ef78cd7c0e88fade22904802e9abddc932010b3880b67c61950272a5a423722f806a4d34a37c9e319540510288ff0038c26a03c029c503784755399ad28209a440bddde002d155c13bff005916954c1159d4def0374194095cd655504ec4e475fc65002086a85f7725810b1ee6f1a10d0023081686f97acaf5a2d0ad2ddcbfe31b10d10081e4d975e6608a20a81108058119f17ef12e049a39fa7d7ac0939b12c1654f7f3d60962a2aacaa80f915ff008c75a534161745f18f20006e551e275a9860132d1305781fef274da0ddc1866816a5590e82f38b80aa2100bb57ccfef18704442c87bf6992522cb4aa28ce867bc60816d0d2f9ff0058bf2aad48a4a93e71b54000d1b831d63b505a842542efdfbc54095440456076937f18f5c8535057bf8c94505ac28fa1c69445af90f370fec516f63fe307882114d13c7c61761af5819e7dff00e7cb9a5700b216cca501f79ae11d3af5889412b0d547e33db695d66ad5811bde19a9868993265ffe7d0c78b318e020569ac0ba1b6b514a27f07ef2a6c8036abd0a98686a00468a5a8cdf3ce404bb083df12e04d3918eeef00363cfbcb07d6051a0fd60963455b74f1f1f8c6d85b0ab56059b261586306223e147463331da140398eb8f13782a7c22f3b57ce132050dd6205fce158910834a9234de2276100c12d47eb1a8080474924f67e308441aae8142f0e19008a2437e0cdc85e6bbd144f0a5bef09c512ee9bea9d9f19751280d1014a47ac0205023684e55e7eb0a90413739e75d622aa3000ba2670a4d8337cb6e6f93b94d61da78f782ab542049a7c860291041753b08eff584102288baa10f3cf9ebc64230915a44ecf73ce0380885aa824a13498e702a9aa8051f93bf181158288813649fef15e682a0410eef193aa00a395f15e198dab08a5180243e7ce132a9961024aef58a88a2a2321fce3192a807947843bf8c6c1d293b6081a78dbaf78042a2c6344f9c551025489065d3cf18a082d6d831b03ce0af2d68a0ce9d5cb14d0cd2e9ed3cdc9aecb5a007c4393086456a574078f18d1157678066bcef0486800d227bf793a9798ef4e49a67d6538afe30aef01e7a662a1f730ad2c557cb309d9d94f8c9089e8dfef0a907820f086164f0d301ff00a617793de6bc7fe8faff00cfbcb9eb1f5de089f43dfbc634368baa9094feb0c52189b376013df7d78c05c2221c13d78f5872061c6399c9b840182780e6cdf8c2548048ea25d793eb174cf17108abc73eb2034116a50167a806fde389d3baad168dcb320a52df4f8f9c011637985b49e3c4ef16c603c54bd7cfac710115a74a138eb11980240a0799e310c20a746c00d3db5c74156d34c037bf19a2515350543907a0bf78438208404bd7bc554456f9f83a7e71d126829aaf7f3ef259531820d26f7eff00580288c4dbe1af197681ddad3c9e319dc9a9ce97ce50e074bf1300665591dbfd1eb2ca8212a5d83d1ac240a91d514e757bc6e0a5d8857805747d6246b4a6a89e4980534624b5e0d5f3acee414722d55bc79d6fd63de0d209b345fbbe71da2626b403e0a8feb344c000a200f02ef781e094052e938a5ebf797018819023d5df18ee50085161eb7cfb71065083a60fc25fc66a98ca2e83c2609c420a03a4397d7f38319520360f803fbc202aac1ba2747b7ce088c2c82255673c7de374a8e1be19778767600d36a978b9c6da103741f7d61108305ab5157c4c10249025d2e1a49be5df0634939c6f8e711e05fce2b9321cb6b70de97d63542945374de4a80746eeb78011e12339fa305d031f3b7002f186b6187c7fe7fdce5c7d64edc7e78cfbc5cf87ef19f8c2a55d1e67f18d6006bc9a518610ca2948439d6aeebbf588a2005e6ef11516bcf5310012290017e7ac77692114a3220f47a986a11279c218ba21876508c2b5dc9e209945148039a84a3d5f1904c58392dba75b75818a80f2a0355f07588296c37464f5dbef0970284039179304918a798a0c97f3af589b09113691514f5a3de4fc21ba6974b1d93bc6946d1a506c01b16705dfac5a052ec78acde108a82ec512c67a3eb00008c1d0d0b3870894088ae8024f78a20bc2a00a3fc612258111d087e706902d90d6b00a2500bd171a8c340149c7bfe312412800349d950b3e30b00ac5460014e79b8f5d060bb47a59ccf1861953100833a70eb124562113876ecbbb950216d15daf63e9f191632ecb102dd78c28001681747f5ef3408916945e80f58c2005a0df6afbf8c840d3c8a80f0a1ce059349458f4a5d0e2d2ca2ae965f07218da1555622fb0eb2a5111d0dd01c600800962aa73f189281b54486fbf9cdcb2800aea0de38fd6216a91408446d6fc60c71455dc6ea27f3844c20dd5a1cd3c70feb0082b51d924497839c4ec8c4745a741beff009cd4478d27ac7e478e706ddf3fac63cf39a9313a99abc61b61c15f7fd65894e928eef8f8c5069061adbebe7d60bb01463d19c6675c4ceace3ff8a63a81d63e72f831e67b98a1de06e2e3681764f19bea22db22cde19d068021a870671e79c16c8c3f0e383111bb8efde2dd9202044eef9bf58a306b47f7800db2d778062949342dad7b807ae70c4d802f71b1fef0144401234055be77ce03c1744289244f0e2738424ba279c1ae215d6d53bb70a1d402476adb4ef9dfbc225008208a1bdeaedfd628c002209ba6f9789bc01503209cbdb3853a66b05f5522ed51b175ac3d041000231dfc614508306d422cebe313e0005120943de296a01b080ca3f7805a6c4f00acfac6094857cdbd647090879d8733e33600a5a01bbf2e283741008a21514d6fde39625537000e27b37829583105883de224a6a0d550ecdf1970836b695bd6ec3d632e46d052df9c6ed8444555393780988a2086cf4ff58d1502d486c9d03a724a21114aa8f9de6b85a2ba9479a12bebac015c5023b54e9d68319632883d6bbbcfef2682051bb43afce09a9d101397b79eb1971da010df6bdefe316015415b9788f781d40411d5f8c2242a001df6af63e7198348ce0ddb713b36222d1643f30c632036acaf787faa468bc31e643b38c35a791b309a469526a1d5c8f41208d43be3081619c352f93ac0597615d9a3de278b31c89ab026ee33ded9bf18ec2ca7134bd184ed08b4643ffefbc68556071cfefbcdcbbd7ac366f3a9ff00c4ff00cdf1e31f59ff00f33596f190743ce34a9a2ddf9ca043fac805e5eb04d2559e378d1b290eaff5812204a872bfc60204e268c5b2296b702cfe31d41755522de5e6718234458c65b27cf790f204b4396d78eceb1c44c5534b2a8fc4eb088800552a45f0e01801e8f6c5f8ef1a60d1150940b4c48504037c2a83e556ebc4c016ba68e119286898d594215d8bc9ebe72ec8aa6aab298d0a2a2468b767dbac92948555155e13d6206a407950821d98c2c208322ea5981b01828be63cfbbe31e904569704322354b2ff008fde046a5364743e198e0eb02826b22ab39c4ce868218d1b6789a982130e9a4a1e1c44a0a6f5a2721eb19d98b406afa701f589770277833ba1547845eee041dbb136af93cb8a3aa2d8403c1ddf5fbc37d8c91e3afce4555299c52764f38c2b49054100e67bf788000221ad0799e7276c90b112797a9ec31128448a4a03ce42a2d22e81af865c824d23baded2f3fa98845145b1e2f781800147823390f58dc837b36ae31145845b44eb5ae3ce300231ad104f171cd91828f09ccc674690aa5e84f786145001b1161cf180fc20a00a0f5fef1583a22054f5e3068810146a25dbde6a489b856fcdc51055aab5be6e32d1d4de1ac320047b3aca885068528f9b8084550f3c7ce339dfbf58ee9cbdff00f2eb972b65eae2f9ff00c9ef38e3041a6f09df2f384a2705c54471fafef19bc6703abe6671c06f2be3fbc06b6699e6f9ce7de11641683a79fd7bca1412a00b81f37998370122058084bc3bca1d1034d00175f0a7d6310dea235066f7ad4fc60ee1584783df8cb5c8262150362f06fa98ed64400c9400b352e1b400584557807a3d1f9c3cc1aa4a3f3ac9a92348823ca290fce59a6401ad57b4e1ff00ae6dcaa5176a4bcf955faca1144275d083e3049c0151aa2c9ecf58f012b04d5790f1ef189ca010829da626828d836061ac01214d2bc9ef3a210ac79f6f9f8c438a60b24ef5fe32bbc1529d03de13a5542f26f85e335296b4a5979befd65e21e4da07af9c40040782d7b3e1f38d8a2222468da42709de35ad241a11f5700013a0c26bc5e31940830427c33ac7ad9416311daf9be709c400b0a47cf9c6162428e9f8e7010aab36d46763bddf78d4443a436a1cd3ac733aac5b413c4e30b6d1377b3cbfeb031008b0aa9c33c7bc62c41d3c858cdf786a840c677ae43c7bc709b085693c6bfce052c9231e5f2188a134ab2abdb3c3808d01092bc05369eb2d218a803511a3c66b004eb5c18059383e30cb46a1b3884b8494a4f593b2ef11881ce0811b27a3ef1a211eca56f5af7f3972d3b3383d6585bbb5de3c2ba9ff00939f5927fe23de406be261e5c2beb24ef9c478c115539c0eb1535db700e00d718534bfc7fe6bce3ab6d402af12bbc2f8dc8568f4783d628c24dc343eadc9545289072f81f3ff005c002106f4b34be6a8619ea051a152227fbcdc282ba95b3158c1448202f3f677fac547b085a2a8c75cc38c881ba206c0abc6f7af586da9408107a5e59f58d79c9450873a549f1896806c021686fac571a31460cb1fbd6bd64da511648faf3f8c20422011477cfc5d62b01d10d693c7fafde390068e8d8e4960282f217bff0058c72504070a1de09622c7248f87c65448d518c6f004d3eb2c244a0874f017dbab86c6a04291538be7102f69baf1bff29e33622aabb90f13c7de191222a28877be93155740022d4341bee6b1464910d540f3fde0854434060f885ff38e8412290550ec3fde10d016a058b7fc1eb786c8bcc9a60ac41ebcf7926092801481625cb906f766b02aa280030138877fce10476476104f1a4fce34a1e4a643b4e78c0154548b27fc7ac50880d1689273d79cd4c25691b0921ad1800c18950c5fa24c2b080b412cf03e6e39a29019aaf49e30d2c012922f80efde2bea903523eb1a42ba35e0711e4577cdfac0377b535ce5c8e7ce2f730124224decc19de955d29c1ea62db9b1a90f8de3d11cea738f51c17aff00cbcfbc377d62ce7ac1772635e4c9d2eb07d65df18d0e72b9709e70136b973eb0f332243eb555d01daf41f9c02c2a1b50066c56dc69101671a1f33bf8b8f2aa9dea53e0c352a5c23baf17d1e3f789c2282200515fb049ef9c69047751221ea71f785842a062a36c4eb186220054023becba93248a0c8d9000cf2aadea7785aa2805807694defac16295406c268970cec15676bc95eb0630364bcd2896e3d60400694786783ce0940a7551be4f38029490c441b884a2eedfac3c91a89b4397e70a044569dfef03541af8177bff00bce6eb555d24d3d4ff0078d184a3b5609e0f388c4ef1a443879e726024682513cbe9de3620d202ed435f7bd5ce8c110baa77f381c91699b4f2bc68f38a0083138513cb0d2f9c62920e9eefd739aead08a169e37c37fbc11412804553bbef01521aecbadc0f583450cb35b2763e3de17890371e5e14df5ce3da20edb72db49de3d278d30543cef189074d082f9f67c5c760376ed44bb3ac1b21849ba3d3e2e128d2abbece8f38c61b0883d77b7fade2242c18a733a0ef19000c8a9b03de32a51288d8f41ac3698085288790e6fd61ff005250da9d7bf9c81c3415a3d71bfd6391964ba77eb09ceecf3b3208aaf7ef276475cfac35c7f9ca7371c01396f1c18eb4badce93c7af9c74a05c535af9c93418e99bfce34d264b49dce70d24cdf5d7bc414bce52498c36dc5e838cbeb2f6e5de29c79e3de1e26502ac0f3804abc33de6b8b842a0036a8079ab87123a1e97c3c0f9de35625564574176f95e7d6110888046c16b6e39422043d3e7344403436fc33de6e2c6210628af9e38c468d45f28366f40317d7784b0034e68879ef1a9544576ee16382b5154b52b6a9710e20014a156a9df1c7ac7f02822edf1e9fd653d8594d120be8c3064a2e003c78c1843311686d13389048045ecf13df586e745402807312e5fd31a36de43d638d054745e78b6e5b0b51b5a89d2e5914863e15ff009c3aa72dd83af9c90690553917c3eb18d505210013bb37f180aa0d2f4be57e71ef01408903c7bbbc4a08a40460af597882ed1a0bd1e9c04d0a08aa8f9a65404240188f9675ef08d6c91256a494789fff0072e648d9207a8f7eae52ac0a34e58d4f9c888c028d8bd827260681a184156d43c5f386001450a552c1780c9454480ab7d9f5e71aa0280ca4093d2f3498914a1142076abd871c63854d240d50e017fce33576537cff008c09084241107167fac22d9685a81fe2e3dad0545e87be65c10034d35d3f9c40ac2a0ce75e7c63d35028551d87178af38cf3a0018fc3b32de4601a3f8f1df8c29b56a35b5e4decce0e92a26c2cacf7964023771d7cf5ef0055ab06889f58b6978f587a640fbb85402a278d18d94a446d9e4f93c63828d82b460f999491faf787bf8c2249ce68d984e7379b7bcf39f194957b99dfb31578faf5853bc75d8c82c3b709624d2a45f7cb319440f3ae305d0015001a8ce19ab734da4021ff00778a6802c1783dd31cc61168a2fb9cfce09135155e067f78f9215526cecfc600640a85ad14d78e6e3985e05a2957e03418f006802f29e5f8c6712a0791581f16e0c5625000046a75ddfd61923115b0009ec5ad38c008dc4a0a3ca5dfc6b029484aaa9e8f5eb2fa1a83a0be4eb1c9148c5d00c4bdfeb39c01bcdaafaaf1f18a688041b0af2939c261600448225b2f079ca280b00a254e424c8dac1e7a55f3e70044d995e10f18c31428e2f7f8c6002e87b5f6e70c05b8225edbae3c4c8b2d8047679a793c6109526d29a75ec70834022ad0a7aef1a6e4458dcf2789e712906d47903d4e3f7818d6d210e39a747ca60ac21a006d3cceb181552b12683ccf39a31222798f27c6018010152c3c7e70e8908080087ac212282aeaa0414f1ef0a15a684b6f9fcf9fd651451411a24c1aa40de25224e8f5bc6a342740aa3d0f89e430482a2024887f38f7640542035ed78c9009a4d8cbd6fde42850108907a83ccca1aa12af49dbf78c905296146f15ff00a67366856c8c8c978539c662c24c8a7b0ff786344027233ebbefce004115a85b40de8c3e1b181100904f5811a11608dbd6c6184232a039560b25dfc6116e12a29da9753e5c60884d9111e223ba6c787ce582a2042cfee6e605081aa94d97ef9c85f000156075bc9340ecae1d6f8fde6ce7acbac39a3ac17cff00e4185e7d719258f191d9ddcbb5f196347113eae3b682689e3bc8921ad1e718010918cfbc330100088d6ab1e56600100362ec3ef84f78df0522cad1ee7532e820404b3bb7fbde220aa0acd1f9c7752a2d6d1241fe702f8006495484aed593d639d80581a8093a2dd5709c07402283d9f0f8c1570b42cd73fa9fbc775b41b9a39df7f1de2473691b80558f3babce3f53b002a703c43de1481545681c2f83de216241d12af9e75ef19a207402a2bb8773eb35e688000892be1ef05c8190855466a9df372d40d0844a71178308b255406c1653c4c5545bb206efc79c35d5529a8254fc91d65281690475ef5ef09402f34d9e6fc63080000016b7972f281409a1f2badaf9b8060a25ae46fac6402475100f6f181b0108c78d53e4f59ba45c02da3eff008c19600a22d50dd12ed61a7cf38e3c6a4108fc5c7204a43284f8bce00549a41d49ebb3de6e88e8d1160cfe3150a21a6a89f9d601d8d03420875c68cb2a015b74f9e39ca34a0dd2874a6ff5841444013907a3fbc7d40824551650306ec442054f0bae31d400912da2da780c0a168aa456de29d079de06c482f0ea721fde45b5d238227027bf3822252eeba2f3ace0e146522d9a4a7586c22152820cd1e7d5c1e26b68c10f3939288b055d5d6b15ad441591ef53ac24818e95acc4280c44508733bf38e8c5844004791c046300504e16730d0683c64f200a903bd7bdcd5c352840deb78dcdb41437cf5705d6b96e512ce7047619e8ef026ae7f39673966a73ef17c7794e4ff39e43efd62788f330aa8273301843443732015bcce31b4a0a60386634c5615141438e0d6f1a441183c2be270fc4c20512158df1c718845a207aa9c470ba0491fef1173d02f0ce2bd5c29d062c1402d07944b6980208144aa2ab77b55bdf18840d3226f63e1f0e24690a03854409cdde4d8a10648d80de0ff38284021d452b4df1e71c5a6ae9aa720f8f7839127b8412d8bcfa984aa062aa221d7c39c6c90044031f8f38328294ec1e10ff00a620d0041446f7c62a402182895a6da7de0a4284576adb5c408954d870be30560182bcaaaafb8bbc2485441d1bed3ac094515044513987ff00dc268a35868178af9f58cc0410502276fa9f78616a3aa721f3dfe31ae97a95b3c9d7d4c7d6ba957401103af9de2eca221345d777f8c74690226488c9df134f795690222a8efcf8991118011e00b2330498e62312f1d7078c14a56c52941e126be718a43aa354977abb9f38648356c46744bab852522495a276378734a2854bc36eb1059d205881dae6d542845d8a3507a3d6f28122956a25e005e0f9c7084042281e9f0633ac4434a8f49be1f786800158b37ceee0332101154e93cdfaca1d942aee1be7ad62902ce0342749777ce4e188a20ea8da7bc36c60e98e4f1ce39104100056c25e77fac324425352f979ef1a235dd7580b403eb7f9c02bceee6c279f5acdeb396f170d205383fde0845e835ae301cdfd61389c6223a78e7d61fe32f8cbeb1df2e5399c63e0bf8c8bd9ccc501a9edb923968de708ac3f19b364d6150aef67bf5948b2a8cdba9897106c42d02aa3d733bc4a0860227665507bd5fbc064069d913cb1e677e304a890a39c8159e26f7bb32628588152f96fac73853ae87cafa378661281145515f53bc34140124da2f11e8fce0435d80baaa9df3ce50c510d831e4b67d7ef2936d002d2d76f5ef14679011dc76df2f588f4299d1a3cf3b9fbc2ad0c0100f074bef0e3da8ade03a0f2e3d5a9186d54aafac1586c228b7e0e4ff9c4f13804341f2de3de2082a21c01ae38dbac7103589ca797ebc61011885e1406cfe38c4aa145aa114b7578de559014363ca76981ba4851018bcb75940069526d7f87de0043426908763bdfeb37454abb921e4c0770002d403a4f9fd63cc9a003483cfce04f61500da9d601ae0c40a87a751f64c410406d6aafad5c878a28b1a6b62f9f5884c8a406ebc6bd63698aa560092be7e3596cec0d80bb47ab8b4b1710111eaeb730d55101a0969246e82f1de3da814e0aeecacc2b528510611ff38c9201a54a79ef771158a854781f1f596520a83447ac432b768954e84e8c11e3a0b0a3780f796e90304ad138a629cd9b0656dbeb78ec541419cb3bb81e424a1d84baf678c5b245595e50b27194435a8014271bf784548243b98641f9df3823daa7d65b8e1534989501dbd9c616c3f3ae303af387129bcb5a1f3ef0d73de7c397aafe72ee27c7bca793594a82eb9de3a4254819558a68ae01dcee6006879c66ef5908aa91a7ac76dca3c339fac3245cb0a41ac74178aaef58244c000007d6cc070c0c109cc1357bc35af448a09c0acf3bbde2eaa481384e4a69be4700a84810515423e697f186e5961b6c0281d169f30ef0d739002510e3bc4b54c061745ed3d3ac45aad904081d076614ea3d0906493b0e4f38ca8332a8adabe321c520a3436cbf5e307b00a8c569de8d3ef08923412211eef69e7069140369422f188085be1a40b0f3fac2900425361efc9eb2650d221144f1c6b7bc94e2a0a95579d659232ad5ebe311dd95a0314f18282a52ad6e8f180481a877a0eb5ef0747245351c4b850088249c6bbc33080415089e13bf9d7c62050a157880f27bfe311a5120d96fbf585440114882bdcdebef10b4554a90f99858509a11e49d8e54021514d15ed269c18940a2595796ff0039c65a0d6040f0f8c39280d9656ddf37e704287252ade90f0f9c911518d436cfeb0048e95922835d927f38550805b5ea9d982a059b1814f206181291a368f27b70400a0f009e17ac2a294115804e86b6e5b894014625b5e36fbc42200781143dfbc1245555e10efd7c62211494a683cffac1e44088b41271d2637a801434308a5eae0e886465bf2f59d636374738c850e66482f9e32f8eb2fae3de7a8abf58d12aea64961c17e705b4e3de6eebacd78e72f9cd3932eabfde5d2a71c639a01f3d4cb2eda95d653b74bcef0a8086f4e2044e099be8325bbd3856d1ff005e70bc94ad3bb8e112263a4211389b19e7bc7644e0cdf17f58c75ff7e1a6365311129bff001fac9002a412103d73cef04d5c2814814a480f5b710b004ee358f07fbc77a856abb4388f55de50e810d597b5ef1034506840b236e8fbc5788b4469f48f5972dd50222924f6f79220254a351e5717685802013cf7880a08034553f5afde1000824e9525ee181758428d8c74e56895454682f7cfeb197a151009befce2a6489b362ac9bfce14dc4aa1053c5e39f1829450bd117fccca444515669467eb11a54257704f477fac5a2d08a3b6b69e4eae2a486004a81de0a38891e859705b2a435dd7a3e325800ad277d3fd6f29446d40e402cf9c64152910897af9f57ef0490414aa455e9bde09b68226faa69a7ceae0e2a28aa5e2f7ecc680b76236879d64156aa6ad03c57c630c22417738f3bc68040022720cdf89cf77d65739490106dfdf190d92b54ec7a5edc6bb2824dc28ce66df79a4940a0ba3d3e71851d0800eabfcfacb53b26b94e633c6f9baf1910081668be83dbeb04145aa72d7ab758f004051bad618a28a54489e8e0c31ba50ee07305757731e24a22f4ce19d624009b2d3c63a14e0985060eb8c2e1c2bde006e6dfd61240721eb9b81d60c3473820eb79a7bde7c07ef182e9bef24c229cfacb68cd30d738b451a5ac74fdf58cf4bbbc5ce84eee5988bb720e735357c6bc62da16daf763af4eb2da42338e440af7027ef0abae0fcff00f11e993282011b486ef9eb3430e80047b07c78c67215024ad61aeb040a2403153af4e254942ac168518521ccef07b7615d2f2273f8c9b8185951ed7d98000001be093b9bef19b4082a16b3603f385443444105e77d98a49a4d407b35298ea0da8155f7a30140058ed181403abf79af8915793d0799df8c0b14408b6cea182c240d1381e81b7f389b44d1d8176c1b88ccd55141db74bcfeb0a0aa00208a8f9f3fac24a0b278275f1f58e20a1ab783c5c20021805884fde3b00542768f83c64683021685f1397de04728254e85d29d3f78ed4424b362143dde2e3194055ad0bd9e5c41854d8acdf65f2bbc6191480b14f3c719a32aad2301ee7f192374214821c07bbade260200b0557a19acd90822c058514efe33ba30a3410e747188db2519688f0ce9f78c214a026e02ee49b7ef1d082888d8cf1e72e5a1452d253e13ce3a0c208b29befcd3cfeb04ba142dd8de19d3ef0888d3b6c0f0bd1ef05db2e816d78f193151cc468875be1c26051413a670ceb0644d03bb53c3849a0dbb2c87832a41085c15edfce09bd67b335d18bab3b99ae7590e6b8a4f8c470a1fac8e526a8dd38836a6d9ae31a1637c7bc2ec516c19af9ca1134d32d45abd5fe30a6acc09c1703b5c5eb2c2b89043144356cc4d8b4795556adf6efd6042a5a0b182a471a2fbe335c9db7ff83fce7c981e1150f87c65d8288d02346dfe31621d515276a06a791fac04455688a81551e0bdef24d0dd2801f379c3a40ad6113cd39bef09a317b113803bb8df40a91445254f5ce1a2aa40307a7d7ab84c900482ed15af7ce00d14268a287bc1fa1502f1d09e32086105dd2f91eaf6778ba8aacd6f5dfbca12934897a7931a482d04aa02adfa87e718020960a0a7ab961100005a142d1efe35845840226dbc3ce8f7bcef000a0175e7de0c0218d2b27b9e3de6e6c4b6e84645c04900c05044e64c124c106cbba5e6cc4bc36168c0f15f585108341b5f278f8de4080840520a956f49e70b186805d70b34f8ef0aa06089b3b5d5e7ceb19a0a12d8af473bbbb8e05b00e5b67731a1400159cab6eb8de3004b552b3b87bc754a444d412a73bf9c050228045024bcedf78ced18956c05ea79fbc7518b5356c2718541472ac760f1f3319a00d1774e11ff00f9802a9b010d2bdfccf38c4634102b3a4f170f0251d1273c7de0b834034ecc2752035f370f9e350d6bedc339bc4e70f330bd9d5ffc6f7097f58de7d4c50a3d6761eb13a6fdfac21abcf9c98a9a91debe8c35010d813c7bcb810d35f5eb2c805d5a1a5f9eb0aa41a94f2fd60564e3b9bc709acd79c1ed31124e3de0ea3bef0c487377e0fef21b9dcfd64ef9a75abe767877cffe0dff00d8154d7be7129535d7bc0ffc0044112376277af0e4c12c4c215da1d13ad9eb0574bc0468b0035bf9e31cd00822ece047c7aae5d8aa10404e1bbb8c9a3410a57bd701e73838823000f4ab74f9c6a25c49101cf013074924336df0f3310adb5118113a95ef38804a509cd9ce6f4a4a2703d3be7de300154adbc2f41de2085dee2278871cebf7880840b0217d6f64de13a0aa23550913af9c75416288a870178cd980ba145f7662071246a0df1ebe30811a312ec6dd1c7ef002111bba3d88f78c12528c4d2a7532290630a6becf1ef24620900d21e5ef072a3b228977f0cf9c028b6510a82900d71de161c423a88f7f43bb8ba409480bee3dfbc4523aef6d878987141836da337c4ecde30d8147444be5ce781056b46eb4e75f192281163785294fd60240d8352c1f65e5f9c374509366ce46fb367f185408bb3b1f29e30e44555d6ef6bf1f592a80a02963d9ae6f9c22a0c86e45a4ee9c718620b655526b8be1f780caad6a2f3ec7bcb0166f8ff79721aaa5e41967580ed7b9c60228e3ae5e5b91e72f978f5883bfd63ad55aa71b260828fb0edf5826971cd4c4a48514f99c638820583207f796231b539d1f78ca6975aee9e5cda56b8175f8c8145616a44f588709bc24686181d5c7b71e9887f8cdfa30577bda75f7ff0090d3d71ae32fac09ff009615eb04ed747bc8701c71ff00ba38ce69ea3413891f27731c208aa9555af3725ab80085271b0baf9cf2ec54f3cf0fbd9899888854315975e8c9400f6821281ea579eb0e506ade92cd8bbbceae01ad0010a87a3de51a854d4d40e03203002b5d82b4570960541e503ce2638010d3b7cb82954d9e5eb8fbf78124006d772c878d6ae200616a1771f3e1c901a5100f2bda758a7a004d81bf18e2036a6d54e743ce3569112ba52524d6f2400688034f015ef09b882c3647bfc63d28330c2de83c8f8c20025514781f04d7cdc56a5069126a31eff9c15a34d0d76f977ac2359aaa1d2b13670f8cdf0a0115da7ddc6644588377e7fd65ec50406af7cfad61483b05a221cb7c7bc55426d81e47b1ef7f38ab4a722df53ffe63056d2c563ed7af8c71628c72aaf84f269c03068282c6f83d7ade0522b631762b27bae5050a289744e49d98c3228d2d41f3e4fce31a2dc6aa29c09fce0a401473a01e87111111bbba1393e70898d90e905b828093479c34818a3ca6bde41a5ee6202a9bf793a588cc6ca220de765f3e30e9a8dc2ef5e304ed2e8004f9ce7168921a1f0be71922e5b607dcc25478107826102c1e94e13c185628958eb1aed3cfbc9109af581acf59b758bad9ce2620842f93f180211407522d7e78f5940af998f5c607bbff00af50e561ef0cf639f79fc643100af5ce0b438c09c397b985222de216e27689e70447802d075475fac4c260001100201af17144a24a023e508fd4c7400002a53c9b47292b0974682d4d2186911229142790e3ef1954196111bccf170b50003079bdff00aca0a80052455e4cb77c83cdee7f18530482a8d54e0de6d61493940cd442367304947dcc240909ba68f26fac48e825a3b690af58544481a26e777a70940d9d95a2f60cdbf8c2284a288cd3813afde3501c203a5f8c75976cd8a89c43afe70f625462044f09cdcac929541105b1f2fac69242a886c9e7788840a8d28279de5a114ad3a8fa0d60a918a25d3e4be1ca1082a2d50bc25308180283547859a7d6f08685548a442c93f9c22b105134b3959e3f78c8800ac2ed0ff380b4140082a8690f9de0d8586538df2add4f8c9d430255117df9c02a52a046fdfe30770490dc5f789015288d45e44e8c3d9520562c3abf3874a5dc74970b9202537b9893165e363737c2bb9df38425285429c737fe7121206eec096af5840ac5000657ab39fe3246222def7e1eb2e9a9e0ea7e309000015150ed7b7de32d45add92184341577efd60bb4a581c1f387a5b6d3067049ef0579dfeb035ce4c6498bd29f9c88f1c83a9171ce8895614821451e77f18e89ac546bca39fb0c4c2917abc67aff00d41bf0dc86f262e2ab0ef9f7861aff00cea6006d69c6f2b36b9ae8ff00c2779d787fc9f7d63724ddc445d5a46e2f89a2112f42727a4fbc9c20202e4e84abf618cad000211272a3b3ee3eb1c0001a5797ba753ef1c604af496d0efc61025535560dea1cfeb146479722bd1fde35eaa53c4353008004e0d02faf58435d802359cbc6c709d204052c9d33f8ca5185404117b8eaa7c6f1a46d855143843bca0aaf458beb872360ee26da797e30228910750bd16f2631b854208a8eabc49e5986d44bc015f178cb70a82a9555e2de4f7836b102c289d9ea613a10a8dd56cb8e0ac00bb8a0503ce551548705a3e0f2e56c63340c506d4efe2e31820058e43a0f7e7081042a88abe6789964516d191f64ca023b51074af34cd0b6634045e83bfc989450da539dbcb8ab4042948078c8a73352c6729ee9bc28880bc0a2780dfef08c900a0aaaff0058529412a03a7c7c62e08d75d43cbe3e32ea1b5105543d757125a001b40ece7bc6d4008204024aef0ac476a86d4798ddff00196a025f67f79b0ba4a326bc4c25b79851de00a410cdf592b51d378e70c10fac025fce030868c3bb8ba931794eb181b8eadc3aa371f0433646eaa220a589a793feb88812180a0e157b7c819ef0def8ff00ca457a2b97b5ef9ffcd62fb3f3836af5c675c7ff009704d47e63fbc86ffdbffbcdc0f085220cea34df2ef1f88d01113bf87af3d5c6800542821ec164980115a1a5d74bae7eb122405050d43a306950356945f175acd1429d88337e5f18c00406cd553c9efefeb1a0938d5ba581c1c79c24082a169b00a01e3feb920b8d3503d777140c54d7a7a7a7d4c1209804dcaf649a1f18a37856d791ee74fbc0674a6e0a89e2f73c38c10166802d3cb6fe318888956768705e8f590e00bb275be662144551df0add992ec0ba4a8f6bd4c1888b14488bc1ef1b94a447522ff184a5100af02f46f58c01292b742777e7039028bb8c7dab37889a424696be06ebe711305a2272afacd9205489761f39210a8545a9f7de56ea680bc2dd7f8d60a8c46f4cda7e70605a0029d370b51a61cd9e304a8aa35ba53e3bf8cd9415e39ddc74311549cf80deee0a542949cd7027fbc1000290741e0c4a03208c61ea1ddc391567180b6043be27d605015751539cf93af5826a1fce0bcc701f3facfbe32de3b665c5e6a7e70dd13840e2a78c208aab50d41e04f7e7af78165225148d14390f1de1a6af53c7c6112dff00d7b076d7e30009ff008909e7055107f59075ff00e77d7fe7a0f8f462f4d238cf41a53c6f5d4c1539202a09b45e47afe3378484585dff005820a8055e91189e9ef7ce3b84218808114945bc6136014d6f7e5fc7e72dc5114591f5e7d4b7111022152058dabbf5f9c3601a520aa5a037538e318840ab22357a5172305469762f8939c038b0880c40f3f38a88ece5686e4f9c04851237a11afd62020416d11e8d6b06a0041088bf29a98909442a49b9fef9c2a6805528cf3f3e70ea50c60084949c1ef1c05c2c5a252b3c380a1055aa341e2f9c67b00061b7c1f2e26b1167121f9caa290418ecb19aef16c2a076747f397446228ddefb9d181aaba02d8d78cd6a350f143d5ef1205e109e3d9e71658a8e87afbc282ec06c3b675315112a6dd6b083074f63fce1074d1e653e7095412b3407a441e3c602044ab1040a6efaf7bcbc7221bb4f38c603b1b5ece0f58dd95d9764b882aab0ae4b63cf183742d39ea624a804e7dfc67baf14f7975a1cdf09cfbc61c273719b35a2f1821445970a82316d147d6f58a12262e2207225e7ef58574600014ef8f3945875cfac00d7fe5c85b36c35d7fe2917c66e8bcf19d9e3ff00d69cdffc77dbbeebc7bc78708845449475af277eb18da25222f23e13de2362b4aa1346bcf6adc52a1d1ad00009d718a5a5824d5ea791d6fd66b06517a549bf11e2719562a20b404bbf071f8c7555b4574cebe4c154a059a942a927c654c5514049b8ebb7de0941a25588ca270efef2cc4da0512dbb9f9c62b5102a94e1d9bbab8c74c68b40b21a2278c361280f150bcdc040852d2821caff00593c21e1515b3f1eb35c2a010a6b817c77f1bc2e285145a9542751598b11d868a00f9799f191e181118f434f0ea61d86700d5ecbfcfeb1e642561216d37c64008488a463d479fd631b8856d11061eb790310a4bb801c5f180989dc03925d3df8c81a088bdc2c03c5c7969b58403d65104a45d691e1e72834202abdceb5856001ec107d72fe70a2aaea780f33bc4105aa0a46fb6f18fb92b10ec6443e7c64549490e58f6ef35227208adc3d422b48f27de0924b4d7bca0a26dbcf3976523ef9c7b20f7a6cfef11e7ad180734fb997b478bce5b64d31a4c54a0ce7db8c6060ad8df8f3864c426945b16f41cbe3106868115e5f5eae150077847cbcfbff00dbd062b0c2095d719fc6002a9f9c4a5eb8f59e01ff00eb3aff00dea61912455800781d75eee5c00aa02c12d75377f587e56d48d41603e2f82e4712a8375e819c648a4a015a49cfadef2c9165540d2db361eae2369117406cd3b24e77ce4a836088a896a1e2e3ea96237b54eb9fac6d874620354a7923a7162084084516233a3ef24d4095542ee6f81fff00b967d52c08de457afc6356002aa80b4a75e39ca215400342b01577bf58e433062817537b6dfc63e9188b008efe35def5af78770844d81cc3bc448035dd597e73580af5100f0bb8bbb92610a0553cb75cf8c1500003c1428714bc2e5a1a59c60a717d653c9014d80105f7bdef8c0da80e55795f38caa80830e237ebf78940bb03b222d1bfeb04b70d07614ed1eb18480aecd53fe334284153703dddeb080580aeb47bc5277b86f97df8f9c0d9a74a6e0af49eb1900962ad47c939701d4b02d4659f5e72114a8136171aa5e0d5e23e0f38b9a28d3181efdcc615510f48769e666b8bb61ae31344224dbcfe3036a346cc14aa22c37afce20d3d3ce10abdd35c7ce6a612d44757a3ef2a5545811636137dfde472850f21c1e179710709be3c66e25578f5ff00c2adc61aff007879c602e5085da1ecf39201d95c00ff00fc2f167270103efbc9468a6a42a4e40f38b4a1342d4b4675f04c3361281a09dbd981410d00151b8022af18ed13419a9e11b03b89f79272940004d68024d71ef0a22d4323650af048fde54c415408156de3e311a209aec5bd96ef6ef0c0a510b095568f88709f7965a00088efe5f387c809545d1ccf3886454a0883a97ac718262e0c1201d803f780a2f42a0a8c2ee23547f38fe978a41cec03c9ab709a1b616a8bc9e701a1489b85a29fac434a1b101a75ae9c201d6a04a5e04baf9c5381200011a9c86a5fd611c82228a1d7cb80255832110d0ef51eb02af246dd930b06d589ad078f3f386242081ba938b8c61a88ec412f49d195545059d2073853114411d37d79f7fac2d242a0d583e75ac6ad8124b6befce71409137d9dfc6248a6d0d3a47ce10228d0ba5125bfbc26e642b76be03b7ef11a220891a2fbc06a000061dbcfce0868140d37f2fbbe30f8a89b75cfc19b800acf8c8969b29ad64247875e0fc7586688d69d2e5d60d737575758e2945540595e90ee64e43e15d28da7a3b773166d0e7afd5f66155567f9ca701ffac055e0ae06456bb738d650ac857a984651d43563ebc61efd4ffec6ff00f9c600a804083c37a9e300a10a41708b159f9a617542284d5f5f66413013847cbdbf587d84a05084a382f8c6504b75ca5834b675fce38c0810e101653d18600045b284a804526bc16e30334451401e0e2789bc907513a6d0e437170da48d1b22bb3cd72e002bca18e2a295154501912778762a0da3bbdc3ac3a41e882a0055763ae30dd6a529bf2eb5a3c2fac6964f06dab0a9279de059778621a3097c4d6091451669018a730f7bc89df40040b2ad8f99fbc6110a28040290c2340856ac95da8b78e720a05c69001f95e37c61205155b55aa2d77befbc26888056326ae1321e346c1e4b773ce1e04644362de93bc6031590506c7cbde36e4a05b1af7f7e32b401d2e9b64fcf7960884a0919c6fb5f197d129948a3d8ef53ce025812806f8f7e3d60a402924721fe30a68d0ade6b279fd60916aa0bd0f48f9f7d659068010db3b0c2306ad43e783056144b4e1f29f1e3202881a8356c9c7de09104aa1ae6779492b4086b87b4c772ae4be6a59860529439356ee5f5868b1251761a85f0382b52a81d062df9eb07c0c0039f2fcbde5e9c60010e0e327b7ff50413907c8f78134744ff00c3103b49edfac32c2caea57ce1389ffb7f58e97ce2c2cc0bb5c09ffe6f00a56c288100d93ce1d916441a3865e479c3e4e9a504555591b5032da7d2529d55defd6300de9bb441f1b97d60eb4230940056206b8f7ce170d034680ba3d9753ac4f00025289c2784e3d9ac3b9ad586c617c2f92e1c8168882b60fb017731d89607c1decf1f78fcd2076551dd45fdcca10e02e27ba743e70a82691401e93af9710880ea220a2c882717ef01bac044b3cbe93a3ac89b8d6741db2e4c0a62a0842c2ff9c62b11102892209a66aefbca06c88257502dade71aa5ca295048d7bbf53de129d300a8d216f7ab923400021b62ea95e675c61051790f3275eae4281688d1dc30aa81242308f7964554514d97ab811b0503600741f5bdf18772a2880c47a6ceb113453b76aade4fafef3504b141d2f07b72fadc81a1b796f780a1202d9c5f3e3181006c2caf8c715a1011abbb2f38c05a2282507b3dafeb0a2c4276a3f18caa0aecb01fe70dba28a28c7d6bcc77ae30ac488a45d2179c8100a22548e145440e9b0f0619a018f2aa125eb0c2a05d2962c824bd78ef0005212117b079d0758484550053817e5da7d6f3a2a60243ff00903035008362f17c423f79dfc6292f8c3bc60d7cbe4faf381a978c09dffeff0039a0eb57275d7ffacdc1135543d81ce1cad042635ba9e60e2b2c0d423c06c674bc78c11406a30010e106df87f39768612155529e77c6390ad5588790536ebf79398b4a2057961cc5efac6300161a1e042472f31014022b51394fce08915a10a0f116ec6062ea2bc2507e7fde12a82c3922d0080b37c387c849b8147b0f144fac210a45dc8be0defeee3665108208e1388bdcd66f10905a55e15d69ebce3ebba28a09c69f6c0d6e9c64c368a4834d34aaf5d7bc3e2a508000f23d46159b98144023398144f479c3f41184a6479d1bf780e4b48548b63e28b724b59348a4a13c5c20c8121db7c9fd38c54815052179d1cfe7008c43126c3a4eb795dd76210760f780400eda8b15d26f966a6a625322004456777ae4c02361075b7a1fef2e2d58acd8a95fbff1930845ad444f038950102ab4be04395c27c546eb6a7c6014dd40001b2de336ca60212a3e5f7ef122aaa45ac47da7583605a14d8f787768155157d53d7af381c4e900ea71b3aae2a1edb0d41f07f780049e26b171d000454f38d01a415445e9e598b022a20a4aadd3f3bdf596dd510d4e0b3b39f7861e7ff827000555d01cb86114a84a5853e27e30efde203beae16708285387bfce0d73ff00c4eae6e3e3ff00d86841090d031dbc985c14900504a1f3a3fc64220a41028f417486ddeb1dad0a5560f42cbf830080550d86f91e399bfd65882481a112d158037ebce1ac0342818d89c47084a96361e917a3f1ef05c8e9b0676071f58670206c0b28f9d3e4c4c84975a4388fbc2220c540580e884f2b8edd002a0077cf9afde19036d0405db74b207770ec10b082523ceb8bcfac2c6a595a8e97b0ebc614705bc021452ec18843837ac1e024aa1b4d706ea7bc22022026e16ddf3e2e33e84562a3b05f3d4dfce0c13bf050478709c026fd62bf1000a954bb75b4cdc908536a75a747ac362eb5a3155951c2680283d9402a372012842edd494a7af9c6cde8a0dd8be7ce37475522697a44edc4f26346911f31f970a6fd9003629fe2e34a41512880bbdb3359116a201ec7af8c6282240453c2f97d63c60945829f9e3de4d7502aef60b6af5fbc706ad60cafdf9c0a16c020dd749db86890168cd9aaff0059657a48bc1e40f278ef1810a951ba7c53d71fbc75874654da76ef11888083414b125d4c61458a2cd23df3c62d44529b0b3adf9f53ef19002123c02cdfdeb5d638e41034d881fd66f9c38ffe1441a510d28f21f2eb1570e46bb99c6ee3c15521324eb9abd6df597a0ffe42697a9ffc7db9af58075fe1c9efabc64ffa7ff3f78166c2b200d05e9ef8de1c2e9100be567772c455d5753a672a9a5d63142ec9a15670b78fde4eb08681556e83e3ce7346c185403b5bfac75013b4961f7c65a06814ddeb7eaea71927584a817305d7e311bb2000514179ac61fe32e916aa0402901feb18e20048cb417d19b210e63d53c65c9b900ab41e83af9cbd7589361e57bc223fa16080013522dfd655863084152145dccbfe22951f01edea6130318a0809a77b37c7386db60e51e534d038ef0a52d220d40d937382acb8628a895a52a37bc4701c13417a4e9c295031681cde319946f2fc1167bf1fe72448d69a525a4c1019b4368a76fd632da9154e50e06e46a4120cbd5e5c690205548beef5f18c3054895557c73ac2dee0d6a29f0779034163610bb19e66e75e700615600008a2bb9c138c52811545614efbd61821362782bd17fce126a9aaa9ab12f11f9cbadd00f2577a26dea636edc46b12f0f1cf970c42da538479f3bde71da892a0318cd64c4ac006a6ea25d635b42a018be007ac7502415a20724ec716f14b5bd8e8ebebf78fe300b51212739d7195b3ff007f8c920600269439fdef2c22753ea4c58531cc45a02d85e7001c71f5ff00e2c8955e21710c6c59b093ced99bb5a4bccca94dbed67ef0b44d9b90c05e23afce5ca254b06fef095a8cd97f9c178fc9308f66f8ecfce69ebf786012aab6eb4d26f91cbe6e08541b154b2f88e3145b08960731ed7c6a645ba80a10e3414db4c72408126b391f7378c4524da951f3bfef0db42021cb39579c73685159443bb75bdcc20263aa8487bca044888175cf0f2c2bfde68ae254b4f1bfeb1581640f31bfe71a6a15d9beb24ba12b10d2f99f59bd14856e4c94680236c229c5c0017510a8c06778c5190d9043969c275ac07505d80aa5b7b27df830a99c11115da290a1927a015742546ef45f5720ca213a6a9c53a30db3345733da73ef1801a860b464fbe710305002d60a7c60c00d61d21d184512d4270396f570a4b02a420dd4138deb35534288ca7353eb0863b6d1d8fbe3592110ac10449df2f38c0505416a41ecc04581477a89a51f29ae35ef08004bd2a2d8897ae79cbb1422c4d7447fce0b21134b403b698cd102084adab38932c900138469d84fde3150ec46820f27ce3a352955d2b2835ddc0a1910441d5348e40626cd6a2baabce5828d851b5f0a2bc7ac304165960bec9ac62c440aaa3c4e78781eb99851037977bbe6f78335335e7bff00dbceb102a1a17edca7098c301d172dc44286e9bc3b3ffc42e8a9c6e6425d22ac2dbd380900d35d7583c8eef38f723af460ad134fad38271e37ce08d63c4e7109107eb0e2437ade8fac03680e7727f9c381c616002c17bbbbf584ddd4a5155b40e83ce16038a2820e942ad37ac49f14494042794d7cceb1280f4a807b8f0a718f0c1547901d1793dfeb02d013aa23ceb20cab680bcfad718a2500a2809e13bc7088315068071f7eb354d822f957a70d26d4d53bfacbb8b6102a9d01de019c02122941191c28d688baed0ea659561b0500fae312002905b211d7979b9b70080bb2a32139c266ddb34aad5b35f181ecd4a282c84ed777ae378a044934a42699e316bf02abd9155e9f3d624453689b817a982670014055d323b3bbce10c485acd8bf0e122898011e57b32a8005078059c56f5e3bc3032c22a28bcefabbca040280521dbdf78ca69044e69f731c215d1a543c9597ef2c04b4004f1d73935a08a134d0bdf18720544b1d83b5c1b60210456d3b272608504d02d3cfbfd61311b20d6a0d47d2e184e82ba83d7b30318d046eebcc0e4f786985146c684df180602524475e5ee63885a42aab6432029b01b89e8787f38c88415a0157e1f1ef14e860d05728f34bf1bd7bcadc90b3eb26adc0a57bff00cfe31f132154dd263f3ce20c14807e7270855acff187f9ff00f17d618d1db799823b2eb46baf1898419f9c0897587dfadf193dcb8ba4c854075ce2bb80d218d7a0f1eb187810ab6cfe8c36f1ef1d554288553949e2e11188ad2caa1247dfe7d6320da82b142513bfacba08c11da04ade8e4f186180a30217963a2e104a11b795ebe7d65324a208024075e7b308c220dd40f60f1f78c3a34528a8f86f38621043c950640bcfac7601050541660be0108808ddf9bc63290d45550d5abce2d186905d73ef2703e9152887370882d85582bb87bc46536977b8ea1d4eee2c151402d5f53f9c9a845120aa5687875cfbf584a4544052ddfaef084481896d7a0f5880088a8aad9eb0ecc1adaac5004f7bb7d7186816043e3a7efc63a200015762787cfac25a1e1282ef80c77020d35e0dd06dd63d513a11caaec19fbc8da8863da0783bfd644b541484b79b6f1afce001401a03c7a736480100775253fe32961162e957ab79c61e5242681785f6feb349020464501c9f7ac6800494c45d55f1f58404a029cb6c37e1f189450180a281def7a3c65420974951e0147f38c4f64652be4f1bb89046dc0ae836c3cfac90c122aa9a7cc35fac0956da23760f8f5eb046a8b8808de5294f3c73bcb6a22aebabd67243bcea78ff00c974bce7789e1ee62a6fc631806a29e439c220606a7ff94eae5980a71bca904d7734e1c886cb85eb572871de6da4e3ef04911bd6b9cea81efde57faf5803b1e33fffd9);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `client` varchar(50) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `transactionType` varchar(20) NOT NULL,
  `dateIn` varchar(40) NOT NULL,
  `dateOut` varchar(20) NOT NULL,
  `clerk` varchar(50) NOT NULL,
  `s1` varchar(50) NOT NULL,
  `s1_kilo` int(10) NOT NULL,
  `s1_spin` int(10) NOT NULL,
  `s1_price` float(20,2) NOT NULL,
  `s1_amount` float(20,2) NOT NULL,
  `s2` varchar(50) NOT NULL,
  `s2_kilo` int(10) NOT NULL,
  `s2_spins` int(10) NOT NULL,
  `s2_price` float(20,2) NOT NULL,
  `s2_amount` float(10,2) NOT NULL,
  `s3` varchar(20) NOT NULL,
  `s3_kilo` int(10) NOT NULL,
  `s3_spins` int(10) NOT NULL,
  `s3_price` float(20,2) NOT NULL,
  `s3_amount` float(10,2) NOT NULL,
  `s4` varchar(50) NOT NULL,
  `s4_kilo` int(10) NOT NULL,
  `s4_spins` int(10) NOT NULL,
  `s4_price` float(20,2) NOT NULL,
  `s4_amount` float(10,2) NOT NULL,
  `p1` varchar(50) NOT NULL,
  `p1_quantity` int(20) NOT NULL,
  `p1_price` float(20,2) NOT NULL,
  `p1_amount` float(20,2) NOT NULL,
  `p2` varchar(50) NOT NULL,
  `p2_quantity` int(20) NOT NULL,
  `p2_price` float(20,2) NOT NULL,
  `p2_amount` float(20,2) NOT NULL,
  `grandTotal` float(20,2) NOT NULL,
  `dateAdded` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `status`, `client`, `contact`, `address`, `transactionType`, `dateIn`, `dateOut`, `clerk`, `s1`, `s1_kilo`, `s1_spin`, `s1_price`, `s1_amount`, `s2`, `s2_kilo`, `s2_spins`, `s2_price`, `s2_amount`, `s3`, `s3_kilo`, `s3_spins`, `s3_price`, `s3_amount`, `s4`, `s4_kilo`, `s4_spins`, `s4_price`, `s4_amount`, `p1`, `p1_quantity`, `p1_price`, `p1_amount`, `p2`, `p2_quantity`, `p2_price`, `p2_amount`, `grandTotal`, `dateAdded`) VALUES
(1, 'Active', 'Jhan Rey Gonzales', '09359291412', 'Cabatuan, Isabela', 'Regular', 'May 12, 2017, 11:32pm', 'Pending', 'Gantt Chart', 'Wash', 0, 0, 1.00, 0.00, 'Dry', 0, 0, 2.00, 0.00, 'Dropoff Wash', 0, 0, 3.00, 0.00, 'Dropoff Dryer', 0, 0, 4.00, 0.00, ' Breeze 30mL', 0, 5.00, 0.00, ' Breeze 50mL', 1, 6.00, 6.00, 6.00, 'May 12, 2017'),
(2, 'Completed', 'Bryan Fernandez', '09359291412', 'Cauayan Isabela', 'Regular', 'May 12, 2017, 11:39pm', 'May 12, 2017, 5:42pm', 'Gantt Chart', 'Wash', 50, 7, 1.00, 7.00, 'Dry', 0, 0, 2.00, 0.00, 'Dropoff Wash', 0, 0, 3.00, 0.00, 'Dropoff Dryer', 0, 0, 4.00, 0.00, ' Breeze 30mL', 0, 5.00, 0.00, ' Breeze 50mL', 0, 6.00, 0.00, 7.00, 'May 12, 2017'),
(3, 'Active', 'Jane Doe', '09359291412', 'Isabela, Philippines', 'Regular', 'May 12, 2017, 11:42pm', 'Pending', 'Gantt Chart', 'Wash', 19, 3, 60.00, 180.00, 'Dry', 19, 3, 60.00, 180.00, 'Dropoff Wash', 0, 0, 50.00, 0.00, 'Dropoff Dryer', 0, 0, 50.00, 0.00, ' Breeze', 3, 30.00, 90.00, ' Ariel', 0, 15.00, 0.00, 450.00, 'May 12, 2017'),
(4, 'Completed', 'Stephen Hawking', '09359291412', 'XXX', 'Promo', 'May 14, 2017, 12:58pm', 'February 3, 2019, 12', 'Jhan Rey Gonzales', 'Wash', 0, 0, 50.00, 0.00, 'Dry', 0, 0, 50.00, 0.00, 'Dropoff Wash', 10, 2, 40.00, 80.00, 'Dropoff Dryer', 10, 2, 40.00, 80.00, ' Breeze', 0, 25.00, 0.00, ' Ariel', 2, 10.00, 20.00, 180.00, 'May 14, 2017'),
(5, 'Active', 'Jhan Rey', '09056933637', 'Magdalena Cabatuan Isablea', 'Promo', 'February 3, 2019, 7:48pm', 'Pending', 'Jhan Rey Gonzales', 'Wash', 12, 2, 50.00, 100.00, 'Dry', 12, 2, 50.00, 100.00, 'Dropoff Wash', 0, 0, 40.00, 0.00, 'Dropoff Dryer', 0, 0, 40.00, 0.00, ' Breeze', 0, 25.00, 0.00, ' Ariel', 0, 10.00, 0.00, 200.00, 'February 3, 2019');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pricing_product`
--
ALTER TABLE `pricing_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricing_service`
--
ALTER TABLE `pricing_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pricing_product`
--
ALTER TABLE `pricing_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pricing_service`
--
ALTER TABLE `pricing_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `db_prosecutorapp`
--
CREATE DATABASE IF NOT EXISTS `db_prosecutorapp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_prosecutorapp`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_actions`
--

CREATE TABLE `tbl_actions` (
  `id_action` int(11) NOT NULL,
  `action` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_actions`
--

INSERT INTO `tbl_actions` (`id_action`, `action`) VALUES
(1, 'File in Court'),
(2, 'Dismissed'),
(3, 'Motion Reconsideration'),
(5, 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_actiontaken`
--

CREATE TABLE `tbl_actiontaken` (
  `tactiontaken_id` int(10) NOT NULL,
  `case_id` int(10) NOT NULL,
  `date` datetime(6) NOT NULL,
  `procedure_id` int(10) NOT NULL,
  `status_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cases`
--

CREATE TABLE `tbl_cases` (
  `cases_id` int(10) NOT NULL,
  `nps_docket_no` varchar(50) NOT NULL,
  `complainant_id` longtext NOT NULL,
  `respondent` varchar(50) NOT NULL,
  `offense_id` int(10) NOT NULL,
  `prosecutor_id` int(10) NOT NULL,
  `resolution_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cases`
--

INSERT INTO `tbl_cases` (`cases_id`, `nps_docket_no`, `complainant_id`, `respondent`, `offense_id`, `prosecutor_id`, `resolution_id`) VALUES
(0, '1', '1', '1', 1, 1, 1),
(1, '123', '123', '123', 123, 134, 123);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complainants`
--

CREATE TABLE `tbl_complainants` (
  `id_complainant` int(20) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_complainants`
--

INSERT INTO `tbl_complainants` (`id_complainant`, `lastname`, `firstname`, `middlename`, `gender`) VALUES
(1, 'Doe', 'John', 'Smith', 0),
(2, 'Gonzales', 'Jhan Rey', 'Lardizabal', 0),
(3, 'a', 'a', 'a', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offenses`
--

CREATE TABLE `tbl_offenses` (
  `id_offense` int(11) NOT NULL,
  `offense` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_offenses`
--

INSERT INTO `tbl_offenses` (`id_offense`, `offense`) VALUES
(1, 'Offense 1'),
(2, 'Offense 2'),
(3, 'Offense 3'),
(4, 'Offense 4'),
(5, 'Offense 5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_procedures`
--

CREATE TABLE `tbl_procedures` (
  `id_procedure` int(11) NOT NULL,
  `proceduretaken` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_procedures`
--

INSERT INTO `tbl_procedures` (`id_procedure`, `proceduretaken`) VALUES
(1, 'Procedure 1'),
(2, 'Procedure 2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prosecutors`
--

CREATE TABLE `tbl_prosecutors` (
  `id_prosecutor` int(20) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `gender` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_prosecutors`
--

INSERT INTO `tbl_prosecutors` (`id_prosecutor`, `lastname`, `firstname`, `middlename`, `gender`) VALUES
(1, 'Doe', 'John', 'Smith', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_resolutions`
--

CREATE TABLE `tbl_resolutions` (
  `resolution_id` int(10) NOT NULL,
  `resolution` int(100) NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE `tbl_status` (
  `id_status` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_status`
--

INSERT INTO `tbl_status` (`id_status`, `status`) VALUES
(1, 'File in Court'),
(2, 'Dismissed'),
(3, 'Motion Reconsideration'),
(4, 'Resolved for Filling');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_user` int(11) NOT NULL,
  `access` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `gender` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id_user`, `access`, `lastname`, `firstname`, `middlename`, `gender`) VALUES
(2, 1, '1', '123123 123 12312312312', 'sas', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_actions`
--
ALTER TABLE `tbl_actions`
  ADD PRIMARY KEY (`id_action`);

--
-- Indexes for table `tbl_complainants`
--
ALTER TABLE `tbl_complainants`
  ADD PRIMARY KEY (`id_complainant`);

--
-- Indexes for table `tbl_offenses`
--
ALTER TABLE `tbl_offenses`
  ADD PRIMARY KEY (`id_offense`);

--
-- Indexes for table `tbl_procedures`
--
ALTER TABLE `tbl_procedures`
  ADD PRIMARY KEY (`id_procedure`);

--
-- Indexes for table `tbl_prosecutors`
--
ALTER TABLE `tbl_prosecutors`
  ADD PRIMARY KEY (`id_prosecutor`);

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_actions`
--
ALTER TABLE `tbl_actions`
  MODIFY `id_action` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_complainants`
--
ALTER TABLE `tbl_complainants`
  MODIFY `id_complainant` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_offenses`
--
ALTER TABLE `tbl_offenses`
  MODIFY `id_offense` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_procedures`
--
ALTER TABLE `tbl_procedures`
  MODIFY `id_procedure` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_prosecutors`
--
ALTER TABLE `tbl_prosecutors`
  MODIFY `id_prosecutor` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `db_pyo`
--
CREATE DATABASE IF NOT EXISTS `db_pyo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_pyo`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_colleges`
--

CREATE TABLE `tbl_colleges` (
  `id` int(11) NOT NULL,
  `college_name` varchar(200) NOT NULL,
  `college_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses`
--

CREATE TABLE `tbl_courses` (
  `id` int(11) NOT NULL,
  `course_name` varchar(150) NOT NULL,
  `course_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_students`
--

CREATE TABLE `tbl_students` (
  `id` int(11) NOT NULL,
  `student_id` int(30) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `birthdate` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mother_name` varchar(150) NOT NULL,
  `father_name` varchar(150) NOT NULL,
  `admissionDate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_students`
--

INSERT INTO `tbl_students` (`id`, `student_id`, `fname`, `lname`, `mname`, `birthdate`, `address`, `mother_name`, `father_name`, `admissionDate`) VALUES
(1, 0, '', '', '', '', '', '', '', '0000-00-00'),
(2, 0, 'As', 'As', 'Ddd', '', '', '', '', '0000-00-00'),
(3, 0, 'Jhan Rey', 'Gonzales', 'Lardizabal', '', '', '', '', '0000-00-00'),
(4, 0, 'Jhan Rey', 'Gonzales', 'Lardizabal', '', '', '', '', '0000-00-00'),
(5, 0, '', '', '', '', '', '', '', '0000-00-00'),
(6, 0, '', '', '', '', '', '', '', '0000-00-00'),
(7, 0, '', '', '', '', '', '', '', 'February 3, 2019'),
(8, 0, '', '', '', '', '', '', '', 'February 3, 2019'),
(9, 0, '', '', '', '', '', '', '', 'February 3, 2019'),
(10, 0, '', '', '', '', '', '', '', 'February 5, 2019');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subjects`
--

CREATE TABLE `tbl_subjects` (
  `id` int(11) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `subject_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `birthday` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `position` varchar(50) NOT NULL,
  `access_level` int(10) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_colleges`
--
ALTER TABLE `tbl_colleges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_students`
--
ALTER TABLE `tbl_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_colleges`
--
ALTER TABLE `tbl_colleges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_students`
--
ALTER TABLE `tbl_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `db_real`
--
CREATE DATABASE IF NOT EXISTS `db_real` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_real`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_colleges`
--

CREATE TABLE `tbl_colleges` (
  `id` int(11) NOT NULL,
  `college_code` varchar(20) NOT NULL,
  `college_description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses`
--

CREATE TABLE `tbl_courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `course_description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_courses`
--

INSERT INTO `tbl_courses` (`id`, `course_code`, `course_description`) VALUES
(16, 'BSCS', 'Bachelor Of Science In Computer Science'),
(17, 'BSIT', 'Bachelor Of Science In Information Tchnology'),
(18, 'WTF', 'W T F'),
(19, 'WTF', 'W T F');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_curriculum`
--

CREATE TABLE `tbl_curriculum` (
  `id` int(11) NOT NULL,
  `curriculum_code` varchar(20) NOT NULL,
  `curriculum_desc` varchar(50) NOT NULL,
  `college_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enrolled`
--

CREATE TABLE `tbl_enrolled` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `college_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `curriculum_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_grades`
--

CREATE TABLE `tbl_grades` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `prerequisite_id` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `reexam` int(11) NOT NULL,
  `remarks` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_students`
--

CREATE TABLE `tbl_students` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `birthdate` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `father` varchar(50) NOT NULL,
  `father_occupation` varchar(20) NOT NULL,
  `mother` varchar(50) NOT NULL,
  `mother_occupation` varchar(20) NOT NULL,
  `college` varchar(20) NOT NULL,
  `course` varchar(20) NOT NULL,
  `curriculum` varchar(20) NOT NULL,
  `date_admitted` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_students`
--

INSERT INTO `tbl_students` (`id`, `student_id`, `fname`, `mname`, `lname`, `address`, `birthdate`, `gender`, `father`, `father_occupation`, `mother`, `mother_occupation`, `college`, `course`, `curriculum`, `date_admitted`) VALUES
(1, 20180001, 'Jhan Rey', 'Lardizabal', 'Gonzales', 'Cabatuan, Isabela', 'January 6, 1998', 'Male', 'Reynaldo Gonzales', '', 'Milagros Gonzales', '', 'CCIT', 'BSCS', 'BSCS 2014', 'June 07, 2014'),
(2, 0, 'Xxxxxxxxxxxxxxx', '', '', '', '', '', '', '', '', '', '', '', '', 'February 6, 2019'),
(3, 0, 'Xxxxxxxxxxxxxxx', '', '', '', '', '', '', '', '', '', '', '', '', 'February 6, 2019'),
(4, 0, 'Sdasdasda', '', '', '', '', '', '', '', '', '', '', '', '', 'February 8, 2019'),
(5, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 'February 8, 2019'),
(6, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 'February 8, 2019'),
(7, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 'February 8, 2019'),
(8, 0, 'Jhan Rey', '', '', '', '', '', '', '', '', '', '', '', '', 'February 8, 2019'),
(9, 1, 'Jhan', 'Rey', 'G', 'Magdalena', 'Ca', 'Program Ch', '', '', '', '', '1', '1', '1', 'February 8, 2019');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subjects`
--

CREATE TABLE `tbl_subjects` (
  `id` int(11) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `subject_description` varchar(50) NOT NULL,
  `units` text NOT NULL,
  `prerequisite` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subjects`
--

INSERT INTO `tbl_subjects` (`id`, `subject_code`, `subject_description`, `units`, `prerequisite`) VALUES
(1, 'Zzzzzzzzzzzxxxxxxxxx', 'Zzzzzzzzzzzzz', '', ''),
(2, 'Zzzzzzzzzzz', 'Zzzzzzzzzzzzz', '', ''),
(3, '123456', '123456', '', ''),
(4, 'Xxx', 'Xxx', '', ''),
(5, 'X', 'X', '', 'X'),
(6, 'X', 'X', '', ''),
(7, 'Xxxxxxxx', 'Xxxxxxxxxx', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_colleges`
--
ALTER TABLE `tbl_colleges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_curriculum`
--
ALTER TABLE `tbl_curriculum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_enrolled`
--
ALTER TABLE `tbl_enrolled`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_grades`
--
ALTER TABLE `tbl_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_students`
--
ALTER TABLE `tbl_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_colleges`
--
ALTER TABLE `tbl_colleges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_curriculum`
--
ALTER TABLE `tbl_curriculum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_enrolled`
--
ALTER TABLE `tbl_enrolled`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_grades`
--
ALTER TABLE `tbl_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_students`
--
ALTER TABLE `tbl_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `db_sti`
--
CREATE DATABASE IF NOT EXISTS `db_sti` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_sti`;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `code`, `title`) VALUES
(6, 'BSCS', 'Bachelor in Science in Computer Science'),
(7, 'BSAT', 'Bachelor in Science in Accounting Technology'),
(8, 'BSIT', 'Bachelor in Science in Information Technology'),
(9, 'IT', 'Information Technology'),
(10, 'CET', 'Computer and Electronics Technology');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `grade_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `gen_ave` varchar(30) NOT NULL,
  `school_year` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `unit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`grade_id`, `student_id`, `subject_id`, `gen_ave`, `school_year`, `semester`, `remarks`, `unit`) VALUES
(663, 51, 131, '1.50', 'First Year', '1st', 'Very Good', 3),
(664, 51, 132, '1.50', 'First Year', '1st', 'Very Good', 3),
(665, 51, 133, '1.25', 'First Year', '1st', 'Very Good', 3),
(666, 51, 134, '1.25', 'First Year', '1st', 'Very Good', 4),
(667, 51, 135, '1.25', 'First Year', '1st', 'Very Good', 1),
(668, 51, 136, '1.00', 'First Year', '1st', 'Excellent', 3),
(669, 51, 137, '1.00', 'First Year', '1st', 'Excellent', 2),
(670, 51, 138, '1.00', 'First Year', '1st', 'Excellent', 3),
(671, 23, 163, '1.00', 'First Year', '2nd', 'Excellent', 3),
(672, 23, 164, '1.00', 'First Year', '2nd', 'Excellent', 4),
(673, 23, 165, '1.00', 'First Year', '2nd', 'Excellent', 4),
(674, 23, 166, '1.00', 'First Year', '2nd', 'Excellent', 3),
(675, 23, 168, '1.00', 'First Year', '2nd', 'Excellent', 3),
(676, 23, 169, '1.00', 'First Year', '2nd', 'Excellent', 2),
(677, 23, 170, '1.00', 'First Year', '2nd', 'Excellent', 3);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `course` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `student_no` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `year_level` varchar(100) NOT NULL,
  `term` varchar(100) NOT NULL,
  `student_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `firstname`, `lastname`, `password`, `gender`, `course`, `address`, `contact`, `photo`, `student_no`, `status`, `year_level`, `term`, `student_status`) VALUES
(22, 'Jonnel Ray', 'Acostoy', 'j', 'Male', 'BSIT', 'Bacolod', '09362154039', 'upload/19690_419968988091510_2003011347_n.jpg', '01720100001', 'active', 'First Year', '1st', 'Irregular'),
(23, 'JR', 'Ang', 'r', 'Male', 'BSIT', 'Bacolod', '09382651402', 'upload/69624_419989601422782_90451266_n.jpg', '01720100002', 'active', 'First Year', '2nd', 'Regular'),
(24, 'Wendell', 'Francisco', 'w', 'Male', 'BSIT', 'Bacolod', '09358462054', 'upload/69624_419989601422782_90451266_n.jpg', '01720100003', '', 'First Year', '1st', 'Irregular'),
(25, 'Jade ', 'Omangayon', 'j', 'Male', 'BSIT', 'Bacolod', '0125487568', 'upload/72920_419993158089093_1036712210_n.jpg', '01720100004', '', 'First Year', '2nd', 'Regular'),
(26, 'Clarisse Joanne', 'Quinto', 'cj', 'Female', 'BSIT', 'Silay', '09658589848', 'upload/69624_419989601422782_90451266_n.jpg', '01720100005', '', 'First Year', '2nd', 'Irregular'),
(27, 'Aldrin Jay', 'Fuentes', 'aj', 'Male', 'BSIT', 'Saravia', '09365487236', 'upload/222683_419992111422531_710097129_n.jpg', '01720100006', '', 'Fourth', '', ''),
(28, 'Daresa ', 'Alolor', 'd', 'Female', 'BSIT', 'Silay', '0236875462', 'upload/19729_419991678089241_651129214_n.jpg', '01720100007', '', 'Fourth', '', ''),
(29, 'Mariestella', 'Santillan', 'm', 'Female', 'BSIT', 'Silay', '03269587456', 'upload/222754_419991128089296_1808353796_n.jpg', '01720100008', '', 'Fourth', '', ''),
(30, 'Oliver', 'Martinez', 'o', 'Male', 'BSIT', 'Catabla', '02147569865', 'upload/67281_419969851424757_397713077_n.jpg', '01720100009', '', 'Fourth', '', ''),
(31, 'Reyden', 'Lamig', 'r', 'Male', 'BSIT', 'Talisay', '09025487562', 'upload/223397_419990678089341_1327250400_n.jpg', '01720100010', '', 'Fourth', '', ''),
(32, 'Arjay', 'Valladarez', 'a', 'Male', 'BSIT', 'Bacolod', '09365482614', 'upload/222610_419988838089525_2056922731_n.jpg', '01720100011', '', 'Fourth', '', ''),
(33, 'Ricky', 'Hegino', 'r', 'Male', 'BSIT', 'Victorias', '09365425879', 'upload/69624_419989601422782_90451266_n.jpg', '01720100012', '', 'Third', '', ''),
(34, 'Kayvin Joshua', 'Nobleza', 'k', 'Male', 'BSIT', 'Talisay', '09587463259', 'upload/19729_419991804755895_1497610900_n.jpg', '01720100013', '', 'Third', '', ''),
(35, 'Dave', 'Macellana', 'd', 'Male', 'BSIT', 'Talisay', '02587496584', 'upload/28887_419991644755911_1991666035_n.jpg', '01720100014', '', 'Third', '', ''),
(36, 'Neri James', 'Yusala', 'j', 'Male', 'BSIT', 'Bacolod', '09065484120', 'upload/23905_10152405107074240_1249032324_n.jpg', '01720100015', 'active', 'Third', '', ''),
(37, 'Neri James', 'Yusala', 'nj', 'Male', 'BSIT', 'Bacolod', '09065484120', 'upload/11353_419989368089472_1146683879_n.jpg', '01720100016', '', 'Third', '', ''),
(38, 'Ziek', 'Lumogdang', 'z', 'Male', 'BSIT', 'Bacolod', '09657845623', 'upload/69624_419989601422782_90451266_n.jpg', '01720100017', '', 'Second', '', ''),
(39, 'Jay', 'Hegino', 'j', 'Male', 'BSIT', 'Talisay', '09050624568', 'upload/64818_419991544755921_1245275723_n.jpg', '01720100018', '', 'Second', '', ''),
(40, 'Kris', 'Mayo', 'k', 'Female', 'BSIT', 'Silay', '09325487123', 'upload/44351_419991981422544_242320805_n.jpg', '01720100019', '', 'Second', '', ''),
(41, 'Dannie', 'Villarias', 'd', 'Female', 'BSIT', 'Silay', '09382546201', 'upload/222610_419988838089525_2056922731_n.jpg', '01720100020', '', 'Second', '', ''),
(42, 'Christine', 'Diaz', 'c', 'Female', 'BSIT', 'Saravia', '09365481254', 'upload/19729_419991804755895_1497610900_n.jpg', '01720100021', '', 'First', '', ''),
(43, 'Gemar', 'Diaz', 'g', 'Male', 'BSIT', 'Talisay', '09093652140', 'upload/222683_419992111422531_710097129_n.jpg', '01720100022', '', 'First', '', ''),
(44, 'Jing', 'Fuentes', 'j', 'Female', 'BSIT', 'Silay', '09482635001', 'upload/67281_419969851424757_397713077_n.jpg', '01720100023', '', 'First', '', ''),
(45, 'Maica', 'Santillan', 'm', 'Female', 'BSIT', 'Saravia', '09365875623', 'upload/72920_419993158089093_1036712210_n.jpg', '01720100024', '', 'First', '', ''),
(46, 'Laarnie', 'Sanchez', 'l', 'Female', 'BSIT', 'Bacolod', '09394856230', 'upload/149434_419992328089176_2137045757_n.jpg', '01720100025', '', 'First', '', ''),
(47, 'Econ', 'Villacampa', 'e', 'Female', 'BSCS', 'Silay', '09364756201', 'upload/222754_419991128089296_1808353796_n.jpg', '01720100026', '', 'Fourth', '', ''),
(48, 'Julius', 'Vistar', 'sti', 'Male', 'BSIT', 'Bacolod', '09385214562', 'upload/28887_419991644755911_1991666035_n.jpg', '01720100054', 'active', 'Fourth', '', ''),
(50, 'john kevin ', 'lorayna ', 'teph', '', 'BSIT', '', '', 'upload/1240518_10200243579963092_2073745461_n.jpg', '100175', 'active', 'First Year', '2nd', 'Irregular'),
(51, 'leocadio', 'lea', 'm', '', 'BSIT', '', '', 'upload/14179_560838690598595_2144623357_s.jpg', '00002', 'active', 'First Year', '1st', 'Regular');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `year` varchar(100) NOT NULL,
  `term` varchar(100) NOT NULL,
  `pre_requisites` varchar(100) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `code`, `title`, `unit`, `year`, `term`, `pre_requisites`, `course_id`) VALUES
(131, 'ALGEBRA', 'Algebra', '3', 'First Year', '1st', '', 8),
(132, 'COMART1', 'Communication Arts 1', '3', 'First Year', '1st', '', 8),
(133, 'COMPFUND', 'Computer Fundamentals', '3', 'First Year', '1st', '', 8),
(134, 'COPRO-1', 'Computer Programming 1', '4', 'First Year', '1st', '', 8),
(135, 'MATPLUS', 'Math Plus', '1', 'First Year', '1st', '', 8),
(136, 'NSTP001', 'National Service Training Program 1*', '3', 'First Year', '1st', '', 8),
(137, 'PHYEDU1', 'Physical Education 1', '2', 'First Year', '1st', '', 8),
(138, 'PROFETH', 'Professional Ethics with Values Formation', '3', 'First Year', '1st', '', 8),
(139, 'ALGEBRA', 'Algebra', '3', 'First Year', '1st', '', 6),
(140, 'BASICON', 'Basic Computer Concepts', '3', 'First Year', '1st', '', 6),
(141, 'COMART1', 'Communication Arts 1', '3', 'First Year', '1st', '', 6),
(142, 'COPRO-1', 'Computer Programming 1', '4', 'First Year', '1st', '', 6),
(143, 'MATPLUS', 'Math Plus', '1', 'First Year', '1st', '', 6),
(144, 'NSTP001', 'National Service Training Program 1*', '3', 'First Year', '1st', '', 6),
(145, 'OFFPRO1', 'Office Productivity Tools 1', '1', 'First Year', '1st', '', 6),
(146, 'PHYEDU1', 'Physical Education 1', '2', 'First Year', '1st', '', 6),
(147, 'PROFETH', 'Professional Ethics with Values Formation', '3', 'First Year', '1st', '', 6),
(148, 'COLALGE', 'College Algebra', '3', 'First Year', '1st', 'MATPLUS', 7),
(149, 'COMART1', 'Communication Arts 1', '3', 'First Year', '1st', '', 7),
(150, 'COMPFUND', 'Computer Fundamentals', '3', 'First Year', '1st', '', 7),
(151, 'MATPLUS', 'Math Plus', '1', 'First Year', '1st', 'COLALGE', 7),
(152, 'NSTP001', 'National Service Training Program 1*', '3', 'First Year', '1st', '', 7),
(153, 'PHYEDU1', 'Physical Education 1', '2', 'First Year', '1st', '', 7),
(154, 'PRINMGT', 'Principles of Management', '3', 'First Year', '1st', '', 7),
(155, 'COMART2', 'Communication Arts 2', '3', 'First Year', '2nd', 'COMART1', 6),
(156, 'COPRO-2', 'Computer Programming 2', '4', 'First Year', '2nd', 'COPRO-1', 6),
(157, 'DATSRUC', 'Data Structures', '4', 'First Year', '2nd', 'COPRO-1', 6),
(158, 'DISTRUC', 'Discrete Structures', '3', 'First Year', '2nd', 'ALGEBRA', 6),
(159, 'NSTP002', 'National Service Training Program 2', '3', 'First Year', '2nd', '', 6),
(160, 'OFFPRO1', 'Office Productivity Tools 2', '1', 'First Year', '1st', 'OFFPRO1', 6),
(161, 'PHYEDU1', 'Physical Education 2', '2', 'First Year', '2nd', 'PHYEDU1', 6),
(162, 'TRIGONO', 'Trigonometry', '3', 'First Year', '2nd', 'ALGEBRA', 6),
(163, 'COMART2', 'Communication Arts 2', '3', 'First Year', '2nd', 'COMART1', 8),
(164, 'COPRO-2', 'Computer Programming 2', '4', 'First Year', '2nd', 'COPRO-1', 8),
(165, 'DATSRUC', 'Data Structures', '4', 'First Year', '2nd', 'COPRO-1', 8),
(166, 'DISTRUC', 'Discrete Structures', '3', 'First Year', '2nd', 'COPRO-1', 8),
(168, 'NTROART', 'Introduction to Arts', '3', 'First Year', '2nd', '', 8),
(169, 'PHYEDU2', 'Physical Education 2', '2', 'First Year', '2nd', 'PHYEDU1', 8),
(170, 'TRIGONO', 'Trigonometry', '3', 'First Year', '2nd', 'ALGEBRA', 8),
(171, 'COMART2', 'Communication Arts 2', '3', 'First Year', '2nd', 'COMART1', 7),
(172, 'FILIP01', 'Komunikasyon sa Akademikong Filipino', '3', 'First Year', '2nd', '', 7),
(173, 'FUNACCT1', 'Fundamentals of Accounting 1', '6', 'First Year', '2nd', '', 7),
(174, 'MATINVE', 'Mathematics of Investment', '3', 'First Year', '2nd', 'COLALGE', 7),
(175, 'NSTP002', 'National Service Training Program 2', '3', 'First Year', '2nd', '', 7),
(176, 'PHYEDU2', 'Physical Education 2', '2', 'First Year', '2nd', 'PHYEDU1', 7),
(177, 'PRIMARK', 'Principles and Methods of Marketing', '3', 'First Year', '2nd', '', 7),
(178, 'COMART3', 'Communication Arts 3', '3', 'Second Year', '1st', 'COMART2', 8),
(179, 'COMART3', 'Communication Arts 3', '3', 'Second Year', '1st', 'COMART2', 8),
(180, 'COPRO-3', 'Computer Programming 3', '4', 'Second Year', '1st', 'COPRO-2', 8),
(181, 'LOGSIGN', 'Logic Design and Switching', '3', 'Second Year', '1st', 'DISTRUC', 8),
(182, 'PHILGOV', 'Philippine History, Government and Constitution', '3', 'Second Year', '1st', '', 8),
(183, 'PHYEDU3', 'Physical Education 3', '2', 'Second Year', '1st', 'PHYEDU1', 8),
(184, 'PHYSIC1', 'Physics 1', '4', 'Second Year', '1st', '', 8),
(185, 'PROSTAT', 'Probability and Statistics', '3', 'Second Year', '1st', 'ALGEBRA', 8),
(186, 'SOCULITA', 'Society, Culture and Information Technology with Family Planning', '3', 'Second Year', '1st', '', 8),
(187, 'COMART4', 'Communication Arts 4', '3', 'Second Year', '2nd', 'COMART3', 8),
(188, 'CORLANG', 'Computer Organization and Assembly Language', '4', 'Second Year', '2nd', 'LOGSIGN', 8),
(189, 'PHILMAN ', 'Philosophy of Man ', '3', 'Second Year', '2nd', '', 8),
(190, 'PHYEDU4', 'Physical Education 4', '2', 'Second Year', '2nd', 'PHYEDU1', 8),
(191, 'PHYSIC2', 'Physics 2', '4', 'Second Year', '2nd', 'PHYSIC1', 8),
(192, 'SADSIGN', 'System Analysis and Design', '3', 'Second Year', '2nd', 'COPRO-1', 8),
(193, 'THEODBS', 'Theory of Database Systems', '4', 'Second Year', '2nd', 'DATSRUC', 8),
(194, 'ACCPRIN', 'Accounting Principles', '3', 'Third Year', '1st', 'ALGEBRA', 8),
(195, 'ADDBASE', 'Advance Database Systems', '3', 'Third Year', '1st', 'THEODBS', 8),
(196, 'FILIP01', 'Komunikasyon sa Akademikong Filipino', '3', 'Third Year', '1st', '', 8),
(197, 'ITFELE1', 'IT Free Elective 1', '0', 'Third Year', '1st', '', 8),
(198, 'OPERSYS', 'Operating Systems', '3', 'Third Year', '1st', 'CORLANG', 8),
(199, 'SOFTWEN', 'Software Engineering', '4', 'Third Year', '1st', 'SADSIGN', 8),
(200, 'WEBPROG', 'Web Programming', '3', 'Third Year', '1st', 'COPRO-1', 8),
(201, 'COMNETS', 'Computer Networks', '4', 'Third Year', '2nd', 'OPERSYS', 8),
(202, 'ECOTAXA', 'Economics with Taxation and Agrarian Reform', '3', 'Third Year', '2nd', '', 8),
(203, 'FILIP02', 'Pagbasa at Pagsulat Tungo sa pananaliksik', '3', 'Third Year', '2nd', 'FILIP01', 8),
(204, 'ITELEC1', 'IT Elective 1', '3', 'Third Year', '2nd', '', 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `user_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`, `user_type`) VALUES
(2, 'Staff', 's', 'Maries', 'Santillan', 'Encoder'),
(3, 'Registrar', 'reg', 'Mealyn', 'Tabujara', 'Registrar'),
(4, 'marie', 'm', 'Mariestella', 'Santillan', 'Encoder'),
(5, 'admin', 'admin', 'admin', 'admin', 'Encoder');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=678;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'pyo', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"columbandb\",\"curriculumdb\",\"db_laundry\",\"db_prosecutorapp\",\"db_pyo\",\"db_real\",\"db_sti\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db_real\",\"table\":\"tbl_subjects\"},{\"db\":\"db_real\",\"table\":\"tbl_students\"},{\"db\":\"db_real\",\"table\":\"tbl_courses\"},{\"db\":\"db_sti\",\"table\":\"course\"},{\"db\":\"db_sti\",\"table\":\"users\"},{\"db\":\"db_sti\",\"table\":\"students\"},{\"db\":\"db_real\",\"table\":\"tbl_curriculum\"},{\"db\":\"db_real\",\"table\":\"tbl_enrolled\"},{\"db\":\"db_real\",\"table\":\"tbl_grades\"},{\"db\":\"curriculumdb\",\"table\":\"tblsubject\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-02-10 06:22:48', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
