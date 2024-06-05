-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema note_project
--

CREATE DATABASE IF NOT EXISTS note_project;
USE note_project;

--
-- Definition of table `companies`
--

DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) NOT NULL,
  `agent_type` varchar(255) NOT NULL,
  `company_country` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` (`id`,`company_name`,`agent_type`,`company_country`,`created_at`,`updated_at`) VALUES 
 (1,'Global Travel Moments','TA','UK','2023-02-22 01:26:52','2023-02-22 01:26:52'),
 (2,'Chic Locations','TO','UK','2023-02-22 17:26:21','2023-02-22 17:26:21'),
 (3,'Cloud 10 Travel','TA','USA','2023-02-22 17:30:04','2023-02-22 17:30:04'),
 (4,'Trips & Ships Luxury Travel','TA','USA','2023-02-22 17:32:23','2023-02-22 17:32:23'),
 (5,'SSR Holiday','TO','India','2023-02-22 17:40:11','2023-02-22 17:40:11'),
 (6,'Wish Viagens & Turismo','TA','Brazil','2023-02-22 17:42:45','2023-02-22 17:42:45'),
 (7,'Con Questa','TO','Netherlands','2023-02-22 17:46:33','2023-02-22 17:46:33'),
 (8,'Seamless Travel Agency','TA','USA','2023-02-22 17:55:03','2023-02-22 17:55:03'),
 (9,'The Accomplished Traveller','TO - Virtuoso','USA','2023-02-22 18:07:15','2023-02-22 18:07:15'),
 (10,'Eraso Travel','ON CHECK','USA','2023-02-22 18:13:07','2023-02-22 18:13:07'),
 (11,'Avila Reizen','TO','Netherlands','2023-02-22 18:17:52','2023-02-22 18:17:52'),
 (12,'Viajan Turismo & Expedicoes','ON CHECK','Brazil','2023-02-22 18:20:10','2023-02-22 18:20:10'),
 (13,'Origin.me','TO','USA','2023-02-22 18:23:04','2023-02-22 18:23:04'),
 (14,'Cookson Adventures','TO','UK','2023-02-22 18:23:27','2023-02-22 18:23:27'),
 (15,'Stagings','TO','Latvia','2023-02-22 18:23:46','2023-02-22 18:23:46'),
 (16,'Prana Travel Design','TO','Germany','2023-02-22 18:24:11','2023-02-22 18:24:11'),
 (17,'Exotic Tour / Mistral Tour','ON CHECK','Italy','2023-02-22 18:24:30','2023-02-22 18:24:30'),
 (18,'Ailes','TO','Switzerland','2023-02-22 18:25:06','2023-02-22 18:25:06'),
 (19,'6 Degrees','TA','USA','2023-02-22 18:25:27','2023-02-22 18:25:27'),
 (20,'Embark Beyond (Virtuoso)','TA','USA','2023-02-22 18:26:06','2023-02-22 18:26:06'),
 (21,'Born to Travel','TA','USA','2023-02-22 18:26:31','2023-02-22 18:26:31'),
 (22,'Belo Viaja','TA','Mexico','2023-02-22 18:27:00','2023-02-22 18:27:00'),
 (23,'Geographic Expeditions','TO','USA','2023-02-22 18:27:37','2023-02-22 18:27:37'),
 (24,'Truffle Pig','TO','USA','2023-02-22 18:27:57','2023-02-22 18:27:57'),
 (25,'Luxe & Nyx','TO','USA','2023-02-22 18:28:18','2023-02-22 18:28:18'),
 (26,'The Passionist','TO','UK','2023-02-22 18:28:42','2023-02-22 18:28:42'),
 (27,'Paveway Explores','TO','Singapore','2023-02-22 18:29:11','2023-02-22 18:29:11'),
 (28,'Lisa Lindblad Travel Design','TA','USA','2023-02-22 18:29:30','2023-02-22 18:29:30'),
 (29,'Adventum Travel','TO','AUS','2023-02-22 18:29:50','2023-02-22 18:29:50'),
 (30,'Hello Word / Surrey Hills','TO','AUS','2023-02-22 18:30:10','2023-02-22 18:30:10'),
 (31,'TRUVI','TO','Indonesia','2023-02-22 18:30:34','2023-02-22 18:30:34'),
 (32,'Perez–Maldonado','TO - Virtuoso','Mexico','2023-02-22 18:31:04','2023-02-22 18:31:04'),
 (33,'Panache World','TO','India','2023-02-22 18:31:22','2023-02-22 18:31:22'),
 (34,'Chic Voyage','TO','Netherlands','2023-02-22 18:31:43','2023-02-22 18:31:43'),
 (35,'Allure Travel','TO','AUS','2023-02-22 18:32:01','2023-02-22 18:32:01'),
 (36,'Teranui by Tselana Travel','TO','France','2023-02-22 18:32:17','2023-02-22 18:32:17'),
 (37,'Travel XL','TA','Netherlands','2023-03-14 21:44:27','2023-03-14 21:44:27'),
 (38,'Pelikaan Travel Group','TA','Netherlands','2023-03-14 21:44:58','2023-03-14 21:44:58'),
 (39,'Travel Boutique','TO','Netherlands','2023-03-14 21:45:40','2023-03-14 21:45:40'),
 (40,'TOOKU (Anders Dan Anders)','TO','Belgium','2023-03-14 21:46:26','2023-03-14 21:46:26'),
 (41,'Talisman','TO','Netherlands','2023-03-14 21:46:46','2023-03-14 21:46:46'),
 (42,'Tico Reizen','TO','Netherlands','2023-03-14 21:47:11','2023-03-14 21:47:11'),
 (43,'Zeppelin Reizen','TO','Belgium','2023-03-14 21:56:03','2023-03-14 21:58:56'),
 (44,'GCS / Great Value Vacation','TO','USA','2023-03-17 16:35:52','2023-03-17 16:35:52'),
 (45,'Lotus Travel','TO','Germany','2023-03-17 16:36:37','2023-03-17 16:36:37');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;


--
-- Definition of table `contact_people`
--

DROP TABLE IF EXISTS `contact_people`;
CREATE TABLE `contact_people` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `company_id` bigint(20) unsigned NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_people`
--

/*!40000 ALTER TABLE `contact_people` DISABLE KEYS */;
INSERT INTO `contact_people` (`id`,`user_id`,`company_id`,`contact_name`,`title`,`phone_number`,`email`,`created_at`,`updated_at`) VALUES 
 (1,1,1,'Duncan Greenfield-Turk','Chief Curator',NULL,'duncan@globaltravelmoments.com','2023-02-22 01:27:31','2023-02-22 01:27:31'),
 (2,1,2,'David Kevan','Partner & Product Person',NULL,'david@chiclocations.com','2023-02-22 17:26:49','2023-02-22 17:26:49'),
 (3,1,3,'Alyson Nash','Founder',NULL,'alyson@cloud10travel.com','2023-02-22 17:30:27','2023-02-22 17:30:27'),
 (4,1,4,'Angela Hughes','Owner',NULL,'sales@tripsandships.com','2023-02-22 17:32:53','2023-02-22 17:32:53'),
 (5,1,5,'Sapnael Rao','Founder',NULL,'sapnael@ssrholidays.in','2023-02-22 17:40:56','2023-02-22 17:40:56'),
 (6,1,6,'Juliana Vivieros','-',NULL,'juliana@wishturismo.com.br','2023-02-22 17:43:30','2023-02-22 17:43:30'),
 (7,1,7,'Lesley Klavert','Lifestyle Manager',NULL,'lesley@con-questa.com','2023-02-22 17:47:04','2023-02-22 17:47:04'),
 (8,1,8,'Anthea Gilchrist','Luxury Travel Designer',NULL,'anthea@seamlesstravelagency.com','2023-02-22 17:55:35','2023-02-22 17:55:35'),
 (9,1,9,'Blaine Horton','Director of Leisure Travel',NULL,'blaine@theaccomplishedtraveler.com','2023-02-22 18:07:48','2023-02-22 18:07:48'),
 (10,1,9,'Jason C Miller','Founder / CEO',NULL,'jason@theaccomplishedtraveler.com','2023-02-22 18:08:28','2023-02-22 18:08:28'),
 (11,1,10,'Jim Eraso','Founder',NULL,'jim@jimerasotravel.com','2023-02-22 18:13:50','2023-02-22 18:13:50'),
 (12,1,11,'Tim van der Wel','Founder',NULL,'tim@avilareizen.nl','2023-02-22 18:18:20','2023-02-22 18:18:20'),
 (13,1,12,'Jan Neumark','Founder',NULL,'jan@viajan.com.br','2023-02-22 18:20:43','2023-02-22 18:20:43'),
 (14,1,13,'Federici Botta Aramburu','Travel Operations Manager',NULL,'federico@origin.me','2023-02-22 18:33:11','2023-02-22 18:33:11'),
 (15,1,14,'William Siddeley','Senior Concept Designer',NULL,'will@cooksonadventures.com','2023-02-22 18:34:02','2023-02-22 18:34:02'),
 (16,1,15,'Anna Locika','Travel Consultant',NULL,'anna.locika@stagings.com','2023-02-22 18:34:35','2023-02-22 18:34:35'),
 (17,1,16,'Stephanie Syiemlieh','Founder',NULL,'s.syiemlieh@pranatraveldesign.de','2023-02-22 18:35:02','2023-02-22 18:35:02'),
 (18,1,17,'Diego Firenze','General Manager',NULL,'diego.firenze@exotictour.it','2023-02-22 18:36:57','2023-02-22 18:39:51'),
 (19,1,18,'Manuel Chablais','Director / Owner',NULL,'no@email','2023-02-22 18:38:02','2023-02-22 18:38:02'),
 (20,1,19,'Anna Gilbert','Senior VP Sales & Partnerships',NULL,'anna@travel6degrees.com','2023-02-22 18:39:04','2023-02-22 18:39:04'),
 (21,1,20,'Julie Banning','Luxury Travel Advisor',NULL,'julie@embarkbeyond.com','2023-02-22 18:39:35','2023-02-22 18:39:35'),
 (22,1,21,'Hope J. Smith','Travel Connoisseur',NULL,'hope@born2travel.com','2023-02-22 18:40:32','2023-02-22 18:40:32'),
 (23,1,22,'Joana Bautista','Operations Manager',NULL,'joana@beloviaje.com','2023-02-22 18:41:14','2023-02-22 18:41:14'),
 (24,1,23,'Tina Liadis','Director, Global sales (USA)',NULL,'tina@geox.com','2023-02-22 18:41:51','2023-02-22 18:41:51'),
 (25,1,23,'Charlie Lockwood','Director, Global sales (UK)',NULL,'charlie@geox.com','2023-02-22 18:42:21','2023-02-22 18:42:21'),
 (26,1,24,'Anthony Weersing','Trip Planner',NULL,'anthony@trufflepig.com','2023-02-22 18:43:01','2023-02-22 18:43:01'),
 (27,1,25,'Katie Parris Griffin','Founder & Chief Designer',NULL,'katie@luxeandnyx.com','2023-02-22 18:43:42','2023-02-22 18:43:42'),
 (28,1,26,'Rene Roseburg','Managing Director / Owner',NULL,'rene@thepassionist.de','2023-02-22 18:44:35','2023-02-22 18:44:35'),
 (29,1,27,'Thomas NG','Managing Director',NULL,'thomas@pavewayexplorer.com','2023-02-22 18:45:18','2023-02-22 18:45:18'),
 (30,1,28,'Hannah Sari','-',NULL,'hannah@lisalindblad.com','2023-02-22 18:45:46','2023-02-22 18:45:46'),
 (31,1,29,'Michelle Slack-Smith','Director',NULL,'michelle@adventumtravel.com.au','2023-02-22 18:46:23','2023-02-22 18:46:23'),
 (32,1,30,'Debra Carr','Director / Travel Desinger',NULL,'surreyhills@helloworld.com','2023-02-22 18:46:54','2023-02-22 18:46:54'),
 (33,1,31,'Kevin Hartanto','Founder & CEO',NULL,'no@email','2023-02-22 18:47:27','2023-02-22 18:47:27'),
 (34,1,32,'Paulina Muñoz Licon','-',NULL,'paulina.munoz@perezmaldonado.com','2023-02-22 18:47:57','2023-02-22 18:47:57'),
 (35,1,33,'Sanjar Imam','Founder / Director',NULL,'sanjar@panacheworld.com','2023-02-22 18:48:43','2023-02-22 18:48:43'),
 (36,1,34,'Minette Scheffers','Owner',NULL,'minette@chicvoyage.nl','2023-02-22 18:49:23','2023-02-22 18:49:23'),
 (37,1,35,'Janine Bubb','Travel Advisor',NULL,'Janine.bubb@alluretravel.com.au','2023-02-22 18:49:58','2023-02-22 18:49:58'),
 (38,1,36,'Aimee Bon-Hecker','Managing Director & Travel Designer',NULL,'abonhecker@teranui.com','2023-02-22 18:51:16','2023-02-22 18:51:16'),
 (39,1,38,'Bert Thijsen','Commercial & Operational Director',NULL,'b.thijsen@pelikaantravelgroup.com','2023-03-14 21:51:39','2023-03-14 21:51:39'),
 (40,1,40,'Gwendoline de Bruycker','Sales Manager',NULL,'gwendoline@master-tours.com','2023-03-14 21:52:53','2023-03-14 21:52:53'),
 (41,1,40,'Nicky Baert','Product Manager','+32485386855','nicky@master-tours.com','2023-03-14 21:53:48','2023-03-14 21:53:48'),
 (42,1,41,'Don Haagh','Owner',NULL,'dhaagh@talisman.nl','2023-03-14 21:55:22','2023-03-14 21:55:22'),
 (43,1,42,'Charissa Martens','Director',NULL,'charissa@tico.nl','2023-03-14 21:58:02','2023-03-14 21:58:02'),
 (44,1,43,'Jessie Oosterlynck','Owner',NULL,'info@zeppelinreizen.be','2023-03-14 22:00:53','2023-03-14 22:00:53'),
 (45,1,39,'Debby Snelders','Owner',NULL,'Debby@travelboutique.nl','2023-03-14 22:20:54','2023-03-14 22:20:54'),
 (46,1,37,'Peter van Limburg','Director',NULL,'p.vanlimburg@travelxl.nl','2023-03-14 22:25:32','2023-03-14 22:25:32'),
 (47,1,44,'Alexandra Falbo','Product Development Manager',NULL,'afalbo@gcs-ltd.com','2023-03-17 16:39:06','2023-03-17 16:39:06'),
 (48,1,45,'Elisabeth Beyrich','Lotus Travel',NULL,'elisabeth.beyrich@lotus-travel.com','2023-03-17 16:43:23','2023-03-17 16:43:23');
/*!40000 ALTER TABLE `contact_people` ENABLE KEYS */;


--
-- Definition of table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `event_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` (`id`,`user_id`,`event_name`,`created_at`,`updated_at`) VALUES 
 (1,1,'No Event','2023-02-22 01:24:55','2023-02-22 01:24:55'),
 (2,1,'Further East Nov 22','2023-02-22 01:26:15','2023-03-14 22:01:37'),
 (3,1,'ITB 2023 + Sales Calls NL,BE,UK','2023-03-14 21:43:16','2023-03-14 21:43:16');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;


--
-- Definition of table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;


--
-- Definition of table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`,`migration`,`batch`) VALUES 
 (1,'2014_10_12_000000_create_users_table',1),
 (2,'2014_10_12_100000_create_password_resets_table',1),
 (3,'2019_08_19_000000_create_failed_jobs_table',1),
 (4,'2019_12_14_000001_create_personal_access_tokens_table',1),
 (5,'2023_01_15_130254_create_note_takings_table',1),
 (6,'2023_01_16_032505_create_companies_table',1),
 (7,'2023_01_28_105526_create_roles_table',1),
 (8,'2023_01_31_035032_create_events_table',1),
 (9,'2023_01_31_035133_create_contact_people_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


--
-- Definition of table `note_takings`
--

DROP TABLE IF EXISTS `note_takings`;
CREATE TABLE `note_takings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `contact_id` bigint(20) unsigned NOT NULL,
  `event_id` bigint(20) unsigned NOT NULL,
  `company_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `note_takings`
--

/*!40000 ALTER TABLE `note_takings` DISABLE KEYS */;
INSERT INTO `note_takings` (`id`,`user_id`,`contact_id`,`event_id`,`company_id`,`title`,`body`,`created_at`,`updated_at`) VALUES 
 (1,1,1,2,1,'Meeting with Global Travel Moments','<div>Notes: 4 *&amp; 5*. UK and US markets, book a lot of beach-only. A lot of honeymooners and couples in the 50s &amp; 60s. Currently booking through Kuoni / Carrier (UK) or A &amp; K US. <em>Follow up with presentations.</em></div>','2023-02-22 01:29:11','2023-02-22 17:35:53'),
 (2,1,2,2,2,'Meeting with Chic Location','<div>Work from home small TOV very worried about recension coming up, not many bookings to Asia yet after the pandemic. Currently using Asian Trails (ID), Diethelm (TH), and Asia Plus (VN). Looking for a change possibly in ID. <em>Herman will follow up.</em></div>','2023-02-22 17:27:52','2023-02-22 17:36:43'),
 (3,1,3,2,3,'Meeting with Cliud 10 Travel','<div>Most of the clientele from the East coast knows Paul well. Usually, bookings hotels direct not through DMC. For Thailand using Smiling Albino. Open to using us in other destinations. <em>Follow up cc Tom/Paul.</em></div>','2023-02-22 17:31:30','2023-02-22 17:38:19'),
 (4,1,4,2,4,'Meeting with Trips & Ships Luxury Travel','<div>Had a Thailand and Japan enquiry and would send it over to Marc but never did. Travel Leaders /Innernova affiliated. Books are currently with Kensington sometimes but are ready to go direct to DMCs. <em>Follow up cc Tom/Paul</em>.</div>','2023-02-22 17:34:23','2023-02-22 17:34:23'),
 (5,1,5,2,5,'Meeting with SSR Holidays','<div>Knows the people from TO-DMC well, former partners. Has 22,000 agents across India. For hotels, he does direct or via bed bank. Not a hot lead. <em>Follow up? introduce and hand over to Widi.</em></div>','2023-02-22 17:42:00','2023-02-22 17:42:00'),
 (6,1,6,2,6,'Meeting with Wish Viagens & Turismo','<div>Already knows Leo well – Very happy to give us a chance when an Asia request comes up. <em>Herman to reintroduce Leo.</em></div>','2023-02-22 17:44:31','2023-02-22 17:44:31'),
 (7,1,7,2,7,'Meeting with Con Questa','<div>Concierge + service from the Netherlands. Ajax team as their client and many ex-players, some celebrities also. 75 elite members paying + 1100 affiliate members. Starting to use DMCs for Asia, they were not offering Asia yet. <em>Hot lead, Herman to follow up.</em></div>','2023-02-22 17:47:40','2023-02-22 17:47:40'),
 (8,1,8,2,8,'Meeting with Seamless Travel Agency','<div>Local TA, one of 110 agents affiliated with <a href=\"https://departurelounge.com/\">departurlounge.com</a> (<em>virtuoso</em>). Actively looking for a DMC in Asia. <em>Follow up cc Tom/Paul.</em></div>','2023-02-22 17:57:06','2023-02-22 17:57:06'),
 (9,1,10,2,9,'Meeting with The Accomplished Traveller','<div>Top-end travel, 90% USA clients. Do all hotels direct, currently working with DA in many destinations. Good meeting but I don’t see them making a change to ICS now. <em>Follow up cc Tom/Paul.</em></div>','2023-02-22 18:11:46','2023-02-22 18:11:46'),
 (10,1,11,2,10,'Meeting with Eraso Travel','<div>The old guy running a small tour operator out of Florida. D Now using A &amp; K in many of our destinations but looking for DMC in some of our destinations. <em>Follow up cc Tom/Paul.</em></div>','2023-02-22 18:15:06','2023-02-22 18:15:06'),
 (11,1,12,2,11,'Meeting with Avila Reizen','<div>Is working with Khiri in many of our destinations. Herman knows Tim well from his Khiri days. Wants to focus more on Asia (<em>they are a Latin-America specialist</em>) Currently working with 1 DMC (Khiri) per destination but open to working with multiple in the future possibly. <em>Herman and Marc to keep in touch with Tim. HH Followed up with presentations.</em></div>','2023-02-22 18:19:22','2023-02-22 18:19:22'),
 (12,1,13,2,12,'Meeting with Viajan Turismo & Expedicoes','<div>Brazilian living in San Fransisco. Clientele is Brazilians (mostly) and some Americans. Looking for SEA DMC. <em>HH Followed up with presentations, and introduced to Tom, Paul and Leo.</em></div>','2023-02-22 18:21:26','2023-02-22 18:21:26'),
 (13,1,14,2,13,'Meeting with Origin.me','<div>The tech-driven travel company, 90% of clients are from the USA. Book hotels directly. <em>Herman to follow up with the ICS presentation, HH Followed up with presentations.</em></div>','2023-02-22 18:52:53','2023-02-22 18:52:53'),
 (14,1,15,2,14,'Meeting with Cookson Adventures','<div>The high-end Adventure travel company, that only do about 35 trips per year. Very specialized in highly tailored adventures. Mostly small groups and multi-gen families. <em>Herman to send ICS STYLE presentations, HH Followed up with presentations.</em></div>','2023-02-22 18:54:04','2023-02-22 18:54:04'),
 (15,1,16,2,15,'Meeting with Stagings','<div>The small luxury operator from Latvia, sells lots of Africa but wants to do more in Asia. Currently working with A &amp; K in SEA. <em>Looking for DMC in Japan HH has introduced to Carsten</em></div>','2023-02-22 18:56:40','2023-02-22 18:56:40'),
 (16,1,17,2,16,'Meeting with Prana Travel Design','<div>German high-end TO working with several agents across the company. Currently working with Exo in most of our destinations but are open to trying ICS when there’s a possibility. <em>Herman to follow up. HH Followed up with presentations.</em></div>','2023-02-22 19:01:36','2023-02-22 19:01:36'),
 (17,1,18,2,17,'Meeting with Exotic Tour / Mistral Tour','<div>Exoctic your &gt; Indonesia focussed TO, working with Pacto but complaining about response time. Herman to follow up. For Thailand and Indochina, their brand is Mistral, he’s ok for us to connect with Antonio Dirrico (see above) for those destinations.<em> HH Followed up with presentations.</em></div>','2023-02-22 19:39:40','2023-02-22 19:39:40'),
 (18,1,19,2,18,'Meeting with Ailes','<div>Top luxury operator (Traveller Made) who has offices in Switzerland, Marrakech, and Paris. Actively looking for a DMC in Thailand, possibly elsewhere in Indochina too. In Indonesia working with TOP Indonesia, there is no reason to change. Marc to follow up for TH. <em>HH Followed up with presentations and introduced Marc.</em></div>','2023-02-22 20:08:34','2023-02-22 20:08:34'),
 (19,1,20,2,19,'Meeting with 6 Degrees','<div>Knows us well, and has travelled with us. Will use us for any SEA itinerary. <em>Follow up cc Tom/Paul.</em></div>','2023-02-22 20:10:45','2023-02-22 20:10:45'),
 (20,1,21,2,20,'Meeting with Embark Beyond','<div>Collective of 150 luxury agents, mostly East Coast, know us through Paul and Tom,&nbsp;<em>Follow up cc Tom/Paul.</em></div>','2023-02-22 20:25:11','2023-02-22 20:25:11'),
 (21,1,22,2,21,'Meeting with Born to Travel','<div>Reconnect with Paul &amp; Tom?<em> Follow up cc Tom/Paul</em></div>','2023-02-22 20:26:08','2023-02-22 20:26:08'),
 (22,1,23,2,22,'Meeting with Belo Viaja','<div>Mexican high-end agents, curating long trips to SEA, usually 3 to 4 weeks including Thailand, Indochina, Bali, and Maldives. Great meeting and very happy to start working with ICS. Introduce to Leo and follow up with the ICS presentation. <em>HH Followed up with presentations and introduced Marc.</em></div>','2023-02-22 20:27:09','2023-02-22 20:27:09'),
 (23,1,24,2,23,'Meeting with Geographic Expeditions','<div>Very attractive account, tailor-made, active itineraries, adventure, hotels included. Currently very much in bed with DA (have been for a long time) are contemplating moving to Asia Concierge. Have heard of us but are not very familiar with ICS. Impressed with STYLE and I will send over our presentation but there is a small chance of them moving to ICS soon. <em>HH Followed up with presentations.</em></div>','2023-02-22 21:37:38','2023-02-22 21:37:38'),
 (24,1,26,2,24,'Meeting with Truffle Pig','<div>I know Trufflepig well from my Khiri time. Worked with them for years. We mostly talked about Indonesia and travel in general, not a hot lead for ICS at this moment, unfortunately. They are very loyal to their DMCs. HH will keep in touch with him though.&nbsp;</div>','2023-02-22 21:45:43','2023-02-22 21:45:43'),
 (25,1,27,2,25,'Meeting with Luxe & Nyx','<div>Doing trips for luxury leisure. Couples manly. Have about 35 staff throughout. Thailand, Bali, Vietnam, and Cambodia. Working with DA currently. Open to trying us. Knows Paul. <em>Follow up cc Tom/Paul</em></div>','2023-02-22 21:48:24','2023-02-22 21:48:24'),
 (26,1,28,2,26,'Meeting with The Passionist','<div>Currently booking everything through Asia Travel Specialist (based in the UK) who then use their preferred DMC. However Rene does have a say in this, and he wants to try ICS. Was a great meeting. Herman to follow up.&nbsp;<em>HH Followed up with presentations</em></div>','2023-02-22 21:49:20','2023-02-22 21:49:20'),
 (27,1,29,2,27,'Meeting with Paveway Explores','<div>Came to FE only for Indonesia really. Discussed a 7-day program for Bali. <em>Herman to follow up.</em></div>','2023-02-22 21:51:07','2023-02-22 21:51:07'),
 (28,1,30,2,28,'Meeting with Lisa Lindblad Travel Design','<div>New York based agency, African specialist, came to show to learn about Asia. Has 2 enquiries for SEA. Will send it to us but hasn’t yet. …to follow up. Books some hotels and guides direct in Europe and Africa, but for Asia plans to use DMC for all. Good lead. <em>Follow up cc Tom/Paul</em></div>','2023-02-22 21:52:26','2023-02-22 21:52:26'),
 (29,1,31,2,29,'Meeting with Adventum Travel','<div>Small Australian TO looking for a DMC in SEA. Impressed with ICS presentations (STYLE). Doing many multi-gen trips to our region. <em>Marc/Herman to follow up</em></div>','2023-02-22 21:54:01','2023-02-22 21:54:01'),
 (30,1,32,2,30,'Meeting with Hello Word / Surrey Hills','<div>Small TO from near Melbourne, doing mostly Europa and SEA, and little Indonesia.&nbsp;<em>Marc/Herman to follow up</em></div>','2023-02-22 22:01:10','2023-02-22 22:01:10'),
 (31,1,33,2,31,'Meeting with TRUVI','<div>An outbound luxury company from Jakarta. Experiential outbound travel is in its infancy, he’s very much educating his travellers that travel is about more than a nice hotel. Tough market but some potential for Indonesian groups to SEA 10-12 pax. <em>Marc/Herman to follow up, HH followed up with presentations</em></div>','2023-02-22 22:02:05','2023-02-22 22:02:05'),
 (32,1,34,2,32,'Meeting with Perez–Maldonado','<div>Hot lead. Introduce to Leo. Specialized in Asia honeymoons and multi-gen travel. Long trip. Currently with A&amp;K and Exo but looking for a change. Very good chance for ICS! <em>HH has introduced Leo</em></div>','2023-02-22 22:03:05','2023-02-22 22:03:05'),
 (33,1,35,2,33,'Meeting with Panache World','<div>Traveller Made agency. High-end Indian. Knows the people behind the tripfactory well. In Indonesia with TOP Indonesia, not looking for a change. In other countries with EASIA, is open to change. Marc/Carsten to follow up?&nbsp;<em>HH has followed up and introduced to Carsten/Marc</em></div>','2023-02-22 22:04:27','2023-02-22 22:04:27'),
 (34,1,36,2,34,'Meeting with Chic Voyage','<div>Traveller Made agency. Herman has a good personal relationship with Minette. Formerly with Khiri but open to try ICS for any next inquiry. <em>Herman/Marc to keep in touch. HH followed up with presentations</em></div>','2023-02-22 22:05:41','2023-02-22 22:05:41'),
 (35,1,37,2,35,'Meeting with Allure Travel','<div>Another Australian agency, has low potential. Not interested in Indonesia but is interested in other SEA destinations. Impressed with the STYLE presentation. <em>Herman to send.</em></div>','2023-02-22 22:06:34','2023-02-22 22:06:34'),
 (36,1,38,2,36,'Meeting with Teranui by Tselana Travel','<div>Not on our list for appointments but came to the table to specifically talk about Indonesia. Which we did. Urgently need a DMC here. <em>Herman to follow up.</em></div>','2023-02-22 22:07:21','2023-02-22 22:07:21'),
 (37,1,39,3,38,'Pelikaan Travel Group','<div>27 Feb - Herman &amp; Pim met with Bert (Commercial and Operational Director). The group has various companies but for us interesting would be their group of travel agents (TA) and independent travel agents (ZRA\'s), currently all their agents are booking with TO\'s but Bert wants to promote booking direct with DMC\'s (us). A large group of their TA\'s will have an incentive trip this March and they will discuss working direct with DMC\'s there. Herman to follow up with Bert in second half of March.</div>','2023-03-14 22:05:50','2023-03-14 22:05:50'),
 (38,1,45,3,39,'Travel Boutique','<div>27-2 Herman and Pim met with Debbie at their home / office in Ulvenhout. Just a general catch up and informal meeting. Everything running well in Indonesia. Is using us already in Thailand and will use is in Vietnam as well once Marc has set up.</div>','2023-03-14 22:21:53','2023-03-14 22:21:53'),
 (39,1,46,3,37,'Travel XL','<div>27-2 Herman &amp; Pim met with Peter and Patrick (both directors of Travel XL). This large consortium of TA\'s has worked with ICS pre-pandemic and a handful of agents are doing this still. However the majority books via tour operators. Peter, Patrick and ICS want to regain the trust of the TA\'s and make them book direct with ICS. In second half of March, Herman will do a zoom presentation and we will also send materials for their news letter to re-introduce us to all the TA\'s.</div>','2023-03-14 22:28:33','2023-03-14 22:28:33'),
 (40,1,41,3,40,'TOOKU / Anders Dan Anders','<div>28-2. Herman had very good meeting with Nicky and Gwendoline. So Anders dan Anders is the brand for the group series. For this they have a small own dmc in Bali to supply work permits for their tour leaders. For their high-end FIT brand <strong>TOOKU</strong>, they currently work with Panorama with whom they have a good 8year old relationship. (group name for the company is master-tour) I am sure we are better than Panorama for high-end travel and they will give us a chance, as they are not happy with response time of panorama. Nicky will come to Indonesia this summer and I have invited her to do some unique ICS tours so we can showcase our strength. Herman will follow up.</div>','2023-03-14 23:27:36','2023-03-14 23:27:36'),
 (41,1,42,3,41,'Talisman','<div>28-2. Herman met with owner and co-founder Don. Talisman is one of the best high-end touroperators of NL. Average file is 20k plus. Have a strong and loyal relation with Khiri, but appreciated me keeping in touch with them. Annelies &amp; Marjolijn with whom I have a good relation were not at the meeting but are still both at the company. I will keep in touch with them and try to persuade to try ICS out. In Indonesia or any of our other destinations.</div>','2023-03-14 23:32:06','2023-03-14 23:32:06'),
 (42,1,43,3,42,'Tico Reizen Amsterdam','<div>2-3. Herman met with Charissa, one of the directors in Amsterdam. High-end operator from the Netherlands, average file pp 12k and up. For Charissa, it\'s all about personal relationships and appreciated me coming to meet her. She wills end us her next enquiry and compare price/quality to Khiri with whom they currently work. Herman to keep in touch with Charissa.</div>','2023-03-14 23:49:17','2023-03-14 23:49:17'),
 (43,1,44,3,43,'Zeppelin','<div>28-2 Herman met with Jessie (owner) at her office in Laarne, near Gent. She is currently doing all by herself and coming back from a longbreak (burn-out). For Indonesia works with Happy Trails for the mid range budget trip but is willing to try us for the higher-end proposals. IS also looking to work with us in Vietnam and needs a DMC in the Philipines. Herman has connected Carsten re. the Philipines. And Herman to keep in touch with her re. Indonesia.&nbsp;</div>','2023-03-17 16:29:13','2023-03-17 16:29:13'),
 (44,1,47,3,44,'GCS','<div>Marc and Herman, met with Brian and Alexandra at ITB. We discussed their various brands and opportunities and that we need to update pricing. Herman to follow up with Laura on this. Have instructed inbound to update pricing. Herman to work with GCS for groups and their other brands such a Great Value Vacations. Want to do groups with guaranteed departures.</div>','2023-03-17 16:42:30','2023-03-17 16:42:30'),
 (45,1,48,3,45,'Loyus Travel','<div>9-3. Herman met with Elisabeth at ITB. Discussed updating of existing 15 packages. For now just need updated rates currently only until October31. Product and hotel offering still ok. Want to change payment conditions, I referred them to Marc to discuss this. Big company part of FIT reisen. We can increase the business with them if we deliver newsletter content. Going to 12.000 travellers in Germany. Happy with ICS, response time is good but urgently need new rates fo next year.</div>','2023-03-17 16:46:50','2023-03-17 16:46:50');
/*!40000 ALTER TABLE `note_takings` ENABLE KEYS */;


--
-- Definition of table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;


--
-- Definition of table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;


--
-- Definition of table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL,
  `Roles` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) VALUES 
 (1,'Herman Hoven','herman@icstravelgroup.com',NULL,'$2y$10$/RQax8/qpBuoWfT6vP8dQuXijuMEcTNh0Pmd9qmP.XNhBoTZnUJMy',NULL,'2023-02-22 01:21:43','2023-02-22 01:21:43'),
 (2,'Yoga Rizky','yoga@icstravelgroup.com',NULL,'$2y$10$r3yAq/kZZYDlstMFO2dBWenq1i6vy.9li25vYsA4ROIyU1NCNXNTa',NULL,'2023-02-23 17:56:43','2023-02-23 17:56:43'),
 (3,'Marc de Swart','marc@icstravelgroup.com',NULL,'$2y$10$dTyubYbCtEaMl8Ryye5eK.KTIWXVjBt3.Qbp5m2qyWQ3r3z0qT7.i',NULL,'2023-02-23 20:27:07','2023-02-23 20:27:07'),
 (4,'Carsten Schmidt','carsten@icstravelgroup.com',NULL,'$2y$10$q700R3Fg1xYwRi9zCd83..0nuj1ph8eLodtovu8I3RggL5oudje2u',NULL,'2023-02-23 20:27:44','2023-02-23 20:27:44');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
