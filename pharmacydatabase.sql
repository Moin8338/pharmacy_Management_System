-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2022 at 10:36 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacydatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `campany`
--

CREATE TABLE `campany` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PHONENUMBER` varchar(12) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `NAME` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `createlist`
--

CREATE TABLE `createlist` (
  `ID` int(11) NOT NULL,
  `CATEGORY` varchar(30) NOT NULL,
  `COMPANY` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `QUANTITY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `credit`
--

CREATE TABLE `credit` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `AMOUNT` double NOT NULL,
  `DATE` date NOT NULL,
  `CATEGORY` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `AGE` int(11) NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `AMOUNT` double NOT NULL,
  `DATE` date NOT NULL,
  `CONTACT` varchar(12) NOT NULL,
  `QUANTITY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `c_medicine_list`
--

CREATE TABLE `c_medicine_list` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `PRICE` double NOT NULL,
  `QUANTITY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deleted_medicine`
--

CREATE TABLE `deleted_medicine` (
  `MED_ID` int(11) NOT NULL,
  `CAMPANY` varchar(30) NOT NULL,
  `CATEGORY` varchar(30) NOT NULL,
  `MEDICINENAME` varchar(50) NOT NULL,
  `BUYINGPRICE` double NOT NULL,
  `SELLINGPRICE` double NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `expenises`
--

CREATE TABLE `expenises` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `AMOUNT` double NOT NULL,
  `DATE` date NOT NULL,
  `CATEGORY` varchar(30) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `PAIDDATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `ID` int(11) NOT NULL,
  `MED_ID` int(11) NOT NULL,
  `CAMPANY` varchar(50) NOT NULL,
  `CATEGORY` varchar(50) NOT NULL,
  `MEDICINENAME` varchar(50) NOT NULL,
  `BUYINGPRICE` double NOT NULL,
  `SELLINGPRICE` double NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `DATE` date NOT NULL,
  `EXPDATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment_history`
--

CREATE TABLE `payment_history` (
  `NAME` varchar(50) NOT NULL,
  `AMOUNT` int(11) NOT NULL,
  `DATE` date NOT NULL,
  `CATEGORY` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `USERNAME` varchar(50) NOT NULL,
  `ADMINNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `STORENAME` varchar(50) NOT NULL,
  `MOBILENUMBER` varchar(12) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `GSTNUMBER` varchar(10) NOT NULL,
  `REGISTER_NUMBER` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sellingmedicine`
--

CREATE TABLE `sellingmedicine` (
  `ID` int(11) NOT NULL,
  `MED_ID` int(11) NOT NULL,
  `NAME` int(11) NOT NULL,
  `QTY` int(11) NOT NULL,
  `AMOUNT` double NOT NULL,
  `DATE` date NOT NULL,
  `SELLINGPRICE` double NOT NULL,
  `CID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campany`
--
ALTER TABLE `campany`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `credit`
--
ALTER TABLE `credit`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `expenises`
--
ALTER TABLE `expenises`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sellingmedicine`
--
ALTER TABLE `sellingmedicine`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
