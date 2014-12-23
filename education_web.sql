-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2014 at 03:10 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

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
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `des` text,
  `giao_vien_id` int(10) NOT NULL,
  `time_on` datetime NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `sdt` varchar(13) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_class` (`giao_vien_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`, `des`, `giao_vien_id`, `time_on`, `image`, `address`, `sdt`, `email`) VALUES
(4, 'JP 2014 - N4', 'Lớp học dành cho người bắt đầu N4', 10, '2014-12-13 21:23:53', 'death_note_avatar__l_by_lartovio-d513nsb_857107018.jpg', '258 Giải Phóng - Thanh Xuân - Hà Nội', '01688279743', 'dalv0911@gmail.com'),
(5, 'JP 2014 - N3', 'Lớp học ôn thi tiếng nhật  N3 cho những bạn đăng kí thi vào tháng 7 năm 2015', 10, '2014-12-14 19:42:32', '10580132_350443721778020_5187722379797220671_n_1264488892.jpg', '258 Giải Phóng - Thanh Xuân - Hà Nội', '01688279743', 'dalv0911@gmail.com'),
(6, 'JP 2014 - N2', 'Lớp học ôn thi tiếng nhật  N2 cho những bạn đăng kí thi vào tháng 7 năm 2015', 10, '2014-12-14 19:44:07', 'default.jpg', '258 Giải Phóng - Thanh Xuân - Hà Nội', '01688279743', 'dalv0911@gmail.com'),
(7, 'JP 2014 - N1', 'Lớp học tiếng nhật N1 cho những bạn ôn thi tháng 7 năm 2015', 1, '2014-12-16 15:07:26', 'death_note_avatar__l_by_lartovio-d513nsb_452823434.jpg', '258 Giải Phóng - Thanh Xuân - Hà Nội', '01688279743', 'dalv0911@gmail.com'),
(8, 'JP 2014 - N5', 'Lớp học dành cho những bạn bắt đầu học tiếng nhật', 10, '2014-12-20 08:11:10', 'bai1_72293392.jpg', '258 Giải Phóng - Thanh Xuân - Hà Nội', '01688279743', 'dalv0911@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `page_id` int(10) DEFAULT NULL,
  `stt_id` int(10) DEFAULT NULL,
  `content` text NOT NULL,
  `time_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cmt_1` (`user_id`),
  KEY `fk_cmt_2` (`page_id`),
  KEY `fk_cmt_3` (`stt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `page_id`, `stt_id`, `content`, `time_on`) VALUES
(8, 1, NULL, 10, ':''(', '2014-12-21 09:29:28'),
(11, 11, NULL, 16, 'うん', '2014-12-23 08:31:01'),
(12, 10, NULL, 10, 'alo alo', '2014-12-23 09:08:56');

-- --------------------------------------------------------

--
-- Table structure for table `dapan`
--

CREATE TABLE IF NOT EXISTS `dapan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `question_id` int(10) NOT NULL,
  `stt` smallint(6) NOT NULL,
  `content` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk1_dapan` (`question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

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
(40, 10, 4, '出て');

-- --------------------------------------------------------

--
-- Table structure for table `dethi`
--

CREATE TABLE IF NOT EXISTS `dethi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `socauhoi` int(3) DEFAULT NULL,
  `author_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk1_dethi` (`author_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dethi`
--

INSERT INTO `dethi` (`id`, `name`, `socauhoi`, `author_id`) VALUES
(1, 'LTN2P7 Đề 1 (文法形式の判断)', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE IF NOT EXISTS `favorites` (
  `user_id` int(10) NOT NULL,
  `page_id` int(10) NOT NULL,
  `time_on` datetime NOT NULL,
  PRIMARY KEY (`user_id`,`page_id`),
  KEY `fk_favorites2` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `page_id` int(10) NOT NULL,
  `time_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_his_1` (`user_id`),
  KEY `fk_his_2` (`page_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `user_id`, `page_id`, `time_on`) VALUES
(28, 1, 20, '2014-12-22 21:58:30'),
(29, 1, 21, '2014-12-22 22:23:58'),
(30, 1, 24, '2014-12-22 22:43:41'),
(31, 1, 25, '2014-12-22 22:47:16'),
(32, 11, 25, '2014-12-23 08:38:21');

-- --------------------------------------------------------

--
-- Table structure for table `join_class`
--

CREATE TABLE IF NOT EXISTS `join_class` (
  `user_id` int(10) NOT NULL,
  `class_id` int(10) NOT NULL,
  `chuc_vu` smallint(6) DEFAULT '2',
  `time_on` datetime NOT NULL,
  PRIMARY KEY (`user_id`,`class_id`),
  KEY `fk2_join_class` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `join_class`
--

INSERT INTO `join_class` (`user_id`, `class_id`, `chuc_vu`, `time_on`) VALUES
(11, 6, 2, '2014-12-23 08:56:52'),
(12, 6, 2, '2014-12-23 08:58:42');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE IF NOT EXISTS `level` (
  `level` smallint(6) NOT NULL,
  `vaitro` varchar(15) NOT NULL,
  PRIMARY KEY (`level`)
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
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `position` smallint(6) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `position`, `url`) VALUES
(5, 'Lớp học', 1, 'lop-hoc'),
(6, 'Sơ cấp', 2, 'so-cap'),
(7, 'Trung Cấp', 3, 'trung-cap'),
(8, 'Thư viện', 4, 'thu-vien');

-- --------------------------------------------------------

--
-- Table structure for table `notify`
--

CREATE TABLE IF NOT EXISTS `notify` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_from` int(10) NOT NULL,
  `id_to` int(10) NOT NULL,
  `id_class` int(10) DEFAULT NULL,
  `type_id` smallint(6) NOT NULL,
  `time_on` datetime NOT NULL,
  `view` smallint(6) DEFAULT '0',
  `hide` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk1_notify` (`id_from`),
  KEY `fk2_notify` (`id_to`),
  KEY `fk3_notify` (`id_class`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `notify`
--

INSERT INTO `notify` (`id`, `id_from`, `id_to`, `id_class`, `type_id`, `time_on`, `view`, `hide`) VALUES
(53, 10, 9, 8, 2, '2014-12-20 14:17:42', 1, 0),
(60, 10, 12, 6, 2, '2014-12-23 08:58:42', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
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
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk1_pages` (`author_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `title`, `content`, `des`, `keyword`, `image_icon`, `image`, `mp3`, `time_on`, `author_id`, `url`) VALUES
(20, 'Từ Mới -  Bài 1 Giáo trình Minano Nihongo - みんなの日本語 ', 'Từ Mới -  Bài 1 Giáo trình Minano Nihongo - みんなの日本語 ', '<table>\r\n<tbody>\r\n<tr>\r\n<td class="hiragana"><strong>Hiragana</strong></td>\r\n<td class="kanji"><strong>Kanji</strong></td>\r\n<td class="vietnamese"><strong>Tiếng Việt</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">わたし</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">t&ocirc;i</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">わたしたち</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">ch&uacute;ng t&ocirc;i, ch&uacute;ng ta</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">あなた</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">anh/ chị/ &ocirc;ng/ b&agrave;, bạn ng&ocirc;i thứ 2 số &iacute;t)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">あのひと</td>\r\n<td class="kanji">&nbsp;あの人</td>\r\n<td class="vietnamese">người kia, người đ&oacute;</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">（あのかた）</td>\r\n<td class="kanji">&nbsp;（あの方）</td>\r\n<td class="vietnamese">(「あのかた」l&agrave; c&aacute;ch n&oacute;i lịch sự của「あのひと」, vị kia)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">みなさん</td>\r\n<td class="kanji">&nbsp;皆さん</td>\r\n<td class="vietnamese">c&aacute;c anh chị, c&aacute;c &ocirc;ng b&agrave;, c&aacute;c bạn, qu&yacute; vị</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">～さん</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">anh, chị, &ocirc;ng, b&agrave; (c&aacute;ch gọi người kh&aacute;c một c&aacute;ch lịch sự bằng c&aacute;ch th&ecirc;m từ n&agrave;y v&agrave;o sau t&ecirc;n của người đ&oacute;)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">～ちゃん</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">(hậu tố th&ecirc;m v&agrave;o sau t&ecirc;n của trẻ em thay cho「～さん」)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">～くん</td>\r\n<td class="kanji">&nbsp;～君</td>\r\n<td class="vietnamese">(hậu tố th&ecirc;m v&agrave;o sau t&ecirc;n của em trai)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">～じん</td>\r\n<td class="kanji">&nbsp;～人</td>\r\n<td class="vietnamese">(hậu tố mang nghĩa &ldquo;người (nước)~&rdquo;; v&iacute; dụ 「アメリカじん」: Người Mỹ)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">せんせい</td>\r\n<td class="kanji">&nbsp;先生</td>\r\n<td class="vietnamese">thầy/ cố (kh&ocirc;ng d&ugrave;ng khi n&oacute;i về nghề nghiệp gi&aacute;o vi&ecirc;n của m&igrave;nh)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">きょうし</td>\r\n<td class="kanji">&nbsp;教師</td>\r\n<td class="vietnamese">gi&aacute;o vi&ecirc;n</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">がくせい</td>\r\n<td class="kanji">&nbsp;学生</td>\r\n<td class="vietnamese">học sinh, sinh vi&ecirc;n</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">かいしゃいん</td>\r\n<td class="kanji">&nbsp;会社員</td>\r\n<td class="vietnamese">nh&acirc;n vi&ecirc;n c&ocirc;ng ty</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">しゃいん</td>\r\n<td class="kanji">&nbsp;社員</td>\r\n<td class="vietnamese">Nh&acirc;n vi&ecirc;n c&ocirc;ng ty ~ (d&ugrave;ng k&egrave;m theo t&ecirc;n c&ocirc;ng ty; v&iacute; dụ「ＩＭＣ のしゃいん」)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">ぎんこういん</td>\r\n<td class="kanji">&nbsp;銀行員</td>\r\n<td class="vietnamese">Nh&acirc;n vi&ecirc;n ng&acirc;n h&agrave;ng</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">いしゃ</td>\r\n<td class="kanji">&nbsp;医者</td>\r\n<td class="vietnamese">B&aacute;c Sĩ</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">けんきゅうしゃ</td>\r\n<td class="kanji">&nbsp;研究者</td>\r\n<td class="vietnamese">nh&agrave; nghi&ecirc;n cứu</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">エンジニア</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">kỹ sư</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">だいがく</td>\r\n<td class="kanji">&nbsp;大学</td>\r\n<td class="vietnamese">đại học, trường đại học</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">びょういん</td>\r\n<td class="kanji">&nbsp;病院</td>\r\n<td class="vietnamese">bệnh viện</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">でんき</td>\r\n<td class="kanji">&nbsp;電気</td>\r\n<td class="vietnamese">điện, đ&egrave;n điện</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">だれ（どなた）</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">ai (「どなた」l&agrave; c&aacute;ch n&oacute;i lịch sự của「だれ」, vị n&agrave;o)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">―さい</td>\r\n<td class="kanji">&nbsp;－歳</td>\r\n<td class="vietnamese">― tuổi</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">なんさい （おいくつ）</td>\r\n<td class="kanji">&nbsp;何歳</td>\r\n<td class="vietnamese">mấy tuổi, bao nhi&ecirc;u tuổi (「お いくつ」l&agrave; c&aacute;ch n&oacute;i lịch sự của 「なんさい」)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">はい</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">v&acirc;ng, dạ</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">いいえ</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">kh&ocirc;ng</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">しつれいですが</td>\r\n<td class="kanji">&nbsp;失礼ですが</td>\r\n<td class="vietnamese">xin lỗi,&hellip;</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">おなまえは？</td>\r\n<td class="kanji">&nbsp;お名前は？</td>\r\n<td class="vietnamese">T&ecirc;n anh/chị l&agrave; g&igrave;?</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">はじめまして。</td>\r\n<td class="kanji">&nbsp;初めまして。</td>\r\n<td class="vietnamese">Rất h&acirc;n hạnh được gặp anh/chị (đ&acirc;y l&agrave; lời ch&agrave;o với người lần đầu ti&ecirc;n gặp, l&agrave; c&acirc;u n&oacute;i đầu ti&ecirc;n trước khi giới thiệu về m&igrave;nh.)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">どうぞよろしく[おねがいします]。</td>\r\n<td class="kanji">&nbsp;どうぞよろしく[お願いします]。</td>\r\n<td class="vietnamese">Rất mong được sự gi&uacute;p đỡ của anh/chị, rất vui được l&agrave;m quen với anh/chị (D&ugrave;ng l&agrave;m c&acirc;u kết th&uacute;c sau khi giới thiệu về m&igrave;nh.)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">こちらは～さんです。</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">Đ&acirc;y l&agrave; anh/chị/&ocirc;ng/b&agrave; ~.</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">～からきました。</td>\r\n<td class="kanji">&nbsp;～から来ました。</td>\r\n<td class="vietnamese">(t&ocirc;i) đến từ ~.</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">アメリカ</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">Mỹ</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">イギリス</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">Anh</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">インド</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">Ấn Độ</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">インドネシア</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">Indonesia</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">かんこく</td>\r\n<td class="kanji">&nbsp;韓国</td>\r\n<td class="vietnamese">H&agrave;n Quốc</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">タイ</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">Th&aacute;i Lan</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">ちゅうご</td>\r\n<td class="kanji">&nbsp;中国</td>\r\n<td class="vietnamese">Trung Quốc</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">ドイツ</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">Đức</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">にほん</td>\r\n<td class="kanji">&nbsp;日本</td>\r\n<td class="vietnamese">Nhật Bản</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">フランス</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">Ph&aacute;p</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">ブラジル</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">Braxin</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Bài 1 từ mới chào hỏi trong tiếng nhật , ở bài này chúng ta sẽ được học về các từ mới liên quan đến chào hỏi trong tiêng nhật .', 'Bài 1 từ mới chào hỏi trong tiếng nhật , ở bài này chúng ta sẽ được học về các từ mới liên quan đến chào hỏi trong tiêng nhật .', 'bai1_86536912.jpg', NULL, NULL, '2014-12-22 22:20:34', 1, 'tu-moi----bai-1-giao-trinh-minano-nihongo---みんなの日本語-'),
(21, 'Ngữ Pháp -  Bài 2 Giáo trình Minano Nihongo - みんなの日本語 ', 'Ngữ Pháp -  Bài 2 Giáo trình Minano Nihongo - みんなの日本語 ', '<p><strong>1</strong> _____は_____です。</p>\r\n<p>* Với mẫu c&acirc;u n&agrave;y ta d&ugrave;ng trợ từ&nbsp;は&nbsp;(đọc l&agrave;&nbsp;, chứ kh&ocirc;ng phải l&agrave;&nbsp;)</p>\r\n<p>* C&aacute;ch d&ugrave;ng: D&ugrave;ng để n&oacute;i t&ecirc;n, nghề nghiệp, quốc tịch ( tương tự như động từ TO BE của tiếng Anh.)</p>\r\n<p>* Đ&acirc;y l&agrave; mẫu c&acirc;u khẳng định.</p>\r\n<p>V&iacute; dụ:</p>\r\n<p>わたし　は　マイク　ミラー　です。&nbsp;( t&ocirc;i l&agrave; Michael Miler)</p>\r\n<p>&nbsp;</p>\r\n<p><strong>２</strong>．_____は_____じゃ/ではありません。</p>\r\n<p>* Mẫu c&acirc;u vẫn d&ugrave;ng trợ từ&nbsp;は&nbsp;nhưng với &yacute; nghĩa phủ định. Ở mẫu c&acirc;u n&agrave;y ta c&oacute; thể d&ugrave;ng　じゃ</p>\r\n<p>hoặc　では&nbsp;đi trước　ありません&nbsp;đều được.</p>\r\n<p>* C&aacute;ch d&ugrave;ng tương tự như cấu tr&uacute;c khẳng định.</p>\r\n<p>V&iacute; dụ:</p>\r\n<p>サントスさん　は　がくせい　じゃ&nbsp;(では)&nbsp;ありません。</p>\r\n<p>( anh Santose kh&ocirc;ng phải l&agrave; sinh vi&ecirc;n.)</p>\r\n<p>&nbsp;</p>\r\n<p><strong>３</strong>．_____は_____ですか。</p>\r\n<p>* Đ&acirc;y l&agrave; dạng c&acirc;u hỏi với trợ từ　は&nbsp;v&agrave; trợ từ nghi vấn　か&nbsp;ở cuối c&acirc;u.</p>\r\n<p>* C&aacute;ch d&ugrave;ng: C&acirc;u hỏi dạng n&agrave;y được dịch l&agrave;&nbsp;&ldquo;&nbsp;_______ c&oacute; phải kh&ocirc;ng?&rdquo;&nbsp;( giống với To BE của tiếng Anh)</p>\r\n<p>V&iacute; dụ:</p>\r\n<p>ミラーさん　は　かいしゃいん　ですか。</p>\r\n<p>( anh Miler c&oacute; phải l&agrave; nh&acirc;n vi&ecirc;n c&ocirc;ng ty kh&ocirc;ng?)</p>\r\n<p>&nbsp;</p>\r\n<p><strong>４</strong>．&nbsp;_____も_____です（か）。</p>\r\n<p>* Đ&acirc;y l&agrave; mẫu c&acirc;u d&ugrave;ng trợ từ&nbsp;も&nbsp;với y nghĩa l&agrave;&nbsp;&ldquo;cũng l&agrave;&rdquo;.</p>\r\n<p>* Đ&acirc;y l&agrave; trợ trừ c&oacute; thể d&ugrave;ng để hỏi v&agrave; trả lời. Khi d&ugrave;ng để hỏi th&igrave; người trả lời bắt buộc phải d&ugrave;ng　はい&nbsp;để x&aacute;c nhận hoặc　いいえ　để phủ định c&acirc;u hỏi. Nếu x&aacute;c nhận y kiến th&igrave; d&ugrave;ng trợ từ　も, chọn phủ định th&igrave; phải d&ugrave;ng trợ từ&nbsp;　は.</p>\r\n<p>* C&aacute;ch d&ugrave;ng: thay thế vị tr&iacute; của trợ từ　は&nbsp;v&agrave; mang nghĩa&nbsp;&ldquo;cũng l&agrave;&rdquo;</p>\r\n<p>V&iacute; dụ:</p>\r\n<p>A:&nbsp;わたしはベトナムじんです。あなたも&nbsp;(&nbsp;ベトナムじんですか&nbsp;)</p>\r\n<p>(T&ocirc;i l&agrave; người Việt Nam, bạn cũng l&agrave; người Việt Nam phải kh&ocirc;ng ?)</p>\r\n<p>B:&nbsp;はい、わたしもベトナムじんです。わたしはだいがくせいです、あなたも？</p>\r\n<p>(V&acirc;ng, t&ocirc;i cũng l&agrave; người Việt Nam. T&ocirc;i l&agrave; sinh vi&ecirc;n đại học, c&ograve;n anh cũng vậy phải kh&ocirc;ng)</p>\r\n<p>A:&nbsp;いいえ、わたしはだいがくせいじゃありません。（わたしは）かいしゃいんです</p>\r\n<p>(Kh&ocirc;ng, t&ocirc;i kh&ocirc;ng phải l&agrave; sinh vi&ecirc;n đại học, t&ocirc;i l&agrave; nhan vi&ecirc;n c&ocirc;ng ty.)</p>\r\n<p>Ch&uacute; &yacute;: Đối với c&aacute;c c&acirc;u c&oacute; qu&aacute; nhiều chủ ngữ&nbsp;&ldquo;わたしは&rdquo;&nbsp;ta c&oacute; thể lược bỏ bớt cho c&acirc;u văn ngắn gọn.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>５</strong>．&nbsp;_____&nbsp;は___～の</p>\r\n<p>* Đ&acirc;y l&agrave; cấu tr&uacute;c d&ugrave;ng trợ từ　の&nbsp;để chỉ sự sở hữu.</p>\r\n<p>* C&oacute; khi mang nghĩa l&agrave;&nbsp;&ldquo;của&rdquo;&nbsp;nhưng c&oacute; khi kh&ocirc;ng mang nghĩa để c&acirc;u văn hay hơn.</p>\r\n<p>V&iacute; dụ:</p>\r\n<p>IMC　のしゃいん.</p>\r\n<p>(Nh&acirc;n vi&ecirc;n của c&ocirc;ng ty IMC)</p>\r\n<p>　日本語　　の　ほん</p>\r\n<p>(S&aacute;ch tiếng Nhật)</p>\r\n<p>&nbsp;</p>\r\n<p><strong>６</strong>．_____は　なんさい　（おいくつ）　ですか。</p>\r\n<p>_____は～さい　です。</p>\r\n<p>* Đ&acirc;y l&agrave; mẫu c&acirc;u hỏi với từ để hỏi ( nghi vấn từ)　なんさい　（おいくつ）&nbsp;d&ugrave;ng để hỏi tuổi.</p>\r\n<p>なんさい&nbsp;D&ugrave;ng để hỏi trẻ nhỏ ( dưới 10 tuổi).</p>\r\n<p>おいくつ&nbsp;D&ugrave;ng để hỏi 1 c&aacute;ch lịch sự.</p>\r\n<p>Vd:</p>\r\n<p>たろくんはなんさいですか</p>\r\n<p>(B&eacute; Taro mấy tuổi vậy ?)</p>\r\n<p>たろくんはきゅうさいです</p>\r\n<p>(B&eacute; Taro 9 tuổi)</p>\r\n<p>やまださんはおいくつですか</p>\r\n<p>(Anh Yamada bao nhi&ecirc;u tuổi vậy?)</p>\r\n<p>やまださんはよんじゅうごさいです</p>\r\n<p>(Anh Yamada 45 tuổi)</p>\r\n<p><strong>７</strong>．a. _____は　～さん（さま）ですか。<br />b. _____は&nbsp;だれ（どなた）ですか。<br />* Mẫu c&acirc;u (a.) d&ugrave;ng để x&aacute;c định lại t&ecirc;n một người.<br />* Mẫu c&acirc;u (b.) d&ugrave;ng để hỏi t&ecirc;n một người với nghi vấn từ　だれ　（どなた）<br />* Mẫu c&acirc;u (b.) d&ugrave;ng từ th&ocirc;ng dụng l&agrave;　だれ, khi muốn n&oacute;i 1 c&aacute;ch lịch sự th&igrave; d&ugrave;ng　どなた.<br />Ví dụ:<br />a. あの　ひと（かた）　は　きむらさんですか。<br />(Người kia (vị kia) l&agrave; anh (&ocirc;ng) Kimura phải kh&ocirc;ng?)<br />b. あのひとはだれですか。<br />(Người kia l&agrave; ai vậy ?)<br />あのかたはどなたですか<br />(Vị kia l&agrave; vị n&agrave;o vậy?)<br />* C&aacute;c điểm ch&uacute; y th&ecirc;m:<br />Khi giới thiệu t&ecirc;n m&igrave;nh kh&ocirc;ng bao giờ được n&oacute;i th&ecirc;m chữ さんhoặc さま( c&oacute; nghĩa l&agrave; ng&agrave;i, gọi một c&aacute;ch t&ocirc;n k&iacute;nh) v&igrave; trong tiếng Nhật c&oacute; sự tế nhị l&agrave; người Nhật lu&ocirc;n tự hạ m&igrave;nh trước người<br />kh&aacute;c. Khi giới thiệu t&ecirc;n người kh&aacute;c th&igrave; phải th&ecirc;m chữ さんhoặc さま( khi giới thiệu người lớn tuổi, c&oacute; địa vị xã hội cao)</p>\r\n<p><br /><strong>８</strong>．__A___&nbsp;は　なに　じん　ですか。<br />__A___&nbsp;は_____　じん　です。<br />* Đ&acirc;y l&agrave; mẫu c&acirc;u d&ugrave;ng để hỏi Quốc tịch của một người.<br />* Nghĩa l&agrave; ( ___A__ l&agrave; người nước n&agrave;o?)<br />Ví dụ:<br />A さん　はなにじん　ですか。　　<br />( A l&agrave; người nước n&agrave;o?)<br />A さん　は　ベトナムじん　です。　<br />( A l&agrave; người Việt Nam)</p>\r\n<p><br /><strong>９</strong>．___A__&nbsp;は&nbsp;___1__ですか、___2__ですか。<br />___A__は&nbsp;__1(2)___です。<br />* Đ&acirc;y l&agrave; dạng c&acirc;u hỏi chọn lựa trong hai hay nhiều sự vật, sự việc kh&aacute;c nhau.<br />* Nghĩa l&agrave; &ldquo; ___A__ l&agrave; _____ hay l&agrave; _____?&rdquo;<br />Ví dụ:<br />A さん　は　エンジニア　ですか、いしゃ　ですか<br />( A l&agrave; kĩ sư hay l&agrave; b&aacute;c sĩ ?)<br />A さん　は　いしゃ　です。<br />( A l&agrave; b&aacute;c sĩ)</p>\r\n<p><br /><strong>１０</strong>.___A__は　なんの～&nbsp;_____ですか。<br />A&nbsp;は　～の～　です。<br />* Đ&acirc;y l&agrave; c&acirc;u hỏi về bản chất của một sự vật, sự việc.<br />* Nghiã l&agrave;: &ldquo;A l&agrave; _____ g&igrave;?&rdquo;<br />Ví dụ:<br />このほん　は　なんのほん　ですか。<br />( cuốn s&aacute;ch n&agrave;y l&agrave; s&aacute;ch g&igrave;?)<br />このほん　は　にほんごのほん　です。<br />( cuốn s&aacute;ch n&agrave;y l&agrave; s&aacute;ch tiếng Nhật)</p>\r\n<p><br /><strong>１１</strong>．___A__&nbsp;は　なん　ですか。<br />A　は　～　です。<br />* Đ&acirc;y l&agrave; c&acirc;u hỏi với từ để hỏi.<br />* Nghĩa: &ldquo; A l&agrave; C&aacute;i g&igrave;?&rdquo;<br />Ví dụ:<br />これ　は　なん　ですか。<br />(đ&acirc;y l&agrave; c&aacute;i g&igrave;?)<br />これ　は　ノート　です。<br />(đ&acirc;y l&agrave; cuốn tập)</p>\r\n<p><br /><strong>１２</strong>．おなまえ　は？　<br />あなたのなまえ　は　なんですか。<br />わたし　は　A　です。<br />* Đ&acirc;y l&agrave; c&acirc;u hỏi d&ugrave;ng để hỏi t&ecirc;n.<br />* Nghĩa: &ldquo; T&ecirc;n của bạn l&agrave; g&igrave;?&rdquo;<br />しつれいですが、おなまえは？(Đ&acirc;y l&agrave; c&acirc;u hỏi lịch sự.)<br />Ví dụ:<br />しつれいですが、おなまえ　は？<br />( T&ecirc;n bạn l&agrave; g&igrave;?)<br />わたし　は　A　です。<br />(T&ecirc;n t&ocirc;i l&agrave; A)</p>\r\n<p><br /><strong>１３</strong>．いなか　は　どこ　ですか。<br />わたしのいなか　は　～　です。<br />- Đ&acirc;y l&agrave; c&acirc;u hỏi d&ugrave;ng để hỏi qu&ecirc; hương của ai đ&oacute;. D&ugrave;ng nghi vấn từ để hỏi nơi chốn.<br />- Nghĩa: &ldquo; Qu&ecirc; của bạn ở đ&acirc;u?&rdquo;<br />Ví dụ:<br />いなか　は　どこ　ですか。<br />( qu&ecirc; của bạn ở đ&acirc;u?)<br />わたしのいなか　は　ダラット　です。<br />( qu&ecirc; t&ocirc;i ở Đà Lạt)</p>', '1 _____は_____です。\r\n\r\n* Với mẫu câu này ta dùng trợ từ は (đọc là , chứ không phải là )\r\n\r\n* Cách dùng: Dùng để nói tên, nghề nghiệp, quốc tịch ( tương tự như động từ TO BE của tiếng Anh.)', '1 _____は_____です。\r\n\r\n* Với mẫu câu này ta dùng trợ từ は (đọc là , chứ không phải là )\r\n\r\n* Cách dùng: Dùng để nói tên, nghề nghiệp, quốc tịch ( tương tự như động từ TO BE của tiếng Anh.)', 'bai1 (1)_1003070820.jpg', NULL, NULL, '2014-12-22 22:23:54', 1, 'ngu-phap----bai-2-giao-trinh-minano-nihongo---みんなの日本語-'),
(22, 'Từ Mới -  Bài 2 Giáo trình Minano Nihongo - みんなの日本語 ', 'Từ Mới -  Bài 2 Giáo trình Minano Nihongo - みんなの日本語 ', '<table style="height: 608px;" width="733">\r\n<tbody>\r\n<tr>\r\n<td class="hiragana"><strong>Hiragana</strong></td>\r\n<td class="kanji"><strong>Kanji</strong></td>\r\n<td class="vietnamese"><strong>Tiếng Việt</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">これ</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">c&aacute;i n&agrave;y, đ&acirc;y (vật ở gần người n&oacute;i)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">それ</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">c&aacute;i đ&oacute;, đ&oacute; (vật ở gần người nghe)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">あれ</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">c&aacute;i kia, kia (vật ở xa cả người n&oacute;i v&agrave; người nghe)</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">この～</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">~ n&agrave;y</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">その～</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">~ đ&oacute;</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">あの～</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">~ kia</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">ほん</td>\r\n<td class="kanji">&nbsp;本</td>\r\n<td class="vietnamese">s&aacute;ch</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">じしょ</td>\r\n<td class="kanji">&nbsp;辞書</td>\r\n<td class="vietnamese">từ điển</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">ざっし</td>\r\n<td class="kanji">&nbsp;雑誌</td>\r\n<td class="vietnamese">tạp ch&iacute;</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">しんぶん</td>\r\n<td class="kanji">&nbsp;新聞</td>\r\n<td class="vietnamese">b&aacute;o</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">ノート</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">vở</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">てちょう</td>\r\n<td class="kanji">&nbsp;手帳</td>\r\n<td class="vietnamese">sổ tay</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">めいし</td>\r\n<td class="kanji">&nbsp;名刺</td>\r\n<td class="vietnamese">danh thiếp</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">カード</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">thẻ, cạc</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">テレホンカード</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">thẻ điện thoại</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">えんぴつ</td>\r\n<td class="kanji">&nbsp;鉛筆</td>\r\n<td class="vietnamese">b&uacute;t ch&igrave;</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">ボールペン</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">b&uacute;t bi</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">シャープペンシル</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">b&uacute;t ch&igrave; kim, b&uacute;t ch&igrave; bấm</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">かぎ</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">ch&igrave;a kh&oacute;a</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">とけい</td>\r\n<td class="kanji">&nbsp;時計</td>\r\n<td class="vietnamese">đồng hồ</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">かさ</td>\r\n<td class="kanji">&nbsp;傘</td>\r\n<td class="vietnamese">&ocirc;, d&ugrave;</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">かばん</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">cặp s&aacute;ch, t&uacute;i s&aacute;ch</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">[カセット]テープ</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">băng [c&aacute;t-x&eacute;t]</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">テープレコーダー</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">m&aacute;y ghi &acirc;m</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">テレビ</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">tivi</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">ラジオ</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">Radio</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">カメラ</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">m&aacute;y ảnh</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">コンピューター</td>\r\n<td class="kanji">&nbsp;</td>\r\n<td class="vietnamese">m&aacute;y vi t&iacute;nh</td>\r\n</tr>\r\n<tr>\r\n<td class="hiragana">じどうしゃ</td>\r\n<td class="kanji">&nbsp;自動車</td>\r\n<td class="vietnamese">&ocirc; t&ocirc;, xe hơi</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'Cách dùng: Đây là mẫu câu dùng để hỏi về thể loại hay thuộc tính của một sự vật, hiện tượng. Ta cũng có thể dùng để hỏi với ý nghĩa là sở hữu khi thay đổi từ để hỏi [nan] bằng từ để hỏi [dare] mà sau này chúng ta sẽ học tới! – Ví dụ: (đây là sách gì?) + (đây là sách tiếng Nhật)', 'Cách dùng: Đây là mẫu câu dùng để hỏi về thể loại hay thuộc tính của một sự vật, hiện tượng. Ta cũng có thể dùng để hỏi với ý nghĩa là sở hữu khi thay đổi từ để hỏi [nan] bằng từ để hỏi [dare] mà sau này chúng ta sẽ học tới! – Ví dụ: (đây là sách gì?) + (đây là sách tiếng Nhật)', 'bai2_1047608714.jpg', NULL, NULL, '2014-12-22 22:27:38', 1, 'tu-moi----bai-2-giao-trinh-minano-nihongo---みんなの日本語-'),
(23, 'Ngữ Pháp-  Bài 2 Giáo trình Minano Nihongo - みんなの日本語 ', 'Ngữ Pháp-  Bài 2 Giáo trình Minano Nihongo - みんなの日本語 ', '<p>１._____は　なんの～　ですか。</p>\r\n<p>- &Yacute; nghĩa: _____ l&agrave; c&aacute;i g&igrave;?</p>\r\n<p>- C&aacute;ch d&ugrave;ng: Đ&acirc;y l&agrave; mẫu c&acirc;u d&ugrave;ng để hỏi về thể loại hay thuộc t&iacute;nh của một sự vật, hiện tượng. Ta cũng c&oacute; thể d&ugrave;ng để hỏi với &yacute; nghĩa l&agrave; sở hữu khi thay đổi từ để hỏi [nan] bằng từ để hỏi [dare] m&agrave; sau n&agrave;y ch&uacute;ng ta sẽ học tới! &ndash; V&iacute; dụ: (đ&acirc;y l&agrave; s&aacute;ch g&igrave;?) + (đ&acirc;y l&agrave; s&aacute;ch tiếng Nhật)</p>\r\n<p>２._____は　なんようび　ですか。</p>\r\n<p>- &Yacute; nghĩa: _____ l&agrave; thứ mấy?<br />- C&aacute;ch d&ugrave;ng: D&ugrave;ng để hỏi thứ, c&oacute; thể l&agrave; ng&agrave;y h&ocirc;m nay hoặc l&agrave; một sự kiện sự việc g&igrave; đ&oacute;.<br />- V&iacute; dụ:<br />a. H&ocirc;m nay l&agrave; thứ mấy? +H&ocirc;m nay l&agrave; thứ ba<br />b. NOEL l&agrave; thứ mấy? + NOEL ng&agrave;y thứ Tư.</p>\r\n<p>３._____は　なんにち　ですか。</p>\r\n<p>- &Yacute; nghĩa: _____ l&agrave; ng&agrave;y mấy?<br />- C&aacute;ch d&ugrave;ng: D&ugrave;ng để hỏi ng&agrave;y v&agrave; c&oacute; thể l&agrave; ng&agrave;y h&ocirc;m nay hoặc l&agrave; ng&agrave;y của 1 sự kiện g&igrave; đ&oacute;.<br />- V&iacute; dụ: Sinh nhật ng&agrave;y mấy? + Tanjoubi wa 17(jyu nana) nichi desu. Sinh nhật ng&agrave;y 17.</p>\r\n<p>４．これ /それ/あれ　は　なん　ですか。</p>\r\n<p>- &Yacute; nghĩa: C&aacute;i n&agrave;y/c&aacute;i đ&oacute;/ c&aacute;i kia l&agrave; c&aacute;i g&igrave;?<br />- C&aacute;ch d&ugrave;ng:<br />a. Với [kore] th&igrave; d&ugrave;ng để hỏi vật ở gần m&igrave;nh, khi trả lời phải d&ugrave;ng [sore] v&igrave; khi đ&oacute; vật ở xa người trả lời<br />b. Với [sore] d&ugrave;ng để hỏi vật ở gần người n&oacute;i chuyện với m&igrave;nh, khi trả lời phải d&ugrave;ng [sore]<br />c. Với [are] d&ugrave;ng để hỏi vật kh&ocirc;ng ở gần ai cả n&ecirc;n trả lời vẫn l&agrave; [are]<br />- V&iacute; dụ: Đ&acirc;y l&agrave; s&aacute;ch g&igrave;? Đ&oacute; l&agrave; s&aacute;ch Kanji</p>\r\n<p>５．　この～　その～　は　なんの～　ですか。あの～</p>\r\n<p>- &Yacute; nghĩa: ~n&agrave;y/~đ&oacute;/~kia l&agrave; ~ g&igrave;?<br />- C&aacute;ch d&ugrave;ng&nbsp;tương&nbsp;tự mẫu c&acirc;u số 4 nhưng c&oacute; &iacute; nhấn mạnh hơn!<br />- V&iacute; dụ: cuốn tạp ch&iacute; đ&oacute; l&agrave; tạp ch&iacute; g&igrave;? cuốn tạp ch&iacute; n&agrave;y l&agrave; tạp ch&iacute; về Vi t&iacute;nh.</p>', 'Cách dùng: Đây là mẫu câu dùng để hỏi về thể loại hay thuộc tính của một sự vật, hiện tượng. Ta cũng có thể dùng để hỏi với ý nghĩa là sở hữu khi thay đổi từ để hỏi [nan] bằng từ để hỏi [dare] mà sau này chúng ta sẽ học tới! – Ví dụ: (đây là sách gì?) + (đây là sách tiếng Nhật)', 'Cách dùng: Đây là mẫu câu dùng để hỏi về thể loại hay thuộc tính của một sự vật, hiện tượng. Ta cũng có thể dùng để hỏi với ý nghĩa là sở hữu khi thay đổi từ để hỏi [nan] bằng từ để hỏi [dare] mà sau này chúng ta sẽ học tới! – Ví dụ: (đây là sách gì?) + (đây là sách tiếng Nhật)', 'bai21_835763255.jpg', NULL, NULL, '2014-12-22 22:29:06', 1, 'ngu-phap---bai-2-giao-trinh-minano-nihongo---みんなの日本語-'),
(24, '[Vietsub] Haruka (Ost Daisuki) - Melody', '[Vietsub] Haruka (Ost Daisuki) - Melody', '<p><iframe style="display: block; margin-left: auto; margin-right: auto;" src="//www.youtube.com/embed/n8LuYCex_hw" width="640" height="360" frameborder="0" allowfullscreen="allowfullscreen"></iframe></p>', 'Ending song of Jdrama "Daisuki ~ I Love You" which is known as " I am Sam" of Japan with starring Karina,Hiraoka Yuta,Fukuda Saki', 'Ending song of Jdrama "Daisuki ~ I Love You" which is known as " I am Sam" of Japan with starring Karina,Hiraoka Yuta,Fukuda Saki', 'haruka_371751558.jpg', NULL, NULL, '2014-12-22 22:44:00', 1, '[vietsub]-haruka-(ost-daisuki)---melody'),
(25, '宇多田ヒカル - Prisoner Of Love', '宇多田ヒカル - Prisoner Of Love', '<p><iframe style="display: block; margin-left: auto; margin-right: auto;" src="//www.youtube.com/embed/W6QjKT1A2pI" width="640" height="360" frameborder="0" allowfullscreen="allowfullscreen"></iframe></p>', 'Prisoner Of Love（宇多田ヒカル）の歌詞。平気な顔で嘘をついて 笑って 嫌気がさして 楽ばかりしようとしていた ないものねだりブルース 皆安らぎを求めている 満ち足りてる', 'Prisoner Of Love（宇多田ヒカル）の歌詞。平気な顔で嘘をついて 笑って 嫌気がさして 楽ばかりしようとしていた ないものねだりブルース 皆安らぎを求めている 満ち足りてる', 'okok_923505057.jpg', NULL, NULL, '2014-12-22 22:48:03', 1, '宇多田ヒカル---prisoner-of-love');

-- --------------------------------------------------------

--
-- Table structure for table `page_menu`
--

CREATE TABLE IF NOT EXISTS `page_menu` (
  `page_id` int(10) NOT NULL,
  `menu_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`page_id`),
  KEY `fk_p_menu` (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `page_thumuc`
--

CREATE TABLE IF NOT EXISTS `page_thumuc` (
  `page_id` int(10) NOT NULL,
  `thumuc_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`page_id`),
  KEY `fk1_p_thumuc` (`thumuc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page_thumuc`
--

INSERT INTO `page_thumuc` (`page_id`, `thumuc_id`) VALUES
(24, 8),
(25, 8);

-- --------------------------------------------------------

--
-- Table structure for table `page_thumuc2`
--

CREATE TABLE IF NOT EXISTS `page_thumuc2` (
  `page_id` int(10) NOT NULL,
  `thumuc2_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`page_id`),
  KEY `fk_p_thumuc2` (`thumuc2_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page_thumuc2`
--

INSERT INTO `page_thumuc2` (`page_id`, `thumuc2_id`) VALUES
(20, 4),
(21, 4),
(22, 5),
(23, 5);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `answer` smallint(6) NOT NULL,
  `giaithich` text,
  `dethi_id` int(10) NOT NULL,
  `stt` int(4) NOT NULL,
  `score` smallint(6) DEFAULT '2',
  PRIMARY KEY (`id`),
  KEY `fk1_question` (`dethi_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

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
(10, '<p>家を（　　　）とたん、石につまずいて転んでしまった</p>', 1, NULL, 1, 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `class_id` int(10) DEFAULT NULL,
  `content` text NOT NULL,
  `time_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk1_status` (`user_id`),
  KEY `fk2_status` (`class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `user_id`, `class_id`, `content`, `time_on`) VALUES
(9, 11, NULL, 'alo alo', '2014-12-20 09:07:26'),
(10, 11, 6, '<p><span style="color: #ff0000;"><strong>Ch&agrave;o tất cả mọi người</strong> </span>, m&igrave;nh l&agrave;<strong><em> DA LV</em></strong> . Tuy t kh&ocirc;ng đam m&ecirc; lập tr&igrave;nh cho lắm nhưng sở th&iacute;ch của t l&agrave; kiếm tiền, v&igrave; vậy t muốn l&agrave;m tất cả mọi thứ để make money .hehe<img src="bootstrap/tinymce/plugins/emoticons/img/smiley-frown.gif" alt="frown" /></p>', '2014-12-20 09:13:14'),
(12, 11, NULL, 'Đùa tý thôi', '2014-12-20 10:19:22'),
(15, 1, NULL, 'Hôm nay là ngày 22/12 .. vậy là còn 2 ngày nữa đên hạn deadline :D\r\n頑張ろう。', '2014-12-22 21:42:20'),
(16, 11, 6, '<div><span class="Apple-style-span"><strong>Ch&agrave;o mọi người ... đ&acirc;y l&agrave; c&aacute;c dạng chia động từ trong tiếng nhật nh&eacute; .</strong></span></div>\r\n<div><img src="bootstrap/tinymce/plugins/emoticons/img/smiley-sealed.gif" alt="sealed" /></div>\r\n<div><span class="Apple-style-span"><strong>(1) Dạng "Sai bảo / Li&ecirc;n kết" (te-form, de-form) </strong>đối với động từ 5 đoạn (nh&oacute;m 1) t&ugrave;y đu&ocirc;i của động từ m&agrave; chia kh&aacute;c nhau như dưới đ&acirc;y:</span></div>\r\n<div><span class="Apple-style-span"><strong><span class="Apple-style-span">Khi chia dạng sai bảo / li&ecirc;n kết &nbsp;(2 dạng n&agrave;y giống nhau, tức "te"-form, "de"-form)&nbsp;</span></strong>của động từ nh&oacute;m 1 c&aacute;c bạn phải ch&uacute; &yacute; v&igrave; động từ kết th&uacute;c bởi "mu", "nu", "gu", "ku", "su" chia hơi kh&aacute;c. Th&ocirc;ng thường sẽ chia l&agrave; "tte" (って):<br /><span class="Apple-style-span"><strong>u, ru, tsu -&gt; "tte":</strong></span><br />言う（いう）：言って（いって）<br />帰る（かえる）：帰って（かえって）<br />立つ（たつ）：立って（たって）<br />Ri&ecirc;ng:<br /><strong><span class="Apple-style-span">su -&gt; "shite"</span></strong>: 刺す（さす）　&rarr;　刺して（さして） (đ&acirc;m)<br /><span class="Apple-style-span"><strong>mu, nu -&gt; "nde"</strong></span>: 飲む　&rarr;　飲んで（のんで） (uống), 死ぬ（しぬ）&rarr;死んで（しんで） (chết)<br /><strong><span class="Apple-style-span">gu -&gt; "ide"</span></strong>: 泳ぐ（およぐ）　&rarr;　泳いで（およいで） (bơi)<br /><strong><span class="Apple-style-span">ku -&gt; "ite"</span></strong>: 除く（のぞく）　&rarr;　除いて (のぞいて) (trừ ra)</span></div>\r\n<div><span class="Apple-style-span"><strong>(2) Dạng giả định xảy ra (tara, dara)</strong> cũng chia t&ugrave;y theo đu&ocirc;i của động từ <strong>giống như tr&ecirc;n</strong>:</span></div>\r\n<div><span class="Apple-style-span"><strong>u, ru, tsu -&gt; "ttara":</strong></span></div>\r\n<div><span class="Apple-style-span">iu: ittara</span></div>\r\n<div><span class="Apple-style-span">kaeru: kaettara</span></div>\r\n<div><span class="Apple-style-span">tatsu: tattara</span></div>\r\n<div><span class="Apple-style-span"><strong><span class="Apple-style-span">su -&gt; "shitara"</span></strong>:</span></div>\r\n<div><span class="Apple-style-span">sasu: sashitara</span></div>\r\n<div><span class="Apple-style-span"><span class="Apple-style-span"><strong>mu, nu -&gt; "ndara"</strong></span>:</span></div>\r\n<div><span class="Apple-style-span">yomu: yondara</span></div>\r\n<div><span class="Apple-style-span">shinu: shindara</span></div>\r\n<div><span class="Apple-style-span"><strong><span class="Apple-style-span">gu -&gt; "idara"</span></strong>:</span></div>\r\n<div><span class="Apple-style-span">sosogu: sosoidara</span></div>\r\n<div><span class="Apple-style-span"><strong><span class="Apple-style-span">ku -&gt; "itara"</span></strong>:</span></div>\r\n<div><span class="Apple-style-span">nozoku: nozoitara</span></div>\r\n<div><span class="Apple-style-span"><strong>(3) Dạng giả định sẽ xảy ra ("ba") th&igrave; động từ nh&oacute;m 1 v&agrave; nh&oacute;m 2 chia giống nhau</strong>, ch&uacute; &yacute; l&agrave; "taberu" sẽ th&agrave;nh "tabereba" m&agrave; kh&ocirc;ng phải l&agrave; tabeba như khi chia động từ nh&oacute;m 2 (động từ 1 đoạn) ở c&aacute;c dạng kh&aacute;c.</span></div>', '2014-12-23 08:30:31');

-- --------------------------------------------------------

--
-- Table structure for table `storage_images`
--

CREATE TABLE IF NOT EXISTS `storage_images` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_storage` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

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
(21, 12, '1959762_1567386116825816_2937940863701269917_n_1130789147.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=119 ;

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
(118, 'hoc tieng nhat qua bai hat');

-- --------------------------------------------------------

--
-- Table structure for table `tags_target`
--

CREATE TABLE IF NOT EXISTS `tags_target` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `page_id` int(10) NOT NULL,
  `tag_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk1_tags1` (`tag_id`),
  KEY `fk1_tag2` (`page_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=167 ;

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
(166, 25, 115);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `user_id` int(10) NOT NULL,
  `question_id` int(10) NOT NULL,
  `score` smallint(6) DEFAULT '0',
  `answer` smallint(6) NOT NULL,
  PRIMARY KEY (`user_id`,`question_id`),
  KEY `fk2_test` (`question_id`)
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
(11, 1, 0, 2),
(11, 2, 3, 3),
(11, 3, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `thumuc`
--

CREATE TABLE IF NOT EXISTS `thumuc` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `position` smallint(6) NOT NULL,
  `url` varchar(100) NOT NULL,
  `menu_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_thumuc` (`menu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `thumuc`
--

INSERT INTO `thumuc` (`id`, `name`, `position`, `url`, `menu_id`) VALUES
(7, 'みんなの日本語 50', 1, 'みんなの日本語-50', 6),
(8, 'BÀI HÁT', 1, 'bai-hat', 8);

-- --------------------------------------------------------

--
-- Table structure for table `thumuc2`
--

CREATE TABLE IF NOT EXISTS `thumuc2` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `position` smallint(6) NOT NULL,
  `url` varchar(100) NOT NULL,
  `thumuc_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_thumuc2` (`thumuc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

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
(53, 'Giáo trình Minano Nihongo - みんなの日本語 (Bài 50)', 50, 'giao-trinh-minano-nihongo---みんなの日本語-(bai-50)', 7);

-- --------------------------------------------------------

--
-- Table structure for table `type_notify`
--

CREATE TABLE IF NOT EXISTS `type_notify` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `content` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

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
  `id` int(10) NOT NULL AUTO_INCREMENT,
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
  `score` int(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `level`, `username`, `gender`, `active`, `des`, `address`, `state`, `sign`, `time_on`, `avatar`, `score`) VALUES
(1, 'Demon', 'Warlock', 'dalv0911@gmail.com', '091194', 5, 'demon', 1, NULL, '一度きりの人生だから、悔いのないように生きようと思う。', 'Giải Phóng', 'Đại Học Bách Khoa Hà Nội', 'Demon Warlock', '2014-11-25 00:00:00', '10482756_1510879879163825_2050523228278434521_n_1000402850.jpg', 12),
(4, 'Giap', 'NX', 'giapnx.ict@gmail.com', '091194', 4, 'giapnx', 1, 'd2c380f02b6ec1e93438cc603bdeb6', '一度きりの人生だから、悔いのないように生きようと思う。', '258 Giải Phóng - Thanh Xuân - Hà Nội', 'Đại Học Bách Khoa Hà Nội', 'Giap NX', '2014-11-14 10:20:34', '10580132_350443721778020_5187722379797220671_n_680762779.jpg', 0),
(5, 'Hai', 'Leader', 'haipv@gmail.com', '091194', 1, 'haipv@gmail.com', 3, 'd67db6cb5e6f7a69a0300a04196526', NULL, NULL, NULL, NULL, '2014-11-17 07:29:41', '10580132_350443721778020_5187722379797220671_n_1226620924.jpg', 0),
(6, 'Liên ', 'Nông Ná', 'lienoliver94@gmail.com', '091194', 1, 'lienbep', 1, 'ba53cabb3972b362ca33bd4dee4f1e', 'Yêu gì tầm này', '258 Giải Phóng - Thanh Xuân - Hà Nội', 'Đại Học Bách Khoa Hà Nội', 'Liên Nông Ná', '2014-11-17 07:30:21', '1959762_1567386116825816_2937940863701269917_n_78489969.jpg', 0),
(7, NULL, NULL, 'xuongrong275@gmail.com', '091194', 1, 'xuongrong275@gmail.c', 3, '6b6ca6a6edbe95e74fb6d8f01dd0c7', NULL, NULL, NULL, NULL, '2014-11-17 07:30:32', NULL, 0),
(8, 'Lương', 'Nép', 'abc@gmail.com', '091194', 1, 'luong', 2, '64c5038a65c69ced802112b9986560', '一度きりの人生だから、悔いのないように生きようと思う。', '258 Giải Phóng - Thanh Xuân - Hà Nội', 'Đại Học Bách Khoa Hà Nội', 'Luong', '2014-11-17 23:07:12', '1959762_1567386116825816_2937940863701269917_n_753787712.jpg', 0),
(9, 'AB', 'CD', 'abcd@gmail.com', '091194', 1, 'abcd', 3, '00352f043051572f40ad5dcf968684', '一度きりの人生だから、悔いのないように生きようと思う。', '258 Giải Phóng - Thanh Xuân - Hà Nội', 'Đại Học Bách Khoa Hà Nội', 'ABCD', '2014-11-17 23:08:22', '8-84de1_1204330461.jpg', 0),
(10, 'DA', 'LV', 'dalv091194@gmail.com', '091194', 4, 'dalv0911', 1, '39ed5a1410b8d030b384fbb8942c4f', '失敗するのは頑張らなかっただけ。。', '258 Giải Phóng - Thanh Xuân - Hà Nội', 'Đại Học Bách Khoa Hà Nội', 'ＤＡ　ＬＶ', '2014-12-13 20:42:00', 'death_note_avatar__l_by_lartovio-d513nsb_282202421.jpg', 0),
(11, 'DA', 'LV', 'da0911@gmail.com', '091194', 2, 'da0911', 1, 'b172c761f0bc6b4cd24201ed2ffd58', '失敗するのは頑張らなかっただけ。。', '258 Giải Phóng - Thanh Xuân - Hà Nội', 'Đại Học Bách Khoa Hà Nội', 'DA LV', '2014-12-20 07:55:16', '1959762_1567386116825816_2937940863701269917_n_320199484.jpg', 3),
(12, 'Lee', 'Ryan', 'hienvl@gmail.com', '091194', 2, 'leeryan', 3, '86d357320babe1a990b288e9eba33f', '一度きりの人生だから、悔いのないように生きようと思う。', '258 Giải Phóng - Thanh Xuân - Hà Nội', 'Đại Học Bách Khoa Hà Nội', 'Lee Ryan', '2014-12-20 14:09:01', '1959762_1567386116825816_2937940863701269917_n_1130789147.jpg', 0);

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
