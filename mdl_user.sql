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
-- Table structure for table `mdl_user`
--

CREATE TABLE `mdl_user` (
  `id` bigint(10) NOT NULL,
  `auth` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'manual',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `policyagreed` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `mnethostid` bigint(10) NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `idnumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `emailstop` tinyint(1) NOT NULL DEFAULT '0',
  `icq` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `yahoo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `aim` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `msn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone1` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone2` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `institution` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `calendartype` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'gregorian',
  `theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timezone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '99',
  `firstaccess` bigint(10) NOT NULL DEFAULT '0',
  `lastaccess` bigint(10) NOT NULL DEFAULT '0',
  `lastlogin` bigint(10) NOT NULL DEFAULT '0',
  `currentlogin` bigint(10) NOT NULL DEFAULT '0',
  `lastip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `secret` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `picture` bigint(10) NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT '1',
  `mailformat` tinyint(1) NOT NULL DEFAULT '1',
  `maildigest` tinyint(1) NOT NULL DEFAULT '0',
  `maildisplay` tinyint(2) NOT NULL DEFAULT '2',
  `autosubscribe` tinyint(1) NOT NULL DEFAULT '1',
  `trackforums` tinyint(1) NOT NULL DEFAULT '0',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `timemodified` bigint(10) NOT NULL DEFAULT '0',
  `trustbitmask` bigint(10) NOT NULL DEFAULT '0',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastnamephonetic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstnamephonetic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middlename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternatename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='One record for each person' ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `mdl_user`
--

INSERT INTO `mdl_user` (`id`, `auth`, `confirmed`, `policyagreed`, `deleted`, `suspended`, `mnethostid`, `username`, `password`, `idnumber`, `firstname`, `lastname`, `email`, `emailstop`, `icq`, `skype`, `yahoo`, `aim`, `msn`, `phone1`, `phone2`, `institution`, `department`, `address`, `city`, `country`, `lang`, `calendartype`, `theme`, `timezone`, `firstaccess`, `lastaccess`, `lastlogin`, `currentlogin`, `lastip`, `secret`, `picture`, `url`, `description`, `descriptionformat`, `mailformat`, `maildigest`, `maildisplay`, `autosubscribe`, `trackforums`, `timecreated`, `timemodified`, `trustbitmask`, `imagealt`, `lastnamephonetic`, `firstnamephonetic`, `middlename`, `alternatename`) VALUES
(2, 'manual', 1, 0, 0, 0, 1, 'admin', '$2y$10$FmUDAnwTZJhmwCfD38mkg.jXYb6MdHYDT/D8dfHdGiX4aiTF7JSyS', '', 'Admin', 'User', 'myMEproject.YGN@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'Yangon', 'MM', 'en', 'gregorian', '', '99', 1595581392, 1596513150, 1596013245, 1596513059, '203.81.88.54', '', 0, '', NULL, 1, 1, 0, 2, 1, 0, 0, 1601305895, 0, NULL, NULL, NULL, NULL, NULL),
(4, 'manual', 1, 0, 0, 0, 1, 'nfe-admin-01', '$2y$10$XkNv0VE7OeCfpww2/Pss9.P4Jr2898ruNLySQwMXf5CgScUpZeQQy', '', 'NFE', 'Admin-01', 'nfe-admin-01@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'Yangon', 'MM', 'en', 'gregorian', '', '99', 1596015653, 1601461682, 1601453626, 1601457499, '210.14.97.100', '', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1596015366, 1600095387, 0, NULL, NULL, NULL, NULL, NULL),
(5, 'onlineconfirm', 1, 0, 0, 0, 1, 'testerone', '$2y$10$Is130HYnRJ2k1opsT1XcEuwJaOAhVqw6OEvpnZ2l6jHpwin14zr1.', '', 'testerone', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1601367659, 1601367715, 1601367659, 1601367715, '210.14.97.100', 'rC175WrACHizNc6', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1601367656, 1601367656, 0, NULL, '', '', '', ''),
(6, 'onlineconfirm', 1, 0, 0, 0, 1, 'testerone', '$2y$10$OndyGtFLGOOwoJUO8f/7huxT/7RpiAXArkDD7p.9JZpCKsxC9Cqsy', '', 'testerone', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1601367696, 1601367747, 1601367696, 1601367747, '210.14.97.100', 'EHzgIUbvlTkbQjN', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1601367693, 1601367693, 0, NULL, '', '', '', ''),
(7, 'manual', 1, 0, 0, 0, 1, 'nfebox_manager_01', '$2y$10$c4D/Y5eBDmb9Yv6cRoWGVOwvvZyQaow8N8c.MRKFDOWWbJKkM4VR.', '', 'nfebox_manager_01', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', 'MM', 'my', 'gregorian', '', '99', 1601448040, 1601453580, 1601448040, 1601449656, '69.160.29.4', '', 0, '', '', 1, 1, 0, 0, 1, 0, 1601447876, 1601447876, 0, '', '', '', '', ''),
(8, 'manual', 1, 0, 0, 0, 1, 'nfebox_teacher_yati', '$2y$10$cgTUnldKln5vYG2ejS9/JOxA0O3/5mOlUzKn/mKx5CHmDp6eNTCm6', '', 'nfebox_teacher_yati', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', 'MM', 'my', 'gregorian', '', '99', 1601448963, 1601456850, 1601453998, 1601456405, '69.160.29.4', '', 0, '', '', 1, 1, 0, 0, 1, 0, 1601448211, 1601448211, 0, '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mdl_user`
--
ALTER TABLE `mdl_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mdl_user_mneuse2_uix` (`mnethostid`,`username`),
  ADD KEY `mdl_user_del2_ix` (`deleted`),
  ADD KEY `mdl_user_con2_ix` (`confirmed`),
  ADD KEY `mdl_user_fir3_ix` (`firstname`),
  ADD KEY `mdl_user_las4_ix` (`lastname`),
  ADD KEY `mdl_user_cit2_ix` (`city`),
  ADD KEY `mdl_user_cou2_ix` (`country`),
  ADD KEY `mdl_user_las5_ix` (`lastaccess`),
  ADD KEY `mdl_user_ema2_ix` (`email`),
  ADD KEY `mdl_user_aut2_ix` (`auth`),
  ADD KEY `mdl_user_idn2_ix` (`idnumber`),
  ADD KEY `mdl_user_fir4_ix` (`firstnamephonetic`),
  ADD KEY `mdl_user_las6_ix` (`lastnamephonetic`),
  ADD KEY `mdl_user_mid2_ix` (`middlename`),
  ADD KEY `mdl_user_alt2_ix` (`alternatename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mdl_user`
--
ALTER TABLE `mdl_user`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
