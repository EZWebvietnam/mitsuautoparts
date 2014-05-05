-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2014 at 06:41 AM
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
('04160f488068bd99a46ab3ed870b0531', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263180, ''),
('0534434d3702bb777892d45055669493', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399261717, ''),
('089d792f8481c7ea55a6155a61b572a7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399260850, ''),
('08bc303f26908a118d92ea7c4731943f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263128, ''),
('095529fdf55ae2029bafb5cd002a19dd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399260482, ''),
('0aab2b710e77d6efad134933c0c52730', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399264461, ''),
('0c82dd91dfc5a9b3459478164afa3e72', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263104, ''),
('0d7a74b321e6c90bee5cfec394f5fbea', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399264806, ''),
('107b1a89d5f32341a39036047799add2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399261836, ''),
('123c7a0b5f732e611ada8630d741dd56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399264649, ''),
('1457c59abdd5550587ede5c595a5146b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263987, ''),
('165b10a4796eab045958ae16682973e0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399260605, ''),
('16f9c2b55c098d75b1c56f3cc8077e1f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399264619, ''),
('178f03057a7ff9fd36ef550ed1a8677f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399262186, ''),
('17e4ab0d4da4a2c83444d8fa8c06c754', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399262829, ''),
('1a27891317b936596c6ed31b9cad497f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399262625, ''),
('1ab647bbf552a8799278de58ea11085e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399261758, ''),
('1b137ba0853fdb781697f93cb44d60a6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263070, ''),
('222682520097bba3b42e7e774cad1e37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399262747, ''),
('2531d26426904da6e9ee6cfc853814d1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399264548, ''),
('2747b8c216491de5f2912dca8ec6786c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399260873, ''),
('275c099cc54bc9af1b9baf5b7002501f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399264741, ''),
('299bac87373aaa543f0ee86cd73ae880', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263306, ''),
('2b81eb10c3b25d675c2ce05ab946efc1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263015, ''),
('2c97d11f0ea71607ad3f87958787b58b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399261236, ''),
('2e9c0d223f8ae039bc5367fcc937cf7c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399261954, ''),
('2f2f5c0d507915d17605ae2b3bd2b956', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399262244, ''),
('33efc81ee40518ab5d6959ababfee8a2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399262774, ''),
('343179238177dc3154ad089d072e4353', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399262629, ''),
('3502e0c090b965b2de24e58ca4f93c78', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399264644, ''),
('354af7fcb0614e4f94b60e45d0902fc3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399261823, ''),
('36a4e721779c7142f9f28a4f6dfa7281', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399264741, ''),
('3837bfd806e7f375d998f98c8c03da8a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399262719, ''),
('3fac9b49d3a5293bcd40db6b7f48ba52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399262615, ''),
('40086e81ceb6c21c0cd2b10456cf951a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263088, ''),
('426d27bd785df4cac63e11680a7ba60e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263979, ''),
('42ce68d754daddb8c5dfe6a0ae2e920c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399264653, ''),
('4469ac951fdb82ef2979b663969429e9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399261852, ''),
('4832e96358050c2d4b6fc47f41020dda', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263082, ''),
('4ecab62e51ceaf901b1cfaf61db60b2d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399261144, ''),
('4fe1f944c19aeb5b80da940917d6dccb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399260634, ''),
('52cfe424794c6012c3ecdda2f371aef4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263243, ''),
('54e437fccc536a9c49b559110a52f814', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263242, ''),
('5a3b49966af0738a108b683a6253b0bd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399264561, ''),
('5bf38af83fd014d7e6517825ac0e78c8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263167, ''),
('634a3970ead6ba03a5050d08bb2be88a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263216, ''),
('6619831263e39aaac5813fffc0f4e033', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399262375, ''),
('668762a89625289f65a89daa12bd9e26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263121, ''),
('6aede3eef60818360988d4d97cce60b4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399262772, ''),
('6f09cc3b9f499315470fc8926f3aac37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399262390, ''),
('6f559a310eda94c8bc0906e10ef944fb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399262384, ''),
('72eab6cbb2d7e1c1017d5cd3e234284f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399264461, ''),
('74011240ae1a4993c83fcdd01b600f56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399261183, ''),
('7920440747a8477595a9f3f31e8e8b01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399260624, ''),
('798b4750b55fff9acb19fb3890f33a5d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399262535, ''),
('7ab22a20c9e3edf04e12b031638f2dc3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399260569, ''),
('7bcc12435c9f6df4750495028916ffa9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399262458, ''),
('7cd1506ac39b7bfde3da4f58ee1cd8c1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399260626, ''),
('8136c2d127206641cd973ed27f24a843', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399262573, ''),
('824cf5a78522d41658e62345ad2cc400', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263056, ''),
('83445f526432237568476dfde6a7b8f1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399260793, ''),
('8497eb153ae50295e5aae2f34346374e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399262638, ''),
('865c6b5ce9ef1395322e3350560d25d1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263214, ''),
('8665ebed315dfd78cf176b2eec73518b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399260609, ''),
('887761795083530c576e0779aa47d6b5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399261854, ''),
('8c93c3d844a3b96816c8537d1afba723', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399261285, ''),
('8ec14b1a9c258e1f8fc080449539d2f4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263874, ''),
('930ce801436c943f15873392ddc7f5f7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263072, ''),
('95338963463776b5155754d428c08d94', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399261686, ''),
('96634ab3b99033c220b3d5b86fb6e62b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263061, ''),
('96aa63c37e2105f5e193321aa192c9ab', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399264752, ''),
('96e1df67a625b87b862d966ed3c5ebc7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399262190, ''),
('9784935296b42793fc9b051fa700c2bc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399261861, ''),
('979284d7b9832f0e4ae7b238001868ee', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399264519, ''),
('9bb02e32f501dfcecb4aeb68a0b85c74', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399264546, ''),
('9f9cb9df2348921b386ac82b3397a380', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399264003, ''),
('a2f40c416031ec994fa9ca373fcd092d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263090, ''),
('a343e4db0a5fa7ed13bd239476ac18c5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399262502, ''),
('a411dc51e2c7a58fce40a9ac023b9cf4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399260863, ''),
('a9a4a2f98a5e78ba6c4737e92110adba', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399264653, ''),
('a9f7f920f248e990bd3b4f4f506f1a65', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263178, ''),
('aa34d2653da8477881c1dc6e3a74e6be', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263261, ''),
('ac8f2d17e7d267a07b5b4a61b92de3b0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399260836, ''),
('adbf3a72842694477e0ac5379b49a235', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263092, ''),
('add80bc6565c1e8b90ee9d2c9f63af5d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399264550, ''),
('b335196ddab0cd4d1d5dd67ee48a25d6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399264752, ''),
('b628727080eb252b921d75c9041f659d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399261852, ''),
('bad1afaf24990641fa344089e809fff1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399260631, ''),
('bb95f0b38165293e727395a50b5bfca1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263167, ''),
('bbe619c933defa8afcaf9260859bfe33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399261867, ''),
('c71f258d1b5231aad2f06b42515b1145', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399260777, ''),
('c915efbbc4ce84092ffc56938a9eb968', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399264007, ''),
('cc454c85a889f7518cd9fb113d94401d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263054, ''),
('d6ffe9bd24681e00c9f0be36baa968e9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399261912, ''),
('d7b9c65c8dc9c18622cb5905bc179977', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399262942, ''),
('d9250f028fa0bc61904f4bfa72e8c9d3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399264845, ''),
('da7754ec532f1ce0dd0359e994256b1f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399262388, ''),
('dee7bdd0fbc0f7afdcd0be81c325efef', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399262630, ''),
('e31a5fea8ff840a4d14c4ce821c56543', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399260817, ''),
('e3ee5b30922d12df021aa6f3842f43a7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399261836, ''),
('e49781d2f45eff4ade67f3aacce63e25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399262767, ''),
('e9272c55dcb1491c79bcc45ea8a0901e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263764, ''),
('ed7518da1fb59180819ffbd546e46cd9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399260613, ''),
('eef7b494ed6b87ebc55610903fd621f3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399264779, ''),
('ef01cdbc5da9ac0308956be12cdbddee', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399262624, ''),
('fc7a3994a2392ad45e6161ba5d67e719', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399264808, ''),
('fce0e6308a1ba3d410ae3a67e52621bd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399261842, ''),
('ffed2b97d9b7606a94fa6d5bdb619ba5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399263269, '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

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
-- Table structure for table `order_c`
--

CREATE TABLE IF NOT EXISTS `order_c` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

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
-- Table structure for table `request_price`
--

CREATE TABLE IF NOT EXISTS `request_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `request_price`
--

INSERT INTO `request_price` (`id`, `name`, `phone`, `content`, `email`, `create_date`) VALUES
(1, 'sss', 'sss', '                             ss               ', 'sss', 0);

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
(1, 'giangbeo', 'Nguyễn Trường Giang', '01667039939', 'HCM', '$2a$08$av0xeUt7pYqEymtq0ENPN.65FaINVis/64LmuohuAdt8ND8exqVs2', 'nguyentruonggiang91@gmail.com', 1, '', '', '', '', 0, 79, 0, NULL, NULL, NULL, NULL, 'ad9147af77ea0a71cb1045eb8c144048', '127.0.0.1', '2014-05-05 05:30:09', '2014-03-21 08:25:47', '2014-05-05 03:30:09', '', '', 1, '', 0, 0),
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
