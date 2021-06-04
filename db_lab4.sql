-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2021 at 07:46 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_lab4`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(20) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `course_description` varchar(200) NOT NULL,
  `department_id` int(20) NOT NULL,
  `professor_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_description`, `department_id`, `professor_id`) VALUES
(1, 'CC471', 'Database Systems', 1, 2),
(2, 'EME405', 'Automatic Control', 3, 1),
(3, 'EMP046', 'Engineering Drawing ', 2, 5),
(4, 'HS102', 'Human Rights', 5, 1),
(5, 'MP101', 'Mathematics 1', 6, 4),
(6, 'GPE101', 'Engineering Chemistry', 4, 6),
(7, 'CC212', 'Digital Logic Circuits 1', 1, 7),
(8, 'CC181', 'Discrete Structures for Computing', 1, 3),
(9, 'CSE102', 'Computer Programming', 6, 10),
(10, 'EME207', 'Electric Circuits', 3, 11),
(11, 'CA342', 'Design Engineering', 2, 12),
(12, 'MP301', 'Probability and statistics', 4, 14),
(13, 'CC489', 'Numerical Analysis', 1, 8),
(14, 'HS402', 'Marketing', 5, 13),
(15, 'CC372', 'Systems Programming', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(20) NOT NULL,
  `department_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`) VALUES
(1, 'CCE'),
(2, 'CAE'),
(3, 'EME'),
(4, 'GPE'),
(5, 'Humanities'),
(6, 'MPE');

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE `professor` (
  `Professor_id` int(20) NOT NULL,
  `Professor_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `professor`
--

INSERT INTO `professor` (`Professor_id`, `Professor_name`) VALUES
(1, 'Ahmed Mohamed'),
(2, 'Hicham El-Mongui'),
(3, 'Amr El-Masry'),
(4, 'Islam Abdelmaksoud'),
(5, 'Maged Nageeb'),
(6, 'Yehia El-Shazly'),
(7, 'Magdy Abdelazeem'),
(8, 'Amr Abdelrazek'),
(9, 'Bassant Mohamed'),
(10, 'Saleh El-Shehaby'),
(11, 'Mohamed Zakaria'),
(12, 'Mostafa Mahmoud'),
(13, 'Abeer Hassan'),
(14, 'Mervat Mikhail');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `professor_id` (`professor_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`Professor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `Professor_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `course_ibfk_2` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`Professor_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
