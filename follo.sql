-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 15, 2022 at 06:43 AM
-- Server version: 8.0.21
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `follo`
--

-- --------------------------------------------------------

--
-- Table structure for table `driver_details`
--

DROP TABLE IF EXISTS `driver_details`;
CREATE TABLE IF NOT EXISTS `driver_details` (
  `driver_details_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `login_user_id` int NOT NULL,
  `driver_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `driver_last_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `driver_mobile_no` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `driver_street_address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `driver_address_line_2` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `driver_city` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `driver_state` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `driver_zip_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `driver_country_id` int NOT NULL,
  `driver_id_card` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `driver_license` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `driver_license_expire_date` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `driver_passport` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `driver_passport_expire_date` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `emer_first_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `emer_last_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `emer_street_address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `emer_address_line_2` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `emer_city` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `emer_state` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `emer_zip_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `emer_country_id` int NOT NULL,
  `emer_relation` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `emer_house_no` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `emer_mobile_no` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `open_flag` int NOT NULL,
  `open_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `open_id` int NOT NULL,
  `is_active` int NOT NULL,
  `subscriber_id` int NOT NULL,
  `first` int NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` int NOT NULL,
  PRIMARY KEY (`driver_details_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `driver_details`
--

INSERT INTO `driver_details` (`driver_details_id`, `user_id`, `login_user_id`, `driver_name`, `driver_last_name`, `driver_mobile_no`, `driver_street_address`, `driver_address_line_2`, `driver_city`, `driver_state`, `driver_zip_code`, `driver_country_id`, `driver_id_card`, `driver_license`, `driver_license_expire_date`, `driver_passport`, `driver_passport_expire_date`, `emer_first_name`, `emer_last_name`, `emer_street_address`, `emer_address_line_2`, `emer_city`, `emer_state`, `emer_zip_code`, `emer_country_id`, `emer_relation`, `emer_house_no`, `emer_mobile_no`, `open_flag`, `open_name`, `open_id`, `is_active`, `subscriber_id`, `first`, `created_on`, `created_by`, `updated_on`, `updated_by`) VALUES
(1, 173, 173, 'aaa', 'bbbb', '546456', '', '', '', '', '', 0, '', '', '2021-09-10', '', '2021-10-01', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 0, 1, 0, 0, '2021-09-04 09:15:45', 'abu', '0000-00-00 00:00:00', 0),
(2, 173, 173, 'ccc', 'ddd', '3456456', '', '', '', '', '', 0, '', '', '2021-09-22', '', '2021-10-29', '', '', '', '', '', '', '', 0, '', '', '', 0, 'abu', 173, 1, 0, 0, '2021-09-04 09:16:06', 'abu', '2021-09-20 17:28:32', 173),
(3, 173, 174, 'eee', 'ffff', '23534534', '', '', '', '', '', 0, '', '', '2021-09-23', '', '2021-09-14', '', '', '', '', '', '', '', 0, '', '', '', 0, 'abu', 173, 0, 0, 0, '2021-09-04 09:20:27', 'usertest', '2021-09-20 17:28:28', 173),
(4, 173, 174, 'fhfghfg', 'Rtytruty', '645657', '', '', '', '', '', 0, '1632412356Screenshot(475).png', '1632412360Screenshot(486).png', '2021-09-29', '1632412363Screenshot(487).png', '2021-09-22', '', '', '', '', '', '', '', 0, '', '', '', 0, 'abu', 173, 1, 0, 0, '2021-09-04 09:20:46', 'usertest', '2021-09-23 23:52:52', 173),
(5, 173, 173, 'test', 'Test1', '134454', 'dgdfghgj', '6yuytuytu', 'jhgjhj', 'fdgfhgfh', '576577', 10, '1632162985Screenshot(475).png', '1632162988Screenshot(476).png', '', '1632162991Screenshot(477).png', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 'abu', 173, 1, 0, 0, '2021-09-21 02:36:32', 'abu', '2021-09-23 17:54:59', 173),
(6, 173, 173, 'dsdfgdf', 'ffhfgh', '575676', '5fhfgh', 'gfhfgh', 'fghfgh', 'bffghgf', '6867876', 10, '1632163087Screenshot(484).png', '1632163114Screenshot(474).png', '', '1632163117Screenshot(464).png', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 'abu', 173, 1, 0, 0, '2021-09-21 02:38:41', 'abu', '0000-00-00 00:00:00', 0),
(7, 173, 173, 'ytryrtyrt', 'rtytutyutyu', '75676867', '', '', '', '', '', 0, '1632163179Screenshot(476).png', '1632163173Screenshot(475).png', '', '1632163186Screenshot(484).png', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 'abu', 173, 1, 0, 0, '2021-09-21 02:40:04', 'abu', '0000-00-00 00:00:00', 0),
(9, 173, 173, 'fdhfghgf', 'fhfghgf', '5567657', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 'abu', 173, 1, 0, 0, '2021-09-21 02:43:16', 'abu', '2021-09-22 06:13:42', 173),
(10, 173, 173, 'aaaa', 'bbbb', '11111', 'ddddd', 'eeeeee', 'fffff', 'gggggg', '22222222', 10, '1632163556Screenshot(454).png', '1632163559Screenshot(455).png', '2021-09-24', '1632163562Screenshot(456).png', '2021-09-25', 'hhhhh', 'iiiiii', 'kkkkkkkkkkk', 'eeeeee', 'mmmmmmm', 'nnnnnnnnn', '99999999999', 12, 'jjjjj', '44444444', '5555555555555', 0, 'abu', 173, 1, 0, 0, '2021-09-21 02:47:10', 'abu', '2021-10-19 07:43:55', 173),
(11, 173, 173, 'dgfgf', 'rttyu', '56767867', '', '', '', '', '', 0, '', '163274346681724e97-241f-4122-aa0f-c2c99b3bd46c.jpg', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 'abu', 173, 0, 0, 0, '2021-09-22 06:13:59', 'abu', '2021-10-26 03:23:25', 173),
(12, 173, 173, 'driver1114', 'cliner1114', '1234', '', 'bbb', 'ccc', 'dddd', '11111', 8, '1634078999Screenshot(476).png', '1632733445ABUTHAHIRABUSHUHOOD.pdf', '2021-10-11', '1632412248Screenshot(474).png', '2021-10-12', 'eee', 'fff', 'hhhhh', 'bbb', '', 'lllll', '444444', 12, 'gggg', '33333', '44444', 0, 'abu', 173, 1, 0, 0, '2021-09-23 23:02:30', 'abu', '2021-10-26 03:21:52', 173),
(13, 173, 173, 'driver12', 'owner12', '5456765', '', '', '', '', '', 0, '163276100481724e97-241f-4122-aa0f-c2c99b3bd46c.jpg', '16327327552015-03-2323.19.22.png', '2021-09-06', '16327332232015-03-2323.19.22.png', '2021-09-07', '', '', '', '', '', '', '', 0, '', '', '', 0, 'abu', 173, 1, 0, 0, '2021-09-23 23:03:20', 'abu', '2021-10-25 21:34:36', 173),
(14, 248, 248, 's', 'd', '4', '', '', '', '', '', 0, '1642761217cp1.png', '16427612261.png', '', '16427612308.png', '', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 0, 1, 0, 0, '2022-01-21 18:33:59', 'abu', '0000-00-00 00:00:00', 0),
(15, 246, 246, 'james', 'bond', '0123456789', 'no.99, jalan kapar', 'taman kapar indah', 'klang', 'selangor', '40000', 14, '1643199711images.jfif', '1643199720Out-of-office.png', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 0, 1, 0, 0, '2022-01-26 20:24:54', 'vinnie', '0000-00-00 00:00:00', 0),
(16, 248, 248, 'don1', 'dons', '46557657', '', '', '', '', '', 0, '16437415336.png', '16437416251.png', '2022-02-01', '1643741638ADPOV1KICP3U.pdf', '2022-02-02', '', '', '', '', '', '', '', 0, '', '', '', 0, 'abu', 0, 0, 0, 0, '2022-02-02 02:53:07', 'abu', '2022-02-02 03:17:20', 248),
(17, 248, 248, 'anbu', 'raja', '24354', '', '', '', '', '', 0, '', '', '2022-03-01', '', '2022-03-02', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 0, 1, 0, 0, '2022-02-02 03:16:54', 'abu', '0000-00-00 00:00:00', 0),
(22, 1, 1, 'SUKRIZAN', '', '0102119749', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 0, 1, 0, 0, '2022-03-02 17:05:53', 'GFS1', '0000-00-00 00:00:00', 0),
(23, 1, 1, 'DIN', '', '01139900195', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 0, 1, 0, 0, '2022-03-02 17:06:54', 'GFS1', '0000-00-00 00:00:00', 0),
(24, 1, 1, 'NADIMIE', '', '0139088008', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 0, 1, 0, 0, '2022-03-02 17:07:28', 'GFS1', '0000-00-00 00:00:00', 0),
(25, 1, 1, 'EDDY', '', '0102059749', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 0, 1, 0, 0, '2022-03-02 17:08:16', 'GFS1', '0000-00-00 00:00:00', 0),
(26, 1, 1, 'RAPIS', '', '0163419910', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 0, 1, 0, 0, '2022-03-02 17:08:51', 'GFS1', '0000-00-00 00:00:00', 0),
(27, 1, 1, 'HASRUL', '', '0102709749', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 0, 1, 0, 0, '2022-03-02 17:09:18', 'GFS1', '0000-00-00 00:00:00', 0),
(28, 1, 1, 'SHAMSUL', '', '0102219749', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 0, 1, 0, 0, '2022-03-02 17:09:39', 'GFS1', '0000-00-00 00:00:00', 0),
(29, 1, 1, 'WAN YUSOF', '', '0162664214', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 0, 1, 0, 0, '2022-03-02 17:10:01', 'GFS1', '0000-00-00 00:00:00', 0),
(30, 1, 1, 'HADI', '', '0102869749', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 0, 1, 0, 0, '2022-03-02 17:10:20', 'GFS1', '0000-00-00 00:00:00', 0),
(31, 1, 1, 'FAIZAL', '', '01123538837', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 0, 1, 0, 0, '2022-03-02 17:10:44', 'GFS1', '0000-00-00 00:00:00', 0),
(32, 1, 1, 'HILMI', '', '0109869749', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 0, 1, 0, 0, '2022-03-02 17:11:02', 'GFS1', '0000-00-00 00:00:00', 0),
(33, 1, 1, 'ALIMUDDIN', '', '01153346293', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 0, 1, 0, 0, '2022-03-02 17:11:27', 'GFS1', '0000-00-00 00:00:00', 0),
(34, 1, 1, 'KHALIL', '', '0162549749', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 0, 1, 0, 0, '2022-03-02 17:11:47', 'GFS1', '0000-00-00 00:00:00', 0),
(35, 1, 1, 'SAFRIYANTO', '', '010649749', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 0, 1, 0, 0, '2022-03-02 17:12:12', 'GFS1', '0000-00-00 00:00:00', 0),
(36, 1, 1, 'DAIM', '', '0103713136', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 0, 1, 0, 0, '2022-03-02 17:12:30', 'GFS1', '0000-00-00 00:00:00', 0),
(37, 1, 1, 'RIZMAL', '', '0108239749', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 0, 1, 0, 0, '2022-03-02 17:12:58', 'GFS1', '0000-00-00 00:00:00', 0),
(38, 1, 259, 'OTHERS', '', '00', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 0, 1, 0, 0, '2022-03-02 18:41:51', 'AIDA', '0000-00-00 00:00:00', 0),
(39, 248, 248, 'aaaa', '', '4445', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 0, 1, 0, 0, '2022-03-03 14:51:02', 'abu', '2022-03-03 15:24:37', 248),
(40, 248, 248, 'asas', '', '1234', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 0, 1, 0, 0, '2022-03-03 14:51:25', 'abu', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `request_truck_form`
--

DROP TABLE IF EXISTS `request_truck_form`;
CREATE TABLE IF NOT EXISTS `request_truck_form` (
  `rtf_id` int NOT NULL AUTO_INCREMENT,
  `rtf_date` datetime NOT NULL,
  `rtf_mode` varchar(250) NOT NULL,
  `rtf_jobno` varchar(250) NOT NULL,
  `rtf_billto` varchar(250) NOT NULL,
  `rtf_billto_text` varchar(250) NOT NULL,
  `rtf_from` varchar(250) NOT NULL,
  `rtf_datepickup` datetime NOT NULL,
  `rtf_to` varchar(250) NOT NULL,
  `rtf_datedropoff` datetime NOT NULL,
  `rtf_qty` int NOT NULL,
  `rtf_user_id` int NOT NULL,
  `rtf_created_by` varchar(50) NOT NULL,
  `rtf_created_on` varchar(100) NOT NULL,
  `rtf_updated_on` varchar(100) NOT NULL,
  `rtf_updated_by` varchar(100) NOT NULL,
  `rtf_status` varchar(50) NOT NULL,
  `rtf_remark` varchar(200) NOT NULL,
  `rtf_tmr_no` varchar(50) NOT NULL,
  `rtf_job_scope` varchar(200) NOT NULL,
  `rtf_po_no` varchar(150) NOT NULL,
  `module_type` varchar(50) NOT NULL,
  `refer_rtf_id` int NOT NULL,
  `refer_rtf_status` varchar(50) NOT NULL,
  `travel_length` varchar(50) NOT NULL,
  PRIMARY KEY (`rtf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `request_truck_form`
--

INSERT INTO `request_truck_form` (`rtf_id`, `rtf_date`, `rtf_mode`, `rtf_jobno`, `rtf_billto`, `rtf_billto_text`, `rtf_from`, `rtf_datepickup`, `rtf_to`, `rtf_datedropoff`, `rtf_qty`, `rtf_user_id`, `rtf_created_by`, `rtf_created_on`, `rtf_updated_on`, `rtf_updated_by`, `rtf_status`, `rtf_remark`, `rtf_tmr_no`, `rtf_job_scope`, `rtf_po_no`, `module_type`, `refer_rtf_id`, `refer_rtf_status`, `travel_length`) VALUES
(32, '2022-02-21 10:12:00', 'Sea', 'GFS/0015S/01/22', '800', 'SOLAR ALERT SDN BHD', 'DALIAN', '2022-02-26 10:12:00', 'SOLAR FACTORY', '2022-02-26 10:12:00', 0, 267, 'FARAH', '2022-03-14 10:12:58', '', 'FARAH', 'nill', '', 'TMR-0001', 'IMPORT LCL/5 CASES/1459.00KGS', '1581/ZHS/212T & 1455/ZHS/21T & MNT/277/ZHS/21', 'single', 0, '', '0'),
(33, '2022-02-21 10:17:00', 'Trucking', 'GFS/0015S/01/22', '800', 'SOLAR ALERT SDN BHD', 'WCS WAREHOUSE WESTPORT', '2022-02-26 10:17:00', 'SOLAR FACTORY', '2022-02-26 10:17:00', 1, 267, 'FARAH', '2022-03-14 10:17:35', '', 'FARAH', 'plan', '', 'TMR-0002', 'pickup cargo  WCS WESTPORT TO SOLAR FACTORY', '1581/ZHS/21T & 1455/ZHS/21T & MNT/277/ZHS/21', 'multiple', 32, '', '0'),
(34, '2022-02-26 15:12:00', 'Trucking', 'gfs/0069t/02/22', '686', 'C&P LOGISTICS SDN BHD', 'bkh', '2022-02-26 15:12:00', 'ksb', '2022-02-27 15:12:00', 0, 260, 'YASHU', '2022-03-14 10:26:39', '2022-03-14 15:12:35', 'YASHU', 'nill', '', 'TMR-0003', '2 X 40FT - OT (B/N) ', 'NIL', 'single', 0, '', '0'),
(35, '2022-02-26 10:29:00', 'Trucking', 'gfs/0069t/02/22', '686', 'C&P LOGISTICS SDN BHD', 'bkh', '2022-02-26 10:29:00', 'ksb', '2022-02-27 10:29:00', 1, 260, 'YASHU', '2022-03-14 10:29:25', '', 'YASHU', 'plan', '', 'TMR-0004', 'PICKUP CARGO BKH TO KSB', 'NIL', 'multiple', 34, '', '0'),
(36, '2022-02-26 15:12:00', 'Trucking', 'gfs/0069t/02/22', '686', 'C&P LOGISTICS SDN BHD', 'bkh', '2022-02-26 15:12:00', 'ksb', '2022-02-27 15:12:00', 2, 260, 'YASHU', '2022-03-14 10:30:49', '2022-03-14 15:12:15', 'YASHU', 'plan', '', 'TMR-0005', 'PICKUP CARGO BKH TO KSB', 'NIL', 'multiple', 34, '', '0'),
(37, '2022-02-23 10:39:00', 'Sea', 'GFS/0025S/02/22', '803', 'SOLAR ALERT SDN BHD ', 'DALIAN', '2022-02-04 10:39:00', 'SOLAR FACTORY', '2022-02-20 10:39:00', 0, 267, 'FARAH', '2022-03-14 10:39:16', '', 'FARAH', 'nill', '', 'TMR-0006', 'IMPORT FCL/ 10 PACKAGES/11190.00KGS', '1689/ZHS/21T', 'single', 0, '', '0'),
(38, '2022-02-23 10:44:00', 'Haulage', 'GFS/0025S/02/22', '803', 'SOLAR ALERT SDN BHD ', 'WESTPORT PORT', '2022-02-28 10:44:00', 'GFS WAREHOUSE', '2022-02-28 10:44:00', 1, 267, 'FARAH', '2022-03-14 10:44:50', '', 'FARAH', 'plan', '', 'TMR-0007', '1x20 GP WESTPORT TO GFS', '1689/ZHS/21T', 'multiple', 37, '', '0'),
(39, '2022-02-23 10:55:00', 'Trucking', 'GFS/0025S/02/22', '803', 'SOLAR ALERT SDN BHD ', 'gfs warehouse', '2022-03-01 10:55:00', 'solar yard', '2022-03-01 10:55:00', 1, 267, 'FARAH', '2022-03-14 10:53:34', '2022-03-14 10:55:16', 'FARAH', 'plan', '', 'TMR-0008', 'pickup cargo  GFS WAREHOUSE TO SOLAR YARD', '1689/ZHS/21T', 'multiple', 37, '', '0'),
(40, '2022-02-23 11:36:00', 'Haulage', 'GFS/0025S/02/22', '803', 'SOLAR ALERT SDN BHD ', 'gfs warehouse', '2022-03-01 11:36:00', 'westport container yard', '2022-03-01 11:36:00', 1, 267, 'FARAH', '2022-03-14 11:36:31', '', 'FARAH', 'plan', '', 'TMR-0009', '1x20GP  container GFS WAREHOUSE TO WESTPORT CONTAINER YARD', '1689/ZHS/21T', 'multiple', 37, '', '0'),
(41, '2022-02-04 16:29:00', 'Sea', 'GFS/0006S/01/22', '800', 'SOLAR ALERT SDN BHD', 'JEBEL ALI', '2022-01-21 16:29:00', 'SOLAR  FACTORY', '2022-02-25 16:29:00', 0, 267, 'FARAH', '2022-03-14 11:54:19', '2022-03-14 16:29:22', 'JAYASHREEKA', 'nill', '', 'TMR-0010', 'IMPORT LCL  JEBEL ALI TO PORT KLANG', '035497', 'single', 0, '', '1'),
(42, '2022-02-04 14:49:00', 'Trucking', 'GFS/0006S/01/22', '800', 'SOLAR ALERT SDN BHD', 'NPDC WAREHOUSE NORTHPORT', '2022-03-01 14:49:00', 'SOLAR FACTORY', '2022-03-01 14:49:00', 1, 267, 'FARAH', '2022-03-14 12:19:33', '2022-03-14 14:49:14', 'FARAH', 'execute', '', 'TMR-0011', 'PICKUP CARGO NPDC WAREHOUSE NORTHPORT TO SOLAR FACTORY ', '035497', 'multiple', 41, '', '0'),
(43, '2022-02-26 12:25:00', 'Sea', 'GFS/0030S/02/22', '800', 'SOLAR ALERT SDN BHD', 'SHANGHAI', '2022-02-24 12:25:00', 'SOLAR FACTORY', '2022-03-08 12:25:00', 0, 267, 'FARAH', '2022-03-14 12:25:11', '', 'FARAH', 'nill', '', 'TMR-0012', 'IMPORT LCL/10 CASES/4718.00KGS', '1479/ZHS/21T &  1480/ZHS/21T & 1628/ZHS/21T', 'single', 0, '', '0'),
(44, '2022-02-26 12:55:00', 'Sea', 'GFS/0030S/02/22', '800', 'SOLAR ALERT SDN BHD', 'SINGAPORE', '2022-03-14 12:55:00', 'SOLAR FACTORY', '2022-03-14 12:55:00', 1, 1, 'GFS1', '2022-03-14 12:55:12', '', 'GFS1', 'plan', '', 'TMR-0013', 'SHAH ALAM TO KL', '1479/ZHS/21T &  1480/ZHS/21T & 1628/ZHS/21T', 'multiple', 43, '', '0'),
(45, '2022-02-26 14:48:00', 'Trucking', 'GFS/0030S/02/22', '800', 'SOLAR ALERT SDN BHD', 'WCS WAREHOUSE northport', '2022-03-10 14:48:00', 'SOLAR FACTORY', '2022-03-10 14:48:00', 1, 267, 'FARAH', '2022-03-14 14:46:50', '2022-03-14 14:48:36', 'FARAH', 'plan', '', 'TMR-0014', 'pickup cargo  (WCS  wAREHOUSE NORTHPORT TO SOLAR FACTORY)', '1479/ZHS/21T &  1480/ZHS/21T & 1628/ZHS/21T', 'multiple', 43, '', '0'),
(46, '2022-02-08 15:07:00', 'Sea', 'GFS/0020S/02/22', '800', 'SOLAR ALERT SDN BHD', 'DUBAI', '2022-02-18 15:07:00', 'SOLAR FACTORY', '2022-03-08 15:07:00', 0, 267, 'FARAH', '2022-03-14 15:07:16', '', 'FARAH', 'nill', '', 'TMR-0015', 'IMPORT LCL ( DUBAI TO SOLAR FACTORY)', 'MNT-NOV/24/ZHS/21', 'single', 0, '', '0'),
(47, '2022-02-08 15:26:00', 'Trucking', 'GFS/0020S/02/22', '800', 'SOLAR ALERT SDN BHD', 'NPDC WAREHOUSE NORTHPORT', '2022-02-18 15:26:00', 'SOLAR FACTORY', '2022-03-08 15:26:00', 1, 267, 'FARAH', '2022-03-14 15:26:30', '', 'FARAH', 'plan', '', 'TMR-0016', 'PICKUP CARGO NDPC WAREHOUSE NORTHPORT TO SOLAR FACTORY', 'MNT-NOV/24/ZHS/21', 'multiple', 46, '', '0'),
(48, '2022-02-04 15:36:00', 'Trucking', 'GFS/0006S/01/22', '800', 'SOLAR ALERT SDN BHD', 'NPDC WAREHOUSE NORTHPORT', '2022-03-01 15:36:00', 'SOLAR FACTORY', '2022-03-01 15:36:00', 1, 267, 'FARAH', '2022-03-14 15:36:31', '', 'FARAH', 'plan', '', 'TMR-0017', 'PICKUP CARGO NDPC WAREHOUSE NORTHPORT TO SOLAR FACTORY', '035497', 'multiple', 41, '', '0'),
(49, '2022-02-18 15:52:00', 'Sea', 'gfs/0017s/02/22', '800', 'SOLAR ALERT SDN BHD', 'JEBEL ALI', '2022-02-18 15:52:00', 'SOLAR FACTORY', '2022-03-08 15:52:00', 0, 269, 'JAYASHREEKA', '2022-03-14 15:52:12', '', 'JAYASHREEKA', 'nill', '', 'TMR-0018', 'IMPORT LCL JEBEL ALI TO SOLAR FATORY', '1084/zhs/21', 'single', 0, '', '0'),
(50, '2022-02-25 15:57:00', 'Trucking', 'GFS/0072T/02/22', '', 'VS LOGISTIC', 'WESTPORT', '2022-02-24 15:57:00', 'SINGAPORE', '2022-02-25 15:57:00', 0, 270, 'PAVITRA', '2022-03-14 15:57:35', '', 'PAVITRA', 'nill', '', 'TMR-0018', '1X10TON - B/N', '3805864', 'single', 0, '', '0'),
(51, '2022-02-18 15:58:00', 'Trucking', 'gfs/0017s/02/22', '800', 'SOLAR ALERT SDN BHD', 'NPDC WAREHOUSE NORTHPORT', '2022-03-10 15:58:00', 'SOLAR FACTORY', '2022-03-01 15:58:00', 1, 269, 'JAYASHREEKA', '2022-03-14 15:58:47', '', 'JAYASHREEKA', 'plan', '', 'TMR-0019', 'PICKUP CARGO NPDC WAREHOUSE NORTHPORT TO SOLAR FACTORY ', '1084/zhs/21', 'multiple', 49, '', '0'),
(52, '2022-02-26 15:58:00', 'Haulage', 'gfs/0136h/02/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'tebrau', '2022-02-26 15:58:00', 'westport', '2022-02-27 15:58:00', 0, 261, 'AJAY', '2022-03-14 15:58:59', '', 'AJAY', 'nill', '', 'TMR-0018', 'laden container  tender to port ', 'nil', 'single', 0, '', '0'),
(53, '2022-02-26 16:01:00', 'Haulage', 'gfs/0136h/02/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'tebrau', '2022-02-26 16:01:00', 'westport', '2022-02-27 16:01:00', 1, 261, 'AJAY', '2022-03-14 16:01:31', '', 'AJAY', 'plan', '', 'TMR-0022', 'laden container  tender to port ', 'nil', 'multiple', 52, '', '0'),
(54, '2022-02-04 16:02:00', 'Sea', 'GFS/0005S/01/22', '800', 'SOLAR ALERT SDN BHD', 'SHANGHAI', '2022-01-23 16:02:00', 'SOLAR ALERT FACTORY', '2022-02-02 16:02:00', 0, 267, 'FARAH', '2022-03-14 16:02:24', '', 'FARAH', 'nill', '', 'TMR-0019', 'FCL - 85 CASES / 50,219.00 KGS / 38.80 M3 / 2X20\'GP', '142151090647', 'single', 0, '', '0'),
(55, '2022-03-14 16:20:00', 'Haulage', 'gfs/0137h/02/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'odd5-westport', '2022-02-26 16:20:00', 'redtop-puchong', '2022-02-26 16:20:00', 0, 261, 'AJAY', '2022-03-14 16:06:30', '2022-03-14 16:20:33', 'AJAY', 'nill', '', 'TMR-0024', '2 x 40ft hc empty ', 'nil', 'single', 0, '', '0'),
(56, '2022-02-04 16:07:00', 'Haulage', 'GFS/0005S/01/22', '800', 'SOLAR ALERT SDN BHD', 'NORTHPORT PORT', '2022-02-17 16:07:00', 'GFS WAREHOUSE', '2022-02-17 16:07:00', 1, 267, 'FARAH', '2022-03-14 16:07:56', '', 'FARAH', 'plan', '', 'TMR-0024', 'PULL OUT LADEN CONTAINER - BSIU2471007', '142151090647', 'multiple', 54, '', '0'),
(57, '2022-02-04 16:10:00', 'Haulage', 'GFS/0005S/01/22', '800', 'SOLAR ALERT SDN BHD', 'NORTHPORT PORT', '2022-02-18 16:10:00', 'GFS WAREHOUSE', '2022-02-18 16:10:00', 1, 267, 'FARAH', '2022-03-14 16:10:27', '', 'FARAH', 'plan', '', 'TMR-0026', 'PULL OUT LADEN CONTAINER - EITU0604030', '142151090647', 'multiple', 54, '', '0'),
(58, '2022-03-14 16:11:00', 'Haulage', 'gfs/0137h/02/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'odd5-westport', '2022-01-26 16:11:00', 'redtop-puchong', '2022-02-26 16:11:00', 2, 261, 'AJAY', '2022-03-14 16:11:56', '', 'AJAY', 'plan', '', 'TMR-0025', '1 x 40ft hc empty ', 'nil', 'multiple', 55, '', '0'),
(59, '2022-02-23 16:15:00', 'Sea', 'GFS/0028S/02/22', '800', 'SOLAR ALERT SDN BHD', 'SHANGHAI', '2022-02-17 16:15:00', 'SOLAR FACTORY', '2022-02-28 16:15:00', 0, 269, 'JAYASHREEKA', '2022-03-14 16:15:39', '', 'JAYASHREEKA', 'nill', '', 'TMR-0026', 'IMPORT LCL SHANGHAI TO SOLAR FACTORY', 'SO-MNT-280-21', 'single', 0, '', '0'),
(60, '2022-02-25 16:17:00', 'Trucking', 'GFS/0072T/02/22', '', 'VS LOGISTIC', 'WESTPORT', '2022-02-24 16:17:00', 'SINGAPORE', '2022-02-25 16:17:00', 1, 270, 'PAVITRA', '2022-03-14 16:17:32', '', 'PAVITRA', 'plan', '', 'TMR-0024', 'PICKUP CARGO FROM WESTPORT TO SINGAPORE', '3805864', 'multiple', 50, '', '0'),
(61, '2022-02-04 17:06:00', 'Trucking', 'GFS/0005S/01/22', '800', 'SOLAR ALERT SDN BHD', 'GFS WAREHOUSE', '2022-02-18 17:06:00', 'SOLAR ALERT FACTORY', '2022-02-18 17:06:00', 1, 267, 'FARAH', '2022-03-14 16:20:56', '2022-03-14 17:06:38', 'JAYASHREEKA', 'plan', '', 'TMR-0028', '1X10TON & 3X40FT TRAILER PARTIAL DELIVERY  DUE TO AUDIT', '142151090647', 'multiple', 54, '', '0'),
(62, '2022-02-26 16:22:00', 'Haulage', 'GFS/0138H/02/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'REDTOP-PUCHONG ', '2022-02-26 16:22:00', 'westport', '2022-02-26 16:22:00', 0, 261, 'AJAY', '2022-03-14 16:22:51', '', 'AJAY', 'nill', '', 'TMR-0030', '1 X 40FT HC LADEN ', 'nil', 'single', 0, '', '0'),
(63, '2022-02-23 16:28:00', 'Trucking', 'GFS/0028S/02/22', '800', 'SOLAR ALERT SDN BHD', 'WESTPORT DISTRICPARK', '2022-03-05 16:28:00', 'SOLAR FACTORY', '2022-03-05 16:28:00', 1, 269, 'JAYASHREEKA', '2022-03-14 16:28:45', '', 'JAYASHREEKA', 'plan', '', 'TMR-0030', 'PICKUP CARGO WESTPORT DISTRICPARK TO SOLAR FACTORY', 'SO-MNT-280-21', 'multiple', 59, '', '0'),
(64, '2022-02-28 16:34:00', 'Trucking', 'GFS/0080K/02/22', '800', 'SOLAR ALERT SDN BHD', 'TELUK KALONG', '2022-02-28 16:34:00', 'KSB', '2022-02-28 16:34:00', 0, 266, 'ALINA', '2022-03-14 16:34:40', '', 'ALINA', 'nill', '', 'TMR-0032', 'TRUCKING  1X1TON/LOCAL', 'NIL', 'single', 0, '', '0'),
(65, '2022-02-26 16:35:00', 'Haulage', 'GFS/0138H/02/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'REDTOP-PUCHONG ', '2022-02-26 16:35:00', 'westport', '2022-02-26 16:35:00', 1, 261, 'AJAY', '2022-03-14 16:35:42', '', 'AJAY', 'plan', '', 'TMR-0033', '1 X 40FT HC LADEN ', 'nil', 'multiple', 62, '', '0'),
(66, '2022-02-28 16:36:00', 'Trucking', 'GFS/0080K/02/22', '800', 'SOLAR ALERT SDN BHD', 'TELUK KALONG', '2022-02-28 16:36:00', 'KSB', '2022-02-28 16:36:00', 1, 266, 'ALINA', '2022-03-14 16:36:51', '', 'ALINA', 'plan', '', 'TMR-0034', 'TRUCKING  1X1TON/LOCAL', 'NIL', 'multiple', 64, '', '0'),
(67, '2022-02-26 16:37:00', 'Trucking', 'GFS/0082T/02/22', '800', 'SOLAR ALERT SDN BHD', 'FACTORY', '2022-02-26 16:37:00', 'KSB', '2022-02-27 16:37:00', 0, 270, 'PAVITRA', '2022-03-14 16:37:03', '', 'PAVITRA', 'nill', '', 'TMR-0032', '1X1TON -L/N (ADDITIONAL OFFLOADING TO TELUK KALONG)', 'MNT/229/ZHS/21', 'single', 0, '', '0'),
(68, '2022-03-14 16:37:00', 'Haulage', 'GFS/0109H/02/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'GFS WAREHOUSE', '2022-02-28 16:37:00', 'westport', '2022-02-28 16:37:00', 0, 261, 'AJAY', '2022-03-14 16:37:43', '', 'AJAY', 'nill', '', 'TMR-0035', '2 X 40FT HC LADEN EXPORT', 'nil', 'single', 0, '', '0'),
(69, '2022-03-14 16:40:00', 'Haulage', 'GFS/0109H/02/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'GFS WAREHOUSE', '2022-02-28 16:40:00', 'westport', '2022-02-28 16:40:00', 2, 261, 'AJAY', '2022-03-14 16:40:37', '', 'AJAY', 'plan', '', 'TMR-0038', '2 X 40FT HC LADEN EXPORT', 'nil', 'multiple', 68, '', '0'),
(70, '2022-02-25 16:48:00', 'Trucking', 'GFS/0076K/02/22', '830', 'FLEET CARE - kLIA', 'PASIR GUDANG', '2022-02-25 16:48:00', 'TELUK KALONG', '2022-02-26 16:48:00', 0, 266, 'ALINA', '2022-03-14 16:44:09', '2022-03-14 16:48:24', 'ALINA', 'nill', '', 'TMR-0038', 'TRUCKING 1X40FT/LOCAL', 'NIL', 'single', 0, '', '0'),
(71, '2022-03-14 16:45:00', 'Haulage', 'GFS/0139H/03/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'MCR1-NORTHPORT', '2022-03-01 16:45:00', 'GFS WAREHOUSE', '2022-03-01 16:45:00', 0, 261, 'AJAY', '2022-03-14 16:45:28', '', 'AJAY', 'nill', '', 'TMR-0039', '1 x 40ft hc empty ', 'nil', 'single', 0, '', '0'),
(72, '2022-02-04 17:02:00', 'Trucking', 'GFS/0005S/01/22', '800', 'SOLAR ALERT SDN BHD', 'GFS WAREHOUSE', '2022-02-19 17:02:00', 'SOLAR ALERT FACTORY', '2022-02-19 17:02:00', 2, 267, 'FARAH', '2022-03-14 16:45:50', '2022-03-14 17:02:23', 'Muhun', 'plan', '', 'TMR-0033', '1X10TON & 3X40FT TRAILER PARTIAL DELIVERY  DUE TO AUDIT', '142151090647', 'multiple', 54, '', '0'),
(73, '2022-03-14 17:19:00', 'Haulage', 'GFS/0139H/03/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'MCR1-NORTHPORT', '2022-03-02 17:19:00', 'GFS WAREHOUSE', '2022-03-02 17:19:00', 1, 261, 'AJAY', '2022-03-14 16:46:54', '2022-03-14 17:19:18', 'AJAY', 'plan', '', 'TMR-0041', '1 x 40ft hc empty ', 'nil', 'multiple', 71, '', '0'),
(74, '2022-02-25 16:47:00', 'Trucking', 'GFS/0076K/02/22', '830', 'FLEET CARE - kLIA', 'PASIR GUDANG', '2022-02-25 16:47:00', 'TELUK KALONG', '2022-02-26 16:47:00', 1, 266, 'ALINA', '2022-03-14 16:47:34', '', 'ALINA', 'plan', '', 'TMR-0040', 'TRUCKING 1X40FT/LOCAL', 'NIL', 'multiple', 70, '', '0'),
(75, '2022-02-04 16:57:00', 'Trucking', 'GFS/0005S/01/22', '800', 'SOLAR ALERT SDN BHD', 'solar factory', '2022-02-19 16:57:00', 'GFS WAREHOUSE', '2022-02-19 16:57:00', 1, 267, 'FARAH', '2022-03-14 16:50:00', '2022-03-14 16:57:14', 'FARAH', 'plan', '', 'TMR-0044', '1X10TON & 3X40FT TRAILER PARTIAL DELIVERY  DUE TO AUDIT', '142151090647', 'multiple', 54, '', '0'),
(76, '2022-03-14 17:26:00', 'Haulage', 'GFS/0139H/03/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'GFS WAREHOUSE', '2022-03-03 17:26:00', 'redtop-puchong', '2022-03-03 17:26:00', 1, 261, 'AJAY', '2022-03-14 16:51:05', '2022-03-14 17:26:21', 'AJAY', 'plan', '', 'TMR-0044', '1 x 40ft hc empty ', 'nil', 'multiple', 71, '', '0'),
(77, '2022-02-04 17:01:00', 'Trucking', 'GFS/0005S/01/22', '800', 'SOLAR ALERT SDN BHD', 'GFS WAREHOUSE', '2022-03-03 17:01:00', 'SOLAR ALERT FACTORY', '2022-03-03 17:01:00', 1, 267, 'FARAH', '2022-03-14 16:51:17', '2022-03-14 17:01:20', 'Muhun', 'plan', '', 'TMR-0045', '1X10TON & 3X40FT TRAILER PARTIAL DELIVERY  DUE TO AUDIT', '142151090647', 'multiple', 54, '', '0'),
(78, '2022-02-04 16:53:00', 'Haulage', 'GFS/0005S/01/22', '800', 'SOLAR ALERT SDN BHD', 'GFS WAREHOUSE', '2022-02-19 16:53:00', 'greating fortune  westport', '2022-02-19 16:53:00', 1, 267, 'FARAH', '2022-03-14 16:53:40', '', 'FARAH', 'plan', '', 'TMR-0047', 'SEND EMPTY CONTAINER - EITU0604030', '142151090647', 'multiple', 54, '', '0'),
(79, '2022-03-14 16:54:00', 'Haulage', 'gfs/0137h/02/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'REDTOP-PUCHONG ', '2022-03-03 16:54:00', 'GFS WAREHOUSE', '2022-03-03 16:54:00', 2, 261, 'AJAY', '2022-03-14 16:54:13', '', 'AJAY', 'plan', '', 'TMR-0047', '2 X 40FT HC LADEN EXPORT', 'nil', 'multiple', 55, '', '0'),
(80, '2022-03-14 16:56:00', 'Haulage', 'gfs/0137h/02/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'GFS WAREHOUSE', '2022-03-07 16:56:00', 'westport', '2022-03-07 16:56:00', 1, 261, 'AJAY', '2022-03-14 16:56:06', '', 'AJAY', 'plan', '', 'TMR-0049', '1 X 40FT HC LADEN ', 'nil', 'multiple', 55, '', '0'),
(81, '2022-02-04 16:56:00', 'Haulage', 'GFS/0005S/01/22', '800', 'SOLAR ALERT SDN BHD', 'GFS WAREHOUSE', '2022-02-21 16:56:00', 'greating fortune  westport', '2022-02-21 16:56:00', 1, 267, 'FARAH', '2022-03-14 16:56:32', '', 'FARAH', 'plan', '', 'TMR-0048', 'SEND EMPTY CONTAINER - BSIU2471007', '142151090647', 'multiple', 54, '', '0'),
(82, '2022-03-14 16:57:00', 'Haulage', 'gfs/0137h/02/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'GFS WAREHOUSE', '2022-03-08 16:57:00', 'westport', '2022-03-08 16:57:00', 1, 261, 'AJAY', '2022-03-14 16:57:37', '', 'AJAY', 'plan', '', 'TMR-0051', '1 X 40FT HC LADEN ', 'nil', 'multiple', 55, '', '0'),
(83, '2022-02-27 16:59:00', 'Document Handling', 'GFS/0077K/02/22', '800', 'SOLAR ALERT SDN BHD (HQ)', 'KSB', '2022-02-27 16:59:00', 'OFFSHORE-JM ABADI', '2022-02-27 16:59:00', 0, 266, 'ALINA', '2022-03-14 16:58:00', '2022-03-14 16:59:11', 'ALINA', 'nill', '', 'TMR-0048', 'DECLARATION', 'NIL', 'single', 0, '', '0'),
(84, '2022-03-14 16:59:00', 'Haulage', 'GFS/0140H/03/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'MCR1-NORTHPORT', '2022-03-03 16:59:00', 'redtop-puchong', '2022-03-03 16:59:00', 0, 261, 'AJAY', '2022-03-14 16:59:51', '', 'AJAY', 'nill', '', 'TMR-0053', '4 X 40FT HC EXPORT', 'nil', 'single', 0, '', '0'),
(85, '2022-02-26 17:00:00', 'Trucking', 'GFS/0082T/02/22', '800', 'SOLAR ALERT SDN BHD', 'FACTORY', '2022-02-26 17:00:00', 'KSB', '2022-02-27 17:00:00', 1, 270, 'PAVITRA', '2022-03-14 17:00:36', '', 'PAVITRA', 'plan', '', 'TMR-0038', 'PICKUP CARGO FROM FACTORY TO KSB (ADDITIONAL OFFLOADING TO TELUK KALONG)', 'MNT/229/ZHS/21', 'multiple', 67, '', '0'),
(86, '2022-03-14 17:04:00', 'Haulage', 'GFS/0140H/03/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'MCR1-NORTHPORT', '2022-03-03 17:04:00', 'redtop-puchong', '2022-03-03 17:04:00', 1, 261, 'AJAY', '2022-03-14 17:04:47', '', 'AJAY', 'plan', '', 'TMR-0055', '1 x 40ft hc empty ', 'nil', 'multiple', 84, '', '0'),
(87, '2022-03-14 17:21:00', 'Haulage', 'GFS/0139H/03/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'REDTOP-PUCHONG ', '2022-03-03 17:21:00', 'GFS WAREHOUSE', '2022-03-03 17:21:00', 1, 261, 'AJAY', '2022-03-14 17:06:47', '2022-03-14 17:21:22', 'AJAY', 'plan', '', 'TMR-0056', '1 X 40FT HC LADEN ', 'nil', 'multiple', 71, '', '0'),
(88, '2022-02-27 17:10:00', 'Document Handling', 'GFS/0077K/02/22', '800', 'SOLAR ALERT SDN BHD (HQ)', 'KSB', '2022-02-27 17:10:00', 'OFFSHORE-JM ABADI', '2022-02-27 17:10:00', 0, 266, 'ALINA', '2022-03-14 17:08:14', '2022-03-14 17:10:48', 'Muhun', 'plan', '', 'TMR-0053', 'DECLARATION', 'NIL', 'multiple', 83, '', '0'),
(89, '2022-03-02 17:11:00', 'Trucking', 'GFS/0075T/02/22', '830', 'FLEET CARE - kLIA', 'SINGAPORE', '2022-03-02 17:11:00', 'KSB', '2022-03-03 17:11:00', 0, 270, 'PAVITRA', '2022-03-14 17:11:26', '', 'PAVITRA', 'nill', '', 'TMR-0055', '1X2AXLE - B/N', 'EPY2203WLBU18', 'single', 0, '', '0'),
(90, '2022-02-10 17:13:00', 'Sea', 'gfs/0023s/02/22', '800', 'SOLAR ALERT SDN BHD (HQ)', 'labuan', '2022-03-03 17:13:00', 'SOLAR FACTORY', '2022-03-06 17:13:00', 0, 269, 'JAYASHREEKA', '2022-03-14 17:13:14', '', 'JAYASHREEKA', 'nill', '', 'TMR-0058', 'FCL ( 4 PACKAGES/6070KGS/ 1 X 40 HC)', 'NIL', 'single', 0, '', '0'),
(91, '2022-03-14 17:13:00', 'Haulage', 'GFS/0140H/03/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'MCR1-NORTHPORT', '2022-03-04 17:13:00', 'redtop-puchong', '2022-03-04 17:13:00', 2, 261, 'AJAY', '2022-03-14 17:13:26', '', 'AJAY', 'plan', '', 'TMR-0057', '2 x 40ft hc empty ', 'nil', 'multiple', 84, '', '0'),
(92, '2022-02-28 17:15:00', 'Document Handling', 'GFS/0078K/02/22', '800', 'SOLAR ALERT SDN BHD (HQ)', 'KSB', '2022-02-28 17:15:00', 'OFFSHORE-MV EXECUTIVE BALANCE', '2022-02-28 17:15:00', 0, 266, 'ALINA', '2022-03-14 17:15:41', '', 'ALINA', 'nill', '', 'TMR-0058', 'DECLARE K1 - DUTY PAID BY GFS : RM 199.95', 'NIL', 'single', 0, '', '0'),
(93, '2022-02-10 17:17:00', 'Haulage', 'gfs/0023s/02/22', '800', 'SOLAR ALERT SDN BHD (HQ)', 'WESTPORT PORT', '2022-03-10 17:17:00', 'GFS WAREHOUSE', '2022-03-10 17:17:00', 1, 269, 'JAYASHREEKA', '2022-03-14 17:17:36', '', 'JAYASHREEKA', 'plan', '', 'TMR-0061', 'PICKUP LADEN CONTAINER JHSU8009157', 'NIL', 'multiple', 90, '', '0'),
(94, '2022-03-14 17:20:00', 'Haulage', 'GFS/0139H/03/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'MCR1-NORTHPORT', '2022-03-05 17:20:00', 'redtop-puchong', '2022-03-05 17:20:00', 1, 261, 'AJAY', '2022-03-14 17:17:46', '2022-03-14 17:20:10', 'AJAY', 'plan', '', 'TMR-0062', '1 x 40ft hc empty ', 'nil', 'multiple', 71, '', '0'),
(95, '2022-02-28 17:25:00', 'Document Handling', 'GFS/0078K/02/22', '800', 'SOLAR ALERT SDN BHD (HQ)', 'KSB', '2022-02-28 17:25:00', 'OFFSHORE-MV EXECUTIVE BALANCE', '2022-02-28 17:25:00', 0, 266, 'ALINA', '2022-03-14 17:18:56', '2022-03-14 17:25:17', 'JAYASHREEKA', 'plan', '', 'TMR-0062', 'DECLARE K1 - DUTY PAID BY GFS : RM 199.95', 'NIL', 'multiple', 92, '', '0'),
(96, '2022-02-10 17:22:00', 'Haulage', 'gfs/0023s/02/22', '800', 'SOLAR ALERT SDN BHD (HQ)', 'gfs warehouse', '2022-03-11 17:22:00', 'ICS DEPOT', '2022-03-11 17:22:00', 1, 269, 'JAYASHREEKA', '2022-03-14 17:21:17', '2022-03-14 17:22:32', 'JAYASHREEKA', 'plan', '', 'TMR-0064', 'DELIVER EMPTY CONTAINER (JHSU8009157)', 'NIL', 'multiple', 90, '', '0'),
(97, '2022-03-02 17:26:00', 'Trucking', 'GFS/0075T/02/22', '830', 'FLEET CARE - kLIA', 'SINGAPORE', '2022-03-02 17:26:00', 'KSB', '2022-03-03 17:26:00', 1, 270, 'PAVITRA', '2022-03-14 17:26:57', '', 'PAVITRA', 'plan', '', 'TMR-0061', 'PICKUP CARGO FROM SINGAPORE TO KSB', 'EPY2203WLBU18', 'multiple', 89, '', '0'),
(98, '2022-02-10 17:35:00', 'Trucking', 'gfs/0023s/02/22', '800', 'SOLAR ALERT SDN BHD (HQ)', 'solar factory', '2022-03-10 17:35:00', 'ksb', '2022-03-11 17:35:00', 1, 269, 'JAYASHREEKA', '2022-03-14 17:35:00', '', 'JAYASHREEKA', 'plan', '', 'TMR-0066', 'TRUCKING 1 X 40FT/ 4 PACKAGES/ 6070KGS', 'NIL', 'multiple', 90, '', '0'),
(99, '2022-03-01 17:35:00', 'Trucking', 'GFS/0088T/02/22', '686', 'C&P LOGISTICS SDN BHD', 'PKFZ', '2022-03-01 17:35:00', 'KSB', '2022-03-02 17:35:00', 0, 270, 'PAVITRA', '2022-03-14 17:35:57', '', 'PAVITRA', 'nill', '', 'TMR-0067', '1 X LOWBED - L/N', 'CP/SLB-IMK/220348035', 'single', 0, '', '0'),
(100, '2022-03-14 17:36:00', 'Haulage', 'GFS/0140H/03/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'REDTOP-PUCHONG ', '2022-03-05 17:36:00', 'westport', '2022-03-05 17:36:00', 1, 261, 'AJAY', '2022-03-14 17:36:19', '', 'AJAY', 'plan', '', 'TMR-0067', '1 X 40FT HC LADEN ', 'nil', 'multiple', 84, '', '0'),
(101, '2022-03-14 17:37:00', 'Haulage', 'GFS/0140H/03/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'MCR1-NORTHPORT', '2022-03-05 17:37:00', 'redtop-puchong', '2022-03-05 17:37:00', 1, 261, 'AJAY', '2022-03-14 17:37:25', '', 'AJAY', 'plan', '', 'TMR-0070', '1 x 40ft hc empty ', 'nil', 'multiple', 84, '', '0'),
(102, '2022-03-01 17:43:00', 'Trucking', 'GFS/0088T/02/22', '686', 'C&P LOGISTICS SDN BHD', 'PKFZ', '2022-03-01 17:43:00', 'KSB', '2022-03-02 17:43:00', 1, 270, 'PAVITRA', '2022-03-14 17:43:10', '', 'PAVITRA', 'plan', '', 'TMR-0070', 'PICKUP CARGO FROM PKFZ TO KSB', 'CP/SLB-IMK/220348035', 'multiple', 99, '', '0'),
(103, '2022-02-23 17:46:00', 'Trucking', 'GFS/0025S/02/22', '803', 'SOLAR ALERT SDN BHD ', 'gfs warehouse', '2022-03-01 17:46:00', 'solar yard', '2022-03-01 17:46:00', 1, 269, 'JAYASHREEKA', '2022-03-14 17:46:03', '', 'JAYASHREEKA', 'plan', '', 'TMR-0071', 'TRUCKING 1 X 40 FT / 10 PACKAGES/ 11190KGS', '1689/ZHS/21T', 'multiple', 37, '', '0'),
(104, '2022-03-14 17:50:00', 'Haulage', 'GFS/0140H/03/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'REDTOP-PUCHONG ', '2022-03-05 17:50:00', 'westport', '2022-03-05 17:50:00', 2, 261, 'AJAY', '2022-03-14 17:50:13', '', 'AJAY', 'plan', '', 'TMR-0071', '2 X 40FT HC LADEN EXPORT', 'nil', 'multiple', 84, '', '0'),
(105, '2022-03-14 17:51:00', 'Haulage', 'GFS/0140H/03/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'MCR1-NORTHPORT', '2022-03-05 17:51:00', 'redtop-puchong', '2022-03-05 17:51:00', 1, 261, 'AJAY', '2022-03-14 17:51:50', '', 'AJAY', 'plan', '', 'TMR-0074', '1 x 40ft hc empty ', 'nil', 'multiple', 84, '', '0'),
(106, '2022-03-01 17:52:00', 'Trucking', 'GFS/0090T/03/22', '800', 'SOLAR ALERT SDN BHD (HQ)', 'YARD', '2022-03-01 17:52:00', 'FACTORY', '2022-03-01 17:52:00', 0, 270, 'PAVITRA', '2022-03-14 17:52:47', '', 'PAVITRA', 'nill', '', 'TMR-0072', '1 X 10 TON - L/N', 'NIL', 'single', 0, '', '0'),
(107, '2022-02-28 17:55:00', 'Document Handling', 'GFS/0079K/02/22', '800', 'SOLAR ALERT SDN BHD (HQ)', 'KSB', '2022-02-28 17:55:00', 'OFFSHORE-MV EXECUTIVE BALANCE', '2022-02-28 17:55:00', 0, 266, 'ALINA', '2022-03-14 17:55:00', '', 'ALINA', 'nill', '', 'TMR-0076', 'DECLARATION', 'NIL', 'single', 0, '', '0'),
(108, '2022-02-28 17:56:00', 'Document Handling', 'GFS/0079K/02/22', '800', 'SOLAR ALERT SDN BHD (HQ)', 'KSB', '2022-02-28 17:56:00', 'OFFSHORE-MV EXECUTIVE BALANCE', '2022-02-28 17:56:00', 0, 266, 'ALINA', '2022-03-14 17:56:24', '', 'ALINA', 'plan', '', 'TMR-0077', 'DECLARATION', 'NIL', 'multiple', 107, '', '0'),
(109, '2022-03-14 18:03:00', 'Haulage', 'GFS/0139H/03/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'GFS WAREHOUSE', '2022-03-05 18:03:00', 'westport', '2022-03-05 18:03:00', 2, 261, 'AJAY', '2022-03-14 18:00:23', '2022-03-14 18:03:00', 'AJAY', 'plan', '', 'TMR-0078', '1 X 40FT HC LADEN ', 'nil', 'multiple', 71, '', '0'),
(110, '2022-03-01 18:03:00', 'Trucking', 'GFS/0090T/03/22', '800', 'SOLAR ALERT SDN BHD (HQ)', 'YARD', '2022-03-01 18:03:00', 'FACTORY', '2022-03-01 18:03:00', 1, 270, 'PAVITRA', '2022-03-14 18:03:42', '', 'PAVITRA', 'plan', '', 'TMR-0077', 'PICKUP CARGO FROM YARD TO FACTORY', 'NIL', 'multiple', 106, '', '0'),
(111, '2022-01-20 18:08:00', 'Sea', 'GFS/0008S/01/22', '800', 'SOLAR ALERT SDN BHD (HQ)', 'SOLAR FACTORY', '2022-03-05 18:08:00', 'SOLAR ALERT LABUAN', '2022-03-15 18:08:00', 0, 267, 'FARAH', '2022-03-14 18:04:23', '2022-03-14 18:08:10', 'FARAH', 'nill', '', 'TMR-0078', 'FCL - 14 PALLETS / 31,300.00 KGS / 30.00 M3 / 2X40\'HC', 'MNT/269/ZHS/21', 'single', 0, '', '0'),
(112, '2022-02-18 18:05:00', 'Sea', 'gfs/0012s/01/22', '800', 'SOLAR ALERT SDN BHD (HQ)', 'DALIAN', '2022-01-20 18:05:00', 'SOLAR FACTORY', '2022-02-20 18:05:00', 0, 269, 'JAYASHREEKA', '2022-03-14 18:05:56', '', 'JAYASHREEKA', 'nill', '', 'TMR-0079', 'FCL(28 PKGS/ 26602KGS/ 1X20 GP)', '1440/ZHS/21T', 'single', 0, '', '0'),
(113, '2022-03-14 18:08:00', 'Haulage', 'GFS/0140H/03/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'GFS WAREHOUSE', '2022-03-07 18:08:00', 'westport', '2022-03-07 18:08:00', 1, 261, 'AJAY', '2022-03-14 18:08:41', '', 'AJAY', 'plan', '', 'TMR-0082', '1 X 40FT HC LADEN 1', 'nil', 'multiple', 84, '', '0'),
(114, '2022-03-01 18:11:00', 'Road', 'GFS/0081K/02/22', '', 'SARENS', 'PAKA', '2022-03-01 18:11:00', 'GEBENG', '2022-03-01 18:11:00', 0, 266, 'ALINA', '2022-03-14 18:11:20', '', 'ALINA', 'nill', '', 'TMR-0078', 'TRUCKING  2XLOWBED/LOCAL', 'NIL', 'single', 0, '', '0'),
(115, '2022-01-20 18:15:00', 'Trucking', 'GFS/0008S/01/22', '800', 'SOLAR ALERT SDN BHD (HQ)', 'SOLAR YARD', '2022-01-22 18:15:00', 'GFS WAREHOUSE', '2022-01-22 18:15:00', 1, 267, 'FARAH', '2022-03-14 18:15:38', '', 'FARAH', 'plan', '', 'TMR-0082', 'TRUCKING - COLLECT EXPORT LABUAN CARGO', 'MNT/269/ZHS/21', 'multiple', 111, '', '0'),
(116, '2022-03-14 18:17:00', 'Haulage', 'GFS/0140H/03/22', '780', 'PREMIUM LOGISTICS SDN BHD', 'REDTOP-PUCHONG ', '2022-03-08 18:17:00', 'westport', '2022-03-08 18:17:00', 1, 261, 'AJAY', '2022-03-14 18:17:15', '', 'AJAY', 'plan', '', 'TMR-0083', '1 X 40FT HC LADEN 1', 'nil', 'multiple', 84, '', '0'),
(117, '2022-03-01 18:22:00', 'Road', 'GFS/0074T/02/22', '800', 'SOLAR ALERT SDN BHD (HQ)', 'SINGAPORE', '2022-02-28 18:22:00', 'GFS WAREHOUSE', '2022-03-01 18:22:00', 0, 270, 'PAVITRA', '2022-03-14 18:22:13', '', 'PAVITRA', 'nill', '', 'TMR-0083', '1 X 10TON - B/N', 'SO1001573-1-2', 'single', 0, '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `request_truck_form_details_data`
--

DROP TABLE IF EXISTS `request_truck_form_details_data`;
CREATE TABLE IF NOT EXISTS `request_truck_form_details_data` (
  `rtf_detail_id` int NOT NULL AUTO_INCREMENT,
  `rtf_id` int NOT NULL,
  `rtf_truck_type` varchar(50) NOT NULL,
  `rtf_truck_type_text` varchar(250) NOT NULL,
  `rtf_truck_no` varchar(250) NOT NULL,
  `rtf_truck_no_text` varchar(250) NOT NULL,
  `rtf_driver_name` varchar(250) NOT NULL,
  `rtf_driver_name_text` varchar(250) NOT NULL,
  `rtf_rate` varchar(250) NOT NULL,
  `rtf_commision` varchar(250) NOT NULL,
  `rtf_created_by` varchar(50) NOT NULL,
  `rtf_status` varchar(50) NOT NULL,
  `rtf_details_datepickup` varchar(150) NOT NULL,
  `rtf_details_datedropoff` varchar(150) NOT NULL,
  `sub_refer_rtf_id` int NOT NULL,
  `rtf_ta_assign_status` varchar(50) NOT NULL,
  PRIMARY KEY (`rtf_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `request_truck_form_details_data`
--

INSERT INTO `request_truck_form_details_data` (`rtf_detail_id`, `rtf_id`, `rtf_truck_type`, `rtf_truck_type_text`, `rtf_truck_no`, `rtf_truck_no_text`, `rtf_driver_name`, `rtf_driver_name_text`, `rtf_rate`, `rtf_commision`, `rtf_created_by`, `rtf_status`, `rtf_details_datepickup`, `rtf_details_datedropoff`, `sub_refer_rtf_id`, `rtf_ta_assign_status`) VALUES
(95, 32, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(96, 33, '97', '3 TON', '54', 'vgh1141', '23', 'DIN', '5 CS/1459KG', '50.00', '', '', '2022-02-26', '2022-02-26', 32, ''),
(99, 37, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(100, 38, '57', '40FT SIDELOADER', '48', 'bpw2345 tbf842', '37', 'RIZMAL', 'APZU2134477', '50.00', '', '', '2022-02-28', '2022-02-28', 37, ''),
(103, 39, '48', '40FT OPEN TRAILER', '40', 'NCW1548 T/BF5748', '34', 'KHALIL', '+ CHARACTER', '70.00', '', '', '2022-03-01', '2022-03-01', 37, ''),
(104, 40, '57', '40FT SIDELOADER', '37', 'BPW2345 T/BF842', '37', 'RIZMAL', '10 PK/11.2T', '50.00', '', '', '2022-03-01', '2022-03-01', 37, ''),
(107, 43, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(112, 45, '48', '40FT OPEN TRAILER', '41', 'NCV9648 T/BF5747', '27', 'HASRUL', '10CS/4718KG/4.20M3/10TONCHARGE', '30.00', '', '', '2022-03-10', '2022-03-10', 43, ''),
(113, 42, '48', '40FT OPEN TRAILER', '28', 'BNA9958 T/JA1572', '26', 'RAPIS', '1 pkg / 230 kgs /1 m3 @ 1 ton  charge', '30.00', '', '', '2022-03-01', '2022-03-01', 41, ''),
(116, 46, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(117, 36, '48', '40FT OPEN TRAILER', '38', 'BPW6283 T/C3787', '32', 'HILMI', '1 LOT', '0.00', '', '', '2022-02-26', '2022-02-27', 34, ''),
(118, 36, '48', '40FT OPEN TRAILER', '29', 'BND4583 T/BC5583', '34', 'KHALIL', '1 lot', '0.00', '', '', '2022-02-26', '2022-02-27', 34, ''),
(119, 34, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(120, 47, '48', '40FT OPEN TRAILER', '41', 'NCV9648 T/BF5747', '27', 'HASRUL', '4PK/1917KG/4.47M3/10TON CHARGE', '55.00', '', '', '2022-02-18', '2022-03-08', 46, ''),
(121, 48, '48', '40FT OPEN TRAILER', '28', 'BNA9958 T/JA1572', '26', 'RAPIS', '1PKGS / 230 KGS / 1M3 ', '70.00', '', '', '2022-03-01', '2022-03-01', 41, ''),
(122, 49, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(123, 50, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(124, 51, '48', '40FT OPEN TRAILER', '41', 'NCV9648 T/BF5747', '27', 'HASRUL', '3PKGS/2215KG/3.940M3/ 10TON CH', '55.00', '', '', '2022-03-10', '2022-03-01', 49, ''),
(125, 52, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(126, 53, '53', '40FT HAULAGE', '49', 'bpw2345 tbf3310', '37', 'RIZMAL', 'laden tgbu7902379', '200.00', '', '', '2022-02-26', '2022-02-27', 52, ''),
(127, 54, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(129, 56, '57', '40FT SIDELOADER', '36', 'BPW2319 T/JA220', '30', 'HADI', 'BSIU2471007 / FCL / IMP', '50.00', '', '', '2022-02-17', '2022-02-17', 54, ''),
(130, 57, '57', '40FT SIDELOADER', '36', 'BPW2319 T/JA220', '30', 'HADI', 'EITU0604030 / FCL / IMP', '50.00', '', '', '2022-02-18', '2022-02-18', 54, ''),
(131, 58, '57', '40FT SIDELOADER', '36', 'BPW2319 T/JA220', '30', 'HADI', 'mt mtmu8886763', '50.00', '', '', '2022-01-26', '2022-02-26', 55, ''),
(132, 58, '57', '40FT SIDELOADER', '37', 'BPW2345 T/BF842', '37', 'RIZMAL', 'mt mtmu8885622', '50.00', '', '', '2022-01-26', '2022-02-26', 55, ''),
(133, 59, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(134, 60, '95', '10 TON', '26', 'WUJ7380', '24', 'NADIMIE', '1 WB/880KG/2.55M3', '237.00', '', '', '2022-02-24', '2022-02-25', 50, ''),
(135, 55, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(140, 62, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(142, 63, '96', '1 TON', '25', 'VGH1141', '23', 'DIN', '1 CARTON/ 6.3KGS/ 0.009M3', '50.00', '', '', '2022-03-05', '2022-03-05', 59, ''),
(143, 41, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(144, 64, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(145, 65, '57', '40FT SIDELOADER', '37', 'BPW2345 T/BF842', '37', 'RIZMAL', 'LADEN TGCU5233215', '50.00', '', '', '2022-02-26', '2022-02-26', 62, ''),
(146, 66, '96', '1 TON', '25', 'VGH1141', '23', 'DIN', 'TBA', '0.00', '', '', '2022-02-28', '2022-02-28', 64, ''),
(147, 67, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(148, 68, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(149, 69, '57', '40FT SIDELOADER', '37', 'BPW2345 T/BF842', '37', 'RIZMAL', 'LADEN WHSU5061303', '50.00', '', '', '2022-02-28', '2022-02-28', 68, ''),
(150, 69, '57', '40FT SIDELOADER', '37', 'BPW2345 T/BF842', '37', 'RIZMAL', 'LADEN DFSU7657623', '50.00', '', '', '2022-02-28', '2022-02-28', 68, ''),
(152, 71, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(156, 74, '54', '3 AXLE LOWBED', '39', 'BPW6273 T/C4262', '33', 'ALIMUDDIN', 'CHARGE 40FT', '0.00', '', '', '2022-02-25', '2022-02-26', 70, ''),
(157, 70, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(163, 78, '57', '40FT SIDELOADER', '36', 'BPW2319 T/JA220', '30', 'HADI', 'EITU0604030 / FCL / IMP', '50.00', '', '', '2022-02-19', '2022-02-19', 54, ''),
(164, 79, '57', '40FT SIDELOADER', '36', 'BPW2319 T/JA220', '30', 'HADI', 'LADEN MTMU8886763', '50.00', '', '', '2022-03-03', '2022-03-03', 55, ''),
(165, 79, '57', '40FT SIDELOADER', '36', 'BPW2319 T/JA220', '30', 'HADI', 'LADEN MTMU8885622', '50.00', '', '', '2022-03-03', '2022-03-03', 55, ''),
(166, 80, '57', '40FT SIDELOADER', '37', 'BPW2345 T/BF842', '37', 'RIZMAL', 'LADEN MTMU8885622', '50.00', '', '', '2022-03-07', '2022-03-07', 55, ''),
(167, 81, '57', '40FT SIDELOADER', '37', 'BPW2345 T/BF842', '37', 'RIZMAL', 'BSIU2471007 / FCL / IMP', '50.00', '', '', '2022-02-21', '2022-02-21', 54, ''),
(170, 75, '53', '40FT HAULAGE', '49', 'bpw2345 tbf3310', '31', 'FAIZAL', '42 pkgs', '70.00', '', '', '2022-02-19', '2022-02-19', 54, ''),
(172, 82, '57', '40FT SIDELOADER', '36', 'BPW2319 T/JA220', '30', 'HADI', 'LADEN  MTMU8886763', '50.00', '', '', '2022-03-08', '2022-03-08', 55, ''),
(174, 83, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(175, 84, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(176, 85, '96', '1 TON', '25', 'VGH1141', '23', 'DIN', '9 PALLETS/12810KGS', '147.00', '', '', '2022-02-26', '2022-02-27', 67, ''),
(177, 77, '48', '40FT OPEN TRAILER', '42', 'NCW1296 T/BF5783', '36', 'DAIM', '42 pkgs', '70.00', '', '', '2022-03-03', '2022-03-03', 54, ''),
(178, 72, '48', '40FT OPEN TRAILER', '40', 'NCW1548 T/BF5748', '34', 'KHALIL', '38 PKGS', '70.00', '', '', '2022-02-19', '2022-02-19', 54, ''),
(179, 72, '53', '40FT HAULAGE', '49', 'bpw2345 tbf3310', '31', 'FAIZAL', '44 PKGS', '70.00', '', '', '2022-02-19', '2022-02-19', 54, ''),
(180, 86, '57', '40FT SIDELOADER', '36', 'BPW2319 T/JA220', '30', 'HADI', 'MT MRKU5329625', '50.00', '', '', '2022-03-03', '2022-03-03', 84, ''),
(181, 61, '95', '10 TON', '26', 'WUJ7380', '24', 'NADIMIE', '35 PKGS', '60.00', '', '', '2022-02-18', '2022-02-18', 54, ''),
(185, 88, '', '', '', '', '', '', '', '', '', '', '', '', 83, ''),
(186, 89, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(187, 90, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(188, 91, '57', '40FT SIDELOADER', '36', 'BPW2319 T/JA220', '30', 'HADI', 'MT TCKU7267617', '50.00', '', '', '2022-03-04', '2022-03-04', 84, ''),
(189, 91, '57', '40FT SIDELOADER', '36', 'BPW2319 T/JA220', '30', 'HADI', 'MT HASU4239432', '50.00', '', '', '2022-03-04', '2022-03-04', 84, ''),
(190, 92, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(191, 93, '57', '40FT SIDELOADER', '36', 'BPW2319 T/JA220', '30', 'HADI', 'JHSU8009157(IMP/FCL)', '50.00', '', '', '2022-03-10', '2022-03-10', 90, ''),
(194, 73, '57', '40FT SIDELOADER', '37', 'BPW2345 T/BF842', '37', 'RIZMAL', 'TEMU7252247-40HC - M', '50.00', '', '', '2022-03-02', '2022-03-02', 71, ''),
(195, 94, '57', '40FT SIDELOADER', '36', 'BPW2319 T/JA220', '30', 'HADI', 'TCKU7187002-40HC-M', '50.00', '', '', '2022-03-05', '2022-03-05', 71, ''),
(197, 87, '57', '40FT SIDELOADER', '36', 'BPW2319 T/JA220', '30', 'HADI', 'TEMU725247-40HC- L ', '50.00', '', '', '2022-03-03', '2022-03-03', 71, ''),
(198, 96, '57', '40FT SIDELOADER', '36', 'BPW2319 T/JA220', '30', 'HADI', 'JHSU8009157(IMP/FCL)', '50.00', '', '', '2022-03-11', '2022-03-11', 90, ''),
(199, 95, '', '', '', '', '', '', '', '', '', '', '', '', 92, ''),
(200, 76, '57', '40FT SIDELOADER', '36', 'BPW2319 T/JA220', '30', 'HADI', 'TEMU7252247-40HC- M', '50.00', '', '', '2022-03-03', '2022-03-03', 71, ''),
(201, 97, '51', '4 AXLE LOWBED', '21', 'VEH7044 TW0909/19', '28', 'SHAMSUL', '4 PACKAGES/2480KGS/12.032M3', '100.00', '', '', '2022-03-02', '2022-03-03', 89, ''),
(202, 98, '54', '3 AXLE LOWBED', '33', 'VEH453 T/WC4448', '27', 'HASRUL', '4 PACKAGES/ 6070KGS', '181.00', '', '', '2022-03-10', '2022-03-11', 90, ''),
(203, 99, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(204, 100, '57', '40FT SIDELOADER', '36', 'BPW2319 T/JA220', '30', 'HADI', 'MRKU5329625-40HC-L', '50.00', '', '', '2022-03-05', '2022-03-05', 84, ''),
(205, 101, '57', '40FT SIDELOADER', '36', 'BPW2319 T/JA220', '30', 'HADI', 'MRSU3885000-40HC-M', '50.00', '', '', '2022-03-05', '2022-03-05', 84, ''),
(206, 102, '54', '3 AXLE LOWBED', '39', 'BPW6273 T/C4262', '31', 'FAIZAL', '1 LOT', '100.00', '', '', '2022-03-01', '2022-03-02', 99, ''),
(207, 103, '96', '1 TON', '25', 'VGH1141', '23', 'DIN', '10 PACKAGES/ 11190KGS', '70.00', '', '', '2022-03-01', '2022-03-01', 37, ''),
(208, 104, '57', '40FT SIDELOADER', '36', 'BPW2319 T/JA220', '30', 'HADI', 'TCKU7267617-40HC-L', '50.00', '', '', '2022-03-05', '2022-03-05', 84, ''),
(209, 104, '57', '40FT SIDELOADER', '36', 'BPW2319 T/JA220', '30', 'HADI', 'MRKU5329625-40HC-L', '50.00', '', '', '2022-03-05', '2022-03-05', 84, ''),
(210, 105, '57', '40FT SIDELOADER', '36', 'BPW2319 T/JA220', '30', 'HADI', 'MRSU3885000-40HC-M', '50.00', '', '', '2022-03-05', '2022-03-05', 84, ''),
(211, 106, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(212, 107, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(213, 108, '', '', '', '', '', '', '', '', '', '', '', '', 107, ''),
(215, 109, '57', '40FT SIDELOADER', '36', 'BPW2319 T/JA220', '30', 'HADI', 'TEMU7252247-40HC- L ', '50.00', '', '', '2022-03-05', '2022-03-05', 71, ''),
(216, 109, '57', '40FT SIDELOADER', '36', 'BPW2319 T/JA220', '30', 'HADI', 'TCKU7187002-40HC-L', '50.00', '', '', '2022-03-05', '2022-03-05', 71, ''),
(217, 110, '48', '40FT OPEN TRAILER', '28', 'BNA9958 T/JA1572', '26', 'RAPIS', '2 PKGS /( 10TON CH)', '50.00', '', '', '2022-03-01', '2022-03-01', 106, ''),
(219, 112, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(220, 111, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(221, 113, '57', '40FT SIDELOADER', '37', 'BPW2345 T/BF842', '37', 'RIZMAL', 'TCKU7267617-40HC-L', '50.00', '', '', '2022-03-07', '2022-03-07', 84, ''),
(222, 114, '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(223, 115, '48', '40FT OPEN TRAILER', '28', 'BNA9958 T/JA1572', '35', 'SAFRIYANTO', '12 PALLETS', '70.00', '', '', '2022-01-22', '2022-01-22', 111, ''),
(224, 116, '57', '40FT SIDELOADER', '37', 'BPW2345 T/BF842', '37', 'RIZMAL', 'MRSU38850020-40HC-l', '50.00', '', '', '2022-03-08', '2022-03-08', 84, ''),
(225, 117, '', '', '', '', '', '', '', '', '', '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `super_admin`
--

DROP TABLE IF EXISTS `super_admin`;
CREATE TABLE IF NOT EXISTS `super_admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_type` text NOT NULL,
  `email_id` text NOT NULL,
  `password` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `super_admin`
--

INSERT INTO `super_admin` (`id`, `user_type`, `email_id`, `password`, `status`, `dateAdded`) VALUES
(5, 'super_admin', 'superadmin@follo.com', '202cb962ac59075b964b07152d234b70', 'Active', '2022-03-14 21:05:07');

-- --------------------------------------------------------

--
-- Table structure for table `tmr_notes`
--

DROP TABLE IF EXISTS `tmr_notes`;
CREATE TABLE IF NOT EXISTS `tmr_notes` (
  `tmr_notes_id` int NOT NULL AUTO_INCREMENT,
  `tmr_notes_job_id` int NOT NULL,
  `tmr_notes_date` varchar(100) NOT NULL,
  `tmr_notes_time` varchar(100) NOT NULL,
  `tmr_notes_position` varchar(200) NOT NULL,
  `tmr_notes_remark` varchar(200) NOT NULL,
  `tra_refer_rtf_id` int NOT NULL,
  PRIMARY KEY (`tmr_notes_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmr_notes`
--

INSERT INTO `tmr_notes` (`tmr_notes_id`, `tmr_notes_job_id`, `tmr_notes_date`, `tmr_notes_time`, `tmr_notes_position`, `tmr_notes_remark`, `tra_refer_rtf_id`) VALUES
(25, 4, '2022-03-10', '18:03', 'aa', '15', 2),
(26, 4, '2022-03-10', '18:17', 'gfh1', '14', 2),
(24, 4, '2022-03-10', '18:03', 'vv1', '8', 2),
(28, 5, '2022-03-12', '18:23', 'bh', '14', 2),
(31, 4, '2022-03-13', '00:32', 'ddff', '10', 2),
(30, 3, '2022-03-12', '22:28', 'jjhjghj', '9', 1),
(32, 3, '2022-03-14', '13:39', 'fdgfg', '18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `truck_details`
--

DROP TABLE IF EXISTS `truck_details`;
CREATE TABLE IF NOT EXISTS `truck_details` (
  `truck_details_id` int NOT NULL AUTO_INCREMENT,
  `truck_no` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `prime_mover_no` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_id` int NOT NULL,
  `login_user_id` int NOT NULL,
  `model_id` int NOT NULL,
  `capacity_id` int NOT NULL,
  `type_id` int NOT NULL,
  `tank_capacity` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bg_expiry_date` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bg_document` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `insurance_expiry_date` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `insurance_document` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `puspakom_expiry_date` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `puspakom_document` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `malasiya_roadtax_expiry_date` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `malasiya_roadtax_document` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `singapore_roadtax_expiry_date` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `singapore_roadtax_document` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `grant_expiry_date` varchar(255) NOT NULL,
  `grant_document` varchar(500) NOT NULL,
  `trailer_capacity` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `trailer_type_id` int NOT NULL,
  `trailer_specification_id` int NOT NULL,
  `trailer_bg_expiry_date` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `trailer_bg_document` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `trailer_insurance_expiry_date` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `trailer_insurance_document` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `trailer_puspakom_expiry_date` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `trailer_puspakom_document` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `trailer_malasiya_roadtax_expiry_date` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `trailer_malasiya_roadtax_document` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `trailer_singapore_roadtax_expiry_date` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `trailer_singapore_roadtax_document` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `trailer_grant_expiry_date` varchar(255) NOT NULL,
  `trailer_grant_document` varchar(500) NOT NULL,
  `add_trailer` int NOT NULL,
  `open_flag` int NOT NULL,
  `open_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `open_id` int NOT NULL,
  `is_active` int NOT NULL,
  `subscriber_id` int NOT NULL,
  `first` int NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` int NOT NULL,
  PRIMARY KEY (`truck_details_id`),
  KEY `user_id` (`user_id`),
  KEY `model_id` (`model_id`),
  KEY `capacity_id` (`capacity_id`),
  KEY `type_id` (`type_id`),
  KEY `trailer_type_id` (`trailer_type_id`),
  KEY `trailer_specification_id` (`trailer_specification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `truck_details`
--

INSERT INTO `truck_details` (`truck_details_id`, `truck_no`, `prime_mover_no`, `user_id`, `login_user_id`, `model_id`, `capacity_id`, `type_id`, `tank_capacity`, `bg_expiry_date`, `bg_document`, `insurance_expiry_date`, `insurance_document`, `puspakom_expiry_date`, `puspakom_document`, `malasiya_roadtax_expiry_date`, `malasiya_roadtax_document`, `singapore_roadtax_expiry_date`, `singapore_roadtax_document`, `grant_expiry_date`, `grant_document`, `trailer_capacity`, `trailer_type_id`, `trailer_specification_id`, `trailer_bg_expiry_date`, `trailer_bg_document`, `trailer_insurance_expiry_date`, `trailer_insurance_document`, `trailer_puspakom_expiry_date`, `trailer_puspakom_document`, `trailer_malasiya_roadtax_expiry_date`, `trailer_malasiya_roadtax_document`, `trailer_singapore_roadtax_expiry_date`, `trailer_singapore_roadtax_document`, `trailer_grant_expiry_date`, `trailer_grant_document`, `add_trailer`, `open_flag`, `open_name`, `open_id`, `is_active`, `subscriber_id`, `first`, `created_on`, `created_by`, `updated_on`, `updated_by`) VALUES
(1, 'trailer', 'prime1', 173, 173, 9, 17, 10, '', '', '', '', '', '', '', '', '', '', '', '', '', '21', 13, 8, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, 'abu', 173, 1, 0, 0, '2021-09-04 09:22:44', 'abu', '0000-00-00 00:00:00', 0),
(2, 'traile2', 'prime2', 173, 173, 10, 20, 10, '2', '2021-10-09', '1632329997Screenshot(454).png', '2021-10-03', '1632330000Screenshot(455).png', '2021-10-04', '1632330003Screenshot(456).png', '2021-10-05', '1632330014Screenshot(457).png', '2021-10-06', '1632330017Screenshot(458).png', '', '', '21', 11, 11, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, 'abu', 173, 1, 0, 0, '2021-09-04 09:25:23', 'abu', '2021-09-23 01:01:27', 173),
(3, 'Trailer3', 'prime3', 173, 173, 12, 20, 11, '', '', '', '', '', '', '', '', '', '', '', '', '', '25', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', 0, 1, 0, 0, '2021-09-04 09:27:02', 'abu', '0000-00-00 00:00:00', 0),
(4, 'trailer4', 'Prime4', 173, 174, 10, 20, 11, '', '', '', '', '', '', '', '', '', '', '', '', '', '24', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', 0, 0, 0, 0, '2021-09-04 09:27:59', 'usertest', '2021-09-22 18:41:31', 173),
(5, 'trailer5', 'prime5', 173, 174, 12, 20, 13, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, 'abu', 173, 1, 0, 0, '2021-09-04 09:29:20', 'usertest', '0000-00-00 00:00:00', 0),
(6, 'trailer', 'primer6', 173, 174, 11, 21, 13, '', '2021-10-12', '1632375105ABUTHAHIRABUSHUHOOD-Copy.docx', '2021-10-11', '1632375109ABUTHAHIRABUSHUHOOD.pdf', '2021-10-10', '1632375111ABUTHAHIRABUSHUHOOD.docx', '2021-10-09', '1632375114ABUTHAHIRABUSHUHOOD.pdf', '2021-10-08', '1632375124FOLLO-ABUTHAHIRA.S.docx', '', '', '22', 10, 11, '2021-10-07', '1632375131ABUTHAHIRABUSHUHOOD-Copy.docx', '2021-10-06', '1632375134ABUTHAHIRABUSHUHOOD.pdf', '2021-10-05', '1632375137ABUTHAHIRABUSHUHOOD.docx', '2021-10-04', '1632375139ABUTHAHIRABUSHUHOOD.pdf', '2021-10-03', '1632375143FOLLO-ABUTHAHIRA.S.docx', '', '', 1, 0, 'abu', 173, 1, 0, 0, '2021-09-04 10:10:38', 'usertest', '2021-09-23 13:34:07', 173),
(7, 'trailer6', 'prime7', 173, 173, 9, 19, 12, '1', '2021-09-23', '1632318946Screenshot(491).png', '2021-09-24', '1632318949Screenshot(490).png', '2021-09-25', '1632318952Screenshot(489).png', '2021-09-26', '1632318955Screenshot(488).png', '2021-09-27', '1632318957Screenshot(487).png', '', '', '21', 13, 12, '2021-09-01', '1632330512Screenshot(475).png', '2021-09-02', '1632330515Screenshot(476).png', '2021-09-03', '1632330517Screenshot(477).png', '2021-09-04', '1632330520Screenshot(478).png', '2021-09-05', '1632330524Screenshot(479).png', '', '', 1, 0, 'abu', 173, 1, 0, 0, '2021-09-22 21:57:10', 'abu', '2021-09-23 21:27:48', 173),
(8, 'trailer7', 'prime8', 173, 173, 12, 20, 11, '2', '2021-09-01', '16323621442015-03-2323.19.22.png', '2021-09-02', '16323621482015-03-3018.28.44.png', '2021-09-03', '16323621572015-05-2216.32.39.png', '2021-09-04', '16323621612015-05-2311.32.05.png', '2021-09-05', '16323621652015-08-2119.02.33.png', '', '', '25', 10, 7, '2021-09-06', '163236221920140315_100139.jpg', '2021-09-07', '163236222320140315_100207.jpg', '2021-09-08', '163236222820140315_100738.jpg', '2021-09-09', '163236223120140315_100742.jpg', '2021-09-10', '16323622432015-08-2119.00.45.png', '', '', 1, 0, 'abu', 173, 1, 0, 0, '2021-09-23 10:01:44', 'abu', '2021-09-23 21:13:43', 173),
(9, 'trailer9', 'prime9', 173, 173, 13, 21, 8, '', '2021-09-12', '1632375360Screenshot(454).png', '2021-09-13', '1632375363Screenshot(455).png', '2021-09-14', '1632375366Screenshot(456).png', '2021-09-15', '1632375369Screenshot(457).png', '2021-09-16', '1632375372Screenshot(458).png', '', '', '21', 10, 9, '2021-09-21', '1632375417Screenshot(475).png', '2021-09-20', '1632375419Screenshot(476).png', '2021-09-19', '1632375422Screenshot(478).png', '2021-09-18', '1632375426Screenshot(478).png', '2021-09-17', '1632375432Screenshot(479).png', '', '', 1, 0, '', 0, 1, 0, 0, '2021-09-23 13:37:46', 'abu', '0000-00-00 00:00:00', 0),
(10, 'trailer2', 'prime9', 173, 173, 0, 17, 0, '', '', '1632375759Screenshot(475).png', '', '', '', '', '', '', '', '1632375762Screenshot(487).png', '', '', '0', 0, 0, '', '', '', '1632375775ABUTHAHIRABUSHUHOOD.pdf', '', '', '', '', '', '1632375784Screenshot(490).png', '', '', 1, 0, 'abu', 173, 1, 0, 0, '2021-09-23 13:43:28', 'abu', '0000-00-00 00:00:00', 0),
(11, 'trailer11', 'prime11', 173, 173, 13, 21, 12, '5', '2021-09-01', '1634092635Screenshot(488).png', '2021-09-02', '1634092638Screenshot(489).png', '2021-09-03', '1634092642Screenshot(490).png', '2021-09-04', '1634092645Screenshot(491).png', '2021-09-05', '1634092648Screenshot(493).png', '', '', '24', 11, 7, '2021-09-06', '1634092653Screenshot(494).png', '2021-09-07', '1634092656Screenshot(495).png', '2021-09-08', '1634092659Screenshot(496).png', '2021-09-09', '1634092662Screenshot(497).png', '2021-09-10', '1634092666Screenshot(498).png', '', '', 1, 0, 'abu', 173, 1, 0, 0, '2021-09-23 21:58:36', 'abu', '2021-10-26 03:27:06', 173),
(12, 'trailer12', 'prime12', 173, 173, 9, 19, 12, '6', '2021-09-11', '1634092579Screenshot(475).png', '2021-09-12', '1634092582Screenshot(476).png', '2021-09-13', '1634092585Screenshot(477).png', '2021-09-14', '1634092589Screenshot(478).png', '2021-09-15', '1634092593Screenshot(479).png', '', '', '25', 13, 8, '2021-09-16', '1634092607Screenshot(466).png', '2021-09-17', '1634092612Screenshot(470).png', '2021-09-18', '1634092617Screenshot(484).png', '2021-09-19', '1634092620Screenshot(486).png', '2021-09-20', '1634092623Screenshot(487).png', '', '', 1, 0, 'abu', 173, 1, 0, 0, '2021-09-23 22:01:40', 'abu', '2021-10-13 10:40:26', 173),
(14, 'fgf', '', 173, 173, 0, 17, 0, '', '', '', '', '', '', '', '', '', '', '1632407038WIN_20170526_23_35_12_Pro.jpg', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, 'abu', 173, 1, 0, 0, '2021-09-23 22:20:59', 'abu', '2021-10-02 07:54:04', 173),
(15, 'tn20', 'tn10', 248, 248, 0, 28, 24, '', '', '', '', '', '', '1643429599Screenshot(5).png', '', '', '', '', '', '', '0', 24, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, 'abu', 0, 1, 0, 0, '2022-01-26 12:14:18', 'abu', '2022-01-29 12:13:26', 248),
(16, '', 'bNA9958', 246, 246, 17, 22, 17, '40', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', 0, 1, 0, 0, '2022-01-26 20:19:55', 'vinnie', '0000-00-00 00:00:00', 0),
(17, '', '', 249, 249, 0, 0, 0, '', '', '1643442157happy-birthday-sticker-design-11549448897bhf8gwz89h-removebg-preview.png', '', '', '', '', '', '1643442199Screenshot2022-01-28at2.55.22PM.png', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', 0, 1, 0, 0, '2022-01-29 15:43:40', 'Karthikeyan', '0000-00-00 00:00:00', 0),
(18, 'Uae trailer1', 'uae prime1', 248, 248, 19, 29, 25, '110', '2022-02-06', '16437214836.png', '2022-02-02', '16437214106.png', '2022-02-03', '164372143111.png', '2022-02-04', '16437214549.png', '2022-02-05', '164372146711.png', '2022-02-01', '16437213841.png', '27', 23, 13, '2022-02-12', '164372159310.png', '2022-02-08', '16437215147.png', '2022-02-09', '16437215356.png', '2022-02-10', '164372155311.png', '2022-02-11', '16437215681.png', '2022-03-07', '16437210951.png', 1, 0, 'abu', 0, 1, 0, 0, '2022-02-01 21:13:26', 'abu', '2022-02-01 21:20:04', 248),
(19, '', 'xxxxxnnn', 248, 248, 19, 28, 26, '1', '', '16437425527.png', '', '16437425753.png', '', '164374256711.png', '', '164374256210.png', '', '16437425578.png', '', '16437425781.png', '0', 0, 0, '', '16437425151.png', '', '16437425365.png', '', '16437425314.png', '', '16437425243.png', '', '16437425192.png', '', '16437425426.png', 1, 0, 'abu', 0, 1, 0, 0, '2022-02-02 03:07:49', 'abu', '2022-02-02 03:09:42', 248),
(21, 'TW0909/19', 'VEH7044', 1, 1, 21, 48, 51, '400', '2022-02-23', '1645862026emailtemplateweb1.png', '2022-03-08', '1645861987Doc1.pdf', '2022-02-09', '1645861996BillOfLading1–3.png', '2022-03-02', '1645862005TAForm-AllList.png', '2022-02-06', '1645862017AccountCreated.PNG', '2022-03-13', '1645861966EDO_FOLLO.pdf', '16', 51, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, 'GFS1', 0, 1, 0, 0, '2022-02-26 15:56:37', 'GFS1', '2022-02-26 15:57:34', 1),
(22, '', 'VEF7217', 1, 1, 0, 41, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', 0, 1, 0, 0, '2022-03-02 17:20:59', 'GFS1', '0000-00-00 00:00:00', 0),
(23, '', 'TCJ7843', 1, 1, 21, 43, 95, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, 'GFS1', 0, 1, 0, 0, '2022-03-02 17:21:37', 'GFS1', '2022-03-04 09:17:43', 1),
(24, '', 'BJJ7380', 1, 1, 0, 41, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', 0, 1, 0, 0, '2022-03-02 17:22:14', 'GFS1', '0000-00-00 00:00:00', 0),
(25, '', 'VGH1141', 1, 1, 22, 41, 96, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, 'GFS1', 0, 1, 0, 0, '2022-03-02 17:23:05', 'GFS1', '2022-03-04 09:20:45', 1),
(26, '', 'WUJ7380', 1, 1, 21, 43, 95, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, 'GFS1', 0, 1, 0, 0, '2022-03-02 17:23:32', 'GFS1', '2022-03-04 09:15:53', 1),
(27, 'T/M985', 'BMU295', 1, 1, 21, 44, 48, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, 'GFS1', 0, 1, 0, 0, '2022-03-02 17:24:15', 'GFS1', '2022-03-02 17:25:08', 1),
(28, 'T/JA1572', 'BNA9958', 1, 1, 21, 44, 48, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', 0, 1, 0, 0, '2022-03-02 17:25:58', 'GFS1', '0000-00-00 00:00:00', 0),
(29, 'T/BC5583', 'BND4583', 1, 1, 21, 44, 48, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', 0, 1, 0, 0, '2022-03-02 17:26:41', 'GFS1', '0000-00-00 00:00:00', 0),
(33, 'T/WC4448', 'VEH453', 1, 1, 21, 47, 54, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', 0, 1, 0, 0, '2022-03-02 17:31:53', 'GFS1', '0000-00-00 00:00:00', 0),
(34, 'T/WC1591', 'VEB7044', 1, 1, 21, 47, 54, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', 0, 1, 0, 0, '2022-03-02 17:32:27', 'GFS1', '0000-00-00 00:00:00', 0),
(35, 'T/AA594', 'BPW6290', 1, 1, 21, 47, 54, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, 'GFS1', 0, 1, 0, 0, '2022-03-02 17:32:51', 'GFS1', '2022-03-02 17:33:16', 1),
(36, 'T/JA220', 'BPW2319', 1, 1, 21, 46, 57, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', 0, 1, 0, 0, '2022-03-02 17:34:04', 'GFS1', '0000-00-00 00:00:00', 0),
(37, 'T/BF842', 'BPW2345', 1, 1, 21, 46, 57, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', 0, 1, 0, 0, '2022-03-02 17:34:41', 'GFS1', '0000-00-00 00:00:00', 0),
(38, 'T/C3787', 'BPW6283', 1, 1, 21, 47, 48, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', 0, 1, 0, 0, '2022-03-02 17:35:17', 'GFS1', '0000-00-00 00:00:00', 0),
(39, 'T/C4262', 'BPW6273', 1, 1, 21, 47, 54, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', 0, 1, 0, 0, '2022-03-02 17:35:51', 'GFS1', '0000-00-00 00:00:00', 0),
(40, 'T/BF5748', 'NCW1548', 1, 1, 21, 46, 48, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', 0, 1, 0, 0, '2022-03-02 17:36:25', 'GFS1', '0000-00-00 00:00:00', 0),
(41, 'T/BF5747', 'NCV9648', 1, 1, 21, 47, 48, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', 0, 1, 0, 0, '2022-03-02 17:37:02', 'GFS1', '0000-00-00 00:00:00', 0),
(42, 'T/BF5783', 'NCW1296', 1, 1, 21, 47, 48, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '', 0, 1, 0, 0, '2022-03-02 17:37:37', 'GFS1', '0000-00-00 00:00:00', 0),
(43, '', 'others', 1, 1, 22, 0, 48, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 'GFS1', 0, 1, 0, 0, '2022-03-02 18:48:53', 'GFS1', '2022-03-03 19:23:13', 1),
(44, '', '123456789', 248, 248, 0, 0, 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', 0, 1, 0, 0, '2022-03-03 14:51:52', 'abu', '0000-00-00 00:00:00', 0),
(46, '', 'fffff11', 248, 248, 0, 0, 24, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 'abu', 0, 1, 0, 0, '2022-03-03 14:54:26', 'abu', '2022-03-03 15:18:50', 248),
(47, 'yyyyy', 'xxxxx', 248, 248, 0, 0, 23, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 'abu', 0, 1, 0, 0, '2022-03-03 16:28:24', 'abu', '2022-03-03 16:28:37', 248),
(48, 'tbf842', 'bpw2345', 1, 1, 0, 0, 57, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', 0, 1, 0, 0, '2022-03-04 18:50:57', 'GFS1', '0000-00-00 00:00:00', 0),
(49, 'tbf3310', 'bpw2345', 1, 1, 0, 0, 53, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', 0, 1, 0, 0, '2022-03-04 18:51:28', 'GFS1', '0000-00-00 00:00:00', 0),
(50, 'tbf3308', 'bpw2345', 1, 1, 0, 0, 53, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', 0, 1, 0, 0, '2022-03-04 18:51:57', 'GFS1', '0000-00-00 00:00:00', 0),
(51, 'TBA8071', 'bpw2345', 1, 1, 0, 0, 53, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', 0, 1, 0, 0, '2022-03-04 18:52:17', 'GFS1', '0000-00-00 00:00:00', 0),
(52, 'TJA220', 'BPW2319', 1, 1, 0, 0, 57, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', 0, 1, 0, 0, '2022-03-04 18:52:50', 'GFS1', '0000-00-00 00:00:00', 0),
(53, 'TBF3310', 'BPW2319', 1, 1, 0, 0, 53, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', 0, 1, 0, 0, '2022-03-04 18:53:48', 'GFS1', '0000-00-00 00:00:00', 0),
(54, '', 'vgh1141', 1, 1, 0, 0, 97, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', 0, 1, 0, 0, '2022-03-04 20:12:07', 'GFS1', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `truck_type`
--

DROP TABLE IF EXISTS `truck_type`;
CREATE TABLE IF NOT EXISTS `truck_type` (
  `truck_type_id` int NOT NULL AUTO_INCREMENT,
  `truck_type_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_active` int NOT NULL,
  `subscriber_id` int NOT NULL,
  `first` int NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` int NOT NULL,
  PRIMARY KEY (`truck_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `truck_type`
--

INSERT INTO `truck_type` (`truck_type_id`, `truck_type_name`, `is_active`, `subscriber_id`, `first`, `created_on`, `created_by`, `updated_on`, `updated_by`) VALUES
(1, 'VOLVO', 1, 173, 0, '2021-12-06 21:38:26', '173', '0000-00-00 00:00:00', 0),
(2, 'SCANIA', 1, 173, 0, '2021-12-06 21:38:31', '173', '0000-00-00 00:00:00', 0),
(3, 'BENZ', 1, 173, 0, '2021-12-06 21:38:37', '173', '0000-00-00 00:00:00', 0),
(4, 'BMW', 1, 173, 0, '2021-12-06 21:38:43', '173', '0000-00-00 00:00:00', 0),
(5, 'AUDI', 1, 173, 0, '2021-12-06 21:38:48', '173', '0000-00-00 00:00:00', 0),
(6, 'VOLVO', 1, 245, 0, '2021-12-16 20:07:42', '245', '0000-00-00 00:00:00', 0),
(7, 'BENZE', 1, 245, 0, '2021-12-16 20:07:50', '245', '0000-00-00 00:00:00', 0),
(8, 'SCANIA', 1, 245, 0, '2021-12-16 20:07:55', '245', '0000-00-00 00:00:00', 0),
(9, 'BMW', 1, 245, 0, '2021-12-16 20:08:04', '245', '0000-00-00 00:00:00', 0),
(10, 'AUDI', 1, 245, 0, '2021-12-16 20:08:09', '245', '0000-00-00 00:00:00', 0),
(11, 'SCOOTER', 1, 249, 0, '2021-12-27 14:23:50', '249', '2021-12-27 14:24:54', 249),
(12, 'CAR', 1, 249, 0, '2021-12-27 14:23:54', '249', '2021-12-27 14:25:00', 249),
(13, 'TRAILER', 1, 249, 0, '2021-12-27 14:23:58', '249', '2021-12-27 14:25:12', 249),
(14, 'TRUCK', 1, 249, 0, '2021-12-27 14:24:03', '249', '2021-12-27 14:24:45', 249),
(15, 'BOX TRUCK', 1, 246, 0, '2021-12-27 14:59:48', '246', '2021-12-29 20:13:50', 246),
(16, 'CURTAIN SIDE', 1, 246, 0, '2021-12-27 14:59:56', '246', '2021-12-29 20:14:35', 246),
(17, 'OPEN TRAILER', 1, 246, 0, '2021-12-27 15:00:03', '246', '2021-12-29 20:14:04', 246),
(18, 'LOW BED', 1, 246, 0, '2021-12-27 15:00:13', '246', '0000-00-00 00:00:00', 0),
(19, 'FLAT BED', 1, 246, 0, '2021-12-27 15:00:19', '246', '0000-00-00 00:00:00', 0),
(20, 'LOW LOADER', 1, 246, 0, '2021-12-27 15:00:41', '246', '0000-00-00 00:00:00', 0),
(21, 'HAULAGE TRUCK', 1, 246, 0, '2021-12-27 15:01:15', '246', '0000-00-00 00:00:00', 0),
(22, 'AUDI', 1, 248, 0, '2021-12-28 17:37:37', '248', '0000-00-00 00:00:00', 0),
(23, 'BENZE', 1, 248, 0, '2021-12-28 17:37:43', '248', '0000-00-00 00:00:00', 0),
(24, 'BMW', 1, 248, 0, '2021-12-28 17:37:52', '248', '0000-00-00 00:00:00', 0),
(25, 'SCANIA', 1, 248, 0, '2021-12-28 17:37:58', '248', '0000-00-00 00:00:00', 0),
(26, 'VOLVO', 1, 248, 0, '2021-12-28 17:38:02', '248', '0000-00-00 00:00:00', 0),
(27, 'BMW', 1, 247, 0, '2021-12-31 12:28:48', '247', '0000-00-00 00:00:00', 0),
(28, 'VOLVO', 1, 247, 0, '2021-12-31 12:29:00', '247', '0000-00-00 00:00:00', 0),
(29, 'BOX TRUCK', 1, 253, 0, '2022-01-13 16:36:23', '253', '2022-01-13 16:39:20', 253),
(30, '2 AXLE LOW BED', 1, 253, 0, '2022-01-13 16:36:28', '253', '2022-01-13 16:41:33', 253),
(31, 'OPEN TRUCK', 1, 253, 0, '2022-01-13 16:36:33', '253', '2022-01-13 16:39:33', 253),
(32, 'CURTAIN SIDE', 1, 253, 0, '2022-01-13 16:36:48', '253', '2022-01-13 16:40:01', 253),
(33, '2 AXLE LOW BED WITH RAMP', 1, 253, 0, '2022-01-13 16:36:59', '253', '2022-01-13 16:42:07', 253),
(34, 'SIDE LOADER', 1, 253, 0, '2022-01-13 16:37:15', '253', '2022-01-13 16:40:32', 253),
(35, 'CRANE TRUCK', 1, 253, 0, '2022-01-13 16:41:10', '253', '0000-00-00 00:00:00', 0),
(36, '3 AXLE LOW BED', 1, 253, 0, '2022-01-13 16:41:42', '253', '0000-00-00 00:00:00', 0),
(37, '4 AXLE LOW BED', 1, 253, 0, '2022-01-13 16:41:49', '253', '0000-00-00 00:00:00', 0),
(38, '3 AXLE LOWBED WITH RAMP', 1, 253, 0, '2022-01-13 16:42:18', '253', '0000-00-00 00:00:00', 0),
(39, '4 AXLE LOW BED WITH RAMP', 1, 253, 0, '2022-01-13 16:42:28', '253', '0000-00-00 00:00:00', 0),
(40, 'HAULAGE TRAILER', 1, 253, 0, '2022-01-13 16:43:27', '253', '0000-00-00 00:00:00', 0),
(41, 'PANEL VAN', 1, 253, 0, '2022-01-13 16:43:55', '253', '0000-00-00 00:00:00', 0),
(42, 'HILUX', 1, 253, 0, '2022-01-13 16:44:01', '253', '0000-00-00 00:00:00', 0),
(48, '40FT OPEN TRAILER', 1, 1, 0, '2022-02-22 11:26:40', '1', '2022-03-04 20:00:47', 1),
(49, '40FT BOX TRUCK', 1, 1, 0, '2022-02-22 11:26:47', '1', '2022-03-04 19:58:28', 1),
(50, '40FT CURTAIN SIDE', 1, 1, 0, '2022-02-22 11:26:51', '1', '2022-03-04 19:58:59', 1),
(51, '4 AXLE LOWBED', 1, 1, 0, '2022-02-22 11:26:56', '1', '2022-03-04 20:01:49', 1),
(52, 'CRANE TRUCK', 1, 1, 0, '2022-02-22 11:26:59', '1', '0000-00-00 00:00:00', 0),
(53, '40FT HAULAGE', 1, 1, 0, '2022-02-22 11:27:03', '1', '2022-03-04 19:59:47', 1),
(54, '3 AXLE LOWBED', 1, 1, 0, '2022-02-22 11:27:09', '1', '2022-03-04 20:02:58', 1),
(56, '40FT PLATFORM', 1, 1, 0, '2022-02-22 11:27:16', '1', '2022-03-04 19:57:56', 1),
(57, '40FT SIDELOADER', 1, 1, 0, '2022-02-28 09:08:19', '260', '2022-03-04 19:57:36', 1),
(58, 'OPEN TRUCK', 1, 262, 0, '2022-03-02 14:24:19', '262', '0000-00-00 00:00:00', 0),
(59, 'BOX TRUCK', 1, 262, 0, '2022-03-02 14:24:19', '262', '0000-00-00 00:00:00', 0),
(60, 'CURTAIN SIDE', 1, 262, 0, '2022-03-02 14:24:19', '262', '0000-00-00 00:00:00', 0),
(61, 'LOW LOADER', 1, 262, 0, '2022-03-02 14:24:19', '262', '0000-00-00 00:00:00', 0),
(62, 'CRANE TRUCK', 1, 262, 0, '2022-03-02 14:24:19', '262', '0000-00-00 00:00:00', 0),
(63, 'HAULAGE TRUCK', 1, 262, 0, '2022-03-02 14:24:19', '262', '0000-00-00 00:00:00', 0),
(64, 'LOWBED', 1, 262, 0, '2022-03-02 14:24:19', '262', '0000-00-00 00:00:00', 0),
(65, 'SIDE LOADER', 1, 262, 0, '2022-03-02 14:24:19', '262', '0000-00-00 00:00:00', 0),
(66, 'PLATFORM TRUCK', 1, 262, 0, '2022-03-02 14:24:19', '262', '0000-00-00 00:00:00', 0),
(67, 'OPEN TRUCK', 1, 263, 0, '2022-03-02 15:30:30', '263', '0000-00-00 00:00:00', 0),
(68, 'BOX TRUCK', 1, 263, 0, '2022-03-02 15:30:30', '263', '0000-00-00 00:00:00', 0),
(69, 'CURTAIN SIDE', 1, 263, 0, '2022-03-02 15:30:30', '263', '0000-00-00 00:00:00', 0),
(70, 'LOW LOADER', 1, 263, 0, '2022-03-02 15:30:30', '263', '0000-00-00 00:00:00', 0),
(71, 'CRANE TRUCK', 1, 263, 0, '2022-03-02 15:30:30', '263', '0000-00-00 00:00:00', 0),
(72, 'HAULAGE TRUCK', 1, 263, 0, '2022-03-02 15:30:30', '263', '0000-00-00 00:00:00', 0),
(73, 'LOWBED', 1, 263, 0, '2022-03-02 15:30:30', '263', '0000-00-00 00:00:00', 0),
(74, 'SIDE LOADER', 1, 263, 0, '2022-03-02 15:30:30', '263', '0000-00-00 00:00:00', 0),
(75, 'PLATFORM TRUCK', 1, 263, 0, '2022-03-02 15:30:30', '263', '0000-00-00 00:00:00', 0),
(76, 'OPEN TRUCK', 1, 264, 0, '2022-03-02 15:42:20', '264', '0000-00-00 00:00:00', 0),
(77, 'BOX TRUCK', 1, 264, 0, '2022-03-02 15:42:20', '264', '0000-00-00 00:00:00', 0),
(78, 'CURTAIN SIDE', 1, 264, 0, '2022-03-02 15:42:20', '264', '0000-00-00 00:00:00', 0),
(79, 'LOW LOADER', 1, 264, 0, '2022-03-02 15:42:20', '264', '0000-00-00 00:00:00', 0),
(80, 'CRANE TRUCK', 1, 264, 0, '2022-03-02 15:42:20', '264', '0000-00-00 00:00:00', 0),
(81, 'HAULAGE TRUCK', 1, 264, 0, '2022-03-02 15:42:20', '264', '0000-00-00 00:00:00', 0),
(82, 'LOWBED', 1, 264, 0, '2022-03-02 15:42:20', '264', '0000-00-00 00:00:00', 0),
(83, 'SIDE LOADER', 1, 264, 0, '2022-03-02 15:42:20', '264', '0000-00-00 00:00:00', 0),
(84, 'PLATFORM TRUCK', 1, 264, 0, '2022-03-02 15:42:20', '264', '0000-00-00 00:00:00', 0),
(85, 'OPEN TRUCK', 1, 265, 0, '2022-03-02 15:44:16', '265', '0000-00-00 00:00:00', 0),
(86, 'BOX TRUCK', 1, 265, 0, '2022-03-02 15:44:16', '265', '0000-00-00 00:00:00', 0),
(87, 'CURTAIN SIDE', 1, 265, 0, '2022-03-02 15:44:16', '265', '0000-00-00 00:00:00', 0),
(88, 'LOW LOADER', 1, 265, 0, '2022-03-02 15:44:16', '265', '0000-00-00 00:00:00', 0),
(89, 'CRANE TRUCK', 1, 265, 0, '2022-03-02 15:44:16', '265', '0000-00-00 00:00:00', 0),
(90, 'HAULAGE TRUCK', 1, 265, 0, '2022-03-02 15:44:16', '265', '0000-00-00 00:00:00', 0),
(91, 'LOWBED', 1, 265, 0, '2022-03-02 15:44:16', '265', '0000-00-00 00:00:00', 0),
(92, 'SIDE LOADER', 1, 265, 0, '2022-03-02 15:44:16', '265', '0000-00-00 00:00:00', 0),
(93, 'PLATFORM TRUCK', 1, 265, 0, '2022-03-02 15:44:16', '265', '0000-00-00 00:00:00', 0),
(94, 'OTHERS', 1, 1, 0, '2022-03-02 18:47:14', '1', '0000-00-00 00:00:00', 0),
(95, '10 TON', 1, 1, 0, '2022-03-03 09:59:04', '1', '0000-00-00 00:00:00', 0),
(96, '1 TON', 1, 1, 0, '2022-03-03 09:59:09', '1', '0000-00-00 00:00:00', 0),
(97, '3 TON', 1, 1, 0, '2022-03-04 09:21:07', '1', '0000-00-00 00:00:00', 0),
(99, '2 AXLE LOWBED', 1, 1, 0, '2022-03-04 20:02:14', '1', '0000-00-00 00:00:00', 0),
(100, 'HANDCARRY', 1, 1, 0, '2022-03-04 20:03:27', '1', '0000-00-00 00:00:00', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
