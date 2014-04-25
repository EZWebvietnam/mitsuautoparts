-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2014 at 06:24 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `id_product`, `quantity`, `price`, `total_price`, `ip`, `create_date`) VALUES
(3, 10, 1, 10000000, 10000000, '127.0.0.1', 1398053866);

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
('03a19bff23c0bd2f63d5a96881e57c8c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395122, ''),
('073d77cf74297400c194e4bd3c78a564', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397946, ''),
('0a0712ec92c185c9052c491fdabf570d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396015, ''),
('0ab5c422f9dff7f17b2376ed93757246', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397247, ''),
('0b035eb89ed9abb8c9efb4a01d132a7a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393897, ''),
('0cb1bd710a351e61d1f3ecf2ea385123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395143, ''),
('0d504159c93753ea8629816d99b7dc6c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393895, ''),
('0d5ae691d1d2af1af87f3bf640ba3e1a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398398262, ''),
('0fdcfcdd6111a38078fbbb803562a8c5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397200, ''),
('0fe0f1d4af1c987cb0d0b39626b367e9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396009, ''),
('10eca49fe69213fd0e5bcea9207913f0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393924, ''),
('11205e1ff8a7935e0516ec878cbca7a8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397520, ''),
('11239b998eff4be621f6f8441e356707', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397673, ''),
('11915e8b5c30d09836ae043f366d4a0a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397907, ''),
('11c24fdc69f366c45f841c4925af25e6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396961, ''),
('121216aab337acb03f2837616d5c70f5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395891, ''),
('127fc68170ef62ff212b7c6837c3f97a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397454, ''),
('145c17b25816dec60f96b1e872264638', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394729, ''),
('14c811b7f2c7207c6767b7ff95403613', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398392810, ''),
('15b6daab94744aa8999aa37ffdfbc62c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397452, ''),
('188ada465dbee9857efaf47594f7dc90', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397572, ''),
('190e7df0e8a025410ec516166e02783f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398399256, ''),
('1a0971c432a130797787b1f14f63d383', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397461, ''),
('1a887160714e90608c15e489ce9421ce', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397504, ''),
('1ad9cfdc3b7cd666509a9de88833fbd3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398392331, ''),
('1b4a26151457119bf4e75cff836a7163', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394188, ''),
('1bf5b86028d12658ef0c88997d3a2539', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398399203, ''),
('1cdf769582bcbeb9000d4fc7290933a9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398392628, ''),
('1d1a0c9b68c0a255f9c37dd4fcc18800', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394729, ''),
('1df98083ce07cf67a595afcf6c2b863e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397569, ''),
('1e3b36682b2986e912440de157a2ff9a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394658, ''),
('1f3dfa97714d8db04db587de6206568b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393280, ''),
('1f671fe7abf386a308d73ef3aba24475', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393226, ''),
('20fb314adeee5059bf816be75a576f89', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396114, ''),
('213dd60734b1dced5afc3c24fb3059ed', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393259, ''),
('216461e67a7e8f3fd2f11b83e89d1ae7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393044, ''),
('21fac3b391d1c571a0d5198d4dbd0fde', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397617, ''),
('237d95041fb7434d2a717f782271dade', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394049, ''),
('247726c4eaaf2a4e07862adb30add3ae', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395909, ''),
('24b2514af68a31981dba7802c40bae82', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393317, ''),
('24ce2bf13110c2bc8d2375262ea18f0a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398399209, ''),
('264cc3837b7ad2ffe28742fdb8096ce7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396990, ''),
('26b8697310d9fc134b22d43c4418d61c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398398360, ''),
('26c42c4fdba738ab1abe6a7198da4b30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395370, ''),
('27c4ffca6321ca521e8029c6db3fd7e6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397410, ''),
('2862b2959f1c1d23426d32128f9395db', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395122, ''),
('286b98bbe3946ad357a8ccf702ae21c4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393341, ''),
('293ae20027427586de73fef4e90c7704', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397907, ''),
('29c16f9b656ea0b648f40ee2a9f60af8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397245, ''),
('2b1ad3eac14119e1e86b0cca8df98652', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395990, ''),
('2d9fec339f6fc1b95a44f3546a92677b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395153, ''),
('2e8aa0d901f139508224fe620149f598', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397307, ''),
('2ebc2edec3b0e9f0a1dd10ac0475e5f7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395150, ''),
('2ed3944b9eab78af6571939eb1015f6c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394660, ''),
('314a533b54fa5094a11c4f8ae0be5cd7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397367, ''),
('33f67b632fef228ce3137f0409e85c9d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393143, ''),
('349ac303f1655e0ff57c91c84419dbb6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397640, ''),
('3653246ae092e9a46c6ae6c1e3d8952c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396604, ''),
('36f19d5254c810a37a19415a8d5c9f3c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397126, ''),
('371c200f397eca24107b66192656b5e5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394710, ''),
('3809b9d9f08ae80730c6845ad4b4a599', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396118, ''),
('383e9be0a67b090e1666360767d8605c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395142, ''),
('39a3e67a30ae8ce87f5128d07961eeb5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396107, ''),
('3a33356c15259d7e732f25651ca34c36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394278, ''),
('3beff5562e3b958ba1b114c02930314c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396889, ''),
('3d63263e310c53ef48e696b58099a907', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397631, ''),
('3e33a17d9cd854c4b147b83d4db05975', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397304, ''),
('3ed453b06d86b90bf4942a6d3fdd03ca', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397896, ''),
('3f4dd29a7b307fe43d1a14de369d8c55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397162, ''),
('4048bfdd728947b09511ed0bb33066a4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397517, ''),
('408d693a18fcc485660e2b3a0a209aa2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398392524, ''),
('40ae899d0c0892684d20ebcda667216f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393926, ''),
('40fd5de5bbd141087f3f045de0d267f4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397507, ''),
('418a7b2735d8bcea170e6da6239c2c1a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395341, ''),
('41caa3caad702f08c360d29f3d39a76f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398399032, ''),
('42184472dffcfc351213913360899fdb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393891, ''),
('422f8d420cb144caa29d0ffaaad8271b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398399165, ''),
('42c3926d589a1ee90471e002a6db7fb4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395642, ''),
('436509b1b586dbd10828a80e58d3b81d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396540, ''),
('44ae6c71a1b05a201eb0a413410d1e8a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397617, ''),
('458933249499e891a990b790218abe82', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394707, ''),
('4629e957be3985f38fe4f7404cd67534', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393926, ''),
('472e846077a2d98d7d393d5f39c22de9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397368, ''),
('481de0a0f4a9704cc9f58aa778789c45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397035, ''),
('4887b5759330464fdbf6bdd89a78c809', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398399419, ''),
('48e04ffe65b0c33a3e70d18bb60cf41b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393222, ''),
('495d180266bb7e18d2d84f1d100015bc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397212, ''),
('4a13eb7d3aea1f4e54c28ed4124dbc20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397980, ''),
('4a474e184d8f0b442f6b33f0f7f4a9fe', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397126, ''),
('4a48904fd82321eca83ac163bcc80c5a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397410, ''),
('4a966f0e69d86310de8d7ab10f75e046', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395075, ''),
('4acbe805fa1659734b55aaaa4e52f05a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396673, ''),
('4b000b85ac08f5c64bba8dac80472c03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396962, ''),
('4c8eada526326bd512c7fa8f13ecbb1b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393200, ''),
('4d31f6bac2a914143057d8801951a1ce', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395123, ''),
('4d9ae19f91ab68e296a5385739185391', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393931, ''),
('4f8bceb8a095feaacf1347394063874d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396480, ''),
('4fada8748758e2a4d0644493d56cf479', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397673, ''),
('5053dbf5e6a4a79b938551340480d040', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395168, ''),
('507e5b05c901d499a1fb8ae8893777cb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395800, ''),
('51b7418a078ff444aac89f16cdce9998', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396606, ''),
('53dd4a8b4443c9c63a76a9d9298248ad', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398399140, ''),
('53f9f4a3332d0582719733556162e779', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396773, ''),
('54b101f8a437379c4564adc6cbe525e3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393131, ''),
('55bc2cbb15cb5f2c628e5c7e457bbc21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398399469, ''),
('5631846944935ec5c3a683975e4303f7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394709, ''),
('56950f9791853992e3ea40ea9823c71d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398398095, ''),
('56b99032ccd57bc85a82a9f5ca2d355c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396468, ''),
('57436f0d0af2f56acf3a757544731f67', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395641, ''),
('577e868ae425587a218107d3a2023109', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398398267, ''),
('5885fe529eac2155d628724c02e39c84', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398398010, ''),
('589147a0c047194fedc701037c894833', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397507, ''),
('5915e07a1f8dd87cb4e087ae7c23aa0b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398392618, ''),
('597c7797158848e2a82d591c37ea5346', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396009, ''),
('5ac735b265785f04c18e4bda9ccba4f6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397305, ''),
('5ba24bf511b0228837dbeb8ee6a90aad', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398399508, ''),
('5e061b33cd99f939a234c513472f7390', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398399334, ''),
('5f3a946126d46bca5534320d36d75867', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393296, ''),
('5fe22754c7b47745513335477166cc35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395889, ''),
('60d260c7708f39d6c37bfbab20e8e4ba', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397614, ''),
('61c4e0db68eecaa6a5fb0b63e021ba5f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397198, ''),
('63fd46eecda23ec37f8f96ac39167987', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396093, ''),
('644a4ba833972001621659c0ae5e5093', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398398536, ''),
('6471bc0d45249c056111e258085b6fb2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393039, ''),
('65926cc97785fe79d4ad4ec1324f79e1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395141, ''),
('67f59fef26f615250b00e90ef3873caf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394654, ''),
('694f38b8d704a7362431fb7d6a1ec4ec', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393082, ''),
('6a807c135746ae3aeba75385906eac99', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395144, ''),
('6ada03f263606bea44382f2535490484', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393892, ''),
('6b20a18cf86358eca25c4c08f0a503d8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393213, ''),
('6c9626217b0f138820ea05e5b3a1be8a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396111, ''),
('6cbb030a1e9442ef1127835d17c7a442', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394308, ''),
('6cd940cf8e42dbbfd285a98a1e966c33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393196, ''),
('6e58a5a026ee53de6a46893ed827c240', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396891, ''),
('6f5987ce3b09b11c7b60d906dc064d69', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398399059, ''),
('7040778c6e5696a5e79423a63848dc23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393345, ''),
('7050fbc2681fb10afc107b9560c4f7c5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397173, ''),
('706f689a5afecf2d5eaf7b14dc25e475', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395422, ''),
('70ca6557c16a0b9c03b5c917985f4d61', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398392815, ''),
('718dd3efbcc091dffa84b3f7116639ce', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398392620, ''),
('7203932ba4a32b870c494279efb31458', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397642, ''),
('734edbc9d53a8008ed8ab0226b335b9d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395610, ''),
('749eb377af554221bb4613e1bcfe13eb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396487, ''),
('7608152ae64539b9a56ce38e3c8931a9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395534, ''),
('7675115ddad518721a82caf67a3bc9bd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396772, ''),
('76c8606abea03490b6fb66cda199ba41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398399148, ''),
('779812dec99061269e7c11c4ed18004b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393282, ''),
('7804f8c879bbcd72d4d47741dafed42c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397453, ''),
('78e98314a9eeb61eb02ec2456671ad79', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396093, ''),
('7938ed0f4c440ed95adb535d2651b4a3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393157, ''),
('79767992a031c398eaff76d512b0ef4b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397907, ''),
('7a0e6921bc1b2d7fefd5c65e89b07a57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396118, ''),
('7b8560d1b05732f6a9b7dedbc6569f2c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396891, ''),
('7de69852a92df36ed5d05fc52fc16bcb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395143, ''),
('7e18067343508a501d5e0c6a4c3def08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393814, ''),
('7e68cdcba527f849aad9fba5d98f3c48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395424, ''),
('7eb99777fb652ae1bba065e4a1a1d561', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396992, ''),
('8121c3996e37ff152820aafe60af45a4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395798, ''),
('815cefe05df408a03939b280a89a75d8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393962, ''),
('81c5c4d9b0858cb428e2b31c76eba0a1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394728, ''),
('8234ff2716f8e10d7f5364257e9f5a0f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396006, ''),
('830f9edcf6cfa52c771057b5c3d53655', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397246, ''),
('83e1957927f338bddb0b2e3f97f10f68', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398392529, ''),
('84eb0e308115d48791467e717a88f138', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395536, ''),
('852a92f96df80cfe27389986e0d50e46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397360, ''),
('85abce641d8555fd3ce1413707ea3785', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398392279, ''),
('86413c4f53cfb70c45b53cc251c6c6b0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396465, ''),
('86478ebf84ceddf7c23052468b4a9f5a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394250, ''),
('86a3778a2a5780bb8c685ab416a51d8e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397643, ''),
('86e3fac15b19dbcd1940c0a544a442bc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396540, ''),
('8704caa4c7c9079e137063f3d298d90e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397232, ''),
('8758b51400efedb6bbda68f64f9db073', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395643, ''),
('88454be94c83d0b743e31b31c8b74a4b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396107, ''),
('8854fa77683578ac8e1f4d1f45d8b690', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394710, ''),
('88804096033c2a63d98b580d62c85072', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396414, ''),
('888cf35a5232a52cc874d59ab16221b9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395912, ''),
('88c7153ba44f7134a3a65c10d8574087', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393190, ''),
('8a0743e39432cdc0778c05567d3bf6b5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397670, ''),
('8a2d0cd7a0e4329bd78e9835bee3308d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397633, ''),
('8a4dc009f606f8f64d9193e2587e291f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396675, ''),
('8a7b3a1b673260afab22cb97cf66b730', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398399197, ''),
('8a9bac020d4f96ce4348c6a93aefd64a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396411, ''),
('8c2f9c84c448028a595e818a657dbb65', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393254, ''),
('8c720ae88dd611039c53d5392723ba0a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394054, ''),
('8df629f6e92a47b8b8024c7803961140', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397171, ''),
('8ea807b36fe4199409db20dece8cbb3d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395372, ''),
('8f494fa1792e1fc56b92c7b6beb71033', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394709, ''),
('8f6beee2e9860463e1959793820621b0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397633, ''),
('90b108680f7c98896b482e1ed28ee8af', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393900, ''),
('90b3051dd23b99795efd825c83ff7272', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398399229, ''),
('919adb3d4a5589474816ffafde8a1343', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397458, ''),
('921cbfb802e435abe68f019ecc7329e3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397199, ''),
('9265dd4a4825e49f81a61e34b2af3b01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396993, ''),
('941e5526be381462755cbf4d2768213d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397620, ''),
('96125bafaa03def1527cd58f22ad89e0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398399112, ''),
('973cf5b80c8949f3e9adbde9f1d429b4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395890, ''),
('977ff7542ccf2e229238fb9139322f93', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397172, ''),
('97a1f9c9d059127e66f6ffa2c28cbdf2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398398404, ''),
('9902421d7901e8db75409ed2da447383', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394282, ''),
('9a903dcf596f6bb618239af128520242', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397089, ''),
('9abb7251db3f51d0a478ce92e9a63850', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395609, ''),
('9b732bd6fe4c920015c131f7b726b17c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397572, ''),
('9beae747873536fe44b0d34460e061d8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395166, ''),
('9c0139490de1c581a05e1df8ebb2079a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395078, ''),
('9c76cb758cfdf5ab5903362be01ae6ef', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393937, ''),
('9d5e9a7e99a2137fa271a45c00bcf5a5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397165, ''),
('9e4f71dd70e71d607b8e66787b14bae1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397164, ''),
('9f09ee103ce1e8053fc7f34ce4a1e63f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398398445, ''),
('a02987a4f7b8a7883802725b407a39ea', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396468, ''),
('a184b6a002f3d9d042de22b673563074', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395801, ''),
('a21b0485829aa823e7e6fe24b23713e1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395338, ''),
('a35abe8898f731add4e8ed7d27b4188c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397261, ''),
('a6ed14e32a9ce7055ca5d3423006e0c5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395993, ''),
('a6f8b781f7eeaeed21d7d15fb6084d5d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397906, ''),
('a81da1149645c8dde0c5c8f2326aaa1e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398399487, ''),
('a8b15ce32fffd921b6ca252bc3f95301', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393580, ''),
('a99bd7b17f2f2f942be456f21112491a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395078, ''),
('abaa4713e54958568f4f77af9705495f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397125, ''),
('acacbbe2b720cd4b23fb5d31a1ba3bc3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395153, ''),
('acdb525b0bce0b91a81b7ed770a74624', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398392420, ''),
('ae073842aa88b71b29a72aa64b733f54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397520, ''),
('aed8987945c667655900faa3247d9657', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397277, ''),
('af848429a59fa5ce3e3114afafcfcf46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396425, ''),
('b0cb21c302991e097b4188ab3527cea1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397262, ''),
('b102ae04bac996945560c33bb6d362ee', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397676, ''),
('b13851a159c3ea65abfbc844c9c555f6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397587, ''),
('b29811fa2b2ca45947c0f2792dd4f646', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397361, ''),
('b44ab7117ba9cd7e922f4b5cbe262b8d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397231, ''),
('b4b299e4d9dbc0643bb0e9110f8a4d52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395372, ''),
('b5211e950cc5d009aac1541e3badacc4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393115, ''),
('b5b274206d1af4bcfd523bc4a907baa6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393474, ''),
('b827ccc0037870b65db859fe645c9116', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395912, ''),
('b86ae7abe7fe0b4fda5fbb0cd4e0f5fa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395153, ''),
('b880e2cf00c8c3f20275dd7f338ac973', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397460, ''),
('b91c7aadd9db1066e3ff53370f79de22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397406, ''),
('b9ea09c4ef5f081d9ce59f4f5fdbbd2b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397100, ''),
('baed175e426bbfc744e7e08ed65750b7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393852, ''),
('bc47975473d00bf644cd3725b1def789', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394075, ''),
('bd33a1c3ba0b0592fc24826eb6448541', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396425, ''),
('bd9d1e0366f7c453f7f8be6d18c65862', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397101, ''),
('be09a410f12e7e816fe9c2e946bd6d12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395341, ''),
('bef76b53bdb2b9577f84c02376d8101a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394247, ''),
('c008267eb391f124f3a25e40abf5c923', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396105, ''),
('c02950aa946ef190f7f5d003d40fd34c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393277, ''),
('c14afd8a8495c8d9f6663cba96cf9d85', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394052, ''),
('c283f1a3907a6231da1a9bc68cc2fb43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396960, ''),
('c33454084ed37b03f4760d447c887138', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393808, ''),
('c3855666fc29d2cf0530ab199ee4f213', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393257, ''),
('c425444ee44378acf618d925bf935251', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398398267, ''),
('c4aee3c7459c0e5fd0c46feaf3176ef0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395424, ''),
('c4fdc059f1d8ef14942bee164ccb3095', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396675, ''),
('c564da7afddbe1dc4df1000a81edd1c4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396600, ''),
('c6346c000190b80a83e6af0e10a14c8e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397278, ''),
('c7ec979d63a43a79aff6547408effe3b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397214, ''),
('c8511543546e8dfc30e4d4bd48407b7e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397089, ''),
('c882879fa272f2fdf9395e50c2d38f1e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395536, ''),
('c9481dc83a2423fb0d8b64ce832f8fd9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393042, ''),
('c94d5a31af312b98e9179f9ed3650046', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397087, ''),
('c9ec025b3231fada2233b62b2380a3d8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395993, ''),
('cad86d191f0f3e46c17d54df052586f5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394660, ''),
('cbc5c6aac41ef5b736dd1ba23cec4c98', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395784, ''),
('cc2b036998adbd4cafe3e8c795d443d8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394660, ''),
('cdba802ee92847b010f08ce67b9b6e6c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393755, ''),
('ce629668e7b9aaabb83be905433cf643', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398399124, ''),
('d0e412946af54ca019684c67d7ab388c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393333, ''),
('d43ccbfe448cbabab989d9d30ad6babc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397305, ''),
('d55887625e5750e75388e38e687ee797', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393587, ''),
('d689b8e37913114b7b54de827a15dd68', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395785, ''),
('d7ff40f190f4b865fcb869b4b653b91a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393934, ''),
('d9315d221dc6336c265e7cfdcd89f0d5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395167, ''),
('d9b5582845a28bbf3a75cea85c965510', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395786, ''),
('db1168971175ec91cb0b7832417fefa4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394726, ''),
('db61bb40392fa93ce0896967a7343d7c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398399511, ''),
('dbe6f76f4c1963600a5d784c81fa024d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395120, ''),
('dcd4ff6e5d10bf1720b0b86d51a54980', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398392405, ''),
('ddee5db72c718c61c4e4ea7b324ca45b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393886, ''),
('de2050283076f121adfc8e6bee134b9b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393643, ''),
('df16c507d11a408a5e5aa34626f46078', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398398389, ''),
('df5fe71e896b3233bba847ad62f3d15a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396605, ''),
('e0671f98e58613234da6e4c3fd361742', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398398308, ''),
('e091d5ebb187df51d787c04815623664', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395608, ''),
('e16a5e84c28d9567fe7dd076bd678d52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396413, ''),
('e1f3b8879806bb8d3855ca6eb532587a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397213, ''),
('e242a5bc1cbfa82915ed6df201f1b7b6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395078, ''),
('e2d3ff97724755218ff78bb20e0782d8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397908, ''),
('e2e2f02c6be773ad53604b97e2780d1e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394192, ''),
('e2e44f89c1050d2962779fa88744f0c7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397955, ''),
('e35ed6e3571e71217cc26825bbeb463b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397256, ''),
('e3a5966b4cc9e2f0b19df5aa5f726000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393201, ''),
('e40635c0cbdcc23f5bf48481e2ab1dd3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393890, ''),
('e44bf66bac2fbbec2e84aa549c83534e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397278, ''),
('e495f10d71917726a0b435f2c8fe19a9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393648, ''),
('e4f7c959968b1b4cee90bdf81f62244d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393864, ''),
('e5fb2fdfa6de938f639745090285814a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393861, ''),
('e72cbdc8c42f6008c77e973924d92834', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398398589, ''),
('e9afd883dfb65b82ab80a94b4f9d1261', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396015, ''),
('eb5ae9a8a81ca6b57caf75a6db359071', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395153, ''),
('eb5b4584c91fae0cf21e0d2832e28805', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397257, ''),
('ed9bcc31d2a863e4e8bb75bb05306c37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397362, ''),
('eef2783c369eafc115dc7937b90eeabf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393193, ''),
('ef7d0d23afe9e4b648c7caa3ad08efcb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393858, ''),
('f1005f0b9a2dab233710b1c544337d22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397102, ''),
('f1a0e446574b6f5e51359a8678b94e07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393949, ''),
('f1d615368bb8ae087131d177582179c4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397230, ''),
('f2a250aec4628dd7b077d7c75134a34a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398398358, ''),
('f43906dfeb1ebe19c6605b64a7fdc33c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395122, ''),
('f4d16250b8341eba272598aa8a43584d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398392519, ''),
('f5f90a6f97c3cb2b8a1c2e30d2284b9a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393231, ''),
('f7128cc07018b002832cec3c3123b5ef', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393122, ''),
('f71f30b9ea12f8cfc6fd7a29823d69e9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398392259, ''),
('f74e4ea5867812a39be5e4ac11264c30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396091, ''),
('f7d380833d9fd1549c0d4901b8544341', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398392630, ''),
('f80149d619c17570cf885786b76d786d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394729, ''),
('f8e554e17da866c1765e4c4b7194c79e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397257, ''),
('f9f62eb8379a638748aab13ec5daff92', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397262, ''),
('fa4ccb0c48cd7cb4a1d75e7babaab720', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397035, ''),
('faa3e9e5725415f0f51e7bca1ac7a4c2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398395079, ''),
('faa901ff5d98ba4fcd8567708d46bd64', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393253, ''),
('fc374c9cb0d23a24239ebbc8e3023565', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397032, ''),
('fca0016dda547c096200ac86631de945', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396114, ''),
('fcf6ad3c4ca211696324439385e1f5ef', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398397364, ''),
('fd904781137c330cfc3ced28f13867d4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398396771, ''),
('fdc02d6e985c428a530bbdd5b36d19c1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398399074, ''),
('fde6fceb69d649cd75f5500573aec018', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398393881, ''),
('fe666de255aac0624e52b69e9e689d72', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1398394660, '');

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

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(2, '127.0.0.1', 'sss', '2014-04-25 03:42:44'),
(3, '127.0.0.1', 'sss', '2014-04-25 03:43:26'),
(4, '127.0.0.1', 'sss', '2014-04-25 03:44:18'),
(5, '127.0.0.1', 'sss', '2014-04-25 03:45:04');

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
(7, 'Má phanh trước xe Mercedes S320 WDB140 chính hãng', '', '', '', '21s0y1re02b074913094953ma phanh truoc_logo.jpg', 1, 1, 0, 100, 0),
(8, 'Bình nước phụ xe Mercedes C200k WDB203 chính hãng', '', '', '', '2oocebtiztn223213013255binh_nuô_logo.jpg', 1, 1, 0, 100, 0),
(9, 'Lọc gió điều hòa xe Mercedes R230, SL500 chính hãng', '', '', '', '2onadq31q7d170614020640lo_logo.jpg', 1, 1, 0, 100, 0),
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
(1, 'giangbeo', 'Nguyễn Trường Giang', '01667039939', 'HCM', '$2a$08$av0xeUt7pYqEymtq0ENPN.65FaINVis/64LmuohuAdt8ND8exqVs2', 'nguyentruonggiang91@gmail.com', 1, '', '', '', '', 0, 79, 0, NULL, NULL, NULL, NULL, 'ad9147af77ea0a71cb1045eb8c144048', '127.0.0.1', '2014-04-25 05:47:56', '2014-03-21 08:25:47', '2014-04-25 03:47:56', '', '', 1, '', 0, 0),
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
