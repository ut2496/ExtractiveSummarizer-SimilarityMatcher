-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2016 at 02:44 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `inswipes`
--

-- --------------------------------------------------------

--
-- Table structure for table `meta_content`
--

CREATE TABLE IF NOT EXISTS `meta_content` (
  `post_id` int(11) NOT NULL,
  `article_content` text NOT NULL,
  `link` text NOT NULL,
  `main_category_id` int(11) NOT NULL,
  `article_title` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post_management`
--

CREATE TABLE IF NOT EXISTS `post_management` (
  `Post_Id` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Title` varchar(500) NOT NULL,
  `Category_Name` varchar(50) NOT NULL,
  `Main_Article` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Summary` varchar(1000) NOT NULL,
  `Keywords` text NOT NULL,
  `Post_Url` varchar(500) NOT NULL,
  `Status` int(11) NOT NULL,
  `Post_Id_Duplicate` text NOT NULL,
  `Count_Duplicate` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE IF NOT EXISTS `sites` (
  `Site_id` int(11) NOT NULL,
  `Site_Name` varchar(100) NOT NULL,
  `Site_Link` varchar(500) NOT NULL,
  `Date` date NOT NULL,
  `Active` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`Site_id`, `Site_Name`, `Site_Link`, `Date`, `Active`) VALUES
(1, 'Google News_world', 'https://news.google.co.in/news/section?cf=all&pz=1&topic=w', '2016-07-09', 1),
(2, 'google news india', 'https://news.google.co.in/news/section?cf=all&pz=1&topic=n', '2016-07-09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `site_access_frequency`
--

CREATE TABLE IF NOT EXISTS `site_access_frequency` (
  `Id` int(11) NOT NULL,
  `Site_id` int(11) NOT NULL,
  `Time_Of_Day` time NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `site_category`
--

CREATE TABLE IF NOT EXISTS `site_category` (
  `Category_Id` int(11) NOT NULL,
  `Site_Id` int(11) NOT NULL,
  `Category_Name` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `Main_Category_Id` int(11) NOT NULL,
  `Story_Count` int(11) NOT NULL,
  `Active` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_category`
--

INSERT INTO `site_category` (`Category_Id`, `Site_Id`, `Category_Name`, `link`, `Main_Category_Id`, `Story_Count`, `Active`) VALUES
(1, 1, 'world', 'https://news.google.co.in/news/section?cf=all&pz=1&topic=w', 1, 10, 1),
(2, 2, 'india', 'https://news.google.co.in/news/section?cf=all&pz=1&topic=n', 2, 10, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `meta_content`
--
ALTER TABLE `meta_content`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_management`
--
ALTER TABLE `post_management`
  ADD PRIMARY KEY (`Post_Id`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`Site_id`);

--
-- Indexes for table `site_access_frequency`
--
ALTER TABLE `site_access_frequency`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `site_category`
--
ALTER TABLE `site_category`
  ADD PRIMARY KEY (`Category_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `meta_content`
--
ALTER TABLE `meta_content`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `post_management`
--
ALTER TABLE `post_management`
  MODIFY `Post_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `Site_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `site_access_frequency`
--
ALTER TABLE `site_access_frequency`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `site_category`
--
ALTER TABLE `site_category`
  MODIFY `Category_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
