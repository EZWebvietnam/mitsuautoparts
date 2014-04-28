-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2014 at 10:28 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `oto_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Table structure for table `cate_product`
--

CREATE TABLE IF NOT EXISTS `cate_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=56 ;

--
-- Dumping data for table `cate_product`
--

INSERT INTO `cate_product` (`id`, `name`, `parent`) VALUES
(1, 'Hệ thống điện - Điều hòa', 0),
(2, 'Hệ thống cảm biến', 1),
(3, 'Hệ thống túi khí', 1),
(4, 'Lốc lạnh', 1),
(5, 'Dàn nóng', 1),
(6, 'Hệ thống điều hòa ', 1),
(7, 'Hệ thống hộp điều khiển', 1),
(8, 'Thân vỏ - gương,đèn,kính', 0),
(9, 'Mặt ga lăng', 8),
(10, 'Ba đờ sốc trước-sau', 8),
(11, 'Tai xe, tay mở cửa', 8),
(12, 'Hệ thống bơm', 8),
(13, 'Logo, tem chữ', 8),
(14, 'Nẹp các loại-ốp', 8),
(15, 'Hê thống cảm biến', 8),
(16, 'Hệ thống đèn - Bóng đèn - gương', 8),
(17, 'Hệ thống động cơ - hộp số', 0),
(18, 'Hệ thống trục, lốc, bạc', 17),
(19, 'Hệ thống bi | bu ly', 17),
(20, 'Bầu lọc động cơ, bô bin', 17),
(21, 'Hệ thống cảm biến, cao su, dây', 17),
(22, 'Hệ thống gioăng phớt, lọc, ống hơi', 17),
(23, 'Hệ thống hộp số', 17),
(24, 'Hệ thống bơm', 17),
(25, 'Hệ thống truyền động,hệ thống lái', 0),
(26, 'Trục láp', 25),
(27, 'Giảm trấn, bi ', 25),
(28, 'Hệ thống lái', 25),
(29, 'Hệ thống bi moay ơ', 25),
(30, 'Hệ thống nhiên liệu và làm mát', 0),
(31, 'Hệ thống nhiên liệu', 30),
(32, 'Bơm xăng ô tô', 30),
(33, 'Hệ thống làm mát', 30),
(34, 'Lọc xăng', 30),
(35, 'Két nước', 30),
(36, 'Lọc dầu ô tô', 30),
(37, 'Hệ thống gầm - hệ thống phanh', 0),
(38, 'Hệ thống giảm xóc', 37),
(39, 'Hệ thống lò xo', 37),
(40, 'Hệ thống phanh', 37),
(41, 'Hệ thống càng', 37),
(42, 'Cao su các loại', 37),
(43, 'Nội thất, chất lỏng, phụ kiện ', 0),
(44, 'Đồng hồ táp lô', 43),
(45, 'Lốp xe ô tô chính hãng', 43),
(46, 'Hệ thống dầu nhớt', 43),
(47, 'Hệ thống Nội thất', 43),
(48, 'Hệ thống áo, gối ô tô', 43),
(49, 'Kính chống lóa ô tô', 43),
(50, 'Dầu dùng cho xe mô tô', 43),
(51, 'Hệ thống táp bi', 43),
(52, 'Thiết bị hiển thị thông tin lên kính lái', 43),
(53, 'Ô tô điện trẻ em và Ghế ô tô cho bé', 43),
(54, 'Đồ chơi xe hơi', 43),
(55, 'Dầu phanh, trợ lực, cầu sau', 43);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(50) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('00be50c7c17af72e19f361185c39fdd5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398671927, ''),
('01e784a404525cd163c5bdf7375bc5e2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398669441, ''),
('045ebdf9643a3a0d18c97933f44dfbed', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672183, ''),
('049b0fba81b28bae37902fea93110169', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398669242, ''),
('04b2c49006e09113a59c5c27d15b2859', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672718, ''),
('068367985fb76a5d90ffc0e95d0cc6d2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667722, ''),
('0799a037d224c477d75ebeb8eb4d8025', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672820, ''),
('097e0122d3b116802f90bad92744ce7c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672718, ''),
('0a4eb9d66a472f3711b57cdaa95df72b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398671931, ''),
('0ef76436a508668c4945e5aa73543038', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672895, ''),
('12627f11e222611d693f09c02a8fc9f7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672818, ''),
('1435e4583d8aaceb630117f6dc285d4c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672997, ''),
('145b892e7d82bd710b6df95367f1ab77', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672059, ''),
('147d71e25eb0f1525750fef64bb27f33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672860, ''),
('14d06f2659042291a86b693af4edf8d2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667731, ''),
('15c2a48b32ceca19a40b59704e71e3c3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398673300, ''),
('194755a87a2963844bd96b7b06a9ef4d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667396, ''),
('19524a23c35c7f0e38c67adebec7c948', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398669449, ''),
('19535d2618b0c873118da53bdd9bcc09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667218, ''),
('1ca4de2b07903cdd9b3aec291ea45fff', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398669555, ''),
('1dca443319777a03843e2eca54183269', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398673441, ''),
('217c69f6be0ebc097183b0ae3ec75c03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672003, ''),
('21da3fc2440634b495f14c30d2cbf08f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667888, ''),
('243b8503c825d8747c4c8dac5b401376', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398673000, ''),
('25e93b46a54186f8e3c626b10f22f788', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672866, ''),
('28ab9142e8794628935f26782d84a70b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398669300, ''),
('2a2c6c1bb3df727681eabc02f7a66a10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672808, ''),
('2a73884987ceff35babe64ba9d7a19d9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398673002, ''),
('2d603e1b3fd6cdaa71d5cc403eecc2ad', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398668167, ''),
('2ecf4e25ac263157d724c292e951700d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672259, ''),
('2f9a77eabb26ca1c140d9e6e4dafd9dc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672824, ''),
('351ce8834da3545bff5584138ec41263', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398669328, ''),
('377945ac13a620e8a5ff516626390b14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672258, ''),
('39d8e252e49924f53f55f4344b19cf90', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398669477, ''),
('3c6241c86eedbce46f53eb6f37d5af86', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672855, ''),
('3d722fb2a4c3143e7426e5593d4b086a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667212, ''),
('3edfe163bdc39804683db08a5a72cbf3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667735, ''),
('4187ce854aaf534d4ba5fa15c1ec1bc4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667524, ''),
('42b1c0b26a81cafd76ac0a17f5f94720', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398669149, ''),
('483e786904e3a8ac3a9507d0b63cb442', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398673450, ''),
('4b360d60dec3b809edc7945461aaefa8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398671941, ''),
('4bd553d8bc8e88b89f29ac33dc9ddbf7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398671927, ''),
('58438cd14698eca6edc4729516a6f00a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667972, ''),
('591cbb89dca6914ecb1ad1b0a1a304fb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672995, ''),
('5f738b6491402fd41557e3f88d92623b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667720, ''),
('5fe23cc2a8001a297518740baf67a36f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398673326, ''),
('64253e7a1d6940f5d68243e24c7b3d17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398671918, ''),
('647e6a4442036ef543bdb3c30bcb699f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667225, ''),
('649367820c4aa71a2fa8cc2c457be9b8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672931, ''),
('66cd07129225e48ba1ab2b8530c9694c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667891, ''),
('66f058335e4cf10eded20beaec19c706', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672816, ''),
('67effb1e1e1cc031d53c8258194fc977', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398673036, ''),
('6979c2f2defe2472d77df537321379e6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672267, ''),
('697c4ec29c940ca7c70eeca638c41f35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672721, ''),
('69accb28409fadd081926943630cbcb0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398673000, ''),
('6a3f56fca9043b35e2bf9abf4f189e1f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398669461, ''),
('6aa40b335b0513016928a6e3b1ac7bc1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672730, ''),
('6b57c4c23b92fef1ba417b6f15b0660c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672262, ''),
('6df4fc9486ee3c1343351f5a83b52340', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398673330, ''),
('6f614399b6865ea886d40db4ef044e2a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667991, ''),
('7306c24f0c29e52fc201cc7ea81b7704', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672923, ''),
('7635262e1f6c8e705aec86eed3c01ed2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398673051, ''),
('781c9823cb93bb8a89144fe5439f0fea', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398668022, ''),
('790c2052ca30ba6600acdcff39203276', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672717, ''),
('7a5c623e482ad14a208337c906d582d7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667975, ''),
('7bb4b07b58a96ca0f4fe5415cee59601', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398673442, ''),
('7efc690f93d574e98b082a0f6ae324ff', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672856, ''),
('7f15819a3706caab01f19a113e1b7e3e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672059, ''),
('87fc5a611ecd080111627bf2f9abaf1e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398673048, ''),
('88b56080f6a35c4cc58d363dfc559b7d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672858, ''),
('8a8f64d9999570cc8668fb0c12291f31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398673330, ''),
('8adbcb5cc87fc178ac56b2d3b915d07e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672999, ''),
('8d1c6947aba0b97726007479be1bd425', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398669473, ''),
('8f2c77cc1a4ca72e21e3e43c8c28b721', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667203, ''),
('906c8de1abb490bc0ec9a61ac7420315', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667595, ''),
('90be36cd713452c922062da1ce2ff928', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672010, ''),
('9107223987d6fd6967f0cf618942b7bb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398673040, ''),
('933f5d5d3ec0a8fa832319bcb4add18a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398669151, ''),
('98651e901e797c32c6a5a74bdeca14b4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398671933, ''),
('9886ed2db3f7c21caa36afd55a036c60', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398669165, ''),
('99f8300f2fe7856968544c63bb4864c1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398673007, ''),
('9efdde70dc58c3822c9ff557aa20f868', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398668027, ''),
('a1103a6d24abac8c02260367936fec2a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667781, ''),
('a34416658dd109118d3723f0421d2f77', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398668031, ''),
('a385fa1258086a6e149c9b642af76025', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398673449, ''),
('a836907e830ec1a40db2fbcdedc518aa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667441, ''),
('a84a7afe4e0877e610d432e04c9f0d81', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398673333, ''),
('b0a7e2863e9a22af10ae56524d7c3676', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398669056, ''),
('b18eb8f6bc3901e7044db558aa2a290f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398673038, ''),
('b45f8836f541d69f357a7e2e583c0756', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672007, ''),
('b4c20cdad6dae03724cb4a8f51a519c7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672821, ''),
('b7b6f02e4939e518a4dbbf1cbcac358d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398669065, ''),
('bda7708967712be6241e21e2d1f69b9d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667899, ''),
('bed55c7cd9b33c3cebb6779368dc877d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672983, ''),
('bf3d00415338a1fcbde17c1cfc2940ce', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398673340, ''),
('c1516264799482be4eccbdb90bfdd311', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672817, ''),
('c290bc30b4aa10b36ea9a2698c915935', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398669463, ''),
('c2c655fff2783a35cf652983c4996c62', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667784, ''),
('c82871cdc6c7cd04dcf150afd0f17586', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672005, ''),
('c86a69f5175533d523fca0def7a4e627', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672267, ''),
('c93a6167d22d3cb32f07efe9a0284531', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667196, ''),
('c962935ae6163cb0df9529a8831402f8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667733, ''),
('ca90f8ba7f3f6fe4caf637b6a360141a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667218, ''),
('cad6b75d83127c87ab7953bce79e70ce', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398673443, ''),
('cbb7436aad9f9171b0492c545b4cb9eb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398669536, ''),
('d052d82d1576ef56ff8d48f7ee71844f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672853, ''),
('d10a9a271194d24563670a8f014b08c3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398668164, ''),
('d1af268c38ab3096eb10d91f30ea10aa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667612, ''),
('d39c32a655cb29024bc683cc7557ad16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398669556, ''),
('d449bf7f097e8ea8033c3b83ba68f94a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398673342, ''),
('d46f9437c925a71ecc2ad8973dbeeefc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667209, ''),
('d4e8600a10aa1fb1eda6341fe7345afa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667205, ''),
('d83306d24a299631d44ad6b4c34e1496', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398669296, ''),
('d9357586dc7cd08337f3ce415b090770', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672005, ''),
('dc3c1ef2b76d99b50d59e8ca5007b679', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398673042, ''),
('de88248f44a99ce7c5916daad40d1bfa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398673037, ''),
('e0e8b96213b070395696be2d07ad9fec', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667214, ''),
('e1057cb2c1b4f790da181f4351ef3331', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672829, ''),
('e3376c412802be6008f4b9ddd9a1a60e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398673040, ''),
('e3846ee19a8d6862e5119e89dd299e5a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667214, ''),
('e55576055fc35d0495305d0530ea29e4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398671941, ''),
('e55f3893be953f9d3159b08617706f22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398673438, ''),
('e96f87e70177ed00e335a2db81afd5c5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667651, ''),
('ea7f6c61f6c9d0c32611d9612acc65fd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672052, ''),
('ed9a99769f1a164b0b6d8ade59a44aba', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398669476, ''),
('f1a264bd19b82a38890f64f1bf24b35b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398667960, ''),
('f4c79da39d8f2063314ae3f051751bf1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398669112, ''),
('f57c1507438924a5f9191fc2137e9e5b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672858, ''),
('f76fef6c5968e1b3e5e59f7a1306ae2f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398669115, ''),
('f8e8e1316fbb3e13188258f56a302438', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398671924, ''),
('f9a8d68534d35522ff1fe0451a3a9cb7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398669354, ''),
('fa91f52b3da78f95ee7d773ec2de5a8e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398672618, ''),
('fb76c76cabb8f969cb5f8639666bc0e5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398668038, ''),
('fe5157a23018bc4e3158265c6e2ff3a7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398669191, ''),
('ff9f3b6a9632e8ed33fcf747285c56b6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398669364, '');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) COLLATE utf8_bin NOT NULL,
  `login` varchar(50) COLLATE utf8_bin NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `manufac`
--

CREATE TABLE IF NOT EXISTS `manufac` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `manufac`
--

INSERT INTO `manufac` (`id`, `name`) VALUES
(1, 'Mercedes');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sex` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `payment` int(11) NOT NULL,
  `create_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `email`, `sex`, `name`, `mobile`, `address`, `city`, `note`, `payment`, `create_date`) VALUES
(14, 'nguyentruonggiang91@gmail.com', 0, 'Nguyễn Trường Giang', 'sss', 'sss', 0, '                              ssss          ', 0, 0),
(15, 'nguyentruonggiang91@gmail.com', 0, 'Nguyễn Trường Giang', 'sss', 'sss', 0, '               sssss                         ', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE IF NOT EXISTS `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `create_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24 ;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `id_product`, `quantity`, `price`, `total_price`, `order_id`, `create_date`) VALUES
(22, 10, 1, 10000000, 10000000, 14, 1398673330),
(23, 7, 1, 10000000, 10000000, 15, 1398673441);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_fac` int(11) NOT NULL,
  `id_cate` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `create_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `content`, `year`, `image`, `id_fac`, `id_cate`, `code`, `stock`, `create_date`) VALUES
(1, 'Lốc lạnh xe BMW E90 E91 E92 E93 X1 chính hãng', '', '', '', '2xoc3j15m2k025514025500biet_rang_logo.jpg', 1, 1, 0, 100, 0),
(2, 'Rô tuyn cân bằng sau xe Lexus- IS250', '', '', '', '2e801skfrs9123014113023rô tuyn 3_logo.jpg', 1, 1, 0, 100, 0),
(3, 'Chổi gạt mưa trước xe Mercedes S320 WDB220', '', '', '', '2iqmisyk4xz042013052043CHOI GAT MUA_logo.jpg', 1, 1, 0, 100, 0),
(4, 'Lốc lạnh xe Mercedes E200K WDB211 chính hãng', '', '', '', '2denstkj2oi213713013758loc_lanh_logo.jpg', 1, 1, 0, 100, 0),
(5, 'Bơm xăng xe Mercedes E240 WDB211', '', '', '', '2ktpdwcvkwi201213031255loc xang 2_logo.jpg', 1, 1, 0, 100, 0),
(6, 'Dầu số tự động xe Mercedes E240 WDB211', '', '', '', '2tkb9vagnak192513052556dau so tu dong_logo.jpg', 1, 1, 0, 100, 0),
(7, 'Má phanh trước xe Mercedes S320 WDB140 chính hãng', '10000000', '', '', '21s0y1re02b074913094953ma phanh truoc_logo.jpg', 1, 1, 0, 100, 0),
(8, 'Bình nước phụ xe Mercedes C200k WDB203 chính hãng', '10000000', '', '', '2oocebtiztn223213013255binh_nuô_logo.jpg', 1, 1, 0, 100, 0),
(9, 'Lọc gió điều hòa xe Mercedes R230, SL500 chính hãng', '10000000', '', '', '2onadq31q7d170614020640lo_logo.jpg', 1, 1, 0, 100, 0),
(10, 'Dàn lạnh xe Mercedes S600 W140 chính hãng', '10000000', 'Lốc lạnh xe BMW E90 E91 E92 E93 X1 chính hãng', '', '22xie4gbjdz1758141158590254_logo.jpg', 1, 1, 0, 100, 0),
(11, 'Dàn nóng xe Mercedes E200 W211 chính hãng', '', '', '', '2fvf3z9d0uz1737141137101154_logo.jpg', 1, 1, 0, 100, 0),
(12, 'Dàn nóng xe Mercedes C180 W203 chính hãng', '', '', '', '2oua4yjejqe172614112657dh_logo.jpg', 1, 1, 0, 100, 0),
(13, 'Dàn nóng xe Mercedes R280 W251 chính hãng', '', '', '', '240jwyygf6o1707141107160054_logo.jpg', 1, 1, 0, 100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE IF NOT EXISTS `province` (
  `provinceid` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`provinceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`provinceid`, `name`, `type`) VALUES
('01', 'Hà Nội', 'Thành Phố'),
('02', 'Hà Giang', 'Tỉnh'),
('04', 'Cao Bằng', 'Tỉnh'),
('06', 'Bắc Kạn', 'Tỉnh'),
('08', 'Tuyên Quang', 'Tỉnh'),
('10', 'Lào Cai', 'Tỉnh'),
('11', 'Điện Biên', 'Tỉnh'),
('12', 'Lai Châu', 'Tỉnh'),
('14', 'Sơn La', 'Tỉnh'),
('15', 'Yên Bái', 'Tỉnh'),
('17', 'Hòa Bình', 'Tỉnh'),
('19', 'Thái Nguyên', 'Tỉnh'),
('20', 'Lạng Sơn', 'Tỉnh'),
('22', 'Quảng Ninh', 'Tỉnh'),
('24', 'Bắc Giang', 'Tỉnh'),
('25', 'Phú Thọ', 'Tỉnh'),
('26', 'Vĩnh Phúc', 'Tỉnh'),
('27', 'Bắc Ninh', 'Tỉnh'),
('30', 'Hải Dương', 'Tỉnh'),
('31', 'Hải Phòng', 'Thành Phố'),
('33', 'Hưng Yên', 'Tỉnh'),
('34', 'Thái Bình', 'Tỉnh'),
('35', 'Hà Nam', 'Tỉnh'),
('36', 'Nam Định', 'Tỉnh'),
('37', 'Ninh Bình', 'Tỉnh'),
('38', 'Thanh Hóa', 'Tỉnh'),
('40', 'Nghệ An', 'Tỉnh'),
('42', 'Hà Tĩnh', 'Tỉnh'),
('44', 'Quảng Bình', 'Tỉnh'),
('45', 'Quảng Trị', 'Tỉnh'),
('46', 'Thừa Thiên Huế', 'Tỉnh'),
('48', 'Đà Nẵng', 'Thành Phố'),
('49', 'Quảng Nam', 'Tỉnh'),
('51', 'Quảng Ngãi', 'Tỉnh'),
('52', 'Bình Định', 'Tỉnh'),
('54', 'Phú Yên', 'Tỉnh'),
('56', 'Khánh Hòa', 'Tỉnh'),
('58', 'Ninh Thuận', 'Tỉnh'),
('60', 'Bình Thuận', 'Tỉnh'),
('62', 'Kon Tum', 'Tỉnh'),
('64', 'Gia Lai', 'Tỉnh'),
('66', 'Đắk Lắk', 'Tỉnh'),
('67', 'Đắk Nông', 'Tỉnh'),
('68', 'Lâm Đồng', 'Tỉnh'),
('70', 'Bình Phước', 'Tỉnh'),
('72', 'Tây Ninh', 'Tỉnh'),
('74', 'Bình Dương', 'Tỉnh'),
('75', 'Đồng Nai', 'Tỉnh'),
('77', 'Bà Rịa - Vũng Tàu', 'Tỉnh'),
('79', 'Hồ Chí Minh', 'Thành Phố'),
('80', 'Long An', 'Tỉnh'),
('82', 'Tiền Giang', 'Tỉnh'),
('83', 'Bến Tre', 'Tỉnh'),
('84', 'Trà Vinh', 'Tỉnh'),
('86', 'Vĩnh Long', 'Tỉnh'),
('87', 'Đồng Tháp', 'Tỉnh'),
('89', 'An Giang', 'Tỉnh'),
('91', 'Kiên Giang', 'Tỉnh'),
('92', 'Cần Thơ', 'Thành Phố'),
('93', 'Hậu Giang', 'Tỉnh'),
('94', 'Sóc Trăng', 'Tỉnh'),
('95', 'Bạc Liêu', 'Tỉnh'),
('96', 'Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_bin NOT NULL,
  `address` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '1',
  `yahoo` varchar(255) COLLATE utf8_bin NOT NULL,
  `skype` varchar(255) COLLATE utf8_bin NOT NULL,
  `bank` varchar(255) COLLATE utf8_bin NOT NULL,
  `stk` varchar(255) COLLATE utf8_bin NOT NULL,
  `sex` int(11) NOT NULL,
  `province` int(11) NOT NULL,
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `new_password_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `new_password_requested` datetime DEFAULT NULL,
  `new_email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `new_email_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `birthday` varchar(255) COLLATE utf8_bin NOT NULL,
  `img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT '3',
  `login_id` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `total_like` int(11) NOT NULL,
  `account_type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `full_name`, `phone`, `address`, `password`, `email`, `activated`, `yahoo`, `skype`, `bank`, `stk`, `sex`, `province`, `banned`, `ban_reason`, `new_password_key`, `new_password_requested`, `new_email`, `new_email_key`, `last_ip`, `last_login`, `created`, `modified`, `birthday`, `img`, `role`, `login_id`, `total_like`, `account_type`) VALUES
(1, 'giangbeo', 'Nguyễn Trường Giang', '01667039939', 'HCM', '$2a$08$av0xeUt7pYqEymtq0ENPN.65FaINVis/64LmuohuAdt8ND8exqVs2', 'nguyentruonggiang91@gmail.com', 1, '', '', '', '', 0, 79, 0, NULL, NULL, NULL, NULL, 'ad9147af77ea0a71cb1045eb8c144048', '127.0.0.1', '2014-04-28 08:40:25', '2014-03-21 08:25:47', '2014-04-28 06:40:25', '', '', 1, '', 0, 0),
(6, 'giangbeo91', 'giangbeo91', 'giangbeo91', '', '$2a$08$qAE3K0zkte5AjOsRE8g0peXwTo6tTgxM1g01A4I0p/AQZ7omK9A.W', 'giangbeoit@gmail.com', 1, '', '', '', '', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '0000-00-00 00:00:00', '2014-04-25 05:28:00', '2014-04-25 03:29:00', '', '', 3, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_autologin`
--

CREATE TABLE IF NOT EXISTS `user_autologin` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`key_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_product`
--

CREATE TABLE IF NOT EXISTS `user_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `create_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `user_product`
--

INSERT INTO `user_product` (`id`, `id_user`, `id_product`, `create_date`) VALUES
(13, 1, 1, 1395600943),
(14, 1, 6, 1395770910),
(15, 1, 5, 1395770917);

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE IF NOT EXISTS `user_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `country` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_id`, `country`, `website`) VALUES
(1, 1, NULL, NULL),
(2, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `name`, `is_staff`) VALUES
(1, 'Administrator', 1),
(2, 'Staff', 1),
(3, 'Member', 0),
(4, 'Volunteer', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
