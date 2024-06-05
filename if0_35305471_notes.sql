-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2024 at 04:05 AM
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
-- Database: `if0_35305471_notes`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `agent_type` varchar(255) NOT NULL,
  `company_country` varchar(255) NOT NULL,
  `business_source` varchar(255) DEFAULT NULL,
  `company_notes` text DEFAULT NULL,
  `edited_by` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `user_id`, `company_name`, `agent_type`, `company_country`, `business_source`, `company_notes`, `edited_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Global Travel Moments', 'TA', 'UK', NULL, NULL, '', '2023-02-21 17:26:52', '2023-02-21 17:26:52'),
(2, 1, 'Chic Locations', 'TO', 'UK', NULL, NULL, '', '2023-02-22 09:26:21', '2023-02-22 09:26:21'),
(3, 1, 'Cloud 10 Travel', 'TA', 'USA', NULL, NULL, '', '2023-02-22 09:30:04', '2023-02-22 09:30:04'),
(4, 1, 'Trips & Ships Luxury Travel', 'TA', 'USA', NULL, NULL, '', '2023-02-22 09:32:23', '2023-02-22 09:32:23'),
(5, 1, 'SSR Holiday', 'TO', 'India', NULL, NULL, '', '2023-02-22 09:40:11', '2023-02-22 09:40:11'),
(6, 1, 'Wish Viagens & Turismo', 'TA', 'Brazil', NULL, NULL, '', '2023-02-22 09:42:45', '2023-02-22 09:42:45'),
(7, 1, 'Con Questa', 'TO', 'Netherlands', NULL, NULL, '', '2023-02-22 09:46:33', '2023-02-22 09:46:33'),
(8, 1, 'Seamless Travel Agency', 'TA', 'USA', NULL, NULL, '', '2023-02-22 09:55:03', '2023-02-22 09:55:03'),
(9, 1, 'The Accomplished Traveller', 'TO - Virtuoso', 'USA', NULL, NULL, '', '2023-02-22 10:07:15', '2023-02-22 10:07:15'),
(10, 1, 'Eraso Travel', 'ON CHECK', 'USA', NULL, NULL, '', '2023-02-22 10:13:07', '2023-02-22 10:13:07'),
(11, 1, 'Avila Reizen', 'TO', 'Netherlands', NULL, NULL, '', '2023-02-22 10:17:52', '2023-02-22 10:17:52'),
(12, 1, 'Viajan Turismo & Expedicoes', 'ON CHECK', 'Brazil', NULL, NULL, '', '2023-02-22 10:20:10', '2023-02-22 10:20:10'),
(13, 1, 'Origin.me', 'TO', 'USA', NULL, NULL, '', '2023-02-22 10:23:04', '2023-02-22 10:23:04'),
(14, 1, 'Cookson Adventures', 'TO', 'UK', NULL, NULL, '', '2023-02-22 10:23:27', '2023-02-22 10:23:27'),
(15, 1, 'Stagings', 'TO', 'Latvia', NULL, NULL, '', '2023-02-22 10:23:46', '2023-02-22 10:23:46'),
(16, 1, 'Prana Travel Design', 'TO', 'Germany', NULL, NULL, '', '2023-02-22 10:24:11', '2023-02-22 10:24:11'),
(17, 1, 'Exotic Tour / Mistral Tour', 'ON CHECK', 'Italy', NULL, NULL, '', '2023-02-22 10:24:30', '2023-02-22 10:24:30'),
(18, 1, 'Ailes', 'TO', 'Switzerland', NULL, NULL, '', '2023-02-22 10:25:06', '2023-02-22 10:25:06'),
(20, 1, 'Embark Beyond (Virtuoso)', 'TA', 'USA', NULL, NULL, '', '2023-02-22 10:26:06', '2023-02-22 10:26:06'),
(21, 1, 'Born to Travel', 'TA', 'USA', NULL, NULL, '', '2023-02-22 10:26:31', '2023-02-22 10:26:31'),
(22, 1, 'Belo Viaja', 'TA', 'Mexico', NULL, NULL, '', '2023-02-22 10:27:00', '2023-02-22 10:27:00'),
(23, 1, 'Geographic Expeditions', 'TO', 'USA', NULL, NULL, '', '2023-02-22 10:27:37', '2023-02-22 10:27:37'),
(24, 1, 'Truffle Pig', 'TO', 'USA', NULL, NULL, '', '2023-02-22 10:27:57', '2023-02-22 10:27:57'),
(25, 1, 'Luxe & Nyx', 'TO', 'USA', NULL, NULL, '', '2023-02-22 10:28:18', '2023-02-22 10:28:18'),
(26, 1, 'The Passionist', 'TO', 'UK', NULL, NULL, '', '2023-02-22 10:28:42', '2023-02-22 10:28:42'),
(27, 1, 'Paveway Explores', 'TO', 'Singapore', NULL, NULL, '', '2023-02-22 10:29:11', '2023-02-22 10:29:11'),
(28, 1, 'Lisa Lindblad Travel Design', 'TA', 'USA', NULL, NULL, '', '2023-02-22 10:29:30', '2023-02-22 10:29:30'),
(29, 5, 'Adventum Travel', 'TO', 'AUS', 'RER', '<div>test</div>', '', '2023-02-22 10:29:50', '2024-06-05 00:25:47'),
(30, 1, 'Hello Word / Surrey Hills', 'TO', 'AUS', NULL, NULL, '', '2023-02-22 10:30:10', '2023-02-22 10:30:10'),
(31, 1, 'TRUVI', 'TO', 'Indonesia', NULL, NULL, '', '2023-02-22 10:30:34', '2023-02-22 10:30:34'),
(32, 1, 'Perez–Maldonado', 'TO - Virtuoso', 'Mexico', NULL, NULL, '', '2023-02-22 10:31:04', '2023-02-22 10:31:04'),
(33, 1, 'Panache World', 'TO', 'India', NULL, NULL, '', '2023-02-22 10:31:22', '2023-02-22 10:31:22'),
(34, 1, 'Chic Voyage', 'TO', 'Netherlands', NULL, NULL, '', '2023-02-22 10:31:43', '2023-02-22 10:31:43'),
(35, 1, 'Allure Travel', 'TO', 'AUS', NULL, NULL, '', '2023-02-22 10:32:01', '2023-02-22 10:32:01'),
(36, 1, 'Teranui by Tselana Travel', 'TO', 'France', NULL, NULL, '', '2023-02-22 10:32:17', '2023-02-22 10:32:17'),
(37, 1, 'Travel XL', 'TA', 'Netherlands', NULL, NULL, '', '2023-03-14 13:44:27', '2023-03-14 13:44:27'),
(38, 1, 'Pelikaan Travel Group', 'TA', 'Netherlands', NULL, NULL, '', '2023-03-14 13:44:58', '2023-03-14 13:44:58'),
(39, 1, 'Travel Boutique', 'TO', 'Netherlands', NULL, NULL, '', '2023-03-14 13:45:40', '2023-03-14 13:45:40'),
(40, 1, 'TOOKU (Anders Dan Anders)', 'TO', 'Belgium', NULL, NULL, '', '2023-03-14 13:46:26', '2023-03-14 13:46:26'),
(41, 1, 'Talisman', 'TO', 'Netherlands', NULL, NULL, '', '2023-03-14 13:46:46', '2023-03-14 13:46:46'),
(42, 1, 'Tico Reizen', 'TO', 'Netherlands', NULL, NULL, '', '2023-03-14 13:47:11', '2023-03-14 13:47:11'),
(43, 1, 'Zeppelin Reizen', 'TO', 'Belgium', NULL, NULL, '', '2023-03-14 13:56:03', '2023-03-14 13:58:56'),
(44, 1, 'GCS / Great Value Vacation', 'TO', 'USA', NULL, NULL, '', '2023-03-17 08:35:52', '2023-03-17 08:35:52'),
(45, 1, 'Lotus Travel', 'TO', 'Germany', NULL, NULL, '', '2023-03-17 08:36:37', '2023-03-17 08:36:37'),
(46, 1, 'Test', 'ON CHECK', 'Test', NULL, NULL, '', '2023-11-11 16:02:56', '2023-11-11 16:02:56'),
(47, 6, 'For Test Only', 'TA', 'Indonesia', NULL, NULL, '', '2023-11-14 12:37:02', '2023-11-14 12:37:02'),
(48, 5, 'Reisebüro Reischel', 'TA', 'Germany', NULL, NULL, '', '2023-11-14 21:30:46', '2023-11-14 21:30:46'),
(49, 5, 'Travel Department', 'TO', 'Ireland', NULL, NULL, '', '2023-11-14 21:51:45', '2023-11-14 21:51:45'),
(50, 5, 'GCS (Global Consolidated Services)', 'TO', 'USA', NULL, NULL, '', '2023-11-14 22:17:35', '2023-11-14 22:17:35'),
(51, 5, 'D-Reizen', 'TA', 'Netherlands', NULL, NULL, '', '2023-11-16 17:28:25', '2023-11-16 17:28:25'),
(52, 5, 'Intravelr', 'TO', 'UK', NULL, NULL, '', '2023-11-16 22:49:18', '2023-11-16 22:49:18'),
(53, 5, 'Times Travel', 'TO', 'UK', NULL, NULL, '', '2023-11-17 23:17:58', '2023-11-17 23:17:58'),
(54, 5, 'Tania Travel', 'TO', 'Lebanon', NULL, NULL, '', '2023-11-17 23:20:57', '2023-11-17 23:20:57'),
(55, 5, 'Transindus', 'TO', 'UK', NULL, NULL, '', '2023-11-22 21:45:44', '2023-11-22 21:45:44'),
(56, 5, 'Colibri Travel', 'TO', 'Germany', NULL, NULL, '', '2023-12-04 19:54:24', '2023-12-04 19:54:44'),
(58, 5, 'test abb', 'ON CHECK', 'Indonesia', 'RER', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. updated</div>', '', '2024-05-08 05:34:42', '2024-06-03 04:02:09');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `contact_gender` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `user_id`, `company_id`, `contact_gender`, `first_name`, `last_name`, `title`, `phone_number`, `email`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 'Duncan Greenfield-Turk', NULL, 'Chief Curator', NULL, 'duncan@globaltravelmoments.com', '2023-02-21 17:27:31', '2023-02-21 17:27:31'),
(2, 1, 2, NULL, 'David Kevan', NULL, 'Partner & Product Person', NULL, 'david@chiclocations.com', '2023-02-22 09:26:49', '2023-02-22 09:26:49'),
(3, 1, 3, NULL, 'Alyson Nash', NULL, 'Founder', NULL, 'alyson@cloud10travel.com', '2023-02-22 09:30:27', '2023-02-22 09:30:27'),
(4, 1, 4, NULL, 'Angela Hughes', NULL, 'Owner', NULL, 'sales@tripsandships.com', '2023-02-22 09:32:53', '2023-02-22 09:32:53'),
(5, 1, 5, NULL, 'Sapnael Rao', NULL, 'Founder', NULL, 'sapnael@ssrholidays.in', '2023-02-22 09:40:56', '2023-02-22 09:40:56'),
(6, 1, 6, NULL, 'Juliana Vivieros', NULL, '-', NULL, 'juliana@wishturismo.com.br', '2023-02-22 09:43:30', '2023-02-22 09:43:30'),
(7, 1, 7, NULL, 'Lesley Klavert', NULL, 'Lifestyle Manager', NULL, 'lesley@con-questa.com', '2023-02-22 09:47:04', '2023-02-22 09:47:04'),
(8, 1, 8, NULL, 'Anthea Gilchrist', NULL, 'Luxury Travel Designer', NULL, 'anthea@seamlesstravelagency.com', '2023-02-22 09:55:35', '2023-02-22 09:55:35'),
(9, 1, 9, NULL, 'Blaine Horton', NULL, 'Director of Leisure Travel', NULL, 'blaine@theaccomplishedtraveler.com', '2023-02-22 10:07:48', '2023-02-22 10:07:48'),
(10, 1, 9, NULL, 'Jason C Miller', NULL, 'Founder / CEO', NULL, 'jason@theaccomplishedtraveler.com', '2023-02-22 10:08:28', '2023-02-22 10:08:28'),
(11, 1, 10, NULL, 'Jim Eraso', NULL, 'Founder', NULL, 'jim@jimerasotravel.com', '2023-02-22 10:13:50', '2023-02-22 10:13:50'),
(12, 1, 11, NULL, 'Tim van der Wel', NULL, 'Founder', NULL, 'tim@avilareizen.nl', '2023-02-22 10:18:20', '2023-02-22 10:18:20'),
(13, 1, 12, NULL, 'Jan Neumark', NULL, 'Founder', NULL, 'jan@viajan.com.br', '2023-02-22 10:20:43', '2023-02-22 10:20:43'),
(14, 1, 13, NULL, 'Federici Botta Aramburu', NULL, 'Travel Operations Manager', NULL, 'federico@origin.me', '2023-02-22 10:33:11', '2023-02-22 10:33:11'),
(15, 1, 14, NULL, 'William Siddeley', NULL, 'Senior Concept Designer', NULL, 'will@cooksonadventures.com', '2023-02-22 10:34:02', '2023-02-22 10:34:02'),
(16, 1, 15, NULL, 'Anna Locika', NULL, 'Travel Consultant', NULL, 'anna.locika@stagings.com', '2023-02-22 10:34:35', '2023-02-22 10:34:35'),
(17, 1, 16, NULL, 'Stephanie Syiemlieh', NULL, 'Founder', NULL, 's.syiemlieh@pranatraveldesign.de', '2023-02-22 10:35:02', '2023-02-22 10:35:02'),
(18, 1, 17, NULL, 'Diego Firenze', NULL, 'General Manager', NULL, 'diego.firenze@exotictour.it', '2023-02-22 10:36:57', '2023-02-22 10:39:51'),
(19, 1, 18, NULL, 'Manuel Chablais', NULL, 'Director / Owner', NULL, 'no@email', '2023-02-22 10:38:02', '2023-02-22 10:38:02'),
(20, 1, 19, NULL, 'Anna Gilbert', NULL, 'Senior VP Sales & Partnerships', NULL, 'anna@travel6degrees.com', '2023-02-22 10:39:04', '2023-02-22 10:39:04'),
(21, 1, 20, NULL, 'Julie Banning', NULL, 'Luxury Travel Advisor', NULL, 'julie@embarkbeyond.com', '2023-02-22 10:39:35', '2023-02-22 10:39:35'),
(22, 1, 21, NULL, 'Hope J. Smith', NULL, 'Travel Connoisseur', NULL, 'hope@born2travel.com', '2023-02-22 10:40:32', '2023-02-22 10:40:32'),
(23, 1, 22, NULL, 'Joana Bautista', NULL, 'Operations Manager', NULL, 'joana@beloviaje.com', '2023-02-22 10:41:14', '2023-02-22 10:41:14'),
(24, 1, 23, NULL, 'Tina Liadis', NULL, 'Director, Global sales (USA)', NULL, 'tina@geox.com', '2023-02-22 10:41:51', '2023-02-22 10:41:51'),
(25, 1, 23, NULL, 'Charlie Lockwood', NULL, 'Director, Global sales (UK)', NULL, 'charlie@geox.com', '2023-02-22 10:42:21', '2023-02-22 10:42:21'),
(26, 1, 24, NULL, 'Anthony Weersing', NULL, 'Trip Planner', NULL, 'anthony@trufflepig.com', '2023-02-22 10:43:01', '2023-02-22 10:43:01'),
(27, 1, 25, NULL, 'Katie Parris Griffin', NULL, 'Founder & Chief Designer', NULL, 'katie@luxeandnyx.com', '2023-02-22 10:43:42', '2023-02-22 10:43:42'),
(28, 1, 26, NULL, 'Rene Roseburg', NULL, 'Managing Director / Owner', NULL, 'rene@thepassionist.de', '2023-02-22 10:44:35', '2023-02-22 10:44:35'),
(29, 1, 27, NULL, 'Thomas NG', NULL, 'Managing Director', NULL, 'thomas@pavewayexplorer.com', '2023-02-22 10:45:18', '2023-02-22 10:45:18'),
(30, 1, 28, NULL, 'Hannah Sari', NULL, '-', NULL, 'hannah@lisalindblad.com', '2023-02-22 10:45:46', '2023-02-22 10:45:46'),
(31, 1, 29, NULL, 'Michelle Slack-Smith', NULL, 'Director', NULL, 'michelle@adventumtravel.com.au', '2023-02-22 10:46:23', '2023-02-22 10:46:23'),
(32, 1, 30, NULL, 'Debra Carr', NULL, 'Director / Travel Desinger', NULL, 'surreyhills@helloworld.com', '2023-02-22 10:46:54', '2023-02-22 10:46:54'),
(33, 1, 31, NULL, 'Kevin Hartanto', NULL, 'Founder & CEO', NULL, 'no@email', '2023-02-22 10:47:27', '2023-02-22 10:47:27'),
(34, 1, 32, NULL, 'Paulina Muñoz Licon', NULL, '-', NULL, 'paulina.munoz@perezmaldonado.com', '2023-02-22 10:47:57', '2023-02-22 10:47:57'),
(35, 1, 33, NULL, 'Sanjar Imam', NULL, 'Founder / Director', NULL, 'sanjar@panacheworld.com', '2023-02-22 10:48:43', '2023-02-22 10:48:43'),
(36, 1, 34, NULL, 'Minette Scheffers', NULL, 'Owner', NULL, 'minette@chicvoyage.nl', '2023-02-22 10:49:23', '2023-02-22 10:49:23'),
(37, 1, 35, NULL, 'Janine Bubb', NULL, 'Travel Advisor', NULL, 'Janine.bubb@alluretravel.com.au', '2023-02-22 10:49:58', '2023-02-22 10:49:58'),
(38, 1, 36, NULL, 'Aimee Bon-Hecker', NULL, 'Managing Director & Travel Designer', NULL, 'abonhecker@teranui.com', '2023-02-22 10:51:16', '2023-02-22 10:51:16'),
(39, 1, 38, NULL, 'Bert Thijsen', NULL, 'Commercial & Operational Director', NULL, 'b.thijsen@pelikaantravelgroup.com', '2023-03-14 13:51:39', '2023-03-14 13:51:39'),
(40, 1, 40, NULL, 'Gwendoline de Bruycker', NULL, 'Sales Manager', NULL, 'gwendoline@master-tours.com', '2023-03-14 13:52:53', '2023-03-14 13:52:53'),
(41, 1, 40, NULL, 'Nicky Baert', NULL, 'Product Manager', '+32485386855', 'nicky@master-tours.com', '2023-03-14 13:53:48', '2023-03-14 13:53:48'),
(42, 1, 41, NULL, 'Don Haagh', NULL, 'Owner', NULL, 'dhaagh@talisman.nl', '2023-03-14 13:55:22', '2023-03-14 13:55:22'),
(43, 1, 42, NULL, 'Charissa Martens', NULL, 'Director', NULL, 'charissa@tico.nl', '2023-03-14 13:58:02', '2023-03-14 13:58:02'),
(44, 1, 43, NULL, 'Jessie Oosterlynck', NULL, 'Owner', NULL, 'info@zeppelinreizen.be', '2023-03-14 14:00:53', '2023-03-14 14:00:53'),
(45, 1, 39, NULL, 'Debby Snelders', NULL, 'Owner', NULL, 'Debby@travelboutique.nl', '2023-03-14 14:20:54', '2023-03-14 14:20:54'),
(46, 1, 37, NULL, 'Peter van Limburg', NULL, 'Director', NULL, 'p.vanlimburg@travelxl.nl', '2023-03-14 14:25:32', '2023-03-14 14:25:32'),
(47, 1, 44, NULL, 'Alexandra Falbo', NULL, 'Product Development Manager', NULL, 'afalbo@gcs-ltd.com', '2023-03-17 08:39:06', '2023-03-17 08:39:06'),
(48, 1, 45, NULL, 'Elisabeth Beyrich', NULL, 'Lotus Travel', NULL, 'elisabeth.beyrich@lotus-travel.com', '2023-03-17 08:43:23', '2023-03-17 08:43:23'),
(51, 6, 47, NULL, 'For Test Contact', NULL, 'Director', '085000111222', 'test@only.com', '2023-11-14 12:38:10', '2023-11-14 12:38:10'),
(52, 5, 45, NULL, 'Susanne Rohrschneider', NULL, 'Sales Manager', '+49 (0)89 29 29 899 - 0', 'susanne.rohrschneider@lotus-travel.com', '2023-11-14 16:24:49', '2023-11-14 16:24:49'),
(53, 5, 45, NULL, 'Alkinoos Mergianos', NULL, 'Senior Sales Manager', '+49 (0)89 20 20 899 - 0', 'alkinoos.mergianos@lotus-travel.com', '2023-11-14 16:26:08', '2023-11-14 16:26:08'),
(54, 5, 48, NULL, 'Harald Reischel', NULL, 'CEO', '+49 851 988830', 'harald@reischel.de', '2023-11-14 21:31:58', '2023-11-14 21:31:58'),
(55, 5, 49, NULL, 'Sara Zimmerman', NULL, 'CEO', '+353 1 637 1600', 'saraz@traveldepartment.ie', '2023-11-14 22:03:28', '2023-11-14 22:03:28'),
(56, 5, 50, NULL, 'Alexandra Falbo', NULL, 'Product Development Manager', '+1 516 881 3268', 'afalbo@gcs-ltd.com', '2023-11-15 14:46:45', '2023-11-15 14:46:45'),
(57, 5, 50, NULL, 'Laura DeMaio', NULL, 'Director, Supplier Relations & Product Development', '+1 516 881 3333', 'ldemaio@gcs-ltd.com', '2023-11-15 14:48:56', '2023-11-15 14:48:56'),
(58, 5, 51, NULL, 'Jutta Van Peer', NULL, 'Director Contracting & Partnerships Suppliers', '+31 (0) 6 820 826 69', 'jutta.vanpeer@prijsvrij.nl', '2023-11-16 17:35:45', '2023-11-16 17:35:45'),
(59, 5, 51, NULL, 'Dominique Giese', NULL, 'Product Specialist', 'N/A', 'dgiese@d-reizen.nl', '2023-11-16 17:37:30', '2023-11-16 17:37:30'),
(60, 5, 52, NULL, 'Martin Lomax', NULL, 'Managing Director / UK Country Director', 'N/A', 'Martin@intravelr.com', '2023-11-16 22:50:37', '2023-11-16 22:50:37'),
(61, 5, 53, NULL, 'Zee Khalid', NULL, 'Managing Director', '+44 207 447 5000', 'zee@timestravel.com', '2023-11-17 23:18:49', '2023-11-17 23:18:49'),
(62, 5, 55, NULL, 'Amrit Singh', NULL, 'Managing Director', '-', 'amrit@transindus.com', '2023-11-22 21:47:19', '2023-11-22 21:47:19'),
(63, 5, 55, NULL, 'Hari Daggubaty', NULL, 'Global Sales Manager', '+44 (0)20 8', 'hari@transindus.com', '2023-11-22 21:48:14', '2023-11-22 21:48:14'),
(64, 5, 56, NULL, 'Matthias Ruch', NULL, 'Managing Director', '+49 15172502501', 'm.ruch@colibri-travel.de', '2023-12-04 19:59:31', '2023-12-04 19:59:31');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `event_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `user_id`, `event_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'No Event', '2023-02-21 17:24:55', '2023-02-21 17:24:55'),
(2, 1, 'Further East Nov 22', '2023-02-21 17:26:15', '2023-03-14 14:01:37'),
(3, 1, 'ITB 2023 + Sales Calls NL,BE,UK', '2023-03-14 13:43:16', '2023-03-14 13:43:16'),
(9, 0, 'Further East Nov 23', '2023-11-14 12:36:21', '2023-11-14 12:36:21'),
(10, 0, 'WTM 2023 + Sales call Germany', '2023-11-14 16:06:48', '2023-11-14 16:07:39');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_21_100000_create_teams_table', 1),
(7, '2020_05_21_200000_create_team_user_table', 1),
(8, '2020_05_21_300000_create_team_invitations_table', 1),
(9, '2023_02_27_040104_create_sessions_table', 1),
(10, '2023_02_27_112057_create_events_table', 1),
(11, '2023_02_27_153549_create_companies_table', 1),
(12, '2023_03_13_124547_create_contacts_table', 1),
(13, '2023_03_15_101836_create_notes_table', 1),
(14, '2023_04_07_102353_create_send_mails_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `user_id`, `contact_id`, `event_id`, `company_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 1, 'Meeting with Global Travel Moments', '<div>Notes: 4 *&amp; 5*. UK and US markets, book a lot of beach-only. A lot of honeymooners and couples in the 50s &amp; 60s. Currently booking through Kuoni / Carrier (UK) or A &amp; K US. <em>Follow up with presentations.</em></div>', '2023-02-21 17:29:11', '2023-02-22 09:35:53'),
(2, 1, 2, 2, 2, 'Meeting with Chic Location', '<div>Work from home small TOV very worried about recension coming up, not many bookings to Asia yet after the pandemic. Currently using Asian Trails (ID), Diethelm (TH), and Asia Plus (VN). Looking for a change possibly in ID. <em>Herman will follow up.</em></div>', '2023-02-22 09:27:52', '2023-02-22 09:36:43'),
(3, 1, 3, 2, 3, 'Meeting with Cliud 10 Travel', '<div>Most of the clientele from the East coast knows Paul well. Usually, bookings hotels direct not through DMC. For Thailand using Smiling Albino. Open to using us in other destinations. <em>Follow up cc Tom/Paul.</em></div>', '2023-02-22 09:31:30', '2023-02-22 09:38:19'),
(4, 1, 4, 2, 4, 'Meeting with Trips & Ships Luxury Travel', '<div>Had a Thailand and Japan enquiry and would send it over to Marc but never did. Travel Leaders /Innernova affiliated. Books are currently with Kensington sometimes but are ready to go direct to DMCs. <em>Follow up cc Tom/Paul</em>.</div>', '2023-02-22 09:34:23', '2023-02-22 09:34:23'),
(5, 1, 5, 2, 5, 'Meeting with SSR Holidays', '<div>Knows the people from TO-DMC well, former partners. Has 22,000 agents across India. For hotels, he does direct or via bed bank. Not a hot lead. <em>Follow up? introduce and hand over to Widi.</em></div>', '2023-02-22 09:42:00', '2023-02-22 09:42:00'),
(6, 1, 6, 2, 6, 'Meeting with Wish Viagens & Turismo', '<div>Already knows Leo well – Very happy to give us a chance when an Asia request comes up. <em>Herman to reintroduce Leo.</em></div>', '2023-02-22 09:44:31', '2023-02-22 09:44:31'),
(7, 1, 7, 2, 7, 'Meeting with Con Questa', '<div>Concierge + service from the Netherlands. Ajax team as their client and many ex-players, some celebrities also. 75 elite members paying + 1100 affiliate members. Starting to use DMCs for Asia, they were not offering Asia yet. <em>Hot lead, Herman to follow up.</em></div>', '2023-02-22 09:47:40', '2023-02-22 09:47:40'),
(8, 1, 8, 2, 8, 'Meeting with Seamless Travel Agency', '<div>Local TA, one of 110 agents affiliated with <a href=\"https://departurelounge.com/\">departurlounge.com</a> (<em>virtuoso</em>). Actively looking for a DMC in Asia. <em>Follow up cc Tom/Paul.</em></div>', '2023-02-22 09:57:06', '2023-02-22 09:57:06'),
(9, 1, 10, 2, 9, 'Meeting with The Accomplished Traveller', '<div>Top-end travel, 90% USA clients. Do all hotels direct, currently working with DA in many destinations. Good meeting but I don’t see them making a change to ICS now. <em>Follow up cc Tom/Paul.</em></div>', '2023-02-22 10:11:46', '2023-02-22 10:11:46'),
(10, 1, 11, 2, 10, 'Meeting with Eraso Travel', '<div>The old guy running a small tour operator out of Florida. D Now using A &amp; K in many of our destinations but looking for DMC in some of our destinations. <em>Follow up cc Tom/Paul.</em></div>', '2023-02-22 10:15:06', '2023-02-22 10:15:06'),
(11, 1, 12, 2, 11, 'Meeting with Avila Reizen', '<div>Is working with Khiri in many of our destinations. Herman knows Tim well from his Khiri days. Wants to focus more on Asia (<em>they are a Latin-America specialist</em>) Currently working with 1 DMC (Khiri) per destination but open to working with multiple in the future possibly. <em>Herman and Marc to keep in touch with Tim. HH Followed up with presentations.</em></div>', '2023-02-22 10:19:22', '2023-02-22 10:19:22'),
(12, 1, 13, 2, 12, 'Meeting with Viajan Turismo & Expedicoes', '<div>Brazilian living in San Fransisco. Clientele is Brazilians (mostly) and some Americans. Looking for SEA DMC. <em>HH Followed up with presentations, and introduced to Tom, Paul and Leo.</em></div>', '2023-02-22 10:21:26', '2023-02-22 10:21:26'),
(13, 1, 14, 2, 13, 'Meeting with Origin.me', '<div>The tech-driven travel company, 90% of clients are from the USA. Book hotels directly. <em>Herman to follow up with the ICS presentation, HH Followed up with presentations.</em></div>', '2023-02-22 10:52:53', '2023-02-22 10:52:53'),
(14, 1, 15, 2, 14, 'Meeting with Cookson Adventures', '<div>The high-end Adventure travel company, that only do about 35 trips per year. Very specialized in highly tailored adventures. Mostly small groups and multi-gen families. <em>Herman to send ICS STYLE presentations, HH Followed up with presentations.</em></div>', '2023-02-22 10:54:04', '2023-02-22 10:54:04'),
(15, 1, 16, 2, 15, 'Meeting with Stagings', '<div>The small luxury operator from Latvia, sells lots of Africa but wants to do more in Asia. Currently working with A &amp; K in SEA. <em>Looking for DMC in Japan HH has introduced to Carsten</em></div>', '2023-02-22 10:56:40', '2023-02-22 10:56:40'),
(16, 1, 17, 2, 16, 'Meeting with Prana Travel Design', '<div>German high-end TO working with several agents across the company. Currently working with Exo in most of our destinations but are open to trying ICS when there’s a possibility. <em>Herman to follow up. HH Followed up with presentations.</em></div>', '2023-02-22 11:01:36', '2023-02-22 11:01:36'),
(17, 1, 18, 2, 17, 'Meeting with Exotic Tour / Mistral Tour', '<div>Exoctic your &gt; Indonesia focussed TO, working with Pacto but complaining about response time. Herman to follow up. For Thailand and Indochina, their brand is Mistral, he’s ok for us to connect with Antonio Dirrico (see above) for those destinations.<em> HH Followed up with presentations.</em></div>', '2023-02-22 11:39:40', '2023-02-22 11:39:40'),
(18, 1, 19, 2, 18, 'Meeting with Ailes', '<div>Top luxury operator (Traveller Made) who has offices in Switzerland, Marrakech, and Paris. Actively looking for a DMC in Thailand, possibly elsewhere in Indochina too. In Indonesia working with TOP Indonesia, there is no reason to change. Marc to follow up for TH. <em>HH Followed up with presentations and introduced Marc.</em></div>', '2023-02-22 12:08:34', '2023-02-22 12:08:34'),
(19, 1, 20, 2, 19, 'Meeting with 6 Degrees', '<div>Knows us well, and has travelled with us. Will use us for any SEA itinerary. <em>Follow up cc Tom/Paul.</em></div>', '2023-02-22 12:10:45', '2023-02-22 12:10:45'),
(20, 1, 21, 2, 20, 'Meeting with Embark Beyond', '<div>Collective of 150 luxury agents, mostly East Coast, know us through Paul and Tom,&nbsp;<em>Follow up cc Tom/Paul.</em></div>', '2023-02-22 12:25:11', '2023-02-22 12:25:11'),
(21, 1, 22, 2, 21, 'Meeting with Born to Travel', '<div>Reconnect with Paul &amp; Tom?<em> Follow up cc Tom/Paul</em></div>', '2023-02-22 12:26:08', '2023-02-22 12:26:08'),
(22, 1, 23, 2, 22, 'Meeting with Belo Viaja', '<div>Mexican high-end agents, curating long trips to SEA, usually 3 to 4 weeks including Thailand, Indochina, Bali, and Maldives. Great meeting and very happy to start working with ICS. Introduce to Leo and follow up with the ICS presentation. <em>HH Followed up with presentations and introduced Marc.</em></div>', '2023-02-22 12:27:09', '2023-02-22 12:27:09'),
(23, 1, 24, 2, 23, 'Meeting with Geographic Expeditions', '<div>Very attractive account, tailor-made, active itineraries, adventure, hotels included. Currently very much in bed with DA (have been for a long time) are contemplating moving to Asia Concierge. Have heard of us but are not very familiar with ICS. Impressed with STYLE and I will send over our presentation but there is a small chance of them moving to ICS soon. <em>HH Followed up with presentations.</em></div>', '2023-02-22 13:37:38', '2023-02-22 13:37:38'),
(24, 1, 26, 2, 24, 'Meeting with Truffle Pig', '<div>I know Trufflepig well from my Khiri time. Worked with them for years. We mostly talked about Indonesia and travel in general, not a hot lead for ICS at this moment, unfortunately. They are very loyal to their DMCs. HH will keep in touch with him though.&nbsp;</div>', '2023-02-22 13:45:43', '2023-02-22 13:45:43'),
(25, 1, 27, 2, 25, 'Meeting with Luxe & Nyx', '<div>Doing trips for luxury leisure. Couples manly. Have about 35 staff throughout. Thailand, Bali, Vietnam, and Cambodia. Working with DA currently. Open to trying us. Knows Paul. <em>Follow up cc Tom/Paul</em></div>', '2023-02-22 13:48:24', '2023-02-22 13:48:24'),
(26, 1, 28, 2, 26, 'Meeting with The Passionist', '<div>Currently booking everything through Asia Travel Specialist (based in the UK) who then use their preferred DMC. However Rene does have a say in this, and he wants to try ICS. Was a great meeting. Herman to follow up.&nbsp;<em>HH Followed up with presentations</em></div>', '2023-02-22 13:49:20', '2023-02-22 13:49:20'),
(27, 1, 29, 2, 27, 'Meeting with Paveway Explores', '<div>Came to FE only for Indonesia really. Discussed a 7-day program for Bali. <em>Herman to follow up.</em></div>', '2023-02-22 13:51:07', '2023-02-22 13:51:07'),
(28, 1, 30, 2, 28, 'Meeting with Lisa Lindblad Travel Design', '<div>New York based agency, African specialist, came to show to learn about Asia. Has 2 enquiries for SEA. Will send it to us but hasn’t yet. …to follow up. Books some hotels and guides direct in Europe and Africa, but for Asia plans to use DMC for all. Good lead. <em>Follow up cc Tom/Paul</em></div>', '2023-02-22 13:52:26', '2023-02-22 13:52:26'),
(29, 1, 31, 2, 29, 'Meeting with Adventum Travel', '<div>Small Australian TO looking for a DMC in SEA. Impressed with ICS presentations (STYLE). Doing many multi-gen trips to our region. <em>Marc/Herman to follow up</em></div>', '2023-02-22 13:54:01', '2023-02-22 13:54:01'),
(30, 1, 32, 2, 30, 'Meeting with Hello Word / Surrey Hills', '<div>Small TO from near Melbourne, doing mostly Europa and SEA, and little Indonesia.&nbsp;<em>Marc/Herman to follow up</em></div>', '2023-02-22 14:01:10', '2023-02-22 14:01:10'),
(31, 1, 33, 2, 31, 'Meeting with TRUVI', '<div>An outbound luxury company from Jakarta. Experiential outbound travel is in its infancy, he’s very much educating his travellers that travel is about more than a nice hotel. Tough market but some potential for Indonesian groups to SEA 10-12 pax. <em>Marc/Herman to follow up, HH followed up with presentations</em></div>', '2023-02-22 14:02:05', '2023-02-22 14:02:05'),
(32, 1, 34, 2, 32, 'Meeting with Perez–Maldonado', '<div>Hot lead. Introduce to Leo. Specialized in Asia honeymoons and multi-gen travel. Long trip. Currently with A&amp;K and Exo but looking for a change. Very good chance for ICS! <em>HH has introduced Leo</em></div>', '2023-02-22 14:03:05', '2023-02-22 14:03:05'),
(33, 1, 35, 2, 33, 'Meeting with Panache World', '<div>Traveller Made agency. High-end Indian. Knows the people behind the tripfactory well. In Indonesia with TOP Indonesia, not looking for a change. In other countries with EASIA, is open to change. Marc/Carsten to follow up?&nbsp;<em>HH has followed up and introduced to Carsten/Marc</em></div>', '2023-02-22 14:04:27', '2023-02-22 14:04:27'),
(34, 1, 36, 2, 34, 'Meeting with Chic Voyage', '<div>Traveller Made agency. Herman has a good personal relationship with Minette. Formerly with Khiri but open to try ICS for any next inquiry. <em>Herman/Marc to keep in touch. HH followed up with presentations</em></div>', '2023-02-22 14:05:41', '2023-02-22 14:05:41'),
(35, 1, 37, 2, 35, 'Meeting with Allure Travel', '<div>Another Australian agency, has low potential. Not interested in Indonesia but is interested in other SEA destinations. Impressed with the STYLE presentation. <em>Herman to send.</em></div>', '2023-02-22 14:06:34', '2023-02-22 14:06:34'),
(36, 1, 38, 2, 36, 'Meeting with Teranui by Tselana Travel', '<div>Not on our list for appointments but came to the table to specifically talk about Indonesia. Which we did. Urgently need a DMC here. <em>Herman to follow up.</em></div>', '2023-02-22 14:07:21', '2023-02-22 14:07:21'),
(37, 1, 39, 3, 38, 'Pelikaan Travel Group', '<div>27 Feb - Herman &amp; Pim met with Bert (Commercial and Operational Director). The group has various companies but for us interesting would be their group of travel agents (TA) and independent travel agents (ZRA\'s), currently all their agents are booking with TO\'s but Bert wants to promote booking direct with DMC\'s (us). A large group of their TA\'s will have an incentive trip this March and they will discuss working direct with DMC\'s there. Herman to follow up with Bert in second half of March.</div>', '2023-03-14 14:05:50', '2023-03-14 14:05:50'),
(38, 1, 45, 3, 39, 'Travel Boutique', '<div>27-2 Herman and Pim met with Debbie at their home / office in Ulvenhout. Just a general catch up and informal meeting. Everything running well in Indonesia. Is using us already in Thailand and will use is in Vietnam as well once Marc has set up.</div>', '2023-03-14 14:21:53', '2023-03-14 14:21:53'),
(39, 1, 46, 3, 37, 'Travel XL', '<div>27-2 Herman &amp; Pim met with Peter and Patrick (both directors of Travel XL). This large consortium of TA\'s has worked with ICS pre-pandemic and a handful of agents are doing this still. However the majority books via tour operators. Peter, Patrick and ICS want to regain the trust of the TA\'s and make them book direct with ICS. In second half of March, Herman will do a zoom presentation and we will also send materials for their news letter to re-introduce us to all the TA\'s.</div>', '2023-03-14 14:28:33', '2023-03-14 14:28:33'),
(40, 1, 41, 3, 40, 'TOOKU / Anders Dan Anders', '<div>28-2. Herman had very good meeting with Nicky and Gwendoline. So Anders dan Anders is the brand for the group series. For this they have a small own dmc in Bali to supply work permits for their tour leaders. For their high-end FIT brand <strong>TOOKU</strong>, they currently work with Panorama with whom they have a good 8year old relationship. (group name for the company is master-tour) I am sure we are better than Panorama for high-end travel and they will give us a chance, as they are not happy with response time of panorama. Nicky will come to Indonesia this summer and I have invited her to do some unique ICS tours so we can showcase our strength. Herman will follow up.</div>', '2023-03-14 15:27:36', '2023-03-14 15:27:36'),
(41, 1, 42, 3, 41, 'Talisman', '<div>28-2. Herman met with owner and co-founder Don. Talisman is one of the best high-end touroperators of NL. Average file is 20k plus. Have a strong and loyal relation with Khiri, but appreciated me keeping in touch with them. Annelies &amp; Marjolijn with whom I have a good relation were not at the meeting but are still both at the company. I will keep in touch with them and try to persuade to try ICS out. In Indonesia or any of our other destinations.</div>', '2023-03-14 15:32:06', '2023-03-14 15:32:06'),
(42, 1, 43, 3, 42, 'Tico Reizen Amsterdam', '<div>2-3. Herman met with Charissa, one of the directors in Amsterdam. High-end operator from the Netherlands, average file pp 12k and up. For Charissa, it\'s all about personal relationships and appreciated me coming to meet her. She wills end us her next enquiry and compare price/quality to Khiri with whom they currently work. Herman to keep in touch with Charissa.</div>', '2023-03-14 15:49:17', '2023-03-14 15:49:17'),
(43, 1, 44, 3, 43, 'Zeppelin', '<div>28-2 Herman met with Jessie (owner) at her office in Laarne, near Gent. She is currently doing all by herself and coming back from a longbreak (burn-out). For Indonesia works with Happy Trails for the mid range budget trip but is willing to try us for the higher-end proposals. IS also looking to work with us in Vietnam and needs a DMC in the Philipines. Herman has connected Carsten re. the Philipines. And Herman to keep in touch with her re. Indonesia.&nbsp;</div>', '2023-03-17 08:29:13', '2023-03-17 08:29:13'),
(44, 1, 47, 3, 44, 'GCS', '<div>Marc and Herman, met with Brian and Alexandra at ITB. We discussed their various brands and opportunities and that we need to update pricing. Herman to follow up with Laura on this. Have instructed inbound to update pricing. Herman to work with GCS for groups and their other brands such a Great Value Vacations. Want to do groups with guaranteed departures.</div>', '2023-03-17 08:42:30', '2023-04-17 02:42:36'),
(45, 1, 48, 3, 45, 'Lotus Travel', '<div>9-3. Herman met with Elisabeth at ITB. Discussed updating of existing 15 packages. For now just need updated rates currently only until October31. Product and hotel offering still ok. Want to change payment conditions, I referred them to Marc to discuss this. Big company part of FIT reisen. We can increase the business with them if we deliver newsletter content. Going to 12.000 travellers in Germany. Happy with ICS, response time is good but urgently need new rates fo next year.&nbsp;</div>', '2023-03-17 08:46:50', '2023-11-13 21:57:59'),
(51, 6, 51, 6, 47, 'For Test Creating Notes', '<div>This is only for testing notes app project by IT Indonesia</div>', '2023-11-14 12:43:40', '2023-11-14 12:43:40'),
(52, 5, 53, 10, 45, 'Update on Thailand products', '<div>Needs island hopping programs + Northern Thailand &amp; Laos&nbsp;<br>They are interested in getting online tariff too, but reported that Exo was doing the same and they complained about the \"reporting part\" of it. E.g.: every time Lotus checks a rate online, it\'s considered as a request automatically by Exo system, so conversion rate is obviously very low (which Exo \"complains\" about).&nbsp;</div>', '2023-11-14 16:31:57', '2023-11-14 16:31:57'),
(53, 5, 54, 10, 48, 'Opportunities for Thailand & Hong-Kong', '<div>Julien met with Harald in Munich.&nbsp;<br>They want to stop working with TO in Germany because decrease in knowledge and expertise (post covid effect), so very open to work with DMCs directly.&nbsp;<br><br>Very high end clientele. Often go on Expedition ships and need post trip arrangements. Their clients usually book one way ticket and some travel for months...<br>They love sailing trips, I told them about Enrico already ! they said it would be great to have 2 weeks options around Phuket to replace their current sample programs in Mediterranean sea.&nbsp;<br>They might come to Thailand in February 2024. 6 pax. Julien &amp; Enrico sent a sample program in Gulf of Thailand.&nbsp;<br>They will also need operator in HK for shore excursions.&nbsp;<br><br></div>', '2023-11-14 21:42:02', '2023-11-14 21:42:02'),
(54, 5, 55, 10, 49, 'Business opportunities for Japan & China', '<div>Julien met with Sara at WTM (used to work with Travel Department in the past, they have another brand called TD active that focused on younger clientele).&nbsp;<br>they are looking for another DMC in Japan, introduced to our partner there already by email.&nbsp;<br>Leah Parmeshwar also contacted Julien after the show as they are looking for a DMC in China. Julien sent series (3 programs, 10 departures in 2024, 10 to 40 pax) to both our current partner and another one to make sure we provide rates.&nbsp;</div>', '2023-11-14 22:06:39', '2023-11-14 22:06:39'),
(55, 5, 57, 10, 50, 'Update on Thailand & Bali 2024 packages', '<div>Julien met with Laura and Alexandra at WTM.&nbsp;<br>Need all ICS countries contact list: sent by Julien.&nbsp;<br>Extension of rates for Bali flash sale need to be done (Herman working on it) Thailand: extended to middle of the year, need for the rest of the year.</div><div>Interested in Japan. Packages. julien to put them in contact: done.&nbsp;</div><div>Jacky Cooral honeymoon GCS January 24. Proposed a dinner at the Seen.</div>', '2023-11-15 16:00:59', '2023-11-15 16:00:59'),
(56, 5, 58, 10, 51, 'Update on D-Reizen new tailor made department', '<div>Julien met with Jutta, Dominique and Kimberly (following a conjunction of connections on LinkedIn and emails crossed with different person, Jutta &amp; Julien agreed to meet at WTM)<br>D-Reizen: same&nbsp; group as Prijsvrij. Big network of travel agencies in the Netherlands. In contact with Khiri already.&nbsp;<br>They are launching a tailor made department and they have recruited Dominque and Kimberly, 2 very young staff who just graduated and won a sales competition (TBC).&nbsp;<br>They want to start with few destinations first and Thailand is part of it.&nbsp;<br><br>They want 4 classic itineraries, including 1 for families. Dutch style: so mix of soft adventure and classics.&nbsp;<br><br>Julien sent 3 programs and working on family, proposed to work in 3 phases to accompany the \"tailormakingzation\" of the brand. Phase 1: multiday itineraries (done) / phase 2: breaking down these itineraries in modules / phase 3: breaking down the modules in day trips and transfers. All will depend on how the market / their clientele react and what they need. Julien also proposed online or onsite (including fams) trainings.&nbsp;&nbsp;</div>', '2023-11-16 17:44:48', '2023-11-16 17:44:48'),
(57, 5, 60, 10, 52, '2025 group series', '<div>Julien met with Martin, Joe &amp; Dominic (Julien worked with them in the past)&nbsp;</div><div>They are specialized in young travelers groups&nbsp;</div><div>Pre-Covid they used to have approx. 300 pax per year in Thailand if I’m not wrong, so good volume but unsurprisingly price and margins are low.&nbsp;</div><div>In 2024, according to their website that they have 5 itineraries, 63 departures in total…And they estimate 20 average pax per departure average...</div><div>They are all set for 2024 but they seem to have some doubts with they current DMC (potentially Khiri…). So they want us to requote <strong>only one </strong>of their program to test the waters with us: <strong>Camp Thailand Ultimate Adventure.&nbsp;</strong></div><div>They mentioned that most of people who signed up for their tours in 2023 and 2024 are girls. So they want to have a more “boy friendly” program to add to their 2025 programs. Working on all this.&nbsp;</div><div>&nbsp;</div>', '2023-11-17 19:43:15', '2023-11-17 19:43:15'),
(58, 5, 61, 10, 53, 'Thailand launch', '<div>Julien met with Zee.&nbsp;<br>Need few sample programs to launch Thailand on their website.&nbsp;<br>3 programs sent.</div>', '2023-11-17 23:19:50', '2023-11-17 23:19:50'),
(59, 5, 64, 10, 56, 'Considering a new DMC in Thailand?', '<div>Julien had lunch with Matthias in Munich.<br>small TO but quite modern and creative. All staff work from home, no office.&nbsp;<br>they bought It\'s your Trip during Covid.&nbsp;<br>They try to always put a \"wildlife\" or at least \"nature\" touch in each stop.&nbsp;<br>They are keen to change DMC in Thailand as their current one is very slow.&nbsp;<br>Matthias asked to receive 1 classic product and 1 new signature one mixing classic and nature. Julien already sent both (one is focusing on Khao Sok that they don\'t seem to sell, ,looking at their website) + island hopping combining eastern islands + Cambodia to push for other ICS destinations too. edited</div>', '2023-12-04 20:09:01', '2024-06-04 03:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('herman@icstravelgroup.com', '$2y$10$0sPJHUBekZY5cRsT2tdw5ear0SCRAVsF18uX9wZgz9.BaHmYT7/h6', '2024-02-15 06:30:48'),
('riskiandrean31@gmail.com', '$2y$10$eSDoqlTGH5oc2x/RC5VUVedvCV9spfu4FYrZ5AEv0lKNDhVJhb7pe', '2023-04-12 03:21:20'),
('yoga@icstravelgroup.com', '$2y$10$y6q7EF3tlzHI58y9cOl1FuVIgPOD1R6doK3pomKuxyfaYQF1I7NLO', '2024-02-15 06:33:15');

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
-- Table structure for table `send_mails`
--

CREATE TABLE `send_mails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('jqXD83GnQdvzz8tUxm2G0MdfXx057uzXcimGHBcL', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiaTZ5UFFOaUxXZ3hhT2Z5QlZEa0ZyRVFnODJMUEx4c0pzNE54eHlGYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb21wYW5pZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo1O3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJDRCVjV4YlZRM2VBcFYzbjNYdEpsbnVVUjFiUDUwN1VrQ3Q5THcyYnFZMXNFc1Z0Rjk4N29lIjt9', 1717551609),
('Lf3Yk30lIKJS6wrQS4BTK9D1ukgGjCIIJwMZjlVz', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMXNOZ1k0Yng4ODgxTGNVbW1FbmJXNTRxUzI2RDNNWVNnUHU5R0dDdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb21wYW5pZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo1O3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJDRCVjV4YlZRM2VBcFYzbjNYdEpsbnVVUjFiUDUwN1VrQ3Q5THcyYnFZMXNFc1Z0Rjk4N29lIjt9', 1717481509),
('PI5xNImjsJfw5j002uJ7JmUvsaqvFEEDWziLOTYC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNzh3YzljRTZEY3ZGYUlBWTRvRjlMWTlLQ2o3RFpiVlVLWndKYXNDTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717549918);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 1, 'herman\'s Team', 1, '2023-04-12 01:31:51', '2023-04-12 01:31:51'),
(2, 2, 'yoga\'s Team', 2, '2023-04-12 03:21:14', '2023-04-12 03:21:14'),
(3, 3, 'marc\'s Team', 3, '2023-04-12 08:38:03', '2023-04-12 08:38:03'),
(4, 4, 'carsten\'s Team', 4, '2023-04-12 08:38:33', '2023-04-12 08:38:33'),
(5, 5, 'Julien\'s Team', 1, '2023-11-11 15:52:28', '2023-11-11 15:52:28'),
(6, 6, 'IT\'s Team', 1, '2023-11-14 12:29:35', '2023-11-14 12:29:35');

-- --------------------------------------------------------

--
-- Table structure for table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Herman Hoven', 'herman@icstravelgroup.com', NULL, '$2y$10$/9YgnY5nYMZGGAn3ddTX/.Jstt60/0laC5JnZZDGzh7E/FwtHd96i', NULL, NULL, NULL, 'L1q9Ut1xj1ttXPNztAVfWMCxeNx3f5ozbXS4j9qYwMKPAknBsM0bh4gGgAmB', NULL, NULL, '2023-02-21 17:21:43', '2023-11-16 17:11:05'),
(2, 'Yoga Rizky', 'yoga@icstravelgroup.com', NULL, '$2y$10$r3yAq/kZZYDlstMFO2dBWenq1i6vy.9li25vYsA4ROIyU1NCNXNTa', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-23 09:56:43', '2023-02-23 09:56:43'),
(3, 'Marc de Swart', 'marc@icstravelgroup.com', NULL, '$2y$10$dTyubYbCtEaMl8Ryye5eK.KTIWXVjBt3.Qbp5m2qyWQ3r3z0qT7.i', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-23 12:27:07', '2023-02-23 12:27:07'),
(4, 'Carsten Schmidt', 'carsten@icstravelgroup.com', NULL, '$2y$10$q700R3Fg1xYwRi9zCd83..0nuj1ph8eLodtovu8I3RggL5oudje2u', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-23 12:27:44', '2023-02-23 12:27:44'),
(5, 'Julien Monnerie', 'julien@icstravelgroup.com', NULL, '$2y$10$4BV5xbVQ3eApV3n3XtJlnuUR1bP507UkCt9Lw2bqY1sEsVtF987oe', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-11 15:52:28', '2023-11-11 15:52:28'),
(6, 'IT Indonesia', 'it-id@icstravelgroup.com', NULL, '$2y$10$J9Q7Ug4f5BgH8NS3meJ1UufIR5zgafaFVD4GJrI8GoMK.PKV/vWN.', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-14 12:29:35', '2023-11-14 12:29:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `send_mails`
--
ALTER TABLE `send_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `send_mails`
--
ALTER TABLE `send_mails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
