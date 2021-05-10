-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2021 at 12:46 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bigbull_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `amc_type`
--

CREATE TABLE `amc_type` (
  `AMC_id` int(11) NOT NULL,
  `AMC_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fund_history`
--

CREATE TABLE `fund_history` (
  `fund_id` int(11) NOT NULL,
  `1st_yr_value` float NOT NULL,
  `3rd_yr_value` float NOT NULL,
  `5th_yr_value` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fund_investment_type`
--

CREATE TABLE `fund_investment_type` (
  `fund_id` int(11) NOT NULL,
  `amoubt_per_month` float NOT NULL,
  `sip` tinyint(1) NOT NULL,
  `one_Time` tinyint(1) NOT NULL,
  `onetime_Amount` float NOT NULL,
  `returns_per_annum` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fund_sort`
--

CREATE TABLE `fund_sort` (
  `fund_id` int(11) NOT NULL,
  `1st_yr_value` float NOT NULL,
  `3rd_yr_value` float NOT NULL,
  `5th_yr_value` float NOT NULL,
  `ratings` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fund_transaction`
--

CREATE TABLE `fund_transaction` (
  `transaction_id` int(15) NOT NULL,
  `fund_id` int(15) NOT NULL,
  `fund_name` varchar(30) NOT NULL,
  `fund_size` float NOT NULL,
  `fund_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mutual_funds`
--

CREATE TABLE `mutual_funds` (
  `fund_id` int(15) NOT NULL,
  `fund_name` varchar(30) NOT NULL,
  `fund_Returns` float DEFAULT NULL,
  `AMC_id` int(15) DEFAULT NULL,
  `category_id` int(15) DEFAULT NULL,
  `Risk` varchar(10) DEFAULT NULL,
  `Fund Size` float DEFAULT NULL,
  `Type of investment` varchar(10) DEFAULT NULL,
  `Rating` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mutual_fund_register`
--

CREATE TABLE `mutual_fund_register` (
  `register_id` int(10) NOT NULL,
  `register_date` date NOT NULL,
  `fund_id` int(10) NOT NULL,
  `fund_name` varchar(30) NOT NULL,
  `user_id` int(15) NOT NULL,
  `user_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `user_id` int(11) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `phone_number` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amc_type`
--
ALTER TABLE `amc_type`
  ADD PRIMARY KEY (`AMC_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `fund_history`
--
ALTER TABLE `fund_history`
  ADD PRIMARY KEY (`fund_id`);

--
-- Indexes for table `fund_investment_type`
--
ALTER TABLE `fund_investment_type`
  ADD PRIMARY KEY (`fund_id`);

--
-- Indexes for table `fund_sort`
--
ALTER TABLE `fund_sort`
  ADD PRIMARY KEY (`fund_id`);

--
-- Indexes for table `fund_transaction`
--
ALTER TABLE `fund_transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `mutual_funds`
--
ALTER TABLE `mutual_funds`
  ADD PRIMARY KEY (`fund_id`),
  ADD KEY `AMC_id` (`AMC_id`);

--
-- Indexes for table `mutual_fund_register`
--
ALTER TABLE `mutual_fund_register`
  ADD PRIMARY KEY (`register_id`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
