-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 07, 2020 at 10:58 PM
-- Server version: 5.7.31-0ubuntu0.18.04.1
-- PHP Version: 7.2.33-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moodle`
--

-- --------------------------------------------------------

--
-- Table structure for table `mdl_user_info_data`
--

CREATE TABLE `mdl_user_info_data` (
  `id` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL DEFAULT '0',
  `fieldid` bigint(10) NOT NULL DEFAULT '0',
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataformat` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Data for the customisable user fields' ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `mdl_user_info_data`
--

INSERT INTO `mdl_user_info_data` (`id`, `userid`, `fieldid`, `data`, `dataformat`) VALUES
(1, 4, 1, '25', 0),
(2, 4, 2, 'p@s$w0rd', 0),
(3, 4, 3, 'အထက်တန်း', 0),
(36, 2, 1, '25', 0),
(37, 2, 2, 'P@s$W0rd', 0),
(38, 2, 3, 'P@s$W0rd', 0),
(39, 2, 5, '', 0),
(52, 5, 1, '23', 0),
(53, 5, 2, 'uone', 0),
(54, 5, 3, 'အထက်တန်း', 0),
(55, 5, 5, '', 0),
(56, 6, 1, '23', 0),
(57, 6, 2, 'utwo', 0),
(58, 6, 3, 'အလယ်တန်း', 0),
(59, 6, 5, '', 0),
(60, 7, 1, '22', 0),
(61, 7, 2, 'Welc0me#1', 0),
(62, 7, 3, 'မတက်ရောက်ခဲ့ပါ', 0),
(63, 7, 5, 'No Job', 0),
(64, 8, 1, '22', 0),
(65, 8, 2, 'Welc0me#123', 0),
(66, 8, 3, 'မတက်ရောက်ခဲ့ပါ', 0),
(67, 8, 5, 'no job', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mdl_user_info_data`
--
ALTER TABLE `mdl_user_info_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mdl_userinfodata_usefie_uix` (`userid`,`fieldid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mdl_user_info_data`
--
ALTER TABLE `mdl_user_info_data`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
