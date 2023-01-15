-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 11:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bynance`
--

-- --------------------------------------------------------

--
-- Table structure for table `airdrop`
--

CREATE TABLE `airdrop` (
  `Airdrop` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airdrop`
--

INSERT INTO `airdrop` (`Airdrop`) VALUES
('http://localhost:5000/static/images/Airdrop/airdrop.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `coinlist`
--

CREATE TABLE `coinlist` (
  `coinid` int(11) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `coinimg` varchar(55) NOT NULL,
  `quantity` double DEFAULT NULL,
  `price` float DEFAULT NULL,
  `custom` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coinlist`
--

INSERT INTO `coinlist` (`coinid`, `symbol`, `coinimg`, `quantity`, `price`, `custom`) VALUES
(786501, 'BTCUSDT', 'http://64.227.140.80/api/static/images/coinimage/btc.pn', NULL, NULL, 0),
(786502, 'ETHUSDT', 'http://64.227.140.80/api/static/images/coinimage/eth.pn', NULL, NULL, 0),
(786503, 'DOGEUSDT', 'http://64.227.140.80/api/static/images/coinimage/doge.p', NULL, NULL, 0),
(786504, 'LUNAUSDT', 'http://64.227.140.80/api/static/images/coinimage/luna.p', NULL, NULL, 0),
(786505, 'XRPUSDT', 'http://64.227.140.80/api/static/images/coinimage/xrp.pn', NULL, NULL, 0),
(786506, 'ADAUSDT', 'http://64.227.140.80/api/static/images/coinimage/ada.pn', NULL, NULL, 0),
(786507, 'SOLUSDT', 'http://64.227.140.80/api/static/images/coinimage/sol.pn', NULL, NULL, 0),
(786508, 'LTCUSDT', 'http://64.227.140.80/api/static/images/coinimage/ltc.pn', NULL, NULL, 0),
(786509, 'BNBUSDT', 'http://64.227.140.80/api/static/images/coinimage/BNB.pn', NULL, NULL, 0),
(786511, 'BTCBUSD', 'http://64.227.140.80/api/static/images/coinimage/btc.pn', NULL, NULL, 0),
(786512, 'DANNYUSDT', 'http://64.227.140.80/api/static/images/coinimage/D.png', 992.0675877520538, 10.5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customcoin`
--

CREATE TABLE `customcoin` (
  `coinid` int(11) NOT NULL,
  `symbol` varchar(55) NOT NULL,
  `quantity` float NOT NULL,
  `price` float NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp(),
  `type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customcoin`
--

INSERT INTO `customcoin` (`coinid`, `symbol`, `quantity`, `price`, `dt`, `type`) VALUES
(2, 'DANNYUSDT', 992.068, 10.5, '2023-01-13 19:17:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `emailverification`
--

CREATE TABLE `emailverification` (
  `UserId` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `vcode` int(11) NOT NULL,
  `createddate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emailverification`
--

INSERT INTO `emailverification` (`UserId`, `email`, `vcode`, `createddate`) VALUES
(9, 'wearning52@gmail.com', 386501, '2022-12-18 16:19:08'),
(2147483647, 'rehankhan018k@gmail.com', 722469, '2023-01-10 00:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `transactionhistory`
--

CREATE TABLE `transactionhistory` (
  `UserId` varchar(55) NOT NULL,
  `quantity` float NOT NULL,
  `amount` float NOT NULL,
  `currency` varchar(55) NOT NULL,
  `type` varchar(55) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactionhistory`
--

INSERT INTO `transactionhistory` (`UserId`, `quantity`, `amount`, `currency`, `type`, `dt`) VALUES
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 5.06427, 1556, 'danny', 'credit', '2022-11-26 22:50:23'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 11.9152, 1556, 'sol', 'credit', '2022-11-26 22:56:45'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 16.9281, 1556, 'sol', 'credit', '2022-11-26 22:57:08'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 1.41388, 1556, 'bty', 'credit', '2022-11-26 22:57:26'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 8.9126, 1556, 'btc', 'credit', '2022-11-26 23:20:54'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 48093.5, 81.61, 'usdt', 'debit', '2022-11-26 23:23:36'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 5.9126, 1556, 'btc', 'credit', '2022-11-26 23:30:49'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 112.731, 81.61, 'usdt', 'debit', '2022-11-26 23:31:38'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0321337, 1556, 'eth', 'credit', '2022-11-28 02:03:47'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0321337, 1556, 'eth', 'credit', '2022-11-28 02:20:00'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.00771208, 1556, 'eth', 'credit', '2022-11-28 03:04:28'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.147041, 81.61, 'usdt', 'debit', '2022-11-28 03:05:14'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0147815, 1556, 'eth', 'credit', '2022-11-28 14:23:44'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.153599, 1556, 'eth', 'credit', '2022-11-28 14:24:12'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.153599, 1556, 'eth', 'credit', '2022-11-28 14:26:48'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.00771208, 1556, 'eth', 'credit', '2022-11-28 14:28:07'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0134961, 1556, 'eth', 'credit', '2022-11-28 14:28:34'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.257321, 81.61, 'usdt', 'debit', '2022-11-28 14:28:56'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0134961, 1556, 'eth', 'credit', '2022-11-28 16:12:21'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0218509, 1556, 'eth', 'credit', '2022-11-28 21:31:03'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.218509, 1556, 'eth', 'credit', '2022-11-28 21:33:08'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.359897, 1556, 'eth', 'credit', '2022-11-28 21:33:39'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 1.47815, 1556, 'eth', 'credit', '2022-11-28 21:35:19'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 28.1828, 81.61, 'usdt', 'debit', '2022-11-28 21:36:03'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0289203, 1556, 'eth', 'credit', '2022-11-28 21:50:32'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0289203, 1556, 'eth', 'credit', '2022-11-28 21:51:57'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.955765, 81.61, 'usdt', 'debit', '2022-11-28 21:52:17'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.955765, 81.61, 'usdt', 'debit', '2022-11-28 21:52:19'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 42.3478, 81.61, 'usdt', 'debit', '2022-11-30 17:12:23'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 2.22108, 1556, 'eth', 'credit', '2022-11-30 17:12:56'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 1, 1556, 'eth', 'credit', '2022-11-30 17:13:20'),
('7aafb8c0-9a47-4b83-87e8-9cc8ee4feb66', 0.771208, 1556, 'eth', 'credit', '2022-11-30 18:17:10'),
('7aafb8c0-9a47-4b83-87e8-9cc8ee4feb66', 0.771208, 1556, 'eth', 'credit', '2022-11-30 18:18:34'),
('bd108dab-bb83-405c-95e6-6623f73059a9', 0.514139, 1556, 'eth', 'credit', '2022-11-30 19:37:12'),
('bd108dab-bb83-405c-95e6-6623f73059a9', 9.80272, 81.61, 'usdt', 'debit', '2022-11-30 19:41:25'),
('bd108dab-bb83-405c-95e6-6623f73059a9', 0.0642674, 1556, 'eth', 'credit', '2022-11-30 19:55:37'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.00771208, 1556, 'eth', 'credit', '2022-11-30 21:44:18'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0430591, 1556, 'ETH', 'credit', '2022-12-16 00:15:45'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.820978, 81.61, 'usdt', 'debit', '2022-12-16 00:15:59'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0430591, 1556, 'LUNA', 'credit', '2022-12-16 00:17:28'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.062982, 1556, 'LTC', 'credit', '2022-12-16 00:26:51'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.062982, 1556, 'LTC', 'credit', '2022-12-16 00:27:41'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0417738, 1556, 'LTC', 'credit', '2022-12-16 00:28:18'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.00385604, 1556, 'DOGE', 'credit', '2022-12-16 00:29:54'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 180.803, 0.3761, 'XRP', 'credit', '2022-12-16 00:31:19'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 790.606, 0.08601, 'DOGE', 'credit', '2022-12-16 00:33:01'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 2.28408, 14.01, 'SOL', 'credit', '2022-12-16 00:42:18'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 2093.39, 0.3769, 'XRP', 'credit', '2022-12-16 00:51:31'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 9.66793, 81.61, 'USDT', 'debit', '2022-12-16 00:52:42'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.820978, 81.61, 'USDT', 'debit', '2022-12-16 01:05:09'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0735204, 81.61, 'USDT', 'debit', '2022-12-16 01:05:18'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.00549196, 1274.59, 'ETH', 'credit', '2022-12-16 01:09:11'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0857738, 81.61, 'USDT', 'debit', '2022-12-16 01:09:18'),
('bd108dab-bb83-405c-95e6-6623f73059a9', 0.812418, 68.93, 'LTC', 'credit', '2022-12-16 17:42:30'),
('bd108dab-bb83-405c-95e6-6623f73059a9', 0.68619, 81.61, 'USDT', 'debit', '2022-12-16 17:44:27'),
('bd108dab-bb83-405c-95e6-6623f73059a9', 0.0189999, 1210.53, 'ETH', 'credit', '2022-12-16 17:44:35'),
('bd108dab-bb83-405c-95e6-6623f73059a9', 0, 1211.74, 'ETH', 'credit', '2022-12-16 17:53:50'),
('bd108dab-bb83-405c-95e6-6623f73059a9', 0, 1211.74, 'ETH', 'credit', '2022-12-16 17:53:52'),
('bd108dab-bb83-405c-95e6-6623f73059a9', 0, 1211.74, 'ETH', 'credit', '2022-12-16 17:53:53'),
('953ee31d-0466-4863-bdde-4765d7aaca0f', 0, 0.07897, 'DOGE', 'credit', '2022-12-18 14:36:39'),
('953ee31d-0466-4863-bdde-4765d7aaca0f', 1.34815, 1186.81, 'ETH', 'credit', '2022-12-18 14:38:11'),
('f3621092-7231-42c1-b048-5d70c413029b', 65.6393, 0.3504, 'XRP', 'credit', '2022-12-18 15:50:59'),
('f3621092-7231-42c1-b048-5d70c413029b', 0.00197554, 16704.3, 'BTC', 'credit', '2022-12-18 15:51:19'),
('f3621092-7231-42c1-b048-5d70c413029b', 0.404362, 81.61, 'USDT', 'debit', '2022-12-18 15:51:23'),
('9a64b11b-2a46-4850-8d72-b26200c9fb4e', 42.0042, 1.3332, 'LUNA', 'credit', '2022-12-18 16:43:12'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0101404, 1183.38, 'ETH', 'credit', '2022-12-18 23:53:21'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.483481, 248.2, 'BNB', 'credit', '2022-12-18 23:57:12'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 25.8933, 0.07724, 'DOGE', 'credit', '2022-12-24 20:05:05'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0245068, 81.61, 'USDT', 'debit', '2022-12-24 20:05:34'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 25.783, 1.3187, 'LUNA', 'credit', '2023-01-07 18:50:15'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 641.212, 0.3431, 'XRP', 'credit', '2023-01-07 18:51:18'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 623.787, 0.07214, 'DOGE', 'credit', '2023-01-07 20:34:27'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0355608, 1265.44, 'ETH', 'credit', '2023-01-08 01:26:05'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 4.5, 10, 'DANNY', 'credit', '2023-01-08 02:09:53'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 3.4, 10, 'DANNY', 'credit', '2023-01-08 02:12:17'),
('8e636e54-7002-446c-a2f4-3dc22488bb08', 1.00017, 1333.62, 'ETH', 'credit', '2023-01-10 00:46:21'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 6.7, 10, 'DANNY', 'credit', '2023-01-10 01:34:05'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0255186, 1332.36, 'ETH', 'credit', '2023-01-10 21:08:40'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 1.97409, 16.21, 'SOL', 'credit', '2023-01-10 21:09:15'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0, 1337.94, 'ETH', 'credit', '2023-01-11 00:01:49'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0418326, 1338.67, 'ETH', 'credit', '2023-01-11 00:01:54'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 4.5, 10, 'DANNY', 'credit', '2023-01-11 18:42:15'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0, 1335.07, 'ETH', 'credit', '2023-01-11 18:50:37'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 3, 10, 'DANNY', 'credit', '2023-01-13 17:46:30'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 3, 10, 'DANNY', 'credit', '2023-01-13 17:48:15'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 3, 10, 'DANNY', 'credit', '2023-01-13 17:49:00'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 3, 10, 'DANNY', 'credit', '2023-01-13 17:49:37'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 1, 10, 'DANNY', 'credit', '2023-01-13 17:51:43'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 1, 10, 'DANNY', 'credit', '2023-01-13 17:52:32'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 1, 10, 'DANNY', 'credit', '2023-01-13 17:54:10'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 1, 10, 'DANNY', 'credit', '2023-01-13 17:54:49'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 1, 10, 'DANNY', 'credit', '2023-01-13 17:56:54'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 125, 0.08, 'DOGE', 'credit', '2023-01-13 18:00:31'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 1, 10, 'DANNY', 'credit', '2023-01-13 18:10:35'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 1, 10, 'DANNY', 'credit', '2023-01-13 18:14:34'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 1, 10, 'DANNY', 'credit', '2023-01-13 18:14:56'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 1, 10, 'DANNY', 'credit', '2023-01-13 18:16:52'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 1, 10, 'DANNY', 'credit', '2023-01-13 18:18:42'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 1, 10, 'DANNY', 'credit', '2023-01-13 18:19:32'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 1, 10, 'DANNY', 'credit', '2023-01-13 18:19:59'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 1, 10, 'DANNY', 'credit', '2023-01-13 18:30:28'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 1, 10, 'DANNY', 'credit', '2023-01-13 18:42:45'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 1, 10, 'DANNY', 'credit', '2023-01-13 18:43:56'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 1, 10, 'DANNY', 'credit', '2023-01-13 18:44:07'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 4, 10, 'DANNY', 'credit', '2023-01-13 18:44:16'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.970874, 10.3, 'DANNY', 'credit', '2023-01-13 19:00:35'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.00710803, 1406.86, 'ETH', 'credit', '2023-01-13 19:16:13'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.00711025, 1406.42, 'ETH', 'credit', '2023-01-13 19:16:30'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.961538, 10.4, 'DANNY', 'credit', '2023-01-13 19:17:05'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.0150036, 1532.97, 'ETH', 'credit', '2023-01-15 18:19:50'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.281828, 81.61, 'USDT', 'debit', '2023-01-15 18:19:57'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.281828, 81.61, 'USDT', 'debit', '2023-01-15 18:20:06'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.245068, 81.61, 'USDT', 'debit', '2023-01-15 18:21:54'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.245068, 81.61, 'USDT', 'debit', '2023-01-15 18:21:54'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.228363, 87.58, 'LTC', 'credit', '2023-01-15 18:23:08'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.245068, 81.61, 'USDT', 'debit', '2023-01-15 18:35:15'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0, 1533, 'ETH', 'credit', '2023-01-15 18:41:23'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0, 1532.9, 'ETH', 'credit', '2023-01-15 18:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(11) NOT NULL,
  `userid` varchar(55) NOT NULL,
  `Name` varchar(55) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `email` varchar(255) NOT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `referral` varchar(45) DEFAULT NULL,
  `Active` tinyint(1) NOT NULL,
  `Role` tinyint(1) NOT NULL,
  `verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `userid`, `Name`, `date`, `email`, `Phone`, `password`, `referral`, `Active`, `Role`, `verified`) VALUES
(92, '64e3b27c-a532-4b3e-9065-3d9e73140a10', 'danish', '2022-11-13 23:39:15', 'khandanish26744@gmail.com', NULL, '$2b$10$evFUl0gluF.1jzirD4RVsOM..ATvvqB5kfIK5vxI2BNYx0fyBOT6a', NULL, 1, 0, 1),
(98, 'bd108dab-bb83-405c-95e6-6623f73059a9', 'lect tech', '2022-11-26 20:30:24', 'lencetech@gmail.com', NULL, '$2b$10$Y5z2dNG.pKRMrf7SaB58A.NDjN21oe47RDfnfe.kWI7Br.KjBJff2', NULL, 0, 0, 1),
(110, 'e05eb9bb-7286-4c2d-b754-84da2b6e0bea', 'anas j', '2022-11-30 21:38:34', 'anasman0620@gmail.com', NULL, '$2b$10$zR6u4y2ws533VJvIrk9aW.MOXln5Bf7peHbFmLNXREbwEF49IQDii', NULL, 0, 0, 1),
(127, '9a64b11b-2a46-4850-8d72-b26200c9fb4e', 'hbh', '2022-12-18 16:39:29', 'wearning52@gmail.com', NULL, '$2b$10$Z1V5VTHf3Pw5Frh1eM9uneXgqwuYRrB7Mk7E2HmiraXs2sLo0z7fO', NULL, 0, 0, 1),
(128, '8e636e54-7002-446c-a2f4-3dc22488bb08', 'rehan', '2023-01-10 00:40:58', 'rehankhan018k@gmail.com', NULL, '$2b$10$U/x7GZJ/TsfzsYuI10safOy9bgjai/fnDtfzYdERxgW0GAUBvBgNi', NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `UserId` varchar(55) NOT NULL,
  `quantity` float NOT NULL,
  `currency` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`UserId`, `quantity`, `currency`) VALUES
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 553.56, 'usdt'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 30, 'eth'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 0.6, 'btc'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 11539.4, 'doge'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 10004.3, 'sol'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 10000.2, 'bnb'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 9999.97, 'ltc'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 10000, 'mnc'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 10000, 'bhu'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 10053.1, 'danny'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 10000, 'anny'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 10000, 'nny'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 10000, 'bty'),
('bd108dab-bb83-405c-95e6-6623f73059a9', 198.493, 'usdt'),
('bd108dab-bb83-405c-95e6-6623f73059a9', 0.0370143, 'eth'),
('e05eb9bb-7286-4c2d-b754-84da2b6e0bea', 254, 'usdt'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 25.826, 'LUNA'),
('64e3b27c-a532-4b3e-9065-3d9e73140a10', 823.129, 'XRP'),
('bd108dab-bb83-405c-95e6-6623f73059a9', 0.812418, 'LTC'),
('9a64b11b-2a46-4850-8d72-b26200c9fb4e', 1219.31, 'usdt'),
('9a64b11b-2a46-4850-8d72-b26200c9fb4e', 42.0042, 'LUNA'),
('8e636e54-7002-446c-a2f4-3dc22488bb08', 4983.66, 'usdt'),
('8e636e54-7002-446c-a2f4-3dc22488bb08', 1.00017, 'ETH'),
('8e636e54-7002-446c-a2f4-3dc22488bb08', 0.879, 'btc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coinlist`
--
ALTER TABLE `coinlist`
  ADD PRIMARY KEY (`coinid`);

--
-- Indexes for table `customcoin`
--
ALTER TABLE `customcoin`
  ADD PRIMARY KEY (`coinid`);

--
-- Indexes for table `transactionhistory`
--
ALTER TABLE `transactionhistory`
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `userid` (`userid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `referral` (`referral`),
  ADD UNIQUE KEY `Phone` (`Phone`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD KEY `userid` (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coinlist`
--
ALTER TABLE `coinlist`
  MODIFY `coinid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=786513;

--
-- AUTO_INCREMENT for table `customcoin`
--
ALTER TABLE `customcoin`
  MODIFY `coinid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `userid` FOREIGN KEY (`UserId`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
