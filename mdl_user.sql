-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 07, 2020 at 07:40 PM
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
  `alternatename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moodlenetprofile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='One record for each person' ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `mdl_user`
--

INSERT INTO `mdl_user` (`id`, `auth`, `confirmed`, `policyagreed`, `deleted`, `suspended`, `mnethostid`, `username`, `password`, `idnumber`, `firstname`, `lastname`, `email`, `emailstop`, `icq`, `skype`, `yahoo`, `aim`, `msn`, `phone1`, `phone2`, `institution`, `department`, `address`, `city`, `country`, `lang`, `calendartype`, `theme`, `timezone`, `firstaccess`, `lastaccess`, `lastlogin`, `currentlogin`, `lastip`, `secret`, `picture`, `url`, `description`, `descriptionformat`, `mailformat`, `maildigest`, `maildisplay`, `autosubscribe`, `trackforums`, `timecreated`, `timemodified`, `trustbitmask`, `imagealt`, `lastnamephonetic`, `firstnamephonetic`, `middlename`, `alternatename`, `moodlenetprofile`) VALUES
(2, 'manual', 1, 0, 0, 0, 1, 'nfe-admin-01', '$2y$10$XkNv0VE7OeCfpww2/Pss9.P4Jr2898ruNLySQwMXf5CgScUpZeQQy', '', 'NFE', 'Admin-01', 'nfe-admin-01@gmail.com', 0, '', '', '', '', '', '', '', '', '', '', 'Yangon', 'MM', 'en', 'gregorian', '', '99', 1596015653, 1601461682, 1601453626, 1601457499, '210.14.97.100', '', 0, '', NULL, 1, 1, 0, 2, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'onlineconfirm', 1, 0, 0, 0, 1, 'teststudent1', '$2y$10$7URxectx4lonv5HsGDtzfe.TUzTZi9o04U7d.7Vf5Q6CFUwcwTYFm', '', 'teststudent1', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600075562, 1601032982, 1600660304, 1601032982, '192.168.0.100', '3xSbpFvl4LNTgmu', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600075557, 1600075557, 0, NULL, '', '', '', '', NULL),
(56, 'onlineconfirm', 1, 0, 1, 0, 1, 'mgmamatsidi.56@unknownemail.invalid.1600076798', '$2y$10$ZYUUW40qbHgGfP805Hm5Z.sRkBFYIiUFgspVTdpXi/6pZJpUQZlKS', '', 'Mg Ma Mat Sidi', '', '8165a0c6f8788b7dd203c53e9a36326d', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600076037, 1600076037, 0, 1600076037, '192.168.99.122', 'RwRHSqGAygc7bzS', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600076034, 1600076798, 0, NULL, '', '', '', '', NULL),
(57, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgzawtun', '$2y$10$EcBPjMWgwXDiiPbVr/iXY./lpKhI1hx30Ceyib3g70cd0jmVDmfuG', '', 'Mg Zaw Tun', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600076481, 1600935332, 1600420260, 1600935332, '192.168.0.102', 'fgZKU51sbHgMn6U', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600076475, 1600076475, 0, NULL, '', '', '', '', NULL),
(58, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgmamatsidi', '$2y$10$FHjf3.xiuBRDe/wKeyFgwOVvuvbp3pGn8m1nkm79guNc21MsYBBie', '', 'Mg Ma Mat Sidi', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600076987, 1600934505, 1600934472, 1600934505, '192.168.0.102', 'X9jCTyFcGeTOOsP', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600076985, 1600076985, 0, NULL, '', '', '', '', NULL),
(59, 'onlineconfirm', 1, 0, 1, 0, 1, 'mgmg.59@unknownemail.invalid.1600938824', '$2y$10$w4pd5wSjXTqY/QbPJLGmmO4HdxVrMf/riAD1cVN/.ErvYo3dKSnJG', '', 'Mg Mg', '', 'daa4bf1b4d0978fa034ada89161a23c4', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600077953, 1600077953, 0, 1600077953, '192.168.99.122', 'qlYXJ9IaqZ9hHl0', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600077949, 1600938824, 0, NULL, '', '', '', '', NULL),
(60, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgmarmaungjawlate', '$2y$10$RuWJ050.cHQa07K1Fo5VG.689gBy7I6HQj3FMfCXwg1jCZEkwmu0K', '', 'Mg Mar Maung Jaw Late', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600078175, 1600935408, 1600420633, 1600935408, '192.168.0.102', 'QwUCl2WTrv6W6PQ', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600078172, 1600078172, 0, NULL, '', '', '', '', NULL),
(61, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgmarmatjarbae', '$2y$10$.rIru8RKFSCOAjmQlpZe4eBBgYDVH4hrxQNVu.K9oJEDDPMgd3hsu', '', 'Mg Mar Mat Jarbae', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600078937, 1600936012, 1600935999, 1600936012, '192.168.0.102', 'mNe6ndL42OWzwCr', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600078934, 1600078934, 0, NULL, '', '', '', '', NULL),
(62, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgmarmaungpharyote', '$2y$10$ecTrqo3kqzz1g3L5FuaFX.dufPUuyyTngEizVSSgwKAB6nOpHJeAu', '', 'Mg Mar maung Phar Yote', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600079225, 1600936400, 1600420968, 1600936400, '192.168.0.102', 'FfgicEBB3FvPDSz', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600079221, 1600079221, 0, NULL, '', '', '', '', NULL),
(63, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgshwemg', '$2y$10$iD7r9bu2IlkSi8WJE0nMSuFkFjffN/fC/xccfhvxM.0md0uia18lW', '', 'Mg Shwe Mg', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600079306, 1600936371, 1600079306, 1600936371, '192.168.0.102', 'IKlpt3aaiPZzRBI', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600079303, 1600079303, 0, NULL, '', '', '', '', NULL),
(64, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgjubar', '$2y$10$wiEhTjYn9pIylLSBEMDkhORqRt/FDfeLMBa3n.umb96LbvuUxfb/S', '', 'Mg Ju Bar', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600079376, 1600935828, 1600421831, 1600935828, '192.168.0.102', 'JoE1IDBtdhMVkX4', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600079373, 1600079373, 0, NULL, '', '', '', '', NULL),
(65, 'onlineconfirm', 1, 0, 0, 0, 1, 'mglalayar', '$2y$10$61QTLk5CJKC6QSw9hWrxIe.h6/Jvz4YGfMTAnWnsV6FMDtJH2Rf76', '', 'Mg La La Yar', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600164043, 1600936350, 1600421881, 1600936350, '192.168.0.102', 'k5OzBoxkBxzoRlP', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600164040, 1600164040, 0, NULL, '', '', '', '', NULL),
(66, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgkyawthein', '$2y$10$dCvKwIl/n1RbtbSMzJEbP.R/Y3ICd754DGm966xr3q3vMCHNeSJoK', '', 'Mg Kyaw Thein', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600164105, 1600936268, 1600421928, 1600936268, '192.168.0.102', 'JbvkETjXF8nkBQM', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600164103, 1600164103, 0, NULL, '', '', '', '', NULL),
(67, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgmamatjarbae', '$2y$10$yAvLgqnb0lkzJ9LnrZsULOfUZAlrP38HgsiyVqqYdKqOclZytSxZG', '', 'Mg Ma Mat Jar Bae', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600164167, 1600164167, 0, 1600164167, '192.168.99.122', 'jyVMaZEmNiB0Efl', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600164165, 1600164165, 0, NULL, '', '', '', '', NULL),
(68, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgchitkoko', '$2y$10$3/CK7OKkOS80lLTmgNbud..NLGj.Rhd4bR0NhwYJhXy399cuVpR7G', '', 'Mg Chit Ko Ko', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600164218, 1600936238, 1600422085, 1600936238, '192.168.0.102', 'HB9cSu1knK0DIb0', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600164215, 1600164215, 0, NULL, '', '', '', '', NULL),
(69, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgmarmachuku', '$2y$10$Lolhu30FRBFEHklcLXaMGuCFLV0FkbC4aKn5/etVqdRcLFdGO2KXG', '', 'Mg Mar Ma Chuku', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600164267, 1600936083, 1600422239, 1600936083, '192.168.0.102', 'IUQgjbmcIlr2VFD', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600164265, 1600164265, 0, NULL, '', '', '', '', NULL),
(70, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgkyawnaing', '$2y$10$P/tc4SRVPjg4lCEpzjE7DOU3hw1QVK0/tCu79rOwtHn7u.Gs1bhke', '', 'Mg Kyaw Naing', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600164498, 1600936190, 1600164498, 1600936190, '192.168.0.102', 'KHlERxBDOsLwEBz', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600164496, 1600164496, 0, NULL, '', '', '', '', NULL),
(71, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgahduzawphaw', '$2y$10$hY9Dg119CaJWE2AmZ7IP5uYbySCeDHIhhKIRBMl2fnH/e.JRnlz4q', '', 'Mg Ah Du zaw Phaw', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600164563, 1600936463, 1600164563, 1600936463, '192.168.0.102', 'AFJ5dmdXA8eA4JO', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600164561, 1600164561, 0, NULL, '', '', '', '', NULL),
(72, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgmawjuyarhaman', '$2y$10$qieZ01Jldnq8546A528ukODKOoDjJSQNhbdAHJ18E5dFmq9Gi4PPa', '', 'Mg Maw JuYar Ha Man', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600164612, 1600936484, 1600164612, 1600936484, '192.168.0.102', 'xjyGrnR5yE5Xphf', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600164608, 1600164608, 0, NULL, '', '', '', '', NULL),
(73, 'onlineconfirm', 1, 0, 0, 0, 1, 'mahlahlahtoo', '$2y$10$j21/eEebalVQ2o8wwkunrefEHc52BOuLEF/j4nm7rQiaO/4ZWx39O', '', 'Ma Hla Hla Htoo', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600164664, 1600936529, 1600164664, 1600936529, '192.168.0.102', 'FmVRqU0mAVpsEoB', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600164661, 1600164661, 0, NULL, '', '', '', '', NULL),
(74, 'onlineconfirm', 1, 0, 0, 0, 1, 'mamoemoekhaing', '$2y$10$qctJbar2DVf1id66iApbre2XfKNvYXgyKNITLnNd8hPvJhBaqZrsa', '', 'Ma Moe Moe Khaing', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600164760, 1600936558, 1600164760, 1600936558, '192.168.0.102', 'DGt8Fa6haJ2LoJJ', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600164711, 1600164711, 0, NULL, '', '', '', '', NULL),
(75, 'onlineconfirm', 1, 0, 0, 0, 1, 'machawbekhar', '$2y$10$2g5D1QngXPz.BkEbSfwJ4evQsOY.wZaxatZ7lZiDv74oit.lI7.JO', '', 'Ma Chaw Bekhar', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600164810, 1600936627, 1600164810, 1600936627, '192.168.0.102', 'RkENzOWOd0MYKuV', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600164808, 1600164808, 0, NULL, '', '', '', '', NULL),
(76, 'onlineconfirm', 1, 0, 0, 0, 1, 'maminarbagone', '$2y$10$FBAsxRnpWeGXGnL.HQCyAeCZMpLe3PBnBQI9Z0yopQDaGMoxUcBQq', '', 'Ma Mi Nar Bagone', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600164863, 1600936657, 1600164863, 1600936657, '192.168.0.102', '0mXqdxo7nVqlvXx', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600164861, 1600164861, 0, NULL, '', '', '', '', NULL),
(77, 'onlineconfirm', 1, 0, 0, 0, 1, 'mamimikhaing', '$2y$10$YGpnbJJlxSYdQcJ4nw5tEuLPV1fK6bzM3ylSeTmKHnAwLTUH8/otO', '', 'Ma Mi Mi Khaing', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600165050, 1600936685, 1600165050, 1600936685, '192.168.0.102', '7rW5DOiCEF9gurH', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600165047, 1600165047, 0, NULL, '', '', '', '', NULL),
(78, 'onlineconfirm', 1, 0, 0, 0, 1, 'mabebegan', '$2y$10$lDmD7.HD83Fu0PqCKOqlxeIjnO3zHPM2pkvbs0u7K74ve2jZnn2VS', '', 'Ma Be Be Gan', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600165104, 1600936715, 1600165104, 1600936715, '192.168.0.102', 'Fr7CPpgEhubRFlQ', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600165101, 1600165101, 0, NULL, '', '', '', '', NULL),
(79, 'onlineconfirm', 1, 0, 0, 0, 1, 'maphartaymarhatoo', '$2y$10$V7FQykybuE1MCR7HjKj/W.Tt2Of6D.XO0ZAOOuk2mDL7A7cqItybK', '', 'Ma Phar Taymar Hatoo', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600228556, 1600936755, 1600228556, 1600936755, '192.168.0.102', 'K4dvSsIjlM79FCU', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600228445, 1600228445, 0, NULL, '', '', '', '', NULL),
(80, 'onlineconfirm', 1, 0, 0, 0, 1, 'mayeehaenabaygon', '$2y$10$n0jaYpH4gYLHh4P6lzg3fuQ1uCeVWxq/ApYNfMO.4HS5P2YaTwG7G', '', 'Ma Yeehaena Baygon', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600228611, 1600936793, 1600228611, 1600936793, '192.168.0.102', 'TYohCd3EtWHh4fI', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600228608, 1600228608, 0, NULL, '', '', '', '', NULL),
(81, 'onlineconfirm', 1, 0, 0, 0, 1, 'mazinmaraye', '$2y$10$u6gLmMeyJvaQ8jxNP3/mne5q2o8pXmkxq/gE3wUUVlmIdRlitymn2', '', 'Ma Zin Mar Aye', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600228761, 1600936824, 1600228761, 1600936824, '192.168.0.102', 'AZe9qaKu8IA5550', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600228759, 1600228759, 0, NULL, '', '', '', '', NULL),
(82, 'onlineconfirm', 1, 0, 0, 0, 1, 'manuninsar', '$2y$10$8vb/RQRoXa3JqCe5B4uvsu/ZuoNvs92faAXmq5XP06YpsP1ERd3SO', '', 'Ma Nu Nin Sar', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600228861, 1600936846, 1600228861, 1600936846, '192.168.0.102', '89HEnRBFsRqHtF7', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600228847, 1600228847, 0, NULL, '', '', '', '', NULL),
(83, 'onlineconfirm', 1, 0, 0, 0, 1, 'makhinsoe', '$2y$10$c.MfcN1opwe5AW.rwrvQs.r9itYYxVRfXH1xT0ErdUAj/quZpvW.G', '', 'Ma Khin Soe', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600228994, 1600936868, 1600228994, 1600936868, '192.168.0.102', 'XCAuqRG9Nuuev6D', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600228992, 1600228992, 0, NULL, '', '', '', '', NULL),
(84, 'onlineconfirm', 1, 0, 0, 0, 1, 'mahlahlaaye', '$2y$10$BleY/XNUAaR/c5hAHJkqaukAr/B8Lcgpy2jqSYdSTstuG7oAWSffW', '', 'Ma Hla Hla Aye', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600229060, 1600229060, 0, 1600229060, '192.168.99.122', 'QOQoEkcRCbWzZmD', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600229057, 1600229057, 0, NULL, '', '', '', '', NULL),
(85, 'onlineconfirm', 1, 0, 0, 0, 1, 'mahlahlamay', '$2y$10$UAAfC56L7MRdAv6bsMiMdO7fH.yQwhEpNAq1b53DPU9Qh5hW4LnC2', '', 'Ma Hla Hla May', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600229110, 1600936951, 1600229110, 1600936951, '192.168.0.102', 'IWDhlisRVFnDbqD', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600229106, 1600229106, 0, NULL, '', '', '', '', NULL),
(86, 'onlineconfirm', 0, 0, 1, 0, 1, 'maahgidar.86@unknownemail.invalid.1600229317', '$2y$10$XeA/5sFLHoZVogvVZVM5NuOvZX4RUL9bKhE.RLoHRuKB3ng2t.svi', '', 'Ma Ahgi Dar', '', '9b15929da71f0bcb64a7918511a54bdf', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 0, 0, 0, 0, '', 'MUq94xklrgFlge4', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600229148, 1600229317, 0, NULL, '', '', '', '', NULL),
(87, 'onlineconfirm', 1, 0, 0, 0, 1, 'maahgidar', '$2y$10$Y6I9FMxWytEcT8v1fIIEs.XnTG7MQ7rfKXrXOr4zj9HM1Nad8ymRq', '', 'Ma Ahgi Dar', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600229425, 1600936976, 1600229425, 1600936976, '192.168.0.102', 'vHvfuRwXKdD9jUZ', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600229423, 1600229423, 0, NULL, '', '', '', '', NULL),
(88, 'onlineconfirm', 1, 0, 0, 0, 1, 'macharkayar', '$2y$10$XZSC1VCyGeI0L5u5ovfLlO9ymrgSQYVtRzqDHZnXQb2Ucon02kZ0O', '', 'Ma Char Kayar', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600229544, 1600937023, 1600229544, 1600937023, '192.168.0.102', '9fy00AhkLFVZzVD', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600229541, 1600229541, 0, NULL, '', '', '', '', NULL),
(89, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgkyawnaing', '$2y$10$3WEyXOslMjxvfJemBOnmr.MLRpo83S88nfcUlRoVVzUxi3my5ZQM6', '', 'Mg Kyaw Naing', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600229598, 1600937055, 1600229598, 1600937055, '192.168.0.102', 'pC1cv5clfY6gv9P', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600229596, 1600229596, 0, NULL, '', '', '', '', NULL),
(90, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgsorlimular', '$2y$10$6CBmp9j/0JasLI8WIOtE7uDXjL0DsHXmg.1WtT4ERkzl8OJDo5.0C', '', 'Mg Sorli Mular', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600229685, 1600937079, 1600229685, 1600937079, '192.168.0.102', 'Wrv8RcWPjnWeumx', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600229683, 1600229683, 0, NULL, '', '', '', '', NULL),
(91, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgmarmatarmi', '$2y$10$MVNLWvsPv25.9Xv/1PtYCOr53W3L66R2qkb0ZeSYyLwkbt/GAAihi', '', 'Mg Mar Mat Ar Mi', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600229749, 1600937104, 1600229749, 1600937104, '192.168.0.102', 'VGuiYter51iNYDE', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600229747, 1600229747, 0, NULL, '', '', '', '', NULL),
(92, 'onlineconfirm', 1, 0, 0, 0, 1, 'masandarwin', '$2y$10$bgYDFAA.w8hD21GQyiIOGOhKYgN85j7J6FD6sJOyrP0SvM0AbaUMK', '', 'Ma Sandar Win', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600229909, 1600937127, 1600229909, 1600937127, '192.168.0.102', 'A9gOGF912YJ89qv', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600229907, 1600229907, 0, NULL, '', '', '', '', NULL),
(93, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgaryutkhan', '$2y$10$hnh1s1N.4TIl6qEuyKe/R.dA1hJ9jbFL9I46pSAwOWBnUnYgTcerS', '', 'Mg Aryut Khan', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600230016, 1600937155, 1600230016, 1600937155, '192.168.0.102', 'SEWN3I772sCyfAr', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600230014, 1600230014, 0, NULL, '', '', '', '', NULL),
(94, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgmarmatkorrein', '$2y$10$qMkpiRGCKJsj.hs4jptnXeTiDQBj7D11WzilCl7kKIfcyYXlzwDpy', '', 'Mg Mar Mat Kor Rein', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600230065, 1600937175, 1600230065, 1600937175, '192.168.0.102', '7oI3MZ6jbl5IoUs', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600230063, 1600230063, 0, NULL, '', '', '', '', NULL),
(95, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgmarmattarhae', '$2y$10$RYHvczy/OUhZf4WpvplwJOHjWiFSh9DOeQU1V87Z/rjqyXSpS9fDa', '', 'Mg Mar Mat Tar Hae', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600230118, 1600937194, 1600230118, 1600937194, '192.168.0.102', 'wukg84KT9BQJLjx', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600230115, 1600230115, 0, NULL, '', '', '', '', NULL),
(96, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgkokomyint', '$2y$10$SX6ozP3tyk6wscy7DrY5v.GoT87jvmEwjKUDu.IHws3pFMifSWjSa', '', 'Mg Ko Ko Myint', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600247238, 1600937211, 1600247238, 1600937211, '192.168.0.102', 'CiGAbkzn8boaH1K', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600247236, 1600247236, 0, NULL, '', '', '', '', NULL),
(97, 'onlineconfirm', 1, 0, 0, 0, 1, 'mahlahlatun', '$2y$10$vSaoXdzZWvEpV9FaG1q7cO40rIz9Wsc/p/LFupGeryLKiBVVsg7Yq', '', 'Ma Hla Hla Tun', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600247338, 1600937233, 1600247338, 1600937233, '192.168.0.102', 'DvsLHoyzvVdJ6rH', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600247335, 1600247335, 0, NULL, '', '', '', '', NULL),
(98, 'onlineconfirm', 1, 0, 0, 0, 1, 'mahumaerarbaegun', '$2y$10$uePLfozRDNzWs7lW9PqoXuaUe1BjtyYppOlB4UUoegBd6aoYm7Hjm', '', 'Ma Hu Mae Rar Baegun', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600247391, 1600937251, 1600247391, 1600937251, '192.168.0.102', 'BU2ExfN5xURZC89', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600247386, 1600247386, 0, NULL, '', '', '', '', NULL),
(99, 'onlineconfirm', 1, 0, 0, 0, 1, 'manukaryit', '$2y$10$op9THaPFYE.s5IKrNifaIuum9UejqdQEmTuNhjUhEOSf/e/GIikca', '', 'Ma Nu Kar Yit', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600247489, 1600937271, 1600247489, 1600937271, '192.168.0.102', 'LG3n65gBj7bJ4Z0', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600247487, 1600247487, 0, NULL, '', '', '', '', NULL),
(100, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgarnuwarsardit', '$2y$10$Oohe349Q/AiWDo..2dnrUuPIEwg.3ycgEca2WOCYa1m1PTaDtH.EG', '', 'Mg Ar Nu War Sar Dit', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600247551, 1600937292, 1600247551, 1600937292, '192.168.0.102', 'QAj2tdVYUyrGqOt', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600247549, 1600247549, 0, NULL, '', '', '', '', NULL),
(101, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgsorlimular', '$2y$10$bOY6XjIsvb1inymeOZdUcupJlVwfqTfqiBilJz687KhBbVBLqCl9i', '', 'Mg Sor Li Mu lar', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600247777, 1600937326, 1600247777, 1600937326, '192.168.0.102', '6gJYbbCEjW4Cozi', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600247774, 1600247774, 0, NULL, '', '', '', '', NULL),
(102, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgzawtin', '$2y$10$5v7HaJmKLK97lyDG4M5b0ejx4yN76.23rexxDc1KB7ot8cPAfyQa6', '', 'Mg Zaw Tin', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600247830, 1600937349, 1600247830, 1600937349, '192.168.0.102', 'sxfQ9mFAfLH03oz', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600247828, 1600247828, 0, NULL, '', '', '', '', NULL),
(103, 'onlineconfirm', 1, 0, 1, 0, 1, 'manufartaemar.103@unknownemail.invalid.1600938372', '$2y$10$uO9ztxENV4X99ZcEADuG5.AQf3Wr0q1aUSdMUxSYe8v5v7xmR9a4S', '', 'Ma Nu Far Tae Mar', '', 'ebc01078d945fca369339bcfaaabfec7', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600247874, 1600247874, 0, 1600247874, '192.168.99.122', 'Gqcy8dN4kZJndfp', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600247864, 1600938372, 0, NULL, '', '', '', '', NULL),
(104, 'onlineconfirm', 1, 0, 0, 0, 1, 'maarsumarhartu', '$2y$10$GH2Wocy1fPOnT13vigVjEOAQ9Ob80unq5BSz7xbKgrkyxO8U93FS.', '', 'Ma Ar Su Mar Har Tu', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600247936, 1600937397, 1600247936, 1600937397, '192.168.0.102', 'TF9WyHK853aqMlB', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600247934, 1600247934, 0, NULL, '', '', '', '', NULL),
(105, 'onlineconfirm', 1, 0, 1, 0, 1, 'makhinkhinshwe.105@unknownemail.invalid.1600248053', '$2y$10$ZUov9La0JDcD2eWgzgWfj.ceeyx08XXE7OLJJtXtBBz/MBwXC8epi', '', 'Ma Khin Khin Shwe', '', 'f8f3994256205ba19ef8302e15e5dc5a', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600247983, 1600247983, 0, 1600247983, '192.168.99.122', 'cvSwDpjPTcSB9il', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600247980, 1600248053, 0, NULL, '', '', '', '', NULL),
(106, 'onlineconfirm', 1, 0, 0, 0, 1, 'makhinkhinshwe', '$2y$10$.mYdJwjy8Qd9yO/FHyQqzuTMA0OmMFLVfPsRd0xLbf42M7fS/oh.S', '', 'Ma Khin Khin Shwe', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600248091, 1600937411, 1600248091, 1600937411, '192.168.0.102', 'D97qEIIiKjrx28s', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600248089, 1600248089, 0, NULL, '', '', '', '', NULL),
(107, 'onlineconfirm', 1, 0, 0, 0, 1, 'mashounshidarbaegon', '$2y$10$0pLHji0ynXOQcIIHJUJsPenhkTMIfpEvd6fHe1LsF6XK5YWz38t2e', '', 'Ma Shoun Shi Dar Bae Gon', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600248132, 1600937430, 1600248132, 1600937430, '192.168.0.102', '4X0MP09LWgv0V11', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600248130, 1600248130, 0, NULL, '', '', '', '', NULL),
(108, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgkyawsoenaing', '$2y$10$MhFnDu9ezukcvXjH1sO1/.RYFCT.4FCbkhlKS1WJRfAVFuGR1fLFa', '', 'Mg Kyaw Soe Naing', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600248191, 1600937481, 1600248191, 1600937481, '192.168.0.102', 'HOWYuyBXKV8w8Xt', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600248189, 1600248189, 0, NULL, '', '', '', '', NULL),
(109, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgadushuku', '$2y$10$Vf6ZHqhqtt8403dr46tqROech29NSIxlSyUpXtcYm74rGgYPTcdwu', '', 'Mg Adu Shu Ku', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600248943, 1600937506, 1600248943, 1600937506, '192.168.0.102', 'SPzWwXI8rn20Jjv', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600248924, 1600248924, 0, NULL, '', '', '', '', NULL),
(110, 'onlineconfirm', 1, 0, 0, 0, 1, 'maargidabaegon', '$2y$10$zy7PXsvve0HAEWDwHItbceR997nH4UNxSVzxq/h.73bhh.efo7fUG', '', 'Ma Ar Gi Da Bae Gon', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600249362, 1600937550, 1600249362, 1600937550, '192.168.0.102', 'Kl1NSt79YPBf4Ec', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600249356, 1600249356, 0, NULL, '', '', '', '', NULL),
(111, 'onlineconfirm', 1, 0, 0, 0, 1, 'makushidabaegon', '$2y$10$GndR3xxHulfnKLvrV7GGyurtLA8UsoMrcgopZjCGZt9kD4a0Dlefq', '', 'Ma Ku Shi Da Bae Gon', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600249513, 1600937575, 1600249513, 1600937575, '192.168.0.102', 'fShfoxzAzAO0hLw', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600249511, 1600249511, 0, NULL, '', '', '', '', NULL),
(112, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgmarmatjunate', '$2y$10$RKSBbK5Qpmbf56a1jXYDa.DvgIa6nuSi3zaNahZQkIYQICOsf4pma', '', 'Mg Marmat JuNate', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600249576, 1600937602, 1600249576, 1600937602, '192.168.0.102', 'G4C7QfZpSfDUuY0', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600249572, 1600249572, 0, NULL, '', '', '', '', NULL),
(113, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgahduharlate', '$2y$10$94EkdqGXPOLbnWAWUTkjTONdELidZKzxYzAinJyQtyGAWPdf1haNK', '', 'Mg Ahdu HarLate', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600249685, 1600937620, 1600249685, 1600937620, '192.168.0.102', 'DhEGY7Bzrv2bwmn', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600249683, 1600249683, 0, NULL, '', '', '', '', NULL),
(114, 'onlineconfirm', 0, 0, 1, 0, 1, 'mgnarbachawrain.114@unknownemail.invalid.1600251712', '$2y$10$BM7tlBB6Al6pLGxCStu.l.K45SDLDhDFPn.71I7WL16JxL4y4YKd.', '', 'Mg Nar Ba ChawRain', '', '3e1197e4a2eb8fb2d1c8e831d4738a21', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 0, 0, 0, 0, '', 'nh5aaR7067RczLX', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600249736, 1600251712, 0, NULL, '', '', '', '', NULL),
(115, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgnarbachawrain', '$2y$10$Q6dPyFSGF3rDTVX.UBTLE.AftX655gZPfKm50C6QcbOOr9.gwKfAS', '', 'Mg Nar Ba ChawRain', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600249787, 1600938031, 1600251751, 1600938031, '192.168.0.102', 'hqZ7COva5Y3fnmN', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600249785, 1600249785, 0, NULL, '', '', '', '', NULL),
(116, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgmamatjarbal', '$2y$10$Iom0rACHVFnFz0Vyq1Vqe.aejb6y9udzn3snMfadcP2GVH/EnJ1EO', '', 'Mg Ma Mat Jarbal', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600249842, 1600938148, 1600249842, 1600938148, '192.168.0.102', 'bdbAxJzbsbojw3j', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600249827, 1600249827, 0, NULL, '', '', '', '', NULL),
(117, 'onlineconfirm', 1, 0, 0, 0, 1, 'mggeeyarman', '$2y$10$aqmjbzZvJJZtbzua3ux40.rfDrpaNE1A/l40JM.gA1teg2Y4g9462', '', 'Mg Gee Yar Man', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600249885, 1600938167, 1600249885, 1600938167, '192.168.0.102', 'zRHHSvfkR5ESFtP', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600249883, 1600249883, 0, NULL, '', '', '', '', NULL),
(118, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgahduhusaung', '$2y$10$pGXu/AHSzGXcLFpf4UITY.Aid1VzmDy6Wc/QwVMZyEqvd17zUCsWa', '', 'Mg Ahdu Husaung', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600249930, 1600938201, 1600249930, 1600938201, '192.168.0.102', 'WXODRmzFxPU6pcK', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600249928, 1600249928, 0, NULL, '', '', '', '', NULL),
(119, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgyawbeeahloung', '$2y$10$3zy4txfI9aTOYJ1ZrfIq3e14p2q6rNH6ppSagsiTgemOHRVSjYILK', '', 'Mg Yaw Bee AhLoung', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600249986, 1600938762, 1600249986, 1600938762, '192.168.0.102', 'SYCjS8vwikrOzjM', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600249984, 1600249984, 0, NULL, '', '', '', '', NULL),
(120, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgmarmatsidate', '$2y$10$PRu0p8dwT7SM06G/Vb0rgOPCmbjCfsLvzgEjT8zbVICIpsBH3cnnO', '', 'Mg Marmat Sidate', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600250037, 1600938293, 1600250037, 1600938293, '192.168.0.102', 'p0t4KlkXw9p5SNa', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600250036, 1600250036, 0, NULL, '', '', '', '', NULL),
(121, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgayekaryu', '$2y$10$QEUKzgpqVGilch588ToeDeQOnyJQ4oucHwGYJB1GBJvao7ZM325nq', '', 'Mg Aye Kar Yu', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600250113, 1600938321, 1600250113, 1600938321, '192.168.0.102', 'iyUBvRWthHUojoS', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600250111, 1600250111, 0, NULL, '', '', '', '', NULL),
(122, 'onlineconfirm', 1, 0, 0, 0, 1, 'mamargeedarbaygon', '$2y$10$Co5pMOXa3hCD.BTgYtd4.O0P78PKxurMLaCYdT/lH8I3jgNcF5ieK', '', 'Ma Mar Gee Dar Baygon', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600250168, 1600938334, 1600250168, 1600938334, '192.168.0.102', 'OfPP3LmabNk1sm2', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600250166, 1600250166, 0, NULL, '', '', '', '', NULL),
(123, 'onlineconfirm', 1, 0, 0, 0, 1, 'machayheeyarbaygon', '$2y$10$jkJlcsVtgQPGKbIjuQ72cOZwbaI5pQNwhZsWyRRb6uNCPUeo22QTG', '', 'Ma Chay Heeyar Baygon', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600250223, 1600938353, 1600250223, 1600938353, '192.168.0.102', 'RWD5KAygmp1r19A', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600250220, 1600250220, 0, NULL, '', '', '', '', NULL),
(124, 'onlineconfirm', 1, 0, 0, 0, 1, 'matawmain', '$2y$10$lp8P8CMdbJpqaxYlQ4EIle0IKRK0iD2Pdf8bQdg4Cpgop.Y0VsMpC', '', 'Ma Taw Main', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600250273, 1600938373, 1600250273, 1600938373, '192.168.0.102', 'dFV8LhAWDPZimsv', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600250271, 1600250271, 0, NULL, '', '', '', '', NULL),
(125, 'onlineconfirm', 1, 0, 0, 0, 1, 'mahlahla', '$2y$10$o9uaAhjHOebTTVsqounTleNYYLSuyghATy7lUMK2wiLntPNYE4GOG', '', 'Ma Hla Hla', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600250357, 1600938439, 1600250357, 1600938439, '192.168.0.102', 'FlPsJZN7biHWCvR', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600250355, 1600250355, 0, NULL, '', '', '', '', NULL),
(126, 'onlineconfirm', 1, 0, 0, 0, 1, 'mabebeahyayyar', '$2y$10$9Q6Bjrz0JlYIz5aA1XmOcOG7jsvaQ60QlTiud33/WuSJ9w6xY19m2', '', 'Ma Be Be Ahyay Yar', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600250401, 1600938471, 1600250401, 1600938471, '192.168.0.102', 'naTSDZlkEFTfctb', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600250399, 1600250399, 0, NULL, '', '', '', '', NULL),
(127, 'onlineconfirm', 1, 0, 0, 0, 1, 'maahnuwarbaygon', '$2y$10$85N0upCT/s06qqo.czT/5.94/zinLa12wmrbsGwNFGEDFuO8bvPiC', '', 'Ma Ah Nu War Baygon', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600250492, 1600938497, 1600250492, 1600938497, '192.168.0.102', '4907sILr0OcY8YP', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600250488, 1600250488, 0, NULL, '', '', '', '', NULL),
(128, 'onlineconfirm', 1, 0, 0, 0, 1, 'mabebegan', '$2y$10$4XRC9Iy.bW2PIezkNqdyPeIC/tsMMkBFhqek5lUIMojgtqqHis3RO', '', 'Ma Be Be Gan', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600250542, 1600938626, 1600250542, 1600938626, '192.168.0.102', '3cMG1SF3Kgk0CR8', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600250541, 1600250541, 0, NULL, '', '', '', '', NULL),
(129, 'onlineconfirm', 1, 0, 0, 0, 1, 'mabebeyawthizar', '$2y$10$IHcjFN0fn5ECxESzhXwPyeZ55o6rhsn/MRPYFF3OTrdvHUiwOkNRy', '', 'Ma Be Be Yaw Thi Zar', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600250589, 1600938653, 1600250589, 1600938653, '192.168.0.102', '2Pxrz4FIyKWReUX', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600250587, 1600250587, 0, NULL, '', '', '', '', NULL),
(130, 'onlineconfirm', 1, 0, 0, 0, 1, 'masaynuyarbaygon', '$2y$10$/zjxIZtBB4OSsJsL.JK9QO25EuQKlE4ujIRtGj418zVzsrgCMH7D.', '', 'Ma Say Nu Yar Baygon', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600250628, 1600938689, 1600250628, 1600938689, '192.168.0.102', 'pUn1IEFZG3Mm15P', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600250626, 1600250626, 0, NULL, '', '', '', '', NULL),
(131, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgmarmatauman(2)', '$2y$10$P0tJ6WDNJ6IFq7MnppYjZe50y0wd.7LDhcCOdL34pcevXhNY4aORu', '', 'Mg Mar Mat Au Man (2)', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600250886, 1600936213, 1600250886, 1600936213, '192.168.0.102', 'ZMu9yoLlHkBKQsa', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600250884, 1600250884, 0, NULL, '', '', '', '', NULL),
(132, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgauphar(1)', '$2y$10$AaCPvoCzCBvInwNg8Gv/oO4RT7voNRRUzzO406naj/q5TPeZD1MhK', '', 'Mg Au Phar (1)', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600251041, 1600936506, 1600251041, 1600936506, '192.168.0.102', 'QNwKCA2wMH9L6Rg', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600251039, 1600251039, 0, NULL, '', '', '', '', NULL),
(133, 'onlineconfirm', 1, 0, 0, 0, 1, 'mazuuyarhatoo(1)', '$2y$10$QBqH7n3jpsjxBi9A/ZnJDuOeKbuWzBrMFVwicKA/CnrGTX87CYw0.', '', 'Ma Zuu Yar Hatoo (1)', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600251103, 1600936735, 1600251103, 1600936735, '192.168.0.102', 'BoFPySwBr601ZXc', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600251101, 1600251101, 0, NULL, '', '', '', '', NULL),
(134, 'onlineconfirm', 1, 0, 0, 0, 1, 'mazuuyarhatoo(2)', '$2y$10$m0JTs6zmb88GQGenmWVh0u7LKtUcm2Gbjj0f/7rj47fXzE9kD9dXe', '', 'Ma Zuu Yar Hatoo (2)', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600251253, 1600937004, 1600251253, 1600937004, '192.168.0.102', '56jETDdInvFh8ZI', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600251250, 1600251250, 0, NULL, '', '', '', '', NULL),
(135, 'onlineconfirm', 1, 0, 0, 0, 1, 'marokiyar(2)', '$2y$10$ph3WUgh5bAgHjDRHjj1Asuh4asqaJbEbJUjDEHbimmlUYUCa0eQEC', '', 'Ma Ro Ki Yar (2)', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600251355, 1600937462, 1600251355, 1600937462, '192.168.0.102', 'd1KYe6PBYkJVvYX', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600251352, 1600251352, 0, NULL, '', '', '', '', NULL),
(136, 'manual', 1, 0, 0, 0, 1, 'guest', '$2y$10$8X9qeFPeSCJDTOs4psM7CudhrkyTmg3NaZB0p95XgpkFM3gcYpUrW', '', 'Guest user', ' ', 'root@localhost', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 0, 0, 0, 0, '', '', 0, '', 'This user is a special user that allows read-only access to some courses.', 1, 1, 0, 2, 1, 0, 0, 1600662754, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'onlineconfirm', 1, 0, 0, 0, 1, 'teststudent2', '$2y$10$rLRsqmfCp4cjcQzlU/oK6.Kx4Fot8dolBdfXkVLFw1KzUtrak5tHW', '', 'teststudent2', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600935251, 1600935267, 1600935251, 1600935267, '192.168.0.102', 'OCRUmTFfMhgktuJ', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600935249, 1600935249, 0, NULL, '', '', '', '', NULL),
(138, 'onlineconfirm', 1, 0, 0, 0, 1, 'mahlahlaaye', '$2y$10$vncjG3q2rtBbqDi5pookKeLVYJyO5rlrF8AudWMDqv2uN06svMnBO', '', 'Ma Hla Hla Aye', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600938548, 1600938560, 1600938548, 1600938560, '192.168.0.102', 'iVDaMYBh7wDsn1e', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600938547, 1600938547, 0, NULL, '', '', '', '', NULL),
(139, 'onlineconfirm', 1, 0, 0, 0, 1, 'manufartaemar', '$2y$10$6o/7Ru8N.xmIkerxqONAJOIQ7AbxUBPSJSCxQvm1e9WJPAcl8BZzC', '', 'Ma Nu Far Tae Mar', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600938708, 1600938723, 1600938708, 1600938723, '192.168.0.102', 'AtVgKz0qavK4vK9', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600938706, 1600938706, 0, NULL, '', '', '', '', NULL),
(140, 'onlineconfirm', 1, 0, 0, 0, 1, 'mgmg', '$2y$10$YhscWQ/DD8VJTAGV9MuvNOvx5RThUns.CHM3bYkOvCLZtADxCxHOu', '', 'Mg Mg', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'my', 'gregorian', '', '99', 1600938864, 1600938878, 1600938864, 1600938878, '192.168.0.102', 'ZGXbNd8ZXwUBnlN', 0, '', NULL, 1, 1, 0, 2, 1, 0, 1600938863, 1600938863, 0, NULL, '', '', '', '', NULL);

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
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
