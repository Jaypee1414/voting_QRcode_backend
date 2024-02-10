-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: us-cluster-east-01.k8s.cleardb.net
-- Generation Time: Feb 02, 2024 at 02:13 AM
-- Server version: 8.0.34-26.1
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `heroku_d477d65f5ab7b33`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `candidatesID` int NOT NULL,
  `electionName` varchar(500) NOT NULL,
  `partylistName` varchar(500) NOT NULL,
  `position` varchar(500) NOT NULL,
  `schoolID` varchar(500) NOT NULL,
  `vote` int NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`candidatesID`, `electionName`, `partylistName`, `position`, `schoolID`, `vote`, `image`) VALUES
(45, '16', 'BLESSY', 'SECRETARY', 'TEST', 0, ''),
(42, '16', 'LAVAREL', 'TREASURER', 'COL200048', 0, ''),
(43, '16', 'BLESSY', 'PRESIDENT', 'TEST', 0, ''),
(44, '16', 'BLESSY', 'VICE-PRESIDENT', 'TEST', 0, ''),
(40, '16', 'LAVAREL', 'VICE-PRESIDENT', 'COL200048', 0, ''),
(12, '21', 'BLUE', 'PRESIDENT', 'COL200048', 0, ''),
(13, '21', 'BLUE', 'VICE-PRESIDENT', 'COL200048', 0, ''),
(14, '21', 'BLUE', '', 'COL200048', 0, ''),
(15, '21', 'BLUE', 'SECRETARY', 'COL200048', 0, ''),
(16, '21', 'BLUE', 'TREASURER', 'COL200048', 0, ''),
(17, '21', 'BLUE', 'AUDITOR', 'COL200048', 0, ''),
(18, '21', 'BLUE', 'PIO', 'COL200048', 0, ''),
(19, '21', 'BLUE', 'PEACE OFFICER', 'COL200048', 0, ''),
(20, '21', 'BLUE', 'PEACE OFFICER', 'TEST', 0, ''),
(21, '21', 'BLUE', 'PROJECT MANAGER', 'TEST', 0, ''),
(22, '21', 'BLUE', 'ESCORT', 'COL200048', 0, ''),
(23, '21', 'BLUE', 'MUSE', 'TEST', 0, ''),
(24, '21', 'BLUE', 'PROJECT MANAGER', 'COL200048', 0, ''),
(25, '20', 'LAVA', 'DOG STYLE', 'COL200048', 0, ''),
(26, '20', 'LAVA', 'VICE PRESS', 'COL200048', 0, ''),
(27, '20', 'LAVA', 'Escort', 'COL200048', 0, ''),
(28, '12', 'waifu', 'pillow ', 'COL200048', 0, ''),
(46, '16', 'BLESSY', 'TREASURER', 'TEST', 0, ''),
(41, '16', 'LAVAREL', 'SECRETARY', 'COL200048', 0, ''),
(39, '16', 'LAVAREL', 'PRESIDENT', 'COL200048', 0, ''),
(47, '16', 'ROBERT', 'PRESIDENT', 'COL200048', 0, ''),
(48, '16', 'BLESSY', 'ESCORT', 'COL200048', 0, ''),
(49, '16', 'ROBERT', 'VICE-PRESIDENT', 'TEST', 0, ''),
(50, '16', 'REACTJS', 'ESCORT', 'TEST', 0, ''),
(51, '23', 'Sparkle', 'President', 'COL200048', 14, 'image_1704861166691.jpg'),
(52, '23', 'Sparkle', 'Vice-President', 'TEST', 13, ''),
(53, '23', 'Sparkle', 'Secretary', '200021101407', 7, ''),
(54, '23', 'Twinkle', 'President', 'COL200679', 13, 'image_1704861166691.jpg'),
(55, '23', 'Twinkle', 'Vice-President', 'COL221364', 7, ''),
(56, '23', 'Twinkle', 'Secretary', 'TEST1234546', 1, ''),
(63, '15', 'MACKENZIE', '', 'COL200048', 0, 'image_1704846971775.jpg'),
(64, '15', 'MACKENZIE', 'president', 'TEST', 0, 'image_1704861166691.jpg'),
(65, '15', 'MACKENZIE', 'president', 'COL200048', 0, 'image_1704950098431.jpg'),
(66, '15', 'MACKENZIE', 'president', 'TEST', 0, 'image_1704980043287.jpg'),
(67, '25', 'JUJUTSU KAISEN', 'PRESIDENT', 'COL146236', 7, 'image_1705042758243.jpg'),
(68, '25', 'JUJUTSU KAISEN', 'VICE-PRESIDENT', 'COL200048', 5, 'image_1705042791193.jpg'),
(69, '25', 'JUJUTSU KAISEN', 'SECRETARY', 'TEST', 3, 'image_1705042822480.jpg'),
(70, '25', 'HXH', 'PRESIDENT', '200021101407', 1, 'image_1705042888172.jpg'),
(71, '25', 'HXH', 'VICE-PRESIDENT', 'COL200679', 3, 'image_1705042923838.jpg'),
(72, '25', 'HXH', 'SECRETARY', 'COL221364', 5, 'image_1705043025667.jpg'),
(73, '26', 'LAVA', 'PRESIDENT', 'COL200048', 2, 'image_1705300004269.png'),
(74, '26', 'SPARK', 'PRESIDENT', 'TEST', 2, 'image_1705300053667.png'),
(75, '27', 'Twinkle', 'Vice-President', 'COL200048', 4, 'image_1705305346299.png'),
(76, '27', 'Sparkle', 'Vice-President', 'COL789654', 2, 'image_1705305382193.png'),
(77, '27', 'Twinkle', 'Secretary', 'TEST', 2, 'image_1705465724997.jpg'),
(78, '27', 'Twinkle', '', 'COL221364', 4, 'image_1705467574672.jpg'),
(79, '27', 'Twinkle', 'Secretary', 'COL221364', 4, 'image_1705467634125.jpg'),
(80, '27', 'Twinkle', 'AUDITOR', 'COL230479', 1, 'image_1705556608195.png'),
(81, '27', 'Sparkle', 'AUDITOR', 'COL170045', 1, 'image_1705556706491.png');

-- --------------------------------------------------------

--
-- Table structure for table `election`
--

CREATE TABLE `election` (
  `Election_id` int NOT NULL,
  `ElectionName` varchar(50) NOT NULL,
  `ElectionYear` varchar(1000) NOT NULL,
  `HeadName` text NOT NULL,
  `Description` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `election`
--

INSERT INTO `election` (`Election_id`, `ElectionName`, `ElectionYear`, `HeadName`, `Description`) VALUES
(14, 'DELA ELECT', 'test', 'test', 'test'),
(13, 'DBM', 'test', 'test', 'test'),
(12, 'ALLIED MEDICINE', 'test', 'test', 'test'),
(19, 'CRIMINO', '2022', 'IDRIZ', 'ELECTION CRIM'),
(22, 'DBM', '11/03/00', 'Jaypee ', 'departmnet business Ad'),
(23, 'DCSSO', '2023', 'mhin', 'Dcs only'),
(24, 'DCSSO', '2023', 'SIR PAT ', 'FOR DCS'),
(25, 'TOP ANIME', '2024', 'KHAN', 'ELECTION FOR ANIME'),
(26, 'DCSSO', '2023', 'mhin', 'election'),
(27, 'SSG', '2023', 'sir john', 'for southern');

-- --------------------------------------------------------

--
-- Table structure for table `partylist`
--

CREATE TABLE `partylist` (
  `partylistID` int NOT NULL,
  `electionName` varchar(500) NOT NULL,
  `partylistName` varchar(500) NOT NULL,
  `partylistMean` varchar(500) NOT NULL,
  `partylistLead` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partylist`
--

INSERT INTO `partylist` (`partylistID`, `electionName`, `partylistName`, `partylistMean`, `partylistLead`) VALUES
(6, '16', 'LAVAREL ', 'PROGRAMMING ', 'JAYPEE'),
(5, '16', 'BLESSY', 'YHAN', 'BANCAYRIN'),
(4, '15', 'MACKENZIE', 'NATHALIE', 'EVE'),
(7, '15', 'LAVA ', 'LOVE ', 'jaypee '),
(8, '19', 'ZOLDYCK', 'HXH', 'MADZFAR '),
(9, '19', 'PIRATES', 'KING OF THE KING', 'JUSTIN'),
(10, '20', 'LAVA ', 'LAVACAKES', 'MADZFAR'),
(11, '20', 'WAIFU', 'THANKYOU', 'JUSTIN'),
(12, '21', 'BLUE', 'BRAVE, LOVE , UNDERSTAND, ELIMINATE ', 'BLESSY YHAN BANCAYRIN'),
(13, '20', 'Faiiry tail', 'brotuo', 'black bull'),
(14, '12', 'waifu', 'uyabu', 'justin'),
(15, '12', 'ecchi', 'madzfar ', 'sampang'),
(16, '12', 'hentai', 'goodboy ', 'jaypee'),
(17, '20', 'GOLDEN HEAVEN', 'good boy ', 'SAMPANG'),
(18, '20', 'la MERCED', 'GOOD GIRL ', 'justin'),
(19, '20', 'forest lake', 'thankyou ', 'JOHNNY'),
(20, '20', 'STA CRUZ CEMENTERY', 'sleep well ', 'sampang'),
(21, '16', 'ROBERT ', 'SECRET', 'JAYPEE'),
(22, '16', 'REACTJS', 'FRAMEWORK', 'JAYPEE'),
(23, '23', 'Sparkle', 'beauty', 'John Paul Bancayrin'),
(24, '23', 'Twinkle', 'little Star', 'Justin Kashim'),
(25, '25', 'JUJUTSU KAISEN', 'CURSE', 'JAYPEE'),
(26, '25', 'HXH', 'NEN', 'JUSTIN'),
(27, '26', 'LAVA', '1st partylist', 'raiza'),
(28, '26', 'SPARK', '2nd partylist', 'IAN'),
(29, '27', 'Twinkle', 'shine', 'Ian'),
(30, '27', 'Sparkle', 'shine', 'Justin'),
(31, '16', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `positionID` int NOT NULL,
  `electionName` bigint NOT NULL,
  `Position` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`positionID`, `electionName`, `Position`) VALUES
(53, 27, 'AUDITOR'),
(52, 27, ''),
(51, 27, 'Secretary'),
(50, 27, 'Vice-President'),
(49, 26, 'PRESIDENT'),
(36, 16, 'VICE-PRESIDENT'),
(37, 16, 'SECRETARY'),
(38, 16, 'TREASURER'),
(48, 25, 'SECRETARY'),
(47, 25, 'VICE-PRESIDENT'),
(46, 25, 'PRESIDENT'),
(45, 15, 'president'),
(42, 23, 'Secretary'),
(41, 23, 'Vice-President'),
(40, 23, 'President'),
(39, 16, 'ESCORT'),
(35, 16, 'PRESIDENT');

-- --------------------------------------------------------

--
-- Table structure for table `preregister`
--

CREATE TABLE `preregister` (
  `user_number` int NOT NULL,
  `schoolID` varchar(50) NOT NULL,
  `fullname` text NOT NULL,
  `address` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `studentnumber` bigint NOT NULL,
  `guardiannumber` bigint NOT NULL,
  `guardianfullname` text NOT NULL,
  `guardianaddress` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preregister`
--

INSERT INTO `preregister` (`user_number`, `schoolID`, `fullname`, `address`, `course`, `studentnumber`, `guardiannumber`, `guardianfullname`, `guardianaddress`) VALUES
(1, 'COL456789', 'JEANROSE BELMONTE ', 'TALON TALON', 'BSCS-IV', 9150179759, 9150179759, 'JOSEPHINE BANCAYRIN', 'GUIWAN'),
(2, 'COL987654', 'BLESSY-YHAN BANCAYRIN ', 'GUIWAN', 'BSIT-III', 9150179759, 91501789759, 'JOSEPHINE BANCAYRIN', 'GUIWAN'),
(3, 'COL200048', 'JOHNPAUL P. BANCAYRIN ', 'GUIWAN ', 'BSCS-IV', 9150179759, 9150179759, 'JOSEPHINE BANCAYRIN ', 'GUIWAN'),
(16, 'COL221364', 'IAN BENEDICT F VICENTE', 'VITALI', 'BSIT', 9651650188, 9651650188, 'CLAUDIA VICENTE', 'VITALI');

-- --------------------------------------------------------

--
-- Table structure for table `studentregister`
--

CREATE TABLE `studentregister` (
  `user_number` int NOT NULL,
  `schoolID` varchar(50) NOT NULL,
  `fullname` text NOT NULL,
  `address` text NOT NULL,
  `course` varchar(50) NOT NULL,
  `studentnumber` bigint NOT NULL,
  `guardiannumber` bigint NOT NULL,
  `guardianfullname` text NOT NULL,
  `guardianaddress` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentregister`
--

INSERT INTO `studentregister` (`user_number`, `schoolID`, `fullname`, `address`, `course`, `studentnumber`, `guardiannumber`, `guardianfullname`, `guardianaddress`) VALUES
(1, 'COL200048', 'JOHN PAUL P. BANCAYRIN', 'JOHN PAUL P. BANCAYRIN', 'BSCS-IV', 9067663349, 9150179759, 'JOSEPHINE P. BANCAYRIN', 'BUENBRAZO GUIWAN Z.C'),
(2, '200021101407', 'JEANROSE B. BELMONTE', 'TALON TALON', 'BSRT-III', 2020, 2020, 'RIZA BELMONTE', 'TALON TALON '),
(3, 'TEST', 'TEST', 'TEST', 'TEST', 11, 111, 'TEST', 'TEST'),
(4, 'TEST1234546', 'TEST1234546', 'TEST1234546', 'TEST1234546', 11, 11, 'TEST1234546', 'TEST1234546'),
(5, 'COL110300', 'JOHN PAUL P. BANCAYRIN', 'BUENBRAZO GUIWAN Z.C', 'BSCS-IV', 9067663349, 9150179759, 'JOSEPHINE P. BANCAYRIN', 'BUENBRAZO GUIWAN Z.C'),
(6, 'COL221364', 'IAN', 'CULIANAN', 'BSIT-IV', 8080, 8080, 'KAYE', 'CULIANAN'),
(7, 'COL200679', 'JUSTIN KASHIM', 'ZAMBOWOOD ZAMBOANGA CITY', 'BSIT-IV', 9150179759, 9150179759, 'MADZFAR SAMPANG', 'STA. CATALINA'),
(8, 'COL146236', 'KHAN', 'TETUAN', 'BSIT-IV', 8080, 8080, 'SUAREZ', 'TALON TALON'),
(9, 'COL230479', 'ROBERTO JR, V. PAMA', 'PASUMANOK', 'BSCRIM-I', 9817161397, 8080, 'RODEL PAMA', 'PASUMANOK'),
(10, 'COL210602', 'ANGELIE A. MARCIAL', 'DIVISORIA', 'BSCRIM-III', 8080, 8080, 'RAYAN MAUDAY ', 'TALON-TALON'),
(11, 'COL123123', 'JAYPEE BANCAYRIN ', 'GUIWAN ', 'BSCS-IV', 8080, 8080, 'JOSEPHINE', 'GUIWAN'),
(12, 'COL555444', 'JEANROSE BELMONTE', 'TALON TALON', 'BSRT-III', 8080, 8080, 'RIZA BELMONTE', 'TALON TALON'),
(13, 'COL170045', 'SANDRA A. HAMIE', 'SINUNUC', 'BSCS-IV', 8080, 8080, 'JOHN PAUL P. BANCAYRIN', 'guiwan'),
(14, 'COL190597', 'NAPIH, MARJONAIDIN L', 'talon-JUMP', 'BSIT-IV', 9900900099, 9900900099, 'LUCIFER HELL', 'HEAVEN'),
(15, 'COL200297', 'MADZFAR SAMPANG ', 'STA CATALINA', 'BSIT-IV', 8080, 8080, 'IAN BENEDICT', 'TALON-TALON'),
(16, 'COL789654', 'JOHN PAUL P. BANCAYRIN', 'GUIWAN ', 'BSCS-IV', 8080, 9150179759, 'JOSEPHINE BANCAYRIN', 'GUIWAN');

-- --------------------------------------------------------

--
-- Table structure for table `studentvote`
--

CREATE TABLE `studentvote` (
  `user_id` int NOT NULL,
  `schoolID` varchar(200) NOT NULL,
  `DateVote` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `vote` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentvote`
--

INSERT INTO `studentvote` (`user_id`, `schoolID`, `DateVote`, `vote`) VALUES
(36, 'COL123123', '2024-01-17 05:09:35', 1),
(37, 'COL071416', '2024-01-18 05:48:21', 1),
(38, 'COL555444', '2024-01-18 05:50:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_tbl`
--

CREATE TABLE `student_tbl` (
  `student_ID` varchar(50) NOT NULL,
  `Name` text NOT NULL,
  `Course` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_tbl`
--

INSERT INTO `student_tbl` (`student_ID`, `Name`, `Course`) VALUES
('col200048', 'johnpaulbancayrin', 'bscs'),
('COL141414', 'JEANROSEBELMONTE', 'bsrt'),
('MCKENZIE 12302018', 'NATHALIE EVE BANCAYRIN', 'KINDER GARDEN'),
('COL2000048', 'JEANROSE BELMONTE ', 'BSIT'),
('COL071416', 'BANCAYRIN JOHN PAUL', 'BACHELOR SCIENCE IN COMPUTER SCIENCE');

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `user_id` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`user_id`, `username`, `password`) VALUES
('1', 'property', 'property123'),
('2', 'admin', 'admin123'),
('1', 'property', 'property123'),
('2', 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

CREATE TABLE `vote` (
  `vote_id` int NOT NULL,
  `ElectionName` varchar(200) NOT NULL,
  `Validation` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vote`
--

INSERT INTO `vote` (`vote_id`, `ElectionName`, `Validation`) VALUES
(3, '16', 1),
(4, 'DCSSO', 1),
(5, '16', 1),
(6, '16', 1),
(7, '16', 1),
(8, '16', 1),
(9, '16', 1),
(10, '16', 1),
(11, '16', 1),
(12, '16', 1),
(13, '16', 1),
(14, '16', 1),
(15, '16', 1),
(16, '16', 1),
(17, '16', 1),
(18, '16', 1),
(19, '16', 1),
(20, '23', 1),
(21, '23', 1),
(22, '23', 1),
(23, '23', 1),
(24, '23', 1),
(25, '23', 1),
(26, '23', 1),
(27, '23', 1),
(53, '27', 0),
(52, '27', 0),
(51, '27', 1),
(50, '27', 1),
(49, '25', 1),
(48, '25', 1),
(47, '27', 1),
(46, '26', 1),
(45, '26', 1),
(44, '26', 1),
(43, '25', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`candidatesID`);

--
-- Indexes for table `election`
--
ALTER TABLE `election`
  ADD PRIMARY KEY (`Election_id`);

--
-- Indexes for table `partylist`
--
ALTER TABLE `partylist`
  ADD PRIMARY KEY (`partylistID`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`positionID`);

--
-- Indexes for table `preregister`
--
ALTER TABLE `preregister`
  ADD PRIMARY KEY (`user_number`);

--
-- Indexes for table `studentregister`
--
ALTER TABLE `studentregister`
  ADD PRIMARY KEY (`user_number`);

--
-- Indexes for table `studentvote`
--
ALTER TABLE `studentvote`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `student_tbl`
--
ALTER TABLE `student_tbl`
  ADD PRIMARY KEY (`student_ID`);

--
-- Indexes for table `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`vote_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `candidatesID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `election`
--
ALTER TABLE `election`
  MODIFY `Election_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `partylist`
--
ALTER TABLE `partylist`
  MODIFY `partylistID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `positionID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `preregister`
--
ALTER TABLE `preregister`
  MODIFY `user_number` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `studentregister`
--
ALTER TABLE `studentregister`
  MODIFY `user_number` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `studentvote`
--
ALTER TABLE `studentvote`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `vote`
--
ALTER TABLE `vote`
  MODIFY `vote_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
