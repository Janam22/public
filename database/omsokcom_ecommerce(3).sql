-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 25, 2024 at 11:04 AM
-- Server version: 10.6.19-MariaDB
-- PHP Version: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `omsokcom_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_zone`
--

CREATE TABLE `address_zone` (
  `id` bigint(20) NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `zone_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `address_zone`
--

INSERT INTO `address_zone` (`id`, `city_id`, `zone_name`, `created_at`, `updated_at`) VALUES
(3, 19, 'Balaju - Bypass', '2024-09-26 15:53:14', '2024-09-26 15:53:14'),
(4, 19, 'Balaju Chauki', '2024-09-26 15:53:28', '2024-09-26 15:53:28'),
(5, 19, 'Balaju Chowk', '2024-09-26 15:53:41', '2024-09-26 15:53:41'),
(6, 19, 'Balaju - Machha Pokhari', '2024-09-26 15:53:59', '2024-09-26 15:53:59'),
(7, 19, 'Banasthali', '2024-09-26 15:54:15', '2024-09-26 15:54:15'),
(8, 19, 'Banasthali Dhungedhara', '2024-09-26 15:54:32', '2024-09-26 15:54:32'),
(9, 19, 'Kaldhara', '2024-09-26 15:54:51', '2024-09-26 15:54:51'),
(10, 19, 'Khusibu', '2024-09-26 15:55:03', '2024-09-26 15:55:03'),
(11, 19, 'Paknajol', '2024-09-26 15:55:14', '2024-09-26 15:55:14'),
(12, 19, 'People\'s Dental Campus Area', '2024-09-26 15:55:31', '2024-09-26 15:55:31'),
(13, 19, 'Sorhakhutte', '2024-09-26 15:55:44', '2024-09-26 15:55:44'),
(14, 1, 'Durbarmarg', '2024-09-26 15:58:46', '2024-09-26 15:58:46'),
(15, 1, 'Hattisar Area', '2024-09-26 15:58:58', '2024-09-26 15:58:58'),
(16, 1, 'Jamal', '2024-09-26 15:59:07', '2024-09-26 15:59:07'),
(17, 1, 'Kamal Pokhari Area', '2024-09-26 15:59:19', '2024-09-26 15:59:19'),
(18, 1, 'Kantipath', '2024-09-26 15:59:28', '2024-09-26 15:59:28'),
(19, 1, 'Naxal Bhagwati Bahal Area', '2024-09-26 15:59:48', '2024-09-26 15:59:48'),
(20, 1, 'Naxal Narayan Chaur', '2024-09-26 16:00:03', '2024-09-26 16:00:03'),
(21, 5, 'Dhobichaur', '2024-09-26 16:00:55', '2024-09-26 16:00:55'),
(22, 5, 'Gairidhara', '2024-09-26 16:01:05', '2024-09-26 16:01:05'),
(23, 5, 'Lazimpat', '2024-09-26 16:01:15', '2024-09-26 16:01:15'),
(24, 6, 'Basundhara inside ringroad area', '2024-09-30 12:57:08', '2024-09-30 12:57:08'),
(25, 6, 'Narayan Gopal Chowk Area', '2024-09-30 12:57:56', '2024-09-30 12:57:56'),
(26, 6, 'Teaching Hospital', '2024-09-30 12:58:23', '2024-09-30 12:58:23'),
(27, 7, 'Bishalnagar', '2024-09-30 13:01:08', '2024-09-30 13:01:08'),
(28, 7, 'Chandol', '2024-10-02 11:14:26', '2024-10-02 11:14:26'),
(29, 7, 'Chapal Karkhana', '2024-10-02 11:14:47', '2024-10-02 11:14:47'),
(30, 7, 'Chun Devi', '2024-10-02 11:14:58', '2024-10-02 11:14:58'),
(31, 7, 'Dhumbarahi Chowk', '2024-10-02 11:15:12', '2024-10-02 11:15:12'),
(32, 7, 'Dhumbarahi Pipalbot', '2024-10-02 11:15:26', '2024-10-02 11:15:26'),
(33, 7, 'Sukedhara', '2024-10-02 11:15:40', '2024-10-02 11:15:40'),
(34, 40, 'Baluwatar', '2024-10-02 11:16:22', '2024-10-02 11:16:22'),
(35, 40, 'Lamtangin Marg', '2024-10-02 11:16:43', '2024-10-02 11:16:43'),
(36, 40, 'Pabitra Workshop Area', '2024-10-02 11:16:58', '2024-10-02 11:16:58'),
(37, 40, 'Panchakanya School Area', '2024-10-02 11:17:11', '2024-10-02 11:17:11'),
(38, 40, 'Panipokhari', '2024-10-02 11:17:23', '2024-10-02 11:17:23'),
(39, 8, 'Bhatbhateni', '2024-10-02 11:17:44', '2024-10-02 11:17:44'),
(40, 8, 'Handigaun', '2024-10-02 11:17:55', '2024-10-02 11:17:55'),
(41, 8, 'Maligaun', '2024-10-02 11:18:04', '2024-10-02 11:18:04'),
(42, 8, 'Sano Gaucharan', '2024-10-02 11:18:16', '2024-10-02 11:18:16'),
(43, 8, 'Tangal', '2024-10-02 11:18:26', '2024-10-02 11:18:26'),
(44, 10, 'Chabahil Chowk', '2024-10-02 11:19:35', '2024-10-02 11:19:35'),
(45, 10, 'Chuchepati', '2024-10-02 11:19:46', '2024-10-02 11:19:46'),
(46, 10, 'Gangahiti', '2024-10-02 11:19:57', '2024-10-02 11:19:57'),
(47, 10, 'Gaurighat', '2024-10-02 11:20:09', '2024-10-02 11:20:09'),
(48, 10, 'Gopilrishna Hall Area', '2024-10-02 11:20:23', '2024-10-02 11:20:23'),
(49, 10, 'Kalopul', '2024-10-02 11:20:33', '2024-10-02 11:20:33'),
(50, 10, 'Kumaristhan', '2024-10-02 11:20:46', '2024-10-02 11:20:46'),
(51, 10, 'Maijubahal', '2024-10-02 11:20:58', '2024-10-02 11:20:58'),
(52, 10, 'Mitrapark', '2024-10-02 11:21:11', '2024-10-02 11:21:11'),
(53, 10, 'Siphal', '2024-10-02 11:21:19', '2024-10-02 11:21:19'),
(54, 11, 'Gaushala', '2024-10-02 11:21:53', '2024-10-02 11:21:53'),
(55, 11, 'Jayabageshwori', '2024-10-02 11:22:06', '2024-10-02 11:22:06'),
(56, 11, 'Pashupatinath', '2024-10-02 11:22:23', '2024-10-02 11:22:23'),
(57, 11, 'Pingalasthan', '2024-10-02 11:22:35', '2024-10-02 11:22:35'),
(58, 11, 'Ram Mandir', '2024-10-02 11:22:45', '2024-10-02 11:22:45'),
(59, 12, 'Airport', '2024-10-02 11:23:02', '2024-10-02 11:23:02'),
(60, 12, 'Battisputali', '2024-10-02 11:23:14', '2024-10-02 11:23:14'),
(61, 12, 'Gaurigaun', '2024-10-02 11:23:23', '2024-10-02 11:23:23'),
(62, 12, 'Old Baneshwor', '2024-10-02 11:23:35', '2024-10-02 11:23:35'),
(63, 12, 'Sinamangal', '2024-10-02 11:23:44', '2024-10-02 11:23:44'),
(64, 12, 'Tilganga', '2024-10-02 11:23:55', '2024-10-02 11:23:55'),
(65, 13, 'Apex College Area - Pipalbot', '2024-10-02 11:24:46', '2024-10-02 11:24:46'),
(66, 13, 'Bijulibazar', '2024-10-02 11:24:58', '2024-10-02 11:24:58'),
(67, 13, 'Buddhanagar', '2024-10-02 11:25:08', '2024-10-02 11:25:08'),
(68, 13, 'Civil Hospital Area', '2024-10-02 11:25:22', '2024-10-02 11:25:22'),
(69, 13, 'Ekta Marg', '2024-10-02 11:25:32', '2024-10-02 11:25:32'),
(70, 13, 'New Baneshwor Chowk', '2024-10-02 11:25:45', '2024-10-02 11:25:45'),
(71, 13, 'Ratna Rajya Area', '2024-10-02 11:25:59', '2024-10-02 11:25:59'),
(72, 13, 'Shankhamul Area', '2024-10-02 11:26:13', '2024-10-02 11:26:13'),
(73, 13, 'Thapagaun Area', '2024-10-02 11:26:24', '2024-10-02 11:26:24'),
(74, 14, 'Babarmahal', '2024-10-02 11:27:07', '2024-10-02 11:27:07'),
(75, 14, 'Maitighar', '2024-10-02 11:27:18', '2024-10-02 11:27:18'),
(76, 14, 'Shahid Gate', '2024-10-02 11:27:28', '2024-10-02 11:27:28'),
(77, 14, 'Thapathali', '2024-10-02 11:27:39', '2024-10-02 11:27:39'),
(78, 14, 'Tripureshwor', '2024-10-02 11:27:49', '2024-10-02 11:27:49'),
(79, 15, 'Teku', '2024-10-02 11:28:18', '2024-10-02 11:28:18'),
(80, 16, 'Bafal', '2024-10-02 11:28:31', '2024-10-02 11:28:31'),
(81, 16, 'Kalimati', '2024-10-02 11:28:49', '2024-10-02 11:28:49'),
(82, 16, 'Soalteemode', '2024-10-02 11:29:05', '2024-10-02 11:29:05'),
(83, 16, 'Tahachal', '2024-10-02 11:29:20', '2024-10-02 11:29:20'),
(84, 16, 'Tankeshwor', '2024-10-02 11:29:34', '2024-10-02 11:29:34'),
(85, 17, 'Balkhu', '2024-10-02 11:29:58', '2024-10-02 11:29:58'),
(86, 17, 'Kalanki Chowk', '2024-10-02 11:31:29', '2024-10-02 11:31:29'),
(87, 17, 'Kuleshwor', '2024-10-02 11:32:05', '2024-10-02 11:32:05'),
(88, 17, 'Ravi Bhawan', '2024-10-02 11:32:16', '2024-10-02 11:32:16'),
(89, 18, 'Bahiti', '2024-10-02 11:32:42', '2024-10-02 11:32:42'),
(90, 18, 'Bijeshwori', '2024-10-02 11:32:55', '2024-10-02 11:32:55'),
(91, 18, 'Chhauni', '2024-10-02 11:33:04', '2024-10-02 11:33:04'),
(92, 18, 'Dallu', '2024-10-02 11:33:13', '2024-10-02 11:33:13'),
(93, 18, 'Kimdol', '2024-10-02 11:33:26', '2024-10-02 11:33:26'),
(94, 18, 'Sobhabhagwati', '2024-10-02 11:33:44', '2024-10-02 11:33:44'),
(95, 18, 'Swayambhu - Bhuikhel', '2024-10-02 11:34:00', '2024-10-02 11:34:00'),
(96, 20, 'Chhetrapati', '2024-10-02 11:34:23', '2024-10-02 11:34:23'),
(97, 20, 'Dhalko', '2024-10-02 11:34:36', '2024-10-02 11:34:36'),
(98, 20, 'Dhobichaur', '2024-10-02 11:34:49', '2024-10-02 11:34:49'),
(99, 21, 'Bhurungkhel', '2024-10-02 11:35:19', '2024-10-02 11:35:19'),
(100, 21, 'Raktakali', '2024-10-02 11:35:31', '2024-10-02 11:35:31'),
(101, 22, 'Hanumandhoka', '2024-10-02 11:35:55', '2024-10-02 11:35:55'),
(102, 22, 'Tamsipakha', '2024-10-02 11:36:07', '2024-10-02 11:36:07'),
(103, 23, 'Jaishidebal', '2024-10-02 11:36:40', '2024-10-02 11:36:40'),
(104, 23, 'Marutole', '2024-10-02 11:36:52', '2024-10-02 11:36:52'),
(105, 24, 'Ikubahal', '2024-10-02 11:37:20', '2024-10-02 11:37:20'),
(106, 24, 'Lagantole', '2024-10-02 11:37:34', '2024-10-02 11:37:34'),
(107, 24, 'Tebahal', '2024-10-02 11:37:47', '2024-10-02 11:37:47'),
(108, 25, 'Dharmapath', '2024-10-02 11:38:11', '2024-10-02 11:38:11'),
(109, 25, 'Khichapokhari', '2024-10-02 11:38:25', '2024-10-02 11:38:25'),
(110, 25, 'Newroad', '2024-10-02 11:38:38', '2024-10-02 11:38:38'),
(111, 25, 'Om Bahal Area', '2024-10-02 11:38:49', '2024-10-02 11:38:49'),
(112, 25, 'Sundhara', '2024-10-02 11:39:05', '2024-10-02 11:39:05'),
(113, 26, 'Basantapur', '2024-10-02 11:39:24', '2024-10-02 11:39:24'),
(114, 27, 'Indrachowk', '2024-10-02 11:39:43', '2024-10-02 11:39:43'),
(115, 27, 'Naradevi', '2024-10-02 11:39:56', '2024-10-02 11:39:56'),
(116, 28, 'Asan', '2024-10-02 11:40:17', '2024-10-02 11:40:17'),
(117, 28, 'Kilagal', '2024-10-02 11:40:29', '2024-10-02 11:40:29'),
(118, 28, 'Tengal', '2024-10-02 11:40:43', '2024-10-02 11:40:43'),
(119, 29, 'Gongabu Chowk', '2024-10-02 11:41:00', '2024-10-02 11:41:00'),
(120, 29, 'Kapurdhara', '2024-10-02 11:41:19', '2024-10-02 11:41:19'),
(121, 29, 'Mhepi', '2024-10-02 11:41:31', '2024-10-02 11:41:31'),
(122, 29, 'Mitra Nagar', '2024-10-02 11:41:45', '2024-10-02 11:41:45'),
(123, 29, 'Naya Bus Park', '2024-10-02 11:41:59', '2024-10-02 11:41:59'),
(124, 29, 'Ranibari', '2024-10-02 11:42:12', '2024-10-02 11:42:12'),
(125, 29, 'Samakhusi', '2024-10-02 11:42:25', '2024-10-02 11:42:25'),
(126, 30, 'Galkopakha', '2024-10-02 11:42:59', '2024-10-02 11:42:59'),
(127, 30, 'Jyatha', '2024-10-02 11:43:11', '2024-10-02 11:43:11'),
(128, 30, 'Lainchaur', '2024-10-02 11:43:22', '2024-10-02 11:43:22'),
(129, 30, 'Thamel', '2024-10-02 11:43:31', '2024-10-02 11:43:31'),
(130, 31, 'Bhotahiti', '2024-10-02 11:43:56', '2024-10-02 11:43:56'),
(131, 31, 'Kamalakshi', '2024-10-02 11:44:13', '2024-10-02 11:44:13'),
(132, 32, 'Bagbazar', '2024-10-02 11:44:32', '2024-10-02 11:44:32'),
(133, 32, 'Bhrikutimandap', '2024-10-02 11:44:43', '2024-10-02 11:44:43'),
(134, 32, 'Ratnapark', '2024-10-02 11:44:55', '2024-10-02 11:44:55'),
(135, 33, 'Bir Hospital', '2024-10-02 11:45:26', '2024-10-02 11:45:26'),
(136, 33, 'Kamaladi', '2024-10-02 11:45:38', '2024-10-02 11:45:38'),
(137, 33, 'Tundikhel', '2024-10-02 11:45:48', '2024-10-02 11:45:48'),
(138, 34, 'Anamnagar', '2024-10-02 11:46:25', '2024-10-02 11:46:25'),
(139, 34, 'Ghattekulo', '2024-10-02 11:46:55', '2024-10-02 11:46:55'),
(140, 34, 'Singha Durbar', '2024-10-02 11:47:12', '2024-10-02 11:47:12'),
(141, 35, 'Bhaktapur Buspark', '2024-10-02 11:48:36', '2024-10-02 11:48:36'),
(142, 35, 'Exhibition Road', '2024-10-02 11:48:55', '2024-10-02 11:48:55'),
(143, 35, 'Newplaza Area', '2024-10-02 11:49:09', '2024-10-02 11:49:09'),
(144, 35, 'Putalisadak', '2024-10-02 11:49:21', '2024-10-02 11:49:21'),
(145, 36, 'Dillibazar Pipalbot', '2024-10-02 11:50:42', '2024-10-02 11:50:42'),
(146, 36, 'Gyaneshwor', '2024-10-02 11:51:10', '2024-10-02 11:51:10'),
(147, 36, 'Maitidevi', '2024-10-02 11:51:23', '2024-10-02 11:51:23'),
(148, 37, 'Aloknagar', '2024-10-02 11:53:04', '2024-10-02 11:53:04'),
(149, 37, 'Bhinsengola', '2024-10-02 11:53:29', '2024-10-02 11:53:29'),
(150, 37, 'Chhitij Nagar', '2024-10-02 11:53:46', '2024-10-02 11:53:46'),
(151, 37, 'Katyani Chowk Area', '2024-10-02 11:53:59', '2024-10-02 11:53:59'),
(152, 37, 'Milan Chowk Area', '2024-10-02 11:54:12', '2024-10-02 11:54:12'),
(153, 37, 'Min Bhawan', '2024-10-02 11:54:22', '2024-10-02 11:54:22'),
(154, 37, 'Shantinagar', '2024-10-02 11:54:34', '2024-10-02 11:54:34'),
(155, 38, 'Jadibuti Area', '2024-10-02 11:55:09', '2024-10-02 11:55:09'),
(156, 38, 'Kandaghari', '2024-10-02 11:55:27', '2024-10-02 11:55:27'),
(157, 38, 'Koteshwor Chowk', '2024-10-02 11:55:40', '2024-10-02 11:55:40'),
(158, 38, 'Mahadevsthan', '2024-10-02 11:55:57', '2024-10-02 11:55:57'),
(159, 38, 'Narephant', '2024-10-02 11:56:07', '2024-10-02 11:56:07'),
(160, 38, 'Pepsicola Area', '2024-10-02 11:56:19', '2024-10-02 11:56:19'),
(161, 39, 'Subidhanagar', '2024-10-02 11:56:42', '2024-10-02 11:56:42'),
(162, 39, 'Tinkune', '2024-10-02 11:56:54', '2024-10-02 11:56:54'),
(163, 42, 'Balkot Area', '2024-10-02 11:58:32', '2024-10-02 11:58:32'),
(164, 42, 'Biruwa Buspark Area', '2024-10-02 11:58:47', '2024-10-02 11:58:47'),
(165, 42, 'Bode', '2024-10-02 11:58:56', '2024-10-02 11:58:56'),
(166, 42, 'Duwakot', '2024-10-02 11:59:04', '2024-10-02 11:59:04'),
(167, 42, 'Gaththaghar Area', '2024-10-02 11:59:23', '2024-10-02 11:59:23'),
(168, 42, 'Jagati Area', '2024-10-02 11:59:35', '2024-10-02 11:59:35'),
(169, 42, 'Kamalbinayak Area', '2024-10-02 11:59:48', '2024-10-02 11:59:48'),
(170, 42, 'Katunje Area', '2024-10-02 12:00:19', '2024-10-02 12:00:19'),
(171, 42, 'Kaushaltar Area', '2024-10-02 12:00:41', '2024-10-02 12:00:41'),
(172, 42, 'Kharipati', '2024-10-02 12:00:56', '2024-10-02 12:00:56'),
(173, 42, 'Lokanthali Area', '2024-10-02 12:01:15', '2024-10-02 12:01:15'),
(174, 42, 'Naya Thimi', '2024-10-02 12:01:32', '2024-10-02 12:01:32'),
(175, 42, 'Purano Thimi', '2024-10-02 12:01:43', '2024-10-02 12:01:43'),
(176, 42, 'Palase', '2024-10-02 12:01:51', '2024-10-02 12:01:51'),
(177, 42, 'Sallaghari Area', '2024-10-02 12:02:04', '2024-10-02 12:02:04'),
(178, 42, 'Sano Thimi Area', '2024-10-02 12:02:15', '2024-10-02 12:02:15'),
(179, 42, 'Sirutar', '2024-10-02 12:02:25', '2024-10-02 12:02:25'),
(180, 42, 'Suryabinayak Area', '2024-10-02 12:02:43', '2024-10-02 12:02:43'),
(183, 41, 'Bouddha Area - Dibya Nagar', '2024-10-02 17:03:16', '2024-10-02 17:03:16'),
(184, 41, 'Bouddha Area - Kumarigal', '2024-10-02 17:03:39', '2024-10-02 17:03:39'),
(185, 41, 'Bouddha Area - Nayabasti', '2024-10-02 17:03:54', '2024-10-02 17:03:54'),
(186, 41, 'Bouddha Area', '2024-10-02 17:04:05', '2024-10-02 17:04:05'),
(187, 41, 'Bouddha Area - Fulbari', '2024-10-02 17:04:16', '2024-10-02 17:04:16'),
(188, 41, 'Bouddha Area - Tushal', '2024-10-02 17:04:27', '2024-10-02 17:04:27'),
(189, 41, 'Budhanilkantha - Baluwakhani', '2024-10-02 17:04:53', '2024-10-02 17:04:53'),
(190, 41, 'Budhanilkantha - Bansbari Area', '2024-10-02 17:05:12', '2024-10-02 17:05:12'),
(191, 41, 'Budhanilkantha - Budhanilkantha Nayapul', '2024-10-02 17:05:31', '2024-10-02 17:05:31'),
(192, 41, 'Budhanilkantha - Chapali Area', '2024-10-02 17:05:48', '2024-10-02 17:05:48'),
(193, 41, 'Budhanilkantha - Chunikhel Buspark Area', '2024-10-02 17:06:03', '2024-10-02 17:06:03'),
(194, 41, 'Budhanilkantha - Golfutar Area', '2024-10-02 17:06:15', '2024-10-02 17:06:15'),
(195, 41, 'Budhanilkantha - Hattigauda Area', '2024-10-02 17:06:28', '2024-10-02 17:06:28'),
(196, 41, 'Budhanilkantha - Kapan Aakasedhara', '2024-10-02 17:06:41', '2024-10-02 17:06:41'),
(197, 41, 'Budhanilkantha - Kapan Chauki Area', '2024-10-02 17:06:58', '2024-10-02 17:06:58'),
(198, 41, 'Budhanilkantha - Kapan Saraswatinagar', '2024-10-02 17:07:15', '2024-10-02 17:07:15'),
(199, 41, 'Budhanilkantha - Mandikhatar Area', '2024-10-02 17:07:36', '2024-10-02 17:07:36'),
(200, 41, 'Budhanilkantha - Narayanthan Temple Area', '2024-10-02 17:07:54', '2024-10-02 17:07:54'),
(201, 41, 'Budhanilkantha - Paiyatar Area', '2024-10-02 17:08:11', '2024-10-02 17:08:11'),
(202, 41, 'Budhanilkantha - Pasikot Area', '2024-10-02 17:08:26', '2024-10-02 17:08:26'),
(203, 41, 'Chandragiri - Balambu Area', '2024-10-02 17:10:02', '2024-10-02 17:10:02'),
(204, 41, 'Chandragiri - Dahachowk', '2024-10-02 17:10:21', '2024-10-02 17:10:21'),
(205, 41, 'Chandragiri - Gurjudhara Area', '2024-10-02 17:10:38', '2024-10-02 17:10:38'),
(206, 41, 'Chandragiri - Kalanki Area', '2024-10-02 17:10:50', '2024-10-02 17:10:50'),
(207, 41, 'Chandragiri - Khadka Gaun', '2024-10-02 17:11:07', '2024-10-02 17:11:07'),
(208, 41, 'Chandragiri - Machhe Gaun', '2024-10-02 17:11:19', '2024-10-02 17:11:19'),
(209, 41, 'Chandragiri - Matatirtha Area', '2024-10-02 17:11:35', '2024-10-02 17:11:35'),
(210, 41, 'Chandragiri - Nagdhunga', '2024-10-02 17:12:17', '2024-10-02 17:12:17'),
(211, 41, 'Chandragiri - Satungal Area', '2024-10-02 17:12:28', '2024-10-02 17:12:28'),
(212, 41, 'Chandragiri - Thankot Checkpost Area', '2024-10-02 17:12:46', '2024-10-02 17:12:46'),
(213, 41, 'Chandragiri - Tinthana Area', '2024-10-02 17:12:58', '2024-10-02 17:12:58'),
(214, 41, 'Dakdhinkali - Chalnakhel', '2024-10-02 17:13:20', '2024-10-02 17:13:20'),
(215, 41, 'Dakshinkali - Pharping', '2024-10-02 17:13:36', '2024-10-02 17:13:36'),
(216, 41, 'Gokarneshwor - Arubari', '2024-10-02 17:14:12', '2024-10-02 17:14:12'),
(217, 41, 'Gokarneshwor - Attarkhel Area', '2024-10-02 17:14:23', '2024-10-02 17:14:23'),
(218, 41, 'Gokarneshwor - Jorpati Area', '2024-10-02 17:14:39', '2024-10-02 17:14:39'),
(219, 41, 'Gokarneshwor - Jorpati Narayantar', '2024-10-02 17:14:56', '2024-10-02 17:14:56'),
(220, 41, 'Gokarneshwor - Jorpati Nayabasti', '2024-10-02 17:15:08', '2024-10-02 17:15:08'),
(221, 41, 'Gokarneshwor - Makalbari', '2024-10-02 17:15:22', '2024-10-02 17:15:22'),
(222, 41, 'Gokarneshwor - Makalbari Dakshindhoka', '2024-10-02 17:15:36', '2024-10-02 17:15:36'),
(223, 41, 'Gokarneshwor - Sundarijal', '2024-10-02 17:15:50', '2024-10-02 17:15:50'),
(224, 41, 'Gokarneshwor - Tinchuli', '2024-10-02 17:16:06', '2024-10-02 17:16:06'),
(225, 41, 'Gokarneshwor - Nayapati', '2024-10-02 17:16:15', '2024-10-02 17:16:15'),
(226, 41, 'Gokarneshwor Temple Area', '2024-10-02 17:16:31', '2024-10-02 17:16:31'),
(227, 41, 'Kageshwori Manohara - GothatarTej Binayak Chowk', '2024-10-02 17:17:01', '2024-10-02 17:17:01'),
(228, 41, 'Kageshwori Manohara - Green Hill City Area', '2024-10-02 17:17:49', '2024-10-02 17:17:49'),
(229, 41, 'Kageshwori Manohara - Mulpani', '2024-10-02 17:18:14', '2024-10-02 17:18:14'),
(230, 41, 'Kageshwori Manohara - Thali', '2024-10-02 17:18:26', '2024-10-02 17:18:26'),
(231, 41, 'Kirtipur - Buspark Area', '2024-10-02 17:18:49', '2024-10-02 17:18:49'),
(232, 41, 'Kirtipur - Chobhar', '2024-10-02 17:19:01', '2024-10-02 17:19:01'),
(233, 41, 'Kirtipur - Nayabazar Area', '2024-10-02 17:19:13', '2024-10-02 17:19:13'),
(234, 41, 'Kirtipur - Panga Area', '2024-10-02 17:19:26', '2024-10-02 17:19:26'),
(235, 41, 'Kirtipur - Taudaha', '2024-10-02 17:19:36', '2024-10-02 17:19:36'),
(236, 41, 'Kirtipur - TU Area', '2024-10-02 17:19:49', '2024-10-02 17:19:49'),
(237, 41, 'Kirtipur - Tyanglaphat Area', '2024-10-02 17:20:01', '2024-10-02 17:20:01'),
(238, 41, 'Nagarjun - Banasthali Kharibot Chowk', '2024-10-02 17:20:30', '2024-10-02 17:20:30'),
(239, 41, 'Nagarjun - Bhimdhunga', '2024-10-02 17:20:42', '2024-10-02 17:20:42'),
(240, 41, 'Nagarjun - Boharatar Area', '2024-10-02 17:20:57', '2024-10-02 17:20:57'),
(241, 41, 'Nagarjun - Buddha Park Area', '2024-10-02 17:21:06', '2024-10-02 17:21:06'),
(242, 41, 'Nagarjun - Dadapauwa Ramkot Area', '2024-10-02 17:21:23', '2024-10-02 17:21:23'),
(243, 41, 'Nagarjun - Naya Naikap', '2024-10-02 17:21:36', '2024-10-02 17:21:36'),
(244, 41, 'Nagarjun - Nursery Chowk', '2024-10-02 17:21:54', '2024-10-02 17:21:54'),
(245, 41, 'Nagarjun - Padma Colony', '2024-10-02 17:22:05', '2024-10-02 17:22:05'),
(246, 41, 'Nagarjun - Purano Naikap', '2024-10-02 17:22:16', '2024-10-02 17:22:16'),
(247, 41, 'Nagarjun - Radhakrishna Mandir', '2024-10-02 17:22:30', '2024-10-02 17:22:30'),
(248, 41, 'Nagarjun - Sano Bharyang Area', '2024-10-02 17:22:41', '2024-10-02 17:22:41'),
(249, 41, 'Nagarjun - Saranpur', '2024-10-02 17:22:54', '2024-10-02 17:22:54'),
(250, 41, 'Nagarjun - Sitapaila Area', '2024-10-02 17:23:03', '2024-10-02 17:23:03'),
(251, 41, 'Nagarjun - Soltee Dobato Area', '2024-10-02 17:23:21', '2024-10-02 17:23:21'),
(252, 41, 'Nagarjun - Syuchatar', '2024-10-02 17:23:36', '2024-10-02 17:23:36'),
(253, 41, 'Nagarjun - Thulo Bharyang Area', '2024-10-02 17:23:48', '2024-10-02 17:23:48'),
(254, 41, 'Nagarjun - Thulo Bharyang Buddha Chowk', '2024-10-02 17:24:05', '2024-10-02 17:24:05'),
(255, 41, 'Nagarjun - Thulo Bharyang Gairigaun', '2024-10-02 17:24:19', '2024-10-02 17:24:19'),
(256, 41, 'Nagarjun - Thulo Bharyang Namgel Chowk', '2024-10-02 17:24:36', '2024-10-02 17:24:36'),
(257, 41, 'Nagarjun - Thulo Bharyang Tindhara', '2024-10-02 17:25:00', '2024-10-02 17:25:00'),
(258, 41, 'Nagarjun - White Gumba', '2024-10-02 17:25:14', '2024-10-02 17:25:14'),
(259, 41, 'Shankharapur - Salambutar', '2024-10-02 17:25:43', '2024-10-02 17:25:43'),
(260, 41, 'Sankharapur - Sankhu', '2024-10-02 17:26:00', '2024-10-02 17:26:00'),
(261, 41, 'Tarakeshwor - Dadagaun Area', '2024-10-02 17:26:31', '2024-10-02 17:26:31'),
(262, 41, 'Tarakeshwor - Dharmasthali', '2024-10-02 17:26:49', '2024-10-02 17:26:49'),
(263, 41, 'Tarakeshwor - Goldhunga Nagarjun School Area', '2024-10-02 17:27:08', '2024-10-02 17:27:08'),
(264, 41, 'Tarakeshwor - Hiledol Area', '2024-10-02 17:27:21', '2024-10-02 17:27:21'),
(265, 41, 'Tarakeshwor - Jarankhu Area', '2024-10-02 17:27:33', '2024-10-02 17:27:33'),
(266, 41, 'Tarakeshwor - Kavresthali Buspark Area', '2024-10-02 17:27:47', '2024-10-02 17:27:47'),
(267, 41, 'Tarakeshwor - Lolang Area', '2024-10-02 17:27:59', '2024-10-02 17:27:59'),
(268, 41, 'Tarakeshwor - Manamaiju Area', '2024-10-02 17:28:16', '2024-10-02 17:28:16'),
(269, 41, 'Tarakeshwor - Nepaltar Area', '2024-10-02 17:28:28', '2024-10-02 17:28:28'),
(270, 41, 'Tarakeshwor - Phutung Bus Stop Area', '2024-10-02 17:28:45', '2024-10-02 17:28:45'),
(271, 41, 'Tarakeshwor - Purano Gueshwari Area', '2024-10-02 17:29:03', '2024-10-02 17:29:03'),
(272, 41, 'Tokha - Baniyatar', '2024-10-02 17:29:22', '2024-10-02 17:29:22'),
(273, 41, 'Tokha - Basundhara Area', '2024-10-02 17:29:35', '2024-10-02 17:29:35'),
(274, 41, 'Tokha - Bhatke Ko Pul', '2024-10-02 17:29:56', '2024-10-02 17:29:56'),
(275, 41, 'Tokha - Bhutkhel', '2024-10-02 17:30:09', '2024-10-02 17:30:09'),
(276, 41, 'Tokha - Dhapasi Area', '2024-10-02 17:30:21', '2024-10-02 17:30:21'),
(277, 41, 'Tokha - Gongabu Area', '2024-10-02 17:30:32', '2024-10-02 17:30:32'),
(278, 41, 'Tokha - Grande Hospital Area', '2024-10-02 17:30:48', '2024-10-02 17:30:48'),
(279, 41, 'Tokha - Jalpachowk', '2024-10-02 17:30:59', '2024-10-02 17:30:59'),
(280, 41, 'Tokha - Suryadarshan Height', '2024-10-02 17:31:12', '2024-10-02 17:31:12'),
(281, 41, 'Tokha - Tokha Ganesthan Area', '2024-10-02 17:31:26', '2024-10-02 17:31:26'),
(282, 43, 'Bakhundole Area', '2024-10-02 17:37:44', '2024-10-02 17:37:44'),
(283, 43, 'Jwagal Area', '2024-10-02 17:37:55', '2024-10-02 17:37:55'),
(284, 43, 'Ward 1 - Kupondole Area', '2024-10-02 17:38:20', '2024-10-02 17:38:20'),
(285, 43, 'Ward 2 - Jhamsikhel Area', '2024-10-02 17:38:36', '2024-10-02 17:38:36'),
(286, 43, 'Ward 2 - Kalopul Area', '2024-10-02 17:38:52', '2024-10-02 17:38:52'),
(287, 43, 'Ward 2 - Sanepa Area', '2024-10-02 17:39:08', '2024-10-02 17:39:08'),
(288, 43, 'Ward 3 - Pulchowk Area', '2024-10-02 17:39:25', '2024-10-02 17:39:25'),
(289, 43, 'Ward 4 - Jawalakhel Area', '2024-10-02 17:39:49', '2024-10-02 17:39:49'),
(290, 43, 'Ward 5 - Kumaripati Area', '2024-10-02 17:40:08', '2024-10-02 17:40:08'),
(291, 43, 'Ward 5 - Patan Hospital Area', '2024-10-02 17:40:27', '2024-10-02 17:40:27'),
(292, 43, 'Ward 6 - Kanibahal Area', '2024-10-02 17:40:44', '2024-10-02 17:40:44'),
(293, 43, 'Ward 7 - Sundhara Area', '2024-10-02 17:41:01', '2024-10-02 17:41:01'),
(294, 43, 'Ward 8 - Guitole Area', '2024-10-02 17:41:24', '2024-10-02 17:41:24'),
(295, 43, 'Ward 9 - Balkumari Area', '2024-10-02 17:42:27', '2024-10-02 17:42:27'),
(296, 43, 'Ward 9 - Chyasal Area', '2024-10-02 17:42:43', '2024-10-02 17:42:43'),
(297, 43, 'Ward 10 - Chakupat Area', '2024-10-02 17:43:07', '2024-10-02 17:43:07'),
(298, 43, 'Ward 11 - Banglamukhi Area', '2024-10-02 17:43:28', '2024-10-02 17:43:28'),
(299, 43, 'Ward 12 - Thaina Area', '2024-10-02 17:43:46', '2024-10-02 17:43:46'),
(300, 43, 'Ward 14 - Kusunti Area', '2024-10-02 17:44:11', '2024-10-02 17:44:11'),
(301, 43, 'Ward 15 - Lagankhel Area', '2024-10-02 17:44:30', '2024-10-02 17:44:30'),
(302, 43, 'Ward 15 - Satdobato Area', '2024-10-02 17:44:45', '2024-10-02 17:44:45'),
(303, 43, 'Ward 16 - Mangalbazar Area', '2024-10-02 17:45:01', '2024-10-02 17:45:01'),
(304, 43, 'Ward 17 - Gwarko Area', '2024-10-02 17:45:22', '2024-10-02 17:45:22'),
(305, 43, 'Ward 19 - Macchindrabahal Area', '2024-10-02 17:45:46', '2024-10-02 17:45:46'),
(306, 43, 'Ward 20 - Patandhoka Area', '2024-10-02 17:46:10', '2024-10-02 17:46:10'),
(307, 44, 'Bagdole Area', '2024-10-02 17:46:56', '2024-10-02 17:46:56'),
(308, 44, 'Godawari - Bajrabarahi Area', '2024-10-02 17:47:19', '2024-10-02 17:47:19'),
(309, 44, 'Godawari - Botanical Garden Area', '2024-10-02 17:47:34', '2024-10-02 17:47:34'),
(310, 44, 'Godawari - Chapagaun Buspark Area', '2024-10-02 17:47:52', '2024-10-02 17:47:52'),
(311, 44, 'Godawari - Jharuwarasi', '2024-10-02 17:48:10', '2024-10-02 17:48:10'),
(312, 44, 'Godawari - Thaiba', '2024-10-02 17:48:21', '2024-10-02 17:48:21'),
(313, 44, 'Godawari - Thecho', '2024-10-02 17:48:31', '2024-10-02 17:48:31'),
(314, 44, 'Karyabinayak - Chhampi', '2024-10-02 17:48:54', '2024-10-02 17:48:54'),
(315, 44, 'Karyabinayak - Chunikhel', '2024-10-02 17:49:07', '2024-10-02 17:49:07'),
(316, 44, 'Karyabinayak - Dhaichhap', '2024-10-02 17:49:27', '2024-10-02 17:49:27'),
(317, 44, 'Karyabinayak - Khokana', '2024-10-02 17:49:38', '2024-10-02 17:49:38'),
(318, 44, 'Karyabinayak - Tikabhairabh', '2024-10-02 17:49:52', '2024-10-02 17:49:52'),
(319, 44, 'Lalitpur - Bhaisepati Area', '2024-10-02 17:50:15', '2024-10-02 17:50:15'),
(320, 44, 'Lalitpur - Bungamati Area', '2024-10-02 17:50:30', '2024-10-02 17:50:30'),
(321, 44, 'Lalitpur - Chokhel Area', '2024-10-02 17:50:44', '2024-10-02 17:50:44'),
(322, 44, 'Lalitpur - Dhapakhel Area', '2024-10-02 17:50:57', '2024-10-02 17:50:57'),
(323, 44, 'Lalitpur - Dholahiti', '2024-10-02 17:51:16', '2024-10-02 17:51:16'),
(324, 44, 'Lalitpur - Harisiddhi Patan Area', '2024-10-02 17:51:31', '2024-10-02 17:51:31'),
(325, 44, 'Lalitpur - Imadole Area', '2024-10-02 17:51:42', '2024-10-02 17:51:42'),
(326, 44, 'Lalitpur - Khumaltar Area', '2024-10-02 17:51:57', '2024-10-02 17:51:57'),
(327, 44, 'Lalitpur - Loha Chowk', '2024-10-02 17:52:08', '2024-10-02 17:52:08'),
(328, 44, 'Lalitpur - Nakhipot Area', '2024-10-02 17:52:19', '2024-10-02 17:52:19'),
(329, 44, 'Lalitpur - Nakhipot Kantipur Colony', '2024-10-02 17:52:43', '2024-10-02 17:52:43'),
(330, 44, 'Lalitpur - Nakhu Area', '2024-10-02 17:53:05', '2024-10-02 17:53:05'),
(331, 44, 'Lalitpur - Ranibu Area', '2024-10-02 17:53:16', '2024-10-02 17:53:16'),
(332, 44, 'Lalitpur - Sanepa Indrayeni Mandir', '2024-10-02 17:53:35', '2024-10-02 17:53:35'),
(333, 44, 'Lalitpur - Sunakoti Area', '2024-10-02 17:53:49', '2024-10-02 17:53:49'),
(334, 44, 'Mahalaxmi - Changathali', '2024-10-02 17:54:11', '2024-10-02 17:54:11'),
(335, 44, 'Mahalaxmi - Lamatar Bus Stop Area', '2024-10-02 17:54:28', '2024-10-02 17:54:28'),
(336, 44, 'Mahalaxmi - Lubhu', '2024-10-02 17:54:37', '2024-10-02 17:54:37'),
(337, 44, 'Mahalaxmi - Tikathali', '2024-10-02 17:54:46', '2024-10-02 17:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `api`
--

CREATE TABLE `api` (
  `id` bigint(20) NOT NULL,
  `api_name` varchar(255) NOT NULL,
  `api_value` varchar(255) NOT NULL,
  `api_username` varchar(255) DEFAULT NULL,
  `api_password` varchar(255) DEFAULT NULL,
  `api_granttype` varchar(255) DEFAULT NULL,
  `db_name` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api`
--

INSERT INTO `api` (`id`, `api_name`, `api_value`, `api_username`, `api_password`, `api_granttype`, `db_name`, `remarks`, `created_at`, `updated_at`) VALUES
(2, 'P', 'https://omstofm.globaltech.com.np/api/v1/full-reset?Storecode=FOODOMS101', NULL, NULL, NULL, NULL, 'Fetching products', '2024-09-05 23:21:55', '2024-09-15 22:48:58'),
(5, 'T', 'https://omstofm.globaltech.com.np/token', '9851255000', '9851255000', 'password', NULL, 'For generating token', '2024-09-15 06:34:55', '2024-09-15 22:49:10'),
(6, 'O', 'https://omstofm.globaltech.com.np/api/v1/PlaceOrder?Storecode=FOODOMS101', NULL, NULL, NULL, 'FOODOMS101', 'For Post orders', '2024-09-17 00:33:12', '2024-09-17 03:09:17'),
(7, 'OC', 'https://omstofm.globaltech.com.np/api/v1/CancelOrder?Storecode=FOODOMS101', NULL, NULL, NULL, 'FOODOMS101', 'For Order Cancel Post', '2024-10-01 15:41:57', '2024-10-01 15:41:57'),
(8, 'R', 'https://omstofm.globaltech.com.np/api/RegisterEcomUser', NULL, NULL, NULL, 'FOODOMS101', 'For Registration', '2024-10-21 14:49:38', '2024-10-21 14:49:38'),
(9, 'L', 'https://omstofm.globaltech.com.np/api/loginecom', NULL, NULL, NULL, 'FOODOMS101', 'For Login', '2024-10-21 14:53:30', '2024-10-21 14:53:30'),
(10, 'VE', 'https://omstofm.globaltech.com.np/api/ValidateEmail', NULL, NULL, NULL, 'FOODOMS101', 'For Email Validation', '2024-10-21 14:54:30', '2024-10-21 14:54:30'),
(11, 'CP', 'https://omstofm.globaltech.com.np/api/changeEcomPass', NULL, NULL, NULL, 'FOODOMS101', 'For Change Password', '2024-10-21 14:57:22', '2024-10-21 14:57:22'),
(12, 'FP', 'https://omstofm.globaltech.com.np/api/ForgotEcomPassword', NULL, NULL, NULL, 'FOODOMS101', 'For Forgot Password', '2024-10-21 14:58:59', '2024-10-21 14:58:59'),
(13, 'RP', 'https://omstofm.globaltech.com.np/api/ResetEcomPassword', NULL, NULL, NULL, 'FOODOMS101', 'For Reset Password', '2024-10-21 14:59:42', '2024-10-21 14:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carousel_images`
--

CREATE TABLE `carousel_images` (
  `id` bigint(20) NOT NULL,
  `image_1` varchar(255) DEFAULT NULL,
  `image_2` varchar(255) DEFAULT NULL,
  `image_3` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carousel_images`
--

INSERT INTO `carousel_images` (`id`, `image_1`, `image_2`, `image_3`, `created_at`, `updated_at`) VALUES
(1, '1727865655_image1.jpg', '1727865655_image2.jpg', '1727865655_image3.png', NULL, '2024-10-02 16:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `province_id` bigint(20) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `shipping_cost` decimal(10,2) DEFAULT NULL,
  `shipping_cost_total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `customer_id`, `province_id`, `city_id`, `session_id`, `tax`, `shipping_cost`, `shipping_cost_total`, `subtotal`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL, NULL, 0.00, 70.00, 70.00, 1404.00, NULL, '2024-09-17 00:54:02', '2024-09-30 16:15:09'),
(2, 13, 3, 5, NULL, 0.00, 70.00, 0.00, 0.00, NULL, '2024-09-26 23:49:29', '2024-10-03 11:40:00'),
(3, 25, 3, 1, NULL, 0.00, 70.00, 0.00, 0.00, NULL, '2024-09-27 17:58:04', '2024-09-29 13:08:47'),
(4, 28, NULL, NULL, NULL, 0.00, 0.00, 0.00, 240.00, NULL, '2024-09-30 21:44:01', '2024-09-30 21:44:01'),
(5, 29, NULL, NULL, NULL, 0.00, 0.00, 0.00, 2111.00, NULL, '2024-10-01 12:09:16', '2024-10-01 13:40:18'),
(6, 24, 3, 19, NULL, 0.00, 70.00, 0.00, 0.00, NULL, '2024-10-01 14:04:21', '2024-10-17 17:22:20'),
(7, 17, 3, 1, NULL, 0.00, 70.00, 0.00, 0.00, NULL, '2024-10-02 10:27:31', '2024-10-20 10:35:49'),
(8, 30, 3, 15, NULL, 0.00, 70.00, 0.00, 0.00, NULL, '2024-10-02 17:30:13', '2024-10-02 17:31:41'),
(9, 17, 3, 1, NULL, NULL, NULL, 70.00, 1180.00, NULL, '2024-10-15 11:25:50', '2024-10-15 11:25:50');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` bigint(20) NOT NULL,
  `cart_id` bigint(20) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `cart_id`, `product_code`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(52, 1, 'FMD302518', 2, 702.00, '2024-09-29 15:42:41', '2024-09-30 16:15:09'),
(53, 4, 'FMD199028', 1, 240.00, '2024-09-30 21:44:01', '2024-09-30 21:44:01'),
(54, 5, 'FMD302518', 1, 702.00, '2024-10-01 12:09:16', '2024-10-01 12:09:16'),
(55, 5, 'FMD199195', 2, 150.00, '2024-10-01 12:11:08', '2024-10-01 12:11:08'),
(57, 5, 'FMD177357', 1, 1109.00, '2024-10-01 13:40:18', '2024-10-01 13:40:18'),
(91, 9, 'FMD192076', 2, 590.00, '2024-10-15 11:25:50', '2024-10-15 11:25:50');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verification_code` varchar(255) DEFAULT NULL,
  `code_expires_at` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email_verified` varchar(255) DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `full_name`, `email`, `email_verification_code`, `code_expires_at`, `password`, `phone`, `email_verified`, `email_verified_at`, `created_at`, `updated_at`) VALUES
(13, 'Janam pandey', 'jananpandey1995@gmail.com', NULL, NULL, '$2y$12$JqR4nZHAmBoLf6zkHGirgeFE2R6M6SxHDNLRjcpxqYZTUdeaKtIUC', '9813074888', '1', '2024-09-17 18:01:59', '2024-09-17 12:16:14', '2024-10-03 11:18:52'),
(17, 'bikesh kumar Gupta', 'connectedwithme100@gmail.com', NULL, NULL, '$2y$12$/QXUvToVEZufQeVFHZiafuCSD91Ksun9eUFl/2WJi2hNfZrwZImWG', '9865527793', '1', '2024-09-27 17:06:05', '2024-09-27 17:05:07', '2024-09-27 17:06:05'),
(21, 'Dharmendra Sharma', 'dharmendrahere@icloud.com', NULL, NULL, '$2y$12$Q0Pa.kyJNh9mHetYor6c7eD9tnZeQ/CzAfg6dqmyHpzjjrQqW4wiS', '9866114605', '1', '2024-10-06 14:06:20', '2024-10-06 14:05:16', '2024-10-06 14:06:20'),
(24, 'Janam Pandey', 'janampandey2@gmail.com', NULL, NULL, '$2y$12$W/0LQfFbzf43FZTxpK0bkub440EEsw3TS6JF.z/xMzWYA3XyVcCku', '9866077949', '1', '2024-09-27 17:55:27', '2024-09-27 17:49:59', '2024-09-27 17:55:27'),
(25, 'rohit', 'rmmishra2080@gmail.com', NULL, NULL, '$2y$12$Izvdy6mPH9XI7ZG7PXFYLu/ZfAWLbx60PshOVlTOJQRA37D0lUCyq', '9802342322', '1', '2024-09-27 17:56:11', '2024-09-27 17:55:33', '2024-09-27 17:56:11'),
(26, 'Rajan Ghimire', 'ghimirerajan889@gmail.com', NULL, NULL, '$2y$12$gr62/R1zbg.l.cpeNg4EteykgG5kZd9WLCPp2f.VXzY1ZsYRKlyQ6', '9860852251', '1', '2024-09-27 23:26:06', '2024-09-27 23:25:00', '2024-09-27 23:26:06'),
(27, NULL, 'jagannathpandey2030@gmail.com', '023244', '2024-09-28 02:10:04', NULL, NULL, NULL, NULL, '2024-09-28 01:55:04', '2024-09-28 01:55:04'),
(28, 'Bikesh Kumar Gupta', 'programmingaddicted110@gmail.com', NULL, NULL, '$2y$12$vAog70BLy04RUHC9Oxe3hu9nHCogyKbuXq.N3yZIjuw1ZJucFJfni', '9865527793', '1', '2024-09-30 21:40:58', '2024-09-30 21:39:51', '2024-09-30 21:40:58'),
(29, 'Surendra Mandal', 'surendramandal951@gmail.com', NULL, NULL, '$2y$12$r97Z38yW9.5IS34C3FO3LuIZtHLbIXkqxnxe9yk.9YC9Crlo15hES', '9817667915', '1', '2024-10-01 11:57:11', '2024-10-01 11:44:32', '2024-10-01 11:57:11'),
(30, 'nitesh adhikari', 'niteshadhikari948@gmail.com', NULL, NULL, '$2y$12$rjEHyqvuI2YssJ5FZ8j9P.x1umYS3/W.Iujfkcz5fCKnxx22ii33.', '9802342321', '1', '2024-10-02 17:28:17', '2024-10-02 17:26:42', '2024-10-02 17:28:17'),
(32, NULL, 'connectedwithme100@gmail.corerm', '048061', '2024-10-06 17:31:38', NULL, NULL, NULL, NULL, '2024-10-06 17:16:38', '2024-10-06 17:16:38');

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_book`
--

CREATE TABLE `customer_address_book` (
  `id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `province_id` bigint(20) NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `zone_id` bigint(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `address_type` varchar(255) DEFAULT NULL,
  `default_shipping` varchar(255) DEFAULT NULL,
  `default_billing` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_address_book`
--

INSERT INTO `customer_address_book` (`id`, `customer_id`, `full_name`, `phone`, `province_id`, `city_id`, `zone_id`, `address`, `landmark`, `address_type`, `default_shipping`, `default_billing`, `created_at`, `updated_at`) VALUES
(2, 13, 'Janam pandey', '9813074888', 3, 5, 22, 'Gairidhara chowk', NULL, 'H', 'Y', NULL, '2024-09-26 23:48:35', '2024-10-04 17:55:43'),
(3, 13, 'Janam Pandey', '9866077949', 3, 19, 8, 'Near Hospital', NULL, 'O', NULL, NULL, '2024-09-27 00:10:38', '2024-09-27 13:45:34'),
(4, 26, 'Rajan Ghimire', '9860852251', 3, 5, 23, 'Near trishara', NULL, 'H', 'Y', NULL, '2024-09-27 23:27:22', '2024-10-01 12:29:26'),
(5, 25, 'rohit', '9802342322', 3, 1, 16, 'jamal', 'hotel', 'O', 'Y', NULL, '2024-09-29 13:03:50', '2024-10-01 12:29:26'),
(6, 24, 'Janam Pandey', '9866077949', 3, 19, 3, 'traffic bit', 'balaju park', 'H', 'Y', NULL, '2024-10-01 14:05:18', '2024-10-24 11:48:28'),
(7, 17, 'bikesh kumar Gupta', '9865527793', 3, 5, 22, 'kalimati', 'kalimati', 'H', 'Y', NULL, '2024-10-02 10:27:17', '2024-10-03 00:56:32'),
(8, 29, 'Surendra Mandal', '9817667915', 3, 6, 26, 'dsndbkjsbfnsdbxj', NULL, 'H', 'Y', NULL, '2024-10-02 10:58:32', '2024-10-03 00:56:32'),
(9, 30, 'nitesh adhikari', '9802342321', 3, 15, 79, 'teku', NULL, 'O', 'Y', NULL, '2024-10-02 17:29:34', '2024-10-03 00:56:32'),
(10, 17, 'bikesh kumar Gupta', '9865527793', 3, 1, 14, 'Kalimati', NULL, 'H', 'Y', NULL, '2024-10-15 11:25:50', '2024-10-24 11:48:28');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_information`
--

CREATE TABLE `delivery_information` (
  `id` bigint(20) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `invoice_email` varchar(255) DEFAULT NULL,
  `province_id` bigint(20) NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `zone_id` bigint(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `address_type` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_information`
--

INSERT INTO `delivery_information` (`id`, `customer_id`, `order_id`, `full_name`, `phone`, `invoice_email`, `province_id`, `city_id`, `zone_id`, `address`, `landmark`, `address_type`, `type`, `created_at`, `updated_at`) VALUES
(31, 25, '#ORD-20240929-0001', 'rohit', '9802342322', 'rmmishra2080@gmail.com', 3, 1, 16, 'jamal', 'hotel', 'O', 'billing', '2024-09-29 13:04:28', '2024-09-29 13:04:28'),
(32, 25, '#ORD-20240929-0001', 'rohit', '9802342322', 'rmmishra2080@gmail.com', 3, 1, 16, 'jamal', 'hotel', 'O', 'shipping', '2024-09-29 13:04:28', '2024-09-29 13:04:28'),
(33, 25, '#ORD-20240929-0002', 'rohit', '9802342322', 'rmmishra2080@gmail.com', 3, 1, 16, 'jamal', 'hotel', 'O', 'billing', '2024-09-29 13:04:31', '2024-09-29 13:04:31'),
(34, 25, '#ORD-20240929-0002', 'rohit', '9802342322', 'rmmishra2080@gmail.com', 3, 1, 16, 'jamal', 'hotel', 'O', 'shipping', '2024-09-29 13:04:31', '2024-09-29 13:04:31'),
(35, 25, '#ORD-20240929-0003', 'rohit', '9802342322', 'rmmishra2080@gmail.com', 3, 1, 16, 'jamal', 'hotel', 'O', 'billing', '2024-09-29 13:06:53', '2024-09-29 13:06:53'),
(36, 25, '#ORD-20240929-0003', 'rohit', '9802342322', 'rmmishra2080@gmail.com', 3, 1, 16, 'jamal', 'hotel', 'O', 'shipping', '2024-09-29 13:06:53', '2024-09-29 13:06:53'),
(37, 25, '#ORD-20240929-0004', 'rohit', '9802342322', 'rmmishra2080@gmail.com', 3, 1, 16, 'jamal', 'hotel', 'O', 'billing', '2024-09-29 13:08:37', '2024-09-29 13:08:37'),
(38, 25, '#ORD-20240929-0004', 'rohit', '9802342322', 'rmmishra2080@gmail.com', 3, 1, 16, 'jamal', 'hotel', 'O', 'shipping', '2024-09-29 13:08:37', '2024-09-29 13:08:37'),
(93, 24, '#ORD-20241001-0001', 'Janam Pandey', '9866077949', 'janampandey2@gmail.com', 3, 19, 3, 'traffic bit', 'balaju park', 'H', 'billing', '2024-10-01 15:01:52', '2024-10-01 15:01:52'),
(94, 24, '#ORD-20241001-0001', 'Janam Pandey', '9866077949', 'janampandey2@gmail.com', 3, 19, 3, 'traffic bit', 'balaju park', 'H', 'shipping', '2024-10-01 15:01:52', '2024-10-01 15:01:52'),
(95, 24, '#ORD-20241001-0002', 'Janam Pandey', '9866077949', 'janampandey2@gmail.com', 3, 19, 3, 'traffic bit', 'balaju park', 'H', 'billing', '2024-10-01 18:04:58', '2024-10-01 18:04:58'),
(96, 24, '#ORD-20241001-0002', 'Janam Pandey', '9866077949', 'janampandey2@gmail.com', 3, 19, 3, 'traffic bit', 'balaju park', 'H', 'shipping', '2024-10-01 18:04:58', '2024-10-01 18:04:58'),
(97, 24, '#ORD-20241002-0001', 'Janam Pandey', '9866077949', 'janampandey2@gmail.com', 3, 19, 3, 'traffic bit', 'balaju park', 'H', 'billing', '2024-10-02 00:40:44', '2024-10-02 00:40:44'),
(98, 24, '#ORD-20241002-0001', 'Janam Pandey', '9866077949', 'janampandey2@gmail.com', 3, 19, 3, 'traffic bit', 'balaju park', 'H', 'shipping', '2024-10-02 00:40:44', '2024-10-02 00:40:44'),
(99, 17, '#ORD-20241002-0002', 'bikesh kumar Gupta', '9865527793', 'connectedwithme100@gmail.com', 3, 5, 22, 'kalimati', 'kalimati', 'H', 'billing', '2024-10-02 10:27:43', '2024-10-02 10:27:43'),
(100, 17, '#ORD-20241002-0002', 'bikesh kumar Gupta', '9865527793', 'connectedwithme100@gmail.com', 3, 5, 22, 'kalimati', 'kalimati', 'H', 'shipping', '2024-10-02 10:27:43', '2024-10-02 10:27:43'),
(101, 17, '#ORD-20241002-0003', 'bikesh kumar Gupta', '9865527793', 'connectedwithme100@gmail.com', 3, 5, 22, 'kalimati', 'kalimati', 'H', 'billing', '2024-10-02 10:35:01', '2024-10-02 10:35:01'),
(102, 17, '#ORD-20241002-0003', 'bikesh kumar Gupta', '9865527793', 'connectedwithme100@gmail.com', 3, 5, 22, 'kalimati', 'kalimati', 'H', 'shipping', '2024-10-02 10:35:01', '2024-10-02 10:35:01'),
(119, 30, '#ORD-20241002-0012', 'nitesh adhikari', '9802342321', 'niteshadhikari948@gmail.com', 3, 15, 79, 'teku', NULL, 'O', 'billing', '2024-10-02 17:30:37', '2024-10-02 17:30:37'),
(120, 30, '#ORD-20241002-0012', 'nitesh adhikari', '9802342321', 'niteshadhikari948@gmail.com', 3, 15, 79, 'teku', NULL, 'O', 'shipping', '2024-10-02 17:30:37', '2024-10-02 17:30:37'),
(121, 30, '#ORD-20241002-0013', 'nitesh adhikari', '9802342321', 'niteshadhikari948@gmail.com', 3, 15, 79, 'teku', NULL, 'O', 'billing', '2024-10-02 17:31:34', '2024-10-02 17:31:34'),
(122, 30, '#ORD-20241002-0013', 'nitesh adhikari', '9802342321', 'niteshadhikari948@gmail.com', 3, 15, 79, 'teku', NULL, 'O', 'shipping', '2024-10-02 17:31:34', '2024-10-02 17:31:34'),
(123, 13, '#ORD-20241003-0001', 'Janam pandey', '9813074888', 'jananpandey1995@gmail.com', 3, 5, 22, 'Gairidhara chowk', NULL, 'H', 'billing', '2024-10-03 01:00:41', '2024-10-03 01:00:41'),
(124, 13, '#ORD-20241003-0001', 'Janam pandey', '9813074888', 'jananpandey1995@gmail.com', 3, 5, 22, 'Gairidhara chowk', NULL, 'H', 'shipping', '2024-10-03 01:00:41', '2024-10-03 01:00:41'),
(125, 13, '#ORD202410030002', 'Janam pandey', '9813074888', 'jananpandey1995@gmail.com', 3, 5, 22, 'Gairidhara chowk', NULL, 'H', 'billing', '2024-10-03 10:46:39', '2024-10-03 10:46:39'),
(126, 13, '#ORD202410030002', 'Janam pandey', '9813074888', 'jananpandey1995@gmail.com', 3, 5, 22, 'Gairidhara chowk', NULL, 'H', 'shipping', '2024-10-03 10:46:39', '2024-10-03 10:46:39'),
(127, 24, '#ORD202410030003', 'Janam Pandey', '9866077949', 'janampandey2@gmail.com', 3, 19, 3, 'traffic bit', 'balaju park', 'H', 'billing', '2024-10-03 13:43:30', '2024-10-03 13:43:30'),
(128, 24, '#ORD202410030003', 'Janam Pandey', '9866077949', 'janampandey2@gmail.com', 3, 19, 3, 'traffic bit', 'balaju park', 'H', 'shipping', '2024-10-03 13:43:30', '2024-10-03 13:43:30'),
(129, 24, '#ORD202410030004', 'Janam Pandey', '9866077949', 'janampandey2@gmail.com', 3, 19, 3, 'traffic bit', 'balaju park', 'H', 'billing', '2024-10-03 17:55:43', '2024-10-03 17:55:43'),
(130, 24, '#ORD202410030004', 'Janam Pandey', '9866077949', 'janampandey2@gmail.com', 3, 19, 3, 'traffic bit', 'balaju park', 'H', 'shipping', '2024-10-03 17:55:43', '2024-10-03 17:55:43'),
(131, 24, '#ORD202410080001', 'Janam Pandey', '9866077949', 'janampandey2@gmail.com', 3, 19, 3, 'traffic bit', 'balaju park', 'H', 'billing', '2024-10-08 17:36:06', '2024-10-08 17:36:06'),
(132, 24, '#ORD202410080001', 'Janam Pandey', '9866077949', 'janampandey2@gmail.com', 3, 19, 3, 'traffic bit', 'balaju park', 'H', 'shipping', '2024-10-08 17:36:06', '2024-10-08 17:36:06'),
(133, 17, '#ORD202410150001', 'bikesh kumar Gupta', '9865527793', 'connectedwithme100@gmail.com', 3, 1, 14, 'Kalimati', NULL, 'H', 'billing', '2024-10-15 11:27:37', '2024-10-15 11:27:37'),
(134, 17, '#ORD202410150001', 'bikesh kumar Gupta', '9865527793', 'connectedwithme100@gmail.com', 3, 5, 22, 'kalimati', 'kalimati', 'H', 'shipping', '2024-10-15 11:27:37', '2024-10-15 11:27:37'),
(143, 17, '#ORD202410180001', 'bikesh kumar Gupta', '9865527793', 'connectedwithme100@gmail.com', 3, 1, 14, 'Kalimati', NULL, 'H', 'billing', '2024-10-18 17:31:53', '2024-10-18 17:31:53'),
(144, 17, '#ORD202410180001', 'bikesh kumar Gupta', '9865527793', 'connectedwithme100@gmail.com', 3, 5, 22, 'kalimati', 'kalimati', 'H', 'shipping', '2024-10-18 17:31:53', '2024-10-18 17:31:53'),
(145, 17, '#ORD202410200001', 'bikesh kumar Gupta', '9865527793', 'connectedwithme100@gmail.com', 3, 1, 14, 'Kalimati', NULL, 'H', 'billing', '2024-10-20 10:29:20', '2024-10-20 10:29:20'),
(146, 17, '#ORD202410200001', 'bikesh kumar Gupta', '9865527793', 'connectedwithme100@gmail.com', 3, 5, 22, 'kalimati', 'kalimati', 'H', 'shipping', '2024-10-20 10:29:20', '2024-10-20 10:29:20'),
(147, 17, '#ORD202410200002', 'bikesh kumar Gupta', '9865527793', 'connectedwithme100@gmail.com', 3, 1, 14, 'Kalimati', NULL, 'H', 'billing', '2024-10-20 10:35:42', '2024-10-20 10:35:42'),
(148, 17, '#ORD202410200002', 'bikesh kumar Gupta', '9865527793', 'connectedwithme100@gmail.com', 3, 5, 22, 'kalimati', 'kalimati', 'H', 'shipping', '2024-10-20 10:35:42', '2024-10-20 10:35:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(3, 'Brianna Belton', 'pageranktechnology@gmail.com', 'Re: Website Design & Development', 'Greeting of the day,\r\n\r\nwww.omsok.com\r\n \r\nWe offer the following Services at affordable Cost:\r\n\r\nLike: - Website Design, Graphic Design & Re-Design. Web Development, Mobile Apps Development or want some additional features with latest technological trends?\r\n\r\nAre you thinking to upgrade or build new website/mobile app? Or if you want to get idea, how much it would cost you?\r\n\r\nReply me back with your requirements.\r\n\r\nKindest Regards,\r\nBrianna Belton\r\n\r\n\r\n\r\n\r\n\r\nIf you don’t want me to contact you again about this, reply with “No thank you”', '2024-10-01 22:22:28', '2024-10-01 22:22:28'),
(4, 'Nitin Chaudhary', 'seo@rankinghat.co', 'Re: SEO Services', 'Hello there,\r\n\r\nYour website\'s design is absolutely brilliant. The visuals really enhance your message and the content compels action. I\'ve forwarded it to a few of my contacts who I think could benefit from your services.\r\n\r\nWhen I was looking at your site \"www.omsok.com\", though, I noticed some mistakes that you\'ve made re: search engine optimization (SEO) which may be leading to a decline in your organic SEO results.\r\n\r\nWould you like to fix it so that you can get maximum exposure/presence on Google, Bing, Yahoo and web traffic to your website?\r\n\r\nIf this is something you are interested in, then allow me to send you a No Obligation Audit Report for your review. We will fix those errors with no extra cost if you choose any one of our monthly marketing plans.\r\n\r\nHave a nice day!\r\n\r\nRegards,\r\nNitin Chaudhary | International Project Manager                                                    \r\nEmail:- sales@rankinghat.co            \r\nContact Number:- +1- (209) 813-5119', '2024-10-02 00:28:06', '2024-10-02 00:28:06'),
(5, 'Paul S', 'info@letsgetuoptimize.com', 'Re: The visibility and SEO of your website', 'Hello omsok.com,\r\n\r\nI would like to discuss SEO!\r\n\r\nI can help your website to get on first page of Google and increase the number of leads and sales you are getting from your website.\r\n\r\nOur 4 Pillar Process, which includes SEO, PPC, Design, and competitor analysis, is designed to increase your market share.\r\n\r\nI\'d be happy to discuss SEO services in greater detail with you; we can work together. Drop your best number to reach.\r\n\r\nWell wishes,\r\nPaul S| Lets Get You Optimize\r\nSr SEO consultant\r\nwww.letsgetuoptimize.com\r\nPhone No: +1 (949) 313-8897 \r\n\r\n\r\n\r\n\r\nIf you don’t want me to contact you again about this, reply with “unsubscribe”', '2024-10-03 23:33:34', '2024-10-03 23:33:34'),
(6, 'Nitin Chaudhary', 'sales@rankinghat.co', 'Re: Want to attract more clients and customers?', 'Hello there,\r\n\r\nYour website\'s design is absolutely brilliant. The visuals really enhance your message and the content compels action. I\'ve forwarded it to a few of my contacts who I think could benefit from your services.\r\n\r\nWhen I was looking at your site \"www.omsok.com\", though, I noticed some mistakes that you\'ve made re: search engine optimization (SEO) which may be leading to a decline in your organic SEO results.\r\n\r\nWould you like to fix it so that you can get maximum exposure/presence on Google, Bing, Yahoo and web traffic to your website?\r\n\r\nIf this is something you are interested in, then allow me to send you a No Obligation Audit Report for your review. We will fix those errors with no extra cost if you choose any one of our monthly marketing plans.\r\n\r\nHave a nice day!\r\n\r\nRegards,\r\nNitin Chaudhary | International Project Manager                                                    \r\nEmail:- sales@rankinghat.co            \r\nContact Number:- +1- (209) 813-5119', '2024-10-05 02:49:03', '2024-10-05 02:49:03'),
(7, 'Brianna Belton', 'briannawebsolution@gmail.com', 'Re: Attract customers like never before', 'Hi,\r\n \r\nI found your details on Google.com and I have looked at your website and realized your website has nice design but your website ranking is not good on major search engines Google, AOL, Yahoo and Bing.\r\n\r\nOur main focus will be to help generate more conversations & online Views for \" www.omsok.com \"\r\n\r\nWe can place your website on Google\'s 1st page. We will improve your website’s position on Google and getting more Views.\r\n\r\nIf interested, kindly provide me your cell number, and email.\r\n\r\nRegards,\r\nBrianna Belton\r\nDigital Marketing & Web Consultant\r\n\r\n\r\n\r\n\r\n\r\nYour Website : www.omsok.com', '2024-10-07 18:04:02', '2024-10-07 18:04:02'),
(8, 'Nitin Chaudhary', 'sales@rankinghat.co', 'Re: Want to attract more clients and customers?', 'Hello there,\r\n\r\nYour website\'s design is absolutely brilliant. The visuals really enhance your message and the content compels action. I\'ve forwarded it to a few of my contacts who I think could benefit from your services.\r\n\r\nWhen I was looking at your site \"www.omsok.com\", though, I noticed some mistakes that you\'ve made re: search engine optimization (SEO) which may be leading to a decline in your organic SEO results.\r\n\r\nWould you like to fix it so that you can get maximum exposure/presence on Google, Bing, Yahoo and web traffic to your website?\r\n\r\nIf this is something you are interested in, then allow me to send you a No Obligation Audit Report for your review. We will fix those errors with no extra cost if you choose any one of our monthly marketing plans.\r\n\r\nHave a nice day!\r\n\r\nRegards,\r\nNitin Chaudhary | International Project Manager                                                    \r\nEmail:- sales@rankinghat.co            \r\nContact Number:- +1- (209) 813-5119', '2024-10-08 16:05:18', '2024-10-08 16:05:18'),
(9, 'Nitin Chaudhary', 'sales@rankinghat.co', 'Re: Want to attract more clients and customers?', 'Hello there,\r\n\r\nYour website\'s design is absolutely brilliant. The visuals really enhance your message and the content compels action.\r\n\r\nWhen I was looking at your site \"www.omsok.com\", though, I noticed some mistakes that you\'ve made re: search engine optimization (SEO) which may be leading to a decline in your organic SEO results. \r\n\r\nWould you like to fix it so that you can get maximum exposure/presence on Google, Bing, Yahoo and web traffic to your website? \r\n\r\nIf this is something you are interested in, then let’s schedule a call either on google meet, zoom, skype, whatsapp or normal call. \r\n\r\nWe have flexible monthly marketing plans for all your website or business needs from SEO (Google Ranking), Social Media Marketing, PPC, to Email Marketing. \r\n\r\nHave a nice day! \r\n\r\nRegards, \r\nNitin Chaudhary | International Project Manager \r\nEmail:- sales@rankinghat.co \r\nContact Number:- +1- (209) 813-5119', '2024-10-10 13:46:47', '2024-10-10 13:46:47'),
(10, 'Sam Georgia', 'sam@getonglobe.com', 'Re: SEO settings / Search engine results #', 'Hi [omsok.com],\r\n\r\nI am Sam (Online Marketing Executive), checking your website see you have a good design and it looks great, but it\'s not ranking on Google and other major search engines.\r\n\r\nWe can place your website on Google\'s 1st page. Yahoo, Facebook, LinkedIn, YouTube, Instagram, Pinterest etc.).\r\n\r\nLet me know if you are interested, then I can send our Packages and Pricelist.\r\n\r\nCheers,\r\nSam Georgia - (Sr SEO consultant)\r\nwww.GetOnGlobe.com\r\nCall: +1 (917) 310-3348', '2024-10-11 18:34:47', '2024-10-11 18:34:47'),
(11, 'Search Engine Index', 'submissions@searchindex.site', 'Add omsok.com to Google Search Index!', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.net/', '2024-10-12 21:28:27', '2024-10-12 21:28:27'),
(12, 'Paul S', 'letsgetuoptimize@gmail.com', 'Re: Improve your website traffic and SEO', 'Hey team omsok.com,\r\n\r\nHope your doing well!\r\n\r\nI just following your website and realized that despite having a good design; but it was not ranking high on any of the Search Engines (Google, Yahoo & Bing) for most of the keywords related to your business.\r\n\r\nWe can place your website on Google\'s 1st page.\r\n\r\n*  Top ranking on Google search!\r\n*  Improve website clicks and views!\r\n*  Increase Your Leads, clients & Revenue!\r\n\r\nInterested? Please provide your name, contact information, and email.\r\n\r\nWell wishes,\r\nPaul S\r\n+1 (949) 313-8897\r\nPaul S| Lets Get You Optimize\r\nSr SEO consultant\r\nwww.letsgetuoptimize.com\r\nPhone No: +1 (949) 313-8897', '2024-10-15 15:50:41', '2024-10-15 15:50:41'),
(13, 'Brianna Belton', 'pageranktechnology@gmail.com', 'Re: Website Design & Development', 'Greeting of the day,\r\n\r\nwww.omsok.com\r\n \r\nWe offer the following Services at affordable Cost:\r\n\r\nLike: - Website Design, Graphic Design & Re-Design. Web Development, Mobile Apps Development or want some additional features with latest technological trends?\r\n\r\nAre you thinking to upgrade or build new website/mobile app? Or if you want to get idea, how much it would cost you?\r\n\r\nReply me back with your requirements.\r\n\r\nKindest Regards,\r\nBrianna Belton\r\n\r\n\r\n\r\n\r\n\r\nIf you don’t want me to contact you again about this, reply with “No thank you”', '2024-10-17 02:21:33', '2024-10-17 02:21:33'),
(14, 'Sam Georgia', 'sam@getonglobe.com', 'Re: SEO settings / Search engine results #', 'Hi [omsok.com],\r\n\r\nI am Sam (Online Marketing Executive), checking your website see you have a good design and it looks great, but it\'s not ranking on Google and other major search engines.\r\n\r\nWe can place your website on Google\'s 1st page. Yahoo, Facebook, LinkedIn, YouTube, Instagram, Pinterest etc.).\r\n\r\nLet me know if you are interested, then I can send our Packages and Pricelist.\r\n\r\nCheers,\r\nSam Georgia - (Sr SEO consultant)\r\nwww.GetOnGlobe.com\r\nCall: +1 (917) 310-3348', '2024-10-20 18:45:09', '2024-10-20 18:45:09'),
(18, 'Nitin Chaudhary', 'seo@rankinghat.co', 'Re: SEO consultant', 'Hello there,\r\n\r\nYour website\'s design is absolutely brilliant. The visuals really enhance your message and the content compels action. I\'ve forwarded it to a few of my contacts who I think could benefit from your services.\r\n\r\nWhen I was looking at your site \"www.omsok.com\", though, I noticed some mistakes that you\'ve made re: search engine optimization (SEO) which may be leading to a decline in your organic SEO results.\r\n\r\nWould you like to fix it so that you can get maximum exposure/presence on Google, Bing, Yahoo and web traffic to your website?\r\n\r\nIf this is something you are interested in, then allow me to send you a No Obligation Audit Report for your review. We will fix those errors with no extra cost if you choose any one of our monthly marketing plans.\r\n\r\nHave a nice day!\r\n\r\nRegards,\r\nNitin Chaudhary | International Project Manager                                                    \r\nEmail:- sales@rankinghat.co            \r\nContact Number:- +1- (209) 813-5119', '2024-10-22 19:27:32', '2024-10-22 19:27:32'),
(19, 'Lucy Johnson', 'seorankingtech@gmail.com', 'Re: Increase targeted traffic and SEO', 'Hi Team,\r\n\r\nAre you looking to boost your business, improve rankings, and attract more clients and customers?\r\n\r\nWould you like your company [ http://www.omsok.com ] to be listed at the top of Google for multiple search phrases (Keywords) relevant to your products / services?\r\n\r\n1.      SEO - Full SEO Packages with Plan and Activities\r\n2.      SMO - Facebook, Twitter, LinkedIn, YouTube & Marketing etc.\r\n3.      PPC - Pay-per-Click\r\n4.      Web Designing – (Responsive, Re-Designing)\r\n\r\nWe will help them find you by putting you 1st page on Google with guaranteed!\r\n\r\nPlease let me know if you are interested. We have some special offers this season.\r\n\r\nWe will be more than happy to send you \"Proposal\" and \"Pricing\".\r\n\r\nThanks & Regards,\r\nLucy Jhonson - Sr SEO consultant\r\n\r\n \r\n\r\n\r\n\r\n\r\n\r\n If you don’t want me to contact you again about this, reply with “no thanks”', '2024-10-24 21:30:22', '2024-10-24 21:30:22');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '0001_01_01_000001_create_cache_table', 1),
(10, '0001_01_01_000002_create_jobs_table', 1),
(11, '2024_05_28_034358_create_contact_table', 1),
(12, '2024_05_28_051054_create_personal_access_tokens_table', 1),
(13, '2024_05_29_165117_create_users_table', 1),
(14, '2024_06_01_163152_create_website_data_table', 1),
(15, '2024_09_03_081643_create_products_table', 1),
(16, '2024_09_03_113655_create_customers_table', 1),
(17, '2024_09_05_044616_create_cart_table', 2),
(19, '2024_09_05_045401_create_cart_items_table', 3),
(20, '2024_09_05_050349_create_orders_table', 4),
(21, '2024_09_05_053424_create_order_items_table', 5),
(22, '2024_09_05_075519_create_carousel_images_table', 6),
(23, '2024_09_05_094014_create_inquiries_table', 7),
(24, '2024_09_05_095429_create_newsletter_subscribers_list_table', 8),
(25, '2024_09_06_043556_create_api_table', 9),
(26, '2024_09_09_050631_create_set_shipping_table', 10),
(27, '2024_09_11_092834_create_delivery_information_table', 11),
(28, '2024_09_12_081841_create_provinces_table', 12),
(29, '2024_09_13_044221_create_customer_address_book_table', 13),
(30, '2024_09_16_054240_create_product_images_table', 14),
(31, '2024_09_19_160845_create_order_cancel_table', 15),
(32, '2024_09_23_103530_create_order_cancel_reasons_table', 16),
(33, '2024_09_26_170220_create_address_zone_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscribers_list`
--

CREATE TABLE `newsletter_subscribers_list` (
  `id` bigint(20) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('24b2a86c38778a90a5e4e31ac92619cc0ffacd6a03f9a9d96d0b93fa7d4715c45c4c3a52cc5051a4', 1, 2, 'API Token', '[]', 0, '2024-10-23 16:13:13', '2024-10-23 16:13:13', '2025-10-23 16:13:13'),
('3927f71ffc1f551570935f37bfe24193c9c2fdfb49b1a2ad8918acc58270487d503e5b758084d670', 1, 2, 'API Token', '[]', 0, '2024-10-23 17:23:39', '2024-10-23 17:23:39', '2025-10-23 17:23:39'),
('4e7172bf4628461f2c2e7593b613ffe79642b08b987a82a5e0fbb9a1d53706b92bcfe8d824ac6612', 1, 2, 'API Token', '[]', 0, '2024-10-23 17:18:36', '2024-10-23 17:18:36', '2025-10-23 17:18:36'),
('544eb196a8fd1b5ec290880cd50600bab924667fad7ef193d85a783d512e03ca56e2bc9aef91a620', 1, 2, 'API Token', '[]', 0, '2024-10-23 17:13:37', '2024-10-23 17:13:37', '2025-10-23 17:13:37'),
('8cd56d97ce8ca95024139a6db527593ce7fc79b302eaac26d56adb224d5404d89b56aa92d7eeb6bd', 1, 1, 'API Token', '[]', 0, '2024-10-22 07:40:09', '2024-10-22 07:40:09', '2025-10-22 13:25:09'),
('9c84c54894b48285ac8e5f112209252cce4c1628c9c704fde47c54e3fb63e8c9a7a7b1b78680af27', 1, 1, 'API Token', '[]', 0, '2024-10-22 07:12:39', '2024-10-22 07:12:39', '2025-10-22 12:57:39'),
('b2690732588c7082d6ea9240fb3f05cb402f6716090b8142a8690d03b27809155656f8a827e886de', 1, 2, 'API Token', '[]', 0, '2024-10-23 15:57:08', '2024-10-23 15:57:08', '2025-10-23 15:57:08');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'globaltechecommerce', 'ywknJIEiqYbV4g85day8j6jAUdgfJvq0LzZmsGHd', NULL, 'http://localhost', 1, 0, 0, '2024-10-22 07:12:01', '2024-10-22 07:12:01'),
(2, NULL, 'globaltechecommerce', 'MuhohJz3Kct0t7SG1mCLKJChQv0PQGfjKkzoE182', NULL, 'http://localhost', 1, 0, 0, '2024-10-23 09:45:48', '2024-10-23 09:45:48');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-10-22 07:12:01', '2024-10-22 07:12:01'),
(2, 2, '2024-10-23 09:45:48', '2024-10-23 09:45:48');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `api_order_id` varchar(255) DEFAULT NULL,
  `customer_id` bigint(20) NOT NULL,
  `shipping_delivery_information_id` bigint(20) NOT NULL,
  `billing_delivery_information_id` bigint(20) NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  `subtotal` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(10,2) DEFAULT 0.00,
  `total_amount` decimal(10,2) DEFAULT 0.00,
  `order_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `payment_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `api_order_id`, `customer_id`, `shipping_delivery_information_id`, `billing_delivery_information_id`, `payment_method`, `shipping_method`, `subtotal`, `tax`, `shipping_cost`, `discount`, `total_amount`, `order_status`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, '#ORD-20240929-0001', NULL, 25, 32, 31, 'C', NULL, 1109.00, 0.00, 0.00, 0.00, 1109.00, 'Cancelled', 'Pending', '2024-09-29 13:04:28', '2024-09-29 13:05:42'),
(2, '#ORD-20240929-0002', NULL, 25, 34, 33, 'C', NULL, 1109.00, 0.00, 0.00, 0.00, 1109.00, 'Processing', 'Pending', '2024-09-29 13:04:31', '2024-09-29 13:04:31'),
(3, '#ORD-20240929-0003', NULL, 25, 36, 35, 'C', NULL, 10530.00, 0.00, 70.00, 0.00, 10600.00, 'Processing', 'Pending', '2024-09-29 13:06:53', '2024-09-29 13:06:53'),
(4, '#ORD-20240929-0004', NULL, 25, 38, 37, 'C', NULL, 752.00, 0.00, 140.00, 0.00, 892.00, 'Processing', 'Pending', '2024-09-29 13:08:37', '2024-09-29 13:08:37'),
(35, '#ORD-20241002-0002', NULL, 17, 100, 99, 'C', NULL, 470.00, 0.00, 70.00, 0.00, 540.00, 'Cancelled', 'Pending', '2024-10-02 10:27:43', '2024-10-02 10:29:26'),
(36, '#ORD-20241002-0003', NULL, 17, 102, 101, 'C', NULL, 270.00, 0.00, 70.00, 0.00, 340.00, 'Cancelled', 'Pending', '2024-10-02 10:35:01', '2024-10-02 10:37:07'),
(45, '#ORD-20241002-0012', '103', 30, 120, 119, 'C', NULL, 270.00, 0.00, 70.00, 0.00, 340.00, 'Processing', 'Pending', '2024-10-02 17:30:37', '2024-10-02 17:30:44'),
(46, '#ORD-20241002-0013', '104', 30, 122, 121, 'C', NULL, 702.00, 0.00, 70.00, 0.00, 772.00, 'Processing', 'Pending', '2024-10-02 17:31:34', '2024-10-02 17:31:41'),
(47, '#ORD-20241003-0001', '133', 13, 124, 123, 'C', NULL, 20.00, 0.00, 70.00, 0.00, 90.00, 'Processing', 'Pending', '2024-10-03 01:00:41', '2024-10-03 01:00:48'),
(48, '#ORD202410030002', '134', 13, 126, 125, 'C', NULL, 300.00, 0.00, 70.00, 0.00, 370.00, 'Processing', 'Pending', '2024-10-03 10:46:39', '2024-10-03 10:46:47'),
(49, '#ORD202410030003', '147', 24, 128, 127, 'C', NULL, 702.00, 0.00, 70.00, 0.00, 772.00, 'Cancelled', 'Pending', '2024-10-03 13:43:30', '2024-10-03 13:45:18'),
(50, '#ORD202410030004', '149', 24, 130, 129, 'C', NULL, 20.00, 0.00, 70.00, 0.00, 90.00, 'Cancelled', 'Pending', '2024-10-03 17:55:43', '2024-10-03 17:56:23'),
(51, '#ORD202410080001', '153', 24, 132, 131, 'C', NULL, 1404.00, 0.00, 140.00, 0.00, 1544.00, 'Cancelled', 'Cancelled', '2024-10-08 17:36:06', '2024-10-08 17:47:21'),
(52, '#ORD202410150001', '154', 17, 134, 133, 'C', NULL, 150.00, 0.00, 70.00, 0.00, 220.00, 'Processing', 'Pending', '2024-10-15 11:27:37', '2024-10-15 11:27:44'),
(57, '#ORD202410180001', '160', 17, 144, 143, 'C', NULL, 440.00, 0.00, 140.00, 0.00, 580.00, 'Processing', 'Pending', '2024-10-18 17:31:53', '2024-10-18 17:52:07'),
(58, '#ORD202410200001', '161', 17, 146, 145, 'C', NULL, 270.00, 0.00, 70.00, 0.00, 340.00, 'Processing', 'Pending', '2024-10-20 10:29:20', '2024-10-20 10:29:24'),
(59, '#ORD202410200002', '162', 17, 148, 147, 'C', NULL, 1221.00, 0.00, 140.00, 0.00, 1361.00, 'Processing', 'Pending', '2024-10-20 10:35:42', '2024-10-20 10:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `order_cancel`
--

CREATE TABLE `order_cancel` (
  `id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `cancel_reason` bigint(20) NOT NULL,
  `reason_description` varchar(255) NOT NULL,
  `policy_checked` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_cancel`
--

INSERT INTO `order_cancel` (`id`, `order_item_id`, `cancel_reason`, `reason_description`, `policy_checked`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'replace', 'Y', '2024-09-29 13:05:42', '2024-09-29 13:05:42'),
(6, 37, 6, 'Not needed.', 'Y', '2024-10-02 00:44:11', '2024-10-02 00:44:11'),
(8, 38, 10, 'I have waiting issue.', 'Y', '2024-10-02 09:04:56', '2024-10-02 09:04:56'),
(9, 39, 7, 'Some thing else', 'Y', '2024-10-02 10:29:20', '2024-10-02 10:29:20'),
(10, 40, 6, 'nothing else', 'Y', '2024-10-02 10:37:01', '2024-10-02 10:37:01'),
(14, 59, 8, 'scdszcds', 'Y', '2024-10-03 13:45:08', '2024-10-03 13:45:08'),
(15, 60, 9, 'Yhshsbsn', 'Y', '2024-10-03 17:56:16', '2024-10-03 17:56:16'),
(16, 61, 9, 'nothing', 'Y', '2024-10-08 17:40:10', '2024-10-08 17:40:10'),
(17, 62, 11, 'qdaxdasdd', 'Y', '2024-10-08 17:47:19', '2024-10-08 17:47:19'),
(18, 65, 6, 'something else', 'Y', '2024-10-18 17:52:00', '2024-10-18 17:52:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_cancel_reasons`
--

CREATE TABLE `order_cancel_reasons` (
  `id` bigint(20) NOT NULL,
  `reason_name` varchar(512) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_cancel_reasons`
--

INSERT INTO `order_cancel_reasons` (`id`, `reason_name`, `created_at`, `updated_at`) VALUES
(3, 'Want to place a new order with more items', '2024-09-23 05:32:23', '2024-09-23 05:32:23'),
(4, 'Duplicate Order', '2024-09-23 05:32:36', '2024-09-23 05:32:36'),
(5, 'Change in Delivery Address', '2024-09-23 05:32:54', '2024-09-23 05:32:54'),
(6, 'Not needed item anymore', '2024-09-23 05:33:10', '2024-09-23 05:33:10'),
(7, 'Shipping cost is too high', '2024-09-23 05:33:38', '2024-09-23 05:33:38'),
(8, 'Change Payment method', '2024-09-23 05:33:54', '2024-09-23 05:33:54'),
(9, 'Found cheaper in other place', '2024-09-23 05:34:13', '2024-09-23 05:34:13'),
(10, 'Delivery time is too long', '2024-09-23 05:34:36', '2024-09-23 05:34:36'),
(11, 'Decided for alternative product', '2024-09-23 05:34:56', '2024-09-23 05:34:56');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `quantity` bigint(20) NOT NULL DEFAULT 0,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `subtotal` decimal(10,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_code`, `quantity`, `price`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, '#ORD-20240929-0001', 'FMD177357', 1, 1109.00, 1109.00, '2024-09-29 13:04:28', '2024-09-29 13:04:28'),
(2, '#ORD-20240929-0002', 'FMD177357', 1, 1109.00, 1109.00, '2024-09-29 13:04:31', '2024-09-29 13:04:31'),
(3, '#ORD-20240929-0003', 'FMD302518', 15, 702.00, 10530.00, '2024-09-29 13:06:53', '2024-09-29 13:06:53'),
(4, '#ORD-20240929-0004', 'FMD216621', 5, 10.00, 50.00, '2024-09-29 13:08:37', '2024-09-29 13:08:37'),
(5, '#ORD-20240929-0004', 'FMD302518', 1, 702.00, 702.00, '2024-09-29 13:08:37', '2024-09-29 13:08:37'),
(37, '#ORD-20241002-0001', 'FMD302518', 4, 702.00, 2808.00, '2024-10-02 00:40:44', '2024-10-02 00:40:44'),
(38, '#ORD-20241002-0001', 'FMD199195', 3, 150.00, 450.00, '2024-10-02 00:40:44', '2024-10-02 00:40:44'),
(39, '#ORD-20241002-0002', 'FMD309499', 1, 470.00, 470.00, '2024-10-02 10:27:43', '2024-10-02 10:27:43'),
(40, '#ORD-20241002-0003', 'FMD219796', 1, 270.00, 270.00, '2024-10-02 10:35:01', '2024-10-02 10:35:01'),
(55, '#ORD-20241002-0012', 'FMD219796', 1, 270.00, 270.00, '2024-10-02 17:30:37', '2024-10-02 17:30:37'),
(56, '#ORD-20241002-0013', 'FMD302518', 1, 702.00, 702.00, '2024-10-02 17:31:34', '2024-10-02 17:31:34'),
(57, '#ORD-20241003-0001', 'FMD216621', 2, 10.00, 20.00, '2024-10-03 01:00:41', '2024-10-03 01:00:41'),
(58, '#ORD202410030002', 'FMD199195', 2, 150.00, 300.00, '2024-10-03 10:46:39', '2024-10-03 10:46:39'),
(59, '#ORD202410030003', 'FMD302518', 1, 702.00, 702.00, '2024-10-03 13:43:30', '2024-10-03 13:43:30'),
(60, '#ORD202410030004', 'FMD216621', 2, 10.00, 20.00, '2024-10-03 17:55:43', '2024-10-03 17:55:43'),
(61, '#ORD202410080001', 'FMD188101', 2, 590.00, 1180.00, '2024-10-08 17:36:06', '2024-10-08 17:36:06'),
(62, '#ORD202410080001', 'FMD302518', 2, 702.00, 1404.00, '2024-10-08 17:36:06', '2024-10-08 17:36:06'),
(63, '#ORD202410150001', 'FMD199195', 1, 150.00, 150.00, '2024-10-15 11:27:37', '2024-10-15 11:27:37'),
(65, '#ORD202410180001', 'FMD302518', 2, 702.00, 1404.00, '2024-10-18 17:31:53', '2024-10-18 17:31:53'),
(66, '#ORD202410180001', 'FMD319022', 1, 440.00, 440.00, '2024-10-18 17:31:53', '2024-10-18 17:31:53'),
(67, '#ORD202410200001', 'FMD219796', 1, 270.00, 270.00, '2024-10-20 10:29:20', '2024-10-20 10:29:20'),
(68, '#ORD202410200002', 'FMD238064', 2, 197.00, 394.00, '2024-10-20 10:35:42', '2024-10-20 10:35:42'),
(69, '#ORD202410200002', 'FMD319023', 1, 827.00, 827.00, '2024-10-20 10:35:42', '2024-10-20 10:35:42');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` varchar(512) DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `subcategory_id` varchar(255) DEFAULT NULL,
  `subcategory_name` varchar(255) DEFAULT NULL,
  `delivery_target_days` varchar(255) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `actual_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `sell_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `mr_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `unit_info` varchar(255) DEFAULT NULL,
  `available_quantity` decimal(10,2) DEFAULT NULL,
  `stock_quantity` decimal(8,2) DEFAULT NULL,
  `brand_id` varchar(255) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `product_location` varchar(255) DEFAULT NULL,
  `primary_image` blob DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_description`, `category_id`, `category_name`, `subcategory_id`, `subcategory_name`, `delivery_target_days`, `discount`, `actual_price`, `sell_price`, `mr_price`, `unit_info`, `available_quantity`, `stock_quantity`, `brand_id`, `brand_name`, `product_location`, `primary_image`, `created_at`, `updated_at`) VALUES
(1, 'FMD216621', 'WOW Pop Corn Cheese', 'Basic description of Snacks & Dry Fruits 50', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 10.00, 20.00, 'PCS', -1.00, -1.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:38', '2024-10-25 05:45:14'),
(2, 'FMD302518', 'N&H Chicken Wings (890 gm)', 'Basic description of Meat, Fish & Seafood 217', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 702.00, 712.00, 'PCS', -10.00, -10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:02:39', '2024-10-25 05:45:12'),
(3, 'FMD199195', 'Butter Cookies', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 3', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', -20.00, -20.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:02:39', '2024-10-25 05:45:15'),
(4, 'FMD177357', 'Pampers Pants 42s (Large)', 'Basic description of Baby Care 1', '1', 'Baby Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1109.00, 1119.00, 'PCS', 0.00, 0.00, ' Pa00001', 'Pamper', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:02:39', '2024-10-25 05:45:09'),
(5, 'FMD309499', 'Orient Garden (1 kg) Mayonnaise', 'Basic description of Breakfast 6', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 470.00, 480.00, 'PCS', 5.00, 5.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:02:39', '2024-10-25 05:45:15'),
(6, 'FMD319023', 'N&H Chicken Wings (930 gm)', 'Basic description of Meat, Fish & Seafood 122', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 827.00, 837.00, 'PCS', 9.00, 9.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:02:39', '2024-10-25 05:45:10'),
(7, 'FMD219796', 'WOW Popcorn Family Pack Butterscotch Flavor', 'Basic description of Snacks & Dry Fruits 51', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 270.00, 280.00, 'PCS', 5.00, 5.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:39', '2024-10-25 05:45:14'),
(8, 'FMD238064', 'Druk Mixed Fruit Jam (500 gm)', 'Basic description of Breakfast 5', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 197.00, 207.00, 'PCS', 8.00, 8.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:02:39', '2024-10-25 05:45:15'),
(9, 'FMD319022', 'N&H Chicken Drumsticks (500 gm)', 'Basic description of Meat, Fish & Seafood 121', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 440.00, 450.00, 'PCS', 9.00, 9.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:02:39', '2024-10-25 05:45:10'),
(10, 'FMD189340', 'Worcestershire Sauce (200 ml)- American Garden', 'Basic description of Breakfast 8', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 245.00, 255.00, 'PCS', 10.00, 10.00, ' Am00001', 'American Garden', '[Rack 3]', NULL, '2024-09-24 15:02:40', '2024-10-25 05:45:15'),
(11, 'FMD219798', 'WOW Popcorn Family Pack Cheese & Caramel Flavor', 'Basic description of Snacks & Dry Fruits 53', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 270.00, 280.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:40', '2024-10-25 05:45:14'),
(12, 'FMD376665', 'N&H Sweet Corn', 'Basic description of Ready to Cook 8', '19', 'Ready to Cook', '28', 'Veg Items', '0', 0.00, 0.00, 260.00, 270.00, 'PCS', 8.00, 8.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:40', '2024-10-25 05:45:13'),
(13, 'FMD174764', 'Intensive Cream 150 ml', 'Basic description of Personal Care 4', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 289.00, 299.00, 'PCS', 5.00, 5.00, ' Do00001', 'Dove', '[Rack 8]', NULL, '2024-09-24 15:02:40', '2024-10-25 05:45:13'),
(14, 'FMD334071', 'N&H Chicken Leg (540 gm)', 'Basic description of Meat, Fish & Seafood 156', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 476.00, 486.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:02:40', '2024-10-25 05:45:10'),
(15, 'FMD219797', 'WOW Popcorn Family Pack Caramel Flavor', 'Basic description of Snacks & Dry Fruits 52', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 270.00, 280.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:40', '2024-10-25 05:45:14'),
(16, 'FMD325070', 'B Fizz 500ml', 'Basic description of Beverages 77', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 9.00, 9.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:02:40', '2024-10-25 05:45:14'),
(17, 'FMD192230', 'Chabaa Mixed Berry Fruit Jam (240 gm)', 'Basic description of Breakfast 11', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:02:40', '2024-10-25 05:45:15'),
(18, 'FMD189339', 'Hot Sauce (355 ml)- American Garden', 'Basic description of Breakfast 7', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 270.00, 280.00, 'PCS', 10.00, 10.00, ' Am00001', 'American Garden', '[Rack 3]', NULL, '2024-09-24 15:02:40', '2024-10-25 05:45:15'),
(19, 'FMD174765', 'Intensive Repair Conditioner 330 ml', 'Basic description of Personal Care 5', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 365.00, 375.00, 'PCS', 10.00, 10.00, ' Do00001', 'Dove', '[Rack 8]', NULL, '2024-09-24 15:02:40', '2024-10-25 05:45:13'),
(20, 'FMD219799', 'WOW Popcorn Family Pack Cheese Flavor', 'Basic description of Snacks & Dry Fruits 54', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:40', '2024-10-25 05:45:14'),
(21, 'FMD174420', 'Tokla Masala Tea (1 kg)', 'Basic description of Beverages 61', '4', 'Beverages', '5', 'Tea', '0', 0.00, 0.00, 617.00, 627.00, 'PCS', 10.00, 10.00, ' To00001', 'Tokla', '[Rack 3]', NULL, '2024-09-24 15:02:41', '2024-10-25 05:45:13'),
(22, 'FMD192229', 'Chabaa Pineapple Fruit Jam (240 gm)', 'Basic description of Breakfast 10', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:02:41', '2024-10-25 05:45:15'),
(23, 'FMD217020', 'Cornitos Nacho Cheese & Herbs (140 gm)', 'Basic description of Snacks & Dry Fruits 56', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 235.00, 245.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:41', '2024-10-25 05:45:14'),
(24, 'FMD217021', 'Cornitos Nacho Wasabi (140 gm)', 'Basic description of Snacks & Dry Fruits 57', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 235.00, 245.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:41', '2024-10-25 05:45:14'),
(25, 'FMD202095', 'Amul Butter  (100 gm)', 'Basic description of Breakfast 13', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:02:41', '2024-10-25 05:45:15'),
(26, 'FMD192231', 'Chabaa Strawberry Jam (240 gm)', 'Basic description of Breakfast 12', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:02:41', '2024-10-25 05:45:15'),
(27, 'FMD215883', 'WOW Pop Corn Family Pack (Cheese Caramel Flavor)', 'Basic description of Snacks & Dry Fruits 60', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 270.00, 280.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:41', '2024-10-25 05:45:14'),
(28, 'FMD215884', 'WOW Pop Corn Family Pack (Caramel Flavor)', 'Basic description of Snacks & Dry Fruits 61', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:41', '2024-10-25 05:45:14'),
(29, 'FMD189233', 'Amul Butter (200 gm)', 'Basic description of Breakfast 9', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 265.00, 275.00, 'PCS', 10.00, 10.00, ' Am00002', 'Amul', '[Rack 3]', NULL, '2024-09-24 15:02:41', '2024-10-25 05:45:15'),
(30, 'FMD215885', 'WOW Pop Corn Family Pack (Butter Scotch Flavor)', 'Basic description of Snacks & Dry Fruits 62', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:41', '2024-10-25 05:45:14'),
(31, 'FMD199589', 'N&H Fresh Corn (1 kg)', 'Basic description of Ready to Cook 10', '19', 'Ready to Cook', '28', 'Veg Items', '0', 0.00, 0.00, 362.90, 372.90, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:42', '2024-10-25 05:45:13'),
(32, 'FMD358292', 'Botle gaurd', 'Basic description of Ready to Cook 9', '19', 'Ready to Cook', '28', 'Veg Items', '0', 0.00, 0.00, 215.00, 225.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:42', '2024-10-25 05:45:13'),
(33, 'FMD174766', 'Nourishing Oil Conditioner 330 ml', 'Basic description of Personal Care 6', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 365.00, 375.00, 'PCS', 10.00, 10.00, ' Do00001', 'Dove', '[Rack 8]', NULL, '2024-09-24 15:02:42', '2024-10-25 05:45:13'),
(34, 'FMD219800', 'WOW Popcorn Family Pack Piro Piro Flavor', 'Basic description of Snacks & Dry Fruits 55', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:42', '2024-10-25 05:45:14'),
(35, 'FMD174288', 'Tomme (Yak) 200 gm', 'Egg and dairy provide protein, calcium, and essential nutrients for health 39', '7', 'Egg & Dairy', '11', 'Cheese', '0', 0.00, 0.00, 550.00, 560.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:02:42', '2024-10-25 05:45:15'),
(36, 'FMD217016', 'Gaia Green Tea + Jasmine 25\'s', 'Basic description of Beverages 53', '4', 'Beverages', '5', 'Tea', '0', 0.00, 0.00, 310.00, 320.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:02:42', '2024-10-25 05:45:13'),
(37, 'FMD174287', 'Tomme (Cow) 200 gm', 'Egg and dairy provide protein, calcium, and essential nutrients for health 38', '7', 'Egg & Dairy', '11', 'Cheese', '0', 0.00, 0.00, 430.00, 440.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:02:43', '2024-10-25 05:45:15'),
(38, 'FMD174290', 'Belkot (Cow) 200 gm', 'Egg and dairy provide protein, calcium, and essential nutrients for health 41', '7', 'Egg & Dairy', '11', 'Cheese', '0', 0.00, 0.00, 470.00, 480.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:02:43', '2024-10-25 05:45:15'),
(39, 'FMD215652', 'Pintola Choco Creamy Peanut Butter 1Kg', 'Basic description of Breakfast 16', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 650.00, 660.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:02:43', '2024-10-25 05:45:15'),
(40, 'FMD174289', 'Gaurishankar (Yak) 200 gm', 'Egg and dairy provide protein, calcium, and essential nutrients for health 40', '7', 'Egg & Dairy', '11', 'Cheese', '0', 0.00, 0.00, 430.00, 440.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:02:43', '2024-10-25 05:45:15'),
(41, 'FMD174291', 'Camembert (Cow) 300 gm', 'Egg and dairy provide protein, calcium, and essential nutrients for health 42', '7', 'Egg & Dairy', '11', 'Cheese', '0', 0.00, 0.00, 590.00, 600.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:02:43', '2024-10-25 05:45:15'),
(42, 'FMD215637', 'Pintola All Natural Honey Creamy Peanut Butter 1Kg', 'Basic description of Breakfast 14', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 650.00, 660.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:02:43', '2024-10-25 05:45:15'),
(43, 'FMD215638', 'Pintola All Natural Honey Crunchy Peanut Butter 1Kg', 'Basic description of Breakfast 15', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 650.00, 660.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:02:44', '2024-10-25 05:45:15'),
(44, 'FMD177344', 'Olay Natural N.W Night Cream', 'Basic description of Personal Care 9', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 420.00, 430.00, 'PCS', 10.00, 10.00, ' H 00001', 'H &amp; S', '[Rack 8]', NULL, '2024-09-24 15:02:44', '2024-10-25 05:45:13'),
(45, 'FMD215881', 'WOW Pop Corn Family Pack (Cheese Flavor)', 'Basic description of Snacks & Dry Fruits 58', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:44', '2024-10-25 05:45:14'),
(46, 'FMD215882', 'WOW Pop Corn Family Pack (Piro Piro Flavor)', 'Basic description of Snacks & Dry Fruits 59', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:44', '2024-10-25 05:45:14'),
(47, 'FMD177343', 'H & S Shampoo Silky Smooth (650 ml)', 'Basic description of Personal Care 8', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 710.00, 720.00, 'PCS', 10.00, 10.00, ' H 00001', 'H &amp; S', '[Rack 8]', NULL, '2024-09-24 15:02:44', '2024-10-25 05:45:13'),
(48, 'FMD174216', 'Arla Burger Slices (200 gm)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 44', '7', 'Egg & Dairy', '11', 'Cheese', '0', 0.00, 0.00, 315.00, 325.00, 'PCS', 10.00, 10.00, ' Ar00001', 'Arla', '[Rack 4]', NULL, '2024-09-24 15:02:44', '2024-10-25 05:45:15'),
(49, 'FMD174217', 'Arla Cheddar Slices (150 gm)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 45', '7', 'Egg & Dairy', '11', 'Cheese', '0', 0.00, 0.00, 640.00, 650.00, 'PCS', 10.00, 10.00, ' Ar00001', 'Arla', '[Rack 4]', NULL, '2024-09-24 15:02:44', '2024-10-25 05:45:15'),
(50, 'FMD174218', 'Arla Cheese Spread Puck (140 gm)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 46', '7', 'Egg & Dairy', '11', 'Cheese', '0', 0.00, 0.00, 354.00, 364.00, 'PCS', 10.00, 10.00, ' Ar00001', 'Arla', '[Rack 4]', NULL, '2024-09-24 15:02:44', '2024-10-25 05:45:15'),
(51, 'FMD199196', 'Carrot Cake', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 4', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 250.00, 260.00, 'PCS', -21.00, -21.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:02:44', '2024-10-25 05:45:15'),
(52, 'FMD254316', 'N&H Medium Prawn 500Gm', 'Basic description of Meat, Fish & Seafood 282', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 990.00, 1000.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:02:45', '2024-10-25 05:45:12'),
(53, 'FMD174220', 'Arla Sandwich Slices (200 gm)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 48', '7', 'Egg & Dairy', '11', 'Cheese', '0', 0.00, 0.00, 315.00, 325.00, 'PCS', 10.00, 10.00, ' Ar00001', 'Arla', '[Rack 4]', NULL, '2024-09-24 15:02:45', '2024-10-25 05:45:15'),
(54, 'FMD217291', 'Cornitos Tortila Wrap (Corn & Wheat Flour)', 'Basic description of Ready to Cook 12', '19', 'Ready to Cook', '28', 'Veg Items', '0', 0.00, 0.00, 490.00, 500.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:45', '2024-10-25 05:45:13'),
(55, 'FMD177364', 'Pampers Pants XXL 28s', 'Basic description of Baby Care 2', '1', 'Baby Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1109.00, 1119.00, 'PCS', 10.00, 10.00, ' Pa00001', 'Pamper', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:02:45', '2024-10-25 05:45:15'),
(56, 'FMD174292', 'Feta Cheese - 200 gm', 'Egg and dairy provide protein, calcium, and essential nutrients for health 43', '7', 'Egg & Dairy', '11', 'Cheese', '0', 0.00, 0.00, 330.00, 340.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:02:45', '2024-10-25 05:45:15'),
(57, 'FMD198791', 'Mccain French Fries 2.5Kg', 'Basic description of Ready to Cook 11', '19', 'Ready to Cook', '28', 'Veg Items', '0', 0.00, 0.00, 1040.00, 1050.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:45', '2024-10-25 05:45:13'),
(58, 'FMD177342', 'H & S Shampoo Cool Menthol (650 ml)', 'Basic description of Personal Care 7', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 710.00, 720.00, 'PCS', 10.00, 10.00, ' H 00001', 'H &amp; S', '[Rack 8]', NULL, '2024-09-24 15:02:45', '2024-10-25 05:45:13'),
(59, 'FMD215654', 'Pintola Classic Creamy Peanut Butter 1Kg', 'Basic description of Breakfast 18', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 565.00, 575.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:02:45', '2024-10-25 05:45:15'),
(60, 'FMD174219', 'Arla Cheese Triangles (140 gm)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 47', '7', 'Egg & Dairy', '11', 'Cheese', '0', 0.00, 0.00, 365.00, 375.00, 'PCS', 10.00, 10.00, ' Ar00001', 'Arla', '[Rack 4]', NULL, '2024-09-24 15:02:45', '2024-10-25 05:45:15'),
(61, 'FMD215857', 'WOW Aalu Chips', 'Basic description of Snacks & Dry Fruits 63', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 30.00, 40.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:46', '2024-10-25 05:45:14'),
(62, 'FMD342456', 'Apple Juice Marpha ( Bottle)', 'Basic description of Beverages 78', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:02:46', '2024-10-25 05:45:14'),
(63, 'FMD215655', 'Pintola Classic Crunchy Peanut Butter 1Kg', 'Basic description of Breakfast 19', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 565.00, 575.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:02:46', '2024-10-25 05:45:15'),
(64, 'FMD214637', 'HS Sweet Corn (1 kg)', 'Basic description of Ready to Cook 13', '19', 'Ready to Cook', '28', 'Veg Items', '0', 0.00, 0.00, 365.00, 375.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:46', '2024-10-25 05:45:13'),
(65, 'FMD215653', 'Pintola Choco Crunchy Peanut Butter 1kg', 'Basic description of Breakfast 17', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 650.00, 660.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:02:46', '2024-10-25 05:45:15'),
(66, 'FMD192219', 'Feta Cheese (200 gm)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 52', '7', 'Egg & Dairy', '11', 'Cheese', '0', 0.00, 0.00, 530.00, 540.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:02:46', '2024-10-25 05:45:15'),
(67, 'FMD192074', 'Yak Cheddar (200 gm)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 53', '7', 'Egg & Dairy', '11', 'Cheese', '0', 0.00, 0.00, 790.00, 800.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:02:47', '2024-10-25 05:45:15'),
(68, 'FMD324327', 'N&H Chicken Legs (500 gm)', 'Basic description of Meat, Fish & Seafood 126', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 440.00, 450.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:02:47', '2024-10-25 05:45:10'),
(69, 'FMD189234', 'Brie Cheese (125 gm)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 55', '7', 'Egg & Dairy', '11', 'Cheese', '0', 0.00, 0.00, 540.00, 550.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:02:47', '2024-10-25 05:45:15'),
(70, 'FMD192076', 'Old Belkot (Cheddar)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 54', '7', 'Egg & Dairy', '11', 'Cheese', '0', 0.00, 0.00, 590.00, 600.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:02:47', '2024-10-25 05:45:15'),
(71, 'FMD177345', 'Olay Natural White Day Cream', 'Basic description of Personal Care 10', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 420.00, 430.00, 'PCS', 10.00, 10.00, ' Ol00001', 'Olay', '[Rack 8]', NULL, '2024-09-24 15:02:48', '2024-10-25 05:45:13'),
(72, 'FMD174244', 'Syrup Chocolate (680 gm)- American Garden', 'Basic description of Breakfast 21', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 720.00, 730.00, 'PCS', 10.00, 10.00, ' Am00001', 'American Garden', '[Rack 3]', NULL, '2024-09-24 15:02:48', '2024-10-25 05:45:15'),
(73, 'FMD192569', 'Pringles BBQ (107 gm)', 'Basic description of Snacks & Dry Fruits 67', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 265.00, 275.00, 'PCS', 10.00, 10.00, ' Pr00002', 'Pringles', '[Rack 8]', NULL, '2024-09-24 15:02:48', '2024-10-25 05:45:14'),
(74, 'FMD192293', 'WOW Cheese Rings', 'Basic description of Snacks & Dry Fruits 68', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 10.00, 20.00, 'PCS', 10.00, 10.00, ' WO00001', 'WOW', '[Rack 8]', NULL, '2024-09-24 15:02:48', '2024-10-25 05:45:14'),
(75, 'FMD218621', 'White Wouee Butter (100 gm)', 'Basic description of Breakfast 20', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 130.00, 140.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:02:48', '2024-10-25 05:45:15'),
(76, 'FMD189341', 'Amul Cheese Cubes (200 gm)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 56', '7', 'Egg & Dairy', '11', 'Cheese', '0', 0.00, 0.00, 220.00, 230.00, 'PCS', 10.00, 10.00, ' Am00002', 'Amul', '[Rack 4]', NULL, '2024-09-24 15:02:48', '2024-10-25 05:45:15'),
(77, 'FMD215858', 'WOW Tomato & Peri Peri Twist', 'Basic description of Snacks & Dry Fruits 64', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 10.00, 20.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:48', '2024-10-25 05:45:14'),
(78, 'FMD176507', 'Pintola Wholegrain Rice Cakes', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 29', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', -7.00, -7.00, ' Pi00001', 'Pintola', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:02:49', '2024-10-25 05:45:15'),
(79, 'FMD291049', 'N&H Trout Fish (710 gm)', 'Basic description of Meat, Fish & Seafood 286', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 1090.00, 1100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:02:49', '2024-10-25 05:45:12'),
(80, 'FMD212059', 'Pringles Original  (107 gm)', 'Basic description of Snacks & Dry Fruits 65', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 215.00, 225.00, 'PCS', 10.00, 10.00, ' Pr00002', 'Pringles', '[Rack 8]', NULL, '2024-09-24 15:02:49', '2024-10-25 05:45:14'),
(81, 'FMD214840', 'Sweet Corn HS', 'Basic description of Ready to Cook 14', '19', 'Ready to Cook', '28', 'Veg Items', '0', 0.00, 0.00, 260.00, 270.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:49', '2024-10-25 05:45:13'),
(82, 'FMD293169', 'VCS Chicken Leg Whole (815 gm)', 'Basic description of Meat, Fish & Seafood 222', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 560.00, 570.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:02:49', '2024-10-25 05:45:12'),
(83, 'FMD215859', 'Vitali Le Benfette Mortadella Slice 100G', 'Egg and dairy provide protein, calcium, and essential nutrients for health 57', '7', 'Egg & Dairy', '11', 'Cheese', '0', 0.00, 0.00, 500.00, 510.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:02:49', '2024-10-25 05:45:15'),
(84, 'FMD174008', 'Apple ( Medium Fuzi)- (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 2', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 315.00, 325.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:02:49', '2024-10-25 05:45:15'),
(85, 'FMD369519', 'Cheese', 'Egg and dairy provide protein, calcium, and essential nutrients for health 58', '7', 'Egg & Dairy', '11', 'Cheese', '0', 0.00, 0.00, 265.00, 275.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:02:50', '2024-10-25 05:45:15'),
(86, 'FMD233182', 'Whole Chicken -1660 Gm', 'Egg and dairy provide protein, calcium, and essential nutrients for health 59', '7', 'Egg & Dairy', '11', 'Cheese', '0', 0.00, 0.00, 1096.00, 1106.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:02:50', '2024-10-25 05:45:15'),
(87, 'FMD174062', 'Brown Bread Small', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 28', '2', 'Bakery', '1', 'Fresh Bakes', '0', 0.00, 0.00, 75.00, 85.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:02:50', '2024-10-25 05:45:15'),
(88, 'FMD174010', 'Began Fuli Mango - (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 4', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 180.00, 190.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:02:50', '2024-10-25 05:45:15'),
(89, 'FMD174007', 'Apple ( Fuzi A)- (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 1', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 390.00, 400.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:02:50', '2024-10-25 05:45:15'),
(90, 'FMD174009', 'Apple (Green) - (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 3', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 490.00, 500.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:02:50', '2024-10-25 05:45:15'),
(91, 'FMD174276', 'Hersey\'s Syrup (623 gm)', 'Basic description of Breakfast 22', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 450.00, 460.00, 'PCS', 10.00, 10.00, ' He00001', 'Hersheys', '[Rack 3]', NULL, '2024-09-24 15:02:50', '2024-10-25 05:45:15'),
(92, 'FMD270569', 'N&H Basa Fish Fillet', 'Basic description of Meat, Fish & Seafood 284', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 940.00, 950.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:02:51', '2024-10-25 05:45:12'),
(93, 'FMD174011', 'Junar Malta - (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 5', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:02:51', '2024-10-25 05:45:15'),
(94, 'FMD174237', 'Sandwich Spread US Style (237 ml)- American Garden', 'Basic description of Breakfast 24', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 440.00, 450.00, 'PCS', 10.00, 10.00, ' Am00001', 'American Garden', '[Rack 3]', NULL, '2024-09-24 15:02:51', '2024-10-25 05:45:15'),
(95, 'FMD174326', 'Kissan Mixed Fruit Jam (500 gm)', 'Basic description of Breakfast 23', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 230.00, 240.00, 'PCS', 10.00, 10.00, ' Ki00001', 'Kissan', '[Rack 3]', NULL, '2024-09-24 15:02:51', '2024-10-25 05:45:15'),
(96, 'FMD174426', 'Lamjung (Washed) Beans 250 gm', 'Basic description of Beverages 25', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 780.00, 790.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:02:51', '2024-10-25 05:45:10'),
(97, 'FMD291048', 'N&H Trout Fish (780 gm)', 'Basic description of Meat, Fish & Seafood 285', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 1199.00, 1209.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:02:51', '2024-10-25 05:45:12'),
(98, 'FMD191064', 'Snapin Mixed Herbs (20 gm)', 'Basic description of Oil, Spice & Condiments 23', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 185.00, 195.00, 'PCS', 10.00, 10.00, ' Sn00001', 'Snapin', '[Rack 7]', NULL, '2024-09-24 15:02:52', '2024-10-25 05:45:13'),
(99, 'FMD192294', 'WOW Piro Piro Rings', 'Basic description of Snacks & Dry Fruits 69', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 10.00, 20.00, 'PCS', 10.00, 10.00, ' WO00001', 'WOW', '[Rack 8]', NULL, '2024-09-24 15:02:52', '2024-10-25 05:45:14'),
(100, 'FMD192295', 'WOW Pop Corn Caramel', 'Basic description of Snacks & Dry Fruits 70', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 40.00, 50.00, 'PCS', 10.00, 10.00, ' WO00001', 'WOW', '[Rack 8]', NULL, '2024-09-24 15:02:52', '2024-10-25 05:45:14'),
(101, 'FMD192297', 'WOW Pop Corn Masala', 'Basic description of Snacks & Dry Fruits 72', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 10.00, 20.00, 'PCS', 10.00, 10.00, ' WO00001', 'WOW', '[Rack 8]', NULL, '2024-09-24 15:02:52', '2024-10-25 05:45:14'),
(102, 'FMD174012', 'Kerar Mango- (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 6', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:02:52', '2024-10-25 05:45:15'),
(103, 'FMD174013', 'Kiwi ( Nepali )- (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 7', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 615.00, 625.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:02:52', '2024-10-25 05:45:15'),
(104, 'FMD174063', 'Mini Doughnut', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 29', '2', 'Bakery', '1', 'Fresh Bakes', '0', 0.00, 0.00, 5.00, 15.00, 'PCS', 6.00, 6.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:02:53', '2024-10-25 05:45:15'),
(105, 'FMD174014', 'Litchi  - (1kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 8', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 300.00, 310.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:02:53', '2024-10-25 05:45:15'),
(106, 'FMD174027', 'Watermelon ( Around 4.9 kg )', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 15', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 602.00, 612.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:02:53', '2024-10-25 05:45:15'),
(107, 'FMD174015', 'Mango Gulab Khas - (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 9', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 300.00, 310.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:02:53', '2024-10-25 05:45:15'),
(108, 'FMD174020', 'Watermelon ( Around 2 kg )', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 14', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:02:54', '2024-10-25 05:45:15'),
(109, 'FMD188101', 'Avocado (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 17', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 590.00, 600.00, 'PCS', 8.00, 8.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:02:54', '2024-10-25 05:45:15'),
(110, 'FMD174018', 'Pineapple (Per pc)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 12', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:02:54', '2024-10-25 05:45:15'),
(111, 'FMD174231', 'Complan Kesar Badam (500 gm)', 'Basic description of Kids & Baby Foods 4', '11', 'Kids & Baby Foods', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 520.00, 530.00, 'PCS', 10.00, 10.00, ' Co00002', 'Complan', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:02:54', '2024-10-25 05:45:17'),
(112, 'FMD174233', 'Complan Pista Badam (500 gm)', 'Basic description of Kids & Baby Foods 6', '11', 'Kids & Baby Foods', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 520.00, 530.00, 'PCS', 10.00, 10.00, ' Co00002', 'Complan', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:02:54', '2024-10-25 05:45:17'),
(113, 'FMD174366', 'Nestlé Lactogen 1 Infant Formula Powder (Upto 6 Months) (400 gm)', 'Basic description of Kids & Baby Foods 7', '11', 'Kids & Baby Foods', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 722.00, 732.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:02:54', '2024-10-25 05:45:17'),
(114, 'FMD230017', 'N&H Smoked Salmon (Norway) 200gm', 'Basic description of Meat, Fish & Seafood 235', '13', 'Meat, Fish & Seafood', '23', 'Seafood', '0', 0.00, 0.00, 1690.00, 1700.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:02:54', '2024-10-25 05:45:12'),
(115, 'FMD189250', 'Cornitos Nacho crisps Sour cream & Onion (140 gm)', 'Basic description of Snacks & Dry Fruits 75', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 235.00, 245.00, 'PCS', 10.00, 10.00, ' Co00001', 'Cornitos', '[Rack 8]', NULL, '2024-09-24 15:02:54', '2024-10-25 05:45:14'),
(116, 'FMD189350', 'Nacho Jalapano With Salsa Dip Tray Pack (70 gm)-Cornitos', 'Basic description of Snacks & Dry Fruits 76', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 160.00, 170.00, 'PCS', 10.00, 10.00, ' Co00001', 'Cornitos', '[Rack 8]', NULL, '2024-09-24 15:02:54', '2024-10-25 05:45:14'),
(117, 'FMD174054', 'Sunaulo Anda (Egg) (15 pcs)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 19', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 255.00, 265.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:02:55', '2024-10-25 05:45:15'),
(118, 'FMD189018', 'Thulo Kerau', 'Basic description of Rice & Pulses 36', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:55', '2024-10-25 05:45:13'),
(119, 'FMD174229', 'Complan Chocolate Refil (500 gm)', 'Basic description of Kids & Baby Foods 2', '11', 'Kids & Baby Foods', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 430.00, 440.00, 'PCS', 10.00, 10.00, ' Co00002', 'Complan', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:02:55', '2024-10-25 05:45:17'),
(120, 'FMD254322', 'Broiler Cobb 500 Curry Cut (1 kg)', 'Basic description of Meat, Fish & Seafood 201', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 440.00, 450.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:02:55', '2024-10-25 05:45:11'),
(121, 'FMD364167', 'N&H Whole Chicken (1480g)', 'Basic description of Meat, Fish & Seafood 174', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1026.00, 1036.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:02:55', '2024-10-25 05:45:11'),
(122, 'FMD221813', 'Closeup Mouthwash Nature Boost 250 ml', 'Basic description of Personal Care 31', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, ' Co00002', 'Complan', '[Rack 8]', NULL, '2024-09-24 15:02:55', '2024-10-25 05:45:13'),
(123, 'FMD329577', 'N&H Chicken Drumstick (510 gm)', 'Basic description of Meat, Fish & Seafood 146', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 449.00, 459.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:02:55', '2024-10-25 05:45:10'),
(124, 'FMD331024', 'Whisper Ultra Soft Sanitary Pads XL+ 15 Pads', 'Basic description of Personal Care 49', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 295.00, 305.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:56', '2024-10-25 05:45:13'),
(125, 'FMD252278', 'Whisper Bindazz Night (XL 15)', 'Basic description of Personal Care 50', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 326.00, 336.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:56', '2024-10-25 05:45:13'),
(126, 'FMD174399', 'Amul Kool - Kesar (180 ml)', 'Basic description of Beverages 84', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, ' Am00002', 'Amul', '[Rack 3]', NULL, '2024-09-24 15:02:56', '2024-10-25 05:45:14'),
(127, 'FMD174089', 'Ambrosi Parmiagiano Reggiano (200 gm)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 25', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1340.00, 1350.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:02:56', '2024-10-25 05:45:15'),
(128, 'FMD189023', '?????? (Mugu) ( 100 gm)', 'Basic description of Pure Organic Items 2', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:56', '2024-10-25 05:45:13'),
(129, 'FMD199219', 'Swiss Roll', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 27', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:02:56', '2024-10-25 05:45:15'),
(130, 'FMD174446', 'Mexican Corn Tomato Soup', 'Basic description of Soup, Sauce & Seasonings 8', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 94.00, 104.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:02:56', '2024-10-25 05:45:14'),
(131, 'FMD174293', 'Paneer (Cow) 300 gm', 'Egg and dairy provide protein, calcium, and essential nutrients for health 26', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 380.00, 390.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:02:57', '2024-10-25 05:45:15'),
(132, 'FMD189031', '?????? ????? (Jumla) 250 gm', 'Basic description of Pure Organic Items 10', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 160.00, 170.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:57', '2024-10-25 05:45:13'),
(133, 'FMD174355', 'NESTEA Iced Tea Lemon (Sipper Free) - 400 gm', 'Basic description of Beverages 50', '4', 'Beverages', '5', 'Tea', '0', 0.00, 0.00, 254.00, 264.00, 'PCS', 10.00, 10.00, ' Ne00002', 'Nestea', '[Rack 3]', NULL, '2024-09-24 15:02:57', '2024-10-25 05:45:13'),
(134, 'FMD194679', 'Chicken Drumstick (575 gm)', 'Basic description of Meat, Fish & Seafood 113', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 363.00, 373.00, 'PCS', 9.00, 9.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:02:57', '2024-10-25 05:45:10'),
(135, 'FMD283413', 'India Gate Active Health Brown Basmati Rice 1 kg', 'Basic description of Rice & Pulses 54', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 220.00, 230.00, 'PCS', 10.00, 10.00, ' In00001', 'India Gate', '[Rack 8]', NULL, '2024-09-24 15:02:57', '2024-10-25 05:45:13'),
(136, 'FMD249382', 'N&H Chicken Boneless Leg (500 gm)', 'Basic description of Meat, Fish & Seafood 206', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 465.00, 475.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:02:57', '2024-10-25 05:45:11'),
(137, 'FMD188319', 'Black Rice (500 gm)', 'Basic description of Rice & Pulses 39', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:57', '2024-10-25 05:45:13'),
(138, 'FMD174445', 'Italian Mushroom Soup', 'Basic description of Soup, Sauce & Seasonings 7', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 94.00, 104.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:02:57', '2024-10-25 05:45:14'),
(139, 'FMD283471', 'Roza Sweet Chilli Sauce 320gm', 'Basic description of Soup, Sauce & Seasonings 70', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 180.00, 190.00, 'PCS', 10.00, 10.00, ' Te00001', 'Test Brand 1', '[Rack 9]', NULL, '2024-09-24 15:02:58', '2024-10-25 05:45:14'),
(140, 'FMD189032', 'Bire Nun (Salt ) (200 gm)', 'Basic description of Pure Organic Items 11', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:58', '2024-10-25 05:45:13'),
(141, 'FMD191073', 'BMC  Curry Powder (50 gm)', 'Basic description of Oil, Spice & Condiments 11', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 50.00, 60.00, 'PCS', 10.00, 10.00, ' BM00001', 'BMC', '[Rack 7]', NULL, '2024-09-24 15:02:58', '2024-10-25 05:45:12'),
(142, 'FMD284089', 'Current Veg Hot & Spicy Noodles 100g', 'Basic description of Pasta & Noodles 2', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, ' Te00001', 'Test Brand 1', '[Rack 8]', NULL, '2024-09-24 15:02:58', '2024-10-25 05:45:13'),
(143, 'FMD253841', 'American Garden Mushroom Pasta Sauce (397 gms)', 'Basic description of Soup, Sauce & Seasonings 73', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 315.00, 325.00, 'PCS', 10.00, 10.00, ' Am00001', 'American Garden', '[Rack 9]', NULL, '2024-09-24 15:02:58', '2024-10-25 05:45:14'),
(144, 'FMD347958', 'N&H Dry Anchovy 500Gm', 'Basic description of Meat, Fish & Seafood 271', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 1090.00, 1100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:02:58', '2024-10-25 05:45:12'),
(145, 'FMD406969', 'Orange Juice (1 ltr) - Real', 'Basic description of Beverages 45', '4', 'Beverages', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 280.00, 290.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:02:58', '2024-10-25 05:45:12'),
(146, 'FMD247577', '?????? ( Chitwan)', 'Basic description of Rice & Pulses 62', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 250.00, 260.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:58', '2024-10-25 05:45:13'),
(147, 'FMD215866', 'Dairy Milk Silk Roast Almond (55 gm)', 'Basic description of Sweets & Confectionery 20', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 118.00, 128.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:02:58', '2024-10-25 05:45:14'),
(148, 'FMD247575', 'India Gate Basmati Rice Super Rozzana (1 kg)', 'Basic description of Rice & Pulses 60', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 200.00, 210.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:58', '2024-10-25 05:45:13'),
(149, 'FMD215891', 'Nestle KitKat 40% Extra (18 gms)', 'Basic description of Sweets & Confectionery 24', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 10.00, 20.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 9]', NULL, '2024-09-24 15:02:59', '2024-10-25 05:45:14'),
(150, 'FMD213280', 'Salted Roasted Peanuts (650 gm)', 'Basic description of Snacks & Dry Fruits 1', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 285.00, 295.00, 'PCS', 10.00, 10.00, ' Ad00002', 'Adity', '[Rack 8]', NULL, '2024-09-24 15:02:59', '2024-10-25 05:45:13'),
(151, 'FMD247576', 'India Gate Brown Basmati Rice Weight Watchers (1 kg)', 'Basic description of Rice & Pulses 61', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 206.00, 216.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:59', '2024-10-25 05:45:13'),
(152, 'FMD174316', 'Rasna Fruit Plus- Pineapple (400 gm)', 'Basic description of Beverages 93', '4', 'Beverages', '7', 'Juice Powder', '0', 0.00, 0.00, 170.00, 180.00, 'PCS', 10.00, 10.00, ' Ra00001', 'Rasna', '[Rack 3]', NULL, '2024-09-24 15:02:59', '2024-10-25 05:45:14'),
(153, 'FMD336454', 'Pangash Fillet', 'Basic description of Meat, Fish & Seafood 273', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 740.00, 750.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:02:59', '2024-10-25 05:45:12'),
(154, 'FMD314896', 'Frooti Mango Drinks 150ML PET', 'Basic description of Beverages 72', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 20.00, 30.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:02:59', '2024-10-25 05:45:13'),
(155, 'FMD215893', 'Nestle KitKat Share & Snap (55 gms)', 'Basic description of Sweets & Confectionery 26', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 9]', NULL, '2024-09-24 15:02:59', '2024-10-25 05:45:14'),
(156, 'FMD356400', 'Lindt Excellence Sea Salt (100 gm)', 'Basic description of Sweets & Confectionery 29', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 630.00, 640.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:02:59', '2024-10-25 05:45:14'),
(157, 'FMD251326', 'N&H Chicken Wings (770 gm)', 'Basic description of Meat, Fish & Seafood 208', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 606.00, 616.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:02:59', '2024-10-25 05:45:11'),
(158, 'FMD189037', 'Chana Ko Saatu (1 kg)', 'Basic description of Pure Organic Items 16', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 270.00, 280.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:02:59', '2024-10-25 05:45:13'),
(159, 'FMD407117', 'Trout Fish', 'Basic description of Meat, Fish & Seafood 274', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 3448.00, 3458.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:00', '2024-10-25 05:45:12'),
(160, 'FMD226753', 'Smoked Salmon (Norway) 200Gm', 'Basic description of Meat, Fish & Seafood 276', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 1890.00, 1900.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:00', '2024-10-25 05:45:12'),
(161, 'FMD189231', 'Haldiram\'s Kashmiri Mixture (400 gm)', 'Basic description of Snacks & Dry Fruits 4', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 410.00, 420.00, 'PCS', 10.00, 10.00, ' Ha00001', 'Haldirams', '[Rack 8]', NULL, '2024-09-24 15:03:00', '2024-10-25 05:45:13'),
(162, 'FMD189045', 'Sadeko Chiura (500 gm)', 'Basic description of Pure Organic Items 24', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:00', '2024-10-25 05:45:13'),
(163, 'FMD180707', 'Junge Pustakari (200 gm)', 'Basic description of Sweets & Confectionery 28', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 120.00, 130.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:03:00', '2024-10-25 05:45:14'),
(164, 'FMD189244', 'Haldiram\'s Salted  Peanuts (180 gm)', 'Basic description of Snacks & Dry Fruits 13', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 121.00, 131.00, 'PCS', 10.00, 10.00, ' Ha00001', 'Haldirams', '[Rack 8]', NULL, '2024-09-24 15:03:00', '2024-10-25 05:45:13'),
(165, 'FMD281816', 'Nestle Classic Chocolate (34 gm)', 'Basic description of Sweets & Confectionery 38', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 30.00, 40.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:03:00', '2024-10-25 05:45:14'),
(166, 'FMD197054', 'N & H Chicken Wings (950 gm)', 'Basic description of Meat, Fish & Seafood 115', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 703.00, 713.00, 'PCS', 6.00, 6.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:00', '2024-10-25 05:45:10'),
(167, 'FMD323193', 'N&H Chicken Drumsticks (530 gm)', 'Basic description of Meat, Fish & Seafood 123', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 414.00, 424.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:00', '2024-10-25 05:45:10'),
(168, 'FMD364081', 'Excellence Milk (100 gms) - Lindt', 'Basic description of Sweets & Confectionery 34', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 630.00, 640.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:03:01', '2024-10-25 05:45:14'),
(169, 'FMD364087', 'Lindor Cornet - Assorted (200 gms) - Lindt', 'Basic description of Sweets & Confectionery 36', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 630.00, 640.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:03:01', '2024-10-25 05:45:14'),
(170, 'FMD189043', 'Makai Ko Pitho (1 kg)', 'Basic description of Pure Organic Items 22', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 170.00, 180.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:02', '2024-10-25 05:45:13'),
(171, 'FMD189044', 'Mix Saatu (1 kg)', 'Basic description of Pure Organic Items 23', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 270.00, 280.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:02', '2024-10-25 05:45:13'),
(172, 'FMD174458', 'Maggi Nutrilicious Oats Masala 290 gms', 'Basic description of Pasta & Noodles 19', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 225.00, 235.00, 'PCS', 10.00, 10.00, ' Ma00001', 'Maggi', '[Rack 8]', NULL, '2024-09-24 15:03:02', '2024-10-25 05:45:13'),
(173, 'FMD174457', 'Maggi Nutrilicious Atta Masala 290 gms', 'Basic description of Pasta & Noodles 18', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 230.00, 240.00, 'PCS', 10.00, 10.00, ' Ma00001', 'Maggi', '[Rack 8]', NULL, '2024-09-24 15:03:02', '2024-10-25 05:45:13');
INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_description`, `category_id`, `category_name`, `subcategory_id`, `subcategory_name`, `delivery_target_days`, `discount`, `actual_price`, `sell_price`, `mr_price`, `unit_info`, `available_quantity`, `stock_quantity`, `brand_id`, `brand_name`, `product_location`, `primary_image`, `created_at`, `updated_at`) VALUES
(174, 'FMD284464', 'Hershey\'s Baking Milk Chocolate Chips 200 g', 'Basic description of Sweets & Confectionery 40', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 780.00, 790.00, 'PCS', 10.00, 10.00, ' He00001', 'Hersheys', '[Rack 9]', NULL, '2024-09-24 15:03:02', '2024-10-25 05:45:14'),
(175, 'FMD180706', 'Junge Nimki (300 gm)', 'Basic description of Snacks & Dry Fruits 17', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:03', '2024-10-25 05:45:13'),
(176, 'FMD180705', 'Junge Lakhamari (250 gm)', 'Basic description of Snacks & Dry Fruits 16', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 105.00, 115.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:03', '2024-10-25 05:45:13'),
(177, 'FMD174188', 'Dalmot (350 gm)', 'Basic description of Snacks & Dry Fruits 18', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 55.00, 65.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:03', '2024-10-25 05:45:13'),
(178, 'FMD174263', 'Haldiram\'s All In One Big (180 gm)', 'Basic description of Snacks & Dry Fruits 21', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 115.00, 125.00, 'PCS', 10.00, 10.00, ' Ha00001', 'Haldirams', '[Rack 8]', NULL, '2024-09-24 15:03:03', '2024-10-25 05:45:13'),
(179, 'FMD174213', 'Salted Roasted Peanuts (360 gms)', 'Basic description of Snacks & Dry Fruits 20', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 185.00, 195.00, 'PCS', 10.00, 10.00, ' Ad00002', 'Adity', '[Rack 8]', NULL, '2024-09-24 15:03:03', '2024-10-25 05:45:13'),
(180, 'FMD233976', 'N&H Shrimp 500Gm', 'Basic description of Meat, Fish & Seafood 275', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 790.00, 800.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:03', '2024-10-25 05:45:12'),
(181, 'FMD174261', 'Divella Pasta  Penne Ziti Rigate 27 (500 gm)', 'Basic description of Pasta & Noodles 24', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 180.00, 190.00, 'PCS', 10.00, 10.00, ' Di00001', 'Divella', '[Rack 8]', NULL, '2024-09-24 15:03:04', '2024-10-25 05:45:13'),
(182, 'FMD174731', 'Divella Pasta Penne Ziti Rigate 27 (1 kg)', 'Basic description of Pasta & Noodles 20', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, ' Di00001', 'Divella', '[Rack 8]', NULL, '2024-09-24 15:03:04', '2024-10-25 05:45:13'),
(183, 'FMD174264', 'Haldiram\'s Aloo Bhujia (200 gm)', 'Basic description of Snacks & Dry Fruits 22', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 112.00, 122.00, 'PCS', 10.00, 10.00, ' Ha00001', 'Haldirams', '[Rack 8]', NULL, '2024-09-24 15:03:04', '2024-10-25 05:45:13'),
(184, 'FMD284468', 'Hershey\'s Kisses Creamy Milk Chocolate, 146g', 'Basic description of Sweets & Confectionery 44', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 689.00, 699.00, 'PCS', 10.00, 10.00, ' He00001', 'Hersheys', '[Rack 9]', NULL, '2024-09-24 15:03:04', '2024-10-25 05:45:14'),
(185, 'FMD284466', 'Hershey\'s Kisses Cookies n Creme Chocolate 100 g', 'Basic description of Sweets & Confectionery 42', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 515.00, 525.00, 'PCS', 10.00, 10.00, ' He00001', 'Hersheys', '[Rack 9]', NULL, '2024-09-24 15:03:04', '2024-10-25 05:45:14'),
(186, 'FMD174414', 'Samyang Hot Chicken Spicy (700 gm)', 'Basic description of Pasta & Noodles 22', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 890.00, 900.00, 'PCS', 10.00, 10.00, ' Sa00002', 'Samyang', '[Rack 8]', NULL, '2024-09-24 15:03:04', '2024-10-25 05:45:13'),
(187, 'FMD314898', 'Frooti Mango Drinks 500Ml', 'Basic description of Beverages 74', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:05', '2024-10-25 05:45:13'),
(188, 'FMD230994', 'Pampers Diapers 86s (XS)', 'Basic description of Baby Care 16', '1', 'Baby Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1828.00, 1838.00, 'PCS', 10.00, 10.00, ' Pa00001', 'Pamper', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:03:05', '2024-10-25 05:45:13'),
(189, 'FMD254320', 'Pangash Fish Cut (800 gm)', 'Basic description of Meat, Fish & Seafood 279', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 585.00, 595.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:05', '2024-10-25 05:45:12'),
(190, 'FMD242005', 'Hyfun French Fries (1 kg)', 'Basic description of Ready to Cook 2', '19', 'Ready to Cook', '28', 'Veg Items', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 10.00, 10.00, ' Hy00001', 'Hyfun', '[Rack 8]', NULL, '2024-09-24 15:03:05', '2024-10-25 05:45:13'),
(191, 'FMD290310', 'Lindt Lindor Milk Cornet 200 gms', 'Basic description of Sweets & Confectionery 49', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1440.00, 1450.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:03:06', '2024-10-25 05:45:14'),
(192, 'FMD290317', 'Lindt Excellence 70% Mild Dark Chocolate Bar 100g', 'Basic description of Sweets & Confectionery 56', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 530.00, 540.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:03:06', '2024-10-25 05:45:14'),
(193, 'FMD174419', 'Tokla Gold Tea (500 gm)', 'Basic description of Beverages 60', '4', 'Beverages', '5', 'Tea', '0', 0.00, 0.00, 320.00, 330.00, 'PCS', 10.00, 10.00, ' To00001', 'Tokla', '[Rack 3]', NULL, '2024-09-24 15:03:06', '2024-10-25 05:45:13'),
(194, 'FMD174083', 'Buff Sausage (500 gms) - NH', 'Basic description of Meat, Fish & Seafood 321', '13', 'Meat, Fish & Seafood', '26', 'Buff', '0', 0.00, 0.00, 465.00, 475.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:03:06', '2024-10-25 05:45:12'),
(195, 'FMD256943', 'N&H Trout Fish (1.05 kg)', 'Basic description of Meat, Fish & Seafood 278', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 1617.00, 1627.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:06', '2024-10-25 05:45:12'),
(196, 'FMD290312', 'Lindt Lindor Singles Hazelnut 100 gms', 'Basic description of Sweets & Confectionery 51', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 585.00, 595.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:03:06', '2024-10-25 05:45:14'),
(197, 'FMD221860', 'The Ordinary Niacinamide 10% + Zinc 1% 30ml', 'Basic description of Personal Care 30', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1790.00, 1800.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:06', '2024-10-25 05:45:13'),
(198, 'FMD174103', 'VCS Basa Breaded Fillet - (1 kg)', 'Basic description of Meat, Fish & Seafood 255', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 490.00, 500.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:07', '2024-10-25 05:45:12'),
(199, 'FMD174268', 'Haldiram\'s Khatta Meetha (180 gm)', 'Basic description of Snacks & Dry Fruits 25', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 107.00, 117.00, 'PCS', 10.00, 10.00, ' Ha00001', 'Haldirams', '[Rack 8]', NULL, '2024-09-24 15:03:07', '2024-10-25 05:45:13'),
(200, 'FMD174295', 'Classic Espresso Blend 1 Kg Whole Beans (Exotic/ Medium Roast)-  (Premium / Export Quality)- Red Cherry Coffee Beans', 'Basic description of Beverages 7', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 2090.00, 2100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:07', '2024-10-25 05:45:17'),
(201, 'FMD197302', 'Chicken Drumstick (540 gm)', 'Basic description of Meat, Fish & Seafood 92', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 341.00, 351.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:07', '2024-10-25 05:45:17'),
(202, 'FMD221845', 'Chicken Drumstick  (570 gm)', 'Basic description of Meat, Fish & Seafood 90', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 360.00, 370.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:07', '2024-10-25 05:45:17'),
(203, 'FMD174369', 'Nestlé Lactogen 4 Follow-Up Formula Powder (After 24 months) (400 gm)', 'Basic description of Kids & Baby Foods 10', '11', 'Kids & Baby Foods', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 635.00, 645.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:03:07', '2024-10-25 05:45:17'),
(204, 'FMD199909', 'Chicken Whole Leg (580 gm)', 'Basic description of Meat, Fish & Seafood 94', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 367.00, 377.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:07', '2024-10-25 05:45:17'),
(205, 'FMD174423', 'Nuwakot (Washed) Filter Grind 250 gm', 'Basic description of Beverages 22', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 780.00, 790.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:07', '2024-10-25 05:45:17'),
(206, 'FMD342390', 'Cow Cheese (200 gm) Pkt', 'Egg and dairy provide protein, calcium, and essential nutrients for health 5', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 320.00, 330.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:08', '2024-10-25 05:45:15'),
(207, 'FMD204310', 'Chicken Wings (810 gm)', 'Basic description of Meat, Fish & Seafood 96', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 597.00, 607.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:08', '2024-10-25 05:45:17'),
(208, 'FMD207205', 'Chicken Boneless Breast  (500 gm) (A)', 'Basic description of Meat, Fish & Seafood 98', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:08', '2024-10-25 05:45:17'),
(209, 'FMD404104', 'Australian Gold Creamy Brie 115Gm', 'Egg and dairy provide protein, calcium, and essential nutrients for health 7', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1190.00, 1200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:08', '2024-10-25 05:45:15'),
(210, 'FMD174417', 'Raisins (500g)', 'Basic description of Snacks & Dry Fruits 121', '22', 'Snacks & Dry Fruits', '33', 'Dry Fruits', '0', 0.00, 0.00, 265.00, 275.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:03:08', '2024-10-25 05:45:14'),
(211, 'FMD203851', 'N&H German Bratwurst (BBQ Chicken Sausage) (400 gms)', 'Basic description of Meat, Fish & Seafood 104', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 470.00, 480.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:08', '2024-10-25 05:45:17'),
(212, 'FMD192232', 'Chicken Wings (1.680 kg)', 'Basic description of Meat, Fish & Seafood 106', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 830.00, 840.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:09', '2024-10-25 05:45:17'),
(213, 'FMD193733', 'Chicken Drumstick (695 gm)', 'Basic description of Meat, Fish & Seafood 110', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 441.00, 451.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:09', '2024-10-25 05:45:17'),
(214, 'FMD193508', 'VCS Chicken BL Leg  (2 kg)', 'Basic description of Meat, Fish & Seafood 108', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1470.00, 1480.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:09', '2024-10-25 05:45:17'),
(215, 'FMD174050', 'Paneer (200 gm)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 15', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 170.00, 180.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:09', '2024-10-25 05:45:15'),
(216, 'FMD199218', 'Semolina Cookies', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 26', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:03:09', '2024-10-25 05:45:15'),
(217, 'FMD174113', 'GFM Fish Basa Fillet (1 kg)', 'Basic description of Meat, Fish & Seafood 252', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 540.00, 550.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:09', '2024-10-25 05:45:12'),
(218, 'FMD195307', 'Chicken Wings (398 gm)', 'Basic description of Meat, Fish & Seafood 111', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 189.00, 199.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:09', '2024-10-25 05:45:17'),
(219, 'FMD177550', 'Mam Mam (500 gm) Nutritious Baby Food', 'Basic description of Kids & Baby Foods 18', '11', 'Kids & Baby Foods', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 180.00, 190.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:03:09', '2024-10-25 05:45:17'),
(220, 'FMD174051', 'Paneer (200gm)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 16', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:09', '2024-10-25 05:45:15'),
(221, 'FMD331021', 'Whisper Choice Ultra, XL, 6 pads', 'Basic description of Personal Care 46', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 65.00, 75.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:09', '2024-10-25 05:45:13'),
(222, 'FMD174060', 'Chiuri Honey (500gm)', 'Local Produces basic description 1', '12', 'Local Produces', '18', 'Honey', '0', 0.00, 0.00, 430.00, 440.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:03:10', '2024-10-25 05:45:17'),
(223, 'FMD177282', 'Ariel (1 kg)', 'Basic description of Household 100', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 450.00, 460.00, 'PCS', 10.00, 10.00, ' Ar00002', 'Ariel', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:03:10', '2024-10-25 05:45:17'),
(224, 'FMD177283', 'Ariel Matic Front Load (1 kg)', 'Basic description of Household 101', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 485.00, 495.00, 'PCS', 10.00, 10.00, ' Ar00002', 'Ariel', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:03:10', '2024-10-25 05:45:17'),
(225, 'FMD177284', 'Ariel Matic Top Load (1 kg)', 'Basic description of Household 102', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 415.00, 425.00, 'PCS', 10.00, 10.00, ' Ar00002', 'Ariel', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:03:10', '2024-10-25 05:45:17'),
(226, 'FMD174363', 'Nestlé CERELAC Stage 5, 5 Grains and Fruits (From 18 Months) (300 gm)', 'Basic description of Kids & Baby Foods 16', '11', 'Kids & Baby Foods', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 510.00, 520.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:03:10', '2024-10-25 05:45:17'),
(227, 'FMD281008', 'N&H Chicken Legs (560 gm)', 'Basic description of Meat, Fish & Seafood 199', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 438.00, 448.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:10', '2024-10-25 05:45:11'),
(228, 'FMD174767', 'Quick Wash 1 kg', 'Basic description of Household 103', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 278.00, 288.00, 'PCS', 10.00, 10.00, ' Su00001', 'Surf Excel', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:03:10', '2024-10-25 05:45:17'),
(229, 'FMD302513', 'N&H Chicken Wings (750 gm)', 'Basic description of Meat, Fish & Seafood 212', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 590.00, 600.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:11', '2024-10-25 05:45:11'),
(230, 'FMD174775', 'Total 10 Liquid Handwash 190 ml', 'Basic description of Household 106', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 126.00, 136.00, 'PCS', 10.00, 10.00, ' Li00001', 'Lifebuoy', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:03:11', '2024-10-25 05:45:17'),
(231, 'FMD176567', 'Mr Muscle Toilet Cleaner (500 ml)', 'Basic description of Household 98', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 120.00, 130.00, 'PCS', 10.00, 10.00, ' Mr00001', 'Mr. Muscle', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:03:11', '2024-10-25 05:45:17'),
(232, 'FMD174768', 'Quick Wash 500 g', 'Basic description of Household 104', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 134.00, 144.00, 'PCS', 10.00, 10.00, ' Su00001', 'Surf Excel', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:03:11', '2024-10-25 05:45:17'),
(233, 'FMD174777', 'Total Tube 50 ml', 'Basic description of Household 108', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 115.00, 125.00, 'PCS', 10.00, 10.00, ' Li00001', 'Lifebuoy', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:03:11', '2024-10-25 05:45:17'),
(234, 'FMD174773', 'CARE Hand Sanitizer 50 ml', 'Basic description of Household 105', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 102.00, 112.00, 'PCS', 10.00, 10.00, ' Li00001', 'Lifebuoy', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:03:11', '2024-10-25 05:45:17'),
(235, 'FMD174294', 'Classic Espresso Blend 1 kg Filter Grind (Exotic/ Medium Roast)-  (Premium / Export Quality)', 'Basic description of Beverages 6', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 2090.00, 2100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:11', '2024-10-25 05:45:17'),
(236, 'FMD174776', 'Total 10 Liquid Handwash 400 ml', 'Basic description of Household 107', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 214.00, 224.00, 'PCS', 10.00, 10.00, ' Li00001', 'Lifebuoy', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:03:12', '2024-10-25 05:45:17'),
(237, 'FMD199211', 'Marble Cake (Medium)', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 19', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 0.00, 0.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:03:12', '2024-10-25 05:45:15'),
(238, 'FMD174308', 'Oxford Chocolate Puff Sandwich', 'Basic description of Cookies & Biscuits 36', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 265.00, 275.00, 'PCS', 10.00, 10.00, ' Ox00001', 'Oxford', '[Rack 3]', NULL, '2024-09-24 15:03:12', '2024-10-25 05:45:15'),
(239, 'FMD174251', 'Mcvities (UK) Hobnobs Milk Chocolate (300 gm)', 'Basic description of Cookies & Biscuits 34', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 10.00, 10.00, ' Mc00002', 'Mcvities (UK)', '[Rack 3]', NULL, '2024-09-24 15:03:12', '2024-10-25 05:45:15'),
(240, 'FMD230996', 'WOW Butterscotch Pop Corn (Family Pack)', 'Basic description of Snacks & Dry Fruits 102', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, ' WO00001', 'WOW', '[Rack 9]', NULL, '2024-09-24 15:03:12', '2024-10-25 05:45:14'),
(241, 'FMD174383', 'Bajra Besan (500 gm)', 'Basic description of Oil, Spice & Condiments 48', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 215.00, 225.00, 'PCS', 10.00, 10.00, ' Ba00001', 'Bajra', '[Rack 8]', NULL, '2024-09-24 15:03:13', '2024-10-25 05:45:13'),
(242, 'FMD174311', 'Oxford Special Crackers (350 gm)', 'Basic description of Cookies & Biscuits 39', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 265.00, 275.00, 'PCS', 10.00, 10.00, ' Ox00001', 'Oxford', '[Rack 3]', NULL, '2024-09-24 15:03:13', '2024-10-25 05:45:15'),
(243, 'FMD174310', 'Oxford Lemon Puff Sandwich', 'Basic description of Cookies & Biscuits 38', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 265.00, 275.00, 'PCS', 10.00, 10.00, ' Ox00001', 'Oxford', '[Rack 3]', NULL, '2024-09-24 15:03:13', '2024-10-25 05:45:15'),
(244, 'FMD174238', 'Mcvities (UK) Digestive (500 gm)', 'Basic description of Cookies & Biscuits 40', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 215.00, 225.00, 'PCS', 10.00, 10.00, ' Mc00002', 'Mcvities (UK)', '[Rack 3]', NULL, '2024-09-24 15:03:13', '2024-10-25 05:45:15'),
(245, 'FMD174309', 'Oxford Corn Crackers (350 gm)', 'Basic description of Cookies & Biscuits 37', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 265.00, 275.00, 'PCS', 10.00, 10.00, ' Ox00001', 'Oxford', '[Rack 3]', NULL, '2024-09-24 15:03:13', '2024-10-25 05:45:15'),
(246, 'FMD174230', 'Complan Kesar Badam (500 gm) Jar', 'Basic description of Kids & Baby Foods 3', '11', 'Kids & Baby Foods', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 540.00, 550.00, 'PCS', 10.00, 10.00, ' Co00002', 'Complan', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:03:13', '2024-10-25 05:45:17'),
(247, 'FMD174249', 'Mcvities (UK) Digestive Dark Chocolate (200 gm)', 'Basic description of Cookies & Biscuits 32', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 185.00, 195.00, 'PCS', 10.00, 10.00, ' Mc00002', 'Mcvities (UK)', '[Rack 3]', NULL, '2024-09-24 15:03:14', '2024-10-25 05:45:15'),
(248, 'FMD174246', 'Mcvities (UK) Digestive Milk Chocolate (300 gm)', 'Basic description of Cookies & Biscuits 31', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 270.00, 280.00, 'PCS', 10.00, 10.00, ' Mc00002', 'Mcvities (UK)', '[Rack 3]', NULL, '2024-09-24 15:03:14', '2024-10-25 05:45:15'),
(249, 'FMD174245', 'Mcvities (UK) Digestive Dark Chocolate (300 gm)', 'Basic description of Cookies & Biscuits 30', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 260.00, 270.00, 'PCS', 10.00, 10.00, ' Mc00002', 'Mcvities (UK)', '[Rack 3]', NULL, '2024-09-24 15:03:14', '2024-10-25 05:45:15'),
(250, 'FMD174324', 'Knorr Hot & Sour (44 gm)', 'Basic description of Soup, Sauce & Seasonings 27', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 38.00, 48.00, 'PCS', 10.00, 10.00, ' Kn00001', 'Knorr', '[Rack 9]', NULL, '2024-09-24 15:03:14', '2024-10-25 05:45:14'),
(251, 'FMD174242', 'Mcvities (UK) Digestive (250 gm)', 'Basic description of Cookies & Biscuits 28', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 200.00, 210.00, 'PCS', 10.00, 10.00, ' Mc00002', 'Mcvities (UK)', '[Rack 3]', NULL, '2024-09-24 15:03:15', '2024-10-25 05:45:15'),
(252, 'FMD174243', 'Mcvities (UK) Wholesense (400 gm)', 'Basic description of Cookies & Biscuits 29', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, ' Mc00002', 'Mcvities (UK)', '[Rack 3]', NULL, '2024-09-24 15:03:15', '2024-10-25 05:45:15'),
(253, 'FMD176387', 'Chabaa Orange Juice (230 ml)', 'Basic description of Beverages 86', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:15', '2024-10-25 05:45:14'),
(254, 'FMD174321', 'Sweet & Spicy (500 gm)', 'Basic description of Soup, Sauce & Seasonings 24', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 158.00, 168.00, 'PCS', 10.00, 10.00, ' Ki00001', 'Kissan', '[Rack 9]', NULL, '2024-09-24 15:03:15', '2024-10-25 05:45:14'),
(255, 'FMD217288', 'HS Chana (1 kg)', 'Basic description of Rice & Pulses 45', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 250.00, 260.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:15', '2024-10-25 05:45:13'),
(256, 'FMD331217', 'N&H Chicken Leg (450 gm)', 'Basic description of Meat, Fish & Seafood 150', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 395.00, 405.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:15', '2024-10-25 05:45:10'),
(257, 'FMD189028', 'Kodo Ko Pitho (1 kg)', 'Basic description of Pure Organic Items 7', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:15', '2024-10-25 05:45:13'),
(258, 'FMD174082', 'Rainbow Trout - (1 kg)', 'Basic description of Meat, Fish & Seafood 261', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 1940.00, 1950.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:15', '2024-10-25 05:45:12'),
(259, 'FMD215985', 'Byanjan Chana Daal (1 kg)', 'Basic description of Rice & Pulses 47', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 180.00, 190.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:15', '2024-10-25 05:45:13'),
(260, 'FMD215988', 'Byanjan Musuro Daal (1 kg)', 'Basic description of Rice & Pulses 46', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 180.00, 190.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:16', '2024-10-25 05:45:13'),
(261, 'FMD215986', 'Byanjan Maas Daal (1 kg)', 'Basic description of Rice & Pulses 48', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:16', '2024-10-25 05:45:13'),
(262, 'FMD174325', 'Knorr Mexican (52 gm)', 'Basic description of Soup, Sauce & Seasonings 28', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 38.00, 48.00, 'PCS', 10.00, 10.00, ' Kn00001', 'Knorr', '[Rack 9]', NULL, '2024-09-24 15:03:16', '2024-10-25 05:45:14'),
(263, 'FMD302515', 'N&H Chicken Wings (800 gm)', 'Basic description of Meat, Fish & Seafood 214', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 710.00, 720.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:16', '2024-10-25 05:45:11'),
(264, 'FMD174323', 'Fresh Tomato (1 kg)', 'Basic description of Soup, Sauce & Seasonings 26', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 214.00, 224.00, 'PCS', 10.00, 10.00, ' Ki00001', 'Kissan', '[Rack 9]', NULL, '2024-09-24 15:03:16', '2024-10-25 05:45:14'),
(265, 'FMD174327', 'Knorr Mushroom Soup (48 gm)', 'Basic description of Soup, Sauce & Seasonings 29', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 38.00, 48.00, 'PCS', 10.00, 10.00, ' Kn00001', 'Knorr', '[Rack 9]', NULL, '2024-09-24 15:03:16', '2024-10-25 05:45:14'),
(266, 'FMD174328', 'Knorr Sweet Corn Chicken (45 gm)', 'Basic description of Soup, Sauce & Seasonings 30', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 38.00, 48.00, 'PCS', 10.00, 10.00, ' Kn00001', 'Knorr', '[Rack 9]', NULL, '2024-09-24 15:03:17', '2024-10-25 05:45:14'),
(267, 'FMD174333', 'Kissan Sweet & Spicy (1 kg)', 'Basic description of Soup, Sauce & Seasonings 35', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 246.00, 256.00, 'PCS', 10.00, 10.00, ' Ki00001', 'Kissan', '[Rack 9]', NULL, '2024-09-24 15:03:17', '2024-10-25 05:45:14'),
(268, 'FMD177347', 'N&H Salmon Fillet  - (1.68 kg)', 'Basic description of Meat, Fish & Seafood 263', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 10406.00, 10416.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:17', '2024-10-25 05:45:12'),
(269, 'FMD303006', 'India Gate Classic (1 kg)', 'Basic description of Rice & Pulses 51', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 326.00, 336.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:17', '2024-10-25 05:45:13'),
(270, 'FMD189030', '??? ?? ???? (Jumla) (1 kg)', 'Basic description of Pure Organic Items 9', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 130.00, 140.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:17', '2024-10-25 05:45:13'),
(271, 'FMD189363', 'Nong Shim Kimchi Ramyun (Pack of 5)', 'Basic description of Pasta & Noodles 11', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 740.00, 750.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:17', '2024-10-25 05:45:13'),
(272, 'FMD188345', 'Divella Pasta Fusilli 40 (1 kg)', 'Basic description of Pasta & Noodles 10', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 350.00, 360.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:17', '2024-10-25 05:45:13'),
(273, 'FMD174272', 'Haldiram\'s Navrattan (180 gm)', 'Basic description of Snacks & Dry Fruits 28', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 107.00, 117.00, 'PCS', 10.00, 10.00, ' Ha00001', 'Haldirams', '[Rack 8]', NULL, '2024-09-24 15:03:18', '2024-10-25 05:45:13'),
(274, 'FMD174271', 'Haldiram\'s Moong Dal (360 gm)', 'Basic description of Snacks & Dry Fruits 27', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 244.00, 254.00, 'PCS', 10.00, 10.00, ' Ha00001', 'Haldirams', '[Rack 8]', NULL, '2024-09-24 15:03:18', '2024-10-25 05:45:13'),
(275, 'FMD379797', 'India Gate (5 kg)', 'Basic description of Rice & Pulses 50', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1390.00, 1400.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:18', '2024-10-25 05:45:13'),
(276, 'FMD215869', 'Moby Tuna (170 gm)', 'Basic description of Packaged & Canned Foods 3', '15', 'Packaged & Canned Foods', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:18', '2024-10-25 05:45:13'),
(277, 'FMD319021', 'N&H Chicken Legs (900 gm)', 'Basic description of Meat, Fish & Seafood 120', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 710.00, 720.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:18', '2024-10-25 05:45:10'),
(278, 'FMD313980', 'N&H Trout Fish (730 gm)', 'Basic description of Meat, Fish & Seafood 265', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 1121.00, 1131.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:18', '2024-10-25 05:45:12'),
(279, 'FMD189038', 'Chiya Seed (200 gm)', 'Basic description of Pure Organic Items 17', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:18', '2024-10-25 05:45:13'),
(280, 'FMD286836', 'India Gate Rice Dubar  (1 kg)', 'Basic description of Rice & Pulses 53', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:18', '2024-10-25 05:45:13'),
(281, 'FMD364074', 'EXC Sea Salt (100 Gms) - Lindt', 'Basic description of Sweets & Confectionery 31', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 630.00, 640.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:03:18', '2024-10-25 05:45:14'),
(282, 'FMD302491', 'Arrabiata Pasta Sauce', 'Basic description of Soup, Sauce & Seasonings 74', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 315.00, 325.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:03:18', '2024-10-25 05:45:14'),
(283, 'FMD232563', 'Divella Pasta Penne (1 kg)', 'Basic description of Pasta & Noodles 3', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 360.00, 370.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:18', '2024-10-25 05:45:13'),
(284, 'FMD174439', 'Palpa (Natural) Filter Grind 500 gm', 'Basic description of Beverages 38', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 1240.00, 1250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:19', '2024-10-25 05:45:12'),
(285, 'FMD300119', 'Roza Sweet Chilli Sauce (730 gm)', 'Basic description of Soup, Sauce & Seasonings 75', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 445.00, 455.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:03:19', '2024-10-25 05:45:14'),
(286, 'FMD174314', 'Rasna Fruit Plus- Orange  (400 gm)', 'Basic description of Beverages 91', '4', 'Beverages', '7', 'Juice Powder', '0', 0.00, 0.00, 170.00, 180.00, 'PCS', 10.00, 10.00, ' Ra00001', 'Rasna', '[Rack 3]', NULL, '2024-09-24 15:03:19', '2024-10-25 05:45:14'),
(287, 'FMD174315', 'Rasna Fruit Plus- Orange (1 kg)', 'Basic description of Beverages 92', '4', 'Beverages', '7', 'Juice Powder', '0', 0.00, 0.00, 460.00, 470.00, 'PCS', 10.00, 10.00, ' Ra00001', 'Rasna', '[Rack 3]', NULL, '2024-09-24 15:03:19', '2024-10-25 05:45:14'),
(288, 'FMD246503', 'N&H Chicken Drumstick (790 gm)', 'Basic description of Meat, Fish & Seafood 205', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 890.00, 900.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:19', '2024-10-25 05:45:11'),
(289, 'FMD248126', 'Safa Tomato Paste (400 gm)', 'Basic description of Soup, Sauce & Seasonings 72', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 360.00, 370.00, 'PCS', 10.00, 10.00, ' Sa00003', 'Safa', '[Rack 9]', NULL, '2024-09-24 15:03:19', '2024-10-25 05:45:14'),
(290, 'FMD174450', 'Nestle Kitkat Dessert Chocolate Pudding 50 gms', 'Basic description of Sweets & Confectionery 3', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 100.00, 110.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 9]', NULL, '2024-09-24 15:03:19', '2024-10-25 05:45:14'),
(291, 'FMD174453', 'Nestle Kitkat Family Pack 72 gms', 'Basic description of Sweets & Confectionery 6', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 9]', NULL, '2024-09-24 15:03:19', '2024-10-25 05:45:14'),
(292, 'FMD353617', 'N&H Chicken Wings 1060 gm', 'Basic description of Meat, Fish & Seafood 178', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1071.00, 1081.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:19', '2024-10-25 05:45:11'),
(293, 'FMD251000', 'Pasta Sauce Divella (680 gm)', 'Basic description of Pasta & Noodles 4', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 400.00, 410.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:19', '2024-10-25 05:45:13'),
(294, 'FMD205066', 'Limedo Compound Chocolate (400 gms)', 'Basic description of Sweets & Confectionery 9', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 390.00, 400.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:03:19', '2024-10-25 05:45:14'),
(295, 'FMD193705', 'Choco Pie (Pack of 6)', 'Basic description of Sweets & Confectionery 11', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 185.00, 195.00, 'PCS', 10.00, 10.00, ' Or00001', 'Orion', '[Rack 9]', NULL, '2024-09-24 15:03:20', '2024-10-25 05:45:14'),
(296, 'FMD193707', 'Custard Soft Cake (Pack of 6)', 'Basic description of Sweets & Confectionery 13', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 265.00, 275.00, 'PCS', 10.00, 10.00, ' Or00001', 'Orion', '[Rack 9]', NULL, '2024-09-24 15:03:20', '2024-10-25 05:45:14'),
(297, 'FMD364098', 'Penne Pasta (350 gms) - Mums', 'Basic description of Pasta & Noodles 7', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:20', '2024-10-25 05:45:13'),
(298, 'FMD189033', 'Masyaura (200 gm)', 'Basic description of Pure Organic Items 12', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 390.00, 400.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:20', '2024-10-25 05:45:13'),
(299, 'FMD230640', '?????', 'Basic description of Rice & Pulses 56', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 280.00, 290.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:20', '2024-10-25 05:45:13'),
(300, 'FMD174452', 'Nestle Kitkat Dessert Rich Choc Fdg 150 gms', 'Basic description of Sweets & Confectionery 5', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 310.00, 320.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 9]', NULL, '2024-09-24 15:03:20', '2024-10-25 05:45:14'),
(301, 'FMD316021', 'N&H Trout Fish (740 gm)', 'Basic description of Meat, Fish & Seafood 268', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 1137.00, 1147.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:20', '2024-10-25 05:45:12'),
(302, 'FMD193706', 'Choco Pie Dark (Pack of 6)', 'Basic description of Sweets & Confectionery 12', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 215.00, 225.00, 'PCS', 10.00, 10.00, ' Or00001', 'Orion', '[Rack 9]', NULL, '2024-09-24 15:03:21', '2024-10-25 05:45:14'),
(303, 'FMD191074', 'BMC Chicken Masala (50 gm)', 'Basic description of Oil, Spice & Condiments 12', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 50.00, 60.00, 'PCS', 10.00, 10.00, ' BM00001', 'BMC', '[Rack 7]', NULL, '2024-09-24 15:03:21', '2024-10-25 05:45:12'),
(304, 'FMD174455', 'Nestle Classic 34 gms', 'Basic description of Sweets & Confectionery 8', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 30.00, 40.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 9]', NULL, '2024-09-24 15:03:21', '2024-10-25 05:45:14'),
(305, 'FMD318301', 'N&H Dry Shrimp 250Gm', 'Basic description of Meat, Fish & Seafood 267', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 2790.00, 2800.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:21', '2024-10-25 05:45:12'),
(306, 'FMD215864', 'Dairy Milk Family Pack (130 gm)', 'Basic description of Sweets & Confectionery 18', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:03:21', '2024-10-25 05:45:14'),
(307, 'FMD189035', 'Side Nun (Salt) (500 gm)', 'Basic description of Pure Organic Items 14', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 230.00, 240.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:21', '2024-10-25 05:45:13'),
(308, 'FMD191075', 'BMC Garam Masala (50 gm)', 'Basic description of Oil, Spice & Condiments 13', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 60.00, 70.00, 'PCS', 10.00, 10.00, ' BM00001', 'BMC', '[Rack 7]', NULL, '2024-09-24 15:03:21', '2024-10-25 05:45:12'),
(309, 'FMD214605', 'Dairy Milk (130 gms)', 'Basic description of Sweets & Confectionery 16', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:03:21', '2024-10-25 05:45:14'),
(310, 'FMD191076', 'BMC Momo Masala (50 gm)', 'Basic description of Oil, Spice & Condiments 14', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 50.00, 60.00, 'PCS', 10.00, 10.00, ' BM00001', 'BMC', '[Rack 7]', NULL, '2024-09-24 15:03:21', '2024-10-25 05:45:12'),
(311, 'FMD364097', 'Penne Fusilli (350 gms) - Mums', 'Basic description of Pasta & Noodles 6', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:21', '2024-10-25 05:45:13'),
(312, 'FMD189034', 'Mix Pitho (1 kg)', 'Basic description of Pure Organic Items 13', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:21', '2024-10-25 05:45:13'),
(313, 'FMD364096', 'Macaroni (350 gms) - Mums', 'Basic description of Pasta & Noodles 5', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:22', '2024-10-25 05:45:13'),
(314, 'FMD215868', 'Dairy Milk Silk Chocolate (55 gm)', 'Basic description of Sweets & Confectionery 22', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 102.00, 112.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:03:22', '2024-10-25 05:45:14'),
(315, 'FMD215892', 'Nestle KitKat Dessert Delight Tempting Truffle (50 gms)', 'Basic description of Sweets & Confectionery 25', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 9]', NULL, '2024-09-24 15:03:22', '2024-10-25 05:45:14'),
(316, 'FMD189036', 'Timur Ko Dhulo (50 gm)', 'Basic description of Pure Organic Items 15', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:22', '2024-10-25 05:45:13'),
(317, 'FMD215890', 'Nestle Bar One (38 gms)', 'Basic description of Sweets & Confectionery 23', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 30.00, 40.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 9]', NULL, '2024-09-24 15:03:22', '2024-10-25 05:45:14'),
(318, 'FMD307841', 'Lindt Excellence 70%  Dark Chocolate Bar 100g', 'Basic description of Sweets & Confectionery 65', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 630.00, 640.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 10]', NULL, '2024-09-24 15:03:22', '2024-10-25 05:45:15'),
(319, 'FMD189364', 'Nong Shim Shin Ramyun (Pack of 5)', 'Basic description of Pasta & Noodles 12', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 590.00, 600.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:22', '2024-10-25 05:45:13'),
(320, 'FMD290117', 'Raj Peanuts (1 Kg)', 'Basic description of Snacks & Dry Fruits 35', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 415.00, 425.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:23', '2024-10-25 05:45:13'),
(321, 'FMD189247', 'Nestle Nido (900 gms)', 'Basic description of Beverages 97', '4', 'Beverages', '8', 'Milk Powder', '0', 0.00, 0.00, 1865.00, 1875.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 3]', NULL, '2024-09-24 15:03:23', '2024-10-25 05:45:14'),
(322, 'FMD290442', 'Nestle Kitkat (38 gm)', 'Basic description of Sweets & Confectionery 63', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 40.00, 50.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 10]', NULL, '2024-09-24 15:03:23', '2024-10-25 05:45:14'),
(323, 'FMD307777', 'Lindt Excellence 78% Intense Dark Chocolate Bar 100g', 'Basic description of Sweets & Confectionery 64', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 630.00, 640.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 10]', NULL, '2024-09-24 15:03:23', '2024-10-25 05:45:14'),
(324, 'FMD325069', 'B Fizz 250ml', 'Basic description of Beverages 76', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 40.00, 50.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:23', '2024-10-25 05:45:14'),
(325, 'FMD290411', 'Twix Caramel Cookie Bars 50gms (Pack of 2)', 'Basic description of Sweets & Confectionery 62', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 10]', NULL, '2024-09-24 15:03:23', '2024-10-25 05:45:14'),
(326, 'FMD292115', 'Cornflakes Mixture (200 gm)', 'Basic description of Snacks & Dry Fruits 36', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 210.00, 220.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:23', '2024-10-25 05:45:13'),
(327, 'FMD174380', 'Pringles Cheesy Cheese (147 gm)', 'Basic description of Snacks & Dry Fruits 38', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 289.00, 299.00, 'PCS', 10.00, 10.00, ' Pr00002', 'Pringles', '[Rack 8]', NULL, '2024-09-24 15:03:24', '2024-10-25 05:45:14'),
(328, 'FMD177749', 'Cornitos Nacho Crisps Cheese & Herbs (60 gm) Pack of 2', 'Basic description of Snacks & Dry Fruits 37', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 235.00, 245.00, 'PCS', 10.00, 10.00, ' Co00001', 'Cornitos', '[Rack 8]', NULL, '2024-09-24 15:03:24', '2024-10-25 05:45:14'),
(329, 'FMD310681', 'Tong Garden Bbq Board Beans 500Gms', 'Basic description of Snacks & Dry Fruits 116', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 515.00, 525.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:03:24', '2024-10-25 05:45:14'),
(330, 'FMD310679', 'Beyond Snacks Banana Chips Sour Cream Onion & Parsley 25g (Pack of 3)', 'Basic description of Snacks & Dry Fruits 114', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 185.00, 195.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:03:24', '2024-10-25 05:45:14'),
(331, 'FMD183490', 'Chicken Whole Leg (1.89 kg)', 'Basic description of Meat, Fish & Seafood 80', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1218.50, 1228.50, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:24', '2024-10-25 05:45:17'),
(332, 'FMD174386', 'Pringles Sour Cream & Onion (147 gm)', 'Basic description of Snacks & Dry Fruits 42', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, ' Pr00002', 'Pringles', '[Rack 8]', NULL, '2024-09-24 15:03:24', '2024-10-25 05:45:14'),
(333, 'FMD174422', 'Lamjung (Washed) Beans 1000 gm', 'Basic description of Beverages 21', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 2490.00, 2500.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:24', '2024-10-25 05:45:17'),
(334, 'FMD174104', 'VCS Basa Fish R Vietnam ( Fillet ) - (1 kg)', 'Basic description of Meat, Fish & Seafood 256', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 440.00, 450.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:24', '2024-10-25 05:45:12'),
(335, 'FMD174385', 'Pringles Salt & Seaweed (110 gm)', 'Basic description of Snacks & Dry Fruits 41', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 200.00, 210.00, 'PCS', 10.00, 10.00, ' Pr00002', 'Pringles', '[Rack 8]', NULL, '2024-09-24 15:03:24', '2024-10-25 05:45:14'),
(336, 'FMD254319', 'Quail Egg (12 pcs) Pkt', 'Egg and dairy provide protein, calcium, and essential nutrients for health 2', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:25', '2024-10-25 05:45:15'),
(337, 'FMD310680', 'Tong Garden Wasabi Green Peas 90gm', 'Basic description of Snacks & Dry Fruits 115', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 115.00, 125.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:03:25', '2024-10-25 05:45:14'),
(338, 'FMD188314', 'Quail Meat Whole Cut (1 kg)', 'Basic description of Meat, Fish & Seafood 78', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1140.00, 1150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:25', '2024-10-25 05:45:17'),
(339, 'FMD181172', 'N&H Chicken Legs (950 gm)', 'Basic description of Meat, Fish & Seafood 82', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 750.00, 760.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:25', '2024-10-25 05:45:17'),
(340, 'FMD298296', 'Local Egg by Wellness (10 pcs)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 1', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 350.00, 360.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:25', '2024-10-25 05:45:15'),
(341, 'FMD218956', 'AMP Chicken Drumstick (700 gm)', 'Basic description of Meat, Fish & Seafood 86', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 450.00, 460.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:25', '2024-10-25 05:45:17'),
(342, 'FMD217299', 'Toi Moi Vanilla Cream Water Biscuit', 'Basic description of Cookies & Biscuits 89', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:25', '2024-10-25 05:45:15');
INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_description`, `category_id`, `category_name`, `subcategory_id`, `subcategory_name`, `delivery_target_days`, `discount`, `actual_price`, `sell_price`, `mr_price`, `unit_info`, `available_quantity`, `stock_quantity`, `brand_id`, `brand_name`, `product_location`, `primary_image`, `created_at`, `updated_at`) VALUES
(343, 'FMD174348', 'NESCAFE Intense Café Cold Coffee, (180 ml) Tetra Pack', 'Basic description of Beverages 83', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, ' Ne00001', 'Nescafe', '[Rack 3]', NULL, '2024-09-24 15:03:25', '2024-10-25 05:45:14'),
(344, 'FMD283446', 'Blue Cow Condensed Milk 390 gms', 'Egg and dairy provide protein, calcium, and essential nutrients for health 3', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 185.00, 195.00, 'PCS', 10.00, 10.00, ' Te00001', 'Test Brand 1', '[Rack 3]', NULL, '2024-09-24 15:03:26', '2024-10-25 05:45:15'),
(345, 'FMD214622', 'Pangash Fish Fillet - (500 gm, Boneless)', 'Basic description of Meat, Fish & Seafood 240', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 1090.00, 1100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:26', '2024-10-25 05:45:12'),
(346, 'FMD189014', 'Bhatamas Dana', 'Basic description of Rice & Pulses 32', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:26', '2024-10-25 05:45:13'),
(347, 'FMD189016', 'Kalo Simi ( Chitwan)', 'Basic description of Rice & Pulses 34', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 350.00, 360.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:26', '2024-10-25 05:45:13'),
(348, 'FMD213352', 'N&H Chicken Wings (3.84 kg)', 'Basic description of Meat, Fish & Seafood 84', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 2870.00, 2880.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:26', '2024-10-25 05:45:17'),
(349, 'FMD197266', 'Chicken Wings (970 gm)', 'Basic description of Meat, Fish & Seafood 91', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 918.00, 928.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:26', '2024-10-25 05:45:17'),
(350, 'FMD205772', 'Chicken Drumstick (475 gm)', 'Basic description of Meat, Fish & Seafood 95', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 298.00, 308.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:26', '2024-10-25 05:45:17'),
(351, 'FMD189015', 'Sabjiland Chana (1 kg)', 'Basic description of Rice & Pulses 33', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 250.00, 260.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:26', '2024-10-25 05:45:13'),
(352, 'FMD205960', 'Chicken Legs (2.03 kg)', 'Basic description of Meat, Fish & Seafood 97', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1614.00, 1624.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:26', '2024-10-25 05:45:17'),
(353, 'FMD199217', 'Puff Biscuit', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 25', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:03:26', '2024-10-25 05:45:15'),
(354, 'FMD342389', 'Unsalted Raw Butter (1 kg)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 4', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1280.00, 1290.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:26', '2024-10-25 05:45:15'),
(355, 'FMD199591', 'Gaia Digestive Cookies (200 gm)', 'Basic description of Cookies & Biscuits 69', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, ' GA00001', 'GAIA', '[Rack 3]', NULL, '2024-09-24 15:03:27', '2024-10-25 05:45:15'),
(356, 'FMD199908', 'Chicken Boneless Breast (1 kg)', 'Basic description of Meat, Fish & Seafood 93', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 690.00, 700.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:27', '2024-10-25 05:45:17'),
(357, 'FMD220204', 'HS Boneless Chicken Breast (500 gm)', 'Basic description of Meat, Fish & Seafood 88', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:27', '2024-10-25 05:45:17'),
(358, 'FMD404105', 'Australian Gold Creamy Camembert 115Gm', 'Egg and dairy provide protein, calcium, and essential nutrients for health 8', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1190.00, 1200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:27', '2024-10-25 05:45:15'),
(359, 'FMD218369', 'Sunaulo Anda (Egg) (12 pcs)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 11', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 245.00, 255.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:27', '2024-10-25 05:45:15'),
(360, 'FMD174388', 'Bajra Maize Powder (1 kg)', 'Basic description of Oil, Spice & Condiments 56', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 10.00, 10.00, ' Ba00001', 'Bajra', '[Rack 8]', NULL, '2024-09-24 15:03:28', '2024-10-25 05:45:13'),
(361, 'FMD217022', 'Coast Milk Powder (900 gms)', 'Basic description of Beverages 57', '4', 'Beverages', '5', 'Tea', '0', 0.00, 0.00, 1790.00, 1800.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:28', '2024-10-25 05:45:13'),
(362, 'FMD181556', 'N&H Trout Fish  (1.73 kg)', 'Basic description of Meat, Fish & Seafood 237', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 2412.00, 2422.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:28', '2024-10-25 05:45:12'),
(363, 'FMD174136', 'VCS Garlic Pepper Sausage (500 gm)', 'Basic description of Meat, Fish & Seafood 28', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 435.00, 445.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:28', '2024-10-25 05:45:17'),
(364, 'FMD306494', 'WOW Popcorn Family Pack Cheese', 'Basic description of Snacks & Dry Fruits 110', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 270.00, 280.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:03:28', '2024-10-25 05:45:14'),
(365, 'FMD174137', 'VCS Onion & Cheese Chicken Sausage (500 gm)', 'Basic description of Meat, Fish & Seafood 29', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 435.00, 445.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:29', '2024-10-25 05:45:17'),
(366, 'FMD174139', 'VCS Sausage Chilly Chicken (500 gm)', 'Basic description of Meat, Fish & Seafood 31', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 375.00, 385.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:29', '2024-10-25 05:45:17'),
(367, 'FMD193709', 'First Choice Danish Luxury Cookies (454 gm)', 'Basic description of Cookies & Biscuits 73', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 685.00, 695.00, 'PCS', 10.00, 10.00, ' Fi00001', 'First Choice', '[Rack 3]', NULL, '2024-09-24 15:03:29', '2024-10-25 05:45:15'),
(368, 'FMD195090', 'Britannia Sugar Free Biscuits (200 gm)', 'Basic description of Cookies & Biscuits 71', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, ' Br00001', 'Britannia', '[Rack 3]', NULL, '2024-09-24 15:03:29', '2024-10-25 05:45:15'),
(369, 'FMD194637', 'Britannia Toastea Milk Rusk  (310 gm)', 'Basic description of Cookies & Biscuits 72', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 180.00, 190.00, 'PCS', 10.00, 10.00, ' Br00001', 'Britannia', '[Rack 3]', NULL, '2024-09-24 15:03:29', '2024-10-25 05:45:15'),
(370, 'FMD174138', 'VCS Sausage Chicken Regular. Plain BF', 'Basic description of Meat, Fish & Seafood 30', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 375.00, 385.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:29', '2024-10-25 05:45:17'),
(371, 'FMD174389', 'Bajra Taichin Rice Powder (500 gm)', 'Basic description of Oil, Spice & Condiments 57', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 55.00, 65.00, 'PCS', 10.00, 10.00, ' Ba00001', 'Bajra', '[Rack 8]', NULL, '2024-09-24 15:03:29', '2024-10-25 05:45:13'),
(372, 'FMD331020', 'Whisper Choice Extra Long Sanitary Pads 6\'s Count', 'Basic description of Personal Care 45', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 48.00, 58.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:30', '2024-10-25 05:45:13'),
(373, 'FMD198820', 'Britannia Vita Marigold (300 gm)', 'Basic description of Cookies & Biscuits 70', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, ' Br00001', 'Britannia', '[Rack 3]', NULL, '2024-09-24 15:03:30', '2024-10-25 05:45:15'),
(374, 'FMD254324', 'Raw Mustard Oil (500 ml)', 'Basic description of Oil, Spice & Condiments 4', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:30', '2024-10-25 05:45:12'),
(375, 'FMD174150', 'GFM Chicken Boneless Breast (1 kg)', 'Basic description of Meat, Fish & Seafood 32', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 680.00, 690.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:30', '2024-10-25 05:45:17'),
(376, 'FMD193710', 'Britannia Little Hearts Biscuits (75 gm)', 'Basic description of Cookies & Biscuits 74', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 65.00, 75.00, 'PCS', 10.00, 10.00, ' Br00001', 'Britannia', '[Rack 3]', NULL, '2024-09-24 15:03:30', '2024-10-25 05:45:15'),
(377, 'FMD278534', 'Kellogg\'s Oats (400 gm)', 'Basic description of Breakfast 84', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 215.00, 225.00, 'PCS', 10.00, 10.00, ' Ke00001', 'Kelloggs', '[Rack 3]', NULL, '2024-09-24 15:03:30', '2024-10-25 05:45:15'),
(378, 'FMD310840', 'N&H Chicken Drumstick (1 kg)', 'Basic description of Meat, Fish & Seafood 134', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 890.00, 900.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:31', '2024-10-25 05:45:10'),
(379, 'FMD310792', 'Wheel Surf 500 gm', 'Basic description of Household 27', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 60.00, 70.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:31', '2024-10-25 05:45:16'),
(380, 'FMD310839', 'N&H Whole Chicken (1 kg)', 'Basic description of Meat, Fish & Seafood 133', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 590.00, 600.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:31', '2024-10-25 05:45:10'),
(381, 'FMD305271', 'Ariel Complete (500 gm)', 'Basic description of Household 25', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 225.00, 235.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:31', '2024-10-25 05:45:16'),
(382, 'FMD177820', 'Tomatoes (Acidic) (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 144', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:31', '2024-10-25 05:45:16'),
(383, 'FMD299198', 'All Out Ultra Power Slider Combi (45 ml)', 'Basic description of Household 29', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 130.00, 140.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:31', '2024-10-25 05:45:16'),
(384, 'FMD199203', 'Chocolate Swiss Roll (Large)', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 11', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:03:31', '2024-10-25 05:45:15'),
(385, 'FMD192048', 'Veg Spring Roll (6 pcs)', 'Basic description of Ready to Cook 43', '19', 'Ready to Cook', '30', 'More on Ready to Cook', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:31', '2024-10-25 05:45:13'),
(386, 'FMD253692', 'Kellogs Almond & Honey (300 gm)', 'Basic description of Breakfast 93', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 355.00, 365.00, 'PCS', 10.00, 10.00, ' Ke00001', 'Kelloggs', '[Rack 3]', NULL, '2024-09-24 15:03:31', '2024-10-25 05:45:15'),
(387, 'FMD283487', 'Nestle Gold Crunchy Flakes 250 gms', 'Basic description of Breakfast 90', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 155.00, 165.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 3]', NULL, '2024-09-24 15:03:32', '2024-10-25 05:45:15'),
(388, 'FMD215188', 'Pampers Baby Diaper Pants 76s Count (M)', 'Basic description of Baby Care 6', '1', 'Baby Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1828.00, 1838.00, 'PCS', -4.00, -4.00, ' Pa00001', 'Pamper', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:03:32', '2024-10-25 05:45:16'),
(389, 'FMD191082', 'Trust Icing Sugar -1 kg', 'Basic description of Baking & Cooking 6', '3', 'Baking & Cooking', '2', 'Baking Mixes', '0', 0.00, 0.00, 200.00, 210.00, 'PCS', 10.00, 10.00, ' Tr00001', 'Trust', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:03:32', '2024-10-25 05:45:16'),
(390, 'FMD177821', 'Carrot (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 145', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:32', '2024-10-25 05:45:16'),
(391, 'FMD177825', 'Bottle Gourd (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 149', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:32', '2024-10-25 05:45:16'),
(392, 'FMD177407', 'Rocket Leave (100 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 142', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:32', '2024-10-25 05:45:16'),
(393, 'FMD174097', 'German Bratwurst (BBQ Pork Sausage) (400 gms) - NH', 'Basic description of Meat, Fish & Seafood 303', '13', 'Meat, Fish & Seafood', '25', 'Pork', '0', 0.00, 0.00, 470.00, 480.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:03:32', '2024-10-25 05:45:12'),
(394, 'FMD174118', 'GFM Trout (1 kg)', 'Basic description of Meat, Fish & Seafood 249', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 1540.00, 1550.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:32', '2024-10-25 05:45:12'),
(395, 'FMD331214', 'N&H Chicken Drumstick (470 gm)', 'Basic description of Meat, Fish & Seafood 147', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 413.00, 423.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:33', '2024-10-25 05:45:10'),
(396, 'FMD191070', 'Snapin Rosemary  (25 gm)', 'Basic description of Oil, Spice & Condiments 29', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, ' Sn00001', 'Snapin', '[Rack 8]', NULL, '2024-09-24 15:03:33', '2024-10-25 05:45:13'),
(397, 'FMD177829', 'Pumpkin (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 153', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:33', '2024-10-25 05:45:16'),
(398, 'FMD239401', 'HS Chicken Mo:Mo (50 pcs)', 'Basic description of Ready to Cook 41', '19', 'Ready to Cook', '29', 'Momo', '0', 0.00, 0.00, 390.00, 400.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:33', '2024-10-25 05:45:13'),
(399, 'FMD177830', 'Sponge Gourd (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 154', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 65.00, 75.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:33', '2024-10-25 05:45:16'),
(400, 'FMD281006', 'Kelloggs Fruit and Nut  (1 kg ) Jar', 'Basic description of Breakfast 88', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 1189.00, 1199.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:33', '2024-10-25 05:45:15'),
(401, 'FMD272144', 'Kellogg\'s Oats (900 gm)', 'Basic description of Breakfast 94', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 350.00, 360.00, 'PCS', 10.00, 10.00, ' Ke00001', 'Kelloggs', '[Rack 3]', NULL, '2024-09-24 15:03:33', '2024-10-25 05:45:15'),
(402, 'FMD177835', 'Beans (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 159', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 100.00, 110.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:33', '2024-10-25 05:45:16'),
(403, 'FMD192047', 'Chicken Spring Roll (6 pcs)', 'Basic description of Ready to Cook 42', '19', 'Ready to Cook', '30', 'More on Ready to Cook', '0', 0.00, 0.00, 445.00, 455.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:33', '2024-10-25 05:45:13'),
(404, 'FMD177833', 'Capsicum (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 157', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:34', '2024-10-25 05:45:16'),
(405, 'FMD174171', 'Szechuan Chicken Wings (6 pcs/ 500 gm)', 'Basic description of Ready to Cook 44', '19', 'Ready to Cook', '30', 'More on Ready to Cook', '0', 0.00, 0.00, 485.00, 495.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:34', '2024-10-25 05:45:13'),
(406, 'FMD191083', 'Weikfield Drinking Chocolate (500 gm)', 'Basic description of Baking & Cooking 7', '3', 'Baking & Cooking', '2', 'Baking Mixes', '0', 0.00, 0.00, 490.00, 500.00, 'PCS', 10.00, 10.00, ' We00001', 'Weikfield', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:03:34', '2024-10-25 05:45:16'),
(407, 'FMD177837', 'Long Beans (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 161', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:34', '2024-10-25 05:45:16'),
(408, 'FMD174115', 'GFM Fish Basa Steak (1 kg)', 'Basic description of Meat, Fish & Seafood 250', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 585.00, 595.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:34', '2024-10-25 05:45:12'),
(409, 'FMD174096', 'English Sausage (Pork) (400 gms) - NH', 'Basic description of Meat, Fish & Seafood 302', '13', 'Meat, Fish & Seafood', '25', 'Pork', '0', 0.00, 0.00, 470.00, 480.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:03:34', '2024-10-25 05:45:12'),
(410, 'FMD191071', 'Snapin Thyme  (6 gm)', 'Basic description of Oil, Spice & Condiments 30', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, ' Sn00001', 'Snapin', '[Rack 8]', NULL, '2024-09-24 15:03:34', '2024-10-25 05:45:13'),
(411, 'FMD177865', 'Lettuce (Bunch)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 179', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 55.00, 65.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:34', '2024-10-25 05:45:16'),
(412, 'FMD226516', 'Nestle Koko Krunch Breakfast Cereal - Chocolate Flavour (350 gm)', 'Basic description of Breakfast 96', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 300.00, 310.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 3]', NULL, '2024-09-24 15:03:34', '2024-10-25 05:45:15'),
(413, 'FMD174167', 'Chicken Buffalo wings (400 gm)', 'Basic description of Ready to Cook 46', '19', 'Ready to Cook', '30', 'More on Ready to Cook', '0', 0.00, 0.00, 485.00, 495.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:35', '2024-10-25 05:45:13'),
(414, 'FMD174165', 'Buff Patty (500 gm)', 'Basic description of Ready to Cook 48', '19', 'Ready to Cook', '30', 'More on Ready to Cook', '0', 0.00, 0.00, 540.00, 550.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:35', '2024-10-25 05:45:13'),
(415, 'FMD174432', 'Lamjung (Washed) Filter Grind 250 gm', 'Basic description of Beverages 31', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 780.00, 790.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:35', '2024-10-25 05:45:11'),
(416, 'FMD199204', 'Chocolate Wheel Cookies', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 12', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 0.00, 0.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:03:35', '2024-10-25 05:45:15'),
(417, 'FMD385242', 'Hungritos Fries (2.5 kg)', 'Basic description of Meat, Fish & Seafood 192', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1040.00, 1050.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:35', '2024-10-25 05:45:11'),
(418, 'FMD189402', 'Roza Sardine In Tomato Sauce (185 gm)', 'Basic description of Ready To Eat 5', '20', 'Ready To Eat', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:36', '2024-10-25 05:45:13'),
(419, 'FMD177869', 'Pakchoy (Bunch)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 183', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 55.00, 65.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:36', '2024-10-25 05:45:16'),
(420, 'FMD308525', 'N&H Chicken Leg (320  gm)', 'Basic description of Meat, Fish & Seafood 137', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 246.00, 256.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:36', '2024-10-25 05:45:10'),
(421, 'FMD302610', 'Oateo Instant Oats (1 Kg)', 'Basic description of Breakfast 99', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 435.00, 445.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:36', '2024-10-25 05:45:15'),
(422, 'FMD177867', 'Celery (Bunch)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 181', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 30.00, 40.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:36', '2024-10-25 05:45:16'),
(423, 'FMD326084', 'N&H Chicken Drumstick (500 gm)', 'Basic description of Meat, Fish & Seafood 142', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 440.00, 450.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:36', '2024-10-25 05:45:10'),
(424, 'FMD177871', 'Spring Garlic (Bunch)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 185', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 40.00, 50.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:36', '2024-10-25 05:45:16'),
(425, 'FMD177875', 'Sweet Potatoes (1 Kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 189', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:37', '2024-10-25 05:45:16'),
(426, 'FMD177873', 'Neuro (Bunch)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 187', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 60.00, 70.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:37', '2024-10-25 05:45:16'),
(427, 'FMD192286', 'Bread Crumbs (500 gm)', 'Basic description of Oil, Spice & Condiments 31', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 310.00, 320.00, 'PCS', 10.00, 10.00, ' Un00001', 'Uncle Barns', '[Rack 8]', NULL, '2024-09-24 15:03:37', '2024-10-25 05:45:13'),
(428, 'FMD333072', 'Kelloggs Cornflakes Strawberry 300gm', 'Basic description of Breakfast 101', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 295.00, 305.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:37', '2024-10-25 05:45:15'),
(429, 'FMD174037', 'Celery', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 192', '8', 'Fruits & Vegetables', '14', 'Green Leafy Vegetables', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:37', '2024-10-25 05:45:16'),
(430, 'FMD283473', 'Druk Pineapple Slice in Syrup 850 gms', 'Basic description of Baking & Cooking 9', '3', 'Baking & Cooking', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 385.00, 395.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:03:37', '2024-10-25 05:45:16'),
(431, 'FMD177872', 'Spring Onion (Bunch)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 186', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 40.00, 50.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:37', '2024-10-25 05:45:16'),
(432, 'FMD174040', 'Hariyo Lasun (Green Garlic)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 195', '8', 'Fruits & Vegetables', '14', 'Green Leafy Vegetables', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:38', '2024-10-25 05:45:16'),
(433, 'FMD174038', 'Dhaniya (Coriander)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 193', '8', 'Fruits & Vegetables', '14', 'Green Leafy Vegetables', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:38', '2024-10-25 05:45:16'),
(434, 'FMD178060', 'Nestle Koko Krunch  Chocolate Flavour Chocos (350 gm)', 'Basic description of Breakfast 106', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 246.00, 256.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 3]', NULL, '2024-09-24 15:03:38', '2024-10-25 05:45:15'),
(435, 'FMD174043', 'Palak  (Spinach)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 198', '8', 'Fruits & Vegetables', '14', 'Green Leafy Vegetables', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:38', '2024-10-25 05:45:16'),
(436, 'FMD220352', 'Pintola Wholegrain Brown Rice Cakes (All Natural, Multigrain) 125g', 'Basic description of Ready To Eat 9', '20', 'Ready To Eat', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 245.00, 255.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:38', '2024-10-25 05:45:13'),
(437, 'FMD314231', 'Kellogg\'s  Oats (900 gm)', 'Basic description of Breakfast 104', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 350.00, 360.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:38', '2024-10-25 05:45:15'),
(438, 'FMD183342', 'Suji Toast (235 gm)', 'Basic description of Ready To Eat 3', '20', 'Ready To Eat', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, ' Br00001', 'Britannia', '[Rack 8]', NULL, '2024-09-24 15:03:38', '2024-10-25 05:45:13'),
(439, 'FMD174045', 'Rayo Saag ( Mustard Green)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 200', '8', 'Fruits & Vegetables', '14', 'Green Leafy Vegetables', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:38', '2024-10-25 05:45:16'),
(440, 'FMD192228', 'Pakchoy (200 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 205', '8', 'Fruits & Vegetables', '14', 'Green Leafy Vegetables', '0', 0.00, 0.00, 65.00, 75.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:39', '2024-10-25 05:45:16'),
(441, 'FMD192288', 'Hot & Spicy Tempura Flour (500 gm)', 'Basic description of Oil, Spice & Condiments 33', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 420.00, 430.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:39', '2024-10-25 05:45:13'),
(442, 'FMD188993', 'Parsley (Bunch)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 202', '8', 'Fruits & Vegetables', '14', 'Green Leafy Vegetables', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:39', '2024-10-25 05:45:16'),
(443, 'FMD174111', 'Prime Bacon Slice 250Gm-Thai', 'Basic description of Meat, Fish & Seafood 306', '13', 'Meat, Fish & Seafood', '25', 'Pork', '0', 0.00, 0.00, 890.00, 900.00, 'PCS', 10.00, 10.00, ' Vi00001', 'Vitali', '[Rack 7]', NULL, '2024-09-24 15:03:39', '2024-10-25 05:45:12'),
(444, 'FMD346158', 'N & H Chicken Drumstick (1.08 kg)', 'Basic description of Meat, Fish & Seafood 164', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 962.00, 972.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:39', '2024-10-25 05:45:10'),
(445, 'FMD191084', 'White Gante mula', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 204', '8', 'Fruits & Vegetables', '14', 'Green Leafy Vegetables', '0', 0.00, 0.00, 50.00, 60.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:39', '2024-10-25 05:45:16'),
(446, 'FMD174430', 'Nuwakot (Washed) Beans 500 gm', 'Basic description of Beverages 29', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 1240.00, 1250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:39', '2024-10-25 05:45:10'),
(447, 'FMD385516', 'Betagro Chicken Nuggets 500Gm', 'Basic description of Meat, Fish & Seafood 189', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1790.00, 1800.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:39', '2024-10-25 05:45:11'),
(448, 'FMD176404', 'Baggry Oats (1 kg)', 'Basic description of Breakfast 112', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 360.00, 370.00, 'PCS', 10.00, 10.00, ' Bo00001', 'Borges', '[Rack 3]', NULL, '2024-09-24 15:03:39', '2024-10-25 05:45:15'),
(449, 'FMD178482', 'Honey Corn Flakes (1 pcs)', 'Basic description of Breakfast 130', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 260.00, 270.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:40', '2024-10-25 05:45:15'),
(450, 'FMD203269', 'Multigrain Oats (1 kgs) - GAIA', 'Basic description of Breakfast 131', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 424.00, 434.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:40', '2024-10-25 05:45:15'),
(451, 'FMD174371', 'Gaia Muesli Real Fruit (400 gm)', 'Basic description of Breakfast 108', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 480.00, 490.00, 'PCS', 10.00, 10.00, ' GA00001', 'GAIA', '[Rack 3]', NULL, '2024-09-24 15:03:40', '2024-10-25 05:45:15'),
(452, 'FMD199207', 'Fruit Cake (Medium)', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 15', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 250.00, 260.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:03:40', '2024-10-25 05:45:15'),
(453, 'FMD199205', 'D/W Chocolate Prawling', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 13', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 180.00, 190.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:03:40', '2024-10-25 05:45:15'),
(454, 'FMD326083', 'N&H Chicken Drumstick (570 gm)', 'Basic description of Meat, Fish & Seafood 141', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 503.00, 513.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:40', '2024-10-25 05:45:10'),
(455, 'FMD325068', 'B Fizz 160ml', 'Basic description of Beverages 75', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 20.00, 30.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:40', '2024-10-25 05:45:13'),
(456, 'FMD178130', 'Parwal (Half kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 265', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 35.00, 45.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:03:40', '2024-10-25 05:45:16'),
(457, 'FMD269607', 'Aloo Bhujiya (400)', 'Basic description of Snacks & Dry Fruits 31', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 227.00, 237.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:40', '2024-10-25 05:45:13'),
(458, 'FMD174778', 'Vaseline Dry Skin Repair 400 ml', 'Basic description of Personal Care 1', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 365.00, 375.00, 'PCS', 10.00, 10.00, ' Va00001', 'Vaseline', '[Rack 8]', NULL, '2024-09-24 15:03:41', '2024-10-25 05:45:13'),
(459, 'FMD174207', 'Cornitos Nacho Crisps Peri Peri (140 gm)', 'Basic description of Snacks & Dry Fruits 43', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 235.00, 245.00, 'PCS', 10.00, 10.00, ' Co00001', 'Cornitos', '[Rack 8]', NULL, '2024-09-24 15:03:41', '2024-10-25 05:45:14'),
(460, 'FMD174278', 'How How Rice Stick (500 gm)', 'Basic description of Pasta & Noodles 27', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 350.00, 360.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:41', '2024-10-25 05:45:13'),
(461, 'FMD174381', 'Pringles Original (147 gm)', 'Basic description of Snacks & Dry Fruits 39', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 315.00, 325.00, 'PCS', 10.00, 10.00, ' Pr00002', 'Pringles', '[Rack 8]', NULL, '2024-09-24 15:03:41', '2024-10-25 05:45:14'),
(462, 'FMD174209', 'Cornitos Nacho Crisps Thai Sweet Chilli (140 gm)', 'Basic description of Snacks & Dry Fruits 45', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 235.00, 245.00, 'PCS', 10.00, 10.00, ' Co00001', 'Cornitos', '[Rack 8]', NULL, '2024-09-24 15:03:41', '2024-10-25 05:45:14'),
(463, 'FMD174382', 'Pringles Pizza (107 gm)', 'Basic description of Snacks & Dry Fruits 40', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 239.00, 249.00, 'PCS', 10.00, 10.00, ' Pr00002', 'Pringles', '[Rack 8]', NULL, '2024-09-24 15:03:41', '2024-10-25 05:45:14'),
(464, 'FMD298461', 'Nestle Kitkat (38.5gm)', 'Basic description of Sweets & Confectionery 66', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 50.00, 60.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 10]', NULL, '2024-09-24 15:03:42', '2024-10-25 05:45:15'),
(465, 'FMD256157', 'GAIA Tortilla Bread (Pkt)', 'Basic description of Ready to Cook 3', '19', 'Ready to Cook', '28', 'Veg Items', '0', 0.00, 0.00, 490.00, 500.00, 'PCS', 10.00, 10.00, ' GA00001', 'GAIA', '[Rack 8]', NULL, '2024-09-24 15:03:42', '2024-10-25 05:45:13'),
(466, 'FMD174208', 'Cornitos Nacho Crisps Sea Salt (140 gm)', 'Basic description of Snacks & Dry Fruits 44', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 235.00, 245.00, 'PCS', 10.00, 10.00, ' Co00001', 'Cornitos', '[Rack 8]', NULL, '2024-09-24 15:03:42', '2024-10-25 05:45:14'),
(467, 'FMD174247', 'Microwave Popcorn, Butter (273 gm)- American Garden', 'Basic description of Snacks & Dry Fruits 48', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 405.00, 415.00, 'PCS', 10.00, 10.00, ' Am00001', 'American Garden', '[Rack 8]', NULL, '2024-09-24 15:03:42', '2024-10-25 05:45:14'),
(468, 'FMD192186', 'Horlicks Chocolate (500gm)', 'Basic description of Beverages 98', '4', 'Beverages', '8', 'Milk Powder', '0', 0.00, 0.00, 358.00, 368.00, 'PCS', 10.00, 10.00, ' Ho00001', 'Horlicks', '[Rack 3]', NULL, '2024-09-24 15:03:42', '2024-10-25 05:45:15'),
(469, 'FMD174211', 'Cornitos Nacho Crisps Tomato Mexicana (140 gm)', 'Basic description of Snacks & Dry Fruits 47', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 235.00, 245.00, 'PCS', 10.00, 10.00, ' Co00001', 'Cornitos', '[Rack 8]', NULL, '2024-09-24 15:03:43', '2024-10-25 05:45:14'),
(470, 'FMD260585', 'Plain Tortila Bread 8\" Fresh 2 Go', 'Basic description of Ready to Cook 7', '19', 'Ready to Cook', '28', 'Veg Items', '0', 0.00, 0.00, 490.00, 500.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:43', '2024-10-25 05:45:13'),
(471, 'FMD192210', 'Women\'s Plus Horlicks Caramel (400g)', 'Basic description of Beverages 104', '4', 'Beverages', '8', 'Milk Powder', '0', 0.00, 0.00, 518.00, 528.00, 'PCS', 10.00, 10.00, ' Ho00001', 'Horlicks', '[Rack 3]', NULL, '2024-09-24 15:03:43', '2024-10-25 05:45:15'),
(472, 'FMD258147', 'Lambweston Seasoned Potato Wedges with Skin (2.5 kg)', 'Basic description of Ready to Cook 6', '19', 'Ready to Cook', '28', 'Veg Items', '0', 0.00, 0.00, 1065.00, 1075.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:43', '2024-10-25 05:45:13'),
(473, 'FMD199194', 'Banana Cake', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 2', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 250.00, 260.00, 'PCS', -10.00, -10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:03:50', '2024-10-25 05:45:15'),
(474, 'FMD174312', 'Red Cow Full Cream Milk Powder (1 kg)', 'Basic description of Beverages 107', '4', 'Beverages', '8', 'Milk Powder', '0', 0.00, 0.00, 2115.00, 2125.00, 'PCS', 10.00, 10.00, ' Re00001', 'Red Cow', '[Rack 3]', NULL, '2024-09-24 15:03:50', '2024-10-25 05:45:15'),
(475, 'FMD174337', 'Nestle Everyday Dairy Whitener (400 gm)', 'Basic description of Beverages 105', '4', 'Beverages', '8', 'Milk Powder', '0', 0.00, 0.00, 409.00, 419.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 3]', NULL, '2024-09-24 15:03:50', '2024-10-25 05:45:15'),
(476, 'FMD174210', 'Cornitos Nacho Crisps Tikka Masala (140 gm)', 'Basic description of Snacks & Dry Fruits 46', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 235.00, 245.00, 'PCS', 10.00, 10.00, ' Co00001', 'Cornitos', '[Rack 8]', NULL, '2024-09-24 15:03:50', '2024-10-25 05:45:14'),
(477, 'FMD192207', 'Horlicks Classic Malt (500gm)', 'Basic description of Beverages 101', '4', 'Beverages', '8', 'Milk Powder', '0', 0.00, 0.00, 390.00, 400.00, 'PCS', 10.00, 10.00, ' Ho00001', 'Horlicks', '[Rack 3]', NULL, '2024-09-24 15:03:50', '2024-10-25 05:45:15'),
(478, 'FMD192209', 'Mother Horlicks Vanilla (500g) with Dove Baby Soap FREE', 'Basic description of Beverages 103', '4', 'Beverages', '8', 'Milk Powder', '0', 0.00, 0.00, 887.00, 897.00, 'PCS', 10.00, 10.00, ' Ho00001', 'Horlicks', '[Rack 3]', NULL, '2024-09-24 15:03:50', '2024-10-25 05:45:15'),
(479, 'FMD174763', 'Hair Fall Rescue 330 ml', 'Basic description of Personal Care 3', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 365.00, 375.00, 'PCS', 10.00, 10.00, ' Do00001', 'Dove', '[Rack 8]', NULL, '2024-09-24 15:03:51', '2024-10-25 05:45:13'),
(480, 'FMD317313', 'N&H Chicken Drumstick (1600 kg)', 'Basic description of Meat, Fish & Seafood 118', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1270.00, 1280.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:51', '2024-10-25 05:45:10'),
(481, 'FMD192298', 'WOW Popcorn Buttersalt', 'Basic description of Snacks & Dry Fruits 73', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 10.00, 20.00, 'PCS', 10.00, 10.00, ' WO00001', 'WOW', '[Rack 8]', NULL, '2024-09-24 15:03:51', '2024-10-25 05:45:14'),
(482, 'FMD249501', 'Mayonnaise Real (887 ml)', 'Basic description of Breakfast 4', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 950.00, 960.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:51', '2024-10-25 05:45:15'),
(483, 'FMD174019', 'Pomegranate( Anar ) Big size - (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 13', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 440.00, 450.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:51', '2024-10-25 05:45:15'),
(484, 'FMD174396', 'Amul Plain Cheese Spread', 'Basic description of Breakfast 28', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 170.00, 180.00, 'PCS', 10.00, 10.00, ' Am00002', 'Amul', '[Rack 3]', NULL, '2024-09-24 15:03:51', '2024-10-25 05:45:15'),
(485, 'FMD174016', 'Mango Malda - (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 10', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 120.00, 130.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:51', '2024-10-25 05:45:15'),
(486, 'FMD188103', 'HS Banana Chini Champa (1 dozen)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 19', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:51', '2024-10-25 05:45:15'),
(487, 'FMD189020', 'Pomegranate ( Anar ) Small size', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 21', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 370.00, 380.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:52', '2024-10-25 05:45:15'),
(488, 'FMD174064', 'Multigrain Bread Loaf', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 30', '2', 'Bakery', '1', 'Fresh Bakes', '0', 0.00, 0.00, 125.00, 135.00, 'PCS', 6.00, 6.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:03:52', '2024-10-25 05:45:15'),
(489, 'FMD342457', 'Apricot Juice Marpha ( Bottle)', 'Basic description of Beverages 79', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:52', '2024-10-25 05:45:14'),
(490, 'FMD174234', 'Mayonnaise Real (473 ml)- American Garden', 'Basic description of Breakfast 25', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 500.00, 510.00, 'PCS', 10.00, 10.00, ' Am00001', 'American Garden', '[Rack 3]', NULL, '2024-09-24 15:03:52', '2024-10-25 05:45:15'),
(491, 'FMD199197', 'Cashewnut Macoroni', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 5', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 0.00, 0.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:03:52', '2024-10-25 05:45:15'),
(492, 'FMD363092', 'N&H Chicken Drumsticks (1.060 gm)', 'Basic description of Meat, Fish & Seafood 183', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 944.00, 954.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:52', '2024-10-25 05:45:11'),
(493, 'FMD214392', 'Green Peas Frozen HS', 'Basic description of Ready to Cook 15', '19', 'Ready to Cook', '28', 'Veg Items', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:53', '2024-10-25 05:45:13'),
(494, 'FMD369522', 'Pringles Cheese', 'Basic description of Snacks & Dry Fruits 79', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 265.00, 275.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:53', '2024-10-25 05:45:14'),
(495, 'FMD374452', 'Pringles Hot and Spicy', 'Basic description of Snacks & Dry Fruits 80', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 265.00, 275.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:53', '2024-10-25 05:45:14'),
(496, 'FMD183154', 'Cornitos Nacho Crisps Jalapeno (140 gm)', 'Basic description of Snacks & Dry Fruits 78', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 235.00, 245.00, 'PCS', 10.00, 10.00, ' Co00001', 'Cornitos', '[Rack 8]', NULL, '2024-09-24 15:03:53', '2024-10-25 05:45:14'),
(497, 'FMD198486', 'Apple (Rolpa) - (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 24', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:53', '2024-10-25 05:45:15'),
(498, 'FMD229745', 'N&H Pork Chop Thai (900 gm)', 'Basic description of Meat, Fish & Seafood 288', '13', 'Meat, Fish & Seafood', '25', 'Pork', '0', 0.00, 0.00, 1205.00, 1215.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:53', '2024-10-25 05:45:12'),
(499, 'FMD198558', 'Dragon Fruit (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 27', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 690.00, 700.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:53', '2024-10-25 05:45:15'),
(500, 'FMD198557', 'Naspati White(White Pearl)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 26', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 390.00, 400.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:54', '2024-10-25 05:45:15'),
(501, 'FMD198562', 'Red Kiwi (1 Kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 29', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 540.00, 550.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:54', '2024-10-25 05:45:15'),
(502, 'FMD325649', 'N&H Chicken Drumsticks (430 gm)', 'Basic description of Meat, Fish & Seafood 128', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 423.00, 433.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:54', '2024-10-25 05:45:10'),
(503, 'FMD174397', 'Bhanbhori Peanut Butter Creamy (340 gm)', 'Basic description of Breakfast 29', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 182.00, 192.00, 'PCS', 10.00, 10.00, ' Bh00001', 'Bhanbhori', '[Rack 3]', NULL, '2024-09-24 15:03:54', '2024-10-25 05:45:15'),
(504, 'FMD188186', 'Ladyfinger (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 71', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:54', '2024-10-25 05:45:16'),
(505, 'FMD204154', 'N&H Trout Fish (800 gm)', 'Basic description of Meat, Fish & Seafood 243', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 1110.00, 1120.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:54', '2024-10-25 05:45:12'),
(506, 'FMD188188', 'Potato Sanga (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 73', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:55', '2024-10-25 05:45:16'),
(507, 'FMD174069', 'French Bread', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 35', '2', 'Bakery', '1', 'Fresh Bakes', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 9.00, 9.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:03:55', '2024-10-25 05:45:16'),
(508, 'FMD176491', 'Chabaa Mixed Fruit Jam (240 gms)', 'Basic description of Breakfast 31', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, ' Co00001', 'Cornitos', '[Rack 3]', NULL, '2024-09-24 15:03:55', '2024-10-25 05:45:15'),
(509, 'FMD174183', 'VCS Chicken Momo (20 pcs)', 'Basic description of Ready to Cook 27', '19', 'Ready to Cook', '29', 'Momo', '0', 0.00, 0.00, 160.00, 170.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:55', '2024-10-25 05:45:13'),
(510, 'FMD177406', 'Kale Leves (100 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 141', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:55', '2024-10-25 05:45:16'),
(511, 'FMD281004', 'Gaia Muesli Diet (400 gm)', 'Basic description of Breakfast 86', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 450.00, 460.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:55', '2024-10-25 05:45:15'),
(512, 'FMD283488', 'Nestle Gold Crunchy Flakes 475 gms', 'Basic description of Breakfast 91', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 320.00, 330.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 3]', NULL, '2024-09-24 15:03:55', '2024-10-25 05:45:15');
INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_description`, `category_id`, `category_name`, `subcategory_id`, `subcategory_name`, `delivery_target_days`, `discount`, `actual_price`, `sell_price`, `mr_price`, `unit_info`, `available_quantity`, `stock_quantity`, `brand_id`, `brand_name`, `product_location`, `primary_image`, `created_at`, `updated_at`) VALUES
(513, 'FMD174180', 'French Fries (420 gm)', 'Basic description of Ready to Cook 24', '19', 'Ready to Cook', '28', 'Veg Items', '0', 0.00, 0.00, 295.00, 305.00, 'PCS', 10.00, 10.00, ' Hy00001', 'Hyfun', '[Rack 8]', NULL, '2024-09-24 15:03:55', '2024-10-25 05:45:13'),
(514, 'FMD177823', 'Tomato Cherry (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 147', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:56', '2024-10-25 05:45:16'),
(515, 'FMD281005', 'Kelloggs 0% Sugar Muesli (500 gm)', 'Basic description of Breakfast 87', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 540.00, 550.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:56', '2024-10-25 05:45:15'),
(516, 'FMD177826', 'Chilli (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 150', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:56', '2024-10-25 05:45:16'),
(517, 'FMD174109', 'N&H Green Peppercorn Lyoner Pork 250Gm', 'Basic description of Meat, Fish & Seafood 304', '13', 'Meat, Fish & Seafood', '25', 'Pork', '0', 0.00, 0.00, 840.00, 850.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:03:56', '2024-10-25 05:45:12'),
(518, 'FMD291773', 'Frooti Mango Drink(125 ml) - Parle Agro (Pack of 5)', 'Basic description of Beverages 67', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:56', '2024-10-25 05:45:13'),
(519, 'FMD177828', 'Okra (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 152', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:56', '2024-10-25 05:45:16'),
(520, 'FMD188339', 'Soy mIlk (300 ml)', 'Made from premium Hass avocados, AVO Guacamole is 100% natural and preservative free. Now, you can enjoy the authentic flavor of pure Mexican guacamole.   Add it to your salad, spread it on your multigrain bread, create the perfect veggie dip, or simply s', '9', 'Healthy Choice', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 65.00, 75.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:56', '2024-10-25 05:45:16'),
(521, 'FMD188322', 'Chiya Seeds (200 gm)', 'Made from premium Hass avocados, AVO Guacamole is 100% natural and preservative free. Now, you can enjoy the authentic flavor of pure Mexican guacamole.   Add it to your salad, spread it on your multigrain bread, create the perfect veggie dip, or simply s', '9', 'Healthy Choice', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:56', '2024-10-25 05:45:16'),
(522, 'FMD230993', 'Pampers Diapers 66s (XL)', 'Basic description of Baby Care 15', '1', 'Baby Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 2468.00, 2478.00, 'PCS', 10.00, 10.00, ' Pa00001', 'Pamper', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:03:56', '2024-10-25 05:45:13'),
(523, 'FMD353371', 'N&H Chicken Drumstick (1.260 Kg)', 'Basic description of Meat, Fish & Seafood 172', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1124.00, 1134.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:57', '2024-10-25 05:45:11'),
(524, 'FMD183379', 'Mix Pack (1000 gms)- Blissball', 'Made from premium Hass avocados, AVO Guacamole is 100% natural and preservative free. Now, you can enjoy the authentic flavor of pure Mexican guacamole.   Add it to your salad, spread it on your multigrain bread, create the perfect veggie dip, or simply s', '9', 'Healthy Choice', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 3490.00, 3500.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:57', '2024-10-25 05:45:16'),
(525, 'FMD180393', 'Mum_s Chia Seeds 330g', 'Made from premium Hass avocados, AVO Guacamole is 100% natural and preservative free. Now, you can enjoy the authentic flavor of pure Mexican guacamole.   Add it to your salad, spread it on your multigrain bread, create the perfect veggie dip, or simply s', '9', 'Healthy Choice', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 550.00, 560.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:57', '2024-10-25 05:45:16'),
(526, 'FMD180392', 'Himalayan Digestive 500g', 'Made from premium Hass avocados, AVO Guacamole is 100% natural and preservative free. Now, you can enjoy the authentic flavor of pure Mexican guacamole.   Add it to your salad, spread it on your multigrain bread, create the perfect veggie dip, or simply s', '9', 'Healthy Choice', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 210.00, 220.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:57', '2024-10-25 05:45:16'),
(527, 'FMD183380', 'Mixed Pack (200 gms)- Blissball', 'Made from premium Hass avocados, AVO Guacamole is 100% natural and preservative free. Now, you can enjoy the authentic flavor of pure Mexican guacamole.   Add it to your salad, spread it on your multigrain bread, create the perfect veggie dip, or simply s', '9', 'Healthy Choice', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 880.00, 890.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:57', '2024-10-25 05:45:16'),
(528, 'FMD379767', 'Roza Tuna', 'Basic description of Packaged & Canned Foods 1', '15', 'Packaged & Canned Foods', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:57', '2024-10-25 05:45:13'),
(529, 'FMD179600', 'India Gate Basmati Rice Classic 1kg', 'Basic description of Rice & Pulses 2', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 335.00, 345.00, 'PCS', 10.00, 10.00, ' In00001', 'India Gate', '[Rack 8]', NULL, '2024-09-24 15:03:57', '2024-10-25 05:45:13'),
(530, 'FMD221832', 'Rex Baking Powder 100g', 'Basic description of Baking & Cooking 17', '3', 'Baking & Cooking', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 38.00, 48.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:03:58', '2024-10-25 05:45:16'),
(531, 'FMD256910', 'Rocket Leave (100gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 210', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 50.00, 60.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:58', '2024-10-25 05:45:16'),
(532, 'FMD206692', 'Roza Tuna Flakes in Brine', 'Basic description of Ready To Eat 13', '20', 'Ready To Eat', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, ' Re00001', 'Red Cow', '[Rack 8]', NULL, '2024-09-24 15:03:58', '2024-10-25 05:45:13'),
(533, 'FMD176406', 'Lawrence Mills Choco Crunch (375 gm)', 'Basic description of Breakfast 114', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:58', '2024-10-25 05:45:15'),
(534, 'FMD301631', 'Rayo (200 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 209', '8', 'Fruits & Vegetables', '14', 'Green Leafy Vegetables', '0', 0.00, 0.00, 30.00, 40.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:58', '2024-10-25 05:45:16'),
(535, 'FMD189346', 'Coated Green Peas Wasabi (150 gm)- Cornitos', 'Basic description of Ready To Eat 7', '20', 'Ready To Eat', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 250.00, 260.00, 'PCS', 10.00, 10.00, ' Co00001', 'Cornitos', '[Rack 8]', NULL, '2024-09-24 15:03:58', '2024-10-25 05:45:13'),
(536, 'FMD314895', 'Appy Fizz 500ML', 'Basic description of Beverages 71', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:58', '2024-10-25 05:45:13'),
(537, 'FMD342094', 'Pringles Saucy BBQ', 'Basic description of Snacks & Dry Fruits 82', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 265.00, 275.00, 'PCS', 10.00, 10.00, ' Pr00002', 'Pringles', '[Rack 8]', NULL, '2024-09-24 15:03:58', '2024-10-25 05:45:14'),
(538, 'FMD189246', 'Nestle Milo (180 ml)', 'Basic description of Beverages 80', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 3]', NULL, '2024-09-24 15:03:58', '2024-10-25 05:45:14'),
(539, 'FMD189349', 'Lightly Salted Roasted Cashews (25 gm)- Cornitos', 'Basic description of Ready To Eat 8', '20', 'Ready To Eat', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 10.00, 10.00, ' Co00001', 'Cornitos', '[Rack 8]', NULL, '2024-09-24 15:03:58', '2024-10-25 05:45:13'),
(540, 'FMD220353', 'Pintola Wholegrain Brown Rice Cakes (All Natural, Salted) 125g', 'Basic description of Ready To Eat 10', '20', 'Ready To Eat', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 245.00, 255.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:03:59', '2024-10-25 05:45:13'),
(541, 'FMD342315', 'Lauka (1.7 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 217', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 143.00, 153.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:59', '2024-10-25 05:45:16'),
(542, 'FMD310682', 'Tong Garden Party Snacks 40Gms', 'Basic description of Snacks & Dry Fruits 117', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 50.00, 60.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:03:59', '2024-10-25 05:45:14'),
(543, 'FMD305285', 'Tomato (Half Kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 214', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:03:59', '2024-10-25 05:45:16'),
(544, 'FMD205798', 'Local Eggs (1 Crate)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 9', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 490.00, 500.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:03:59', '2024-10-25 05:45:15'),
(545, 'FMD207528', 'Chicken Drumstick (900 gm - 1 pc)', 'Basic description of Meat, Fish & Seafood 99', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 555.00, 565.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:03:59', '2024-10-25 05:45:17'),
(546, 'FMD179953', 'Ghee', 'Egg and dairy provide protein, calcium, and essential nutrients for health 12', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 575.00, 585.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:00', '2024-10-25 05:45:15'),
(547, 'FMD358293', 'Bottle Gourd (2.5 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 215', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 215.00, 225.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:00', '2024-10-25 05:45:16'),
(548, 'FMD207530', 'Chicken Breast (500 gm)', 'Basic description of Meat, Fish & Seafood 101', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:00', '2024-10-25 05:45:17'),
(549, 'FMD174403', 'Kellogg\'s  Corn Flakes - Original Super Saver Pack (875 gm)', 'Basic description of Breakfast 117', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 689.00, 699.00, 'PCS', 10.00, 10.00, ' Ke00001', 'Kelloggs', '[Rack 3]', NULL, '2024-09-24 15:04:00', '2024-10-25 05:45:15'),
(550, 'FMD221108', 'AMP Chicken Lolly (635 gm)', 'Basic description of Meat, Fish & Seafood 89', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 384.00, 394.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:00', '2024-10-25 05:45:17'),
(551, 'FMD203271', 'VCS Chicken Drumstick  (700 gm)', 'Basic description of Meat, Fish & Seafood 102', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 450.00, 460.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:00', '2024-10-25 05:45:17'),
(552, 'FMD331218', 'N&H Chicken Leg (490 gm)', 'Basic description of Meat, Fish & Seafood 151', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 431.00, 441.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:00', '2024-10-25 05:45:10'),
(553, 'FMD174418', 'Walnuts (500g)', 'Basic description of Snacks & Dry Fruits 122', '22', 'Snacks & Dry Fruits', '33', 'Dry Fruits', '0', 0.00, 0.00, 765.00, 775.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:00', '2024-10-25 05:45:14'),
(554, 'FMD204017', 'Chicken Drumstick (520 gm)', 'Basic description of Meat, Fish & Seafood 105', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 328.00, 338.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:01', '2024-10-25 05:45:17'),
(555, 'FMD193715', 'Chicken Lolley (675 gm)', 'Basic description of Meat, Fish & Seafood 109', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 361.00, 371.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:01', '2024-10-25 05:45:17'),
(556, 'FMD310683', 'Tong Garden Salted Penuts 160Gms Pouch', 'Basic description of Snacks & Dry Fruits 118', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 215.00, 225.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:01', '2024-10-25 05:45:14'),
(557, 'FMD174416', 'Cashew (500g)', 'Basic description of Snacks & Dry Fruits 120', '22', 'Snacks & Dry Fruits', '33', 'Dry Fruits', '0', 0.00, 0.00, 845.00, 855.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:01', '2024-10-25 05:45:14'),
(558, 'FMD369517', 'Sunflower Oil Sunflow', 'Basic description of Oil, Spice & Condiments 10', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 205.00, 215.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:01', '2024-10-25 05:45:12'),
(559, 'FMD178058', 'Pasta Sauce, Traditional (397 gm)', 'Basic description of Soup, Sauce & Seasonings 4', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 260.00, 270.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:01', '2024-10-25 05:45:14'),
(560, 'FMD197055', 'Chicken Wings (436 gm)', 'Basic description of Meat, Fish & Seafood 116', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 208.00, 218.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:01', '2024-10-25 05:45:10'),
(561, 'FMD174049', 'Quail Egg (per pc)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 14', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, -2.00, 8.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:02', '2024-10-25 05:45:15'),
(562, 'FMD174053', 'Yak Cheese (200 gm)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 18', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 470.00, 480.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:02', '2024-10-25 05:45:15'),
(563, 'FMD342459', 'Jaggery Powder (Pkt)', 'Basic description of Oil, Spice & Condiments 8', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:02', '2024-10-25 05:45:12'),
(564, 'FMD174056', 'Cow Ghee (500 ml) Bottle', 'Egg and dairy provide protein, calcium, and essential nutrients for health 21', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 765.00, 775.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:02', '2024-10-25 05:45:15'),
(565, 'FMD229746', 'VCS Chicken Nuggets (500 gm)', 'Basic description of Meat, Fish & Seafood 211', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 305.00, 315.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:03', '2024-10-25 05:45:11'),
(566, 'FMD174443', 'Hong Kong Manchow Noodle Soup', 'Basic description of Soup, Sauce & Seasonings 5', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 94.00, 104.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:03', '2024-10-25 05:45:14'),
(567, 'FMD177806', 'N&H Trout Fish (1.3 kg)', 'Basic description of Meat, Fish & Seafood 239', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 1810.00, 1820.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:03', '2024-10-25 05:45:12'),
(568, 'FMD188318', 'Basmati Local Rice (1 kg)', 'Basic description of Rice & Pulses 38', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 210.00, 220.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:03', '2024-10-25 05:45:13'),
(569, 'FMD177552', 'Mum\'s Mustard Sauce (200 gm)', 'Basic description of Soup, Sauce & Seasonings 2', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 54.00, 64.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:03', '2024-10-25 05:45:14'),
(570, 'FMD174059', 'Sweet Yogurt (1 Ltr)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 24', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 210.00, 220.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:03', '2024-10-25 05:45:15'),
(571, 'FMD189022', '??? (Jumla Mugu,Dolpa) (1 kg)', 'Basic description of Pure Organic Items 1', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1290.00, 1300.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:04', '2024-10-25 05:45:13'),
(572, 'FMD188320', 'Jeera Masino Local Rice (1 kg)', 'Basic description of Rice & Pulses 40', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:04', '2024-10-25 05:45:13'),
(573, 'FMD177562', 'Golden Eggs (12 pcs)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 32', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 245.00, 255.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:04', '2024-10-25 05:45:15'),
(574, 'FMD177411', 'Plain Yogurt (1 Ltr)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 30', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:04', '2024-10-25 05:45:15'),
(575, 'FMD177564', 'Golden Eggs (6 pcs)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 34', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 120.00, 130.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:04', '2024-10-25 05:45:15'),
(576, 'FMD174342', 'Nestle a+ Nourish Toned Milk (1 Litre) Tetra Pack', 'Egg and dairy provide protein, calcium, and essential nutrients for health 27', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 205.00, 215.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:04', '2024-10-25 05:45:15'),
(577, 'FMD194680', 'Chicken Wings (1.66 kg)', 'Basic description of Meat, Fish & Seafood 114', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1235.00, 1245.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:05', '2024-10-25 05:45:10'),
(578, 'FMD177563', 'Golden Eggs (30 pcs)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 33', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 615.00, 625.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:05', '2024-10-25 05:45:15'),
(579, 'FMD174081', 'Salmon fillet (Norway) (1 kg) - NH', 'Basic description of Meat, Fish & Seafood 260', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 6190.00, 6200.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:04:05', '2024-10-25 05:45:12'),
(580, 'FMD174400', 'Amul Sliced Cheese (200 gm)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 37', '7', 'Egg & Dairy', '11', 'Cheese', '0', 0.00, 0.00, 235.00, 245.00, 'PCS', 10.00, 10.00, ' Am00002', 'Amul', '[Rack 3]', NULL, '2024-09-24 15:04:05', '2024-10-25 05:45:15'),
(581, 'FMD174460', 'Maggi Hot & Sweet Ketchup (500 gm)', 'Basic description of Soup, Sauce & Seasonings 12', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 205.00, 215.00, 'PCS', 10.00, 10.00, ' Ma00001', 'Maggi', '[Rack 9]', NULL, '2024-09-24 15:04:05', '2024-10-25 05:45:14'),
(582, 'FMD232584', 'AMP Chicken Lolly (790 gm)', 'Basic description of Meat, Fish & Seafood 203', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 479.00, 489.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:05', '2024-10-25 05:45:11'),
(583, 'FMD215076', 'N & H Trout Fish (690 gm)', 'Basic description of Meat, Fish & Seafood 241', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 1059.00, 1069.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:05', '2024-10-25 05:45:12'),
(584, 'FMD174447', 'Thai Vegetable Soup', 'Basic description of Soup, Sauce & Seasonings 9', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 94.00, 104.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:05', '2024-10-25 05:45:14'),
(585, 'FMD174078', 'Sicilian Fresh Raw Italian Sausage 400Gm N&H', 'Basic description of Meat, Fish & Seafood 259', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 740.00, 750.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:05', '2024-10-25 05:45:12'),
(586, 'FMD174659', 'Kissan Fresh Tomato (500 gm)', 'Basic description of Soup, Sauce & Seasonings 10', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 10.00, 10.00, ' Ki00001', 'Kissan', '[Rack 9]', NULL, '2024-09-24 15:04:05', '2024-10-25 05:45:14'),
(587, 'FMD321070', 'Frozen Pangasius Steak 500Gm', 'Basic description of Meat, Fish & Seafood 266', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:06', '2024-10-25 05:45:12'),
(588, 'FMD230989', 'Pampers Diapers 34s (XL)', 'Basic description of Baby Care 11', '1', 'Baby Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1268.00, 1278.00, 'PCS', 5.00, 5.00, ' Pa00001', 'Pamper', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:04:06', '2024-10-25 05:45:10'),
(589, 'FMD189024', '???? ???? (Jumla ) (1 kg)', 'Basic description of Pure Organic Items 3', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 220.00, 230.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:06', '2024-10-25 05:45:13'),
(590, 'FMD221853', 'Knorr Thick Tomato Soup 53g', 'Basic description of Soup, Sauce & Seasonings 56', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:06', '2024-10-25 05:45:14'),
(591, 'FMD174442', 'N&H Basa Fish Fillet (2.06 kg)', 'Basic description of Meat, Fish & Seafood 264', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 1226.00, 1236.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:04:06', '2024-10-25 05:45:12'),
(592, 'FMD177346', 'N&H Trout Fish (0.740 kg)', 'Basic description of Meat, Fish & Seafood 262', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 1026.00, 1036.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:06', '2024-10-25 05:45:12'),
(593, 'FMD221847', 'Knorr Chinese Chilli Gravy Mix 51g', 'Basic description of Soup, Sauce & Seasonings 50', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:06', '2024-10-25 05:45:14'),
(594, 'FMD284088', 'Current Chicken Hot & Spicy Noodles 100g', 'Basic description of Pasta & Noodles 1', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, ' Te00001', 'Test Brand 1', '[Rack 8]', NULL, '2024-09-24 15:04:07', '2024-10-25 05:45:13'),
(595, 'FMD221846', 'Knorr Chicken Delite 42g', 'Basic description of Soup, Sauce & Seasonings 49', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 78.00, 88.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:07', '2024-10-25 05:45:14'),
(596, 'FMD221849', 'Knorr Italian Mushroom Premium 48g', 'Basic description of Soup, Sauce & Seasonings 52', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 95.00, 105.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:07', '2024-10-25 05:45:14'),
(597, 'FMD189345', 'Chunky Salsa Dip Mild (330 gm)- Cornitos', 'Basic description of Soup, Sauce & Seasonings 60', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 432.00, 442.00, 'PCS', 10.00, 10.00, ' Co00001', 'Cornitos', '[Rack 9]', NULL, '2024-09-24 15:04:07', '2024-10-25 05:45:14'),
(598, 'FMD383705', 'Dragon Soy Sauce (750 ml)', 'Basic description of Soup, Sauce & Seasonings 65', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 100.00, 110.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:07', '2024-10-25 05:45:14'),
(599, 'FMD221850', 'Knorr Mix Veg Soup 45g', 'Basic description of Soup, Sauce & Seasonings 53', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:07', '2024-10-25 05:45:14'),
(600, 'FMD221852', 'Knorr Sweet Corn Chicken Soup 42g', 'Basic description of Soup, Sauce & Seasonings 55', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 78.00, 88.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:08', '2024-10-25 05:45:14'),
(601, 'FMD188323', 'Pumpkin Seeds (500 gm)', 'Basic description of Soup, Sauce & Seasonings 61', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 715.00, 725.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:08', '2024-10-25 05:45:14'),
(602, 'FMD177419', 'Flax Seed (500 gm)', 'Basic description of Soup, Sauce & Seasonings 57', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 265.00, 275.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:08', '2024-10-25 05:45:14'),
(603, 'FMD189343', 'Chunky Salsa Dip Hot (330 gm)- Cornitos', 'Basic description of Soup, Sauce & Seasonings 59', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 432.00, 442.00, 'PCS', 10.00, 10.00, ' Co00001', 'Cornitos', '[Rack 9]', NULL, '2024-09-24 15:04:08', '2024-10-25 05:45:14'),
(604, 'FMD191077', 'Fragata Capers (99 gm)', 'Basic description of Soup, Sauce & Seasonings 62', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, ' Fr00001', 'Fragata', '[Rack 9]', NULL, '2024-09-24 15:04:08', '2024-10-25 05:45:14'),
(605, 'FMD189353', 'Figaro Black Olives (340 gm)', 'Basic description of Soup, Sauce & Seasonings 63', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 270.00, 280.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:08', '2024-10-25 05:45:14'),
(606, 'FMD189342', 'Cheesy Dip Jalapeno (100gm)- Cornitos', 'Basic description of Soup, Sauce & Seasonings 58', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, ' Co00001', 'Cornitos', '[Rack 9]', NULL, '2024-09-24 15:04:09', '2024-10-25 05:45:14'),
(607, 'FMD246209', 'Maggi Tomato Ketchup (200 gm)', 'Basic description of Soup, Sauce & Seasonings 69', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 120.00, 130.00, 'PCS', 10.00, 10.00, ' Ma00001', 'Maggi', '[Rack 9]', NULL, '2024-09-24 15:04:09', '2024-10-25 05:45:14'),
(608, 'FMD317080', 'Roza Sweet Chilli Sauce (320 gm)', 'Basic description of Soup, Sauce & Seasonings 66', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 255.00, 265.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:09', '2024-10-25 05:45:14'),
(609, 'FMD174313', 'Rasna Fruit Plus- Mango (1 kg)', 'Basic description of Beverages 90', '4', 'Beverages', '7', 'Juice Powder', '0', 0.00, 0.00, 460.00, 470.00, 'PCS', 10.00, 10.00, ' Ra00001', 'Rasna', '[Rack 3]', NULL, '2024-09-24 15:04:09', '2024-10-25 05:45:14'),
(610, 'FMD189354', 'Figaro Green Olives (340 gm)', 'Basic description of Soup, Sauce & Seasonings 64', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 270.00, 280.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:09', '2024-10-25 05:45:14'),
(611, 'FMD319293', 'Frozen Pangasius Fillet 1Kg', 'Basic description of Meat, Fish & Seafood 269', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 890.00, 900.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:09', '2024-10-25 05:45:12'),
(612, 'FMD174454', 'Munch Nuts 32 gms', 'Basic description of Sweets & Confectionery 7', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 30.00, 40.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 9]', NULL, '2024-09-24 15:04:09', '2024-10-25 05:45:14'),
(613, 'FMD349795', 'Dragon Mayonnaise (900 gm)', 'Basic description of Soup, Sauce & Seasonings 67', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 440.00, 450.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:10', '2024-10-25 05:45:14'),
(614, 'FMD227715', 'American Garden Three Cheese Pasta Sauce (397 gms)', 'Basic description of Soup, Sauce & Seasonings 68', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 315.00, 325.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:10', '2024-10-25 05:45:14'),
(615, 'FMD174449', 'Nestle Kitkat Dessert Brownie Kube 50 gms', 'Basic description of Sweets & Confectionery 2', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 9]', NULL, '2024-09-24 15:04:10', '2024-10-25 05:45:14'),
(616, 'FMD283486', 'American Garden Msutard Paste 227 gms', 'Basic description of Soup, Sauce & Seasonings 71', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 265.00, 275.00, 'PCS', 10.00, 10.00, ' Am00001', 'American Garden', '[Rack 9]', NULL, '2024-09-24 15:04:10', '2024-10-25 05:45:14'),
(617, 'FMD191085', 'Sweet Lemon ( Mausam)  (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 23', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 200.00, 210.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:10', '2024-10-25 05:45:15'),
(618, 'FMD177353', 'Olay TE Touch of Foundation Cream Thai (50 gm)', 'Basic description of Personal Care 13', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1089.00, 1099.00, 'PCS', 10.00, 10.00, ' Ol00001', 'Olay', '[Rack 8]', NULL, '2024-09-24 15:04:10', '2024-10-25 05:45:13'),
(619, 'FMD198556', 'Apple Red (Mustang) (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 25', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:11', '2024-10-25 05:45:15'),
(620, 'FMD177351', 'Olay Regenerist MSC Day (50 gm)', 'Basic description of Personal Care 11', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1989.00, 1999.00, 'PCS', 10.00, 10.00, ' Ol00001', 'Olay', '[Rack 8]', NULL, '2024-09-24 15:04:11', '2024-10-25 05:45:13'),
(621, 'FMD174182', 'N&H Green Peas (1 KG)', 'Basic description of Ready to Cook 16', '19', 'Ready to Cook', '28', 'Veg Items', '0', 0.00, 0.00, 260.00, 270.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 8]', NULL, '2024-09-24 15:04:11', '2024-10-25 05:45:13'),
(622, 'FMD355792', 'N&H Chicken Leg (550 gm)', 'Basic description of Meat, Fish & Seafood 181', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 485.00, 495.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:11', '2024-10-25 05:45:11'),
(623, 'FMD174398', 'Bhanbhori Peanut Butter Crunchy (340 gm)', 'Basic description of Breakfast 30', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 182.00, 192.00, 'PCS', 10.00, 10.00, ' Bh00001', 'Bhanbhori', '[Rack 3]', NULL, '2024-09-24 15:04:11', '2024-10-25 05:45:15'),
(624, 'FMD189356', 'Gaia Green Tea Cardamom 25s', 'Basic description of Beverages 46', '4', 'Beverages', '5', 'Tea', '0', 0.00, 0.00, 294.00, 304.00, 'PCS', 10.00, 10.00, ' GA00001', 'GAIA', '[Rack 3]', NULL, '2024-09-24 15:04:11', '2024-10-25 05:45:13'),
(625, 'FMD177354', 'Pantene  SS (650 ml)', 'Basic description of Personal Care 14', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 555.00, 565.00, 'PCS', 10.00, 10.00, ' Pa00002', 'Pantene', '[Rack 8]', NULL, '2024-09-24 15:04:11', '2024-10-25 05:45:13'),
(626, 'FMD176613', 'ADH Buff Mo:Mo (50 pcs)', 'Basic description of Ready to Cook 32', '19', 'Ready to Cook', '29', 'Momo', '0', 0.00, 0.00, 365.00, 375.00, 'PCS', 10.00, 10.00, ' Ad00001', 'Adhunik', '[Rack 8]', NULL, '2024-09-24 15:04:11', '2024-10-25 05:45:13'),
(627, 'FMD338488', 'N&H Chicken Drumstick (490 gm)', 'Basic description of Meat, Fish & Seafood 159', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 431.00, 441.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:12', '2024-10-25 05:45:10'),
(628, 'FMD198561', 'Blackberry Frozen (250 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 28', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 465.00, 475.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:12', '2024-10-25 05:45:15'),
(629, 'FMD177355', 'Pantene Hair Fall (650 ml)', 'Basic description of Personal Care 15', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 555.00, 565.00, 'PCS', 10.00, 10.00, ' Pa00002', 'Pantene', '[Rack 8]', NULL, '2024-09-24 15:04:12', '2024-10-25 05:45:13'),
(630, 'FMD191065', 'Snapin Nutmeg Powder (50 gm)', 'Basic description of Oil, Spice & Condiments 24', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 185.00, 195.00, 'PCS', 10.00, 10.00, ' Sn00001', 'Snapin', '[Rack 7]', NULL, '2024-09-24 15:04:12', '2024-10-25 05:45:13'),
(631, 'FMD173996', 'Bhede Khursani (Capsicum) (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 92', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:12', '2024-10-25 05:45:16'),
(632, 'FMD173999', 'Cauliflower (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 95', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:12', '2024-10-25 05:45:16'),
(633, 'FMD174101', 'N&H Hot Dog Chicken Sausage (400 gms)', 'Basic description of Meat, Fish & Seafood 13', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 450.00, 460.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:04:12', '2024-10-25 05:45:17'),
(634, 'FMD189008', 'Bodi Dana', 'Basic description of Rice & Pulses 26', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 260.00, 270.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:12', '2024-10-25 05:45:13'),
(635, 'FMD173997', 'Bhindi (Lady’s Finger) (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 93', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 45.00, 55.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:13', '2024-10-25 05:45:16'),
(636, 'FMD180349', 'Whisper Ultra Soft (XL+ 30s)', 'Basic description of Personal Care 42', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 406.00, 416.00, 'PCS', 10.00, 10.00, ' Wh00001', 'Whisper', '[Rack 8]', NULL, '2024-09-24 15:04:13', '2024-10-25 05:45:13'),
(637, 'FMD174073', 'N&H Chicken Legs (1 kg)', 'Basic description of Meat, Fish & Seafood 3', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 890.00, 900.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:04:13', '2024-10-25 05:45:17'),
(638, 'FMD174108', 'N&H Pet Food Chicken (500 gms)', 'Basic description of Meat, Fish & Seafood 14', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:04:13', '2024-10-25 05:45:17'),
(639, 'FMD174079', 'Ambrosi Parmiagiano Reggiano 200 Gm', 'Basic description of Meat, Fish & Seafood 5', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1310.00, 1320.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:13', '2024-10-25 05:45:17'),
(640, 'FMD180347', 'Dettol Soap Org (75g - 3+1)', 'Basic description of Personal Care 40', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 158.00, 168.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:14', '2024-10-25 05:45:13'),
(641, 'FMD174080', 'N&H Don Hungarian Mild Salami Roll (200 gm)', 'Basic description of Meat, Fish & Seafood 6', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1540.00, 1550.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:14', '2024-10-25 05:45:17'),
(642, 'FMD174412', 'Britannia Vita  Marigold (300g)', 'Basic description of Cookies & Biscuits 62', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, ' Br00001', 'Britannia', '[Rack 3]', NULL, '2024-09-24 15:04:14', '2024-10-25 05:45:15'),
(643, 'FMD180348', 'Whisper Ultra Night (XL 30)', 'Basic description of Personal Care 41', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 628.00, 638.00, 'PCS', 10.00, 10.00, ' Wh00001', 'Whisper', '[Rack 8]', NULL, '2024-09-24 15:04:14', '2024-10-25 05:45:13'),
(644, 'FMD174387', 'Bajra Cumin Powder (500 gm)', 'Basic description of Oil, Spice & Condiments 55', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 675.00, 685.00, 'PCS', 10.00, 10.00, ' Ba00001', 'Bajra', '[Rack 8]', NULL, '2024-09-24 15:04:14', '2024-10-25 05:45:13'),
(645, 'FMD174091', 'N&H B/L Chicken Cubes (500 gms)', 'Basic description of Meat, Fish & Seafood 11', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 590.00, 600.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:04:14', '2024-10-25 05:45:17'),
(646, 'FMD174411', 'Britannia Wheat Rusk (170g)', 'Basic description of Cookies & Biscuits 61', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, ' Br00001', 'Britannia', '[Rack 3]', NULL, '2024-09-24 15:04:14', '2024-10-25 05:45:15'),
(647, 'FMD174094', 'N&H Chicken Jumbo Sausage (400 gms)', 'Basic description of Meat, Fish & Seafood 9', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 470.00, 480.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:14', '2024-10-25 05:45:17'),
(648, 'FMD174378', 'Jwano (500gm)', 'Basic description of Oil, Spice & Condiments 53', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 215.00, 225.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:14', '2024-10-25 05:45:13'),
(649, 'FMD230988', 'Pampers Diapers 23s (LG)', 'Basic description of Baby Care 10', '1', 'Baby Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1266.00, 1276.00, 'PCS', 10.00, 10.00, ' Pa00001', 'Pamper', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:04:15', '2024-10-25 05:45:17'),
(650, 'FMD174114', 'N&H Salame Milano (100 gms)', 'Basic description of Meat, Fish & Seafood 15', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 620.00, 630.00, 'PCS', 10.00, 10.00, ' Vi00001', 'Vitali', '[Rack 7]', NULL, '2024-09-24 15:04:15', '2024-10-25 05:45:17'),
(651, 'FMD253884', 'N&H Chicken Wings (830 g)', 'Basic description of Meat, Fish & Seafood 200', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 654.00, 664.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:15', '2024-10-25 05:45:11'),
(652, 'FMD174116', 'N&H Spinata Piccante (Chilli Salami) (100 gms)', 'Basic description of Meat, Fish & Seafood 16', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 490.00, 500.00, 'PCS', 10.00, 10.00, ' Vi00001', 'Vitali', '[Rack 7]', NULL, '2024-09-24 15:04:15', '2024-10-25 05:45:17'),
(653, 'FMD174302', 'Italian Roast 250 gmFilter Grind (Extra Bold/ Dark Roast)-  (Premium / Export Quality)', 'Basic description of Beverages 14', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 690.00, 700.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:15', '2024-10-25 05:45:17'),
(654, 'FMD174099', 'N&H Hot Dog Chicken Sausage (Green Chilli) (400 gm)', 'Basic description of Meat, Fish & Seafood 12', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 450.00, 460.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:04:15', '2024-10-25 05:45:17'),
(655, 'FMD205010', 'Asparagus (250 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 50', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 570.00, 580.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:15', '2024-10-25 05:45:15'),
(656, 'FMD174200', 'Mcvities (India) Dark Cookies (120 gm)', 'Basic description of Cookies & Biscuits 44', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 50.00, 60.00, 'PCS', 10.00, 10.00, ' Mc00001', 'Mcvities (India)', '[Rack 3]', NULL, '2024-09-24 15:04:16', '2024-10-25 05:45:15'),
(657, 'FMD174124', 'VCS Chicken BL Breast (500 gm)', 'Basic description of Meat, Fish & Seafood 17', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 390.00, 400.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:16', '2024-10-25 05:45:17'),
(658, 'FMD209711', 'Sweet Potato (1 Kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 49', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:16', '2024-10-25 05:45:15'),
(659, 'FMD404111', 'Vitali Prosciutto Crudo Stagionato (Ham)100Gm', 'Basic description of Meat, Fish & Seafood 292', '13', 'Meat, Fish & Seafood', '25', 'Pork', '0', 0.00, 0.00, 720.00, 730.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:16', '2024-10-25 05:45:12'),
(660, 'FMD221834', 'Dove Beauty Bar Original White 100g', 'Basic description of Personal Care 18', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 89.00, 99.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:17', '2024-10-25 05:45:13'),
(661, 'FMD404109', 'Vitali Coppa Ham 100Gm', 'Basic description of Meat, Fish & Seafood 291', '13', 'Meat, Fish & Seafood', '25', 'Pork', '0', 0.00, 0.00, 540.00, 550.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:17', '2024-10-25 05:45:12'),
(662, 'FMD199199', 'Choco Chips Cookies', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 7', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 160.00, 170.00, 'PCS', 0.00, 0.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:04:17', '2024-10-25 05:45:15'),
(663, 'FMD298275', 'N&H Chicken Legs (550 gm)', 'Basic description of Meat, Fish & Seafood 223', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 430.00, 440.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:17', '2024-10-25 05:45:12'),
(664, 'FMD283472', 'Druk Mango Slice in Syrup 850 gms', 'Basic description of Baking & Cooking 8', '3', 'Baking & Cooking', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 370.00, 380.00, 'PCS', 10.00, 10.00, ' Te00001', 'Test Brand 1', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:04:17', '2024-10-25 05:45:16'),
(665, 'FMD177870', 'Rayo (Bunch)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 184', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 75.00, 85.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:17', '2024-10-25 05:45:16'),
(666, 'FMD174435', 'Palpa (Natural) Beans 250 gm', 'Basic description of Beverages 34', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 780.00, 790.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:17', '2024-10-25 05:45:12'),
(667, 'FMD174405', 'Kellogg\'s  Corn Flakes with Real Almonds (300 gm)', 'Basic description of Breakfast 119', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, ' Ke00001', 'Kelloggs', '[Rack 3]', NULL, '2024-09-24 15:04:17', '2024-10-25 05:45:15'),
(668, 'FMD192227', 'Noga Baked Beans in Tomato Sauce (480 gm)', 'Basic description of Ready To Eat 4', '20', 'Ready To Eat', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 130.00, 140.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:17', '2024-10-25 05:45:13'),
(669, 'FMD283407', 'Hershey\'s Chocolate Syrup 680 gms', 'Basic description of Baking & Cooking 11', '3', 'Baking & Cooking', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 555.00, 565.00, 'PCS', 0.00, 0.00, ' He00001', 'Hersheys', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:04:18', '2024-10-25 05:45:16'),
(670, 'FMD211306', 'Bhindi (Lady\'s Finger)- 500 gm', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 218', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 62.00, 72.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:04:18', '2024-10-25 05:45:16'),
(671, 'FMD206617', 'Cucumber Hybrid (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 219', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:04:18', '2024-10-25 05:45:16'),
(672, 'FMD196804', 'Coriander (Bunch) 200 gm', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 222', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 85.00, 95.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:18', '2024-10-25 05:45:16'),
(673, 'FMD176562', 'Roza Fried Mackerel with Chilli Sauce', 'Basic description of Ready To Eat 15', '20', 'Ready To Eat', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:18', '2024-10-25 05:45:13'),
(674, 'FMD176561', 'Foochka Pani Puri (1 kg)', 'Basic description of Ready To Eat 14', '20', 'Ready To Eat', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:18', '2024-10-25 05:45:13'),
(675, 'FMD285776', 'N&H Chicken Wings (810 gm)', 'Basic description of Meat, Fish & Seafood 227', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 638.00, 648.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:18', '2024-10-25 05:45:12'),
(676, 'FMD196806', 'French Beans (Half kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 224', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:18', '2024-10-25 05:45:16');
INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_description`, `category_id`, `category_name`, `subcategory_id`, `subcategory_name`, `delivery_target_days`, `discount`, `actual_price`, `sell_price`, `mr_price`, `unit_info`, `available_quantity`, `stock_quantity`, `brand_id`, `brand_name`, `product_location`, `primary_image`, `created_at`, `updated_at`) VALUES
(677, 'FMD193713', 'Britannia Toastea Milk Rusk (610 gm)', 'Basic description of Cookies & Biscuits 77', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 360.00, 370.00, 'PCS', 10.00, 10.00, ' Br00001', 'Britannia', '[Rack 3]', NULL, '2024-09-24 15:04:19', '2024-10-25 05:45:15'),
(678, 'FMD193712', 'Britannia Tiger Crunch (25+7gm)(Pack of 12)', 'Basic description of Cookies & Biscuits 76', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, ' Br00001', 'Britannia', '[Rack 3]', NULL, '2024-09-24 15:04:19', '2024-10-25 05:45:15'),
(679, 'FMD206618', 'Sweet Potato (Half kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 220', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:04:19', '2024-10-25 05:45:16'),
(680, 'FMD193711', 'Britannia Nutri Choice 5 Grain (300 gm)', 'Basic description of Cookies & Biscuits 75', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, ' Br00001', 'Britannia', '[Rack 3]', NULL, '2024-09-24 15:04:19', '2024-10-25 05:45:15'),
(681, 'FMD331215', 'N&H Chicken Drumstick (480 gm)', 'Basic description of Meat, Fish & Seafood 148', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 422.00, 432.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:19', '2024-10-25 05:45:10'),
(682, 'FMD233832', 'HS Rajma (1 kg)', 'Basic description of Local Produces 15', '12', 'Local Produces', '19', 'Legume', '0', 0.00, 0.00, 280.00, 290.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:04:19', '2024-10-25 05:45:17'),
(683, 'FMD252383', 'HS Kwati (500 gm)', 'Basic description of Local Produces 16', '12', 'Local Produces', '19', 'Legume', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:04:19', '2024-10-25 05:45:17'),
(684, 'FMD196807', 'Potato Red Grades (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 225', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 85.00, 95.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:19', '2024-10-25 05:45:16'),
(685, 'FMD254318', 'Kimchi (500 gm) Bottle', 'Basic description of Local Produces 17', '12', 'Local Produces', '20', 'Pickles', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:04:19', '2024-10-25 05:45:17'),
(686, 'FMD310677', 'Beyond Snacks Banana Chips Desi Masala 25g (Pack of 3)', 'Basic description of Snacks & Dry Fruits 112', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 185.00, 195.00, 'PCS', 1.00, 1.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:19', '2024-10-25 05:45:14'),
(687, 'FMD310678', 'Beyond Snacks Banana Chips Original Style 25g (Pack of 3)', 'Basic description of Snacks & Dry Fruits 113', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 185.00, 195.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:20', '2024-10-25 05:45:14'),
(688, 'FMD177866', 'Beet Root (1 Kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 180', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:20', '2024-10-25 05:45:16'),
(689, 'FMD226752', 'Radish Pickle (Bottle)', 'Basic description of Local Produces 18', '12', 'Local Produces', '20', 'Pickles', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:04:20', '2024-10-25 05:45:17'),
(690, 'FMD174134', 'VCS Chicken Patty (500 gm)', 'Basic description of Ready to Cook 47', '19', 'Ready to Cook', '30', 'More on Ready to Cook', '0', 0.00, 0.00, 230.00, 240.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:20', '2024-10-25 05:45:13'),
(691, 'FMD303818', 'Bindazz XL + 27', 'Basic description of Personal Care 44', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 550.00, 560.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:20', '2024-10-25 05:45:13'),
(692, 'FMD192287', 'Cheesy Seasoning Powder (500 gm)', 'Basic description of Oil, Spice & Condiments 32', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 630.00, 640.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:20', '2024-10-25 05:45:13'),
(693, 'FMD321753', 'Kellogs Real Almond Honey', 'Basic description of Breakfast 102', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 355.00, 365.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:20', '2024-10-25 05:45:15'),
(694, 'FMD189352', 'Cornitos Party Mix (200 gm)', 'Basic description of Ready To Eat 6', '20', 'Ready To Eat', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 285.00, 295.00, 'PCS', 10.00, 10.00, ' Co00001', 'Cornitos', '[Rack 8]', NULL, '2024-09-24 15:04:20', '2024-10-25 05:45:13'),
(695, 'FMD341691', 'Kellogg\'s Corn Flakes Almond', 'Basic description of Breakfast 100', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 355.00, 365.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:21', '2024-10-25 05:45:15'),
(696, 'FMD174039', 'Gante Mula (Red)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 194', '8', 'Fruits & Vegetables', '14', 'Green Leafy Vegetables', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:21', '2024-10-25 05:45:16'),
(697, 'FMD177868', 'Gantey Mula (Bunch)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 182', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 85.00, 95.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:21', '2024-10-25 05:45:16'),
(698, 'FMD174042', 'Jiri Ko Saag (Lettuce)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 197', '8', 'Fruits & Vegetables', '14', 'Green Leafy Vegetables', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:21', '2024-10-25 05:45:16'),
(699, 'FMD174112', 'Prime Bacon Slice 500Gm', 'Basic description of Meat, Fish & Seafood 307', '13', 'Meat, Fish & Seafood', '25', 'Pork', '0', 0.00, 0.00, 890.00, 900.00, 'PCS', 10.00, 10.00, ' Vi00001', 'Vitali', '[Rack 7]', NULL, '2024-09-24 15:04:21', '2024-10-25 05:45:12'),
(700, 'FMD374440', 'Kelloggs Honey Crunch', 'Basic description of Breakfast 105', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:21', '2024-10-25 05:45:15'),
(701, 'FMD174428', 'Nuwakot (Washed) Beans 1000 gm', 'Basic description of Beverages 27', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 2490.00, 2500.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:21', '2024-10-25 05:45:10'),
(702, 'FMD315907', 'Moon & Stars Chocos (375 gm)', 'Basic description of Breakfast 103', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 345.00, 355.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:21', '2024-10-25 05:45:15'),
(703, 'FMD174041', 'Hariyo Pyaaj (Spring Onion)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 196', '8', 'Fruits & Vegetables', '14', 'Green Leafy Vegetables', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:21', '2024-10-25 05:45:16'),
(704, 'FMD188992', 'Methi Saag (Bunch)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 201', '8', 'Fruits & Vegetables', '14', 'Green Leafy Vegetables', '0', 0.00, 0.00, 40.00, 50.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:22', '2024-10-25 05:45:16'),
(705, 'FMD177874', 'Snake Gourd (1 Kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 188', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:22', '2024-10-25 05:45:16'),
(706, 'FMD174370', 'Gaia Muesli Nutty Delight (400 gm)', 'Basic description of Breakfast 107', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 450.00, 460.00, 'PCS', 10.00, 10.00, ' GA00001', 'GAIA', '[Rack 3]', NULL, '2024-09-24 15:04:22', '2024-10-25 05:45:15'),
(707, 'FMD188240', 'Mix Lettuce (200 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 203', '8', 'Fruits & Vegetables', '14', 'Green Leafy Vegetables', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:22', '2024-10-25 05:45:16'),
(708, 'FMD176405', 'Baggry Oats (500 gm)', 'Basic description of Breakfast 113', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:22', '2024-10-25 05:45:15'),
(709, 'FMD198487', 'Kimchi (200 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 206', '8', 'Fruits & Vegetables', '14', 'Green Leafy Vegetables', '0', 0.00, 0.00, 160.00, 170.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:22', '2024-10-25 05:45:16'),
(710, 'FMD174044', 'Pudina ( Mint)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 199', '8', 'Fruits & Vegetables', '14', 'Green Leafy Vegetables', '0', 0.00, 0.00, 50.00, 60.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:22', '2024-10-25 05:45:16'),
(711, 'FMD283459', 'Amul Fresh Cream 1 ltr', 'Basic description of Baking & Cooking 10', '3', 'Baking & Cooking', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 640.00, 650.00, 'PCS', 10.00, 10.00, ' Am00002', 'Amul', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:04:22', '2024-10-25 05:45:16'),
(712, 'FMD174110', 'Pork Mince (500 gms) - NH', 'Basic description of Meat, Fish & Seafood 305', '13', 'Meat, Fish & Seafood', '25', 'Pork', '0', 0.00, 0.00, 590.00, 600.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:04:23', '2024-10-25 05:45:12'),
(713, 'FMD338490', 'N&H Chicken Leg (480 GM)', 'Basic description of Meat, Fish & Seafood 161', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 422.00, 432.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:23', '2024-10-25 05:45:10'),
(714, 'FMD192091', 'Mango Pickle ( 380 gm )', 'Basic description of Local Produces 28', '12', 'Local Produces', '20', 'Pickles', '0', 0.00, 0.00, 261.00, 271.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:23', '2024-10-25 05:45:17'),
(715, 'FMD192093', 'Timmur & Garlic Pickle ( 200 gm )', 'Basic description of Local Produces 30', '12', 'Local Produces', '20', 'Pickles', '0', 0.00, 0.00, 272.00, 282.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:23', '2024-10-25 05:45:17'),
(716, 'FMD192051', 'Buffalo Wings  (400 gm)', 'Basic description of Meat, Fish & Seafood 69', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 485.00, 495.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:23', '2024-10-25 05:45:17'),
(717, 'FMD174373', 'Gaia Oats With Multigrains (500 gm)', 'Basic description of Breakfast 110', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 215.00, 225.00, 'PCS', 10.00, 10.00, ' GA00001', 'GAIA', '[Rack 3]', NULL, '2024-09-24 15:04:23', '2024-10-25 05:45:15'),
(718, 'FMD192090', 'Fried Green Chillies ( 150 gm )', 'Basic description of Local Produces 27', '12', 'Local Produces', '20', 'Pickles', '0', 0.00, 0.00, 429.00, 439.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:23', '2024-10-25 05:45:17'),
(719, 'FMD188210', 'Green Soyabean (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 76', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 180.00, 190.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:23', '2024-10-25 05:45:16'),
(720, 'FMD188222', 'Green Chilly (200 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 79', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 30.00, 40.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:24', '2024-10-25 05:45:16'),
(721, 'FMD192092', 'Tama Akabare Pickle ( 380 gm ) Very Spicy', 'Basic description of Local Produces 29', '12', 'Local Produces', '20', 'Pickles', '0', 0.00, 0.00, 395.00, 405.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:24', '2024-10-25 05:45:17'),
(722, 'FMD188216', 'Lemon (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 77', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 210.00, 220.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:24', '2024-10-25 05:45:16'),
(723, 'FMD215625', 'Kellogg\'s All Bran Wheat Flakes 425 gm', 'Basic description of Breakfast 51', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 350.00, 360.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:24', '2024-10-25 05:45:15'),
(724, 'FMD188194', 'Potato Gaurishanker (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 74', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:24', '2024-10-25 05:45:16'),
(725, 'FMD188221', 'Chasme Lemon (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 78', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:24', '2024-10-25 05:45:16'),
(726, 'FMD174181', 'GFM Chicken Momo (40 pcs)', 'Basic description of Ready to Cook 26', '19', 'Ready to Cook', '29', 'Momo', '0', 0.00, 0.00, 485.00, 495.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:24', '2024-10-25 05:45:13'),
(727, 'FMD215629', 'Kellogg\'s Extra Muesli Nut Delight 750 gm', 'Basic description of Breakfast 55', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 740.00, 750.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:25', '2024-10-25 05:45:15'),
(728, 'FMD174350', 'Nestlé CERELAC Stage 3, Wheat-Rice Mixed Fruit (From 10 Months) (300gm)', 'Basic description of Breakfast 48', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 422.00, 432.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 3]', NULL, '2024-09-24 15:04:25', '2024-10-25 05:45:15'),
(729, 'FMD215627', 'Kellogg\'s Extra Muesli Fruit & Nut 500 gm', 'Basic description of Breakfast 53', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 520.00, 530.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:25', '2024-10-25 05:45:15'),
(730, 'FMD215626', 'Kellogg\'s Cornflakes 475gm', 'Basic description of Breakfast 52', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:25', '2024-10-25 05:45:15'),
(731, 'FMD174345', 'Nestlé CERELAC Stage 5, 5Grains and Fruits (From 18 Months) (300 gm)', 'Basic description of Breakfast 50', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 474.00, 484.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 3]', NULL, '2024-09-24 15:04:25', '2024-10-25 05:45:15'),
(732, 'FMD221833', 'Surf Excel Quick Wash 3kg+1kg free', 'Basic description of Household 80', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 950.00, 960.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:04:25', '2024-10-25 05:45:17'),
(733, 'FMD215628', 'Kellogg\'s Extra Muesli Fruit Magic 500 gm', 'Basic description of Breakfast 54', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 520.00, 530.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:25', '2024-10-25 05:45:15'),
(734, 'FMD215630', 'Kellogg\'s Muesli No Added Sugar 1kg', 'Basic description of Breakfast 56', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1060.00, 1070.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:25', '2024-10-25 05:45:15'),
(735, 'FMD215624', 'Bathroom Tissue 3 Ply (170 gm)', 'Basic description of Household 81', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 55.00, 65.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:04:26', '2024-10-25 05:45:17'),
(736, 'FMD177834', 'Parwal (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 158', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:26', '2024-10-25 05:45:16'),
(737, 'FMD209878', 'Passion 2 Ply 200 Pulls Tissue', 'Basic description of Household 82', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 130.00, 140.00, 'PCS', 10.00, 10.00, ' Ar00002', 'Ariel', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:04:26', '2024-10-25 05:45:17'),
(738, 'FMD264567', 'Kellogg\'s  Corn Flakes with Real Honey (300 gm)', 'Basic description of Breakfast 95', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 295.00, 305.00, 'PCS', 10.00, 10.00, ' Ke00001', 'Kelloggs', '[Rack 3]', NULL, '2024-09-24 15:04:26', '2024-10-25 05:45:15'),
(739, 'FMD177831', 'Brinjal (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 155', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:26', '2024-10-25 05:45:16'),
(740, 'FMD192073', 'Passion 2 Ply 100 Pulls Tissue', 'Basic description of Household 79', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 100.00, 110.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:04:26', '2024-10-25 05:45:17'),
(741, 'FMD306575', 'Kellogg\'s  Chocos (715 gm)', 'Basic description of Breakfast 97', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 580.00, 590.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:26', '2024-10-25 05:45:15'),
(742, 'FMD308526', 'N&H Chicken Leg (380 gm)', 'Basic description of Meat, Fish & Seafood 138', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 294.00, 304.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:27', '2024-10-25 05:45:10'),
(743, 'FMD177836', 'Coriander (Bunch)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 160', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 45.00, 55.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:27', '2024-10-25 05:45:16'),
(744, 'FMD177845', 'Tomatoes (Salad) (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 169', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 280.00, 290.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:27', '2024-10-25 05:45:16'),
(745, 'FMD290118', 'Pintola Wholegrain Brown Rice Cakes (Lightly Salted) 125 gm', 'Basic description of Ready To Eat 1', '20', 'Ready To Eat', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 245.00, 255.00, 'PCS', 10.00, 10.00, ' Pi00001', 'Pintola', '[Rack 8]', NULL, '2024-09-24 15:04:27', '2024-10-25 05:45:13'),
(746, 'FMD291770', 'Appy (125ml) Juice - Parle Agro (Pack of 5)', 'Basic description of Beverages 64', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:27', '2024-10-25 05:45:13'),
(747, 'FMD254535', 'Machhey Khursani (Pointed Pepper) (Half kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 211', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 60.00, 70.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:04:27', '2024-10-25 05:45:16'),
(748, 'FMD174421', 'Hariyo Pyaz (Per Bunch)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 191', '8', 'Fruits & Vegetables', '14', 'Green Leafy Vegetables', '0', 0.00, 0.00, 30.00, 40.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:27', '2024-10-25 05:45:16'),
(749, 'FMD345935', 'Green Peas 1Kg-Yogo Fresh-N&H', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 208', '8', 'Fruits & Vegetables', '14', 'Green Leafy Vegetables', '0', 0.00, 0.00, 260.00, 270.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:27', '2024-10-25 05:45:16'),
(750, 'FMD374453', 'Pringles Sour Cream', 'Basic description of Snacks & Dry Fruits 81', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 265.00, 275.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:27', '2024-10-25 05:45:14'),
(751, 'FMD217304', 'Coated Green Peas Pop & Crunch(150 gm)- Cornitos', 'Basic description of Ready To Eat 12', '20', 'Ready To Eat', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 215.00, 225.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:28', '2024-10-25 05:45:13'),
(752, 'FMD291771', 'Appy (200 ml) Juice - Parle Agro (Pack of 5)', 'Basic description of Beverages 65', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:28', '2024-10-25 05:45:13'),
(753, 'FMD174404', 'Kellogg\'s Oats Refill (1 kg)', 'Basic description of Breakfast 118', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 390.00, 400.00, 'PCS', 10.00, 10.00, ' Ke00001', 'Kelloggs', '[Rack 3]', NULL, '2024-09-24 15:04:28', '2024-10-25 05:45:15'),
(754, 'FMD293975', 'Tomatoes (Acidic) (Half kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 213', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 55.00, 65.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:28', '2024-10-25 05:45:16'),
(755, 'FMD220354', 'Pintola Wholegrain Brown Rice Cakes (All Natural, Unsalted) 125g', 'Basic description of Ready To Eat 11', '20', 'Ready To Eat', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 245.00, 255.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:28', '2024-10-25 05:45:13'),
(756, 'FMD174401', 'Kellogg\'s  Chocos (385 gm)', 'Basic description of Breakfast 115', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 300.00, 310.00, 'PCS', 10.00, 10.00, ' Ke00001', 'Kelloggs', '[Rack 3]', NULL, '2024-09-24 15:04:28', '2024-10-25 05:45:15'),
(757, 'FMD291772', 'Appy Fizz (160 ml) - Parle Agro (Pack of 5)', 'Basic description of Beverages 66', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:28', '2024-10-25 05:45:13'),
(758, 'FMD174170', 'Pork Belly Boneless without Skin (1 kg)', 'Basic description of Meat, Fish & Seafood 308', '13', 'Meat, Fish & Seafood', '25', 'Pork', '0', 0.00, 0.00, 1370.00, 1380.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:28', '2024-10-25 05:45:12'),
(759, 'FMD349998', 'Cucumber Local (1.2 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 216', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 146.00, 156.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:28', '2024-10-25 05:45:16'),
(760, 'FMD176563', 'Roza Mackerel in Tomato Sauce (185 gm)', 'Basic description of Ready To Eat 16', '20', 'Ready To Eat', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:29', '2024-10-25 05:45:13'),
(761, 'FMD174402', 'Kellogg\'s  Corn Flakes - Honey (300 gm)', 'Basic description of Breakfast 116', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, ' Ke00001', 'Kelloggs', '[Rack 3]', NULL, '2024-09-24 15:04:29', '2024-10-25 05:45:15'),
(762, 'FMD314842', 'Beyond  Snacks Banana Chips Hot & Sweet Chilli 25g (Pack of 3)', 'Basic description of Snacks & Dry Fruits 85', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 185.00, 195.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:29', '2024-10-25 05:45:14'),
(763, 'FMD174340', 'Nestlé KOKO KRUNCH Maxx Strawberry (250 gm)', 'Basic description of Breakfast 121', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 370.00, 380.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 3]', NULL, '2024-09-24 15:04:29', '2024-10-25 05:45:15'),
(764, 'FMD323681', 'Original Pringles (102 gm)', 'Basic description of Snacks & Dry Fruits 84', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 265.00, 275.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:29', '2024-10-25 05:45:14'),
(765, 'FMD331216', 'N&H Chicken Drumstick (670 gm)', 'Basic description of Meat, Fish & Seafood 149', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 593.00, 603.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:29', '2024-10-25 05:45:10'),
(766, 'FMD199206', 'French Heart', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 14', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:04:29', '2024-10-25 05:45:15'),
(767, 'FMD174339', 'Nestlé KOKO KRUNCH Maxx Choc (500 gm)', 'Basic description of Breakfast 120', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 589.99, 599.99, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 3]', NULL, '2024-09-24 15:04:29', '2024-10-25 05:45:15'),
(768, 'FMD177365', 'Pampers Pants 50s Medium', 'Basic description of Baby Care 3', '1', 'Baby Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1109.00, 1119.00, 'PCS', 10.00, 10.00, ' Pa00001', 'Pamper', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:04:30', '2024-10-25 05:45:15'),
(769, 'FMD174252', 'Cake Mix, Strawberry (500 gm)- American Garden', 'Basic description of Baking & Cooking 1', '3', 'Baking & Cooking', '2', 'Baking Mixes', '0', 0.00, 0.00, 350.00, 360.00, 'PCS', 10.00, 10.00, ' Am00001', 'American Garden', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:04:30', '2024-10-25 05:45:16'),
(770, 'FMD174000', 'Gajar ( Carrot) (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 96', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 135.00, 145.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:30', '2024-10-25 05:45:16'),
(771, 'FMD215631', 'Kellogg\'s Muesli No Added Sugar 500gm', 'Basic description of Breakfast 57', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 520.00, 530.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:30', '2024-10-25 05:45:15'),
(772, 'FMD189011', 'Rahar Ko Daal', 'Basic description of Rice & Pulses 29', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 250.00, 260.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:31', '2024-10-25 05:45:13'),
(773, 'FMD199200', 'Chocolate Cake (Medium)', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 8', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 250.00, 260.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:04:31', '2024-10-25 05:45:15'),
(774, 'FMD325646', 'N&H Pork Belly (1 kg)', 'Basic description of Meat, Fish & Seafood 297', '13', 'Meat, Fish & Seafood', '25', 'Pork', '0', 0.00, 0.00, 1440.00, 1450.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:31', '2024-10-25 05:45:12'),
(775, 'FMD174002', 'Kakra (Cucumber) - Local Bhaktapure , (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 98', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:31', '2024-10-25 05:45:16'),
(776, 'FMD174001', 'Hariyo Kursani (Green Chilli) (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 97', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:31', '2024-10-25 05:45:16'),
(777, 'FMD174004', 'Mula ( Raddish) (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 100', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 50.00, 60.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:31', '2024-10-25 05:45:16'),
(778, 'FMD404113', 'Vitali Spinata Piccante (Chilli Salami)-100Gm', 'Basic description of Meat, Fish & Seafood 294', '13', 'Meat, Fish & Seafood', '25', 'Pork', '0', 0.00, 0.00, 575.00, 585.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:31', '2024-10-25 05:45:12'),
(779, 'FMD337861', 'N&H Pork Belly (930 gm)', 'Basic description of Meat, Fish & Seafood 295', '13', 'Meat, Fish & Seafood', '25', 'Pork', '0', 0.00, 0.00, 1245.00, 1255.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:32', '2024-10-25 05:45:12'),
(780, 'FMD315083', 'N&H Chicken Wings  (790 gm)', 'Basic description of Meat, Fish & Seafood 140', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 701.00, 711.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:32', '2024-10-25 05:45:10'),
(781, 'FMD174006', 'Tomato-Normal (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 102', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:32', '2024-10-25 05:45:16'),
(782, 'FMD174003', 'Karela ( Bitter Gourd) (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 99', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 55.00, 65.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:32', '2024-10-25 05:45:16'),
(783, 'FMD174005', 'Parwal (Pointed Gourd ) (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 101', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 35.00, 45.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:32', '2024-10-25 05:45:16'),
(784, 'FMD174046', 'Asparagus Selected (200 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 103', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:32', '2024-10-25 05:45:16'),
(785, 'FMD320788', 'Gaia Muesli Diet 400 gm (Bye one Get One Free)', 'Basic description of Breakfast 65', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 480.00, 490.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:33', '2024-10-25 05:45:15'),
(786, 'FMD284282', 'Elaitea 300 ml', 'Basic description of Beverages 63', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 10.00, 10.00, ' Te00001', 'Test Brand 1', '[Rack 3]', NULL, '2024-09-24 15:04:33', '2024-10-25 05:45:13'),
(787, 'FMD317314', 'N&H Chicken Legs  (1 kg )', 'Basic description of Meat, Fish & Seafood 119', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 890.00, 900.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:33', '2024-10-25 05:45:10'),
(788, 'FMD334070', 'N&H Chicken Leg (460 gm)', 'Basic description of Meat, Fish & Seafood 155', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 404.00, 414.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:33', '2024-10-25 05:45:10'),
(789, 'FMD199193', 'Almond Cookies', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 1', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', -10.00, -10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:04:33', '2024-10-25 05:45:14'),
(790, 'FMD364073', 'Lindt Excellence 99%  Dark Chocolate Bar 100g', 'Basic description of Sweets & Confectionery 30', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 630.00, 640.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:34', '2024-10-25 05:45:14'),
(791, 'FMD189238', 'Haldiram\'s All In One Big (360 gm)', 'Basic description of Snacks & Dry Fruits 7', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 255.00, 265.00, 'PCS', 10.00, 10.00, ' Ha00001', 'Haldirams', '[Rack 8]', NULL, '2024-09-24 15:04:34', '2024-10-25 05:45:13'),
(792, 'FMD364075', 'Excellence Dark Orange Almond (100 gms) - Lindt', 'Basic description of Sweets & Confectionery 32', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 630.00, 640.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:34', '2024-10-25 05:45:14'),
(793, 'FMD189241', 'Haldiram\'s Kashmiri Mixture (200 gm)', 'Basic description of Snacks & Dry Fruits 10', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 216.00, 226.00, 'PCS', 10.00, 10.00, ' Ha00001', 'Haldirams', '[Rack 8]', NULL, '2024-09-24 15:04:34', '2024-10-25 05:45:13'),
(794, 'FMD191056', 'Snapin Basil (35 gm)', 'Basic description of Oil, Spice & Condiments 15', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, ' Sn00001', 'Snapin', '[Rack 7]', NULL, '2024-09-24 15:04:34', '2024-10-25 05:45:12'),
(795, 'FMD189239', 'Haldiram\'s Aloo Bhujiya (400 gm)', 'Basic description of Snacks & Dry Fruits 8', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 227.00, 237.00, 'PCS', 10.00, 10.00, ' Ha00001', 'Haldirams', '[Rack 8]', NULL, '2024-09-24 15:04:34', '2024-10-25 05:45:13'),
(796, 'FMD189039', 'Farsiko Biya  (200 gm)', 'Basic description of Pure Organic Items 18', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 250.00, 260.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:35', '2024-10-25 05:45:13'),
(797, 'FMD355791', 'Chi. Drumstick', 'Basic description of Meat, Fish & Seafood 180', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 899.00, 909.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:35', '2024-10-25 05:45:11'),
(798, 'FMD187492', 'Rasna Fruit Plus- Mango Flavor (400 gm)', 'Basic description of Beverages 94', '4', 'Beverages', '7', 'Juice Powder', '0', 0.00, 0.00, 170.00, 180.00, 'PCS', 10.00, 10.00, ' Ra00001', 'Rasna', '[Rack 3]', NULL, '2024-09-24 15:04:35', '2024-10-25 05:45:14'),
(799, 'FMD364076', 'Les Grandes Milk Hazelnut (150 gms) - Lindt', 'Basic description of Sweets & Confectionery 33', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 970.00, 980.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:35', '2024-10-25 05:45:14'),
(800, 'FMD215896', 'Maggi Chicken Noodles (284 gms)', 'Basic description of Pasta & Noodles 14', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:35', '2024-10-25 05:45:13'),
(801, 'FMD189242', 'Haldiram\'s Khatta Meetha (360 gm)', 'Basic description of Snacks & Dry Fruits 11', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 216.00, 226.00, 'PCS', 10.00, 10.00, ' Ha00001', 'Haldirams', '[Rack 8]', NULL, '2024-09-24 15:04:35', '2024-10-25 05:45:13'),
(802, 'FMD314897', 'Frooti Mango Drinks 250ML PET', 'Basic description of Beverages 73', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 40.00, 50.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:35', '2024-10-25 05:45:13'),
(803, 'FMD189040', 'Gahu Ko Pitho (1 kg)', 'Basic description of Pure Organic Items 19', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:35', '2024-10-25 05:45:13'),
(804, 'FMD174429', 'Nuwakot (Washed) Beans 250 gm', 'Basic description of Beverages 28', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 780.00, 790.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:36', '2024-10-25 05:45:10'),
(805, 'FMD189243', 'Haldiram\'s Roasted Chana Cracker (200 gm)', 'Basic description of Snacks & Dry Fruits 12', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 123.00, 133.00, 'PCS', 10.00, 10.00, ' Ha00001', 'Haldirams', '[Rack 8]', NULL, '2024-09-24 15:04:36', '2024-10-25 05:45:13'),
(806, 'FMD215086', 'N&H Chicken Legs (2.03 Kg)', 'Basic description of Meat, Fish & Seafood 85', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1615.00, 1625.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:36', '2024-10-25 05:45:17'),
(807, 'FMD177350', 'Bajra Taichin Rice Powder (1 kg)', 'Basic description of Oil, Spice & Condiments 59', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 120.00, 130.00, 'PCS', 10.00, 10.00, ' Ba00001', 'Bajra', '[Rack 8]', NULL, '2024-09-24 15:04:36', '2024-10-25 05:45:13'),
(808, 'FMD212387', 'N&H Chicken Legs (515 gm)', 'Basic description of Meat, Fish & Seafood 83', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 334.00, 344.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:36', '2024-10-25 05:45:17'),
(809, 'FMD404103', 'Ambrosi Parmigiano Reggiano 200Gm', 'Egg and dairy provide protein, calcium, and essential nutrients for health 6', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1440.00, 1450.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:36', '2024-10-25 05:45:15'),
(810, 'FMD218931', 'N&H Chicken Wings (790 gm)', 'Basic description of Meat, Fish & Seafood 87', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 582.00, 592.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:36', '2024-10-25 05:45:17'),
(811, 'FMD220203', 'Ragi Sugar Free Cookies (200 gm)', 'Basic description of Cookies & Biscuits 91', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 270.00, 280.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:36', '2024-10-25 05:45:15'),
(812, 'FMD203366', 'Chicken Whole Leg (630 gm)', 'Basic description of Meat, Fish & Seafood 103', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 399.00, 409.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:37', '2024-10-25 05:45:17'),
(813, 'FMD214647', 'Cow Ghee (200 gm) Glass Jar', 'Egg and dairy provide protein, calcium, and essential nutrients for health 10', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 365.00, 375.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:37', '2024-10-25 05:45:15'),
(814, 'FMD174135', 'VCS Chicken Wings (1 kg)', 'Basic description of Meat, Fish & Seafood 27', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 670.00, 680.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:37', '2024-10-25 05:45:17'),
(815, 'FMD207529', 'Chicken Wings (850 gm)', 'Basic description of Meat, Fish & Seafood 100', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 670.00, 680.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:37', '2024-10-25 05:45:17'),
(816, 'FMD182923', 'Trout Fish (0.72  kg)', 'Basic description of Meat, Fish & Seafood 238', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 1106.00, 1116.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:37', '2024-10-25 05:45:12'),
(817, 'FMD174424', 'Lamjung (Washed) Beans 500 gm', 'Basic description of Beverages 23', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 1240.00, 1250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:37', '2024-10-25 05:45:17'),
(818, 'FMD307633', 'Beyond Snacks Banana Chips Peri Peri Flaveor 25g(Pack of 3)', 'Basic description of Snacks & Dry Fruits 111', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 185.00, 195.00, 'PCS', 0.00, 0.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:38', '2024-10-25 05:45:14'),
(819, 'FMD174451', 'Nestle Kitkat Dessert Delight 50 gms', 'Basic description of Sweets & Confectionery 4', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 9]', NULL, '2024-09-24 15:04:38', '2024-10-25 05:45:14'),
(820, 'FMD199215', 'Plain Cake', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 23', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 0.00, 0.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:04:38', '2024-10-25 05:45:15'),
(821, 'FMD174133', 'VCS Chicken Liver (500 gm)', 'Basic description of Meat, Fish & Seafood 26', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:38', '2024-10-25 05:45:17'),
(822, 'FMD189010', 'Mung Ko Daal', 'Basic description of Rice & Pulses 28', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:38', '2024-10-25 05:45:13'),
(823, 'FMD174151', 'GFM Chicken Boneless Leg (1 kg)', 'Basic description of Meat, Fish & Seafood 33', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 685.00, 695.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:38', '2024-10-25 05:45:17'),
(824, 'FMD174304', 'Peaberry Coffee 250 gm Whole Beans (Rare/ Limited Edition/ Sweet After After Taste/Light Roast)-  (Premium / Export Quality)', 'Basic description of Beverages 16', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 990.00, 1000.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:38', '2024-10-25 05:45:17'),
(825, 'FMD174436', 'Palpa (Natural) Beans 500 gm', 'Basic description of Beverages 35', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 1240.00, 1250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:38', '2024-10-25 05:45:12'),
(826, 'FMD174154', 'GFM Chicken Chilly Sausage (400 gm)', 'Basic description of Meat, Fish & Seafood 36', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 445.00, 455.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:39', '2024-10-25 05:45:17'),
(827, 'FMD174157', 'GFM Chicken Hotdog Sausage (500 gm)', 'Basic description of Meat, Fish & Seafood 39', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 615.00, 625.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:39', '2024-10-25 05:45:17'),
(828, 'FMD174152', 'GFM Chicken Bratwurst Sausage (500 gm)', 'Basic description of Meat, Fish & Seafood 34', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 615.00, 625.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:39', '2024-10-25 05:45:17'),
(829, 'FMD174158', 'GFM Chicken Lollipop (550 gm)', 'Basic description of Meat, Fish & Seafood 40', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 245.00, 255.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:39', '2024-10-25 05:45:17'),
(830, 'FMD174351', 'NESCAFE Classic Pouch (50 gm)', 'Basic description of Beverages 17', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 186.00, 196.00, 'PCS', 10.00, 10.00, ' Ne00001', 'Nescafe', '[Rack 3]', NULL, '2024-09-24 15:04:39', '2024-10-25 05:45:17'),
(831, 'FMD174160', 'GFM Chicken Salami (250 gm)', 'Basic description of Meat, Fish & Seafood 42', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 360.00, 370.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:39', '2024-10-25 05:45:17'),
(832, 'FMD174153', 'GFM Chicken Breakfast Sausage (400 gm)', 'Basic description of Meat, Fish & Seafood 35', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 445.00, 455.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:39', '2024-10-25 05:45:17'),
(833, 'FMD174156', 'GFM Chicken Drumsticks (6 pcs)', 'Basic description of Meat, Fish & Seafood 38', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 555.00, 565.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:40', '2024-10-25 05:45:17'),
(834, 'FMD174155', 'GFM Chicken Cocktail Sausage (400 gm)', 'Basic description of Meat, Fish & Seafood 37', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 445.00, 455.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:40', '2024-10-25 05:45:17'),
(835, 'FMD174159', 'GFM Chicken Premium Mince Keema (1 kg)', 'Basic description of Meat, Fish & Seafood 41', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 720.00, 730.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:40', '2024-10-25 05:45:17'),
(836, 'FMD174161', 'GFM Chicken Wings (1 kg)', 'Basic description of Meat, Fish & Seafood 43', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 475.00, 485.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:40', '2024-10-25 05:45:17'),
(837, 'FMD174166', 'GFM Chicken Bacon (250 gm)', 'Basic description of Meat, Fish & Seafood 44', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 360.00, 370.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:40', '2024-10-25 05:45:17'),
(838, 'FMD176597', 'AMP Chicken Sausage SPCL (500 gm)', 'Basic description of Meat, Fish & Seafood 48', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 440.00, 450.00, 'PCS', 10.00, 10.00, ' Ad00001', 'Adhunik', '[Rack 7]', NULL, '2024-09-24 15:04:40', '2024-10-25 05:45:17'),
(839, 'FMD176596', 'AMP Chicken Sausage (500 gm)', 'Basic description of Meat, Fish & Seafood 47', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 365.00, 375.00, 'PCS', 10.00, 10.00, ' Ad00001', 'Adhunik', '[Rack 7]', NULL, '2024-09-24 15:04:40', '2024-10-25 05:45:17'),
(840, 'FMD176568', 'N&H Chicken-B/L Chicken Skin-On (0.84 kg)', 'Basic description of Meat, Fish & Seafood 46', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 788.00, 798.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:41', '2024-10-25 05:45:17'),
(841, 'FMD174168', 'GFM Chicken Ham (250 gm)', 'Basic description of Meat, Fish & Seafood 45', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 360.00, 370.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:41', '2024-10-25 05:45:17'),
(842, 'FMD176603', 'AMP Adhunik Chicken Lolly (500 gm)', 'Basic description of Meat, Fish & Seafood 54', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 265.00, 275.00, 'PCS', 10.00, 10.00, ' Ad00001', 'Adhunik', '[Rack 7]', NULL, '2024-09-24 15:04:41', '2024-10-25 05:45:17'),
(843, 'FMD176599', 'AMP Chicken Boneless Leg (500 gm)', 'Basic description of Meat, Fish & Seafood 50', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 328.00, 338.00, 'PCS', 10.00, 10.00, ' Ad00001', 'Adhunik', '[Rack 7]', NULL, '2024-09-24 15:04:41', '2024-10-25 05:45:17'),
(844, 'FMD176600', 'AMP Chicken Drumstick (500 gm)', 'Basic description of Meat, Fish & Seafood 51', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 315.00, 325.00, 'PCS', 10.00, 10.00, ' Ad00001', 'Adhunik', '[Rack 7]', NULL, '2024-09-24 15:04:41', '2024-10-25 05:45:17'),
(845, 'FMD176604', 'AMP Chicken Mince (500 gm)', 'Basic description of Meat, Fish & Seafood 55', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, ' Ad00001', 'Adhunik', '[Rack 7]', NULL, '2024-09-24 15:04:41', '2024-10-25 05:45:17'),
(846, 'FMD176605', 'AMP Chicken Salami (500 gm)', 'Basic description of Meat, Fish & Seafood 56', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 540.00, 550.00, 'PCS', 10.00, 10.00, ' Ad00001', 'Adhunik', '[Rack 7]', NULL, '2024-09-24 15:04:41', '2024-10-25 05:45:17');
INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_description`, `category_id`, `category_name`, `subcategory_id`, `subcategory_name`, `delivery_target_days`, `discount`, `actual_price`, `sell_price`, `mr_price`, `unit_info`, `available_quantity`, `stock_quantity`, `brand_id`, `brand_name`, `product_location`, `primary_image`, `created_at`, `updated_at`) VALUES
(847, 'FMD228417', 'Byanjan Sunflower Oil (1 ltr)', 'Basic description of Oil, Spice & Condiments 6', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:42', '2024-10-25 05:45:12'),
(848, 'FMD176602', 'AMP Chicken Dog  Biscuits (200 gm)', 'Basic description of Meat, Fish & Seafood 53', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 230.00, 240.00, 'PCS', 10.00, 10.00, ' Ad00001', 'Adhunik', '[Rack 7]', NULL, '2024-09-24 15:04:42', '2024-10-25 05:45:17'),
(849, 'FMD176598', 'AMP Chicken Boneless Breast (500 gm)', 'Basic description of Meat, Fish & Seafood 49', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 390.00, 400.00, 'PCS', 10.00, 10.00, ' Ad00001', 'Adhunik', '[Rack 7]', NULL, '2024-09-24 15:04:42', '2024-10-25 05:45:17'),
(850, 'FMD342458', 'Brown Sugar Powder (500 gm)', 'Basic description of Oil, Spice & Condiments 7', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:42', '2024-10-25 05:45:12'),
(851, 'FMD177348', 'N&H B/F Chicken Sausage (500 gms)', 'Basic description of Meat, Fish & Seafood 58', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 565.00, 575.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:42', '2024-10-25 05:45:17'),
(852, 'FMD177473', 'Chicken Legs (2.04 kg)', 'Basic description of Meat, Fish & Seafood 62', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1590.00, 1600.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:42', '2024-10-25 05:45:17'),
(853, 'FMD177472', 'Chicken Wings (1.6 kg)', 'Basic description of Meat, Fish & Seafood 61', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1490.00, 1500.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:43', '2024-10-25 05:45:17'),
(854, 'FMD178057', 'VCS Chicken Meatballs (500 gm)', 'Basic description of Meat, Fish & Seafood 63', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 260.00, 270.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:43', '2024-10-25 05:45:17'),
(855, 'FMD177349', 'N&H Chicken Liver (400 gms)', 'Basic description of Meat, Fish & Seafood 59', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 160.00, 170.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:43', '2024-10-25 05:45:17'),
(856, 'FMD177471', 'Chicken Leg (2.93 kg)', 'Basic description of Meat, Fish & Seafood 60', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 2334.00, 2344.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:43', '2024-10-25 05:45:17'),
(857, 'FMD174357', 'NESCAFE Classic (Frother Free) -200 gm', 'Basic description of Beverages 19', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 870.00, 880.00, 'PCS', 10.00, 10.00, ' Ne00001', 'Nescafe', '[Rack 3]', NULL, '2024-09-24 15:04:43', '2024-10-25 05:45:17'),
(858, 'FMD175803', 'N&H Chicken Legs (0.96 kg)', 'Basic description of Meat, Fish & Seafood 64', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 758.00, 768.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:04:43', '2024-10-25 05:45:17'),
(859, 'FMD184257', 'Chicken Legs (2.95 kg)', 'Basic description of Meat, Fish & Seafood 67', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 2350.00, 2360.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:43', '2024-10-25 05:45:17'),
(860, 'FMD185833', 'Chicken Drumsticks (435gm)', 'Basic description of Meat, Fish & Seafood 66', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 273.00, 283.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:44', '2024-10-25 05:45:17'),
(861, 'FMD184873', 'Chicken Wings (435 gm)', 'Basic description of Meat, Fish & Seafood 65', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 208.00, 218.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:44', '2024-10-25 05:45:17'),
(862, 'FMD177807', 'Chicken Legs (950 gm)', 'Basic description of Meat, Fish & Seafood 68', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 750.00, 760.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:44', '2024-10-25 05:45:17'),
(863, 'FMD214621', 'Mcvities (UK) Digestive (1 Kg)', 'Basic description of Cookies & Biscuits 79', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 350.00, 360.00, 'PCS', 10.00, 10.00, ' Mc00002', 'Mcvities (UK)', '[Rack 3]', NULL, '2024-09-24 15:04:44', '2024-10-25 05:45:15'),
(864, 'FMD193714', 'Munchy\'s Lexus Cheese Cream Cracker Biscuit (190 gm)', 'Basic description of Cookies & Biscuits 78', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 285.00, 295.00, 'PCS', 10.00, 10.00, ' Mu00001', 'Munchys', '[Rack 3]', NULL, '2024-09-24 15:04:44', '2024-10-25 05:45:15'),
(865, 'FMD213311', 'Suji Rusk (205 gm)', 'Basic description of Cookies & Biscuits 80', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 120.00, 130.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:44', '2024-10-25 05:45:15'),
(866, 'FMD216594', 'Protein Cookies (200 gms) - GAIA', 'Basic description of Cookies & Biscuits 85', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 215.00, 225.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:45', '2024-10-25 05:45:15'),
(867, 'FMD212718', 'Cream Cracker Shoon Fatt', 'Basic description of Cookies & Biscuits 82', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 265.00, 275.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:45', '2024-10-25 05:45:15'),
(868, 'FMD192052', 'Butter Chicken (300 gm)', 'Basic description of Meat, Fish & Seafood 70', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 490.00, 500.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:45', '2024-10-25 05:45:17'),
(869, 'FMD212438', 'Suji Rusk 170 gm', 'Basic description of Cookies & Biscuits 81', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:45', '2024-10-25 05:45:15'),
(870, 'FMD215862', 'Royal Danish Style Cookies', 'Basic description of Cookies & Biscuits 84', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 270.00, 280.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:45', '2024-10-25 05:45:15'),
(871, 'FMD174365', 'NESCAFE Classic (Mason Jar Free) -100 gm', 'Basic description of Beverages 20', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 455.00, 465.00, 'PCS', 10.00, 10.00, ' Ne00001', 'Nescafe', '[Rack 3]', NULL, '2024-09-24 15:04:45', '2024-10-25 05:45:17'),
(872, 'FMD199216', 'Plain Puff', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 24', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 120.00, 130.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:04:45', '2024-10-25 05:45:15'),
(873, 'FMD209877', 'Suji Rusk (305 gm)', 'Basic description of Cookies & Biscuits 83', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 170.00, 180.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:45', '2024-10-25 05:45:15'),
(874, 'FMD177366', 'Pampers Pants SM 56s', 'Basic description of Baby Care 4', '1', 'Baby Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1109.00, 1119.00, 'PCS', 10.00, 10.00, ' Pa00001', 'Pamper', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:04:46', '2024-10-25 05:45:15'),
(875, 'FMD192054', 'Chicken Tandoori Drumstick (460 gm)', 'Basic description of Meat, Fish & Seafood 72', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 575.00, 585.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:46', '2024-10-25 05:45:17'),
(876, 'FMD192053', 'Chicken Malai Tikka (400 gm)', 'Basic description of Meat, Fish & Seafood 71', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 560.00, 570.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:46', '2024-10-25 05:45:17'),
(877, 'FMD189013', '??? ??? (Dang ,Banke)', 'Basic description of Rice & Pulses 31', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:46', '2024-10-25 05:45:13'),
(878, 'FMD182300', 'Chicken Wings (780 gm)', 'Basic description of Meat, Fish & Seafood 76', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 575.00, 585.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:04:46', '2024-10-25 05:45:17'),
(879, 'FMD191960', 'VCS Chicken Nuggets (500 gms)', 'Basic description of Meat, Fish & Seafood 74', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 305.00, 315.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:47', '2024-10-25 05:45:17'),
(880, 'FMD192055', 'Honey Glazed Wings (400 gm)', 'Basic description of Meat, Fish & Seafood 73', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 485.00, 495.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:47', '2024-10-25 05:45:17'),
(881, 'FMD180682', 'Chicken Whole Leg (1.23 kg)', 'Basic description of Meat, Fish & Seafood 75', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 790.00, 800.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:47', '2024-10-25 05:45:17'),
(882, 'FMD217297', 'Toi Moi Chocolate Cream Water Biscuit', 'Basic description of Cookies & Biscuits 87', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:47', '2024-10-25 05:45:15'),
(883, 'FMD331023', 'Whisper Ultra Clean XL+ 15 Pads', 'Basic description of Personal Care 48', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 295.00, 305.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:47', '2024-10-25 05:45:13'),
(884, 'FMD177805', 'Chicken Whole Leg (1.24 kg)', 'Basic description of Meat, Fish & Seafood 77', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 796.00, 806.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:47', '2024-10-25 05:45:17'),
(885, 'FMD182415', 'German Bratwurst (BBQ Chicken Sausage) (400 gm)', 'Basic description of Meat, Fish & Seafood 79', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 470.00, 480.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:04:48', '2024-10-25 05:45:17'),
(886, 'FMD217298', 'Toi Moi Strawberry Cream Water Biscuit', 'Basic description of Cookies & Biscuits 88', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:48', '2024-10-25 05:45:15'),
(887, 'FMD189012', '???(Pyuthan, Kalikot)', 'Basic description of Rice & Pulses 30', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:48', '2024-10-25 05:45:13'),
(888, 'FMD217296', 'Gaia Sugar Free Ragi  Crisps & Crunchy Cookies', 'Basic description of Cookies & Biscuits 86', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 270.00, 280.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:48', '2024-10-25 05:45:15'),
(889, 'FMD331022', 'Whisper Ultra Clean XL+ 44\'P', 'Basic description of Personal Care 47', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 949.00, 959.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:48', '2024-10-25 05:45:13'),
(890, 'FMD218955', 'Britannia Mariegold (300 gm)', 'Basic description of Cookies & Biscuits 90', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:48', '2024-10-25 05:45:15'),
(891, 'FMD174438', 'Palpa (Natural) Filter Grind 250 gm', 'Basic description of Beverages 37', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 780.00, 790.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:49', '2024-10-25 05:45:12'),
(892, 'FMD184120', 'Chicken Whole Leg (500 gm)', 'Basic description of Meat, Fish & Seafood 81', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 390.00, 400.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:49', '2024-10-25 05:45:17'),
(893, 'FMD174076', 'Pangash Fish (Steak) - (800 gm)', 'Basic description of Meat, Fish & Seafood 257', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 585.00, 595.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:49', '2024-10-25 05:45:12'),
(894, 'FMD174390', 'Bajra Turmeric Powder (500 gm)', 'Basic description of Oil, Spice & Condiments 58', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, ' Ba00001', 'Bajra', '[Rack 8]', NULL, '2024-09-24 15:04:49', '2024-10-25 05:45:13'),
(895, 'FMD356204', 'Kombucha (1 Ltr)', 'Basic description of Beverages 69', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:50', '2024-10-25 05:45:13'),
(896, 'FMD174048', 'Quail Egg- (30 pc - Crate)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 13', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 230.00, 240.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:50', '2024-10-25 05:45:15'),
(897, 'FMD174415', 'Almonds (500g)', 'Basic description of Snacks & Dry Fruits 119', '22', 'Snacks & Dry Fruits', '33', 'Dry Fruits', '0', 0.00, 0.00, 690.00, 700.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:50', '2024-10-25 05:45:14'),
(898, 'FMD177551', 'Mum\'s Hot & Sweet Ketchup (1 kg)', 'Basic description of Soup, Sauce & Seasonings 1', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 230.00, 240.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:50', '2024-10-25 05:45:14'),
(899, 'FMD192527', 'Chicken Drumstick (530 gm)', 'Basic description of Meat, Fish & Seafood 107', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 467.00, 477.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:50', '2024-10-25 05:45:17'),
(900, 'FMD326086', 'N&H Chicken Legs (520 gm)', 'Basic description of Meat, Fish & Seafood 144', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 458.00, 468.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:50', '2024-10-25 05:45:10'),
(901, 'FMD191081', 'Musuro ko Daal (1 kg)', 'Basic description of Rice & Pulses 37', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:51', '2024-10-25 05:45:13'),
(902, 'FMD342460', 'Raw Sugar Powder (Pkt- 250gm)', 'Basic description of Oil, Spice & Condiments 9', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:51', '2024-10-25 05:45:12'),
(903, 'FMD189017', 'Sano Kerau', 'Basic description of Rice & Pulses 35', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 160.00, 170.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:51', '2024-10-25 05:45:13'),
(904, 'FMD174077', 'Salmon Steak Portion (Norway) 150Gm', 'Basic description of Meat, Fish & Seafood 258', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 585.00, 595.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:51', '2024-10-25 05:45:12'),
(905, 'FMD174055', 'Sunaulo Anda (Egg) (30  pcs)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 20', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 430.00, 440.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:51', '2024-10-25 05:45:15'),
(906, 'FMD177553', 'Mum\'s Tomato Ketchup (1 kg)', 'Basic description of Soup, Sauce & Seasonings 3', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 230.00, 240.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:51', '2024-10-25 05:45:14'),
(907, 'FMD174057', 'Nauni Ghee (1 kg)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 22', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 940.00, 950.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:51', '2024-10-25 05:45:15'),
(908, 'FMD174058', 'Pasteurized Milk (300 ml) (Glass Jar)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 23', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:52', '2024-10-25 05:45:15'),
(909, 'FMD230995', 'Pampers Diapers 98s (MD)', 'Basic description of Baby Care 17', '1', 'Baby Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 2468.00, 2478.00, 'PCS', 10.00, 10.00, ' Pa00001', 'Pamper', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:04:52', '2024-10-25 05:45:14'),
(910, 'FMD177560', 'Local Chicken Egg (12pcs) Box', 'Egg and dairy provide protein, calcium, and essential nutrients for health 31', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 422.00, 432.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:52', '2024-10-25 05:45:15'),
(911, 'FMD174444', 'Hot & Sour Vegetable Soup', 'Basic description of Soup, Sauce & Seasonings 6', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 78.00, 88.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:52', '2024-10-25 05:45:14'),
(912, 'FMD202217', 'Long Grain Rice Best (1 kg)', 'Basic description of Rice & Pulses 41', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:52', '2024-10-25 05:45:13'),
(913, 'FMD314894', 'Appy Fizz 250ML', 'Basic description of Beverages 70', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 40.00, 50.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:52', '2024-10-25 05:45:13'),
(914, 'FMD176382', 'Chabaa Mango Juice (230 ml)', 'Basic description of Beverages 85', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:53', '2024-10-25 05:45:14'),
(915, 'FMD177410', 'Milk (1 Ltr)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 29', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 95.00, 105.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:53', '2024-10-25 05:45:15'),
(916, 'FMD174459', 'Maggi Hot & Sweet Ketchup 1 kg', 'Basic description of Soup, Sauce & Seasonings 11', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 135.00, 145.00, 'PCS', 10.00, 10.00, ' Ma00001', 'Maggi', '[Rack 9]', NULL, '2024-09-24 15:04:53', '2024-10-25 05:45:14'),
(917, 'FMD198793', 'India Gate Brown Basmati Rice Active Health Pack 1 kg', 'Basic description of Rice & Pulses 43', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 220.00, 230.00, 'PCS', 10.00, 10.00, ' In00001', 'India Gate', '[Rack 8]', NULL, '2024-09-24 15:04:53', '2024-10-25 05:45:13'),
(918, 'FMD174239', 'Pasta Sauce, Traditional (397 gm)- American Garden', 'Basic description of Soup, Sauce & Seasonings 16', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 315.00, 325.00, 'PCS', 10.00, 10.00, ' Am00001', 'American Garden', '[Rack 9]', NULL, '2024-09-24 15:04:53', '2024-10-25 05:45:14'),
(919, 'FMD174461', 'Maggi Tomato Ketchup 1 kg', 'Basic description of Soup, Sauce & Seasonings 13', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, ' Ma00001', 'Maggi', '[Rack 9]', NULL, '2024-09-24 15:04:53', '2024-10-25 05:45:14'),
(920, 'FMD174191', 'Homemade Tomato Ketchup (200 gm)', 'Basic description of Soup, Sauce & Seasonings 15', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 115.00, 125.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:04:54', '2024-10-25 05:45:14'),
(921, 'FMD174462', 'Maggi Tomato Ketchup 500 gms', 'Basic description of Soup, Sauce & Seasonings 14', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 205.00, 215.00, 'PCS', 10.00, 10.00, ' Ma00001', 'Maggi', '[Rack 9]', NULL, '2024-09-24 15:04:54', '2024-10-25 05:45:14'),
(922, 'FMD359605', 'Kellogs Corn Flakes Original (475 gm)', 'Basic description of Breakfast 73', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 415.00, 425.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:54', '2024-10-25 05:45:15'),
(923, 'FMD198985', 'Tokla Asli Masla Tea (1 Kg)', 'Basic description of Beverages 58', '4', 'Beverages', '5', 'Tea', '0', 0.00, 0.00, 675.00, 685.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:54', '2024-10-25 05:45:13'),
(924, 'FMD197264', 'VCS Basa Steak(1 kg)', 'Basic description of Meat, Fish & Seafood 247', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 590.00, 600.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:54', '2024-10-25 05:45:12'),
(925, 'FMD174437', 'Palpa (Natural) Filter Grind 1000 gm', 'Basic description of Beverages 36', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 2490.00, 2500.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:54', '2024-10-25 05:45:12'),
(926, 'FMD311475', 'Weetabix Original 430g', 'Basic description of Breakfast 70', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 765.00, 775.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:54', '2024-10-25 05:45:15'),
(927, 'FMD364100', 'Oats (1 kg - Refill) - Bagrrys', 'Basic description of Breakfast 72', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 440.00, 450.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:54', '2024-10-25 05:45:15'),
(928, 'FMD175520', 'Dry Onion (Per/kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 126', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 60.00, 70.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:55', '2024-10-25 05:45:16'),
(929, 'FMD175801', 'Dry Lasun (Chinese) 500 gm', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 127', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 165.00, 175.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:55', '2024-10-25 05:45:16'),
(930, 'FMD364099', 'Chocos Crunch (375 gms) - Lawrence', 'Basic description of Breakfast 71', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 285.00, 295.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:55', '2024-10-25 05:45:15'),
(931, 'FMD175518', 'Ginger (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 124', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 55.00, 65.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:55', '2024-10-25 05:45:16'),
(932, 'FMD174255', 'Cake Mix, Orange(500 gm)- American Garden', 'Basic description of Baking & Cooking 4', '3', 'Baking & Cooking', '2', 'Baking Mixes', '0', 0.00, 0.00, 350.00, 360.00, 'PCS', 10.00, 10.00, ' Am00001', 'American Garden', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:04:55', '2024-10-25 05:45:16'),
(933, 'FMD175519', 'Potato - Normal (Per/kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 125', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 75.00, 85.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:55', '2024-10-25 05:45:16'),
(934, 'FMD283403', 'Gaia Muesli Diet 400gm', 'Basic description of Breakfast 76', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 450.00, 460.00, 'PCS', 0.00, 0.00, ' GA00001', 'GAIA', '[Rack 3]', NULL, '2024-09-24 15:04:55', '2024-10-25 05:45:15'),
(935, 'FMD283405', 'Gaia Muesli Nutty Deligt 400gm', 'Basic description of Breakfast 78', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 450.00, 460.00, 'PCS', 0.00, 0.00, ' GA00001', 'GAIA', '[Rack 3]', NULL, '2024-09-24 15:04:56', '2024-10-25 05:45:15'),
(936, 'FMD283404', 'Gaia Muesli Fruit & Nuts 400gm', 'Basic description of Breakfast 77', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 470.00, 480.00, 'PCS', 10.00, 10.00, ' GA00001', 'GAIA', '[Rack 3]', NULL, '2024-09-24 15:04:56', '2024-10-25 05:45:15'),
(937, 'FMD277776', 'Kellogg\'s Extra Muesli Fruit & Nut (1 Kg Jar)', 'Basic description of Breakfast 81', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 1189.00, 1199.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:56', '2024-10-25 05:45:15'),
(938, 'FMD278217', 'Gaia Oats Multigrain (500gm)', 'Basic description of Breakfast 82', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:56', '2024-10-25 05:45:15'),
(939, 'FMD191068', 'Snapin Piri Piri Mix (50 gm)', 'Basic description of Oil, Spice & Condiments 27', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 185.00, 195.00, 'PCS', 10.00, 10.00, ' Sn00001', 'Snapin', '[Rack 7]', NULL, '2024-09-24 15:04:56', '2024-10-25 05:45:13'),
(940, 'FMD254103', 'Kellogg\'s Oats Refill (400 gm)', 'Basic description of Breakfast 80', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 165.00, 175.00, 'PCS', 0.00, 0.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:56', '2024-10-25 05:45:15'),
(941, 'FMD199202', 'Chocolate Prawling', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 10', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 180.00, 190.00, 'PCS', 0.00, 0.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:04:56', '2024-10-25 05:45:15'),
(942, 'FMD177394', 'Brinjal (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 130', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 65.00, 75.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:56', '2024-10-25 05:45:16'),
(943, 'FMD177393', 'Baby Amaranth (300 gm) (?g??? ???)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 129', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 65.00, 75.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:56', '2024-10-25 05:45:16'),
(944, 'FMD283406', 'Gaia Muesli Real Fruit 400gm', 'Basic description of Breakfast 79', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 485.00, 495.00, 'PCS', 10.00, 10.00, ' GA00001', 'GAIA', '[Rack 3]', NULL, '2024-09-24 15:04:56', '2024-10-25 05:45:15'),
(945, 'FMD177395', 'Mini Cucumber (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 131', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:57', '2024-10-25 05:45:16'),
(946, 'FMD205067', 'VCS Buff Momo (50 pcs)', 'Basic description of Ready to Cook 36', '19', 'Ready to Cook', '29', 'Momo', '0', 0.00, 0.00, 390.00, 400.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:57', '2024-10-25 05:45:13'),
(947, 'FMD175802', 'Dry Lasun (Nepali) 500 gm', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 128', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 165.00, 175.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:57', '2024-10-25 05:45:16'),
(948, 'FMD215889', 'Nescafe Classic 50 gm', 'Basic description of Beverages 41', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 250.00, 260.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:04:57', '2024-10-25 05:45:12'),
(949, 'FMD192046', 'GFM Buff Momo (40 pcs)', 'Basic description of Ready to Cook 39', '19', 'Ready to Cook', '29', 'Momo', '0', 0.00, 0.00, 525.00, 535.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:57', '2024-10-25 05:45:13'),
(950, 'FMD191069', 'Snapin Pizza Mix (45 gm)', 'Basic description of Oil, Spice & Condiments 28', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 185.00, 195.00, 'PCS', 10.00, 10.00, ' Sn00001', 'Snapin', '[Rack 7]', NULL, '2024-09-24 15:04:57', '2024-10-25 05:45:13'),
(951, 'FMD174075', 'N&H Pork Chop (Thai ) (1 kg)', 'Basic description of Meat, Fish & Seafood 300', '13', 'Meat, Fish & Seafood', '25', 'Pork', '0', 0.00, 0.00, 1340.00, 1350.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:04:57', '2024-10-25 05:45:12'),
(952, 'FMD192045', 'GFM Buff Momo (20 pcs)', 'Basic description of Ready to Cook 38', '19', 'Ready to Cook', '29', 'Momo', '0', 0.00, 0.00, 275.00, 285.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:04:57', '2024-10-25 05:45:13'),
(953, 'FMD177397', 'Farsi Ko Munta (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 132', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:58', '2024-10-25 05:45:16'),
(954, 'FMD282338', 'Kellogg\'s Muesli Nut Delight (750 gm)', 'Basic description of Breakfast 83', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 765.00, 775.00, 'PCS', 10.00, 10.00, ' Ke00001', 'Kelloggs', '[Rack 3]', NULL, '2024-09-24 15:04:58', '2024-10-25 05:45:15'),
(955, 'FMD194648', 'N&H Frozen Pangasius Fish Ball 500Gm', 'Basic description of Meat, Fish & Seafood 245', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 1090.00, 1100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:58', '2024-10-25 05:45:12'),
(956, 'FMD177399', 'Spinach (300 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 134', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 50.00, 60.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:58', '2024-10-25 05:45:16'),
(957, 'FMD177403', 'Long Green Pepper (200 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 138', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 30.00, 40.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:58', '2024-10-25 05:45:16'),
(958, 'FMD177398', 'Rayo Saag (200 gm) (???????)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 133', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 65.00, 75.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:58', '2024-10-25 05:45:16'),
(959, 'FMD177400', 'Sweet Potato (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 135', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 100.00, 110.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:58', '2024-10-25 05:45:16'),
(960, 'FMD177405', 'Coriander (200 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 140', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:58', '2024-10-25 05:45:16'),
(961, 'FMD404100', 'N&H Pork Chop - 1 Kg', 'Basic description of Meat, Fish & Seafood 185', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1640.00, 1650.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:59', '2024-10-25 05:45:11'),
(962, 'FMD174256', 'Pancake & Waffle (460 gm)- American Garden', 'Basic description of Baking & Cooking 5', '3', 'Baking & Cooking', '2', 'Baking Mixes', '0', 0.00, 0.00, 350.00, 360.00, 'PCS', 10.00, 10.00, ' Am00001', 'American Garden', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:04:59', '2024-10-25 05:45:16'),
(963, 'FMD308527', 'N&H Chicken Leg (390 gm)', 'Basic description of Meat, Fish & Seafood 139', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 302.00, 312.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:59', '2024-10-25 05:45:10'),
(964, 'FMD174102', 'N&H B/F Pork Sausage 500Gm', 'Basic description of Meat, Fish & Seafood 301', '13', 'Meat, Fish & Seafood', '25', 'Pork', '0', 0.00, 0.00, 590.00, 600.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:04:59', '2024-10-25 05:45:12'),
(965, 'FMD326085', 'N&H Chicken Legs (380 gm)', 'Basic description of Meat, Fish & Seafood 143', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 294.00, 304.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:59', '2024-10-25 05:45:10'),
(966, 'FMD299199', 'Air Freshner - Floral Perfection (300 ml) - Glade', 'Basic description of Household 30', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 260.00, 270.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:59', '2024-10-25 05:45:16'),
(967, 'FMD299200', 'Air Freshner - Wild Lavender (300 ml) - Glade', 'Basic description of Household 31', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 260.00, 270.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:59', '2024-10-25 05:45:16'),
(968, 'FMD404102', 'N&H Trout Fish - 1 Kg', 'Basic description of Meat, Fish & Seafood 187', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1890.00, 1900.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:04:59', '2024-10-25 05:45:11'),
(969, 'FMD299201', 'Baygon Max FIK 200 ml x 48 INR 115', 'Basic description of Household 32', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 147.00, 157.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:04:59', '2024-10-25 05:45:16'),
(970, 'FMD299203', 'cockroach killer(CIK )400 ml- Baygon Max', 'Basic description of Household 34', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 350.00, 360.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:00', '2024-10-25 05:45:16'),
(971, 'FMD404101', 'N&H Smoked Chicken Breast- 1 Kg', 'Basic description of Meat, Fish & Seafood 186', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1740.00, 1750.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:00', '2024-10-25 05:45:11'),
(972, 'FMD177824', 'Bitter Gourd (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 148', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 45.00, 55.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:00', '2024-10-25 05:45:16'),
(973, 'FMD299204', 'cockroach killer(CIK )625 ml- Baygon Max', 'Basic description of Household 35', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 534.00, 544.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:00', '2024-10-25 05:45:16'),
(974, 'FMD281007', 'Kellogg\'s Muesli No Added Sugar (500 gm)', 'Basic description of Breakfast 89', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 540.00, 550.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:00', '2024-10-25 05:45:15'),
(975, 'FMD299202', 'CIK (200 ml) - Baygon Max', 'Basic description of Household 33', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 147.00, 157.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:00', '2024-10-25 05:45:16'),
(976, 'FMD230902', 'N&H Boneless Chicken Leg (500 gm)', 'Basic description of Meat, Fish & Seafood 210', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 465.00, 475.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:00', '2024-10-25 05:45:11'),
(977, 'FMD316954', 'Marie Gold (1 kg) - Britanni', 'Basic description of Cookies & Biscuits 14', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:00', '2024-10-25 05:45:15'),
(978, 'FMD226181', 'Doritos Flamin Hot 175g', 'Basic description of Snacks & Dry Fruits 98', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 640.00, 650.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:01', '2024-10-25 05:45:14'),
(979, 'FMD226180', 'Cheetos Twisted 160g', 'Basic description of Snacks & Dry Fruits 97', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 850.00, 860.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:01', '2024-10-25 05:45:14'),
(980, 'FMD174335', 'Borges Extra Virgin Olive (Oil 500 ml)', 'Basic description of Oil, Spice & Condiments 43', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 980.00, 990.00, 'PCS', 10.00, 10.00, ' Bo00001', 'Borges', '[Rack 8]', NULL, '2024-09-24 15:05:01', '2024-10-25 05:45:13'),
(981, 'FMD221837', 'Dove Reviving Body wash 450 ml', 'Basic description of Personal Care 21', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 440.00, 450.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:01', '2024-10-25 05:45:13'),
(982, 'FMD188997', 'Nuwakote Pokhareli Rice (5 kg)', 'Basic description of Rice & Pulses 15', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1030.00, 1040.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:01', '2024-10-25 05:45:13'),
(983, 'FMD188998', '??????? ????  (Jumla)', 'Basic description of Rice & Pulses 16', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 420.00, 430.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:01', '2024-10-25 05:45:13'),
(984, 'FMD174334', 'Saffola Gold (5 Litre)', 'Basic description of Oil, Spice & Condiments 42', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 2590.00, 2600.00, 'PCS', 10.00, 10.00, ' Sa00001', 'Saffola', '[Rack 8]', NULL, '2024-09-24 15:05:01', '2024-10-25 05:45:13'),
(985, 'FMD174100', 'Norwegian Salmon Portions - (150 gm)', 'Basic description of Meat, Fish & Seafood 231', '13', 'Meat, Fish & Seafood', '23', 'Seafood', '0', 0.00, 0.00, 920.00, 930.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:02', '2024-10-25 05:45:12'),
(986, 'FMD174163', 'Timmur Chhop (100 gm)', 'Basic description of Local Produces 23', '12', 'Local Produces', '20', 'Pickles', '0', 0.00, 0.00, 217.00, 227.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:03', '2024-10-25 05:45:17'),
(987, 'FMD174463', 'Mcvities (UK) Digestive (400 gm)', 'Basic description of Cookies & Biscuits 55', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 300.00, 310.00, 'PCS', 10.00, 10.00, ' Mc00002', 'Mcvities (UK)', '[Rack 3]', NULL, '2024-09-24 15:05:03', '2024-10-25 05:45:15'),
(988, 'FMD174406', 'Britannia Digestive (250g)', 'Basic description of Cookies & Biscuits 56', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 120.00, 130.00, 'PCS', 10.00, 10.00, ' Br00001', 'Britannia', '[Rack 3]', NULL, '2024-09-24 15:05:03', '2024-10-25 05:45:15'),
(989, 'FMD299205', 'Dranex (375 gms) - Kiwi', 'Basic description of Household 36', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 310.00, 320.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:03', '2024-10-25 05:45:16'),
(990, 'FMD174146', 'Masala Pickle  (380 gm)', 'Basic description of Local Produces 21', '12', 'Local Produces', '20', 'Pickles', '0', 0.00, 0.00, 315.00, 325.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:03', '2024-10-25 05:45:17'),
(991, 'FMD174164', 'Tomato Pickle (380 gm)', 'Basic description of Local Produces 24', '12', 'Local Produces', '20', 'Pickles', '0', 0.00, 0.00, 215.00, 225.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:04', '2024-10-25 05:45:17'),
(992, 'FMD174190', 'Jaggery (1 kg)', 'Basic description of Local Produces 33', '12', 'Local Produces', '21', 'More Local Products', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:04', '2024-10-25 05:45:17'),
(993, 'FMD174299', 'House Blend 250 gm Filter Grind (Floral/Light Roast)-  (Premium / Export Quality)', 'Basic description of Beverages 11', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 690.00, 700.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:04', '2024-10-25 05:45:17'),
(994, 'FMD177418', 'Tomato Pickle Glass Jar', 'Basic description of Local Produces 25', '12', 'Local Produces', '20', 'Pickles', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:04', '2024-10-25 05:45:17'),
(995, 'FMD177417', 'Black Rice (1 kg)', 'Basic description of Local Produces 31', '12', 'Local Produces', '21', 'More Local Products', '0', 0.00, 0.00, 490.00, 500.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:05', '2024-10-25 05:45:17'),
(996, 'FMD192089', 'Akabare Pickle  ( 380 gm ) Very Spicy', 'Basic description of Local Produces 26', '12', 'Local Produces', '20', 'Pickles', '0', 0.00, 0.00, 385.00, 395.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:05', '2024-10-25 05:45:17'),
(997, 'FMD188199', 'Baby Potato (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 75', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:05', '2024-10-25 05:45:16'),
(998, 'FMD215621', 'N&H Trout Fish (1470 gm)', 'Basic description of Meat, Fish & Seafood 242', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 2268.00, 2278.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:05', '2024-10-25 05:45:12'),
(999, 'FMD188223', 'Shitake Mushroom (200 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 80', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 230.00, 240.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:05', '2024-10-25 05:45:16'),
(1000, 'FMD188233', 'Cherry Tomato (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 81', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 215.00, 225.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:06', '2024-10-25 05:45:16'),
(1001, 'FMD183384', 'Cabbage (1.1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 83', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 100.00, 110.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:06', '2024-10-25 05:45:16'),
(1002, 'FMD188321', 'Mix Satu (400 gm)', 'Basic description of Local Produces 34', '12', 'Local Produces', '21', 'More Local Products', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:06', '2024-10-25 05:45:17'),
(1003, 'FMD404112', 'Vitali Salame Milano 100Gm', 'Basic description of Meat, Fish & Seafood 293', '13', 'Meat, Fish & Seafood', '25', 'Pork', '0', 0.00, 0.00, 620.00, 630.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:06', '2024-10-25 05:45:12'),
(1004, 'FMD174184', 'VCS Chicken Momo  (50 pcs)', 'Basic description of Ready to Cook 28', '19', 'Ready to Cook', '29', 'Momo', '0', 0.00, 0.00, 390.00, 400.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:06', '2024-10-25 05:45:13'),
(1005, 'FMD174128', 'VCS Chicken Mince (500 gm)', 'Basic description of Meat, Fish & Seafood 21', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 315.00, 325.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:06', '2024-10-25 05:45:17'),
(1006, 'FMD174344', 'Nestlé CEREGROW Fortified Multigrain Cereal with Milk and Fruits (From 2 to 5 Years) (300 gm)', 'Basic description of Breakfast 49', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 532.00, 542.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 3]', NULL, '2024-09-24 15:05:06', '2024-10-25 05:45:15'),
(1007, 'FMD174303', 'Peaberry Coffee 250 gm Filter Grind (Rare/ Limited Edition/ Sweet After After Taste/Light Roast)-  (Premium / Export Quality)', 'Basic description of Beverages 15', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 990.00, 1000.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:06', '2024-10-25 05:45:17'),
(1008, 'FMD188234', 'Tama (500 gm) Bottle', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 82', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:06', '2024-10-25 05:45:16'),
(1009, 'FMD174070', 'Italian Bread', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 36', '2', 'Bakery', '1', 'Fresh Bakes', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:05:07', '2024-10-25 05:45:16'),
(1010, 'FMD404279', 'Pumpkin (1.28 KG)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 47', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 118.00, 128.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:07', '2024-10-25 05:45:15'),
(1011, 'FMD310842', 'N&H Boneless Chicken Cubes (500 gm)', 'Basic description of Meat, Fish & Seafood 136', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 515.00, 525.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:07', '2024-10-25 05:45:10'),
(1012, 'FMD379748', 'Red Potato (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 45', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:07', '2024-10-25 05:45:15'),
(1013, 'FMD385428', 'Tama (350 gm) Glass Jar', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 46', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:07', '2024-10-25 05:45:15'),
(1014, 'FMD353615', 'Carrot (Per Kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 44', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:07', '2024-10-25 05:45:15'),
(1015, 'FMD408713', 'Supervores Pumpkin (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 48', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:08', '2024-10-25 05:45:15'),
(1016, 'FMD174354', 'Nestlé CERELAC Stage 1, Wheat (From 6 Months) (300 gm)', 'Basic description of Breakfast 46', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 362.00, 372.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 3]', NULL, '2024-09-24 15:05:08', '2024-10-25 05:45:15'),
(1017, 'FMD174353', 'Nestlé CERELAC Stage 1, Wheat Apple (From 6 Months) (300 gm)', 'Basic description of Breakfast 45', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 383.00, 393.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 3]', NULL, '2024-09-24 15:05:08', '2024-10-25 05:45:15');
INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_description`, `category_id`, `category_name`, `subcategory_id`, `subcategory_name`, `delivery_target_days`, `discount`, `actual_price`, `sell_price`, `mr_price`, `unit_info`, `available_quantity`, `stock_quantity`, `brand_id`, `brand_name`, `product_location`, `primary_image`, `created_at`, `updated_at`) VALUES
(1018, 'FMD174352', 'Nestlé CERELAC Stage 2, Wheat Apple Cherry (From 8 Months) (300gm)', 'Basic description of Breakfast 44', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 406.00, 416.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 3]', NULL, '2024-09-24 15:05:08', '2024-10-25 05:45:15'),
(1019, 'FMD215623', 'Whisper Ultra Soft XL 30\'S', 'Basic description of Personal Care 17', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 406.00, 416.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:08', '2024-10-25 05:45:13'),
(1020, 'FMD205514', 'Arjuna Pumpkin (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 52', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:08', '2024-10-25 05:45:15'),
(1021, 'FMD205516', 'Cauliflower (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 54', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:09', '2024-10-25 05:45:15'),
(1022, 'FMD205513', 'Akabare Khursani (1 Pkt)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 51', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 200.00, 210.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:09', '2024-10-25 05:45:15'),
(1023, 'FMD205517', 'Ginger Gorkha (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 55', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:09', '2024-10-25 05:45:15'),
(1024, 'FMD205515', 'Broccoli (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 53', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:09', '2024-10-25 05:45:15'),
(1025, 'FMD205521', 'Turmeric Fresh (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 59', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:09', '2024-10-25 05:45:16'),
(1026, 'FMD205520', 'Raddish (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 58', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 75.00, 85.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:09', '2024-10-25 05:45:15'),
(1027, 'FMD178117', 'Carrot (Half kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 252', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:05:09', '2024-10-25 05:45:16'),
(1028, 'FMD189361', 'Gaia Muesli Nutty Delight (1 kg)', 'Basic description of Breakfast 126', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 950.00, 960.00, 'PCS', 10.00, 10.00, ' GA00001', 'GAIA', '[Rack 3]', NULL, '2024-09-24 15:05:09', '2024-10-25 05:45:15'),
(1029, 'FMD179602', 'India Gate Basmati Rice Dubar 1kg', 'Basic description of Rice & Pulses 4', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, ' In00001', 'India Gate', '[Rack 8]', NULL, '2024-09-24 15:05:10', '2024-10-25 05:45:13'),
(1030, 'FMD189357', 'Gaia Green Tea Ginger 25s', 'Basic description of Beverages 47', '4', 'Beverages', '5', 'Tea', '0', 0.00, 0.00, 294.00, 304.00, 'PCS', 10.00, 10.00, ' GA00001', 'GAIA', '[Rack 3]', NULL, '2024-09-24 15:05:10', '2024-10-25 05:45:13'),
(1031, 'FMD189360', 'Gaia Muesli Fruit & Nuts (1 kg)', 'Basic description of Breakfast 125', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 950.00, 960.00, 'PCS', 10.00, 10.00, ' GA00001', 'GAIA', '[Rack 3]', NULL, '2024-09-24 15:05:10', '2024-10-25 05:45:15'),
(1032, 'FMD195198', 'N&H Pork Sausage (Red Chilli) 500Gm', 'Basic description of Meat, Fish & Seafood 309', '13', 'Meat, Fish & Seafood', '25', 'Pork', '0', 0.00, 0.00, 590.00, 600.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:10', '2024-10-25 05:45:12'),
(1033, 'FMD184768', 'Baggery\'s Oats (450 gm)', 'Basic description of Breakfast 127', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 220.00, 230.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:10', '2024-10-25 05:45:15'),
(1034, 'FMD205057', 'Red Cup (380 gm)', 'Basic description of Beverages 42', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 1140.00, 1150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:10', '2024-10-25 05:45:12'),
(1035, 'FMD189236', 'Gaia Muesli Fruit & Nuts (400 gm)', 'Basic description of Breakfast 124', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 450.00, 460.00, 'PCS', 10.00, 10.00, ' GA00001', 'GAIA', '[Rack 3]', NULL, '2024-09-24 15:05:10', '2024-10-25 05:45:15'),
(1036, 'FMD178118', 'Cucumber Local (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 253', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 120.00, 130.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:05:11', '2024-10-25 05:45:16'),
(1037, 'FMD179603', 'India Gate Basmati Rice Dubar 5kg', 'Basic description of Rice & Pulses 5', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 982.00, 992.00, 'PCS', 10.00, 10.00, ' In00001', 'India Gate', '[Rack 8]', NULL, '2024-09-24 15:05:11', '2024-10-25 05:45:13'),
(1038, 'FMD178124', 'Bitter Gourd (Half kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 259', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:05:11', '2024-10-25 05:45:16'),
(1039, 'FMD179604', 'India Gate Basmati Rice Super Rozzana 1kg', 'Basic description of Rice & Pulses 6', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 168.00, 178.00, 'PCS', 10.00, 10.00, ' In00001', 'India Gate', '[Rack 8]', NULL, '2024-09-24 15:05:11', '2024-10-25 05:45:13'),
(1040, 'FMD343617', 'N&H Chicken Leg (980 gm)', 'Basic description of Meat, Fish & Seafood 166', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 872.00, 882.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:11', '2024-10-25 05:45:10'),
(1041, 'FMD178125', 'Bottle Gourd (1 kg) (Lauka)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 260', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:05:12', '2024-10-25 05:45:16'),
(1042, 'FMD178126', 'Brinjal (Half kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 261', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 40.00, 50.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:05:12', '2024-10-25 05:45:16'),
(1043, 'FMD178128', 'Chilli (Half kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 263', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 40.00, 50.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:05:12', '2024-10-25 05:45:16'),
(1044, 'FMD178127', 'Capsicum (Half kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 262', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:05:12', '2024-10-25 05:45:16'),
(1045, 'FMD343616', 'N &H Chicken Drumstick (890 gm)', 'Basic description of Meat, Fish & Seafood 165', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 791.00, 801.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:12', '2024-10-25 05:45:10'),
(1046, 'FMD221857', 'Cetaphil Gentle Skin cleanser 591 ml', 'Basic description of Personal Care 27', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 2650.00, 2660.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:12', '2024-10-25 05:45:13'),
(1047, 'FMD331027', 'Xtraa Laundry soap 200 gm (pack of 4 )', 'Basic description of Household 70', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:12', '2024-10-25 05:45:17'),
(1048, 'FMD406967', 'Cranberry Juice (1 ltr) - Real', 'Basic description of Beverages 43', '4', 'Beverages', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 0.00, 0.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:12', '2024-10-25 05:45:12'),
(1049, 'FMD331028', 'Herbyukt Dishwasher Bar 150 gms (Pack of 5)', 'Basic description of Household 71', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:12', '2024-10-25 05:45:17'),
(1050, 'FMD221842', 'Vaseline Petrolleum Jelly 200ml', 'Basic description of Personal Care 26', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:13', '2024-10-25 05:45:13'),
(1051, 'FMD322874', 'Sardine in Tomato Sauce (185 Gms) - Roza', 'Basic description of Packaged & Canned Foods 2', '15', 'Packaged & Canned Foods', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 185.00, 195.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:13', '2024-10-25 05:45:13'),
(1052, 'FMD319024', 'Mazza Spaghetti (500 gm)', 'Basic description of Pasta & Noodles 8', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 275.00, 285.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:13', '2024-10-25 05:45:13'),
(1053, 'FMD174215', 'Krugers Peach Ice Tea (400 gms)', 'Basic description of Beverages 89', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 540.00, 550.00, 'PCS', 10.00, 10.00, ' Kr00001', 'Kruger', '[Rack 3]', NULL, '2024-09-24 15:05:13', '2024-10-25 05:45:14'),
(1054, 'FMD302516', 'N&H Chicken Wings (840 gm)', 'Basic description of Meat, Fish & Seafood 215', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 662.00, 672.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:13', '2024-10-25 05:45:11'),
(1055, 'FMD221848', 'Knorr Chinese Manchurian Gravy Mix 55g', 'Basic description of Soup, Sauce & Seasonings 51', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:05:13', '2024-10-25 05:45:14'),
(1056, 'FMD246433', 'Terai Taichin Chiura (Beaten Rice) (1 Kg)', 'Basic description of Rice & Pulses 58', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 85.00, 95.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:14', '2024-10-25 05:45:13'),
(1057, 'FMD215870', 'Orion Custard Cake', 'Basic description of Sweets & Confectionery 15', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 265.00, 275.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:05:14', '2024-10-25 05:45:14'),
(1058, 'FMD215867', 'Dairy Milk Chocolate (55 gm)', 'Basic description of Sweets & Confectionery 21', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 60.00, 70.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:05:14', '2024-10-25 05:45:14'),
(1059, 'FMD318766', 'Mazza  Penne pasta (500 gm)', 'Basic description of Pasta & Noodles 9', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 275.00, 285.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:14', '2024-10-25 05:45:13'),
(1060, 'FMD174172', 'Kombucha (Green) (300 ml)', 'Basic description of Beverages 59', '4', 'Beverages', '5', 'Tea', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:14', '2024-10-25 05:45:13'),
(1061, 'FMD343966', 'N&H Pangas Filet (1 kg)', 'Basic description of Meat, Fish & Seafood 272', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 890.00, 900.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:14', '2024-10-25 05:45:12'),
(1062, 'FMD198421', 'Bhujiya', 'Basic description of Snacks & Dry Fruits 3', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 170.00, 180.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:14', '2024-10-25 05:45:13'),
(1063, 'FMD189232', 'Haldiram\'s Nut Cracker (400 gm)', 'Basic description of Snacks & Dry Fruits 5', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 316.00, 326.00, 'PCS', 10.00, 10.00, ' Ha00001', 'Haldirams', '[Rack 8]', NULL, '2024-09-24 15:05:14', '2024-10-25 05:45:13'),
(1064, 'FMD189237', 'Haldiram\'s Nut Cracker (200 gm)', 'Basic description of Snacks & Dry Fruits 6', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 127.00, 137.00, 'PCS', 10.00, 10.00, ' Ha00001', 'Haldirams', '[Rack 8]', NULL, '2024-09-24 15:05:15', '2024-10-25 05:45:13'),
(1065, 'FMD212060', 'Salted Peanuts (360 gm)', 'Basic description of Snacks & Dry Fruits 2', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 187.00, 197.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:15', '2024-10-25 05:45:13'),
(1066, 'FMD189245', 'Haldirams Gupshup Peanuts (200 gm)', 'Basic description of Snacks & Dry Fruits 14', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 112.00, 122.00, 'PCS', 10.00, 10.00, ' Ha00001', 'Haldirams', '[Rack 8]', NULL, '2024-09-24 15:05:15', '2024-10-25 05:45:13'),
(1067, 'FMD364082', 'Excellence Dark Chilli (100 gms) - Lindt', 'Basic description of Sweets & Confectionery 35', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 630.00, 640.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:05:15', '2024-10-25 05:45:14'),
(1068, 'FMD215861', 'Agnesi Spaghetti (500 gm)', 'Basic description of Pasta & Noodles 15', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 215.00, 225.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:15', '2024-10-25 05:45:13'),
(1069, 'FMD179946', 'Green Tea', 'Basic description of Beverages 51', '4', 'Beverages', '5', 'Tea', '0', 0.00, 0.00, 350.00, 360.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:15', '2024-10-25 05:45:13'),
(1070, 'FMD215887', 'Nescafe All in One 16 gm', 'Basic description of Beverages 39', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 6.00, 16.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:15', '2024-10-25 05:45:12'),
(1071, 'FMD293817', 'Kitkat Milk Cocoa', 'Basic description of Sweets & Confectionery 39', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 50.00, 60.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:05:15', '2024-10-25 05:45:14'),
(1072, 'FMD189041', 'Jau Ko Saatu (1 kg)', 'Basic description of Pure Organic Items 20', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 260.00, 270.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:16', '2024-10-25 05:45:13'),
(1073, 'FMD183483', 'Dabur Glucose (1.1 kg)', 'Basic description of Beverages 95', '4', 'Beverages', '7', 'Juice Powder', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:16', '2024-10-25 05:45:14'),
(1074, 'FMD174212', 'Chatpat Peanuts (360 gms) - Adity', 'Basic description of Snacks & Dry Fruits 19', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 220.00, 230.00, 'PCS', 10.00, 10.00, ' Ad00002', 'Adity', '[Rack 8]', NULL, '2024-09-24 15:05:16', '2024-10-25 05:45:13'),
(1075, 'FMD179141', 'Raj Peanuts (350 gms)', 'Basic description of Snacks & Dry Fruits 15', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:16', '2024-10-25 05:45:13'),
(1076, 'FMD290308', 'Lindt Gold Milk Hazelnut Bar 300g', 'Basic description of Sweets & Confectionery 47', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1190.00, 1200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:05:16', '2024-10-25 05:45:14'),
(1077, 'FMD174456', 'Maggi 2 minutes Masala 280 gms', 'Basic description of Pasta & Noodles 17', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, ' Ma00001', 'Maggi', '[Rack 8]', NULL, '2024-09-24 15:05:16', '2024-10-25 05:45:13'),
(1078, 'FMD253693', 'Desert Delight Brownie Cubes', 'Basic description of Sweets & Confectionery 37', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:05:16', '2024-10-25 05:45:14'),
(1079, 'FMD174413', 'Samyang  3x Spicy (700 gm)', 'Basic description of Pasta & Noodles 21', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 890.00, 900.00, 'PCS', 10.00, 10.00, ' Sa00002', 'Samyang', '[Rack 8]', NULL, '2024-09-24 15:05:16', '2024-10-25 05:45:13'),
(1080, 'FMD290309', 'Lindt Lindor Irresistibly Smooth White Chocolate, 100g', 'Basic description of Sweets & Confectionery 48', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 585.00, 595.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:05:16', '2024-10-25 05:45:14'),
(1081, 'FMD284467', 'Hershey\'s Kisses Cookies n\' Creme, 146g', 'Basic description of Sweets & Confectionery 43', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 689.00, 699.00, 'PCS', 10.00, 10.00, ' He00001', 'Hersheys', '[Rack 9]', NULL, '2024-09-24 15:05:16', '2024-10-25 05:45:14'),
(1082, 'FMD179947', 'Orthodox Black Tea', 'Basic description of Beverages 52', '4', 'Beverages', '5', 'Tea', '0', 0.00, 0.00, 300.00, 310.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:17', '2024-10-25 05:45:13'),
(1083, 'FMD191060', 'Snapin Crunchy Garlic (45 gm)', 'Basic description of Oil, Spice & Condiments 19', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 185.00, 195.00, 'PCS', 10.00, 10.00, ' Sn00001', 'Snapin', '[Rack 7]', NULL, '2024-09-24 15:05:17', '2024-10-25 05:45:13'),
(1084, 'FMD290311', 'Lindt Lindor Singles Bar Extra Dark 100G', 'Basic description of Sweets & Confectionery 50', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 585.00, 595.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:05:17', '2024-10-25 05:45:14'),
(1085, 'FMD174266', 'Haldiram\'s Bhujia Masala (180 gm)', 'Basic description of Snacks & Dry Fruits 23', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 117.00, 127.00, 'PCS', 10.00, 10.00, ' Ha00001', 'Haldirams', '[Rack 8]', NULL, '2024-09-24 15:05:17', '2024-10-25 05:45:13'),
(1086, 'FMD284470', 'Hershey\'s Milk Chocolate Extra Creamy, 50g', 'Basic description of Sweets & Confectionery 46', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 590.00, 600.00, 'PCS', 10.00, 10.00, ' He00001', 'Hersheys', '[Rack 9]', NULL, '2024-09-24 15:05:17', '2024-10-25 05:45:14'),
(1087, 'FMD290313', 'Lindt Lindor Singles Milk Chocolate 100 gms', 'Basic description of Sweets & Confectionery 52', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 515.00, 525.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:05:18', '2024-10-25 05:45:14'),
(1088, 'FMD191062', 'Snapin Ginger Powder (45 gm)', 'Basic description of Oil, Spice & Condiments 21', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 185.00, 195.00, 'PCS', 10.00, 10.00, ' Sn00001', 'Snapin', '[Rack 7]', NULL, '2024-09-24 15:05:18', '2024-10-25 05:45:13'),
(1089, 'FMD174267', 'Haldiram\'s Bhujia Masala (360 gm)', 'Basic description of Snacks & Dry Fruits 24', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 234.00, 244.00, 'PCS', 10.00, 10.00, ' Ha00001', 'Haldirams', '[Rack 8]', NULL, '2024-09-24 15:05:18', '2024-10-25 05:45:13'),
(1090, 'FMD174269', 'Haldiram\'s Moong Dal (1 kg)', 'Basic description of Snacks & Dry Fruits 26', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 652.00, 662.00, 'PCS', 10.00, 10.00, ' Ha00001', 'Haldirams', '[Rack 8]', NULL, '2024-09-24 15:05:18', '2024-10-25 05:45:13'),
(1091, 'FMD290314', 'Lindt Lindor Stick Milk Chocolate 38 gms', 'Basic description of Sweets & Confectionery 53', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:05:18', '2024-10-25 05:45:14'),
(1092, 'FMD174260', 'Divella Pasta Fusilli 40 (500 gm)', 'Basic description of Pasta & Noodles 23', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 180.00, 190.00, 'PCS', 10.00, 10.00, ' Di00001', 'Divella', '[Rack 8]', NULL, '2024-09-24 15:05:18', '2024-10-25 05:45:13'),
(1093, 'FMD174262', 'Divella Spaghettini (1000 gm)', 'Basic description of Pasta & Noodles 25', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 360.00, 370.00, 'PCS', 10.00, 10.00, ' Di00001', 'Divella', '[Rack 8]', NULL, '2024-09-24 15:05:18', '2024-10-25 05:45:13'),
(1094, 'FMD254315', 'N&H Fish Sausage (500 gm)', 'Basic description of Meat, Fish & Seafood 281', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 590.00, 600.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:19', '2024-10-25 05:45:12'),
(1095, 'FMD183484', 'Dabur Glucose (500 gm)', 'Basic description of Beverages 96', '4', 'Beverages', '7', 'Juice Powder', '0', 0.00, 0.00, 165.00, 175.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:19', '2024-10-25 05:45:14'),
(1096, 'FMD254321', 'N&H Large Prawn 500Gm', 'Basic description of Meat, Fish & Seafood 280', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 1065.00, 1075.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:19', '2024-10-25 05:45:12'),
(1097, 'FMD241235', 'Seasoned Potato Wedges (2.5 kg)', 'Basic description of Ready to Cook 1', '19', 'Ready to Cook', '28', 'Veg Items', '0', 0.00, 0.00, 990.00, 1000.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:19', '2024-10-25 05:45:13'),
(1098, 'FMD202214', '??? ?? ????  (Jumla)  (500 gm)', 'Basic description of Pure Organic Items 26', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 60.00, 70.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:19', '2024-10-25 05:45:13'),
(1099, 'FMD290315', 'Lindt Teddy Milk Chocolate 100g', 'Basic description of Sweets & Confectionery 54', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 690.00, 700.00, 'PCS', 10.00, 10.00, ' Te00001', 'Test Brand 1', '[Rack 9]', NULL, '2024-09-24 15:05:19', '2024-10-25 05:45:14'),
(1100, 'FMD290316', 'Lindt Assorted Napolitains Carry Box 350gms', 'Basic description of Sweets & Confectionery 55', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 2290.00, 2300.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:05:20', '2024-10-25 05:45:14'),
(1101, 'FMD191061', 'Snapin Ginger Garlic (35 gm)', 'Basic description of Oil, Spice & Condiments 20', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 185.00, 195.00, 'PCS', 10.00, 10.00, ' Sn00001', 'Snapin', '[Rack 7]', NULL, '2024-09-24 15:05:20', '2024-10-25 05:45:13'),
(1102, 'FMD290322', 'Lindt Swiss Luxury Selection Box 145g', 'Basic description of Sweets & Confectionery 61', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1990.00, 2000.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:05:20', '2024-10-25 05:45:14'),
(1103, 'FMD174274', 'Haldiram\'s Panchrattan (200 gm)', 'Basic description of Snacks & Dry Fruits 29', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 247.00, 257.00, 'PCS', 10.00, 10.00, ' Ha00001', 'Haldirams', '[Rack 8]', NULL, '2024-09-24 15:05:20', '2024-10-25 05:45:13'),
(1104, 'FMD290318', 'Lindt Les Grandes Dark Hazelnut 150gms', 'Basic description of Sweets & Confectionery 57', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 840.00, 850.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:05:20', '2024-10-25 05:45:14'),
(1105, 'FMD290321', 'Lindt Lindor Cornet Milk 200gm', 'Basic description of Sweets & Confectionery 60', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1315.00, 1325.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:05:21', '2024-10-25 05:45:14'),
(1106, 'FMD174265', 'Divella Spaghettini 9(500 gm)', 'Basic description of Pasta & Noodles 26', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 180.00, 190.00, 'PCS', 10.00, 10.00, ' Di00001', 'Divella', '[Rack 8]', NULL, '2024-09-24 15:05:21', '2024-10-25 05:45:13'),
(1107, 'FMD290319', 'Lindt Les Grandes Milk Hazelnut 150 gms', 'Basic description of Sweets & Confectionery 58', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 840.00, 850.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:05:21', '2024-10-25 05:45:14'),
(1108, 'FMD288679', 'Punjabi Tadka (200 gm)', 'Basic description of Snacks & Dry Fruits 34', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:21', '2024-10-25 05:45:13'),
(1109, 'FMD288678', 'Panchrattan (200 gm)', 'Basic description of Snacks & Dry Fruits 33', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 248.00, 258.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:21', '2024-10-25 05:45:13'),
(1110, 'FMD290320', 'Lindt les Grandes White almond 150gms', 'Basic description of Sweets & Confectionery 59', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 840.00, 850.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:05:21', '2024-10-25 05:45:14'),
(1111, 'FMD238063', 'Khatta Meeta Haldirams (180 gm)', 'Basic description of Snacks & Dry Fruits 30', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 98.00, 108.00, 'PCS', 10.00, 10.00, ' Ha00001', 'Haldirams', '[Rack 8]', NULL, '2024-09-24 15:05:21', '2024-10-25 05:45:13'),
(1112, 'FMD298462', 'Nestle Kitkat Dessert Divine Choco (50 gm)', 'Basic description of Sweets & Confectionery 67', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 10]', NULL, '2024-09-24 15:05:21', '2024-10-25 05:45:15'),
(1113, 'FMD174774', 'Pond\'s Light Moisture 75 ml', 'Basic description of Personal Care 2', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 189.00, 199.00, 'PCS', 10.00, 10.00, ' Po00001', 'Ponds', '[Rack 8]', NULL, '2024-09-24 15:05:21', '2024-10-25 05:45:13'),
(1114, 'FMD302517', 'N&H Chicken Wings (780 gm)', 'Basic description of Meat, Fish & Seafood 216', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 614.00, 624.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:22', '2024-10-25 05:45:12'),
(1115, 'FMD258146', 'Lambweston Potato Chips  (2 kg)', 'Basic description of Ready to Cook 5', '19', 'Ready to Cook', '28', 'Veg Items', '0', 0.00, 0.00, 1065.00, 1075.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:22', '2024-10-25 05:45:13'),
(1116, 'FMD192205', 'Horlicks Classic Malt (1 kg) Jar with FREE Knorr Tomato Soup', 'Basic description of Beverages 99', '4', 'Beverages', '8', 'Milk Powder', '0', 0.00, 0.00, 742.00, 752.00, 'PCS', 10.00, 10.00, ' Ho00001', 'Horlicks', '[Rack 3]', NULL, '2024-09-24 15:05:22', '2024-10-25 05:45:15'),
(1117, 'FMD253690', 'Haldirams Pancharattan (190 gm)', 'Basic description of Snacks & Dry Fruits 32', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 205.00, 215.00, 'PCS', 10.00, 10.00, ' Ha00001', 'Haldirams', '[Rack 8]', NULL, '2024-09-24 15:05:22', '2024-10-25 05:45:13'),
(1118, 'FMD192206', 'Horlicks Classic Malt (2 kgs) Jar with 2 FREE Knorr Tomato Soup', 'Basic description of Beverages 100', '4', 'Beverages', '8', 'Milk Powder', '0', 0.00, 0.00, 1338.00, 1348.00, 'PCS', 10.00, 10.00, ' Ho00001', 'Horlicks', '[Rack 3]', NULL, '2024-09-24 15:05:22', '2024-10-25 05:45:15'),
(1119, 'FMD174248', 'Microwave Popcorn, Natural Light (240 gm)- American Garden', 'Basic description of Snacks & Dry Fruits 49', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 405.00, 415.00, 'PCS', 10.00, 10.00, ' Am00001', 'American Garden', '[Rack 8]', NULL, '2024-09-24 15:05:22', '2024-10-25 05:45:14'),
(1120, 'FMD192208', 'Junior Horlicks Vanilla Flavor (500g) with Pears Soap FREE', 'Basic description of Beverages 102', '4', 'Beverages', '8', 'Milk Powder', '0', 0.00, 0.00, 479.00, 489.00, 'PCS', 10.00, 10.00, ' Ho00001', 'Horlicks', '[Rack 3]', NULL, '2024-09-24 15:05:22', '2024-10-25 05:45:15'),
(1121, 'FMD251325', 'N&H Chicken Gizzard (400 gm)', 'Basic description of Meat, Fish & Seafood 207', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 390.00, 400.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:22', '2024-10-25 05:45:11'),
(1122, 'FMD289884', 'Pintola Choco Crunchy Peanut Butter (350 gm)', 'Basic description of Breakfast 2', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 315.00, 325.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:23', '2024-10-25 05:45:15'),
(1123, 'FMD174017', 'Papaya (Around, (2 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 11', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:23', '2024-10-25 05:45:15'),
(1124, 'FMD174425', 'Lamjung (Washed) Filter Grind 1000 gm', 'Basic description of Beverages 24', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 2490.00, 2500.00, 'PCS', 7.00, 7.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:23', '2024-10-25 05:45:10'),
(1125, 'FMD174384', 'Bajra Corriander Powder (500 gm)', 'Basic description of Oil, Spice & Condiments 49', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, ' Ba00001', 'Bajra', '[Rack 8]', NULL, '2024-09-24 15:05:23', '2024-10-25 05:45:13'),
(1126, 'FMD230998', 'WOW Cheese Caramel Pop Corn (Family Pack)', 'Basic description of Snacks & Dry Fruits 104', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, ' WO00001', 'WOW', '[Rack 9]', NULL, '2024-09-24 15:05:23', '2024-10-25 05:45:14'),
(1127, 'FMD298146', 'All Natural Crunchy (1 kg) (Peanut Butter)', 'Basic description of Breakfast 1', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 750.00, 760.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:23', '2024-10-25 05:45:15'),
(1128, 'FMD230999', 'WOW Cheese Pop Corn (Family Pack)', 'Basic description of Snacks & Dry Fruits 105', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, ' WO00001', 'WOW', '[Rack 9]', NULL, '2024-09-24 15:05:23', '2024-10-25 05:45:14'),
(1129, 'FMD174338', 'Nestle Everyday Dairy Whitener (800 gm)', 'Basic description of Beverages 106', '4', 'Beverages', '8', 'Milk Powder', '0', 0.00, 0.00, 940.00, 950.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 3]', NULL, '2024-09-24 15:05:23', '2024-10-25 05:45:15'),
(1130, 'FMD188315', 'Raw Honey- Chiuri (1 kg)', 'Local Produces basic description 8', '12', 'Local Produces', '18', 'Honey', '0', 0.00, 0.00, 1080.00, 1090.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:23', '2024-10-25 05:45:17'),
(1131, 'FMD329571', 'Gyan Honey', 'Local Produces basic description 12', '12', 'Local Produces', '18', 'Honey', '0', 0.00, 0.00, 640.00, 650.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:23', '2024-10-25 05:45:17'),
(1132, 'FMD177556', 'Orginal (200 gms)- Blissball', 'Cashew Nuts, Almonds, Arabic Dates, Raisins, Tragacanth Gum, Butter, Himalayan Pink Salt 1', '9', 'Healthy Choice', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 680.00, 690.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:24', '2024-10-25 05:45:16'),
(1133, 'FMD283436', 'Druk Mixed Fruit Jam', 'Basic description of Breakfast 3', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 185.00, 195.00, 'PCS', 10.00, 10.00, ' Te00001', 'Test Brand 1', '[Rack 3]', NULL, '2024-09-24 15:05:24', '2024-10-25 05:45:15'),
(1134, 'FMD174198', 'Mcvities (India) Butter Cookies (200 gm)', 'Basic description of Cookies & Biscuits 42', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 65.00, 75.00, 'PCS', 10.00, 10.00, ' Mc00001', 'Mcvities (India)', '[Rack 3]', NULL, '2024-09-24 15:05:24', '2024-10-25 05:45:15'),
(1135, 'FMD177557', 'Orginal (500 gms)- Blissball', 'Cashew Nuts, Almonds, Arabic Dates, Raisins, Tragacanth Gum, Butter, Himalayan Pink Salt 2', '9', 'Healthy Choice', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1580.00, 1590.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:24', '2024-10-25 05:45:16'),
(1136, 'FMD188316', 'Raw Honey- Rudilo (700 gm)', 'Local Produces basic description 9', '12', 'Local Produces', '18', 'Honey', '0', 0.00, 0.00, 690.00, 700.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:24', '2024-10-25 05:45:17'),
(1137, 'FMD222850', 'Bathroom Tissue 3 ply (130 gm)', 'Basic description of Household 2', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 40.00, 50.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:24', '2024-10-25 05:45:16'),
(1138, 'FMD174202', 'Mcvities (India) Digestive (75 gm)', 'Basic description of Cookies & Biscuits 46', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 20.00, 30.00, 'PCS', 10.00, 10.00, ' Mc00001', 'Mcvities (India)', '[Rack 3]', NULL, '2024-09-24 15:05:24', '2024-10-25 05:45:15'),
(1139, 'FMD253946', 'Tide Plus Jasmine & Rose 4kg + 1kg Free', 'Basic description of Household 1', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 884.00, 894.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:24', '2024-10-25 05:45:16'),
(1140, 'FMD177559', 'Twist (500 gms)- Blissball', 'Apricots, Hazel Nuts, Pistachios, Dark Chocolate, Cashew Nuts, Almonds, Arabic Dates, Raisins, Tragacanth Gum, Butter, Himalayan Pink Salt', '9', 'Healthy Choice', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1880.00, 1890.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:24', '2024-10-25 05:45:16'),
(1141, 'FMD174391', 'Bhanbhori Almond Essence (28 ml)', 'Basic description of Baking & Cooking 18', '3', 'Baking & Cooking', '3', 'Essence', '0', 0.00, 0.00, 50.00, 60.00, 'PCS', 10.00, 10.00, ' Bh00001', 'Bhanbhori', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:05:25', '2024-10-25 05:45:16'),
(1142, 'FMD223076', 'Surf Excel Matic Top Load Detergent Washing Powder 4+2 kg', 'Basic description of Household 3', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1782.00, 1792.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:25', '2024-10-25 05:45:16'),
(1143, 'FMD177558', 'Pistachino Punch (200 gms)- Blissball', 'Pistachios, Cashew Nuts, Almonds, Arabic Dates, Raisins, Tragacanth Gum, Butter, Himalayan Pink Salt', '9', 'Healthy Choice', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 780.00, 790.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:25', '2024-10-25 05:45:16'),
(1144, 'FMD225667', 'Bathroom Tissue 3 ply (150 gm)', 'Basic description of Household 4', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 490.00, 500.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:25', '2024-10-25 05:45:16'),
(1145, 'FMD215990', 'Byanjan Sunflower Oil (5 ltrs)', 'Basic description of Oil, Spice & Condiments 40', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 2090.00, 2100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:25', '2024-10-25 05:45:13'),
(1146, 'FMD174122', 'VCSB Buff Mince (500 gm)', 'Basic description of Meat, Fish & Seafood 314', '13', 'Meat, Fish & Seafood', '26', 'Buff', '0', 0.00, 0.00, 305.00, 315.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:25', '2024-10-25 05:45:12'),
(1147, 'FMD350610', 'N & H Chicken Drumstick (1.130 gm)', 'Basic description of Meat, Fish & Seafood 170', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1007.00, 1017.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:25', '2024-10-25 05:45:11'),
(1148, 'FMD199960', 'Buff Mince (500 gm)', 'Basic description of Meat, Fish & Seafood 313', '13', 'Meat, Fish & Seafood', '26', 'Buff', '0', 0.00, 0.00, 390.00, 400.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:26', '2024-10-25 05:45:12'),
(1149, 'FMD174093', 'N&H Shrimp - (500 gm)', 'Basic description of Meat, Fish & Seafood 233', '13', 'Meat, Fish & Seafood', '23', 'Seafood', '0', 0.00, 0.00, 790.00, 800.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:05:26', '2024-10-25 05:45:12'),
(1150, 'FMD346425', 'N&H Whole Chicken (1580 gm)', 'Basic description of Meat, Fish & Seafood 167', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1096.00, 1106.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:26', '2024-10-25 05:45:10'),
(1151, 'FMD226177', 'Cheetos Crunchy Flamin Hot 205g', 'Basic description of Snacks & Dry Fruits 94', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 1270.00, 1280.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:26', '2024-10-25 05:45:14'),
(1152, 'FMD274751', 'Britannia Butter Cookies', 'Basic description of Cookies & Biscuits 5', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:26', '2024-10-25 05:45:15'),
(1153, 'FMD353372', 'N&H Chicken Leg 900 gm', 'Basic description of Meat, Fish & Seafood 173', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 800.00, 810.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:26', '2024-10-25 05:45:11'),
(1154, 'FMD286372', 'Mr Kleen Toilet Cleaner (500 ml)', 'Basic description of Household 5', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 120.00, 130.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:27', '2024-10-25 05:45:16'),
(1155, 'FMD287870', 'Xtraa Activ Detergent Powder 1kg', 'Basic description of Household 7', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 100.00, 110.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:27', '2024-10-25 05:45:16'),
(1156, 'FMD174275', 'Fragata Pomace Olive Oil (1 ltr)', 'Basic description of Oil, Spice & Condiments 41', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1040.00, 1050.00, 'PCS', 10.00, 10.00, ' Fr00001', 'Fragata', '[Rack 8]', NULL, '2024-09-24 15:05:27', '2024-10-25 05:45:13'),
(1157, 'FMD287872', 'Xtraa Detergent Powder 1kg', 'Basic description of Household 9', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 230.00, 240.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:27', '2024-10-25 05:45:16'),
(1158, 'FMD287876', 'Dhoni Herbal Dish Wash Liquid - 500 ml', 'Basic description of Household 13', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 160.00, 170.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:27', '2024-10-25 05:45:16'),
(1159, 'FMD297056', 'Ariel (500 gm)', 'Basic description of Household 6', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 225.00, 235.00, 'PCS', 10.00, 10.00, ' Ar00002', 'Ariel', '[Rack 4]', NULL, '2024-09-24 15:05:27', '2024-10-25 05:45:16'),
(1160, 'FMD287878', 'Dhoni Herbal Dishwash Tub 400 gm (Pack of 4)', 'Basic description of Household 15', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 250.00, 260.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:27', '2024-10-25 05:45:16'),
(1161, 'FMD287874', 'Dhoni Herbal Dish Wash Bar - 200 gms (Pack of 4)', 'Basic description of Household 11', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:27', '2024-10-25 05:45:16'),
(1162, 'FMD350564', 'N & H Chicken Leg (0.910 gm)', 'Basic description of Meat, Fish & Seafood 169', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 809.00, 819.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:28', '2024-10-25 05:45:11'),
(1163, 'FMD174392', 'Bhanbhori Mango Essence (28 ml)', 'Basic description of Baking & Cooking 19', '3', 'Baking & Cooking', '3', 'Essence', '0', 0.00, 0.00, 50.00, 60.00, 'PCS', 10.00, 10.00, ' Bh00001', 'Bhanbhori', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:05:28', '2024-10-25 05:45:16'),
(1164, 'FMD233183', 'Mcvities Digestive Biscuit (500 gm) (India)', 'Basic description of Cookies & Biscuits 6', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 185.00, 195.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:28', '2024-10-25 05:45:15'),
(1165, 'FMD174123', 'Buff Salami (500 gm)', 'Basic description of Meat, Fish & Seafood 315', '13', 'Meat, Fish & Seafood', '26', 'Buff', '0', 0.00, 0.00, 400.00, 410.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:28', '2024-10-25 05:45:12'),
(1166, 'FMD240865', 'Priyagold Marie Gold (300 gm)', 'Basic description of Cookies & Biscuits 7', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 10.00, 10.00, ' Pr00001', 'Priyagold', '[Rack 3]', NULL, '2024-09-24 15:05:28', '2024-10-25 05:45:15'),
(1167, 'FMD221839', 'Dove Nourishing Silk Body Wash 450ml', 'Basic description of Personal Care 23', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 440.00, 450.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:28', '2024-10-25 05:45:13'),
(1168, 'FMD241439', 'Britannia Digestive Sugar Free (250 gm)', 'Basic description of Cookies & Biscuits 9', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 10.00, 10.00, ' Br00001', 'Britannia', '[Rack 3]', NULL, '2024-09-24 15:05:28', '2024-10-25 05:45:15'),
(1169, 'FMD287880', 'Dhoni Laundry Soap 225 Gm Each (4 Pc Pack)', 'Basic description of Household 17', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 220.00, 230.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:28', '2024-10-25 05:45:16'),
(1170, 'FMD221838', 'Heat Protection Spray 180ml', 'Basic description of Personal Care 22', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1189.00, 1199.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:28', '2024-10-25 05:45:13'),
(1171, 'FMD174395', 'Bhanbhori Vanilla Essence (28 ml)', 'Basic description of Baking & Cooking 22', '3', 'Baking & Cooking', '3', 'Essence', '0', 0.00, 0.00, 50.00, 60.00, 'PCS', 10.00, 10.00, ' Bh00001', 'Bhanbhori', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:05:28', '2024-10-25 05:45:17'),
(1172, 'FMD299215', 'Glass & Household Cleaner (500 ml) - Mr. Muscle', 'Basic description of Household 46', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 117.00, 127.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:28', '2024-10-25 05:45:17'),
(1173, 'FMD299211', 'Floor Cleaner - Floral (1 ltr + 500 ml) - Mr. Muscle', 'Basic description of Household 42', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 246.00, 256.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:29', '2024-10-25 05:45:17'),
(1174, 'FMD299212', 'Floor Cleaner - Floral (500 ml) - Mr. Muscle', 'Basic description of Household 43', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:29', '2024-10-25 05:45:17'),
(1175, 'FMD281002', 'N&H Chicken Legs (490 gm)', 'Basic description of Meat, Fish & Seafood 196', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 382.00, 392.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:29', '2024-10-25 05:45:11'),
(1176, 'FMD174098', 'Hot Dog Buff Sausage (400 gms) - NH', 'Basic description of Meat, Fish & Seafood 316', '13', 'Meat, Fish & Seafood', '26', 'Buff', '0', 0.00, 0.00, 370.00, 380.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:05:29', '2024-10-25 05:45:12'),
(1177, 'FMD314843', 'UK Digestive (500 gm)', 'Basic description of Cookies & Biscuits 16', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:29', '2024-10-25 05:45:15'),
(1178, 'FMD287879', 'Dhoni Jumbo Laundry Soap- 200 Gm (Pack of 4)', 'Basic description of Household 16', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:29', '2024-10-25 05:45:16'),
(1179, 'FMD299214', 'Floor Cleaner - Lavender (500 ml) - Mr. Muscle', 'Basic description of Household 45', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 147.00, 157.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:29', '2024-10-25 05:45:17'),
(1180, 'FMD299213', 'Floor Cleaner - Lavender (1 ltr + 500 ml) - Mr. Muscle', 'Basic description of Household 44', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 246.00, 256.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:29', '2024-10-25 05:45:17'),
(1181, 'FMD221841', 'Vaseline Petrolleum Jelly 100ml', 'Basic description of Personal Care 25', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 115.00, 125.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:30', '2024-10-25 05:45:13'),
(1182, 'FMD316955', 'NC Digestive (1 Kg) - Britannia', 'Basic description of Cookies & Biscuits 15', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 490.00, 500.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:30', '2024-10-25 05:45:15'),
(1183, 'FMD226182', 'Doritos Flamin Hot Lime 175g', 'Basic description of Snacks & Dry Fruits 99', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 640.00, 650.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:30', '2024-10-25 05:45:14'),
(1184, 'FMD199209', 'Macaron', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 17', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 50.00, 60.00, 'PCS', 0.00, 0.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:05:30', '2024-10-25 05:45:15'),
(1185, 'FMD188999', '???? ????(Jumla) ????', 'Basic description of Rice & Pulses 17', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 280.00, 290.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:30', '2024-10-25 05:45:13'),
(1186, 'FMD314847', 'Digestive (250 gm)', 'Basic description of Cookies & Biscuits 17', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:31', '2024-10-25 05:45:15');
INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_description`, `category_id`, `category_name`, `subcategory_id`, `subcategory_name`, `delivery_target_days`, `discount`, `actual_price`, `sell_price`, `mr_price`, `unit_info`, `available_quantity`, `stock_quantity`, `brand_id`, `brand_name`, `product_location`, `primary_image`, `created_at`, `updated_at`) VALUES
(1187, 'FMD299216', 'Kitchen Cleaner (500 ml) - Mr. Muscle', 'Basic description of Household 47', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 181.00, 191.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:31', '2024-10-25 05:45:17'),
(1188, 'FMD277775', 'AMP Chicken Whole Leg (1405 gm)', 'Basic description of Meat, Fish & Seafood 194', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 936.00, 946.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:31', '2024-10-25 05:45:11'),
(1189, 'FMD174147', 'Buff Keema (1 kg)', 'Basic description of Meat, Fish & Seafood 317', '13', 'Meat, Fish & Seafood', '26', 'Buff', '0', 0.00, 0.00, 630.00, 640.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:31', '2024-10-25 05:45:12'),
(1190, 'FMD189002', '??????  ( Chitwan)', 'Basic description of Rice & Pulses 20', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 250.00, 260.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:31', '2024-10-25 05:45:13'),
(1191, 'FMD315080', 'UK Digestive (400 gm)', 'Basic description of Cookies & Biscuits 18', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 310.00, 320.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:31', '2024-10-25 05:45:15'),
(1192, 'FMD356064', 'Marie Gold (250 gm)', 'Basic description of Cookies & Biscuits 23', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:32', '2024-10-25 05:45:15'),
(1193, 'FMD335905', 'Marie gold (250 gm) - MCV', 'Basic description of Cookies & Biscuits 21', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:32', '2024-10-25 05:45:15'),
(1194, 'FMD346424', 'Britannia Marie Gold 1 kg', 'Basic description of Cookies & Biscuits 20', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:32', '2024-10-25 05:45:15'),
(1195, 'FMD189001', '???? ???(Jumla) ????', 'Basic description of Rice & Pulses 19', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 280.00, 290.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:32', '2024-10-25 05:45:13'),
(1196, 'FMD307193', 'Mcvities Milk Hobnobs', 'Basic description of Cookies & Biscuits 19', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 300.00, 310.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:32', '2024-10-25 05:45:15'),
(1197, 'FMD331219', 'Britannia Digestive (250 gm)', 'Basic description of Cookies & Biscuits 22', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 120.00, 130.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:32', '2024-10-25 05:45:15'),
(1198, 'FMD189000', '???? ???(Jumla)  ????', 'Basic description of Rice & Pulses 18', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 330.00, 340.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:33', '2024-10-25 05:45:13'),
(1199, 'FMD299218', 'Liquid Shoe Polish - Brown (75 ml) - Kiwi', 'Basic description of Household 49', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 152.00, 162.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:33', '2024-10-25 05:45:17'),
(1200, 'FMD299220', 'Shoe Brush (Mini ) - Kiwi', 'Basic description of Household 51', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 105.00, 115.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:33', '2024-10-25 05:45:17'),
(1201, 'FMD299219', 'Shoe Brush (2 in 1) - Kiwi', 'Basic description of Household 50', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 131.00, 141.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:33', '2024-10-25 05:45:17'),
(1202, 'FMD299221', 'Shoe Polish -Black (40 gms) - Kiwi', 'Basic description of Household 52', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 102.00, 112.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:33', '2024-10-25 05:45:17'),
(1203, 'FMD299222', 'Shoe Polish -Dark Tan (40 gms) - Kiwi', 'Basic description of Household 53', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 91.00, 101.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:33', '2024-10-25 05:45:17'),
(1204, 'FMD299223', 'Shoe Sponge - Black (5 ml) - Kiwi', 'Basic description of Household 54', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 131.00, 141.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:34', '2024-10-25 05:45:17'),
(1205, 'FMD334391', 'Nescafe Red Cup (380 gm)', 'Basic description of Beverages 1', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 1170.00, 1180.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:34', '2024-10-25 05:45:17'),
(1206, 'FMD299225', 'Toilet Cleaner (500 ml) - Mr. Muscle', 'Basic description of Household 56', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 107.00, 117.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:34', '2024-10-25 05:45:17'),
(1207, 'FMD299229', 'Touch & Fresh Rfl - Floral Perfection (12 ml) - Glade', 'Basic description of Household 60', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 142.00, 152.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:34', '2024-10-25 05:45:17'),
(1208, 'FMD299227', 'Touch & Fresh Combi - Lemon (12 ml) - Glade', 'Basic description of Household 58', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 196.00, 206.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:34', '2024-10-25 05:45:17'),
(1209, 'FMD344182', 'Alfa Surf Neo (500 gm)', 'Basic description of Household 65', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 50.00, 60.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:34', '2024-10-25 05:45:17'),
(1210, 'FMD345933', 'Mr Clean Toilet Cleaner (500 ml)', 'Basic description of Household 66', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 120.00, 130.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:34', '2024-10-25 05:45:17'),
(1211, 'FMD299224', 'Shoe Sponge - Neutral (5 ml) - Kiwi', 'Basic description of Household 55', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 131.00, 141.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:35', '2024-10-25 05:45:17'),
(1212, 'FMD299231', 'Touch & Fresh Rfl - Lemon (12 ml) - Glade', 'Basic description of Household 62', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 142.00, 152.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:35', '2024-10-25 05:45:17'),
(1213, 'FMD326386', 'FIK DN (200 ml) - Baygon Max', 'Basic description of Household 67', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 174.00, 184.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:35', '2024-10-25 05:45:17'),
(1214, 'FMD299233', 'Ultra Power Refill (45 ml) - All Out', 'Basic description of Household 64', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:35', '2024-10-25 05:45:17'),
(1215, 'FMD347245', 'Arsha Red Cup Coffee (380 gm)', 'Basic description of Beverages 2', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 1040.00, 1050.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:35', '2024-10-25 05:45:17'),
(1216, 'FMD331026', 'Tide Lemon & Mint 500 gm', 'Basic description of Household 69', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 120.00, 130.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:35', '2024-10-25 05:45:17'),
(1217, 'FMD331025', 'Tide Jasmine & Rose 1 Kg', 'Basic description of Household 68', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 245.00, 255.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:35', '2024-10-25 05:45:17'),
(1218, 'FMD174336', 'Borges Pomace Olive Oil (1 ltr)', 'Basic description of Oil, Spice & Condiments 44', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 890.00, 900.00, 'PCS', 10.00, 10.00, ' Bo00001', 'Borges', '[Rack 8]', NULL, '2024-09-24 15:05:35', '2024-10-25 05:45:13'),
(1219, 'FMD217018', 'Gaia Green Tea + Tulsi 25\'s', 'Basic description of Beverages 55', '4', 'Beverages', '5', 'Tea', '0', 0.00, 0.00, 295.00, 305.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:36', '2024-10-25 05:45:13'),
(1220, 'FMD174431', 'Nuwakot (Washed) Filter Grind 1000 gm', 'Basic description of Beverages 30', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 2490.00, 2500.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:36', '2024-10-25 05:45:11'),
(1221, 'FMD307194', 'Floral Perfection (300 ml)', 'Basic description of Household 72', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 194.00, 204.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:36', '2024-10-25 05:45:17'),
(1222, 'FMD189358', 'Gaia Green Tea Honey Lime 25s', 'Basic description of Beverages 48', '4', 'Beverages', '5', 'Tea', '0', 0.00, 0.00, 294.00, 304.00, 'PCS', 10.00, 10.00, ' GA00001', 'GAIA', '[Rack 3]', NULL, '2024-09-24 15:05:36', '2024-10-25 05:45:13'),
(1223, 'FMD369518', 'Dhoni Surf (500 gm)', 'Basic description of Household 74', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 60.00, 70.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:36', '2024-10-25 05:45:17'),
(1224, 'FMD281001', 'N&H Chicken Drumstick (1130 gm)', 'Basic description of Meat, Fish & Seafood 195', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 814.00, 824.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:36', '2024-10-25 05:45:11'),
(1225, 'FMD174148', 'Buff Sausage (400 gm)', 'Basic description of Meat, Fish & Seafood 318', '13', 'Meat, Fish & Seafood', '26', 'Buff', '0', 0.00, 0.00, 415.00, 425.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:36', '2024-10-25 05:45:12'),
(1226, 'FMD174119', 'Nuwakot (Washed) Beans - (250 gm)- Kathmandu Coffee', 'Basic description of Beverages 3', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 780.00, 790.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:36', '2024-10-25 05:45:17'),
(1227, 'FMD174149', 'Buff Tender Cut pieces (1 kg)', 'Basic description of Meat, Fish & Seafood 319', '13', 'Meat, Fish & Seafood', '26', 'Buff', '0', 0.00, 0.00, 765.00, 775.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:36', '2024-10-25 05:45:12'),
(1228, 'FMD324093', 'Tide Jasmine (500 gm)', 'Basic description of Household 73', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 115.00, 125.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:37', '2024-10-25 05:45:17'),
(1229, 'FMD199210', 'Macoroni Cookies', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 18', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:05:37', '2024-10-25 05:45:15'),
(1230, 'FMD174277', 'Priyagold Butter Delight (160 gm)', 'Basic description of Cookies & Biscuits 24', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 45.00, 55.00, 'PCS', 10.00, 10.00, ' Pr00001', 'Priyagold', '[Rack 3]', NULL, '2024-09-24 15:05:37', '2024-10-25 05:45:15'),
(1231, 'FMD174107', 'VCS Fish Ball - (1 Kg)', 'Basic description of Meat, Fish & Seafood 251', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 890.00, 900.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:37', '2024-10-25 05:45:12'),
(1232, 'FMD350439', 'Floor Cleaner (1 ltr)', 'Basic description of Household 76', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 308.00, 318.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:37', '2024-10-25 05:45:17'),
(1233, 'FMD174279', 'Priyagold Cheese Cracker (160 gm)', 'Basic description of Cookies & Biscuits 25', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 45.00, 55.00, 'PCS', 10.00, 10.00, ' Pr00001', 'Priyagold', '[Rack 3]', NULL, '2024-09-24 15:05:37', '2024-10-25 05:45:15'),
(1234, 'FMD174282', 'Priyagold Marie Lite (300 gm)', 'Basic description of Cookies & Biscuits 26', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 60.00, 70.00, 'PCS', 10.00, 10.00, ' Pr00001', 'Priyagold', '[Rack 3]', NULL, '2024-09-24 15:05:38', '2024-10-25 05:45:15'),
(1235, 'FMD278483', 'AMP Chicken Whole Leg (660  gm)', 'Basic description of Meat, Fish & Seafood 198', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 452.00, 462.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:38', '2024-10-25 05:45:11'),
(1236, 'FMD189003', '?????  ??? (Dang,Banke)', 'Basic description of Rice & Pulses 21', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 280.00, 290.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:38', '2024-10-25 05:45:13'),
(1237, 'FMD191072', 'Lifebuoy (190 ml)', 'Basic description of Household 78', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 126.00, 136.00, 'PCS', 10.00, 10.00, ' Li00001', 'Lifebuoy', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:38', '2024-10-25 05:45:17'),
(1238, 'FMD174433', 'Nuwakot (Washed) Filter Grind 500 gm', 'Basic description of Beverages 32', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 1240.00, 1250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:38', '2024-10-25 05:45:11'),
(1239, 'FMD174196', 'Turmeric Powder (500 gm)', 'Basic description of Oil, Spice & Condiments 45', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 440.00, 450.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:38', '2024-10-25 05:45:13'),
(1240, 'FMD366365', 'N&H Chicken Legs (1140 gm)', 'Basic description of Meat, Fish & Seafood 176', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1016.00, 1026.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:38', '2024-10-25 05:45:11'),
(1241, 'FMD179575', 'Premium Tissue (100 pulls)', 'Basic description of Household 77', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:38', '2024-10-25 05:45:17'),
(1242, 'FMD215233', 'Tide Plus Lemon 4 kg +1 kg Free', 'Basic description of Household 85', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 884.00, 894.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:39', '2024-10-25 05:45:17'),
(1243, 'FMD174283', 'Priyagold Snack ZigZag (200 gm)', 'Basic description of Cookies & Biscuits 27', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 45.00, 55.00, 'PCS', 10.00, 10.00, ' Pr00001', 'Priyagold', '[Rack 3]', NULL, '2024-09-24 15:05:39', '2024-10-25 05:45:15'),
(1244, 'FMD241236', 'Pampers Diapers 20s (XL)', 'Basic description of Baby Care 8', '1', 'Baby Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1266.00, 1276.00, 'PCS', 10.00, 10.00, ' Pa00001', 'Pamper', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:05:39', '2024-10-25 05:45:17'),
(1245, 'FMD215234', 'Tide plus Lemon & Mint 1 kg', 'Basic description of Household 86', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 245.00, 255.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:39', '2024-10-25 05:45:17'),
(1246, 'FMD174120', 'Nuwakot (Washed) Beans - (1000 gm)- Kathmandu Coffee', 'Basic description of Beverages 4', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 2490.00, 2500.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:39', '2024-10-25 05:45:17'),
(1247, 'FMD202215', 'Lizol (2 ltr)', 'Basic description of Household 87', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 600.00, 610.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:39', '2024-10-25 05:45:17'),
(1248, 'FMD226183', 'Doritos Nacho Cheese 180g', 'Basic description of Snacks & Dry Fruits 100', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 590.00, 600.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:05:39', '2024-10-25 05:45:14'),
(1249, 'FMD215232', 'Tide Plus Jasmine & Rose 6kg + 2kg Free', 'Basic description of Household 84', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1382.00, 1392.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:39', '2024-10-25 05:45:17'),
(1250, 'FMD176510', 'Bathroom Tissue 3 Ply (160 gm)', 'Basic description of Household 92', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 50.00, 60.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:39', '2024-10-25 05:45:17'),
(1251, 'FMD207548', 'Whisper Bindazz Night (XL 30)', 'Basic description of Household 88', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 534.00, 544.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:40', '2024-10-25 05:45:17'),
(1252, 'FMD176508', 'Bathroom Tissue 2 Ply (160 gm)', 'Basic description of Household 90', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 590.00, 600.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:40', '2024-10-25 05:45:17'),
(1253, 'FMD180395', 'Nestle Resource Diabetic Food (Vanilla Flavor) - 400g (MR)', 'Made from premium Hass avocados, AVO Guacamole is 100% natural and preservative free. Now, you can enjoy the authentic flavor of pure Mexican guacamole.   Add it to your salad, spread it on your multigrain bread, create the perfect veggie dip, or simply s', '9', 'Healthy Choice', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1190.00, 1200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:40', '2024-10-25 05:45:16'),
(1254, 'FMD208626', 'Ariel Complete (1 kg)', 'Basic description of Household 89', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 450.00, 460.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:40', '2024-10-25 05:45:17'),
(1255, 'FMD176608', 'Buff Salami (200 gm)', 'Basic description of Meat, Fish & Seafood 323', '13', 'Meat, Fish & Seafood', '26', 'Buff', '0', 0.00, 0.00, 790.00, 800.00, 'PCS', 10.00, 10.00, ' Ad00001', 'Adhunik', '[Rack 7]', NULL, '2024-09-24 15:05:40', '2024-10-25 05:45:12'),
(1256, 'FMD287871', 'Xtraa Activ Detergent Powder 500 gm (Pack of 2)', 'Basic description of Household 8', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 100.00, 110.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:41', '2024-10-25 05:45:16'),
(1257, 'FMD180396', 'Nestle Resource High Protein - 400g (MR)', 'Made from premium Hass avocados, AVO Guacamole is 100% natural and preservative free. Now, you can enjoy the authentic flavor of pure Mexican guacamole.   Add it to your salad, spread it on your multigrain bread, create the perfect veggie dip, or simply s', '9', 'Healthy Choice', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1420.00, 1430.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:41', '2024-10-25 05:45:16'),
(1258, 'FMD287875', 'Dhoni Herbal Dish Wash Bar-75 gms (Pack of 12)', 'Basic description of Household 12', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:41', '2024-10-25 05:45:16'),
(1259, 'FMD287873', 'Xtraa Detergent Powder 500 gm', 'Basic description of Household 10', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 115.00, 125.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:41', '2024-10-25 05:45:16'),
(1260, 'FMD287877', 'Dhoni Herbal Dishwash Tub 250 gm (Pack of 6)', 'Basic description of Household 14', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 230.00, 240.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:41', '2024-10-25 05:45:16'),
(1261, 'FMD287881', 'Dhoni Ultra Concentrated Detergent Powder 3kg', 'Basic description of Household 18', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:41', '2024-10-25 05:45:16'),
(1262, 'FMD287884', 'Dhoni Ultra Concentrated Detergent Powder Jasmine 500 gm (Pack of 2)', 'Basic description of Household 21', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:41', '2024-10-25 05:45:16'),
(1263, 'FMD250701', 'UK Digestive Milk Chocolate', 'Basic description of Cookies & Biscuits 8', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 230.00, 240.00, 'PCS', 10.00, 10.00, ' Mc00001', 'Mcvities (India)', '[Rack 3]', NULL, '2024-09-24 15:05:42', '2024-10-25 05:45:15'),
(1264, 'FMD188995', 'Local Jeera Masino (5 kg)', 'Basic description of Rice & Pulses 13', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 980.00, 990.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:42', '2024-10-25 05:45:13'),
(1265, 'FMD287882', 'Dhoni Ultra Concentrated Detergent Powder 500 gm', 'Basic description of Household 19', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:42', '2024-10-25 05:45:16'),
(1266, 'FMD300474', 'Dhoni Dish Wash Bar (75 gm)', 'Basic description of Household 22', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 2.00, 12.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:42', '2024-10-25 05:45:16'),
(1267, 'FMD287883', 'Dhoni Ultra Concentrated Detergent Powder 700 gm', 'Basic description of Household 20', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 100.00, 110.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:42', '2024-10-25 05:45:16'),
(1268, 'FMD226178', 'Cheetos Crunchy Flamin Hot 90g', 'Basic description of Snacks & Dry Fruits 95', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:42', '2024-10-25 05:45:14'),
(1269, 'FMD353208', 'N&H Whole Chicken 1710g', 'Basic description of Meat, Fish & Seafood 171', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1187.00, 1197.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:43', '2024-10-25 05:45:11'),
(1270, 'FMD316953', 'Good Day Nuts Cookie  (200 gms) - Britannia', 'Basic description of Cookies & Biscuits 13', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:43', '2024-10-25 05:45:15'),
(1271, 'FMD281003', 'N&H Chicken Legs (440 gm)', 'Basic description of Meat, Fish & Seafood 197', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 342.00, 352.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:43', '2024-10-25 05:45:11'),
(1272, 'FMD174346', 'NESCAFE Chilled Latte Cold Coffee, (180 ml) Tetra Pack', 'Basic description of Beverages 81', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, ' Ne00001', 'Nescafe', '[Rack 3]', NULL, '2024-09-24 15:05:43', '2024-10-25 05:45:14'),
(1273, 'FMD188996', 'Nuwakote Pokhareli Rice (1 kg)', 'Basic description of Rice & Pulses 14', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 200.00, 210.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:43', '2024-10-25 05:45:13'),
(1274, 'FMD321071', 'Suji Rusk (305gm)', 'Basic description of Cookies & Biscuits 10', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 170.00, 180.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:44', '2024-10-25 05:45:15'),
(1275, 'FMD226179', 'Cheetos Crunchy Flamin Hot Lime 200g', 'Basic description of Snacks & Dry Fruits 96', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 1270.00, 1280.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:44', '2024-10-25 05:45:14'),
(1276, 'FMD316952', 'Good Day Butter (250 Gms) - Britannia', 'Basic description of Cookies & Biscuits 12', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 85.00, 95.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:44', '2024-10-25 05:45:15'),
(1277, 'FMD316951', 'Fresh 2 Go Plain Tortilla Bread 8\"12Nx45G-540Gm', 'Basic description of Cookies & Biscuits 11', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 485.00, 495.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:44', '2024-10-25 05:45:15'),
(1278, 'FMD304766', 'Tide Jasmine (2 kg)', 'Basic description of Household 24', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 358.00, 368.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:44', '2024-10-25 05:45:16'),
(1279, 'FMD174393', 'Bhanbhori Pineapple Essence (28 ml)', 'Basic description of Baking & Cooking 20', '3', 'Baking & Cooking', '3', 'Essence', '0', 0.00, 0.00, 50.00, 60.00, 'PCS', 10.00, 10.00, ' Bh00001', 'Bhanbhori', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:05:44', '2024-10-25 05:45:16'),
(1280, 'FMD300706', 'Vim Dish Wash Liquid (500 ml)', 'Basic description of Household 23', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 120.00, 130.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:45', '2024-10-25 05:45:16'),
(1281, 'FMD215187', 'Pamper Pants  16s (XXL)', 'Basic description of Baby Care 5', '1', 'Baby Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 628.00, 638.00, 'PCS', -42.00, -42.00, ' Pa00001', 'Pamper', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:05:45', '2024-10-25 05:45:15'),
(1282, 'FMD305461', 'Ultra Clean XL+ 15', 'Basic description of Household 26', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 270.00, 280.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:45', '2024-10-25 05:45:16'),
(1283, 'FMD299197', 'All Out Ultra Power Refill Floral (45 ml)', 'Basic description of Household 28', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 100.00, 110.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:45', '2024-10-25 05:45:16'),
(1284, 'FMD174394', 'Bhanbhori Strawberry Essence (28 ml)', 'Basic description of Baking & Cooking 21', '3', 'Baking & Cooking', '3', 'Essence', '0', 0.00, 0.00, 50.00, 60.00, 'PCS', 10.00, 10.00, ' Bh00001', 'Bhanbhori', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:05:45', '2024-10-25 05:45:16'),
(1285, 'FMD342737', 'Supervores Pumpkin (1.8 Gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 43', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 170.00, 180.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:45', '2024-10-25 05:45:15'),
(1286, 'FMD174066', 'Plain Doughnut', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 32', '2', 'Bakery', '1', 'Fresh Bakes', '0', 0.00, 0.00, 20.00, 30.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:05:46', '2024-10-25 05:45:15'),
(1287, 'FMD221835', 'Dove Beauty Bar Shea Butter 100g', 'Basic description of Personal Care 19', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 89.00, 99.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:46', '2024-10-25 05:45:13'),
(1288, 'FMD205519', 'Taro Pidalu (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 57', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:46', '2024-10-25 05:45:15'),
(1289, 'FMD174067', 'White Bread Small', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 33', '2', 'Bakery', '1', 'Fresh Bakes', '0', 0.00, 0.00, 65.00, 75.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:05:46', '2024-10-25 05:45:15'),
(1290, 'FMD198555', 'Pidalu (Co-Co Yaam) (1 Kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 62', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 100.00, 110.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:47', '2024-10-25 05:45:16'),
(1291, 'FMD205522', 'Yam (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 60', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 86.00, 96.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:47', '2024-10-25 05:45:16'),
(1292, 'FMD174068', 'Chocolate Chips Cookies', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 34', '2', 'Bakery', '1', 'Fresh Bakes', '0', 0.00, 0.00, 100.00, 110.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:05:47', '2024-10-25 05:45:16'),
(1293, 'FMD187955', 'Sweet Corn Frozen (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 66', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:47', '2024-10-25 05:45:16'),
(1294, 'FMD198560', 'Colour Capsicum (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 64', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:47', '2024-10-25 05:45:16'),
(1295, 'FMD198554', 'Broccoli (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 61', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:47', '2024-10-25 05:45:16'),
(1296, 'FMD198564', 'Potato Jumli White (1 Kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 63', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:47', '2024-10-25 05:45:16'),
(1297, 'FMD185688', 'Local Red Onion (per kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 65', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:48', '2024-10-25 05:45:16'),
(1298, 'FMD188104', 'Yard Beans (500 gm )', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 67', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 65.00, 75.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:48', '2024-10-25 05:45:16'),
(1299, 'FMD188105', 'Karela Bitter Gourd (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 68', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 65.00, 75.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:48', '2024-10-25 05:45:16'),
(1300, 'FMD188187', 'Potato Purple (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 72', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:48', '2024-10-25 05:45:16'),
(1301, 'FMD188185', 'Ghiraula (Sponge Gourd) (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 70', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:48', '2024-10-25 05:45:16'),
(1302, 'FMD174349', 'Nestlé CERELAC Stage 4, Multigrain & Fruits (From 12 Months) (300gm)', 'Basic description of Breakfast 47', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 490.00, 500.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 3]', NULL, '2024-09-24 15:05:48', '2024-10-25 05:45:15'),
(1303, 'FMD188106', 'Lauka ( Bottle Gourd) (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 69', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 100.00, 110.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:48', '2024-10-25 05:45:16'),
(1304, 'FMD221836', 'Dove Deeply Nourishing Body Wash 450ml', 'Basic description of Personal Care 20', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 440.00, 450.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:48', '2024-10-25 05:45:13'),
(1305, 'FMD363091', 'N&H Chicken Leg (530 gm)', 'Basic description of Meat, Fish & Seafood 182', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 467.00, 477.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:48', '2024-10-25 05:45:11'),
(1306, 'FMD205762', 'VCS Basa Fish Steak (1 kg)', 'Basic description of Meat, Fish & Seafood 244', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 590.00, 600.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:49', '2024-10-25 05:45:12'),
(1307, 'FMD324695', 'N&H Chicken Drumsticks (1 kg)', 'Basic description of Meat, Fish & Seafood 127', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 890.00, 900.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:49', '2024-10-25 05:45:10'),
(1308, 'FMD176612', 'ADH Buff Mo:Mo (20 pcs)', 'Basic description of Ready to Cook 31', '19', 'Ready to Cook', '29', 'Momo', '0', 0.00, 0.00, 160.00, 170.00, 'PCS', 10.00, 10.00, ' Ad00001', 'Adhunik', '[Rack 8]', NULL, '2024-09-24 15:05:49', '2024-10-25 05:45:13'),
(1309, 'FMD310841', 'N&H Boneless Chicken Breast (500 gm)', 'Basic description of Meat, Fish & Seafood 135', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 590.00, 600.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:50', '2024-10-25 05:45:10'),
(1310, 'FMD174186', 'VCS Buff Momo Frozen (20 pcs)', 'Basic description of Ready to Cook 30', '19', 'Ready to Cook', '29', 'Momo', '0', 0.00, 0.00, 160.00, 170.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:50', '2024-10-25 05:45:13'),
(1311, 'FMD324326', 'N&H Chicken Legs (430 gm)', 'Basic description of Meat, Fish & Seafood 125', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 334.00, 344.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:50', '2024-10-25 05:45:10'),
(1312, 'FMD226169', 'AMP Chicken Whole Leg (1.4 kg)', 'Basic description of Meat, Fish & Seafood 209', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 965.00, 975.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:50', '2024-10-25 05:45:11'),
(1313, 'FMD174185', 'VCS Veg Momo (HM) (20 pcs)', 'Basic description of Ready to Cook 29', '19', 'Ready to Cook', '29', 'Momo', '0', 0.00, 0.00, 160.00, 170.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:50', '2024-10-25 05:45:13'),
(1314, 'FMD188987', 'Akabare Khorsani (200 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 84', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:50', '2024-10-25 05:45:16'),
(1315, 'FMD333965', 'N&H Bacon  (500 gm)', 'Basic description of Meat, Fish & Seafood 296', '13', 'Meat, Fish & Seafood', '25', 'Pork', '0', 0.00, 0.00, 790.00, 800.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:50', '2024-10-25 05:45:12'),
(1316, 'FMD191059', 'Snapin Cinnamon Powder (45 gm)', 'Basic description of Oil, Spice & Condiments 18', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, ' Sn00001', 'Snapin', '[Rack 7]', NULL, '2024-09-24 15:05:50', '2024-10-25 05:45:12'),
(1317, 'FMD189365', 'Nong Shim Veggie Soon Ramyun (Pack of 5)', 'Basic description of Pasta & Noodles 13', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 740.00, 750.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:50', '2024-10-25 05:45:13'),
(1318, 'FMD188988', 'Potato (1 Dhani)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 85', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 210.00, 220.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:51', '2024-10-25 05:45:16'),
(1319, 'FMD191058', 'Snapin Chilli Flakes (35 gm)', 'Basic description of Oil, Spice & Condiments 17', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, ' Sn00001', 'Snapin', '[Rack 7]', NULL, '2024-09-24 15:05:51', '2024-10-25 05:45:12'),
(1320, 'FMD354799', 'Whole Chicken (1.8 kg)', 'Basic description of Meat, Fish & Seafood 179', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1250.00, 1260.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:51', '2024-10-25 05:45:11'),
(1321, 'FMD189240', 'Haldiram\'s Kaju Mixture (200 gm)', 'Basic description of Snacks & Dry Fruits 9', '22', 'Snacks & Dry Fruits', '31', 'Namkeen', '0', 0.00, 0.00, 216.00, 226.00, 'PCS', 10.00, 10.00, ' Ha00001', 'Haldirams', '[Rack 8]', NULL, '2024-09-24 15:05:51', '2024-10-25 05:45:13'),
(1322, 'FMD191057', 'Snapin Cheesy Garlic Bread Mix (50 gm)', 'Basic description of Oil, Spice & Condiments 16', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, ' Sn00001', 'Snapin', '[Rack 7]', NULL, '2024-09-24 15:05:51', '2024-10-25 05:45:12'),
(1323, 'FMD189042', 'Makai Ko Chiura  1 packet', 'Basic description of Pure Organic Items 21', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 200.00, 210.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:51', '2024-10-25 05:45:13'),
(1324, 'FMD214258', 'Nong Shim Shin Ramyun', 'Basic description of Pasta & Noodles 16', '16', 'Pasta & Noodles', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 740.00, 750.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:51', '2024-10-25 05:45:13'),
(1325, 'FMD191063', 'Snapin Kashmiri Chilli Paprika  (40 gm)', 'Basic description of Oil, Spice & Condiments 22', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 185.00, 195.00, 'PCS', 10.00, 10.00, ' Sn00001', 'Snapin', '[Rack 7]', NULL, '2024-09-24 15:05:52', '2024-10-25 05:45:13'),
(1326, 'FMD284469', 'Hersheys Kisses Milk Chocolate 100 g', 'Basic description of Sweets & Confectionery 45', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 515.00, 525.00, 'PCS', 10.00, 10.00, ' He00001', 'Hersheys', '[Rack 9]', NULL, '2024-09-24 15:05:52', '2024-10-25 05:45:14'),
(1327, 'FMD284465', 'Hershey\'s Cookies n Creme Chocolate Bar 40 g', 'Basic description of Sweets & Confectionery 41', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, ' He00001', 'Hersheys', '[Rack 9]', NULL, '2024-09-24 15:05:52', '2024-10-25 05:45:14'),
(1328, 'FMD190565', 'Mums Chiya Seed (150 gm)', 'Basic description of Pure Organic Items 25', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 250.00, 260.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:52', '2024-10-25 05:45:13'),
(1329, 'FMD173992', 'Banana  ( Jahaji) - (1 Dozen)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 16', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 160.00, 170.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:52', '2024-10-25 05:45:15'),
(1330, 'FMD324325', 'N&H Chicken Drumsticks (510 gm)', 'Basic description of Meat, Fish & Seafood 124', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 449.00, 459.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:52', '2024-10-25 05:45:10'),
(1331, 'FMD189351', 'Nacho Peri Peri With Salsa Dip Tray Pack (70 gm)- Cornitos', 'Basic description of Snacks & Dry Fruits 77', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 160.00, 170.00, 'PCS', 10.00, 10.00, ' Co00001', 'Cornitos', '[Rack 8]', NULL, '2024-09-24 15:05:52', '2024-10-25 05:45:14'),
(1332, 'FMD189019', 'Green Kiwi (1 Kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 20', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 440.00, 450.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:52', '2024-10-25 05:45:15'),
(1333, 'FMD174241', 'Syrup Pancake , 2% Maple (710 ml)- American Garden', 'Basic description of Breakfast 27', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 720.00, 730.00, 'PCS', 10.00, 10.00, ' Am00001', 'American Garden', '[Rack 3]', NULL, '2024-09-24 15:05:52', '2024-10-25 05:45:15'),
(1334, 'FMD188102', 'Banana Local (1 dozen)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 18', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 165.00, 175.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:52', '2024-10-25 05:45:15'),
(1335, 'FMD174235', 'Mayonnaise Real (887 ml)- American Garden', 'Basic description of Breakfast 26', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 950.00, 960.00, 'PCS', 10.00, 10.00, ' Am00001', 'American Garden', '[Rack 3]', NULL, '2024-09-24 15:05:53', '2024-10-25 05:45:15'),
(1336, 'FMD174176', 'Sweet Corn 1Kg-Yogo Fresh-N&H', 'Basic description of Ready to Cook 20', '19', 'Ready to Cook', '28', 'Veg Items', '0', 0.00, 0.00, 260.00, 270.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:53', '2024-10-25 05:45:13'),
(1337, 'FMD177352', 'Olay TE Normal UV Cream Thai (50 gm)', 'Basic description of Personal Care 12', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1089.00, 1099.00, 'PCS', 10.00, 10.00, ' Ol00001', 'Olay', '[Rack 8]', NULL, '2024-09-24 15:05:53', '2024-10-25 05:45:13'),
(1338, 'FMD174173', 'Green Peas (1 kg)', 'Basic description of Ready to Cook 17', '19', 'Ready to Cook', '28', 'Veg Items', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:53', '2024-10-25 05:45:13'),
(1339, 'FMD198563', 'Strawberry Frozen (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 30', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 590.00, 600.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:53', '2024-10-25 05:45:15'),
(1340, 'FMD176493', 'Pintola All Natural Peanut Butter Creamy (350 gm)', 'Basic description of Breakfast 33', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 270.00, 280.00, 'PCS', 10.00, 10.00, ' Pi00001', 'Pintola', '[Rack 3]', NULL, '2024-09-24 15:05:54', '2024-10-25 05:45:15'),
(1341, 'FMD176492', 'Pintola All Natural Peanut Butter Creamy (1 kg)', 'Basic description of Breakfast 32', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 685.00, 695.00, 'PCS', 10.00, 10.00, ' Pi00001', 'Pintola', '[Rack 3]', NULL, '2024-09-24 15:05:54', '2024-10-25 05:45:15'),
(1342, 'FMD298276', 'N&H Chicken Legs (580 gm)', 'Basic description of Meat, Fish & Seafood 224', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 454.00, 464.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:54', '2024-10-25 05:45:12'),
(1343, 'FMD215888', 'Nescafe Classic 25 gm', 'Basic description of Beverages 40', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 115.00, 125.00, 'PCS', 8.00, 8.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:54', '2024-10-25 05:45:12'),
(1344, 'FMD176496', 'Pintola Peanut Butter Classic Creamy (350 gm)', 'Basic description of Breakfast 36', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 200.00, 210.00, 'PCS', 10.00, 10.00, ' Pi00001', 'Pintola', '[Rack 3]', NULL, '2024-09-24 15:05:54', '2024-10-25 05:45:15'),
(1345, 'FMD404107', 'N&H Hot Dog Pork Sausage 400Gm', 'Basic description of Meat, Fish & Seafood 289', '13', 'Meat, Fish & Seafood', '25', 'Pork', '0', 0.00, 0.00, 450.00, 460.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:54', '2024-10-25 05:45:12'),
(1346, 'FMD241231', 'Real Juice Pineapple (1 ltr)', 'Basic description of Beverages 62', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 245.00, 255.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:54', '2024-10-25 05:45:13'),
(1347, 'FMD254314', 'N&H German White Wurst (Pork) 400Gm', 'Basic description of Meat, Fish & Seafood 287', '13', 'Meat, Fish & Seafood', '25', 'Pork', '0', 0.00, 0.00, 470.00, 480.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:55', '2024-10-25 05:45:12'),
(1348, 'FMD201301', 'Watermelon (Around 3 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 31', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 365.00, 375.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:55', '2024-10-25 05:45:15'),
(1349, 'FMD176494', 'Pintola All Natural Peanut Butter Crunchy (1 kg)', 'Basic description of Breakfast 34', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 685.00, 695.00, 'PCS', 10.00, 10.00, ' Pi00001', 'Pintola', '[Rack 3]', NULL, '2024-09-24 15:05:55', '2024-10-25 05:45:15'),
(1350, 'FMD174427', 'Lamjung (Washed) Filter Grind 500 gm', 'Basic description of Beverages 26', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 1240.00, 1250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:55', '2024-10-25 05:45:10'),
(1351, 'FMD174065', 'Plain Croissant', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 31', '2', 'Bakery', '1', 'Fresh Bakes', '0', 0.00, 0.00, 60.00, 70.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:05:55', '2024-10-25 05:45:15'),
(1352, 'FMD205523', 'Apple Jumli (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 32', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 380.00, 390.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:55', '2024-10-25 05:45:15'),
(1353, 'FMD325850', 'N&H Chicken Legs (0.560 kg)', 'Basic description of Meat, Fish & Seafood 132', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 494.00, 504.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:56', '2024-10-25 05:45:10'),
(1354, 'FMD215622', 'Whisper Ultra Clean XL+ 30\'S', 'Basic description of Personal Care 16', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 550.00, 560.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:56', '2024-10-25 05:45:13'),
(1355, 'FMD230992', 'Pampers Diapers 64s (LG)', 'Basic description of Baby Care 14', '1', 'Baby Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1908.00, 1918.00, 'PCS', 10.00, 10.00, ' Pa00001', 'Pamper', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:05:56', '2024-10-25 05:45:13');
INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_description`, `category_id`, `category_name`, `subcategory_id`, `subcategory_name`, `delivery_target_days`, `discount`, `actual_price`, `sell_price`, `mr_price`, `unit_info`, `available_quantity`, `stock_quantity`, `brand_id`, `brand_name`, `product_location`, `primary_image`, `created_at`, `updated_at`) VALUES
(1356, 'FMD176497', 'Pintola Peanut Butter Classic Crunchy (350 gm)', 'Basic description of Breakfast 37', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 200.00, 210.00, 'PCS', 10.00, 10.00, ' Pi00001', 'Pintola', '[Rack 3]', NULL, '2024-09-24 15:05:56', '2024-10-25 05:45:15'),
(1357, 'FMD217017', 'Gaia Green Tea + Mint 25\'s', 'Basic description of Beverages 54', '4', 'Beverages', '5', 'Tea', '0', 0.00, 0.00, 294.00, 304.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:56', '2024-10-25 05:45:13'),
(1358, 'FMD215894', 'Nestle Milky Bar 42 gms', 'Basic description of Sweets & Confectionery 27', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 9]', NULL, '2024-09-24 15:05:56', '2024-10-25 05:45:14'),
(1359, 'FMD174178', 'VCS Sweetcorn (1 kg) smr', 'Basic description of Ready to Cook 22', '19', 'Ready to Cook', '28', 'Veg Items', '0', 0.00, 0.00, 265.00, 275.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:57', '2024-10-25 05:45:13'),
(1360, 'FMD174177', 'VCS French fry (1 kg)', 'Basic description of Ready to Cook 21', '19', 'Ready to Cook', '28', 'Veg Items', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:57', '2024-10-25 05:45:13'),
(1361, 'FMD325705', 'N&H Tenderloin Mince (500 gm)', 'Basic description of Meat, Fish & Seafood 131', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 490.00, 500.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:57', '2024-10-25 05:45:10'),
(1362, 'FMD222849', 'Strawberry (300 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 35', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:05:57', '2024-10-25 05:45:15'),
(1363, 'FMD189007', '???? ???? ????, (Chitwan)', 'Basic description of Rice & Pulses 25', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 270.00, 280.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:57', '2024-10-25 05:45:13'),
(1364, 'FMD221816', 'Closeup Mouthwash Red Hot 500 ml', 'Basic description of Personal Care 34', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 358.00, 368.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:57', '2024-10-25 05:45:13'),
(1365, 'FMD174090', 'Jumbo Prawn - (500 gm)', 'Basic description of Meat, Fish & Seafood 234', '13', 'Meat, Fish & Seafood', '23', 'Seafood', '0', 0.00, 0.00, 1190.00, 1200.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:05:57', '2024-10-25 05:45:12'),
(1366, 'FMD199198', 'Cheese Stick', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 6', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 0.00, 0.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:05:57', '2024-10-25 05:45:15'),
(1367, 'FMD221817', 'Comfort Fabric Conditioner  Blue 220 ml', 'Basic description of Personal Care 35', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 83.00, 93.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:57', '2024-10-25 05:45:13'),
(1368, 'FMD404099', 'N&H Pork Belly - 1 Kg', 'Basic description of Meat, Fish & Seafood 184', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1440.00, 1450.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:57', '2024-10-25 05:45:11'),
(1369, 'FMD176495', 'Pintola All Natural Peanut Butter Crunchy (350 gm)', 'Basic description of Breakfast 35', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 270.00, 280.00, 'PCS', 10.00, 10.00, ' Pi00001', 'Pintola', '[Rack 3]', NULL, '2024-09-24 15:05:58', '2024-10-25 05:45:15'),
(1370, 'FMD174144', 'Sandheko Golbeda Achar (500 gm)', 'Basic description of Local Produces 19', '12', 'Local Produces', '20', 'Pickles', '0', 0.00, 0.00, 170.00, 180.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:58', '2024-10-25 05:45:17'),
(1371, 'FMD221818', 'Comfort Fabric Conditioner Pink 220 ml', 'Basic description of Personal Care 36', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 83.00, 93.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:05:58', '2024-10-25 05:45:13'),
(1372, 'FMD364341', 'N&H Chicken Drumsticks (950 gm)', 'Basic description of Meat, Fish & Seafood 175', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 845.00, 855.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:58', '2024-10-25 05:45:11'),
(1373, 'FMD298147', 'Saffola Gold Jar (5 Ltr)', 'Basic description of Oil, Spice & Condiments 1', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 2189.00, 2199.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:58', '2024-10-25 05:45:12'),
(1374, 'FMD230991', 'Pampers Diapers 42s (LG) [Pack of 3]', 'Basic description of Baby Care 13', '1', 'Baby Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 3824.00, 3834.00, 'PCS', 8.00, 8.00, ' Pa00001', 'Pamper', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:05:58', '2024-10-25 05:45:12'),
(1375, 'FMD174409', 'Britannia Good Day Cashew (250 g)', 'Basic description of Cookies & Biscuits 59', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, ' Br00001', 'Britannia', '[Rack 3]', NULL, '2024-09-24 15:05:58', '2024-10-25 05:45:15'),
(1376, 'FMD199213', 'Nutty Chocolate Prawling', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 21', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 180.00, 190.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:05:58', '2024-10-25 05:45:15'),
(1377, 'FMD174298', 'Classic Espresso Blend 500 gm Filter Grind (Exotic/ Medium Roast)-  (Premium / Export Quality)', 'Basic description of Beverages 10', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 1190.00, 1200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:59', '2024-10-25 05:45:17'),
(1378, 'FMD180345', 'Dettol Sanitizer (200 ml)', 'Basic description of Personal Care 38', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 10.00, 10.00, ' De00001', 'Dettol', '[Rack 8]', NULL, '2024-09-24 15:05:59', '2024-10-25 05:45:13'),
(1379, 'FMD174407', 'Britannia Digestive (500g)', 'Basic description of Cookies & Biscuits 57', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, ' Br00001', 'Britannia', '[Rack 3]', NULL, '2024-09-24 15:05:59', '2024-10-25 05:45:15'),
(1380, 'FMD284281', 'Dhara Mustard Oil (1 ltr)', 'Basic description of Oil, Spice & Condiments 3', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 370.00, 380.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:59', '2024-10-25 05:45:12'),
(1381, 'FMD174408', 'Britannia Good Day Butter (250g)', 'Basic description of Cookies & Biscuits 58', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 85.00, 95.00, 'PCS', 10.00, 10.00, ' Br00001', 'Britannia', '[Rack 3]', NULL, '2024-09-24 15:05:59', '2024-10-25 05:45:15'),
(1382, 'FMD174145', 'Gundruk Bhatmas Pickle (200 gm)', 'Basic description of Local Produces 20', '12', 'Local Produces', '20', 'Pickles', '0', 0.00, 0.00, 379.00, 389.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:05:59', '2024-10-25 05:45:17'),
(1383, 'FMD179948', 'Churpi', 'Basic description of Local Produces 35', '12', 'Local Produces', '21', 'More Local Products', '0', 0.00, 0.00, 300.00, 310.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:59', '2024-10-25 05:45:17'),
(1384, 'FMD179949', 'Frozen Duck Meat', 'Basic description of Local Produces 36', '12', 'Local Produces', '21', 'More Local Products', '0', 0.00, 0.00, 1990.00, 2000.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:05:59', '2024-10-25 05:45:17'),
(1385, 'FMD174300', 'House Blend 250 gm Whole Beans (Floral/Light Roast)-  (Premium / Export Quality)', 'Basic description of Beverages 12', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 690.00, 700.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:05:59', '2024-10-25 05:45:17'),
(1386, 'FMD174162', 'Chicken Meat Pickle (380 gm)', 'Basic description of Local Produces 22', '12', 'Local Produces', '20', 'Pickles', '0', 0.00, 0.00, 1089.00, 1099.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:00', '2024-10-25 05:45:17'),
(1387, 'FMD179950', 'Frozen Fish', 'Basic description of Local Produces 37', '12', 'Local Produces', '21', 'More Local Products', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:00', '2024-10-25 05:45:17'),
(1388, 'FMD189359', 'Gaia Green Tea Lemon 25s', 'Basic description of Beverages 49', '4', 'Beverages', '5', 'Tea', '0', 0.00, 0.00, 294.00, 304.00, 'PCS', 10.00, 10.00, ' GA00001', 'GAIA', '[Rack 3]', NULL, '2024-09-24 15:06:00', '2024-10-25 05:45:13'),
(1389, 'FMD174410', 'Britannia Marie (45g) (Pack of 12)', 'Basic description of Cookies & Biscuits 60', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:00', '2024-10-25 05:45:15'),
(1390, 'FMD174379', 'Timmur (500 gm)', 'Basic description of Oil, Spice & Condiments 54', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 890.00, 900.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:00', '2024-10-25 05:45:13'),
(1391, 'FMD252386', 'Pringles Hot & Spicy (147 gm)', 'Basic description of Snacks & Dry Fruits 107', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, ' Pr00002', 'Pringles', '[Rack 9]', NULL, '2024-09-24 15:06:00', '2024-10-25 05:45:14'),
(1392, 'FMD179951', 'Manag Red Beans', 'Basic description of Local Produces 38', '12', 'Local Produces', '21', 'More Local Products', '0', 0.00, 0.00, 550.00, 560.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:00', '2024-10-25 05:45:17'),
(1393, 'FMD298148', 'Sunflow Sunflower Oil (1 Ltr)', 'Basic description of Oil, Spice & Condiments 2', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 255.00, 265.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:01', '2024-10-25 05:45:12'),
(1394, 'FMD283213', 'Cornitos Nacho crisps Sour cream & Onion (60 gm)', 'Basic description of Snacks & Dry Fruits 108', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 120.00, 130.00, 'PCS', 0.00, 0.00, ' Co00001', 'Cornitos', '[Rack 9]', NULL, '2024-09-24 15:06:01', '2024-10-25 05:45:14'),
(1395, 'FMD174143', 'Rahar ko Daal (1 kg)', 'Basic description of Local Produces 10', '12', 'Local Produces', '19', 'Legume', '0', 0.00, 0.00, 220.00, 230.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:02', '2024-10-25 05:45:17'),
(1396, 'FMD177416', 'Rasuwa White Beans (1 kg)', 'Basic description of Local Produces 9', '12', 'Local Produces', '19', 'Legume', '0', 0.00, 0.00, 360.00, 370.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:02', '2024-10-25 05:45:17'),
(1397, 'FMD177415', 'Rahar Daal (Local, 1 kg)', 'Basic description of Local Produces 8', '12', 'Local Produces', '19', 'Legume', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:02', '2024-10-25 05:45:17'),
(1398, 'FMD242006', 'Baigan Fali Mango (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 309', '8', 'Fruits & Vegetables', '17', 'Fruits By Vendors', '0', 0.00, 0.00, 365.00, 375.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:02', '2024-10-25 05:45:16'),
(1399, 'FMD342387', 'Simi Ko Daal (1 kg)', 'Basic description of Local Produces 11', '12', 'Local Produces', '19', 'Legume', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:02', '2024-10-25 05:45:17'),
(1400, 'FMD199039', 'Naspati White(White Pearl) (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 304', '8', 'Fruits & Vegetables', '17', 'Fruits By Vendors', '0', 0.00, 0.00, 315.00, 325.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:03', '2024-10-25 05:45:16'),
(1401, 'FMD199045', 'Dragon Fruit (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 307', '8', 'Fruits & Vegetables', '17', 'Fruits By Vendors', '0', 0.00, 0.00, 440.00, 450.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:03', '2024-10-25 05:45:16'),
(1402, 'FMD214636', 'AVO Guacamole', 'Made from premium Hass avocados, AVO Guacamole is 100% natural and preservative free. Now, you can enjoy the authentic flavor of pure Mexican guacamole.   Add it to your salad, spread it on your multigrain bread, create the perfect veggie dip, or simply s', '9', 'Healthy Choice', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1040.00, 1050.00, 'PCS', 10.00, 10.00, ' AV00001', 'AVO', '[Rack 4]', NULL, '2024-09-24 15:06:03', '2024-10-25 05:45:16'),
(1403, 'FMD254325', 'Kombucha (300 ml) Bottle', 'Made from premium Hass avocados, AVO Guacamole is 100% natural and preservative free. Now, you can enjoy the authentic flavor of pure Mexican guacamole.   Add it to your salad, spread it on your multigrain bread, create the perfect veggie dip, or simply s', '9', 'Healthy Choice', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:03', '2024-10-25 05:45:16'),
(1404, 'FMD226176', 'Cheetos Cheese 27g', 'Basic description of Snacks & Dry Fruits 93', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 67.00, 77.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:03', '2024-10-25 05:45:14'),
(1405, 'FMD215189', 'Pampers Pant 56\'s Extra Large (XL)', 'Basic description of Baby Care 7', '1', 'Baby Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1908.00, 1918.00, 'PCS', 10.00, 10.00, ' Pa00001', 'Pamper', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:06:04', '2024-10-25 05:45:16'),
(1406, 'FMD221810', 'Brown & Polson Vanilla Custard Powder 500g', 'Basic description of Baking & Cooking 16', '3', 'Baking & Cooking', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:06:04', '2024-10-25 05:45:16'),
(1407, 'FMD174106', 'Basa Steak - (1 Kg)', 'Basic description of Meat, Fish & Seafood 230', '13', 'Meat, Fish & Seafood', '23', 'Seafood', '0', 0.00, 0.00, 585.00, 595.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:04', '2024-10-25 05:45:12'),
(1408, 'FMD229456', 'Cornitos Nacho Crisps Tomato Mexicana (65 gm)', 'Basic description of Snacks & Dry Fruits 92', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 120.00, 130.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:04', '2024-10-25 05:45:14'),
(1409, 'FMD398241', 'Chicken Drumstick (1.07 gm)', 'Basic description of Meat, Fish & Seafood 190', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 953.00, 963.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:04', '2024-10-25 05:45:11'),
(1410, 'FMD342126', 'N&H Chicken Drumstick (440 gm)', 'Basic description of Meat, Fish & Seafood 163', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 386.00, 396.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:04', '2024-10-25 05:45:10'),
(1411, 'FMD174085', 'N&H B/L Chicken Breast (500 gms)', 'Basic description of Meat, Fish & Seafood 8', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 590.00, 600.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:06:04', '2024-10-25 05:45:17'),
(1412, 'FMD174095', 'N&H Chicken Mince (500 gms)', 'Basic description of Meat, Fish & Seafood 10', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 530.00, 540.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:06:05', '2024-10-25 05:45:17'),
(1413, 'FMD174125', 'VCS Chicken BL Leg (500 gm)', 'Basic description of Meat, Fish & Seafood 18', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 375.00, 385.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:05', '2024-10-25 05:45:17'),
(1414, 'FMD174126', 'VCS Chicken Drumstick (700 gm)', 'Basic description of Meat, Fish & Seafood 19', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 450.00, 460.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:05', '2024-10-25 05:45:17'),
(1415, 'FMD199208', 'Jeera Cookies', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 16', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:06:05', '2024-10-25 05:45:15'),
(1416, 'FMD174127', 'VCS Chicken Lolly (500 gm) ( Lollipop )', 'Basic description of Meat, Fish & Seafood 20', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:05', '2024-10-25 05:45:17'),
(1417, 'FMD189355', 'Gaia Dark Choco Chips Cookies', 'Basic description of Cookies & Biscuits 64', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, ' GA00001', 'GAIA', '[Rack 3]', NULL, '2024-09-24 15:06:05', '2024-10-25 05:45:15'),
(1418, 'FMD174434', 'Palpa (Natural) Beans 1000 gm', 'Basic description of Beverages 33', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 2490.00, 2500.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:05', '2024-10-25 05:45:11'),
(1419, 'FMD183153', 'Thakali Shahi Basmati Rice (1 kg)', 'Basic description of Rice & Pulses 10', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 135.00, 145.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:05', '2024-10-25 05:45:13'),
(1420, 'FMD177804', 'Hobnob Regular', 'Basic description of Cookies & Biscuits 63', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 220.00, 230.00, 'PCS', 10.00, 10.00, ' Mc00001', 'Mcvities (India)', '[Rack 3]', NULL, '2024-09-24 15:06:05', '2024-10-25 05:45:15'),
(1421, 'FMD253691', 'Butter Bites (160 gm)', 'Basic description of Cookies & Biscuits 4', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 45.00, 55.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:05', '2024-10-25 05:45:15'),
(1422, 'FMD353616', 'N&H Chicken Drumstick 1050 gm', 'Basic description of Meat, Fish & Seafood 177', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 935.00, 945.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:06', '2024-10-25 05:45:11'),
(1423, 'FMD174129', 'VCS Chicken Nuggets (200 gm)', 'Basic description of Meat, Fish & Seafood 22', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 220.00, 230.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:06', '2024-10-25 05:45:17'),
(1424, 'FMD185019', 'Britannia Suji Toast(235 gms)', 'Basic description of Cookies & Biscuits 66', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:06', '2024-10-25 05:45:15'),
(1425, 'FMD203268', 'Coconut Sugar Free Cookies (200 gms) - GAIA', 'Basic description of Cookies & Biscuits 68', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 205.00, 215.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:06', '2024-10-25 05:45:15'),
(1426, 'FMD199214', 'Peanut Butter Cookies', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 22', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:06:06', '2024-10-25 05:45:15'),
(1427, 'FMD174130', 'VCS Chicken Salami (500gm) Per Pkt', 'Basic description of Meat, Fish & Seafood 23', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 420.00, 430.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:06', '2024-10-25 05:45:17'),
(1428, 'FMD180350', 'Whisper Ultra Clean (XL+ 30)', 'Basic description of Personal Care 43', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 486.00, 496.00, 'PCS', 10.00, 10.00, ' Wh00001', 'Whisper', '[Rack 8]', NULL, '2024-09-24 15:06:06', '2024-10-25 05:45:13'),
(1429, 'FMD189009', 'Chana Ko Daal', 'Basic description of Rice & Pulses 27', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:06', '2024-10-25 05:45:13'),
(1430, 'FMD198792', 'Royal Danish Luxury Cookies (454 gm)', 'Basic description of Cookies & Biscuits 67', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 685.00, 695.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:06', '2024-10-25 05:45:15'),
(1431, 'FMD176606', 'AMP Chicken Whole Leg (500 gm)', 'Basic description of Meat, Fish & Seafood 57', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 315.00, 325.00, 'PCS', 10.00, 10.00, ' Ad00001', 'Adhunik', '[Rack 7]', NULL, '2024-09-24 15:06:07', '2024-10-25 05:45:17'),
(1432, 'FMD189362', 'Gaia Oatmeals Cookies (200 gm)', 'Basic description of Cookies & Biscuits 65', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, ' GA00001', 'GAIA', '[Rack 3]', NULL, '2024-09-24 15:06:07', '2024-10-25 05:45:15'),
(1433, 'FMD174052', 'Cow Cheese (200 gm)', 'Egg and dairy provide protein, calcium, and essential nutrients for health 17', '7', 'Egg & Dairy', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:07', '2024-10-25 05:45:15'),
(1434, 'FMD174131', 'VCS Chicken Curry Cut (500 gm)', 'Basic description of Meat, Fish & Seafood 24', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:07', '2024-10-25 05:45:17'),
(1435, 'FMD199220', 'Vanilla Swiss Roll (Large)', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 28', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:06:07', '2024-10-25 05:45:15'),
(1436, 'FMD202815', 'Rajma', 'Basic description of Rice & Pulses 42', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 280.00, 290.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:07', '2024-10-25 05:45:13'),
(1437, 'FMD176601', 'AMP Chicken Wings (500 gm)', 'Basic description of Meat, Fish & Seafood 52', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, ' Ad00001', 'Adhunik', '[Rack 7]', NULL, '2024-09-24 15:06:07', '2024-10-25 05:45:17'),
(1438, 'FMD174356', 'NESCAFE Classic (Two 200 gm, Packets) - 400 gm', 'Basic description of Beverages 18', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 1290.00, 1300.00, 'PCS', 10.00, 10.00, ' Ne00001', 'Nescafe', '[Rack 3]', NULL, '2024-09-24 15:06:07', '2024-10-25 05:45:17'),
(1439, 'FMD202476', 'American Garden Garlic & Herbs Pasta Sauce (397 gms)', 'Basic description of Soup, Sauce & Seasonings 43', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 315.00, 325.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:06:07', '2024-10-25 05:45:14'),
(1440, 'FMD215897', 'Maggi Hot & Sweet Ketchup (200 gms)', 'Basic description of Soup, Sauce & Seasonings 46', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 125.00, 135.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:06:08', '2024-10-25 05:45:14'),
(1441, 'FMD247720', 'Dhara Sunflower Oil (1 ltr)', 'Basic description of Oil, Spice & Condiments 5', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 360.00, 370.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:08', '2024-10-25 05:45:12'),
(1442, 'FMD174214', 'Krugers Lemon Ice Tea (400 gms)', 'Basic description of Beverages 88', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 540.00, 550.00, 'PCS', 10.00, 10.00, ' Kr00001', 'Kruger', '[Rack 3]', NULL, '2024-09-24 15:06:08', '2024-10-25 05:45:14'),
(1443, 'FMD216968', 'American Garden Arrabiata Pasta Sauce (397 gms)', 'Basic description of Soup, Sauce & Seasonings 48', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 315.00, 325.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:06:08', '2024-10-25 05:45:14'),
(1444, 'FMD221851', 'Knorr Shanghai Hot & Sour Chicken Soup 38g', 'Basic description of Soup, Sauce & Seasonings 54', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 102.00, 112.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:06:08', '2024-10-25 05:45:14'),
(1445, 'FMD189027', 'Chamal Ko Pitho (1 kg)', 'Basic description of Pure Organic Items 6', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:08', '2024-10-25 05:45:13'),
(1446, 'FMD197265', 'American Garden U.S Mustard (397 gm)', 'Basic description of Soup, Sauce & Seasonings 44', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 415.00, 425.00, 'PCS', 10.00, 10.00, ' Am00001', 'American Garden', '[Rack 9]', NULL, '2024-09-24 15:06:08', '2024-10-25 05:45:14'),
(1447, 'FMD326694', 'N&H Chicken Drumstick (550 gm)', 'Basic description of Meat, Fish & Seafood 152', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 485.00, 495.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:08', '2024-10-25 05:45:10'),
(1448, 'FMD215898', 'Maggi Rich Tomato Ketchup (200 gms)', 'Basic description of Soup, Sauce & Seasonings 47', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 120.00, 130.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:06:09', '2024-10-25 05:45:14'),
(1449, 'FMD174448', 'Nestle Kitkat 38.5 gm 6pcs', 'Basic description of Sweets & Confectionery 1', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 50.00, 60.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 9]', NULL, '2024-09-24 15:06:09', '2024-10-25 05:45:14'),
(1450, 'FMD215865', 'Dairy Milk Silk Fruit & Nut (55 gm)', 'Basic description of Sweets & Confectionery 19', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 102.00, 112.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:06:09', '2024-10-25 05:45:14'),
(1451, 'FMD174318', 'Sweet & Spicy (1 kg)', 'Basic description of Soup, Sauce & Seasonings 21', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 246.00, 256.00, 'PCS', 10.00, 10.00, ' Ki00001', 'Kissan', '[Rack 9]', NULL, '2024-09-24 15:06:09', '2024-10-25 05:45:14'),
(1452, 'FMD192285', 'Tafero Derby (55 pcs)', 'Basic description of Sweets & Confectionery 10', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 540.00, 550.00, 'PCS', 10.00, 10.00, ' De00002', 'Derby', '[Rack 9]', NULL, '2024-09-24 15:06:09', '2024-10-25 05:45:14'),
(1453, 'FMD174132', 'VCS Chicken Gizzard (500 gm)', 'Basic description of Meat, Fish & Seafood 25', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 365.00, 375.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:09', '2024-10-25 05:45:17'),
(1454, 'FMD283268', 'Cornitos Nacho Crisps Barbeque 60g', 'Basic description of Snacks & Dry Fruits 109', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 120.00, 130.00, 'PCS', 10.00, 10.00, ' Co00001', 'Cornitos', '[Rack 9]', NULL, '2024-09-24 15:06:09', '2024-10-25 05:45:14'),
(1455, 'FMD195308', 'Chicken Wings (800 gm)', 'Basic description of Meat, Fish & Seafood 112', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 590.00, 600.00, 'PCS', 6.00, 6.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:09', '2024-10-25 05:45:10'),
(1456, 'FMD189025', '??? ???????? (Jumla) (1 kg)', 'Basic description of Pure Organic Items 4', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:09', '2024-10-25 05:45:13'),
(1457, 'FMD211307', 'Rahar Dal (2 kg)', 'Basic description of Rice & Pulses 44', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 490.00, 500.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:09', '2024-10-25 05:45:13'),
(1458, 'FMD174322', 'Chilli Tomato (500 gm)', 'Basic description of Soup, Sauce & Seasonings 25', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 158.00, 168.00, 'PCS', 10.00, 10.00, ' Ki00001', 'Kissan', '[Rack 9]', NULL, '2024-09-24 15:06:10', '2024-10-25 05:45:14'),
(1459, 'FMD189026', '???? ???? (Mugu Nuwakot) (1 kg)', 'Basic description of Pure Organic Items 5', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 270.00, 280.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:10', '2024-10-25 05:45:13'),
(1460, 'FMD174192', 'Special Masala Tofu (200 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 121', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:10', '2024-10-25 05:45:16'),
(1461, 'FMD174194', 'Tofu (200 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 123', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:10', '2024-10-25 05:45:16'),
(1462, 'FMD311474', 'Weetabix original 215 Gms', 'Basic description of Breakfast 69', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 365.00, 375.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:10', '2024-10-25 05:45:15'),
(1463, 'FMD173991', 'Ghiu Simi ( String Beans) (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 120', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:10', '2024-10-25 05:45:16'),
(1464, 'FMD176616', 'ADH Veg Mo:Mo (20 pcs)', 'Basic description of Ready to Cook 35', '19', 'Ready to Cook', '29', 'Momo', '0', 0.00, 0.00, 160.00, 170.00, 'PCS', 10.00, 10.00, ' Ad00001', 'Adhunik', '[Rack 8]', NULL, '2024-09-24 15:06:11', '2024-10-25 05:45:13'),
(1465, 'FMD176615', 'ADH Chicken Mo:Mo (50 pcs)', 'Basic description of Ready to Cook 34', '19', 'Ready to Cook', '29', 'Momo', '0', 0.00, 0.00, 365.00, 375.00, 'PCS', 10.00, 10.00, ' Ad00001', 'Adhunik', '[Rack 8]', NULL, '2024-09-24 15:06:11', '2024-10-25 05:45:13'),
(1466, 'FMD174240', 'Pasta Sauce, Traditional (680gm)- American Garden', 'Basic description of Soup, Sauce & Seasonings 17', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 390.00, 400.00, 'PCS', 10.00, 10.00, ' Am00001', 'American Garden', '[Rack 9]', NULL, '2024-09-24 15:06:11', '2024-10-25 05:45:14'),
(1467, 'FMD174236', 'Mustard Deli Style (397 gm)- American Garden', 'Basic description of Soup, Sauce & Seasonings 18', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 415.00, 425.00, 'PCS', 10.00, 10.00, ' Am00001', 'American Garden', '[Rack 9]', NULL, '2024-09-24 15:06:11', '2024-10-25 05:45:14'),
(1468, 'FMD369523', 'Suji Rusk (170 gm)', 'Basic description of Breakfast 74', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:11', '2024-10-25 05:45:15'),
(1469, 'FMD225701', 'Kellogg\'s Extra Muesli Fruit & Nut 750 gm', 'Basic description of Breakfast 75', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 740.00, 750.00, 'PCS', 0.00, 0.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:11', '2024-10-25 05:45:15'),
(1470, 'FMD174193', 'Special Tofu (200 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 122', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 65.00, 75.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:11', '2024-10-25 05:45:16'),
(1471, 'FMD177404', 'Potato Mustang (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 139', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:12', '2024-10-25 05:45:16'),
(1472, 'FMD192044', 'GFM Chicken Momo (20 pcs)', 'Basic description of Ready to Cook 37', '19', 'Ready to Cook', '29', 'Momo', '0', 0.00, 0.00, 255.00, 265.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:12', '2024-10-25 05:45:13'),
(1473, 'FMD230990', 'Pampers Diapers 34s (XL) [Pack of 3]', 'Basic description of Baby Care 12', '1', 'Baby Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 3824.00, 3834.00, 'PCS', 10.00, 10.00, ' Pa00001', 'Pamper', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:06:12', '2024-10-25 05:45:12'),
(1474, 'FMD177401', 'Garlic (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 136', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:12', '2024-10-25 05:45:16'),
(1475, 'FMD177402', 'Hariyo Bhatamas (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 137', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:12', '2024-10-25 05:45:16'),
(1476, 'FMD177408', 'Spring Onion (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 143', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:12', '2024-10-25 05:45:16'),
(1477, 'FMD199017', 'N&H Trout Fish (720 gm)', 'Basic description of Meat, Fish & Seafood 248', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 998.00, 1008.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:12', '2024-10-25 05:45:12'),
(1478, 'FMD286835', 'N&H Chicken Wings (910 gm)', 'Basic description of Meat, Fish & Seafood 228', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 718.00, 728.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:12', '2024-10-25 05:45:12'),
(1479, 'FMD192056', 'GFM Veg Momo (20 pcs)', 'Basic description of Ready to Cook 40', '19', 'Ready to Cook', '29', 'Momo', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:13', '2024-10-25 05:45:13'),
(1480, 'FMD196808', 'Coriander (200 gm) Bunch', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 226', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 85.00, 95.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:06:13', '2024-10-25 05:45:16'),
(1481, 'FMD196810', 'Spinach (Bunch)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 228', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 40.00, 50.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:06:13', '2024-10-25 05:45:16'),
(1482, 'FMD315208', 'Banana Chips 50 gm Desi Masala', 'Basic description of Snacks & Dry Fruits 86', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 115.00, 125.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:13', '2024-10-25 05:45:14'),
(1483, 'FMD192050', 'Traffic Light Pepper (Red, Yellow, Green) (1 Pkt)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 234', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 375.00, 385.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:13', '2024-10-25 05:45:16'),
(1484, 'FMD300120', 'Kellogg\'s  Corn Flakes Original (475gm)', 'Basic description of Breakfast 98', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 415.00, 425.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:13', '2024-10-25 05:45:15'),
(1485, 'FMD283408', 'Hershey\'s Strawberry Syrup 623 gms', 'Basic description of Baking & Cooking 12', '3', 'Baking & Cooking', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 550.00, 560.00, 'PCS', 0.00, 0.00, ' He00001', 'Hersheys', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:06:14', '2024-10-25 05:45:16'),
(1486, 'FMD196809', 'Okra (Half Kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 227', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 50.00, 60.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:06:14', '2024-10-25 05:45:16'),
(1487, 'FMD180402', 'King Oyster Mushroom (Pkt)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 239', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:06:14', '2024-10-25 05:45:16'),
(1488, 'FMD180409', 'Machey (Pointed Pepper) (Half kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 242', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 60.00, 70.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:06:14', '2024-10-25 05:45:16'),
(1489, 'FMD180401', 'Ginger( peeled)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 238', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 100.00, 110.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:06:14', '2024-10-25 05:45:16'),
(1490, 'FMD180400', 'Button Mushroom (1 Kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 237', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 470.00, 480.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:06:14', '2024-10-25 05:45:16'),
(1491, 'FMD180403', 'Garlic peeled (Pkt)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 240', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:06:15', '2024-10-25 05:45:16'),
(1492, 'FMD180573', 'Pumpkin (1.32 Kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 243', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 115.40, 125.40, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:06:15', '2024-10-25 05:45:16'),
(1493, 'FMD180404', 'Oyster Mushroom (1 Kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 241', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:06:15', '2024-10-25 05:45:16'),
(1494, 'FMD181674', 'Sicilian Sausage 400 gms) - NH', 'Basic description of Meat, Fish & Seafood 311', '13', 'Meat, Fish & Seafood', '25', 'Pork', '0', 0.00, 0.00, 532.40, 542.40, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:15', '2024-10-25 05:45:12'),
(1495, 'FMD182407', 'Mint (Bunch)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 244', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 35.00, 45.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:06:15', '2024-10-25 05:45:16'),
(1496, 'FMD174117', 'Prawn Loose 21/25 (1 kg)', 'Basic description of Meat, Fish & Seafood 229', '13', 'Meat, Fish & Seafood', '23', 'Seafood', '0', 0.00, 0.00, 1940.00, 1950.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:15', '2024-10-25 05:45:12'),
(1497, 'FMD315209', 'Banana Chips 50 gm Original', 'Basic description of Snacks & Dry Fruits 87', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 115.00, 125.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:15', '2024-10-25 05:45:14'),
(1498, 'FMD192289', 'Paprika Seasoning Powder (500 gm)', 'Basic description of Oil, Spice & Condiments 34', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 630.00, 640.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:16', '2024-10-25 05:45:13'),
(1499, 'FMD182409', 'Dry Ginger (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 246', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 125.00, 135.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:06:16', '2024-10-25 05:45:16'),
(1500, 'FMD182408', 'Dry Garlic (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 245', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 260.00, 270.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:06:16', '2024-10-25 05:45:16'),
(1501, 'FMD179601', 'India Gate Basmati Rice Classic 5kg', 'Basic description of Rice & Pulses 3', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1710.00, 1720.00, 'PCS', 10.00, 10.00, ' In00001', 'India Gate', '[Rack 8]', NULL, '2024-09-24 15:06:16', '2024-10-25 05:45:13'),
(1502, 'FMD182410', 'Onion (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 247', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 60.00, 70.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:06:16', '2024-10-25 05:45:16'),
(1503, 'FMD316945', 'Banana Chips - Hot & Chilly (50 gms) - Beyond Snack', 'Basic description of Snacks & Dry Fruits 88', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 115.00, 125.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:16', '2024-10-25 05:45:14'),
(1504, 'FMD182414', 'Lemon A Grade (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 251', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 270.00, 280.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:06:16', '2024-10-25 05:45:16'),
(1505, 'FMD178481', 'Almond Corn Flakes (1 pcs)', 'Basic description of Breakfast 129', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 330.00, 340.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:16', '2024-10-25 05:45:15'),
(1506, 'FMD179606', 'India Gate Brown Basmati Rice Active Health Jar 1kg', 'Basic description of Rice & Pulses 8', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, ' In00001', 'India Gate', '[Rack 8]', NULL, '2024-09-24 15:06:16', '2024-10-25 05:45:13'),
(1507, 'FMD178137', 'Pakchoy (Bunch) (200 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 272', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 40.00, 50.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:06:16', '2024-10-25 05:45:16'),
(1508, 'FMD178138', 'Beet Root (Half Kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 273', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 115.00, 125.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:06:17', '2024-10-25 05:45:16'),
(1509, 'FMD399365', 'Golden Crown Pineapple Slice', 'Basic description of Baking & Cooking 14', '3', 'Baking & Cooking', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 385.00, 395.00, 'PCS', 9.00, 9.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:06:17', '2024-10-25 05:45:16'),
(1510, 'FMD182413', 'Chilli Bullet (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 250', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 120.00, 130.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:06:17', '2024-10-25 05:45:16'),
(1511, 'FMD178134', 'Coriander (Bunch) (200gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 269', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 40.00, 50.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:06:17', '2024-10-25 05:45:16'),
(1512, 'FMD178146', 'Sweet Potatoes (Half Kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 281', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:06:17', '2024-10-25 05:45:16'),
(1513, 'FMD178135', 'Lettuce (Bunch) (150 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 270', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 65.00, 75.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:06:17', '2024-10-25 05:45:16'),
(1514, 'FMD203264', 'Muesli Amaranth (400 gms) - GAIA', 'Basic description of Breakfast 133', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 555.00, 565.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:17', '2024-10-25 05:45:15'),
(1515, 'FMD178114', 'Buff Mince (500 gms) - NH', 'Basic description of Meat, Fish & Seafood 312', '13', 'Meat, Fish & Seafood', '26', 'Buff', '0', 0.00, 0.00, 390.00, 400.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:17', '2024-10-25 05:45:12'),
(1516, 'FMD316947', 'Banana Chips - Salt & Black Pepper (50 gms) - Beyond Snack', 'Basic description of Snacks & Dry Fruits 90', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 115.00, 125.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:18', '2024-10-25 05:45:14'),
(1517, 'FMD189249', 'Avocado (0.740 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 282', '8', 'Fruits & Vegetables', '16', 'Fresh Avocados', '0', 0.00, 0.00, 494.00, 504.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:18', '2024-10-25 05:45:16'),
(1518, 'FMD203263', 'Muesli Strawberry (400 gms) - GAIA', 'Basic description of Breakfast 132', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 510.00, 520.00, 'PCS', 10.00, 10.00, ' GA00001', 'GAIA', '[Rack 3]', NULL, '2024-09-24 15:06:18', '2024-10-25 05:45:15'),
(1519, 'FMD215989', 'Byanjan Sunflower Oil (2 ltrs)', 'Basic description of Oil, Spice & Condiments 39', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 640.00, 650.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:18', '2024-10-25 05:45:13'),
(1520, 'FMD203265', 'Muesli Diet (1 kgs) - GAIA', 'Basic description of Breakfast 134', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 1075.00, 1085.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:18', '2024-10-25 05:45:15');
INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_description`, `category_id`, `category_name`, `subcategory_id`, `subcategory_name`, `delivery_target_days`, `discount`, `actual_price`, `sell_price`, `mr_price`, `unit_info`, `available_quantity`, `stock_quantity`, `brand_id`, `brand_name`, `product_location`, `primary_image`, `created_at`, `updated_at`) VALUES
(1521, 'FMD187310', 'Avocado (3 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 284', '8', 'Fruits & Vegetables', '16', 'Fresh Avocados', '0', 0.00, 0.00, 990.00, 1000.00, 'PCS', 0.00, 0.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:18', '2024-10-25 05:45:16'),
(1522, 'FMD215871', 'Sunehra Mineral Sugar  (1 kg)', 'Basic description of Baking & Cooking 15', '3', 'Baking & Cooking', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 255.00, 265.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:06:18', '2024-10-25 05:45:16'),
(1523, 'FMD199028', 'Apple (Mustang)  (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 293', '8', 'Fruits & Vegetables', '17', 'Fruits By Vendors', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:19', '2024-10-25 05:45:16'),
(1524, 'FMD192292', 'Tempura Flour (150 gm)', 'Basic description of Oil, Spice & Condiments 37', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 100.00, 110.00, 'PCS', 10.00, 10.00, ' Un00001', 'Uncle Barns', '[Rack 8]', NULL, '2024-09-24 15:06:19', '2024-10-25 05:45:13'),
(1525, 'FMD199020', 'Banana Local Small Size (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 287', '8', 'Fruits & Vegetables', '17', 'Fruits By Vendors', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:19', '2024-10-25 05:45:16'),
(1526, 'FMD179605', 'India Gate Basmati Rice Super Rozzana 5kg', 'Basic description of Rice & Pulses 7', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 870.00, 880.00, 'PCS', 10.00, 10.00, ' In00001', 'India Gate', '[Rack 8]', NULL, '2024-09-24 15:06:19', '2024-10-25 05:45:13'),
(1527, 'FMD199032', 'Red Kiwi Raw (1 pkt)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 297', '8', 'Fruits & Vegetables', '17', 'Fruits By Vendors', '0', 0.00, 0.00, 615.00, 625.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:19', '2024-10-25 05:45:16'),
(1528, 'FMD192291', 'Pepper & Garlic Tempura Flour (500 gm)', 'Basic description of Oil, Spice & Condiments 36', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 310.00, 320.00, 'PCS', 10.00, 10.00, ' Un00001', 'Uncle Barns', '[Rack 8]', NULL, '2024-09-24 15:06:19', '2024-10-25 05:45:13'),
(1529, 'FMD199029', 'Kiwi ( Chili ) (1 Kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 294', '8', 'Fruits & Vegetables', '17', 'Fruits By Vendors', '0', 0.00, 0.00, 615.00, 625.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:19', '2024-10-25 05:45:16'),
(1530, 'FMD203267', 'Muesli Strawberry (1 kgs) - GAIA', 'Basic description of Breakfast 136', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 1075.00, 1085.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:19', '2024-10-25 05:45:15'),
(1531, 'FMD203266', 'Muesli Real Fruit (1 kgs) - GAIA', 'Basic description of Breakfast 135', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 1115.00, 1125.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:19', '2024-10-25 05:45:15'),
(1532, 'FMD199036', 'Watermelon ( Around 3 kg )', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 301', '8', 'Fruits & Vegetables', '17', 'Fruits By Vendors', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:19', '2024-10-25 05:45:16'),
(1533, 'FMD199031', 'Pomegranate ( Anar ) Small size (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 296', '8', 'Fruits & Vegetables', '17', 'Fruits By Vendors', '0', 0.00, 0.00, 440.00, 450.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:20', '2024-10-25 05:45:16'),
(1534, 'FMD174224', 'Gaia Oats Original (500 gm)', 'Basic description of Breakfast 43', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 165.00, 175.00, 'PCS', 10.00, 10.00, ' GA00001', 'GAIA', '[Rack 3]', NULL, '2024-09-24 15:06:20', '2024-10-25 05:45:15'),
(1535, 'FMD215987', 'Byanjan Mustard Oil (5 ltrs)', 'Basic description of Oil, Spice & Condiments 38', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1775.00, 1785.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:20', '2024-10-25 05:45:13'),
(1536, 'FMD188989', 'Dry Onion - (1  Dhak)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 86', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:20', '2024-10-25 05:45:16'),
(1537, 'FMD188990', 'Potato - Normal - (1 Dhak)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 87', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 440.00, 450.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:20', '2024-10-25 05:45:16'),
(1538, 'FMD317372', 'Spinach', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 42', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:20', '2024-10-25 05:45:15'),
(1539, 'FMD334068', 'N&H Chicken Drumstick (460 gm)', 'Basic description of Meat, Fish & Seafood 153', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 404.00, 414.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:21', '2024-10-25 05:45:10'),
(1540, 'FMD266421', 'Fresh Corn (1 Kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 41', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 260.00, 270.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:21', '2024-10-25 05:45:15'),
(1541, 'FMD404108', 'Toast Ham 250Gm', 'Basic description of Meat, Fish & Seafood 290', '13', 'Meat, Fish & Seafood', '25', 'Pork', '0', 0.00, 0.00, 890.00, 900.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:21', '2024-10-25 05:45:12'),
(1542, 'FMD188991', 'Baby Potato (Per/kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 88', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:21', '2024-10-25 05:45:16'),
(1543, 'FMD173993', 'Bhanta (Eggplant) (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 89', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 45.00, 55.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:21', '2024-10-25 05:45:16'),
(1544, 'FMD215632', 'Britannia Good Day Butter 1000 gm', 'Basic description of Breakfast 58', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 350.00, 360.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:21', '2024-10-25 05:45:15'),
(1545, 'FMD173994', 'Bodi (Green Bean) - (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 90', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:21', '2024-10-25 05:45:16'),
(1546, 'FMD215635', 'Kellogg\'s Chocos 715 gms', 'Basic description of Breakfast 61', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 560.00, 570.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:21', '2024-10-25 05:45:15'),
(1547, 'FMD215634', 'Kellogg\'s Chocos 1.2 kg', 'Basic description of Breakfast 60', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 845.00, 855.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:21', '2024-10-25 05:45:15'),
(1548, 'FMD325651', 'N&H Chicken Drumsticks (520 gm)', 'Basic description of Meat, Fish & Seafood 130', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 458.00, 468.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:22', '2024-10-25 05:45:10'),
(1549, 'FMD174028', 'Hariyo Farsi (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 105', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:22', '2024-10-25 05:45:16'),
(1550, 'FMD216620', 'Kellogg\'s Cornflakes Honey and Almond (300 gm)', 'Basic description of Breakfast 63', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 330.00, 340.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:22', '2024-10-25 05:45:15'),
(1551, 'FMD175805', 'N&H Pork Ribs (1.73 kg)', 'Basic description of Meat, Fish & Seafood 298', '13', 'Meat, Fish & Seafood', '25', 'Pork', '0', 0.00, 0.00, 2585.00, 2595.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:22', '2024-10-25 05:45:12'),
(1552, 'FMD174029', 'Cabbage (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 106', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:23', '2024-10-25 05:45:16'),
(1553, 'FMD199201', 'Chocolate Cookies (Pkt)', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 9', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 2.00, 2.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:06:23', '2024-10-25 05:45:15'),
(1554, 'FMD174086', 'B/L Pork Cubes (500 gms) - NH', 'Basic description of Meat, Fish & Seafood 299', '13', 'Meat, Fish & Seafood', '25', 'Pork', '0', 0.00, 0.00, 690.00, 700.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:06:23', '2024-10-25 05:45:12'),
(1555, 'FMD311473', 'Weetabix Oatibix wholegrain oat cereal 600g', 'Basic description of Breakfast 68', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 790.00, 800.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:23', '2024-10-25 05:45:15'),
(1556, 'FMD320789', 'Gaia Muesli Real Fruits 400 gm (Bye one Get one Free)', 'Basic description of Breakfast 66', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 480.00, 490.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:23', '2024-10-25 05:45:15'),
(1557, 'FMD174031', 'Red Pumpkin (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 108', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 120.00, 130.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:23', '2024-10-25 05:45:16'),
(1558, 'FMD174034', 'Beetroot (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 111', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 115.00, 125.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:23', '2024-10-25 05:45:16'),
(1559, 'FMD174036', 'Tomato (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 113', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:24', '2024-10-25 05:45:16'),
(1560, 'FMD191067', 'Snapin Pasta Mix (25 gm)', 'Basic description of Oil, Spice & Condiments 26', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 185.00, 195.00, 'PCS', 10.00, 10.00, ' Sn00001', 'Snapin', '[Rack 7]', NULL, '2024-09-24 15:06:24', '2024-10-25 05:45:13'),
(1561, 'FMD194664', 'Basa Fish Fillet -  (1090 gm)', 'Basic description of Meat, Fish & Seafood 246', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 644.00, 654.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:24', '2024-10-25 05:45:12'),
(1562, 'FMD174169', 'Chicken Patty (500 gm)', 'Basic description of Ready to Cook 45', '19', 'Ready to Cook', '30', 'More on Ready to Cook', '0', 0.00, 0.00, 565.00, 575.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:24', '2024-10-25 05:45:13'),
(1563, 'FMD192049', 'Colored Capsicum (Red/ Green) (Half kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 233', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 375.00, 385.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:24', '2024-10-25 05:45:16'),
(1564, 'FMD174254', 'Cake Mix, Vanilla (500 gm)- American Garden', 'Basic description of Baking & Cooking 3', '3', 'Baking & Cooking', '2', 'Baking Mixes', '0', 0.00, 0.00, 350.00, 360.00, 'PCS', 10.00, 10.00, ' Am00001', 'American Garden', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:06:24', '2024-10-25 05:45:16'),
(1565, 'FMD174026', 'Kagati (Lemon) (Big Size) (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 119', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 160.00, 170.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:24', '2024-10-25 05:45:16'),
(1566, 'FMD174023', 'Pakeko Farsi (Raddish Pumpkin) (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 116', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 60.00, 70.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:24', '2024-10-25 05:45:16'),
(1567, 'FMD189613', 'Kellogg\'s Oats (450 gm) * 2 (With Jar Free)', 'Basic description of Breakfast 123', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 440.00, 450.00, 'PCS', 10.00, 10.00, ' Ke00001', 'Kelloggs', '[Rack 3]', NULL, '2024-09-24 15:06:24', '2024-10-25 05:45:15'),
(1568, 'FMD174032', 'Cucumber (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 109', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:25', '2024-10-25 05:45:16'),
(1569, 'FMD291881', 'Flexi Cooking Cream', 'Basic description of Baking & Cooking 13', '3', 'Baking & Cooking', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 455.00, 465.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:06:25', '2024-10-25 05:45:16'),
(1570, 'FMD182412', 'Asparagus (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 249', '8', 'Fruits & Vegetables', '15', 'Ozonated Vegetables', '0', 0.00, 0.00, 490.00, 500.00, 'PCS', 10.00, 10.00, ' Na00001', 'Nagro', '[Rack 4]', NULL, '2024-09-24 15:06:26', '2024-10-25 05:45:16'),
(1571, 'FMD174341', 'Nestlé NesPlus Breakfast Cereal - Crunchy Flakes with Corn & Oats (250 gm)', 'Basic description of Breakfast 122', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 166.00, 176.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 3]', NULL, '2024-09-24 15:06:26', '2024-10-25 05:45:15'),
(1572, 'FMD348119', 'N&H Whole Chicken (1.730 gm)', 'Basic description of Meat, Fish & Seafood 168', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1201.00, 1211.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:26', '2024-10-25 05:45:11'),
(1573, 'FMD316948', 'Banana Chips - Sour Cream Onion & Parsley (50 gms) - Beyond Snack', 'Basic description of Snacks & Dry Fruits 91', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 115.00, 125.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:26', '2024-10-25 05:45:14'),
(1574, 'FMD179599', 'India Gate 100% Quinoa 500g', 'Basic description of Rice & Pulses 1', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 350.00, 360.00, 'PCS', 10.00, 10.00, ' In00001', 'India Gate', '[Rack 8]', NULL, '2024-09-24 15:06:26', '2024-10-25 05:45:13'),
(1575, 'FMD384998', 'N&H Smokey Cheese Sausage Chicken 500Gm', 'Basic description of Meat, Fish & Seafood 191', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 690.00, 700.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:26', '2024-10-25 05:45:11'),
(1576, 'FMD290116', 'Britannia Tiger Crunch (27 gm)', 'Basic description of Cookies & Biscuits 1', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 0.00, 10.00, 'PCS', 10.00, 10.00, ' Br00001', 'Britannia', '[Rack 3]', NULL, '2024-09-24 15:06:26', '2024-10-25 05:45:15'),
(1577, 'FMD188994', 'Local Jeera Masino (1 kg)', 'Basic description of Rice & Pulses 12', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:26', '2024-10-25 05:45:13'),
(1578, 'FMD306140', 'Mcvities Hobnobs (300 gm) 2 pcs', 'Basic description of Cookies & Biscuits 3', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:27', '2024-10-25 05:45:15'),
(1579, 'FMD293419', 'NC Digestive (250 gm)', 'Basic description of Cookies & Biscuits 2', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 120.00, 130.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:27', '2024-10-25 05:45:15'),
(1580, 'FMD179607', 'India Gate Brown Basmati Rice Weight Watchers 1kg', 'Basic description of Rice & Pulses 9', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 206.00, 216.00, 'PCS', 10.00, 10.00, ' In00001', 'India Gate', '[Rack 8]', NULL, '2024-09-24 15:06:27', '2024-10-25 05:45:13'),
(1581, 'FMD221840', 'Ponds Superlight Gel Oil free Moisturizer 73g', 'Basic description of Personal Care 24', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 230.00, 240.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:27', '2024-10-25 05:45:13'),
(1582, 'FMD194070', 'AVO Guacamole (2 packs of 227g  )', 'Made from premium Hass avocados, AVO Guacamole is 100% natural and preservative free. Now, you can enjoy the authentic flavor of pure Mexican guacamole.   Add it to your salad, spread it on your multigrain bread, create the perfect veggie dip, or simply s', '9', 'Healthy Choice', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 2090.00, 2100.00, 'PCS', 10.00, 10.00, ' AV00001', 'AVO', '[Rack 4]', NULL, '2024-09-24 15:06:27', '2024-10-25 05:45:16'),
(1583, 'FMD188340', 'Almond Milk (300 ml)', 'Made from premium Hass avocados, AVO Guacamole is 100% natural and preservative free. Now, you can enjoy the authentic flavor of pure Mexican guacamole.   Add it to your salad, spread it on your multigrain bread, create the perfect veggie dip, or simply s', '9', 'Healthy Choice', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:27', '2024-10-25 05:45:16'),
(1584, 'FMD299210', 'Floor Cleaner - Citrus (1 ltr + 500 ml) - Mr. Muscle', 'Basic description of Household 41', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 246.00, 256.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:28', '2024-10-25 05:45:17'),
(1585, 'FMD299208', 'FIK DN (625 ml) - Baygon Max', 'Basic description of Household 39', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 412.00, 422.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:28', '2024-10-25 05:45:16'),
(1586, 'FMD299230', 'Touch & Fresh Rfl - Lavender (12 ml) - Glade', 'Basic description of Household 61', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 142.00, 152.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:28', '2024-10-25 05:45:17'),
(1587, 'FMD299226', 'Touch & Fresh Combi - Floral Perfection (12 ml) - Glade', 'Basic description of Household 57', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 196.00, 206.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:28', '2024-10-25 05:45:17'),
(1588, 'FMD299217', 'Liquid Shoe Polish - Black (75 ml) - Kiwi', 'Basic description of Household 48', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 152.00, 162.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:28', '2024-10-25 05:45:17'),
(1589, 'FMD174092', 'Medium Prawn (500 gm)', 'Basic description of Meat, Fish & Seafood 232', '13', 'Meat, Fish & Seafood', '23', 'Seafood', '0', 0.00, 0.00, 990.00, 1000.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:06:28', '2024-10-25 05:45:12'),
(1590, 'FMD299228', 'Touch & Fresh Combi - Wild Lavender (12 ml) - Glade', 'Basic description of Household 59', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 196.00, 206.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:29', '2024-10-25 05:45:17'),
(1591, 'FMD226184', 'Doritos sweet chilli pepper 180g', 'Basic description of Snacks & Dry Fruits 101', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 889.00, 899.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:06:29', '2024-10-25 05:45:14'),
(1592, 'FMD215231', 'Ariel Matic Cannister Top Load 3kg', 'Basic description of Household 83', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1539.00, 1549.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:29', '2024-10-25 05:45:17'),
(1593, 'FMD174441', 'Meizan 2 ltrs', 'Basic description of Oil, Spice & Condiments 47', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1040.00, 1050.00, 'PCS', 10.00, 10.00, ' Me00001', 'Meizan', '[Rack 8]', NULL, '2024-09-24 15:06:29', '2024-10-25 05:45:13'),
(1594, 'FMD181552', 'N&H Basa Fish Fillet (1.05 kg)', 'Basic description of Meat, Fish & Seafood 236', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 620.00, 630.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:29', '2024-10-25 05:45:12'),
(1595, 'FMD174140', 'VCSB Sausage Regular Buff', 'Basic description of Meat, Fish & Seafood 320', '13', 'Meat, Fish & Seafood', '26', 'Buff', '0', 0.00, 0.00, 390.00, 400.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:29', '2024-10-25 05:45:12'),
(1596, 'FMD221859', 'Cetaphil Moisturizing Lotion 591 ml', 'Basic description of Personal Care 29', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 2650.00, 2660.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:29', '2024-10-25 05:45:13'),
(1597, 'FMD176565', 'Mr Muscle Glass Cleaner (500 ml)', 'Basic description of Household 96', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 135.00, 145.00, 'PCS', 10.00, 10.00, ' Mr00001', 'Mr. Muscle', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:30', '2024-10-25 05:45:17'),
(1598, 'FMD174197', 'Mcvities (India) 5 Grain (150 gm)', 'Basic description of Cookies & Biscuits 41', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 40.00, 50.00, 'PCS', 10.00, 10.00, ' Mc00001', 'Mcvities (India)', '[Rack 3]', NULL, '2024-09-24 15:06:30', '2024-10-25 05:45:15'),
(1599, 'FMD174368', 'Nestlé Lactogen 3 Follow-Up Formula Powder (After 12 months) (400 gm)', 'Basic description of Kids & Baby Foods 9', '11', 'Kids & Baby Foods', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 671.00, 681.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:30', '2024-10-25 05:45:17'),
(1600, 'FMD257343', 'Nestle Ceregrow (300 gm)', 'Basic description of Kids & Baby Foods 19', '11', 'Kids & Baby Foods', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 532.00, 542.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:30', '2024-10-25 05:45:17'),
(1601, 'FMD174250', 'Mcvities (UK) Hobnobs (300 gm)', 'Basic description of Cookies & Biscuits 33', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 260.00, 270.00, 'PCS', 10.00, 10.00, ' Mc00002', 'Mcvities (UK)', '[Rack 3]', NULL, '2024-09-24 15:06:30', '2024-10-25 05:45:15'),
(1602, 'FMD205525', 'Garden Honey (1 kg)', 'Local Produces basic description 3', '12', 'Local Produces', '18', 'Honey', '0', 0.00, 0.00, 680.00, 690.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:30', '2024-10-25 05:45:17'),
(1603, 'FMD291774', 'Frooti Mango Drink(200ml) - Parle Agro (Pack of 5)', 'Basic description of Beverages 68', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:30', '2024-10-25 05:45:13'),
(1604, 'FMD176512', 'Premium Tissue 2 Ply 200 pulls', 'Basic description of Household 94', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 160.00, 170.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:31', '2024-10-25 05:45:17'),
(1605, 'FMD202898', 'Chiuri Honey  (450 gm)', 'Local Produces basic description 5', '12', 'Local Produces', '18', 'Honey', '0', 0.00, 0.00, 540.00, 550.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:31', '2024-10-25 05:45:17'),
(1606, 'FMD174121', 'Palpa (Natural) Filter Grind - (1000 gm)- Kathmandu Coffee', 'Basic description of Beverages 5', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 2490.00, 2500.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:31', '2024-10-25 05:45:17'),
(1607, 'FMD174296', 'Classic Espresso Blend 250 gm Filter Grind (Exotic/ Medium Roast)-  (Premium / Export Quality)', 'Basic description of Beverages 8', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 690.00, 700.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:31', '2024-10-25 05:45:17'),
(1608, 'FMD199212', 'Mocha Swiss Roll (Large)', 'Bakery products are made from flour, offering carbohydrates, flavor, and energy 20', '2', 'Bakery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 200.00, 210.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 1, Rack 2]', NULL, '2024-09-24 15:06:31', '2024-10-25 05:45:15'),
(1609, 'FMD215860', 'Dabur Honey (500 gm)', 'Local Produces basic description 6', '12', 'Local Produces', '18', 'Honey', '0', 0.00, 0.00, 365.00, 375.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:32', '2024-10-25 05:45:17'),
(1610, 'FMD174440', 'Meizan 5 ltrs', 'Basic description of Oil, Spice & Condiments 46', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1990.00, 2000.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:32', '2024-10-25 05:45:13'),
(1611, 'FMD176511', 'Premium Tissue 2 Ply 100 pulls', 'Basic description of Household 93', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:32', '2024-10-25 05:45:17'),
(1612, 'FMD230997', 'WOW Caramel Pop Corn (Family Pack)', 'Basic description of Snacks & Dry Fruits 103', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, ' WO00001', 'WOW', '[Rack 9]', NULL, '2024-09-24 15:06:32', '2024-10-25 05:45:14'),
(1613, 'FMD176564', 'Mr Muscle Floor Cleaner (500 ml)', 'Basic description of Household 95', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 155.00, 165.00, 'PCS', 10.00, 10.00, ' Mr00001', 'Mr. Muscle', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:32', '2024-10-25 05:45:17'),
(1614, 'FMD174307', 'Oxford Cheese Puff Sandwich', 'Basic description of Cookies & Biscuits 35', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 265.00, 275.00, 'PCS', 10.00, 10.00, ' Ox00001', 'Oxford', '[Rack 3]', NULL, '2024-09-24 15:06:33', '2024-10-25 05:45:15'),
(1615, 'FMD176566', 'Mr Muscle Kitchen Cleaner (150 ml)', 'Basic description of Household 97', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 214.00, 224.00, 'PCS', 10.00, 10.00, ' Mr00001', 'Mr. Muscle', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:33', '2024-10-25 05:45:17'),
(1616, 'FMD177281', 'Ariel - 3 kg (Bucket Free)', 'Basic description of Household 99', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1037.00, 1047.00, 'PCS', 10.00, 10.00, ' Ar00002', 'Ariel', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:33', '2024-10-25 05:45:17'),
(1617, 'FMD174367', 'Nestlé Lactogen 2 Follow-Up Formula Powder (After 6 months) (400 gm)', 'Basic description of Kids & Baby Foods 8', '11', 'Kids & Baby Foods', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 702.00, 712.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:33', '2024-10-25 05:45:17'),
(1618, 'FMD174228', 'Complan Chocolate (500 gm)', 'Basic description of Kids & Baby Foods 1', '11', 'Kids & Baby Foods', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 460.00, 470.00, 'PCS', 10.00, 10.00, ' Co00002', 'Complan', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:33', '2024-10-25 05:45:17'),
(1619, 'FMD174232', 'Complan Natural (500 gm) Jar', 'Basic description of Kids & Baby Foods 5', '11', 'Kids & Baby Foods', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 440.00, 450.00, 'PCS', 10.00, 10.00, ' Co00002', 'Complan', '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:33', '2024-10-25 05:45:17'),
(1620, 'FMD174199', 'Mcvities (India) Cheese Cracker (120 gm)', 'Basic description of Cookies & Biscuits 43', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 40.00, 50.00, 'PCS', 10.00, 10.00, ' Mc00001', 'Mcvities (India)', '[Rack 3]', NULL, '2024-09-24 15:06:33', '2024-10-25 05:45:15'),
(1621, 'FMD174201', 'Digestive (960 gms) - Mcvities (India)', 'Basic description of Cookies & Biscuits 45', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 440.00, 450.00, 'PCS', 10.00, 10.00, ' Mc00001', 'Mcvities (India)', '[Rack 3]', NULL, '2024-09-24 15:06:34', '2024-10-25 05:45:15'),
(1622, 'FMD316950', 'Dabur Honey (1kg)', 'Local Produces basic description 14', '12', 'Local Produces', '18', 'Honey', '0', 0.00, 0.00, 755.00, 765.00, 'PCS', 0.00, 0.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:34', '2024-10-25 05:45:17'),
(1623, 'FMD174061', 'Raw Honey (1 kg) (Tori)', 'Local Produces basic description 2', '12', 'Local Produces', '18', 'Honey', '0', 0.00, 0.00, 990.00, 1000.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:34', '2024-10-25 05:45:17'),
(1624, 'FMD201025', 'Chiuri Honey  (1 kg)', 'Local Produces basic description 4', '12', 'Local Produces', '18', 'Honey', '0', 0.00, 0.00, 1080.00, 1090.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:34', '2024-10-25 05:45:17'),
(1625, 'FMD328519', 'Almond and Honey', 'Local Produces basic description 11', '12', 'Local Produces', '18', 'Honey', '0', 0.00, 0.00, 355.00, 365.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:34', '2024-10-25 05:45:17'),
(1626, 'FMD174088', 'N&H Trout Fish (1 kg)', 'Basic description of Meat, Fish & Seafood 254', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 1890.00, 1900.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:06:34', '2024-10-25 05:45:12'),
(1627, 'FMD174205', 'Mcvities (India)Digestive Sugar Free (300 gm)', 'Basic description of Cookies & Biscuits 49', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, ' Mc00001', 'Mcvities (India)', '[Rack 3]', NULL, '2024-09-24 15:06:35', '2024-10-25 05:45:15'),
(1628, 'FMD174203', 'Digestive (500 gm) - Mcvities (India)', 'Basic description of Cookies & Biscuits 47', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 230.00, 240.00, 'PCS', 10.00, 10.00, ' Mc00001', 'Mcvities (India)', '[Rack 3]', NULL, '2024-09-24 15:06:35', '2024-10-25 05:45:15'),
(1629, 'FMD216618', 'Mix Daal (1 kg)', 'Basic description of Local Produces 2', '12', 'Local Produces', '19', 'Legume', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:35', '2024-10-25 05:45:17'),
(1630, 'FMD174087', 'Basa Fish Fillet (1 kg) - NH', 'Basic description of Meat, Fish & Seafood 253', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 590.00, 600.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:06:35', '2024-10-25 05:45:12'),
(1631, 'FMD216619', 'Rahar Daal (1 kg)', 'Basic description of Local Produces 3', '12', 'Local Produces', '19', 'Legume', '0', 0.00, 0.00, 215.00, 225.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:35', '2024-10-25 05:45:17'),
(1632, 'FMD174377', 'Dhaniya Seeds (500 gm)', 'Basic description of Oil, Spice & Condiments 52', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 165.00, 175.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:35', '2024-10-25 05:45:13'),
(1633, 'FMD184189', 'Mass Ko Daal (Kalo Daal)- 1 kg', 'Basic description of Local Produces 5', '12', 'Local Produces', '19', 'Legume', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:35', '2024-10-25 05:45:17'),
(1634, 'FMD326087', 'N&H Chicken Wings (940 gm)', 'Basic description of Meat, Fish & Seafood 145', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 948.00, 958.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:36', '2024-10-25 05:45:10'),
(1635, 'FMD188317', 'Jumli Beans Daal (1 kg)', 'Basic description of Local Produces 4', '12', 'Local Produces', '19', 'Legume', '0', 0.00, 0.00, 275.00, 285.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:36', '2024-10-25 05:45:17'),
(1636, 'FMD231000', 'WOW Peri Peri Pop Corn (Family Pack)', 'Basic description of Snacks & Dry Fruits 106', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, ' WO00001', 'WOW', '[Rack 9]', NULL, '2024-09-24 15:06:36', '2024-10-25 05:45:14'),
(1637, 'FMD174297', 'Classic Espresso Blend 250 gm Whole Beans (Exotic/ Medium Roast)-  (Premium / Export Quality)', 'Basic description of Beverages 9', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 690.00, 700.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:36', '2024-10-25 05:45:17'),
(1638, 'FMD174347', 'NESCAFE Hazelnut Coffee Cold Coffee, (180 ml) Tetra Pack', 'Basic description of Beverages 82', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 80.00, 90.00, 'PCS', 10.00, 10.00, ' Ne00001', 'Nescafe', '[Rack 3]', NULL, '2024-09-24 15:06:36', '2024-10-25 05:45:14'),
(1639, 'FMD174375', 'Methi (500gm)', 'Basic description of Oil, Spice & Condiments 50', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 85.00, 95.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:36', '2024-10-25 05:45:13'),
(1640, 'FMD177413', 'Bhatmas (1 kg )', 'Basic description of Local Produces 6', '12', 'Local Produces', '19', 'Legume', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:36', '2024-10-25 05:45:17'),
(1641, 'FMD189006', '???? ?????, ( Chitwan)', 'Basic description of Rice & Pulses 24', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 220.00, 230.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:37', '2024-10-25 05:45:13'),
(1642, 'FMD174376', 'Jeera Seeds (500gm)', 'Basic description of Oil, Spice & Condiments 51', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 640.00, 650.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:37', '2024-10-25 05:45:13'),
(1643, 'FMD176611', 'Whole Buff', 'Basic description of Meat, Fish & Seafood 326', '13', 'Meat, Fish & Seafood', '26', 'Buff', '0', 0.00, 0.00, 515.00, 525.00, 'PCS', 10.00, 10.00, ' Ad00001', 'Adhunik', '[Rack 7]', NULL, '2024-09-24 15:06:37', '2024-10-25 05:45:12'),
(1644, 'FMD221814', 'Closeup Mouthwash Nature Boost 500 ml', 'Basic description of Personal Care 32', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 358.00, 368.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:37', '2024-10-25 05:45:13'),
(1645, 'FMD177548', 'Meidan Soda Crackers (450 gm)', 'Basic description of Cookies & Biscuits 51', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:37', '2024-10-25 05:45:15'),
(1646, 'FMD221815', 'Closeup Mouthwash Red Hot 250 ml', 'Basic description of Personal Care 33', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:38', '2024-10-25 05:45:13'),
(1647, 'FMD342388', 'Khoste Mung Daal (1 kg)', 'Basic description of Local Produces 12', '12', 'Local Produces', '19', 'Legume', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:38', '2024-10-25 05:45:17'),
(1648, 'FMD226751', 'Kwati (500 gm)', 'Basic description of Local Produces 14', '12', 'Local Produces', '19', 'Legume', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:38', '2024-10-25 05:45:17'),
(1649, 'FMD316949', 'Musuro Daal (Red) 1 kg', 'Basic description of Local Produces 13', '12', 'Local Produces', '19', 'Legume', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:38', '2024-10-25 05:45:17'),
(1650, 'FMD176402', 'Mcvities Rich Tea (300 gm)', 'Basic description of Cookies & Biscuits 53', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 200.00, 210.00, 'PCS', 10.00, 10.00, ' Mc00001', 'Mcvities (India)', '[Rack 3]', NULL, '2024-09-24 15:06:38', '2024-10-25 05:45:15'),
(1651, 'FMD180344', 'Dettol Liquid Soap (200 ml +175 ml)', 'Basic description of Personal Care 37', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 134.00, 144.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:38', '2024-10-25 05:45:13'),
(1652, 'FMD176403', 'Munchys Veg Crackers (390 gm)', 'Basic description of Cookies & Biscuits 54', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 265.00, 275.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:39', '2024-10-25 05:45:15'),
(1653, 'FMD177549', 'Meidan Sugar Free Crackers (450 gm)', 'Basic description of Cookies & Biscuits 52', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:39', '2024-10-25 05:45:15'),
(1654, 'FMD174189', 'Gundruk (100 gm)', 'Basic description of Local Produces 32', '12', 'Local Produces', '21', 'More Local Products', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:39', '2024-10-25 05:45:17'),
(1655, 'FMD406968', 'Mango Juice (1 ltr) - Real', 'Basic description of Beverages 44', '4', 'Beverages', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 280.00, 290.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:39', '2024-10-25 05:45:12'),
(1656, 'FMD217019', 'Gaia Infusion Camomile+ 25\'s', 'Basic description of Beverages 56', '4', 'Beverages', '5', 'Tea', '0', 0.00, 0.00, 350.00, 360.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:39', '2024-10-25 05:45:13'),
(1657, 'FMD179952', 'Marsi Rice', 'Basic description of Local Produces 39', '12', 'Local Produces', '21', 'More Local Products', '0', 0.00, 0.00, 325.00, 335.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:39', '2024-10-25 05:45:17'),
(1658, 'FMD326599', 'Suji Rusk (235 gm)', 'Basic description of Local Produces 40', '12', 'Local Produces', '21', 'More Local Products', '0', 0.00, 0.00, 130.00, 140.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:40', '2024-10-25 05:45:17'),
(1659, 'FMD342461', 'Buck Wheat Flour (1 kg)', 'Basic description of Local Produces 41', '12', 'Local Produces', '21', 'More Local Products', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:40', '2024-10-25 05:45:17'),
(1660, 'FMD342462', 'Jumli Wheat Flour (1 kg)', 'Basic description of Local Produces 42', '12', 'Local Produces', '21', 'More Local Products', '0', 0.00, 0.00, 140.00, 150.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:40', '2024-10-25 05:45:17'),
(1661, 'FMD174301', 'Italian Roast 250 gm Whole Beans (Extra Bold/ Dark Roast)-  (Premium / Export Quality)', 'Basic description of Beverages 13', '4', 'Beverages', '4', 'Coffee', '0', 0.00, 0.00, 690.00, 700.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:40', '2024-10-25 05:45:17'),
(1662, 'FMD174072', 'N&H B/L Chicken Skin-On  (1 kg)', 'Basic description of Meat, Fish & Seafood 2', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 940.00, 950.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:06:40', '2024-10-25 05:45:17'),
(1663, 'FMD174071', 'Local Chicken Vaale (1 kg)', 'Basic description of Meat, Fish & Seafood 1', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1480.00, 1490.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:40', '2024-10-25 05:45:17'),
(1664, 'FMD174074', 'N&H Chicken Wings Full/ Kg', 'Basic description of Meat, Fish & Seafood 4', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 1010.00, 1020.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:06:41', '2024-10-25 05:45:17'),
(1665, 'FMD174084', 'N&H B/F Chicken Sausage (Green Chilly) (500 gms)', 'Basic description of Meat, Fish & Seafood 7', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 565.00, 575.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:06:41', '2024-10-25 05:45:17'),
(1666, 'FMD174320', 'Knorr Sweet Corn Veg (45 gm)', 'Basic description of Soup, Sauce & Seasonings 23', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 38.00, 48.00, 'PCS', 10.00, 10.00, ' Kn00001', 'Knorr', '[Rack 9]', NULL, '2024-09-24 15:06:41', '2024-10-25 05:45:14'),
(1667, 'FMD180346', 'Dettol Sanitizer (500 ml)', 'Basic description of Personal Care 39', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 390.00, 400.00, 'PCS', 10.00, 10.00, ' De00001', 'Dettol', '[Rack 8]', NULL, '2024-09-24 15:06:41', '2024-10-25 05:45:13'),
(1668, 'FMD174195', 'Roasted Flax Seed Powder (100 gm)', 'Basic description of Soup, Sauce & Seasonings 19', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 65.00, 75.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:06:41', '2024-10-25 05:45:14'),
(1669, 'FMD174317', 'Knorr Mushroom (48 gm)', 'Basic description of Soup, Sauce & Seasonings 20', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 38.00, 48.00, 'PCS', 10.00, 10.00, ' Kn00001', 'Knorr', '[Rack 9]', NULL, '2024-09-24 15:06:41', '2024-10-25 05:45:14'),
(1670, 'FMD189029', '??????? ???? ( Bazura ) (Per Poka) (50 gm, around)', 'Basic description of Pure Organic Items 8', '18', 'Pure Organic Items', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 240.00, 250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:41', '2024-10-25 05:45:13'),
(1671, 'FMD174332', 'Kissan Sweet & Spicy (500 gm)', 'Basic description of Soup, Sauce & Seasonings 34', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 158.00, 168.00, 'PCS', 10.00, 10.00, ' Ki00001', 'Kissan', '[Rack 9]', NULL, '2024-09-24 15:06:41', '2024-10-25 05:45:14'),
(1672, 'FMD202098', 'Maggi Ketchup (1 kg)', 'Basic description of Soup, Sauce & Seasonings 45', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 420.00, 430.00, 'PCS', 10.00, 10.00, ' Ma00001', 'Maggi', '[Rack 9]', NULL, '2024-09-24 15:06:42', '2024-10-25 05:45:14'),
(1673, 'FMD174319', 'Knorr  Sweet Corn Chicken (45 gm)', 'Basic description of Soup, Sauce & Seasonings 22', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 38.00, 48.00, 'PCS', 10.00, 10.00, ' Kn00001', 'Knorr', '[Rack 9]', NULL, '2024-09-24 15:06:42', '2024-10-25 05:45:14'),
(1674, 'FMD197056', 'Chicken Whole Leg  (625 gm)', 'Basic description of Meat, Fish & Seafood 117', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 396.00, 406.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:42', '2024-10-25 05:45:10'),
(1675, 'FMD174284', 'Tabasco Sauce (60 ml)', 'Basic description of Soup, Sauce & Seasonings 36', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 10.00, 10.00, ' Ta00001', 'Tabasco', '[Rack 9]', NULL, '2024-09-24 15:06:42', '2024-10-25 05:45:14'),
(1676, 'FMD174331', 'Kissan Fresh Tomato (1 kg)', 'Basic description of Soup, Sauce & Seasonings 33', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 214.00, 224.00, 'PCS', 10.00, 10.00, ' Ki00001', 'Kissan', '[Rack 9]', NULL, '2024-09-24 15:06:42', '2024-10-25 05:45:14'),
(1677, 'FMD176388', 'Chabaa Pomegranate Juice  (230 ml)', 'Basic description of Beverages 87', '4', 'Beverages', '6', 'Ready to Drink', '0', 0.00, 0.00, 70.00, 80.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:42', '2024-10-25 05:45:14'),
(1678, 'FMD174280', 'Kikkoman Soy Sauce (1 ltr)', 'Basic description of Soup, Sauce & Seasonings 39', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 820.00, 830.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:06:42', '2024-10-25 05:45:14'),
(1679, 'FMD174285', 'Thai Oyster Sauce  (600 ml)', 'Basic description of Soup, Sauce & Seasonings 37', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 640.00, 650.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 9]', NULL, '2024-09-24 15:06:42', '2024-10-25 05:45:14'),
(1680, 'FMD305540', 'India Gate Basmati Rice (1 kg)', 'Basic description of Rice & Pulses 52', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 270.00, 280.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:42', '2024-10-25 05:45:13'),
(1681, 'FMD174281', 'Safa Tomato Paste (70 gm)', 'Basic description of Soup, Sauce & Seasonings 40', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 60.00, 70.00, 'PCS', 10.00, 10.00, ' Sa00003', 'Safa', '[Rack 9]', NULL, '2024-09-24 15:06:43', '2024-10-25 05:45:14'),
(1682, 'FMD174286', 'Woh Hup Premium Light Soy Sauce (640 ml)', 'Basic description of Soup, Sauce & Seasonings 38', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 365.00, 375.00, 'PCS', 10.00, 10.00, ' WO00002', 'Woh Hup', '[Rack 9]', NULL, '2024-09-24 15:06:43', '2024-10-25 05:45:14'),
(1683, 'FMD174270', 'Fragata Nacho Sliced Jalapenos Hot Pepper (350 gm)', 'Basic description of Soup, Sauce & Seasonings 42', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 350.00, 360.00, 'PCS', 10.00, 10.00, ' Fr00001', 'Fragata', '[Rack 9]', NULL, '2024-09-24 15:06:43', '2024-10-25 05:45:14'),
(1684, 'FMD293284', 'Papaya (1.8 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 37', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 305.00, 315.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:43', '2024-10-25 05:45:15'),
(1685, 'FMD215863', 'Cadbury 5 Star (40 gm)', 'Basic description of Sweets & Confectionery 17', '24', 'Sweets & Confectionery', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 102.00, 112.00, 'PCS', 10.00, 10.00, ' Ne00003', 'Nestle', '[Rack 9]', NULL, '2024-09-24 15:06:43', '2024-10-25 05:45:14');
INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_description`, `category_id`, `category_name`, `subcategory_id`, `subcategory_name`, `delivery_target_days`, `discount`, `actual_price`, `sell_price`, `mr_price`, `unit_info`, `available_quantity`, `stock_quantity`, `brand_id`, `brand_name`, `product_location`, `primary_image`, `created_at`, `updated_at`) VALUES
(1686, 'FMD342391', 'Carp Fish (800 gm)', 'Basic description of Meat, Fish & Seafood 270', '13', 'Meat, Fish & Seafood', '24', 'Fish', '0', 0.00, 0.00, 640.00, 650.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:44', '2024-10-25 05:45:12'),
(1687, 'FMD205524', 'Strawberry Fresh (300 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 33', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 290.00, 300.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:44', '2024-10-25 05:45:15'),
(1688, 'FMD254489', 'Machhe Khursani (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 40', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 65.00, 75.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:44', '2024-10-25 05:45:15'),
(1689, 'FMD245288', 'Wellness Frozen Strawberry (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 39', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 590.00, 600.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:44', '2024-10-25 05:45:15'),
(1690, 'FMD174222', 'Gaia Crunchy Muesli Real Fruit (400 gm)', 'Basic description of Breakfast 41', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 185.00, 195.00, 'PCS', 10.00, 10.00, ' GA00001', 'GAIA', '[Rack 3]', NULL, '2024-09-24 15:06:44', '2024-10-25 05:45:15'),
(1691, 'FMD293285', 'Watermelon (3.4 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 38', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 415.00, 425.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:44', '2024-10-25 05:45:15'),
(1692, 'FMD298278', 'N&H Chicken Legs (590 gm)', 'Basic description of Meat, Fish & Seafood 226', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 462.00, 472.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:44', '2024-10-25 05:45:12'),
(1693, 'FMD174221', 'Gaia Crunchy Muesli Nutty Delight (400 gm)', 'Basic description of Breakfast 40', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 185.00, 195.00, 'PCS', 10.00, 10.00, ' GA00001', 'GAIA', '[Rack 3]', NULL, '2024-09-24 15:06:44', '2024-10-25 05:45:15'),
(1694, 'FMD215636', 'Kellogg\'s Oats Refill 900 gms', 'Basic description of Breakfast 62', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 440.00, 450.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:44', '2024-10-25 05:45:15'),
(1695, 'FMD174047', 'Button Mushroom (200 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 104', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 130.00, 140.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:45', '2024-10-25 05:45:16'),
(1696, 'FMD176499', 'Pintola Peanut Butter Dark Chocolate Crunchy (350 gm)', 'Basic description of Breakfast 39', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 275.00, 285.00, 'PCS', 10.00, 10.00, ' Pi00001', 'Pintola', '[Rack 3]', NULL, '2024-09-24 15:06:45', '2024-10-25 05:45:15'),
(1697, 'FMD176498', 'Pintola Peanut Butter Dark Chocolate Creamy (350 gm)', 'Basic description of Breakfast 38', '5', 'Breakfast', '9', 'Spreads', '0', 0.00, 0.00, 275.00, 285.00, 'PCS', 10.00, 10.00, ' Pi00001', 'Pintola', '[Rack 3]', NULL, '2024-09-24 15:06:45', '2024-10-25 05:45:15'),
(1698, 'FMD215633', 'Britannia Milk Rusk 620 gm', 'Basic description of Breakfast 59', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 360.00, 370.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:45', '2024-10-25 05:45:15'),
(1699, 'FMD176614', 'ADH Mo:Mo (20 pcs)', 'Basic description of Ready to Cook 33', '19', 'Ready to Cook', '29', 'Momo', '0', 0.00, 0.00, 160.00, 170.00, 'PCS', 10.00, 10.00, ' Ad00001', 'Adhunik', '[Rack 8]', NULL, '2024-09-24 15:06:45', '2024-10-25 05:45:13'),
(1700, 'FMD174030', 'Green Beans (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 107', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:45', '2024-10-25 05:45:16'),
(1701, 'FMD320787', 'Gaia Muesli Diet 1 kg (Bye one Get One Free)', 'Basic description of Breakfast 64', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 950.00, 960.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:45', '2024-10-25 05:45:15'),
(1702, 'FMD174033', 'Green Pumpkin (1 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 110', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:45', '2024-10-25 05:45:16'),
(1703, 'FMD174253', 'Cake Mix, Chocolate (500 gm)- American Garden', 'Basic description of Baking & Cooking 2', '3', 'Baking & Cooking', '2', 'Baking Mixes', '0', 0.00, 0.00, 350.00, 360.00, 'PCS', 10.00, 10.00, ' Am00001', 'American Garden', '[Rack 1, Rack 2]', NULL, '2024-09-24 15:06:45', '2024-10-25 05:45:16'),
(1704, 'FMD311472', 'Weetabix Bran flakes 500g', 'Basic description of Breakfast 67', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 590.00, 600.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 3]', NULL, '2024-09-24 15:06:46', '2024-10-25 05:45:15'),
(1705, 'FMD174024', 'Round Mushroom (Button ) (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 117', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 265.00, 275.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:46', '2024-10-25 05:45:16'),
(1706, 'FMD191066', 'Snapin Oregano (20 gm)', 'Basic description of Oil, Spice & Condiments 25', '14', 'Oil, Spice & Condiments', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 185.00, 195.00, 'PCS', 10.00, 10.00, ' Sn00001', 'Snapin', '[Rack 7]', NULL, '2024-09-24 15:06:46', '2024-10-25 05:45:13'),
(1707, 'FMD279678', 'Kellogg\'s Fruits and Nuts Seed Muesli', 'Basic description of Breakfast 85', '5', 'Breakfast', '10', 'Cereals', '0', 0.00, 0.00, 1189.00, 1199.00, 'PCS', 10.00, 10.00, ' Ke00001', 'Kelloggs', '[Rack 3]', NULL, '2024-09-24 15:06:46', '2024-10-25 05:45:15'),
(1708, 'FMD174022', 'Flat Mushroom (Oyster) (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 115', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:46', '2024-10-25 05:45:16'),
(1709, 'FMD174035', 'Carrot (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 112', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 85.00, 95.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:46', '2024-10-25 05:45:16'),
(1710, 'FMD180394', 'Mum_s Quinoa 400g', 'Made from premium Hass avocados, AVO Guacamole is 100% natural and preservative free. Now, you can enjoy the authentic flavor of pure Mexican guacamole.   Add it to your salad, spread it on your multigrain bread, create the perfect veggie dip, or simply s', '9', 'Healthy Choice', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 365.00, 375.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:47', '2024-10-25 05:45:16'),
(1711, 'FMD174025', 'Chukandar (Beet Root ) (500 gm)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 118', '8', 'Fruits & Vegetables', '13', 'Regular Vegetables', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:47', '2024-10-25 05:45:16'),
(1712, 'FMD183381', 'Mixed Pack (500 gms)- Blissball', 'Made from premium Hass avocados, AVO Guacamole is 100% natural and preservative free. Now, you can enjoy the authentic flavor of pure Mexican guacamole.   Add it to your salad, spread it on your multigrain bread, create the perfect veggie dip, or simply s', '9', 'Healthy Choice', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 1880.00, 1890.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:47', '2024-10-25 05:45:16'),
(1713, 'FMD176609', 'Buff Sausage (500 gm)', 'Basic description of Meat, Fish & Seafood 324', '13', 'Meat, Fish & Seafood', '26', 'Buff', '0', 0.00, 0.00, 465.00, 475.00, 'PCS', 10.00, 10.00, ' Ad00001', 'Adhunik', '[Rack 7]', NULL, '2024-09-24 15:06:47', '2024-10-25 05:45:12'),
(1714, 'FMD189004', '?????  ???( Chitwan)', 'Basic description of Rice & Pulses 22', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 250.00, 260.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:47', '2024-10-25 05:45:13'),
(1715, 'FMD299206', 'Dranex (50 gms) - Kiwi', 'Basic description of Household 37', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 41.00, 51.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:47', '2024-10-25 05:45:16'),
(1716, 'FMD221858', 'Cetaphil Moisturizing Cream 250g', 'Basic description of Personal Care 28', '17', 'Personal Care', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 2240.00, 2250.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:47', '2024-10-25 05:45:13'),
(1717, 'FMD299207', 'FIK DN (400 ml) - Baygon Max', 'Basic description of Household 38', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 350.00, 360.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:48', '2024-10-25 05:45:16'),
(1718, 'FMD299232', 'Touch & Fresh Rfl - Multi Air Freshener (12 ml) - Glade', 'Basic description of Household 63', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 358.00, 368.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:48', '2024-10-25 05:45:17'),
(1719, 'FMD299209', 'Floor Cleaner - Citrus ( 500 ml) - Mr. Muscle', 'Basic description of Household 40', '10', 'Household', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 150.00, 160.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:48', '2024-10-25 05:45:16'),
(1720, 'FMD174206', 'Mcvities (India) Digestive (250 gm)', 'Basic description of Cookies & Biscuits 50', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 110.00, 120.00, 'PCS', 10.00, 10.00, ' Mc00001', 'Mcvities (India)', '[Rack 3]', NULL, '2024-09-24 15:06:48', '2024-10-25 05:45:15'),
(1721, 'FMD189005', '????? ( Chitwan)', 'Basic description of Rice & Pulses 23', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 280.00, 290.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:48', '2024-10-25 05:45:13'),
(1722, 'FMD176610', 'Buff Sausage SPCL (500 gm)', 'Basic description of Meat, Fish & Seafood 325', '13', 'Meat, Fish & Seafood', '26', 'Buff', '0', 0.00, 0.00, 340.00, 350.00, 'PCS', 10.00, 10.00, ' Ad00001', 'Adhunik', '[Rack 7]', NULL, '2024-09-24 15:06:48', '2024-10-25 05:45:12'),
(1723, 'FMD325887', 'Gyan Honey (1 kg)', 'Local Produces basic description 13', '12', 'Local Produces', '18', 'Honey', '0', 0.00, 0.00, 640.00, 650.00, 'PCS', 9.00, 9.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:48', '2024-10-25 05:45:17'),
(1724, 'FMD174105', 'Mutton Mince (500 gm)', 'Basic description of Meat, Fish & Seafood 327', '13', 'Meat, Fish & Seafood', '27', 'Mutton', '0', 0.00, 0.00, 840.00, 850.00, 'PCS', 10.00, 10.00, ' Ni00001', 'Nina &amp; Hager', '[Rack 7]', NULL, '2024-09-24 15:06:48', '2024-10-25 05:45:12'),
(1725, 'FMD216617', 'Maas Ko Daal (Black  Daal) (1 kg)', 'Basic description of Local Produces 1', '12', 'Local Produces', '19', 'Legume', '0', 0.00, 0.00, 205.00, 215.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 11, Rack 5, Rack 6]', NULL, '2024-09-24 15:06:48', '2024-10-25 05:45:17'),
(1726, 'FMD174204', 'Mcvities (India) Digestive Sugar Free (75 gm)', 'Basic description of Cookies & Biscuits 48', '6', 'Cookies & Biscuits', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 40.00, 50.00, 'PCS', 10.00, 10.00, ' Mc00001', 'Mcvities (India)', '[Rack 3]', NULL, '2024-09-24 15:06:49', '2024-10-25 05:45:15'),
(1727, 'FMD254323', 'Barley Satu (400 gm)', 'Basic description of Local Produces 43', '12', 'Local Produces', '21', 'More Local Products', '0', 0.00, 0.00, 90.00, 100.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:49', '2024-10-25 05:45:17'),
(1728, 'FMD315082', 'India Gate Rice Dubar  (2 pcs)', 'Basic description of Rice & Pulses 49', '21', 'Rice & Pulses', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 190.00, 200.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:49', '2024-10-25 05:45:13'),
(1729, 'FMD174330', 'Kissan Chilli Tomato (500 gm)', 'Basic description of Soup, Sauce & Seasonings 32', '23', 'Soup, Sauce & Seasonings', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 158.00, 168.00, 'PCS', 10.00, 10.00, ' Ki00001', 'Kissan', '[Rack 9]', NULL, '2024-09-24 15:06:49', '2024-10-25 05:45:14'),
(1730, 'FMD174223', 'Gaia Oats Multi Grains(500 gm)', 'Basic description of Breakfast 42', '5', 'Breakfast', 'NoSubCategoryCo', 'NoSubCategory', '0', 0.00, 0.00, 215.00, 225.00, 'PCS', 10.00, 10.00, ' GA00001', 'GAIA', '[Rack 3]', NULL, '2024-09-24 15:06:50', '2024-10-25 05:45:15'),
(1731, 'FMD293233', 'Papaya (Around 1.83 kg)', 'Fruits and vegetables are plant products rich in vitamins, minerals, and antioxidants 36', '8', 'Fruits & Vegetables', '12', 'Fruits', '0', 0.00, 0.00, 310.00, 320.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 4]', NULL, '2024-09-24 15:06:50', '2024-10-25 05:45:15'),
(1732, 'FMD316946', 'Banana Chips - Peri Peri (50 gms) - Beyond Snack', 'Basic description of Snacks & Dry Fruits 89', '22', 'Snacks & Dry Fruits', '32', 'Chips & Popcorn', '0', 0.00, 0.00, 115.00, 125.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:50', '2024-10-25 05:45:14'),
(1733, 'FMD338489', 'N&H Chicken Drumsticks(610 GM)', 'Basic description of Meat, Fish & Seafood 160', '13', 'Meat, Fish & Seafood', '22', 'Chicken', '0', 0.00, 0.00, 539.00, 549.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 7]', NULL, '2024-09-24 15:06:50', '2024-10-25 05:45:10'),
(1734, 'FMD174179', 'Veg Patty (450 gm)', 'Basic description of Ready to Cook 23', '19', 'Ready to Cook', '28', 'Veg Items', '0', 0.00, 0.00, 490.00, 500.00, 'PCS', 10.00, 10.00, NULL, NULL, '[Rack 8]', NULL, '2024-09-24 15:06:50', '2024-10-25 05:45:13'),
(1735, 'a8850135576138', 'Joiner Blackcurrant Juice 320 ml', 'Joiner Blackcurrant Juice 320 ml', NULL, NULL, NULL, 'JOINER', NULL, NULL, 0.00, 130.00, 140.00, 'uts', 0.10, NULL, 'FMD', 'JOINER', 'B1-05-06-04', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1736, 'a8850135557663', 'Joiner Cantaloupe Juice 320 ml', 'Joiner Cantaloupe Juice 320 ml', NULL, NULL, NULL, 'JOINER', NULL, NULL, 0.00, 130.00, 140.00, 'uts', 0.10, NULL, 'FMD', 'JOINER', 'B1-05-06-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1737, 'a8850135557557', 'Joiner Grape Juice 320 ml', 'Joiner Grape Juice 320 ml', NULL, NULL, NULL, 'JOINER', NULL, NULL, 0.00, 130.00, 140.00, 'uts', 0.10, NULL, 'FMD', 'JOINER', 'B1-05-06-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1738, 'a8850135557441', 'Joiner Lychee Juice 320 ml', 'Joiner Lychee Juice 320 ml', NULL, NULL, NULL, 'JOINER', NULL, NULL, 0.00, 130.00, 140.00, 'uts', 0.10, NULL, 'FMD', 'JOINER', 'B1-05-07-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1739, 'a8850135557229', 'Joiner Mango Juice 320 ml', 'Joiner Mango Juice 320 ml', NULL, NULL, NULL, 'JOINER', NULL, NULL, 0.00, 130.00, 140.00, 'uts', 0.10, NULL, 'FMD', 'JOINER', 'B1-05-08-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1740, 'a8850135557113', 'Joiner Orange Juice 320 ml', 'Joiner Orange Juice 320 ml', NULL, NULL, NULL, 'JOINER', NULL, NULL, 0.00, 130.00, 140.00, 'uts', 0.10, NULL, 'FMD', 'JOINER', 'B1-05-07-04', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1741, 'a8850135576145', 'Joiner Peach Juice 320 ml', 'Joiner Peach Juice 320 ml', NULL, NULL, NULL, 'JOINER', NULL, NULL, 0.00, 130.00, 140.00, 'uts', 0.10, NULL, 'FMD', 'JOINER', 'B1-05-08-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1742, 'a8850135557779', 'Joiner Pineapple Juice 320 ml', 'Joiner Pineapple Juice 320 ml', NULL, NULL, NULL, 'JOINER', NULL, NULL, 0.00, 130.00, 140.00, 'uts', 0.10, NULL, 'FMD', 'JOINER', 'B1-05-08-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1743, 'a8850135576121', 'Joiner Pomegranate Juice 320 ml', 'Joiner Pomegranate Juice 320 ml', NULL, NULL, NULL, 'JOINER', NULL, NULL, 0.00, 130.00, 140.00, 'uts', 0.10, NULL, 'FMD', 'JOINER', 'B1-05-07-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1744, 'a8850135576114', 'Joiner Red Apple Juice 320 ml', 'Joiner Red Apple Juice 320 ml', NULL, NULL, NULL, 'JOINER', NULL, NULL, 0.00, 130.00, 140.00, 'uts', 0.10, NULL, 'FMD', 'JOINER', 'B1-05-08-04', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1745, 'a8850135557335', 'Joiner Strawberry Juice320 ml', 'Joiner Strawberry Juice320 ml', NULL, NULL, NULL, 'JOINER', NULL, NULL, 0.00, 130.00, 140.00, 'uts', 0.10, NULL, 'FMD', 'JOINER', 'B1-05-07-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1746, 'a8809713914435', 'OKF Milkers Lychee 500 ml', 'OKF Milkers Lychee 500 ml', NULL, NULL, NULL, 'OKF', NULL, NULL, 0.00, 240.00, 250.00, 'uts', 0.10, NULL, 'FMD', 'OKF', 'B1-05-01-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1747, 'a8809713914459', 'OKF Milkers Mango 500 ml', 'OKF Milkers Mango 500 ml', NULL, NULL, NULL, 'OKF', NULL, NULL, 0.00, 240.00, 250.00, 'uts', 0.10, NULL, 'FMD', 'OKF', 'B1-05-01-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1748, 'a8809713914398', 'OKF Milkers Original 500 ml', 'OKF Milkers Original 500 ml', NULL, NULL, NULL, 'OKF', NULL, NULL, 0.00, 240.00, 250.00, 'uts', 0.10, NULL, 'FMD', 'OKF', 'B1-05-01-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1749, 'a8809713914411', 'OKF Milkers Peach 500 ml', 'OKF Milkers Peach 500 ml', NULL, NULL, NULL, 'OKF', NULL, NULL, 0.00, 240.00, 250.00, 'uts', 0.10, NULL, 'FMD', 'OKF', 'B1-05-01-05', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1750, 'a8809713914473', 'OKF Milkers Strawberry 500 ml', 'OKF Milkers Strawberry 500 ml', NULL, NULL, NULL, 'OKF', NULL, NULL, 0.00, 240.00, 250.00, 'uts', 0.10, NULL, 'FMD', 'OKF', 'B1-05-01-04', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1751, 'a8809041427904', 'OKF Smoothie Green 350 ml', 'OKF Smoothie Green 350 ml', NULL, NULL, NULL, 'OKF', NULL, NULL, 0.00, 215.00, 225.00, 'uts', 0.10, NULL, 'FMD', 'OKF', 'B1-05-02-04', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1752, 'a8809041427867', 'OKF Smoothie Orange 350 ml', 'OKF Smoothie Orange 350 ml', NULL, NULL, NULL, 'OKF', NULL, NULL, 0.00, 215.00, 225.00, 'uts', 0.10, NULL, 'FMD', 'OKF', 'B1-05-02-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1753, 'a8809041427928', 'OKF Smoothie Purple 350 ml', 'OKF Smoothie Purple 350 ml', NULL, NULL, NULL, 'OKF', NULL, NULL, 0.00, 215.00, 225.00, 'uts', 0.10, NULL, 'FMD', 'OKF', 'B1-05-02-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1754, 'a8809041427829', 'OKF Smoothie Red 350 ml', 'OKF Smoothie Red 350 ml', NULL, NULL, NULL, 'OKF', NULL, NULL, 0.00, 215.00, 225.00, 'uts', 0.10, NULL, 'FMD', 'OKF', 'B1-05-02-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1755, 'a8809041427881', 'OKF Smoothie Yellow 350 ml', 'OKF Smoothie Yellow 350 ml', NULL, NULL, NULL, 'OKF', NULL, NULL, 0.00, 215.00, 225.00, 'uts', 0.10, NULL, 'FMD', 'OKF', 'B1-05-02-05', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1756, 'a8809713911601', 'OKF Watermelon Drink 340 ml', 'OKF Watermelon Drink 340 ml', NULL, NULL, NULL, 'OKF', NULL, NULL, 0.00, 140.00, 150.00, 'uts', 0.10, NULL, 'FMD', 'OKF', 'B1-05-06-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1757, 'a8906130901137', 'Orion Choco pie Real Strawberry 150', 'Orion Choco pie Real Strawberry 150', NULL, NULL, NULL, 'ORION', NULL, NULL, 0.00, 170.00, 180.00, 'pcs', 0.10, NULL, 'FMD', 'ORION', 'B2-08-03-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1758, 'a8906130901120', 'Orion Choco pie Real Coconut 150 gm', 'Orion Choco pie Real Coconut 150 gm', NULL, NULL, NULL, 'ORION', NULL, NULL, 0.00, 170.00, 180.00, 'pcs', 0.10, NULL, 'FMD', 'ORION', 'B2-08-03-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1759, 'a8906130900239', 'Orion Choco Pie Original 150 Gm', 'Orion Choco Pie Original 150 Gm', NULL, NULL, NULL, 'ORION', NULL, NULL, 0.00, 140.00, 150.00, 'pcs', 0.10, NULL, 'FMD', 'ORION', 'B2-08-02-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1760, 'a8906130900949', 'Orion Choco Pie Real Orange 150 Gm', 'Orion Choco Pie Real Orange 150 Gm', NULL, NULL, NULL, 'ORION', NULL, NULL, 0.00, 170.00, 180.00, 'pcs', 0.10, NULL, 'FMD', 'ORION', 'B2-08-02-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1761, 'a8906130900352', 'Orion Choco Pie Real Mango 168 Gm', 'Orion Choco Pie Real Mango 168 Gm', NULL, NULL, NULL, 'ORION', NULL, NULL, 0.00, 170.00, 180.00, 'pcs', 0.10, NULL, 'FMD', 'ORION', 'B2-08-02-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1762, 'a8906006435773', 'All Out Ultra Power Slider Combi (45 ml)', 'All Out Ultra Power Slider Combi (45 ml)', NULL, NULL, NULL, 'ALL OUT', NULL, NULL, 0.00, 150.00, 160.00, 'uts', 0.10, NULL, 'FMD', 'ALL OUT', 'A1-11-04-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1763, 'a8906006430419', 'All Out Ultra Power Refill (45 ml)', 'All Out Ultra Power Refill (45 ml)', NULL, NULL, NULL, 'ALL OUT', NULL, NULL, 0.00, 118.00, 128.00, 'uts', 0.10, NULL, 'FMD', 'ALL OUT', 'A1-11-04-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1764, 'a8906006434684', 'All Out Ultra Refil Night (30 ml)', 'All Out Ultra Refil Night (30 ml)', NULL, NULL, NULL, 'ALL OUT', NULL, NULL, 0.00, 350.00, 360.00, 'uts', 0.10, NULL, 'FMD', 'ALL OUT', 'A1-11-05-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1765, 'a8906006436312', 'Glade Air Freshner Wild Lavender (300 ml)', 'Glade Air Freshner Wild Lavender (300 ml)', NULL, NULL, NULL, 'GLADE', NULL, NULL, 0.00, 260.00, 270.00, 'uts', 0.10, NULL, 'FMD', 'GLADE', 'A1-10-02-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1766, 'a8850175012085', 'Glade Touch & Fresh Combi Wild Lavender (12 ml)', 'Glade Touch & Fresh Combi Wild Lavender (12 ml)', NULL, NULL, NULL, 'GLADE', NULL, NULL, 0.00, 196.00, 206.00, 'uts', 0.10, NULL, 'FMD', 'GLADE', 'A1-10-02-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1767, 'a8906006432499', 'Kiwi Shoe Brush (Mini )', 'Kiwi Shoe Brush (Mini )', NULL, NULL, NULL, 'KIWI', NULL, NULL, 0.00, 110.00, 120.00, 'uts', 0.10, NULL, 'FMD', 'KIWI', 'A1-10-04-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1768, 'a8906006432468', 'Kiwi Shoe PolishBlack (40 gms)', 'Kiwi Shoe PolishBlack (40 gms)', NULL, NULL, NULL, 'KIWI', NULL, NULL, 0.00, 124.00, 134.00, 'uts', 0.10, NULL, 'FMD', 'KIWI', 'A1-10-05-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1769, 'a8906006432512', 'Kiwi Shoe SpongeNeutral (5 ml)', 'Kiwi Shoe SpongeNeutral (5 ml)', NULL, NULL, NULL, 'KIWI', NULL, NULL, 0.00, 137.00, 147.00, 'uts', 0.10, NULL, 'FMD', 'KIWI', 'A1-10-04-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1770, 'a8904271201116', 'Kiwi Liquid Shoe PolishBlack (75 ml)', 'Kiwi Liquid Shoe PolishBlack (75 ml)', NULL, NULL, NULL, 'KIWI', NULL, NULL, 0.00, 186.00, 196.00, 'uts', 0.10, NULL, 'FMD', 'KIWI', 'A1-10-05-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1771, 'a8906006439191', 'Mr. Muscle Glass & Household Cleaner (500 ml)', 'Mr. Muscle Glass & Household Cleaner (500 ml)', NULL, NULL, NULL, 'MR MUSCLE', NULL, NULL, 0.00, 164.00, 174.00, 'uts', 0.10, NULL, 'FMD', 'MR MUSCLE', 'A1-09-05-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1772, 'a8904271201567', 'Mr. Muscle Kitchen Cleaner (500 ml)', 'Mr. Muscle Kitchen Cleaner (500 ml)', NULL, NULL, NULL, 'MR MUSCLE', NULL, NULL, 0.00, 270.00, 280.00, 'uts', 0.10, NULL, 'FMD', 'MR MUSCLE', 'A1-09-05-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1773, 'a8906006439337', 'Mr. Muscle Floor Cleaner Lavender (500 ml)', 'Mr. Muscle Floor Cleaner Lavender (500 ml)', NULL, NULL, NULL, 'MR MUSCLE', NULL, NULL, 0.00, 175.00, 185.00, 'uts', 0.10, NULL, 'FMD', 'MR MUSCLE', 'A1-09-05-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1774, 'a8906006436350', 'Glade Gel Lavender Bills (75 gms)', 'Glade Gel Lavender Bills (75 gms)', NULL, NULL, NULL, 'GLADE', NULL, NULL, 0.00, 142.00, 152.00, 'uts', 0.10, NULL, 'FMD', 'GLADE', 'A1-10-02-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1775, 'a8906006432598', 'Dranex 50 gm', 'Dranex 50 gm', NULL, NULL, NULL, 'KIWI', NULL, NULL, 0.00, 33.00, 43.00, 'uts', 0.10, NULL, 'FMD', 'KIWI', 'A1-10-03-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1776, 'a8906006432604', 'Dranex 375 gm', 'Dranex 375 gm', NULL, NULL, NULL, 'KIWI', NULL, NULL, 0.00, 310.00, 320.00, 'uts', 0.10, NULL, 'FMD', 'KIWI', 'A1-10-03-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1777, 'a8904271200348', 'Baygon Max FIK DN (625 ml)', 'Baygon Max FIK DN (625 ml)', NULL, NULL, NULL, 'BAYGON', NULL, NULL, 0.00, 534.00, 544.00, 'uts', 0.10, NULL, 'FMD', 'BAYGON', 'A1-11-05-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1778, 'a8906006439115', 'Mr. Muscle Toilet Cleaner (450 ml)', 'Mr. Muscle Toilet Cleaner (450 ml)', NULL, NULL, NULL, 'MR MUSCLE', NULL, NULL, 0.00, 140.00, 150.00, 'uts', 0.10, NULL, 'FMD', 'MR MUSCLE', 'A1-09-04-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1779, 'a8886467100055', 'Pringles Hot & Spicy 102 gm', 'Pringles Hot & Spicy 102 gm', NULL, NULL, NULL, 'PRINGLES', NULL, NULL, 0.00, 265.00, 275.00, 'uts', 0.10, NULL, 'FMD', 'PRINGLES', 'B2-08-04-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1780, 'a8886467100017', 'pringles original (102 gms)', 'pringles original (102 gms)', NULL, NULL, NULL, 'PRINGLES', NULL, NULL, 0.00, 265.00, 275.00, 'uts', 0.10, NULL, 'FMD', 'PRINGLES', 'B2-08-04-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1781, 'a8886467105814', 'Pringles Cheesy Cheese (42 gms)', 'Pringles Cheesy Cheese (42 gms)', NULL, NULL, NULL, 'PRINGLES', NULL, NULL, 0.00, 120.00, 130.00, 'uts', 0.10, NULL, 'FMD', 'PRINGLES', 'B2-08-04-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1782, 'a4987176115119', 'Tide Plus Lemon & Mint 500 gms', 'Tide Plus Lemon & Mint 500 gms', NULL, NULL, NULL, 'TIDE', NULL, NULL, 0.00, 125.00, 135.00, 'uts', 0.10, NULL, 'FMD', 'TIDE', 'A1-10-01-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1783, 'a4987176175342', 'Tide Washing Soap (250 gms)', 'Tide Washing Soap (250 gms)', NULL, NULL, NULL, 'TIDE', NULL, NULL, 0.00, 38.00, 48.00, 'uts', 0.10, NULL, 'FMD', 'TIDE', 'A1-10-01-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1784, 'a4987176143365', 'Tide Plus Lemon & Mint 2 kg', 'Tide Plus Lemon & Mint 2 kg', NULL, NULL, NULL, 'TIDE', NULL, NULL, 0.00, 422.00, 432.00, 'uts', 0.10, NULL, 'FMD', 'TIDE', 'A1-10-01-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1785, 'a4987176185501', 'Ariel Det. Pow. Complete Matic FL (4+2 kg)', 'Ariel Det. Pow. Complete Matic FL (4+2 kg)', NULL, NULL, NULL, 'ARIEL', NULL, NULL, 0.00, 2500.00, 2559.00, 'uts', 0.10, NULL, 'FMD', 'ARIEL', 'A1-11-01-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1786, 'a4987176126634', 'Ariel Det. Pow. Complete Matic Liquid FL 1Lltrs)', 'Ariel Det. Pow. Complete Matic Liquid FL 1Lltrs)', NULL, NULL, NULL, 'ARIEL', NULL, NULL, 0.00, 400.00, 475.00, 'uts', 0.10, NULL, 'FMD', 'ARIEL', 'A1-11-01-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1787, 'a4987176135872', 'Gillette Foam Sensitive 418 gms', 'Gillette Foam Sensitive 418 gms', NULL, NULL, NULL, 'GILLETTE', NULL, NULL, 0.00, 300.00, 398.00, 'uts', 0.10, NULL, 'FMD', 'GILLETTE', 'A2-03-04-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1788, 'a3014260262709', 'Gillette Venus Smooth 4s', 'Gillette Venus Smooth 4s', NULL, NULL, NULL, 'GILLETTE', NULL, NULL, 0.00, 800.00, 845.00, 'uts', 0.10, NULL, 'FMD', 'GILLETTE', 'A2-03-04-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1789, 'a4987176198228', 'Gillette Series After Shave Splash Refreshing Breeze (100 ml)', 'Gillette Series After Shave Splash Refreshing Breeze (100 ml)', NULL, NULL, NULL, 'GILLETTE', NULL, NULL, 0.00, 700.00, 798.00, 'uts', 0.10, NULL, 'FMD', 'GILLETTE', 'A2-03-04-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1790, 'a4902430540872', 'Gillette Mach3 Razor', 'Gillette Mach3 Razor', NULL, NULL, NULL, 'GILLETTE', NULL, NULL, 0.00, 400.00, 469.00, 'uts', 0.10, NULL, 'FMD', 'GILLETTE', 'A2-03-05-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1791, 'a4902430734950', 'Olay Reg MSC Day Cream (50 gms)', 'Olay Reg MSC Day Cream (50 gms)', NULL, NULL, NULL, 'OLAY', NULL, NULL, 0.00, 2400.00, 2499.00, 'uts', 0.10, NULL, 'FMD', 'OLAY', 'A2-01-03-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1792, 'a4902430359733', 'Olay Total Effect Day Cream Gentle (50 gms)', 'Olay Total Effect Day Cream Gentle (50 gms)', NULL, NULL, NULL, 'OLAY', NULL, NULL, 0.00, 1050.00, 1100.00, 'uts', 0.10, NULL, 'FMD', 'OLAY', 'A2-01-01-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1793, 'a4902430735148', 'Olay Total Effect Night Cream (50 gms)', 'Olay Total Effect Night Cream (50 gms)', NULL, NULL, NULL, 'OLAY', NULL, NULL, 0.00, 1050.00, 1100.00, 'uts', 0.10, NULL, 'FMD', 'OLAY', 'A2-01-01-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1794, 'a4902430360111', 'Olay Total Effect Normal UV Day Cream (50 gms)', 'Olay Total Effect Normal UV Day Cream (50 gms)', NULL, NULL, NULL, 'OLAY', NULL, NULL, 0.00, 1050.00, 1100.00, 'uts', 0.10, NULL, 'FMD', 'OLAY', 'A2-01-02-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1795, 'a4987176195135', 'Olay Natural White Night Cream (50 gms)', 'Olay Natural White Night Cream (50 gms)', NULL, NULL, NULL, 'OLAY', NULL, NULL, 0.00, 500.00, 550.00, 'uts', 0.10, NULL, 'FMD', 'OLAY', 'A2-01-02-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1796, 'a4902430917964', 'Olay Regenerist Retinol Night Cream 15 ml', 'Olay Regenerist Retinol Night Cream 15 ml', NULL, NULL, NULL, 'OLAY', NULL, NULL, 0.00, 2810.00, 2899.00, 'uts', 0.10, NULL, 'FMD', 'OLAY', 'A2-01-02-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1797, 'a4902430478427', 'Olay Reg MSC UV Day Cream SPF 30 50 gms', 'Olay Reg MSC UV Day Cream SPF 30 50 gms', NULL, NULL, NULL, 'OLAY', NULL, NULL, 0.00, 2400.00, 2499.00, 'uts', 0.10, NULL, 'FMD', 'OLAY', 'A2-01-03-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1798, 'a4987176054395', 'Olay Luminous Light Perfecting face cream 50 gm', 'Olay Luminous Light Perfecting face cream 50 gm', NULL, NULL, NULL, 'OLAY', NULL, NULL, 0.00, 1700.00, 1729.00, 'uts', 0.10, NULL, 'FMD', 'OLAY', 'A2-01-01-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1799, 'a4987176135407', 'Pampers Diapers 64s LG', 'Pampers Diapers 64s LG', NULL, NULL, NULL, 'PAMPERS', NULL, NULL, 0.00, 2350.00, 2398.00, 'uts', 0.10, NULL, 'FMD', 'PAMPERS', 'B2-02-02-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1800, 'a4987176135384', 'Pampers Diapers 76s MD', 'Pampers Diapers 76s MD', NULL, NULL, NULL, 'PAMPERS', NULL, NULL, 0.00, 2350.00, 2398.00, 'uts', 0.10, NULL, 'FMD', 'PAMPERS', 'B2-02-02-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1801, 'a4987176135506', 'Pampers Diapers 42s XXL', 'Pampers Diapers 42s XXL', NULL, NULL, NULL, 'PAMPERS', NULL, NULL, 0.00, 2350.00, 2398.00, 'uts', 0.10, NULL, 'FMD', 'PAMPERS', 'B2-02-01-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1802, 'a4987176135285', 'Pampers Diapers 56s XL', 'Pampers Diapers 56s XL', NULL, NULL, NULL, 'PAMPERS', NULL, NULL, 0.00, 2350.00, 2398.00, 'uts', 0.10, NULL, 'FMD', 'PAMPERS', 'B2-02-01-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1803, 'a4987176093325', 'Pampers Diapers 72s NB', 'Pampers Diapers 72s NB', NULL, NULL, NULL, 'PAMPERS', NULL, NULL, 0.00, 1900.00, 1918.00, 'uts', 0.10, NULL, 'FMD', 'PAMPERS', 'B2-02-02-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1804, 'a4987176122360', 'Pampers Baby Wipes 72s', 'Pampers Baby Wipes 72s', NULL, NULL, NULL, 'PAMPERS', NULL, NULL, 0.00, 400.00, 478.00, 'uts', 0.10, NULL, 'FMD', 'PAMPERS', 'B2-02-01-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1805, 'a4987176237224', 'Ultra Clean (44s XL+) - Whisper', 'Ultra Clean (44s XL+) - Whisper', NULL, NULL, NULL, 'WHISPER', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'WHISPER', 'A2-01-04-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1806, 'a4987176192127', 'Whisper Ultra Soft XL+ 30s', 'Whisper Ultra Soft XL+ 30s', NULL, NULL, NULL, 'WHISPER', NULL, NULL, 0.00, 500.00, 504.00, 'uts', 0.10, NULL, 'FMD', 'WHISPER', 'A2-01-05-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1807, 'a4987176192219', 'Whisper Ultra Soft XL+15s', 'Whisper Ultra Soft XL+15s', NULL, NULL, NULL, 'WHISPER', NULL, NULL, 0.00, 200.00, 264.00, 'uts', 0.10, NULL, 'FMD', 'WHISPER', 'A2-01-05-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1808, 'a4987176237262', 'Whisper Ultra Clean XL+7s', 'Whisper Ultra Clean XL+7s', NULL, NULL, NULL, 'WHISPER', NULL, NULL, 0.00, 100.00, 144.00, 'uts', 0.10, NULL, 'FMD', 'WHISPER', 'A2-01-05-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1809, 'a4987176189745', 'Whisper Choice Night 6s XXL', 'Whisper Choice Night 6s XXL', NULL, NULL, NULL, 'WHISPER', NULL, NULL, 0.00, 70.00, 80.00, 'uts', 0.10, NULL, 'FMD', 'WHISPER', 'A2-01-04-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1810, 'a8001090309006', 'Head and Shoulders Shampoo Cool Menthol 650 ml', 'Head and Shoulders Shampoo Cool Menthol 650 ml', NULL, NULL, NULL, 'HEAD AND SHOULDERS', NULL, NULL, 0.00, 800.00, 849.00, 'uts', 0.10, NULL, 'FMD', 'HEAD AND SHOULDERS', 'A1-09-03-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1811, 'a8001090310606', 'Head and Shoulders Shampoo Anti Hairfall 340 ml', 'Head and Shoulders Shampoo Anti Hairfall 340 ml', NULL, NULL, NULL, 'HEAD AND SHOULDERS', NULL, NULL, 0.00, 400.00, 465.00, 'uts', 0.10, NULL, 'FMD', 'HEAD AND SHOULDERS', 'A1-09-02-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1812, 'a8006540768716', 'Head and Shoulders Shampoo Silky Smooth 650 ml', 'Head and Shoulders Shampoo Silky Smooth 650 ml', NULL, NULL, NULL, 'HEAD AND SHOULDERS', NULL, NULL, 0.00, 800.00, 849.00, 'uts', 0.10, NULL, 'FMD', 'HEAD AND SHOULDERS', 'A1-09-03-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1813, 'a8001090309013', 'Head and Shoulders Shampoo Anti Hairfall 650 ml', 'Head and Shoulders Shampoo Anti Hairfall 650 ml', NULL, NULL, NULL, 'HEAD AND SHOULDERS', NULL, NULL, 0.00, 800.00, 849.00, 'uts', 0.10, NULL, 'FMD', 'HEAD AND SHOULDERS', 'A1-09-03-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1814, 'a4987176234285', 'Pantene Shampoo Hair Fall Control 650 ml', 'Pantene Shampoo Hair Fall Control 650 ml', NULL, NULL, NULL, 'PANTENE', NULL, NULL, 0.00, 600.00, 660.00, 'uts', 0.10, NULL, 'FMD', 'PANTENE', 'A1-09-04-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1815, 'a4987176234391', 'Pantene Shampoo Silky Smooth Care 650 ml', 'Pantene Shampoo Silky Smooth Care 650 ml', NULL, NULL, NULL, 'PANTENE', NULL, NULL, 0.00, 600.00, 660.00, 'uts', 0.10, NULL, 'FMD', 'PANTENE', 'A1-09-04-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1816, 'a4987176234407', 'Pantene Shampoo Silky Smooth Care 340 ml', 'Pantene Shampoo Silky Smooth Care 340 ml', NULL, NULL, NULL, 'PANTENE', NULL, NULL, 0.00, 300.00, 384.00, 'uts', 0.10, NULL, 'FMD', 'PANTENE', 'A1-09-02-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1817, 'a8901499007971', 'Kelloggs Chocos 675gm', 'Kelloggs Chocos 675gm', NULL, NULL, NULL, 'KELLOGGs', NULL, NULL, 0.00, 600.00, 649.00, 'uts', 0.10, NULL, 'FMD', 'KELLOGGs', 'A1-01-04-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1818, 'a8901499008381', 'Kelloggs Corn Flakes Strawberry 300 gm', 'Kelloggs Corn Flakes Strawberry 300 gm', NULL, NULL, NULL, 'KELLOGGs', NULL, NULL, 0.00, 300.00, 375.00, 'uts', 0.10, NULL, 'FMD', 'KELLOGGs', 'A1-01-03-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1819, 'a8901499011176', 'Kelloggs Fruit Loops 285 gm', 'Kelloggs Fruit Loops 285 gm', NULL, NULL, NULL, 'KELLOGGs', NULL, NULL, 0.00, 350.00, 399.00, 'uts', 0.10, NULL, 'FMD', 'KELLOGGs', 'A1-01-04-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1820, 'a8901499008312', 'Kelloggs Corn Flakes Honey Crunch 300 gms', 'Kelloggs Corn Flakes Honey Crunch 300 gms', NULL, NULL, NULL, 'KELLOGGs', NULL, NULL, 0.00, 300.00, 375.00, 'uts', 0.10, NULL, 'FMD', 'KELLOGGs', 'A1-01-03-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1821, 'a8901499010452', 'Kelloggs Extra Muesli Fruit & Nut 500 gms', 'Kelloggs Extra Muesli Fruit & Nut 500 gms', NULL, NULL, NULL, 'KELLOGGs', NULL, NULL, 0.00, 600.00, 650.00, 'uts', 0.10, NULL, 'FMD', 'KELLOGGs', 'A1-01-02-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1822, 'a8901499010476', 'Kelloggs Extra Muesli No Added Sugar 500 gms', 'Kelloggs Extra Muesli No Added Sugar 500 gms', NULL, NULL, NULL, 'KELLOGGs', NULL, NULL, 0.00, 600.00, 650.00, 'uts', 0.10, NULL, 'FMD', 'KELLOGGs', 'A1-01-02-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1823, 'a8901499011381', 'Kelloggs Oats Refill 900 Gms', 'Kelloggs Oats Refill 900 Gms', NULL, NULL, NULL, 'KELLOGGs', NULL, NULL, 0.00, 400.00, 430.00, 'uts', 0.10, NULL, 'FMD', 'KELLOGGs', 'A1-01-04-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1824, 'a8901499008893', 'Kelloggs Corn Flakes Original 875 gms', 'Kelloggs Corn Flakes Original 875 gms', NULL, NULL, NULL, 'KELLOGGs', NULL, NULL, 0.00, 650.00, 699.00, 'uts', 0.10, NULL, 'FMD', 'KELLOGGs', 'A1-01-03-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1825, 'a8901499008411', 'Kelloggs Extra Muesli Fruit & Nut 1 kgs', 'Kelloggs Extra Muesli Fruit & Nut 1 kgs', NULL, NULL, NULL, 'KELLOGGs', NULL, NULL, 0.00, 1200.00, 1400.00, 'uts', 0.10, NULL, 'FMD', 'KELLOGGs', 'A1-01-05-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1826, 'a8901499011077', 'Kelloggs Extra Muesli No Added Sugar 1 kg', 'Kelloggs Extra Muesli No Added Sugar 1 kg', NULL, NULL, NULL, 'KELLOGGs', NULL, NULL, 0.00, 1200.00, 1400.00, 'uts', 0.10, NULL, 'FMD', 'KELLOGGs', 'A1-01-05-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1827, 'a8901063016910', 'Britannia 50-50 Sweet and Salty 150 Gm', 'Britannia 50-50 Sweet and Salty 150 Gm', NULL, NULL, NULL, 'BRITANNIA', NULL, NULL, 0.00, 40.00, 50.00, 'uts', 0.10, NULL, 'FMD', 'BRITANNIA', 'A1-05-05-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1828, 'a8901063092303', 'Britannia Good Day Butter Cookies 250 gm', 'Britannia Good Day Butter Cookies 250 gm', NULL, NULL, NULL, 'BRITANNIA', NULL, NULL, 0.00, 70.00, 95.00, 'uts', 0.10, NULL, 'FMD', 'BRITANNIA', 'A1-03-04-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1829, 'a8901063093287', 'Britannia Good Day Cashew Cookies 200 gm', 'Britannia Good Day Cashew Cookies 200 gm', NULL, NULL, NULL, 'BRITANNIA', NULL, NULL, 0.00, 80.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'BRITANNIA', 'A1-03-04-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1830, 'a8901063094154', 'Britannia Good Day Nuts Cookie 200 gm', 'Britannia Good Day Nuts Cookie 200 gm', NULL, NULL, NULL, 'BRITANNIA', NULL, NULL, 0.00, 80.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'BRITANNIA', 'A1-03-04-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1831, 'a8901063136250', 'Britannia Little Hearts 75 gm', 'Britannia Little Hearts 75 gm', NULL, NULL, NULL, 'BRITANNIA', NULL, NULL, 0.00, 50.00, 65.00, 'uts', 0.10, NULL, 'FMD', 'BRITANNIA', 'A1-03-01-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1832, 'a8901063162563', 'Britannia Marie Gold 1 kg', 'Britannia Marie Gold 1 kg', NULL, NULL, NULL, 'BRITANNIA', NULL, NULL, 0.00, 250.00, 300.00, 'uts', 0.10, NULL, 'FMD', 'BRITANNIA', 'A1-03-05-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1833, 'a8901063162457', 'Britannia Marie Gold 300 gm', 'Britannia Marie Gold 300 gm', NULL, NULL, NULL, 'BRITANNIA', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'BRITANNIA', 'A1-03-05-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1834, 'a8901063165953', 'Britannia NC Digestive 1 kg', 'Britannia NC Digestive 1 kg', NULL, NULL, NULL, 'BRITANNIA', NULL, NULL, 0.00, 450.00, 500.00, 'uts', 0.10, NULL, 'FMD', 'BRITANNIA', 'A1-03-03-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1835, 'a8901063151284', 'Britannia NC Digestive 500 gm', 'Britannia NC Digestive 500 gm', NULL, NULL, NULL, 'BRITANNIA', NULL, NULL, 0.00, 200.00, 250.00, 'uts', 0.10, NULL, 'FMD', 'BRITANNIA', 'A1-03-03-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1836, 'a6291007902198', 'Britannia Sugar Free Digestive 350 gm', 'Britannia Sugar Free Digestive 350 gm', NULL, NULL, NULL, 'BRITANNIA', NULL, NULL, 0.00, 300.00, 310.00, 'uts', 0.10, NULL, 'FMD', 'BRITANNIA', 'A1-03-03-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1837, 'a8901063151253', 'Britannia Suji Rusk 170 gm', 'Britannia Suji Rusk 170 gm', NULL, NULL, NULL, 'BRITANNIA', NULL, NULL, 0.00, 80.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'BRITANNIA', 'A1-03-02-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1838, 'a8901063136762', 'Britannia Milk Rusk 310 gms', 'Britannia Milk Rusk 310 gms', NULL, NULL, NULL, 'BRITANNIA', NULL, NULL, 0.00, 170.00, 190.00, 'uts', 0.10, NULL, 'FMD', 'BRITANNIA', 'A1-03-02-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1839, 'a8901063136465', 'Britannia Milk Rusk 620 gms', 'Britannia Milk Rusk 620 gms', NULL, NULL, NULL, 'BRITANNIA', NULL, NULL, 0.00, 350.00, 370.00, 'uts', 0.10, NULL, 'FMD', 'BRITANNIA', 'A1-03-02-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1840, 'a8901063160088', 'Britannia Pure Magic Chocolush 75 gms', 'Britannia Pure Magic Chocolush 75 gms', NULL, NULL, NULL, 'BRITANNIA', NULL, NULL, 0.00, 80.00, 90.00, 'uts', 0.10, NULL, 'FMD', 'BRITANNIA', 'A1-04-04-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1841, 'a8908010900056', 'Pintola All Natural Crunchy 350 gms', 'Pintola All Natural Crunchy 350 gms', NULL, NULL, NULL, 'PINTOLA', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'PINTOLA', 'B2-01-05-04', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1842, 'a8908010900179', 'Pintola Classic Crunchy 1 kg', 'Pintola Classic Crunchy 1 kg', NULL, NULL, NULL, 'PINTOLA', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'PINTOLA', 'B2-01-05-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1843, 'a9556184350017', 'Shoon Fatt Cracker SP Biscuits 280 GMS', 'Shoon Fatt Cracker SP Biscuits 280 GMS', NULL, NULL, NULL, 'SHOON FATT', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'SHOON FATT', 'A1-03-01-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1844, 'a9556439882331', 'MUNCHY Veg Crackers 390 Gms', 'MUNCHY Veg Crackers 390 Gms', NULL, NULL, NULL, 'MUNCHY', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'MUNCHY', 'A1-03-01-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1845, 'a8850291103322', 'Tong Garden BBQ Broad Beans 500 GMS', 'Tong Garden BBQ Broad Beans 500 GMS', NULL, NULL, NULL, 'TONG GARDEN', NULL, NULL, 0.00, 646.00, 656.57, 'uts', 0.10, NULL, 'FMD', 'TONG GARDEN', 'B2-06-03-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1846, 'a8850291102745', 'Tong Garden Chilli Flv. B/Beans W/S 120 gms', 'Tong Garden Chilli Flv. B/Beans W/S 120 gms', NULL, NULL, NULL, 'TONG GARDEN', NULL, NULL, 0.00, 146.00, 156.57, 'uts', 0.10, NULL, 'FMD', 'TONG GARDEN', 'B2-06-05-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1847, 'a8850291100697', 'Tong Garden Dried Cranberries 110 gms - Sungift', 'Tong Garden Dried Cranberries 110 gms - Sungift', NULL, NULL, NULL, 'TONG GARDEN', NULL, NULL, 0.00, 394.00, 404.04, 'uts', 0.10, NULL, 'FMD', 'TONG GARDEN', 'B2-06-02-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1848, 'a8850291103315', 'Tong Garden Dried Pitted Prunes 130 gms', 'Tong Garden Dried Pitted Prunes 130 gms', NULL, NULL, NULL, 'TONG GARDEN', NULL, NULL, 0.00, 444.00, 454.55, 'uts', 0.10, NULL, 'FMD', 'TONG GARDEN', 'B2-06-02-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1849, 'a8850291102752', 'Tong Garden Onion And Garlic Broad Beans W/S 120 gms', 'Tong Garden Onion And Garlic Broad Beans W/S 120 gms', NULL, NULL, NULL, 'TONG GARDEN', NULL, NULL, 0.00, 146.00, 156.57, 'uts', 0.10, NULL, 'FMD', 'TONG GARDEN', 'B2-06-05-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1850, 'a8850291103544', 'Tong Garden Party Snack 180 gms Pouch', 'Tong Garden Party Snack 180 gms Pouch', NULL, NULL, NULL, 'TONG GARDEN', NULL, NULL, 0.00, 152.00, 262.62, 'uts', 0.10, NULL, 'FMD', 'TONG GARDEN', 'B2-06-05-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1851, 'a8850291100499', 'Tong Garden Party Snacks 500 gms', 'Tong Garden Party Snacks 500 gms', NULL, NULL, NULL, 'TONG GARDEN', NULL, NULL, 0.00, 646.57, 656.57, 'uts', 0.10, NULL, 'FMD', 'TONG GARDEN', 'B2-06-04-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1852, 'a8850291100468', 'Tong Garden Salted Broad Beans 500 gms', 'Tong Garden Salted Broad Beans 500 gms', NULL, NULL, NULL, 'TONG GARDEN', NULL, NULL, 0.00, 646.57, 656.57, 'uts', 0.10, NULL, 'FMD', 'TONG GARDEN', 'B2-06-03-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1853, 'a8850291105074', 'Tong Garden Salted Green Peas 450 gms', 'Tong Garden Salted Green Peas 450 gms', NULL, NULL, NULL, 'TONG GARDEN', NULL, NULL, 0.00, 646.57, 656.57, 'uts', 0.10, NULL, 'FMD', 'TONG GARDEN', 'B2-06-04-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1854, 'a8850291100437', 'Tong Garden Salted Peanut 400 gms', 'Tong Garden Salted Peanut 400 gms', NULL, NULL, NULL, 'TONG GARDEN', NULL, NULL, 0.00, 646.57, 656.57, 'uts', 0.10, NULL, 'FMD', 'TONG GARDEN', 'B2-06-04-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1855, 'a8850291100475', 'Tong Garden Wasabi Green Peas 400 gms', 'Tong Garden Wasabi Green Peas 400 gms', NULL, NULL, NULL, 'TONG GARDEN', NULL, NULL, 0.00, 646.57, 656.57, 'uts', 0.10, NULL, 'FMD', 'TONG GARDEN', 'B2-06-03-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1856, 'a4005808319725', 'Nivea Milk Lotion 380 ml Pump', 'Nivea Face & Beard Wash Deep 100G', NULL, NULL, NULL, 'NIVEA', NULL, NULL, 0.00, 615.00, 625.00, 'uts', 0.10, NULL, 'FMD', 'NIVEA', 'A2-02-02-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1857, 'a4005808890590', 'Nivea Soft Cream 100 ml', 'Nivea Face & Beard Wash Deep 100G', NULL, NULL, NULL, 'NIVEA', NULL, NULL, 0.00, 340.00, 350.00, 'uts', 0.10, NULL, 'FMD', 'NIVEA', 'A2-02-03-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1858, 'a4005900008442', 'Nivea Soft Cream Jar 200 ml', 'Nivea Face & Beard Wash Deep 100G', NULL, NULL, NULL, 'NIVEA', NULL, NULL, 0.00, 465.00, 475.00, 'uts', 0.10, NULL, 'FMD', 'NIVEA', 'A2-02-03-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1859, 'a4005808160266', 'Nivea Cream 250 ml', 'Nivea Face & Beard Wash Deep 100G', NULL, NULL, NULL, 'NIVEA', NULL, NULL, 0.00, 590.00, 600.00, 'uts', 0.10, NULL, 'FMD', 'NIVEA', 'A2-02-02-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1860, 'a4005808372904', 'Nivea Lipcare Strawberry 4.8G', 'Nivea Face & Beard Wash Deep 100G', NULL, NULL, NULL, 'NIVEA', NULL, NULL, 0.00, 365.00, 375.00, 'uts', 0.10, NULL, 'FMD', 'NIVEA', 'A2-02-05-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1861, 'a4005808301843', 'Nivea Deo Roll On Cool Kick 50 ml', 'Nivea Face & Beard Wash Deep 100G', NULL, NULL, NULL, 'NIVEA', NULL, NULL, 0.00, 255.00, 265.00, 'uts', 0.10, NULL, 'FMD', 'NIVEA', 'A2-02-04-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1862, 'a42059226', 'Nivea Deo Roll On Fresh Natural 50 ml', 'Nivea Face & Beard Wash Deep 100G', NULL, NULL, NULL, 'NIVEA', NULL, NULL, 0.00, 255.00, 265.00, 'uts', 0.10, NULL, 'FMD', 'NIVEA', 'A2-02-04-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1863, 'a4005808298334', 'Nivea Deo Roll On Dry Male Impact 50 ml', 'Nivea Face & Beard Wash Deep 100G', NULL, NULL, NULL, 'NIVEA', NULL, NULL, 0.00, 255.00, 265.00, 'uts', 0.10, NULL, 'FMD', 'NIVEA', 'A2-02-04-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1864, 'a42179078', 'Nivea Deo Roll On Fresh Active Male 50 ml', 'Nivea Face & Beard Wash Deep 100G', NULL, NULL, NULL, 'NIVEA', NULL, NULL, 0.00, 255.00, 265.00, 'uts', 0.10, NULL, 'FMD', 'NIVEA', 'A2-02-05-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1865, 'a4005808304721', 'Nivea Deo Roll On Ext. White Male 50 ml', 'Nivea Face & Beard Wash Deep 100G', NULL, NULL, NULL, 'NIVEA', NULL, NULL, 0.00, 255.00, 265.00, 'uts', 0.10, NULL, 'FMD', 'NIVEA', 'A2-02-05-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17');
INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_description`, `category_id`, `category_name`, `subcategory_id`, `subcategory_name`, `delivery_target_days`, `discount`, `actual_price`, `sell_price`, `mr_price`, `unit_info`, `available_quantity`, `stock_quantity`, `brand_id`, `brand_name`, `product_location`, `primary_image`, `created_at`, `updated_at`) VALUES
(1866, 'a4005900517920', 'Nivea Men Deep Gel Shaving Foam 200 ml', 'Nivea Face & Beard Wash Deep 100G', NULL, NULL, NULL, 'NIVEA', NULL, NULL, 0.00, 489.00, 499.00, 'uts', 0.10, NULL, 'FMD', 'NIVEA', 'A2-03-03-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1867, 'a4005808817658', 'Nivea Shaving Foam Cool Kick 200 ml', 'Nivea Face & Beard Wash Deep 100G', NULL, NULL, NULL, 'NIVEA', NULL, NULL, 0.00, 489.00, 499.00, 'uts', 0.10, NULL, 'FMD', 'NIVEA', 'A2-03-03-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1868, 'a4005808888368', 'Nivea Face & Beard Wash Ext. White Foam 100 gms', 'Nivea Face & Beard Wash Deep 100G', NULL, NULL, NULL, 'NIVEA', NULL, NULL, 0.00, 440.00, 450.00, 'uts', 0.10, NULL, 'FMD', 'NIVEA', 'A2-02-02-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1869, 'a4005808813698', 'Nivea Face & Beard Wash Deep 100G', 'Nivea Face & Beard Wash Deep 100G', NULL, NULL, NULL, 'NIVEA', NULL, NULL, 0.00, 440.00, 450.00, 'uts', 0.10, NULL, 'FMD', 'NIVEA', 'A2-02-03-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1870, 'a4005808228010', 'Nivea Face Wash Aloe Vera 100 gms', 'Nivea Face & Beard Wash Deep 100G', NULL, NULL, NULL, 'NIVEA', NULL, NULL, 0.00, 440.00, 450.00, 'uts', 0.10, NULL, 'FMD', 'NIVEA', 'A2-03-03-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1871, 'a4005900088475', 'Nivea Deodorant Fresh Natural 150 ml', 'Nivea Face & Beard Wash Deep 100G', NULL, NULL, NULL, 'NIVEA', NULL, NULL, 0.00, 415.00, 425.00, 'uts', 0.10, NULL, 'FMD', 'NIVEA', 'A2-02-01-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1872, 'a4005808829675', 'Nivea Deodorant Extra Brightening 150 ml', 'Nivea Face & Beard Wash Deep 100G', NULL, NULL, NULL, 'NIVEA', NULL, NULL, 0.00, 415.00, 425.00, 'uts', 0.10, NULL, 'FMD', 'NIVEA', 'A2-02-01-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1873, 'a4005808837311', 'Nivea Deodorant Pearl & Beauty 150 ml', 'Nivea Face & Beard Wash Deep 100G', NULL, NULL, NULL, 'NIVEA', NULL, NULL, 0.00, 415.00, 425.00, 'uts', 0.10, NULL, 'FMD', 'NIVEA', 'A2-02-01-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1874, 'a738956290847', 'Hilife Pasta Macaroni 350 gms', 'Hilife Pasta Macaroni 350 gms', NULL, NULL, NULL, 'HILIFE', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'HILIFE', 'B1-01-03-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1875, 'a6761780442568', 'Hilife Soyabean 200 gms', 'Hilife Soyabean 200 gms', NULL, NULL, NULL, 'HILIFE', NULL, NULL, 0.00, 55.00, 65.00, 'uts', 0.10, NULL, 'FMD', 'HILIFE', 'B1-01-05-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1876, 'a665878242206', 'Hilife Tomato Ketchup 200 gms', 'Hilife Tomato Ketchup 200 gms', NULL, NULL, NULL, 'HILIFE', NULL, NULL, 0.00, 100.00, 110.00, 'uts', 0.10, NULL, 'FMD', 'HILIFE', 'B1-03-02-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1877, 'a738956291004', 'Hilife Rolled oats 400 gms', 'Hilife Rolled oats 400 gms', NULL, NULL, NULL, 'HILIFE', NULL, NULL, 0.00, 200.00, 210.00, 'uts', 0.10, NULL, 'FMD', 'HILIFE', 'A1-02-01-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1878, 'a738956290977', 'Hilife instant oats 400 gms', 'Hilife instant oats 400 gms', NULL, NULL, NULL, 'HILIFE', NULL, NULL, 0.00, 210.00, 220.00, 'uts', 0.10, NULL, 'FMD', 'HILIFE', 'A1-01-01-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1879, 'a8827558685594', 'Chia seeds 200 gms', 'Chia seeds 200 gms', NULL, NULL, NULL, 'HILIFE', NULL, NULL, 0.00, 325.00, 335.00, 'uts', 0.10, NULL, 'FMD', 'HILIFE', 'A2-05-05-07', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1880, 'a738956278425', 'Choco plus moon star 300 gms', 'Choco plus moon star 300 gms', NULL, NULL, NULL, 'HILIFE', NULL, NULL, 0.00, 285.00, 295.00, 'uts', 0.10, NULL, 'FMD', 'HILIFE', 'A1-01-01-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1881, 'a738956291264', 'Choco plus 300 gms', 'Choco plus 300 gms', NULL, NULL, NULL, 'HILIFE', NULL, NULL, 0.00, 285.00, 295.00, 'uts', 0.10, NULL, 'FMD', 'HILIFE', 'A1-01-01-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1882, 'a665878242237', 'Hilife cornflacks 450 gms', 'Hilife cornflacks 450 gms', NULL, NULL, NULL, 'HILIFE', NULL, NULL, 0.00, 210.00, 220.00, 'uts', 0.10, NULL, 'FMD', 'HILIFE', 'A1-02-01-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1883, 'a665878242244', 'Hilife Cornflakes 450 gms sugar', 'Hilife Cornflakes 450 gms sugar', NULL, NULL, NULL, 'HILIFE', NULL, NULL, 0.00, 210.00, 220.00, 'uts', 0.10, NULL, 'FMD', 'HILIFE', 'A1-02-01-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1884, 'a9878672898773', 'Hilife kurmkurm chiura 700 gms', 'Hilife kurmkurm chiura 700 gms', NULL, NULL, NULL, 'HILIFE', NULL, NULL, 0.00, 115.00, 125.00, 'uts', 0.10, NULL, 'FMD', 'HILIFE', 'B1-01-01-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1885, 'a665878241803', 'Hilife kurumkurum chiura 450 gms', 'Hilife kurumkurum chiura 450 gms', NULL, NULL, NULL, 'HILIFE', NULL, NULL, 0.00, 75.00, 85.00, 'uts', 0.10, NULL, 'FMD', 'HILIFE', 'B1-01-01-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1886, 'a7738927472756', 'Hilife kurumkurum chiura 1kg', 'Hilife kurumkurum chiura 1kg', NULL, NULL, NULL, 'HILIFE', NULL, NULL, 0.00, 160.00, 170.00, 'uts', 0.10, NULL, 'FMD', 'HILIFE', 'B1-01-01-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1887, 'a8901396350101', 'Dettol Antiseptic Liquid 60 ml', 'Dettol Antiseptic Liquid 60 ml', NULL, NULL, NULL, 'RBI', NULL, NULL, 0.00, 54.00, 64.38, 'uts', 0.10, NULL, 'FMD', 'RBI', 'A1-07-03-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1888, 'a8901396350200', 'Dettol Antiseptic Liquid 125 ml', 'Dettol Antiseptic Liquid 125 ml', NULL, NULL, NULL, 'RBI', NULL, NULL, 0.00, 107.00, 117.12, 'uts', 0.10, NULL, 'FMD', 'RBI', 'A1-07-03-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1889, 'a8901396381501', 'Dettol Hand Sanitizer 50 ml', 'Dettol Hand Sanitizer 50 ml', NULL, NULL, NULL, 'RBI', NULL, NULL, 0.00, 30.00, 40.00, 'uts', 0.10, NULL, 'FMD', 'RBI', 'A1-07-05-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1890, 'a8901396389675', 'Dettol Liquid Soap 675 ml', 'Dettol Liquid Soap 675 ml', NULL, NULL, NULL, 'RBI', NULL, NULL, 0.00, 148.00, 158.40, 'uts', 0.10, NULL, 'FMD', 'RBI', 'A1-07-05-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1891, 'a8901396387701', 'Dettol Liquid Soap 900 ml', 'Dettol Liquid Soap 900 ml', NULL, NULL, NULL, 'RBI', NULL, NULL, 0.00, 228.00, 238.40, 'uts', 0.10, NULL, 'FMD', 'RBI', 'A1-07-05-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1892, 'a8901396389309', 'Dettol Soap 60 gm*4 Multipack', 'Dettol Soap 60 gm*4 Multipack', NULL, NULL, NULL, 'RBI', NULL, NULL, 0.00, 118.00, 128.00, 'uts', 0.10, NULL, 'FMD', 'RBI', 'A1-07-03-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1893, 'a8901396389705', 'Moov Spray 35 gm+15 gm', 'Moov Spray 35 gm+15 gm', NULL, NULL, NULL, 'RBI', NULL, NULL, 0.00, 287.00, 297.60, 'uts', 0.10, NULL, 'FMD', 'RBI', 'A1-07-04-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1894, 'a8901396151005', 'Harpic Toilet Cleaner 500 ml', 'Harpic Toilet Cleaner 500 ml', NULL, NULL, NULL, 'RBI', NULL, NULL, 0.00, 158.00, 168.00, 'uts', 0.10, NULL, 'FMD', 'RBI', 'A1-11-03-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1895, 'a8901396174400', 'Harpic Toilet Cleaner 900 ml', 'Harpic Toilet Cleaner 900 ml', NULL, NULL, NULL, 'RBI', NULL, NULL, 0.00, 290.00, 300.80, 'uts', 0.10, NULL, 'FMD', 'RBI', 'A1-11-03-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1896, 'a8901396153306', 'Harpic Bathroom Cleaner 500 ml', 'Harpic Bathroom Cleaner 500 ml', NULL, NULL, NULL, 'RBI', NULL, NULL, 0.00, 166.00, 176.00, 'uts', 0.10, NULL, 'FMD', 'RBI', 'A1-11-03-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1897, 'a8901396155805', 'Harpic Flushmatic 100 gm', 'Harpic Flushmatic 100 gm', NULL, NULL, NULL, 'RBI', NULL, NULL, 0.00, 265.00, 275.20, 'uts', 0.10, NULL, 'FMD', 'RBI', 'A1-10-03-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1898, 'a8901396112006', 'Lizol DFC 500 ml', 'Lizol DFC 500 ml', NULL, NULL, NULL, 'RBI', NULL, NULL, 0.00, 175.00, 185.60, 'uts', 0.10, NULL, 'FMD', 'RBI', 'A1-11-02-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1899, 'a8901396139003', 'Lizol DFC 975 ml', 'Lizol DFC 975 ml', NULL, NULL, NULL, 'RBI', NULL, NULL, 0.00, 343.00, 353.60, 'uts', 0.10, NULL, 'FMD', 'RBI', 'A1-11-02-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1900, 'a8901396521501', 'Mortein Aerosol CIK 416ML', 'Mortein Aerosol CIK 416ML', NULL, NULL, NULL, 'RBI', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'RBI', 'A1-11-05-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1901, 'a8901396476146', 'Colin Trigger 500 ml', 'Colin Trigger 500 ml', NULL, NULL, NULL, 'RBI', NULL, NULL, 0.00, 164.00, 174.40, 'uts', 0.10, NULL, 'FMD', 'RBI', 'A1-11-02-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1902, 'a8901396323372', 'Dettol Liquid Soap Skin Care 200 ml Pump+175ml Pouch', 'Dettol Liquid Soap Skin Care 200 ml Pump+175ml Pouch', NULL, NULL, NULL, 'RBI', NULL, NULL, 0.00, 148.00, 158.40, 'uts', 0.10, NULL, 'FMD', 'RBI', 'A1-07-02-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1903, 'a8901396324584', 'Dettol Liquid Soap Original 200 ml Pump+175ml Pouch', 'Dettol Liquid Soap Original 200 ml Pump+175ml Pouch', NULL, NULL, NULL, 'RBI', NULL, NULL, 0.00, 148.00, 158.40, 'uts', 0.10, NULL, 'FMD', 'RBI', 'A1-07-01-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1904, 'a8901396388388', 'Dettol Liquid Soap Skin Care 175 ml Pouch Pack of 3', 'Dettol Liquid Soap Skin Care 175 ml Pouch Pack of 3', NULL, NULL, NULL, 'RBI', NULL, NULL, 0.00, 191.00, 201.60, 'uts', 0.10, NULL, 'FMD', 'RBI', 'A1-07-02-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1905, 'a8901396388371', 'Dettol Liquid Soap Original 175 ml Pouch Pack of 3', 'Dettol Liquid Soap Original 175 ml Pouch Pack of 3', NULL, NULL, NULL, 'RBI', NULL, NULL, 0.00, 191.00, 201.60, 'uts', 0.10, NULL, 'FMD', 'RBI', 'A1-07-02-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1906, 'a8901396704201', 'Durex Air Ultra Thin 3s', 'Durex Air Ultra Thin 3s', NULL, NULL, NULL, 'RBI', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'RBI', 'A1-07-04-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1907, 'a8901396705208', 'Durex Mutual Climax 3s', 'Durex Mutual Climax 3s', NULL, NULL, NULL, 'RBI', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'RBI', 'A1-07-04-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1908, 'a8904004402957', 'Haldirams Moong Papad 170 gms', 'Haldirams Moong Papad 170 gms', NULL, NULL, NULL, 'HALDIRAMS', NULL, NULL, 0.00, 115.00, 125.00, 'uts', 0.10, NULL, 'FMD', 'HALDIRAMS', 'B1-04-05-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1909, 'a8904004403312', 'Haldirams Punjabi Papad 170 gms', 'Haldirams Punjabi Papad 170 gms', NULL, NULL, NULL, 'HALDIRAMS', NULL, NULL, 0.00, 115.00, 125.00, 'uts', 0.10, NULL, 'FMD', 'HALDIRAMS', 'B1-04-05-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1910, 'a8904004400038', 'Haldirams Bhujia Sev 350 gms', 'Haldirams Bhujia Sev 350 gms', NULL, NULL, NULL, 'HALDIRAMS', NULL, NULL, 0.00, 250.00, 260.00, 'uts', 0.10, NULL, 'FMD', 'HALDIRAMS', 'B2-09-04-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1911, 'a8904004400977', 'Haldirams Mixture 400 gms', 'Haldirams Mixture 400 gms', NULL, NULL, NULL, 'HALDIRAMS', NULL, NULL, 0.00, 245.00, 255.00, 'uts', 0.10, NULL, 'FMD', 'HALDIRAMS', 'B2-07-05-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1912, 'a8904004401134', 'Haldirams Khatta Meetha 350 gms', 'Haldirams Khatta Meetha 350 gms', NULL, NULL, NULL, 'HALDIRAMS', NULL, NULL, 0.00, 240.00, 250.00, 'uts', 0.10, NULL, 'FMD', 'HALDIRAMS', 'B2-07-03-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1913, 'a8904004400779', 'Haldirams Aloo Bhujia 350 gms', 'Haldirams Aloo Bhujia 350 gms', NULL, NULL, NULL, 'HALDIRAMS', NULL, NULL, 0.00, 240.00, 250.00, 'uts', 0.10, NULL, 'FMD', 'HALDIRAMS', 'B2-07-04-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1914, 'a8904004402063', 'Haldirams All In One 350 gms', 'Haldirams All In One 350 gms', NULL, NULL, NULL, 'HALDIRAMS', NULL, NULL, 0.00, 240.00, 250.00, 'uts', 0.10, NULL, 'FMD', 'HALDIRAMS', 'B2-07-04-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1915, 'a8904004403749', 'Haldirams Moong Dal 350 gms', 'Haldirams Moong Dal 350 gms', NULL, NULL, NULL, 'HALDIRAMS', NULL, NULL, 0.00, 271.00, 281.00, 'uts', 0.10, NULL, 'FMD', 'HALDIRAMS', 'B2-09-04-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1916, 'a8904004404760', 'Haldirams Chatpata Dal 200 gms', 'Haldirams Chatpata Dal 200 gms', NULL, NULL, NULL, 'HALDIRAMS', NULL, NULL, 0.00, 146.00, 156.00, 'uts', 0.10, NULL, 'FMD', 'HALDIRAMS', 'B2-07-02-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1917, 'a8904004401967', 'Haldirams Cornflakes Mix 350 gms', 'Haldirams Cornflakes Mix 350 gms', NULL, NULL, NULL, 'HALDIRAMS', NULL, NULL, 0.00, 386.00, 396.00, 'uts', 0.10, NULL, 'FMD', 'HALDIRAMS', 'B2-07-05-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1918, 'a8904004401660', 'Haldirams Kaju Kasmiri Dalmoth 200 gms', 'Haldirams Kaju Kasmiri Dalmoth 200 gms', NULL, NULL, NULL, 'HALDIRAMS', NULL, NULL, 0.00, 250.00, 260.00, 'uts', 0.10, NULL, 'FMD', 'HALDIRAMS', 'B2-07-03-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1919, 'a8904004401875', 'Haldirams Chana Nut 200 gms', 'Haldirams Chana Nut 200 gms', NULL, NULL, NULL, 'HALDIRAMS', NULL, NULL, 0.00, 146.00, 156.00, 'uts', 0.10, NULL, 'FMD', 'HALDIRAMS', 'B2-07-03-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1920, 'a8904004403633', 'Haldirams Tasty Nut 200 gms', 'Haldirams Tasty Nut 200 gms', NULL, NULL, NULL, 'HALDIRAMS', NULL, NULL, 0.00, 146.00, 156.00, 'uts', 0.10, NULL, 'FMD', 'HALDIRAMS', 'B2-07-02-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1921, 'a8904004404647', 'Haldirams Salted, Peanut 200 gms', 'Haldirams Salted, Peanut 200 gms', NULL, NULL, NULL, 'HALDIRAMS', NULL, NULL, 0.00, 151.00, 161.00, 'uts', 0.10, NULL, 'FMD', 'HALDIRAMS', 'B2-09-05-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1922, 'a8904004400298', 'Haldirams Punjabi Tadka 200 gms', 'Haldirams Punjabi Tadka 200 gms', NULL, NULL, NULL, 'HALDIRAMS', NULL, NULL, 0.00, 146.00, 156.00, 'uts', 0.10, NULL, 'FMD', 'HALDIRAMS', 'B2-07-02-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1923, 'a8904004402834', 'Haldirams Pancharatan Mixture 200 gms', 'Haldirams Pancharatan Mixture 200 gms', NULL, NULL, NULL, 'HALDIRAMS', NULL, NULL, 0.00, 261.00, 271.00, 'uts', 0.10, NULL, 'FMD', 'HALDIRAMS', 'B2-09-04-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1924, 'a8904004412956', 'Haldirams Navaratan Mix 200 gms', 'Haldirams Navaratan Mix 200 gms', NULL, NULL, NULL, 'HALDIRAMS', NULL, NULL, 0.00, 177.00, 187.00, 'uts', 0.10, NULL, 'FMD', 'HALDIRAMS', 'B2-07-04-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1925, 'a8904004405323', 'Haldirams Soan Papdi 500 gms', 'Haldirams Soan Papdi 500 gms', NULL, NULL, NULL, 'HALDIRAMS', NULL, NULL, 0.00, 563.00, 573.00, 'uts', 0.10, NULL, 'FMD', 'HALDIRAMS', 'B2-09-05-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1926, 'a8901560000443', 'Nilons Mix Pickle 400 gms', 'Nilons Mix Pickle 400 gms', NULL, NULL, NULL, 'NILONS', NULL, NULL, 0.00, 250.00, 260.00, 'uts', 0.10, NULL, 'FMD', 'NILONS', 'B1-05-05-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1927, 'a8901560000412', 'Nilons Mango Pickle 400 gms', 'Nilons Mango Pickle 400 gms', NULL, NULL, NULL, 'NILONS', NULL, NULL, 0.00, 250.00, 260.00, 'uts', 0.10, NULL, 'FMD', 'NILONS', 'B1-05-05-04', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1928, 'a8901560000436', 'Nilons Chilli Pickle 400 gms', 'Nilons Chilli Pickle 400 gms', NULL, NULL, NULL, 'NILONS', NULL, NULL, 0.00, 250.00, 260.00, 'uts', 0.10, NULL, 'FMD', 'NILONS', 'B1-05-05-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1929, 'a8901560000429', 'Nilons Lime Pickle 400 gms', 'Nilons Lime Pickle 400 gms', NULL, NULL, NULL, 'NILONS', NULL, NULL, 0.00, 250.00, 260.00, 'uts', 0.10, NULL, 'FMD', 'NILONS', 'B1-05-05-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1930, 'a8901560230314', 'Nilons Schezwan Chutney 250 gms', 'Nilons Schezwan Chutney 250 gms', NULL, NULL, NULL, 'NILONS', NULL, NULL, 0.00, 188.00, 198.00, 'uts', 0.10, NULL, 'FMD', 'NILONS', 'B1-05-04-04', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1931, 'a8901560690354', 'Nilons Pizza Pasta Sauce 250 gms', 'Nilons Pizza Pasta Sauce 250 gms', NULL, NULL, NULL, 'NILONS', NULL, NULL, 0.00, 240.00, 250.00, 'uts', 0.10, NULL, 'FMD', 'NILONS', 'B1-05-04-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1932, 'a8901560270242', 'Nilons Ginger Garlic Paste 180 gms', 'Nilons Ginger Garlic Paste 180 gms', NULL, NULL, NULL, 'NILONS', NULL, NULL, 0.00, 94.00, 104.00, 'uts', 0.10, NULL, 'FMD', 'NILONS', 'B1-05-04-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1933, 'a8901560603927', 'Nilons Soya Chunks 160 gms', 'Nilons Soya Chunks 160 gms', NULL, NULL, NULL, 'NILONS', NULL, NULL, 0.00, 105.00, 115.00, 'uts', 0.10, NULL, 'FMD', 'NILONS', 'B1-01-05-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1934, 'a8901786411009', 'Everest Kashmiri Mirch (100 gms)', 'Everest Kashmiri Mirch (100 gms)', NULL, NULL, NULL, 'EVEREST', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'EVEREST', 'A2-05-07-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1935, 'a8901786280254', 'Everest Kasuri Methi (25 gms)', 'Everest Kasuri Methi (25 gms)', NULL, NULL, NULL, 'EVEREST', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'EVEREST', 'A2-05-08-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1936, 'a8901786171002', 'Everest Tandoori Masala (100 gms)', 'Everest Tandoori Masala (100 gms)', NULL, NULL, NULL, 'EVEREST', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'EVEREST', 'A2-05-08-04', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1937, 'a8901786071005', 'Everest Pav Bhaji Masala [100 gms]', 'Everest Pav Bhaji Masala [100 gms]', NULL, NULL, NULL, 'EVEREST', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'EVEREST', 'A2-05-08-06', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1938, 'a8901786061006', 'Everest Chat Masala (100 gms)', 'Everest Chat Masala (100 gms)', NULL, NULL, NULL, 'EVEREST', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'EVEREST', 'A2-05-08-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1939, 'a8901786271009', 'Everest Dry Mango Powder (100 gms)', 'Everest Dry Mango Powder (100 gms)', NULL, NULL, NULL, 'EVEREST', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'EVEREST', 'A2-05-07-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1940, 'a8901786091003', 'Everest Chhole Masala (100 Gms)', 'Everest Chhole Masala (100 Gms)', NULL, NULL, NULL, 'EVEREST', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'EVEREST', 'A2-05-08-05', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1941, 'a8901786121007', 'Everest Kitchen King (100 gms)', 'Everest Kitchen King (100 gms)', NULL, NULL, NULL, 'EVEREST', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'EVEREST', 'A2-05-08-08', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1942, 'a8901786081004', 'Everest Sambar Masala (100 gms)', 'Everest Sambar Masala (100 gms)', NULL, NULL, NULL, 'EVEREST', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'EVEREST', 'A2-05-08-07', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1943, 'a8901786561001', 'Everest Momo Masala (100 gms)', 'Everest Momo Masala (100 gms)', NULL, NULL, NULL, 'EVEREST', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'EVEREST', 'A2-05-08-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1944, 'a8906039330021', 'BMC Roghni Mirch (100 gms)', 'BMC Roghni Mirch (100 gms)', NULL, NULL, NULL, 'BMC', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'BMC', 'A2-05-07-08', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1945, 'a8906039330182', 'BMC Garam Masala (100 gms)', 'BMC Garam Masala (100 gms)', NULL, NULL, NULL, 'BMC', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'BMC', 'A2-05-07-07', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1946, 'a8906039330083', 'BMC Chat Masala (100 gms)', 'BMC Chat Masala (100 gms)', NULL, NULL, NULL, 'BMC', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'BMC', 'A2-05-07-04', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1947, 'a8906039330144', 'BMC Meat Masala (50 gms)', 'BMC Meat Masala (50 gms)', NULL, NULL, NULL, 'BMC', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'BMC', 'A2-05-06-07', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1948, 'a8906039330175', 'BMC Chicken Masala (50gms)', 'BMC Chicken Masala (50gms)', NULL, NULL, NULL, 'BMC', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'BMC', 'A2-05-06-08', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1949, 'a8906039330397', 'BMC Curry Masala (100 gms)', 'BMC Curry Masala (100 gms)', NULL, NULL, NULL, 'BMC', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'BMC', 'A2-05-07-06', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1950, 'a8906039330113', 'BMC Momo Masala (100 gms)', 'BMC Momo Masala (100 gms)', NULL, NULL, NULL, 'BMC', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'BMC', 'A2-05-07-05', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1951, 'a8908002900309', 'Tokla Tea Bag (200 gms)', 'Tokla Tea Bag (200 gms)', NULL, NULL, NULL, 'TOKLA', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'TOKLA', 'A2-04-03-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1952, 'a8908002900873', 'Tokla Gold Tea Bag (200 gms)', 'Tokla Gold Tea Bag (200 gms)', NULL, NULL, NULL, 'TOKLA', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'TOKLA', 'A2-04-03-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1953, 'a8908002900132', 'Tokla Dust Tea (1 kg)', 'Tokla Dust Tea (1 kg)', NULL, NULL, NULL, 'TOKLA', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'TOKLA', 'A2-04-04-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1954, 'a8908002900279', 'Tokla Gold Dust Tea (1 kg)', 'Tokla Gold Dust Tea (1 kg)', NULL, NULL, NULL, 'TOKLA', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'TOKLA', 'A2-04-04-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1955, 'a8908002900798', 'Tokla Masala Tea (1 kg)', 'Tokla Masala Tea (1 kg)', NULL, NULL, NULL, 'TOKLA', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'TOKLA', 'A2-04-04-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1956, 'a8901821008027', 'Druk Vinegar (700 ml)', 'Druk Vinegar (700 ml)', NULL, NULL, NULL, 'DRUK', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'DRUK', 'B1-02-02-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1957, 'a8901821002247', 'Druk Orange Marmalade Jam (500 gms)', 'Druk Orange Marmalade Jam (500 gms)', NULL, NULL, NULL, 'DRUK', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'DRUK', 'B2-01-03-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1958, 'a8901821002186', 'Druk Apricot Jam (500 gms)', 'Druk Apricot Jam (500 gms)', NULL, NULL, NULL, 'DRUK', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'DRUK', 'B2-01-03-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1959, 'a8901821002209', 'Druk Mixed Fruit Jam (500 gms)', 'Druk Mixed Fruit Jam (500 gms)', NULL, NULL, NULL, 'DRUK', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'DRUK', 'B2-01-03-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1960, 'a8901821002179', 'Druk Strawberry Jam (500 gms)', 'Druk Strawberry Jam (500 gms)', NULL, NULL, NULL, 'DRUK', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'DRUK', 'B2-01-03-04', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1961, 'a8901821003022', 'Druk Pineapple Slices In Syrup (850 gms)', 'Druk Pineapple Slices In Syrup (850 gms)', NULL, NULL, NULL, 'DRUK', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'DRUK', 'B2-01-06-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1962, 'a8901821005415', 'Druk Mango Slice (850 gms)', 'Druk Mango Slice (850 gms)', NULL, NULL, NULL, 'DRUK', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'DRUK', 'B2-01-06-04', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1963, 'a8901821005217', 'Druk Bamboo Shoot (450 gms)', 'Druk Bamboo Shoot (450 gms)', NULL, NULL, NULL, 'DRUK', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'DRUK', 'B2-01-06-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1964, 'a810014610856', 'Palermo Olive Oil Pomace (1 ltr)', 'Palermo Olive Oil Pomace (1 ltr)', NULL, NULL, NULL, 'PALEMRO', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'PALEMRO', 'B1-02-04-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1965, 'a6281063461562', 'Orient Garden Strawberry Syrup (623 gms)', 'Orient Garden Strawberry Syrup (623 gms)', NULL, NULL, NULL, 'ORIENT', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'ORIENT', 'B1-02-03-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1966, 'a6281063461586', 'Orient Garden Chocolate Syrup (623 ml)', 'Orient Garden Chocolate Syrup (623 ml)', NULL, NULL, NULL, 'ORIENT', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'ORIENT', 'B1-02-03-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1967, 'a8850511321741', 'Roza Sweet Chilli Sauce (320 gms)', 'Roza Sweet Chilli Sauce (320 gms)', NULL, NULL, NULL, 'ROZA', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'ROZA', 'B1-03-02-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1968, 'a9556040082007', 'Blue Cow Condensed Milk (390 gms)', 'Blue Cow Condensed Milk (390 gms)', NULL, NULL, NULL, 'BLUE COW', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'BLUE COW', 'B2-01-08-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1969, 'a87361320114', 'Moby Tuna in Vegetable Oil (125 gms)', 'Moby Tuna in Vegetable Oil (125 gms)', NULL, NULL, NULL, 'MOBY', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'MOBY', 'B2-01-07-04', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1970, 'a8850511211189', 'Roza Tuna Flakes In Vegetable Oil (185 gms)', 'Roza Tuna Flakes In Vegetable Oil (185 gms)', NULL, NULL, NULL, 'ROZA', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'ROZA', 'B2-01-07-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1971, 'a8850511211158', 'Roza Tuna Chunk In Brine (185 gms)', 'Roza Tuna Chunk In Brine (185 gms)', NULL, NULL, NULL, 'ROZA', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'ROZA', 'B2-01-07-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1972, 'a44738018432', 'Chaokoh Coconut Milk (400 ml)', 'Chaokoh Coconut Milk (400 ml)', NULL, NULL, NULL, 'CHAOKOH', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'CHAOKOH', 'B2-01-08-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1973, 'a8850367100071', 'Chaokoh Coconut Cream (400 Ml)', 'Chaokoh Coconut Cream (400 Ml)', NULL, NULL, NULL, 'CHAOKOH', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'CHAOKOH', 'B2-01-08-04', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1974, 'a8901058001181', 'Maggi Ketchup (1 kgs)', 'Maggi Ketchup (1 kgs)', NULL, NULL, NULL, 'MAGGI', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'MAGGI', 'B1-02-01-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1975, 'a8901808000105', 'Weikfield Drinking Chocolate (500 gms)', 'Weikfield Drinking Chocolate (500 gms)', NULL, NULL, NULL, 'WEIKFIELD', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'WEIKFIELD', 'B1-02-05-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1976, 'a11210000018', 'American Tabasco Sauce (60 gms)', 'American Tabasco Sauce (60 gms)', NULL, NULL, NULL, 'TABASCO', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'TABASCO', 'B1-03-02-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1977, 'a8850038400080', 'Mak Oyster Sauce (650 ml)', 'Mak Oyster Sauce (650 ml)', NULL, NULL, NULL, 'MAKEREL', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'MAKEREL', 'B1-02-01-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1978, 'a717273504516', 'American Garden Mayonnaise (887 ml)', 'American Garden Mayonnaise (887 ml)', NULL, NULL, NULL, 'AMERICAN GARDEN', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'AMERICAN GARDEN', 'B1-03-03-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1979, 'a6281063222118', 'Orient Garden Mayonnaise (1 kg)', 'Orient Garden Mayonnaise (1 kg)', NULL, NULL, NULL, 'ORIENT', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'ORIENT', 'B1-03-03-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1980, 'a8906020212114', 'Natraj Hing (25 gms)', 'Natraj Hing (25 gms)', NULL, NULL, NULL, 'NATRAJ', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'NATRAJ', 'A2-05-05-08', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1981, 'a8906000120279', 'Rakura Organic Green Tea (25 TB)', 'Rakura Organic Green Tea (25 TB)', NULL, NULL, NULL, 'RAKURA', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'RAKURA', 'A2-04-05-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1982, 'a8410159006662', 'Figaro Black Olives (340 gms)', 'Figaro Black Olives (340 gms)', NULL, NULL, NULL, 'FIGARO', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'FIGARO', 'B1-02-02-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1983, 'a9504000352165', 'Imp Prawn Crackers (100gms)', 'Imp Prawn Crackers (100gms)', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', NULL, 'B1-01-04-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1984, 'a8696561123450', 'Chocovella Chocolate Jam (300 gms)', 'Chocovella Chocolate Jam (300 gms)', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', NULL, 'B2-01-05-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1985, 'a8850521950344', 'How How Rice Stick (500 gms)', 'How How Rice Stick (500 gms)', NULL, NULL, NULL, 'HOW HOW', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'HOW HOW', 'B1-01-03-01', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1986, 'a8001200139196', 'Agnesi Penne Pasta (500 gms)', 'Agnesi Penne Pasta (500 gms)', NULL, NULL, NULL, 'AGNESI', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'AGNESI', 'B1-01-02-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1987, 'a8001200139035', 'Agnesi Spaghetti (500 gms)', 'Agnesi Spaghetti (500 gms)', NULL, NULL, NULL, 'AGNESI', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'AGNESI', 'B1-01-02-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1988, 'a8001200025505', 'Agnesi Fusilli Pasta (500 gms)', 'Agnesi Fusilli Pasta (500 gms)', NULL, NULL, NULL, 'AGNESI', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'AGNESI', 'B1-01-03-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1989, 'a8901058903171', 'Nestle Kitkat (37.3 gms)', 'Nestle Kitkat (37.3 gms)', NULL, NULL, NULL, 'NESTLE', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'NESTLE', 'B2-08-05-02', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17'),
(1990, 'a745110035374', 'Gyan Soya chuncks 200 gms', 'Gyan Soya chuncks 200 gms', NULL, NULL, NULL, 'GYAN', NULL, NULL, 0.00, 90.00, 100.00, 'uts', 0.10, NULL, 'FMD', 'GYAN', 'B1-01-05-03', NULL, '2024-10-02 16:47:17', '2024-10-02 16:47:17');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `image_path` varchar(512) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_code`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 'FMD177357', 'productimages/FMD177357/7528569220099294281145799014285214257309109.png', '2024-09-16 03:45:35', '2024-09-16 03:45:35'),
(2, 'FMD230989', 'productimages/FMD230989/263077814244302990933519472562788611160543.png', '2024-09-16 03:45:36', '2024-09-16 03:45:36'),
(3, 'FMD230989', 'productimages/FMD230989/421723784462_category.jpg', '2024-09-16 03:45:36', '2024-09-16 03:45:36'),
(4, 'FMD177357', 'productimages/FMD177357/New-Born-Care.png', '2024-09-16 03:51:39', '2024-09-16 03:51:39'),
(5, 'FMD195308', 'productimages/FMD195308/oJji7o8v1630167044.jpg', '2024-09-18 08:37:31', '2024-09-18 08:37:31'),
(6, 'FMD194679', 'productimages/FMD194679/Drumstick-lollipops_web1-750x560.jpg', '2024-10-01 11:59:10', '2024-10-01 11:59:10'),
(7, 'FMD194679', 'productimages/FMD194679/IMG_8944-scaled.jpeg', '2024-10-01 12:03:44', '2024-10-01 12:03:44'),
(8, 'FMD216621', 'productimages/FMD216621/002.png', '2024-10-01 12:17:53', '2024-10-01 12:17:53'),
(10, 'FMD302518', 'productimages/FMD302518/instant-pot-chicken-wings-9.jpg', '2024-10-01 12:25:01', '2024-10-01 12:25:01'),
(11, 'FMD199195', 'productimages/FMD199195/exploring-delicious-world-butter-cookies-isolated-transparent-background_995162-9140.jpg', '2024-10-01 14:04:24', '2024-10-01 14:04:24'),
(12, 'FMD309499', 'productimages/FMD309499/bee98725-14e9-4b82-a8e8-b685becfff8b_425x425.JPG', '2024-10-01 14:04:25', '2024-10-01 14:04:25'),
(13, 'FMD219796', 'productimages/FMD219796/WOWArtboard-3-copy-1024x1024.png', '2024-10-01 14:22:19', '2024-10-01 14:22:19'),
(14, 'FMD319022', 'productimages/FMD319022/6bd68b83f2b7e4e30b09a07efaf03717.jpg', '2024-10-01 14:22:20', '2024-10-01 14:22:20'),
(15, 'FMD219798', 'productimages/FMD219798/CheesePopcorn.png', '2024-10-01 14:22:21', '2024-10-01 14:22:21'),
(16, 'FMD376665', 'productimages/FMD376665/sweet-corn.jpg', '2024-10-01 14:46:12', '2024-10-01 14:46:12'),
(17, 'FMD174764', 'productimages/FMD174764/DibiMilanoFaceLiftCreatorSuperIntensiveRichCream-50ml-1-800x801.jpg', '2024-10-01 14:46:12', '2024-10-01 14:46:12'),
(18, 'FMD334071', 'productimages/FMD334071/fresh-chicken-leg-500x500.jpg', '2024-10-03 12:05:40', '2024-10-03 12:05:40'),
(19, 'FMD219797', 'productimages/FMD219797/Caramel.png', '2024-10-03 12:05:41', '2024-10-03 12:05:41'),
(20, 'FMD325070', 'productimages/FMD325070/40211192-2_2-b-fizz-drink.jpg', '2024-10-03 12:05:42', '2024-10-03 12:05:42'),
(21, 'FMD192230', 'productimages/FMD192230/1680247824_8514.gif', '2024-10-03 12:05:43', '2024-10-03 12:05:43'),
(22, 'FMD189339', 'productimages/FMD189339/novus20220516.1652360849.SNCPSG10.obj.0.1.jpg.oe.jpg.pf.jpg.350nowm.jpg.350x.jpg', '2024-10-03 12:05:43', '2024-10-03 12:05:43'),
(23, 'FMD174765', 'productimages/FMD174765/intensive-repair-conditioner.jpg', '2024-10-03 12:05:43', '2024-10-03 12:05:43'),
(24, 'FMD219799', 'productimages/FMD219799/Caramel.png', '2024-10-03 12:05:44', '2024-10-03 12:05:44'),
(25, 'FMD217021', 'productimages/FMD217021/30005539_2-cornitos-nacho-chips-wasabi.jpg', '2024-10-03 12:05:45', '2024-10-03 12:05:45'),
(26, 'FMD202095', 'productimages/FMD202095/amul-butter-100-g-carton-product-images-o490001387-p490001387-0-202203170403.jpg', '2024-10-03 12:52:09', '2024-10-03 12:52:09'),
(27, 'FMD192231', 'productimages/FMD192231/1275940.jpg', '2024-10-03 12:52:09', '2024-10-03 12:52:09'),
(28, 'FMD215883', 'productimages/FMD215883/ButterSalt.png', '2024-10-03 12:52:10', '2024-10-03 12:52:10'),
(29, 'FMD215884', 'productimages/FMD215884/000.png', '2024-10-03 12:52:11', '2024-10-03 12:52:11'),
(30, 'FMD189233', 'productimages/FMD189233/buttertub200.jpg.439cdeccf9.999x600x550.jpg', '2024-10-03 12:52:12', '2024-10-03 12:52:12'),
(31, 'FMD215885', 'productimages/FMD215885/banner_02.jpg', '2024-10-03 12:52:13', '2024-10-03 12:52:13'),
(32, 'FMD199589', 'productimages/FMD199589/images-flavours-flavours-20for-20lightbox-4salted-bolted-500x500.png', '2024-10-03 13:52:19', '2024-10-03 13:52:19'),
(33, 'FMD358292', 'productimages/FMD358292/fresh-bottle-gourd-500x500.jpg', '2024-10-03 13:52:19', '2024-10-03 13:52:19'),
(34, 'FMD174766', 'productimages/FMD174766/Nourishing-conditioner-1000.png', '2024-10-03 13:52:20', '2024-10-03 13:52:20'),
(35, 'FMD219800', 'productimages/FMD219800/1416340583-wow-caramel-popcorn-50g.jpg', '2024-10-03 13:52:21', '2024-10-03 13:52:21'),
(36, 'FMD174288', 'productimages/FMD174288/yak-tomme3.jpg', '2024-10-03 13:52:22', '2024-10-03 13:52:22'),
(37, 'FMD217016', 'productimages/FMD217016/GAIA-GREEN-TEA-JASMINE-25S.jpg', '2024-10-03 13:52:23', '2024-10-03 13:52:23'),
(38, 'FMD174287', 'productimages/FMD174287/wheel-cheese-isolated-sliced-wheel-cheese-isolated-over-white-background-108146758.jpg', '2024-10-03 13:52:23', '2024-10-03 13:52:23'),
(39, 'FMD199589', 'productimages/FMD199589/images-flavours-flavours-20for-20lightbox-4salted-bolted-500x500.png', '2024-10-03 13:52:23', '2024-10-03 13:52:23'),
(40, 'FMD358292', 'productimages/FMD358292/fresh-bottle-gourd-500x500.jpg', '2024-10-03 13:52:23', '2024-10-03 13:52:23'),
(41, 'FMD174766', 'productimages/FMD174766/Nourishing-conditioner-1000.png', '2024-10-03 13:52:23', '2024-10-03 13:52:23'),
(42, 'FMD174290', 'productimages/FMD174290/Himalayan-Belkot-Hard-Cheese-200G.jpg', '2024-10-03 13:52:24', '2024-10-03 13:52:24'),
(43, 'FMD219800', 'productimages/FMD219800/1416340583-wow-caramel-popcorn-50g.jpg', '2024-10-03 13:52:24', '2024-10-03 13:52:24'),
(44, 'FMD174288', 'productimages/FMD174288/yak-tomme3.jpg', '2024-10-03 13:52:26', '2024-10-03 13:52:26'),
(45, 'FMD217016', 'productimages/FMD217016/GAIA-GREEN-TEA-JASMINE-25S.jpg', '2024-10-03 13:52:27', '2024-10-03 13:52:27'),
(46, 'FMD174287', 'productimages/FMD174287/wheel-cheese-isolated-sliced-wheel-cheese-isolated-over-white-background-108146758.jpg', '2024-10-03 13:52:27', '2024-10-03 13:52:27'),
(47, 'FMD174290', 'productimages/FMD174290/Himalayan-Belkot-Hard-Cheese-200G.jpg', '2024-10-03 13:52:29', '2024-10-03 13:52:29'),
(48, 'FMD215652', 'productimages/FMD215652/a29b2c6dc18be3b1131e0869344a3630.jpg', '2024-10-03 17:28:08', '2024-10-03 17:28:08'),
(49, 'FMD174289', 'productimages/FMD174289/Himalayan-Yak-Gaurishankar-Hard-Cheese-200G.jpg', '2024-10-03 17:28:10', '2024-10-03 17:28:10'),
(50, 'FMD174291', 'productimages/FMD174291/00118388500920____1__600x600.jpg', '2024-10-03 17:28:10', '2024-10-03 17:28:10'),
(51, 'FMD215637', 'productimages/FMD215637/40127450_4-pintola-classic-peanut-butter-creamy.jpg', '2024-10-03 17:28:10', '2024-10-03 17:28:10'),
(52, 'FMD215638', 'productimages/FMD215638/PINTOLA-All-Natural-Peanut-Butter-SDL903890053-1-6e4fa.jpg', '2024-10-03 17:28:11', '2024-10-03 17:28:11'),
(53, 'FMD215652', 'productimages/FMD215652/a29b2c6dc18be3b1131e0869344a3630.jpg', '2024-10-03 17:28:11', '2024-10-03 17:28:11'),
(54, 'FMD177344', 'productimages/FMD177344/15-Best-Skin-Whitening-Night-Creams-Available-In-India-1.jpg', '2024-10-03 17:28:12', '2024-10-03 17:28:12'),
(55, 'FMD174289', 'productimages/FMD174289/Himalayan-Yak-Gaurishankar-Hard-Cheese-200G.jpg', '2024-10-03 17:28:13', '2024-10-03 17:28:13'),
(56, 'FMD174291', 'productimages/FMD174291/00118388500920____1__600x600.jpg', '2024-10-03 17:28:13', '2024-10-03 17:28:13'),
(57, 'FMD215637', 'productimages/FMD215637/40127450_4-pintola-classic-peanut-butter-creamy.jpg', '2024-10-03 17:28:13', '2024-10-03 17:28:13'),
(58, 'FMD215638', 'productimages/FMD215638/PINTOLA-All-Natural-Peanut-Butter-SDL903890053-1-6e4fa.jpg', '2024-10-03 17:28:13', '2024-10-03 17:28:13'),
(59, 'FMD215881', 'productimages/FMD215881/wow-pop-corn-family-pack-cheese-flavor145.png', '2024-10-03 17:28:13', '2024-10-03 17:28:13'),
(60, 'FMD177344', 'productimages/FMD177344/15-Best-Skin-Whitening-Night-Creams-Available-In-India-1.jpg', '2024-10-03 17:28:14', '2024-10-03 17:28:14'),
(61, 'FMD215882', 'productimages/FMD215882/979904425-wow-cheese-popcorn-25g.jpg', '2024-10-03 17:28:14', '2024-10-03 17:28:14'),
(62, 'FMD177343', 'productimages/FMD177343/h_s_shampoo_smooth_silky_1_2l.jpg', '2024-10-03 17:28:15', '2024-10-03 17:28:15'),
(63, 'FMD215881', 'productimages/FMD215881/wow-pop-corn-family-pack-cheese-flavor145.png', '2024-10-03 17:28:15', '2024-10-03 17:28:15'),
(64, 'FMD174216', 'productimages/FMD174216/3247190790.jpg', '2024-10-03 17:28:16', '2024-10-03 17:28:16'),
(65, 'FMD215882', 'productimages/FMD215882/979904425-wow-cheese-popcorn-25g.jpg', '2024-10-03 17:28:16', '2024-10-03 17:28:16'),
(66, 'FMD177343', 'productimages/FMD177343/h_s_shampoo_smooth_silky_1_2l.jpg', '2024-10-03 17:28:16', '2024-10-03 17:28:16'),
(67, 'FMD174216', 'productimages/FMD174216/3247190790.jpg', '2024-10-03 17:28:16', '2024-10-03 17:28:16'),
(68, 'FMD174217', 'productimages/FMD174217/PhotoRoom-20230124_175452.png', '2024-10-03 17:28:17', '2024-10-03 17:28:17'),
(69, 'FMD174217', 'productimages/FMD174217/PhotoRoom-20230124_175452.png', '2024-10-03 17:28:18', '2024-10-03 17:28:18'),
(70, 'FMD174218', 'productimages/FMD174218/arla-cheesy-spread-240g-1--1000x1000.jpg', '2024-10-03 17:28:18', '2024-10-03 17:28:18'),
(71, 'FMD174218', 'productimages/FMD174218/arla-cheesy-spread-240g-1--1000x1000.jpg', '2024-10-03 17:28:18', '2024-10-03 17:28:18'),
(72, 'FMD199196', 'productimages/FMD199196/carrot-cake-with-cream-cheese-frosting-recipe-via-queensleeappetit.com-6.jpg', '2024-10-03 17:28:18', '2024-10-03 17:28:18'),
(73, 'FMD199196', 'productimages/FMD199196/carrot-cake-with-cream-cheese-frosting-recipe-via-queensleeappetit.com-6.jpg', '2024-10-03 17:28:19', '2024-10-03 17:28:19'),
(74, 'FMD254316', 'productimages/FMD254316/cuisine-food-top-view-cooked-prawns-tiger-shrimps-white-plate-cooked-prawns-tiger-shrimps-white-plate-100961189.jpg', '2024-10-03 17:28:19', '2024-10-03 17:28:19'),
(75, 'FMD254316', 'productimages/FMD254316/cuisine-food-top-view-cooked-prawns-tiger-shrimps-white-plate-cooked-prawns-tiger-shrimps-white-plate-100961189.jpg', '2024-10-03 17:28:19', '2024-10-03 17:28:19'),
(76, 'FMD174220', 'productimages/FMD174220/5711953023262.jpg', '2024-10-03 17:28:19', '2024-10-03 17:28:19'),
(77, 'FMD174220', 'productimages/FMD174220/5711953023262.jpg', '2024-10-03 17:28:19', '2024-10-03 17:28:19'),
(78, 'FMD217291', 'productimages/FMD217291/3rd-image-prod-comp.jpeg', '2024-10-03 17:28:20', '2024-10-03 17:28:20'),
(79, 'FMD177364', 'productimages/FMD177364/Pants-XXL-Bundle-(4x22pcs)_pampers_1604643633061.jpg', '2024-10-03 17:28:20', '2024-10-03 17:28:20'),
(80, 'FMD217291', 'productimages/FMD217291/3rd-image-prod-comp.jpeg', '2024-10-03 17:28:20', '2024-10-03 17:28:20'),
(81, 'FMD177364', 'productimages/FMD177364/Pants-XXL-Bundle-(4x22pcs)_pampers_1604643633061.jpg', '2024-10-03 17:28:21', '2024-10-03 17:28:21'),
(82, 'FMD174292', 'productimages/FMD174292/203672-01-768x768.jpg', '2024-10-03 17:28:21', '2024-10-03 17:28:21'),
(83, 'FMD174292', 'productimages/FMD174292/203672-01-768x768.jpg', '2024-10-03 17:28:21', '2024-10-03 17:28:21'),
(84, 'FMD198791', 'productimages/FMD198791/2386.jpg', '2024-10-03 17:28:21', '2024-10-03 17:28:21'),
(85, 'FMD198791', 'productimages/FMD198791/2386.jpg', '2024-10-03 17:28:21', '2024-10-03 17:28:21'),
(86, 'FMD319023', 'productimages/FMD319023/hospital.png', '2024-10-03 18:17:21', '2024-10-03 18:17:21'),
(87, 'FMD188101', 'productimages/FMD188101/avocado.jpg', '2024-10-04 12:51:23', '2024-10-04 12:51:23'),
(88, 'FMD188101', 'productimages/FMD188101/image-1703148205592.webp', '2024-10-04 12:56:44', '2024-10-04 12:56:44'),
(90, 'FMD177342', 'productimages/FMD177342/718g1HNHh7L._SL1500_.jpg', '2024-10-04 16:39:34', '2024-10-04 16:39:34'),
(91, 'FMD215654', 'productimages/FMD215654/e4c785fb11e24899dec90ef9132fb41e.png', '2024-10-04 16:39:34', '2024-10-04 16:39:34'),
(92, 'FMD174219', 'productimages/FMD174219/UAd2T4PMfy7uK8tvqFTueG_watermark_400.jpg', '2024-10-04 16:39:36', '2024-10-04 16:39:36'),
(93, 'FMD215857', 'productimages/FMD215857/potato-chips-bowl-isolated-white-background_972290-7419.jpg', '2024-10-04 16:39:36', '2024-10-04 16:39:36'),
(94, 'FMD342456', 'productimages/FMD342456/2865028-cover.jpg', '2024-10-04 16:39:36', '2024-10-04 16:39:36'),
(95, 'FMD215655', 'productimages/FMD215655/41j%2BRj2BvhL._SY300_QL70_.jpg', '2024-10-04 16:39:36', '2024-10-04 16:39:36'),
(96, 'FMD214637', 'productimages/FMD214637/a-grade-frozen-sweet-corn-500x500.jpg', '2024-10-04 16:39:37', '2024-10-04 16:39:37'),
(97, 'FMD215653', 'productimages/FMD215653/71C3rBjEviL._SX425_.jpg', '2024-10-04 16:39:37', '2024-10-04 16:39:37'),
(98, 'FMD192219', 'productimages/FMD192219/1106976-1.jpg', '2024-10-04 16:39:37', '2024-10-04 16:39:37'),
(99, 'FMD192074', 'productimages/FMD192074/cheese-types-gruyere.jpg', '2024-10-04 17:32:49', '2024-10-04 17:32:49'),
(100, 'FMD324327', 'productimages/FMD324327/how-to-fry-chicken-legs-in-cast-iron-skillet-1696079487.jpg', '2024-10-04 17:32:50', '2024-10-04 17:32:50'),
(101, 'FMD189234', 'productimages/FMD189234/3228020191349.jpg', '2024-10-04 17:32:50', '2024-10-04 17:32:50'),
(102, 'FMD192076', 'productimages/FMD192076/British-and-German-cheesemakers-combine-to-create-AlpenCheddar.jpg', '2024-10-04 17:32:50', '2024-10-04 17:32:50'),
(103, 'FMD177345', 'productimages/FMD177345/Olay-White-Radiance-Skin-Cream-SDL219514576-2-cc070.jpg', '2024-10-04 17:32:52', '2024-10-04 17:32:52'),
(104, 'FMD174244', 'productimages/FMD174244/american-garden-chocolate-flavour-syrup.jpg', '2024-10-04 17:32:54', '2024-10-04 17:32:54'),
(105, 'FMD192569', 'productimages/FMD192569/2.PRINGLES-POTATO-CRISPS-SMOKY-BBQ-110G.jpg', '2024-10-04 17:32:55', '2024-10-04 17:32:55'),
(106, 'FMD192293', 'productimages/FMD192293/0dc83479-86b3-41c9-a4b4-b0960a6ff9b2?height=630&v=2&width=1200', '2024-10-04 17:32:57', '2024-10-04 17:32:57');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `product_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `review_detail` varchar(500) NOT NULL,
  `rating` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `customer_id`, `product_code`, `name`, `email`, `review_detail`, `rating`, `created_at`, `updated_at`) VALUES
(2, 24, 'FMD302518', 'Janam Pandey', 'janampandey2@gmail.com', 'I loved it. best service in this product.', 4, '2024-10-07 15:52:11', '2024-10-07 15:52:11'),
(3, NULL, 'FMD302518', 'Umesh Shahi', 'thakuriumesh919@gmail.com', 'this is the most tasty chicken in valley', 4, '2024-10-07 15:59:33', '2024-10-07 15:59:33'),
(4, NULL, 'FMD199195', 'John Doe', 'doejohn45@gmail.com', 'Cookies best for the morning with the tea', 4, '2024-10-07 16:06:37', '2024-10-07 16:06:37'),
(7, 24, 'FMD309499', 'Janam Pandey', 'janampandey2@gmail.com', 'I loved it. Thank you for this.', 5, '2024-10-07 16:26:36', '2024-10-07 16:26:36'),
(9, NULL, 'FMD192232', 'sdcsz', 'test@gmail.com', 'adas', 5, '2024-10-08 14:48:18', '2024-10-08 14:48:18'),
(10, 13, 'FMD376665', 'Janam pandey', 'jananpandey1995@gmail.com', 'Best corn I ever had. Thank you for the fresh corn.', 5, '2024-10-08 17:02:44', '2024-10-08 17:02:44'),
(11, 17, 'FMD219796', 'bikesh kumar Gupta', 'connectedwithme100@gmail.com', 'testing', 3, '2024-10-15 11:26:31', '2024-10-15 11:26:31'),
(12, NULL, 'FMD216621', 'Bikesh kumar gupta', 'guptabikesh234@gmail.com', 'testing review', 5, '2024-10-15 19:10:46', '2024-10-15 19:10:46'),
(13, NULL, 'FMD319023', 'RFSAEF', 'test@gmail.com', 'BYNHYM', 4, '2024-10-25 10:24:39', '2024-10-25 10:24:39');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint(20) NOT NULL,
  `province_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `province_name`, `created_at`, `updated_at`) VALUES
(1, 'Koshi Province', '2024-09-12 03:02:42', '2024-09-16 11:20:13'),
(2, 'Madhesh Province', '2024-09-12 03:07:03', '2024-09-16 11:20:22'),
(3, 'Bagmati Province', '2024-09-12 03:07:11', '2024-09-16 11:20:34'),
(4, 'Gandaki Province', '2024-09-12 03:07:21', '2024-09-16 11:20:43'),
(5, 'Lumbini Province', '2024-09-12 03:07:28', '2024-09-16 11:20:51'),
(6, 'Karnali Province', '2024-09-12 03:07:37', '2024-09-16 11:20:59'),
(7, 'Sudurpaschim Province', '2024-09-12 03:07:47', '2024-09-16 11:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('rLWKaqokOqTMk0hbuIPhYzv2NeXGWhWERbXeZhjk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVm82cDJWSFhGaW45dU5RVmpjWTZuUW5hNUpEelhjbkt1cmdydG9OZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hY2NvdW50Ijt9fQ==', 1725883856),
('xh83V75RiQKfWnOsqCETEkw3W3MNnH1KSPs0Tlaw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiYm45NVZaUEd1VENGdXR2bEJ4T0RobHRTT2VjTE45U0gzVW9KUXQwOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NDoiY2FydCI7YToyOntpOjMzO3M6MToiMiI7aToyNDtzOjE6IjIiO31zOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjIxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAiO319', 1725879230);

-- --------------------------------------------------------

--
-- Table structure for table `set_shipping`
--

CREATE TABLE `set_shipping` (
  `id` bigint(20) NOT NULL,
  `province_id` bigint(20) NOT NULL,
  `city` varchar(255) NOT NULL,
  `shipping_cost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `set_shipping`
--

INSERT INTO `set_shipping` (`id`, `province_id`, `city`, `shipping_cost`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 3, 'Kathmandu Metro 1 - Naxal Area', 70.00, NULL, '2024-09-08 23:55:39', '2024-09-16 10:37:43'),
(5, 3, 'Kathmandu Metro 2 - Lazimpat Area', 70.00, NULL, '2024-09-16 10:42:12', '2024-09-16 10:42:12'),
(6, 3, 'Kathmandu Metro 3 - Maharajgunj Area', 70.00, NULL, '2024-09-16 10:42:41', '2024-09-16 10:42:41'),
(7, 3, 'Kathmandu Metro 4 - Bishalnagar Area', 70.00, NULL, '2024-09-16 10:42:58', '2024-09-16 10:42:58'),
(8, 3, 'Kathmandu Metro 5 - Tangal Area', 70.00, NULL, '2024-09-16 10:43:17', '2024-09-16 10:43:17'),
(10, 3, 'Kathmandu Metro 7 - Chabahil Area', 70.00, NULL, '2024-09-16 10:47:52', '2024-09-16 10:47:52'),
(11, 3, 'Kathmandu Metro 8 - Gaushala Area', 70.00, NULL, '2024-09-16 10:48:11', '2024-09-16 10:48:11'),
(12, 3, 'Kathmandu Metro 9 - Sinamangal Area', 70.00, NULL, '2024-09-16 10:48:57', '2024-09-16 10:48:57'),
(13, 3, 'Kathmandu Metro 10 - New Baneshwor Area', 70.00, NULL, '2024-09-16 10:49:59', '2024-09-16 10:49:59'),
(14, 3, 'Kathmandu Metro 11 - Maitighar Area', 70.00, NULL, '2024-09-16 10:50:14', '2024-09-16 10:50:14'),
(15, 3, 'Kathmandu Metro 12 - Teku Area', 70.00, NULL, '2024-09-16 10:50:32', '2024-09-16 10:50:32'),
(16, 3, 'Kathmandu Metro 13 - Kalimati Area', 70.00, NULL, '2024-09-16 10:50:48', '2024-09-16 10:50:48'),
(17, 3, 'Kathmandu Metro 14 - Kuleshwor Area', 70.00, NULL, '2024-09-16 10:51:04', '2024-09-16 10:51:04'),
(18, 3, 'Kathmandu Metro 15 - Swayambhu Area', 70.00, NULL, '2024-09-16 10:51:36', '2024-09-16 10:51:36'),
(19, 3, 'Kathmandu Metro 16 - Nayabazar Area', 70.00, NULL, '2024-09-16 10:52:09', '2024-09-16 10:52:09'),
(20, 3, 'Kathmandu Metro 17 - Chhetrapati Area', 70.00, NULL, '2024-09-16 10:52:26', '2024-09-16 10:52:26'),
(21, 3, 'Kathmandu Metro 18 - Raktakali Area', 70.00, NULL, '2024-09-16 10:52:41', '2024-09-16 10:52:41'),
(22, 3, 'Kathmandu Metro 19 - Hanumandhoka Area', 70.00, NULL, '2024-09-16 10:52:56', '2024-09-16 10:52:56'),
(23, 3, 'Kathmandu Metro 20 - Marutol Area', 70.00, NULL, '2024-09-16 10:53:19', '2024-09-16 10:53:19'),
(24, 3, 'Kathmandu Metro 21 - Lagantole Area', 70.00, NULL, '2024-09-16 10:53:46', '2024-09-16 10:53:46'),
(25, 3, 'Kathmandu Metro 22 - Newroad Area', 70.00, NULL, '2024-09-16 10:54:01', '2024-09-16 10:54:01'),
(26, 3, 'Kathmandu Metro 23 - Basantapur Area', 70.00, NULL, '2024-09-16 10:54:18', '2024-09-16 10:54:18'),
(27, 3, 'Kathmandu Metro 24 - Indrachowk Area', 70.00, NULL, '2024-09-16 10:54:34', '2024-09-16 10:54:34'),
(28, 3, 'Kathmandu Metro 25 - Ason Area', 70.00, NULL, '2024-09-16 10:54:50', '2024-09-16 10:54:50'),
(29, 3, 'Kathmandu Metro 26 - Samakhusi Area', 70.00, NULL, '2024-09-16 10:55:04', '2024-09-16 10:55:04'),
(30, 3, 'Kathmandu Metro 26 - Thamel Area', 70.00, NULL, '2024-09-16 10:55:21', '2024-09-16 10:55:21'),
(31, 3, 'Kathmandu Metro 27 - Bhotahiti Area', 70.00, NULL, '2024-09-16 10:55:39', '2024-09-16 10:55:39'),
(32, 3, 'Kathmandu Metro 28 - Bagbazar Area', 70.00, NULL, '2024-09-16 10:55:53', '2024-09-16 10:55:53'),
(33, 3, 'Kathmandu Metro 28 - Kamaladi Area', 70.00, NULL, '2024-09-16 10:56:12', '2024-09-16 10:56:12'),
(34, 3, 'Kathmandu Metro 29 - Anamnagar Area', 70.00, NULL, '2024-09-16 10:56:28', '2024-09-16 10:56:28'),
(35, 3, 'Kathmandu Metro 29 - Putalisadak Area', 70.00, NULL, '2024-09-16 10:56:44', '2024-09-16 10:56:44'),
(36, 3, 'Kathmandu Metro 30 - Maitidevi Area', 70.00, NULL, '2024-09-16 10:56:59', '2024-09-16 10:56:59'),
(37, 3, 'Kathmandu Metro 31 - Min Bhawan Area', 70.00, NULL, '2024-09-16 10:57:17', '2024-09-16 10:57:17'),
(38, 3, 'Kathmandu Metro 32 - Koteshwor Area', 70.00, NULL, '2024-09-16 10:57:34', '2024-09-16 10:57:34'),
(39, 3, 'Kathmandu Metro 32 - Tinkune Area', 70.00, NULL, '2024-09-16 10:57:51', '2024-09-16 10:57:51'),
(40, 3, 'Kathmandu Metro 3 - Baluwatar Area', 70.00, NULL, '2024-09-16 10:58:21', '2024-09-16 10:58:21'),
(41, 3, 'Kathmandu Outside Ring Road', 70.00, NULL, '2024-09-16 11:11:06', '2024-09-16 11:11:06'),
(42, 3, 'Bhaktapur', 70.00, NULL, '2024-09-16 11:11:46', '2024-09-16 11:11:46'),
(43, 3, 'Lalitpur Inside Ring Road', 70.00, NULL, '2024-09-16 11:12:08', '2024-09-16 11:12:08'),
(44, 3, 'Lalitpur Outside Ring Road', 70.00, NULL, '2024-09-16 11:12:22', '2024-09-16 11:12:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `account_type` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `two_factor_secret` timestamp NULL DEFAULT NULL,
  `two_factor_recovery_codes` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`, `phone`, `country`, `account_type`, `email_verified_at`, `two_factor_secret`, `two_factor_recovery_codes`, `password`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Janam Pandey', 'jananpandey1995@gmail.com', 'Kathmandu, Nepal', '9866077949', 'Nepal', 'A', '2024-09-03 06:20:27', NULL, NULL, '$2y$12$mPMrlpDRBD4Lcjf4GaC7.O4qr0hRqent5IIyBMiI5OTHRQ4tGHA0e', 'IaejwhxgwJy0ehQVYpjELL8P6bn9V3tZcP7jbjLg09hT1KEgljgkpvqfYLky', NULL, '11725365302_profile.jpg', '2024-09-03 06:20:28', '2024-09-05 05:50:23'),
(2, 'OMSOK', 'admin@omsok.com', 'Teku, Kathmandu', '9802069643', 'Nepal', 'A', NULL, NULL, NULL, '$2y$12$0Rd6P3Bt6jCP02MNfUSYUO9HMVVHkW/eWkz1yltbPjFUMfceiH2AO', NULL, NULL, NULL, '2024-10-01 11:47:54', '2024-10-01 11:47:54'),
(3, 'Bikesh Kumar Gupta', 'connectedwithme100@gmail.com', 'Kalimati', '9744221258', 'Nepal', 'A', NULL, NULL, NULL, '$2y$12$CLP.7sakaVUku5WS7e45vuFSMWM9h3ylA8HrxYlxr7vCaWKZ5fDsm', NULL, NULL, NULL, '2024-10-01 11:48:56', '2024-10-01 11:48:56');

-- --------------------------------------------------------

--
-- Table structure for table `website_data`
--

CREATE TABLE `website_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_logo_header` varchar(255) DEFAULT NULL,
  `company_logo_footer` varchar(255) DEFAULT NULL,
  `header_theme_color` varchar(255) DEFAULT NULL,
  `footer_theme_color` varchar(255) DEFAULT NULL,
  `text_theme_color` varchar(255) DEFAULT NULL,
  `hover_effect_color` varchar(255) DEFAULT NULL,
  `primary_email` varchar(255) NOT NULL,
  `secondary_email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `primary_phone` varchar(255) DEFAULT NULL,
  `secondary_phone` varchar(255) DEFAULT NULL,
  `website_link` varchar(255) DEFAULT NULL,
  `shipping_cost_apply_type` varchar(255) DEFAULT NULL,
  `no_category_display` bigint(20) NOT NULL DEFAULT 0,
  `map_url` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `website_data`
--

INSERT INTO `website_data` (`id`, `company_name`, `company_logo_header`, `company_logo_footer`, `header_theme_color`, `footer_theme_color`, `text_theme_color`, `hover_effect_color`, `primary_email`, `secondary_email`, `address`, `primary_phone`, `secondary_phone`, `website_link`, `shipping_cost_apply_type`, `no_category_display`, `map_url`, `created_at`, `updated_at`) VALUES
(1, 'OMSOK - Online Shopping', '1728213698_header.png', '1729400486_footer.png', '#681a35', '#000000', '#ffffff', '#800000', 'info@omsok.com', NULL, 'Teku, Kathmandu', '+977-9866077949', '9813074888', 'https://omsok.com', 'itemwisecost', 7, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3151.8402909324475!2d85.3023606!3d27.6973946!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb190669120b69%3A0xbf1f46ec49ad921e!2sCloud+web+based+accounting+erp+software+in+nepal!5e0!3m2!1sen!2sus!4v1602829041872', NULL, '2024-10-20 10:46:26');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `customer_id`, `product_code`, `created_at`, `updated_at`) VALUES
(2, 31, 'a8850135557779', '2024-10-06 14:46:28', '2024-10-06 14:46:28'),
(3, 24, 'a4902430359733', '2024-10-07 12:02:44', '2024-10-07 12:02:44'),
(5, 24, 'FMD195308', '2024-10-17 11:32:35', '2024-10-17 11:32:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_zone`
--
ALTER TABLE `address_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api`
--
ALTER TABLE `api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `carousel_images`
--
ALTER TABLE `carousel_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `province_id` (`province_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_code` (`product_code`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `customer_address_book`
--
ALTER TABLE `customer_address_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `province` (`province_id`),
  ADD KEY `city` (`city_id`),
  ADD KEY `zone_id` (`zone_id`);

--
-- Indexes for table `delivery_information`
--
ALTER TABLE `delivery_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter_subscribers_list`
--
ALTER TABLE `newsletter_subscribers_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletter_subscribers_list_email_unique` (`email`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `order_cancel`
--
ALTER TABLE `order_cancel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_cancel_fk_1` (`order_item_id`),
  ADD KEY `order_cancel_fk_2` (`cancel_reason`);

--
-- Indexes for table `order_cancel_reasons`
--
ALTER TABLE `order_cancel_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_code` (`product_code`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_code` (`product_code`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `set_shipping`
--
ALTER TABLE `set_shipping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `province` (`province_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `website_data`
--
ALTER TABLE `website_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_zone`
--
ALTER TABLE `address_zone`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT for table `api`
--
ALTER TABLE `api`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `carousel_images`
--
ALTER TABLE `carousel_images`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `customer_address_book`
--
ALTER TABLE `customer_address_book`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `delivery_information`
--
ALTER TABLE `delivery_information`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `newsletter_subscribers_list`
--
ALTER TABLE `newsletter_subscribers_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `order_cancel`
--
ALTER TABLE `order_cancel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_cancel_reasons`
--
ALTER TABLE `order_cancel_reasons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1991;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `set_shipping`
--
ALTER TABLE `set_shipping`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `website_data`
--
ALTER TABLE `website_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_fk_1` FOREIGN KEY (`product_code`) REFERENCES `products` (`product_code`);

--
-- Constraints for table `customer_address_book`
--
ALTER TABLE `customer_address_book`
  ADD CONSTRAINT `customer_address_book_fk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `customer_address_book_fk_2` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`),
  ADD CONSTRAINT `customer_address_book_fk_3` FOREIGN KEY (`city_id`) REFERENCES `set_shipping` (`id`),
  ADD CONSTRAINT `customer_address_book_fk_4` FOREIGN KEY (`zone_id`) REFERENCES `address_zone` (`id`);

--
-- Constraints for table `order_cancel`
--
ALTER TABLE `order_cancel`
  ADD CONSTRAINT `order_cancel_fk_1` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`),
  ADD CONSTRAINT `order_cancel_fk_2` FOREIGN KEY (`cancel_reason`) REFERENCES `order_cancel_reasons` (`id`);

--
-- Constraints for table `set_shipping`
--
ALTER TABLE `set_shipping`
  ADD CONSTRAINT `set_shipping_fk_1` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
