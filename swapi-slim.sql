-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 09, 2021 at 11:10 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slim`
--

-- --------------------------------------------------------

--
-- Table structure for table `starships`
--

DROP TABLE IF EXISTS `starships`;
CREATE TABLE IF NOT EXISTS `starships` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `starship_class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost_in_credits` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `length` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crew` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passengers` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_atmosphering_speed` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hyperdrive_rating` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MGLT` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cargo_capacity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumables` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `films` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilots` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `units` int(10) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `edited` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `starships`
--

INSERT INTO `starships` (`id`, `name`, `model`, `starship_class`, `manufacturer`, `cost_in_credits`, `length`, `crew`, `passengers`, `max_atmosphering_speed`, `hyperdrive_rating`, `MGLT`, `cargo_capacity`, `consumables`, `films`, `pilots`, `url`, `units`, `created`, `edited`) VALUES
(2, 'CR90 corvette', 'CR90 corvette', 'corvette', 'Corellian Engineering Corporation', '3500000', '150', '30-165', '600', '950', '2.0', '60', '3000000', '1 year', 'https://swapi.dev/api/films/1/,https://swapi.dev/api/films/3/,https://swapi.dev/api/films/6/', '', 'https://swapi.dev/api/starships/2/', NULL, '2014-12-10 14:20:33', '2014-12-20 21:23:49'),
(3, 'Star Destroyer', 'Imperial I-class Star Destroyer', 'Star Destroyer', 'Kuat Drive Yards', '150000000', '1,600', '47,060', 'n/a', '975', '2.0', '60', '36000000', '2 years', 'https://swapi.dev/api/films/1/,https://swapi.dev/api/films/2/,https://swapi.dev/api/films/3/', '', 'https://swapi.dev/api/starships/3/', NULL, '2014-12-10 15:08:19', '2014-12-20 21:23:49'),
(5, 'Sentinel-class landing craft', 'Sentinel-class landing craft', 'landing craft', 'Sienar Fleet Systems, Cyngus Spaceworks', '240000', '38', '5', '75', '1000', '1.0', '70', '180000', '1 month', 'https://swapi.dev/api/films/1/', '', 'https://swapi.dev/api/starships/5/', NULL, '2014-12-10 15:48:00', '2014-12-20 21:23:49'),
(9, 'Death Star', 'DS-1 Orbital Battle Station', 'Deep Space Mobile Battlestation', 'Imperial Department of Military Research, Sienar Fleet Systems', '1000000000000', '120000', '342,953', '843,342', 'n/a', '4.0', '10', '1000000000000', '3 years', 'https://swapi.dev/api/films/1/', '', 'https://swapi.dev/api/starships/9/', NULL, '2014-12-10 16:36:50', '2014-12-20 21:26:24'),
(10, 'Millennium Falcon', 'YT-1300 light freighter', 'Light freighter', 'Corellian Engineering Corporation', '100000', '34.37', '4', '6', '1050', '0.5', '75', '100000', '2 months', 'https://swapi.dev/api/films/1/,https://swapi.dev/api/films/2/,https://swapi.dev/api/films/3/', 'https://swapi.dev/api/people/13/https://swapi.dev/api/people/14/https://swapi.dev/api/people/25/https://swapi.dev/api/people/31/', 'https://swapi.dev/api/starships/10/', NULL, '2014-12-10 16:59:45', '2014-12-20 21:23:49'),
(11, 'Y-wing', 'BTL Y-wing', 'assault starfighter', 'Koensayr Manufacturing', '134999', '14', '2', '0', '1000km', '1.0', '80', '110', '1 week', 'https://swapi.dev/api/films/1/,https://swapi.dev/api/films/2/,https://swapi.dev/api/films/3/', '', 'https://swapi.dev/api/starships/11/', NULL, '2014-12-12 11:00:39', '2014-12-20 21:23:49'),
(12, 'X-wing', 'T-65 X-wing', 'Starfighter', 'Incom Corporation', '149999', '12.5', '1', '0', '1050', '1.0', '100', '110', '1 week', 'https://swapi.dev/api/films/1/,https://swapi.dev/api/films/2/,https://swapi.dev/api/films/3/', 'https://swapi.dev/api/people/1/https://swapi.dev/api/people/9/https://swapi.dev/api/people/18/https://swapi.dev/api/people/19/', 'https://swapi.dev/api/starships/12/', NULL, '2014-12-12 11:19:05', '2014-12-20 21:23:49'),
(13, 'TIE Advanced x1', 'Twin Ion Engine Advanced x1', 'Starfighter', 'Sienar Fleet Systems', 'unknown', '9.2', '1', '0', '1200', '1.0', '105', '150', '5 days', 'https://swapi.dev/api/films/1/', 'https://swapi.dev/api/people/4/', 'https://swapi.dev/api/starships/13/', NULL, '2014-12-12 11:21:32', '2014-12-20 21:23:49'),
(15, 'Executor', 'Executor-class star dreadnought', 'Star dreadnought', 'Kuat Drive Yards, Fondor Shipyards', '1143350000', '19000', '279,144', '38000', 'n/a', '2.0', '40', '250000000', '6 years', 'https://swapi.dev/api/films/2/,https://swapi.dev/api/films/3/', '', 'https://swapi.dev/api/starships/15/', NULL, '2014-12-15 12:31:42', '2014-12-20 21:23:49'),
(17, 'Rebel transport', 'GR-75 medium transport', 'Medium transport', 'Gallofree Yards, Inc.', 'unknown', '90', '6', '90', '650', '4.0', '20', '19000000', '6 months', 'https://swapi.dev/api/films/2/,https://swapi.dev/api/films/3/', '', 'https://swapi.dev/api/starships/17/', NULL, '2014-12-15 12:34:52', '2014-12-20 21:23:49'),
(21, 'Slave 1', 'Firespray-31-class patrol and attack', 'Patrol craft', 'Kuat Systems Engineering', 'unknown', '21.5', '1', '6', '1000', '3.0', '70', '70000', '1 month', 'https://swapi.dev/api/films/2/,https://swapi.dev/api/films/5/', 'https://swapi.dev/api/people/22/', 'https://swapi.dev/api/starships/21/', 10, '2014-12-15 13:00:56', '2014-12-20 21:23:49'),
(22, 'Imperial shuttle', 'Lambda-class T-4a shuttle', 'Armed government transport', 'Sienar Fleet Systems', '240000', '20', '6', '20', '850', '1.0', '50', '80000', '2 months', 'https://swapi.dev/api/films/2/,https://swapi.dev/api/films/3/', 'https://swapi.dev/api/people/1/https://swapi.dev/api/people/13/https://swapi.dev/api/people/14/', 'https://swapi.dev/api/starships/22/', NULL, '2014-12-15 13:04:47', '2014-12-20 21:23:49'),
(23, 'EF76 Nebulon-B escort frigate', 'EF76 Nebulon-B escort frigate', 'Escort ship', 'Kuat Drive Yards', '8500000', '300', '854', '75', '800', '2.0', '40', '6000000', '2 years', 'https://swapi.dev/api/films/2/,https://swapi.dev/api/films/3/', '', 'https://swapi.dev/api/starships/23/', NULL, '2014-12-15 13:06:30', '2014-12-20 21:23:49'),
(27, 'Calamari Cruiser', 'MC80 Liberty type Star Cruiser', 'Star Cruiser', 'Mon Calamari shipyards', '104000000', '1200', '5400', '1200', 'n/a', '1.0', '60', 'unknown', '2 years', 'https://swapi.dev/api/films/3/', '', 'https://swapi.dev/api/starships/27/', NULL, '2014-12-18 10:54:57', '2014-12-20 21:23:49'),
(28, 'A-wing', 'RZ-1 A-wing Interceptor', 'Starfighter', 'Alliance Underground Engineering, Incom Corporation', '175000', '9.6', '1', '0', '1300', '1.0', '120', '40', '1 week', 'https://swapi.dev/api/films/3/', 'https://swapi.dev/api/people/29/', 'https://swapi.dev/api/starships/28/', NULL, '2014-12-18 11:16:34', '2014-12-20 21:23:49'),
(29, 'B-wing', 'A/SF-01 B-wing starfighter', 'Assault Starfighter', 'Slayn & Korpil', '220000', '16.9', '1', '0', '950', '2.0', '91', '45', '1 week', 'https://swapi.dev/api/films/3/', '', 'https://swapi.dev/api/starships/29/', NULL, '2014-12-18 11:18:04', '2014-12-20 21:23:49'),
(31, 'Republic Cruiser', 'Consular-class cruiser', 'Space cruiser', 'Corellian Engineering Corporation', 'unknown', '115', '9', '16', '900', '2.0', 'unknown', 'unknown', 'unknown', 'https://swapi.dev/api/films/4/', '', 'https://swapi.dev/api/starships/31/', NULL, '2014-12-19 17:01:31', '2014-12-20 21:23:49'),
(32, 'Droid control ship', 'Lucrehulk-class Droid Control Ship', 'Droid control ship', 'Hoersch-Kessel Drive, Inc.', 'unknown', '3170', '175', '139000', 'n/a', '2.0', 'unknown', '4000000000', '500 days', 'https://swapi.dev/api/films/4/,https://swapi.dev/api/films/5/,https://swapi.dev/api/films/6/', '', 'https://swapi.dev/api/starships/32/', NULL, '2014-12-19 17:04:06', '2014-12-20 21:23:49'),
(39, 'Naboo fighter', 'N-1 starfighter', 'Starfighter', 'Theed Palace Space Vessel Engineering Corps', '200000', '11', '1', '0', '1100', '1.0', 'unknown', '65', '7 days', 'https://swapi.dev/api/films/4/,https://swapi.dev/api/films/5/', 'https://swapi.dev/api/people/11/https://swapi.dev/api/people/35/https://swapi.dev/api/people/60/', 'https://swapi.dev/api/starships/39/', NULL, '2014-12-19 17:39:17', '2014-12-20 21:23:49'),
(40, 'Naboo Royal Starship', 'J-type 327 Nubian royal starship', 'yacht', 'Theed Palace Space Vessel Engineering Corps, Nubia Star Drives', 'unknown', '76', '8', 'unknown', '920', '1.8', 'unknown', 'unknown', 'unknown', 'https://swapi.dev/api/films/4/', 'https://swapi.dev/api/people/39/', 'https://swapi.dev/api/starships/40/', NULL, '2014-12-19 17:45:03', '2014-12-20 21:23:49'),
(41, 'Scimitar', 'Star Courier', 'Space Transport', 'Republic Sienar Systems', '55000000', '26.5', '1', '6', '1180', '1.5', 'unknown', '2500000', '30 days', 'https://swapi.dev/api/films/4/', 'https://swapi.dev/api/people/44/', 'https://swapi.dev/api/starships/41/', NULL, '2014-12-20 09:39:56', '2014-12-20 21:23:49'),
(43, 'J-type diplomatic barge', 'J-type diplomatic barge', 'Diplomatic barge', 'Theed Palace Space Vessel Engineering Corps, Nubia Star Drives', '2000000', '39', '5', '10', '2000', '0.7', 'unknown', 'unknown', '1 year', 'https://swapi.dev/api/films/5/', '', 'https://swapi.dev/api/starships/43/', NULL, '2014-12-20 11:05:51', '2014-12-20 21:23:49'),
(47, 'AA-9 Coruscant freighter', 'Botajef AA-9 Freighter-Liner', 'freighter', 'Botajef Shipyards', 'unknown', '390', 'unknown', '30000', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'https://swapi.dev/api/films/5/', '', 'https://swapi.dev/api/starships/47/', NULL, '2014-12-20 17:24:23', '2014-12-20 21:23:49'),
(48, 'Jedi starfighter', 'Delta-7 Aethersprite-class interceptor', 'Starfighter', 'Kuat Systems Engineering', '180000', '8', '1', '0', '1150', '1.0', 'unknown', '60', '7 days', 'https://swapi.dev/api/films/5/,https://swapi.dev/api/films/6/', 'https://swapi.dev/api/people/10/https://swapi.dev/api/people/58/', 'https://swapi.dev/api/starships/48/', NULL, '2014-12-20 17:35:23', '2014-12-20 21:23:49'),
(49, 'H-type Nubian yacht', 'H-type Nubian yacht', 'yacht', 'Theed Palace Space Vessel Engineering Corps', 'unknown', '47.9', '4', 'unknown', '8000', '0.9', 'unknown', 'unknown', 'unknown', 'https://swapi.dev/api/films/5/', 'https://swapi.dev/api/people/35/', 'https://swapi.dev/api/starships/49/', NULL, '2014-12-20 17:46:46', '2014-12-20 21:23:49'),
(52, 'Republic Assault ship', 'Acclamator I-class assault ship', 'assault ship', 'Rothana Heavy Engineering', 'unknown', '752', '700', '16000', 'unknown', '0.6', 'unknown', '11250000', '2 years', 'https://swapi.dev/api/films/5/', '', 'https://swapi.dev/api/starships/52/', NULL, '2014-12-20 18:08:42', '2014-12-20 21:23:49'),
(58, 'Solar Sailer', 'Punworcca 116-class interstellar sloop', 'yacht', 'Huppla Pasa Tisc Shipwrights Collective', '35700', '15.2', '3', '11', '1600', '1.5', 'unknown', '240', '7 days', 'https://swapi.dev/api/films/5/', '', 'https://swapi.dev/api/starships/58/', NULL, '2014-12-20 18:37:56', '2014-12-20 21:23:49'),
(59, 'Trade Federation cruiser', 'Providence-class carrier/destroyer', 'capital ship', 'Rendili StarDrive, Free Dac Volunteers Engineering corps.', '125000000', '1088', '600', '48247', '1050', '1.5', 'unknown', '50000000', '4 years', 'https://swapi.dev/api/films/6/', 'https://swapi.dev/api/people/10/https://swapi.dev/api/people/11/', 'https://swapi.dev/api/starships/59/', NULL, '2014-12-20 19:40:21', '2014-12-20 21:23:49'),
(61, 'Theta-class T-2c shuttle', 'Theta-class T-2c shuttle', 'transport', 'Cygnus Spaceworks', '1000000', '18.5', '5', '16', '2000', '1.0', 'unknown', '50000', '56 days', 'https://swapi.dev/api/films/6/', '', 'https://swapi.dev/api/starships/61/', NULL, '2014-12-20 19:48:40', '2014-12-20 21:23:49'),
(63, 'Republic attack cruiser', 'Senator-class Star Destroyer', 'star destroyer', 'Kuat Drive Yards, Allanteen Six shipyards', '59000000', '1137', '7400', '2000', '975', '1.0', 'unknown', '20000000', '2 years', 'https://swapi.dev/api/films/6/', '', 'https://swapi.dev/api/starships/63/', NULL, '2014-12-20 19:52:56', '2014-12-20 21:23:49'),
(64, 'Naboo star skiff', 'J-type star skiff', 'yacht', 'Theed Palace Space Vessel Engineering Corps/Nubia Star Drives, Incorporated', 'unknown', '29.2', '3', '3', '1050', '0.5', 'unknown', 'unknown', 'unknown', 'https://swapi.dev/api/films/6/', 'https://swapi.dev/api/people/10/https://swapi.dev/api/people/35/', 'https://swapi.dev/api/starships/64/', NULL, '2014-12-20 19:55:15', '2014-12-20 21:23:49'),
(65, 'Jedi Interceptor', 'Eta-2 Actis-class light interceptor', 'starfighter', 'Kuat Systems Engineering', '320000', '5.47', '1', '0', '1500', '1.0', 'unknown', '60', '2 days', 'https://swapi.dev/api/films/6/', 'https://swapi.dev/api/people/10/https://swapi.dev/api/people/11/', 'https://swapi.dev/api/starships/65/', NULL, '2014-12-20 19:56:57', '2014-12-20 21:23:49'),
(66, 'arc-170', 'Aggressive Reconnaissance-170 starfighte', 'starfighter', 'Incom Corporation, Subpro Corporation', '155000', '14.5', '3', '0', '1000', '1.0', '100', '110', '5 days', 'https://swapi.dev/api/films/6/', '', 'https://swapi.dev/api/starships/66/', NULL, '2014-12-20 20:03:48', '2014-12-20 21:23:49'),
(68, 'Banking clan frigte', 'Munificent-class star frigate', 'cruiser', 'Hoersch-Kessel Drive, Inc, Gwori Revolutionary Industries', '57000000', '825', '200', 'unknown', 'unknown', '1.0', 'unknown', '40000000', '2 years', 'https://swapi.dev/api/films/6/', '', 'https://swapi.dev/api/starships/68/', NULL, '2014-12-20 20:07:11', '2014-12-20 21:23:49'),
(74, 'Belbullab-22 starfighter', 'Belbullab-22 starfighter', 'starfighter', 'Feethan Ottraw Scalable Assemblies', '168000', '6.71', '1', '0', '1100', '6', 'unknown', '140', '7 days', 'https://swapi.dev/api/films/6/', 'https://swapi.dev/api/people/10/https://swapi.dev/api/people/79/', 'https://swapi.dev/api/starships/74/', NULL, '2014-12-20 20:38:05', '2014-12-20 21:23:49'),
(75, 'V-wing', 'Alpha-3 Nimbus-class V-wing starfighter', 'starfighter', 'Kuat Systems Engineering', '102500', '7.9', '1', '0', '1050', '1.0', 'unknown', '60', '15 hours', 'https://swapi.dev/api/films/6/', '', 'https://swapi.dev/api/starships/75/', NULL, '2014-12-20 20:43:04', '2014-12-20 21:23:49');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `model` varchar(191) NOT NULL,
  `vehicle_class` varchar(191) NOT NULL,
  `manufacturer` varchar(191) NOT NULL,
  `length` varchar(191) NOT NULL,
  `cost_in_credits` varchar(191) NOT NULL,
  `crew` varchar(191) NOT NULL,
  `passengers` varchar(191) NOT NULL,
  `max_atmosphering_speed` varchar(191) NOT NULL,
  `cargo_capacity` varchar(191) NOT NULL,
  `consumables` varchar(191) NOT NULL,
  `films` longtext NOT NULL,
  `pilots` longtext NOT NULL,
  `url` varchar(191) NOT NULL,
  `units` int(10) DEFAULT NULL,
  `created` timestamp NOT NULL,
  `edited` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `name`, `model`, `vehicle_class`, `manufacturer`, `length`, `cost_in_credits`, `crew`, `passengers`, `max_atmosphering_speed`, `cargo_capacity`, `consumables`, `films`, `pilots`, `url`, `units`, `created`, `edited`) VALUES
(4, 'Sand Crawler', 'Digger Crawler', 'wheeled', 'Corellia Mining Corporation', '36.8 ', '150000', '46', '30', '30', '50000', '2 months', 'https://swapi.dev/api/films/1/,https://swapi.dev/api/films/5/', '', 'https://swapi.dev/api/vehicles/4/', 1500, '2014-12-10 15:36:25', '2014-12-20 21:30:21'),
(6, 'T-16 skyhopper', 'T-16 skyhopper', 'repulsorcraft', 'Incom Corporation', '10.4 ', '14500', '1', '1', '1200', '50', '0', 'https://swapi.dev/api/films/1/', '', 'https://swapi.dev/api/vehicles/6/', 55, '2014-12-10 16:01:52', '2014-12-20 21:30:21'),
(7, 'X-34 landspeeder', 'X-34 landspeeder', 'repulsorcraft', 'SoroSuub Corporation', '3.4 ', '10550', '1', '1', '250', '5', 'unknown', 'https://swapi.dev/api/films/1/', '', 'https://swapi.dev/api/vehicles/7/', NULL, '2014-12-10 16:13:52', '2014-12-20 21:30:21'),
(8, 'TIE/LN starfighter', 'Twin Ion Engine/Ln Starfighter', 'starfighter', 'Sienar Fleet Systems', '6.4', 'unknown', '1', '0', '1200', '65', '2 days', 'https://swapi.dev/api/films/1/,https://swapi.dev/api/films/2/,https://swapi.dev/api/films/3/', '', 'https://swapi.dev/api/vehicles/8/', NULL, '2014-12-10 16:33:52', '2014-12-20 21:30:21'),
(14, 'Snowspeeder', 't-47 airspeeder', 'airspeeder', 'Incom corporation', '4.5', 'unknown', '2', '0', '650', '10', 'none', 'https://swapi.dev/api/films/2/', 'https://swapi.dev/api/people/1/https://swapi.dev/api/people/18/', 'https://swapi.dev/api/vehicles/14/', NULL, '2014-12-15 12:22:12', '2014-12-20 21:30:21'),
(16, 'TIE bomber', 'TIE/sa bomber', 'space/planetary bomber', 'Sienar Fleet Systems', '7.8', 'unknown', '1', '0', '850', 'none', '2 days', 'https://swapi.dev/api/films/2/,https://swapi.dev/api/films/3/', '', 'https://swapi.dev/api/vehicles/16/', NULL, '2014-12-15 12:33:15', '2014-12-20 21:30:21'),
(18, 'AT-AT', 'All Terrain Armored Transport', 'assault walker', 'Kuat Drive Yards, Imperial Department of Military Research', '20', 'unknown', '5', '40', '60', '1000', 'unknown', 'https://swapi.dev/api/films/2/,https://swapi.dev/api/films/3/', '', 'https://swapi.dev/api/vehicles/18/', NULL, '2014-12-15 12:38:25', '2014-12-20 21:30:21'),
(19, 'AT-ST', 'All Terrain Scout Transport', 'walker', 'Kuat Drive Yards, Imperial Department of Military Research', '2', 'unknown', '2', '0', '90', '200', 'none', 'https://swapi.dev/api/films/2/,https://swapi.dev/api/films/3/', 'https://swapi.dev/api/people/13/', 'https://swapi.dev/api/vehicles/19/', NULL, '2014-12-15 12:46:42', '2014-12-20 21:30:21'),
(20, 'Storm IV Twin-Pod cloud car', 'Storm IV Twin-Pod', 'repulsorcraft', 'Bespin Motors', '7', '75000', '2', '0', '1500', '10', '1 day', 'https://swapi.dev/api/films/2/', '', 'https://swapi.dev/api/vehicles/20/', NULL, '2014-12-15 12:58:50', '2014-12-20 21:30:21'),
(24, 'Sail barge', 'Modified Luxury Sail Barge', 'sail barge', 'Ubrikkian Industries Custom Vehicle Division', '30', '285000', '26', '500', '100', '2000000', 'Live food tanks', 'https://swapi.dev/api/films/3/', '', 'https://swapi.dev/api/vehicles/24/', NULL, '2014-12-18 10:44:14', '2014-12-20 21:30:21'),
(25, 'Bantha-II cargo skiff', 'Bantha-II', 'repulsorcraft cargo skiff', 'Ubrikkian Industries', '9.5', '8000', '5', '16', '250', '135000', '1 day', 'https://swapi.dev/api/films/3/', '', 'https://swapi.dev/api/vehicles/25/', NULL, '2014-12-18 10:48:03', '2014-12-20 21:30:21'),
(26, 'TIE/IN interceptor', 'Twin Ion Engine Interceptor', 'starfighter', 'Sienar Fleet Systems', '9.6', 'unknown', '1', '0', '1250', '75', '2 days', 'https://swapi.dev/api/films/3/', '', 'https://swapi.dev/api/vehicles/26/', NULL, '2014-12-18 10:50:28', '2014-12-20 21:30:21'),
(30, 'Imperial Speeder Bike', '74-Z speeder bike', 'speeder', 'Aratech Repulsor Company', '3', '8000', '1', '1', '360', '4', '1 day', 'https://swapi.dev/api/films/3/', 'https://swapi.dev/api/people/1/https://swapi.dev/api/people/5/', 'https://swapi.dev/api/vehicles/30/', NULL, '2014-12-18 11:20:04', '2014-12-20 21:30:21'),
(33, 'Vulture Droid', 'Vulture-class droid starfighter', 'starfighter', 'Haor Chall Engineering, Baktoid Armor Workshop', '3.5', 'unknown', '0', '0', '1200', '0', 'none', 'https://swapi.dev/api/films/4/,https://swapi.dev/api/films/6/', '', 'https://swapi.dev/api/vehicles/33/', NULL, '2014-12-19 17:09:53', '2014-12-20 21:30:21'),
(34, 'Multi-Troop Transport', 'Multi-Troop Transport', 'repulsorcraft', 'Baktoid Armor Workshop', '31', '138000', '4', '112', '35', '12000', 'unknown', 'https://swapi.dev/api/films/4/', '', 'https://swapi.dev/api/vehicles/34/', NULL, '2014-12-19 17:12:04', '2014-12-20 21:30:21'),
(35, 'Armored Assault Tank', 'Armoured Assault Tank', 'repulsorcraft', 'Baktoid Armor Workshop', '9.75', 'unknown', '4', '6', '55', 'unknown', 'unknown', 'https://swapi.dev/api/films/4/', '', 'https://swapi.dev/api/vehicles/35/', NULL, '2014-12-19 17:13:29', '2014-12-20 21:30:21'),
(36, 'Single Trooper Aerial Platform', 'Single Trooper Aerial Platform', 'repulsorcraft', 'Baktoid Armor Workshop', '2', '2500', '1', '0', '400', 'none', 'none', 'https://swapi.dev/api/films/4/', '', 'https://swapi.dev/api/vehicles/36/', NULL, '2014-12-19 17:15:09', '2014-12-20 21:30:21'),
(37, 'C-9979 landing craft', 'C-9979 landing craft', 'landing craft', 'Haor Chall Engineering', '210', '200000', '140', '284', '587', '1800000', '1 day', 'https://swapi.dev/api/films/4/', '', 'https://swapi.dev/api/vehicles/37/', NULL, '2014-12-19 17:20:36', '2014-12-20 21:30:21'),
(38, 'Tribubble bongo', 'Tribubble bongo', 'submarine', 'Otoh Gunga Bongameken Cooperative', '15', 'unknown', '1', '2', '85', '1600', 'unknown', 'https://swapi.dev/api/films/4/', 'https://swapi.dev/api/people/10/https://swapi.dev/api/people/32/', 'https://swapi.dev/api/vehicles/38/', NULL, '2014-12-19 17:37:37', '2014-12-20 21:30:21'),
(42, 'Sith speeder', 'FC-20 speeder bike', 'speeder', 'Razalon', '1.5', '4000', '1', '0', '180', '2', 'unknown', 'https://swapi.dev/api/films/4/', 'https://swapi.dev/api/people/44/', 'https://swapi.dev/api/vehicles/42/', NULL, '2014-12-20 10:09:56', '2014-12-20 21:30:21'),
(44, 'Zephyr-G swoop bike', 'Zephyr-G swoop bike', 'repulsorcraft', 'Mobquet Swoops and Speeders', '3.68', '5750', '1', '1', '350', '200', 'none', 'https://swapi.dev/api/films/5/', 'https://swapi.dev/api/people/11/', 'https://swapi.dev/api/vehicles/44/', NULL, '2014-12-20 16:24:16', '2014-12-20 21:30:21'),
(45, 'Koro-2 Exodrive airspeeder', 'Koro-2 Exodrive airspeeder', 'airspeeder', 'Desler Gizh Outworld Mobility Corporation', '6.6', 'unknown', '1', '1', '800', '80', 'unknown', 'https://swapi.dev/api/films/5/', 'https://swapi.dev/api/people/70/', 'https://swapi.dev/api/vehicles/45/', NULL, '2014-12-20 17:17:33', '2014-12-20 21:30:21'),
(46, 'XJ-6 airspeeder', 'XJ-6 airspeeder', 'airspeeder', 'Narglatch AirTech prefabricated kit', '6.23', 'unknown', '1', '1', '720', 'unknown', 'unknown', 'https://swapi.dev/api/films/5/', 'https://swapi.dev/api/people/11/', 'https://swapi.dev/api/vehicles/46/', NULL, '2014-12-20 17:19:19', '2014-12-20 21:30:21'),
(50, 'LAAT/i', 'Low Altitude Assault Transport/infrantry', 'gunship', 'Rothana Heavy Engineering', '17.4', 'unknown', '6', '30', '620', '170', 'unknown', 'https://swapi.dev/api/films/5/,https://swapi.dev/api/films/6/', '', 'https://swapi.dev/api/vehicles/50/', NULL, '2014-12-20 18:01:21', '2014-12-20 21:30:21'),
(51, 'LAAT/c', 'Low Altitude Assault Transport/carrier', 'gunship', 'Rothana Heavy Engineering', '28.82', 'unknown', '1', '0', '620', '40000', 'unknown', 'https://swapi.dev/api/films/5/', '', 'https://swapi.dev/api/vehicles/51/', NULL, '2014-12-20 18:02:46', '2014-12-20 21:30:21'),
(53, 'AT-TE', 'All Terrain Tactical Enforcer', 'walker', 'Rothana Heavy Engineering, Kuat Drive Yards', '13.2', 'unknown', '6', '36', '60', '10000', '21 days', 'https://swapi.dev/api/films/5/,https://swapi.dev/api/films/6/', '', 'https://swapi.dev/api/vehicles/53/', NULL, '2014-12-20 18:10:07', '2014-12-20 21:30:21'),
(54, 'SPHA', 'Self-Propelled Heavy Artillery', 'walker', 'Rothana Heavy Engineering', '140', 'unknown', '25', '30', '35', '500', '7 days', 'https://swapi.dev/api/films/5/', '', 'https://swapi.dev/api/vehicles/54/', NULL, '2014-12-20 18:12:32', '2014-12-20 21:30:21'),
(55, 'Flitknot speeder', 'Flitknot speeder', 'speeder', 'Huppla Pasa Tisc Shipwrights Collective', '2', '8000', '1', '0', '634', 'unknown', 'unknown', 'https://swapi.dev/api/films/5/', 'https://swapi.dev/api/people/67/', 'https://swapi.dev/api/vehicles/55/', NULL, '2014-12-20 18:15:20', '2014-12-20 21:30:21'),
(56, 'Neimoidian shuttle', 'Sheathipede-class transport shuttle', 'transport', 'Haor Chall Engineering', '20', 'unknown', '2', '6', '880', '1000', '7 days', 'https://swapi.dev/api/films/5/,https://swapi.dev/api/films/6/', '', 'https://swapi.dev/api/vehicles/56/', NULL, '2014-12-20 18:25:44', '2014-12-20 21:30:21'),
(57, 'Geonosian starfighter', 'Nantex-class territorial defense', 'starfighter', 'Huppla Pasa Tisc Shipwrights Collective', '9.8', 'unknown', '1', '0', '20000', 'unknown', 'unknown', 'https://swapi.dev/api/films/5/', '', 'https://swapi.dev/api/vehicles/57/', NULL, '2014-12-20 18:34:12', '2014-12-20 21:30:21'),
(60, 'Tsmeu-6 personal wheel bike', 'Tsmeu-6 personal wheel bike', 'wheeled walker', 'Z-Gomot Ternbuell Guppat Corporation', '3.5', '15000', '1', '1', '330', '10', 'none', 'https://swapi.dev/api/films/6/', 'https://swapi.dev/api/people/79/', 'https://swapi.dev/api/vehicles/60/', NULL, '2014-12-20 19:43:54', '2014-12-20 21:30:21'),
(62, 'Emergency Firespeeder', 'Fire suppression speeder', 'fire suppression ship', 'unknown', 'unknown', 'unknown', '2', 'unknown', 'unknown', 'unknown', 'unknown', 'https://swapi.dev/api/films/6/', '', 'https://swapi.dev/api/vehicles/62/', NULL, '2014-12-20 19:50:58', '2014-12-20 21:30:21'),
(67, 'Droid tri-fighter', 'tri-fighter', 'droid starfighter', 'Colla Designs, Phlac-Arphocc Automata Industries', '5.4', '20000', '1', '0', '1180', '0', 'none', 'https://swapi.dev/api/films/6/', '', 'https://swapi.dev/api/vehicles/67/', NULL, '2014-12-20 20:05:19', '2014-12-20 21:30:21'),
(69, 'Oevvaor jet catamaran', 'Oevvaor jet catamaran', 'airspeeder', 'Appazanna Engineering Works', '15.1', '12125', '2', '2', '420', '50', '3 days', 'https://swapi.dev/api/films/6/', '', 'https://swapi.dev/api/vehicles/69/', NULL, '2014-12-20 20:20:53', '2014-12-20 21:30:21'),
(70, 'Raddaugh Gnasp fluttercraft', 'Raddaugh Gnasp fluttercraft', 'air speeder', 'Appazanna Engineering Works', '7', '14750', '2', '0', '310', '20', 'none', 'https://swapi.dev/api/films/6/', '', 'https://swapi.dev/api/vehicles/70/', NULL, '2014-12-20 20:21:55', '2014-12-20 21:30:21'),
(71, 'Clone turbo tank', 'HAVw A6 Juggernaut', 'wheeled walker', 'Kuat Drive Yards', '49.4', '350000', '20', '300', '160', '30000', '20 days', 'https://swapi.dev/api/films/6/', '', 'https://swapi.dev/api/vehicles/71/', NULL, '2014-12-20 20:24:45', '2014-12-20 21:30:21'),
(72, 'Corporate Alliance tank droid', 'NR-N99 Persuader-class droid enforcer', 'droid tank', 'Techno Union', '10.96', '49000', '0', '4', '100', 'none', 'none', 'https://swapi.dev/api/films/6/', '', 'https://swapi.dev/api/vehicles/72/', NULL, '2014-12-20 20:26:55', '2014-12-20 21:30:21'),
(73, 'Droid gunship', 'HMP droid gunship', 'airspeeder', 'Baktoid Fleet Ordnance, Haor Chall Engineering', '12.3', '60000', '0', '0', '820', '0', 'none', 'https://swapi.dev/api/films/6/', '', 'https://swapi.dev/api/vehicles/73/', NULL, '2014-12-20 20:32:05', '2014-12-20 21:30:21'),
(76, 'AT-RT', 'All Terrain Recon Transport', 'walker', 'Kuat Drive Yards', '3.2', '40000', '1', '0', '90', '20', '1 day', 'https://swapi.dev/api/films/6/', '', 'https://swapi.dev/api/vehicles/76/', NULL, '2014-12-20 20:47:49', '2014-12-20 21:30:21');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
