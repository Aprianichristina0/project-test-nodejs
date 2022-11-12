-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2022 at 10:39 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `utaradb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bankCustomer`
--

CREATE TABLE `bankCustomer` (
  `cust_id` int(11) NOT NULL,
  `scheme_id` int(11) NOT NULL,
  `scheme_name` varchar(200) NOT NULL,
  `scheme_amount` float NOT NULL,
  `payment_amount` float NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `cust_contact` varchar(255) NOT NULL,
  `cust_email` varchar(255) NOT NULL,
  `cust_address` varchar(255) NOT NULL,
  `cust_asset` varchar(255) NOT NULL,
  `asset_price` float NOT NULL,
  `img` varchar(200) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bankCustomer`
--

INSERT INTO `bankCustomer` (`cust_id`, `scheme_id`, `scheme_name`, `scheme_amount`, `payment_amount`, `cust_name`, `cust_contact`, 'cust_email`,`cust_address`, `cust_asset`, `asset_price`, `img`, `date`) VALUES
(001, 1, 'Home Loan', 300000, 25000, 'Christina', '081386364099', 'aprianichristina0@gmail.com', 'Perumahan Telaga Harapan Blok H4 no 29','70000', 50000, 'home.jpg', '2022-11-09'),
(002, 2, 'Hotel Loan', 500000, 35000, 'Apriani', '085773315755', 'christinaapriani0@gmail.com', 'Perumahan Telaga Harapan Blok H4 no 30','80000', 60000, 'hotel.jpg', '2022-11-10'),
(003, 3, 'Motorcyle Loan', 30000, 4444, 'Eko', '087780128341', 'rusdiyantoo182@gmail.com','Jl. Komarudin 1 Cakung', '100000', 70000, 'motor.png', '2022-11-11'),
(004, 4, 'Car Loan', 40000, 5555, 'Rudianto', '081386364209', 'queenthaitea@gmail.com','Jl. Komarudin 2 Cakung', '130000', 80000, 'car.png', '2022-11-11');
-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pay_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `remaining` float NOT NULL,
  `status` varchar(11) NOT NULL,
  `fine` float NOT NULL,
  `pay_date` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pay_id`, `cust_id`, `amount`, `remaining`, `status`, `fine`, `pay_date`) VALUES
(1, 001, 25000, 275000, 'Late', 50, '2021-05-12'),
(2, 003, 25000, 275000, 'Late', 50, '2021-05-15'),
(3, 002, 25000, 275000, 'On Time', 0, '2021-05-08'),
(4, 002, 25000, 250000, 'Late', 50, '2021-06-13'),
(5, 003, 25000, 250000, 'Late', 50, '2021-06-13'),
(6, 004, 3333.33, 16666.7, 'Late', 50, '2021-04-24'),
(7, 004, 3333.33, 13333.4, 'On Time', 0, '2021-04-11'),
(8, 004, 6666.66, 6666.74, 'Delayed', 66.6666, '2021-05-15'),
(9, 004, 6666.66, 6666.74, 'Delayed', 66.6666, '2021-05-08'),
(10, 004, 3333.33, 10000.1, 'On Time', 0, '2021-04-18'),
(11, 004, 3333.33, 6666.77, 'On Time', 0, '2021-04-25'),
(12, 002, 25000, 225000, 'On Time', 0, '2021-06-18'),
(13, 002, 50000, 175000, 'Delayed', 500, '2021-09-24'),
(14, 002, 50000, 125000, 'Delayed', 500, '2021-12-11'),
(15, 003, 50000, 200000, 'Delayed', 500, '2021-08-07'),
(16, 003, 50000, 150000, 'Delayed', 500, '2021-10-15'),
(17, 003, 25000, 125000, 'Late', 50, '2021-11-07'),
(18, 003, 25000, 100000, 'On Time', 0, '2021-12-05'),
(19, 006, 25000, 275000, 'Late', 50, '2021-04-11'),
(20, 006, 50000, 225000, 'Delayed', 500, '2021-06-13'),
(21, 007, 3333.33, 16666.7, 'Late', 50, '2021-04-11'),
(22, 006, 25000, 200000, 'Late', 50, '2021-04-11');

-- --------------------------------------------------------

--
-- Table structure for table `loan_info`
--

CREATE TABLE `loan_info` (
  `scheme_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `scheme_amount` float NOT NULL,
  `remaining_amount` float NOT NULL,
  `payment_no` int(11) NOT NULL,
  `payment_remaining` int(11) NOT NULL,
  `payment_amount` float NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_info`
--

INSERT INTO `loan_info` (`scheme_id`, `cust_id`, `scheme_amount`, `remaining_amount`, `payment_no`, `payment_remaining`, `payment_amount`, `date`) VALUES
(1, 001, 300000, 275000, 12, 11, 25000, '2021-04-09'),
(1, 002, 300000, 125000, 12, 5, 25000, '2021-04-09'),
(1, 003, 300000, 100000, 12, 4, 25000, '2021-04-09'),
(2, 004, 20000, 6666.77, 6, 2, 3333.33, '2021-04-09'),
(1, 005, 300000, 300000, 12, 12, 25000, '2021-04-10'),
(1, 006, 300000, 200000, 12, 8, 25000, '2021-04-10'),
(2, 007, 20000, 16666.7, 6, 5, 3333.33, '2021-04-10'),
(1, 008, 300000, 300000, 12, 12, 25000, '2022-04-19'),
(2, 009, 20000, 20000, 6, 6, 3333, '2022-04-19');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `pay_no` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(200) NOT NULL,
  `Time` varchar(255) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`pay_no`, `cust_id`, `cust_name`, `Time`, `status`) VALUES
(1, 001, 'Christina', '2021-05-09', 'paid'),
(2, 001, 'Christina', '2021-06-08', 'paid'),
(3, 001, 'Christina', '2021-07-08', 'paid'),
(4, 001, 'Christina', '2021-08-07', 'paid'),
(5, 001, 'Christina', '2021-09-06', 'paid'),
(6, 001, 'Christina', '2021-10-06', 'paid'),
(7, 001, 'Christina', '2021-11-05', 'paid'),
(8, 001, 'Christina', '2021-12-05', ''),
(9, 001, 'Christina', '2022-01-04', ''),
(10, 001, 'Christina', '2022-02-03', ''),
(11, 001, 'Christina', '2022-03-05', ''),
(12, 001, 'Christina', '2022-04-04', ''),
(1, 002, 'Apriani', '2021-05-09', 'paid'),
(2, 002, 'Apriani', '2021-06-08', 'paid'),
(3, 002, 'Apriani', '2021-07-08', 'paid'),
(4, 002, 'Apriani', '2021-08-07', 'paid'),
(5, 002, 'Apriani', '2021-09-06', 'unpaid'),
(6, 002, 'Apriani', '2021-10-06', 'paid'),
(7, 002, 'Apriani', '2021-11-05', 'paid'),
(8, 002, 'Apriani', '2021-12-05', 'unpaid'),
(9, 002, 'Apriani', '2022-01-04', 'unpaid'),
(10, 002, 'Apriani', '2022-02-03', 'unpaid'),
(11, 002, 'Apriani', '2022-03-05', 'unpaid'),
(12, 002, 'Apriani', '2022-04-04', 'unpaid'),
(1, 003, 'Eko', '2021-05-09', 'paid'),
(2, 003, 'Eko', '2021-06-08', 'unpaid'),
(3, 003, 'Eko', '2021-07-08', 'paid'),
(4, 003, 'Eko', '2021-08-07', 'paid'),
(5, 003, 'Eko', '2021-09-06', 'paid'),
(6, 003, 'Eko', '2021-10-06', 'paid'),
(7, 003, 'Eko', '2021-11-05', 'paid'),
(8, 003, 'Eko', '2021-12-05', 'paid'),
(9, 003, 'Eko', '2022-01-04', 'unpaid'),
(10, 003, 'Eko', '2022-02-03', 'unpaid'),
(11, 003, 'Eko', '2022-03-05', 'unpaid'),
(12, 003, 'Eko', '2022-04-04', 'unpaid'),
(1, 004, 'Raju', '2021-04-16', 'paid'),
(2, 004, 'Raju', '2021-04-23', 'unpaid'),
(3, 004, 'Raju', '2021-04-30', 'unpaid'),
(4, 004, 'Raju', '2021-05-07', 'unpaid'),
(5, 004, 'Raju', '2021-05-14', 'unpaid'),
(6, 004, 'Raju', '2021-05-21', 'unpaid'),
(1, 005, 'Upin', '2021-04-11', 'unpaid'),
(2, 005, 'Upin', '2021-04-12', 'unpaid'),
(3, 005, 'Upin', '2021-04-13', 'unpaid'),
(4, 005, 'Upin', '2021-04-14', 'unpaid'),
(5, 005, 'Upin', '2021-04-15', 'unpaid'),
(6, 005, 'Upin', '2021-04-16', 'unpaid'),
(7, 005, 'Upin', '2021-04-17', 'unpaid'),
(8, 005, 'Upin', '2021-04-18', 'unpaid'),
(9, 005, 'Upin', '2021-04-19', 'unpaid'),
(10, 005, 'Upin', '2021-04-20', 'unpaid'),
(11, 005, 'Upin', '2021-04-21', 'unpaid'),
(12, 005, 'Upin', '2021-04-22', 'unpaid'),
(1, 006, 'Upin', '2021-04-10', 'paid'),
(2, 006, 'Upin', '2021-04-10', 'paid'),
(3, 006, 'Upin', '2021-04-10', 'paid'),
(4, 006, 'Upin', '2021-04-10', 'paid'),
(5, 006, 'Upin', '2021-04-10', 'unpaid'),
(6, 006, 'Upin', '2021-04-10', 'unpaid'),
(7, 006, 'Upin', '2021-04-10', 'unpaid'),
(8, 006, 'Upin', '2021-04-10', 'unpaid'),
(9, 006, 'Upin', '2021-04-10', 'unpaid'),
(10, 006, 'Upin', '2021-04-10', 'unpaid'),
(11, 006, 'Upin', '2021-04-10', 'unpaid'),
(12, 006, 'Upin', '2021-04-10', 'unpaid'),
(1, 007, 'Loik', '2021-04-10', 'paid'),
(2, 007, 'Loik', '2021-04-10', 'paid'),
(3, 007, 'Loik', '2021-04-10', 'paid'),
(4, 007, 'Loik', '2021-04-10', 'paid'),
(5, 007, 'Loik', '2021-04-10', 'paid'),
(6, 007, 'Loik', '2021-04-10', 'paid'),
(1, 001, 'Hanazuki', '2022-05-19', 'unpaid'),
(2, 001, 'Hanazuki', '2022-06-18', 'paid'),
(3, 001, 'Hanazuki', '2022-07-18', 'unpaid'),
(4, 001, 'Hanazuki', '2022-08-17', 'unpaid'),
(5, 001, 'Hanazuki', '2022-09-16', 'unpaid'),
(6, 001, 'Hanazuki', '2022-10-16', 'unpaid'),
(7, 001, 'Hanazuki', '2022-11-15', 'unpaid'),
(8, 001, 'Hanazuki', '2022-12-15', 'unpaid'),
(9, 001, 'Hanazuki', '2023-01-14', 'unpaid'),
(10, 001, 'Hanazuki', '2023-02-13', 'unpaid'),
(11, 001, 'Hanazuki', '2023-03-15', 'unpaid'),
(12, 001, 'Hanazuki', '2023-04-14', 'unpaid'),
(1, 002, 'Vorhidov', '2023-04-26', 'unpaid'),
(2, 002, 'Vorhidov', '2023-05-03', 'unpaid'),
(3, 002, 'Vorhidov', '2023-05-10', 'unpaid'),
(4, 002, 'Vorhidov', '2023-05-17', 'unpaid'),
(5, 002, 'Vorhidov', '2023-05-24', 'unpaid'),
(6, 002, 'Vorhidov', '2023-05-26', 'unpaid'),
(7, 002, 'Vorhidov', '2023-05-31', 'unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `scheme`
--

CREATE TABLE `scheme` (
  `scheme_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `amount` float NOT NULL,
  `r_asset` float NOT NULL,
  `no_payment` int(11) NOT NULL,
  `Pay_amount` float NOT NULL,
  `duration` varchar(20) NOT NULL,
  `date` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scheme`
--

INSERT INTO `scheme` (`scheme_id`, `name`, `amount`, `r_asset`, `no_payment`, `Pay_amount`, `duration`, `date`) VALUES
(1, 'Home Loan', 300000, 10000, 12, 25000, 'month', '2022-04-19 '),
(2, 'Hotel Loan', 500000, 10000, 12, 25000, 'month', '2022-04-19 '),
(3, 'Motorcyle Loan', 300000, 10000, 12, 25000, 'week', '2022-04-19 '),
(4, 'Car Loan', 200000, 5000, 6, 3333.33, 'month', '2022-04-19 ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `idcard_no` int(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `father_name` varchar(200) NOT NULL,
  `jobs` varchar(200) NOT NULL,
  `likee` varchar(200) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`,`idcard_no`, `name`, `email`, `father_name`, `jobs`, `likee`, `pass`, `time`) VALUES
(1, '3216084407910000','Christina', 'aprianichristina0@gmail.com', 'Heri susanto', 'Fullstack Developer','Programming', 'chanchan88', '2022-04-19 07:21:50')
(2, '3316084407910001','Apriani', 'christinaapriani0@gmail.com', 'Susanto Heri', 'Backend Developer','Programming', 'chanchan182', '2022-04-19 08:21:50')
(3, '3416084407910002','Eko', 'rusdiyantoo182@gmail.com', 'Sukamto', 'Mechanic','Motorcycle', 'blink182', '2022-04-19 09:21:50')
(4, '3516084407910003','Rudianto', 'queenthaitea@gmail.com', 'Tosukam', 'Mechanic','Restoration Car Machine', '182blink', '2022-04-19 10:21:50')
(5, '3616084407910004','Loik', 'whitekoffie@gmail.com', 'Mohhammed', 'Project Manager' ,' Programming', 'selangor88', '2022-04-19 11:21:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bankCustomer`
--
ALTER TABLE `bankCustomer`
  ADD PRIMARY KEY (`cust_id`),
  ADD KEY `scheme` (`scheme_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `loan_info`
--
ALTER TABLE `loan_info`
  ADD KEY `scheme_id` (`scheme_id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `cust_id_2` (`cust_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `scheme`
--
ALTER TABLE `scheme`
  ADD PRIMARY KEY (`scheme_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bankCustomer`
--
ALTER TABLE `bankCustomer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `loan_info`
--
ALTER TABLE `loan_info`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `scheme`
--
ALTER TABLE `scheme`
  MODIFY `scheme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;