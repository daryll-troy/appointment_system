-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2023 at 03:10 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appointment_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment_history`
--

CREATE TABLE `appointment_history` (
  `id` int(11) NOT NULL,
  `contact_information_id` int(11) NOT NULL,
  `preferrences_id` int(11) NOT NULL,
  `notes_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment_history`
--

INSERT INTO `appointment_history` (`id`, `contact_information_id`, `preferrences_id`, `notes_id`, `created_at`) VALUES
(1, 39, 13, 6, '2023-07-11 20:49:40'),
(2, 1, 14, 7, '2023-07-11 20:51:20');

-- --------------------------------------------------------

--
-- Table structure for table `contact_information`
--

CREATE TABLE `contact_information` (
  `id` int(11) NOT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `company_organization` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_information`
--

INSERT INTO `contact_information` (`id`, `contact_no`, `full_name`, `company_organization`, `created_at`, `updated_at`) VALUES
(1, '09301696212', 'daryll troy calmona', 'udd', '2023-07-11 19:19:38', '2023-07-11 20:51:20'),
(3, '09302581254', 'gist', 'microb', '2023-07-11 19:19:38', '2023-07-11 19:19:38'),
(4, '09264141214', 'eric', 'brian', '2023-07-11 19:19:38', '2023-07-11 19:19:38'),
(5, '09201696212', 'daryll troy calmona', 'blinc', '2023-07-11 19:19:38', '2023-07-11 19:19:38'),
(6, '09301722546', 'paulo roman', 'blinc', '2023-07-11 19:19:38', '2023-07-11 19:19:38'),
(8, '+63930159235', 'kelra', 'onix', '2023-07-11 19:19:38', '2023-07-11 19:19:38'),
(9, '09254133265', 'imee', 'w', '2023-07-11 19:19:38', '2023-07-11 19:19:38'),
(10, '+63920154258', 'imee', 'w', '2023-07-11 19:19:38', '2023-07-11 19:19:38'),
(11, '+639524121289', 'dars', 'ipol', '2023-07-11 19:19:38', '2023-07-11 19:19:38'),
(31, '09402566984', 'dennis', 'asus', '2023-07-11 19:19:38', '2023-07-11 19:19:38'),
(33, '09281764598', 'nathan', 'franciso inc.', '2023-07-11 19:19:38', '2023-07-11 19:19:38'),
(35, '09172836159', 'ricci brillantes', 'star magic', '2023-07-11 19:27:01', '2023-07-11 19:29:38'),
(38, '09153462582', 'zedrict', 'benedicky', '2023-07-11 20:46:30', '2023-07-11 20:46:30'),
(39, '09152463152', 'jeremy dasig', 'upang', '2023-07-11 20:49:40', '2023-07-11 20:49:40');

-- --------------------------------------------------------

--
-- Table structure for table `contact_information_dump`
--

CREATE TABLE `contact_information_dump` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `company_organization` varchar(100) DEFAULT NULL,
  `was_changed_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_information_dump`
--

INSERT INTO `contact_information_dump` (`id`, `full_name`, `contact_no`, `company_organization`, `was_changed_at`) VALUES
(1, 'Daryll', '09301696212', 'Troy', '2023-07-11 15:14:00'),
(2, 'bea', '09301696212', 'joy', '2023-07-11 15:14:34'),
(3, 'bea', '09301696212', 'joy', '2023-07-11 15:21:38'),
(4, 'daryll', '09301696212', 'troyie', '2023-07-11 15:25:27'),
(5, 'man', '09301696212', 'comp', '2023-07-11 15:31:58'),
(6, 'man', '09301696212', NULL, '2023-07-11 15:50:51'),
(7, 'wander', '09301696212', NULL, '2023-07-11 15:52:31'),
(8, 'wander', '09301696212', NULL, '2023-07-11 15:54:18'),
(9, 'dentist', '09301696212', NULL, '2023-07-11 15:56:33'),
(10, 'mathew', '09301696212', NULL, '2023-07-11 15:59:29'),
(11, 'wisdom', '09301696212', 'tooth', '2023-07-11 16:02:41'),
(12, 'lebron', '09301696212', 'james', '2023-07-11 16:29:09'),
(13, 'imelda', '09301696212', 'asus', '2023-07-11 19:07:23'),
(14, 'cisco', '09301696212', 'netacad', '2023-07-11 19:24:37'),
(15, 'jamin', '09172836159', 'yu', '2023-07-11 19:28:26'),
(16, 'christina aguilera', '09172836159', 'brazzers', '2023-07-11 19:29:38'),
(17, 'cisco', '09301696212', 'netacad', '2023-07-11 20:51:20');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `purpose_of_visit` varchar(100) DEFAULT NULL,
  `contact_information_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `purpose_of_visit`, `contact_information_id`, `created_at`) VALUES
(1, 'matingas na batang hamog', 33, '2023-07-11 19:17:11'),
(2, 'nothing', 35, '2023-07-11 19:27:01'),
(3, 'nothing', 35, '2023-07-11 19:28:26'),
(4, 'modeling', 35, '2023-07-11 19:29:38'),
(5, 'visiting mancup', 38, '2023-07-11 20:46:30'),
(6, 'upang wants to be internship again', 39, '2023-07-11 20:49:40'),
(7, 'i want to graduate now', 1, '2023-07-11 20:51:20');

-- --------------------------------------------------------

--
-- Table structure for table `preferrences`
--

CREATE TABLE `preferrences` (
  `id` int(11) NOT NULL,
  `preferred_time` time DEFAULT NULL,
  `preferred_date` date DEFAULT NULL,
  `number_of_visitors` int(11) NOT NULL,
  `contact_information_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `preferrences`
--

INSERT INTO `preferrences` (`id`, `preferred_time`, `preferred_date`, `number_of_visitors`, `contact_information_id`, `created_at`) VALUES
(1, '10:00:00', '2023-07-13', 1, 5, '2023-07-11 19:16:28'),
(2, '10:00:00', '2023-07-31', 1, 6, '2023-07-11 19:16:28'),
(3, '09:00:00', '2023-07-19', 4, 9, '2023-07-11 19:16:28'),
(4, '12:00:00', '2023-07-25', 5, 11, '2023-07-11 19:16:28'),
(5, '10:00:00', '2023-07-13', 3, 1, '2023-07-11 19:16:28'),
(6, '10:00:00', '2023-07-13', 3, 31, '2023-07-11 19:16:28'),
(7, '10:00:00', '2023-07-14', 6, 1, '2023-07-11 19:16:28'),
(8, '11:00:00', '2023-07-25', 4, 33, '2023-07-11 19:16:28'),
(9, '12:00:00', '2023-07-24', 1, 35, '2023-07-11 19:27:01'),
(10, '12:00:00', '2023-07-24', 1, 35, '2023-07-11 19:28:26'),
(11, '02:00:00', '2023-07-26', 2, 35, '2023-07-11 19:29:38'),
(12, '01:00:00', '2023-07-25', 2, 38, '2023-07-11 20:46:30'),
(13, '11:00:00', '2023-07-19', 2, 39, '2023-07-11 20:49:40'),
(14, '11:00:00', '2023-07-14', 1, 1, '2023-07-11 20:51:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment_history`
--
ALTER TABLE `appointment_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointment_history_ibfk_contact_information` (`contact_information_id`),
  ADD KEY `appointment_history_ibfk_notes` (`notes_id`),
  ADD KEY `appointment_history_ibfk_preferrences` (`preferrences_id`);

--
-- Indexes for table `contact_information`
--
ALTER TABLE `contact_information`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact_no` (`contact_no`);

--
-- Indexes for table `contact_information_dump`
--
ALTER TABLE `contact_information_dump`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_ibfk_contact_information` (`contact_information_id`);

--
-- Indexes for table `preferrences`
--
ALTER TABLE `preferrences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `preferrences_ibfk_contact_information` (`contact_information_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment_history`
--
ALTER TABLE `appointment_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_information`
--
ALTER TABLE `contact_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `contact_information_dump`
--
ALTER TABLE `contact_information_dump`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `preferrences`
--
ALTER TABLE `preferrences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment_history`
--
ALTER TABLE `appointment_history`
  ADD CONSTRAINT `appointment_history_ibfk_contact_information` FOREIGN KEY (`contact_information_id`) REFERENCES `contact_information` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appointment_history_ibfk_notes` FOREIGN KEY (`notes_id`) REFERENCES `notes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appointment_history_ibfk_preferrences` FOREIGN KEY (`preferrences_id`) REFERENCES `preferrences` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_ibfk_contact_information` FOREIGN KEY (`contact_information_id`) REFERENCES `contact_information` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `preferrences`
--
ALTER TABLE `preferrences`
  ADD CONSTRAINT `preferrences_ibfk_contact_information` FOREIGN KEY (`contact_information_id`) REFERENCES `contact_information` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
