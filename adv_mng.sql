-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 26, 2024 at 02:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adv_mng`
--

-- --------------------------------------------------------

--
-- Table structure for table `adv-nr`
--

CREATE TABLE `adv-nr` (
  `id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `user_img_src` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adv-nr`
--

INSERT INTO `adv-nr` (`id`, `name`, `uname`, `pwd`, `user_img_src`) VALUES
(1, 'Naimish Rathod', 'n', 'n', 'user-dp/Nathan Nugent.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `all-adv`
--

CREATE TABLE `all-adv` (
  `id` int(30) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `edu` varchar(50) NOT NULL,
  `exp` int(50) NOT NULL,
  `work` varchar(50) NOT NULL,
  `available` varchar(50) NOT NULL,
  `user_img_src` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `all-adv`
--

INSERT INTO `all-adv` (`id`, `pwd`, `name`, `edu`, `exp`, `work`, `available`, `user_img_src`) VALUES
(1, 'v', 'Mr. Vishal solanki', 'L.L.B L.L.M', 10, 'property', '8-8', 'user-dp/Untitled.png'),
(2, 'n', 'Mr. Naimish rathod', 'L.L.B', 5, 'criminal', '8-8', 'user-dp/Steve Collins.jpg'),
(3, 'qm', 'atul kumar', 'L.L.B', 1, 'Civil Cases', '9-7', 'user-dp/Paddy Breathnach (1).jpeg'),
(4, 'qwe', 'ram shah', 'L.L.B', 2, 'crime', '9-7', 'user-dp/Stephen-Rennicks Headshot-full.jpeg\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `entry` timestamp NOT NULL DEFAULT current_timestamp(),
  `quit` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `name`, `entry`, `quit`) VALUES
(1, 'Mr. Vishal solanki', '2024-11-21 11:25:10', '2024-11-21 11:25:22'),
(1, 'Mr. Vishal solanki', '2024-11-22 08:53:30', '0000-00-00 00:00:00'),
(2, 'Mr. Naimish rathod', '2024-11-22 09:05:15', '2024-11-22 09:07:54'),
(1, 'Mr. Vishal solanki', '2024-11-23 09:34:35', '0000-00-00 00:00:00'),
(1, 'Mr. Vishal solanki', '2024-11-26 09:43:13', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `work-data`
--

CREATE TABLE `work-data` (
  `case_id` int(10) NOT NULL,
  `id` int(11) NOT NULL,
  `client-name` varchar(20) NOT NULL,
  `case-type` varchar(50) NOT NULL,
  `case-desc` varchar(300) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `case_cls_desc` varchar(300) DEFAULT NULL,
  `document` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `work-data`
--

INSERT INTO `work-data` (`case_id`, `id`, `client-name`, `case-type`, `case-desc`, `status`, `created_at`, `case_cls_desc`, `document`) VALUES
(1, 2, 'sujalbhai', 'civil', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent efficitur nulla vitae enim aliquet sagittis. Fusce suscipit massa', 'pending', '2024-11-22 09:29:52', '', 'documents/case id 1/_html_logo-removebg-preview.png,documents/case id 1/_figma to web.jpg,documents/case id 1/_html-logo.svg'),
(3, 2, 'mayur bhai ', 'civil', 'aa', 'pending', '2024-02-21 10:22:31', '', 'documents/case id 3/Bruno Coulais.jpeg'),
(5, 2, 'rajan sojitra', 'marriage', '', 'done', '2024-11-22 11:43:13', '', ''),
(6, 1, 'amit shah', 'civil', '', 'pending', '2024-11-26 08:46:20', '', 'documents/case id 6/Blue Simple Professional CV Resume (1).pdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all-adv`
--
ALTER TABLE `all-adv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD UNIQUE KEY `entry` (`entry`);

--
-- Indexes for table `work-data`
--
ALTER TABLE `work-data`
  ADD PRIMARY KEY (`case_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all-adv`
--
ALTER TABLE `all-adv`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `work-data`
--
ALTER TABLE `work-data`
  MODIFY `case_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;