-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2014 at 11:26 AM
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
('01c90282324ac895b82a613f8dd5ca38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279927, ''),
('0241cf308c48cd8213ceeef6d912af52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279544, ''),
('07c357acbb09a636dddbbbcfa4235920', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399280719, ''),
('0bb0d4097033af5b55dfc8688b48e92f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279628, ''),
('0d036037fb9f1834d93b2275485e5016', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399280348, ''),
('106e75570ca1d95755ce05c26dcd7517', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399278372, ''),
('12ad63e54ed8b6952f683045ad3e6a73', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279219, ''),
('1731c9a66ba3e14b72b7dad08edfbf77', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399278371, ''),
('191a494230a58e26f7158bc5237ba72b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399281743, ''),
('1f324d524c9954c73f97a35ba23b99d2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279204, ''),
('242e5ac7a4a520a239feb5c6d4b1bee3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399278423, ''),
('2653fe267e121d04a31d569dc2091f1c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279209, ''),
('2b1c91a8d35b3e0d00c83c690afc1cb4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399278373, ''),
('2c64c10831f94e72da7e979516b8c0a7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399280830, ''),
('2cf1e222590e9a55fc987e37d5a52a86', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399278745, ''),
('301756ee330827bf60a76799aa4e76ce', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399280671, ''),
('3214baa9ad3f7bb1ade5cb06d9ba7247', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399281929, ''),
('32457a45f1b90dbfbb3303c2cd0d1d35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279919, ''),
('3449e62987a6f3d0563586262d6794e1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399281397, ''),
('377f8019d6928209e4fab62403c06f2a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399281210, ''),
('381726ae98f2a7616114073cf290b33f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279724, ''),
('3bf4d9014b4a02f71914f34b1ada76aa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399280681, ''),
('40214f3e7b03608a68a80dc50acfe8d2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399280366, ''),
('4037d6ad23a714000174e096e130afe8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399280955, ''),
('42ee04642c5babe55645f8af6e146fd2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279598, ''),
('43d2e7a9275f29863cc80a2d8d9662ac', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399280227, ''),
('44553ee9873c44accc879fdc2f254e50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279454, ''),
('4887f660fd88968c618bf5c797ef30ea', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399280119, ''),
('4896e60c55b75e01495d13b1c9b3f9d3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399280809, ''),
('494c921312cc7c6303123252ab193d33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399280845, ''),
('49679467c33391d185b64edd4ef48b7c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399278756, ''),
('4a3e750b7c211ffec2242e376b3a69d3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279636, ''),
('4c5977168bb00b88ac811d6c48248221', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279650, ''),
('512e0ff8ed2fd80a8bc904e6aaa5187d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399280500, ''),
('523fd323676b4f4c3cd74bfb2bc32e4d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279215, ''),
('527aa0cb758b282ae51a78718d868302', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399280956, ''),
('52a6f54a35bb46692231d0046b45a8ff', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399278765, ''),
('53e14a08d28a5e40eff44bfcb0efdcba', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399280061, ''),
('54954c34abac5620d2734c78e3975e18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399281367, ''),
('56fd178ebbf4a09948b77ed5bfd48f31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399281835, ''),
('5819ddd542c28477b9392b3958327c04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399280319, ''),
('59c5356a1ee15b8a08b66d599e4ccadd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399281899, ''),
('6a05c6313b8eeb5d89a0cbd7f26df84c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279478, ''),
('6f28422fa2cf5787795a8b2ee3c874ef', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399281819, ''),
('754e7e2e4f3e6e99fa2e5038698b2b6c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399281839, ''),
('791ec1aaae3b22ec69f7c2100cf06356', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399281600, ''),
('79ae5129f6793b33f7ded44a8ab09978', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399281978, ''),
('7d0d08b3f31923307f9eb92f3dcc4f7e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279422, ''),
('7d1794b3bab904c036ae217e5efdbb21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399280067, ''),
('7d90fd27814e5467cd82f34a8dec9ad4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399281213, ''),
('7df860f29c5307fd705d21021c52ef31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279561, ''),
('7e4d1a7593da3c68a2c67d84f4a9ed4a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399280230, ''),
('89f4b3268f494f7f90bdd19ec48b47c0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399278756, ''),
('8a4fb17bcadccef435f802e1c0c376c4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279856, ''),
('8d4cf4d2dfbefda155b8cf984146e779', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399278721, ''),
('8eadf97f0a674bf7dd8a0d7553da1155', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399281317, ''),
('901a621ecc16609255b0c37b38106c1c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279254, ''),
('9242a9987725e404affc6556c2237d8c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399281517, ''),
('934545bd78d1f81b12d8c943f9456c33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279354, ''),
('934ad70296e4d061124fa8073beab972', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279609, ''),
('97e0fe740205a3d712479c4d59927181', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399280287, ''),
('9afada5ac7ead5519f71800721bb2a75', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279672, ''),
('9d4b29580ea85e12f63831d615bd0d6d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399278750, ''),
('9eceec9aaeb1aa021f95a8df5500ad78', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399280976, ''),
('a5c8481295cd00b646ecdf53e15d32f0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399280564, ''),
('a5d7e79efda5b5b4ef1aa5ad07781fb0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399278766, ''),
('a9178ef44d571e3cb5e6ddf5371d6414', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399281282, ''),
('b61768bc912f220b130f4225fc02be1c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399280141, ''),
('b72040bae0715937df786a0c0d86604a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399281840, ''),
('bb3cd3a33652512e2054a000546c1df7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399281929, ''),
('c2b1c3472ab5bd45a4d30c5521525201', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399281895, ''),
('c3a180578b0fdc1068b746115c4b144e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399280601, ''),
('c63ee0df231e057ba20e10806968b25a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279702, ''),
('c8ad34e9e9338ff6c36fbdd341bdb777', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279325, ''),
('cc8f7dd7d077d402b67528e9e6baccb8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399281897, ''),
('d0894c57b09269955da1d511b91506ee', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399281914, ''),
('d0c0d66ba6f3d4b1cbfe9e43ecfd5186', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399278749, ''),
('d52600e38eb3a9386142f94cb9d0eba0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279495, ''),
('d551ee166ed165b97a609d319e714743', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399281621, ''),
('d5f9206b524c09a1883f155ed100b280', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399281880, ''),
('d7cb532e2cb754695de8ffc0ac6ab071', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279514, ''),
('d8cab1c1d7789b9a2bfd7616cec8a7d2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279734, ''),
('d9fa838a32b88cb4053fec5efbf22e91', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399281968, ''),
('dac597784fb39db3ea4334d35ca9684a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279200, ''),
('dd9cbaba9f5a0dde519ce54520bfecc9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399281813, ''),
('de4e21678b0b3ed066170347a1ec27cb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279660, ''),
('e0556eb4dbdb74980ebac324eabd73bd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399281820, ''),
('e30a9a88feb81fcba17a1ea5f88ab2dc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279676, ''),
('e51b095f01949c67d71d755c533e3b81', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399278726, ''),
('e7835ae676617d36178700dd8c17cba6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279731, ''),
('f0cc949c7026519692e68257a15fa656', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399280124, ''),
('f3384cb98540160c477825b31bbae134', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399280640, ''),
('f5afb170f804b1e9b32e209e69e95803', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279583, ''),
('fbb9609b5fcc1ac7329c95b54bcc1815', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279441, ''),
('feda14218c157735698e4d226f869e83', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (K', 1399279640, '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `request_price`
--

INSERT INTO `request_price` (`id`, `name`, `phone`, `content`, `email`, `create_date`) VALUES
(5, 'Họ và Tên', 'Điện thoại', '                        sssss                    ', 'Email', 0),
(6, 'Họ và Tên', 'Điện thoại', '                              sssss2             ', 'Email', 0);

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
(1, 'giangbeo', 'Nguyễn Trường Giang', '01667039939', 'HCM', '$2a$08$28XDmSDB1wPE05/SLJGb4ui67zLo1ZjGrNAUgAl0ydfDD6Drh9NbG', 'nguyentruonggiang91@gmail.com', 1, '', '', '', '', 0, 79, 0, NULL, NULL, NULL, NULL, 'ad9147af77ea0a71cb1045eb8c144048', '127.0.0.1', '2014-05-05 06:44:26', '2014-03-21 08:25:47', '2014-05-05 08:40:19', '', '', 1, '', 0, 0),
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
