-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 16, 2020 at 02:26 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trialcalculation`
--

-- --------------------------------------------------------

--
-- Table structure for table `officer`
--

DROP TABLE IF EXISTS `officer`;
CREATE TABLE IF NOT EXISTS `officer` (
  `OfficerID` int(50) NOT NULL AUTO_INCREMENT,
  `OfficerName` varchar(100) NOT NULL,
  `NIC` varchar(15) NOT NULL,
  `MobileNo` int(10) NOT NULL,
  PRIMARY KEY (`OfficerID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `officer`
--

INSERT INTO `officer` (`OfficerID`, `OfficerName`, `NIC`, `MobileNo`) VALUES
(1, 'Chethana', '995150255V', 769878756),
(2, 'Eshini', '956874521V', 768954578);

-- --------------------------------------------------------

--
-- Table structure for table `officerlogin`
--

DROP TABLE IF EXISTS `officerlogin`;
CREATE TABLE IF NOT EXISTS `officerlogin` (
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `OfficerID` int(50) NOT NULL,
  PRIMARY KEY (`UserName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `officerlogin`
--

INSERT INTO `officerlogin` (`UserName`, `Password`, `OfficerID`) VALUES
('dewmi', 'dew123', 1),
('Eshini', 'eshu123', 2);

-- --------------------------------------------------------

--
-- Table structure for table `prospect`
--

DROP TABLE IF EXISTS `prospect`;
CREATE TABLE IF NOT EXISTS `prospect` (
  `NICNo` varchar(15) NOT NULL,
  `ProspectName` varchar(100) NOT NULL,
  PRIMARY KEY (`NICNo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prospect`
--

INSERT INTO `prospect` (`NICNo`, `ProspectName`) VALUES
('987546231V', 'Vihanga'),
('956874569V', 'Chathumi'),
('972473375V', 'Maduka');

-- --------------------------------------------------------

--
-- Table structure for table `repaymentschedule`
--

DROP TABLE IF EXISTS `repaymentschedule`;
CREATE TABLE IF NOT EXISTS `repaymentschedule` (
  `RepaymentNo` int(11) NOT NULL AUTO_INCREMENT,
  `TCNo` int(50) NOT NULL,
  `InstalmentNo` int(50) NOT NULL,
  `RentalValue` double NOT NULL,
  `InterestAmount` double NOT NULL,
  `CapitalAmount` double NOT NULL,
  `CapitalBalance` double NOT NULL,
  PRIMARY KEY (`RepaymentNo`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `repaymentschedule`
--

INSERT INTO `repaymentschedule` (`RepaymentNo`, `TCNo`, `InstalmentNo`, `RentalValue`, `InterestAmount`, `CapitalAmount`, `CapitalBalance`) VALUES
(1, 1, 0, 0, 0, 0, 200000),
(2, 1, 1, 17769.76, 2000, 15769.76, 184230.24),
(3, 1, 2, 17769.76, 1842.3, 15927.46, 168302.78),
(4, 1, 3, 17769.76, 1683.02, 16086.74, 152216.04),
(5, 1, 4, 17769.76, 1522.16, 16247.6, 135968.44),
(6, 1, 5, 17769.76, 1359.68, 16410.08, 119558.36),
(7, 1, 6, 17769.76, 1195.58, 16574.18, 102984.18),
(8, 1, 7, 17769.76, 1029.84, 16739.92, 86244.26),
(9, 1, 8, 17769.76, 862.44, 16907.32, 69336.94),
(10, 1, 9, 17769.76, 693.36, 17076.4, 52260.54),
(11, 1, 10, 17769.76, 522.6, 17247.16, 35013.38),
(12, 1, 11, 17769.76, 350.13, 17419.63, 17593.75),
(13, 1, 12, 17769.76, 175.93, 17593.83, -0.08),
(14, 2, 0, 0, 0, 0, 100000),
(15, 2, 1, 8884.88, 1000, 7884.88, 92115.12),
(16, 2, 2, 8884.88, 921.15, 7963.73, 84151.39),
(17, 2, 3, 8884.88, 841.51, 8043.37, 76108.02),
(18, 2, 4, 8884.88, 761.08, 8123.8, 67984.22),
(19, 2, 5, 8884.88, 679.84, 8205.04, 59779.18),
(20, 2, 6, 8884.88, 597.79, 8287.09, 51492.09),
(21, 2, 7, 8884.88, 514.92, 8369.96, 43122.13),
(22, 2, 8, 8884.88, 431.22, 8453.66, 34668.47),
(23, 2, 9, 8884.88, 346.68, 8538.2, 26130.27),
(24, 2, 10, 8884.88, 261.3, 8623.58, 17506.69),
(25, 2, 11, 8884.88, 175.06, 8709.82, 8796.87),
(26, 2, 12, 8884.88, 87.96, 8796.92, -0.05),
(27, 3, 0, 0, 0, 0, 150000),
(28, 3, 1, 7061.03, 1500, 5561.03, 144438.97),
(29, 3, 2, 7061.03, 1444.38, 5616.65, 138822.32),
(30, 3, 3, 7061.03, 1388.22, 5672.81, 133149.51),
(31, 3, 4, 7061.03, 1331.49, 5729.54, 127419.97),
(32, 3, 5, 7061.03, 1274.19, 5786.84, 121633.13),
(33, 3, 6, 7061.03, 1216.33, 5844.7, 115788.43),
(34, 3, 7, 7061.03, 1157.88, 5903.15, 109885.28),
(35, 3, 8, 7061.03, 1098.85, 5962.18, 103923.1),
(36, 3, 9, 7061.03, 1039.23, 6021.8, 97901.3),
(37, 3, 10, 7061.03, 979.01, 6082.02, 91819.28),
(38, 3, 11, 7061.03, 918.19, 6142.84, 85676.44),
(39, 3, 12, 7061.03, 856.76, 6204.27, 79472.17),
(40, 3, 13, 7061.03, 794.72, 6266.31, 73205.86),
(41, 3, 14, 7061.03, 732.05, 6328.98, 66876.88),
(42, 3, 15, 7061.03, 668.76, 6392.27, 60484.61),
(43, 3, 16, 7061.03, 604.84, 6456.19, 54028.42),
(44, 3, 17, 7061.03, 540.28, 6520.75, 47507.67),
(45, 3, 18, 7061.03, 475.07, 6585.96, 40921.71),
(46, 3, 19, 7061.03, 409.21, 6651.82, 34269.89),
(47, 3, 20, 7061.03, 342.69, 6718.34, 27551.55),
(48, 3, 21, 7061.03, 275.51, 6785.52, 20766.03),
(49, 3, 22, 7061.03, 207.66, 6853.37, 13912.66),
(50, 3, 23, 7061.03, 139.12, 6921.91, 6990.75),
(51, 3, 24, 7061.03, 69.9, 6991.13, -0.38);

-- --------------------------------------------------------

--
-- Table structure for table `trialcalculation`
--

DROP TABLE IF EXISTS `trialcalculation`;
CREATE TABLE IF NOT EXISTS `trialcalculation` (
  `Trial_id` int(50) NOT NULL AUTO_INCREMENT,
  `Cus_id` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Loan_Amount` double NOT NULL,
  `No_Of_Months` int(5) NOT NULL,
  `Interest_Rate` double NOT NULL,
  `Rental_Amount` double NOT NULL,
  PRIMARY KEY (`Trial_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trialcalculation`
--

INSERT INTO `trialcalculation` (`Trial_id`, `Cus_id`, `Date`, `Loan_Amount`, `No_Of_Months`, `Interest_Rate`, `Rental_Amount`) VALUES
(1, '987546231V', '2020-12-16', 200000, 12, 12, 17769.76),
(2, '956874569V', '2020-12-16', 100000, 12, 12, 8884.88),
(3, '972473375V', '2020-12-16', 150000, 24, 12, 7061.03);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
