-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2021 at 07:39 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orenda`
--

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `remarks` text NOT NULL,
  `job_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `job_status` enum('available','unassign','assign') NOT NULL DEFAULT 'available',
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `remarks`, `job_date`, `start_time`, `end_time`, `job_status`, `user_id`) VALUES
(33, 'JAJAJJAA', '1. Server 2. Client', '2021-09-08', '11:09:35', '11:09:35', 'available', NULL),
(34, 'JAJAJJAA', '1. Server 2. Client', '2021-09-08', '11:09:35', '11:09:35', 'available', NULL),
(35, 'JAJAJJAA', '1. Server 2. Client', '2021-09-08', '11:09:35', '11:09:35', 'available', NULL),
(36, 'JAJAJJAA', '1. Server 2. Client', '2021-09-08', '11:09:35', '11:09:35', 'available', NULL),
(37, 'JAJAJJAA', '1. Server 2. Client', '2021-09-08', '11:09:35', '11:09:35', 'available', NULL),
(38, 'JAJAJJAA', '1. Server 2. Client', '0000-00-00', '11:09:35', '11:09:35', 'available', NULL),
(39, 'JAJAJJAA', '1. Server 2. Client', '2021-09-08', '11:09:35', '11:09:35', 'available', NULL),
(40, 'JAJAJJAA', '1. Server 2. Client', '2021-09-08', '11:09:35', '11:09:35', 'available', NULL),
(41, 'JAJAJJAA', '1. Server 2. Client', '2021-09-08', '11:09:35', '11:09:35', 'available', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password`) VALUES
(1, 'Irin Saputra', 'irins@gmail.com', 'qwerty'),
(2, 'Miracle', 'miracle@gmail.com', 'qwerty');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
