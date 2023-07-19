-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: July 15, 2023 at 01:20 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbattendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumber`
--

CREATE TABLE IF NOT EXISTS `tblautonumber` (
  `AutoID` int(11) NOT NULL AUTO_INCREMENT,
  `AutoStart` varchar(30) NOT NULL,
  `AutoEnd` int(11) NOT NULL,
  `AutoInc` int(11) NOT NULL,
  `AutoType` varchar(30) NOT NULL,
  PRIMARY KEY (`AutoID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblautonumber`
--

INSERT INTO `tblautonumber` (`AutoID`, `AutoStart`, `AutoEnd`, `AutoInc`, `AutoType`) VALUES
(1, '2023', 56, 1, 'AuthPrint');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE IF NOT EXISTS `tblcourse` (
  `CourseID` int(11) NOT NULL AUTO_INCREMENT,
  `CourseCode` varchar(30) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `DepartmentID` int(11) NOT NULL,
  PRIMARY KEY (`CourseID`),
  KEY `DepartmentID` (`DepartmentID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tblcourse`
--

INSERT INTO `tblcourse` (`CourseID`, `CourseCode`, `Description`, `DepartmentID`) VALUES
(3, 'BSIT', 'BACHELOR OF SCIENCE IN INFORMATION TECHNOLOGY', 1),
(4, 'BEED', 'BACHELOR OF SCIENCE IN ELEMENTARY EDUCATION', 4),
(5, 'BSBA Financial Management', 'BACHELOR OF SCIENCE IN BUSINES ADMINISTRATION', 3),
(6, 'BSED', 'BACHELOR  OF SCIENCE IN SECONDARY EDUCATION', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartment`
--

CREATE TABLE IF NOT EXISTS `tbldepartment` (
  `DepartmentID` int(11) NOT NULL AUTO_INCREMENT,
  `Department` varchar(30) NOT NULL,
  `Description` varchar(99) NOT NULL,
  PRIMARY KEY (`DepartmentID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbldepartment`
--

INSERT INTO `tbldepartment` (`DepartmentID`, `Department`, `Description`) VALUES
(1, 'ITE', 'IT DEPARTMENT'),
(3, 'BITE', 'BUSINESS AND IT EDUCATION'),
(4, 'TEA', 'TEACHER EDUCATION DEPARTMENT');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE IF NOT EXISTS `tblstudent` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StudentID` varchar(30) NOT NULL,
  `Firstname` varchar(99) NOT NULL,
  `Lastname` varchar(99) NOT NULL,
  `Middlename` varchar(99) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Gender` varchar(30) NOT NULL,
  `BirthDate` date NOT NULL,
  `Age` int(11) NOT NULL,
  `ContactNo` varchar(30) NOT NULL,
  `YearLevel` varchar(11) NOT NULL,
  `CourseID` int(11) NOT NULL,
  `StudPhoto` varchar(255) NOT NULL,
  `Cand_Status` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `StudentID` (`StudentID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`ID`, `StudentID`, `Firstname`, `Lastname`, `Middlename`, `Address`, `Gender`, `BirthDate`, `Age`, `ContactNo`, `YearLevel`, `CourseID`, `StudPhoto`, `Cand_Status`) VALUES
(1, '023256469', 'KENJIE', 'PALACIOS', 'ECHALAR', 'KABANKALAN CITY', 'Male', '1992-11-20', 24, '0232546886', 'Fourth', 3, 'photo/login.png', 'Candidate'),
(2, '12312312', 'JAKE', 'PALMA', 'ECHALAR', 'KABANKALAN CITY', 'Male', '1990-11-11', 26, '12312312312', 'Second', 4, 'photo/import1.png', 'Candidate'),
(3, '8583362', 'JANRY', 'TAN', 'MELMOM', 'KABANKALAN CITY', 'Male', '1991-08-16', 25, '12312312312', 'First', 3, '', 'Candidate'),
(4, '0010266936', 'JASON', 'BATUTU', 'RERE', 'KABANKALAN CITY', 'Male', '1994-02-14', 23, '21312312312321', 'First', 3, 'photo/Koala.jpg', 'Candidate'),
(5, '8798794', 'ALMA', 'RECARDO', 'TORRES', 'HIMAMAYLAN CITY', 'Female', '1989-04-26', 27, '09047894777', 'Second', 4, '', ''),
(6, '8675543', 'CHESKA', 'RAMIREZ', 'UY', 'KABANKALAN CITY', 'Female', '1990-01-31', 27, '09567435788', 'Third', 5, '', ''),
(7, '1253235', 'RAMON', 'CORPUZ', 'SANTOS', 'DANCALAN, ILOG', 'Male', '1994-02-17', 23, '09567453453', 'First', 3, '', ''),
(8, '654567896', 'KAREN', 'VARGAS', 'ONG', 'KABANKALAN CITY', 'Female', '1993-03-22', 23, '09457545699', 'First', 3, '', ''),
(9, '5434689', 'KENMARK', 'REYES', 'DELA CRUZ', 'SUAY, HIMAMAYLAN CITY', 'Male', '1992-11-16', 24, '09567534689', 'First', 6, '', ''),
(10, '57053590', 'CHERYL', 'LACSON', 'PADILLA', 'KABANKALAN CITY', 'Female', '1990-05-25', 26, '09206543456', 'Second', 3, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbltimetable`
--


CREATE TABLE IF NOT EXISTS `tbltimetable` (
  `TimeTableID` int(11) NOT NULL AUTO_INCREMENT,
  `StudentID` varchar(90) NOT NULL,
  `TimeInAM` varchar(30) NOT NULL,
  `TimeOutAM` varchar(30) NOT NULL,
  `TimeInPM` varchar(30) NOT NULL,
  `TimeOutPM` varchar(30) NOT NULL,
  `AttendDate` date NOT NULL,
  PRIMARY KEY (`TimeTableID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbltimetable`
--

INSERT INTO `tbltimetable` (`TimeTableID`, `StudentID`, `TimeInAM`, `TimeOutAM`, `TimeInPM`, `TimeOutPM`, `AttendDate`) VALUES
(1, '0001', '08:39 AM', '09:30 AM', '01:30 PM', '02:00 PM', '2023-07-18'),
(2, '0002', '08:40 AM', '09:30 AM', '01:40 PM', '02:00 PM', '2023-07-18'),
(3, '0003', '08:30 AM', '09:30 AM', '01:28 PM', '02:00 PM', '2023-07-18');


-- --------------------------------------------------------

--
-- Table structure for table `tblverifytimeintimeout`
--

CREATE TABLE IF NOT EXISTS `tblverifytimeintimeout` (
  `VerifyID` int(11) NOT NULL AUTO_INCREMENT,
  `StudentID` varchar(90) NOT NULL,
  `TimeIn` varchar(30) NOT NULL,
  `TimeOut` varchar(30) NOT NULL,
  `Verification` varchar(90) NOT NULL,
  `DateValidation` date NOT NULL,
  PRIMARY KEY (`VerifyID`),
  UNIQUE KEY `StudentID` (`StudentID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblverifytimeintimeout`
--

INSERT INTO `tblverifytimeintimeout` (`VerifyID`, `StudentID`, `TimeIn`, `TimeOut`, `Verification`, `DateValidation`) VALUES
(1, '0001', '08:39 AM', '', 'TimeIn', '2023-07-15'),
(2, '0002', '08:40 AM', '', 'TimeIn', '2023-07-15'),
(3, '0003', '08:30 AM', '', 'TimeIn', '2023-07-15');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE IF NOT EXISTS `useraccounts` (
  `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACCOUNT_NAME` varchar(255) NOT NULL,
  `ACCOUNT_USERNAME` varchar(255) NOT NULL,
  `ACCOUNT_PASSWORD` text NOT NULL,
  `ACCOUNT_TYPE` varchar(30) NOT NULL,
  `EMPID` int(11) NOT NULL,
  `USERIMAGE` varchar(255) NOT NULL,
  PRIMARY KEY (`ACCOUNT_ID`),
  UNIQUE KEY `ACCOUNT_USERNAME` (`ACCOUNT_USERNAME`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`ACCOUNT_ID`, `ACCOUNT_NAME`, `ACCOUNT_USERNAME`, `ACCOUNT_PASSWORD`, `ACCOUNT_TYPE`, `EMPID`, `USERIMAGE`) VALUES
(1, 'Sellyn', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 1111, 'photos/import2.png'),
(2, 'jannele', 'jannele', '474ba67bdb289c6263b36dfd8a7bed6c85b04943', 'Administrator', 1112, ''),
(3, 'andrei', 'andrei', '474ba67bdb289c6263b36dfd8a7bed6c85b04943', 'Administrator', 1113, ''),
(4, 'lyka', 'lyka', '12dea96fec20593566ab75692c9949596833adc9', 'Registrar', 1114, ''),
(5, 'dimple', 'dimps', '24ce6d489183f0ce4bd322ec5f59b45f9177288d', 'Registrar', 1115, ''),
(6, 'lea', 'Lea', '5e0b5b0eae521294ac33b471d64dcee6acff3799', 'Registrar', 1116, '');
