-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2026 at 04:29 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hukangame`
--

-- --------------------------------------------------------

--
-- Table structure for table `color_team`
--

CREATE TABLE `color_team` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `color_team`
--

INSERT INTO `color_team` (`color_id`, `color_name`) VALUES
(1, 'สีแดง'),
(2, 'สีเหลือง'),
(3, 'สีเขียว'),
(4, 'สีน้ำเงิน');

-- --------------------------------------------------------

--
-- Table structure for table `committee`
--

CREATE TABLE `committee` (
  `committee_id` int(11) NOT NULL,
  `committee_name` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `sport_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_id` int(11) NOT NULL,
  `faculty_name` varchar(100) NOT NULL,
  `color_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `faculty_name`, `color_id`) VALUES
(1, 'บริหารธุรกิจ', 1),
(2, 'เภสัชศาสตร์', 1),
(3, 'ทัตแพทย์ศาสตร์', 1),
(4, 'groble', 1),
(5, 'พยาบาลศาสตร์', 2),
(6, 'วิทยาศาสตร์', 2),
(7, 'รัฐศาสตร์', 2),
(8, 'SCA', 2),
(9, 'ศิลปศาสตร์', 3),
(10, 'แพทยศาสตร์', 3),
(11, 'วิศวกรรมศาสตร์', 3),
(12, 'นิติศาสตร์', 3),
(13, 'นิเทศศาสตร์', 4),
(14, 'หลักสูตรนานาชาติ', 4),
(15, 'เทคโนโลยีสารสนเทศ', 4),
(16, 'ทัศนมาตร์', 4);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image_id` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `sport_id` int(11) NOT NULL,
  `image_type` enum('profile','student_card') NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `upload_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_id`, `student_id`, `sport_id`, `image_type`, `image_path`, `upload_date`) VALUES
(17, '6605100006', 5, 'profile', 'uploads/profile/6605100006_5_profile.png', '2026-01-09 10:02:48'),
(18, '6605100006', 5, 'student_card', 'uploads/student_card/6605100006_5_student_card.png', '2026-01-09 10:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `match_schedule`
--

CREATE TABLE `match_schedule` (
  `match_id` int(11) NOT NULL,
  `match_date` date NOT NULL,
  `match_no` int(11) DEFAULT NULL,
  `sport_id` int(11) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `round_name` varchar(50) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `team1_id` int(11) DEFAULT NULL,
  `team2_id` int(11) DEFAULT NULL,
  `venue` varchar(100) DEFAULT NULL,
  `result` varchar(100) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `match_schedule`
--

INSERT INTO `match_schedule` (`match_id`,`match_date`, `match_no`, `sport_id`, `category`, `round_name`, `start_time`, `team1_id`, `team2_id`, `venue`, `result`, `note`) VALUES
-- วันที่ 13/3/2026
(1,'2026-03-13', 1, 1, 'ทีมชาย', 'รอบแรก', '16:30:00', 3, 2, 'ศูนย์กีฬา', '', ''),
(2,'2026-03-13', 2, 1, 'ทีมชาย', 'รอบแรก', '17:15:00', 4, 1, 'ศูนย์กีฬา', '', ''),
(3,'2026-03-13', 3, 4, 'หญิงเดี่ยว', 'รอบแรก', '16:30:00', 3, 2, 'คอร์ท1', '', ''),
(4,'2026-03-13', 4, 4, 'หญิงเดี่ยว', 'รอบแรก', '17:30:00', 4, 1, 'คอร์ท1', '', ''),
(5,'2026-03-13', 5, 5, 'ชายเดี่ยว', 'รอบแรก', '16:30:00', 1, 4, 'คอร์ท2', '', ''),
(6,'2026-03-13', 6, 5, 'ชายเดี่ยว', 'รอบแรก', '17:30:00', 3, 2, 'คอร์ท2', '', ''),
(7,'2026-03-13', 7, 6, 'คู่ผสม', 'รอบแรก', '18:30:00', 1, 4, 'คอร์ท1', '', ''),
(8,'2026-03-13', 8, 6, 'คู่ผสม', 'รอบแรก', '18:30:00', 3, 2, 'คอร์ท2', '', ''),
(9,'2026-03-13', 9, 15, 'ชายเดี่ยว', 'รอบแรก', '16:30:00', 3, 2, 'โต๊ะ1', '', ''),
(10,'2026-03-13', 10, 15, 'ชายเดี่ยว', 'รอบแรก', '17:00:00', 4, 1, 'โต๊ะ2', '', ''),
(11,'2026-03-13', 11, 16, 'หญิงเดี่ยว', 'รอบแรก', '16:30:00', 3, 2, 'โต๊ะ1', '', ''),
(12,'2026-03-13', 12, 16, 'หญิงเดี่ยว', 'รอบแรก', '17:00:00', 4, 1, 'โต๊ะ2', '', ''),
(13,'2026-03-13', 13, 15, 'ชายเดี่ยว', 'รอบสอง', '17:30:00', 3, 1, 'โต๊ะ1', '', ''),
(14,'2026-03-13', 14, 15, 'ชายเดี่ยว', 'รอบสอง', '18:00:00', 4, 2, 'โต๊ะ2', '', ''),
(15,'2026-03-13', 15, 16, 'หญิงเดี่ยว', 'รอบสอง', '17:30:00', 3, 1, 'โต๊ะ1', '', ''),
(16,'2026-03-13', 16, 16, 'หญิงเดี่ยว', 'รอบสอง', '18:00:00', 4, 2, 'โต๊ะ2', '', ''),
(17,'2026-03-13', 17, 20, 'ทีม', 'รอบแรก', '16:30:00', 2, 3, '19-403', '', ''),
(18,'2026-03-13', 18, 20, 'ทีม', 'รอบแรก', '16:30:00', 4, 1, '19-403', '', ''),

-- วันที่ 14/3/2026
(19,'2026-03-14', 19, 21, 'ทีมชาย', 'รอบแรก', '16:30:00', 3, 2, 'ศูนย์กีฬา', '', ''),
(20,'2026-03-14', 20, 21, 'ทีมชาย', 'รอบแรก', '17:00:00', 4, 1, 'ศูนย์กีฬา', '', ''),
(21,'2026-03-14', 21, 22, 'ทีมหญิง', 'รอบแรก', '17:30:00', 3, 2, 'ศูนย์กีฬา', '', ''),
(22,'2026-03-14', 22, 22, 'ทีมหญิง', 'รอบแรก', '18:00:00', 2, 4, 'ศูนย์กีฬา', '', ''),
(23,'2026-03-14', 23, 7, 'คู่หญิง', 'รอบแรก', '16:30:00', 3, 2, 'คอร์ท2', '', ''),
(24,'2026-03-14', 24, 7, 'คู่หญิง', 'รอบแรก', '17:30:00', 4, 1, 'คอร์ท2', '', ''),
(25,'2026-03-14', 25, 8, 'คู่ชาย', 'รอบแรก', '16:30:00', 4, 1, 'คอร์ท1', '', ''),
(26,'2026-03-14', 26, 8, 'คู่ชาย', 'รอบแรก', '17:30:00', 3, 2, 'คอร์ท1', '', ''),
(27,'2026-03-14', 27, 17, 'คู่ชาย', 'รอบแรก', '16:30:00', 3, 2, 'โต๊ะ1', '', ''),
(28,'2026-03-14', 28, 17, 'คู่ชาย', 'รอบแรก', '17:00:00', 4, 1, 'โต๊ะ2', '', ''),
(29,'2026-03-14', 29, 18, 'คู่หญิง', 'รอบแรก', '16:30:00', 3, 2, 'โต๊ะ1', '', ''),
(30,'2026-03-14', 30, 18, 'คู่หญิง', 'รอบแรก', '17:00:00', 4, 1, 'โต๊ะ2', '', ''),
(31,'2026-03-14', 31, 17, 'คู่ชาย', 'รอบสอง', '17:30:00', 3, 1, 'โต๊ะ1', '', ''),
(32,'2026-03-14', 32, 17, 'คู่ชาย', 'รอบสอง', '18:00:00', 4, 2, 'โต๊ะ2', '', ''),
(33,'2026-03-14', 33, 18, 'คู่หญิง', 'รอบสอง', '17:30:00', 3, 1, 'โต๊ะ1', '', ''),
(34,'2026-03-14', 34, 18, 'คู่หญิง', 'รอบสอง', '18:00:00', 4, 2, 'โต๊ะ2', '', ''),

-- วันที่ 17/3/2026
(35,'2026-03-17', 35, 2, 'ทีมชาย', 'รอบแรก', '17:40:00', 3, 2, 'ศูนย์กีฬา', '', ''),
(36,'2026-03-17', 36, 2, 'ทีมชาย', 'รอบแรก', '18:00:00', 4, 1, 'ศูนย์กีฬา', '', ''),
(37,'2026-03-17', 37, 3, 'ทีมหญิง', 'รอบแรก', '18:20:00', 3, 2, 'ศูนย์กีฬา', '', ''),
(38,'2026-03-17', 38, 3, 'ทีมหญิง', 'รอบแรก', '18:40:00', 4, 1, 'ศูนย์กีฬา', '', ''),
(39,'2026-03-17', 39, 23, 'ทีมหญิง', 'รอบแรก', '16:30:00', 3, 2, 'ศูนย์กีฬา', '', ''),
(40,'2026-03-17', 40, 23, 'ทีมหญิง', 'รอบแรก', '17:00:00', 4, 1, 'ศูนย์กีฬา', '', ''),
(41,'2026-03-17', 41, 10, 'คู่ชาย', 'รอบแรก', '16:30:00', 3, 2, 'สนาม1', '', ''),
(42,'2026-03-17', 42, 10, 'คู่ชาย', 'รอบแรก', '17:00:00', 4, 1, 'สนาม1', '', ''),
(43,'2026-03-17', 43, 11, 'คู่หญิง', 'รอบแรก', '16:30:00', 3, 2, 'สนาม2', '', ''),
(44,'2026-03-17', 44, 11, 'คู่หญิง', 'รอบแรก', '17:00:00', 4, 1, 'สนาม2', '', ''),
(45,'2026-03-17', 45, 4, 'หญิงเดี่ยว', 'รอบสอง', '16:30:00', 3, 1, 'คอร์ท1', '', ''),
(46,'2026-03-17', 46, 4, 'หญิงเดี่ยว', 'รอบสอง', '17:30:00', 4, 2, 'คอร์ท1', '', ''),
(47,'2026-03-17', 47, 5, 'ชายเดี่ยว', 'รอบสอง', '16:30:00', 1, 3, 'คอร์ท2', '', ''),
(48,'2026-03-17', 48, 5, 'ชายเดี่ยว', 'รอบสอง', '17:30:00', 4, 2, 'คอร์ท2', '', ''),
(49,'2026-03-17', 49, 6, 'คู่ผสม', 'รอบสอง', '18:30:00', 2, 4, 'คอร์ท1', '', ''),
(50,'2026-03-17', 50, 6, 'คู่ผสม', 'รอบสอง', '18:30:00', 3, 1, 'คอร์ท2', '', ''),
(51,'2026-03-17', 51, 19, 'คู่ผสม', 'รอบแรก', '16:30:00', 3, 2, 'โต๊ะ1', '', ''),
(52,'2026-03-17', 52, 19, 'คู่ผสม', 'รอบแรก', '16:30:00', 4, 1, 'โต๊ะ2', '', ''),
(53,'2026-03-17', 53, 19, 'คู่ผสม', 'รอบสอง', '17:00:00', 3, 1, 'โต๊ะ1', '', ''),
(54,'2026-03-17', 54, 19, 'คู่ผสม', 'รอบสอง', '17:00:00', 4, 2, 'โต๊ะ2', '', ''),
(55,'2026-03-17', 55, 14, 'ทีมชาย', 'รอบแรก', '16:30:00', 2, 3, 'ลานหัวช้าง', '', ''),
(56,'2026-03-17', 56, 14, 'ทีมชาย', 'รอบแรก', '17:30:00', 4, 1, 'ลานหัวช้าง', '', ''),
(57,'2026-03-17', 57, 20, 'ทีม', 'รอบสอง', '16:30:00', 1, 3, '19-403', '', ''),
(58,'2026-03-17', 58, 20, 'ทีม', 'รอบสอง', '16:30:00', 2, 4, '19-403', '', ''),

-- วันที่ 18/3/2026
(59,'2026-03-18', 59, 22, 'ทีมหญิง', 'รอบสอง', '16:30:00', 1, 3, 'ศูนย์กีฬา', '', ''),
(60,'2026-03-18', 60, 22, 'ทีมหญิง', 'รอบสอง', '17:00:00', 2, 4, 'ศูนย์กีฬา', '', ''),
(61,'2026-03-18', 61, 21, 'ทีมชาย', 'รอบสอง', '17:30:00', 1, 3, 'ศูนย์กีฬา', '', ''),
(62,'2026-03-18', 62, 21, 'ทีมชาย', 'รอบสอง', '18:00:00', 2, 4, 'ศูนย์กีฬา', '', ''),
(63,'2026-03-18', 63, 7, 'คู่หญิง', 'รอบสอง', '16:30:00', 3, 1, 'คอร์ท1', '', ''),
(64,'2026-03-18', 64, 7, 'คู่หญิง', 'รอบสอง', '17:30:00', 4, 2, 'คอร์ท1', '', ''),
(65,'2026-03-18', 65, 8, 'คู่ชาย', 'รอบสอง', '16:30:00', 4, 2, 'คอร์ท2', '', ''),
(66,'2026-03-18', 66, 8, 'คู่ชาย', 'รอบสอง', '17:30:00', 3, 1, 'คอร์ท2', '', ''),
(67,'2026-03-18', 67, 10, 'คู่ชาย', 'รอบสอง', '16:30:00', 1, 3, 'สนาม1', '', ''),
(68,'2026-03-18', 68, 10, 'คู่ชาย', 'รอบสอง', '17:00:00', 2, 4, 'สนาม1', '', ''),
(69,'2026-03-18', 69, 11, 'คู่หญิง', 'รอบสอง', '16:30:00', 1, 3, 'สนาม2', '', ''),
(70,'2026-03-18', 70, 11, 'คู่หญิง', 'รอบสอง', '17:00:00', 2, 4, 'สนาม2', '', ''),

-- วันที่ 19/3/2026
(71,'2026-03-19', 71, 2, 'ทีมชาย', 'รอบสอง', '17:40:00', 3, 1, 'ศูนย์กีฬา', '', ''),
(72,'2026-03-19', 72, 2, 'ทีมชาย', 'รอบสอง', '18:00:00', 4, 2, 'ศูนย์กีฬา', '', ''),
(73,'2026-03-19', 73, 3, 'ทีมหญิง', 'รอบสอง', '18:20:00', 3, 1, 'ศูนย์กีฬา', '', ''),
(74,'2026-03-19', 74, 3, 'ทีมหญิง', 'รอบสอง', '18:40:00', 4, 2, 'ศูนย์กีฬา', '', ''),
(75,'2026-03-19', 75, 1, 'ทีมชาย', 'รอบสอง', '16:30:00', 3, 1, 'ศูนย์กีฬา', '', ''),
(76,'2026-03-19', 76, 1, 'ทีมชาย', 'รอบสอง', '17:15:00', 4, 2, 'ศูนย์กีฬา', '', ''),
(77,'2026-03-19', 77, 4, 'หญิงเดี่ยว', 'รอบสาม', '16:30:00', 2, 1, 'คอร์ท1', '', ''),
(78,'2026-03-19', 78, 4, 'หญิงเดี่ยว', 'รอบสาม', '17:30:00', 4, 3, 'คอร์ท1', '', ''),
(79,'2026-03-19', 79, 5, 'ชายเดี่ยว', 'รอบสาม', '16:30:00', 2, 1, 'คอร์ท2', '', ''),
(80,'2026-03-19', 80, 5, 'ชายเดี่ยว', 'รอบสาม', '17:30:00', 4, 3, 'คอร์ท2', '', ''),
(81,'2026-03-19', 81, 6, 'คู่ผสม', 'รอบสาม', '18:30:00', 2, 1, 'คอร์ท1', '', ''),
(82,'2026-03-19', 82, 6, 'คู่ผสม', 'รอบสาม', '18:30:00', 4, 3, 'คอร์ท2', '', ''),
(83,'2026-03-19', 83, 10, 'คู่ชาย', 'รอบสาม', '16:30:00', 2, 1, 'สนาม1', '', ''),
(84,'2026-03-19', 84, 10, 'คู่ชาย', 'รอบสาม', '17:00:00', 4, 3, 'สนาม1', '', ''),
(85,'2026-03-19', 85, 11, 'คู่หญิง', 'รอบสาม', '16:30:00', 2, 1, 'สนาม2', '', ''),
(86,'2026-03-19', 86, 11, 'คู่หญิง', 'รอบสาม', '17:00:00', 4, 3, 'สนาม2', '', ''),
(87,'2026-03-19', 87, 20, 'ทีม', 'รอบสาม', '16:30:00', 2, 1, '19-403', '', ''),
(88,'2026-03-19', 88, 20, 'ทีม', 'รอบสาม', '16:30:00', 4, 3, '19-403', '', ''),
(89,'2026-03-19', 89, 14, 'ทีมชาย', 'รอบสอง', '16:30:00', 3, 1, 'ลานหัวช้าง', '', ''),
(90,'2026-03-19', 90, 14, 'ทีมชาย', 'รอบสอง', '17:00:00', 4, 2, 'ลานหัวช้าง', '', ''),

-- วันที่ 20/3/2026
(91,'2026-03-20', 91, 22, 'ทีมหญิง', 'รอบสาม', '16:30:00', 3, 4, 'ศูนย์กีฬา', '', ''),
(92,'2026-03-20', 92, 22, 'ทีมหญิง', 'รอบสาม', '17:00:00', 2, 1, 'ศูนย์กีฬา', '', ''),
(93,'2026-03-20', 93, 21, 'ทีมชาย', 'รอบสาม', '17:30:00', 3, 4, 'ศูนย์กีฬา', '', ''),
(94,'2026-03-20', 94, 21, 'ทีมชาย', 'รอบสาม', '18:00:00', 2, 1, 'ศูนย์กีฬา', '', ''),
(95,'2026-03-20', 95, 10, 'คู่ชาย', 'รอบชิงฯ', '16:30:00', NULL, NULL, 'สนาม1', '', 'อันดับ1 VS อันดับ2'),
(96,'2026-03-20', 96, 11, 'คู่หญิง', 'รอบชิงฯ', '17:00:00', NULL, NULL, 'สนาม1', '', 'อันดับ1 VS อันดับ2'),
(97,'2026-03-20', 97, 20, 'ทีม', 'รอบชิงฯ', '16:30:00', NULL, NULL, '19-403', '', 'อันดับ1 VS อันดับ2'),
(98,'2026-03-20', 98, 15, 'ชายเดี่ยว', 'รอบสาม', '16:30:00', 3, 4, 'โต๊ะ1', '', ''),
(99,'2026-03-20', 99, 15, 'ชายเดี่ยว', 'รอบสาม', '16:30:00', 2, 1, 'โต๊ะ2', '', ''),
(100,'2026-03-20', 100, 16, 'หญิงเดี่ยว', 'รอบสาม', '17:00:00', 3, 4, 'โต๊ะ1', '', ''),
(101,'2026-03-20', 101, 16, 'หญิงเดี่ยว', 'รอบสาม', '17:00:00', 2, 1, 'โต๊ะ2', '', ''),
(102,'2026-03-20', 102, 17, 'คู่ชาย', 'รอบสาม', '17:30:00', 3, 4, 'โต๊ะ1', '', ''),
(103,'2026-03-20', 103, 17, 'คู่ชาย', 'รอบสาม', '17:30:00', 2, 1, 'โต๊ะ2', '', ''),
(104,'2026-03-20', 104, 18, 'คู่หญิง', 'รอบสาม', '18:00:00', 3, 4, 'โต๊ะ1', '', ''),
(105,'2026-03-20', 105, 18, 'คู่หญิง', 'รอบสาม', '18:00:00', 2, 1, 'โต๊ะ2', '', ''),
(106,'2026-03-20', 106, 7, 'คู่หญิง', 'รอบสาม', '16:30:00', 3, 4, 'คอร์ท1', '', ''),
(107,'2026-03-20', 107, 7, 'คู่หญิง', 'รอบสาม', '17:30:00', 2, 1, 'คอร์ท1', '', ''),
(108,'2026-03-20', 108, 8, 'คู่ชาย', 'รอบสาม', '16:30:00', 3, 4, 'คอร์ท2', '', ''),
(109,'2026-03-20', 109, 8, 'คู่ชาย', 'รอบสาม', '17:30:00', 2, 1, 'คอร์ท2', '', ''),

-- วันที่ 21/3/2026
(110,'2026-03-21', 110, 2, 'ทีมชาย', 'รอบสาม', '17:40:00', 3, 4, 'ศูนย์กีฬา', '', ''),
(111,'2026-03-21', 111, 2, 'ทีมชาย', 'รอบสาม', '18:00:00', 2, 1, 'ศูนย์กีฬา', '', ''),
(112,'2026-03-21', 112, 3, 'ทีมหญิง', 'รอบสาม', '18:20:00', 3, 4, 'ศูนย์กีฬา', '', ''),
(113,'2026-03-21', 113, 3, 'ทีมหญิง', 'รอบสาม', '18:40:00', 2, 1, 'ศูนย์กีฬา', '', ''),
(114,'2026-03-21', 114, 23, 'ทีมหญิง', 'รอบสอง', '16:30:00', 3, 1, 'ศูนย์กีฬา', '', ''),
(115,'2026-03-21', 115, 23, 'ทีมหญิง', 'รอบสอง', '17:00:00', 4, 2, 'ศูนย์กีฬา', '', ''),
(116,'2026-03-21', 116, 9, 'ประเภททีม', 'รอบแรก', '16:30:00', 3, 2, 'คอร์ท1', '', ''),
(117,'2026-03-21', 117, 9, 'ประเภททีม', 'รอบแรก', '16:30:00', 4, 1, 'คอร์ท2', '', ''),
(118,'2026-03-21', 118, 19, 'คู่ผสม', 'รอบสาม', '16:30:00', 3, 4, 'โต๊ะ1', '', ''),
(119,'2026-03-21', 119, 19, 'คู่ผสม', 'รอบสาม', '16:30:00', 2, 1, 'โต๊ะ2', '', ''),
(120,'2026-03-21', 120, 15, 'ชายเดี่ยว', 'รอบชิงฯ', '17:00:00', NULL, NULL, 'โต๊ะ1', '', 'อันดับ1 VS อันดับ2'),
(121,'2026-03-21', 121, 16, 'หญิงเดี่ยว', 'รอบชิงฯ', '17:00:00', NULL, NULL, 'โต๊ะ2', '', 'อันดับ1 VS อันดับ2'),
(122,'2026-03-21', 122, 14, 'ทีมชาย', 'รอบสาม', '16:30:00', 4, 3, 'ลานหัวช้าง', '', ''),
(123,'2026-03-21', 123, 14, 'ทีมชาย', 'รอบสาม', '17:00:00', 2, 1, 'ลานหัวช้าง', '', ''),

-- วันที่ 24/3/2026
(124,'2026-03-24', 124, 2, 'ทีมชาย', 'รอบชิงฯ', '17:40:00', NULL, NULL, 'ศูนย์กีฬา', '', 'อันดับ1 VS อันดับ2'),
(125,'2026-03-24', 125, 3, 'ทีมหญิง', 'รอบชิงฯ', '18:00:00', NULL, NULL, 'ศูนย์กีฬา', '', 'อันดับ1 VS อันดับ2'),
(126,'2026-03-24', 126, 1, 'ทีมชาย', 'รอบสาม', '16:30:00', 3, 4, 'ศูนย์กีฬา', '', ''),
(127,'2026-03-24', 127, 1, 'ทีมชาย', 'รอบสาม', '17:00:00', 2, 1, 'ศูนย์กีฬา', '', ''),
(128,'2026-03-24', 128, 9, 'ประเภททีม', 'รอบสอง', '16:00:00', 1, 3, 'คอร์ท1', '', ''),
(129,'2026-03-24', 129, 9, 'ประเภททีม', 'รอบสอง', '16:00:00', 2, 4, 'คอร์ท2', '', ''),
(130,'2026-03-24', 130, 12, 'ทีมชาย', 'รอบแรก', '16:30:00', 3, 2, 'สนาม1', '', ''),
(131,'2026-03-24', 131, 12, 'ทีมชาย', 'รอบแรก', '17:00:00', 4, 1, 'สนาม1', '', ''),
(132,'2026-03-24', 132, 13, 'ทีมหญิง', 'รอบแรก', '16:30:00', 3, 2, 'สนาม2', '', ''),
(133,'2026-03-24', 133, 13, 'ทีมหญิง', 'รอบแรก', '17:00:00', 4, 1, 'สนาม2', '', ''),

-- วันที่ 25/3/2026
(134,'2026-03-25', 134, 1, 'ทีมชาย', 'รอบชิงฯ', '16:30:00', NULL, NULL, 'ศูนย์กีฬา', '', 'อันดับ1 VS อันดับ2'),
(135,'2026-03-25', 135, 23, 'ทีมหญิง', 'รอบสาม', '17:00:00', 3, 4, 'ศูนย์กีฬา', '', ''),
(136,'2026-03-25', 136, 23, 'ทีมหญิง', 'รอบสาม', '17:30:00', 2, 1, 'ศูนย์กีฬา', '', ''),
(137,'2026-03-25', 137, 12, 'ทีมชาย', 'รอบสอง', '16:30:00', 3, 1, 'สนาม1', '', ''),
(138,'2026-03-25', 138, 12, 'ทีมชาย', 'รอบสอง', '17:00:00', 4, 2, 'สนาม1', '', ''),
(139,'2026-03-25', 139, 13, 'ทีมหญิง', 'รอบสอง', '16:30:00', 3, 1, 'สนาม2', '', ''),
(140,'2026-03-25', 140, 13, 'ทีมหญิง', 'รอบสอง', '17:00:00', 4, 2, 'สนาม2', '', ''),
(141,'2026-03-25', 141, 9, 'ประเภททีม', 'รอบสาม', '16:30:00', 2, 1, 'คอร์ท1', '', ''),
(142,'2026-03-25', 142, 9, 'ประเภททีม', 'รอบสาม', '16:30:00', 4, 3, 'คอร์ท2', '', ''),
(143,'2026-03-25', 143, 19, 'คู่ผสม', 'รอบชิงฯ', '16:30:00', NULL, NULL, 'โต๊ะ1', '', 'อันดับ1 VS อันดับ2'),
(144,'2026-03-25', 144, 17, 'คู่ชาย', 'รอบชิงฯ', '17:00:00', NULL, NULL, 'โต๊ะ1', '', 'อันดับ1 VS อันดับ2'),
(145,'2026-03-25', 145, 18, 'คู่หญิง', 'รอบชิงฯ', '17:30:00', NULL, NULL, 'โต๊ะ1', '', 'อันดับ1 VS อันดับ2'),

-- วันที่ 26/3/2026
(146,'2026-03-26', 146, 12, 'ทีมชาย', 'รอบสาม', '16:30:00', 3, 4, 'สนาม1', '', ''),
(147,'2026-03-26', 147, 12, 'ทีมชาย', 'รอบสาม', '17:00:00', 2, 1, 'สนาม1', '', ''),
(148,'2026-03-26', 148, 13, 'ทีมหญิง', 'รอบสาม', '16:30:00', 3, 4, 'สนาม2', '', ''),
(149,'2026-03-26', 149, 13, 'ทีมหญิง', 'รอบสาม', '17:00:00', 2, 1, 'สนาม2', '', ''),
(150,'2026-03-26', 150, 5, 'ชายเดี่ยว', 'รอบชิงฯ', '16:30:00', NULL, NULL, 'คอร์ท1', '', 'อันดับ1 VS อันดับ2'),
(151,'2026-03-26', 151, 4, 'หญิงเดี่ยว', 'รอบชิงฯ', '16:30:00', NULL, NULL, 'คอร์ท2', '', 'อันดับ1 VS อันดับ2'),
(152,'2026-03-26', 152, 8, 'คู่ชาย', 'รอบชิงฯ', '17:30:00', NULL, NULL, 'คอร์ท1', '', 'อันดับ1 VS อันดับ2'),
(153,'2026-03-26', 153, 7, 'คู่หญิง', 'รอบชิงฯ', '17:30:00', NULL, NULL, 'คอร์ท2', '', 'อันดับ1 VS อันดับ2'),
(154,'2026-03-26', 154, 6, 'คู่ผสม', 'รอบชิงฯ', '18:30:00', NULL, NULL, 'คอร์ท1', '', 'อันดับ1 VS อันดับ2'),

-- วันที่ 27/3/2026
(155,'2026-03-27', 155, 12, 'ทีมชาย', 'รอบชิงฯ', '16:30:00', NULL, NULL, 'สนาม1', '', 'อันดับ1 VS อันดับ2'),
(156,'2026-03-27', 156, 13, 'ทีมหญิง', 'รอบชิงฯ', '16:30:00', NULL, NULL, 'สนาม2', '', 'อันดับ1 VS อันดับ2'),
(157,'2026-03-27', 157, 9, 'ประเภททีม', 'รอบชิงฯ', '16:30:00', NULL, NULL, 'คอร์ท1', '', 'อันดับ1 VS อันดับ2'),

-- วันที่ 28/3/2026 (วันปิดการแข่งขัน)
(158,'2026-03-28', 158, 14, 'ทีมชาย', 'รอบชิงฯ', '09:00:00', NULL, NULL, 'ศูนย์กีฬา', '', 'อันดับ1 VS อันดับ2'),
(159,'2026-03-28', 159, 23, 'ทีมหญิง', 'รอบชิงฯ', '10:00:00', NULL, NULL, 'ศูนย์กีฬา', '', 'อันดับ1 VS อันดับ2'),
(160,'2026-03-28', 160, 22, 'ทีมหญิง', 'รอบชิงฯ', '10:30:00', NULL, NULL, 'ศูนย์กีฬา', '', 'อันดับ1 VS อันดับ2'),
(161,'2026-03-28', 161, 21, 'ทีมชาย', 'รอบชิงฯ', '11:30:00', NULL, NULL, 'ศูนย์กีฬา', '', 'อันดับ1 VS อันดับ2');

-- --------------------------------------------------------

--
-- Table structure for table `player_size`
--

CREATE TABLE `player_size` (
  `ps_id` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `sport_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `shirt_size` enum('XS','S','M','L','XL','2XL','3XL','4XL','5XL') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player_size`
--

INSERT INTO `player_size` (`ps_id`, `student_id`, `sport_id`, `color_id`, `shirt_size`) VALUES
(11, '6605100006', 5, 4, '2XL');

-- --------------------------------------------------------

--
-- Table structure for table `register_sport`
--

CREATE TABLE `register_sport` (
  `reg_id` int(11) NOT NULL,
  `student_id` varchar(20) DEFAULT NULL,
  `sport_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sport_registration`
--

CREATE TABLE `sport_registration` (
  `reg_id` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `sport_id` int(11) NOT NULL,
  `sport_name` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sport_registration`
--

INSERT INTO `sport_registration` (`reg_id`, `student_id`, `student_name`, `faculty_id`, `color_id`, `sport_id`, `sport_name`, `category`) VALUES
(6, '6605100006', 'เทส', 15, 4, 5, 'แบดมินตัน', 'ชายเดี่ยว');

-- --------------------------------------------------------

--
-- Table structure for table `sport_type`
--

CREATE TABLE `sport_type` (
  `sport_id` int(11) NOT NULL,
  `sport_name` varchar(100) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `venue_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sport_type`
--

INSERT INTO `sport_type` (`sport_id`, `sport_name`, `category`, `venue_type`) VALUES
(1, 'บาสเกตบอล', 'ทีมชาย', 'ศูนย์กีฬา'),
(2, 'บาสเกตบอลstreet', 'ทีมชาย', 'ศูนย์กีฬา'),
(3, 'บาสเกตบอลstreet', 'ทีมหญิง', 'ศูนย์กีฬา'),
(4, 'แบดมินตัน', 'หญิงเดี่ยว', 'ศูนย์กีฬา'),
(5, 'แบดมินตัน', 'ชายเดี่ยว', 'ศูนย์กีฬา'),
(6, 'แบดมินตัน', 'คู่ผสม', 'ศูนย์กีฬา'),
(7, 'แบดมินตัน', 'คู่หญิง', 'ศูนย์กีฬา'),
(8, 'แบดมินตัน', 'คู่ชาย', 'ศูนย์กีฬา'),
(9, 'แบดมินตัน', 'ประเภททีม', 'ศูนย์กีฬา'),
(10, 'เปตอง', 'คู่ชาย', 'garden'),
(11, 'เปตอง', 'คู่หญิง', 'garden'),
(12, 'เปตอง', 'ทีมชาย', 'garden'),
(13, 'เปตอง', 'ทีมหญิง', 'garden'),
(14, 'ฟุตซอล', 'ทีมชาย', 'ลานหัวช้าง'),
(15, 'เทเบิลเทนนิส', 'ชายเดี่ยว', 'ศูนย์กีฬา'),
(16, 'เทเบิลเทนนิส', 'หญิงเดี่ยว', 'ศูนย์กีฬา'),
(17, 'เทเบิลเทนนิส', 'คู่ชาย', 'ศูนย์กีฬา'),
(18, 'เทเบิลเทนนิส', 'คู่หญิง', 'ศูนย์กีฬา'),
(19, 'เทเบิลเทนนิส', 'คู่ผสม', 'ศูนย์กีฬา'),
(20, 'E sport', 'ทีม', 'อาคาร 19-304'),
(21, 'วอลเลย์บอล', 'ทีมชาย', 'ศูนย์กีฬา'),
(22, 'วอลเลย์บอล', 'ทีมหญิง', 'ศูนย์กีฬา'),
(23, 'แชร์บอล', 'ทีมหญิง', 'ศูนย์กีฬา');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` varchar(20) NOT NULL,
  `student_name` varchar(100) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `tel`, `faculty_id`, `color_id`) VALUES
('6605100006', 'เทส', '0896523214', 15, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `color_team`
--
ALTER TABLE `color_team`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `committee`
--
ALTER TABLE `committee`
  ADD PRIMARY KEY (`committee_id`),
  ADD KEY `sport_id` (`sport_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`),
  ADD KEY `color_id` (`color_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `sport_id` (`sport_id`);

--
-- Indexes for table `match_schedule`
--
ALTER TABLE `match_schedule`
  ADD PRIMARY KEY (`match_id`),
  ADD KEY `sport_id` (`sport_id`),
  ADD KEY `team1_id` (`team1_id`),
  ADD KEY `team2_id` (`team2_id`);

--
-- Indexes for table `player_size`
--
ALTER TABLE `player_size`
  ADD PRIMARY KEY (`ps_id`),
  ADD UNIQUE KEY `student_id` (`student_id`,`sport_id`),
  ADD KEY `sport_id` (`sport_id`),
  ADD KEY `color_id` (`color_id`);

--
-- Indexes for table `register_sport`
--
ALTER TABLE `register_sport`
  ADD PRIMARY KEY (`reg_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `sport_id` (`sport_id`);

--
-- Indexes for table `sport_registration`
--
ALTER TABLE `sport_registration`
  ADD PRIMARY KEY (`reg_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `faculty_id` (`faculty_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `sport_id` (`sport_id`);

--
-- Indexes for table `sport_type`
--
ALTER TABLE `sport_type`
  ADD PRIMARY KEY (`sport_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `faculty_id` (`faculty_id`),
  ADD KEY `color_id` (`color_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `color_team`
--
ALTER TABLE `color_team`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `committee`
--
ALTER TABLE `committee`
  MODIFY `committee_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `match_schedule`
--
ALTER TABLE `match_schedule`
  MODIFY `match_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `player_size`
--
ALTER TABLE `player_size`
  MODIFY `ps_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `register_sport`
--
ALTER TABLE `register_sport`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sport_registration`
--
ALTER TABLE `sport_registration`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sport_type`
--
ALTER TABLE `sport_type`
  MODIFY `sport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `committee`
--
ALTER TABLE `committee`
  ADD CONSTRAINT `committee_ibfk_1` FOREIGN KEY (`sport_id`) REFERENCES `sport_type` (`sport_id`);

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color_team` (`color_id`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `image_ibfk_2` FOREIGN KEY (`sport_id`) REFERENCES `sport_type` (`sport_id`) ON DELETE CASCADE;

--
-- Constraints for table `match_schedule`
--
ALTER TABLE `match_schedule`
  ADD CONSTRAINT `match_schedule_ibfk_1` FOREIGN KEY (`sport_id`) REFERENCES `sport_type` (`sport_id`),
  ADD CONSTRAINT `match_schedule_ibfk_2` FOREIGN KEY (`team1_id`) REFERENCES `color_team` (`color_id`),
  ADD CONSTRAINT `match_schedule_ibfk_3` FOREIGN KEY (`team2_id`) REFERENCES `color_team` (`color_id`);

--
-- Constraints for table `player_size`
--
ALTER TABLE `player_size`
  ADD CONSTRAINT `player_size_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `player_size_ibfk_2` FOREIGN KEY (`sport_id`) REFERENCES `sport_type` (`sport_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `player_size_ibfk_3` FOREIGN KEY (`color_id`) REFERENCES `color_team` (`color_id`) ON DELETE CASCADE;

--
-- Constraints for table `register_sport`
--
ALTER TABLE `register_sport`
  ADD CONSTRAINT `register_sport_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `register_sport_ibfk_2` FOREIGN KEY (`sport_id`) REFERENCES `sport_type` (`sport_id`);

--
-- Constraints for table `sport_registration`
--
ALTER TABLE `sport_registration`
  ADD CONSTRAINT `sport_registration_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `sport_registration_ibfk_2` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`faculty_id`),
  ADD CONSTRAINT `sport_registration_ibfk_3` FOREIGN KEY (`color_id`) REFERENCES `color_team` (`color_id`),
  ADD CONSTRAINT `sport_registration_ibfk_4` FOREIGN KEY (`sport_id`) REFERENCES `sport_type` (`sport_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`faculty_id`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`color_id`) REFERENCES `color_team` (`color_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
