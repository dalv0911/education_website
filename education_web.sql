-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2014 at 01:38 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `education_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
`id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `des` text,
  `giao_vien_id` int(10) NOT NULL,
  `time_on` datetime NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `sdt` varchar(13) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`, `des`, `giao_vien_id`, `time_on`, `image`, `address`, `sdt`, `email`) VALUES
(4, 'JP 2014 - N4', 'Lớp học dành cho người bắt đầu N4', 10, '2014-12-13 21:23:53', 'death_note_avatar__l_by_lartovio-d513nsb_857107018.jpg', '258 Giải Phóng - Thanh Xuân - Hà Nội', '01688279743', 'dalv0911@gmail.com'),
(5, 'JP 2014 - N3', 'Lớp học ôn thi tiếng nhật  N3 cho những bạn đăng kí thi vào tháng 7 năm 2015', 10, '2014-12-14 19:42:32', '10580132_350443721778020_5187722379797220671_n_1264488892.jpg', '258 Giải Phóng - Thanh Xuân - Hà Nội', '01688279743', 'dalv0911@gmail.com'),
(6, 'JP 2014 - N2', 'Lớp học ôn thi tiếng nhật  N2 cho những bạn đăng kí thi vào tháng 7 năm 2015', 10, '2014-12-14 19:44:07', 'default.jpg', '258 Giải Phóng - Thanh Xuân - Hà Nội', '01688279743', 'dalv0911@gmail.com'),
(7, 'JP 2014 - N1', 'Lớp học tiếng nhật N1 cho những bạn ôn thi tháng 7 năm 2015', 1, '2014-12-16 15:07:26', 'death_note_avatar__l_by_lartovio-d513nsb_452823434.jpg', '258 Giải Phóng - Thanh Xuân - Hà Nội', '01688279743', 'dalv0911@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
`id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `page_id` int(10) DEFAULT NULL,
  `stt_id` int(10) DEFAULT NULL,
  `content` text NOT NULL,
  `time_on` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `page_id`, `stt_id`, `content`, `time_on`) VALUES
(8, 1, NULL, 10, ':''(', '2014-12-21 09:29:28'),
(12, 10, NULL, 10, 'alo alo', '2014-12-23 09:08:56'),
(13, 11, NULL, 10, 'こちらこそね。', '2014-12-25 00:26:18'),
(14, 13, NULL, 10, 'おはようございます', '2014-12-25 06:20:25'),
(16, 13, 25, NULL, 'おはようございます', '2014-12-25 06:40:03');

-- --------------------------------------------------------

--
-- Table structure for table `dapan`
--

CREATE TABLE IF NOT EXISTS `dapan` (
`id` int(10) NOT NULL,
  `question_id` int(10) NOT NULL,
  `stt` smallint(6) NOT NULL,
  `content` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dapan`
--

INSERT INTO `dapan` (`id`, `question_id`, `stt`, `content`) VALUES
(1, 1, 1, 'もの'),
(2, 1, 2, 'ところ'),
(3, 1, 3, 'こと'),
(4, 1, 4, 'わけ'),
(5, 2, 1, 'はずはない'),
(6, 2, 2, 'わけはない'),
(7, 2, 3, 'ほかはない'),
(8, 2, 4, 'ことはない'),
(9, 3, 1, 'にわたって'),
(10, 3, 2, 'において'),
(11, 3, 3, 'を問わず'),
(12, 3, 4, 'を通じて'),
(13, 4, 1, 'といっても'),
(14, 4, 2, 'どころか'),
(15, 4, 3, 'にかわって'),
(16, 4, 4, 'にあたって'),
(17, 5, 1, 'からすると'),
(18, 5, 2, 'からいうと'),
(19, 5, 3, 'からみると'),
(20, 5, 4, 'からして'),
(21, 6, 1, 'ごらんになった'),
(22, 6, 2, 'お会いになった'),
(23, 6, 3, 'お目にかかった'),
(24, 6, 4, 'おうかがいした'),
(25, 7, 1, 'くせに'),
(26, 7, 2, 'ところで'),
(27, 7, 3, 'おかげで'),
(28, 7, 4, 'ぐらいに'),
(29, 8, 1, '信じかねない'),
(30, 8, 2, '信じがたい'),
(31, 8, 3, '信じないではいられない'),
(32, 8, 4, '信じざるを得ない'),
(33, 9, 1, 'にしたがって'),
(34, 9, 2, 'のおいて'),
(35, 9, 3, 'にあたって'),
(36, 9, 4, 'にかけて'),
(37, 10, 1, '出た'),
(38, 10, 2, '出ている'),
(39, 10, 3, '出る'),
(40, 10, 4, '出て'),
(41, 11, 1, '自分の話す日本語が実際の場面で通じたこと'),
(42, 11, 2, 'お母さんにご飯をたくさん入れてもらえたこと'),
(43, 11, 3, '日本のホストファミリーの家族と食事をしたこと'),
(44, 11, 4, '日本留学で人生が変わるぐらいの影響を受けたこと'),
(45, 12, 1, '書いてあることを楽しむことができる能力'),
(46, 12, 2, '諦めず何度も読み直すことができる能力'),
(47, 12, 3, '知っていることを繰り返すことができる能力'),
(48, 12, 4, '知らない話題でも読んで理解できる能力'),
(49, 13, 1, '携帯電話のマナーモードと電源を切ることの違い'),
(50, 13, 2, '劇場では携帯電話の電源を切るというマナー'),
(51, 13, 3, '携帯電話の電源を切る場合の操作方法'),
(52, 13, 4, '劇場で携帯電話を切る理由'),
(53, 14, 1, '飼育人に教えてバナナをもらうため'),
(54, 14, 2, '飼育人に教えてバナナを食べさせるため'),
(55, 14, 3, '飼育人をだましてバナナをもらうため'),
(56, 14, 4, '飼育人をだましてバナナを食べさせないため'),
(57, 15, 1, '時代によって他人の期待は変化するものだから。'),
(58, 15, 2, '「いい子」や「立派な人」になるのは時間がかかるから。'),
(59, 15, 3, '場合や人によって期待することが変わるから。'),
(60, 15, 4, '他人が「いい子」や「立派な人」になることを常に期待するから。'),
(69, 18, 1, '自由旅行は楽しかったね。'),
(70, 18, 2, '家も車も持っていること。'),
(71, 18, 3, '車で自宅へ通っていること。'),
(72, 18, 4, '以前はなぜ若者ばかりだったのか。'),
(73, 19, 1, '住所が不定な状態ということ。'),
(74, 19, 2, '家も車も持っていること。'),
(75, 19, 3, '車で自宅へ通っていること。'),
(76, 19, 4, '自宅を出てから車に乗り換えること。'),
(77, 20, 1, 'キャベツが取れすぎたから、いくら安くてもいいから買ってほしい。'),
(78, 20, 2, '子供がキャベツをほしそうにしているので、たくさんあげよう。'),
(79, 20, 3, 'どうせトラクターで潰してしまうのだから、いくつでも持っていって食べてほしい。'),
(80, 20, 4, '市場ではキャベツが高いから、持って行って売るといい。'),
(81, 21, 1, '得意な料理を作っていました。'),
(82, 21, 2, '雨に降られて楽しくなかった。'),
(83, 21, 3, 'ガーデン・パーティーと分かって驚いた。'),
(84, 21, 4, 'ルームメートの陳さんに手伝ってもらった。'),
(85, 22, 1, '\r\n1'),
(86, 22, 2, '2'),
(87, 22, 3, '3'),
(88, 22, 4, '4'),
(89, 23, 1, '早く'),
(90, 23, 2, '開いていない'),
(91, 23, 3, 'まだ'),
(92, 23, 4, '行っても'),
(93, 24, 1, '少し'),
(94, 24, 2, 'から'),
(95, 24, 3, '待って'),
(96, 24, 4, 'いらっしゃいます'),
(97, 25, 1, 'だろう'),
(98, 25, 2, 'と思って'),
(99, 25, 3, '大丈夫'),
(100, 25, 4, '出かけたのだ'),
(101, 26, 1, '生まれた'),
(102, 26, 2, 'ライオンの'),
(103, 26, 3, 'ばかりの'),
(104, 26, 4, '赤ちゃんを'),
(105, 27, 1, '意味だった'),
(106, 27, 2, 'という'),
(107, 27, 3, 'と思う'),
(108, 27, 4, 'ような'),
(109, 28, 1, 'して'),
(110, 28, 2, 'なって'),
(111, 28, 3, 'うまれて'),
(112, 28, 4, 'かわって'),
(113, 29, 1, '学校が　遠いので　どの　子も　７キロ　歩かなければ　なりません。'),
(114, 29, 2, '村の　学校は　みんな　小さいので　クラスが　３しか　ありません。'),
(115, 29, 3, 'いろいろな　けいけんを　するので　子どもは　強く　なるそうです。'),
(116, 29, 4, '村の　生活は　きびしいので　楽しく　ありません。'),
(117, 30, 1, 'つつんで'),
(118, 30, 2, 'つづんで'),
(119, 30, 3, 'つうつんで'),
(120, 30, 4, 'つうづんで'),
(121, 31, 1, 'どおくい'),
(122, 31, 2, 'とおくい'),
(123, 31, 3, 'どくい'),
(124, 31, 4, 'とくい'),
(125, 32, 1, '盛情'),
(126, 32, 2, '威常'),
(127, 32, 3, '正情'),
(128, 32, 4, '正常'),
(129, 33, 1, 'カタログ'),
(130, 33, 2, 'オーダー'),
(131, 33, 3, 'レシート'),
(132, 33, 4, 'セール'),
(133, 34, 1, 'とれたら'),
(134, 34, 2, 'きまったら'),
(135, 34, 3, 'おわったら'),
(136, 34, 4, 'はじまったら');

-- --------------------------------------------------------

--
-- Table structure for table `dethi`
--

CREATE TABLE IF NOT EXISTS `dethi` (
`id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `socauhoi` int(3) DEFAULT NULL,
  `author_id` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dethi`
--

INSERT INTO `dethi` (`id`, `name`, `socauhoi`, `author_id`) VALUES
(1, 'LTN2P7 Đề 1 (文法形式の判断)', 10, 1),
(2, 'LTN2P10 Đề 1 (短文)', 5, 4),
(3, 'Đề 2 (短文)', 5, 10),
(4, 'Đề 1 (文の組み立て)', 5, 4),
(5, 'Đề 1 (中文)', 2, 4),
(6, '言語知識', 5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE IF NOT EXISTS `favorites` (
  `user_id` int(10) NOT NULL,
  `page_id` int(10) NOT NULL,
  `time_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`user_id`, `page_id`, `time_on`) VALUES
(13, 25, '2014-12-25 06:40:10'),
(13, 28, '2014-12-24 22:27:37');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
`id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `page_id` int(10) NOT NULL,
  `time_on` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `user_id`, `page_id`, `time_on`) VALUES
(28, 1, 20, '2014-12-22 21:58:30'),
(29, 1, 21, '2014-12-22 22:23:58'),
(30, 1, 24, '2014-12-22 22:43:41'),
(31, 1, 25, '2014-12-22 22:47:16'),
(32, 11, 25, '2014-12-23 08:38:21'),
(33, 4, 24, '2014-12-23 09:37:17'),
(34, 4, 25, '2014-12-24 00:13:13'),
(35, 4, 26, '2014-12-24 09:50:30'),
(36, 4, 27, '2014-12-24 09:50:53'),
(37, 4, 30, '2014-12-24 10:07:13'),
(38, 4, 33, '2014-12-24 10:48:04'),
(39, 4, 34, '2014-12-24 10:51:27'),
(40, 4, 35, '2014-12-24 10:51:34'),
(41, 4, 36, '2014-12-24 10:51:45'),
(42, 4, 38, '2014-12-24 11:08:13'),
(43, 4, 32, '2014-12-24 11:11:37'),
(44, 13, 28, '2014-12-24 22:27:07'),
(45, 13, 26, '2014-12-24 22:43:39'),
(46, 13, 25, '2014-12-25 06:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `join_class`
--

CREATE TABLE IF NOT EXISTS `join_class` (
  `user_id` int(10) NOT NULL,
  `class_id` int(10) NOT NULL,
  `chuc_vu` smallint(6) DEFAULT '2',
  `time_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `join_class`
--

INSERT INTO `join_class` (`user_id`, `class_id`, `chuc_vu`, `time_on`) VALUES
(4, 6, 2, '2014-12-23 09:29:55'),
(11, 6, 2, '2014-12-23 08:56:52'),
(12, 6, 2, '2014-12-23 08:58:42'),
(13, 6, 2, '2014-12-24 22:47:51');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE IF NOT EXISTS `level` (
  `level` smallint(6) NOT NULL,
  `vaitro` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`level`, `vaitro`) VALUES
(1, 'Member'),
(2, 'Học Viên'),
(3, 'Lớp Trưởng'),
(4, 'Giáo Viên'),
(5, 'Quản Trị Viên');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` smallint(6) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `position`, `url`) VALUES
(5, 'Lớp học', 1, 'lop-hoc'),
(6, 'Sơ cấp', 2, 'so-cap'),
(7, 'Trung Cấp', 3, 'trung-cap'),
(8, 'Thư viện', 4, 'thu-vien'),
(9, 'Ôn tập', 5, 'on-tap'),
(10, 'Luyện đề', 6, 'luyen-de');

-- --------------------------------------------------------

--
-- Table structure for table `notify`
--

CREATE TABLE IF NOT EXISTS `notify` (
`id` int(10) NOT NULL,
  `id_from` int(10) NOT NULL,
  `id_to` int(10) NOT NULL,
  `id_class` int(10) DEFAULT NULL,
  `type_id` smallint(6) NOT NULL,
  `time_on` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notify`
--

INSERT INTO `notify` (`id`, `id_from`, `id_to`, `id_class`, `type_id`, `time_on`) VALUES
(60, 10, 12, 6, 2, '2014-12-23 08:58:42'),
(62, 10, 13, 6, 2, '2014-12-24 22:47:51');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
`id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `des` text,
  `keyword` text NOT NULL,
  `image_icon` varchar(200) DEFAULT NULL,
  `image` text,
  `mp3` varchar(100) DEFAULT NULL,
  `time_on` datetime NOT NULL,
  `author_id` int(10) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `title`, `content`, `des`, `keyword`, `image_icon`, `image`, `mp3`, `time_on`, `author_id`, `url`) VALUES
(20, 'Từ Mới -  Bài 1 Giáo trình Minano Nihongo - みんなの日本語 ', 'Từ Mới -  Bài 1 Giáo trình Minano Nihongo - みんなの日本語 ', '<table>\r\n<tbody>\r\n<tr>\r\n<td class="hiragana"><strong>Hiragana</strong></td>\r\n<td class="kanji"><strong>Kanji</strong></td>\r\n<td class="vietnamese"><strong>Tiếng Việt</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">わたし</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">t&ocirc;i</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">わたしたち</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">ch&uacute;ng t&ocirc;i, ch&uacute;ng ta</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">あなた</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">anh/ chị/ &ocirc;ng/ b&agrave;, bạn ng&ocirc;i thứ 2 số &iacute;t)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">あのひと</td>\r\n<td class="kanji">&nbsp;あの人</td>\r\n<td class="vietnamese">người kia, người đ&oacute;</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">（あのかた）</td>\r\n<td class="kanji">&nbsp;（あの方）</td>\r\n<td class="vietnamese">(「あのかた」l&agrave; c&aacute;ch n&oacute;i lịch sự của「あのひと」, vị kia)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">みなさん</td>\r\n<td class="kanji">&nbsp;皆さん</td>\r\n<td class="vietnamese">c&aacute;c anh chị, c&aacute;c &ocirc;ng b&agrave;, c&aacute;c bạn, qu&yacute; vị</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">～さん</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">anh, chị, &ocirc;ng, b&agrave; (c&aacute;ch gọi người kh&aacute;c một c&aacute;ch lịch sự bằng c&aacute;ch th&ecirc;m từ n&agrave;y v&agrave;o sau t&ecirc;n của người đ&oacute;)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">～ちゃん</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">(hậu tố th&ecirc;m v&agrave;o sau t&ecirc;n của trẻ em thay cho「～さん」)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">～くん</td>\r\n<td class="kanji">&nbsp;～君</td>\r\n<td class="vietnamese">(hậu tố th&ecirc;m v&agrave;o sau t&ecirc;n của em trai)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">～じん</td>\r\n<td class="kanji">&nbsp;～人</td>\r\n<td class="vietnamese">(hậu tố mang nghĩa &ldquo;người (nước)~&rdquo;; v&iacute; dụ 「アメリカじん」: Người Mỹ)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">せんせい</td>\r\n<td class="kanji">&nbsp;先生</td>\r\n<td class="vietnamese">thầy/ cố (kh&ocirc;ng d&ugrave;ng khi n&oacute;i về nghề nghiệp gi&aacute;o vi&ecirc;n của m&igrave;nh)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">きょうし</td>\r\n<td class="kanji">&nbsp;教師</td>\r\n<td class="vietnamese">gi&aacute;o vi&ecirc;n</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">がくせい</td>\r\n<td class="kanji">&nbsp;学生</td>\r\n<td class="vietnamese">học sinh, sinh vi&ecirc;n</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">かいしゃいん</td>\r\n<td class="kanji">&nbsp;会社員</td>\r\n<td class="vietnamese">nh&acirc;n vi&ecirc;n c&ocirc;ng ty</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">しゃいん</td>\r\n<td class="kanji">&nbsp;社員</td>\r\n<td class="vietnamese">Nh&acirc;n vi&ecirc;n c&ocirc;ng ty ~ (d&ugrave;ng k&egrave;m theo t&ecirc;n c&ocirc;ng ty; v&iacute; dụ「ＩＭＣ のしゃいん」)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">ぎんこういん</td>\r\n<td class="kanji">&nbsp;銀行員</td>\r\n<td class="vietnamese">Nh&acirc;n vi&ecirc;n ng&acirc;n h&agrave;ng</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">いしゃ</td>\r\n<td class="kanji">&nbsp;医者</td>\r\n<td class="vietnamese">B&aacute;c Sĩ</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">けんきゅうしゃ</td>\r\n<td class="kanji">&nbsp;研究者</td>\r\n<td class="vietnamese">nh&agrave; nghi&ecirc;n cứu</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">エンジニア</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">kỹ sư</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">だいがく</td>\r\n<td class="kanji">&nbsp;大学</td>\r\n<td class="vietnamese">đại học, trường đại học</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">びょういん</td>\r\n<td class="kanji">&nbsp;病院</td>\r\n<td class="vietnamese">bệnh viện</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">でんき</td>\r\n<td class="kanji">&nbsp;電気</td>\r\n<td class="vietnamese">điện, đ&egrave;n điện</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">だれ（どなた）</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">ai (「どなた」l&agrave; c&aacute;ch n&oacute;i lịch sự của「だれ」, vị n&agrave;o)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">―さい</td>\r\n<td class="kanji">&nbsp;－歳</td>\r\n<td class="vietnamese">― tuổi</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">なんさい （おいくつ）</td>\r\n<td class="kanji">&nbsp;何歳</td>\r\n<td class="vietnamese">mấy tuổi, bao nhi&ecirc;u tuổi (「お いくつ」l&agrave; c&aacute;ch n&oacute;i lịch sự của 「なんさい」)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">はい</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">v&acirc;ng, dạ</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">いいえ</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">kh&ocirc;ng</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">しつれいですが</td>\r\n<td class="kanji">&nbsp;失礼ですが</td>\r\n<td class="vietnamese">xin lỗi,&hellip;</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">おなまえは？</td>\r\n<td class="kanji">&nbsp;お名前は？</td>\r\n<td class="vietnamese">T&ecirc;n anh/chị l&agrave; g&igrave;?</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">はじめまして。</td>\r\n<td class="kanji">&nbsp;初めまして。</td>\r\n<td class="vietnamese">Rất h&acirc;n hạnh được gặp anh/chị (đ&acirc;y l&agrave; lời ch&agrave;o với người lần đầu ti&ecirc;n gặp, l&agrave; c&acirc;u n&oacute;i đầu ti&ecirc;n trước khi giới thiệu về m&igrave;nh.)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">どうぞよろしく[おねがいします]。</td>\r\n<td class="kanji">&nbsp;どうぞよろしく[お願いします]。</td>\r\n<td class="vietnamese">Rất mong được sự gi&uacute;p đỡ của anh/chị, rất vui được l&agrave;m quen với anh/chị (D&ugrave;ng l&agrave;m c&acirc;u kết th&uacute;c sau khi giới thiệu về m&igrave;nh.)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">こちらは～さんです。</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">Đ&acirc;y l&agrave; anh/chị/&ocirc;ng/b&agrave; ~.</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">～からきました。</td>\r\n<td class="kanji">&nbsp;～から来ました。</td>\r\n<td class="vietnamese">(t&ocirc;i) đến từ ~.</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">アメリカ</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">Mỹ</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">イギリス</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">Anh</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">インド</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">Ấn Độ</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">インドネシア</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">Indonesia</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">かんこく</td>\r\n<td class="kanji">&nbsp;韓国</td>\r\n<td class="vietnamese">H&agrave;n Quốc</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">タイ</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">Th&aacute;i Lan</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">ちゅうご</td>\r\n<td class="kanji">&nbsp;中国</td>\r\n<td class="vietnamese">Trung Quốc</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">ドイツ</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">Đức</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">にほん</td>\r\n<td class="kanji">&nbsp;日本</td>\r\n<td class="vietnamese">Nhật Bản</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">フランス</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">Ph&aacute;p</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">ブラジル</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">Braxin</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Bài 1 từ mới chào hỏi trong tiếng nhật , ở bài này chúng ta sẽ được học về các từ mới liên quan đến chào hỏi trong tiêng nhật .', 'Bài 1 từ mới chào hỏi trong tiếng nhật , ở bài này chúng ta sẽ được học về các từ mới liên quan đến chào hỏi trong tiêng nhật .', 'bai1_86536912.jpg', NULL, NULL, '2014-12-22 22:20:34', 1, 'tu-moi----bai-1-giao-trinh-minano-nihongo---みんなの日本語-'),
(21, 'Ngữ Pháp -  Bài 2 Giáo trình Minano Nihongo - みんなの日本語 ', 'Ngữ Pháp -  Bài 2 Giáo trình Minano Nihongo - みんなの日本語 ', '<p><strong>1</strong> _____は_____です。</p>\r\n<p>* Với mẫu c&acirc;u n&agrave;y ta d&ugrave;ng trợ từ&nbsp;は&nbsp;(đọc l&agrave;&nbsp;, chứ kh&ocirc;ng phải l&agrave;&nbsp;)</p>\r\n<p>* C&aacute;ch d&ugrave;ng: D&ugrave;ng để n&oacute;i t&ecirc;n, nghề nghiệp, quốc tịch ( tương tự như động từ TO BE của tiếng Anh.)</p>\r\n<p>* Đ&acirc;y l&agrave; mẫu c&acirc;u khẳng định.</p>\r\n<p>V&iacute; dụ:</p>\r\n<p>わたし　は　マイク　ミラー　です。&nbsp;( t&ocirc;i l&agrave; Michael Miler)</p>\r\n<p>&nbsp;</p>\r\n<p><strong>２</strong>．_____は_____じゃ/ではありません。</p>\r\n<p>* Mẫu c&acirc;u vẫn d&ugrave;ng trợ từ&nbsp;は&nbsp;nhưng với &yacute; nghĩa phủ định. Ở mẫu c&acirc;u n&agrave;y ta c&oacute; thể d&ugrave;ng　じゃ</p>\r\n<p>hoặc　では&nbsp;đi trước　ありません&nbsp;đều được.</p>\r\n<p>* C&aacute;ch d&ugrave;ng tương tự như cấu tr&uacute;c khẳng định.</p>\r\n<p>V&iacute; dụ:</p>\r\n<p>サントスさん　は　がくせい　じゃ&nbsp;(では)&nbsp;ありません。</p>\r\n<p>( anh Santose kh&ocirc;ng phải l&agrave; sinh vi&ecirc;n.)</p>\r\n<p>&nbsp;</p>\r\n<p><strong>３</strong>．_____は_____ですか。</p>\r\n<p>* Đ&acirc;y l&agrave; dạng c&acirc;u hỏi với trợ từ　は&nbsp;v&agrave; trợ từ nghi vấn　か&nbsp;ở cuối c&acirc;u.</p>\r\n<p>* C&aacute;ch d&ugrave;ng: C&acirc;u hỏi dạng n&agrave;y được dịch l&agrave;&nbsp;&ldquo;&nbsp;_______ c&oacute; phải kh&ocirc;ng?&rdquo;&nbsp;( giống với To BE của tiếng Anh)</p>\r\n<p>V&iacute; dụ:</p>\r\n<p>ミラーさん　は　かいしゃいん　ですか。</p>\r\n<p>( anh Miler c&oacute; phải l&agrave; nh&acirc;n vi&ecirc;n c&ocirc;ng ty kh&ocirc;ng?)</p>\r\n<p>&nbsp;</p>\r\n<p><strong>４</strong>．&nbsp;_____も_____です（か）。</p>\r\n<p>* Đ&acirc;y l&agrave; mẫu c&acirc;u d&ugrave;ng trợ từ&nbsp;も&nbsp;với y nghĩa l&agrave;&nbsp;&ldquo;cũng l&agrave;&rdquo;.</p>\r\n<p>* Đ&acirc;y l&agrave; trợ trừ c&oacute; thể d&ugrave;ng để hỏi v&agrave; trả lời. Khi d&ugrave;ng để hỏi th&igrave; người trả lời bắt buộc phải d&ugrave;ng　はい&nbsp;để x&aacute;c nhận hoặc　いいえ　để phủ định c&acirc;u hỏi. Nếu x&aacute;c nhận y kiến th&igrave; d&ugrave;ng trợ từ　も, chọn phủ định th&igrave; phải d&ugrave;ng trợ từ&nbsp;　は.</p>\r\n<p>* C&aacute;ch d&ugrave;ng: thay thế vị tr&iacute; của trợ từ　は&nbsp;v&agrave; mang nghĩa&nbsp;&ldquo;cũng l&agrave;&rdquo;</p>\r\n<p>V&iacute; dụ:</p>\r\n<p>A:&nbsp;わたしはベトナムじんです。あなたも&nbsp;(&nbsp;ベトナムじんですか&nbsp;)</p>\r\n<p>(T&ocirc;i l&agrave; người Việt Nam, bạn cũng l&agrave; người Việt Nam phải kh&ocirc;ng ?)</p>\r\n<p>B:&nbsp;はい、わたしもベトナムじんです。わたしはだいがくせいです、あなたも？</p>\r\n<p>(V&acirc;ng, t&ocirc;i cũng l&agrave; người Việt Nam. T&ocirc;i l&agrave; sinh vi&ecirc;n đại học, c&ograve;n anh cũng vậy phải kh&ocirc;ng)</p>\r\n<p>A:&nbsp;いいえ、わたしはだいがくせいじゃありません。（わたしは）かいしゃいんです</p>\r\n<p>(Kh&ocirc;ng, t&ocirc;i kh&ocirc;ng phải l&agrave; sinh vi&ecirc;n đại học, t&ocirc;i l&agrave; nhan vi&ecirc;n c&ocirc;ng ty.)</p>\r\n<p>Ch&uacute; &yacute;: Đối với c&aacute;c c&acirc;u c&oacute; qu&aacute; nhiều chủ ngữ&nbsp;&ldquo;わたしは&rdquo;&nbsp;ta c&oacute; thể lược bỏ bớt cho c&acirc;u văn ngắn gọn.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>５</strong>．&nbsp;_____&nbsp;は___～の</p>\r\n<p>* Đ&acirc;y l&agrave; cấu tr&uacute;c d&ugrave;ng trợ từ　の&nbsp;để chỉ sự sở hữu.</p>\r\n<p>* C&oacute; khi mang nghĩa l&agrave;&nbsp;&ldquo;của&rdquo;&nbsp;nhưng c&oacute; khi kh&ocirc;ng mang nghĩa để c&acirc;u văn hay hơn.</p>\r\n<p>V&iacute; dụ:</p>\r\n<p>IMC　のしゃいん.</p>\r\n<p>(Nh&acirc;n vi&ecirc;n của c&ocirc;ng ty IMC)</p>\r\n<p>　日本語　　の　ほん</p>\r\n<p>(S&aacute;ch tiếng Nhật)</p>\r\n<p>&nbsp;</p>\r\n<p><strong>６</strong>．_____は　なんさい　（おいくつ）　ですか。</p>\r\n<p>_____は～さい　です。</p>\r\n<p>* Đ&acirc;y l&agrave; mẫu c&acirc;u hỏi với từ để hỏi ( nghi vấn từ)　なんさい　（おいくつ）&nbsp;d&ugrave;ng để hỏi tuổi.</p>\r\n<p>なんさい&nbsp;D&ugrave;ng để hỏi trẻ nhỏ ( dưới 10 tuổi).</p>\r\n<p>おいくつ&nbsp;D&ugrave;ng để hỏi 1 c&aacute;ch lịch sự.</p>\r\n<p>Vd:</p>\r\n<p>たろくんはなんさいですか</p>\r\n<p>(B&eacute; Taro mấy tuổi vậy ?)</p>\r\n<p>たろくんはきゅうさいです</p>\r\n<p>(B&eacute; Taro 9 tuổi)</p>\r\n<p>やまださんはおいくつですか</p>\r\n<p>(Anh Yamada bao nhi&ecirc;u tuổi vậy?)</p>\r\n<p>やまださんはよんじゅうごさいです</p>\r\n<p>(Anh Yamada 45 tuổi)</p>\r\n<p><strong>７</strong>．a. _____は　～さん（さま）ですか。<br />b. _____は&nbsp;だれ（どなた）ですか。<br />* Mẫu c&acirc;u (a.) d&ugrave;ng để x&aacute;c định lại t&ecirc;n một người.<br />* Mẫu c&acirc;u (b.) d&ugrave;ng để hỏi t&ecirc;n một người với nghi vấn từ　だれ　（どなた）<br />* Mẫu c&acirc;u (b.) d&ugrave;ng từ th&ocirc;ng dụng l&agrave;　だれ, khi muốn n&oacute;i 1 c&aacute;ch lịch sự th&igrave; d&ugrave;ng　どなた.<br />Ví dụ:<br />a. あの　ひと（かた）　は　きむらさんですか。<br />(Người kia (vị kia) l&agrave; anh (&ocirc;ng) Kimura phải kh&ocirc;ng?)<br />b. あのひとはだれですか。<br />(Người kia l&agrave; ai vậy ?)<br />あのかたはどなたですか<br />(Vị kia l&agrave; vị n&agrave;o vậy?)<br />* C&aacute;c điểm ch&uacute; y th&ecirc;m:<br />Khi giới thiệu t&ecirc;n m&igrave;nh kh&ocirc;ng bao giờ được n&oacute;i th&ecirc;m chữ さんhoặc さま( c&oacute; nghĩa l&agrave; ng&agrave;i, gọi một c&aacute;ch t&ocirc;n k&iacute;nh) v&igrave; trong tiếng Nhật c&oacute; sự tế nhị l&agrave; người Nhật lu&ocirc;n tự hạ m&igrave;nh trước người<br />kh&aacute;c. Khi giới thiệu t&ecirc;n người kh&aacute;c th&igrave; phải th&ecirc;m chữ さんhoặc さま( khi giới thiệu người lớn tuổi, c&oacute; địa vị xã hội cao)</p>\r\n<p><br /><strong>８</strong>．__A___&nbsp;は　なに　じん　ですか。<br />__A___&nbsp;は_____　じん　です。<br />* Đ&acirc;y l&agrave; mẫu c&acirc;u d&ugrave;ng để hỏi Quốc tịch của một người.<br />* Nghĩa l&agrave; ( ___A__ l&agrave; người nước n&agrave;o?)<br />Ví dụ:<br />A さん　はなにじん　ですか。　　<br />( A l&agrave; người nước n&agrave;o?)<br />A さん　は　ベトナムじん　です。　<br />( A l&agrave; người Việt Nam)</p>\r\n<p><br /><strong>９</strong>．___A__&nbsp;は&nbsp;___1__ですか、___2__ですか。<br />___A__は&nbsp;__1(2)___です。<br />* Đ&acirc;y l&agrave; dạng c&acirc;u hỏi chọn lựa trong hai hay nhiều sự vật, sự việc kh&aacute;c nhau.<br />* Nghĩa l&agrave; &ldquo; ___A__ l&agrave; _____ hay l&agrave; _____?&rdquo;<br />Ví dụ:<br />A さん　は　エンジニア　ですか、いしゃ　ですか<br />( A l&agrave; kĩ sư hay l&agrave; b&aacute;c sĩ ?)<br />A さん　は　いしゃ　です。<br />( A l&agrave; b&aacute;c sĩ)</p>\r\n<p><br /><strong>１０</strong>.___A__は　なんの～&nbsp;_____ですか。<br />A&nbsp;は　～の～　です。<br />* Đ&acirc;y l&agrave; c&acirc;u hỏi về bản chất của một sự vật, sự việc.<br />* Nghiã l&agrave;: &ldquo;A l&agrave; _____ g&igrave;?&rdquo;<br />Ví dụ:<br />このほん　は　なんのほん　ですか。<br />( cuốn s&aacute;ch n&agrave;y l&agrave; s&aacute;ch g&igrave;?)<br />このほん　は　にほんごのほん　です。<br />( cuốn s&aacute;ch n&agrave;y l&agrave; s&aacute;ch tiếng Nhật)</p>\r\n<p><br /><strong>１１</strong>．___A__&nbsp;は　なん　ですか。<br />A　は　～　です。<br />* Đ&acirc;y l&agrave; c&acirc;u hỏi với từ để hỏi.<br />* Nghĩa: &ldquo; A l&agrave; C&aacute;i g&igrave;?&rdquo;<br />Ví dụ:<br />これ　は　なん　ですか。<br />(đ&acirc;y l&agrave; c&aacute;i g&igrave;?)<br />これ　は　ノート　です。<br />(đ&acirc;y l&agrave; cuốn tập)</p>\r\n<p><br /><strong>１２</strong>．おなまえ　は？　<br />あなたのなまえ　は　なんですか。<br />わたし　は　A　です。<br />* Đ&acirc;y l&agrave; c&acirc;u hỏi d&ugrave;ng để hỏi t&ecirc;n.<br />* Nghĩa: &ldquo; T&ecirc;n của bạn l&agrave; g&igrave;?&rdquo;<br />しつれいですが、おなまえは？(Đ&acirc;y l&agrave; c&acirc;u hỏi lịch sự.)<br />Ví dụ:<br />しつれいですが、おなまえ　は？<br />( T&ecirc;n bạn l&agrave; g&igrave;?)<br />わたし　は　A　です。<br />(T&ecirc;n t&ocirc;i l&agrave; A)</p>\r\n<p><br /><strong>１３</strong>．いなか　は　どこ　ですか。<br />わたしのいなか　は　～　です。<br />- Đ&acirc;y l&agrave; c&acirc;u hỏi d&ugrave;ng để hỏi qu&ecirc; hương của ai đ&oacute;. D&ugrave;ng nghi vấn từ để hỏi nơi chốn.<br />- Nghĩa: &ldquo; Qu&ecirc; của bạn ở đ&acirc;u?&rdquo;<br />Ví dụ:<br />いなか　は　どこ　ですか。<br />( qu&ecirc; của bạn ở đ&acirc;u?)<br />わたしのいなか　は　ダラット　です。<br />( qu&ecirc; t&ocirc;i ở Đà Lạt)</p>', '1 _____は_____です。\r\n\r\n* Với mẫu câu này ta dùng trợ từ は (đọc là , chứ không phải là )\r\n\r\n* Cách dùng: Dùng để nói tên, nghề nghiệp, quốc tịch ( tương tự như động từ TO BE của tiếng Anh.)', '1 _____は_____です。\r\n\r\n* Với mẫu câu này ta dùng trợ từ は (đọc là , chứ không phải là )\r\n\r\n* Cách dùng: Dùng để nói tên, nghề nghiệp, quốc tịch ( tương tự như động từ TO BE của tiếng Anh.)', 'bai1 (1)_1003070820.jpg', NULL, NULL, '2014-12-22 22:23:54', 1, 'ngu-phap----bai-2-giao-trinh-minano-nihongo---みんなの日本語-'),
(22, 'Từ Mới -  Bài 2 Giáo trình Minano Nihongo - みんなの日本語 ', 'Từ Mới -  Bài 2 Giáo trình Minano Nihongo - みんなの日本語 ', '<table style="height: 608px;" width="733">\r\n<tbody>\r\n<tr>\r\n<td class="hiragana"><strong>Hiragana</strong></td>\r\n<td class="kanji"><strong>Kanji</strong></td>\r\n<td class="vietnamese"><strong>Tiếng Việt</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">これ</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">c&aacute;i n&agrave;y, đ&acirc;y (vật ở gần người n&oacute;i)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">それ</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">c&aacute;i đ&oacute;, đ&oacute; (vật ở gần người nghe)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">あれ</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">c&aacute;i kia, kia (vật ở xa cả người n&oacute;i v&agrave; người nghe)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">この～</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">~ n&agrave;y</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">その～</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">~ đ&oacute;</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">あの～</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">~ kia</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">ほん</td>\r\n<td class="kanji">&nbsp;本</td>\r\n<td class="vietnamese">s&aacute;ch</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">じしょ</td>\r\n<td class="kanji">&nbsp;辞書</td>\r\n<td class="vietnamese">từ điển</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">ざっし</td>\r\n<td class="kanji">&nbsp;雑誌</td>\r\n<td class="vietnamese">tạp ch&iacute;</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">しんぶん</td>\r\n<td class="kanji">&nbsp;新聞</td>\r\n<td class="vietnamese">b&aacute;o</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">ノート</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">vở</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">てちょう</td>\r\n<td class="kanji">&nbsp;手帳</td>\r\n<td class="vietnamese">sổ tay</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">めいし</td>\r\n<td class="kanji">&nbsp;名刺</td>\r\n<td class="vietnamese">danh thiếp</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">カード</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">thẻ, cạc</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">テレホンカード</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">thẻ điện thoại</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">えんぴつ</td>\r\n<td class="kanji">&nbsp;鉛筆</td>\r\n<td class="vietnamese">b&uacute;t ch&igrave;</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">ボールペン</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">b&uacute;t bi</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">シャープペンシル</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">b&uacute;t ch&igrave; kim, b&uacute;t ch&igrave; bấm</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">かぎ</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">ch&igrave;a kh&oacute;a</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">とけい</td>\r\n<td class="kanji">&nbsp;時計</td>\r\n<td class="vietnamese">đồng hồ</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">かさ</td>\r\n<td class="kanji">&nbsp;傘</td>\r\n<td class="vietnamese">&ocirc;, d&ugrave;</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">かばん</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">cặp s&aacute;ch, t&uacute;i s&aacute;ch</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">[カセット]テープ</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">băng [c&aacute;t-x&eacute;t]</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">テープレコーダー</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">m&aacute;y ghi &acirc;m</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">テレビ</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">tivi</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">ラジオ</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">Radio</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">カメラ</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">m&aacute;y ảnh</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">コンピューター</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">m&aacute;y vi t&iacute;nh</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">じどうしゃ</td>\r\n<td class="kanji">&nbsp;自動車</td>\r\n<td class="vietnamese">&ocirc; t&ocirc;, xe hơi</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'Cách dùng: Đây là mẫu câu dùng để hỏi về thể loại hay thuộc tính của một sự vật, hiện tượng. Ta cũng có thể dùng để hỏi với ý nghĩa là sở hữu khi thay đổi từ để hỏi [nan] bằng từ để hỏi [dare] mà sau này chúng ta sẽ học tới! – Ví dụ: (đây là sách gì?) + (đây là sách tiếng Nhật)', 'Cách dùng: Đây là mẫu câu dùng để hỏi về thể loại hay thuộc tính của một sự vật, hiện tượng. Ta cũng có thể dùng để hỏi với ý nghĩa là sở hữu khi thay đổi từ để hỏi [nan] bằng từ để hỏi [dare] mà sau này chúng ta sẽ học tới! – Ví dụ: (đây là sách gì?) + (đây là sách tiếng Nhật)', 'bai2_1047608714.jpg', NULL, NULL, '2014-12-22 22:27:38', 1, 'tu-moi----bai-2-giao-trinh-minano-nihongo---みんなの日本語-'),
(23, 'Ngữ Pháp-  Bài 2 Giáo trình Minano Nihongo - みんなの日本語 ', 'Ngữ Pháp-  Bài 2 Giáo trình Minano Nihongo - みんなの日本語 ', '<p>１._____は　なんの～　ですか。</p>\r\n<p>- &Yacute; nghĩa: _____ l&agrave; c&aacute;i g&igrave;?</p>\r\n<p>- C&aacute;ch d&ugrave;ng: Đ&acirc;y l&agrave; mẫu c&acirc;u d&ugrave;ng để hỏi về thể loại hay thuộc t&iacute;nh của một sự vật, hiện tượng. Ta cũng c&oacute; thể d&ugrave;ng để hỏi với &yacute; nghĩa l&agrave; sở hữu khi thay đổi từ để hỏi [nan] bằng từ để hỏi [dare] m&agrave; sau n&agrave;y ch&uacute;ng ta sẽ học tới! &ndash; V&iacute; dụ: (đ&acirc;y l&agrave; s&aacute;ch g&igrave;?) + (đ&acirc;y l&agrave; s&aacute;ch tiếng Nhật)</p>\r\n<p>２._____は　なんようび　ですか。</p>\r\n<p>- &Yacute; nghĩa: _____ l&agrave; thứ mấy?<br />- C&aacute;ch d&ugrave;ng: D&ugrave;ng để hỏi thứ, c&oacute; thể l&agrave; ng&agrave;y h&ocirc;m nay hoặc l&agrave; một sự kiện sự việc g&igrave; đ&oacute;.<br />- V&iacute; dụ:<br />a. H&ocirc;m nay l&agrave; thứ mấy? +H&ocirc;m nay l&agrave; thứ ba<br />b. NOEL l&agrave; thứ mấy? + NOEL ng&agrave;y thứ Tư.</p>\r\n<p>３._____は　なんにち　ですか。</p>\r\n<p>- &Yacute; nghĩa: _____ l&agrave; ng&agrave;y mấy?<br />- C&aacute;ch d&ugrave;ng: D&ugrave;ng để hỏi ng&agrave;y v&agrave; c&oacute; thể l&agrave; ng&agrave;y h&ocirc;m nay hoặc l&agrave; ng&agrave;y của 1 sự kiện g&igrave; đ&oacute;.<br />- V&iacute; dụ: Sinh nhật ng&agrave;y mấy? + Tanjoubi wa 17(jyu nana) nichi desu. Sinh nhật ng&agrave;y 17.</p>\r\n<p>４．これ /それ/あれ　は　なん　ですか。</p>\r\n<p>- &Yacute; nghĩa: C&aacute;i n&agrave;y/c&aacute;i đ&oacute;/ c&aacute;i kia l&agrave; c&aacute;i g&igrave;?<br />- C&aacute;ch d&ugrave;ng:<br />a. Với [kore] th&igrave; d&ugrave;ng để hỏi vật ở gần m&igrave;nh, khi trả lời phải d&ugrave;ng [sore] v&igrave; khi đ&oacute; vật ở xa người trả lời<br />b. Với [sore] d&ugrave;ng để hỏi vật ở gần người n&oacute;i chuyện với m&igrave;nh, khi trả lời phải d&ugrave;ng [sore]<br />c. Với [are] d&ugrave;ng để hỏi vật kh&ocirc;ng ở gần ai cả n&ecirc;n trả lời vẫn l&agrave; [are]<br />- V&iacute; dụ: Đ&acirc;y l&agrave; s&aacute;ch g&igrave;? Đ&oacute; l&agrave; s&aacute;ch Kanji</p>\r\n<p>５．　この～　その～　は　なんの～　ですか。あの～</p>\r\n<p>- &Yacute; nghĩa: ~n&agrave;y/~đ&oacute;/~kia l&agrave; ~ g&igrave;?<br />- C&aacute;ch d&ugrave;ng&nbsp;tương&nbsp;tự mẫu c&acirc;u số 4 nhưng c&oacute; &iacute; nhấn mạnh hơn!<br />- V&iacute; dụ: cuốn tạp ch&iacute; đ&oacute; l&agrave; tạp ch&iacute; g&igrave;? cuốn tạp ch&iacute; n&agrave;y l&agrave; tạp ch&iacute; về Vi t&iacute;nh.</p>', 'Cách dùng: Đây là mẫu câu dùng để hỏi về thể loại hay thuộc tính của một sự vật, hiện tượng. Ta cũng có thể dùng để hỏi với ý nghĩa là sở hữu khi thay đổi từ để hỏi [nan] bằng từ để hỏi [dare] mà sau này chúng ta sẽ học tới! – Ví dụ: (đây là sách gì?) + (đây là sách tiếng Nhật)', 'Cách dùng: Đây là mẫu câu dùng để hỏi về thể loại hay thuộc tính của một sự vật, hiện tượng. Ta cũng có thể dùng để hỏi với ý nghĩa là sở hữu khi thay đổi từ để hỏi [nan] bằng từ để hỏi [dare] mà sau này chúng ta sẽ học tới! – Ví dụ: (đây là sách gì?) + (đây là sách tiếng Nhật)', 'bai21_835763255.jpg', NULL, NULL, '2014-12-22 22:29:06', 1, 'ngu-phap---bai-2-giao-trinh-minano-nihongo---みんなの日本語-'),
(24, '[Vietsub] Haruka (Ost Daisuki) - Melody', '[Vietsub] Haruka (Ost Daisuki) - Melody', '<p><iframe style="display: block; margin-left: auto; margin-right: auto;" src="//www.youtube.com/embed/n8LuYCex_hw" width="640" height="360" frameborder="0" allowfullscreen="allowfullscreen"></iframe></p>', 'Ending song of Jdrama "Daisuki ~ I Love You" which is known as " I am Sam" of Japan with starring Karina,Hiraoka Yuta,Fukuda Saki', 'Ending song of Jdrama "Daisuki ~ I Love You" which is known as " I am Sam" of Japan with starring Karina,Hiraoka Yuta,Fukuda Saki', 'haruka_371751558.jpg', NULL, NULL, '2014-12-22 22:44:00', 1, '[vietsub]-haruka-(ost-daisuki)---melody'),
(25, '宇多田ヒカル - Prisoner Of Love', '宇多田ヒカル - Prisoner Of Love', '<p><iframe style="display: block; margin-left: auto; margin-right: auto;" src="//www.youtube.com/embed/W6QjKT1A2pI" width="640" height="360" frameborder="0" allowfullscreen="allowfullscreen"></iframe></p>', 'Prisoner Of Love（宇多田ヒカル）の歌詞。平気な顔で嘘をついて 笑って 嫌気がさして 楽ばかりしようとしていた ないものねだりブルース 皆安らぎを求めている 満ち足りてる', 'Prisoner Of Love（宇多田ヒカル）の歌詞。平気な顔で嘘をついて 笑って 嫌気がさして 楽ばかりしようとしていた ないものねだりブルース 皆安らぎを求めている 満ち足りてる', 'okok_923505057.jpg', NULL, NULL, '2014-12-22 22:48:03', 1, '宇多田ヒカル---prisoner-of-love'),
(26, 'TRỢ TỪ TRONG TIẾNG NHẬT , PHẦN 1: WA VÀ GA', 'TRỢ TỪ TRONG TIẾNG NHẬT , PHẦN 1: WA VÀ GA', '<div>Ch&agrave;o c&aacute;c bạn, h&ocirc;m nay t&ocirc;i sẽ n&oacute;i về&nbsp;<strong>trợ từ trong tiếng Nhật.</strong>&nbsp;Thứ l&agrave;m bạn thấy kh&oacute; hiểu nhất c&oacute; lẽ l&agrave;&nbsp;<strong>"wa" v&agrave; "ga"</strong>. Thực ra t&ocirc;i đ&atilde; học ở trong trường ngoại ngữ nhưng kh&ocirc;ng thấy gi&aacute;o vi&ecirc;n n&agrave;o giải th&iacute;ch được r&otilde; r&agrave;ng sự kh&aacute;c nhau. Họ thường chỉ giải th&iacute;ch l&agrave; "wa" l&agrave; nhấn mạnh chủ ngữ, c&ograve;n "ga" l&agrave; nhấn mạnh vị ngữ. T&ocirc;i thấy&nbsp;<strong>kh&ocirc;ng hẳn như vậy</strong>, m&agrave; "wa" v&agrave; "ga" c&oacute; chức năng ngữ ph&aacute;p kh&aacute;c nhau. Dưới đ&acirc;y, t&ocirc;i sẽ giải th&iacute;ch thật đơn giản, r&otilde; r&agrave;ng cho c&aacute;c bạn về "wa" v&agrave; "ga".</div>\r\n<div>&nbsp;</div>\r\n<div><strong>は v&agrave; が： Khi n&agrave;o d&ugrave;ng "wa", khi n&agrave;o d&ugrave;ng "ga"?</strong></div>\r\n<div>Bạn thấy&nbsp;<strong>c&oacute; vẻ</strong>&nbsp;như l&agrave; "wa" v&agrave; "ga" c&oacute; thể d&ugrave;ng thay thế cho nhau m&agrave; &yacute; nghĩa kh&ocirc;ng thay đổi v&agrave; người nghe vẫn hiểu được. Quả thật l&agrave; người nghe sẽ hiểu, bởi v&igrave; thực ra nếu bạn lược bỏ bớt trợ từ th&igrave; dựa v&agrave;o nội dung người nghe vẫn ph&aacute;n đo&aacute;n được nội dung nhưng bạn sẽ SAI. V&iacute; dụ, bạn biết hai c&acirc;u sau kh&aacute;c nhau như thế n&agrave;o kh&ocirc;ng?</div>\r\n<div>&nbsp;</div>\r\n<div><strong>(1) 私</strong><strong>はりんごを食べました。</strong></div>\r\n<div><strong>(2) 私</strong><strong>がりんごを食べました。</strong></div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<p>Hai c&acirc;u tr&ecirc;n c&oacute; vẻ như c&oacute; c&ugrave;ng &yacute; nghĩa, nhưng thực ra kh&ocirc;ng phải. C&acirc;u (1) l&agrave; c&acirc;u đ&uacute;ng, n&oacute; l&agrave; một<strong>C&Acirc;U KỂ</strong>. C&ograve;n c&acirc;u (2) nếu đứng đơn độc th&igrave; l&agrave; một c&acirc;u SAI, c&acirc;u (2)&nbsp;<strong>CHỈ C&Oacute; THỂ L&Agrave; C&Acirc;U TRẢ LỜI</strong>cho một c&acirc;u hỏi về chủ thể.<br />&nbsp;</p>\r\n<div>&nbsp;</div>\r\n<div><strong>"wa" d&ugrave;ng cho&nbsp;C&Acirc;U KỂ</strong></div>\r\n<div>&nbsp;</div>\r\n<div><strong>[Chủ thể]&nbsp;wa&nbsp;[t&iacute;nh chất]/[h&agrave;nh động]</strong></div>\r\n<div>V&iacute; dụ:</div>\r\n<div><strong>彼女は素敵ですね。</strong></div>\r\n<div><strong>C&ocirc; ấy thật tuyệt nhỉ.</strong></div>\r\n<div><strong>イナゴは稲田を飛んでいます。</strong></div>\r\n<div><strong>C&agrave;o c&agrave;o đang bay qua ruộng l&uacute;a.</strong></div>\r\n<div>&nbsp;</div>\r\n<div>(素敵＝すてき、稲田＝いなだ、飛ぶ＝とぶ）</div>\r\n<div>&nbsp;</div>\r\n<div><strong>"ga" d&ugrave;ng cho&nbsp;C&Acirc;U TRẢ LỜI&nbsp;của c&acirc;u hỏi về chủ thể</strong></div>\r\n<div>Trở lại v&iacute; dụ tr&ecirc;n:</div>\r\n<div><strong>(1) 私はりんごを食べました。</strong></div>\r\n<div><strong>(2) 私がりんごを食べました。</strong></div>\r\n<div>Thực ra c&acirc;u (1) l&agrave; c&acirc;u kể lại sự kiện, c&ograve;n (2) kh&ocirc;ng phải l&agrave; c&acirc;u đứng một m&igrave;nh. N&oacute; l&agrave;&nbsp;<strong>C&Acirc;U TRẢ LỜI</strong>cho c&acirc;u hỏi:</div>\r\n<div><strong>誰がりんごを食べましたか？</strong></div>\r\n<div><strong>Ai đ&atilde; ăn t&aacute;o?</strong></div>\r\n<div><strong>私がりんごを食べました。</strong></div>\r\n<div><strong>L&agrave; t&ocirc;i đ&atilde; ăn t&aacute;o.</strong></div>\r\n<div>(誰＝だれ）</div>\r\n<div><strong>C&aacute;c v&iacute; dụ kh&aacute;c:</strong></div>\r\n<div><strong>(A)</strong></div>\r\n<div><strong>ナガズキ：面白いですね。</strong></div>\r\n<div><strong>Nagazuki: Hay nhỉ.</strong></div>\r\n<div><strong>すいかちゃん：何が面白いですか？</strong></div>\r\n<div><strong>Suika-chan: C&aacute;i g&igrave; hay ạ?</strong></div>\r\n<div><strong>ナガズキ：その看板が。</strong></div>\r\n<div><strong>Nagazuki: Tấm bảng đ&oacute; đ&oacute;.</strong></div>\r\n<div>(面白い＝おもしろい）</div>\r\n<div>&nbsp;</div>\r\n<div><strong>&nbsp;(B)</strong></div>\r\n<div><strong>-&nbsp;誰がすいかちゃんですか。</strong></div>\r\n<div><strong>Ai l&agrave; b&eacute; Dưa Hấu?</strong></div>\r\n<div><strong>-&nbsp;その子がすいかちゃんですよ。</strong></div>\r\n<div><strong>C&ocirc; b&eacute; kia l&agrave; Dưa Hấu đ&oacute;.</strong></div>\r\n<div>&nbsp;</div>\r\n<div><strong>-&nbsp;何がいいの？</strong></div>\r\n<div><strong>C&aacute;i g&igrave; th&igrave; được?</strong></div>\r\n<div><strong>-&nbsp;リンゴがいいよ。</strong></div>\r\n<div><strong>T&aacute;o th&igrave; được đấy.</strong></div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>Đến đ&acirc;y c&oacute; lẽ bạn đ&atilde; thấy&nbsp;<strong>sự kh&aacute;c nhau về&nbsp;CHỨC NĂNG NGỮ PH&Aacute;P</strong><strong>&nbsp;của "wa" v&agrave; "ga"</strong>. "wa" v&agrave; "ga" c&ograve;n c&aacute;c chức năng ngữ ph&aacute;p kh&aacute;c m&agrave; t&ocirc;i sẽ n&oacute;i với bạn ở dưới đ&acirc;y.</div>\r\n<div>&nbsp;</div>\r\n<div><strong>"wa" d&ugrave;ng cho C&Acirc;U, "ga" d&ugrave;ng cho VẾ C&Acirc;U</strong></div>\r\n<div>&nbsp;</div>\r\n<div><strong>"wa" d&ugrave;ng cho c&acirc;u ho&agrave;n chỉnh c&oacute; dạng sau:</strong></div>\r\n<div>&nbsp;</div>\r\n<div><strong>[Chủ thể]&nbsp;は&nbsp;[t&iacute;nh chất]/[h&agrave;nh động]</strong></div>\r\n<div>&nbsp;</div>\r\n<div><strong>イナゴ・フライはおいしいわ。</strong></div>\r\n<div><strong>C&agrave;o c&agrave;o chi&ecirc;n ngon thiệt.</strong></div>\r\n<div><strong>サイゴンは世界の華麗な都市のひとつです。</strong></div>\r\n<div><strong>S&agrave;i G&ograve;n l&agrave; một trong những th&agrave;nh phố hoa lệ tr&ecirc;n thế giới.</strong></div>\r\n<div><strong>人民は歴史を作り上げる者です。</strong></div>\r\n<div><strong>Nh&acirc;n d&acirc;n l&agrave; những người l&agrave;m n&ecirc;n lịch sử.</strong></div>\r\n<div>&nbsp;</div>\r\n<div>（華麗＝かれい、世界＝せかい、都市＝とし、人民＝じんみん、</div>\r\n<div>歴史＝れきし、作り上げる＝つくりあげる、者＝もの）</div>\r\n<div>&nbsp;</div>\r\n<div><strong>"ga" tạo n&ecirc;n vế c&acirc;u dạng:</strong></div>\r\n<div>&nbsp;</div>\r\n<div><strong>[chủ thể]&nbsp;が&nbsp;[t&iacute;nh chất]/[h&agrave;nh động] {koto/mono}</strong></div>\r\n<div>&nbsp;</div>\r\n<div><strong>V&iacute; dụ:</strong></div>\r\n<div><strong>彼がしたこと</strong></div>\r\n<div><strong>Việc anh ta đ&atilde; l&agrave;m</strong></div>\r\n<div><strong>すいかちゃんが書いた手紙</strong></div>\r\n<div><strong>Thư b&eacute; Dưa Hấu viết</strong></div>\r\n<div><strong>踊り子が踊った踊り</strong></div>\r\n<div><strong>Điệu nhảy vũ c&ocirc;ng nhảy</strong></div>\r\n<div><strong>彼女がくれたもの</strong></div>\r\n<div><strong>Những thứ c&ocirc; ấy đưa cho t&ocirc;i</strong></div>\r\n<div><strong>顔立ちがきれいな女性</strong></div>\r\n<div><strong>Những phụ nữ c&oacute; gương mặt đẹp</strong></div>\r\n<div>&nbsp;</div>\r\n<div>Bạn h&atilde;y xem c&acirc;u sau:</div>\r\n<div>&nbsp;</div>\r\n<div><strong>彼がしたことを知っています。</strong></div>\r\n<div>&nbsp;</div>\r\n<div>C&acirc;u n&agrave;y l&agrave; một c&acirc;u đ&uacute;ng, v&agrave; l&agrave; một c&acirc;u&nbsp;<strong>KỂ SỰ KIỆN</strong>, nhưng lại d&ugrave;ng "ga"??</div>\r\n<div>Thực ra, nếu bạn dịch l&agrave;:</div>\r\n<div>&nbsp;</div>\r\n<div><span style="text-decoration: line-through;"><strong>Anh ấy biết việc đ&atilde; l&agrave;m.</strong></span></div>\r\n<div>&nbsp;</div>\r\n<div>th&igrave; bạn đ&atilde; kh&ocirc;ng hiểu &yacute; nghĩa c&acirc;u tr&ecirc;n. C&acirc;u n&agrave;y thực ra phải dịch l&agrave;:</div>\r\n<div>&nbsp;</div>\r\n<div><strong>T&ocirc;i biết việc anh ta đ&atilde; l&agrave;m.</strong></div>\r\n<div>&nbsp;</div>\r\n<div>Bởi v&igrave;, trong c&acirc;u tiếng Nhật, chủ ngữ ("t&ocirc;i") đ&atilde; được ẩn đi. C&acirc;u đầy đủ của c&acirc;u tr&ecirc;n l&agrave;:</div>\r\n<div>&nbsp;</div>\r\n<div><strong>私は彼がしたことを知っています。</strong></div>\r\n<div>&nbsp;</div>\r\n<div>Do đ&oacute; bạn c&oacute; thể thấy&nbsp;<strong>彼がしたこと chỉ l&agrave; một vế c&acirc;u</strong>, n&oacute; tạo n&ecirc;n một cụm c&oacute; t&iacute;nh chất danh từ, l&agrave;m đối tượng cho h&agrave;nh động "biết" của chủ thể "t&ocirc;i" (m&agrave; đ&atilde; được ẩn đi).</div>\r\n<div>Bạn c&oacute; thể thấy ngữ ph&aacute;p của c&acirc;u như sau:</div>\r\n<div>&nbsp;</div>\r\n<div><strong>（私は）　[彼がしたこと]&nbsp;を知っています。</strong></div>\r\n<div>(Chủ thể ẩn)&nbsp;[vế c&acirc;u l&agrave;m đối tượng của h&agrave;nh động]&nbsp;を [h&agrave;nh động]</div>\r\n<div>&nbsp;</div>\r\n<div>Do đ&oacute; ch&uacute;ng ta n&ecirc;n nhớ theo c&aacute;ch sau:</div>\r\n<div>&nbsp;</div>\r\n<div><strong>"GA" d&ugrave;ng cho VẾ C&Acirc;U</strong></div>\r\n<div><strong>V&iacute; dụ:</strong></div>\r\n<div><strong>彼女は体が整っています。</strong></div>\r\n<div><strong>Cố ấy cơ thể rất gọn g&agrave;ng.</strong></div>\r\n<div><strong>彼は頭がいい。</strong></div>\r\n<div><strong>Anh ấy rất th&ocirc;ng minh.</strong></div>\r\n<div><strong>頭が痛い。</strong></div>\r\n<div><strong>T&ocirc;i đau đầu qu&aacute;.</strong></div>\r\n<div><strong>（＝私は頭が痛い）</strong></div>\r\n<div><strong>この布は模様がいいですね。</strong></div>\r\n<div><strong>Tấm vải n&agrave;y hoa văn đẹp nhỉ.</strong></div>\r\n<div><strong>日本への旅行は料金が高い。</strong></div>\r\n<div><strong>Du lịch Nhật Bản mắc tiền.</strong></div>\r\n<div><strong>彼は故郷が大地震に遭ったことを知っていますか。</strong></div>\r\n<div><strong>Anh ấy c&oacute; biết việc qu&ecirc; nh&agrave; gặp động đất lớn kh&ocirc;ng?</strong></div>\r\n<div><strong>あなたは態度が失礼だ。</strong></div>\r\n<div><strong>Anh th&aacute;i độ thật v&ocirc; lễ.</strong></div>\r\n<div>&nbsp;</div>\r\n<div>Từ vựng:</div>\r\n<div>彼女＝かのじょ、体＝からだ、整う＝ととのう、彼＝かれ、頭＝あたま、痛い＝いたい、布＝ぬの、模様＝もよう、日本＝にほん、旅行＝りょこう、料金＝りょうきん、高い＝たかい、故郷＝ふるさと、大地震＝だいじしん、遭う＝あう、知る＝しる、態度＝たいど、失礼＝しつれい</div>\r\n<div>&nbsp;</div>\r\n<div><strong>"WA" c&oacute; thể BỊ ẨN theo chủ ngữ ("t&ocirc;i")</strong></div>\r\n<div><strong>V&iacute; dụ:</strong></div>\r\n<div><strong>彼女が美人であることを知っていますよ。</strong></div>\r\n<div><strong>T&ocirc;i biết c&ocirc; ấy l&agrave; một người phụ nữ đẹp đấy.</strong></div>\r\n<div><strong>（＝私は、彼女が美人であることを、知っていますよ。）</strong></div>\r\n<div><strong>サイゴンの雨がロマンチックなことを知りませんでした。</strong></div>\r\n<div><strong>T&ocirc;i đ&atilde; kh&ocirc;ng biết l&agrave; mưa S&agrave;i G&ograve;n thật l&atilde;ng mạn.</strong></div>\r\n<div><strong>ご飯を炊くことができます。</strong></div>\r\n<div><strong>T&ocirc;i c&oacute; thể nấu cơm. （＝私はご飯を炊くことができます。）</strong></div>\r\n<div><strong>この歌が歌えます。</strong></div>\r\n<div><strong>T&ocirc;i c&oacute; thể h&aacute;t b&agrave;i n&agrave;y. （＝私はこの歌が歌えます。）</strong></div>\r\n<div><strong>彼女はご飯が炊けません。</strong></div>\r\n<div><strong>C&ocirc; ấy kh&ocirc;ng biết nấu cơm. (Kh&ocirc;ng ẩn chủ ngữ)</strong></div>', 'Chào các bạn, hôm nay tôi sẽ nói về trợ từ trong tiếng Nhật. Thứ làm bạn thấy khó hiểu nhất có lẽ là "wa" và "ga". Thực ra tôi đã học ở trong trường ngoại ngữ nhưng không thấy giáo viên nào giải thích được rõ ràng sự khác nhau. Họ thường chỉ giải thích là "wa" là nhấn mạnh chủ ngữ, còn "ga" là nhấn mạnh vị ngữ. Tôi thấy không hẳn như vậy, mà "wa" và "ga" có chức năng ngữ pháp khác nhau. Dưới đây, tôi sẽ giải thích thật đơn giản, rõ ràng cho các bạn về "wa" và "ga"', 'Chào các bạn, hôm nay tôi sẽ nói về trợ từ trong tiếng Nhật. Thứ làm bạn thấy khó hiểu nhất có lẽ là "wa" và "ga". Thực ra tôi đã học ở trong trường ngoại ngữ nhưng không thấy giáo viên nào giải thích được rõ ràng sự khác nhau. Họ thường chỉ giải thích là "wa" là nhấn mạnh chủ ngữ, còn "ga" là nhấn mạnh vị ngữ. Tôi thấy không hẳn như vậy, mà "wa" và "ga" có chức năng ngữ pháp khác nhau. Dưới đây, tôi sẽ giải thích thật đơn giản, rõ ràng cho các bạn về "wa" và "ga"', 'new-picture-39-624x468_1092792084.png', NULL, NULL, '2014-12-24 09:34:33', 4, 'tro-tu-trong-tieng-nhat-,-phan-1:-wa-va-ga');
INSERT INTO `pages` (`id`, `name`, `title`, `content`, `des`, `keyword`, `image_icon`, `image`, `mp3`, `time_on`, `author_id`, `url`) VALUES
(27, 'TRỢ TỪ TRONG TIẾNG NHẬT , PHẦN 2: DÙNG WA VÀ GA ĐỂ NHẤN MẠNH ĐỐI TƯỢNG', 'TRỢ TỪ TRONG TIẾNG NHẬT , PHẦN 2: DÙNG WA VÀ GA ĐỂ NHẤN MẠNH ĐỐI TƯỢNG', '<div><strong>"は"(WA) c&oacute; thể d&ugrave;ng thay "を" (WO) để nhấn mạnh đối tượng</strong></div>\r\n<div><strong>WA = "th&igrave;", "l&agrave;" trong tiếng Việt</strong></div>\r\n<div><strong>WA kết hợp với GA để nhấn mạnh đối tượng (= nhấn mạnh CHỦ ĐỀ)</strong></div>\r\n<div>&nbsp;</div>\r\n<div>V&iacute; dụ:</div>\r\n<div>Ａ：この問題はどうしますか。</div>\r\n<div>Ｂ：この問題は私が対応します。</div>\r\n<div>&nbsp;</div>\r\n<div>A: Vấn đề n&agrave;y&nbsp;<strong>th&igrave;</strong>&nbsp;sẽ l&agrave;m thế n&agrave;o?</div>\r\n<div>B: Vấn đề n&agrave;y t&ocirc;i sẽ giải quyết.</div>\r\n<div>&nbsp;</div>\r\n<div>Bạn c&oacute; thể thấy l&agrave; "この問題" v&agrave; "Vấn đề n&agrave;y" đ&atilde; được đặt l&ecirc;n trước mặc d&ugrave; n&oacute; l&agrave; đối tượng của h&agrave;nh động, nhằm mục đ&iacute;ch nhất mạnh.</div>\r\n<div>&nbsp;</div>\r\n<div>Th&ocirc;ng thường sẽ phải l&agrave;:</div>\r\n<div>&nbsp;</div>\r\n<div>Ａ：この問題をどうしますか。</div>\r\n<div>Ｂ：私はこの問を対応します。</div>\r\n<div>A: Ch&uacute;ng ta l&agrave;m thế n&agrave;o với vấn đề n&agrave;y?</div>\r\n<div>B: T&ocirc;i sẽ giải quyết vấn đề n&agrave;y.</div>\r\n<div>Ở đoạn hội thoại tr&ecirc;n, ch&uacute;ng ta thấy kh&ocirc;ng c&oacute; sự nhấn mạnh v&agrave;o đối tượng.</div>\r\n<div>&nbsp;</div>\r\n<div>V&iacute; dụ 2:</div>\r\n<div>Ａ：食べ物は誰が食べましたか？</div>\r\n<div>Ｂ：スイカは私が食べました。</div>\r\n<div>A: Thức ăn l&agrave; ai đ&atilde; ăn?</div>\r\n<div>B: Dưa hấu l&agrave; t&ocirc;i ăn.</div>\r\n<div><br />V&iacute; dụ 3:<br />それは私がやりましょう。<br />C&aacute;i đ&oacute; để t&ocirc;i l&agrave;m cho.<br />&nbsp;</div>\r\n<div>Trong trường hợp đưa đối tượng l&ecirc;n để nhấn mạnh, th&igrave; chủ thể sẽ được theo sau bởi "GA". C&aacute;c bạn h&atilde;y xem ngữ ph&aacute;p dưới đ&acirc;y để thấy việc kết hợp "WA" v&agrave; "GA" để&nbsp;<strong>nhấn mạnh đối tượng</strong>:</div>\r\n<div>&nbsp;</div>\r\n<div>C&acirc;u th&ocirc;ng thường:</div>\r\n<div><strong>[Chủ thể] は [đối tượng] を [h&agrave;nh động]</strong></div>\r\n<div>私はスイカを食べました。</div>\r\n<div>&nbsp;</div>\r\n<div>C&acirc;u nhấn mạnh:</div>\r\n<div><strong>[Đối tượng] は [chủ thể] が [h&agrave;nh động]</strong></div>\r\n<div>スイカは私が食べました。</div>\r\n<div>&nbsp;</div>\r\n<div>Ch&uacute;ng ta c&oacute; thể thấy tiếng Việt cũng đảo đối tượng l&ecirc;n trước để nhấn mạnh (thường d&ugrave;ng trợ từ "<strong>th&igrave;</strong>"), v&iacute; dụ:</div>\r\n<div>Thịt&nbsp;<strong>th&igrave;&nbsp;</strong>treo l&ecirc;n, c&ograve;n gạo&nbsp;<strong>th&igrave;</strong>&nbsp;nhớ đậy lại nh&eacute;.</div>\r\n<div>(So s&aacute;nh: Con treo thịt l&ecirc;n v&agrave; đậy gạo lại nh&eacute;.)</div>\r\n<div>&nbsp;</div>\r\n<div>B&aacute;nh kẹo l&agrave; ai mua vậy?</div>\r\n<div>(So s&aacute;nh: Ai mua b&aacute;nh kẹo vậy?)</div>\r\n<div>&nbsp;</div>\r\n<div>Ch&uacute;ng ta c&oacute; thể thấy, trong tiếng Việt, đảo đối tượng l&ecirc;n để nhấn mạnh thường l&agrave;:</div>\r\n<div>1) Trong c&acirc;u hỏi</div>\r\n<div>2) Khi đang nối tiếp nội dung từ trước đ&oacute; (v&iacute; dụ đang dặn d&ograve; việc cất thức ăn th&igrave; n&oacute;i "Thịt th&igrave; treo l&ecirc;n").</div>\r\n<div>&nbsp;</div>\r\n<div><strong>C&ograve;n GA (が)? Thường d&ugrave;ng cho qu&aacute;n ngữ (cụm từ được d&ugrave;ng theo th&oacute;i quen)</strong>.</div>\r\n<div>H&atilde;y xem v&iacute; dụ sau:</div>\r\n<div>大雨が降っています。</div>\r\n<div>Trời đang mưa rất to.</div>\r\n<div>(大雨=おおあめ）</div>\r\n<div>&nbsp;</div>\r\n<div>C&aacute;c hiện tượng thi&ecirc;n nhi&ecirc;n như 雨が降る (trời mưa), 風が吹く (かぜがふく, trời gi&oacute;, gi&oacute; thổi), 雪が降る (ゆきがふる, trời tuyết, tuyết rơi), 雷が鳴る（かみなりがなる, sấm rền, sấm k&ecirc;u), 稲妻が閃く (いなずまがひらめく, c&oacute; tia s&eacute;t) th&igrave; d&ugrave;ng GA v&igrave; ch&uacute;ng được coi l&agrave; một cụm từ đi với nhau hơn l&agrave; một c&acirc;u kể. Như trong tiếng Việt ch&uacute;ng ta thường n&oacute;i "Trời đang mưa", "Trời c&oacute; gi&oacute;", ... theo th&oacute;i quen.</div>\r\n<div>&nbsp;</div>\r\n<div>Ch&uacute; &yacute; l&agrave; 降る&nbsp;<em>furu</em>&nbsp;ở đ&acirc;y l&agrave;&nbsp;<strong>h&agrave;nh động tự th&acirc;n (= tự động từ)</strong>&nbsp;của 雨&nbsp;<em>ame</em>&nbsp;chứ kh&ocirc;ng phải l&agrave;&nbsp;<strong>h&agrave;nh động t&aacute;c động l&ecirc;n đối tượng (= tha động từ)</strong>&nbsp;n&agrave;o đ&oacute;. Đ&oacute; cũng l&agrave; l&yacute; do m&agrave; GA được sử dụng.</div>\r\n<div>C&aacute;c bạn c&oacute; thể nhớ theo quy tắc (mặc d&ugrave; để ph&acirc;n biệt hai dạng kh&ocirc;ng phải dễ):</div>\r\n<div><strong>H&agrave;nh động tự th&acirc;n: D&ugrave;ng GA (が)</strong></div>\r\n<div>V&iacute; dụ:<br />ごはんが出来上がりました。<br />Cơm ch&iacute;n rồi. / dekiagaru</div>\r\n<div><strong>H&agrave;nh động t&aacute;c động l&ecirc;n đối tượng: D&ugrave;ng WA (は) v&agrave; WO (を)</strong></div>\r\n<div>V&iacute; dụ:<br />ご飯を炊きました。（＝私はご飯を炊きました）<br />T&ocirc;i nấu cơm rồi. (taku = thổi cơm, nấu cơm)</div>\r\n<div>&nbsp;</div>\r\n<div>Theo&nbsp;http://www.saromalang.com/</div>', 'DÙNG WA VÀ GA ĐỂ NHẤN MẠNH ĐỐI TƯỢNG', 'DÙNG WA VÀ GA ĐỂ NHẤN MẠNH ĐỐI TƯỢNG', 'loi-chung-cua-cong-chung-vien_726849817.jpg', NULL, NULL, '2014-12-24 09:46:22', 4, 'tro-tu-trong-tieng-nhat-,-phan-2:-dung-wa-va-ga-de-nhan-manh-doi-tuong'),
(28, 'TRỢ TỪ TRONG TIẾNG NHẬT , PHẦN 3: の NO, で DE, に NI', 'TRỢ TỪ TRONG TIẾNG NHẬT , PHẦN 3: の NO, で DE, に NI', '<div><strong>の NO = "của" trong tiếng Việt, sở hữu c&aacute;ch</strong></div>\r\n<div><strong>V&iacute; dụ:</strong></div>\r\n<div>私のお金 = Tiền của t&ocirc;i (お金=okane)</div>\r\n<div>ぼくの彼女 = Bạn g&aacute;i của t&ocirc;i (彼女=kanojo)</div>\r\n<div>私の彼 = Bạn trai của t&ocirc;i (彼=kare)</div>\r\n<div>&nbsp;</div>\r\n<div><span class="Apple-style-span"><strong>NO d&ugrave;ng tạo bổ nghĩa (N + "no" + N: Danh từ + "no" + Danh từ)</strong></span><br />Đ&acirc;y l&agrave; trợ từ đơn giản nhất, tuy nhi&ecirc;n vẫn c&oacute; nhiều người c&oacute; thể dịch sai do dịch ẩu.</div>\r\n<div>V&iacute; dụ: Bạn biết hai cụm sau kh&aacute;c g&igrave; nhau kh&ocirc;ng?</div>\r\n<div>①　サイゴンの夜</div>\r\n<div>②　夜のサイゴン</div>\r\n<div>(夜=yoru)</div>\r\n<div>Nhiều người dịch cả hai l&agrave; "Đ&ecirc;m S&agrave;i G&ograve;n", nhưng cụm thứ hai kh&ocirc;ng phải như vậy. Cần phải nhớ l&agrave; ở cụm từ thứ 2, "S&agrave;i G&ograve;n" l&agrave; chủ đề, chứ kh&ocirc;ng phải l&agrave; "đ&ecirc;m", "đ&ecirc;m" chỉ l&agrave; từ bổ nghĩa..</div>\r\n<div>Phải dịch l&agrave;:</div>\r\n<div>サイゴンの夜 = Đ&ecirc;m S&agrave;i G&ograve;n (Saigon''s night)</div>\r\n<div>夜のサイゴン = S&agrave;i G&ograve;n về đ&ecirc;m (Saigon by night)</div>\r\n<div>(Dịch nguy&ecirc;n nghĩa theo chữ của 夜のサイゴン l&agrave; "S&agrave;i G&ograve;n của buổi đ&ecirc;m".)</div>\r\n<div><br /><strong>V&iacute; dụ:</strong></div>\r\n<div>おれのお金を返せ！<br />Trả lại tiền cho tao!</div>\r\n<div>それは私の彼女です。手を出さないでください。</div>\r\n<div>Đ&oacute; l&agrave; bạn g&aacute;i của t&ocirc;i. Xin đừng động v&agrave;o.</div>\r\n<div><br />\r\n<div>（返す＝かえす, 手を出す＝てをだす）</div>\r\n<br />\r\n<div><strong>で DE (1) = "bằng" (chỉ phương tiện)</strong></div>\r\n<strong>V&iacute; dụ:</strong><br />私はバスで学校に行きます。<br />T&ocirc;i sẽ đi bằng xe bu&yacute;t tới trường (T&ocirc;i sẽ đi xe bu&yacute;t tới trường.)<br />彼は画家になる夢で生きています。<br />Cậu ấy đang sinh sống bằng ước mơ trở th&agrave;nh họa sỹ.<br />私の親友は宝くじを売ることで生活しています。<br />Bạn th&acirc;n của t&ocirc;i đang sống bằng việc b&aacute;n v&eacute; số.<br /><br />\r\n<div>（画家＝がか、夢＝ゆめ、生きる＝いきる、親友th&acirc;n hữu＝しんゆう、宝くじ＝たからくじ、売る＝うる、生活sinh hoạt＝せいかつ）</div>\r\n<br />\r\n<div><strong>で DE (2) = "ở trong", "tại" (chỉ&nbsp;h&agrave;nh động&nbsp;b&ecirc;n trong một nơi n&agrave;o đ&oacute;)</strong></div>\r\n<strong>V&iacute; dụ:&nbsp;</strong><br />私たちは中心公園で散歩しました。<br />Ch&uacute;ng t&ocirc;i đi dạo ở c&ocirc;ng vi&ecirc;n trung t&acirc;m.<br />(chỉ h&agrave;nh động "đi dạo" diễn ra ở b&ecirc;n trong c&ocirc;ng vi&ecirc;n trung t&acirc;m.)<br />サイゴン川で暮しましょう。<br />Ch&uacute;ng m&igrave;nh sống tr&ecirc;n s&ocirc;ng S&agrave;i G&ograve;n đi!<br />私の夢はサイゴンで起業することです。<br />Ước mơ của t&ocirc;i l&agrave; tạo lập sự nghiệp ở S&agrave;i G&ograve;n.</div>\r\n<div><br />（中心 trung t&acirc;m＝ちゅうしん、公園 c&ocirc;ng vi&ecirc;n＝こうえん、散歩tản bộ＝さんぽ、 川 xuy&ecirc;n＝かわ、 暮す＝くらす、起業 khởi nghiệp＝きぎょう）<br /><br /><strong>に NI (1) = "ở", "ở trong", "ở tại" (chỉ một thứ ở trong một nơi n&agrave;o đ&oacute;)</strong><br /><strong>V&iacute; dụ:</strong><br />お金は引き出しに置いてあります。<br />Tiền được đặt sẵn ở trong ngăn k&eacute;o.<br />国家の美しさは人民にあります。<br />Vẻ đẹp của quốc gia nằm ở trong nh&acirc;n d&acirc;n.<br />彼が描いた絵の特色は色の組み合わせにあります。<br />Điểm đặc sắc của tranh anh ấy vẽ l&agrave; nằm ở c&aacute;ch phối m&agrave;u.<br /><br /><strong>Vậy th&igrave; NI (=ở trong, ở) c&oacute; g&igrave; kh&aacute;c DE (=ở trong, tại)?</strong><br />Kh&aacute;c biệt l&agrave; DE l&agrave; chỉ "h&agrave;nh động diễn tra trong một nơi n&agrave;o đ&oacute;", c&ograve;n NI l&agrave; chỉ "một thứ nằm ở trong một nơi n&agrave;o đ&oacute;":<br />川沿いで散歩してきました。<br />T&ocirc;i vừa đi dạo ở bờ s&ocirc;ng về.<br />川沿いに花はたくさん咲いています。<br />Ở bờ s&ocirc;ng hoa đang nở rất nhiều.<br /><br />（引き出し＝ひきだし、置く＝おく、国家 quốc gia＝こっか、美しさ＝うつくしさ、国民 quốc d&acirc;n＝こくみん、描く＝えがく、絵＝え、特色 đặc sắc＝とくしょく、色＝いろ、組み合わせ＝くみあわせ、川沿い＝かわぞい、花＝はな、咲く＝さく）<br /><br />\r\n<div><strong>に NI (2) = "tới", "cho", "với" (chỉ sự hướng tới đối tượng n&agrave;o đ&oacute;)</strong></div>\r\n<p><strong>V&iacute; dụ:&nbsp;</strong><br />中心公園に歩きました。<br />T&ocirc;i đi bộ tới c&ocirc;ng vi&ecirc;n trung t&acirc;m.<br />(Chỉ h&agrave;nh động "đi bộ" tới đ&iacute;ch đến l&agrave; "c&ocirc;ng vi&ecirc;n trung t&acirc;m".)<br />彼女に愛慕の心を告白しようと思います。<br />T&ocirc;i muốn thổ lộ với c&ocirc; ấy tấm l&ograve;ng &aacute;i mộ.<br />国王にこの短剣を渡したいです。<br />T&ocirc;i muốn đưa thanh đoản kiếm n&agrave;y cho quốc vương.<br />彼のビジネスに資金を投資しませんか。<br />Anh c&oacute; đầu tư vốn v&agrave;o kinh doanh của cậu ấy kh&ocirc;ng?<br /><br />（歩く＝あるく、愛慕 &aacute;i mộ＝あいぼ、心 t&acirc;m＝こころ、告白 c&aacute;o bạch＝こくはく、思う＝おもう、国王 quốc vương＝こくおう、短剣 đoản kiếm＝たんけん、渡す＝わたす、資金 tư kim＝しきん、投資 đầu tư＝とうし）</p>\r\n<p>Theo&nbsp;http://www.saromalang.com/</p>\r\n</div>', 'Phân biệt các trợ từ:  の NO, で DE, に NI trong tiếng nhật', 'Phân biệt các trợ từ:  の NO, で DE, に NI trong tiếng nhật', 'studystudysmall_1258980824.png', NULL, NULL, '2014-12-24 09:59:25', 4, 'tro-tu-trong-tieng-nhat-,-phan-3:-の-no,-で-de,-に-ni'),
(29, 'TRỢ TỪ TRONG TIẾNG NHẬT , PHẦN 4: へ HE (Ê), から KARA, を WO (Ô), と TO', 'TRỢ TỪ TRONG TIẾNG NHẬT , PHẦN 4: へ HE (Ê), から KARA, を WO (Ô), と TO', '<div><strong>へ HE (&ecirc;): (1) [hướng] tới, về ph&iacute;a; (2) [đưa] cho; (3) [h&agrave;nh động/suy nghĩ/t&igrave;nh y&ecirc;u...] với</strong></div>\r\n<div><em>Viết l&agrave; "he" nhưng đọc l&agrave; "&ecirc;".</em></div>\r\n<div>HE chỉ một h&agrave;nh động hướng về ph&iacute;a n&agrave;o đ&oacute;, hay đưa cho ai đ&oacute;, hay l&agrave; h&agrave;nh động, suy nghĩ hướng về một ai đ&oacute;.</div>\r\n<div><strong>V&iacute; dụ:</strong></div>\r\n<div><strong>へ HE (1): Phương hướng:</strong></div>\r\n<div>Ch&uacute; &yacute;: NI cũng d&ugrave;ng để chỉ phương hướng, nhưng NI l&agrave; "đến v&agrave; đang ở nơi đ&oacute;"; c&ograve;n HE l&agrave; "đang đi về ph&iacute;a nơi n&agrave;o đ&oacute;".</div>\r\n<div><strong>亀の池へ</strong>向かっています。</div>\r\n<div>T&ocirc;i đang đi về ph&iacute;a hồ Con R&ugrave;a.</div>\r\n<div><strong>泉の上流の方へ</strong>行きましょう。</div>\r\n<div>Ch&uacute;ng ta h&atilde;y đi l&ecirc;n ph&iacute;a thượng nguồn con suối.</div>\r\n<div>&nbsp;</div>\r\n<p><a name="more"></a></p>\r\n<div>（亀 quy＝かめ、池 tr&igrave;＝いけ、向う＝むかう、泉 tuyền＝いずみ、上流 thương lưu＝じょうりゅう、方 phương＝ほう、行く＝いく）</div>\r\n<div>&nbsp;</div>\r\n<div><strong>へ HE (2):&nbsp;</strong><strong>Đưa cho ai: (=NI)</strong></div>\r\n<div><strong>親友へ</strong>久しぶりに手紙を送りました。</div>\r\n<div>L&acirc;u rồi t&ocirc;i mới lại gửi thư cho bạn th&acirc;n.</div>\r\n<div>&nbsp;</div>\r\n<div>（親友 th&acirc;n hữu＝しんゆう、久し振り＝ひさしぶり、手紙＝てがみ、送る＝おくる）</div>\r\n<div>&nbsp;</div>\r\n<div><strong>へ HE (3):&nbsp;</strong><strong>H&agrave;nh động, suy nghĩ hướng tới đối tượng n&agrave;o đ&oacute;:</strong></div>\r\n<div>(<strong>Ch&uacute; &yacute;:&nbsp;</strong>Kh&ocirc;ng thể d&ugrave;ng "ni" trong trường hợp n&agrave;y m&agrave; phải d&ugrave;ng "he" để diễn tả trừu tượng.)</div>\r\n<div><strong>愛しい君へ</strong>の恋は永遠に続くでしょう。</div>\r\n<div>T&igrave;nh y&ecirc;u với em y&ecirc;u dấu c&oacute; lẽ sẽ l&agrave; m&atilde;i m&atilde;i.</div>\r\n<div>私たちの<strong>サイゴンへ</strong>の愛情は不滅なものです。</div>\r\n<div>T&igrave;nh y&ecirc;u của ch&uacute;ng ta với S&agrave;i G&ograve;n l&agrave; thứ bất diệt.</div>\r\n<div><strong>あなたへ</strong>の思いはどうしてもなくせない。</div>\r\n<div>Em kh&ocirc;ng thể n&agrave;o x&oacute;a đi những &yacute; nghĩ về anh.</div>\r\n<div>彼は<strong>遊牧民の生き方へ</strong>のあこがれをずっと持っている。</div>\r\n<div>Anh ấy đ&atilde; lu&ocirc;n lu&ocirc;n c&oacute; sự y&ecirc;u th&iacute;ch lối sống của d&acirc;n du mục.</div>\r\n<div>&nbsp;</div>\r\n<div><br />（愛しい＝いとしい、君 qu&acirc;n＝きみ、恋 luyến＝こい、永遠 vĩnh viễn＝えいえん、続く＝つづく、愛情 &aacute;i t&igrave;nh＝あいじょう、不滅 bất diệt＝ふめつ、思い＝おもい、彼＝かれ、遊牧民 du mộc d&acirc;n＝ゆうぼくみん、生き方＝いきあた、持つ＝もつ）</div>\r\n<div>&nbsp;</div>\r\n<div><strong>HE v&agrave; NI kh&aacute;c g&igrave; nhau khi chỉ phương hướng?</strong>&nbsp;Ch&uacute;ng c&oacute; kh&aacute;c nhau, bạn h&atilde;y xem so s&aacute;nh cuối b&agrave;i n&agrave;y.</div>\r\n<div>&nbsp;</div>\r\n<div><strong>**************から</strong><strong>**************</strong></div>\r\n<div><strong>から KARA: (1) Từ [đ&acirc;u đến]; (2) nhận g&igrave; đ&oacute; từ ai (cụ thể lẫn trừu tượng)</strong></div>\r\n<div>&nbsp;</div>\r\n<div><strong>から KARA (1) = "Từ ..."</strong></div>\r\n<div>私は<strong>森から</strong>果物をとってきたところです。</div>\r\n<div>T&ocirc;i vừa h&aacute;i hoa quả từ rừng về.</div>\r\n<div>魚を<strong>湖から</strong>釣って焼いて食べましょう。</div>\r\n<div>C&acirc;u c&aacute; từ hồ nướng ăn đi!</div>\r\n<div>お店は<strong>朝１０時から</strong>夜９時まで営業です。</div>\r\n<div>Cửa h&agrave;ng l&agrave;m việc từ 10 giờ s&aacute;ng tới 9 giờ tối.</div>\r\n<div>今日は！今日のセールは<strong>１９０円から</strong>です。</div>\r\n<div>Xin ch&agrave;o! H&agrave;ng khuyến m&atilde;i h&ocirc;m nay c&oacute; gi&aacute; từ 190 y&ecirc;n.</div>\r\n<div>サイゴンでの温度は<strong>２５度から</strong>３５度までです。</div>\r\n<div>Nhiệt độ ở S&agrave;i G&ograve;n l&agrave; từ 25 độ tới 35 độ.</div>\r\n<div>&nbsp;</div>\r\n<div>（森 s&acirc;m＝もり、果物＝くだもの、魚 ngư＝さかな、湖 hồ＝みずうみ、釣る＝つる、焼く＝やく、食べる＝たべる、お店＝おみせ、朝 triều＝あさ、夜 dạ＝よる、時 thời＝じ、営業 doanh nghiệp＝えいぎょう、今日は＝こんにちは、今日＝きょう、円 vi&ecirc;n＝えん、温度 &ocirc;n độ＝おんど、度＝ど）</div>\r\n<div>&nbsp;</div>\r\n<div><strong>から KARA (2) =&nbsp;Từ ai đ&oacute; (</strong><strong>Cụ thể hoặc&nbsp;Trừu tượng)</strong></div>\r\n<div><strong>彼から</strong>「覇道の道」という本をもらいました。</div>\r\n<div>T&ocirc;i nhận quyển s&aacute;ch gọi l&agrave; "Con đường b&aacute; đạo" từ anh ấy.</div>\r\n<div>（＝<strong>彼に</strong>「覇道の道」という本をもらいました。）</div>\r\n<div>高校の時代、私は<strong>恩師から</strong>画家になるよう多くの励ましをもらいました。</div>\r\n<div>Thời học cấp 3, t&ocirc;i nhận được rất nhiều sự động vi&ecirc;n trở th&agrave;nh họa sĩ của thầy gi&aacute;o cũ.</div>\r\n<div>卒業ができたのは<strong>先生から</strong>の親切なご指導があったこそです。</div>\r\n<div>Em tốt nghiệp được h&ocirc;m nay ch&iacute;nh l&agrave; nhờ sự hướng dẫn tận t&igrave;nh của c&ocirc;.&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>（覇道 b&aacute; đạo＝はどう、道 đạo＝みち、本 bản＝ほん、高校 cao hiệu＝こうこう、時代 thời đại＝じだい、恩師 &acirc;n sư＝おんし、画家 họa gia＝がか、多く＝おおく、励まし＝はげまし、卒業 tốt nghiệp＝そつぎょう、先生 ti&ecirc;n sinh＝せんせい、親切 th&acirc;n thiết＝しんせつ、指導 chỉ đạo＝しどう）</div>\r\n<div>&nbsp;</div>\r\n<div><strong>KARA v&agrave; NI:</strong>&nbsp;NI c&oacute; thể thay thế KARA khi d&ugrave;ng theo nghĩa nhận g&igrave; từ ai đ&oacute; (trừu tượng); h&agrave;nh động sẽ l&agrave;: morau (nhận), itadaku (nhận, dạng lịch sự), ukeru (nhận). C&aacute;c c&acirc;u trừu tượng ở tr&ecirc;n đều c&oacute; thể thay KARA bằng NI m&agrave; &yacute; nghĩa kh&ocirc;ng hề thay đổi. L&yacute; do: NI c&oacute; thể d&ugrave;ng theo nghĩa trừu tượng chỉ h&agrave;nh động hướng tới ai đ&oacute;. Tuy nhi&ecirc;n, việc đưa cho ai đ&oacute; c&aacute;i g&igrave; th&igrave; chỉ c&oacute; thể d&ugrave;ng NI chứ kh&ocirc;ng thể d&ugrave;ng KARA.</div>\r\n<div>V&iacute; dụ c&oacute; thể n&oacute;i:</div>\r\n<div>彼に本を渡した。</div>\r\n<div>T&ocirc;i đưa quyển s&aacute;ch cho anh ấy.</div>\r\n<div>Chứ kh&ocirc;ng thể n&oacute;i: "Kare kara ...." v&igrave; đ&acirc;y l&agrave; việc đưa quyển s&aacute;ch đi chứ kh&ocirc;ng phải nhận về.</div>\r\n<div>&nbsp;</div>\r\n<div>（渡す＝わたす）</div>\r\n<div>&nbsp;</div>\r\n<div><strong>**************を</strong><strong>**************</strong></div>\r\n<div><strong>を WO (&ocirc;): (1) Đối tượng c&aacute;ch; (2) [Đi] ngang qua..., [bay] ngang qua...</strong></div>\r\n<div><span class="Apple-style-span">Đọc l&agrave; "&ocirc;", c&aacute;ch viết la tinh (roomaji): wo.</span></div>\r\n<div><strong>を&nbsp;WO (1): Đối tượng c&aacute;ch</strong></div>\r\n<div>D&ugrave;ng WO để diễn tả h&agrave;nh động l&ecirc;n một đối tượng th&igrave; chắc l&agrave; ai học tiếng Nhật cũng biết.</div>\r\n<div><strong>V&iacute; dụ:</strong></div>\r\n<div>そいつは<strong>時間を惜しまず</strong>「やったらとまらない」ゲームやで日夜夢中にゲームをやっている。</div>\r\n<div>Thằng đ&oacute; ng&agrave;y đ&ecirc;m say m&ecirc; chơi tr&ograve; chơi ở qu&aacute;n điện tử "Chơi l&agrave; kh&ocirc;ng dừng"&nbsp;<strong>kh&ocirc;ng tiếc thời gian</strong>.&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>（時間 thời gian＝じかん、惜しむ＝おしむ、日夜 nhật dạ＝にちや、夢中＝むちゅう）</div>\r\n<div>&nbsp;</div>\r\n<div>Tuy nhi&ecirc;n, t&ocirc;i sẽ giới thiệu với c&aacute;c bạn c&aacute;ch d&ugrave;ng WO m&agrave; c&aacute;c bạn c&oacute; thể chưa biết, v&agrave; c&aacute;ch n&agrave;y kh&aacute; hay:</div>\r\n<div>&nbsp;</div>\r\n<div><strong>を&nbsp;WO (2): [Đi, bay, ...] ngang qua ...</strong></div>\r\n<div>&nbsp;</div>\r\n<div>①私たちは苦労なく<strong>橋を</strong>渡った。</div>\r\n<div>Ch&uacute;ng t&ocirc;i đi qua cầu kh&ocirc;ng kh&oacute; khăn g&igrave;.</div>\r\n<div>②<strong>森を</strong>走りましょう。</div>\r\n<div>M&igrave;nh chạy qua rừng đi!</div>\r\n<div>③キリギリスは<strong>稲田を</strong>飛んでいます。</div>\r\n<div>Ch&acirc;u chấu đang bay qua ruộng l&uacute;a.</div>\r\n<div>C&acirc;u (3) nghĩa l&agrave; ch&acirc;u chấu bay qua ruộng l&uacute;a, bay vượt qua hẳn chứ kh&ocirc;ng phải l&agrave; "bay tr&ecirc;n ruộng l&uacute;a" hay l&agrave; "bay từ ruộng l&uacute;a" hay "bay đến ruộng l&uacute;a" hay "bay về ph&iacute;a ruộng l&uacute;a". Ở đ&acirc;y ch&acirc;u chấu bay ra khỏi ruộng l&uacute;a.</div>\r\n<div>&nbsp;</div>\r\n<div>（苦労 khổ lao＝くろう、橋 kiều＝はし、渡る＝わたる、森＝もり、走る＝はしる、稲田＝いなだ、飛ぶ＝とぶ）</div>\r\n<div>&nbsp;</div>\r\n<div><strong>**************と</strong><strong>**************</strong></div>\r\n<div><strong>と TO: (1) "rằng..."; (2) [l&ecirc;n, trở n&ecirc;n,...] đến; (3) [nếu ...] th&igrave; ...</strong></div>\r\n<div>&nbsp;</div>\r\n<div><strong>と&nbsp;TO (1): "rằng..."</strong></div>\r\n<div>&nbsp;</div>\r\n<div>彼は徹夜で麻雀をやった末に、今朝に<strong>「マージャンは何も面白くない」と</strong>言った。</div>\r\n<div>Anh ta sau khi thức th&acirc;u đ&ecirc;m chơi mạt trược xong s&aacute;ng nay n&oacute;i rằng "Mạt trược kh&ocirc;ng c&oacute; g&igrave; hay".</div>\r\n<div>壁に<strong>「あなたが好き！」と</strong>書いてあります。&nbsp;</div>\r\n<div>Tr&ecirc;n tường c&oacute; viết chữ (rằng) "Em y&ecirc;u anh!".</div>\r\n<div>&nbsp;</div>\r\n<div>（彼＝かれ、徹夜 triệt dạ＝てつや、麻雀＝マージャン、末＝すえ、今朝＝けさ、何も＝なにも、面白い＝おもしろい）</div>\r\n<div>&nbsp;</div>\r\n<div><strong>と&nbsp;</strong><strong>TO (3): [nếu ...] th&igrave;...</strong></div>\r\n<div>&nbsp;</div>\r\n<div>右に<strong>曲がると</strong>郵便局があります。&nbsp;</div>\r\n<div>Rẽ sang phải sẽ c&oacute; bưu điện.</div>\r\n<div>&nbsp;</div>\r\n<div><strong>新聞によると</strong>、放射の雲は広がっているそうです。&nbsp;</div>\r\n<div>Theo b&aacute;o ch&iacute; th&igrave; m&acirc;y ph&oacute;ng xạ đang lan rộng.</div>\r\n<div>&nbsp;</div>\r\n<div>温度が<strong>高くなると</strong>、電気使用量が著しく上がる。&nbsp;</div>\r\n<div>Nhiệt độ tăng cao th&igrave; lượng sử dụng điện sẽ tăng đột biến.</div>\r\n<div>&nbsp;</div>\r\n<div>（右＝みぎ、曲がる＝まがる、郵便局＝ゆうびんきょく、新聞 t&acirc;n văn＝しんぶん、放射 ph&oacute;ng xạ＝ほうしゃ、雲 v&acirc;n＝くも、広がる＝ひろがる、温度＝おんど、高い＝たかい、電気 điện kh&iacute;＝でんき、使用量 sử dụng lượng＝しようりょう、著しく＝いちじるしく、上がる＝あがる）</div>\r\n<div>&nbsp;</div>\r\n<div><strong>と&nbsp;TO (2): [l&ecirc;n, trở n&ecirc;n,...] đến</strong></div>\r\n<div>&nbsp;</div>\r\n<div>TO v&agrave; NI đều chỉ sự tăng, sự trở n&ecirc;n một mức n&agrave;o đ&oacute;, v&iacute; dụ:</div>\r\n<div>温度は<strong>４０度に</strong>なった。</div>\r\n<div>Nhiệt độ đ&atilde; tăng&nbsp;<strong>l&ecirc;n</strong>&nbsp;40 độ.</div>\r\n<div>温度は<strong>４０度と</strong>なった。&nbsp;</div>\r\n<div>Nhiệt độ đ&atilde; tăng&nbsp;<strong>tới</strong>&nbsp;40 độ.</div>\r\n<div>Kare wa rippana jinbutsu ni natta.</div>\r\n<div>彼は<strong>立派な人物に</strong>なった。&nbsp;</div>\r\n<div>Anh ấy đ&atilde; trở th&agrave;nh một nh&acirc;n vật lớn lao.</div>\r\n<div>&nbsp;彼は<strong>立派な人物と</strong>なった。&nbsp;</div>\r\n<div>Anh ấy đ&atilde; trở n&ecirc;n một nh&acirc;n vật lớn lao.</div>\r\n<div>Nhưng điều kh&aacute;c biệt cơ bản l&agrave; "NI" chỉ việc l&ecirc;n đến mức n&agrave;o đ&oacute; v&agrave; dừng ở đ&oacute;, c&ograve;n TO th&igrave; chỉ qu&aacute; tr&igrave;nh c&ograve;n tiếp diễn nữa. V&iacute; dụ:</div>\r\n<div><span class="Apple-style-span">温度は４０度</span><strong><span class="Apple-style-span">に</span></strong><span class="Apple-style-span">なった。</span></div>\r\n<div>Nhiệt độ đ&atilde; tăng l&ecirc;n 40 độ.</div>\r\n<div>(Nhiệt độ tăng tới 40 độ v&agrave; đang dừng ở đ&oacute; chứ kh&ocirc;ng tăng th&ecirc;m.)</div>\r\n<div><span class="Apple-style-span">温度は４０度</span><strong><span class="Apple-style-span">と</span></strong><span class="Apple-style-span">なった。&nbsp;</span></div>\r\n<div>Nhiệt độ đ&atilde; tăng tới 40 độ.</div>\r\n<div>(Nghĩa l&agrave; nhiệt độ đ&atilde; tăng tới 40 độ v&agrave; sẽ c&ograve;n tăng tiếp.)</div>\r\n<div>&nbsp;</div>\r\n<div>（立派＝りっぱ、人物 nh&acirc;n vật＝じんぶつ）</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div><strong>CHỈ PHƯƠNG HƯỚNG - ĐỊA ĐIỂM: DE, NI, HE, WO KH&Aacute;C NHAU THẾ N&Agrave;O?</strong></div>\r\n<div>&nbsp;</div>\r\n<div><span class="Apple-style-span">中心公園</span><strong><span class="Apple-style-span">で</span></strong><span class="Apple-style-span">散歩しました。</span></div>\r\n<div>T&ocirc;i đi dạo&nbsp;<strong>ở</strong>&nbsp;c&ocirc;ng vi&ecirc;n trung t&acirc;m.</div>\r\n<div>(Nghĩa l&agrave; h&agrave;nh động đi dạo diễn ra b&ecirc;n trong c&ocirc;ng vi&ecirc;n.)</div>\r\n<div>&nbsp;</div>\r\n<div><span class="Apple-style-span">中心公園</span><strong><span class="Apple-style-span">に</span></strong><span class="Apple-style-span">散歩しました。</span></div>\r\n<div>T&ocirc;i đi dạo&nbsp;<strong>v&agrave;o</strong>&nbsp;c&ocirc;ng vi&ecirc;n trung t&acirc;m.<br />(T&ocirc;i đi dạo, v&agrave; đ&iacute;ch đến l&agrave; c&ocirc;ng vi&ecirc;n trung t&acirc;m.)<br /><br /><span class="Apple-style-span">中心公園</span><strong><span class="Apple-style-span">へ</span></strong><span class="Apple-style-span">散歩しました。</span></div>\r\n<div>T&ocirc;i đi dạo&nbsp;<strong>về ph&iacute;a</strong>&nbsp;c&ocirc;ng vi&ecirc;n trung t&acirc;m.<br />(Đi về ph&iacute;a c&ocirc;ng vi&ecirc;n, kh&ocirc;ng nhất thiết l&agrave; phải tới đ&oacute;, m&agrave; cũng c&oacute; thể v&agrave;o trong đ&oacute; hay đi vượt qua đ&oacute;)<br /><br /><br /><span class="Apple-style-span">中心公園</span><strong><span class="Apple-style-span">を</span></strong><span class="Apple-style-span">散歩しました。</span>&nbsp;<br />T&ocirc;i đi dạo&nbsp;<strong>qua</strong>&nbsp;c&ocirc;ng vi&ecirc;n trung t&acirc;m.<br />(Đi xuy&ecirc;n qua ra ngo&agrave;i c&ocirc;ng vi&ecirc;n.)<br />&nbsp;</div>\r\n<div>C&aacute;c bạn c&oacute; thể xem h&igrave;nh minh họa sau để dễ h&igrave;nh dung:<br />\r\n<div class="separator"><img src="http://1.bp.blogspot.com/-_iLwQJLrbjA/TgDhcYxoDPI/AAAAAAAAALY/gCc7We0A-h4/s1600/direct_nidehewo_saromalang.png" alt="" border="0" /></div>\r\n<div class="separator">Ch&uacute; &yacute; l&agrave; trường hợp HE ("về ph&iacute;a") đ&iacute;ch đến c&oacute; thể l&agrave; (1) Cửa h&agrave;ng kẹo (kashi-ya) - chưa đến c&ocirc;ng vi&ecirc;n, (2) Phun nước (funsui) - ở trong c&ocirc;ng vi&ecirc;n, hay (3) Tr&ograve; chơi - qua b&ecirc;n kia c&ocirc;ng vi&ecirc;n.</div>\r\n<div class="separator">&nbsp;</div>\r\n<div class="separator">Theo&nbsp;http://www.saromalang.com/</div>\r\n</div>', 'Phân biệt các trợ từ: へ HE (Ê), から KARA, を WO (Ô), と TO trong tiếng nhật', 'Phân biệt các trợ từ:  へ HE (Ê), から KARA, を WO (Ô), と TO trong tiếng nhật', 'images (1)_256727606.jpg', NULL, NULL, '2014-12-24 10:01:15', 4, 'tro-tu-trong-tieng-nhat-,-phan-4:-へ-he-(e),-から-kara,-を-wo-(o),-と-to'),
(30, 'Giáo trình Minna no nihongo ( Ebook và Audio )', 'Giáo trình Minna no nihongo ( Ebook và Audio )', '<p>Mediafire:</p>\r\n<p><a href="http://www.mediafire.com/download/c7mcb41ncpvwlk5/JML.Minna.No.Nihongo.I%26II.Audio.Textbook.part1.rar">http://www.mediafire.com/download/c7mcb41ncpvwlk5/JML.Minna.No.Nihongo.I%26II.Audio.Textbook.part1.rar</a></p>\r\n<p><a href="http://www.mediafire.com/download/c7mcb41ncpvwlk5/JML.Minna.No.Nihongo.I%26II.Audio.Textbook.part1.rar">http://www.mediafire.com/download/c7mcb41ncpvwlk5/JML.Minna.No.Nihongo.I%26II.Audio.Textbook.part2.rar</a></p>\r\n<p><a href="http://www.mediafire.com/download/c7mcb41ncpvwlk5/JML.Minna.No.Nihongo.I%26II.Audio.Textbook.part3.rar">http://www.mediafire.com/download/c7mcb41ncpvwlk5/JML.Minna.No.Nihongo.I%26II.Audio.Textbook.part3.rar</a></p>\r\n<p>&nbsp;</p>', 'Giáo trình Minna no Nihongo là bộ sách giáo trình uy tín và thông dụng nhất trong các trường dạy tiếng Nhật ở Việt Nam cũng như trên thế giới, dưới đây là toàn bộ phần Audio (chất lượng gốc) và Textbook (pdf) của 50 bài trong Giáo trình Minna I và II của trình độ Sơ cấp', 'Giáo trình Minna no Nihongo là bộ sách giáo trình uy tín và thông dụng nhất trong các trường dạy tiếng Nhật ở Việt Nam cũng như trên thế giới, dưới đây là toàn bộ phần Audio (chất lượng gốc) và Textbook (pdf) của 50 bài trong Giáo trình Minna I và II của trình độ Sơ cấp', 'mnn1_cover_1240477158.jpg', NULL, NULL, '2014-12-24 10:12:54', 4, 'giao-trinh-minna-no-nihongo-(-ebook-va-audio-)'),
(31, 'Từ vựng và ngữ pháp tiếng Việt', 'Từ vựng và ngữ pháp tiếng Việt', '<p>Mediafire:</p>\r\n<p><a href="http://www.mediafire.com/download/k0ljjy95a3g757j/JML.Minna.No.Nihongo.TuVung%26NguPhap.TiengViet.rar">http://www.mediafire.com/download/k0ljjy95a3g757j/JML.Minna.No.Nihongo.TuVung%26NguPhap.TiengViet.rar</a></p>\r\n<p>&nbsp;</p>', 'Từ vựng và ngữ pháp tiếng Việt', 'Từ vựng và ngữ pháp tiếng Việt', 'basis3elements_1015894291.png', NULL, NULL, '2014-12-24 10:15:53', 4, 'tu-vung-va-ngu-phap-tieng-viet');
INSERT INTO `pages` (`id`, `name`, `title`, `content`, `des`, `keyword`, `image_icon`, `image`, `mp3`, `time_on`, `author_id`, `url`) VALUES
(32, 'Danh sách 173 mẫu ngữ pháp N2&N3', 'Danh sách 173 mẫu ngữ pháp N2&N3', '<table style="height: 11173px;" width="755">\r\n<tbody>\r\n<tr>\r\n<td width="39">\r\n<p><strong>TT</strong></p>\r\n</td>\r\n<td width="232">\r\n<p><strong>Cấu tr&uacute;c</strong></p>\r\n</td>\r\n<td width="362">\r\n<p><strong>Nghĩa</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="39">\r\n<p><strong>1.</strong></p>\r\n</td>\r\n<td width="232">\r\n<p>～として（は）</p>\r\n<p>～としても</p>\r\n<p>～としての</p>\r\n</td>\r\n<td>\r\n<p>N&oacute;i về lập trường, tư c&aacute;ch, chủng loại</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>2.</strong></p>\r\n</td>\r\n<td>\r\n<p>～とともに</p>\r\n</td>\r\n<td>\r\n<p>C&ugrave;ng với.../C&ugrave;ng đồng thời với&hellip;/C&ugrave;ng với một sự thay đổi, một sự thay đổi kh&aacute;c diễn ra.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>3.</strong></p>\r\n</td>\r\n<td>\r\n<p>～において（は）</p>\r\n<p>～においても</p>\r\n<p>～における</p>\r\n</td>\r\n<td>\r\n<p>Ở; tại; trong; về việc; đối với -&gt; Chỉ địa điểm, thời gian</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>4.</strong></p>\r\n</td>\r\n<td>\r\n<p>～に応(おう)じて</p>\r\n<p>～に応じ</p>\r\n<p>～に応じた</p>\r\n</td>\r\n<td>\r\n<p>Phụ thuộc v&agrave;o, ứng với</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>5.</strong></p>\r\n</td>\r\n<td>\r\n<p>～にかわって</p>\r\n<p>～にかわり</p>\r\n</td>\r\n<td>\r\n<p>B&acirc;y giờ th&igrave; ~ kh&ocirc;ng..../Đại l&yacute;, đại diện</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>6.</strong></p>\r\n</td>\r\n<td>\r\n<p>～に比べて</p>\r\n<p>～に比べ</p>\r\n</td>\r\n<td>\r\n<p>So với....</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>7.</strong></p>\r\n</td>\r\n<td>\r\n<p>～にしたがって</p>\r\n<p>～にしたがい 従い</p>\r\n<p>したがい</p>\r\n</td>\r\n<td>\r\n<p>C&ugrave;ng với ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>8.</strong></p>\r\n</td>\r\n<td>\r\n<p>～につれて</p>\r\n<p>～につれ</p>\r\n</td>\r\n<td>\r\n<p>C&ugrave;ng với ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>9.</strong></p>\r\n</td>\r\n<td>\r\n<p>～に対して（は）</p>\r\n<p>～に対し</p>\r\n<p>～に対しても</p>\r\n<p>～に対する</p>\r\n</td>\r\n<td>\r\n<p>Về việc, đối với~ ; chỉ đối tượng, đối phương</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>10.</strong></p>\r\n</td>\r\n<td>\r\n<p>～について（は）</p>\r\n<p>～につき</p>\r\n<p>～についても</p>\r\n<p>～についての</p>\r\n</td>\r\n<td>\r\n<p>Về, li&ecirc;n quan đến&hellip;Biểu thị nội dung suy nghĩ, lời n&oacute;i.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>11.</strong></p>\r\n</td>\r\n<td>\r\n<p>～にとって（は）</p>\r\n<p>～にとっても</p>\r\n<p>～にとっての</p>\r\n</td>\r\n<td>\r\n<p>Đối với&hellip;Nh&igrave;n từ lập trường của ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>12.</strong></p>\r\n</td>\r\n<td>\r\n<p>～に伴って</p>\r\n<p>～に伴い</p>\r\n<p>～に伴う</p>\r\n</td>\r\n<td>\r\n<p>C&ugrave;ng với, đi k&egrave;m..../C&ugrave;ng với, xảy ra đồng thời.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>13.</strong></p>\r\n</td>\r\n<td>\r\n<p>～によって</p>\r\n<p>～により</p>\r\n<p>～による</p>\r\n<p>～によっては</p>\r\n</td>\r\n<td>\r\n<p>Nhờ v&agrave;o, do, bởi ~ Chỉ chủ thể của h&agrave;nh động/Chỉ l&yacute; do, nguy&ecirc;n nh&acirc;n/Chỉ phương thức, biện ph&aacute;p.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>14.</strong></p>\r\n</td>\r\n<td>\r\n<p>～によると</p>\r\n<p>～によれば</p>\r\n</td>\r\n<td>\r\n<p>Theo, y theo ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>15.</strong></p>\r\n</td>\r\n<td>\r\n<p>～を中心に（して）</p>\r\n<p>～を中心として</p>\r\n</td>\r\n<td>\r\n<p>Lấy ~ l&agrave;m trung t&acirc;m</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>16.</strong></p>\r\n</td>\r\n<td>\r\n<p>～を問わず</p>\r\n<p>～は問わず</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng kể, bất kể. Kh&ocirc;ng li&ecirc;n quan đến ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>17.</strong></p>\r\n</td>\r\n<td>\r\n<p>～をはじめ</p>\r\n<p>～をはじめとする</p>\r\n</td>\r\n<td>\r\n<p>C&aacute;ch n&oacute;i đưa ra một v&iacute; dụ ch&iacute;nh.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>18.</strong></p>\r\n</td>\r\n<td>\r\n<p>～をもとに</p>\r\n<p>～を元にして</p>\r\n</td>\r\n<td>\r\n<p>Lấy ~ l&agrave;m cơ sở, t&agrave;i liệu cho ph&aacute;n đo&aacute;n.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>19.</strong></p>\r\n</td>\r\n<td>\r\n<p>～上（に）</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng chỉ ~, th&ecirc;m v&agrave;o với ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>20.</strong></p>\r\n</td>\r\n<td>\r\n<p>～うちに</p>\r\n<p>～ないうちに</p>\r\n</td>\r\n<td>\r\n<p>Trong l&uacute;c&hellip;/Trong khoảng&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>21.</strong></p>\r\n</td>\r\n<td>\r\n<p>～おかげで</p>\r\n<p>～おかげだ</p>\r\n</td>\r\n<td>\r\n<p>Nhờ, do c&oacute;...</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>22.</strong></p>\r\n</td>\r\n<td>\r\n<p>～かわりに</p>\r\n</td>\r\n<td>\r\n<p>Thay v&igrave; kh&ocirc;ng ~/L&agrave;m đại l&yacute;, thay thế cho ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>23.</strong></p>\r\n</td>\r\n<td>\r\n<p>～くらい</p>\r\n<p>～ぐらい</p>\r\n<p>～くらいだ</p>\r\n<p>～ぐらいだ</p>\r\n</td>\r\n<td>\r\n<p>Biểu thị mức độ trạng th&aacute;i/Biểu thị mức độ nhẹ</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>24.</strong></p>\r\n</td>\r\n<td>\r\n<p>～最中に</p>\r\n<p>～最中だ</p>\r\n</td>\r\n<td>\r\n<p>Ngay trong l&uacute;c đang l&agrave;m việc g&igrave; đ&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>25.</strong></p>\r\n</td>\r\n<td>\r\n<p>～次第</p>\r\n</td>\r\n<td>\r\n<p>Ngay khi ~. Chỉ việc l&agrave;m ngay sau khi ~ kết thức.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>26.</strong></p>\r\n</td>\r\n<td>\r\n<p>&nbsp;～せいだ</p>\r\n<p>～せいで</p>\r\n<p>～せいか</p>\r\n</td>\r\n<td>\r\n<p>Tại v&igrave; ~ (Do nguy&ecirc;n nh&acirc;n đ&oacute; m&agrave; c&oacute; kết quả xấu)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>27.</strong></p>\r\n</td>\r\n<td>\r\n<p>～たとたん（に）</p>\r\n</td>\r\n<td>\r\n<p>Ngay sau ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>28.</strong></p>\r\n</td>\r\n<td>\r\n<p>～たび（に）</p>\r\n</td>\r\n<td>\r\n<p>Mỗi khi, mỗi dịp ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>29.</strong></p>\r\n</td>\r\n<td>\r\n<p>～て以来</p>\r\n</td>\r\n<td>\r\n<p>Suốt từ đ&oacute; về sau&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>30.</strong></p>\r\n</td>\r\n<td>\r\n<p>～とおり（に）</p>\r\n<p>～どおり（に）</p>\r\n</td>\r\n<td>\r\n<p>L&agrave;m giống như ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>31.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ところに</p>\r\n<p>～ところへ</p>\r\n<p>～ところを</p>\r\n</td>\r\n<td>\r\n<p>Đ&uacute;ng l&uacute;c, đ&uacute;ng địa điểm, đ&uacute;ng ho&agrave;n cảnh ấy&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>32.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ほど</p>\r\n<p>～ほどだ</p>\r\n<p>～ほどの</p>\r\n</td>\r\n<td>\r\n<p>Chừng, mức ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>33.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ばかりに</p>\r\n</td>\r\n<td>\r\n<p>Chỉ vỉ ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>34.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ものだから</p>\r\n</td>\r\n<td>\r\n<p>Tại v&igrave; ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>35.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ように</p>\r\n<p>～ような</p>\r\n</td>\r\n<td>\r\n<p>Biểu thị v&iacute; dụ, như l&agrave;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>36.</strong></p>\r\n</td>\r\n<td>\r\n<p>～一方だ</p>\r\n</td>\r\n<td>\r\n<p>Diễn tả việc xu hướng đ&oacute; ng&agrave;y c&agrave;ng tiếp diễn</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>37.</strong></p>\r\n</td>\r\n<td>\r\n<p>～おそれがある</p>\r\n</td>\r\n<td>\r\n<p>C&oacute; sự lo lắng l&agrave; ~, e l&agrave; ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>38.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ことになっている</p>\r\n</td>\r\n<td>\r\n<p>Biểu thị dự định, quy tắc&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>39.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ことはない</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng cần phải l&agrave;m ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>40.</strong></p>\r\n</td>\r\n<td>\r\n<p>～しかない</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng c&oacute; c&aacute;ch n&agrave;o kh&aacute;c ngo&agrave;i ~ ; Cần phải l&agrave;m ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>41.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ということだ</p>\r\n</td>\r\n<td>\r\n<p>Nghe thấy n&oacute;i l&agrave; ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>42.</strong></p>\r\n</td>\r\n<td>\r\n<p>～まい</p>\r\n<p>～まいか</p>\r\n</td>\r\n<td>\r\n<p>C&oacute; lẽ kh&ocirc;ng phải ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>43.</strong></p>\r\n</td>\r\n<td>\r\n<p>～わけがない</p>\r\n<p>～わけはない</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng c&oacute; nghĩa l&agrave; ~, kh&ocirc;ng chắc ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>44.</strong></p>\r\n</td>\r\n<td>\r\n<p>～わけにはいかない</p>\r\n<p>～わけにもいかない</p>\r\n</td>\r\n<td>\r\n<p>C&oacute; l&yacute; do n&ecirc;n ~ kh&ocirc;ng l&agrave;m được</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>45.</strong></p>\r\n</td>\r\n<td>\r\n<p>～から～にかけて</p>\r\n</td>\r\n<td>\r\n<p>Từ khoảng ~ đến ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>46.</strong></p>\r\n</td>\r\n<td>\r\n<p>たとえ～ても</p>\r\n<p>たとえ～でも</p>\r\n</td>\r\n<td>\r\n<p>V&iacute; dụ; nếu như; d&ugrave; cho; ngay cả nếu; tỉ như ~ th&igrave; vẫn ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>47.</strong></p>\r\n</td>\r\n<td>\r\n<p>～さえ～ば</p>\r\n</td>\r\n<td>\r\n<p>Chỉ cần c&oacute; ~ hay th&agrave;nh ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>48<strong>.</strong></p>\r\n</td>\r\n<td>\r\n<p>～も～ば～も</p>\r\n<p>～も～なら～も</p>\r\n</td>\r\n<td>\r\n<p>Cũng ~ cũng ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>49.</strong></p>\r\n</td>\r\n<td>\r\n<p>～やら～やら</p>\r\n</td>\r\n<td>\r\n<p>Liệt k&ecirc;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>50.</strong></p>\r\n</td>\r\n<td>\r\n<p>～だらけ</p>\r\n</td>\r\n<td>\r\n<p>~ c&oacute; đầy, được gắn đầy</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>51.</strong></p>\r\n</td>\r\n<td>\r\n<p>～っぽい</p>\r\n</td>\r\n<td>\r\n<p>Cảm thấy như l&agrave; ~ ; Thấy như l&agrave; ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>52.</strong></p>\r\n</td>\r\n<td>\r\n<p>～がたい</p>\r\n</td>\r\n<td>\r\n<p>Kh&oacute; l&agrave;m ~ ; gần như kh&ocirc;ng thể ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>53.</strong></p>\r\n</td>\r\n<td>\r\n<p>～がちだ</p>\r\n<p>～がちの</p>\r\n</td>\r\n<td>\r\n<p>Việc l&agrave;m ~ l&agrave; nhiều; ~ dễ l&agrave;m; c&oacute; chiều hướng ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>54.</strong></p>\r\n</td>\r\n<td>\r\n<p>～気味</p>\r\n</td>\r\n<td>\r\n<p>Hơi c&oacute; cảm gi&aacute;c l&agrave; ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>55.</strong></p>\r\n</td>\r\n<td>\r\n<p>～げ</p>\r\n</td>\r\n<td>\r\n<p>Chỉ trạng th&aacute;i cảm nhận được về t&acirc;m trạng của một người. Vẻ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>56.</strong></p>\r\n</td>\r\n<td>\r\n<p>～かけだ</p>\r\n<p>～かけの</p>\r\n<p>～かける</p>\r\n</td>\r\n<td>\r\n<p>Chỉ trạng th&aacute;i giữa chừng, mới bắt đầu ~, chưa kết th&uacute;c ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>57.</strong></p>\r\n</td>\r\n<td>\r\n<p>～きる</p>\r\n<p>～きれる</p>\r\n<p>～きれない</p>\r\n</td>\r\n<td>\r\n<p>Ho&agrave;n to&agrave;n, hết cả ~ / đến cuối c&ugrave;ng c&oacute; thể, kh&ocirc;ng thể ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>58.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ぬく</p>\r\n</td>\r\n<td>\r\n<p>~đến c&ugrave;ng. Cố gắng đến cuối c&ugrave;ng l&agrave;m ~ / L&agrave;m ~ một c&aacute;ch phi thường.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>59.</strong></p>\r\n</td>\r\n<td>\r\n<p>～こそ</p>\r\n<p>～からこそ</p>\r\n</td>\r\n<td>\r\n<p>Thể hiện &yacute; nhấn mạnh</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>60.</strong></p>\r\n</td>\r\n<td>\r\n<p>～さえ</p>\r\n<p>～でさえ</p>\r\n</td>\r\n<td>\r\n<p>Lấy c&aacute;i v&iacute; dụ cực đoan, đ&aacute;o để để diễn đạt những thứ kh&aacute;c (ở mức độ thấp hơn) l&agrave; đương nhi&ecirc;n.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>61.</strong></p>\r\n</td>\r\n<td>\r\n<p>～など</p>\r\n<p>～なんか</p>\r\n<p>～なんて</p>\r\n</td>\r\n<td>\r\n<p>D&ugrave;ng khi muốn n&ecirc;u l&ecirc;n một v&iacute; dụ để muốn l&agrave;m nhẹ, đ&aacute;nh gi&aacute; thấp.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>62.</strong></p>\r\n</td>\r\n<td>\r\n<p>～に関して（は）</p>\r\n<p>～に関しても</p>\r\n<p>～に関する</p>\r\n</td>\r\n<td>\r\n<p>Li&ecirc;n quan đến, về ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>63.</strong></p>\r\n</td>\r\n<td>\r\n<p>～に加えて</p>\r\n<p>～に加え</p>\r\n</td>\r\n<td>\r\n<p>Ngo&agrave;i ra; th&ecirc;m v&agrave;o đ&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>64.</strong></p>\r\n</td>\r\n<td>\r\n<p>～に答えて</p>\r\n<p>～にこたえ</p>\r\n<p>～にこたえる</p>\r\n<p>～にこたえた</p>\r\n</td>\r\n<td>\r\n<p>Ứng với, đối với ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>65.</strong></p>\r\n</td>\r\n<td>\r\n<p>～に沿(そ)って</p>\r\n<p>～に沿い</p>\r\n<p>～に沿う</p>\r\n<p>～に沿った</p>\r\n</td>\r\n<td>\r\n<p>Sở dĩ, v&igrave; vậy, do vậy, theo ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>66.</strong></p>\r\n</td>\r\n<td>\r\n<p>～に反して</p>\r\n<p>～に反し</p>\r\n<p>～に反する</p>\r\n<p>～に反した</p>\r\n</td>\r\n<td>\r\n<p>Tr&aacute;i ngược với; tương phản với</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>67.</strong></p>\r\n</td>\r\n<td>\r\n<p>～に基づいて</p>\r\n<p>～に基づき</p>\r\n<p>～に基づく</p>\r\n<p>～に基づいた</p>\r\n</td>\r\n<td>\r\n<p>Lấy ~ l&agrave;m cơ sở, căn cứ</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>68.</strong></p>\r\n</td>\r\n<td>\r\n<p>～にわたって</p>\r\n<p>～に渡り</p>\r\n<p>～にわたる</p>\r\n<p>～にわたった</p>\r\n</td>\r\n<td>\r\n<p>Biểu thị sự trải r&ocirc;ng tr&ecirc;n phạm vi to&agrave;n thể mang t&iacute;nh thời gian, kh&ocirc;ng gian.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>69.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ばかりか</p>\r\n<p>～ばかりでなく</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng chỉ ~, ngo&agrave;i ra c&ograve;n&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>70.</strong></p>\r\n</td>\r\n<td>\r\n<p>～はもとより</p>\r\n<p>～はもちろん</p>\r\n</td>\r\n<td>\r\n<p>~ th&igrave; đương nhi&ecirc;n đến mức kh&ocirc;ng cần n&oacute;i.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>71.</strong></p>\r\n</td>\r\n<td>\r\n<p>～もかまわず</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng bận t&acirc;m đến ~ / dửng dưng kh&ocirc;ng đếm xỉa đến ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>72.</strong></p>\r\n</td>\r\n<td>\r\n<p>～をこめて</p>\r\n</td>\r\n<td>\r\n<p>Gửi gắm t&acirc;m tư, t&igrave;nh cảm v&agrave;o ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>73.</strong></p>\r\n</td>\r\n<td>\r\n<p>～を通じて</p>\r\n<p>～を通して</p>\r\n</td>\r\n<td>\r\n<p>Trong khoảng thời gian đ&oacute; từ đầu đến cuối, li&ecirc;n tục.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>74.</strong></p>\r\n</td>\r\n<td>\r\n<p>～をめぐって</p>\r\n<p>～をめぐる</p>\r\n</td>\r\n<td>\r\n<p>N&oacute;i về quan hệ li&ecirc;n quan đến trung t&acirc;m l&agrave; ~, quanh~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>75.</strong></p>\r\n</td>\r\n<td>\r\n<p>～あまり</p>\r\n</td>\r\n<td>\r\n<p>V&igrave; ~ bất thường n&ecirc;n&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>76.</strong></p>\r\n</td>\r\n<td>\r\n<p>～一方</p>\r\n<p>～一方で（は）</p>\r\n</td>\r\n<td>\r\n<p>Mặt kh&aacute;c, tr&aacute;i lại&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>77.</strong></p>\r\n</td>\r\n<td>\r\n<p>～上で（は）</p>\r\n<p>～上の</p>\r\n<p>～上でも</p>\r\n<p>～上での</p>\r\n</td>\r\n<td>\r\n<p>Xong ~ rồi&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>78.</strong></p>\r\n</td>\r\n<td>\r\n<p>～限り（は）</p>\r\n<p>～かぎりでは</p>\r\n<p>～ないかぎり（は）</p>\r\n</td>\r\n<td>\r\n<p>Giới hạn, hạn chế, hạn trong ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>79.</strong></p>\r\n</td>\r\n<td>\r\n<p>～（か）と思うと</p>\r\n<p>～（か）と思ったら</p>\r\n</td>\r\n<td>\r\n<p>L&agrave;m xong ~ ngay lập tức&hellip;, vừa thấy l&agrave; ~ th&igrave;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>80.</strong></p>\r\n</td>\r\n<td>\r\n<p>～か～ないかのうちに</p>\r\n</td>\r\n<td>\r\n<p>Việc n&agrave;y chưa qua, việc kh&aacute;c đ&atilde; xảy ra.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>81.</strong></p>\r\n</td>\r\n<td>\r\n<p>～からいうと</p>\r\n<p>～からいえば</p>\r\n<p>～からいって</p>\r\n</td>\r\n<td>\r\n<p>Nh&igrave;n từ quan điểm ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>82.</strong></p>\r\n</td>\r\n<td>\r\n<p>～からといって</p>\r\n</td>\r\n<td>\r\n<p>Chỉ v&igrave; l&yacute; do ~ ; tuy nhi&ecirc;n; tuy thế m&agrave;; kh&ocirc;ng nhất thiết; chỉ v&igrave;; với l&yacute; do l&agrave;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>83.</strong></p>\r\n</td>\r\n<td>\r\n<p>～から見ると</p>\r\n<p>～から見れば</p>\r\n<p>～から見て（も）</p>\r\n</td>\r\n<td>\r\n<p>Nh&igrave;n từ ~ , x&eacute;t theo ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>84.</strong></p>\r\n</td>\r\n<td>\r\n<p>～きり（だ）</p>\r\n</td>\r\n<td>\r\n<p>Chỉ c&oacute; ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>85.</strong></p>\r\n</td>\r\n<td>\r\n<p>～くせに</p>\r\n</td>\r\n<td>\r\n<p>D&ugrave;; mặc dầu; lại c&ograve;n; ngay cả ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>86.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ことから</p>\r\n</td>\r\n<td>\r\n<p>Bởi v&igrave; ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>87.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ことに（は）</p>\r\n</td>\r\n<td>\r\n<p>Đặc biệt l&agrave;; một c&aacute;ch đặc biệt; đặc biệt</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>88.</strong></p>\r\n</td>\r\n<td>\r\n<p>～上（は）</p>\r\n<p>～上も</p>\r\n<p>～上の</p>\r\n</td>\r\n<td>\r\n<p>X&eacute;t từ quan điểm~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>89.</strong></p>\r\n</td>\r\n<td>\r\n<p>&nbsp;～た末（に）</p>\r\n<p>～た末の</p>\r\n<p>～の末（に）</p>\r\n</td>\r\n<td>\r\n<p>Rất l&acirc;u sau khi ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>90.</strong></p>\r\n</td>\r\n<td>\r\n<p>～たところ</p>\r\n</td>\r\n<td>\r\n<p>Sau ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>91.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ついでに</p>\r\n</td>\r\n<td>\r\n<p>Nh&acirc;n tiện; tiện thể</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>92.</strong></p>\r\n</td>\r\n<td>\r\n<p>～というと</p>\r\n<p>～といえば</p>\r\n</td>\r\n<td>\r\n<p>Lấy l&ecirc;n một v&iacute; dụ l&agrave;m đại diện li&ecirc;n quan đến chủ đề ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>93.</strong></p>\r\n</td>\r\n<td>\r\n<p>～といったら</p>\r\n</td>\r\n<td>\r\n<p>N&oacute;i về cảm x&uacute;c th&aacute;n phục, ngạc nhi&ecirc;n, ngo&agrave;i mong đợi</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>94.</strong></p>\r\n</td>\r\n<td>\r\n<p>～というより</p>\r\n</td>\r\n<td>\r\n<p>L&agrave; ~ , nhưng c&aacute;i n&oacute;i đằng sau mới l&agrave; th&iacute;ch đ&aacute;ng hơn.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>95.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ば～ほど</p>\r\n</td>\r\n<td>\r\n<p>C&agrave;ng ~ c&agrave;ng ~ .</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>96.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ほど</p>\r\n</td>\r\n<td>\r\n<p>Mặt n&agrave;y c&oacute; mức độ thay đổi, c&ugrave;ng l&uacute;c một mặt kh&aacute;c cũng thay đổi mức độ.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>97.</strong></p>\r\n</td>\r\n<td>\r\n<p>～かのようだ</p>\r\n<p>～かのような</p>\r\n<p>～かのように</p>\r\n</td>\r\n<td>\r\n<p>thực tế th&igrave; kh&ocirc;ng phải vậy nhưng c&oacute; vẻ như l&agrave; ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>98.</strong></p>\r\n</td>\r\n<td>\r\n<p>～つつある</p>\r\n</td>\r\n<td>\r\n<p>Dần dần đang</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>99.</strong></p>\r\n</td>\r\n<td>\r\n<p>～てたまらない</p>\r\n<p>～てしようがない</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng thể k&igrave;m n&eacute;n được.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>100.</strong></p>\r\n</td>\r\n<td>\r\n<p>～てならない</p>\r\n</td>\r\n<td>\r\n<p>~ một c&aacute;ch phi thường</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>101.</strong></p>\r\n</td>\r\n<td>\r\n<p>～にきまっている</p>\r\n</td>\r\n<td>\r\n<p>Nghĩ ~ l&agrave; nhất định, đương nhi&ecirc;n</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>102.</strong></p>\r\n</td>\r\n<td>\r\n<p>～にすぎない</p>\r\n</td>\r\n<td>\r\n<p>Chỉ, kh&ocirc;ng nhiều hơn ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>103.</strong></p>\r\n</td>\r\n<td>\r\n<p>～に相違ない</p>\r\n</td>\r\n<td>\r\n<p>Chắc đ&uacute;ng l&agrave; ~, Nghĩ ~ l&agrave; kh&ocirc;ng sai được</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>104.</strong></p>\r\n</td>\r\n<td>\r\n<p>～に違いない</p>\r\n</td>\r\n<td>\r\n<p>Nghĩ ch&iacute;nh x&aacute;c l&agrave; ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>105.</strong></p>\r\n</td>\r\n<td>\r\n<p>～べき</p>\r\n<p>～べきだ</p>\r\n<p>～べきではない</p>\r\n</td>\r\n<td>\r\n<p>L&agrave;m như thế l&agrave; đương nhi&ecirc;n, n&ecirc;n l&agrave;m ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>106.</strong></p>\r\n</td>\r\n<td>\r\n<p>～（より）ほか（は）ない</p>\r\n<p>～ほかしかたがない</p>\r\n</td>\r\n<td>\r\n<p>Chả c&oacute; c&aacute;ch n&agrave;o kh&aacute;c l&agrave; ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>107.</strong></p>\r\n</td>\r\n<td>\r\n<p>～向きだ</p>\r\n<p>～向きに</p>\r\n<p>～向きの</p>\r\n</td>\r\n<td>\r\n<p>Vừa đẹp với ~, th&iacute;ch hợp với~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>108.</strong></p>\r\n</td>\r\n<td>\r\n<p>～向けだ</p>\r\n<p>～向けに</p>\r\n<p>～向けの</p>\r\n</td>\r\n<td>\r\n<p>Để th&iacute;ch hợp với ~ m&agrave; đ&atilde; đặc biệt tạo ra.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>109.</strong></p>\r\n</td>\r\n<td>\r\n<p>～もの（です）か</p>\r\n</td>\r\n<td>\r\n<p>Quyết kh&ocirc;ng ~ (&Yacute; phủ định mạnh)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>110.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ものだ</p>\r\n<p>～ものではない</p>\r\n</td>\r\n<td>\r\n<p>Thể hiện cảm x&uacute;c mạnh, cảm th&aacute;n, thở d&agrave;i</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>111.</strong></p>\r\n</td>\r\n<td>\r\n<p>～わけだ</p>\r\n</td>\r\n<td>\r\n<p>V&igrave; c&oacute; l&yacute; do n&ecirc;n muốn n&oacute;i như thế l&agrave; đương nhi&ecirc;n.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>112.</strong></p>\r\n</td>\r\n<td>\r\n<p>～わけではない</p>\r\n<p>～わけでもない</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng nhất thiết l&agrave; ~, kh&ocirc;ng phải l&agrave; ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>113.</strong></p>\r\n</td>\r\n<td>\r\n<p>～っけ</p>\r\n</td>\r\n<td>\r\n<p>Đang nhớ ra, nhớ lại v&agrave; muốn x&aacute;c nhận lại</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>114.</strong></p>\r\n</td>\r\n<td>\r\n<p>～とか</p>\r\n</td>\r\n<td>\r\n<p>Nghe n&oacute;i l&agrave; ~ (chỉ th&ocirc;ng tin mang t&iacute;nh gi&aacute;n tiếp)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>115.</strong></p>\r\n</td>\r\n<td>\r\n<p>～どころではない</p>\r\n<p>～どころではなく</p>\r\n</td>\r\n<td>\r\n<p>C&oacute; l&yacute; do, chịu kh&ocirc;ng thể ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>116.</strong></p>\r\n</td>\r\n<td>\r\n<p>～からして</p>\r\n</td>\r\n<td>\r\n<p>Đưa ra một v&iacute; dụ, nghĩ l&agrave; những c&aacute;i kh&aacute;c l&agrave; đương nhi&ecirc;n. Ngay cả</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>117.</strong></p>\r\n</td>\r\n<td>\r\n<p>～からすると</p>\r\n<p>～からすれば</p>\r\n</td>\r\n<td>\r\n<p>Nh&igrave;n từ lập trường của ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>118.</strong></p>\r\n</td>\r\n<td>\r\n<p>～からには</p>\r\n<p>～からは</p>\r\n</td>\r\n<td>\r\n<p>Chừng n&agrave;o ~ ; v&igrave; l&agrave; ~, đương nhi&ecirc;n</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>119.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ことだから</p>\r\n</td>\r\n<td>\r\n<p>Tr&igrave;nh b&agrave;y l&yacute; do m&agrave; mọi người đều biết, theo sau l&agrave; c&acirc;u suy luận.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>120.</strong></p>\r\n</td>\r\n<td>\r\n<p>～だけ</p>\r\n<p>～だけあって</p>\r\n<p>～だけに</p>\r\n<p>～だけの</p>\r\n</td>\r\n<td>\r\n<p>Ph&ugrave; hợp với, quả đ&uacute;ng l&agrave;, đ&uacute;ng l&agrave;&hellip;.c&oacute; kh&aacute;c</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>121.</strong></p>\r\n</td>\r\n<td>\r\n<p>～にあたって</p>\r\n<p>～に当たり</p>\r\n</td>\r\n<td>\r\n<p>Trong khi&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>122.</strong></p>\r\n</td>\r\n<td>\r\n<p>～にかけては</p>\r\n<p>～にかけても</p>\r\n</td>\r\n<td>\r\n<p>Nếu n&oacute;i về&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>123.</strong></p>\r\n</td>\r\n<td>\r\n<p>～に際して</p>\r\n<p>～に際し</p>\r\n<p>～に際しての</p>\r\n</td>\r\n<td>\r\n<p>Khi bắt đầu&hellip;, Khi đang&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>124.</strong></p>\r\n</td>\r\n<td>\r\n<p>～に先立って</p>\r\n<p>～に先立ち</p>\r\n<p>～に先立つ</p>\r\n</td>\r\n<td>\r\n<p>Trước khi...</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>125.</strong></p>\r\n</td>\r\n<td>\r\n<p>～にしたら</p>\r\n<p>～にすれば</p>\r\n<p>～にしても</p>\r\n</td>\r\n<td>\r\n<p>Nếu n&oacute;i tr&ecirc;n lập trường&hellip;, nh&igrave;n từ suy nghĩ của&hellip;, đối với&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>126.</strong></p>\r\n</td>\r\n<td>\r\n<p>～につき</p>\r\n</td>\r\n<td>\r\n<p>V&igrave;&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>127.</strong></p>\r\n</td>\r\n<td>\r\n<p>～につけ</p>\r\n<p>～につけて（は）</p>\r\n<p>～につけても</p>\r\n</td>\r\n<td>\r\n<p>Mỗi lần l&agrave;m&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>128.</strong></p>\r\n</td>\r\n<td>\r\n<p>～のもとで</p>\r\n<p>～のもとに</p>\r\n</td>\r\n<td>\r\n<p>Dưới&hellip;(Trong phạm vi ảnh hưởng, trong điều kiện&hellip;m&agrave; một việc được tiến h&agrave;nh)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>129.</strong></p>\r\n</td>\r\n<td>\r\n<p>～はともかく（として）</p>\r\n</td>\r\n<td>\r\n<p>Tạm thời kh&ocirc;ng nghĩ đến&hellip;, Tạm thời g&aacute;c chuyện&hellip;sang một b&ecirc;n</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>130.</strong></p>\r\n</td>\r\n<td>\r\n<p>～をきっかけに（して）</p>\r\n<p>～をきっかけとして</p>\r\n</td>\r\n<td>\r\n<p>Biểu thị rằng từ một việc ngẫu nhi&ecirc;n m&agrave; c&oacute; g&igrave; đ&oacute; bắt đầu, thay đổi.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>131.</strong></p>\r\n</td>\r\n<td>\r\n<p>～を契機に（して）</p>\r\n<p>～を契機として</p>\r\n</td>\r\n<td>\r\n<p>nh&acirc;n cơ hội ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>132.</strong></p>\r\n</td>\r\n<td>\r\n<p>～を～として</p>\r\n<p>～を～とする</p>\r\n<p>～を～とした</p>\r\n</td>\r\n<td>\r\n<p>Lấy ~ l&agrave;m ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>133.</strong></p>\r\n</td>\r\n<td>\r\n<p>～あげく（に）</p>\r\n</td>\r\n<td>\r\n<p>Sau ~ rốt cuộc l&agrave; ...</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>134.</strong></p>\r\n</td>\r\n<td>\r\n<p>～以上（は）</p>\r\n</td>\r\n<td>\r\n<p>Chừng n&agrave;o ~ ; đ&atilde; l&agrave; ~ th&igrave;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>135.</strong></p>\r\n</td>\r\n<td>\r\n<p>～上は</p>\r\n</td>\r\n<td>\r\n<p>Chừng n&agrave;o ~ ; đ&atilde; l&agrave; ~ th&igrave;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>136.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ことなく</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng c&oacute; ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>137.</strong></p>\r\n</td>\r\n<td>\r\n<p>～際（は）</p>\r\n<p>～際に</p>\r\n</td>\r\n<td>\r\n<p>Thời gian, trường hợp</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>138.</strong></p>\r\n</td>\r\n<td>\r\n<p>～つつ</p>\r\n<p>～つつも</p>\r\n</td>\r\n<td>\r\n<p>Đang, trong khi ~/D&ugrave; l&agrave; ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>139.</strong></p>\r\n</td>\r\n<td>\r\n<p>～てからでないと</p>\r\n<p>～てからでなければ</p>\r\n</td>\r\n<td>\r\n<p>Nếu kh&ocirc;ng thực hiện c&aacute;i n&oacute;i đằng trước th&igrave; điều đằng sau cũng kh&ocirc;ng thực hiện.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>140.</strong></p>\r\n</td>\r\n<td>\r\n<p>～といっても</p>\r\n</td>\r\n<td>\r\n<p>D&ugrave; l&agrave; ~ nhưng ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>141.</strong></p>\r\n</td>\r\n<td>\r\n<p>～どころか</p>\r\n</td>\r\n<td>\r\n<p>D&ugrave;ng nhấn mạnh một sự phản đối trực diện, điều n&oacute;i trước l&agrave; hiển nhi&ecirc;n.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>142.</strong></p>\r\n</td>\r\n<td>\r\n<p>～としたら</p>\r\n<p>～とすれば</p>\r\n</td>\r\n<td>\r\n<p>Nếu m&agrave; (giả định)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>143.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ないことには</p>\r\n</td>\r\n<td>\r\n<p>Nếu kh&ocirc;ng ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>144.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ながら</p>\r\n</td>\r\n<td>\r\n<p>Ấy thế m&agrave;, tuy nhi&ecirc;n ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>145.</strong></p>\r\n</td>\r\n<td>\r\n<p>～にしては</p>\r\n</td>\r\n<td>\r\n<p>So với điều được đương nhi&ecirc;n nghĩ đến từ đ&oacute; th&igrave; kh&aacute;c</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>146.</strong></p>\r\n</td>\r\n<td>\r\n<p>～にしろ</p>\r\n<p>～に（も）せよ</p>\r\n<p>～にしても</p>\r\n</td>\r\n<td>\r\n<p>Ngay cả nếu, tỉ như ~, vẫn ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>147.</strong></p>\r\n</td>\r\n<td>\r\n<p>～にかかわらず</p>\r\n<p>～に（は）かかわりなく</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng li&ecirc;n quan đến~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>148.</strong></p>\r\n</td>\r\n<td>\r\n<p>～にもかかわらず</p>\r\n</td>\r\n<td>\r\n<p>D&ugrave; cho, dẫu cho ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>149.</strong></p>\r\n</td>\r\n<td>\r\n<p>&nbsp;～ぬきで（は）</p>\r\n<p>～ぬきに（は）</p>\r\n<p>～ぬきの</p>\r\n<p>～をぬきにして（は）</p>\r\n<p>～はぬきにして</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng c&oacute; ~ (ở trạng th&aacute;i kh&ocirc;ng c&oacute; ~ hoặc lược bớt ~)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>150.</strong></p>\r\n</td>\r\n<td>\r\n<p>～のみならず</p>\r\n</td>\r\n<td>\r\n<p>Như, cũng như, v&agrave; c&ograve;n th&ecirc;m ~ ; Kh&ocirc;ng chỉ, m&agrave; c&ograve;n~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>151.</strong></p>\r\n</td>\r\n<td>\r\n<p>～反面</p>\r\n<p>～半面</p>\r\n</td>\r\n<td>\r\n<p>Mặt kh&aacute;c, mặt tr&aacute;i</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>152.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ものなら</p>\r\n</td>\r\n<td>\r\n<p>Nếu ~ (d&ugrave;ng khi hi vọng v&agrave;o một điều kh&oacute; thực hiện hoặc l&agrave; &iacute;t khả năng thực hiện &ndash; c&aacute;ch n&oacute;i lạnh l&ugrave;ng)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>153.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ものの</p>\r\n</td>\r\n<td>\r\n<p>D&ugrave; l&agrave; ~ ; n&oacute;i ~ l&agrave; đương nhi&ecirc;n nhưng m&agrave; ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>154.</strong></p>\r\n</td>\r\n<td>\r\n<p>～わりに（は）</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng ph&ugrave; hợp, kh&ocirc;ng xứng với ~/Trong tỉ lệ, so với ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>155.</strong></p>\r\n</td>\r\n<td>\r\n<p>～（よ）うではないか</p>\r\n<p>～（よ）うじゃないか</p>\r\n</td>\r\n<td>\r\n<p>H&atilde;y ~ (k&ecirc;u gọi mạnh mẽ)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>156.</strong></p>\r\n</td>\r\n<td>\r\n<p>～得る</p>\r\n<p>～得ない</p>\r\n</td>\r\n<td>\r\n<p>C&oacute; thể/kh&ocirc;ng thể ~. N&oacute;i về t&iacute;nh khả thi</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>157.</strong></p>\r\n</td>\r\n<td>\r\n<p>～かねない</p>\r\n</td>\r\n<td>\r\n<p>Lo ngại l&agrave; ~ ; C&oacute; lẽ ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>158.</strong></p>\r\n</td>\r\n<td>\r\n<p>～かねる</p>\r\n</td>\r\n<td>\r\n<p>Muốn l&agrave;m ~ nhưng kh&ocirc;ng thể, ~ l&agrave; kh&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>159.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ことか</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng biết thế n&agrave;o đ&acirc;y ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>160.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ことだ</p>\r\n</td>\r\n<td>\r\n<p>D&ugrave;ng khi khuy&ecirc;n người kh&aacute;c rằng việc đ&oacute; l&agrave; quan trọng</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>161.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ざるを得ない</p>\r\n</td>\r\n<td>\r\n<p>D&ugrave; thế n&agrave;o, cũng phải&hellip;; Kh&ocirc;ng thể kh&ocirc;ng&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>162.</strong></p>\r\n</td>\r\n<td>\r\n<p>～次第だ</p>\r\n<p>～次第で（は）</p>\r\n</td>\r\n<td>\r\n<p>V&igrave;&hellip;(（)Chỉ nguồn căn, l&yacute; do; c&aacute;ch d&ugrave;ng khi muốn n&oacute;i đ&atilde; c&oacute; kết quả l&agrave;&hellip;)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>163.</strong></p>\r\n</td>\r\n<td>\r\n<p>～っこない</p>\r\n</td>\r\n<td>\r\n<p>Nhất định kh&ocirc;ng&hellip;, Tuyệt đối kh&ocirc;ng&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>164.</strong></p>\r\n</td>\r\n<td>\r\n<p>～というものだ</p>\r\n</td>\r\n<td>\r\n<p>Biểu thị c&aacute;ch nghĩ v&agrave; cảm gi&aacute;c của người n&oacute;i rằng việc đ&oacute; l&agrave; đương nhi&ecirc;n</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>165.</strong></p>\r\n</td>\r\n<td>\r\n<p>～というものではない</p>\r\n<p>～というものでもない</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng thể n&oacute;i hết l&agrave;&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>166.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ないことはない</p>\r\n<p>～ないこともない</p>\r\n</td>\r\n<td>\r\n<p>Cũng c&oacute; khả năng l&agrave;kh&ocirc;ng phải l&agrave; kh&ocirc;ng thể&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>167.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ないではいられない</p>\r\n<p>～ずにはいられない</p>\r\n</td>\r\n<td>\r\n<p>D&ugrave; thế n&agrave;o cũng đ&atilde; l&agrave;m&hellip; ( D&ugrave; thế n&agrave;o cũng kh&ocirc;ng thể chịu đựng, D&ugrave;ng khi muốn n&oacute;i tự nhi&ecirc;n m&agrave; th&agrave;nh như thế)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>168.</strong></p>\r\n</td>\r\n<td>\r\n<p>～に限る</p>\r\n<p>～に限り</p>\r\n<p>～に限って</p>\r\n</td>\r\n<td>\r\n<p>Giới hạn ở&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>169.</strong></p>\r\n</td>\r\n<td>\r\n<p>～に限らず</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng chỉ&hellip;m&agrave; cũng&hellip;, Kh&ocirc;ng những&hellip;m&agrave; c&ograve;n&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>170.</strong></p>\r\n</td>\r\n<td>\r\n<p>～にほかならないまさに～だ・それ以外でない</p>\r\n</td>\r\n<td>\r\n<p>Ch&iacute;nh l&agrave;&hellip;, Kh&ocirc;ng g&igrave; kh&aacute;c l&agrave;&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>171.</strong></p>\r\n</td>\r\n<td>\r\n<p>～もの</p>\r\n</td>\r\n<td>\r\n<p>Bởi v&igrave;&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>172.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ものがある</p>\r\n</td>\r\n<td>\r\n<p>C&oacute; cảm gi&aacute;c&hellip;, C&oacute; thể c&agrave;m gi&aacute;c như l&agrave;&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>173.</strong></p>\r\n</td>\r\n<td>\r\n<p>～ようがない</p>\r\n<p>～ようもない</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng c&ograve;n phương ph&aacute;p n&agrave;o, kh&ocirc;ng c&ograve;n c&aacute;ch n&agrave;o, kh&ocirc;ng thể</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>- See more at: http://old.lophoctiengnhat.com/index.php?p=chitietbai&amp;id=1766#sthash.etnD5org.dpuf</p>', 'Danh sách 173 mẫu ngữ pháp N2&N3.\r\nMới đầu học chắc hẳn ai trong chúng ta cũng sẽ thấy Ngữ pháp trong tiếng Nhật la một phần khó, mong rằng bài viết này sẽ giúp mọi người thấy đơn giản hơn phần nào :).\r\n皆さん、がんばれ。', 'Danh sách 173 mẫu ngữ pháp N2&N3.\r\nMới đầu học chắc hẳn ai trong chúng ta cũng sẽ thấy Ngữ pháp trong tiếng Nhật la một phần khó, mong rằng bài viết này sẽ giúp mọi người thấy đơn giản hơn phần nào :).\r\n皆さん、がんばれ。', '1356594988_news_374_590094816.jpg', NULL, NULL, '2014-12-24 10:25:10', 4, 'danh-sach-173-mau-ngu-phap-n2&n3');
INSERT INTO `pages` (`id`, `name`, `title`, `content`, `des`, `keyword`, `image_icon`, `image`, `mp3`, `time_on`, `author_id`, `url`) VALUES
(33, 'Tổng hợp Ngữ pháp N3', 'Tổng hợp Ngữ pháp N3', '<table width="750">\r\n<tbody>\r\n<tr>\r\n<td width="24">\r\n<p><strong>TT</strong></p>\r\n</td>\r\n<td width="364">\r\n<p><strong>Cấu tr&uacute;c</strong></p>\r\n</td>\r\n<td>\r\n<p><strong>&Yacute; nghĩa</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>01</p>\r\n</td>\r\n<td>\r\n<p>〜たばかり</p>\r\n</td>\r\n<td>\r\n<p>Vừa mới (l&agrave;m g&igrave;)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>02</p>\r\n</td>\r\n<td>\r\n<p>ようになる</p>\r\n</td>\r\n<td>\r\n<p>Trở n&ecirc;n, trở th&agrave;nh</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>03</p>\r\n</td>\r\n<td>\r\n<p>ことになる</p>\r\n</td>\r\n<td>\r\n<p>Được quyết định l&agrave;, được sắp xếp l&agrave;, trở n&ecirc;n</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>04</p>\r\n</td>\r\n<td>\r\n<p>とても〜ない</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng thể n&agrave;o m&agrave;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>05</p>\r\n</td>\r\n<td>\r\n<p>〜らしい</p>\r\n</td>\r\n<td>\r\n<p>C&oacute; vẻ l&agrave;, dường như l&agrave;, nghe n&oacute;i l&agrave;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>06</p>\r\n</td>\r\n<td>\r\n<p>〜てはじめて</p>\r\n</td>\r\n<td>\r\n<p>Rồi th&igrave; mới, sau khi&hellip;rồi th&igrave; mới&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>07</p>\r\n</td>\r\n<td>\r\n<p>～ないで</p>\r\n</td>\r\n<td>\r\n<p>Xin đừng ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>08</p>\r\n</td>\r\n<td>\r\n<p>～によって</p>\r\n</td>\r\n<td>\r\n<p>Do, v&igrave;, bởi, t&ugrave;y v&agrave;o</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>09</p>\r\n</td>\r\n<td>\r\n<p>～のような</p>\r\n</td>\r\n<td>\r\n<p>Giống như, như l&agrave; ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>10</p>\r\n</td>\r\n<td>\r\n<p>～ば～ほど</p>\r\n</td>\r\n<td>\r\n<p>C&agrave;ng ~ th&igrave; c&agrave;ng ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>11</p>\r\n</td>\r\n<td>\r\n<p>～ばかり</p>\r\n</td>\r\n<td>\r\n<p>To&agrave;n, chỉ ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>12</p>\r\n</td>\r\n<td>\r\n<p>～は～で有名</p>\r\n</td>\r\n<td>\r\n<p>Nổi tiếng với, v&igrave; ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>13</p>\r\n</td>\r\n<td>\r\n<p>N+を始め</p>\r\n</td>\r\n<td>\r\n<p>Trước ti&ecirc;n l&agrave;, trước hết l&agrave;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>14</p>\r\n</td>\r\n<td>\r\n<p>～的</p>\r\n</td>\r\n<td>\r\n<p>Mang t&iacute;nh~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>15</p>\r\n</td>\r\n<td>\r\n<p>～は～くらいです</p>\r\n</td>\r\n<td>\r\n<p>Khoảng cỡ, đến mức, như l&agrave;&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>16</p>\r\n</td>\r\n<td>\r\n<p>～さえ～ば</p>\r\n</td>\r\n<td>\r\n<p>Chỉ cần, ngay cả, thậm ch&iacute;~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>17</p>\r\n</td>\r\n<td>\r\n<p>～ほど</p>\r\n</td>\r\n<td>\r\n<p>Đến mức, nhất l&agrave;, như l&agrave;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>18</p>\r\n</td>\r\n<td>\r\n<p>～まま</p>\r\n</td>\r\n<td>\r\n<p>Cứ để nguy&ecirc;n, vẫn giữ nguy&ecirc;n t&igrave;nh trạng</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>19</p>\r\n</td>\r\n<td>\r\n<p>～わざわざ</p>\r\n</td>\r\n<td>\r\n<p>C&oacute; nh&atilde; &yacute;, c&oacute; th&agrave;nh &yacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>20</p>\r\n</td>\r\n<td>\r\n<p>～としたら</p>\r\n</td>\r\n<td>\r\n<p>Giả sử, nếu cho rằng&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>21</p>\r\n</td>\r\n<td>\r\n<p>～たものだ</p>\r\n</td>\r\n<td>\r\n<p>Thường hay&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>22</p>\r\n</td>\r\n<td>\r\n<p>～たて</p>\r\n</td>\r\n<td>\r\n<p>Vừa mới&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>23</p>\r\n</td>\r\n<td>\r\n<p>～ぐらい</p>\r\n</td>\r\n<td>\r\n<p>Đến mức, đến độ, khoảng cỡ&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>24</p>\r\n</td>\r\n<td>\r\n<p>～かえって</p>\r\n</td>\r\n<td>\r\n<p>Ngược lại, tr&aacute;i lại</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>25</p>\r\n</td>\r\n<td>\r\n<p>～には～の～がある</p>\r\n</td>\r\n<td>\r\n<p>Đối với&hellip;sẽ c&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>26</p>\r\n</td>\r\n<td>\r\n<p>～っぽい</p>\r\n</td>\r\n<td>\r\n<p>Như l&agrave;&hellip;, giống như&hellip;, c&oacute; vẻ như&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>27</p>\r\n</td>\r\n<td>\r\n<p>～に関する</p>\r\n</td>\r\n<td>\r\n<p>Li&ecirc;n quan đến..., về&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>28</p>\r\n</td>\r\n<td>\r\n<p>～まさか</p>\r\n</td>\r\n<td>\r\n<p>Chắc chắn rằng&hellip;kh&ocirc;ng.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>29</p>\r\n</td>\r\n<td>\r\n<p>～まい</p>\r\n</td>\r\n<td>\r\n<p>Quyết kh&ocirc;ng&hellip;, kh&ocirc;ng c&oacute; &yacute; định&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>30</p>\r\n</td>\r\n<td>\r\n<p>～きり</p>\r\n</td>\r\n<td>\r\n<p>Kể từ khi, sau khi　</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>31</p>\r\n</td>\r\n<td>\r\n<p>～いったい（一体）</p>\r\n</td>\r\n<td>\r\n<p>Hẳn l&agrave;...</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>32</p>\r\n</td>\r\n<td>\r\n<p>～ふり</p>\r\n</td>\r\n<td>\r\n<p>Giả vờ, giả bộ, bắt chước</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>33</p>\r\n</td>\r\n<td>\r\n<p>～どうやら</p>\r\n</td>\r\n<td>\r\n<p>H&igrave;nh như, giống như l&agrave;, cuối c&ugrave;ng</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>34</p>\r\n</td>\r\n<td>\r\n<p>～おかげで</p>\r\n</td>\r\n<td>\r\n<p>Nhờ~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>35</p>\r\n</td>\r\n<td>\r\n<p>～さらに（更に）</p>\r\n</td>\r\n<td>\r\n<p>Th&ecirc;m nữa, hơn nữa...</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>36</p>\r\n</td>\r\n<td>\r\n<p>～すでに（既に）</p>\r\n</td>\r\n<td>\r\n<p>Đ&atilde;, ho&agrave;n to&agrave;n</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>37</p>\r\n</td>\r\n<td>\r\n<p>～つい</p>\r\n</td>\r\n<td>\r\n<p>Lỡ&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>38</p>\r\n</td>\r\n<td>\r\n<p>～むしろ</p>\r\n</td>\r\n<td>\r\n<p>Tr&aacute;i lại, ngược lại</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>39</p>\r\n</td>\r\n<td>\r\n<p>～さえ</p>\r\n</td>\r\n<td>\r\n<p>Đến cả, thậm ch&iacute;...</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>40</p>\r\n</td>\r\n<td>\r\n<p>～になれる</p>\r\n</td>\r\n<td>\r\n<p>Trở n&ecirc;n, trở th&agrave;nh</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>41</p>\r\n</td>\r\n<td>\r\n<p>～に違いない</p>\r\n</td>\r\n<td>\r\n<p>Đ&uacute;ng l&agrave;, chắc chắn l&agrave;~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>42</p>\r\n</td>\r\n<td>\r\n<p>～なかなか</p>\r\n</td>\r\n<td>\r\n<p>M&atilde;i m&agrave; chưa, m&atilde;i m&agrave; kh&ocirc;ng&hellip;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>43</p>\r\n</td>\r\n<td>\r\n<p>～ために</p>\r\n</td>\r\n<td>\r\n<p>V&igrave;～</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>44</p>\r\n</td>\r\n<td>\r\n<p>～ず</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>45</p>\r\n</td>\r\n<td>\r\n<p>～によると</p>\r\n</td>\r\n<td>\r\n<p>Dựa theo~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>46</p>\r\n</td>\r\n<td>\r\n<p>～代わり（に）</p>\r\n</td>\r\n<td>\r\n<p>Thay v&igrave;, đổi lại, tr&aacute;i lại~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>47</p>\r\n</td>\r\n<td>\r\n<p>～ようにする</p>\r\n</td>\r\n<td>\r\n<p>Chắc chắn l&agrave;m, cố l&agrave;m~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>48</p>\r\n</td>\r\n<td>\r\n<p>～始める</p>\r\n</td>\r\n<td>\r\n<p>Sẽ bắt đầu~</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>49</p>\r\n</td>\r\n<td>\r\n<p>～ても</p>\r\n</td>\r\n<td>\r\n<p>Cho d&ugrave;~cũng</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>50</p>\r\n</td>\r\n<td>\r\n<p>～として</p>\r\n</td>\r\n<td>\r\n<p>Xem như l&agrave;, với tư c&aacute;ch l&agrave;</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>51</p>\r\n</td>\r\n<td>\r\n<p>～ように</p>\r\n</td>\r\n<td>\r\n<p>Để~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>52</p>\r\n</td>\r\n<td>\r\n<p>～こそ</p>\r\n</td>\r\n<td>\r\n<p>Ch&iacute;nh v&igrave; ~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>53</p>\r\n</td>\r\n<td>\r\n<p>～ないうちに</p>\r\n</td>\r\n<td>\r\n<p>Trước khi&hellip;</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>54</p>\r\n</td>\r\n<td>\r\n<p>～どうしても</p>\r\n</td>\r\n<td>\r\n<p>D&ugrave; thế n&agrave;o cũng, nhất định~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>55</p>\r\n</td>\r\n<td>\r\n<p>～がち</p>\r\n</td>\r\n<td>\r\n<p>C&oacute; khuynh hướng~, thường l&agrave;~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>56</p>\r\n</td>\r\n<td>\r\n<p>～せいぜい</p>\r\n</td>\r\n<td>\r\n<p>Tối đa, kh&ocirc;ng hơn được, nhiều nhất c&oacute; thể~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>57</p>\r\n</td>\r\n<td>\r\n<p>～に限る</p>\r\n</td>\r\n<td>\r\n<p>Chỉ c&oacute;, chỉ giới hạn ở, tốt nhất~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>58</p>\r\n</td>\r\n<td>\r\n<p>～とともに～</p>\r\n</td>\r\n<td>\r\n<p>C&ugrave;ng với, đi k&egrave;m với, c&agrave;ng&hellip;c&agrave;ng</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>59</p>\r\n</td>\r\n<td>\r\n<p>～たび（に）</p>\r\n</td>\r\n<td>\r\n<p>Mỗi khi, mỗi dịp, mỗi lần~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>60</p>\r\n</td>\r\n<td>\r\n<p>～にすぎない（過ぎない）</p>\r\n</td>\r\n<td>\r\n<p>Chỉ l&agrave;, kh&ocirc;ng hơn~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>61</p>\r\n</td>\r\n<td>\r\n<p>～おいて（於いて）</p>\r\n</td>\r\n<td>\r\n<p>Ở, tại, trong (chỉ địa điểm, thời gian)</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>62</p>\r\n</td>\r\n<td>\r\n<p>～げ</p>\r\n</td>\r\n<td>\r\n<p>Vẻ～</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>63</p>\r\n</td>\r\n<td>\r\n<p>～つもりで</p>\r\n</td>\r\n<td>\r\n<p>C&oacute; &yacute; định (thể hiện &yacute; ch&iacute;)</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>64</p>\r\n</td>\r\n<td>\r\n<p>～うちに</p>\r\n</td>\r\n<td>\r\n<p>Trong l&uacute;c~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>65</p>\r\n</td>\r\n<td>\r\n<p>～得る</p>\r\n</td>\r\n<td>\r\n<p>C&oacute; thể ~ / Trong phạm vi c&oacute; thể ~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>66</p>\r\n</td>\r\n<td>\r\n<p>～たとたん(に)</p>\r\n</td>\r\n<td>\r\n<p>Ngay sau đ&oacute; &hellip;</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>67</p>\r\n</td>\r\n<td>\r\n<p>～ばかりに</p>\r\n</td>\r\n<td>\r\n<p>Chỉ v&igrave;~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>68</p>\r\n</td>\r\n<td>\r\n<p>～たび（に）</p>\r\n</td>\r\n<td>\r\n<p>Mỗi lần~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>69</p>\r\n</td>\r\n<td>\r\n<p>～だけに</p>\r\n</td>\r\n<td>\r\n<p>V&igrave;~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>70</p>\r\n</td>\r\n<td>\r\n<p>～だけあって</p>\r\n</td>\r\n<td>\r\n<p>Quả đ&uacute;ng l&agrave;~, tương xứng với~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>71</p>\r\n</td>\r\n<td>\r\n<p>～だらけ</p>\r\n</td>\r\n<td>\r\n<p>To&agrave;n l&agrave;, đầy l&agrave;~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>72</p>\r\n</td>\r\n<td>\r\n<p>～っけ</p>\r\n</td>\r\n<td>\r\n<p>Nhớ kh&ocirc;ng lầm l&agrave;&hellip;đ&uacute;ng kh&ocirc;ng</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>73</p>\r\n</td>\r\n<td>\r\n<p>～っこない</p>\r\n</td>\r\n<td>\r\n<p>Tuyệt đối kh&ocirc;ng ~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>74</p>\r\n</td>\r\n<td>\r\n<p>～っぱい</p>\r\n</td>\r\n<td>\r\n<p>Thấy như l&agrave; ~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>75</p>\r\n</td>\r\n<td>\r\n<p>～ついでに</p>\r\n</td>\r\n<td>\r\n<p>Nh&acirc;n tiện ~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>76</p>\r\n</td>\r\n<td>\r\n<p>～つつ</p>\r\n</td>\r\n<td>\r\n<p>Trong khi ~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>77</p>\r\n</td>\r\n<td>\r\n<p>～つつある</p>\r\n</td>\r\n<td>\r\n<p>Dần dần đang ~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>78</p>\r\n</td>\r\n<td>\r\n<p>～つつも</p>\r\n</td>\r\n<td>\r\n<p>D&ugrave; l&agrave;&hellip;</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>79</p>\r\n</td>\r\n<td>\r\n<p>～て以来</p>\r\n</td>\r\n<td>\r\n<p>Kể từ, suốt từ~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>80</p>\r\n</td>\r\n<td>\r\n<p>～てからでないと／からでなければ</p>\r\n</td>\r\n<td>\r\n<p>Nếu kh&ocirc;ng &hellip; th&igrave; cũng kh&ocirc;ng&hellip;</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>81</p>\r\n</td>\r\n<td>\r\n<p>～てしかたがない</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng thể chịu được~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>82</p>\r\n</td>\r\n<td>\r\n<p>～てしようがない</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng thể chịu được~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>83</p>\r\n</td>\r\n<td>\r\n<p>～てたまらない</p>\r\n</td>\r\n<td>\r\n<p>Rất&hellip;</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>84</p>\r\n</td>\r\n<td>\r\n<p>～でさえ</p>\r\n</td>\r\n<td>\r\n<p>Đến cả~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>85</p>\r\n</td>\r\n<td>\r\n<p>～てならない</p>\r\n</td>\r\n<td>\r\n<p>Hết sức, v&ocirc; c&ugrave;ng, chịu kh&ocirc;ng nổi</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>86</p>\r\n</td>\r\n<td>\r\n<p>～ということだ</p>\r\n</td>\r\n<td>\r\n<p>Nghe thấy n&oacute;i l&agrave;~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>87</p>\r\n</td>\r\n<td>\r\n<p>～というものだ</p>\r\n</td>\r\n<td>\r\n<p>Nhằm, c&oacute; nội dung~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>88</p>\r\n</td>\r\n<td>\r\n<p>～というものでもない</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng thể n&oacute;i hết l&agrave;~, kh&ocirc;ng thể n&oacute;i rằng~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>89</p>\r\n</td>\r\n<td>\r\n<p>～というより</p>\r\n</td>\r\n<td>\r\n<p>Hơn l&agrave; n&oacute;i~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>90</p>\r\n</td>\r\n<td>\r\n<p>～と言えば／というと</p>\r\n</td>\r\n<td>\r\n<p>N&oacute;i về~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>91</p>\r\n</td>\r\n<td>\r\n<p>～と言ったら</p>\r\n</td>\r\n<td>\r\n<p>N&oacute;i đến~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>92</p>\r\n</td>\r\n<td>\r\n<p>～と言っても</p>\r\n</td>\r\n<td>\r\n<p>D&ugrave; n&oacute;i l&agrave;&hellip;nhưng</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>93</p>\r\n</td>\r\n<td>\r\n<p>～としたら</p>\r\n</td>\r\n<td>\r\n<p>Nếu&hellip;</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>94</p>\r\n</td>\r\n<td>\r\n<p>～とともに～</p>\r\n</td>\r\n<td>\r\n<p>C&ugrave;ng với, đi k&egrave;m với, c&agrave;ng&hellip;c&agrave;ng</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>95</p>\r\n</td>\r\n<td>\r\n<p>～ないことには</p>\r\n</td>\r\n<td>\r\n<p>Nếu kh&ocirc;ng~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>96</p>\r\n</td>\r\n<td>\r\n<p>～ながら（も）</p>\r\n</td>\r\n<td>\r\n<p>Ấy thế m&agrave;~, tuy nhi&ecirc;n~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>97</p>\r\n</td>\r\n<td>\r\n<p>～など／なんか／なんて</p>\r\n</td>\r\n<td>\r\n<p>Cỡ như, đến như, chẳng hạn như~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>98</p>\r\n</td>\r\n<td>\r\n<p>～にあって</p>\r\n</td>\r\n<td>\r\n<p>V&igrave;~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>99</p>\r\n</td>\r\n<td>\r\n<p>～において</p>\r\n</td>\r\n<td>\r\n<p>Ở, Trong, Tại~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>100</p>\r\n</td>\r\n<td>\r\n<p>～に応じて</p>\r\n</td>\r\n<td>\r\n<p>T&ugrave;y theo, dựa theo~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>101</p>\r\n</td>\r\n<td>\r\n<p>～における</p>\r\n</td>\r\n<td>\r\n<p>Tại, trong, ở</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>102</p>\r\n</td>\r\n<td>\r\n<p>～にかかわらず</p>\r\n</td>\r\n<td>\r\n<p>Bất chấp~, kh&ocirc;ng li&ecirc;n quan~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>103</p>\r\n</td>\r\n<td>\r\n<p>～に代わって</p>\r\n</td>\r\n<td>\r\n<p>Thay cho~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>104</p>\r\n</td>\r\n<td>\r\n<p>～に関する／に関して</p>\r\n</td>\r\n<td>\r\n<p>Li&ecirc;n quan đến~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>105</p>\r\n</td>\r\n<td>\r\n<p>～にしたがって（従って）</p>\r\n</td>\r\n<td>\r\n<p>C&ugrave;ng với ~, dựa theo~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>106</p>\r\n</td>\r\n<td>\r\n<p>～にしろ</p>\r\n</td>\r\n<td>\r\n<p>Dẫu l&agrave;~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>107</p>\r\n</td>\r\n<td>\r\n<p>～にすぎない（過ぎない）</p>\r\n</td>\r\n<td>\r\n<p>Chỉ~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>108</p>\r\n</td>\r\n<td>\r\n<p>～に対して</p>\r\n</td>\r\n<td>\r\n<p>Đối với~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>109</p>\r\n</td>\r\n<td>\r\n<p>～に違いない</p>\r\n</td>\r\n<td>\r\n<p>Nhất định~, chắc l&agrave;~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>110</p>\r\n</td>\r\n<td>\r\n<p>～について</p>\r\n</td>\r\n<td>\r\n<p>Về việc~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>111</p>\r\n</td>\r\n<td>\r\n<p>～につれて</p>\r\n</td>\r\n<td>\r\n<p>C&ugrave;ng với~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>112</p>\r\n</td>\r\n<td>\r\n<p>～にとって</p>\r\n</td>\r\n<td>\r\n<p>Đối với~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>113</p>\r\n</td>\r\n<td>\r\n<p>～にともなって</p>\r\n</td>\r\n<td>\r\n<p>C&ugrave;ng với&hellip;, C&agrave;ng&hellip;c&agrave;ng</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>114</p>\r\n</td>\r\n<td>\r\n<p>～に反して</p>\r\n</td>\r\n<td>\r\n<p>Tr&aacute;i với...</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>115</p>\r\n</td>\r\n<td>\r\n<p>～にわたる／にわたって</p>\r\n</td>\r\n<td>\r\n<p>Suốt, trải suốt, trải khắp</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>116</p>\r\n</td>\r\n<td>\r\n<p>～はともかく</p>\r\n</td>\r\n<td>\r\n<p>Để sau, khoan b&agrave;n</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>117</p>\r\n</td>\r\n<td>\r\n<p>～はもとより</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng chỉ, n&oacute;i chi</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>118</p>\r\n</td>\r\n<td>\r\n<p>～は抜きにして</p>\r\n</td>\r\n<td>\r\n<p>H&atilde;y bỏ&hellip;ra, h&atilde;y th&ocirc;i&hellip;</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>119</p>\r\n</td>\r\n<td>\r\n<p>～反面</p>\r\n</td>\r\n<td>\r\n<p>Ngược lại, mặt kh&aacute;c~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>120</p>\r\n</td>\r\n<td>\r\n<p>～べき/ べきではない</p>\r\n</td>\r\n<td>\r\n<p>N&ecirc;n/ kh&ocirc;ng n&ecirc;n</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>121</p>\r\n</td>\r\n<td>\r\n<p>～向きだ</p>\r\n</td>\r\n<td>\r\n<p>Ph&ugrave; hợp, d&agrave;nh cho～</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>122</p>\r\n</td>\r\n<td>\r\n<p>～も～なら～も、～も～ば～も</p>\r\n</td>\r\n<td>\r\n<p>Cũng ～ cũng ～</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>123</p>\r\n</td>\r\n<td>\r\n<p>～やら～やら</p>\r\n</td>\r\n<td>\r\n<p>N&agrave;o l&agrave;～, n&agrave;o l&agrave;～</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>124</p>\r\n</td>\r\n<td>\r\n<p>～よりほかない</p>\r\n</td>\r\n<td>\r\n<p>Chẳng c&ograve;n c&aacute;ch n&agrave;o kh&aacute;c l&agrave; ~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>125</p>\r\n</td>\r\n<td>\r\n<p>～わけない</p>\r\n</td>\r\n<td>\r\n<p>Lẽ n&agrave;o lại, l&agrave;m sao ~ được</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>126</p>\r\n</td>\r\n<td>\r\n<p>～わけだ</p>\r\n</td>\r\n<td>\r\n<p>C&oacute; nghĩa l&agrave; ~, l&agrave; v&igrave; ~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>127</p>\r\n</td>\r\n<td>\r\n<p>～わけではない</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng nhất thiết l&agrave; ~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>128</p>\r\n</td>\r\n<td>\r\n<p>～わけでもない</p>\r\n</td>\r\n<td>\r\n<p>Cũng kh&ocirc;ng nhất thiết l&agrave; ~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>129</p>\r\n</td>\r\n<td>\r\n<p>～わけにはいかない</p>\r\n</td>\r\n<td>\r\n<p>N&ecirc;n kh&ocirc;ng thể/ l&agrave;m kh&ocirc;ng được/Phải ~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>130</p>\r\n</td>\r\n<td>\r\n<p>～わけはない/わけがない</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng c&oacute; l&yacute; do~,Kh&ocirc;ng c&oacute; nghĩa l&agrave; ~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>131</p>\r\n</td>\r\n<td>\r\n<p>～を中心に（して）/～を中心として</p>\r\n</td>\r\n<td>\r\n<p>Lấy ~ l&agrave; trung t&acirc;m,</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>132</p>\r\n</td>\r\n<td>\r\n<p>～を通じて</p>\r\n</td>\r\n<td>\r\n<p>Th&ocirc;ng qua (trung gian n&agrave;o đ&oacute;)~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>133</p>\r\n</td>\r\n<td>\r\n<p>～を問わず</p>\r\n</td>\r\n<td>\r\n<p>Kh&ocirc;ng li&ecirc;n quan đến~,Kh&ocirc;ng l&agrave; vấn đề~</p>\r\n</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'Ngữ pháp là một trong những phần quan trọng trong đề thi N3 (JLPT).\r\nMới đầu học chắc hẳn ai trong chúng ta cũng sẽ thấy Ngữ pháp trong tiếng Nhật la một phần khó, mong rằng bài viết này sẽ giúp mọi người thấy đơn giản hơn phần nào :). 皆さん、がんばれ。', 'Ngữ pháp là một trong những phần quan trọng trong đề thi N3 (JLPT).\r\nMới đầu học chắc hẳn ai trong chúng ta cũng sẽ thấy Ngữ pháp trong tiếng Nhật la một phần khó, mong rằng bài viết này sẽ giúp mọi người thấy đơn giản hơn phần nào :). 皆さん、がんばれ。', '123_43849385.jpg', NULL, NULL, '2014-12-24 10:50:58', 4, 'tong-hop-ngu-phap-n3'),
(34, '第1週_1日目（日本語総まとめN3_語彙', '第1週_1日目（日本語総まとめN3_語彙', '<p><big><strong>絵をみておぼえましょう！</strong></big></p>\r\n<p><a class="motaicho720" href="http://old.lophoctiengnhat.com/images/images/Trung_Cap/N3_Goi_Tuan1Ngay1_1.png"><img src="http://old.lophoctiengnhat.com/images/images/Trung_Cap/N3_Goi_Tuan1Ngay1_1.png" alt="" width="753" height="293" /></a></p>\r\n<p><a class="motaicho720" href="http://old.lophoctiengnhat.com/images/images/Trung_Cap/N3_Goi_Tuan1Ngay1_2.png"><img src="http://old.lophoctiengnhat.com/images/images/Trung_Cap/N3_Goi_Tuan1Ngay1_2.png" alt="" width="752" height="305" /></a></p>\r\n<table class="khung2" style="height: 475px;" border="0" width="753" cellspacing="0" cellpadding="0">\r\n<thead>\r\n<tr>\r\n<td scope="col"><strong>Mục từ</strong></td>\r\n<td scope="col"><strong>H&aacute;n tự</strong></td>\r\n<td scope="col"><strong>Loại</strong></td>\r\n<td scope="col"><strong>Nghĩa</strong></td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td><strong><big>キッチン</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>nh&agrave; bếp</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>だいどころ</big></strong></td>\r\n<td><strong><big>台所</big></strong></td>\r\n<td>n</td>\r\n<td>nh&agrave; bếp</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>でんし</big></strong><strong><big>レンジ</big></strong></td>\r\n<td><ruby><rt></rt></ruby><strong><big>電子レンジ</big></strong></td>\r\n<td>n</td>\r\n<td>l&ograve; vi ba</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ワイングラス</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>cốc uống rượu (c&oacute; ch&acirc;n)</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>コーヒーカップ</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>cốc uống c&agrave; ph&ecirc;</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>（お）ちゃわん</big></strong></td>\r\n<td><strong><big>（お）茶わん</big></strong></td>\r\n<td>n</td>\r\n<td>cốc uống tr&agrave;</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ゆのみ</big></strong></td>\r\n<td><strong><big>湯飲み</big></strong></td>\r\n<td>n</td>\r\n<td>cốc uống tr&agrave;</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>れいぞうこ</big></strong></td>\r\n<td><strong><big>冷蔵庫</big></strong></td>\r\n<td>n</td>\r\n<td>tủ lạnh</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ガスレンジ</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>bếp ga</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ガスコンロ</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>bếp ga</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ガラスのコップ</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>cốc thủy tinh</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>レバー</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>c&aacute;i cần gạt</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ながし</big></strong></td>\r\n<td><strong><big>流し</big></strong></td>\r\n<td>n</td>\r\n<td>bồn rửa; chậu rửa</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>リビング</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>ph&ograve;ng kh&aacute;ch</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>いま</big></strong></td>\r\n<td><strong><big>居間</big></strong></td>\r\n<td>n</td>\r\n<td>ph&ograve;ng kh&aacute;ch</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>まどガラス</big></strong></td>\r\n<td><strong><big>窓ガラス</big></strong></td>\r\n<td>n</td>\r\n<td>cửa sổ bằng k&iacute;nh</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>あまど</big></strong></td>\r\n<td><strong><big>雨戸</big></strong></td>\r\n<td>n</td>\r\n<td>cửa trượt bảo v&ecirc;̣</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>あみど</big></strong></td>\r\n<td><strong><big>網戸</big></strong></td>\r\n<td>n</td>\r\n<td>cửa lưới</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>てんじょう</big></strong></td>\r\n<td><strong><big>天井</big></strong></td>\r\n<td>n</td>\r\n<td>trần nh&agrave;</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ゆか</big></strong></td>\r\n<td><strong><big>床</big></strong></td>\r\n<td>n</td>\r\n<td>s&agrave;n nh&agrave;</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>コンセント</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>ổ cắm (điện)</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>コード</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>d&acirc;y điện</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>エアコン</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>m&aacute;y điều h&ograve;a kh&ocirc;ng kh&iacute;</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ヒーター</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>m&aacute;y sưởi; l&ograve; sưởi</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>じゅうたん</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>thảm trải nền nh&agrave;</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>カーペット</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>thảm trải nền nh&agrave;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p><big><strong>もっとおぼえましょう!</strong></big></p>\r\n<table class="khung2" style="height: 398px;" border="0" width="751" cellspacing="0" cellpadding="0">\r\n<thead>\r\n<tr>\r\n<td scope="col"><strong>Mục từ</strong></td>\r\n<td scope="col"><strong>H&aacute;n tự</strong></td>\r\n<td scope="col"><strong>Loại</strong></td>\r\n<td scope="col"><strong>Nghĩa</strong></td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td><strong><big>すいどう</big></strong></td>\r\n<td><strong><big>水道</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>nước m&aacute;y</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>じゃぐち</big></strong></td>\r\n<td><strong><big>蛇口</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>v&ograve;i nước</td>\r\n</tr>\r\n<tr>\r\n<td><ruby><rt><strong><big>すいどう</big></strong></rt></ruby><strong><big>の</big></strong><ruby><rt><strong><big>じゃぐち</big></strong></rt></ruby><strong><big>をひねる</big></strong></td>\r\n<td><strong><big>水道の蛇口をひねる</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>vặn v&ograve;i nước</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>みずがこおる</big></strong></td>\r\n<td><strong><big>水が凍る</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>nước đ&oacute;ng băng</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>こおりになる</big></strong></td>\r\n<td><strong><big>氷になる</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>th&agrave;nh nước đ&aacute;</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>れいとうしてほぞんする</big></strong></td>\r\n<td><strong><big>冷凍して保存する</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>bảo quản lạnh</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>のこりもの</big></strong></td>\r\n<td><strong><big>残り物</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>đồ c&ograve;n lại</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>あたためる</big></strong></td>\r\n<td><strong><big>残り物を温める</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>h&acirc;m n&oacute;ng đồ ăn</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ビールをひやす</big></strong></td>\r\n<td><strong><big>ビールを冷やす</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>l&agrave;m lạnh bia</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ビールがひえている</big></strong></td>\r\n<td><strong><big>ビールが冷えている</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>bia lạnh</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>エアコンのリモコン</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>c&aacute;i điều khiển m&aacute;y lạnh</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>スイッチ</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>c&ocirc;ng tắc</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>でんげんをいれる</big></strong></td>\r\n<td><strong><big>電源を入れる</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>bật điện (nguồn)</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>でんげんをきる</big></strong></td>\r\n<td><strong><big>電源を切る</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>tắt điện (nguồn)</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>じゅうたんをしく</big></strong></td>\r\n<td><strong><big>じゅうたんを敷く</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>trải thảm</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>へやをあたためる</big></strong></td>\r\n<td><strong><big>部屋を暖める</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>l&agrave;m n&oacute;ng ph&ograve;ng</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>だんぼうをつける</big></strong></td>\r\n<td><strong><big>暖房をつける</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>bật l&ograve; sưởi</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>クーラーがきいている</big></strong></td>\r\n<td><strong><big>クーラーが効いている</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>m&aacute;y lạnh đang hoạt động</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>れいぼうがきいている</big></strong></td>\r\n<td><strong><big>冷房が効いている</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>m&aacute;y lạnh đang hoạt động</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ひあたりがいい</big></strong></td>\r\n<td><strong><big>日当たりがいい</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>c&oacute; &aacute;nh nắng chiếu v&agrave;o</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ひあたりがわるい</big></strong></td>\r\n<td><strong><big>日当たりが悪い</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>kh&ocirc;ng c&oacute; &aacute;nh nắng chiếu v&agrave;o</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'Từ vựng Soumatome 総まとめ_tuần 1, ngày 1', 'Từ vựng Soumatome 総まとめ_tuần 1, ngày 1', 'images (3)_803790641.jpg', NULL, NULL, '2014-12-24 10:43:26', 4, '第1週_1日目（日本語総まとめn3_語彙'),
(35, '第1週_2日目（日本語総まとめN3_語彙', '第1週_2日目（日本語総まとめN3_語彙', '<p><big><strong>絵をみておぼえましょう！</strong></big></p>\r\n<p><a class="motaicho720" href="http://old.lophoctiengnhat.com/images/images/Trung_Cap/N3_Goi_Tuan1Ngay2_1.png"><img src="http://old.lophoctiengnhat.com/images/images/Trung_Cap/N3_Goi_Tuan1Ngay2_1.png" alt="" width="753" height="488" /></a></p>\r\n<p><a class="motaicho720" href="http://old.lophoctiengnhat.com/images/images/Trung_Cap/N3_Goi_Tuan1Ngay2_2.png"><img src="http://old.lophoctiengnhat.com/images/images/Trung_Cap/N3_Goi_Tuan1Ngay2_2.png" alt="" width="754" height="252" /></a></p>\r\n<table class="khung2" style="height: 471px;" border="0" width="752" cellspacing="0" cellpadding="0">\r\n<thead>\r\n<tr>\r\n<td scope="col"><strong>Mục từ</strong></td>\r\n<td scope="col"><strong>H&aacute;n tự</strong></td>\r\n<td scope="col"><strong>Loại</strong></td>\r\n<td scope="col"><strong>Nghĩa</strong></td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td><strong><big>にくじゃが</big></strong></td>\r\n<td><strong><big>肉じゃが</big></strong></td>\r\n<td>n</td>\r\n<td>m&oacute;n thịt hầm khoai t&acirc;y</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ざいりょう</big></strong></td>\r\n<td><strong><big>材料</big></strong></td>\r\n<td>n</td>\r\n<td>nguy&ecirc;n liệu</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>よにんぶん</big></strong></td>\r\n<td><strong><big>４人分</big></strong></td>\r\n<td>n</td>\r\n<td>phần 4 người</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ぎゅうにく</big></strong></td>\r\n<td><strong><big>牛肉</big></strong></td>\r\n<td>n</td>\r\n<td>thịt b&ograve;</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>～グラム</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>suf</td>\r\n<td>~ gram</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ジャガイモ</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>khoai t&acirc;y</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>たまねぎ</big></strong></td>\r\n<td><strong><big>玉ネギ</big></strong></td>\r\n<td>n</td>\r\n<td>củ h&agrave;nh t&acirc;y</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ちょうみりょう</big></strong></td>\r\n<td><strong><big>調味料</big></strong></td>\r\n<td>n</td>\r\n<td>gia vị</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>みず</big></strong></td>\r\n<td><strong><big>水</big></strong></td>\r\n<td>n</td>\r\n<td>nước</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>～カップ</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>suf</td>\r\n<td>~ cốc</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>さけ</big></strong></td>\r\n<td><strong><big>酒</big></strong></td>\r\n<td>n</td>\r\n<td>rượu sake của Nhật</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>しょうゆ</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>nước tương của Nhật</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>さとう</big></strong></td>\r\n<td><strong><big>砂糖</big></strong></td>\r\n<td>n</td>\r\n<td>đường (ăn)</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>おおさじ</big></strong></td>\r\n<td><strong><big>大さじ</big></strong></td>\r\n<td>n</td>\r\n<td>muỗng canh</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>～ばい</big></strong></td>\r\n<td><strong><big>～杯</big></strong></td>\r\n<td>suf</td>\r\n<td>~ cốc; ch&eacute;n</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>サラダゆ</big></strong></td>\r\n<td><strong><big>サラダ油</big></strong></td>\r\n<td>n</td>\r\n<td>dầu x&agrave; l&aacute;ch</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>しょうしょう</big></strong></td>\r\n<td><strong><big>少々</big></strong></td>\r\n<td>adv</td>\r\n<td>một ch&uacute;t</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>～センチはば</big></strong></td>\r\n<td><strong><big>～センチ幅</big></strong></td>\r\n<td>suf</td>\r\n<td>(cắt) l&aacute;t ~ cm</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>むく</big></strong></td>\r\n<td><strong><big>剥く</big></strong></td>\r\n<td>v</td>\r\n<td>b&oacute;c; gọt</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ゆうしょく</big></strong></td>\r\n<td><strong><big>夕食</big></strong></td>\r\n<td>n</td>\r\n<td>cơm chiều; cơm tối</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>おかず</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>thức ăn</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>～リットル</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>suf</td>\r\n<td>~ l&iacute;t</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>こさじ</big></strong></td>\r\n<td><strong><big>小さじ</big></strong></td>\r\n<td>n</td>\r\n<td>muỗng tr&agrave;</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ほうちょう</big></strong></td>\r\n<td><strong><big>包丁</big></strong></td>\r\n<td>n</td>\r\n<td>dao th&aacute;i thịt</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>まないた</big></strong></td>\r\n<td><strong><big>まな板</big></strong></td>\r\n<td>n</td>\r\n<td>c&aacute;i thớt</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>はかり</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>c&aacute;i c&acirc;n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p><big><strong>もっとおぼえましょう!</strong></big></p>\r\n<table class="khung2" style="height: 445px;" border="0" width="751" cellspacing="0" cellpadding="0">\r\n<thead>\r\n<tr>\r\n<td scope="col"><strong>Mục từ</strong></td>\r\n<td scope="col"><strong>H&aacute;n tự</strong></td>\r\n<td scope="col"><strong>Loại</strong></td>\r\n<td scope="col"><strong>Nghĩa</strong></td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td><strong><big>ゆうしょく</big></strong></td>\r\n<td><strong><big>夕食のおかず</big></strong></td>\r\n<td>n</td>\r\n<td>thức ăn bữa tối</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>えいよう</big></strong></td>\r\n<td><strong><big>栄養</big></strong></td>\r\n<td>n</td>\r\n<td>dinh dưỡng</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>バランス</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>c&acirc;n bằng</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>えいようのバランスをかんがえる</big></strong></td>\r\n<td><strong><big>栄養のバランスを考える</big></strong></td>\r\n<td>v</td>\r\n<td>suy nghĩ về c&acirc;n bằng dinh dưỡng</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>カロリー</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>lượng ca-lo</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>しょくひん</big></strong></td>\r\n<td><strong><big>食品</big></strong></td>\r\n<td>n</td>\r\n<td>đồ ăn; thực phẩm</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>カロリーがたかいしょくひん</big></strong></td>\r\n<td><strong><big>カロリーが高い食品</big></strong></td>\r\n<td>n</td>\r\n<td>thực phẩm c&oacute; lượng ca-lo cao</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>はかりではかる</big></strong></td>\r\n<td><strong><big>はかりで量る</big></strong></td>\r\n<td>v</td>\r\n<td>c&acirc;n bằng c&acirc;n</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>しお</big></strong></td>\r\n<td><strong><big>塩</big></strong></td>\r\n<td>n</td>\r\n<td>muối</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>しおをしょうしょういれる</big></strong></td>\r\n<td><strong><big>塩を少々入れる</big></strong></td>\r\n<td>v</td>\r\n<td>cho v&agrave;o ch&uacute;t muối</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>す</big></strong></td>\r\n<td><strong><big>酢</big></strong></td>\r\n<td>n</td>\r\n<td>giấm</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>てんぷらあぶら</big></strong></td>\r\n<td><strong><big>天ぷら油</big></strong></td>\r\n<td>n</td>\r\n<td>dầu tenpura</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>かわ</big></strong></td>\r\n<td><strong><big>皮</big></strong></td>\r\n<td>n</td>\r\n<td>vỏ</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>かわをむく</big></strong></td>\r\n<td><strong><big>皮をむく</big></strong></td>\r\n<td>v</td>\r\n<td>gọt vỏ</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ざいりょうをきざむ</big></strong></td>\r\n<td><strong><big>材料を刻む</big></strong></td>\r\n<td>v</td>\r\n<td>th&aacute;i (rau, quả)</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>おおきめにきる</big></strong></td>\r\n<td><strong><big>大きめに切る</big></strong></td>\r\n<td>v</td>\r\n<td>cắt lớn một ch&uacute;t</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>３センチはばにきる</big></strong></td>\r\n<td><strong><big>３センチ幅に切る</big></strong></td>\r\n<td>v</td>\r\n<td>cắt miếng 3 cm</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>みそしる</big></strong></td>\r\n<td><strong><big>みそ汁</big></strong></td>\r\n<td>n</td>\r\n<td>s&uacute;p miso (Nhật)</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>みそしるがぬるくなる</big></strong></td>\r\n<td><strong><big>みそ汁がぬるくなる</big></strong></td>\r\n<td>v</td>\r\n<td>s&uacute;p Miso &acirc;m ấm</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ラップ</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>t&uacute;i nhựa để bao g&oacute;i</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ラップをかぶせる</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>v</td>\r\n<td>đậy l&ecirc;n; tr&ugrave;m l&ecirc;n bằng t&uacute;i nhựa</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ラップをかける</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>v</td>\r\n<td>đậy l&ecirc;n; tr&ugrave;m l&ecirc;n bằng t&uacute;i nhựa</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ラップでくるむ</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>v</td>\r\n<td>bao phủ bằng t&uacute;i nhựa</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>（アルミ）ホイル</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>giấy nh&ocirc;m</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>- See more at: http://old.lophoctiengnhat.com/index.php?p=chitietbai&amp;id=1168#sthash.M7mz3Nz2.dpuf</p>', 'Từ vựng Soumatome 総まとめ_tuần 1, ngày 2', 'Từ vựng Soumatome 総まとめ_tuần 1, ngày 2', 'images (3)_37351586.jpg', NULL, NULL, '2014-12-24 10:45:29', 4, '第1週_2日目（日本語総まとめn3_語彙');
INSERT INTO `pages` (`id`, `name`, `title`, `content`, `des`, `keyword`, `image_icon`, `image`, `mp3`, `time_on`, `author_id`, `url`) VALUES
(36, '第1週_3日目（日本語総まとめN3_語彙', '第1週_3日目（日本語総まとめN3_語彙', '<p><big><strong>絵をみておぼえましょう！</strong></big></p>\r\n<p><a class="motaicho720" href="http://old.lophoctiengnhat.com/images/images/Trung_Cap/N3_Goi_Tuan1Ngay3_1.png"><img src="http://old.lophoctiengnhat.com/images/images/Trung_Cap/N3_Goi_Tuan1Ngay3_1.png" alt="" width="748" height="338" /></a></p>\r\n<p><a class="motaicho720" href="http://old.lophoctiengnhat.com/images/images/Trung_Cap/N3_Goi_Tuan1Ngay3_2.png"><img src="http://old.lophoctiengnhat.com/images/images/Trung_Cap/N3_Goi_Tuan1Ngay3_2.png" alt="" width="747" height="232" /></a></p>\r\n<table class="khung2" style="height: 180px;" border="0" width="748" cellspacing="0" cellpadding="0">\r\n<thead>\r\n<tr>\r\n<td scope="col"><strong>Mục từ</strong></td>\r\n<td scope="col"><strong>H&aacute;n tự</strong></td>\r\n<td scope="col"><strong>Loại</strong></td>\r\n<td scope="col"><strong>Nghĩa</strong></td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td><strong><big>ふた</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>c&aacute;i nắp nồi</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>なべ</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>c&aacute;i nồi</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>おたま</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>c&aacute;i g&aacute;o</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>フライパン</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>chảo r&aacute;n</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>フライがえし</big></strong></td>\r\n<td><strong><big>フライ返し</big></strong></td>\r\n<td>n</td>\r\n<td>dụng cụ đảo thức ăn khi r&aacute;n</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>すいはんき</big></strong></td>\r\n<td><strong><big>炊飯器</big></strong></td>\r\n<td>n</td>\r\n<td>nồi cơm điện</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>しゃもじ</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>c&aacute;i gi&aacute; m&uacute;c cơm</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p><big><strong>もっとおぼえましょう!</strong></big></p>\r\n<table class="khung2" style="height: 585px;" border="0" width="747" cellspacing="0" cellpadding="0">\r\n<thead>\r\n<tr>\r\n<td scope="col"><strong>Mục từ</strong></td>\r\n<td scope="col"><strong>H&aacute;n tự</strong></td>\r\n<td scope="col"><strong>Loại</strong></td>\r\n<td scope="col"><strong>Nghĩa</strong></td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td><strong><big>（お）ゆをわかす</big></strong></td>\r\n<td><strong><big>（お）湯を沸かす</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>đun nước s&ocirc;i</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>（お）ゆがわく</big></strong></td>\r\n<td><strong><big>（お）湯が沸く</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>nước s&ocirc;i</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>（お）ゆをさます</big></strong></td>\r\n<td><strong><big>（お）湯を冷ます</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>l&agrave;m nguội nước</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>（お）ゆがさめる</big></strong></td>\r\n<td><strong><big>（お）湯が冷める</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>nước nguội</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>なべをひにかける</big></strong></td>\r\n<td><strong><big>なべを火にかける</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>l&agrave;m n&oacute;ng chảo</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ごはんをたく</big></strong></td>\r\n<td><strong><big>ご飯を炊く</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>nấu cơm</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>あぶらをねっする</big></strong></td>\r\n<td><strong><big>油を熱する</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>l&agrave;m n&oacute;ng dầu</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>あぶらであげる</big></strong></td>\r\n<td><strong><big>油で揚げる</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>r&aacute;n bằng dầu</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>にる</big></strong></td>\r\n<td><strong><big>煮る</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>nấu</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ゆでる</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>luộc</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>いためる</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>x&agrave;o</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>むす</big></strong></td>\r\n<td><strong><big>蒸す</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>hấp</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>みずをきる</big></strong></td>\r\n<td><strong><big>水を切る</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>l&agrave;m r&aacute;o nước</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>まぜる</big></strong></td>\r\n<td><strong><big>混ぜる</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>trộn</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>こげる</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>bị ch&aacute;y, kh&ecirc;</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>ひっくりかえす</big></strong></td>\r\n<td><strong><big>ひっくり返す</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>đảo lộn; lật ngược</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>うらがえす</big></strong></td>\r\n<td><strong><big>裏返す</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>đảo lộn; lật ngược</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>あじをつける</big></strong></td>\r\n<td><strong><big>味をつける</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>cho gia vị</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>しおをくわえる</big></strong></td>\r\n<td><strong><big>塩を加える</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>th&ecirc;m muối</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>こしょうをふる</big></strong></td>\r\n<td><strong><big>こしょうを振る</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>rắc ti&ecirc;u</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>あじみをする</big></strong></td>\r\n<td><strong><big>味見をする</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>nếm thử</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>あじをみる</big></strong></td>\r\n<td><strong><big>味を見る</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>nếm thử</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>あじがこい</big></strong></td>\r\n<td><strong><big>味が濃い</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>vị nồng</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>あじがうすい</big></strong></td>\r\n<td><strong><big>味が薄い</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>vị nhạt</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>からい</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>cay</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>しおからい</big></strong></td>\r\n<td><strong><big>塩からい</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>mặn</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>すっぱい</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>chua</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>できあがる</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>l&agrave;m xong</td>\r\n</tr>\r\n<tr>\r\n<td><strong><big>できあがり</big></strong></td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>xong xu&ocirc;i</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Từ vựng Soumatome 総まとめ_tuần 1, ngày 3', 'Từ vựng Soumatome 総まとめ_tuần 1, ngày 3', 'images (3)_284224915.jpg', NULL, NULL, '2014-12-24 10:47:36', 4, '第1週_3日目（日本語総まとめn3_語彙'),
(37, 'Ôn tập Ngữ pháp N2', 'Ôn tập Ngữ pháp N2', '<h2><a href="http://www.vnjpclub.com/ngu-phap-n2.html">&Ocirc;n tập Ngữ ph&aacute;p N2</a></h2>\r\n<div>&nbsp;</div>\r\n<table class="khung2" style="height: 2316px;" border="1" width="752" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td><strong>TT</strong></td>\r\n<td><strong>Cấu tr&uacute;c</strong></td>\r\n<td><strong>&Yacute; nghĩa</strong></td>\r\n</tr>\r\n<tr>\r\n<td><strong>01</strong></td>\r\n<td><big>ことにする</big></td>\r\n<td>Quyết định l&agrave;m (kh&ocirc;ng l&agrave;m) g&igrave;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>02</strong></td>\r\n<td><big>〜ばいいのに</big></td>\r\n<td>Gi&aacute; m&agrave;, ước chi, đ&aacute;ng lẽ n&ecirc;n,</td>\r\n</tr>\r\n<tr>\r\n<td><strong>03</strong></td>\r\n<td><big>〜なかなか〜ない</big></td>\r\n<td>Kh&oacute; m&agrave; l&agrave;m g&igrave;, kh&ocirc;ng (như thế n&agrave;o)</td>\r\n</tr>\r\n<tr>\r\n<td><strong>04</strong></td>\r\n<td><big>〜しか〜ない</big></td>\r\n<td>Chỉ c&oacute; c&aacute;ch l&agrave;, đ&agrave;nh phải, Chỉ l&agrave;m g&igrave;, chỉ c&oacute;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>05</strong></td>\r\n<td><big>わけです</big></td>\r\n<td>Đương nhi&ecirc;n l&agrave;, tức l&agrave;, cuối c&ugrave;ng cũng l&agrave;, l&agrave;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>06</strong></td>\r\n<td><big>にあたる</big></td>\r\n<td>Tương ứng với, tức l&agrave;, tr&ugrave;ng với,Trong, tại</td>\r\n</tr>\r\n<tr>\r\n<td><strong>07</strong></td>\r\n<td><big>～以外の</big></td>\r\n<td>Ngo&agrave;i ~ ra th&igrave;, kh&aacute;c</td>\r\n</tr>\r\n<tr>\r\n<td><strong>08</strong></td>\r\n<td><big>～というわけではない</big></td>\r\n<td>Kh&ocirc;ng c&oacute; nghĩa l&agrave; ~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>09</strong></td>\r\n<td><big>～なるべく</big></td>\r\n<td>Cố gắng, cố sức ~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>10</strong></td>\r\n<td><big>～別に～ない</big></td>\r\n<td>Kh&ocirc;ng hề ~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>11</strong></td>\r\n<td><big>～たしか</big></td>\r\n<td>Chắc chắn l&agrave; ~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>12</strong></td>\r\n<td><big>何といっても</big></td>\r\n<td>D&ugrave; thế n&agrave;o th&igrave; ~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>13</strong></td>\r\n<td><big>～と言っても</big></td>\r\n<td>N&oacute;i như thế nhưng m&agrave;~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>14</strong></td>\r\n<td><big>～は～に限る</big></td>\r\n<td>Chỉ c&oacute;&hellip;l&agrave; được, chỉ giới hạn ở...l&agrave; được</td>\r\n</tr>\r\n<tr>\r\n<td><strong>15</strong></td>\r\n<td><big>～に気をつける</big></td>\r\n<td>Cẩn thận, thận trọng, để &yacute;~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>16</strong></td>\r\n<td><big>ろくに～ない</big></td>\r\n<td>Kh&ocirc;ng&hellip;một ch&uacute;t g&igrave;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>17</strong></td>\r\n<td><big>～せいか</big></td>\r\n<td>C&oacute; lẽ v&igrave;~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>18</strong></td>\r\n<td><big>～に越したことはない</big></td>\r\n<td>N&ecirc;n phải, tốt hơn~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>19</strong></td>\r\n<td><big>～くせに</big></td>\r\n<td>Mặc d&ugrave;&hellip;vậy m&agrave;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>20</strong></td>\r\n<td><big>～ゆえに／がゆえ（に）</big></td>\r\n<td>V&igrave;~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>21</strong></td>\r\n<td><big>～および</big></td>\r\n<td>V&agrave;~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>22</strong></td>\r\n<td><big>～まんいち（万一）</big></td>\r\n<td>Nếu lỡ trong trường hợp~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>23</strong></td>\r\n<td><big>～あえて</big></td>\r\n<td>D&aacute;m~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>24</strong></td>\r\n<td><big>～がてら</big></td>\r\n<td>Nh&acirc;n tiện~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>25</strong></td>\r\n<td><big>～にかけては／～にかけても</big></td>\r\n<td>Về, nếu n&oacute;i về, d&ugrave; n&oacute;i về~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>26</strong></td>\r\n<td><big>～かねない</big></td>\r\n<td>C&oacute; lẽ ~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>27</strong></td>\r\n<td><big>～からなる(成る)</big></td>\r\n<td>Tạo th&agrave;nh từ, h&igrave;nh th&agrave;nh từ~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>28</strong></td>\r\n<td><big>～ないで済む</big></td>\r\n<td>Xong rồi&hellip;kh&ocirc;ng, đủ rồi&hellip;kh&ocirc;ng</td>\r\n</tr>\r\n<tr>\r\n<td><strong>29</strong></td>\r\n<td><big>～わけにはいかない</big></td>\r\n<td>Kh&ocirc;ng thể, kh&ocirc;ng thể nhưng~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>30</strong></td>\r\n<td><big>～ないわけにはいかない</big></td>\r\n<td>C&oacute; thể, phải~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>31</strong></td>\r\n<td><big>～た上で</big></td>\r\n<td>Xong&hellip;rồi, về mặt&hellip;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>32</strong></td>\r\n<td><big>～ような気がする</big></td>\r\n<td>C&oacute; cảm gi&aacute;c l&agrave;~, dường như l&agrave;~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>33</strong></td>\r\n<td><big>～いったん～ば／と／たら</big></td>\r\n<td>Một khi~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>34</strong></td>\r\n<td><big>～でいいです</big></td>\r\n<td>L&agrave; được, l&agrave; đủ~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>35</strong></td>\r\n<td><big>～やむをえず</big></td>\r\n<td>Kh&ocirc;ng thể tr&aacute;nh khỏi, miễn cưỡng, bất đắc dĩ</td>\r\n</tr>\r\n<tr>\r\n<td><strong>36</strong></td>\r\n<td><big>～ではないだろうか</big></td>\r\n<td>C&oacute; lẽ sẽ&hellip;chăng?</td>\r\n</tr>\r\n<tr>\r\n<td><strong>37</strong></td>\r\n<td><big>～ろくに～ない</big></td>\r\n<td>Kh&ocirc;ng&hellip;một ch&uacute;t g&igrave;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>38</strong></td>\r\n<td><big>～より仕方がない</big></td>\r\n<td>Kh&ocirc;ng c&ograve;n c&aacute;ch n&agrave;o, hết c&aacute;ch~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>39</strong></td>\r\n<td><big>～せめて</big></td>\r\n<td>D&ugrave; chỉ &hellip;cũng muốn&hellip;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>40</strong></td>\r\n<td><big>～ものですから／～ものだから</big></td>\r\n<td>V&igrave;~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>41</strong></td>\r\n<td><big>～が気になる</big></td>\r\n<td>Lo lắng, băn khoăn, lo ngại~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>42</strong></td>\r\n<td><big>～思うように</big></td>\r\n<td>Như đ&atilde; nghĩ~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>43</strong></td>\r\n<td><big>～さすが（に）</big></td>\r\n<td>Quả l&agrave;~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>44</strong></td>\r\n<td><big>～ものの</big></td>\r\n<td>Mặc d&ugrave;&hellip;nhưng m&agrave;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>45</strong></td>\r\n<td><big>～一方、～一方で（は）</big></td>\r\n<td>Mặt kh&aacute;c, tr&aacute;i lại ~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>46</strong></td>\r\n<td><big>～それにしても</big></td>\r\n<td>D&ugrave; sao đi nữa, tuy nhi&ecirc;n, tuy vậy</td>\r\n</tr>\r\n<tr>\r\n<td><strong>47</strong></td>\r\n<td><big>～を～にまかせる</big></td>\r\n<td>Ph&oacute; th&aacute;c~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>48</strong></td>\r\n<td><big>～にいたるまで（至るまで）</big></td>\r\n<td>Từ&hellip;đến</td>\r\n</tr>\r\n<tr>\r\n<td><strong>49</strong></td>\r\n<td><big>～かねる</big></td>\r\n<td>Kh&ocirc;ng thể, kh&oacute; m&agrave; c&oacute; thể</td>\r\n</tr>\r\n<tr>\r\n<td><strong>50</strong></td>\r\n<td><big>～さしつかえない</big></td>\r\n<td>Kh&ocirc;ng c&oacute; vấn đề, kh&ocirc;ng g&acirc;y chướng ngại,</td>\r\n</tr>\r\n<tr>\r\n<td><strong>51</strong></td>\r\n<td><big>～たちまち</big></td>\r\n<td>Ngay lập tức, đột nhi&ecirc;n~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>52</strong></td>\r\n<td><big>～つうじて（通じて）</big></td>\r\n<td>Th&ocirc;ng qua (phương tiện), suốt (thời gian)</td>\r\n</tr>\r\n<tr>\r\n<td><strong>53</strong></td>\r\n<td><big>～なにしろ（何しろ）</big></td>\r\n<td>D&ugrave; thế n&agrave;o đi nữa~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>54</strong></td>\r\n<td><big>～かたわら（傍ら）</big></td>\r\n<td>B&ecirc;n cạnh~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>55</strong></td>\r\n<td><big>～ごとき／ごとく／ごとし（如し）&nbsp;</big></td>\r\n<td>Giống như l&agrave;~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>56</strong></td>\r\n<td><big>～たまらない&nbsp;</big></td>\r\n<td>Rất l&agrave;~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>57</strong></td>\r\n<td><big>～とうてい&nbsp;</big></td>\r\n<td>Ho&agrave;n to&agrave;n kh&ocirc;ng thể, ho&agrave;n to&agrave;n kh&ocirc;ng c&ograve;n c&aacute;ch n&agrave;o&hellip;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>58</strong></td>\r\n<td><big>～のぼる&nbsp;</big></td>\r\n<td>Đạt hơn~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>59</strong></td>\r\n<td><big>～さえ～ば&nbsp;</big></td>\r\n<td>Chỉ cần~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>60</strong></td>\r\n<td><big>～次第だ&nbsp;</big></td>\r\n<td>Chuyện l&agrave;, l&yacute; do l&agrave;, kết quả l&agrave;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>61</strong></td>\r\n<td><big>～あげく&nbsp;</big></td>\r\n<td>Sau &hellip;. rốt cuộc l&agrave; &hellip;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>62</strong></td>\r\n<td><big>～あまり&nbsp;</big></td>\r\n<td>V&igrave; &hellip; bất thường n&ecirc;n</td>\r\n</tr>\r\n<tr>\r\n<td><strong>63</strong></td>\r\n<td><big>～以上&nbsp;</big></td>\r\n<td>Chừng n&agrave;o, đ&atilde; l&agrave; .. th&igrave;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>64</strong></td>\r\n<td><big>～一方、～一方で（は）&nbsp;</big></td>\r\n<td>Mặt kh&aacute;c, tr&aacute;i lại &hellip; (diễn tả sự so s&aacute;nh)</td>\r\n</tr>\r\n<tr>\r\n<td><strong>65</strong></td>\r\n<td><big>～一方だ&nbsp;</big></td>\r\n<td>Trở n&ecirc;n &hellip;, ng&agrave;y c&agrave;ng&hellip;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>66</strong></td>\r\n<td><big>～以来&nbsp;</big></td>\r\n<td>Suốt từ đ&oacute; về sau &hellip;.</td>\r\n</tr>\r\n<tr>\r\n<td><strong>67</strong></td>\r\n<td><big>～上に&nbsp;</big></td>\r\n<td>Kh&ocirc;ng chỉ&hellip;hơn nữa</td>\r\n</tr>\r\n<tr>\r\n<td><strong>68</strong></td>\r\n<td><big>～上で&nbsp;</big></td>\r\n<td>Sau khi&hellip;th&igrave;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>69</strong></td>\r\n<td><big>～おかげで／～おかげだ&nbsp;</big></td>\r\n<td>Nhờ c&oacute;&hellip;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>70</strong></td>\r\n<td><big>～恐れがある&nbsp;</big></td>\r\n<td>C&oacute; lẽ, kh&ocirc;ng chừng l&agrave;, lo lắng về</td>\r\n</tr>\r\n<tr>\r\n<td><strong>71</strong></td>\r\n<td><big>～か～ないかのうちに&nbsp;</big></td>\r\n<td>Trong khi chưa&hellip;th&igrave; đ&atilde;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>72</strong></td>\r\n<td><big>～かける／～かけだ／～かけの&nbsp;</big></td>\r\n<td>Chưa xong, đang dở dang</td>\r\n</tr>\r\n<tr>\r\n<td><strong>73</strong></td>\r\n<td><big>～がち&nbsp;</big></td>\r\n<td>Thường ~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>74</strong></td>\r\n<td><big>～かと思うと／～かと思ったら&nbsp;</big></td>\r\n<td>Vừa thấy ~ th&igrave;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>75</strong></td>\r\n<td><big>～かねない&nbsp;</big></td>\r\n<td>C&oacute; lẽ ~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>76</strong></td>\r\n<td><big>～かのようだ／～かのような／～かのように&nbsp;</big></td>\r\n<td>Với vẻ giống như l&agrave;~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>77</strong></td>\r\n<td><big>～からいって&nbsp;</big></td>\r\n<td>Nếu đứng từ g&oacute;c độ ~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>78</strong></td>\r\n<td><big>～から～にかけて&nbsp;</big></td>\r\n<td>Từ khoảng ~ đến</td>\r\n</tr>\r\n<tr>\r\n<td><strong>79</strong></td>\r\n<td><big>～からして&nbsp;</big></td>\r\n<td>Ngay cả, đến cả&hellip;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>80</strong></td>\r\n<td><big>～からすると／からすれば&nbsp;</big></td>\r\n<td>Nh&igrave;n từ lập trường</td>\r\n</tr>\r\n<tr>\r\n<td><strong>81</strong></td>\r\n<td><big>～からといって&nbsp;</big></td>\r\n<td>V&igrave; l&iacute; do</td>\r\n</tr>\r\n<tr>\r\n<td><strong>82</strong></td>\r\n<td><big>～からには&nbsp;</big></td>\r\n<td>V&igrave; l&agrave;~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>83</strong></td>\r\n<td><big>～からみて&nbsp;</big></td>\r\n<td>Nh&igrave;n từ, x&eacute;t theo</td>\r\n</tr>\r\n<tr>\r\n<td><strong>84</strong></td>\r\n<td><big>～ かわりに&nbsp;</big></td>\r\n<td>Thay v&igrave;, đổi lại, mặt kh&aacute;c</td>\r\n</tr>\r\n<tr>\r\n<td><strong>85</strong></td>\r\n<td><big>～気味&nbsp;</big></td>\r\n<td>C&oacute; vẻ, hơi c&oacute;, cảm gi&aacute;c l&agrave;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>86</strong></td>\r\n<td><big>～きり／～きりだ&nbsp;</big></td>\r\n<td>Sau khi~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>87</strong></td>\r\n<td><big>～きる／きれる／きれない&nbsp;</big></td>\r\n<td>L&agrave;m cho xong, to&agrave;n bộ xong</td>\r\n</tr>\r\n<tr>\r\n<td><strong>88</strong></td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>89</strong></td>\r\n<td><big>～くらい／～ぐらい／くらいだ／～ぐらいだ&nbsp;</big></td>\r\n<td>Khoảng chừng, độ chừng</td>\r\n</tr>\r\n<tr>\r\n<td><strong>90</strong></td>\r\n<td><big>～げ&nbsp;</big></td>\r\n<td>C&oacute; vẻ ~, dường như~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>91</strong></td>\r\n<td><big>～こそ&nbsp;</big></td>\r\n<td>Ch&iacute;nh l&agrave;, ch&iacute;nh v&igrave;~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>92</strong></td>\r\n<td><big>～ことか&nbsp;</big></td>\r\n<td>Biết chừng n&agrave;o, biết bao</td>\r\n</tr>\r\n<tr>\r\n<td><strong>93</strong></td>\r\n<td><big>～ことから&nbsp;</big></td>\r\n<td>V&igrave;~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>94</strong></td>\r\n<td><big>～こととなっている／～ことになっている&nbsp;</big></td>\r\n<td>Dự định, quyết định～</td>\r\n</tr>\r\n<tr>\r\n<td><strong>95</strong></td>\r\n<td><big>～ことに（は）&nbsp;</big></td>\r\n<td>Thật l&agrave;~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>96</strong></td>\r\n<td><big>～ことはない／～こともない&nbsp;</big></td>\r\n<td>Kh&ocirc;ng cần phải l&agrave;m~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>97</strong></td>\r\n<td><big>～最中に&nbsp;</big></td>\r\n<td>Đang trong l&uacute;c~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>98</strong></td>\r\n<td><big>～ざるをえない&nbsp;</big></td>\r\n<td>Đ&agrave;nh phải, buộc phải, chỉ c&ograve;n c&aacute;ch phải</td>\r\n</tr>\r\n<tr>\r\n<td><strong>99</strong></td>\r\n<td><big>～しかない&nbsp;</big></td>\r\n<td>Chỉ l&agrave;, Chỉ c&ograve;n c&aacute;ch&hellip;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>100</strong></td>\r\n<td><big>～上は（じょう）&nbsp;</big></td>\r\n<td>Một khi m&agrave;~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>101</strong></td>\r\n<td><big>～せいだ／～せいで／～せいか&nbsp;</big></td>\r\n<td>Tại v&igrave;, c&oacute; phải tại v&igrave;~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>102</strong></td>\r\n<td><big>～どころか&nbsp;</big></td>\r\n<td>Thay v&igrave;&hellip;ngược lại</td>\r\n</tr>\r\n<tr>\r\n<td><strong>103</strong></td>\r\n<td><big>～どころではない&nbsp;</big></td>\r\n<td>Kh&ocirc;ng phải l&uacute;c để ~, kh&ocirc;ng thể ~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>104</strong></td>\r\n<td><big>～ないばかりか&nbsp;</big></td>\r\n<td>Kh&ocirc;ng những kh&ocirc;ng &hellip;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>105</strong></td>\r\n<td><big>～にきまってる&nbsp;</big></td>\r\n<td>Nhất định l&agrave;~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>106</strong></td>\r\n<td><big>～に比べて&nbsp;</big></td>\r\n<td>So với ~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>107</strong></td>\r\n<td><big>～に加えて&nbsp;</big></td>\r\n<td>Th&ecirc;m v&agrave;o, cộng th&ecirc;m, kh&ocirc;ng chỉ&hellip;v&agrave; c&ograve;n</td>\r\n</tr>\r\n<tr>\r\n<td><strong>108</strong></td>\r\n<td><big>～にこたえて&nbsp;</big></td>\r\n<td>Đ&aacute;p ứng, đ&aacute;p lại</td>\r\n</tr>\r\n<tr>\r\n<td><strong>109</strong></td>\r\n<td><big>～に先立つ&nbsp;</big></td>\r\n<td>Trước khi~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>110</strong></td>\r\n<td><big>～に際し（て）&nbsp;</big></td>\r\n<td>Khi, trường hợp, nh&acirc;n dịp~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>111</strong></td>\r\n<td><big>～にしろ／～にせよ&nbsp;</big></td>\r\n<td>Cho d&ugrave;&hellip;th&igrave; cũng, dẫu cho&hellip;th&igrave; cũng</td>\r\n</tr>\r\n<tr>\r\n<td><strong>112</strong></td>\r\n<td><big>～に相違ない&nbsp;</big></td>\r\n<td>Chắc chắn l&agrave;, đ&uacute;ng l&agrave;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>113</strong></td>\r\n<td><big>～に沿って&nbsp;</big></td>\r\n<td>Theo, tu&acirc;n theo</td>\r\n</tr>\r\n<tr>\r\n<td><strong>114</strong></td>\r\n<td><big>～につき&nbsp;</big></td>\r\n<td>V&igrave;~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>115</strong></td>\r\n<td><big>～にほかならない&nbsp;</big></td>\r\n<td>Ch&iacute;nh l&agrave;, kh&ocirc;ng g&igrave; kh&aacute;c hơn l&agrave;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>116</strong></td>\r\n<td><big>～にもかかわらず&nbsp;</big></td>\r\n<td>Bất chấp, mặc d&ugrave;~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>117</strong></td>\r\n<td><big>～抜く&nbsp;</big></td>\r\n<td>~Tới c&ugrave;ng</td>\r\n</tr>\r\n<tr>\r\n<td><strong>118</strong></td>\r\n<td><big>～のもとで/ もとに&nbsp;</big></td>\r\n<td>Dưới sự&hellip;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>119</strong></td>\r\n<td><big>～末&nbsp;</big></td>\r\n<td>Sau khi, sau một hồi~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>120</strong></td>\r\n<td><big>～まい&nbsp;</big></td>\r\n<td>Kh&ocirc;ng, chắc l&agrave; kh&ocirc;ng</td>\r\n</tr>\r\n<tr>\r\n<td><strong>121</strong></td>\r\n<td><big>～まいか&nbsp;</big></td>\r\n<td>Chắc l&agrave; ~/chẳng phải l&agrave; ~ hay sao/quyết kh&ocirc;ng~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>122</strong></td>\r\n<td><big>～わりに&nbsp;</big></td>\r\n<td>So với ~, th&igrave; tương đối</td>\r\n</tr>\r\n<tr>\r\n<td><strong>123</strong></td>\r\n<td><big>～をきっかけに&nbsp;</big></td>\r\n<td>Nh&acirc;n cơ hội, nh&acirc;n dịp một sự việc n&agrave;o đ&oacute;</td>\r\n</tr>\r\n<tr>\r\n<td><strong>124</strong></td>\r\n<td><big>～を契機として&nbsp;</big></td>\r\n<td>Nh&acirc;n cơ hội～</td>\r\n</tr>\r\n<tr>\r\n<td><strong>125</strong></td>\r\n<td><big>～をこめて&nbsp;</big></td>\r\n<td>Dồn cả, với tất cả, chứa chan</td>\r\n</tr>\r\n<tr>\r\n<td><strong>126</strong></td>\r\n<td><big>～をはじめ&nbsp;</big></td>\r\n<td>Trước hết phải kể tới~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>127</strong></td>\r\n<td><big>～をめぐる&nbsp;</big></td>\r\n<td>Xoay quanh~</td>\r\n</tr>\r\n<tr>\r\n<td><strong>128</strong></td>\r\n<td><big>～をもとにして</big></td>\r\n<td>Dựa tr&ecirc;n, căn cứ tr&ecirc;n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'Ngữ pháp là một trong những phần quan trọng trong đề thi N2 (JLPT). Mới đầu học chắc hẳn ai trong chúng ta cũng sẽ thấy Ngữ pháp trong tiếng Nhật la một phần khó, mong rằng bài viết này sẽ giúp mọi người thấy đơn giản hơn phần nào :). 皆さん、がんばれ。', 'Ngữ pháp là một trong những phần quan trọng trong đề thi N2 (JLPT). Mới đầu học chắc hẳn ai trong chúng ta cũng sẽ thấy Ngữ pháp trong tiếng Nhật la một phần khó, mong rằng bài viết này sẽ giúp mọi người thấy đơn giản hơn phần nào :). 皆さん、がんばれ。', 'tranphuochung.wordpress.com.nguphapn2_w_501320251.png', NULL, NULL, '2014-12-24 11:00:43', 4, 'on-tap-ngu-phap-n2'),
(38, '第1週_1日目（日本語総まとめN2_語彙）', 'Ôn tập Ngữ pháp 第1週_1日目（日本語総まとめN2_語彙）N2', '<h2><a class="motaicho720" href="http://old.lophoctiengnhat.com/images/images/Trung_Cap/N2_Goi_Tuan1Ngay1_0.png"><img src="http://old.lophoctiengnhat.com/images/images/Trung_Cap/N2_Goi_Tuan1Ngay1_0.png" alt="" width="754" height="437" /></a></h2>\r\n<table class="khung2" style="height: 761px;" border="0" width="751" cellspacing="0" cellpadding="0">\r\n<thead>\r\n<tr>\r\n<td scope="col"><strong>Mục từ</strong></td>\r\n<td scope="col"><strong>H&aacute;n tự</strong></td>\r\n<td scope="col"><strong>Loại</strong></td>\r\n<td scope="col"><strong>Nghĩa</strong></td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td><big>チラシ</big></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>tờ rơi</td>\r\n</tr>\r\n<tr>\r\n<td><big>びら</big></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>tờ rơi</td>\r\n</tr>\r\n<tr>\r\n<td><big>ちんたいアパート</big></td>\r\n<td><big>賃貸アパート</big></td>\r\n<td>n</td>\r\n<td>căn hộ cho thu&ecirc;</td>\r\n</tr>\r\n<tr>\r\n<td><big>やちん</big></td>\r\n<td><big>家賃</big></td>\r\n<td>n</td>\r\n<td>tiền thu&ecirc; nh&agrave;</td>\r\n</tr>\r\n<tr>\r\n<td><big>かんりひ</big></td>\r\n<td><big>管理費</big></td>\r\n<td>n</td>\r\n<td>ph&iacute; quản l&yacute;</td>\r\n</tr>\r\n<tr>\r\n<td><big>むりょう</big></td>\r\n<td><big>無料</big></td>\r\n<td>adi</td>\r\n<td>miễn ph&iacute;</td>\r\n</tr>\r\n<tr>\r\n<td><big>ただ</big></td>\r\n<td>&nbsp;</td>\r\n<td>adj, adv</td>\r\n<td>miễn ph&iacute;</td>\r\n</tr>\r\n<tr>\r\n<td><big>とほごふん</big></td>\r\n<td><big>徒歩５分</big></td>\r\n<td>n</td>\r\n<td>đi bộ 5 ph&uacute;t</td>\r\n</tr>\r\n<tr>\r\n<td><big>さんがいだて</big></td>\r\n<td><big>３階建て</big></td>\r\n<td>n</td>\r\n<td>nh&agrave; 3 tầng</td>\r\n</tr>\r\n<tr>\r\n<td><big>みなみむき</big></td>\r\n<td><big>南向き</big></td>\r\n<td>n</td>\r\n<td>hướng về ph&iacute;a nam</td>\r\n</tr>\r\n<tr>\r\n<td><big>ちくじゅうねん</big></td>\r\n<td><big>築１０年</big></td>\r\n<td>n</td>\r\n<td>x&acirc;y từ 10 năm trước</td>\r\n</tr>\r\n<tr>\r\n<td><big>じてんしゃおきば</big></td>\r\n<td><big>自転車置き場</big></td>\r\n<td>n</td>\r\n<td>chỗ đậu xe đạp</td>\r\n</tr>\r\n<tr>\r\n<td><big>マンション</big></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>chung cư</td>\r\n</tr>\r\n<tr>\r\n<td><big>しききん</big></td>\r\n<td><big>敷金</big></td>\r\n<td>n</td>\r\n<td>tiền đặt cọc (sau n&agrave;y ho&agrave;n trả lại)</td>\r\n</tr>\r\n<tr>\r\n<td><big>れいきん</big></td>\r\n<td><big>礼金</big></td>\r\n<td>n</td>\r\n<td>tiền lễ (sau n&agrave;y kh&ocirc;ng ho&agrave;n trả lại)</td>\r\n</tr>\r\n<tr>\r\n<td><big>１DK（ワンディーケー）</big></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>nh&agrave; c&oacute; 1 ph&ograve;ng ngo&agrave;i bếp v&agrave; chỗ ăn</td>\r\n</tr>\r\n<tr>\r\n<td><big>２LDK（ニーエルディーケー）</big></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>nh&agrave; c&oacute; 2 ph&ograve;ng ngo&agrave;i bếp, chỗ ăn v&agrave; ph&ograve;ng kh&aacute;ch</td>\r\n</tr>\r\n<tr>\r\n<td><big>ひろびろ</big><big>（と）している</big></td>\r\n<td><big>広々（と）している</big></td>\r\n<td>adj, adv</td>\r\n<td>rộng r&atilde;i, bao la</td>\r\n</tr>\r\n<tr>\r\n<td><big>ながめがいい</big></td>\r\n<td>&nbsp;</td>\r\n<td>adj</td>\r\n<td>tầm nh&igrave;n tốt</td>\r\n</tr>\r\n<tr>\r\n<td><big>ひあたりがいい</big></td>\r\n<td><big>日当たりがいい</big></td>\r\n<td>adj</td>\r\n<td>c&oacute; &aacute;nh s&aacute;ng tốt</td>\r\n</tr>\r\n<tr>\r\n<td><big>ひとどおりがおおい</big></td>\r\n<td><big>人通りが多い</big></td>\r\n<td>adj</td>\r\n<td>đ&ocirc;ng người qua lại (đường x&aacute;)</td>\r\n</tr>\r\n<tr>\r\n<td><big>いっけんや</big></td>\r\n<td><big>一軒家</big></td>\r\n<td>n</td>\r\n<td>nh&agrave; độc lập</td>\r\n</tr>\r\n<tr>\r\n<td><big>いっこだて</big></td>\r\n<td><big>一戸建て</big></td>\r\n<td>n</td>\r\n<td>nh&agrave; độc lập</td>\r\n</tr>\r\n<tr>\r\n<td><big>ものほし</big></td>\r\n<td><big>物干し</big></td>\r\n<td>n</td>\r\n<td>chỗ phơi quần &aacute;o</td>\r\n</tr>\r\n<tr>\r\n<td><big>ふろば</big></td>\r\n<td><big>風呂場</big></td>\r\n<td>n</td>\r\n<td>nh&agrave; tắm, ph&ograve;ng tắm</td>\r\n</tr>\r\n<tr>\r\n<td><big>せんめんじょ</big></td>\r\n<td><big>洗面所</big></td>\r\n<td>n</td>\r\n<td>chỗ rửa mặt</td>\r\n</tr>\r\n<tr>\r\n<td><big>ひとりぐらし</big></td>\r\n<td><big>一人暮らし</big></td>\r\n<td>n</td>\r\n<td>sống một m&igrave;nh</td>\r\n</tr>\r\n<tr>\r\n<td><big>ひとりずまい</big></td>\r\n<td><big>一人住まい</big></td>\r\n<td>n</td>\r\n<td>sống một m&igrave;nh</td>\r\n</tr>\r\n<tr>\r\n<td><big>きんじょづきあい</big></td>\r\n<td><big>近所付き合い</big></td>\r\n<td>n</td>\r\n<td>quan hệ h&agrave;ng x&oacute;m</td>\r\n</tr>\r\n<tr>\r\n<td><big>かれとつきあう</big></td>\r\n<td><big>彼と付き合う</big></td>\r\n<td>v</td>\r\n<td>kết giao bạn trai</td>\r\n</tr>\r\n<tr>\r\n<td><big>ともだちにつきあう</big></td>\r\n<td><big>友達に付き合う</big></td>\r\n<td>v</td>\r\n<td>kết giao bạn b&egrave;</td>\r\n</tr>\r\n<tr>\r\n<td><big>ひっこしのにづくりをする</big></td>\r\n<td><big>引っ越しの荷造りをする</big></td>\r\n<td>v</td>\r\n<td>đ&oacute;ng g&oacute;i h&agrave;nh l&yacute; (chuyển nh&agrave;)</td>\r\n</tr>\r\n<tr>\r\n<td><big>かいらんばんをまわす</big></td>\r\n<td><big>回覧板を回す</big></td>\r\n<td>v</td>\r\n<td>gửi bảng th&ocirc;ng b&aacute;o</td>\r\n</tr>\r\n<tr>\r\n<td><big>このあたり</big></td>\r\n<td><big>この辺り</big></td>\r\n<td>n</td>\r\n<td>v&ugrave;ng n&agrave;y</td>\r\n</tr>\r\n<tr>\r\n<td><big>このふきん</big></td>\r\n<td><big>この付近</big></td>\r\n<td>n</td>\r\n<td>quanh đ&acirc;y</td>\r\n</tr>\r\n<tr>\r\n<td><big>まんまえ</big></td>\r\n<td><big>真ん前</big></td>\r\n<td>n</td>\r\n<td>ngay ph&iacute;a trước</td>\r\n</tr>\r\n<tr>\r\n<td><big>まうしろ</big></td>\r\n<td><big>真後ろ</big></td>\r\n<td>n</td>\r\n<td>ngay ph&iacute;a sau</td>\r\n</tr>\r\n<tr>\r\n<td><big>まんなか</big></td>\r\n<td><big>真ん中</big></td>\r\n<td>n</td>\r\n<td>ở ngay giữa</td>\r\n</tr>\r\n<tr>\r\n<td><big>ななめまえ</big></td>\r\n<td><big>斜め前</big></td>\r\n<td>n</td>\r\n<td>đ&acirc;u đ&oacute; s&aacute;t b&ecirc;n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Từ vựng Soumatome 総まとめ N2_tuần 1, ngày 1', 'Từ vựng Soumatome 総まとめ N2_tuần 1, ngày 1', 'bg002_1383342671.jpg', NULL, NULL, '2014-12-24 11:06:10', 4, '第1週_1日目（日本語総まとめn2_語彙）'),
(39, '第1週_2日目（日本語総まとめN2_語彙）', '第1週_2日目（日本語総まとめN2_語彙）', '<h2><a class="motaicho720" href="http://old.lophoctiengnhat.com/images/images/Trung_Cap/N2_Goi_Tuan1Ngay2_0.png"><img src="http://old.lophoctiengnhat.com/images/images/Trung_Cap/N2_Goi_Tuan1Ngay2_0.png" alt="" width="751" height="444" /></a></h2>\r\n<table class="khung2" style="height: 754px;" border="0" width="751" cellspacing="0" cellpadding="0">\r\n<thead>\r\n<tr>\r\n<td scope="col"><strong>Mục từ</strong></td>\r\n<td scope="col"><strong>H&aacute;n tự</strong></td>\r\n<td scope="col"><strong>Loại</strong></td>\r\n<td scope="col"><strong>Nghĩa</strong></td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td><big>だん</big><big>ボール</big><big>ばこ</big></td>\r\n<td><big>段ボール箱</big></td>\r\n<td>n</td>\r\n<td>th&ugrave;ng c&aacute;t t&ocirc;ng</td>\r\n</tr>\r\n<tr>\r\n<td><big>ガムテープ</big></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>băng keo trong</td>\r\n</tr>\r\n<tr>\r\n<td><big>ポリ</big><big>ぶくろ</big></td>\r\n<td><big>ポリ袋</big></td>\r\n<td>n</td>\r\n<td>t&uacute;i nhựa</td>\r\n</tr>\r\n<tr>\r\n<td><big>レジ</big><big>ぶくろ</big></td>\r\n<td><big>レジ袋</big></td>\r\n<td>n</td>\r\n<td>bịch nhựa</td>\r\n</tr>\r\n<tr>\r\n<td><big>パック</big></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>vỉ (trứng), hộp (sữa)</td>\r\n</tr>\r\n<tr>\r\n<td><big>トレイ</big></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>miếng đựng thịt, c&aacute;</td>\r\n</tr>\r\n<tr>\r\n<td><big>キャップ</big></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>nắp chai</td>\r\n</tr>\r\n<tr>\r\n<td><big>ラベル</big></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>nh&atilde;n m&aacute;c</td>\r\n</tr>\r\n<tr>\r\n<td><big>ペットボトル</big></td>\r\n<td>&nbsp;</td>\r\n<td>n</td>\r\n<td>chai</td>\r\n</tr>\r\n<tr>\r\n<td><big>かいかえる</big></td>\r\n<td><big>買い換える</big></td>\r\n<td>v</td>\r\n<td>mua c&aacute;i mới (thay c&aacute;i cũ)</td>\r\n</tr>\r\n<tr>\r\n<td><big>かでんせいひん</big></td>\r\n<td><big>家電製品</big></td>\r\n<td>n</td>\r\n<td>sản phẩm điện gia dụng</td>\r\n</tr>\r\n<tr>\r\n<td><big>しょう</big><big>エネ</big></td>\r\n<td><big>省エネ</big></td>\r\n<td>n</td>\r\n<td>tiết kiệm năng lượng</td>\r\n</tr>\r\n<tr>\r\n<td><big>でんきだいをせつやくする</big></td>\r\n<td><big>電気代を節約する</big></td>\r\n<td>v</td>\r\n<td>tiết kiệm chi ph&iacute; điện</td>\r\n</tr>\r\n<tr>\r\n<td><big>ごみがたまる</big></td>\r\n<td>&nbsp;</td>\r\n<td>v</td>\r\n<td>ứ đọng r&aacute;c</td>\r\n</tr>\r\n<tr>\r\n<td><big>リサイクルに</big><big>だす</big></td>\r\n<td><big>リサイクルに出す</big></td>\r\n<td>v</td>\r\n<td>cho v&agrave;o khu chứa r&aacute;c</td>\r\n</tr>\r\n<tr>\r\n<td><big>ふようひんをしょぶんする</big></td>\r\n<td><big>不用品を処分する</big></td>\r\n<td>v</td>\r\n<td>vứt đi đồ kh&ocirc;ng cần thiết</td>\r\n</tr>\r\n<tr>\r\n<td><big>ごみをぶんべつする</big></td>\r\n<td><big>ごみを分別する</big></td>\r\n<td>v</td>\r\n<td>ph&acirc;n loại r&aacute;c</td>\r\n</tr>\r\n<tr>\r\n<td><big>もえるごみ</big></td>\r\n<td><big>燃えるごみ</big></td>\r\n<td>n</td>\r\n<td>r&aacute;c ch&aacute;y được</td>\r\n</tr>\r\n<tr>\r\n<td><big>かねんごみ</big></td>\r\n<td><big>可燃ごみ</big></td>\r\n<td>n</td>\r\n<td>r&aacute;c ch&aacute;y được</td>\r\n</tr>\r\n<tr>\r\n<td><big>もやせるごみ</big></td>\r\n<td><big>燃やせるごみ</big></td>\r\n<td>n</td>\r\n<td>r&aacute;c ch&aacute;y được</td>\r\n</tr>\r\n<tr>\r\n<td><big>もえないごみ</big></td>\r\n<td><big>燃えないごみ</big></td>\r\n<td>n</td>\r\n<td>r&aacute;c kh&ocirc;ng ch&aacute;y được</td>\r\n</tr>\r\n<tr>\r\n<td><big>ふねんごみ</big></td>\r\n<td><big>不燃ごみ</big></td>\r\n<td>n</td>\r\n<td>r&aacute;c kh&ocirc;ng ch&aacute;y được</td>\r\n</tr>\r\n<tr>\r\n<td><big>もやせないごみ</big></td>\r\n<td><big>燃やせないごみ</big></td>\r\n<td>n</td>\r\n<td>r&aacute;c kh&ocirc;ng ch&aacute;y được</td>\r\n</tr>\r\n<tr>\r\n<td><big>なまごみ</big></td>\r\n<td><big>生ごみ</big></td>\r\n<td>n</td>\r\n<td>r&aacute;c sinh hoạt</td>\r\n</tr>\r\n<tr>\r\n<td><big>そだいごみ</big></td>\r\n<td><big>粗大ごみ</big></td>\r\n<td>n</td>\r\n<td>r&aacute;c lớn (b&agrave;n, ghế...)</td>\r\n</tr>\r\n<tr>\r\n<td><big>しげんごみ</big></td>\r\n<td><big>資源ごみ</big></td>\r\n<td>n</td>\r\n<td>r&aacute;c t&aacute;i chế</td>\r\n</tr>\r\n<tr>\r\n<td><big>していのごみぶくろ</big></td>\r\n<td><big>指定のごみ袋</big></td>\r\n<td>n</td>\r\n<td>bịch đựng r&aacute;c chỉ định</td>\r\n</tr>\r\n<tr>\r\n<td><big>ペットボトルをすすぐ</big></td>\r\n<td>&nbsp;</td>\r\n<td>v</td>\r\n<td>rửa sơ chai lọ</td>\r\n</tr>\r\n<tr>\r\n<td><big>ラベルをはがす</big></td>\r\n<td>&nbsp;</td>\r\n<td>v</td>\r\n<td>lột nh&atilde;n</td>\r\n</tr>\r\n<tr>\r\n<td><big>シールをはる</big></td>\r\n<td><big>シールを貼る</big></td>\r\n<td>v</td>\r\n<td>d&aacute;n ni&ecirc;m phong</td>\r\n</tr>\r\n<tr>\r\n<td><big>アルミ</big><big>かんをつぶす</big></td>\r\n<td><big>アルミ缶をつぶす</big></td>\r\n<td>v</td>\r\n<td>đ&egrave; n&aacute;t lon nhom</td>\r\n</tr>\r\n<tr>\r\n<td><big>ふるしんぶんをさいりようする</big></td>\r\n<td><big>古新聞を再利用する</big></td>\r\n<td>v</td>\r\n<td>t&aacute;i sử dụng b&aacute;o cũ</td>\r\n</tr>\r\n<tr>\r\n<td><big>みずがもれる</big></td>\r\n<td><big>水がもれる</big></td>\r\n<td>v</td>\r\n<td>r&ograve; rỉ nước</td>\r\n</tr>\r\n<tr>\r\n<td><big>みずをもらす</big></td>\r\n<td><big>水をもらす</big></td>\r\n<td>v</td>\r\n<td>l&agrave;m rỉ ra</td>\r\n</tr>\r\n<tr>\r\n<td><big>ひみつがもれる</big></td>\r\n<td><big>秘密がもれる</big></td>\r\n<td>v</td>\r\n<td>lộ b&iacute; mật</td>\r\n</tr>\r\n<tr>\r\n<td><big>ひみつをもらす</big></td>\r\n<td><big>秘密をもらす</big></td>\r\n<td>v</td>\r\n<td>l&agrave;m lộ b&iacute; mật</td>\r\n</tr>\r\n<tr>\r\n<td><big>こぼれる</big></td>\r\n<td>&nbsp;</td>\r\n<td>v</td>\r\n<td>tr&agrave;n ra, rơi ra</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Từ vựng Soumatome 総まとめ N2_tuần 1, ngày 2', 'Từ vựng Soumatome 総まとめ N2_tuần 1, ngày 2', 'bg002_1005351505.jpg', NULL, NULL, '2014-12-24 11:09:15', 4, '第1週_2日目（日本語総まとめn2_語彙）'),
(40, '第1週_3日目（日本語総まとめN2_語彙）', '第1週_3日目（日本語総まとめN2_語彙）', '<h2><img src="http://old.lophoctiengnhat.com/images/images/Trung_Cap/N2_Goi_Tuan1Ngay3_0.png" alt="" width="753" height="489" /></h2>\r\n<table class="khung2" style="height: 580px;" border="0" width="744" cellspacing="0" cellpadding="0">\r\n<thead>\r\n<tr>\r\n<td scope="col"><strong>Mục từ</strong></td>\r\n<td scope="col"><strong>H&aacute;n tự</strong></td>\r\n<td scope="col"><strong>Loại</strong></td>\r\n<td scope="col"><strong>Nghĩa</strong></td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td><big>「よくいらっしゃいました。どうぞおあがりください。」</big></td>\r\n<td>&nbsp;</td>\r\n<td>s</td>\r\n<td>Cảm ơn anh đ&atilde; cất c&ocirc;ng gh&eacute; chơi, xin mời v&agrave;o.</td>\r\n</tr>\r\n<tr>\r\n<td><big>「おじゃまします。」</big></td>\r\n<td>&nbsp;</td>\r\n<td>s</td>\r\n<td>Xin l&agrave;m phiền (sử dụng khi bước v&agrave;o nh&agrave;)</td>\r\n</tr>\r\n<tr>\r\n<td><big>「ごぶさたしています。おげんきで（いらっしゃいま）したか。」</big></td>\r\n<td><big>「ご無沙汰しています。お元気で（いらっしゃいま）したか。」</big></td>\r\n<td>s</td>\r\n<td>L&acirc;u rồi kh&ocirc;ng li&ecirc;n lạc, anh vẫn khỏe chứ?</td>\r\n</tr>\r\n<tr>\r\n<td><big>「ええ、おかげさまで。」</big></td>\r\n<td>&nbsp;</td>\r\n<td>s</td>\r\n<td>V&acirc;ng, nhờ ơn trời t&ocirc;i vẫn khỏe.</td>\r\n</tr>\r\n<tr>\r\n<td><big>「つまらないものですが・・・。」</big></td>\r\n<td>&nbsp;</td>\r\n<td>s</td>\r\n<td>Đ&acirc;y l&agrave; ch&uacute;t qu&agrave; mọn... (d&ugrave;ng khi tặng qu&agrave;)</td>\r\n</tr>\r\n<tr>\r\n<td><big>「ありがとうございます。えんりょなくいただきます。」</big></td>\r\n<td><big>「ありがとうございます。遠慮なくいただきます。」</big></td>\r\n<td>s</td>\r\n<td>Xin cảm ơn anh, vậy t&ocirc;i xin mạn ph&eacute;p nhận ạ.</td>\r\n</tr>\r\n<tr>\r\n<td><big>「おちゃをおもちします。」</big></td>\r\n<td><big>「お茶をお持ちします。」</big></td>\r\n<td>s</td>\r\n<td>T&ocirc;i sẽ đi lấy tr&agrave;.</td>\r\n</tr>\r\n<tr>\r\n<td><big>「どおぞおかまいなく。」</big></td>\r\n<td>&nbsp;</td>\r\n<td>s</td>\r\n<td>Xin mời, đừng ngại nh&eacute;.</td>\r\n</tr>\r\n<tr>\r\n<td><big>「ゆっくりしていってください。」</big></td>\r\n<td>&nbsp;</td>\r\n<td>s</td>\r\n<td>H&atilde;y ở lại l&acirc;u l&acirc;u ch&uacute;t nh&eacute;.</td>\r\n</tr>\r\n<tr>\r\n<td><big>「ごゆっくりおめしあがりください。」</big></td>\r\n<td><big>「ごゆっくりお召し上がりください。」</big></td>\r\n<td>s</td>\r\n<td>Anh cứ thoải m&aacute;i d&ugrave;ng bữa đi ạ.</td>\r\n</tr>\r\n<tr>\r\n<td><big>ゆうじんをいえにまねく</big></td>\r\n<td><big>友人を家に招く</big></td>\r\n<td>s</td>\r\n<td>Mời bạn đến nh&agrave; chơi.</td>\r\n</tr>\r\n<tr>\r\n<td><big>ゆうじんをいえにしょうたいする</big></td>\r\n<td><big>友人を家に招待する</big></td>\r\n<td>s</td>\r\n<td>Mời bạn đến nh&agrave; chơi.</td>\r\n</tr>\r\n<tr>\r\n<td><big>すわりごこちがいいソファー</big></td>\r\n<td><big>座り心地がいいソファー</big></td>\r\n<td>n</td>\r\n<td>Ghế sofa ngồi thật dễ chịu.</td>\r\n</tr>\r\n<tr>\r\n<td><big>ねごこちがいいベッド</big></td>\r\n<td><big>寝心地がいいベッド</big></td>\r\n<td>n</td>\r\n<td>Giường nằm thật thoải m&aacute;i.</td>\r\n</tr>\r\n<tr>\r\n<td><big>いごこちがいいいえ</big></td>\r\n<td><big>居心地がいい家</big></td>\r\n<td>n</td>\r\n<td>Căn nh&agrave; thật thoải m&aacute;i.</td>\r\n</tr>\r\n<tr>\r\n<td><big>いえですごす</big></td>\r\n<td><big>家で過ごす</big></td>\r\n<td>s</td>\r\n<td>Sống ở nh&agrave;.</td>\r\n</tr>\r\n<tr>\r\n<td><big>ゆっくりする</big></td>\r\n<td>&nbsp;</td>\r\n<td>v</td>\r\n<td>Thoải m&aacute;i nghỉ ngơi</td>\r\n</tr>\r\n<tr>\r\n<td><big>のんびりする</big></td>\r\n<td>&nbsp;</td>\r\n<td>v</td>\r\n<td>Thong thả</td>\r\n</tr>\r\n<tr>\r\n<td><big>くつろぐ</big></td>\r\n<td>&nbsp;</td>\r\n<td>v</td>\r\n<td>Thư gi&atilde;n</td>\r\n</tr>\r\n<tr>\r\n<td><big>かいてきにくらす</big></td>\r\n<td><big>快適に暮らす</big></td>\r\n<td>s</td>\r\n<td>Sống một c&aacute;ch thoải m&aacute;i.</td>\r\n</tr>\r\n<tr>\r\n<td><big>はんがくセール</big></td>\r\n<td><big>半額セール</big></td>\r\n<td>n</td>\r\n<td>Giảm nửa gi&aacute;</td>\r\n</tr>\r\n<tr>\r\n<td><big>てごろなかかく</big></td>\r\n<td><big>手ごろな価格</big></td>\r\n<td>n</td>\r\n<td>Gi&aacute; phải chăng</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Từ vựng Soumatome 総まとめ N2_tuần 1, ngày 3', 'Từ vựng Soumatome 総まとめ N2_tuần 1, ngày 3', 'bg002_1297150014.jpg', NULL, NULL, '2014-12-24 11:11:12', 4, '第1週_3日目（日本語総まとめn2_語彙）');

-- --------------------------------------------------------

--
-- Table structure for table `page_menu`
--

CREATE TABLE IF NOT EXISTS `page_menu` (
  `page_id` int(10) NOT NULL,
  `menu_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page_menu`
--

INSERT INTO `page_menu` (`page_id`, `menu_id`) VALUES
(32, 7),
(26, 9),
(27, 9),
(28, 9),
(29, 9);

-- --------------------------------------------------------

--
-- Table structure for table `page_thumuc`
--

CREATE TABLE IF NOT EXISTS `page_thumuc` (
  `page_id` int(10) NOT NULL,
  `thumuc_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page_thumuc`
--

INSERT INTO `page_thumuc` (`page_id`, `thumuc_id`) VALUES
(24, 8),
(25, 8),
(30, 9),
(31, 9);

-- --------------------------------------------------------

--
-- Table structure for table `page_thumuc2`
--

CREATE TABLE IF NOT EXISTS `page_thumuc2` (
  `page_id` int(10) NOT NULL,
  `thumuc2_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page_thumuc2`
--

INSERT INTO `page_thumuc2` (`page_id`, `thumuc2_id`) VALUES
(20, 4),
(21, 4),
(22, 5),
(23, 5),
(33, 54),
(34, 55),
(35, 55),
(36, 55),
(37, 56),
(38, 57),
(39, 57),
(40, 57);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
`id` int(10) NOT NULL,
  `question` text NOT NULL,
  `answer` smallint(6) NOT NULL,
  `giaithich` text,
  `dethi_id` int(10) NOT NULL,
  `stt` int(4) NOT NULL,
  `score` smallint(6) DEFAULT '2'
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question`, `answer`, `giaithich`, `dethi_id`, `stt`, `score`) VALUES
(1, '<p>この学校では、テストの結果をもとにクラスを決める（　　　）になっている。</p>', 3, NULL, 1, 1, 3),
(2, '<p>どうしてもできないなら、あきらめる（　　　）。</p>', 3, NULL, 1, 2, 3),
(3, '<p>この地方は一年（　　　）暖かく、とても過ごしやすい。</p>', 4, NULL, 1, 3, 3),
(4, '<p>漢字（　　　）、まだひらがなも全部覚えていない。</p>', 2, NULL, 1, 4, 3),
(5, '<p>やっぱり一流のホテルだね。部屋のドア（　　　）違うなあ。</p>', 4, NULL, 1, 5, 3),
(6, '<p>あのう、山木先生でいらっしゃいますか。私、先日の講演会で（　　　）鈴木と申します</p>', 3, NULL, 1, 6, 3),
(7, '<p>彼は自分では何もしない（　　　）、文句ばかり言う。</p>', 1, NULL, 1, 7, 3),
(8, '<p>わずか２週間でこのように長い小説を書いたとは、（　　　）。</p>', 2, NULL, 1, 8, 3),
(9, '<p>日本では、６月中旬から７月中旬（　　　）の雨の多い季節を梅雨と呼んでいる。</p>', 4, NULL, 1, 9, 3),
(10, '<p>家を（　　　）とたん、石につまずいて転んでしまった</p>', 1, NULL, 1, 10, 3),
(11, '<p><big><strong>次の(1)～(5)の文章を読んで、後の問いに対する答えとして最もよいものを、１・２・３・４から一つ選びなさい。</strong></big></p>\r\n<p>&nbsp;</p>\r\n<p><big>　僕はノルウェー系アメリカ人の３世です。祖父母の家でいっぱいノルウェー話を聞いていした。小さい時から二つの言語があるのが当たり前だった。</big></p>\r\n<p><big>　しかし、人生が変わるぐらい影響を受けたのは17歳で日本に留学したこと。山梨県の高校に１年通った。日本語が英語とあまりに違ってびっくりした。しゃべりたいのに誰ともしゃべれないつらい日々が３か月ぐらい続いた。</big></p>\r\n<p><big>　ホストファミリーの食卓で家族のお兄さんが茶わんを出して「お変わり」と言った。最初は聞き取れなかったけど、ある日、僕が「おかわり」と言ったらお母さんがもっとご飯を入れてくれた。その瞬間、「おかわり」は僕の日本語になった。その<span style="text-decoration: underline;">喜び</span>は今でも忘れられません。</big></p>\r\n<p>&nbsp;</p>\r\n<p>　筆者の言う<span style="text-decoration: underline;">喜び</span>は何によるものか。</p>', 1, NULL, 2, 1, 4),
(12, '<p><big>　読書には２種類あるといわれる。ひとつは楽しみのための読書である。小説や雑誌を読むのがこれだ。もうひとつは、知らないことを学ぶ読書である。この読書は苦しいこともある。新しい考えを理解するには頭を働かさなければならないし、書いてあることがわからなければ何度も読み直して考えるからだ。だが、<span style="text-decoration: underline;">本当の読解の力</span>はこの知らないことを学ぶ読書で試される。逆に、楽しい読書の場合には、知っている話題や知識で書いてあるから、それほど読解の力がなくても読めるのである。</big></p>\r\n<p>&nbsp;</p>\r\n<p>この文章によると、本当の読解の力とはどのような能力か。</p>', 4, NULL, 2, 2, 4),
(13, '<p><big>「携帯電話をお持ちのお客様は、マナーモードではなく、必ず電源からお切りください」というアナウンスが流れました。すると私の近くにいた６０代からいの女性達が，「電源を切ったって、どうやって切るのよねえ。」と言い合っていたのです。</big></p>\r\n<p><big>　その話を聞いて私は、「知らないの？」と驚くと同時に、「そうだったのか」と思ったのでした。劇場などで携帯を鳴らしてしまうのは、比較的高齢のかたが多いものですが、不注意で電源を切らないのではなく、単に「<span style="text-decoration: underline;">知らない</span>」だけだったのかも、と。</big></p>', 3, NULL, 2, 3, 4),
(14, '<p><big>チンパンジー明らかにうそをつく。ふたのある箱を左右に一個ずつ置き、仕切りの向こうでこっちを見ているチンパンジーの目の前で、例えば左の箱にチンパンジーが好きなバナナを入れて、ふたを閉める。</big></p>\r\n<p><big>　やがて飼育人がやってくる。あらかじめ<sub>（注）</sub>チンパンジーには、この飼育人はよい人で、バナナの入った箱を指すと箱のふたを開けてバナナを取りだし、チンパンジーに渡してくれると教えてある。チンパンジーは嬉しそうに、バナナの入った左の箱を指す。</big></p>\r\n<p><big>　けれど、あらかじめ「悪い」と教えてある飼育人、つまりバナナをチンパンジーにくれないで自分で食べてしまう飼育人がやってくると、チンパンジーはうそをつく。チンパンジーはバナナの入っていない<span style="text-decoration: underline;">右の箱を指す</span>のである。</big></p>\r\n<p>&nbsp;</p>\r\n<p><big>チンパンジーが<span style="text-decoration: underline;">右の箱を指す</span>のはなんのためか。</big></p>', 3, NULL, 2, 4, 4),
(15, '<p><big>「まじめさ」というものはある意味で危険です。というのは、まじめな人ほどよく悩むからです。</big></p>\r\n<p><big>　まじめな人間は、他人からの「期待」に応えようとして悩むのですね。</big></p>\r\n<p><big>　他人からの「期待」といっても、それは明文化<sub>(注）</sub>されていません。私たちは幼少のころから、「いい子」になりなさい、「</big><ruby><big>立派</big><rt></rt></ruby></p>\r\n<p>&nbsp;</p>\r\n<p>筆者によると、<span style="text-decoration: underline;">「期待」に応えることはむずかしい</span>のはなぜか。</p>', 3, NULL, 2, 5, 4),
(18, '<p style="margin: 0px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><span style="color: #000080;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 20px;"><strong>次の(1)～(5)の文章を読んで、後の問いに対する答えとして最もよいものを、１・２・３・４から一つ選びなさい。</strong></span></big></span></p>\r\n<p style="margin: 0px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 20px;">　パックツアー</span></big><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 20px;"><sup>（注１）</sup></span></big><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 20px;">でなく航空券、ホテル、現地での交通手段を自分で<sup>（注２）</sup>手配して海外へ行く女性が増えてきた。こうした自由旅行といえばこれまで、学生など若者が「主流」だったが、子育てを終えた４０代以降の女性も「＿＿＿＿」<sup>（注３）</sup>とばかりに、積極的に海外に出ようとしている。</span></big></p>\r\n<p style="margin: 0px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;">&nbsp;</p>\r\n<p style="margin: 0px 0px 0px 40px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 18px;">（注１）パックツアー：乗り物から宿泊、食事などまですべてのサービスを提供する旅行。</span></big></p>\r\n<p style="margin: 0px 0px 0px 40px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 18px;">（注２）手配する：準備する</span></big></p>\r\n<p style="margin: 0px 0px 0px 40px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 18px;">（注３）～とばかりに：言いたそうに。言いたい気持ちで。</span></big></p>\r\n<p style="margin: 0px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;">&nbsp;</p>\r\n<p style="margin: 0px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 18px;">　「</span><span style="font-size: 20px;">＿＿＿<span class="Apple-converted-space">&nbsp;</span></span></big><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 18px;">」に入る言葉として一番適当なものはどれか。</span></big></p>', 2, NULL, 3, 1, 4),
(19, '<p style="margin: 0px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 20px;">名刺は本来、身分が確かであることを証明するために使われる。ところ が、この男の名刺といったら、職名が「市民活動家」、「自宅______車」となっていて、むしろ「怪しげな人物」であることを強調しているようなのだ。 軽乗用車の中を覗けば寝袋や焜炉やインスタント麺などが積んであって、「自宅_____車」というのはウソではない。</span></big></p>\r\n<p style="margin: 0px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;">&nbsp;</p>\r\n<p style="margin: 0px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 18px;">「自宅______車」とは、何の意味ですか。</span></big></p>\r\n<p><span style="color: #0066cc; font-family: ''Ms Mincho''; font-size: 18.1818180084229px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 26px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #f8f0f0;">&nbsp;</span></p>', 1, NULL, 3, 2, 4),
(20, '<p style="margin: 0px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 20px;">難しいことを孫娘に説明しても分かりっこない。無言で、ぐちゃぐちゃに<sup>（注１）</sup>潰されるキャベツ<sup>（注２）</sup>を見ていた。すると、トラクターから降りた農家の人が大きなキャベツを２個もぎ取り<sup>（注３）</sup>、「<strong><span style="text-decoration: underline;">いくらでも持って行って</span></strong>」と自嘲気味に手渡してくれた。私は感謝したが、なんとも割り切れない<sup>（注４）</sup>。</span></big></p>\r\n<p style="margin: 0px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;">&nbsp;</p>\r\n<p style="margin: 0px 0px 0px 40px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 18px;">（注１）ぐちゃぐちゃに：めちゃめちゃに。</span></big></p>\r\n<p style="margin: 0px 0px 0px 40px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 18px;">（注２）キャベツ：野菜の一種。</span></big></p>\r\n<p style="margin: 0px 0px 0px 40px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 18px;">（注３）もぎ取りる：無理に捩じってとる。</span></big></p>\r\n<p style="margin: 0px 0px 0px 40px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 18px;">（注４）割り切れない：納得できない。</span></big></p>\r\n<p style="margin: 0px 0px 0px 40px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;">&nbsp;</p>\r\n<p style="margin: 0px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 18px;">　「<span style="text-decoration: underline;">いくらでも持って行った</span>」と言った農家の人の気持ちはどれか。</span></big></p>', 3, NULL, 3, 3, 4),
(21, '<table style="color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; width: 630px; background-color: #f8f0f0;" border="1" cellspacing="1" cellpadding="1">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p style="margin: 0px; padding: 0px;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 20px;">　和子さん</span></big></p>\r\n<p style="margin: 0px; padding: 0px;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 20px;">　 お元気ですか。北京来て明日でちょうど半年になります。毎日少しずつ寒くなり、昨日は雪が降りました。今年は、夏らしい暑い日が少なく、ずっと涼しい夏が 続きました。夏休みに地元でボランティアにも参加したので、休みらしい日はほとんどあませんでした。今、中国語高級クラスで習っていますが、まだ書くの も、読むのも遅いので宿題をするのに時間がかかります。特に、中国古典文字の授業は大変です。辞書を使わないで本が読めればいいのですが、私にはまだでき ません。テストの時は、辞書を持って行ってはいけないので、時々困ります。</span></big></p>\r\n<p style="margin: 0px; padding: 0px;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 20px;">　 そうそう、私のルームメートの事をまだ書いていませんでしたね。私のルームメートは、広東省から来た人で陳と言います。陳さんはフランス語とドイツ語が話 せて、日本語も少し読めます。それに、お料理がとても上手なんです。先週の日曜日に、郊外に住んでいるクラスメートの家は別荘でその広さと豪華さに驚きま した。一人が一つ得意な料理を作ることになっているので、私は困りました。私は料理がだめなので、しかたがなく陳さんに頼んで作ってもらいました。あいに く、その日は雨に降られて、外ではできませんでした。色々な人に会えて、とても楽しいパーティーでした。</span></big></p>\r\n<p style="margin: 0px; padding: 0px;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 20px;">　私が、北京にいる間にぜひ遊びに来てください。きれいな北京大学キャンパスを見せてあげたいと思います。次の元旦のお休みでもかまいませんよ。そちらのご都合を教えてください。最後になりましたが、お宅のみなさんによろしく。では、また書きます。お元気で。</span></big></p>\r\n<p style="margin: 0px; padding: 0px;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 20px;">　１１月１０日</span></big></p>\r\n<p style="margin: 0px; padding: 0px;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 20px;">　道子</span></big></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style="margin: 0px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;">&nbsp;</p>\r\n<p style="margin: 0px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 18px;">パーティーの日に道子さんはどうでしたか。</span></big></p>', 4, NULL, 3, 4, 4),
(22, '<p style="margin: 0px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 20px;">　二十世紀という一つの歴史が終わりました。まず、特筆すべきは戦後の復興を終えた後、わが国は急速に世界の主要な<sup>（注１）</sup>プレーヤーになったことでした。それを可能にしたのが、この間における世界でも類を見ない「驚くべき例外的高成長」でした。しかしながら、このドラマの最終章である九十年代には一転して「驚くべき例外的低成長」という<sup>（注２）</sup>フィナーレを迎えようとは誰が予想したでしょうか。いわゆる「失われた十年」です。そして、２１世紀最初の年である現在においてもこの逆境から脱却できない状況にあります。</span></big></p>\r\n<p style="margin: 0px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 20px;">　いくらかの経済指標でこの点を確認してみましょう。まずは経済成長率です。下のグラフからも分かるように、わが国の経済成長率の推移は主に次の四つの特徴が挙げられます。</span></big></p>\r\n<p style="margin: 0px 0px 0px 40px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 20px;">　１．戦後から７０年代初頭までは年率で１０％程度の高い成長を達成した。</span></big></p>\r\n<p style="margin: 0px 0px 0px 40px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 20px;">　２．二度にわたる石油危機で成長率は低下したが、それでも３％程度の成長を達成した。</span></big></p>\r\n<p style="margin: 0px 0px 0px 40px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 20px;">　３．８０年代の成長率は４％へと高まった。</span></big></p>\r\n<p style="margin: 0px 0px 0px 40px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 20px;">　４．９０年代は一転して１％以下の低成長になった。</span></big></p>\r\n<p style="margin: 0px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;">&nbsp;</p>\r\n<p style="margin: 0px 0px 0px 40px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 18px;">（注１）プレーヤー：運動選手のこと。ここでは世界経済を担う一員になったこと。</span></big></p>\r\n<p style="margin: 0px 0px 0px 40px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 18px;">（注２）フィナーレ：（演劇なんどの）終幕。最後楽章。</span></big></p>\r\n<p style="margin: 0px 0px 0px 40px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;">&nbsp;</p>\r\n<p style="margin: 0px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 18px;">　次のグラフから、文章に合うものはどれか。</span></big></p>', 2, NULL, 3, 5, 4),
(23, '<p style="margin: 0px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 18px;">Ａ　「じゃあ、あしたはコンサート会場の入り口に5時に集まりましょう。」</span></big></p>\r\n<p style="margin: 0px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 18px;">Ｂ　「コンサートは7時からですから、そんなに　<span style="text-decoration: underline;">＿</span><span style="text-decoration: underline;">1</span><span style="text-decoration: underline;">＿</span>　<span style="text-decoration: underline;">＿</span><span style="text-decoration: underline;">2</span><span style="text-decoration: underline;">＿</span>　<span style="text-decoration: underline;">＿</span><span style="text-decoration: underline;">3</span></span></big><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 18px;"><span style="text-decoration: underline;">★</span></span></big><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 18px;"><span style="text-decoration: underline;">＿</span>　<span style="text-decoration: underline;">＿</span><span style="text-decoration: underline;">4</span><span style="text-decoration: underline;">＿</span>　と思いますよ。」</span></big></p>', 3, NULL, 4, 1, 3),
(24, '<p style="margin: 0px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 18px;">（田中先生の研究室で）</span></big></p>\r\n<p style="margin: 0px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 18px;">学生　「田中先生はいらっしゃいますか。」</span></big></p>\r\n<p style="margin: 0px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 18px;">秘書　「今、ほかの学生と話して<span class="Apple-converted-space">&nbsp;</span><span style="text-decoration: underline;">＿</span><span style="text-decoration: underline;">＿</span>　<span style="text-decoration: underline;">＿</span><span style="text-decoration: underline;">＿</span>　<span style="text-decoration: underline;">＿</span><span style="text-decoration: underline;">★＿</span>　<span style="text-decoration: underline;">＿</span><span style="text-decoration: underline;">＿</span>　ください。」</span></big></p>', 1, NULL, 4, 2, 3),
(25, '<p><span style="color: #333333; font-family: ''MS Mincho''; font-size: 18.1818180084229px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #f8f0f0;">父もわたしも、今日はかさがなくても　</span><span style="color: #333333; font-family: ''MS Mincho''; font-size: 18.1818px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: #f8f0f0; text-decoration: underline;">＿</span><span style="color: #333333; font-family: ''MS Mincho''; font-size: 18.1818px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: #f8f0f0; text-decoration: underline;">＿</span><span style="color: #333333; font-family: ''MS Mincho''; font-size: 18.1818180084229px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #f8f0f0;">　</span><span style="color: #333333; font-family: ''MS Mincho''; font-size: 18.1818px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: #f8f0f0; text-decoration: underline;">＿</span><span style="color: #333333; font-family: ''MS Mincho''; font-size: 18.1818px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: #f8f0f0; text-decoration: underline;">＿</span><span style="color: #333333; font-family: ''MS Mincho''; font-size: 18.1818180084229px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #f8f0f0;">　</span><span style="color: #333333; font-family: ''MS Mincho''; font-size: 18.1818px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: #f8f0f0; text-decoration: underline;">＿</span><span style="color: #333333; font-family: ''MS Mincho''; font-size: 18.1818180084229px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: underline; background-color: #f8f0f0;">★</span><span style="color: #333333; font-family: ''MS Mincho''; font-size: 18.1818px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: #f8f0f0; text-decoration: underline;">＿</span><span style="color: #333333; font-family: ''MS Mincho''; font-size: 18.1818180084229px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #f8f0f0;">　</span><span style="color: #333333; font-family: ''MS Mincho''; font-size: 18.1818px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: #f8f0f0; text-decoration: underline;">＿</span><span style="color: #333333; font-family: ''MS Mincho''; font-size: 18.1818px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: #f8f0f0; text-decoration: underline;">＿</span><span style="color: #333333; font-family: ''MS Mincho''; font-size: 18.1818180084229px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #f8f0f0;">　が、帰りは雨に降られてしまった。</span></p>', 2, NULL, 4, 3, 3),
(26, '<p><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px; color: #333333; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><span style="font-size: 18px;">昨日動物園に行ったら、先月　<span style="text-decoration: underline;">＿</span><span style="text-decoration: underline;">＿</span>　<span style="text-decoration: underline;">＿</span><span style="text-decoration: underline;">＿</span>　<span style="text-decoration: underline;">＿</span></span></big><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px; color: #333333; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><span style="font-size: 18px;"><span style="text-decoration: underline;">★</span></span></big><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px; color: #333333; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><span style="font-size: 18px;"><span style="text-decoration: underline;">＿</span>　<span style="text-decoration: underline;">＿</span><span style="text-decoration: underline;">＿</span>　見ることができました。</span></big></p>', 2, NULL, 4, 4, 3),
(27, '<p style="margin: 0px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 18px;">ジョン「この「りかい」という言葉はどういう意味ですか。」</span></big></p>\r\n<p style="margin: 0px; padding: 0px; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #f8f0f0;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><span style="font-size: 18px;">アリ「ああ、確か「わかる」<span style="text-decoration: underline;">＿</span><span style="text-decoration: underline;">＿</span>　<span style="text-decoration: underline;">＿</span><span style="text-decoration: underline;">＿</span>　<span style="text-decoration: underline;">＿</span><span style="text-decoration: underline;">★＿</span>　<span style="text-decoration: underline;">＿</span><span style="text-decoration: underline;">＿</span>　んですけど。」</span></big></p>', 1, NULL, 4, 5, 3),
(28, '<p style="color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><strong>「山への　りゅうがく」</strong></big></p>\r\n<p style="color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;">子どもを　外国へ　りゅうがくさせる　人も　いますが、山の　村に　りゅうがくさせる　人も　います。</big></p>\r\n<p style="color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;">山に　りゅうがくすると、子どもたちは　２&sim;３人ずつ　分かれて　村の　家で　生活します。子どもは　その　家の　子どもに（　　　　　）新しい　生活を　始めます。学校も　近くには　ありませんから、７キロも　歩いて　学校へ　行かなければ　ならない　ことも　めずらしく　ありません。小さな　村の　学校は　せいとが　少ないので　クラスは　３つしか　ないと　いう　場合も　あります。たとえば　１年生と　２年生、３年生と　４年生、５年生、６年生が　いっしょに　勉強して　います。学校の　せいとは　みんな　友だちです。また　家に　帰れば　おとうさんや　おかあさんを　手つだわなければ　なりません。</big></p>\r\n<p style="color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;">見る　もの　聞く　ものが　ぜんぶ　はじめての　けいけんです。山の　中で　１年か　２年生活すると　強い　子どもに　なるそうです。</big></p>\r\n<p style="color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><strong>問題１</strong>　（　　　　　）の　中に　てきとうな　ことばを　入れなさい。</big></p>', 2, NULL, 5, 1, 3);
INSERT INTO `question` (`id`, `question`, `answer`, `giaithich`, `dethi_id`, `stt`, `score`) VALUES
(29, '<p style="color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><strong>「山への　りゅうがく」</strong></big></p>\r\n<p style="color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;">子どもを　外国へ　りゅうがくさせる　人も　いますが、山の　村に　りゅうがくさせる　人も　います。</big></p>\r\n<p style="color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;">山に　りゅうがくすると、子どもたちは　２&sim;３人ずつ　分かれて　村の　家で　生活します。子どもは　その　家の　子どもに（　　　　　）新しい　生活を　始めます。学校も　近くには　ありませんから、７キロも　歩いて　学校へ　行かなければ　ならない　ことも　めずらしく　ありません。小さな　村の　学校は　せいとが　少ないので　クラスは　３つしか　ないと　いう　場合も　あります。たとえば　１年生と　２年生、３年生と　４年生、５年生、６年生が　いっしょに　勉強して　います。学校の　せいとは　みんな　友だちです。また　家に　帰れば　おとうさんや　おかあさんを　手つだわなければ　なりません。</big></p>\r\n<p style="color: #333333; font-family: Arial,Helvetica,sans-serif; font-size: 11.8182px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;">見る　もの　聞く　ものが　ぜんぶ　はじめての　けいけんです。山の　中で　１年か　２年生活すると　強い　子どもに　なるそうです。</big></p>\r\n<p style="color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;">見る　もの　聞く　ものが　ぜんぶ　はじめての　けいけんです。山の　中で　１年か　２年生活すると　強い　子どもに　なるそうです。</big></p>\r\n<p style="color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 11.8181819915771px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><big style="font-family: ''MS Mincho''; line-height: 30px; font-size: 18px;"><strong>問題２</strong>　山の　りゅうがく生活は　どんなですか。</big></p>', 3, NULL, 5, 2, 4),
(30, '<p><span style="color: #333333; font-family: ''MS Mincho''; font-size: 18.1818180084229px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #f8f0f0;">プレゼントはきれいな紙で</span><span style="color: #333333; font-family: ''MS Mincho''; font-size: 18.1818px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: #f8f0f0; text-decoration: underline;">包んで</span><span style="color: #333333; font-family: ''MS Mincho''; font-size: 18.1818180084229px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #f8f0f0;">あった。</span></p>', 1, NULL, 6, 1, 2),
(31, '<p><span style="color: #333333; font-family: ''MS Mincho''; font-size: 18.1818180084229px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #f8f0f0;">彼はダンスが</span><span style="color: #333333; font-family: ''MS Mincho''; font-size: 18.1818px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: #f8f0f0; text-decoration: underline;">得意</span><span style="color: #333333; font-family: ''MS Mincho''; font-size: 18.1818180084229px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #f8f0f0;">だ。</span></p>', 4, NULL, 6, 2, 2),
(32, '<p><span style="color: #333333; font-family: ''MS Mincho''; font-size: 18.1818180084229px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #f8f0f0;">機械が<em><strong>せいじょう</strong></em>かどうかチャックした。</span></p>', 4, NULL, 6, 3, 2),
(33, '<p><span style="color: #333333; font-family: ''MS Mincho''; font-size: 18.1818180084229px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #f8f0f0;">新しい車を買うために、店で（&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ）をもらってきた。</span></p>', 1, NULL, 6, 4, 3),
(34, '<p><span style="color: #333333; font-family: ''MS Mincho''; font-size: 18.1818180084229px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #f8f0f0;">休みが</span><span style="color: #333333; font-family: ''MS Mincho''; font-size: 18.1818px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: #f8f0f0; text-decoration: underline;">明けたら</span><span style="color: #333333; font-family: ''MS Mincho''; font-size: 18.1818180084229px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #f8f0f0;">、また連絡します。</span></p>', 3, NULL, 6, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
`id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `class_id` int(10) DEFAULT NULL,
  `content` text NOT NULL,
  `time_on` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `user_id`, `class_id`, `content`, `time_on`) VALUES
(9, 11, NULL, 'alo alo', '2014-12-20 09:07:26'),
(10, 11, 6, '<p><span style="color: #ff0000;"><strong>Ch&agrave;o tất cả mọi người</strong> </span>, m&igrave;nh l&agrave;<strong><em> DA LV</em></strong> . よろしくお願いします.hehe<img src="bootstrap/tinymce/plugins/emoticons/img/smiley-frown.gif" alt="frown" /></p>', '2014-12-20 09:13:14'),
(12, 11, NULL, 'Đùa tý thôi', '2014-12-20 10:19:22'),
(15, 1, NULL, 'Hôm nay là ngày 22/12 .. vậy là còn 2 ngày nữa đên hạn deadline :D\r\n頑張ろう。', '2014-12-22 21:42:20'),
(18, 13, NULL, 'Đêm nay noel ... mà không được đi chơi. ', '2014-12-24 22:44:20'),
(19, 10, NULL, 'おはようございます', '2014-12-25 00:22:43'),
(20, 10, NULL, '天気がいいから、散歩しましょう。', '2014-12-25 00:23:12'),
(21, 11, 6, '<div class="clearfix">\r\n<div>\r\n<h2 class="_5clb">Thử ph&acirc;n biệt trợ từ WA v&agrave; GA</h2>\r\n</div>\r\n</div>\r\n<div class="_5k3v _5k3w clearfix">\r\n<div>\r\n<p>Đ&acirc;y l&agrave; m&igrave;nh THỬ PH&Acirc;N T&Iacute;CH th&ocirc;i, kh&ocirc;ng chắc đ&uacute;ng nh&eacute;. <img src="bootstrap/tinymce/plugins/emoticons/img/smiley-laughing.gif" alt="laughing" /><br />Lấy v&iacute; dụ sau:<br /><br /><em>Nếu bạn đi l&agrave;m thu&ecirc; trong trạng th&aacute;i kh&ocirc;ng thiếu tiền th&igrave; vị thế của bạn sẽ cao hơn.</em><br /><br />経済困難でない状態で会社に勤めると立場が高くなる。<br /><em>Keizai konnan de nai joutai de kaisha ni tsutomeru to, tachiba ga takaku naru.</em><br /><br />Ở đ&acirc;y t&ocirc;i d&ugrave;ng "tachiba GA takaku naru" thay v&igrave; "tachiba WA takaku naru". V&igrave; sao?<br />Bởi v&igrave; ở đ&acirc;y l&agrave; "vị thế của bạn", mặc định CHỦ ĐỀ l&agrave; bạn v&agrave; "vị thế" (tachiba) chỉ l&agrave; một thuộc t&iacute;nh (hay t&iacute;nh chất, "thứ thuộc về bạn") n&ecirc;n ch&uacute;ng ta n&ecirc;n d&ugrave;ng l&agrave; GA th&igrave; sẽ dễ nghe dễ hiểu hơn</p>\r\n</div>\r\n</div>', '2014-12-25 00:40:20'),
(22, 11, 6, '<p>皆さん、おやすみなさい</p>', '2014-12-25 00:40:42'),
(23, 11, 6, '<p>天気がいいから、散歩しましょう。</p>', '2014-12-25 00:41:17'),
(24, 11, 6, '<p>天気がいいから、散歩しましょう。</p>', '2014-12-25 00:41:21'),
(25, 11, 6, '<p>天気がいいから、散歩しましょう。</p>', '2014-12-25 00:41:32');

-- --------------------------------------------------------

--
-- Table structure for table `storage_images`
--

CREATE TABLE IF NOT EXISTS `storage_images` (
`id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `storage_images`
--

INSERT INTO `storage_images` (`id`, `user_id`, `name`) VALUES
(3, 1, '10482756_1510879879163825_2050523228278434521_n_536778439.jpg'),
(4, 1, '10482756_1510879879163825_2050523228278434521_n_1000402850.jpg'),
(5, 1, '10580132_350443721778020_5187722379797220671_n_673791630.jpg'),
(7, 1, '8473_1272406739.jpg'),
(8, 1, 'large-a5d2ffa1a2c0471cb7ca3af88ca52474_1293578376.jpg'),
(10, 1, 'large-ea0e3ce742944ae796f320a07925989d_486345191.jpg'),
(11, 1, 'large-d42f928503e043cb95bafeeea421704a_180690449.jpg'),
(13, 5, '10580132_350443721778020_5187722379797220671_n_1226620924.jpg'),
(14, 10, 'death_note_avatar__l_by_lartovio-d513nsb_282202421.jpg'),
(15, 4, '10580132_350443721778020_5187722379797220671_n_680762779.jpg'),
(16, 6, '1959762_1567386116825816_2937940863701269917_n_78489969.jpg'),
(17, 8, '1959762_1567386116825816_2937940863701269917_n_753787712.jpg'),
(18, 9, '8-84de1_1204330461.jpg'),
(20, 11, '1959762_1567386116825816_2937940863701269917_n_320199484.jpg'),
(21, 12, '1959762_1567386116825816_2937940863701269917_n_1130789147.jpg'),
(22, 13, 'studystudysmall_1258980824_584801907.png');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
`id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`) VALUES
(97, 'bai 1 tieng nhat'),
(98, 'hoc tu moi chao hoi'),
(99, 'tu moi chao hoi trong tieng nh'),
(100, 'bai 1 mina'),
(101, 'giao trinh minna'),
(104, 'tu moi chao hoi'),
(105, 'tu moi chao hoi trong tieng nhat'),
(106, 'ngu phap bai 2 mina'),
(107, 'giao trinh mina'),
(108, 'ngu phap tieng nhat'),
(109, 'bai 2 tu moi tieng nhat'),
(110, 'hoc tieng nhat online'),
(111, 'mina no nihongo'),
(112, 'bai 2 ngu phap tieng nhat'),
(113, 'hoc tieng nhat '),
(114, 'nihongo ngu phap'),
(115, 'bai hat tieng nhat'),
(116, 'haruka'),
(117, 'Prisoner Of Love'),
(118, 'hoc tieng nhat qua bai hat'),
(119, 'tu moi tieng nhat'),
(120, 'tro tu tieng nhat'),
(121, ' wa ga'),
(122, ' no de ni'),
(123, ' he kara wo to'),
(124, 'giao trinh minano nihongo'),
(125, 'tai lieu tieng nhat'),
(126, 'tu vung'),
(127, ' ngu phap'),
(128, 'ngu phap'),
(129, 'tai lieu'),
(130, 'ngu phap n3'),
(131, ' jlpt'),
(132, 'tu vung n3'),
(133, 'ngu phap n2'),
(134, 'tư vung n2');

-- --------------------------------------------------------

--
-- Table structure for table `tags_target`
--

CREATE TABLE IF NOT EXISTS `tags_target` (
`id` int(10) NOT NULL,
  `page_id` int(10) NOT NULL,
  `tag_id` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags_target`
--

INSERT INTO `tags_target` (`id`, `page_id`, `tag_id`) VALUES
(141, 20, 97),
(142, 20, 98),
(143, 20, 104),
(144, 20, 100),
(145, 20, 101),
(146, 21, 106),
(147, 21, 107),
(148, 21, 108),
(149, 22, 109),
(150, 22, 110),
(151, 22, 107),
(152, 22, 111),
(153, 23, 112),
(154, 23, 113),
(155, 23, 107),
(156, 23, 114),
(159, 24, 115),
(160, 24, 116),
(164, 25, 117),
(165, 25, 118),
(166, 25, 115),
(167, 26, 119),
(168, 26, 120),
(169, 27, 119),
(170, 27, 120),
(171, 27, 121),
(172, 28, 120),
(173, 28, 122),
(174, 29, 120),
(175, 29, 123),
(178, 30, 124),
(179, 31, 125),
(180, 31, 126),
(181, 31, 127),
(182, 32, 128),
(183, 32, 129),
(186, 34, 132),
(187, 34, 131),
(188, 35, 132),
(189, 35, 131),
(190, 36, 132),
(191, 36, 131),
(194, 33, 130),
(195, 33, 131),
(196, 37, 133),
(197, 37, 129),
(198, 38, 134),
(199, 38, 129),
(200, 39, 134),
(201, 39, 129),
(202, 40, 134),
(203, 40, 129);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `user_id` int(10) NOT NULL,
  `question_id` int(10) NOT NULL,
  `score` smallint(6) DEFAULT '0',
  `answer` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`user_id`, `question_id`, `score`, `answer`) VALUES
(1, 1, 3, 3),
(1, 2, 3, 3),
(1, 3, 0, 3),
(1, 4, 3, 2),
(1, 5, 0, 3),
(1, 6, 0, 2),
(1, 7, 0, 3),
(1, 8, 0, 1),
(1, 9, 0, 3),
(1, 10, 3, 1),
(4, 11, 4, 1),
(4, 28, 3, 2),
(10, 1, 0, 2),
(10, 2, 0, 2),
(10, 3, 0, 2),
(10, 7, 0, 3),
(10, 11, 4, 1),
(10, 12, 0, 2),
(10, 13, 0, 2),
(10, 14, 0, 2),
(10, 18, 0, 1),
(10, 19, 0, 2),
(10, 20, 4, 3),
(10, 21, 0, 2),
(10, 22, 0, 3),
(10, 28, 0, 1),
(11, 1, 0, 2),
(11, 2, 3, 3),
(11, 3, 0, 2),
(13, 1, 0, 2),
(13, 2, 0, 2),
(13, 3, 0, 2),
(13, 7, 0, 2),
(13, 18, 4, 2),
(13, 19, 0, 2),
(13, 20, 0, 2),
(13, 21, 0, 2),
(13, 22, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `thumuc`
--

CREATE TABLE IF NOT EXISTS `thumuc` (
`id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` smallint(6) NOT NULL,
  `url` varchar(100) NOT NULL,
  `menu_id` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thumuc`
--

INSERT INTO `thumuc` (`id`, `name`, `position`, `url`, `menu_id`) VALUES
(7, 'みんなの日本語 50', 1, 'みんなの日本語-50', 6),
(8, 'BÀI HÁT', 1, 'bai-hat', 8),
(9, 'SÁCH - TÀI LIỆU THAM KHẢO', 2, 'sach---tai-lieu-tham-khao', 8),
(10, 'Trung cấp - N3', 1, 'trung-cap---n3', 7),
(11, 'Trung cấp - N2', 2, 'trung-cap---n2', 7);

-- --------------------------------------------------------

--
-- Table structure for table `thumuc2`
--

CREATE TABLE IF NOT EXISTS `thumuc2` (
`id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` smallint(6) NOT NULL,
  `url` varchar(100) NOT NULL,
  `thumuc_id` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thumuc2`
--

INSERT INTO `thumuc2` (`id`, `name`, `position`, `url`, `thumuc_id`) VALUES
(4, ' Giáo trình Minano Nihongo - みんなの日本語 (Bài 1) ', 1, '-giao-trinh-minano-nihongo---みんなの日本語-(bai-1)-', 7),
(5, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 2)', 2, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-2)', 7),
(6, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 3)', 3, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-3)', 7),
(7, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 4)', 4, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-4)', 7),
(8, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 5)', 5, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-5)', 7),
(9, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 6)', 6, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-6)', 7),
(10, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 7)', 7, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-7)', 7),
(11, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 8)', 8, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-8)', 7),
(12, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 9)', 9, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-9)', 7),
(13, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 10)', 10, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-10)', 7),
(14, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 11)', 13, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-11)', 7),
(15, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 12)', 12, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-12)', 7),
(16, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 13)', 13, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-13)', 7),
(17, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 14)', 14, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-14)', 7),
(18, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 15)', 15, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-15)', 7),
(19, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 16)', 16, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-16)', 7),
(20, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 17)', 17, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-17)', 7),
(21, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 18)', 18, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-18)', 7),
(22, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 19)', 19, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-19)', 7),
(23, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 20)', 20, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-20)', 7),
(24, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 21)', 21, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-21)', 7),
(25, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 22)', 22, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-22)', 7),
(26, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 23)', 23, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-23)', 7),
(27, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 24)', 24, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-24)', 7),
(28, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 25)', 25, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-25)', 7),
(29, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 26)', 26, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-26)', 7),
(30, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 27)', 27, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-27)', 7),
(31, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 28)', 28, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-28)', 7),
(32, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 29)', 29, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-29)', 7),
(33, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 30)', 30, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-30)', 7),
(34, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 31)', 31, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-31)', 7),
(35, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 32)', 32, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-32)', 7),
(36, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 33)', 33, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-33)', 7),
(37, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 34)', 34, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-34)', 7),
(38, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 35)', 35, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-35)', 7),
(39, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 36)', 36, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-36)', 7),
(40, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 37)', 37, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-37)', 7),
(41, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 38)', 38, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-38)', 7),
(42, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 39)', 39, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-39)', 7),
(43, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 40)', 40, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-40)', 7),
(44, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 41)', 41, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-41)', 7),
(45, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 42)', 42, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-42)', 7),
(46, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 43)', 43, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-43)', 7),
(47, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 44)', 44, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-44)', 7),
(48, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 45)', 45, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-45)', 7),
(49, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 46)', 46, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-46)', 7),
(50, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 47)', 47, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-47)', 7),
(51, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 48)', 48, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-48)', 7),
(52, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 49)', 49, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-49)', 7),
(53, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 50)', 50, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-50)', 7),
(54, 'N3_文法', 1, 'n3_文法', 10),
(55, 'N3_文字　語彙', 2, 'n3_文字　語彙', 10),
(56, 'Ngữ pháp N2', 1, 'ngu-phap-n2', 11),
(57, 'Từ vựng N2', 2, 'tu-vung-n2', 11),
(58, 'N3_読解', 3, 'n3_読解', 10),
(59, 'Đọc hiểu', 3, 'doc-hieu', 11);

-- --------------------------------------------------------

--
-- Table structure for table `type_notify`
--

CREATE TABLE IF NOT EXISTS `type_notify` (
`id` int(5) NOT NULL,
  `content` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_notify`
--

INSERT INTO `type_notify` (`id`, `content`) VALUES
(1, 'đã yêu cầu tham gia lớp học '),
(2, 'đã cho phép bạn tham gia lớp học ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` smallint(6) DEFAULT '1',
  `username` varchar(20) NOT NULL,
  `gender` smallint(6) NOT NULL DEFAULT '3',
  `active` varchar(30) DEFAULT NULL,
  `des` text,
  `address` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `sign` text,
  `time_on` datetime DEFAULT NULL,
  `avatar` varchar(150) DEFAULT NULL,
  `score` int(4) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `level`, `username`, `gender`, `active`, `des`, `address`, `state`, `sign`, `time_on`, `avatar`, `score`) VALUES
(1, 'Demon', 'Warlock', 'dalv0911@gmail.com', '091194', 5, 'demon', 1, NULL, '一度きりの人生だから、悔いのないように生きようと思う。', 'Giải Phóng', 'Đại Học Bách Khoa Hà Nội', 'Demon Warlock', '2014-11-25 00:00:00', '10482756_1510879879163825_2050523228278434521_n_1000402850.jpg', 12),
(4, 'Giap', 'NX', 'giapnx.ict@gmail.com', '091194', 4, 'giapnx', 1, 'd2c380f02b6ec1e93438cc603bdeb6', '一度きりの人生だから、悔いのないように生きようと思う。', '258 Giải Phóng - Thanh Xuân - Hà Nội', 'Đại Học Bách Khoa Hà Nội', 'Giap NX', '2014-11-14 10:20:34', '10580132_350443721778020_5187722379797220671_n_680762779.jpg', 7),
(5, 'Hai', 'Leader', 'haipv@gmail.com', '091194', 1, 'haipv@gmail.com', 3, 'd67db6cb5e6f7a69a0300a04196526', NULL, NULL, NULL, NULL, '2014-11-17 07:29:41', '10580132_350443721778020_5187722379797220671_n_1226620924.jpg', 0),
(6, 'Liên ', 'Nông Ná', 'lienoliver94@gmail.com', '091194', 1, 'lienbep', 1, 'ba53cabb3972b362ca33bd4dee4f1e', 'Yêu gì tầm này', '258 Giải Phóng - Thanh Xuân - Hà Nội', 'Đại Học Bách Khoa Hà Nội', 'Liên Nông Ná', '2014-11-17 07:30:21', '1959762_1567386116825816_2937940863701269917_n_78489969.jpg', 0),
(7, NULL, NULL, 'xuongrong275@gmail.com', '091194', 1, 'xuongrong275@gmail.c', 3, '6b6ca6a6edbe95e74fb6d8f01dd0c7', NULL, NULL, NULL, NULL, '2014-11-17 07:30:32', NULL, 0),
(8, 'Lương', 'Nép', 'abc@gmail.com', '091194', 1, 'luong', 2, '64c5038a65c69ced802112b9986560', '一度きりの人生だから、悔いのないように生きようと思う。', '258 Giải Phóng - Thanh Xuân - Hà Nội', 'Đại Học Bách Khoa Hà Nội', 'Luong', '2014-11-17 23:07:12', '1959762_1567386116825816_2937940863701269917_n_753787712.jpg', 0),
(9, 'AB', 'CD', 'abcd@gmail.com', '091194', 1, 'abcd', 3, '00352f043051572f40ad5dcf968684', '一度きりの人生だから、悔いのないように生きようと思う。', '258 Giải Phóng - Thanh Xuân - Hà Nội', 'Đại Học Bách Khoa Hà Nội', 'ABCD', '2014-11-17 23:08:22', '8-84de1_1204330461.jpg', 0),
(10, 'DA', 'LV', 'dalv091194@gmail.com', '091194', 4, 'dalv0911', 1, '39ed5a1410b8d030b384fbb8942c4f', '失敗するのは頑張らなかっただけ。。', '258 Giải Phóng - Thanh Xuân - Hà Nội', 'Đại Học Bách Khoa Hà Nội', 'ＤＡ　ＬＶ', '2014-12-13 20:42:00', 'death_note_avatar__l_by_lartovio-d513nsb_282202421.jpg', 11),
(11, '必', '勝', 'da0911@gmail.com', '091194', 2, 'da0911', 1, 'b172c761f0bc6b4cd24201ed2ffd58', '失敗するのは頑張らなかっただけ。。', '258 Giải Phóng - Thanh Xuân - Hà Nội', 'Đại Học Bách Khoa Hà Nội', 'DA LV', '2014-12-20 07:55:16', '1959762_1567386116825816_2937940863701269917_n_320199484.jpg', 3),
(12, 'Lee', 'Ryan', 'hienvl@gmail.com', '091194', 2, 'leeryan', 3, '86d357320babe1a990b288e9eba33f', '一度きりの人生だから、悔いのないように生きようと思う。', '258 Giải Phóng - Thanh Xuân - Hà Nội', 'Đại Học Bách Khoa Hà Nội', 'Lee Ryan', '2014-12-20 14:09:01', '1959762_1567386116825816_2937940863701269917_n_1130789147.jpg', 0),
(13, '意', '志', 'hedspi@gmail.com', '091194', 2, 'hedspi', 1, 'bf9dd78ba0a26688276eb390670405', NULL, '258 - Giải phóng ', 'DHBK HN', NULL, '2014-12-24 21:38:14', 'studystudysmall_1258980824_584801907.png', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_class` (`giao_vien_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_cmt_1` (`user_id`), ADD KEY `fk_cmt_2` (`page_id`), ADD KEY `fk_cmt_3` (`stt_id`);

--
-- Indexes for table `dapan`
--
ALTER TABLE `dapan`
 ADD PRIMARY KEY (`id`), ADD KEY `fk1_dapan` (`question_id`);

--
-- Indexes for table `dethi`
--
ALTER TABLE `dethi`
 ADD PRIMARY KEY (`id`), ADD KEY `fk1_dethi` (`author_id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
 ADD PRIMARY KEY (`user_id`,`page_id`), ADD KEY `fk_favorites2` (`page_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_his_1` (`user_id`), ADD KEY `fk_his_2` (`page_id`);

--
-- Indexes for table `join_class`
--
ALTER TABLE `join_class`
 ADD PRIMARY KEY (`user_id`,`class_id`), ADD KEY `fk2_join_class` (`class_id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
 ADD PRIMARY KEY (`level`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notify`
--
ALTER TABLE `notify`
 ADD PRIMARY KEY (`id`), ADD KEY `fk1_notify` (`id_from`), ADD KEY `fk2_notify` (`id_to`), ADD KEY `fk3_notify` (`id_class`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
 ADD PRIMARY KEY (`id`), ADD KEY `fk1_pages` (`author_id`);

--
-- Indexes for table `page_menu`
--
ALTER TABLE `page_menu`
 ADD PRIMARY KEY (`page_id`), ADD KEY `fk_p_menu` (`menu_id`);

--
-- Indexes for table `page_thumuc`
--
ALTER TABLE `page_thumuc`
 ADD PRIMARY KEY (`page_id`), ADD KEY `fk1_p_thumuc` (`thumuc_id`);

--
-- Indexes for table `page_thumuc2`
--
ALTER TABLE `page_thumuc2`
 ADD PRIMARY KEY (`page_id`), ADD KEY `fk_p_thumuc2` (`thumuc2_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
 ADD PRIMARY KEY (`id`), ADD KEY `fk1_question` (`dethi_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
 ADD PRIMARY KEY (`id`), ADD KEY `fk1_status` (`user_id`), ADD KEY `fk2_status` (`class_id`);

--
-- Indexes for table `storage_images`
--
ALTER TABLE `storage_images`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_storage` (`user_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_target`
--
ALTER TABLE `tags_target`
 ADD PRIMARY KEY (`id`), ADD KEY `fk1_tags1` (`tag_id`), ADD KEY `fk1_tag2` (`page_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
 ADD PRIMARY KEY (`user_id`,`question_id`), ADD KEY `fk2_test` (`question_id`);

--
-- Indexes for table `thumuc`
--
ALTER TABLE `thumuc`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_thumuc` (`menu_id`);

--
-- Indexes for table `thumuc2`
--
ALTER TABLE `thumuc2`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_thumuc2` (`thumuc_id`);

--
-- Indexes for table `type_notify`
--
ALTER TABLE `type_notify`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `dapan`
--
ALTER TABLE `dapan`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=137;
--
-- AUTO_INCREMENT for table `dethi`
--
ALTER TABLE `dethi`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `notify`
--
ALTER TABLE `notify`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `storage_images`
--
ALTER TABLE `storage_images`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=135;
--
-- AUTO_INCREMENT for table `tags_target`
--
ALTER TABLE `tags_target`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=204;
--
-- AUTO_INCREMENT for table `thumuc`
--
ALTER TABLE `thumuc`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `thumuc2`
--
ALTER TABLE `thumuc2`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `type_notify`
--
ALTER TABLE `type_notify`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
ADD CONSTRAINT `fk_class` FOREIGN KEY (`giao_vien_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
ADD CONSTRAINT `fk_cmt_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_cmt_2` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_cmt_3` FOREIGN KEY (`stt_id`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dapan`
--
ALTER TABLE `dapan`
ADD CONSTRAINT `fk1_dapan` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dethi`
--
ALTER TABLE `dethi`
ADD CONSTRAINT `fk1_dethi` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
ADD CONSTRAINT `fk_favorites1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_favorites2` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `history`
--
ALTER TABLE `history`
ADD CONSTRAINT `fk_his_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_his_2` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `join_class`
--
ALTER TABLE `join_class`
ADD CONSTRAINT `fk1_join_class` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk2_join_class` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notify`
--
ALTER TABLE `notify`
ADD CONSTRAINT `fk1_notify` FOREIGN KEY (`id_from`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk2_notify` FOREIGN KEY (`id_to`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk3_notify` FOREIGN KEY (`id_class`) REFERENCES `class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
ADD CONSTRAINT `fk1_pages` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `page_menu`
--
ALTER TABLE `page_menu`
ADD CONSTRAINT `fk2_p_menu` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_p_menu` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `page_thumuc`
--
ALTER TABLE `page_thumuc`
ADD CONSTRAINT `fk1_p_thumuc` FOREIGN KEY (`thumuc_id`) REFERENCES `thumuc` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk2_p_thumuc` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `page_thumuc2`
--
ALTER TABLE `page_thumuc2`
ADD CONSTRAINT `fk2_p_thumuc2` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_p_thumuc2` FOREIGN KEY (`thumuc2_id`) REFERENCES `thumuc2` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question`
--
ALTER TABLE `question`
ADD CONSTRAINT `fk1_question` FOREIGN KEY (`dethi_id`) REFERENCES `dethi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `status`
--
ALTER TABLE `status`
ADD CONSTRAINT `fk1_status` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk2_status` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `storage_images`
--
ALTER TABLE `storage_images`
ADD CONSTRAINT `fk_storage` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tags_target`
--
ALTER TABLE `tags_target`
ADD CONSTRAINT `fk1_tag2` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk1_tags1` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `test`
--
ALTER TABLE `test`
ADD CONSTRAINT `fk1_test` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk2_test` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `thumuc`
--
ALTER TABLE `thumuc`
ADD CONSTRAINT `fk_thumuc` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`);

--
-- Constraints for table `thumuc2`
--
ALTER TABLE `thumuc2`
ADD CONSTRAINT `fk_thumuc2` FOREIGN KEY (`thumuc_id`) REFERENCES `thumuc` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
