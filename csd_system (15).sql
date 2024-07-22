-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2024 at 09:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csd_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `id_emp`
--

CREATE TABLE `id_emp` (
  `id` int(6) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(80) NOT NULL,
  `gen` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `cadre_id` tinyint(4) NOT NULL,
  `desig_id` int(5) NOT NULL,
  `internal_desig_id` int(4) NOT NULL,
  `group_id` int(5) NOT NULL,
  `user_type` char(9) NOT NULL,
  `telephone_no` varchar(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1,
  `is_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_deleted` enum('YES','NO') NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `id_emp`
--

INSERT INTO `id_emp` (`id`, `first_name`, `middle_name`, `last_name`, `gen`, `dob`, `mobile_no`, `email_id`, `cadre_id`, `desig_id`, `internal_desig_id`, `group_id`, `user_type`, `telephone_no`, `username`, `password`, `status`, `is_created`, `is_deleted`) VALUES
(2, 'Jane', 'Mary', 'Johnson', 'Female', '1992-05-15', '9876543211', 'jane.johnson@example.com', 2, 2, 2, 2, 'admin', '1234567891', 'admin', 'admin', 1, '2024-07-09 05:43:44', 'NO'),
(1, 'John', 'Doe', 'Smith', 'Male', '1990-01-01', '9876543210', 'john.doe@example.com', 1, 1, 1, 1, 'user', '1234567890', 'user', 'user', 1, '2024-07-09 05:43:44', 'NO'),
(3, 'ane', 'Mary', 'Johnson', 'Female', '1992-05-15', '9876543211', 'jane.johnson@example.com', 2, 2, 2, 2, 'user', '1234567891', 'user2', 'user2', 1, '2024-07-09 05:43:44', 'NO'),
(4, 'Kane', 'Mary', 'Johnson', 'Female', '1992-05-15', '9876543211', 'jane.johnson@example.com', 2, 2, 2, 2, 'user', '1234567891', 'user3', 'user3', 1, '2024-07-09 05:43:44', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `sno` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `item_image` varchar(400) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_quantity` decimal(10,2) DEFAULT 0.00,
  `date_&_time_added` datetime NOT NULL DEFAULT current_timestamp(),
  `Remarks` text DEFAULT NULL,
  `Unit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`sno`, `itemId`, `name`, `category`, `description`, `item_image`, `price`, `stock_quantity`, `date_&_time_added`, `Remarks`, `Unit`) VALUES
(29, 102, 'b', 'C1', 'b', 'cat-3.png', 54.50, 54.55, '2024-07-21 19:32:52', 'good', 'gm'),
(30, 104, 'c1', 'C1', 'c1', 'cat-3.png', 57.50, 57.50, '2024-07-21 19:33:43', 'good1', 'Kg'),
(31, 105, 'd', 'C1', 'd', 'cat-1.png', 5.00, 56.00, '2024-07-21 19:38:22', 'good', 'Kg'),
(32, 107, 'e', 'C1', 'e', 'cat-1.png', 89.00, 75.00, '2024-07-21 19:38:56', 'good', 'Kg'),
(33, 108, 'f', 'C1', 'f', 'cat-1.png', 8.00, 89.20, '2024-07-21 19:39:26', 'good', 'gm'),
(34, 109, 'g', 'C1', 'g', 'cat-3.png', 9.00, 89.50, '2024-07-21 19:40:00', 'good', 'Kg'),
(35, 111, 'm', 'C1', 'm', 'cat-3.png', 89.00, 89.01, '2024-07-21 19:41:08', 'good', 'L'),
(36, 112, 'p', 'C1', 'p', 'cat-3.png', 12.00, 12.30, '2024-07-21 19:41:44', 'good', 'Kg'),
(37, 160, 'l', 'C1', 'l', 'cat-3.png', 12.00, 12.01, '2024-07-21 19:42:20', 'good', 'ml'),
(38, 130, 'z', 'C1', 'z', 'cat-1.png', 78.00, 78.00, '2024-07-21 19:42:49', 'good', 'Kg'),
(39, 1266, 'opop', 'C3', 'opop', 'cat-3.png', 56.56, 56.65, '2024-07-22 01:21:22', 'good', 'ml'),
(40, 5050, 'tmto', 'C3', 'tmto', 'cat-3.png', 6.50, 59.50, '2024-07-22 23:11:18', 'good one', 'Kg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `sno` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `date_and_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`sno`, `user_id`, `order_id`, `status`, `date_and_time`) VALUES
(23, 1, 463568, 2, '2024-07-22 23:18:28'),
(24, 1, 324158, 0, '2024-07-22 23:20:06'),
(25, 3, 935720, 2, '2024-07-22 23:21:47');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `sno` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `price` decimal(10,3) DEFAULT NULL,
  `date_and_time` datetime DEFAULT current_timestamp(),
  `Unit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`sno`, `order_id`, `item_id`, `item_name`, `quantity`, `price`, `date_and_time`, `Unit`) VALUES
(53, 463568, 108, 'f', 5.50, 8.000, '2024-07-22 23:18:28', 'gm'),
(54, 324158, 160, 'l', 2.00, 12.000, '2024-07-22 23:20:06', 'ml'),
(55, 935720, 160, 'l', 5.00, 12.000, '2024-07-22 23:21:47', 'ml');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `id_emp`
--
ALTER TABLE `id_emp`
  ADD PRIMARY KEY (`username`,`desig_id`),
  ADD KEY `fk_id_emp_id_desig` (`desig_id`),
  ADD KEY `fk_id_emp_group_id` (`group_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `itemId` (`itemId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
