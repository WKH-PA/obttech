-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2024 at 04:28 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `obtte206_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `lh_backup`
--

CREATE TABLE `lh_backup` (
  `id` int(11) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `duongdantin` varchar(255) DEFAULT NULL,
  `ngay_backup` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lh_baiviet`
--

CREATE TABLE `lh_baiviet` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL DEFAULT 0,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `tenbaiviet_cn` varchar(255) DEFAULT NULL,
  `tenbaiviet_jp` varchar(255) DEFAULT NULL,
  `mota_vi` text DEFAULT NULL,
  `mota_en` text DEFAULT NULL,
  `mota_cn` text DEFAULT NULL,
  `mota_jp` text DEFAULT NULL,
  `noidung_vi` mediumtext DEFAULT NULL,
  `noidung_en` mediumtext DEFAULT NULL,
  `noidung_cn` mediumtext DEFAULT NULL,
  `noidung_jp` mediumtext DEFAULT NULL,
  `tags_vi` text DEFAULT NULL,
  `tags_en` text DEFAULT NULL,
  `tags_cn` varchar(255) DEFAULT NULL,
  `tags_jp` varchar(255) DEFAULT NULL,
  `seo_name` varchar(255) DEFAULT NULL,
  `id_parent_muti` varchar(255) DEFAULT NULL,
  `catasort` int(11) NOT NULL DEFAULT 0,
  `icon` varchar(255) DEFAULT NULL,
  `icon_hover` varchar(255) DEFAULT NULL,
  `dowload` varchar(255) DEFAULT NULL,
  `dowload_text` varchar(255) DEFAULT NULL,
  `duongdantin` varchar(255) NOT NULL DEFAULT 'datafiles/setone',
  `ngaydang` int(11) NOT NULL DEFAULT 0,
  `capnhat` int(11) NOT NULL DEFAULT 0,
  `soluotxem` int(11) NOT NULL DEFAULT 1,
  `step` tinyint(3) NOT NULL DEFAULT 1,
  `giatien` bigint(11) NOT NULL DEFAULT 0,
  `giakm` bigint(11) NOT NULL DEFAULT 0,
  `seo_title_vi` varchar(255) DEFAULT NULL,
  `seo_title_en` varchar(255) DEFAULT NULL,
  `seo_title_cn` varchar(255) DEFAULT NULL,
  `seo_title_jp` varchar(255) DEFAULT NULL,
  `seo_keywords_vi` varchar(255) DEFAULT NULL,
  `seo_keywords_en` varchar(255) DEFAULT NULL,
  `seo_keywords_cn` varchar(255) DEFAULT NULL,
  `seo_keywords_jp` varchar(255) DEFAULT NULL,
  `seo_description_vi` varchar(255) DEFAULT NULL,
  `seo_description_en` varchar(255) DEFAULT NULL,
  `seo_description_cn` varchar(255) DEFAULT NULL,
  `seo_description_jp` varchar(255) DEFAULT NULL,
  `opt_km` tinyint(1) NOT NULL DEFAULT 0,
  `opt` tinyint(1) NOT NULL DEFAULT 0,
  `opt1` tinyint(1) NOT NULL DEFAULT 0,
  `opt2` tinyint(1) NOT NULL DEFAULT 0,
  `opt3` tinyint(4) NOT NULL DEFAULT 0,
  `opt4` tinyint(4) NOT NULL DEFAULT 0,
  `opt5` tinyint(4) NOT NULL DEFAULT 0,
  `top_video` tinyint(4) NOT NULL DEFAULT 0,
  `p1` varchar(255) DEFAULT NULL,
  `p2` int(11) NOT NULL DEFAULT 0,
  `p3` varchar(255) DEFAULT NULL,
  `link_video` varchar(255) DEFAULT NULL,
  `num_1` int(11) NOT NULL DEFAULT 0,
  `num_2` int(11) NOT NULL DEFAULT 0,
  `num_3` int(11) NOT NULL DEFAULT 0,
  `num_4` int(11) NOT NULL DEFAULT 0,
  `showhi` tinyint(1) NOT NULL DEFAULT 1,
  `tinh_nang` text DEFAULT NULL,
  `thuoc_tinh_1_vi` varchar(255) DEFAULT NULL,
  `thuoc_tinh_1_en` varchar(255) DEFAULT NULL,
  `thuoc_tinh_1_cn` varchar(255) DEFAULT NULL,
  `thuoc_tinh_1_jp` varchar(255) DEFAULT NULL,
  `thuoc_tinh_2_vi` varchar(255) DEFAULT NULL,
  `thuoc_tinh_2_en` varchar(255) DEFAULT NULL,
  `thuoc_tinh_2_cn` varchar(255) DEFAULT NULL,
  `thuoc_tinh_2_jp` varchar(255) DEFAULT NULL,
  `thuoc_tinh_3_vi` varchar(255) DEFAULT NULL,
  `thuoc_tinh_3_en` varchar(255) DEFAULT NULL,
  `thuoc_tinh_3_cn` varchar(255) DEFAULT NULL,
  `thuoc_tinh_3_jp` varchar(255) DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `is_dongdau` tinyint(4) NOT NULL DEFAULT 0,
  `time_dongdau` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='Bang chua catalag News' ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `lh_baiviet`
--

INSERT INTO `lh_baiviet` (`id`, `id_user`, `id_parent`, `tenbaiviet_vi`, `tenbaiviet_en`, `tenbaiviet_cn`, `tenbaiviet_jp`, `mota_vi`, `mota_en`, `mota_cn`, `mota_jp`, `noidung_vi`, `noidung_en`, `noidung_cn`, `noidung_jp`, `tags_vi`, `tags_en`, `tags_cn`, `tags_jp`, `seo_name`, `id_parent_muti`, `catasort`, `icon`, `icon_hover`, `dowload`, `dowload_text`, `duongdantin`, `ngaydang`, `capnhat`, `soluotxem`, `step`, `giatien`, `giakm`, `seo_title_vi`, `seo_title_en`, `seo_title_cn`, `seo_title_jp`, `seo_keywords_vi`, `seo_keywords_en`, `seo_keywords_cn`, `seo_keywords_jp`, `seo_description_vi`, `seo_description_en`, `seo_description_cn`, `seo_description_jp`, `opt_km`, `opt`, `opt1`, `opt2`, `opt3`, `opt4`, `opt5`, `top_video`, `p1`, `p2`, `p3`, `link_video`, `num_1`, `num_2`, `num_3`, `num_4`, `showhi`, `tinh_nang`, `thuoc_tinh_1_vi`, `thuoc_tinh_1_en`, `thuoc_tinh_1_cn`, `thuoc_tinh_1_jp`, `thuoc_tinh_2_vi`, `thuoc_tinh_2_en`, `thuoc_tinh_2_cn`, `thuoc_tinh_2_jp`, `thuoc_tinh_3_vi`, `thuoc_tinh_3_en`, `thuoc_tinh_3_cn`, `thuoc_tinh_3_jp`, `google_map`, `is_dongdau`, `time_dongdau`) VALUES
(1, 1, 0, 'Về chúng tôi', 'About us', NULL, NULL, '', '', NULL, NULL, '<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"88\" src=\"/2021_obtvietnam/datafiles/images/Screenshot%202021-06-13%20190814.jpg\" width=\"445\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><strong><span style=\"color:#2980b9;\"></span><span style=\"color:#2980b9;\"></span><span style=\"color:#27ae60;\"></span><span style=\"color:#27ae60;\"></span>OBT</strong>&nbsp;<strong>VN</strong> l&agrave; một trong những doanh nghiệp dẫn đầu về ng&agrave;nh Kh&oacute;a điện tử v&agrave; l&agrave; chuy&ecirc;n gia h&agrave;ng đầu trong lĩnh vực tư vấn &ndash; xử l&yacute; kết nối c&aacute;c giải ph&aacute;p th&ocirc;ng minh trong chuỗi hệ thống Khu nghỉ dưỡng, Kh&aacute;ch sạn v&agrave; căn hộ cao cấp mang tầm quốc tế.</span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">Văn ph&ograve;ng Hội sở OBT tọa lạc tại 130 Phan Đ&igrave;nh Ph&ugrave;ng, Phường 2, Quận Ph&uacute; Nhuận, TP.HCM c&ugrave;ng hệ thống chi nh&aacute;nh &amp; nhiều trung t&acirc;m hỗ trợ dịch vụ kỹ thuật ph&acirc;n bổ tr&ecirc;n to&agrave;n quốc như:</span></span></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"color:#e74c3c;\"><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"color:#3498db;\"><strong><span class=\"fa fa-university\" style=\"color:rgb(0, 0, 0);\"></span></strong></span></span></span><strong>&nbsp;</strong></span><span style=\"color:#27ae60;\"><strong>Đ&agrave; Nẵng&nbsp;</strong></span><span style=\"color:#3498db;\"><strong>&nbsp; &nbsp; &nbsp;<span class=\"fa fa-university\" style=\"color:rgb(0, 0, 0);\"></span>&nbsp;</strong></span><span style=\"color:#27ae60;\"><strong>Nha Trang</strong></span><span style=\"color:#3498db;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp;<span class=\"fa fa-university\" style=\"color:rgb(0, 0, 0);\"></span>&nbsp;</strong></span><span style=\"color:#27ae60;\"><strong>Canh Ranh</strong></span><span style=\"color:#e74c3c;\"><strong>&nbsp; &nbsp; &nbsp; </strong></span><span style=\"color:#f39c12;\"><strong>&nbsp;&nbsp;<span class=\"fa fa-university\" style=\"color:rgb(0, 0, 0);\"></span>&nbsp;Đồng Nai&nbsp; &nbsp; &nbsp;&nbsp;<span class=\"fa fa-university\" style=\"color:rgb(0, 0, 0);\"></span>&nbsp;B&igrave;nh Dương&nbsp; &nbsp; &nbsp; &nbsp;<span class=\"fa fa-university\" style=\"color:rgb(0, 0, 0);\"></span>&nbsp;Ph&uacute; Quốc</strong></span><span style=\"color:#e74c3c;\"></span><strong><span style=\"color:#3498db;\"></span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><strong><span style=\"color:#000099;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lsquo;Keep Your Home Safe&rsquo; bằng sự An to&agrave;n - Bảo mật - Hiện đại - Sang trọng &amp; Đẳng cấp l&agrave; sứ mệnh của OBT ch&uacute;ng t&ocirc;i d&agrave;nh Qu&yacute;&nbsp;Thượng đế!</span></strong></span></span><span style=\"font-size:14px;\"></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"480\" src=\"/2021_obtvietnam/datafiles/images/Keyless-Electric-Smart-Fingerprint-Door-Lock-Wt-M-1603A.jpg\" width=\"652\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"843\" src=\"/2021_obtvietnam/datafiles/images/z2687940207850_80906d27eebc731c18214c81e4cd8132(1).jpg\" width=\"629\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p style=\"text-align: center;\"><span class=\"fa fa-star-o\" style=\"color:rgb(0, 0, 0);\"></span><span class=\"fa fa-star-o\" style=\"color:rgb(0, 0, 0);\"></span><span class=\"fa fa-star-o\" style=\"color:rgb(0, 0, 0);\"></span><span class=\"fa fa-star-o\" style=\"color:rgb(0, 0, 0);\"></span><span class=\"fa fa-star-o\" style=\"color:rgb(0, 0, 0);\"></span><span class=\"fa fa-star-o\" style=\"color:rgb(0, 0, 0);\"></span><span class=\"fa fa-star-o\" style=\"color:rgb(0, 0, 0);\"></span><span class=\"fa fa-star-o\" style=\"color:rgb(0, 0, 0);\"></span><span class=\"fa fa-star-o\" style=\"color:rgb(0, 0, 0);\"></span><span class=\"fa fa-star-o\" style=\"color:rgb(0, 0, 0);\"></span></p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"84\" src=\"/2021_obtvietnam/datafiles/images/Screenshot%202021-06-12%20162826(1).jpg\" width=\"386\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div style=\"text-align: center;\"><span style=\"font-size:20px;\"></span>\r\n\r\n<div style=\"text-align: left;\"><em><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span style=\"background:white\"><span style=\"color:#333333\">Mang thai v&agrave; l&agrave;m mẹ l&agrave; trọng tr&aacute;ch thi&ecirc;ng li&ecirc;ng của người phụ nữ,</span></span></span></span></em><em><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span style=\"background:white\"><span style=\"color:#333333\"></span></span></span></span></em></div>\r\n\r\n<div style=\"text-align: left;\"><em><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span style=\"background:white\"><span style=\"color:#333333\">Từ một b&agrave;o thai sau 40 tuần &ldquo;ấp ủ&rdquo; đem đến cho mẹ một thi&ecirc;n thần nhỏ b&eacute; l&agrave; một chặng đường đầy cảm hứng với mồ h&ocirc;i v&agrave; nước mắt,</span></span></span></span></em></div>\r\n\r\n<div style=\"text-align: left;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:14px;\"></span></span></div>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"400\" src=\"/2021_obtvietnam/datafiles/images/1500x400.jpg\" width=\"1500\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p style=\"text-align: left;\"><em><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span style=\"background:white\"><span style=\"color:#333333\">..., <strong>OBT</strong> l&agrave; b&agrave;o thai đ&atilde; được ấp ủ nhiều năm, được h&igrave;nh th&agrave;nh suốt một chặng đường d&agrave;i đầy nổ lực để đến với thế giới.</span></span></span></span></em></p>\r\n\r\n<p style=\"text-align: left;\">&nbsp;</p>\r\n\r\n<p style=\"text-align: left;\"><iframe align=\"middle\" allowfullscreen=\"0\" frameborder=\"0\" height=\"500\" scrolling=\"no\" src=\"https://www.youtube.com/embed/4b8QXylDNjs\" width=\"1600\"></iframe></p>\r\n</div>\r\n\r\n<div style=\"text-align: center;\">&nbsp;</div>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">Tr&acirc;n trọng,</span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"></span></p>\r\n\r\n<div>\r\n<p>&nbsp;</p>\r\n</div>', '', NULL, NULL, '', '', NULL, NULL, 've-chung-toi', '', 1, NULL, NULL, NULL, '', 'datafiles', 1619159819, 0, 1, 1, 0, 0, 'Về chúng tôi', 'About us', NULL, NULL, 'Về chúng tôi', 'About us', NULL, NULL, 'Về chúng tôi', 'About us', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(87, 1, 0, 'BÌNH DƯƠNG', '', NULL, NULL, '', '', NULL, NULL, '<div><a href=\"https://www.google.com/maps/place/Khu+Ph%E1%BB%91+%C4%90%C3%B4ng/@10.8848258,106.7023131,17z/data=!3m1!4b1!4m5!3m4!1s0x3174d75659abda33:0x27279f350573b157!8m2!3d10.8848258!4d106.7045018?hl=vi-VN\"><span style=\"color:#003399;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:12px;\">Khu phố Đ&ocirc;ng, P.Vĩnh Ph&uacute;,</span></span></span></a></div>\r\n\r\n<div><a href=\"https://www.google.com/maps/place/Khu+Ph%E1%BB%91+%C4%90%C3%B4ng/@10.8848258,106.7023131,17z/data=!3m1!4b1!4m5!3m4!1s0x3174d75659abda33:0x27279f350573b157!8m2!3d10.8848258!4d106.7045018?hl=vi-VN\"><span style=\"color:#003399;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:12px;\"></span></span><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:12px;\">TP. Thuận An,</span></span></span></a>&nbsp;<a href=\"https://www.google.com/maps/place/Khu+Ph%E1%BB%91+%C4%90%C3%B4ng/@10.8848258,106.7023131,17z/data=!3m1!4b1!4m5!3m4!1s0x3174d75659abda33:0x27279f350573b157!8m2!3d10.8848258!4d106.7045018?hl=vi-VN\"><span style=\"color:#003399;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:12px;\">B&igrave;nh Dương</span></span></span></a></div>\r\n\r\n<div>\r\n<div><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:12px;\"><a href=\"TEL:0971 570 707\"><span style=\"color:#003399;\">0971 570 707</span></a></span></span></div>\r\n\r\n<div><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:12px;\"><a href=\"mailto:obttech.marketing@gmail.com?subject=EMAILS%20FROM%20WEBSITE\"><span style=\"color:#003399;\">obttech.marketing@gmail.com</span></a></span></span></div>\r\n<span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"></span></span></div>', '', NULL, NULL, '', '', NULL, NULL, 'binh-duong', '', 3, NULL, NULL, NULL, '', 'datafiles', 1622170081, 0, 1, 7, 0, 0, 'BÌNH DƯƠNG', '', NULL, NULL, 'BÌNH DƯƠNG', '', NULL, NULL, 'BÌNH DƯƠNG', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(3, 1, 4, 'HOTEL SMART LOCK S3063P', 'Orbita e3592 hotel course', NULL, NULL, '<div><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span>&nbsp;Material: 304 Stainless Steel material</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span>&nbsp;Working Voltage: DC6V or 4 AA Alkaline batteries</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span>&nbsp;Low Voltage Alarm:＜4.8V</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span>&nbsp;Working Environment: -20℃~60℃</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span>&nbsp;Unlocking record: 1680PCS</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span>&nbsp;Door Thickness: 38-70mm</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span>&nbsp;Keycard Option: Mifare 1 card</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span>&nbsp;Size: L125mm x W61mm x H22mm</span></span></div>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"></span></span></p>', '<ul>\r\n	<li>Material: 304 stainless steel material</li>\r\n	<li>Working voltage ： DC6V or 4 AA Alkaline batteries</li>\r\n	<li>Low voltage alarm: ＜ 4.8V</li>\r\n	<li>Working environment ： -20 ℃ ~ 60 ℃</li>\r\n	<li>Unlocked record ： 1680PCS</li>\r\n	<li>Door thickness ： 32-70mm</li>\r\n	<li>Lock card selection ： 1 card Mifare</li>\r\n	<li>Size ： L295mm x W76mm X H17mm</li>\r\n</ul>', NULL, NULL, '<div><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span>&nbsp;Interface&nbsp;with most of the PMS system,Fidelio/Opera registered</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span>&nbsp;CE &amp; FCC Certified</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span>&nbsp;Stainless steel color lasts more than 10 years</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span>&nbsp;ANSI Standard mortise</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span>&nbsp;Inside Deadbolt,Inside handle retracts latches and deadbolt</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span>&nbsp;Mifare 1K card,compatible with Mifare Energy Saver</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span>&nbsp;Lost Guest Card suspension simply by issuing a new guest card with suspending function</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span>&nbsp;Multiple operators with different card issuing authorization</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span>&nbsp;Low battery voltage warning.(Lower then 4.8V).</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span>&nbsp;Self Error detecting with &ldquo;Beep&rdquo;</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span>&nbsp;Passage Model function available</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span>&nbsp;Can be integrated with 16 public areas such as Lift/Parking/Swimming Pool/Sauna Room/Tennis Court/Gym...etc</span></span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style=\"text-align: center;\"><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:14px;\"></span></span><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:14px;\"></span></span><iframe align=\"middle\" allowfullscreen=\"0\" frameborder=\"0\" height=\"350\" scrolling=\"no\" src=\"https://www.youtube.com/embed/O-RPtGnTwlg\" width=\"500\"></iframe></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif;\"></span></div>\r\n\r\n<div>\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"454\" src=\"/2021_obtvietnam/datafiles/images/Screenshot%202021-05-26%20174531.jpg\" width=\"505\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif;\"></span></p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"432\" src=\"/2021_obtvietnam/datafiles/images/Screenshot%202021-05-26%20174611.jpg\" width=\"511\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif;\"></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>', '<p>Modulo Home products Compact design with luxurious brown colors mixed with a classic hint of design, with ventilation slots for better storage. The smartly designed carrying tray can be adjusted to suit any size of utensils.</p>\r\n\r\n<h2>Advantages</h2>\r\n\r\n<p>- Products are manufactured with Malaysian high technology and meet European export standards.</p>\r\n\r\n<p>- The product is made from industrial wood that has been treated against warping, has a smooth surface, has high aesthetics, is resistant to termites, and is suitable for hot and humid climatic conditions.</p>\r\n\r\n<p>- Products are packaged according to European standards with pieces and accessories arranged neatly and tightly in cartons. When ordering, the product is neat and easy to transport for the buyer.</p>', NULL, NULL, '', '', NULL, NULL, 'hotel-smart-lock-s3063p', '14', 3, '1622011407_3.jpg', NULL, NULL, '', 'datafiles', 1619155493, 0, 21, 2, 8888888, 0, 'SMART LOCK 1', 'Orbita e3592 hotel course', NULL, NULL, 'SMART LOCK 1', 'Orbita e3592 hotel course', NULL, NULL, 'SMART LOCK 1', 'Orbita e3592 hotel course', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 'OBT-HS3063P', 0, '', '', 0, 0, 0, 0, 0, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 1621927157),
(71, 1, 5, 'OBT - P050', '', NULL, NULL, '<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\">TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</span></strong></span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Phương thức mở kh&oacute;a: V&acirc;n tay - Mật m&atilde; - Thẻ từ - Ch&igrave;a cơ</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Dung lượng: 100 v&acirc;n tay, 100 mật m&atilde;, 800 thẻ từ, 2 ch&igrave;a cơ</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chuẩn thẻ: Mifare 1K (Nhiều mẫu m&atilde;)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Tần số: 13.56 MHz</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Pin: Alkaline AA x 4 (Khoảng 12 th&aacute;ng, t&ugrave;y tần suất sử dụng)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Cấu tạo: Inox 304</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Độ d&agrave;y đố cửa: 38mm (d&agrave;y) x 115mm (rộng)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: 367mm (d&agrave;i) x 85mm (rộng) x 73mm (d&agrave;y)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: &iacute;t nhất 12 th&aacute;ng</span></span></div>', '', NULL, NULL, '<div>\r\n<figure class=\"image\"><img alt=\"\" height=\"392\" src=\"/2021_obtvietnam/datafiles/images/SPEC-5.jpg\" width=\"754\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\"></span></strong></span></span>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"422\" src=\"/2021_obtvietnam/datafiles/images/CHUC%20NANG%20AN%20NINH(1).jpg\" width=\"726\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div>\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"428\" src=\"/2021_obtvietnam/datafiles/images/CHUC%20NANG%20MO%20RONG.jpg\" width=\"728\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"></span></span></p>\r\n</div>\r\n\r\n<div>\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align: center;\"><span style=\"font-family:Verdana,Geneva,sans-serif\"></span><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\">CHỨNG NHẬN LI&Ecirc;N QUAN TỪ C&Aacute;C </span></strong><strong><span style=\"color:#3300ff\">HIỆP HỘI TRONG V&Agrave; NGO&Agrave;I NƯỚC</span></strong><strong><span style=\"color:#3300ff\">:</span></strong></span></span></div>\r\n\r\n<div>\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"551\" src=\"/2021_obtvietnam/datafiles/images/1-2006020U025614(1).jpg\" width=\"547\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '', NULL, NULL, '', '', NULL, NULL, 'obt-p050', '9', 41, '1622080181_Untitled.png', NULL, NULL, '', 'datafiles', 1622033801, 0, 12, 2, 8888888, 0, 'OBT - P050', '', NULL, NULL, 'OBT - P050', '', NULL, NULL, 'OBT - P050', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 'OBT - P050', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(76, 1, 4, 'HOTEL SMART LOCK E4041', '', NULL, NULL, '<div><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"></span></span>\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Material: 304 Stainless Steel material</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Working Voltage: DC6V or 4 AA Alkaline batteries</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Low Voltage Alarm:＜4.8V</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Working Environment: -20℃~60℃</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Unlocking record: 1680PCS</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Door Thickness: 38-70mm</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Keycard Option: Mifare 1 card</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Size: L125mm x W61mm x H22mm</span></span></div>\r\n<span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"></span></span></div>', '', NULL, NULL, '<div>\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Interface with most of the PMS system,Fidelio/Opera registered</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> CE &amp; FCC Certified</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Stainless steel color lasts more than 10 years</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> ANSI Standard mortise</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Inside Deadbolt,Inside handle retracts latches and deadbolt</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Mifare 1K card,compatible with Mifare Energy Saver</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Lost Guest Card suspension simply by issuing a new guest card with suspending function</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Multiple operators with different card issuing authorization</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Low battery voltage warning.(Lower then 4.8V).</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Self Error detecting with &ldquo;Beep&rdquo;</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Passage Model function available</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Can be integrated with 16 public areas such as Lift/Parking/Swimming Pool/Sauna Room/Tennis Court/Gym...etc</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"></span></div>\r\n\r\n<div>\r\n<figure class=\"image\"><img alt=\"\" height=\"488\" src=\"/2021_obtvietnam/datafiles/images/Screenshot%202021-05-26%20174531.jpg\" width=\"542\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\"></span></p>\r\n\r\n<figure class=\"image\"><img alt=\"\" height=\"460\" src=\"/2021_obtvietnam/datafiles/images/Screenshot%202021-05-26%20174611.jpg\" width=\"544\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\"></span></p>\r\n\r\n<figure class=\"image\"><img alt=\"\" height=\"370\" src=\"/2021_obtvietnam/datafiles/images/Screenshot%202021-05-26%20174639.jpg\" width=\"543\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n</div>', '', NULL, NULL, '', '', NULL, NULL, 'hotel-smart-lock-e4041', '14', 1, '1622081654_unnamed-1.jpg', NULL, NULL, '', 'datafiles', 1622028427, 0, 6, 2, 8888888, 0, 'SMART LOCK', '', NULL, NULL, 'SMART LOCK', '', NULL, NULL, 'SMART LOCK', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 'OBT-HE4041', 0, '', '', 0, 0, 0, 0, 0, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(74, 1, 5, 'OBT - P020', '', NULL, NULL, '<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\">TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</span></strong></span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Phương thức mở kh&oacute;a: Mật m&atilde; - Thẻ từ - Ch&igrave;a cơ</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Dung lượng: 100 mật m&atilde;, 800 thẻ từ, 2 ch&igrave;a cơ</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chuẩn thẻ: Mifare 1K (Nhiều mẫu m&atilde;)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Tần số: 13.56 MHz</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Pin: Alkaline AA x 4 (Khoảng 12 th&aacute;ng, t&ugrave;y tần suất sử dụng)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Cấu tạo: Inox 304</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Độ d&agrave;y đố cửa: 38mm (d&agrave;y) x 115mm (rộng)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: 367mm (d&agrave;i) x 85mm (rộng) x 73mm (d&agrave;y)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: &iacute;t nhất 12 th&aacute;ng</span></span></div>', '', NULL, NULL, '<figure class=\"image\"><img alt=\"\" height=\"392\" src=\"/2021_obtvietnam/datafiles/images/SPEC-5.jpg\" width=\"754\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"421\" src=\"/2021_obtvietnam/datafiles/images/CHUC%20NANG%20AN%20NINH(1).jpg\" width=\"724\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div>\r\n<div>\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"></span></span></div>\r\n\r\n<div>\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"428\" src=\"/2021_obtvietnam/datafiles/images/CHUC%20NANG%20MO%20RONG.jpg\" width=\"728\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n\r\n<div style=\"text-align: center;\"><span style=\"font-family:Verdana,Geneva,sans-serif\"></span><iframe align=\"middle\" allowfullscreen=\"0\" frameborder=\"0\" height=\"350\" scrolling=\"no\" src=\"https://www.youtube.com/embed/Ki9bV-wpUm0\" width=\"500\"></iframe></div>\r\n\r\n<div>&nbsp;</div>\r\n</div>', '', NULL, NULL, '', '', NULL, NULL, 'obt-p020', '10', 43, '1622079702_150.png', NULL, NULL, '', 'datafiles', 1622033724, 0, 23, 2, 8888888, 0, 'OBT - P020', '', NULL, NULL, 'OBT - P020', '', NULL, NULL, 'OBT - P020', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 'OBT - P020', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(80, 1, 5, 'OBT - P060', '', NULL, NULL, '<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\">TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</span></strong></span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Phương thức mở kh&oacute;a: V&acirc;n tay - Mật m&atilde; - Thẻ từ - Ch&igrave;a cơ</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Dung lượng: 100 v&acirc;n tay, 100 mật m&atilde;, 800 thẻ từ, 2 ch&igrave;a cơ</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chuẩn thẻ: Mifare 1K (Nhiều mẫu m&atilde;)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Tần số: 13.56 MHz</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Pin: Alkaline AA x 4 (Khoảng 12 th&aacute;ng, t&ugrave;y tần suất sử dụng)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Cấu tạo: Inox 304</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Độ d&agrave;y đố cửa: 38mm (d&agrave;y) x 115mm (rộng)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: 367mm (d&agrave;i) x 85mm (rộng) x 73mm (d&agrave;y)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: &iacute;t nhất 12 th&aacute;ng</span></span></div>', '', NULL, NULL, '<div>\r\n<figure class=\"image\"><img alt=\"\" height=\"392\" src=\"/2021_obtvietnam/datafiles/images/SPEC-5.jpg\" width=\"754\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\"> </span></strong></span></span>\r\n\r\n<div>\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"424\" src=\"/2021_obtvietnam/datafiles/images/CHUC%20NANG%20AN%20NINH(1).jpg\" width=\"729\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"428\" src=\"/2021_obtvietnam/datafiles/images/CHUC%20NANG%20MO%20RONG.jpg\" width=\"728\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div>\r\n<div style=\"text-align: center;\"><span style=\"font-family:Verdana,Geneva,sans-serif\"></span><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\">CHỨNG NHẬN LI&Ecirc;N QUAN TỪ C&Aacute;C </span></strong><strong><span style=\"color:#3300ff\">HIỆP HỘI TRONG V&Agrave; NGO&Agrave;I NƯỚC</span></strong><strong><span style=\"color:#3300ff\">:</span></strong></span></span></div>\r\n\r\n<div>\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"548\" src=\"/2021_obtvietnam/datafiles/images/1-2006020U025614(1).jpg\" width=\"544\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '', NULL, NULL, '', '', NULL, NULL, 'obt-p060', '9', 40, '1622080322_Untitled.png', NULL, NULL, '', 'datafiles', 1622120237, 0, 8, 2, 8888888, 0, 'OBT - P060', '', NULL, NULL, 'OBT - P060', '', NULL, NULL, 'OBT - P060', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 'OBT - P060', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(81, 1, 5, 'OBT - P6800', '', NULL, NULL, '<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\">TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</span></strong></span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Phương thức mở kh&oacute;a: V&acirc;n tay - Mật m&atilde; - Thẻ từ - Ch&igrave;a cơ</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Dung lượng: 100 v&acirc;n tay, 100 mật m&atilde;, 800 thẻ từ, 2 ch&igrave;a cơ</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chuẩn thẻ: Mifare 1K (Nhiều mẫu m&atilde;)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Tần số: 13.56 MHz</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Pin: Alkaline AA x 4 (Khoảng 12 th&aacute;ng, t&ugrave;y tần suất sử dụng)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Cấu tạo: Inox 304</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Độ d&agrave;y đố cửa: 38mm (d&agrave;y) x 115mm (rộng)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: 367mm (d&agrave;i) x 85mm (rộng) x 73mm (d&agrave;y)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: &iacute;t nhất 12 th&aacute;ng</span></span></div>', '', NULL, NULL, '<div>\r\n<figure class=\"image\"><img alt=\"\" height=\"392\" src=\"/2021_obtvietnam/datafiles/images/SPEC-5.jpg\" width=\"754\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\"></span></strong></span></span>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"423\" src=\"/2021_obtvietnam/datafiles/images/CHUC%20NANG%20AN%20NINH(1).jpg\" width=\"728\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div>\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"428\" src=\"/2021_obtvietnam/datafiles/images/CHUC%20NANG%20MO%20RONG.jpg\" width=\"728\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"></span></span></p>\r\n</div>\r\n\r\n<div>\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align: center;\"><span style=\"font-family:Verdana,Geneva,sans-serif\"></span><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\">CHỨNG NHẬN LI&Ecirc;N QUAN TỪ C&Aacute;C </span></strong><strong><span style=\"color:#3300ff\">HIỆP HỘI TRONG V&Agrave; NGO&Agrave;I NƯỚC</span></strong><strong><span style=\"color:#3300ff\">:</span></strong></span></span></div>\r\n\r\n<div>\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"543\" src=\"/2021_obtvietnam/datafiles/images/1-2006020U025614(1).jpg\" width=\"539\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '', NULL, NULL, '', '', NULL, NULL, 'obt-p6800', '9', 42, '1622080662_Untitled.png', NULL, NULL, '', 'datafiles', 1622120162, 0, 15, 2, 8888888, 0, 'OBT - P6800', '', NULL, NULL, 'OBT - P6800', '', NULL, NULL, 'OBT - P6800', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 'OBT - P6800', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(96, 1, 5, 'OBT - P78', '', NULL, NULL, '<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\">TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</span></strong></span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Phương thức mở kh&oacute;a: V&acirc;n tay - Mật m&atilde; - Thẻ từ - Ch&igrave;a cơ</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Dung lượng: 100 v&acirc;n tay, 100 mật m&atilde;, 800 thẻ từ, 2 ch&igrave;a cơ</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chuẩn thẻ: Mifare 1K (Nhiều mẫu m&atilde;)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Tần số: 13.56 MHz</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Pin: Alkaline AA x 4 (Khoảng 12 th&aacute;ng, t&ugrave;y tần suất sử dụng)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Cấu tạo: Inox 304</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Độ d&agrave;y đố cửa: 38mm (d&agrave;y) x 115mm (rộng)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: 367mm (d&agrave;i) x 85mm (rộng) x 73mm (d&agrave;y)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: &iacute;t nhất 12 th&aacute;ng</span></span></div>', '', NULL, NULL, '<div>\r\n<figure class=\"image\"><img alt=\"\" height=\"392\" src=\"/2021_obtvietnam/datafiles/images/SPEC-5.jpg\" width=\"754\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<div>\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"421\" src=\"/2021_obtvietnam/datafiles/images/CHUC%20NANG%20AN%20NINH(1).jpg\" width=\"724\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"428\" src=\"/2021_obtvietnam/datafiles/images/CHUC%20NANG%20MO%20RONG.jpg\" width=\"728\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"></span></span></p>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<div>\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"></span></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align: center;\"><iframe align=\"middle\" allowfullscreen=\"0\" frameborder=\"0\" height=\"350\" scrolling=\"no\" src=\"https://www.youtube.com/embed/6vQvuVeSxM4\" width=\"500\"></iframe></div>\r\n\r\n<div>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>', '', NULL, NULL, '', '', NULL, NULL, 'apartment-smart-lock-119', '9', 49, '1623230055_P78-WS-3.png', NULL, NULL, '', 'datafiles', 1623062642, 0, 25, 2, 6868686, 0, 'SMART LOCK P???', '', NULL, NULL, 'SMART LOCK P???', '', NULL, NULL, 'SMART LOCK P???', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 'OBT-P078', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0);
INSERT INTO `lh_baiviet` (`id`, `id_user`, `id_parent`, `tenbaiviet_vi`, `tenbaiviet_en`, `tenbaiviet_cn`, `tenbaiviet_jp`, `mota_vi`, `mota_en`, `mota_cn`, `mota_jp`, `noidung_vi`, `noidung_en`, `noidung_cn`, `noidung_jp`, `tags_vi`, `tags_en`, `tags_cn`, `tags_jp`, `seo_name`, `id_parent_muti`, `catasort`, `icon`, `icon_hover`, `dowload`, `dowload_text`, `duongdantin`, `ngaydang`, `capnhat`, `soluotxem`, `step`, `giatien`, `giakm`, `seo_title_vi`, `seo_title_en`, `seo_title_cn`, `seo_title_jp`, `seo_keywords_vi`, `seo_keywords_en`, `seo_keywords_cn`, `seo_keywords_jp`, `seo_description_vi`, `seo_description_en`, `seo_description_cn`, `seo_description_jp`, `opt_km`, `opt`, `opt1`, `opt2`, `opt3`, `opt4`, `opt5`, `top_video`, `p1`, `p2`, `p3`, `link_video`, `num_1`, `num_2`, `num_3`, `num_4`, `showhi`, `tinh_nang`, `thuoc_tinh_1_vi`, `thuoc_tinh_1_en`, `thuoc_tinh_1_cn`, `thuoc_tinh_1_jp`, `thuoc_tinh_2_vi`, `thuoc_tinh_2_en`, `thuoc_tinh_2_cn`, `thuoc_tinh_2_jp`, `thuoc_tinh_3_vi`, `thuoc_tinh_3_en`, `thuoc_tinh_3_cn`, `thuoc_tinh_3_jp`, `google_map`, `is_dongdau`, `time_dongdau`) VALUES
(97, 1, 5, 'OBT - P013', '', NULL, NULL, '<div><span style=\"font-size:14px;\"><strong><span style=\"color:#3300ff;\">TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</span></strong></span></div>\r\n\r\n<div><span style=\"font-size:14px;\">Phương thức mở kh&oacute;a: Mật m&atilde; - Thẻ từ - Ch&igrave;a cơ</span></div>\r\n\r\n<div><span style=\"font-size:14px;\">Dung lượng: 100 mật m&atilde;, 800 thẻ từ</span></div>\r\n\r\n<div><span style=\"font-size:14px;\">Chuẩn thẻ: Mifare 1K (Nhiều mẫu m&atilde;)</span></div>\r\n\r\n<div><span style=\"font-size:14px;\">Tần số: 13.56 MHz</span></div>\r\n\r\n<div><span style=\"font-size:14px;\">Pin: Alkaline AA x 4 (Khoảng 12 th&aacute;ng, t&ugrave;y tần suất sử dụng)</span></div>\r\n\r\n<div><span style=\"font-size:14px;\">Cấu tạo:&nbsp;Inox 304</span></div>\r\n\r\n<div><span style=\"font-size:14px;\">Độ d&agrave;y đố cửa:&nbsp;38mm (d&agrave;y) x 115mm (rộng)</span></div>\r\n\r\n<div><span style=\"font-size:14px;\">K&iacute;ch thước:&nbsp;367mm (d&agrave;i) x 85mm (rộng) x 73mm (d&agrave;y)</span></div>\r\n\r\n<div><span style=\"font-size:14px;\">Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: &iacute;t nhất 12 th&aacute;ng</span></div>', '', NULL, NULL, '<div>\r\n<figure class=\"image\"><img alt=\"\" height=\"484\" src=\"/2021_obtvietnam/datafiles/images/Screenshot%202021-06-15%20203434.jpg\" width=\"963\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div>\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"424\" src=\"/2021_obtvietnam/datafiles/images/CHUC%20NANG%20AN%20NINH(1).jpg\" width=\"729\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"428\" src=\"/2021_obtvietnam/datafiles/images/CHUC%20NANG%20MO%20RONG.jpg\" width=\"728\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<div>\r\n<div style=\"text-align: center;\"><span style=\"font-size:14px;\"><strong><span style=\"color:#3300ff;\">CHỨNG NHẬN LI&Ecirc;N QUAN TỪ C&Aacute;C&nbsp;</span></strong><span style=\"font-size:14px;\"><strong><span style=\"color:#3300ff;\">HIỆP HỘI TRONG V&Agrave; NGO&Agrave;I NƯỚC</span></strong></span><strong><span style=\"color:#3300ff;\">:</span></strong></span></div>\r\n\r\n<div>\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"450\" src=\"/2021_obtvietnam/datafiles/images/1-2006020U025614(2).jpg\" width=\"445\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>', '', NULL, NULL, '', '', NULL, NULL, 'smart-lock-p013', '14', 48, '1623047515_013-O-1.png', NULL, NULL, '', 'datafiles', 1623062706, 0, 23, 2, 8888888, 0, 'SMART LOCK P013', '', NULL, NULL, 'SMART LOCK P013', '', NULL, NULL, 'SMART LOCK P013', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 'OBT-P013', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(98, 1, 5, 'OBT - GX6', '', NULL, NULL, '<div><span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:14px;\"></span></span>\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\"><span class=\"fa fa-star-o\" style=\"color:rgb(0, 0, 0);\"></span>TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</span></strong></span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Phương thức mở kh&oacute;a: V&acirc;n tay - Mật m&atilde; - Thẻ từ - Ch&igrave;a cơ</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Dung lượng: 100 v&acirc;n tay, 100 mật m&atilde;, 800 thẻ từ, 2 ch&igrave;a cơ</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chuẩn thẻ: Mifare 1K (Nhiều mẫu m&atilde;)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Tần số: 13.56 MHz</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Pin: Alkaline AA x 4 (Khoảng 12 th&aacute;ng, t&ugrave;y tần suất sử dụng)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Cấu tạo: Inox 304</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Độ d&agrave;y đố cửa: 38mm (d&agrave;y) x 115mm (rộng)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: 367mm (d&agrave;i) x 85mm (rộng) x 73mm (d&agrave;y)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: &iacute;t nhất 12 th&aacute;ng</span></span></div>\r\n<span style=\"font-family:Verdana,Geneva,sans-serif;\"><span style=\"font-size:14px;\"></span></span></div>', '', NULL, NULL, '<div>\r\n<figure class=\"image\"><img alt=\"\" height=\"392\" src=\"/2021_obtvietnam/datafiles/images/SPEC-5.jpg\" width=\"754\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"365\" src=\"/2021_obtvietnam/datafiles/images/CHUC%20NANG%20AN%20NINH(1).jpg\" width=\"641\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"428\" src=\"/2021_obtvietnam/datafiles/images/CHUC%20NANG%20MO%20RONG.jpg\" width=\"728\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\"></span></p>\r\n</div>\r\n\r\n<div>\r\n<div>\r\n<p style=\"text-align: center;\"><iframe align=\"middle\" allowfullscreen=\"0\" frameborder=\"0\" height=\"350\" scrolling=\"no\" src=\"https://www.youtube.com/embed/FdSVM4Nk4zw\" width=\"500\"></iframe></p>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>', '', NULL, NULL, '', '', NULL, NULL, 'apartment-smart-lock-121', '9', 50, '1623378681_GX6-8.png', NULL, NULL, '', 'datafiles', 1623028537, 0, 54, 2, 28888888, 0, 'SMART LOCK GX6', '', NULL, NULL, 'SMART LOCK GX6', '', NULL, NULL, 'SMART LOCK GX6', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 'OBT-GX6', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(70, 1, 0, 'MUONG THANH HOTEL', '', NULL, NULL, '', '', NULL, NULL, '<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"649\" src=\"/2021_obtvietnam/datafiles/images/4(3).jpg\" width=\"478\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"328\" src=\"/2021_obtvietnam/datafiles/images/5(2).jpg\" width=\"639\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"570\" src=\"/2021_obtvietnam/datafiles/images/3(1).jpg\" width=\"845\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>', '', NULL, NULL, '', '', NULL, NULL, 'he-thong-khach-san-muong-thanh-tai-viet-nam-lao', '', 5, '1621929698_HE-THONG-KS-MUONG-THANH.jpg', NULL, NULL, '', 'datafiles', 1621928134, 0, 7, 3, 0, 0, 'HỆ THỐNG KHÁCH SẠN MƯỜNG THANH TẠI VIỆT NAM – LÀO', '', NULL, NULL, 'HỆ THỐNG KHÁCH SẠN MƯỜNG THANH TẠI VIỆT NAM – LÀO', '', NULL, NULL, 'HỆ THỐNG KHÁCH SẠN MƯỜNG THANH TẠI VIỆT NAM – LÀO', '', NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(103, 1, 0, 'TUYỂN DỤNG - NHÂN VIÊN ADMIN', '', NULL, NULL, '<p>Do đang c&oacute; nhu cầu mở rộng quy m&ocirc;, OBT VN cần tuyển dụng lực lượng nh&acirc;n sự theo th&ocirc;ng tin chi tiết n&ecirc;u dưới:</p>', '', NULL, NULL, '<div><span style=\"color:#3498db\"><strong><span style=\"font-size:14px\">+ M&ocirc; tả c&ocirc;ng việc:</span></strong></span><span style=\"color:#2c3e50\"><span style=\"font-size:14px\"></span></span></div>\r\n\r\n<div><span style=\"color:#2c3e50\"><span style=\"font-size:14px\">- Quản l&yacute; dịch vụ, theo d&otilde;i biến động doanh thu. Gi&aacute;m s&aacute;t chất lượng dịch vụ thường xuy&ecirc;n<br />\r\n- Thiết lập, duy tr&igrave; mối quan hệ với đối t&aacute;c, kh&aacute;ch h&agrave;ng<br />\r\n- Truyền th&ocirc;ng marketing ph&aacute;t triển kinh doanh.<br />\r\n- Nghi&ecirc;n cứu thị trường, đề xuất phương &aacute;n tăng trưởng b&aacute;n h&agrave;ng</span></span></div>\r\n\r\n<div><span style=\"color:#3498db\"><span style=\"font-size:14px\"><strong>+ Mức lương: Thỏa thuận</strong></span></span></div>\r\n\r\n<div><span style=\"color:#3498db\"><span style=\"font-size:14px\"><strong>+ Chế độ kh&aacute;c:</strong></span></span><span style=\"color:#2c3e50\"><span style=\"font-size:14px\"><br />\r\n- Thưởng kinh doanh, thưởng s&aacute;ng kiến, thưởng th&aacute;ng 13, th&acirc;m ni&ecirc;n c&ocirc;ng t&aacute;c, thăng tiến<br />\r\n- Được hưởng c&aacute;c chế độ theo quy đinh của nh&agrave; nước. Bảo hiểm theo quy định<br />\r\n- M&ocirc;i trường l&agrave;m việc ổn định, trẻ trung, s&aacute;ng tạo.<br />\r\n- Đ&agrave;o tạo chuy&ecirc;n m&ocirc;n<br />\r\n- C&oacute; chế độ nghỉ ph&eacute;p đặc biệt<br />\r\n- Du lịch mỗi năm, thưởng c&aacute;c dịp lễ tết<br />\r\n- Phục vụ ăn trưa miễn ph&iacute; tại căng tin</span></span></div>\r\n\r\n<div><span style=\"color:#3498db\"><strong><span style=\"font-size:14px\">+ Kinh nghiệm / Kỹ năng chi tiết:</span></strong></span></div>\r\n\r\n<div><span style=\"color:#2c3e50\"><span style=\"font-size:14px\">- Ứng vi&ecirc;n: Nam/Nữ tuổi từ 20 đến 30;<br />\r\n- Tốt nghiệp c&aacute;c trường Trung Cấp, Cao Đẳng, Đại Học chuy&ecirc;n ng&agrave;nh: Kinh doanh, Quản trị kinh doanh, Thương mại, CNTT .<br />\r\n- Ưu ti&ecirc;n người c&oacute; kinh nghiệm l&agrave;m SALE phần mềm, Dự &aacute;n C&ocirc;ng nghệ th&ocirc;ng tin, ứng dụng di động, thị trường giải tr&iacute;<br />\r\n- Th&aacute;i độ l&agrave;m việc t&iacute;ch cực, tr&aacute;ch nhiệm, ham học hỏi</span></span></div>', '', NULL, NULL, '', '', NULL, NULL, 'tuyen-dung-nhan-vien-admin', '', 2, '1623160768_2-1.jpg', NULL, NULL, '', 'datafiles', 1623160768, 0, 2, 5, 0, 0, 'TUYỂN DỤNG - NHÂN VIÊN ADMIN', '', NULL, NULL, 'TUYỂN DỤNG - NHÂN VIÊN ADMIN', '', NULL, NULL, 'TUYỂN DỤNG - NHÂN VIÊN ADMIN', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(22, 1, 0, 'BOTON HOTEL', 'Obt Vietnam Project', NULL, NULL, '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>', NULL, NULL, '<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"98\" src=\"/2021_obtvietnam/datafiles/images/1(8).jpg\" width=\"774\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"286\" src=\"/2021_obtvietnam/datafiles/images/2(6).jpg\" width=\"841\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"454\" src=\"/2021_obtvietnam/datafiles/images/3(5).jpg\" width=\"914\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<p>The house on the outskirts of Hanoi is divided into 3 main zones, inspired by the traditional three-room house of the northern countryside.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/6_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>On a 560-square-meter plot of land in Thach That, Hanoi, architects Ta Dinh Van, Nguyen Nhu Thanh, Nguyen Hoang Tu (365 design) have designed and constructed a 200-square-meter house, the rest are used as view. Between the three areas of the house are courtyards and gardens.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/7-1535007559_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Following the trend of bringing nature and trees to life, the house is designed with maximum openings, helping people to approach and get close to nature.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/CricketHouse-day-01_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Sharing with Archdaily, the world&#39;s leading architecture website, the group of architects said, after a lot of ideas on paper, this is a project that they spent a lot of time and enthusiasm to complete. health.</p>', NULL, NULL, '', '', NULL, NULL, 'du-an-obt-viet-nam-cp-193611619144476', '', 1, '1621928512_BOTON-HOTEL.jpg', NULL, NULL, '', 'datafiles', 1619163302, 0, 4, 3, 0, 0, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(100, 1, 0, 'TƯ VẤN & THI CÔNG GIẢI PHÁP KIỂM SOÁT AN NINH CHO HỆ THỐNG KHÁCH SẠN, KHU NGHỈ DƯỠNG, CHUNG CƯ, CAO ỐC VĂN PHÒNG, KHU LIÊN/PHỨC HỢP', '', NULL, NULL, '<div><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">&#39;An to&agrave;n tr&ecirc;n nền tảng th&ocirc;ng minh&#39;&nbsp; l&agrave; gi&aacute; trị m&agrave; OBT muốn d&agrave;nh trao cho Qu&yacute; kh&aacute;ch của ch&uacute;ng t&ocirc;i!</span></span><span style=\"font-size:14px;\"></span></div>', '', NULL, NULL, '<div><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">OBT VN l&agrave; một trong những đơn vị h&agrave;ng đầu trong hạng mục Tư vấn - X&acirc;y dựng - Thi c&ocirc;ng c&aacute;c&nbsp;giải ph&aacute;p kiểm so&aacute;t an ninh tr&ecirc;n nền tảng phối&nbsp;hợp c&aacute;c c&ocirc;ng nghệ, thiết bị&nbsp;an ninh từ cấp độ cơ bản&nbsp;đến phức hợp&nbsp;nhằm đồng bộ v&agrave; tối ưu h&oacute;a c&aacute;c hệ thống kiểm so&aacute;t an ninh d&agrave;nh cho hệ thống Kh&aacute;ch sạch, Khu nghỉ dưỡng, Chung cư, Cao ốc Văn ph&ograve;ng, Khu li&ecirc;n/phức hợp.</span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">Triển khai Khảo s&aacute;t - Tư vấn - Thi c&ocirc;ng th&iacute; điểm - Triển khai diện rộng c&aacute;c hạng mục n&ecirc;u tr&ecirc;n cho c&aacute;c Dự &aacute;n trong v&agrave; ngo&agrave;i nước gi&uacute;p Đơn vị ch&uacute;ng t&ocirc;i t&iacute;ch lũy được kh&aacute; nhiều kinh nghiệm.&nbsp;</span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"></span></span>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">&#39;An to&agrave;n tr&ecirc;n nền tảng th&ocirc;ng minh&#39;&nbsp; l&agrave; gi&aacute; trị m&agrave; OBT muốn d&agrave;nh trao cho Qu&yacute; kh&aacute;ch của ch&uacute;ng t&ocirc;i!</span></span></div>\r\n<span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"></span></span></div>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"240\" src=\"/2021_obtvietnam/datafiles/images/Screenshot%202021-06-08%20202627.jpg\" width=\"1048\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div>&nbsp;</div>', '', NULL, NULL, '', '', NULL, NULL, 'tu-van-giai-phap-an-ninh-ra-vao-cho-hotel-resort-apartment-office-building', '', 1, '1623148433_accesscontrol-800x400-1.jpg', NULL, NULL, '', 'datafiles', 1623160327, 0, 13, 4, 0, 0, 'TƯ VẤN GIẢI PHÁP AN NINH RA VÀO CHO HOTEL, RESORT, APARTMENT & OFFICE BUILDING', '', NULL, NULL, 'TƯ VẤN GIẢI PHÁP AN NINH RA VÀO CHO HOTEL, RESORT, APARTMENT & OFFICE BUILDING', '', NULL, NULL, 'TƯ VẤN GIẢI PHÁP AN NINH RA VÀO CHO HOTEL, RESORT, APARTMENT & OFFICE BUILDING', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(24, 1, 0, 'FUSION RESORT', 'Obt Vietnam Project', NULL, NULL, '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>', NULL, NULL, '<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"314\" src=\"/2021_obtvietnam/datafiles/images/2(5).jpg\" width=\"571\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<figure class=\"image\" style=\"float:left\"><img alt=\"\" height=\"242\" src=\"/2021_obtvietnam/datafiles/images/4(6).jpg\" width=\"800\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<figure class=\"image\" style=\"float:right\"><img alt=\"\" height=\"244\" src=\"/2021_obtvietnam/datafiles/images/3(4).jpg\" width=\"800\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>', '<p>The house on the outskirts of Hanoi is divided into 3 main zones, inspired by the traditional three-room house of the northern countryside.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/6_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>On a 560-square-meter plot of land in Thach That, Hanoi, architects Ta Dinh Van, Nguyen Nhu Thanh, Nguyen Hoang Tu (365 design) have designed and constructed a 200-square-meter house, the rest are used as view. Between the three areas of the house are courtyards and gardens.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/7-1535007559_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Following the trend of bringing nature and trees to life, the house is designed with maximum openings, helping people to approach and get close to nature.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/CricketHouse-day-01_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Sharing with Archdaily, the world&#39;s leading architecture website, the group of architects said, after a lot of ideas on paper, this is a project that they spent a lot of time and enthusiasm to complete. health.</p>', NULL, NULL, '', '', NULL, NULL, 'du-an-obt-viet-nam-cp-805871619144476', '', 2, '1621928145_FUSION-RESORT-PHU-QUOC.jpg', NULL, NULL, '', 'datafiles', 1619163310, 0, 7, 3, 0, 0, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(25, 1, 0, 'GOLDEN PEAK RESORT & SPA', 'Obt Vietnam Project', NULL, NULL, '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>', NULL, NULL, '<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"418\" src=\"/2021_obtvietnam/datafiles/images/3(2).jpg\" width=\"629\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"424\" src=\"/2021_obtvietnam/datafiles/images/4(4).jpg\" width=\"600\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p style=\"text-align: center;\"><iframe align=\"middle\" allowfullscreen=\"0\" frameborder=\"0\" height=\"315\" scrolling=\"no\" src=\"https://www.youtube.com/embed/zgAWXubGpZo\" width=\"590\"></iframe></p>', '<p>The house on the outskirts of Hanoi is divided into 3 main zones, inspired by the traditional three-room house of the northern countryside.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/6_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>On a 560-square-meter plot of land in Thach That, Hanoi, architects Ta Dinh Van, Nguyen Nhu Thanh, Nguyen Hoang Tu (365 design) have designed and constructed a 200-square-meter house, the rest are used as view. Between the three areas of the house are courtyards and gardens.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/7-1535007559_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Following the trend of bringing nature and trees to life, the house is designed with maximum openings, helping people to approach and get close to nature.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/CricketHouse-day-01_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Sharing with Archdaily, the world&#39;s leading architecture website, the group of architects said, after a lot of ideas on paper, this is a project that they spent a lot of time and enthusiasm to complete. health.</p>', NULL, NULL, '', '', NULL, NULL, 'du-an-obt-viet-nam-cp-700311619144476', '', 3, '1621927908_GOLDEN-PEAK-RESORT-SPA.jpg', NULL, NULL, '', 'datafiles', 1619163289, 0, 9, 3, 0, 0, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(26, 1, 0, 'LUXURY F.HOME', 'Obt Vietnam Project', NULL, NULL, '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>', NULL, NULL, '<p><span style=\"color:#2c3e50;\"><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The house on the outskirts of Hanoi is divided into 3 main zones, inspired by the traditional three-room house of the northern countryside.</span></span></span></p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"328\" src=\"/2021_obtvietnam/datafiles/images/du-an/6_680x0.jpg\" width=\"492\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p><span style=\"color:#2c3e50;\"><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">On a 560-square-meter plot of land in Thach That, Hanoi, architects Ta Dinh Van, Nguyen Nhu Thanh, Nguyen Hoang Tu (365 design) have designed and constructed a 200-square-meter house, the rest are used as view. Between the three areas of the house are courtyards and gardens.</span></span></span></p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"321\" src=\"/2021_obtvietnam/datafiles/images/du-an/7-1535007559_680x0.jpg\" width=\"482\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p><span style=\"color:#2c3e50;\"><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Following the trend of bringing nature and trees to life, the house is designed with maximum openings, helping people to approach and get close to nature.</span></span></span></p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"321\" src=\"/2021_obtvietnam/datafiles/images/du-an/CricketHouse-day-01_680x0.jpg\" width=\"482\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p><span style=\"color:#2c3e50;\"><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Sharing with Archdaily, the world&#39;s leading architecture website, the group of architects said, after a lot of ideas on paper, this is a project that they spent a lot of time and enthusiasm to complete. health.</span></span></span></p>', '<p>The house on the outskirts of Hanoi is divided into 3 main zones, inspired by the traditional three-room house of the northern countryside.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/6_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>On a 560-square-meter plot of land in Thach That, Hanoi, architects Ta Dinh Van, Nguyen Nhu Thanh, Nguyen Hoang Tu (365 design) have designed and constructed a 200-square-meter house, the rest are used as view. Between the three areas of the house are courtyards and gardens.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/7-1535007559_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Following the trend of bringing nature and trees to life, the house is designed with maximum openings, helping people to approach and get close to nature.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/CricketHouse-day-01_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Sharing with Archdaily, the world&#39;s leading architecture website, the group of architects said, after a lot of ideas on paper, this is a project that they spent a lot of time and enthusiasm to complete. health.</p>', NULL, NULL, '', '', NULL, NULL, 'du-an-obt-viet-nam-cp-255941619144476', '', 0, '1621927355_FHOME.jpg', NULL, NULL, '', 'datafiles', 1619163994, 0, 2, 3, 0, 0, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(27, 1, 0, 'MGALLERY CODOTEL', 'Obt Vietnam Project', NULL, NULL, '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>', NULL, NULL, '<p style=\"text-align: center;\">&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"252\" src=\"/2021_obtvietnam/datafiles/images/2(4).jpg\" width=\"1266\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"228\" src=\"/2021_obtvietnam/datafiles/images/1(6).jpg\" width=\"773\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"246\" src=\"/2021_obtvietnam/datafiles/images/4(2).jpg\" width=\"890\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"472\" src=\"/2021_obtvietnam/datafiles/images/3.jpg\" width=\"721\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p style=\"text-align: center;\"><iframe align=\"middle\" allowfullscreen=\"0\" frameborder=\"0\" height=\"350\" scrolling=\"no\" src=\"https://www.youtube.com/embed/Nr5QNocwa2U\" width=\"650\"></iframe></p>', '<p>The house on the outskirts of Hanoi is divided into 3 main zones, inspired by the traditional three-room house of the northern countryside.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/6_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>On a 560-square-meter plot of land in Thach That, Hanoi, architects Ta Dinh Van, Nguyen Nhu Thanh, Nguyen Hoang Tu (365 design) have designed and constructed a 200-square-meter house, the rest are used as view. Between the three areas of the house are courtyards and gardens.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/7-1535007559_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Following the trend of bringing nature and trees to life, the house is designed with maximum openings, helping people to approach and get close to nature.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/CricketHouse-day-01_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Sharing with Archdaily, the world&#39;s leading architecture website, the group of architects said, after a lot of ideas on paper, this is a project that they spent a lot of time and enthusiasm to complete. health.</p>', NULL, NULL, '', '', NULL, NULL, 'du-an-obt-viet-nam-cp-682991619144476', '', 6, '1621927207_CODOTEL-MGALLERY-SAPA.jpg', NULL, NULL, '', 'datafiles', 1619163278, 0, 7, 3, 0, 0, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 1, 1621909407),
(28, 1, 0, 'SHERATON RESORT', 'Obt Vietnam Project', NULL, NULL, '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>', NULL, NULL, '<div style=\"margin: 0px 0px 17px; text-align: justify;\"><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"box-sizing:border-box\"><span style=\"color:#2c2f34\"><span style=\"background-color:#ffffff\">Khu nghỉ dưỡng Sheraton Grand Danang Resort tọa lạc tr&ecirc;n b&atilde;i biển Non Nước c&aacute;t trắng xinh đẹp, l&agrave; khu nghỉ dưỡng đầu ti&ecirc;n ở khu vực Đ&ocirc;ng Nam &Aacute; đạt chuẩn thương hiệu Sheraton Grand, gia nhập bộ sưu tập Sheraton Grand cao cấp gồm 37 kh&aacute;ch sạn v&agrave; khu nghỉ dưỡng kh&aacute;c tr&ecirc;n to&agrave;n thế giới.</span></span></span></span></span></div>\r\n\r\n<p style=\"margin:0px 0px 17px; text-align:justify\"><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"box-sizing:border-box\"><span style=\"color:#2c2f34\"><span style=\"background-color:#ffffff\">Tọa vị ở những địa điểm du lịch thu h&uacute;t nhất thế giới, c&aacute;c kh&aacute;ch sạn Sheraton Grand khẳng định đẳng cấp qua những trường ph&aacute;i kiến tr&uacute;c sang trọng, c&aacute;c nh&agrave; h&agrave;ng ẩm thực độc đ&aacute;o v&agrave; dịch vụ cao cấp, mang đến cho du kh&aacute;ch những trải nghiệm thượng hạng.</span></span></span></span></span></p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"400\" src=\"https://danangfantasticity.com/wp-content/uploads/2019/12/Pool-Sheraton-grand-danang-resort-35-truong-sa-ngu-hanh-son-danang-fantasticity-com.jpg\" width=\"600\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div class=\"gallery galleryid-53194 gallery-columns-2 gallery-size-full\" id=\"gallery-1\" style=\"text-align:center; margin:-5px -5px 15px\">\r\n<p style=\"text-align: left;\">Sở hữu vị tr&iacute; đắc địa nằm tr&ecirc;n b&atilde;i biển Non Nước, khu nghỉ dưỡng Sheraton Grand Đ&agrave; Nẵng c&oacute; đến 258 ph&ograve;ng v&agrave; suites nh&igrave;n ra khung cảnh hồ bơi v&ocirc; cực, b&aacute;n đảo Sơn Tr&agrave; hay biển xanh lấp l&aacute;nh s&oacute;ng vỗ. C&agrave;ng kh&ocirc;ng thể kh&ocirc;ng nhắc đến s&aacute;u nh&agrave; h&agrave;ng v&agrave; quầy bar mang đến sự phong ph&uacute; về lựa chọn ẩm thực quốc tế lẫn địa phương v&agrave; đầy đủ tiện nghi hay hồ bơi v&ocirc; cực 250m.</p>\r\n\r\n<p style=\"text-align: left;\">Chỉ c&aacute;ch s&acirc;n bay quốc tế Đ&agrave; Nẵng 20 ph&uacute;t đi xe, Sheraton Grand Danang Resort kh&ocirc;ng chỉ nằm ngay gần bờ biển lừng danh cũng như c&aacute;c địa điểm du lịch v&agrave; văn h&oacute;a nối tiếng kh&aacute;c của th&agrave;nh phố Đ&agrave; Nẵng, m&agrave; c&ograve;n nằm gần những Di sản Văn h&oacute;a Thế giới được UNESCO c&ocirc;ng nhận như Phố cổ Hội An hay Cố đ&ocirc; Huế. Khu nghỉ dưỡng b&ecirc;n bờ b&atilde;i biển Non Nước bao gồm hai khu kh&aacute;ch sạn cao 6 tầng: khu I gồm 130 ph&ograve;ng nghỉ v&agrave; ph&ograve;ng suite, bao gồm căn ph&ograve;ng Tổng Thống sang trọng, trang nh&atilde;; v&agrave; khu II bao gồm 128 ph&ograve;ng nghỉ v&agrave; ph&ograve;ng suite, với ph&ograve;ng Tổng Thống đẳng cấp c&oacute; lối đi VIP, thang m&aacute;y ri&ecirc;ng v&agrave; b&atilde;i đ&aacute;p/ cất c&aacute;nh m&aacute;y bay trực thăng.</p>\r\n\r\n<p style=\"text-align: left;\">&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"400\" src=\"https://danangfantasticity.com/wp-content/uploads/2019/12/Deluxe-king-bedroom-seaview-Sheraton-grand-danang-resort-35-truong-sa-ngu-hanh-son-danang-fantasticity-com.jpg\" width=\"600\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div style=\"text-align: left;\">&nbsp;</div>\r\n\r\n<div style=\"text-align: left;\"><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Tất cả ph&ograve;ng nghỉ đều c&oacute; ban c&ocirc;ng ri&ecirc;ng, được trang tr&iacute; theo phong c&aacute;ch cổ điển qu&yacute; ph&aacute;i pha lẫn với v&agrave;i đường n&eacute;t đương đại, tạo ra một kh&ocirc;ng gian trang trọng ấm c&uacute;ng, v&agrave; độc đ&aacute;o. C&aacute;c ph&ograve;ng ngủ được thiết kế hướng về ph&iacute;a vịnh biển, tạo cảm gi&aacute;c gần gũi với thi&ecirc;n nhi&ecirc;n, nhằm đem lại khung cảnh đẹp nhất. Nội thất được b&agrave;y biện tỉ mỉ, mang đậm trường ph&aacute;i sang trọng, c&ugrave;ng những n&eacute;t chấm ph&aacute; nội thất sinh động của nhiều m&agrave;u sắc v&agrave; khung cảnh qua khung cửa rộng, l&agrave;m nổi bật sự sinh động v&agrave; đẹp đẽ của thi&ecirc;n nhi&ecirc;n bao quanh khu nghỉ dưỡng.</span></span></div>\r\n\r\n<div style=\"text-align: left;\">&nbsp;</div>\r\n\r\n<div style=\"text-align: left;\">\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"400\" src=\"https://danangfantasticity.com/wp-content/uploads/2019/12/khu-nghi-duong-sheraton-grand-da-nang-chao-don-quy-khach-den-voi-nhung-ki-nghi-mua-le-hoi-tran-ngap-niem-vui-03.jpg\" width=\"600\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div style=\"text-align: left;\">&nbsp;</div>\r\n</div>', '<p>The house on the outskirts of Hanoi is divided into 3 main zones, inspired by the traditional three-room house of the northern countryside.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/6_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>On a 560-square-meter plot of land in Thach That, Hanoi, architects Ta Dinh Van, Nguyen Nhu Thanh, Nguyen Hoang Tu (365 design) have designed and constructed a 200-square-meter house, the rest are used as view. Between the three areas of the house are courtyards and gardens.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/7-1535007559_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Following the trend of bringing nature and trees to life, the house is designed with maximum openings, helping people to approach and get close to nature.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/CricketHouse-day-01_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Sharing with Archdaily, the world&#39;s leading architecture website, the group of architects said, after a lot of ideas on paper, this is a project that they spent a lot of time and enthusiasm to complete. health.</p>', NULL, NULL, '', '', NULL, NULL, 'du-an-obt-viet-nam-cp-956321619144476', '', 7, '1621927278_RESORT-SHERATON-CHU-LAI.jpg', NULL, NULL, '', 'datafiles', 1619163252, 0, 9, 3, 0, 0, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 1, 1621909282),
(29, 1, 0, 'SALINDA PREMIUM RESORT', 'Obt Vietnam Project', NULL, NULL, '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>', NULL, NULL, '<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"348\" src=\"/2021_obtvietnam/datafiles/images/2(3).jpg\" width=\"1500\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"547\" src=\"/2021_obtvietnam/datafiles/images/4.jpg\" width=\"820\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"863\" src=\"/2021_obtvietnam/datafiles/images/6.jpg\" width=\"1500\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>', '<p>The house on the outskirts of Hanoi is divided into 3 main zones, inspired by the traditional three-room house of the northern countryside.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/6_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>On a 560-square-meter plot of land in Thach That, Hanoi, architects Ta Dinh Van, Nguyen Nhu Thanh, Nguyen Hoang Tu (365 design) have designed and constructed a 200-square-meter house, the rest are used as view. Between the three areas of the house are courtyards and gardens.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/7-1535007559_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Following the trend of bringing nature and trees to life, the house is designed with maximum openings, helping people to approach and get close to nature.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/CricketHouse-day-01_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Sharing with Archdaily, the world&#39;s leading architecture website, the group of architects said, after a lot of ideas on paper, this is a project that they spent a lot of time and enthusiasm to complete. health.</p>', NULL, NULL, '', '', NULL, NULL, 'du-an-obt-viet-nam-cp-343301619144476', '', 8, '1621927266_SALINDA-PREMIUM-RESORT-AND-SPA.jpg', NULL, NULL, '', 'datafiles', 1619163244, 0, 11, 3, 0, 0, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 1, 1621909138),
(30, 1, 0, 'EASTIN GRAND HOTEL', 'Obt Vietnam Project', NULL, NULL, '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>', NULL, NULL, '<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"322\" src=\"/2021_obtvietnam/datafiles/images/5(1).jpg\" width=\"965\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"408\" src=\"https://cdn.galaxy.tf/thumb/sizeW1920/uploads/2s/cms_image/001/563/870/1563870605_5d36c58df008b-thumb.jpg\" width=\"671\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"248\" src=\"/2021_obtvietnam/datafiles/images/1(2).jpg\" width=\"926\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"454\" src=\"/2021_obtvietnam/datafiles/images/1563870607_5d36c58f8b434-thumb.jpg\" width=\"681\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"257\" src=\"/2021_obtvietnam/datafiles/images/2(2).jpg\" width=\"953\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>', '<p>The house on the outskirts of Hanoi is divided into 3 main zones, inspired by the traditional three-room house of the northern countryside.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/6_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>On a 560-square-meter plot of land in Thach That, Hanoi, architects Ta Dinh Van, Nguyen Nhu Thanh, Nguyen Hoang Tu (365 design) have designed and constructed a 200-square-meter house, the rest are used as view. Between the three areas of the house are courtyards and gardens.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/7-1535007559_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Following the trend of bringing nature and trees to life, the house is designed with maximum openings, helping people to approach and get close to nature.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/CricketHouse-day-01_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Sharing with Archdaily, the world&#39;s leading architecture website, the group of architects said, after a lot of ideas on paper, this is a project that they spent a lot of time and enthusiasm to complete. health.</p>', NULL, NULL, '', '', NULL, NULL, 'du-an-obt-viet-nam-cp-503721619144476', '', 9, '1621927252_EASTIN-GRAND-HOTEL.jpg', NULL, NULL, '', 'datafiles', 1619163232, 0, 11, 3, 0, 0, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 1, 1621908879);
INSERT INTO `lh_baiviet` (`id`, `id_user`, `id_parent`, `tenbaiviet_vi`, `tenbaiviet_en`, `tenbaiviet_cn`, `tenbaiviet_jp`, `mota_vi`, `mota_en`, `mota_cn`, `mota_jp`, `noidung_vi`, `noidung_en`, `noidung_cn`, `noidung_jp`, `tags_vi`, `tags_en`, `tags_cn`, `tags_jp`, `seo_name`, `id_parent_muti`, `catasort`, `icon`, `icon_hover`, `dowload`, `dowload_text`, `duongdantin`, `ngaydang`, `capnhat`, `soluotxem`, `step`, `giatien`, `giakm`, `seo_title_vi`, `seo_title_en`, `seo_title_cn`, `seo_title_jp`, `seo_keywords_vi`, `seo_keywords_en`, `seo_keywords_cn`, `seo_keywords_jp`, `seo_description_vi`, `seo_description_en`, `seo_description_cn`, `seo_description_jp`, `opt_km`, `opt`, `opt1`, `opt2`, `opt3`, `opt4`, `opt5`, `top_video`, `p1`, `p2`, `p3`, `link_video`, `num_1`, `num_2`, `num_3`, `num_4`, `showhi`, `tinh_nang`, `thuoc_tinh_1_vi`, `thuoc_tinh_1_en`, `thuoc_tinh_1_cn`, `thuoc_tinh_1_jp`, `thuoc_tinh_2_vi`, `thuoc_tinh_2_en`, `thuoc_tinh_2_cn`, `thuoc_tinh_2_jp`, `thuoc_tinh_3_vi`, `thuoc_tinh_3_en`, `thuoc_tinh_3_cn`, `thuoc_tinh_3_jp`, `google_map`, `is_dongdau`, `time_dongdau`) VALUES
(31, 1, 0, 'THE ARENA', 'Obt Vietnam Project', NULL, NULL, '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>', NULL, NULL, '<p><span style=\"color:#2c3e50;\"><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The house on the outskirts of Hanoi is divided into 3 main zones, inspired by the traditional three-room house of the northern countryside.</span></span></span></p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"329\" src=\"/2021_obtvietnam/datafiles/images/du-an/6_680x0.jpg\" width=\"494\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p><span style=\"color:#2c3e50;\"><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">On a 560-square-meter plot of land in Thach That, Hanoi, architects Ta Dinh Van, Nguyen Nhu Thanh, Nguyen Hoang Tu (365 design) have designed and constructed a 200-square-meter house, the rest are used as view. Between the three areas of the house are courtyards and gardens.</span></span></span></p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"328\" src=\"/2021_obtvietnam/datafiles/images/du-an/7-1535007559_680x0.jpg\" width=\"492\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p><span style=\"color:#2c3e50;\"><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Following the trend of bringing nature and trees to life, the house is designed with maximum openings, helping people to approach and get close to nature.</span></span></span></p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"332\" src=\"/2021_obtvietnam/datafiles/images/du-an/CricketHouse-day-01_680x0.jpg\" width=\"498\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p><span style=\"color:#2c3e50;\"><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Sharing with Archdaily, the world&#39;s leading architecture website, the group of architects said, after a lot of ideas on paper, this is a project that they spent a lot of time and enthusiasm to complete. health.</span></span></span></p>', '<p>The house on the outskirts of Hanoi is divided into 3 main zones, inspired by the traditional three-room house of the northern countryside.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/6_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>On a 560-square-meter plot of land in Thach That, Hanoi, architects Ta Dinh Van, Nguyen Nhu Thanh, Nguyen Hoang Tu (365 design) have designed and constructed a 200-square-meter house, the rest are used as view. Between the three areas of the house are courtyards and gardens.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/7-1535007559_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Following the trend of bringing nature and trees to life, the house is designed with maximum openings, helping people to approach and get close to nature.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/CricketHouse-day-01_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Sharing with Archdaily, the world&#39;s leading architecture website, the group of architects said, after a lot of ideas on paper, this is a project that they spent a lot of time and enthusiasm to complete. health.</p>', NULL, NULL, '', '', NULL, NULL, 'du-an-obt-viet-nam-cp-119661619144476', '', 10, '1621927236_ARENA.jpg', NULL, NULL, '', 'datafiles', 1619163225, 0, 14, 3, 0, 0, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 'Dự án Obt Việt Nam', 'Obt Vietnam Project', NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 0, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 1, 1621854175),
(99, 1, 0, 'IVORY - HOA BINH', '', NULL, NULL, '', '', NULL, NULL, '<p><span style=\"color:#2c3e50\"><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"></span></span></span></p>\r\n\r\n<div data-css=\"tve-u-17236631cb7\" style=\"text-align: center;\"><span style=\"font-size:24px;\"><span style=\"color:#c0392b;\"><strong>IVORY VILLAS &amp; RESORT</strong></span></span></div>\r\n\r\n<div data-css=\"tve-u-17236631cb7\" style=\"text-align: center;\"><span style=\"font-size:24px;\"><span style=\"color:#2ecc71;\"><strong>KHU NGHỈ DƯỠNG SINH TH&Aacute;I KIỂU MẪU BẬC NHẤT H&Ograve;A B&Igrave;NH</strong></span></span></div>\r\n\r\n<p data-css=\"tve-u-17228f059ed\"><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Giữa m&agrave;u xanh bạt ng&agrave;n của n&uacute;i rừng trung du H&ograve;a B&igrave;nh đang h&igrave;nh th&agrave;nh một cộng đồng nghỉ dưỡng thượng lưu mang t&ecirc;n Ivory Villas &amp; Resort. Được quy hoạch tr&ecirc;n diện t&iacute;ch 66ha, Ivory Villas &amp; Resort gồm 4 ph&acirc;n khu ch&iacute;nh, mỗi ph&acirc;n khu l&agrave; 1 resort ho&agrave;n chỉnh với những n&eacute;t ri&ecirc;ng v&agrave; được li&ecirc;n kết trong một tổng thể tạo n&ecirc;n một chuỗi những tiện nghi đẳng cấp.</span></span></p>\r\n\r\n<p data-css=\"tve-u-17228f059ed\" style=\"text-align: center;\"><iframe align=\"middle\" allowfullscreen=\"0\" frameborder=\"0\" height=\"350\" scrolling=\"no\" src=\"https://www.youtube.com/embed/XTBQ6IC-CGQ\" width=\"500\"></iframe></p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"385\" src=\"/2021_obtvietnam/datafiles/images/Screenshot%202021-06-08%20131127.jpg\" width=\"995\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>', '', NULL, NULL, '', '', NULL, NULL, 'ivory-hoa-binh', '', 10, '1623068222_IVORY-HOA-BINH.jpg', NULL, NULL, '', 'datafiles', 1623051209, 0, 9, 3, 0, 0, 'IVORY - HOA BINH', '', NULL, NULL, 'IVORY - HOA BINH', '', NULL, NULL, 'IVORY - HOA BINH', '', NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(115, 1, 0, '.', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 'smart-lock', '', 37, '1623459703_BLANK.png', NULL, NULL, '', 'datafiles', 1623459846, 0, 1, 2, 0, 0, 'SMART LOCK', '', NULL, NULL, 'SMART LOCK', '', NULL, NULL, 'SMART LOCK', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(116, 1, 0, '.', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 'smart-lock-141', '', 36, '1623459723_BLANK.png', NULL, NULL, '', 'datafiles', 1623459854, 0, 1, 2, 0, 0, 'SMART LOCK', '', NULL, NULL, 'SMART LOCK', '', NULL, NULL, 'SMART LOCK', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(117, 1, 7, 'AUTO GATE 3', '', NULL, NULL, '<p><strong><span style=\"font-size:18px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#3300ff\">TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</span></span><span style=\"color:#3300ff\"><span style=\"background-color:#ffff99\"></span></span></span></span></strong></p>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: </span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều cao: 1200 - 1600 mm</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều rộng: Theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều rộng khung 500 mm; Rộng phủ b&igrave; 640 mm</span></span></div>', '', NULL, NULL, '<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: </span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều cao: 1200 - 1600 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều rộng: Theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều rộng khung 500 mm; Rộng phủ b&igrave; 640 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Khung ch&iacute;nh Inox hộp 40&times;40 (D&agrave;y 1 mm); Khoảng c&aacute;ch giữa hai khung l&agrave; 400 &plusmn; 20 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Li&ecirc;n kết khung ch&iacute;nh l&agrave; c&aacute;c nan ch&eacute;o Inox hộp 25 x 25 (D&agrave;y 0,8 mm)</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> B&aacute;nh xe bằng nhựa đặc chủng c&oacute; đ&uacute;c v&ograve;ng bi ở trong</span><span style=\"font-size:14px\"></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Ray dẫn hướng bằng sắt đặc 20&times;20 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Nguồn điện: Động cơ 370W 1 pha</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Phụ kiện đi k&egrave;m: Điều khiển b&agrave;n x 1; Điều khiển từ xa x 2.</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chất liệu: Inox 304</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Bảo h&agrave;nh 12 th&aacute;ng</span></div>', '', NULL, NULL, '', '', NULL, NULL, 'cong-tu-dong-142', '13', 33, '1623460288_TEST-2.jpg', NULL, NULL, '', 'datafiles', 1623477635, 0, 3, 2, 0, 0, 'CONG TU DONG', '', NULL, NULL, 'CONG TU DONG', '', NULL, NULL, 'CONG TU DONG', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(118, 1, 7, 'AUTO GATE 6', '', NULL, NULL, '<p><strong><span style=\"font-size:18px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#3300ff\">TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</span></span><span style=\"color:#3300ff\"><span style=\"background-color:#ffff99\"></span></span></span></span></strong></p>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: </span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều cao: 1200 - 1600 mm</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều rộng: Theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều rộng khung 500 mm; Rộng phủ b&igrave; 640 mm</span></span></div>', '', NULL, NULL, '<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: </span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều cao: 1200 - 1600 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều rộng: Theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều rộng khung 500 mm; Rộng phủ b&igrave; 640 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Khung ch&iacute;nh Inox hộp 40&times;40 (D&agrave;y 1 mm); Khoảng c&aacute;ch giữa hai khung l&agrave; 400 &plusmn; 20 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Li&ecirc;n kết khung ch&iacute;nh l&agrave; c&aacute;c nan ch&eacute;o Inox hộp 25 x 25 (D&agrave;y 0,8 mm)</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> B&aacute;nh xe bằng nhựa đặc chủng c&oacute; đ&uacute;c v&ograve;ng bi ở trong</span><span style=\"font-size:14px\"></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Ray dẫn hướng bằng sắt đặc 20&times;20 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Nguồn điện: Động cơ 370W 1 pha</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Phụ kiện đi k&egrave;m: Điều khiển b&agrave;n x 1; Điều khiển từ xa x 2.</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chất liệu: Inox 304</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Bảo h&agrave;nh 12 th&aacute;ng</span></div>', '', NULL, NULL, '', '', NULL, NULL, 'cong-tu-dong-143', '13', 30, '1623460844_TEST-4.png', NULL, NULL, '', 'datafiles', 1623477671, 0, 3, 2, 0, 0, 'CONG TU DONG', '', NULL, NULL, 'CONG TU DONG', '', NULL, NULL, 'CONG TU DONG', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(119, 1, 13, 'AUTO GATE 9', '', NULL, NULL, '<p><strong><span style=\"font-size:18px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#3300ff\">TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</span></span><span style=\"color:#3300ff\"><span style=\"background-color:#ffff99\"></span></span></span></span></strong></p>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: </span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều cao: 1200 - 1600 mm</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều rộng: Theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều rộng khung 500 mm; Rộng phủ b&igrave; 640 mm</span></span></div>', '', NULL, NULL, '<p><strong><span style=\"font-size:18px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#3300ff\"></span></span></span></span></strong></p>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: </span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều cao: 1200 - 1600 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều rộng: Theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều rộng khung 500 mm; Rộng phủ b&igrave; 640 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Khung ch&iacute;nh Inox hộp 40&times;40 (D&agrave;y 1 mm); Khoảng c&aacute;ch giữa hai khung l&agrave; 400 &plusmn; 20 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Li&ecirc;n kết khung ch&iacute;nh l&agrave; c&aacute;c nan ch&eacute;o Inox hộp 25 x 25 (D&agrave;y 0,8 mm)</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> B&aacute;nh xe bằng nhựa đặc chủng c&oacute; đ&uacute;c v&ograve;ng bi ở trong</span><span style=\"font-size:14px\"></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Ray dẫn hướng bằng sắt đặc 20&times;20 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Nguồn điện: Động cơ 370W 1 pha</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Phụ kiện đi k&egrave;m: Điều khiển b&agrave;n x 1; Điều khiển từ xa x 2.</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chất liệu: Inox 304</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Bảo h&agrave;nh 12 th&aacute;ng</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"></span></span></div>', '', NULL, NULL, '', '', NULL, NULL, 'cong-tu-dong-144', '13', 28, '1623460942_TEST-6.png', NULL, NULL, '', 'datafiles', 1623477701, 0, 3, 2, 0, 0, 'CONG TU DONG', '', NULL, NULL, 'CONG TU DONG', '', NULL, NULL, 'CONG TU DONG', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(120, 1, 7, 'AUTO GATE 12', '', NULL, NULL, '<p><strong><span style=\"font-size:18px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#3300ff\">TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</span></span><span style=\"color:#3300ff\"><span style=\"background-color:#ffff99\"></span></span></span></span></strong></p>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: </span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều cao: 1200 - 1600 mm</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều rộng: Theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều rộng khung 500 mm; Rộng phủ b&igrave; 640 mm</span></span></div>', '', NULL, NULL, '<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: </span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều cao: 1200 - 1600 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều rộng: Theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều rộng khung 500 mm; Rộng phủ b&igrave; 640 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Khung ch&iacute;nh Inox hộp 40&times;40 (D&agrave;y 1 mm); Khoảng c&aacute;ch giữa hai khung l&agrave; 400 &plusmn; 20 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Li&ecirc;n kết khung ch&iacute;nh l&agrave; c&aacute;c nan ch&eacute;o Inox hộp 25 x 25 (D&agrave;y 0,8 mm)</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> B&aacute;nh xe bằng nhựa đặc chủng c&oacute; đ&uacute;c v&ograve;ng bi ở trong</span><span style=\"font-size:14px\"></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Ray dẫn hướng bằng sắt đặc 20&times;20 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Nguồn điện: Động cơ 370W 1 pha</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Phụ kiện đi k&egrave;m: Điều khiển b&agrave;n x 1; Điều khiển từ xa x 2.</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chất liệu: Inox 304</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Bảo h&agrave;nh 12 th&aacute;ng</span></div>', '', NULL, NULL, '', '', NULL, NULL, 'cong-tu-dong-145', '13', 26, '1623461042_TEST-8.png', NULL, NULL, '', 'datafiles', 1623477730, 0, 5, 2, 0, 0, 'CONG TU DONG', '', NULL, NULL, 'CONG TU DONG', '', NULL, NULL, 'CONG TU DONG', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(113, 1, 7, 'AUTO GATE 10', '', NULL, NULL, '<p><strong><span style=\"font-size:18px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"color:#3300ff\"><span style=\"background-color:#ffff99\"></span></span><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#3300ff\">TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</span></span></span><span style=\"color:#3300ff\"><span style=\"background-color:#ffff99\"></span></span></span></span></strong></p>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span>&nbsp;K&iacute;ch thước: </span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">. Chiều cao: 1200 - 1600 mm</span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">. Chiều rộng: Theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">. Chiều rộng khung 500 mm; Rộng phủ b&igrave; 640 mm</span></span></div>', '', NULL, NULL, '<div><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span>&nbsp;K&iacute;ch thước: </span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">. Chiều cao: 1200 - 1600 mm</span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">. Chiều rộng: Theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">. Chiều rộng khung 500 mm; Rộng phủ b&igrave; 640 mm</span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span></span></span>&nbsp;Khung ch&iacute;nh Inox hộp 40&times;40&nbsp;(D&agrave;y 1 mm); Khoảng c&aacute;ch giữa hai khung l&agrave; 400&nbsp;&plusmn;&nbsp;20 mm</span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span></span></span>&nbsp;Li&ecirc;n kết khung ch&iacute;nh l&agrave; c&aacute;c nan ch&eacute;o Inox hộp 25 x 25 (D&agrave;y 0,8 mm)</span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span></span></span>&nbsp;B&aacute;nh xe bằng nhựa đặc chủng c&oacute; đ&uacute;c v&ograve;ng bi ở trong</span></span><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"></span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span></span></span>&nbsp;Ray dẫn hướng bằng sắt đặc 20&times;20 mm</span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span></span></span>&nbsp;Nguồn điện: Động cơ 370W 1 pha</span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span></span></span></span></span>&nbsp;Phụ kiện đi k&egrave;m: Điều khiển b&agrave;n x 1;&nbsp;Điều khiển từ xa <span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">x 2</span></span>.</span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span></span></span>&nbsp;Chất liệu: Inox 304</span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span></span></span></span></span>&nbsp;Bảo h&agrave;nh 12 th&aacute;ng</span></span></div>', '', NULL, NULL, '', '', NULL, NULL, 'auto-door-10', '13', 28, '1623459466_TEST-8.png', NULL, NULL, '', 'datafiles', 1623477710, 0, 5, 2, 0, 0, 'CONG TU DONG', '', NULL, NULL, 'CONG TU DONG', '', NULL, NULL, 'CONG TU DONG', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(114, 1, 7, 'AUTO GATE 11', '', NULL, NULL, '<p><strong><span style=\"font-size:18px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#3300ff\">TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</span></span><span style=\"color:#3300ff\"><span style=\"background-color:#ffff99\"></span></span></span></span></strong></p>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: </span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều cao: 1200 - 1600 mm</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều rộng: Theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều rộng khung 500 mm; Rộng phủ b&igrave; 640 mm</span></span></div>', '', NULL, NULL, '<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: </span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều cao: 1200 - 1600 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều rộng: Theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều rộng khung 500 mm; Rộng phủ b&igrave; 640 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Khung ch&iacute;nh Inox hộp 40&times;40 (D&agrave;y 1 mm); Khoảng c&aacute;ch giữa hai khung l&agrave; 400 &plusmn; 20 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Li&ecirc;n kết khung ch&iacute;nh l&agrave; c&aacute;c nan ch&eacute;o Inox hộp 25 x 25 (D&agrave;y 0,8 mm)</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> B&aacute;nh xe bằng nhựa đặc chủng c&oacute; đ&uacute;c v&ograve;ng bi ở trong</span><span style=\"font-size:14px\"></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Ray dẫn hướng bằng sắt đặc 20&times;20 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Nguồn điện: Động cơ 370W 1 pha</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Phụ kiện đi k&egrave;m: Điều khiển b&agrave;n x 1; Điều khiển từ xa x 2.</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chất liệu: Inox 304</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Bảo h&agrave;nh 12 th&aacute;ng</span></div>', '', NULL, NULL, '', '', NULL, NULL, 'cong-tu-dong-139', '13', 27, '1623459564_TEST-9.png', NULL, NULL, '', 'datafiles', 1623477720, 0, 1, 2, 0, 0, 'CONG TU DONG', '', NULL, NULL, 'CONG TU DONG', '', NULL, NULL, 'CONG TU DONG', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(108, 1, 7, 'AUTO GATE 7', '', NULL, NULL, '<p><strong><span style=\"font-size:18px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#3300ff\">TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</span></span><span style=\"color:#3300ff\"><span style=\"background-color:#ffff99\"></span></span></span></span></strong></p>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: </span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều cao: 1200 - 1600 mm</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều rộng: Theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều rộng khung 500 mm; Rộng phủ b&igrave; 640 mm</span></span></div>', '', NULL, NULL, '<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: </span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều cao: 1200 - 1600 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều rộng: Theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều rộng khung 500 mm; Rộng phủ b&igrave; 640 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Khung ch&iacute;nh Inox hộp 40&times;40 (D&agrave;y 1 mm); Khoảng c&aacute;ch giữa hai khung l&agrave; 400 &plusmn; 20 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Li&ecirc;n kết khung ch&iacute;nh l&agrave; c&aacute;c nan ch&eacute;o Inox hộp 25 x 25 (D&agrave;y 0,8 mm)</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> B&aacute;nh xe bằng nhựa đặc chủng c&oacute; đ&uacute;c v&ograve;ng bi ở trong</span><span style=\"font-size:14px\"></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Ray dẫn hướng bằng sắt đặc 20&times;20 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Nguồn điện: Động cơ 370W 1 pha</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Phụ kiện đi k&egrave;m: Điều khiển b&agrave;n x 1; Điều khiển từ xa x 2.</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chất liệu: Inox 304</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Bảo h&agrave;nh 12 th&aacute;ng</span></div>', '', NULL, NULL, '', '', NULL, NULL, 'cong-tu-dong-3', '13', 30, '1623456536_TEST-6.png', NULL, NULL, '', 'datafiles', 1623391281, 0, 1, 2, 0, 0, 'CONG TU DONG 3', '', NULL, NULL, 'CONG TU DONG 3', '', NULL, NULL, 'CONG TU DONG 3', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(110, 1, 7, 'AUTO GATE 1', '', NULL, NULL, '<p><strong><span style=\"font-size:18px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#3300ff\">TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</span></span><span style=\"color:#3300ff\"><span style=\"background-color:#ffff99\"></span></span></span></span></strong></p>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: </span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều cao: 1200 - 1600 mm</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều rộng: Theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều rộng khung 500 mm; Rộng phủ b&igrave; 640 mm</span></span></div>', '', NULL, NULL, '<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: </span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều cao: 1200 - 1600 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều rộng: Theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều rộng khung 500 mm; Rộng phủ b&igrave; 640 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Khung ch&iacute;nh Inox hộp 40&times;40 (D&agrave;y 1 mm); Khoảng c&aacute;ch giữa hai khung l&agrave; 400 &plusmn; 20 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Li&ecirc;n kết khung ch&iacute;nh l&agrave; c&aacute;c nan ch&eacute;o Inox hộp 25 x 25 (D&agrave;y 0,8 mm)</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> B&aacute;nh xe bằng nhựa đặc chủng c&oacute; đ&uacute;c v&ograve;ng bi ở trong</span><span style=\"font-size:14px\"></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Ray dẫn hướng bằng sắt đặc 20&times;20 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Nguồn điện: Động cơ 370W 1 pha</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Phụ kiện đi k&egrave;m: Điều khiển b&agrave;n x 1; Điều khiển từ xa x 2.</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chất liệu: Inox 304</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Bảo h&agrave;nh 12 th&aacute;ng</span></div>', '', NULL, NULL, '', '', NULL, NULL, 'cong-tu-dong-2', '13', 35, '1623455492_CTD1-TEST3.png', NULL, NULL, '', 'datafiles', 1623391203, 0, 5, 2, 0, 0, 'CONG TU DONG 2', '', NULL, NULL, 'CONG TU DONG 2', '', NULL, NULL, 'CONG TU DONG 2', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(111, 1, 7, 'AUTO GATE 5', '', NULL, NULL, '<p><strong><span style=\"font-size:18px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#3300ff\">TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</span></span><span style=\"color:#3300ff\"><span style=\"background-color:#ffff99\"></span></span></span></span></strong></p>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: </span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều cao: 1200 - 1600 mm</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều rộng: Theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều rộng khung 500 mm; Rộng phủ b&igrave; 640 mm</span></span></div>', '', NULL, NULL, '<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: </span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều cao: 1200 - 1600 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều rộng: Theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều rộng khung 500 mm; Rộng phủ b&igrave; 640 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Khung ch&iacute;nh Inox hộp 40&times;40 (D&agrave;y 1 mm); Khoảng c&aacute;ch giữa hai khung l&agrave; 400 &plusmn; 20 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Li&ecirc;n kết khung ch&iacute;nh l&agrave; c&aacute;c nan ch&eacute;o Inox hộp 25 x 25 (D&agrave;y 0,8 mm)</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> B&aacute;nh xe bằng nhựa đặc chủng c&oacute; đ&uacute;c v&ograve;ng bi ở trong</span><span style=\"font-size:14px\"></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Ray dẫn hướng bằng sắt đặc 20&times;20 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Nguồn điện: Động cơ 370W 1 pha</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Phụ kiện đi k&egrave;m: Điều khiển b&agrave;n x 1; Điều khiển từ xa x 2.</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chất liệu: Inox 304</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Bảo h&agrave;nh 12 th&aacute;ng</span></div>', '', NULL, NULL, '', '', NULL, NULL, 'cong-tu-dong-4', '13', 31, '1623456250_TEST-5.png', NULL, NULL, '', 'datafiles', 1623477662, 0, 5, 2, 0, 0, 'CONG TU DONG 4', '', NULL, NULL, 'CONG TU DONG 4', '', NULL, NULL, 'CONG TU DONG 4', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(112, 1, 7, 'AUTO GATE 8', '', NULL, NULL, '<p><strong><span style=\"font-size:18px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#3300ff\">TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</span></span><span style=\"color:#3300ff\"><span style=\"background-color:#ffff99\"></span></span></span></span></strong></p>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: </span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều cao: 1200 - 1600 mm</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều rộng: Theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều rộng khung 500 mm; Rộng phủ b&igrave; 640 mm</span></span></div>', '', NULL, NULL, '<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: </span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều cao: 1200 - 1600 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều rộng: Theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều rộng khung 500 mm; Rộng phủ b&igrave; 640 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Khung ch&iacute;nh Inox hộp 40&times;40 (D&agrave;y 1 mm); Khoảng c&aacute;ch giữa hai khung l&agrave; 400 &plusmn; 20 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Li&ecirc;n kết khung ch&iacute;nh l&agrave; c&aacute;c nan ch&eacute;o Inox hộp 25 x 25 (D&agrave;y 0,8 mm)</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> B&aacute;nh xe bằng nhựa đặc chủng c&oacute; đ&uacute;c v&ograve;ng bi ở trong</span><span style=\"font-size:14px\"></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Ray dẫn hướng bằng sắt đặc 20&times;20 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Nguồn điện: Động cơ 370W 1 pha</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Phụ kiện đi k&egrave;m: Điều khiển b&agrave;n x 1; Điều khiển từ xa x 2.</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chất liệu: Inox 304</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Bảo h&agrave;nh 12 th&aacute;ng</span></div>', '', NULL, NULL, '', '', NULL, NULL, 'cong-tu-dong-7', '13', 29, '1623456758_TEST-7.png', NULL, NULL, '', 'datafiles', 1623477690, 0, 1, 2, 0, 0, 'CONG TU DONG 7', '', NULL, NULL, 'CONG TU DONG 7', '', NULL, NULL, 'CONG TU DONG 7', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(121, 1, 0, '\'OBT VN BUILDING - DẤU ẤN MỘT CHẶNG ĐƯỜNG\'', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 'obt-vn-building-dau-an-mot-chang-duong', '', 2, NULL, NULL, NULL, '', 'datafiles', 1623484017, 0, 1, 1, 0, 0, '\'OBT VN BUILDING - DẤU ẤN MỘT CHẶNG ĐƯỜNG\'', '', NULL, NULL, '\'OBT VN BUILDING - DẤU ẤN MỘT CHẶNG ĐƯỜNG\'', '', NULL, NULL, '\'OBT VN BUILDING - DẤU ẤN MỘT CHẶNG ĐƯỜNG\'', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 0, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0);
INSERT INTO `lh_baiviet` (`id`, `id_user`, `id_parent`, `tenbaiviet_vi`, `tenbaiviet_en`, `tenbaiviet_cn`, `tenbaiviet_jp`, `mota_vi`, `mota_en`, `mota_cn`, `mota_jp`, `noidung_vi`, `noidung_en`, `noidung_cn`, `noidung_jp`, `tags_vi`, `tags_en`, `tags_cn`, `tags_jp`, `seo_name`, `id_parent_muti`, `catasort`, `icon`, `icon_hover`, `dowload`, `dowload_text`, `duongdantin`, `ngaydang`, `capnhat`, `soluotxem`, `step`, `giatien`, `giakm`, `seo_title_vi`, `seo_title_en`, `seo_title_cn`, `seo_title_jp`, `seo_keywords_vi`, `seo_keywords_en`, `seo_keywords_cn`, `seo_keywords_jp`, `seo_description_vi`, `seo_description_en`, `seo_description_cn`, `seo_description_jp`, `opt_km`, `opt`, `opt1`, `opt2`, `opt3`, `opt4`, `opt5`, `top_video`, `p1`, `p2`, `p3`, `link_video`, `num_1`, `num_2`, `num_3`, `num_4`, `showhi`, `tinh_nang`, `thuoc_tinh_1_vi`, `thuoc_tinh_1_en`, `thuoc_tinh_1_cn`, `thuoc_tinh_1_jp`, `thuoc_tinh_2_vi`, `thuoc_tinh_2_en`, `thuoc_tinh_2_cn`, `thuoc_tinh_2_jp`, `thuoc_tinh_3_vi`, `thuoc_tinh_3_en`, `thuoc_tinh_3_cn`, `thuoc_tinh_3_jp`, `google_map`, `is_dongdau`, `time_dongdau`) VALUES
(45, 1, 0, 'DỊCH VỤ LẮP ĐẶT TRỌN GÓI KHÓA ĐIỆN TỬ DÀNH CHO HỆ THỐNG KHÁCH SẠN, KHU NGHỈ DƯỠNG, CHUNG CƯ, CAO ỐC VĂN PHÒNG, KHU LIÊN/PHỨC HỢP', 'Service Obt Vietnam', NULL, NULL, '<p>Lắp đặt&nbsp;c&aacute;c loại Kh&oacute;a điện tử [Wifi/Bluetooth - V&acirc;n tay - Mật m&atilde;&nbsp;- Thẻ từ - Ch&igrave;a cơ] tại nh&agrave; phố / chung cư / khu nghỉ dưỡng / kh&aacute;ch sạn / dự &aacute;n lớn nhỏ.</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', NULL, NULL, '<div><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong><span style=\"color:#2c3e50;\"></span></strong></span></span>\r\n<p><span arial=\"\" style=\"font-family:\"></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Kh&oacute;a điện tử kh&ocirc;ng c&ograve;n xa lạ đối với người ti&ecirc;u d&ugrave;ng tại thị trường Việt Nam. Hiện nay, kh&oacute;a điện tử đang l&agrave; sản phẩm tốt nhất để thay thế c&aacute;c d&ograve;ng kh&oacute;a cửa truyền thống. Lắp đặt kh&oacute;a cửa điện tử cần những y&ecirc;u cầu g&igrave;? Quy tr&igrave;nh lắp đặt kh&oacute;a cửa điện tử diễn ra như thế n&agrave;o? H&atilde;y c&ugrave;ng OBT VN tham khảo ngay b&agrave;i viết dưới đ&acirc;y:<span style=\"line-height:107%\"></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Kh&oacute;a điện tử được ứng dụng c&ocirc;ng nghệ hiện đại c&ugrave;ng những t&iacute;nh năng th&ocirc;ng minh, chắc chắn sẽ đem đến kh&ocirc;ng gian sống thoải m&aacute;i, tiện nghi với mức độ an ninh v&agrave; bảo mật hơn bao giờ hết.<span style=\"line-height:107%\"></span></span></span></p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"320\" src=\"/2021_obtvietnam/datafiles/images/residential-locksmith-services.jpg\" width=\"480\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"line-height:107%\"></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"> <strong>Lắp đặt kh&oacute;a cửa điện tử cần y&ecirc;u cầu g&igrave;?<span style=\"line-height:107%\"></span></strong></span></span></p>\r\n\r\n<p><strong><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"line-height:107%\"></span></span></span></strong></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Việc thực hiện lắp đặt kh&oacute;a điện tử&nbsp;cần được tiến h&agrave;nh một c&aacute;ch cẩn thận. Bởi chỉ cần sai s&oacute;t một ch&uacute;t l&agrave; c&oacute; thể l&agrave;m kh&oacute;a bị lệch, kh&ocirc;ng lắp được kh&oacute;a hoặc tệ hơn l&agrave; hỏng lu&ocirc;n cả c&aacute;nh cửa. Do đ&oacute;, khi lắp đặt kh&oacute;a điện tử cần phải đảm bảo hai y&ecirc;u cầu quan trọng sau:<span style=\"line-height:107%\"></span></span></span></p>\r\n\r\n<ol>\r\n	<li><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">X&aacute;c định độ d&agrave;y của đố cửa: d&ugrave; l&agrave; cửa sắt, cửa k&iacute;nh, cửa gỗ hay cửa nhựa giả gỗ, đố cửa phải c&oacute; độ d&agrave;y tối thiểu từ 35-40mm mới c&oacute; thể lắp được kh&oacute;a.<span style=\"line-height:107%\"></span></span></span></li>\r\n	<li><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">X&aacute;c định độ rộng của đố cửa: độ rộng ti&ecirc;u chuẩn của đố cửa phải đạt từ 95-100mm. Lưu &yacute;, cần trừ đi phần chỉ của đố cửa để c&oacute; k&iacute;ch thước đo ch&iacute;nh x&aacute;c nhất.<span style=\"line-height:107%\"></span></span></span></li>\r\n</ol>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Trong trường hợp cửa của qu&yacute; kh&aacute;ch kh&ocirc;ng đ&aacute;p ứng những y&ecirc;u cầu tr&ecirc;n th&igrave; qu&yacute; kh&aacute;ch kh&ocirc;ng n&ecirc;n cố gắng lắp đặt. Thay v&agrave;o đ&oacute;, h&atilde;y trực tiếp li&ecirc;n hệ với c&aacute;c đơn vị hỗ trợ lắp đặt kh&oacute;a cửa chuy&ecirc;n nghiệp như OBT.<span style=\"line-height:107%\"></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"line-height:107%\"></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">OBT mang tới dịch vụ lắp đặt kh&oacute;a cửa chuy&ecirc;n nghiệp để đảm bảo t&iacute;nh thẩm mỹ v&agrave; bền đẹp cho c&aacute;nh cửa.<span style=\"line-height:107%\"></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Quy tr&igrave;nh lắp đặt kh&oacute;a cửa điện tử tại OBT<span style=\"line-height:107%\"></span></span></span></strong></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Bước 1: Đ&aacute;nh dấu v&agrave; x&aacute;c định vị tr&iacute; lắp đặt<span style=\"line-height:107%\"></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Trước ti&ecirc;n, đội ngũ kỹ thuật vi&ecirc;n từ OBT sẽ tiến h&agrave;nh x&aacute;c định v&agrave; đ&aacute;nh dấu ch&iacute;nh x&aacute;c vị tr&iacute; lắp đặt bộ ruột kh&oacute;a l&ecirc;n cửa. Ruột kh&oacute;a l&agrave; &ldquo;tr&aacute;i tim&rdquo; của cả bộ kh&oacute;a cửa, do đ&oacute; ruột kh&oacute;a cần được lắp đặt cẩn thận để qu&aacute; tr&igrave;nh vận h&agrave;nh của kh&oacute;a được diễn ra trơn tru nhất.<span style=\"line-height:107%\"></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Bước 2: Tiến h&agrave;nh khoan đục v&agrave; chỉnh sửa cho cửa<span style=\"line-height:107%\"></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Ở bước n&agrave;y, ch&uacute;ng t&ocirc;i tiến h&agrave;nh lắp đặt kh&oacute;a cửa theo đ&uacute;ng c&aacute;c vị tr&iacute; đ&atilde; được đ&aacute;nh dấu. Ch&uacute;ng t&ocirc;i sẽ cho ruột kh&oacute;a v&agrave;o khu&ocirc;n đ&uacute;c, kết hợp chỉnh sửa cho đến khi ruột kh&oacute;a được đặt vừa kh&iacute;t v&agrave;o b&ecirc;n trong cửa, qua đ&oacute; đảm bảo độ chắc chắn v&agrave; kh&ocirc;ng bị k&ecirc;nh cho ruột kh&oacute;a. <span style=\"line-height:107%\"></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Bước 3: Ho&agrave;n thiện lắp đặt, hướng dẫn qu&yacute; kh&aacute;ch c&aacute;ch thiết lập v&agrave; sử dụng<span style=\"line-height:107%\"></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Sau khi ho&agrave;n tất lắp đặt, kỹ thuật vi&ecirc;n của OBT sẽ tiến h&agrave;nh lắp pin v&agrave; kiểm tra c&aacute;c chức năng của kh&oacute;a. Khi thấy qu&aacute; tr&igrave;nh đ&oacute;ng/mở của cửa diễn ra ổn định, qu&yacute; kh&aacute;ch sẽ được hướng dẫn c&aacute;ch thiết lập c&aacute;c chức năng cũng như c&aacute;ch sử dụng hiệu quả nhất. Tổng thời gian t&iacute;nh từ l&uacute;c x&aacute;c định vị tr&iacute; lắp v&agrave; ho&agrave;n thiện lắp đặt l&agrave; từ 1.5-2 tiếng.<span style=\"line-height:107%\"></span></span></span></p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"255\" src=\"/2021_obtvietnam/datafiles/images/Installing-front-door-lock.jpg\" width=\"509\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p><v:rect alt=\"data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw==\" filled=\"f\" id=\"Rectangle_x0020_9\" o:gfxdata=\"UEsDBBQABgAIAAAAIQC75UiUBQEAAB4CAAATAAAAW0NvbnRlbnRfVHlwZXNdLnhtbKSRvU7DMBSF\r\ndyTewfKKEqcMCKEmHfgZgaE8wMW+SSwc27JvS/v23KTJgkoXFsu+P+c7Ol5vDoMTe0zZBl/LVVlJ\r\ngV4HY31Xy4/tS3EvRSbwBlzwWMsjZrlprq/W22PELHjb51r2RPFBqax7HCCXIaLnThvSAMTP1KkI\r\n+gs6VLdVdad08ISeCho1ZLN+whZ2jsTzgcsnJwldluLxNDiyagkxOquB2Knae/OLUsyEkjenmdzb\r\nmG/YhlRnCWPnb8C898bRJGtQvEOiVxjYhtLOxs8AySiT4JuDystlVV4WPeM6tK3VaILeDZxIOSsu\r\nti/jidNGNZ3/J08yC1dNv9v8AAAA//8DAFBLAwQUAAYACAAAACEArTA/8cEAAAAyAQAACwAAAF9y\r\nZWxzLy5yZWxzhI/NCsIwEITvgu8Q9m7TehCRpr2I4FX0AdZk2wbbJGTj39ubi6AgeJtl2G9m6vYx\r\njeJGka13CqqiBEFOe2Ndr+B03C3WIDihMzh6RwqexNA281l9oBFTfuLBBhaZ4ljBkFLYSMl6oAm5\r\n8IFcdjofJ0z5jL0MqC/Yk1yW5UrGTwY0X0yxNwri3lQgjs+Qk/+zfddZTVuvrxO59CNCmoj3vCwj\r\nMfaUFOjRhrPHaN4Wv0VV5OYgm1p+LW1eAAAA//8DAFBLAwQUAAYACAAAACEAwVxO5CMDAADTBgAA\r\nHwAAAGNsaXBib2FyZC9kcmF3aW5ncy9kcmF3aW5nMS54bWykVdty0zAQfWeGf9DoGdd2cC42dRnH\r\nSUqHQksDH6DYiq1BloykXArDv7OSnSZtGR6KZxKvpNXR2bO78vn7fcPRlirNpEhxeBZgREUhSyaq\r\nFH/7uvAmGGlDREm4FDTF91Tj9xevX52TpFKkrVmBAEHohKS4NqZNfF8XNW2IPpMtFbC2lqohBoaq\r\n8ktFdoDccH8QBCO/IUzgiyPUjBiCNoq9AIrL4jstcyK2RAMkL5LTmZ4jL/4fmSRie6naZXurLPPi\r\n8/ZWIVamGJQTpAGJsN8v9G4w9J/sqo4A+7VqrL9cr9Heodzbf4dB9wYVMBlGg8l4iFEBS73dnVHf\r\n/GVXUc//uQ/IdIeCcUJEt5aG2D6PLD5EdkcLKIWKUwRTJdWFSnEJOUtYQyrqV2z9bkU0HUVv7gJ+\r\neTPjdfYlm2a39uf7/i7LsvzDcJrNP4KVXdu/DNayObyu8jt43+zS9EG/AxPdXkN2NRIyr+F4mukW\r\niIAUwOswpZTc1ZSU2k53ikNqOgSn/hEM8rXafZIlpIpsjHQF+PIsPKhJklZpc0llg6yRYgUkHTjZ\r\nXmvTcTq4OKnlgnHuEsnFownA7GagAGCrXbOl4DrjVxzE88l8EnnRYDT3omA287JFHnmjRTgezt7O\r\n8nwW/rbnhlFSs7Kkwh5z6NIwetYCDSuU1HJtzgrZ+FCHrKCHToU+DYNjn2rJWWnhLCWtqlXOFdoS\r\nnuKFe3rlT9z8xzRcK0AsT0IKB1EwHcTeYjQZe9EiGnrxOJh4QRhP41EQxdFs8Tikaybo/4eEdimO\r\nh4Ohy9IJ6SexBe55HhtJGmaoQpw1KZ48OJHEFuJclC61hjDe2SdSWPpHKSDdh0SDqfubxeyXriPN\r\nfirLeyvYCt5QvEpCccFtA7c2GLVUPzHawV2cYv1jQxTFiF8J6IM4jCJwM24QDccDGKjTldXpChEF\r\nQKXYYNSZuYERbNm0ilU1nBQ6mYTMoGnWrC/ojpNlx7VZmntOXdSOORXlLVHkDjhz6NsUU+F9W/Y6\r\nggcEewxuo+mytRdM1yhd9E4OcHxynbut/efHfjNOxxd/AAAA//8DAFBLAwQUAAYACAAAACEAkS1q\r\nSVgGAAAPGgAAGgAAAGNsaXBib2FyZC90aGVtZS90aGVtZTEueG1s7FlLbxs3EL4X6H9Y7L2x3oqN\r\nyIGtR9zEToJISZEjpaV2GXOXC5Kyo1uRnHopUCAtemiA3nooigZogAa99McYcNCmP6JD7kOkRMUP\r\nuEBQxAKM3dlvhsOZ2W9I7o2bT2PqHWEuCEs6fvVaxfdwMmEBScKO/3A0+Oy67wmJkgBRluCOP8fC\r\nv7n96Sc30NaEknTMEA9GEY6xB4YSsYU6fiRlurWxISYgRuIaS3ECz6aMx0jCLQ83Ao6OYYCYbtQq\r\nldZGjEjib4NFqQz1KfxLpFCCCeVDZQZ7CYph9HvTKZlgjQ0Oqwoh5qJLuXeEaMcHmwE7HuGn0vco\r\nEhIedPyK/vM3tm9soK1cico1uobeQP/lerlCcFjTY/JwXA7aaDQbrZ3SvgZQuYrrt/utfqu0pwFo\r\nMoGZZr6YNpu7m7u9Zo41QNmlw3av3atXLbxhv77i805T/Sy8BmX2Gyv4waALUbTwGpThmyv4RqNd\r\n6zYsvAZl+NYKvl3Z6TXaFl6DIkqSwxV0pdmqd4vZlpApo3tO+GazMWjXcuMLFFRDWV1qiClL5Lpa\r\ni9ETxgcAUECKJEk8OU/xFE2gJruIkjEn3j4JIyi8FCVMgLhSqwwqdfivfg19pSOCtjAytJVf4IlY\r\nESl/PDHhJJUd/zZY9Q3I6Zs3J89enzz7/eT585Nnv+Zja1OW3h5KQlPv3U/f/PPyS+/v33589+Lb\r\nbOhlvDDxb3/56u0ff77PPMx4EYrT7169ff3q9Puv//r5hcP6DkdjEz4iMRbeXXzsPWAxTNDhPx7z\r\ni2mMIkRMjZ0kFChBahSH/b6MLPTdOaLIgdvFdhwfcaAaF/DW7Inl8DDiM0kcFu9EsQU8YIzuMu6M\r\nwh01lhHm0SwJ3YPzmYl7gNCRa+wuSqws92cpcCxxmexG2HLzPkWJRCFOsPTUM3aIsWN2jwmx4npA\r\nJpwJNpXeY+LtIuIMyYiMrWpaKO2RGPIydzkI+bZic/DI22XUNesePrKR8G4g6nB+hKkVxltoJlHs\r\nMjlCMTUDvo9k5HJyOOcTE9cXEjIdYsq8foCFcOnc4zBfI+l3gGbcaT+g89hGckkOXTb3EWMmsscO\r\nuxGKUxd2SJLIxH4uDqFEkXefSRf8gNlviLqHPKBkbbofEWyl+2w2eAgMa7q0KBD1ZMYdubyFmVW/\r\nwzmdIqypBhqAxesxSc4k+SV6b/539A4kevrDS8eMrobS3YatfFyQzHc4cb5Ne0sUvg63TNxdxgPy\r\n4fN2D82S+xheldXm9ZG2P9K2/7+n7XXv89WT9YKfgbrVsjVbruvFe7x27T4llA7lnOJ9oZfvArpS\r\nMACh0tN7VFzu5dIILtWbDANYuJAjreNxJr8gMhpGKIU1ftVXRkKRmw6FlzIBS38tdtpWeDqLD1iQ\r\nbVmrVbU9zchDILmQV5qlHLYbMkO32ottWGleexvq7XLhgNK9iBPGYLYTdYcT7UKogqQ35xA0hxN6\r\nZlfixabDi+vKfJGqFS/AtTIrsGzyYLHV8ZsNUAEl2FUhigOVpyzVRXZ1Mq8y0+uCaVUArCGKClhk\r\nelP5unZ6anZZqZ0j05YTRrnZTujI6B4mIhTgvDqV9DxuXDTXm4uUWu6pUOjxoLQWbrSvv8+Ly+Ya\r\n9Ja5gSYmU9DEO+74rXoTSmaC0o4/ha0/XMYp1I5Qy11EQzg0m0ievfCXYZaUC9lDIsoCrkknY4OY\r\nSMw9SuKOr6ZfpoEmmkO0b9UaEMIH69wm0MqH5hwk3U4ynk7xRJppNyQq0tktMHzGFc6nWv3yYKXJ\r\nZpDuYRQce2M64w8QlFizXVUBDIiAE6BqFs2AwJFmSWSL+ltqTDntmmeKuoYyOaJphPKOYpJ5BtdU\r\nXrqj78oYGHf5nCGgRkjyRjgOVYM1g2p107JrZD6s7bpnK6nIGaS56JkWq6iu6WYxa4SiDSzF8nJN\r\n3vCqCDFwmtnhM+peptzNguuW1glll4CAl/FzdN1zNATDtcVglmvK41UaVpydS+3eUUzwDNfO0yQM\r\n1m8VZpfiVvYI53AgvFTnB73lqgXRtFhX6ki7Pk8coNQbh9WOD58I4GziKVzBRwYfZDUlqykZXMGX\r\nA2gX2XF/x88vCgk8zyQlpl5I6gWmUUgahaRZSJqFpFVIWr6nz8XhW4w6Eve94tgbelh+TJ6vLexv\r\nONv/AgAA//8DAFBLAwQUAAYACAAAACEAnGZGQbsAAAAkAQAAKgAAAGNsaXBib2FyZC9kcmF3aW5n\r\ncy9fcmVscy9kcmF3aW5nMS54bWwucmVsc4SPzQrCMBCE74LvEPZu0noQkSa9iNCr1AcIyTYtNj8k\r\nUezbG+hFQfCyMLPsN7NN+7IzeWJMk3ccaloBQae8npzhcOsvuyOQlKXTcvYOOSyYoBXbTXPFWeZy\r\nlMYpJFIoLnEYcw4nxpIa0cpEfUBXNoOPVuYio2FBqrs0yPZVdWDxkwHii0k6zSF2ugbSL6Ek/2f7\r\nYZgUnr16WHT5RwTLpRcWoIwGMwdKV2edNS1dgYmGff0m3gAAAP//AwBQSwECLQAUAAYACAAAACEA\r\nu+VIlAUBAAAeAgAAEwAAAAAAAAAAAAAAAAAAAAAAW0NvbnRlbnRfVHlwZXNdLnhtbFBLAQItABQA\r\nBgAIAAAAIQCtMD/xwQAAADIBAAALAAAAAAAAAAAAAAAAADYBAABfcmVscy8ucmVsc1BLAQItABQA\r\nBgAIAAAAIQDBXE7kIwMAANMGAAAfAAAAAAAAAAAAAAAAACACAABjbGlwYm9hcmQvZHJhd2luZ3Mv\r\nZHJhd2luZzEueG1sUEsBAi0AFAAGAAgAAAAhAJEtaklYBgAADxoAABoAAAAAAAAAAAAAAAAAgAUA\r\nAGNsaXBib2FyZC90aGVtZS90aGVtZTEueG1sUEsBAi0AFAAGAAgAAAAhAJxmRkG7AAAAJAEAACoA\r\nAAAAAAAAAAAAAAAAEAwAAGNsaXBib2FyZC9kcmF3aW5ncy9fcmVscy9kcmF3aW5nMS54bWwucmVs\r\nc1BLBQYAAAAABQAFAGcBAAATDQAAAAA=\r\n\" stroked=\"f\" style=\"width:11.25pt; height:11.25pt; v-text-anchor:top\"><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"> </span></span><o:lock aspectratio=\"t\" v:ext=\"edit\"><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"> </span></span><w:wrap type=\"none\"><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"> </span></span><w:anchorlock><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"> </span></span></w:anchorlock></w:wrap></o:lock></v:rect><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"></span></span><span style=\"font-size:12.0pt\"><span style=\"line-height:107%\"><span arial=\"\" style=\"font-family:\"></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12.0pt\"><span style=\"line-height:107%\"><span arial=\"\" style=\"font-family:\"></span></span></span></p>\r\n<span style=\"color:#2c3e50;\"><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"></span></span></span></div>', '<p>The house on the outskirts of Hanoi is divided into 3 main zones, inspired by the traditional three-room house of the northern countryside.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/6_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>On a 560-square-meter plot of land in Thach That, Hanoi, architects Ta Dinh Van, Nguyen Nhu Thanh, Nguyen Hoang Tu (365 design) have designed and constructed a 200-square-meter house, the rest are used as view. Between the three areas of the house are courtyards and gardens.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/7-1535007559_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Following the trend of bringing nature and trees to life, the house is designed with maximum openings, helping people to approach and get close to nature.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/CricketHouse-day-01_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Sharing with Archdaily, the world&#39;s leading architecture website, the group of architects said, after a lot of ideas on paper, this is a project that they spent a lot of time and enthusiasm to complete. health.</p>', NULL, NULL, '', '', NULL, NULL, 'dich-vu-obt-viet-nam-cp-908461619144719', '', 3, '1622178534_Installation_Shepherd_Lock_5000x.jpg', NULL, NULL, '', 'datafiles', 1619147951, 0, 11, 4, 0, 0, 'Dịch vụ Obt Việt Nam', 'Service Obt Vietnam', NULL, NULL, 'Dịch vụ Obt Việt Nam', 'Service Obt Vietnam', NULL, NULL, 'Dịch vụ Obt Việt Nam', 'Service Obt Vietnam', NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(46, 1, 0, 'DỊCH VỤ SỬA CHỮA KHÓA ĐIỆN TỬ TẠI NHÀ', 'Service Obt Vietnam', NULL, NULL, '<div><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Khắc phục - Sửa chữa nhanh tất cả c&aacute;c loại Kh&oacute;a điện tử [Wifi/Bluetooth - V&acirc;n tay - Mật m&atilde;&nbsp;- Thẻ từ - Ch&igrave;a cơ] tại nh&agrave; của Qu&yacute; kh&aacute;ch h&agrave;ng.</span></span></div>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', NULL, NULL, '<div><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Sửa Kh&oacute;a Điện tử l&agrave; dịch vụ mới m&agrave; OBT VN x&acirc;y dựng trong năm 2020 nhằm đ&aacute;p ứng nhu cầu dịch vụ cần gấp của kh&aacute;ch h&agrave;ng. </span></span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Ng&agrave;y nay c&aacute;c d&ograve;ng kh&oacute;a điện tử, kh&oacute;a v&acirc;n tay&nbsp;lắp đặt ng&agrave;y c&agrave;ng nhiều. Ai cũng hiểu r&otilde; về lợi &iacute;ch của kh&oacute;a điện tử cũng như t&iacute;nh năng an to&agrave;n của sản phẩm. Tuy nhi&ecirc;n khi sử dụng l&acirc;u d&agrave;i 5 năm 10 năm sẽ nảy sinh những lỗi cơ bản như:</span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">. Kẹt l&otilde;i kh&oacute;a,</span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">. Lỗi do sử dụng PIN k&eacute;m chất lượng,</span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">. Lỗi kh&ocirc;ng nhận thẻ / v&acirc;n tay. </span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">. ...</span></span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Nắm bắt được nhu cầu thực tế đ&oacute; OBT ch&iacute;nh thức mở rộng v&agrave; khai th&aacute;c dịch vụ ứng cứu nhanh xử l&yacute; lỗi ngay tại nh&agrave; kh&aacute;ch h&agrave;ng.</span></span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"291\" src=\"/2021_obtvietnam/datafiles/images/image_6074800_20201210_ob_b4f74c_118703393-159960435779305-436571126412.jpg\" width=\"447\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div>\r\n<p>&nbsp;</p>\r\n</div>', '<p>The house on the outskirts of Hanoi is divided into 3 main zones, inspired by the traditional three-room house of the northern countryside.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/6_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>On a 560-square-meter plot of land in Thach That, Hanoi, architects Ta Dinh Van, Nguyen Nhu Thanh, Nguyen Hoang Tu (365 design) have designed and constructed a 200-square-meter house, the rest are used as view. Between the three areas of the house are courtyards and gardens.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/7-1535007559_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Following the trend of bringing nature and trees to life, the house is designed with maximum openings, helping people to approach and get close to nature.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/CricketHouse-day-01_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Sharing with Archdaily, the world&#39;s leading architecture website, the group of architects said, after a lot of ideas on paper, this is a project that they spent a lot of time and enthusiasm to complete. health.</p>', NULL, NULL, '', '', NULL, NULL, 'dich-vu-obt-viet-nam-cp-854731619144719', '', 2, '1622178638_B_B-locksmith-residential-lock-installation-1.jpg', NULL, NULL, '', 'datafiles', 1619155053, 0, 11, 4, 0, 0, 'Dịch vụ Obt Việt Nam', 'Service Obt Vietnam', NULL, NULL, 'Dịch vụ Obt Việt Nam', 'Service Obt Vietnam', NULL, NULL, 'Dịch vụ Obt Việt Nam', 'Service Obt Vietnam', NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 0, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(88, 1, 4, 'HOTEL SMART LOCK S4032G', '', NULL, NULL, '<div><span style=\"color:#2c3e50;\"><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"></span></span></span>\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Material: 304 Stainless Steel material</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Working Voltage: DC6V or 4 AA Alkaline batteries</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Low Voltage Alarm:＜4.8V</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Working Environment: -20℃~60℃</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Unlocking record: 1680PCS</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Door Thickness: 38-70mm</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Keycard Option: Mifare 1 card</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Size: L125mm x W61mm x H22mm</span></span></div>\r\n<span style=\"color:#2c3e50;\"><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"></span></span></span></div>', '', NULL, NULL, '<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Interface with most of the PMS system,Fidelio/Opera registered</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> CE &amp; FCC Certified</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Stainless steel color lasts more than 10 years</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> ANSI Standard mortise</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Inside Deadbolt,Inside handle retracts latches and deadbolt</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Mifare 1K card,compatible with Mifare Energy Saver</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Lost Guest Card suspension simply by issuing a new guest card with suspending function</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Multiple operators with different card issuing authorization</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Low battery voltage warning.(Lower then 4.8V).</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Self Error detecting with &ldquo;Beep&rdquo;</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Passage Model function available</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Can be integrated with 16 public areas such as Lift/Parking/Swimming Pool/Sauna Room/Tennis Court/Gym...etc</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"></span></div>\r\n\r\n<div>\r\n<figure class=\"image\"><img alt=\"\" height=\"488\" src=\"/2021_obtvietnam/datafiles/images/Screenshot%202021-05-26%20174531.jpg\" width=\"542\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\"></span></p>\r\n\r\n<figure class=\"image\"><img alt=\"\" height=\"460\" src=\"/2021_obtvietnam/datafiles/images/Screenshot%202021-05-26%20174611.jpg\" width=\"544\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\"></span></p>\r\n\r\n<figure class=\"image\"><img alt=\"\" height=\"370\" src=\"/2021_obtvietnam/datafiles/images/Screenshot%202021-05-26%20174639.jpg\" width=\"543\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>', '', NULL, NULL, '', '', NULL, NULL, 'hotel-smart-lock-s4032g', '14', 2, '1622719122_unnamed.jpg', NULL, NULL, '', 'datafiles', 1622686896, 0, 5, 2, 8888888, 0, 'TEST-6', '', NULL, NULL, 'TEST-6', '', NULL, NULL, 'TEST-6', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 'OBT-HS4032G', 0, '', '', 0, 0, 0, 0, 0, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(89, 1, 5, 'OBT - E5300', '', NULL, NULL, '<div><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\">TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</span></strong></span></div>\r\n\r\n<div><span style=\"font-size:14px\">Phương thức mở kh&oacute;a: Mật m&atilde; - Thẻ từ - Ch&igrave;a cơ</span></div>\r\n\r\n<div><span style=\"font-size:14px\">Dung lượng: 100 mật m&atilde;, 800 thẻ từ</span></div>\r\n\r\n<div><span style=\"font-size:14px\">Chuẩn thẻ: Mifare 1K (Nhiều mẫu m&atilde;)</span></div>\r\n\r\n<div><span style=\"font-size:14px\">Tần số: 13.56 MHz</span></div>\r\n\r\n<div><span style=\"font-size:14px\">Pin: Alkaline AA x 4 (Khoảng 12 th&aacute;ng, t&ugrave;y tần suất sử dụng)</span></div>\r\n\r\n<div><span style=\"font-size:14px\">Cấu tạo: Inox 304</span></div>\r\n\r\n<div><span style=\"font-size:14px\">Độ d&agrave;y đố cửa: 38mm (d&agrave;y) x 115mm (rộng)</span></div>\r\n\r\n<div><span style=\"font-size:14px\">K&iacute;ch thước: 367mm (d&agrave;i) x 85mm (rộng) x 73mm (d&agrave;y)</span></div>\r\n\r\n<div><span style=\"font-size:14px\">Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: &iacute;t nhất 12 th&aacute;ng</span></div>', '', NULL, NULL, '<div><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\">CHỨC NĂNG NỔI BẬT:</span></strong></span></div>\r\n\r\n<div><span style=\"color:#e74c3c\"><span style=\"font-size:14px\"><strong>+ CHỨC NĂNG AN NINH:</strong></span></span></div>\r\n\r\n<div>\r\n<div><span style=\"font-size:14px\"></span><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span><span style=\"font-size:14px\"> Kết cấu to&agrave;n bộ kh&oacute;a an ninh (bao gồm l&otilde;i kh&oacute;a, trục kh&oacute;a, tay nắm,...) bằng chất liệu inox 304 ki&ecirc;n cố, vững chắc; </span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chức năng ph&acirc;n quyền quản l&yacute; chi tiết đến từng Quản l&yacute; vi&ecirc;n / Người sử dụng;</span></div>\r\n\r\n<div><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span><span style=\"font-size:14px\"></span> <span style=\"font-size:14px\">Chức năng chống nh&igrave;n trộm, chống sao ch&eacute;p d&atilde;y mật m&atilde; an ninh bằng phương thức x&aacute;o trộn d&atilde;y mật m&atilde;;</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chức năng tự động v&ocirc; hiệu h&oacute;a thiết bị khi nhập sai li&ecirc;n tiếp 5 lần mật m&atilde; / thẻ từ;</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chức năng kh&oacute;a k&eacute;p gia tăng độ an to&agrave;n từ b&ecirc;n trong căn hộ;</span></div>\r\n\r\n<div><span style=\"font-size:14px\"></span><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span></span><span style=\"font-size:14px\"> Chức năng cảnh b&aacute;o khi cửa chưa được đ&oacute;ng ho&agrave;n to&agrave;n;</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chức năng </span><span style=\"font-size:14px\">cảnh b&aacute;o ph&aacute; kh&oacute;a (khi c&oacute; ngoại lực t&aacute;c động l&ecirc;n mặt ngo&agrave;i của kh&oacute;a);</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chức năng </span><span style=\"font-size:14px\">cảnh b&aacute;o ph&aacute; kh&oacute;a (khi c&oacute; ngoại lực t&aacute;c động l&ecirc;n mặt ngo&agrave;i của kh&oacute;a);</span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style=\"color:#e74c3c\"><span style=\"font-size:14px\"><strong>+ CHỨC NĂNG MỞ RỘNG:</strong></span></span></div>\r\n\r\n<div>\r\n<div><span style=\"font-size:14px\"> <span aria-label=\"span widget\" contenteditable=\"false\" role=\"region\" tabindex=\"-1\"></span><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> T&iacute;ch hợp cảm biến b&aacute;o ch&aacute;y (khi nhiệt độ b&ecirc;n trong căn hộ &ge; 60&ordm;, kh&oacute;a sẽ tự động mở để phối hợp ứng cứu);</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> </span><span style=\"font-size:14px\">Chức năng cảnh b&aacute;o pin yếu;</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chức năng cấp nguồn điện dự ph&ograve;ng duy tr&igrave; hoạt động cho kh&oacute;a [Trong trường hợp Quản l&yacute; vi&ecirc;n / Người sử dụng qu&ecirc;n thay pin];</span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\">HỆ THỐNG CHỨNG NHẬN LI&Ecirc;N QUAN TỪ C&Aacute;C </span></strong><strong><span style=\"color:#3300ff\">HIỆP HỘI TRONG V&Agrave; NGO&Agrave;I NƯỚC</span></strong><strong><span style=\"color:#3300ff\">:</span></strong></span></div>\r\n\r\n<div>\r\n<figure class=\"image\"><img alt=\"\" height=\"520\" src=\"/2021_obtvietnam/datafiles/images/1-2006020U025614(1).jpg\" width=\"516\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n</div>\r\n</div>', '', NULL, NULL, '', '', NULL, NULL, 'smart-lock-e5300', '14', 45, '1623034955_5300-WS.png', NULL, NULL, '', 'datafiles', 1623057653, 0, 7, 2, 2882828, 0, 'SMART LOCK P5300', '', NULL, NULL, 'SMART LOCK P5300', '', NULL, NULL, 'SMART LOCK P5300', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 'OBT-E5300', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(90, 1, 5, 'OBT - P2300', '', NULL, NULL, '<div><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\">TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</span></strong></span></div>\r\n\r\n<div><span style=\"font-size:14px\">Phương thức mở kh&oacute;a: Mật m&atilde; - Thẻ từ - Ch&igrave;a cơ</span></div>\r\n\r\n<div><span style=\"font-size:14px\">Dung lượng: 100 mật m&atilde;, 800 thẻ từ</span></div>\r\n\r\n<div><span style=\"font-size:14px\">Chuẩn thẻ: Mifare 1K (Nhiều mẫu m&atilde;)</span></div>\r\n\r\n<div><span style=\"font-size:14px\">Tần số: 13.56 MHz</span></div>\r\n\r\n<div><span style=\"font-size:14px\">Pin: Alkaline AA x 4 (Khoảng 12 th&aacute;ng, t&ugrave;y tần suất sử dụng)</span></div>\r\n\r\n<div><span style=\"font-size:14px\">Cấu tạo: Inox 304</span></div>\r\n\r\n<div><span style=\"font-size:14px\">Độ d&agrave;y đố cửa: 38mm (d&agrave;y) x 115mm (rộng)</span></div>\r\n\r\n<div><span style=\"font-size:14px\">K&iacute;ch thước: 367mm (d&agrave;i) x 85mm (rộng) x 73mm (d&agrave;y)</span></div>\r\n\r\n<div><span style=\"font-size:14px\">Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: &iacute;t nhất 12 th&aacute;ng</span></div>', '', NULL, NULL, '<div><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\">CHỨC NĂNG NỔI BẬT:</span></strong></span></div>\r\n\r\n<div><span style=\"color:#e74c3c\"><span style=\"font-size:14px\"><strong>+ CHỨC NĂNG AN NINH:</strong></span></span></div>\r\n\r\n<div>\r\n<div><span style=\"font-size:14px\"></span><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span><span style=\"font-size:14px\"> Kết cấu to&agrave;n bộ kh&oacute;a an ninh (bao gồm l&otilde;i kh&oacute;a, trục kh&oacute;a, tay nắm,...) bằng chất liệu inox 304 ki&ecirc;n cố, vững chắc; </span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chức năng ph&acirc;n quyền quản l&yacute; chi tiết đến từng Quản l&yacute; vi&ecirc;n / Người sử dụng;</span></div>\r\n\r\n<div><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span><span style=\"font-size:14px\"></span> <span style=\"font-size:14px\">Chức năng chống nh&igrave;n trộm, chống sao ch&eacute;p d&atilde;y mật m&atilde; an ninh bằng phương thức x&aacute;o trộn d&atilde;y mật m&atilde;;</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chức năng tự động v&ocirc; hiệu h&oacute;a thiết bị khi nhập sai li&ecirc;n tiếp 5 lần mật m&atilde; / thẻ từ;</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chức năng kh&oacute;a k&eacute;p gia tăng độ an to&agrave;n từ b&ecirc;n trong căn hộ;</span></div>\r\n\r\n<div><span style=\"font-size:14px\"></span><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span></span><span style=\"font-size:14px\"> Chức năng cảnh b&aacute;o khi cửa chưa được đ&oacute;ng ho&agrave;n to&agrave;n;</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chức năng </span><span style=\"font-size:14px\">cảnh b&aacute;o ph&aacute; kh&oacute;a (khi c&oacute; ngoại lực t&aacute;c động l&ecirc;n mặt ngo&agrave;i của kh&oacute;a);</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chức năng </span><span style=\"font-size:14px\">cảnh b&aacute;o ph&aacute; kh&oacute;a (khi c&oacute; ngoại lực t&aacute;c động l&ecirc;n mặt ngo&agrave;i của kh&oacute;a);</span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style=\"color:#e74c3c\"><span style=\"font-size:14px\"><strong>+ CHỨC NĂNG MỞ RỘNG:</strong></span></span></div>\r\n\r\n<div>\r\n<div><span style=\"font-size:14px\"> <span aria-label=\"span widget\" contenteditable=\"false\" role=\"region\" tabindex=\"-1\"></span><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> T&iacute;ch hợp cảm biến b&aacute;o ch&aacute;y (khi nhiệt độ b&ecirc;n trong căn hộ &ge; 60&ordm;, kh&oacute;a sẽ tự động mở để phối hợp ứng cứu);</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> </span><span style=\"font-size:14px\">Chức năng cảnh b&aacute;o pin yếu;</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chức năng cấp nguồn điện dự ph&ograve;ng duy tr&igrave; hoạt động cho kh&oacute;a [Trong trường hợp Quản l&yacute; vi&ecirc;n / Người sử dụng qu&ecirc;n thay pin];</span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\">HỆ THỐNG CHỨNG NHẬN LI&Ecirc;N QUAN TỪ C&Aacute;C </span></strong><strong><span style=\"color:#3300ff\">HIỆP HỘI TRONG V&Agrave; NGO&Agrave;I NƯỚC</span></strong><strong><span style=\"color:#3300ff\">:</span></strong></span></div>\r\n\r\n<div>\r\n<figure class=\"image\"><img alt=\"\" height=\"561\" src=\"/2021_obtvietnam/datafiles/images/1-2006020U025614(1).jpg\" width=\"557\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n</div>\r\n</div>', '', NULL, NULL, '', '', NULL, NULL, 'smart-lock-p2300', '14', 42, '1623034767_2300-WS.png', NULL, NULL, '', 'datafiles', 1623057645, 0, 12, 2, 6868686, 0, 'SMART LOCK P2300', '', NULL, NULL, 'SMART LOCK P2300', '', NULL, NULL, 'SMART LOCK P2300', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 'OBT-P2300', 0, '', '', 0, 0, 0, 0, 0, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(91, 1, 5, 'OBT - P070', '', NULL, NULL, '<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\">TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</span></strong></span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Phương thức mở kh&oacute;a: V&acirc;n tay - Mật m&atilde; - Thẻ từ - Ch&igrave;a cơ</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Dung lượng: 100 v&acirc;n tay, 100 mật m&atilde;, 800 thẻ từ, 2 ch&igrave;a cơ</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chuẩn thẻ: Mifare 1K (Nhiều mẫu m&atilde;)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Tần số: 13.56 MHz</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Pin: Alkaline AA x 4 (Khoảng 12 th&aacute;ng, t&ugrave;y tần suất sử dụng)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Cấu tạo: Inox 304</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Độ d&agrave;y đố cửa: 38mm (d&agrave;y) x 115mm (rộng)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: 367mm (d&agrave;i) x 85mm (rộng) x 73mm (d&agrave;y)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: &iacute;t nhất 12 th&aacute;ng</span></span></div>', '', NULL, NULL, '<div>\r\n<figure class=\"image\"><img alt=\"\" height=\"392\" src=\"/2021_obtvietnam/datafiles/images/SPEC-5.jpg\" width=\"754\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\"></span></strong></span></span>\r\n\r\n<div>\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"422\" src=\"/2021_obtvietnam/datafiles/images/CHUC%20NANG%20AN%20NINH(1).jpg\" width=\"726\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"428\" src=\"/2021_obtvietnam/datafiles/images/CHUC%20NANG%20MO%20RONG.jpg\" width=\"728\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div>\r\n<div style=\"text-align: center;\"><span style=\"font-family:Verdana,Geneva,sans-serif\"></span><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\">CHỨNG NHẬN LI&Ecirc;N QUAN TỪ C&Aacute;C </span></strong><strong><span style=\"color:#3300ff\">HIỆP HỘI TRONG V&Agrave; NGO&Agrave;I NƯỚC</span></strong><strong><span style=\"color:#3300ff\">:</span></strong></span></span></div>\r\n\r\n<div>\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"557\" src=\"/2021_obtvietnam/datafiles/images/1-2006020U025614(1).jpg\" width=\"553\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '', NULL, NULL, '', '', NULL, NULL, 'obt-p070', '9', 39, '1623036691_070-WS.png', NULL, NULL, '', 'datafiles', 1623070672, 0, 11, 2, 8888888, 0, 'OBT - P070', '', NULL, NULL, 'OBT - P070', '', NULL, NULL, 'OBT - P070', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 'OBT - P070', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0);
INSERT INTO `lh_baiviet` (`id`, `id_user`, `id_parent`, `tenbaiviet_vi`, `tenbaiviet_en`, `tenbaiviet_cn`, `tenbaiviet_jp`, `mota_vi`, `mota_en`, `mota_cn`, `mota_jp`, `noidung_vi`, `noidung_en`, `noidung_cn`, `noidung_jp`, `tags_vi`, `tags_en`, `tags_cn`, `tags_jp`, `seo_name`, `id_parent_muti`, `catasort`, `icon`, `icon_hover`, `dowload`, `dowload_text`, `duongdantin`, `ngaydang`, `capnhat`, `soluotxem`, `step`, `giatien`, `giakm`, `seo_title_vi`, `seo_title_en`, `seo_title_cn`, `seo_title_jp`, `seo_keywords_vi`, `seo_keywords_en`, `seo_keywords_cn`, `seo_keywords_jp`, `seo_description_vi`, `seo_description_en`, `seo_description_cn`, `seo_description_jp`, `opt_km`, `opt`, `opt1`, `opt2`, `opt3`, `opt4`, `opt5`, `top_video`, `p1`, `p2`, `p3`, `link_video`, `num_1`, `num_2`, `num_3`, `num_4`, `showhi`, `tinh_nang`, `thuoc_tinh_1_vi`, `thuoc_tinh_1_en`, `thuoc_tinh_1_cn`, `thuoc_tinh_1_jp`, `thuoc_tinh_2_vi`, `thuoc_tinh_2_en`, `thuoc_tinh_2_cn`, `thuoc_tinh_2_jp`, `thuoc_tinh_3_vi`, `thuoc_tinh_3_en`, `thuoc_tinh_3_cn`, `thuoc_tinh_3_jp`, `google_map`, `is_dongdau`, `time_dongdau`) VALUES
(92, 1, 5, 'OBT - P080', '', NULL, NULL, '<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\">TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</span></strong></span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Phương thức mở kh&oacute;a: V&acirc;n tay - Mật m&atilde; - Thẻ từ - Ch&igrave;a cơ</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Dung lượng: 100 v&acirc;n tay, 100 mật m&atilde;, 800 thẻ từ, 2 ch&igrave;a cơ</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chuẩn thẻ: Mifare 1K (Nhiều mẫu m&atilde;)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Tần số: 13.56 MHz</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Pin: Alkaline AA x 4 (Khoảng 12 th&aacute;ng, t&ugrave;y tần suất sử dụng)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Cấu tạo: Inox 304</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Độ d&agrave;y đố cửa: 38mm (d&agrave;y) x 115mm (rộng)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: 367mm (d&agrave;i) x 85mm (rộng) x 73mm (d&agrave;y)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: &iacute;t nhất 12 th&aacute;ng</span></span></div>', '', NULL, NULL, '<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\"></span></strong></span></span>\r\n<div>\r\n<figure class=\"image\"><img alt=\"\" height=\"392\" src=\"/2021_obtvietnam/datafiles/images/SPEC-5.jpg\" width=\"754\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\"></span></strong></span></span>\r\n\r\n<div>\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"420\" src=\"/2021_obtvietnam/datafiles/images/CHUC%20NANG%20AN%20NINH(1).jpg\" width=\"723\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"428\" src=\"/2021_obtvietnam/datafiles/images/CHUC%20NANG%20MO%20RONG.jpg\" width=\"728\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div>\r\n<div style=\"text-align: center;\"><span style=\"font-family:Verdana,Geneva,sans-serif\"></span><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\">CHỨNG NHẬN LI&Ecirc;N QUAN TỪ C&Aacute;C </span></strong><strong><span style=\"color:#3300ff\">HIỆP HỘI TRONG V&Agrave; NGO&Agrave;I NƯỚC</span></strong><strong><span style=\"color:#3300ff\">:</span></strong></span></span></div>\r\n\r\n<div>\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"540\" src=\"/2021_obtvietnam/datafiles/images/1-2006020U025614(1).jpg\" width=\"535\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\"></span></strong></span></span></div>\r\n</div>\r\n</div>', '', NULL, NULL, '', '', NULL, NULL, 'obt-p080', '9', 38, '1623036932_080-WS.png', NULL, NULL, '', 'datafiles', 1623070701, 0, 10, 2, 6868686, 0, 'OBT - P080', '', NULL, NULL, 'OBT - P080', '', NULL, NULL, 'OBT - P080', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 'OBT - P080', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(93, 1, 5, 'OBT - P7800', '', NULL, NULL, '<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\">TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</span></strong></span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Phương thức mở kh&oacute;a: V&acirc;n tay - Mật m&atilde; - Thẻ từ - Ch&igrave;a cơ</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Dung lượng: 100 v&acirc;n tay, 100 mật m&atilde;, 800 thẻ từ, 2 ch&igrave;a cơ</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chuẩn thẻ: Mifare 1K (Nhiều mẫu m&atilde;)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Tần số: 13.56 MHz</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Pin: Alkaline AA x 4 (Khoảng 12 th&aacute;ng, t&ugrave;y tần suất sử dụng)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Cấu tạo: Inox 304</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Độ d&agrave;y đố cửa: 38mm (d&agrave;y) x 115mm (rộng)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: 367mm (d&agrave;i) x 85mm (rộng) x 73mm (d&agrave;y)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: &iacute;t nhất 12 th&aacute;ng</span></span></div>', '', NULL, NULL, '<div>\r\n<figure class=\"image\"><img alt=\"\" height=\"392\" src=\"/2021_obtvietnam/datafiles/images/SPEC-5.jpg\" width=\"754\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\"></span></strong></span></span>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"423\" src=\"/2021_obtvietnam/datafiles/images/CHUC%20NANG%20AN%20NINH(1).jpg\" width=\"728\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div>\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"428\" src=\"/2021_obtvietnam/datafiles/images/CHUC%20NANG%20MO%20RONG.jpg\" width=\"728\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"></span></span></p>\r\n</div>\r\n\r\n<div>\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align: center;\"><span style=\"font-family:Verdana,Geneva,sans-serif\"></span><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\">CHỨNG NHẬN LI&Ecirc;N QUAN TỪ C&Aacute;C </span></strong><strong><span style=\"color:#3300ff\">HIỆP HỘI TRONG V&Agrave; NGO&Agrave;I NƯỚC</span></strong><strong><span style=\"color:#3300ff\">:</span></strong></span></span></div>\r\n\r\n<div>\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"544\" src=\"/2021_obtvietnam/datafiles/images/1-2006020U025614(1).jpg\" width=\"540\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '', NULL, NULL, '', '', NULL, NULL, 'obt-p7800', '9', 47, '1623037343_7800-WS.png', NULL, NULL, '', 'datafiles', 1623062574, 0, 10, 2, 8888888, 0, 'OBT - P7800', '', NULL, NULL, 'OBT - P7800', '', NULL, NULL, 'OBT - P7800', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 'OBT-P7800', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(94, 1, 5, 'OBT - P8800', '', NULL, NULL, '<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\">TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</span></strong></span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Phương thức mở kh&oacute;a: V&acirc;n tay - Mật m&atilde; - Thẻ từ - Ch&igrave;a cơ</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Dung lượng: 100 v&acirc;n tay, 100 mật m&atilde;, 800 thẻ từ, 2 ch&igrave;a cơ</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chuẩn thẻ: Mifare 1K (Nhiều mẫu m&atilde;)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Tần số: 13.56 MHz</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Pin: Alkaline AA x 4 (Khoảng 12 th&aacute;ng, t&ugrave;y tần suất sử dụng)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Cấu tạo: Inox 304</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Độ d&agrave;y đố cửa: 38mm (d&agrave;y) x 115mm (rộng)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: 367mm (d&agrave;i) x 85mm (rộng) x 73mm (d&agrave;y)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: &iacute;t nhất 12 th&aacute;ng</span></span></div>', '', NULL, NULL, '<div>\r\n<figure class=\"image\"><img alt=\"\" height=\"392\" src=\"/2021_obtvietnam/datafiles/images/SPEC-5.jpg\" width=\"754\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\"></span></strong></span></span>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"421\" src=\"/2021_obtvietnam/datafiles/images/CHUC%20NANG%20AN%20NINH(1).jpg\" width=\"724\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div>\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"428\" src=\"/2021_obtvietnam/datafiles/images/CHUC%20NANG%20MO%20RONG.jpg\" width=\"728\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div>\r\n<div style=\"text-align: center;\"><span style=\"font-family:Verdana,Geneva,sans-serif\"></span><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\">CHỨNG NHẬN LI&Ecirc;N QUAN TỪ C&Aacute;C </span></strong><strong><span style=\"color:#3300ff\">HIỆP HỘI TRONG V&Agrave; NGO&Agrave;I NƯỚC</span></strong><strong><span style=\"color:#3300ff\">:</span></strong></span></span></div>\r\n\r\n<div>\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"537\" src=\"/2021_obtvietnam/datafiles/images/1-2006020U025614(1).jpg\" width=\"533\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '', NULL, NULL, '', '', NULL, NULL, 'obt-p8800', '9', 46, '1623037488_8800-WS.png', NULL, NULL, '', 'datafiles', 1623070415, 0, 14, 2, 8888888, 0, 'OBT - P8800', '', NULL, NULL, 'OBT - P8800', '', NULL, NULL, 'OBT - P8800', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 'OBT - P8800', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(95, 1, 5, 'OBT - E6800', '', NULL, NULL, '<p><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\"></span></strong></span></p>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\">TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</span></strong></span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Phương thức mở kh&oacute;a: V&acirc;n tay - Mật m&atilde; - Thẻ từ - Ch&igrave;a cơ</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Dung lượng: 100 v&acirc;n tay, 100 mật m&atilde;, 800 thẻ từ, 2 ch&igrave;a cơ</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chuẩn thẻ: Mifare 1K (Nhiều mẫu m&atilde;)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Tần số: 13.56 MHz</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Pin: Alkaline AA x 4 (Khoảng 12 th&aacute;ng, t&ugrave;y tần suất sử dụng)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Cấu tạo: Inox 304</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Độ d&agrave;y đố cửa: 38mm (d&agrave;y) x 115mm (rộng)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: 367mm (d&agrave;i) x 85mm (rộng) x 73mm (d&agrave;y)</span></span></div>\r\n\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Bảo h&agrave;nh ch&iacute;nh h&atilde;ng: &iacute;t nhất 12 th&aacute;ng</span></span></div>\r\n\r\n<p><span style=\"font-size:14px\"></span></p>', '', NULL, NULL, '<div><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\"></span></strong></span>\r\n<div><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\"></span></strong></span></span>\r\n<div>\r\n<figure class=\"image\"><img alt=\"\" height=\"392\" src=\"/2021_obtvietnam/datafiles/images/SPEC-5.jpg\" width=\"754\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"422\" src=\"/2021_obtvietnam/datafiles/images/CHUC%20NANG%20AN%20NINH(1).jpg\" width=\"726\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"428\" src=\"/2021_obtvietnam/datafiles/images/CHUC%20NANG%20MO%20RONG.jpg\" width=\"728\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p><span style=\"font-family:Verdana,Geneva,sans-serif\"></span></p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<div>\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align: center;\"><span style=\"font-size:14px\"><strong><span style=\"color:#3300ff\">CHỨNG NHẬN LI&Ecirc;N QUAN TỪ C&Aacute;C </span></strong><strong><span style=\"color:#3300ff\">HIỆP HỘI TRONG V&Agrave; NGO&Agrave;I NƯỚC</span></strong><strong><span style=\"color:#3300ff\">:</span></strong></span></div>\r\n\r\n<div>\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"446\" src=\"/2021_obtvietnam/datafiles/images/1-2006020U025614(1).jpg\" width=\"443\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '', NULL, NULL, '', '', NULL, NULL, 'obt-e6800', '9', 44, '1623037643_E6800-WS.png', NULL, NULL, '', 'datafiles', 1623070487, 0, 7, 2, 2828282, 0, 'OBT - E6800', '', NULL, NULL, 'OBT - E6800', '', NULL, NULL, 'OBT - E6800', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 'OBT - E6800', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(61, 1, 0, 'TUYỂN DỤNG - KỸ THUẬT VIÊN ĐIỆN - ĐIỆN TỬ', 'Service Obt Vietnam', NULL, NULL, '<p>Do đang c&oacute; nhu cầu mở rộng quy m&ocirc;, OBT VN cần tuyển dụng lực lượng nh&acirc;n sự theo th&ocirc;ng tin chi tiết n&ecirc;u dưới:</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', NULL, NULL, '<div><span style=\"color:#3498db;\"><strong><span style=\"font-size:14px;\">+ M&ocirc; tả c&ocirc;ng việc:</span></strong></span><span style=\"color:#2c3e50;\"><span style=\"font-size:14px;\"></span></span></div>\r\n\r\n<div><span style=\"color:#2c3e50;\"><span style=\"font-size:14px;\">- Quản l&yacute; dịch vụ, theo d&otilde;i biến động doanh thu. Gi&aacute;m s&aacute;t chất lượng dịch vụ thường xuy&ecirc;n<br />\r\n- Thiết lập, duy tr&igrave; mối quan hệ với đối t&aacute;c, kh&aacute;ch h&agrave;ng<br />\r\n- Truyền th&ocirc;ng marketing ph&aacute;t triển kinh doanh.<br />\r\n- Nghi&ecirc;n cứu thị trường, đề xuất phương &aacute;n tăng trưởng b&aacute;n h&agrave;ng</span></span></div>\r\n\r\n<div><span style=\"color:#3498db;\"><span style=\"font-size:14px;\"><strong>+ Mức lương: Thỏa thuận</strong></span></span></div>\r\n\r\n<div><span style=\"color:#3498db;\"><span style=\"font-size:14px;\"><strong>+ Chế độ kh&aacute;c:</strong></span></span><span style=\"color:#2c3e50;\"><span style=\"font-size:14px;\"><br />\r\n- Thưởng kinh doanh, thưởng s&aacute;ng kiến, thưởng th&aacute;ng 13, th&acirc;m ni&ecirc;n c&ocirc;ng t&aacute;c, thăng tiến<br />\r\n- Được hưởng c&aacute;c chế độ theo quy đinh của nh&agrave; nước. Bảo hiểm theo quy định<br />\r\n- M&ocirc;i trường l&agrave;m việc ổn định, trẻ trung, s&aacute;ng tạo.<br />\r\n- Đ&agrave;o tạo chuy&ecirc;n m&ocirc;n<br />\r\n- C&oacute; chế độ nghỉ ph&eacute;p đặc biệt<br />\r\n- Du lịch mỗi năm, thưởng c&aacute;c dịp lễ tết<br />\r\n- Phục vụ ăn trưa miễn ph&iacute; tại căng tin</span></span></div>\r\n\r\n<div><span style=\"color:#3498db;\"><strong><span style=\"font-size:14px;\">+ Kinh nghiệm / Kỹ năng chi tiết:</span></strong></span></div>\r\n\r\n<div><span style=\"color:#2c3e50;\"><span style=\"font-size:14px;\">- Ứng vi&ecirc;n: Nam/Nữ tuổi từ 20 đến 30;<br />\r\n- Tốt nghiệp c&aacute;c trường Trung Cấp, Cao Đẳng, Đại Học chuy&ecirc;n ng&agrave;nh: Kinh doanh, Quản trị kinh doanh, Thương mại, CNTT .<br />\r\n- Ưu ti&ecirc;n người c&oacute; kinh nghiệm l&agrave;m SALE phần mềm, Dự &aacute;n C&ocirc;ng nghệ th&ocirc;ng tin, ứng dụng di động, thị trường giải tr&iacute;<br />\r\n- Th&aacute;i độ l&agrave;m việc t&iacute;ch cực, tr&aacute;ch nhiệm, ham học hỏi</span></span></div>', '<p>The house on the outskirts of Hanoi is divided into 3 main zones, inspired by the traditional three-room house of the northern countryside.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/6_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>On a 560-square-meter plot of land in Thach That, Hanoi, architects Ta Dinh Van, Nguyen Nhu Thanh, Nguyen Hoang Tu (365 design) have designed and constructed a 200-square-meter house, the rest are used as view. Between the three areas of the house are courtyards and gardens.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/7-1535007559_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Following the trend of bringing nature and trees to life, the house is designed with maximum openings, helping people to approach and get close to nature.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/CricketHouse-day-01_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Sharing with Archdaily, the world&#39;s leading architecture website, the group of architects said, after a lot of ideas on paper, this is a project that they spent a lot of time and enthusiasm to complete. health.</p>', NULL, NULL, '', '', NULL, NULL, 'tuyen-dung-ky-thuat-vien-dien-dien-tu', '', 4, '1623160591_2-1.jpg', NULL, NULL, '', 'datafiles', 1619186191, 0, 4, 5, 0, 0, 'TUYỂN DỤNG - NHÂN VIÊN KINH DOANH', 'Service Obt Vietnam', NULL, NULL, 'TUYỂN DỤNG - NHÂN VIÊN KINH DOANH', 'Service Obt Vietnam', NULL, NULL, 'TUYỂN DỤNG - NHÂN VIÊN KINH DOANH', 'Service Obt Vietnam', NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(62, 1, 0, 'TUYỂN DỤNG - KẾ TOÁN TỔNG HỢP', 'Service Obt Vietnam', NULL, NULL, '<p>Do đang c&oacute; nhu cầu mở rộng quy m&ocirc;, OBT VN cần tuyển dụng lực lượng nh&acirc;n sự theo th&ocirc;ng tin chi tiết n&ecirc;u dưới:</p>', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', NULL, NULL, '<div><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"color:#3498db;\"><strong>+ M&ocirc; tả c&ocirc;ng việc:</strong></span><br />\r\n- Lập b&aacute;o c&aacute;o thuế, b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh h&agrave;ng th&aacute;ng, qu&yacute;, năm;<br />\r\n- Quyết to&aacute;n thuế thu nhập c&aacute; nh&acirc;n, thuế thu nhập doanh nghiệp;<br />\r\n- L&agrave;m việc trực tiếp với c&aacute;c C&ocirc;ng ty nước ngo&agrave;i, Văn ph&ograve;ng đại diện nước ngo&agrave;i theo y&ecirc;u cầu của C&ocirc;ng ty;<br />\r\n- Chi tiết c&ocirc;ng việc sẽ trao đổi th&ecirc;m khi phỏng vấn.<br />\r\n<span style=\"color:#3498db;\"><strong>+ Thu nhập v&agrave; chế độ đ&atilde;i ngộ của C&ocirc;ng ty:</strong></span><br />\r\n- Thu nhập:<br />\r\n- Lương: thỏa thuận<br />\r\n- Thử việc: 02 th&aacute;ng<br />\r\n<span style=\"color:#3498db;\"><strong>+ Chế độ đ&atilde;i ngộ:</strong></span><br />\r\n- Lương tháng thứ 13 v&agrave; thưởng theo năng lực v&agrave; kết quả c&ocirc;ng việc<br />\r\n- Được tham gia Bảo hiểm x&atilde; hội, Bảo hiểm Y tế, Bảo hiểm thất nghiệp theo quy định của ph&aacute;p luật hiện h&agrave;nh<br />\r\n- Được hỗ trợ, hướng dẫn để n&acirc;ng cao năng lực trong qu&aacute; tr&igrave;nh l&agrave;m việc<br />\r\n- Được tham gia c&aacute;c hoạt động teambuilding v&agrave;o c&aacute;c dịp như: Sinh nhật C&ocirc;ng ty, 8/3, Trung thu, 2/9, 20/10, tổng kết cuối năm,&hellip;</span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Kinh nghiệm / Kỹ năng chi tiết</span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"color:#3498db;\"><strong>+ Y&ecirc;u cầu bắt buộc:</strong></span><br />\r\n- Giới t&iacute;nh: Nam/ Nữ.<br />\r\n- Độ tuổi: Dưới 30 tuổi<br />\r\n- Học vấn: Tốt nghiệp Đại học trở l&ecirc;n chuy&ecirc;n ng&agrave;nh Kế to&aacute;n &ndash; Kiểm to&aacute;n.<br />\r\n- Nắm vững kiến thức, chuy&ecirc;n m&ocirc;n v&agrave; nghiệp vụ kế to&aacute;n.<br />\r\n- C&oacute; &iacute;t nhất 03 năm kinh nghiệm l&agrave;m việc trong lĩnh vực kế to&aacute;n &ndash; thuế, ưu ti&ecirc;n ứng vi&ecirc;n đ&atilde; kinh nghiệm l&agrave;m việc trong c&ocirc;ng ty kiểm to&aacute;n hoặc c&oacute; Chứng chỉ h&agrave;nh nghề kế to&aacute;n vi&ecirc;n.<br />\r\n- Th&agrave;nh thạo c&aacute;c kỹ năng vi t&iacute;nh văn ph&ograve;ng, phần mềm kế to&aacute;n: Misa, Smart Pro, giỏi Excel.<br />\r\n- C&oacute; khả năng l&agrave;m việc độc lập, trung thực v&agrave; chịu được &aacute;p lực cao trong c&ocirc;ng việc.<br />\r\n- Cẩn thận, ch&iacute;nh x&aacute;c v&agrave; nắm bắt c&ocirc;ng việc nhanh ch&oacute;ng.</span></span></div>', '<p>The house on the outskirts of Hanoi is divided into 3 main zones, inspired by the traditional three-room house of the northern countryside.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/6_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>On a 560-square-meter plot of land in Thach That, Hanoi, architects Ta Dinh Van, Nguyen Nhu Thanh, Nguyen Hoang Tu (365 design) have designed and constructed a 200-square-meter house, the rest are used as view. Between the three areas of the house are courtyards and gardens.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/7-1535007559_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Following the trend of bringing nature and trees to life, the house is designed with maximum openings, helping people to approach and get close to nature.</p>\r\n\r\n<div style=\"text-align:center\">\r\n<figure class=\"image\" style=\"display:inline-block\"><img alt=\"\" height=\"453\" src=\"/2021_obtvietnam/datafiles/images/du-an/CricketHouse-day-01_680x0.jpg\" width=\"680\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>Sharing with Archdaily, the world&#39;s leading architecture website, the group of architects said, after a lot of ideas on paper, this is a project that they spent a lot of time and enthusiasm to complete. health.</p>', NULL, NULL, '', '', NULL, NULL, 'dich-vu-obt-viet-nam-cp-358761619144854', '', 1, '1621930357_2-1.jpg', NULL, NULL, '', 'datafiles', 1619155519, 0, 4, 5, 0, 0, 'TUYỂN DỤNG - KẾ TOÁN TỔNG HỢP', 'Service Obt Vietnam', NULL, NULL, 'TUYỂN DỤNG - KẾ TOÁN TỔNG HỢP', 'Service Obt Vietnam', NULL, NULL, 'TUYỂN DỤNG - KẾ TOÁN TỔNG HỢP', 'Service Obt Vietnam', NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(63, 1, 0, 'CÔNG TY TNHH TM DV OBT VIỆT NAM', 'OBT TRADING VIETNAM CO., LTD', NULL, NULL, '', '', NULL, NULL, '<div><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>Địa chỉ:</strong>&nbsp;130, Phan Đ&igrave;nh Ph&ugrave;ng, Phường 2, Quận B&igrave;nh Thạnh</span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>Điện thoại:</strong>&nbsp;0797 518 166</span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>Email:</strong>&nbsp;orbitavn-marketing@gmail.com</span></span></div>', '<p><strong>Address:</strong>&nbsp;B1-028 / 1, Hoa Long Quarter, Vinh Phu Ward, Thuan An Town, Binh Duong Province</p>\r\n\r\n<p><strong>Tax code:</strong>&nbsp;0315542366</p>\r\n\r\n<p><strong>Phone:</strong>&nbsp;<a href=\"tel:0817 826 879\">0817 826 879</a></p>\r\n\r\n<p><strong>Email:</strong>&nbsp;<a href=\"mailto:jasonthanhhaimai@gmail.com\">jasonthanhhaimai@gmail.com</a></p>', NULL, NULL, '', '', NULL, NULL, '26a5258d9e821a119802dbe56307ef17', '', 1, NULL, NULL, NULL, '', 'datafiles', 1619155410, 0, 1, 6, 0, 0, 'CÔNG TY TNHH TM DV OBT VIỆT NAM', 'OBT TRADING VIETNAM CO., LTD', NULL, NULL, 'CÔNG TY TNHH TM DV OBT VIỆT NAM', 'OBT TRADING VIETNAM CO., LTD', NULL, NULL, 'CÔNG TY TNHH TM DV OBT VIỆT NAM', 'OBT TRADING VIETNAM CO., LTD', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(64, 1, 0, 'PHÚ QUỐC', 'Nha Trang', NULL, NULL, '', '', NULL, NULL, '<div><span style=\"color:#2c3e50;\"><span style=\"font-size:12px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Số 88, N Trung Trực, P.An Ho&agrave;, KG</span></span></span></span></div>\r\n\r\n<div><span style=\"color:#2c3e50;\"><span style=\"font-size:12px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">0797 518 166</span></span></span></div>\r\n\r\n<div><span style=\"color:#2c3e50;\"><span style=\"font-size:12px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">orbitavn-marketing@gmail.com</span></span></span></div>\r\n\r\n<div><span style=\"color:#2c3e50;\"><span style=\"font-size:12px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Google map (Hướng dẫn lộ tr&igrave;nh)</span></span></span></div>', '<p>Level 1, 290A Buoi Street, Vinh Phuc Ward, Ba Dinh District, Hanoi</p>\r\n\r\n<p><a href=\"tel:0961 110 750\">0961 110 750</a></p>\r\n\r\n<p><a href=\"mailto:jasonthanhhaimai@gmail.com\">jasonthanhhaimai@gmail.com</a></p>\r\n\r\n<p>Google map&nbsp;<a href=\"https://goo.gl/maps/S1K4a9RePGJtNPgy6\" target=\"_blank\">(xem đường đi)</a></p>', NULL, NULL, '', '', NULL, NULL, 'nha-trang', '', 2, NULL, NULL, NULL, '', 'datafiles', 1619145368, 0, 1, 7, 0, 0, 'Nha Trang', 'Nha Trang', NULL, NULL, 'Nha Trang', 'Nha Trang', NULL, NULL, 'Nha Trang', 'Nha Trang', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 0, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(65, 1, 0, 'NHA TRANG', 'Danang', NULL, NULL, '', '', NULL, NULL, '<div><a href=\"https://www.google.com/maps/place/80+V%C3%A2n+%C4%90%E1%BB%93n,+Ph%C6%B0%E1%BB%9Bc+Ho%C3%A0,+Th%C3%A0nh+ph%E1%BB%91+Nha+Trang,+Kh%C3%A1nh+H%C3%B2a,+Vi%E1%BB%87t+Nam/@12.2350129,109.1795564,17z/data=!3m1!4b1!4m5!3m4!1s0x31705d8f4a1788c5:0x128d7d44ddadc1c3!8m2!3d12.2350129!4d109.1817451?hl=vi-VN\"><span style=\"color:#003399;\"><span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">Số 80, V&acirc;n Đồn, P.Phước H&ograve;a,</span></span></span></a></div>\r\n\r\n<div><a href=\"https://www.google.com/maps/place/80+V%C3%A2n+%C4%90%E1%BB%93n,+Ph%C6%B0%E1%BB%9Bc+Ho%C3%A0,+Th%C3%A0nh+ph%E1%BB%91+Nha+Trang,+Kh%C3%A1nh+H%C3%B2a,+Vi%E1%BB%87t+Nam/@12.2350129,109.1795564,17z/data=!3m1!4b1!4m5!3m4!1s0x31705d8f4a1788c5:0x128d7d44ddadc1c3!8m2!3d12.2350129!4d109.1817451?hl=vi-VN\"><span style=\"color:#003399;\"><span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"></span></span><span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">TP. Nha Trang</span></span></span></a></div>\r\n\r\n<div><span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"></span></span>\r\n\r\n<div><a href=\"TEL:0971 570 707\"><span style=\"color:#003399;\"><span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">0971 570 707</span></span></span></a></div>\r\n\r\n<div><a href=\"mailto:obttech.marketing@gmail.com?subject=EMAILS%20FROM%20WEBSITE\"><span style=\"color:#003399;\"><span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">obttech.marketing@gmail.com</span></span></span></a></div>\r\n<span style=\"font-size:12px;\"><span style=\"color:#2c3e50;\"></span></span></div>', '<p>Level 1, 290A Buoi Street, Vinh Phuc Ward, Ba Dinh District, Hanoi</p>\r\n\r\n<p><a href=\"tel:0961 110 750\">0961 110 750</a></p>\r\n\r\n<p><a href=\"mailto:jasonthanhhaimai@gmail.com\">jasonthanhhaimai@gmail.com</a></p>\r\n\r\n<p>Google map&nbsp;<a href=\"https://goo.gl/maps/S1K4a9RePGJtNPgy6\" target=\"_blank\">(xem đường đi)</a></p>', NULL, NULL, '', '', NULL, NULL, 'nha-trang-77', '', 4, '', NULL, NULL, '', 'datafiles', 1619146110, 0, 1, 7, 0, 0, 'NHA TRANG', 'Danang', NULL, NULL, 'NHA TRANG', 'Danang', NULL, NULL, 'NHA TRANG', 'Danang', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(66, 1, 0, 'ĐÀ NẴNG', 'Hanoi', NULL, NULL, '', '', NULL, NULL, '<div><a href=\"https://www.google.com/maps/place/30+Nguy%E1%BB%85n+Tri+Ph%C6%B0%C6%A1ng,+Ch%C3%ADnh+Gi%C3%A1n,+Thanh+Kh%C3%AA,+%C4%90%C3%A0+N%E1%BA%B5ng+550000,+Vi%E1%BB%87t+Nam/@16.0638208,108.2010609,17z/data=!3m1!4b1!4m5!3m4!1s0x314219b2961aa1eb:0x941f8af6239e6a4c!8m2!3d16.0638208!4d108.2032496?hl=vi-VN\"><span style=\"color:#000099;\"><span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">Số 30 Nguyễn Tri Phương,</span></span></span></a></div>\r\n\r\n<div><a href=\"https://www.google.com/maps/place/30+Nguy%E1%BB%85n+Tri+Ph%C6%B0%C6%A1ng,+Ch%C3%ADnh+Gi%C3%A1n,+Thanh+Kh%C3%AA,+%C4%90%C3%A0+N%E1%BA%B5ng+550000,+Vi%E1%BB%87t+Nam/@16.0638208,108.2010609,17z/data=!3m1!4b1!4m5!3m4!1s0x314219b2961aa1eb:0x941f8af6239e6a4c!8m2!3d16.0638208!4d108.2032496?hl=vi-VN\"><span style=\"color:#000099;\"><span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">Q.Thanh Kh&ecirc;,</span></span></span></a><span style=\"color:#000099;\">&nbsp;</span><a href=\"https://www.google.com/maps/place/30+Nguy%E1%BB%85n+Tri+Ph%C6%B0%C6%A1ng,+Ch%C3%ADnh+Gi%C3%A1n,+Thanh+Kh%C3%AA,+%C4%90%C3%A0+N%E1%BA%B5ng+550000,+Vi%E1%BB%87t+Nam/@16.0638208,108.2010609,17z/data=!3m1!4b1!4m5!3m4!1s0x314219b2961aa1eb:0x941f8af6239e6a4c!8m2!3d16.0638208!4d108.2032496?hl=vi-VN\"><span style=\"color:#000099;\"><span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"></span></span><span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">TP. Đ&agrave; Nẵng</span></span></span></a></div>\r\n\r\n<div>\r\n<div><a href=\"TEL:0971 570 707\"><span style=\"color:#000099;\"><span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">0971 570 707</span></span></span></a></div>\r\n\r\n<div><a href=\"mailto:obttech.marketing@gmail.com?subject=EMAILS%20FROM%20WEBSITE\"><span style=\"color:#000099;\"><span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">obttech.marketing@gmail.com</span></span></span></a></div>\r\n</div>', '<p>Level 1, 290A Buoi Street, Vinh Phuc Ward, Ba Dinh District, Hanoi</p>\r\n\r\n<p><a href=\"tel:0961 110 750\">0961 110 750</a></p>\r\n\r\n<p><a href=\"mailto:jasonthanhhaimai@gmail.com\">jasonthanhhaimai@gmail.com</a></p>\r\n\r\n<p>Google map&nbsp;<a href=\"https://goo.gl/maps/S1K4a9RePGJtNPgy6\" target=\"_blank\">(xem đường đi)</a></p>', NULL, NULL, '', '', NULL, NULL, 'da-nang', '', 5, '', NULL, NULL, '', 'datafiles', 1619163123, 0, 1, 7, 0, 0, 'Đà Nẵng', 'Hanoi', NULL, NULL, 'Đà Nẵng', 'Hanoi', NULL, NULL, 'Đà Nẵng', 'Hanoi', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(101, 1, 0, 'TUYỂN DỤNG - NHÂN VIÊN KINH DOANH', '', NULL, NULL, '<p>Do đang c&oacute; nhu cầu mở rộng quy m&ocirc;, OBT VN cần tuyển dụng lực lượng nh&acirc;n sự theo th&ocirc;ng tin chi tiết n&ecirc;u dưới:</p>', '', NULL, NULL, '<div><span style=\"color:#3498db\"><strong><span style=\"font-size:14px\">+ M&ocirc; tả c&ocirc;ng việc:</span></strong></span><span style=\"color:#2c3e50\"><span style=\"font-size:14px\"></span></span></div>\r\n\r\n<div><span style=\"color:#2c3e50\"><span style=\"font-size:14px\">- Quản l&yacute; dịch vụ, theo d&otilde;i biến động doanh thu. Gi&aacute;m s&aacute;t chất lượng dịch vụ thường xuy&ecirc;n<br />\r\n- Thiết lập, duy tr&igrave; mối quan hệ với đối t&aacute;c, kh&aacute;ch h&agrave;ng<br />\r\n- Truyền th&ocirc;ng marketing ph&aacute;t triển kinh doanh.<br />\r\n- Nghi&ecirc;n cứu thị trường, đề xuất phương &aacute;n tăng trưởng b&aacute;n h&agrave;ng</span></span></div>\r\n\r\n<div><span style=\"color:#3498db\"><span style=\"font-size:14px\"><strong>+ Mức lương: Thỏa thuận</strong></span></span></div>\r\n\r\n<div><span style=\"color:#3498db\"><span style=\"font-size:14px\"><strong>+ Chế độ kh&aacute;c:</strong></span></span><span style=\"color:#2c3e50\"><span style=\"font-size:14px\"><br />\r\n- Thưởng kinh doanh, thưởng s&aacute;ng kiến, thưởng th&aacute;ng 13, th&acirc;m ni&ecirc;n c&ocirc;ng t&aacute;c, thăng tiến<br />\r\n- Được hưởng c&aacute;c chế độ theo quy đinh của nh&agrave; nước. Bảo hiểm theo quy định<br />\r\n- M&ocirc;i trường l&agrave;m việc ổn định, trẻ trung, s&aacute;ng tạo.<br />\r\n- Đ&agrave;o tạo chuy&ecirc;n m&ocirc;n<br />\r\n- C&oacute; chế độ nghỉ ph&eacute;p đặc biệt<br />\r\n- Du lịch mỗi năm, thưởng c&aacute;c dịp lễ tết<br />\r\n- Phục vụ ăn trưa miễn ph&iacute; tại căng tin</span></span></div>\r\n\r\n<div><span style=\"color:#3498db\"><strong><span style=\"font-size:14px\">+ Kinh nghiệm / Kỹ năng chi tiết:</span></strong></span></div>\r\n\r\n<div><span style=\"color:#2c3e50\"><span style=\"font-size:14px\">- Ứng vi&ecirc;n: Nam/Nữ tuổi từ 20 đến 30;<br />\r\n- Tốt nghiệp c&aacute;c trường Trung Cấp, Cao Đẳng, Đại Học chuy&ecirc;n ng&agrave;nh: Kinh doanh, Quản trị kinh doanh, Thương mại, CNTT .<br />\r\n- Ưu ti&ecirc;n người c&oacute; kinh nghiệm l&agrave;m SALE phần mềm, Dự &aacute;n C&ocirc;ng nghệ th&ocirc;ng tin, ứng dụng di động, thị trường giải tr&iacute;<br />\r\n- Th&aacute;i độ l&agrave;m việc t&iacute;ch cực, tr&aacute;ch nhiệm, ham học hỏi</span></span></div>', '', NULL, NULL, '', '', NULL, NULL, 'tuyen-dung-ky-thuat-vien-dien-dien-tu-124', '', 5, '1623160606_2-1.jpg', NULL, NULL, '', 'datafiles', 1623160641, 0, 2, 5, 0, 0, 'TUYỂN DỤNG - KỸ THUẬT VIÊN ĐIỆN - ĐIỆN TỬ', '', NULL, NULL, 'TUYỂN DỤNG - KỸ THUẬT VIÊN ĐIỆN - ĐIỆN TỬ', '', NULL, NULL, 'TUYỂN DỤNG - KỸ THUẬT VIÊN ĐIỆN - ĐIỆN TỬ', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(102, 1, 0, 'TUYỂN DỤNG - NHÂN VIÊN IT', '', NULL, NULL, '<p>Do đang c&oacute; nhu cầu mở rộng quy m&ocirc;, OBT VN cần tuyển dụng lực lượng nh&acirc;n sự theo th&ocirc;ng tin chi tiết n&ecirc;u dưới:</p>', '', NULL, NULL, '<div><span style=\"color:#3498db\"><strong><span style=\"font-size:14px\">+ M&ocirc; tả c&ocirc;ng việc:</span></strong></span><span style=\"color:#2c3e50\"><span style=\"font-size:14px\"></span></span></div>\r\n\r\n<div><span style=\"color:#2c3e50\"><span style=\"font-size:14px\">- Quản l&yacute; dịch vụ, theo d&otilde;i biến động doanh thu. Gi&aacute;m s&aacute;t chất lượng dịch vụ thường xuy&ecirc;n<br />\r\n- Thiết lập, duy tr&igrave; mối quan hệ với đối t&aacute;c, kh&aacute;ch h&agrave;ng<br />\r\n- Truyền th&ocirc;ng marketing ph&aacute;t triển kinh doanh.<br />\r\n- Nghi&ecirc;n cứu thị trường, đề xuất phương &aacute;n tăng trưởng b&aacute;n h&agrave;ng</span></span></div>\r\n\r\n<div><span style=\"color:#3498db\"><span style=\"font-size:14px\"><strong>+ Mức lương: Thỏa thuận</strong></span></span></div>\r\n\r\n<div><span style=\"color:#3498db\"><span style=\"font-size:14px\"><strong>+ Chế độ kh&aacute;c:</strong></span></span><span style=\"color:#2c3e50\"><span style=\"font-size:14px\"><br />\r\n- Thưởng kinh doanh, thưởng s&aacute;ng kiến, thưởng th&aacute;ng 13, th&acirc;m ni&ecirc;n c&ocirc;ng t&aacute;c, thăng tiến<br />\r\n- Được hưởng c&aacute;c chế độ theo quy đinh của nh&agrave; nước. Bảo hiểm theo quy định<br />\r\n- M&ocirc;i trường l&agrave;m việc ổn định, trẻ trung, s&aacute;ng tạo.<br />\r\n- Đ&agrave;o tạo chuy&ecirc;n m&ocirc;n<br />\r\n- C&oacute; chế độ nghỉ ph&eacute;p đặc biệt<br />\r\n- Du lịch mỗi năm, thưởng c&aacute;c dịp lễ tết<br />\r\n- Phục vụ ăn trưa miễn ph&iacute; tại căng tin</span></span></div>\r\n\r\n<div><span style=\"color:#3498db\"><strong><span style=\"font-size:14px\">+ Kinh nghiệm / Kỹ năng chi tiết:</span></strong></span></div>\r\n\r\n<div><span style=\"color:#2c3e50\"><span style=\"font-size:14px\">- Ứng vi&ecirc;n: Nam/Nữ tuổi từ 20 đến 30;<br />\r\n- Tốt nghiệp c&aacute;c trường Trung Cấp, Cao Đẳng, Đại Học chuy&ecirc;n ng&agrave;nh: Kinh doanh, Quản trị kinh doanh, Thương mại, CNTT .<br />\r\n- Ưu ti&ecirc;n người c&oacute; kinh nghiệm l&agrave;m SALE phần mềm, Dự &aacute;n C&ocirc;ng nghệ th&ocirc;ng tin, ứng dụng di động, thị trường giải tr&iacute;<br />\r\n- Th&aacute;i độ l&agrave;m việc t&iacute;ch cực, tr&aacute;ch nhiệm, ham học hỏi</span></span></div>', '', NULL, NULL, '', '', NULL, NULL, 'tuyen-dung-nhan-vien-it', '', 3, '1623160689_2-1.jpg', NULL, NULL, '', 'datafiles', 1623160689, 0, 1, 5, 0, 0, 'TUYỂN DỤNG - NHÂN VIÊN IT', '', NULL, NULL, 'TUYỂN DỤNG - NHÂN VIÊN IT', '', NULL, NULL, 'TUYỂN DỤNG - NHÂN VIÊN IT', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(69, 1, 0, 'HÀ NỘI', 'Hanoi', NULL, NULL, '', '', NULL, NULL, '<div><font color=\"#003399\" face=\"Tahoma, Geneva, sans-serif\"><span style=\"font-size: 12px;\"><b>Cập nhật trong thời gian sớm nhất</b></span></font></div>\r\n\r\n<div><span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"color:#2c3e50;\"><span style=\"color:#2c3e50;\"></span></span></span></span></div>', '<p>Level 1, 290A Buoi Street, Vinh Phuc Ward, Ba Dinh District, Hanoi</p>\r\n\r\n<p><a href=\"tel:0961 110 750\">0961 110 750</a></p>\r\n\r\n<p><a href=\"mailto:jasonthanhhaimai@gmail.com\">jasonthanhhaimai@gmail.com</a></p>\r\n\r\n<p>Google map&nbsp;<a href=\"https://goo.gl/maps/S1K4a9RePGJtNPgy6\" target=\"_blank\">(xem đường đi)</a></p>', NULL, NULL, '', '', NULL, NULL, 'ha-noi-cp-745521621225014', '', 1, '', NULL, NULL, '', 'datafiles', 1619144292, 0, 1, 7, 0, 0, 'Hà Nội', 'Hanoi', NULL, NULL, 'Hà Nội', 'Hanoi', NULL, NULL, 'Hà Nội', 'Hanoi', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0),
(104, 1, 7, 'AUTO GATE 4', '', NULL, NULL, '<p><strong><span style=\"font-size:18px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#3300ff\">TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</span></span><span style=\"color:#3300ff\"><span style=\"background-color:#ffff99\"></span></span></span></span></strong></p>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: </span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều cao: 1200 - 1600 mm</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều rộng: Theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều rộng khung 500 mm; Rộng phủ b&igrave; 640 mm</span></span></div>', '', NULL, NULL, '<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: </span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều cao: 1200 - 1600 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều rộng: Theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</span></div>\r\n\r\n<div><span style=\"font-size:14px\">. Chiều rộng khung 500 mm; Rộng phủ b&igrave; 640 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Khung ch&iacute;nh Inox hộp 40&times;40 (D&agrave;y 1 mm); Khoảng c&aacute;ch giữa hai khung l&agrave; 400 &plusmn; 20 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Li&ecirc;n kết khung ch&iacute;nh l&agrave; c&aacute;c nan ch&eacute;o Inox hộp 25 x 25 (D&agrave;y 0,8 mm)</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> B&aacute;nh xe bằng nhựa đặc chủng c&oacute; đ&uacute;c v&ograve;ng bi ở trong</span><span style=\"font-size:14px\"></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Ray dẫn hướng bằng sắt đặc 20&times;20 mm</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Nguồn điện: Động cơ 370W 1 pha</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Phụ kiện đi k&egrave;m: Điều khiển b&agrave;n x 1; Điều khiển từ xa x 2.</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chất liệu: Inox 304</span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Bảo h&agrave;nh 12 th&aacute;ng</span></div>', '', NULL, NULL, '', '', NULL, NULL, 'cong-tu-dong-1', '13', 32, '1623456013_TEST-3.png', NULL, NULL, '', 'datafiles', 1623391251, 0, 7, 2, 0, 0, 'CONG TU DONG 1', '', NULL, NULL, 'CONG TU DONG 1', '', NULL, NULL, 'CONG TU DONG 1', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0);
INSERT INTO `lh_baiviet` (`id`, `id_user`, `id_parent`, `tenbaiviet_vi`, `tenbaiviet_en`, `tenbaiviet_cn`, `tenbaiviet_jp`, `mota_vi`, `mota_en`, `mota_cn`, `mota_jp`, `noidung_vi`, `noidung_en`, `noidung_cn`, `noidung_jp`, `tags_vi`, `tags_en`, `tags_cn`, `tags_jp`, `seo_name`, `id_parent_muti`, `catasort`, `icon`, `icon_hover`, `dowload`, `dowload_text`, `duongdantin`, `ngaydang`, `capnhat`, `soluotxem`, `step`, `giatien`, `giakm`, `seo_title_vi`, `seo_title_en`, `seo_title_cn`, `seo_title_jp`, `seo_keywords_vi`, `seo_keywords_en`, `seo_keywords_cn`, `seo_keywords_jp`, `seo_description_vi`, `seo_description_en`, `seo_description_cn`, `seo_description_jp`, `opt_km`, `opt`, `opt1`, `opt2`, `opt3`, `opt4`, `opt5`, `top_video`, `p1`, `p2`, `p3`, `link_video`, `num_1`, `num_2`, `num_3`, `num_4`, `showhi`, `tinh_nang`, `thuoc_tinh_1_vi`, `thuoc_tinh_1_en`, `thuoc_tinh_1_cn`, `thuoc_tinh_1_jp`, `thuoc_tinh_2_vi`, `thuoc_tinh_2_en`, `thuoc_tinh_2_cn`, `thuoc_tinh_2_jp`, `thuoc_tinh_3_vi`, `thuoc_tinh_3_en`, `thuoc_tinh_3_cn`, `thuoc_tinh_3_jp`, `google_map`, `is_dongdau`, `time_dongdau`) VALUES
(105, 1, 7, 'AUTO GATE 2', '', NULL, NULL, '<p><span style=\"color:#000099;\"><strong>TH&Ocirc;NG SỐ KỸ THUẬT CƠ BẢN:</strong></span></p>\r\n\r\n<p><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước:</p>\r\n\r\n<p>. Chiều cao: 1200 - 1600 mm</p>\r\n\r\n<p>. Chiều rộng: Theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>. Chiều rộng khung 500 mm; Rộng phủ b&igrave; 640 mm</p>', '', NULL, NULL, '<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> K&iacute;ch thước: </span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều cao: 1200 - 1600 mm</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều rộng: Theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">. Chiều rộng khung 500 mm; Rộng phủ b&igrave; 640 mm</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Khung ch&iacute;nh Inox hộp 40&times;40 (D&agrave;y 1 mm); Khoảng c&aacute;ch giữa hai khung l&agrave; 400 &plusmn; 20 mm</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Li&ecirc;n kết khung ch&iacute;nh l&agrave; c&aacute;c nan ch&eacute;o Inox hộp 25 x 25 (D&agrave;y 0,8 mm)</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> B&aacute;nh xe bằng nhựa đặc chủng c&oacute; đ&uacute;c v&ograve;ng bi ở trong</span></span><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"></span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Ray dẫn hướng bằng sắt đặc 20&times;20 mm</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Nguồn điện: Động cơ 370W 1 pha</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Phụ kiện đi k&egrave;m: Điều khiển b&agrave;n x 1; Điều khiển từ xa x 2.</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Chất liệu: Inox 304</span></span></div>\r\n\r\n<div><span style=\"font-size:14px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"><span class=\"fa fa-plus-circle\" style=\"color:rgb(0, 0, 153);\"></span> Bảo h&agrave;nh 12 th&aacute;ng</span></span></div>', '', NULL, NULL, '', '', NULL, NULL, 'cong-tu-dong-1-130', '13', 34, '1623455515_CTD1-TEST4.png', NULL, NULL, '', 'datafiles', 1623391223, 0, 7, 2, 0, 0, 'BARRIER TỰ ĐỘNG', '', NULL, NULL, 'BARRIER TỰ ĐỘNG', '', NULL, NULL, 'BARRIER TỰ ĐỘNG', '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 1, '', '', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lh_baiviet_chitiet`
--

CREATE TABLE `lh_baiviet_chitiet` (
  `id` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `noidung_vi` text DEFAULT NULL,
  `noidung_en` text DEFAULT NULL,
  `step` int(11) NOT NULL DEFAULT 0,
  `seo_name` varchar(255) DEFAULT NULL,
  `catasort` int(11) NOT NULL DEFAULT 0,
  `showhi` tinyint(1) NOT NULL DEFAULT 1,
  `duongdantin` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `dowload` varchar(255) DEFAULT NULL,
  `dowload_text` varchar(255) DEFAULT NULL,
  `seo_title_vi` varchar(255) DEFAULT NULL,
  `seo_title_en` varchar(255) DEFAULT NULL,
  `seo_keywords_vi` varchar(255) DEFAULT NULL,
  `seo_keywords_en` varchar(255) DEFAULT NULL,
  `seo_description_vi` varchar(255) DEFAULT NULL,
  `seo_description_en` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lh_baiviet_img`
--

CREATE TABLE `lh_baiviet_img` (
  `id` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `icon` varchar(255) DEFAULT NULL,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `duongdantin` varchar(255) DEFAULT NULL,
  `the_loai` tinyint(4) NOT NULL DEFAULT 0,
  `is_dongdau` tinyint(4) NOT NULL DEFAULT 0,
  `time_dongdau` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_baiviet_img`
--

INSERT INTO `lh_baiviet_img` (`id`, `id_parent`, `icon`, `tenbaiviet_vi`, `tenbaiviet_en`, `sort`, `duongdantin`, `the_loai`, `is_dongdau`, `time_dongdau`) VALUES
(25, 88, '1622719241_1-2004141051194C.jpg', NULL, NULL, 2, 'datafiles', 0, 0, 0),
(17, 3, '1622011388_1-200414101255423.jpg', NULL, NULL, 1, 'datafiles', 0, 0, 0),
(16, 3, '1622011384_1-200414101241330-1.jpg', NULL, NULL, 0, 'datafiles', 0, 0, 0),
(21, 88, '1622718642_1-200414105134405.jpg', NULL, NULL, 0, 'datafiles', 0, 0, 0),
(24, 88, '1622719235_1-200414105101244.jpg', NULL, NULL, 1, 'datafiles', 0, 0, 0),
(26, 88, '1622719245_1-20041410515J63.jpg', NULL, NULL, 3, 'datafiles', 0, 0, 0),
(32, 89, '1623041895_5300-WS-1.png', NULL, NULL, 0, 'datafiles', 0, 0, 0),
(31, 74, '1623041728_020-WS.png', NULL, NULL, 0, 'datafiles', 0, 0, 0),
(33, 81, '1623042011_6800-WS-2.png', NULL, NULL, 0, 'datafiles', 0, 0, 0),
(34, 93, '1623042074_7800-WS-1.png', NULL, NULL, 0, 'datafiles', 0, 0, 0),
(35, 92, '1623042132_080-WS-1.png', NULL, NULL, 0, 'datafiles', 0, 0, 0),
(36, 91, '1623042189_070-WS-1.png', NULL, NULL, 0, 'datafiles', 0, 0, 0),
(37, 80, '1623042237_060-WS-1.png', NULL, NULL, 0, 'datafiles', 0, 0, 0),
(38, 71, '1623042280_060-WS-1.png', NULL, NULL, 0, 'datafiles', 0, 0, 0),
(39, 94, '1623042359_8800-WS-1.png', NULL, NULL, 0, 'datafiles', 0, 0, 0),
(40, 97, '1623043294_013.jpg', NULL, NULL, 0, 'datafiles', 0, 0, 0),
(45, 90, '1623046143_2300-WS-1.png', NULL, NULL, 0, 'datafiles', 0, 0, 0),
(48, 74, '1623046678_020-WS-1.png', NULL, NULL, 1, 'datafiles', 0, 0, 0),
(50, 98, '1623048952_GX6.png', NULL, NULL, 0, 'datafiles', 0, 0, 0),
(51, 98, '1623049960_196103-fix-04.png', NULL, NULL, 1, 'datafiles', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lh_baiviet_nhomgia`
--

CREATE TABLE `lh_baiviet_nhomgia` (
  `id` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `catasort` int(11) NOT NULL DEFAULT 0,
  `showhi` tinyint(4) NOT NULL DEFAULT 1,
  `step` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lh_baiviet_sao`
--

CREATE TABLE `lh_baiviet_sao` (
  `id` int(11) NOT NULL,
  `id_baiviet` int(11) NOT NULL DEFAULT 0,
  `sao_1` int(11) NOT NULL DEFAULT 0,
  `sao_2` int(11) NOT NULL DEFAULT 0,
  `sao_3` int(11) NOT NULL DEFAULT 0,
  `sao_4` int(11) NOT NULL DEFAULT 0,
  `sao_5` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lh_baiviet_select_nhomgia`
--

CREATE TABLE `lh_baiviet_select_nhomgia` (
  `id` int(11) NOT NULL,
  `id_baiviet` int(11) NOT NULL DEFAULT 0,
  `id_nhomgia` int(11) NOT NULL DEFAULT 0,
  `id_val` varchar(255) DEFAULT NULL,
  `showhi` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lh_baiviet_select_tinhnang`
--

CREATE TABLE `lh_baiviet_select_tinhnang` (
  `id` int(11) NOT NULL,
  `id_baiviet` int(11) NOT NULL DEFAULT 0,
  `id_tinhnang` int(11) NOT NULL DEFAULT 0,
  `id_val` varchar(255) DEFAULT NULL,
  `id_tinhnang_2` int(11) NOT NULL DEFAULT 0,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `gia` int(11) NOT NULL DEFAULT 0,
  `mota_vi` varchar(255) DEFAULT NULL,
  `mota_en` varchar(255) DEFAULT NULL,
  `loaihienthi` tinyint(4) NOT NULL DEFAULT 0,
  `duongdantin` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `showhi` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lh_baiviet_thuoctinh`
--

CREATE TABLE `lh_baiviet_thuoctinh` (
  `id` bigint(20) NOT NULL,
  `id_sp` int(11) NOT NULL DEFAULT 0,
  `phien_ban` mediumtext DEFAULT NULL,
  `gia` int(11) NOT NULL DEFAULT 0,
  `catasort` int(11) NOT NULL DEFAULT 0,
  `showhi` tinyint(1) NOT NULL DEFAULT 1,
  `key_update` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lh_baiviet_tinhnang`
--

CREATE TABLE `lh_baiviet_tinhnang` (
  `id` int(11) NOT NULL,
  `id_kietxuat` int(11) NOT NULL DEFAULT 0,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `tenbaiviet_cn` varchar(255) DEFAULT NULL,
  `tenbaiviet_jp` varchar(255) DEFAULT NULL,
  `catasort` int(11) NOT NULL DEFAULT 0,
  `loai_hienthi` tinyint(4) NOT NULL DEFAULT 0,
  `ma_mau` varchar(255) DEFAULT NULL,
  `showhi` tinyint(4) NOT NULL DEFAULT 1,
  `step` int(11) NOT NULL DEFAULT 0,
  `val_min` int(11) NOT NULL DEFAULT 0,
  `val_max` int(11) NOT NULL DEFAULT 0,
  `tieu_bieu` tinyint(4) NOT NULL DEFAULT 0,
  `noi_bat` tinyint(4) NOT NULL DEFAULT 0,
  `tim_kiem` tinyint(4) NOT NULL DEFAULT 0,
  `only_timkiem` tinyint(4) NOT NULL DEFAULT 0,
  `duongdantin` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `opt` tinyint(4) NOT NULL DEFAULT 0,
  `opt1` tinyint(4) NOT NULL DEFAULT 0,
  `opt2` tinyint(4) NOT NULL DEFAULT 0,
  `khong_xoa` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_baiviet_tinhnang`
--

INSERT INTO `lh_baiviet_tinhnang` (`id`, `id_kietxuat`, `id_parent`, `tenbaiviet_vi`, `tenbaiviet_en`, `tenbaiviet_cn`, `tenbaiviet_jp`, `catasort`, `loai_hienthi`, `ma_mau`, `showhi`, `step`, `val_min`, `val_max`, `tieu_bieu`, `noi_bat`, `tim_kiem`, `only_timkiem`, `duongdantin`, `icon`, `opt`, `opt1`, `opt2`, `khong_xoa`) VALUES
(1, 0, 0, 'Mới', 'New', NULL, NULL, 1, 1, '#f39c72', 1, 2, 0, 0, 0, 0, 0, 0, 'datafiles', '1621243743_icon_new-1.gif', 0, 0, 0, 0),
(2, 0, 0, 'Hot', 'Hot', NULL, NULL, 2, 1, '#ff3d3d', 1, 2, 0, 0, 0, 0, 0, 0, 'datafiles', '1621243753_hot-icon.gif', 0, 0, 0, 0),
(3, 0, 0, 'Khuyến mãi', 'Promotion', NULL, NULL, 3, 1, '#06dbcd', 1, 2, 0, 0, 0, 0, 0, 0, 'datafiles', '1621243795_khuyen-mai-icon.gif', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lh_banner`
--

CREATE TABLE `lh_banner` (
  `id` int(12) NOT NULL,
  `id_danhmuc` int(11) NOT NULL DEFAULT 0,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `tenbaiviet_cn` varchar(255) DEFAULT NULL,
  `tenbaiviet_jp` varchar(255) DEFAULT NULL,
  `mota_vi` varchar(255) DEFAULT NULL,
  `mota_en` varchar(255) DEFAULT NULL,
  `mota_cn` varchar(255) DEFAULT NULL,
  `mota_jp` varchar(255) DEFAULT NULL,
  `noidung_vi` mediumtext DEFAULT NULL,
  `noidung_en` mediumtext DEFAULT NULL,
  `noidung_cn` mediumtext DEFAULT NULL,
  `noidung_jp` mediumtext DEFAULT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `id_kietxuat` int(11) NOT NULL DEFAULT 0,
  `seo_name` varchar(255) DEFAULT NULL,
  `catasort` int(20) DEFAULT 0,
  `icon` varchar(200) DEFAULT NULL,
  `icon_1` varchar(255) DEFAULT NULL,
  `fontawesome` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `check_video` tinyint(1) NOT NULL DEFAULT 0,
  `ngaydang` int(11) NOT NULL DEFAULT 0,
  `showhi` tinyint(2) NOT NULL DEFAULT 1,
  `duongdantin` varchar(200) DEFAULT NULL,
  `p1` varchar(255) DEFAULT NULL,
  `p2` varchar(255) DEFAULT NULL,
  `blank` varchar(255) DEFAULT NULL,
  `tenbaiviet_kr` varchar(255) DEFAULT NULL,
  `tenbaiviet_in` varchar(255) DEFAULT NULL,
  `mota_kr` varchar(255) DEFAULT NULL,
  `mota_in` varchar(255) DEFAULT NULL,
  `noidung_kr` mediumtext DEFAULT NULL,
  `noidung_in` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='Bang chua catalag News' ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `lh_banner`
--

INSERT INTO `lh_banner` (`id`, `id_danhmuc`, `tenbaiviet_vi`, `tenbaiviet_en`, `tenbaiviet_cn`, `tenbaiviet_jp`, `mota_vi`, `mota_en`, `mota_cn`, `mota_jp`, `noidung_vi`, `noidung_en`, `noidung_cn`, `noidung_jp`, `id_parent`, `id_kietxuat`, `seo_name`, `catasort`, `icon`, `icon_1`, `fontawesome`, `video`, `check_video`, `ngaydang`, `showhi`, `duongdantin`, `p1`, `p2`, `blank`, `tenbaiviet_kr`, `tenbaiviet_in`, `mota_kr`, `mota_in`, `noidung_kr`, `noidung_in`) VALUES
(26, 0, 'PASSCODE - CARD - KEY', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 29, 0, 'hotel-smart-lock', 2, '1623376703_4.jpg', NULL, '', NULL, 0, 1623746770, 1, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 0, 'GX6', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 29, 0, '/bo-suu-tap', 0, '1623377492_6800-2.png', NULL, '', NULL, 0, 1623377492, 0, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 0, '1', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 16, 0, '', 4, '1622720072_web_BLOG_header-image__0018_bolia-posea.jpg', NULL, '', NULL, 0, 1622720072, 0, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(53, 0, '1', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 16, 0, '', 9, '1622686237_bloom-botanica-vase-big-herobannerfp-1600x6001600.jpg', NULL, '', NULL, 0, 1622686237, 0, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 0, '8', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 16, 0, 'smart-lock-p080', 6, '1622193766_9800-1.png', NULL, '', NULL, 0, 1623116646, 1, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 0, '7', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 16, 0, '', 2, '1622686631_Home_Staging_Blog.jpg', NULL, '', NULL, 0, 1622686631, 0, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 0, 'SHOWROOM', 'SHOWROOM', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 32, 0, '', 1, NULL, NULL, '', '1619142778_video.mp4', 0, 1619142778, 1, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 0, 'BỘ SƯU TẬP', 'Collection', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 26, 0, '/bo-suu-tap', 4, NULL, NULL, 'fa fa-suitcase', NULL, 0, 1622005177, 1, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 0, 'DỊCH VỤ', 'Service', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 26, 0, '/dich-vu', 2, NULL, NULL, 'fa fa-gears', NULL, 0, 1622005201, 1, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 0, 'DỰ ÁN', 'Project', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 26, 0, '/du-an', 3, NULL, NULL, 'fa fa-building', NULL, 0, 1623035657, 1, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 0, 'TUYỂN DỤNG', 'Recruitment', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 26, 0, '/tuyen-dung', 1, NULL, NULL, 'fa fa-user-plus', NULL, 0, 1622005151, 1, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 0, '1', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 16, 0, '', 12, '1622720607_Brass_Blog_feature_image_2048x.jpg', NULL, '', NULL, 0, 1622720607, 0, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 0, '1', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 16, 0, '', 7, '1622721033_bloom-botanica-steel-vases-herobanner-1600x6001600.jpg', NULL, '', NULL, 0, 1622721033, 0, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 0, '1', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 16, 0, '', 1, '1622686933_SHC-slider-05.jpg', NULL, '', NULL, 0, 1622686933, 0, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 0, 'Messenger', 'Facebook', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 30, 0, 'https://www.facebook.com/messages/t/ID_FB', 1, '1622006521_FB-MESSENGER.jpg', NULL, '', NULL, 0, 1622006521, 1, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 0, 'Zalo', 'Zalo', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 30, 0, 'https://zalo.me/so_dien_thoai', 2, '1622005613_ZALO.png', NULL, '', NULL, 0, 1622005692, 1, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 0, 'TEST-5', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 29, 0, 'san-pham-doi-tac-chien-luoc', 1, '1623376626_6.jpg', NULL, '', NULL, 0, 1623746577, 1, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(65, 0, '1', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 16, 0, '', 1, '1623222743_P070-1.png', NULL, '', NULL, 0, 1623222743, 0, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 0, '1', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 16, 0, 'smart-lock-p6800', 10, '1622194021_6800-2.png', NULL, '', NULL, 0, 1623116072, 1, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 0, '1', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 16, 0, '/smart-lock-gx6', 14, '1622193455_060-1.png', NULL, '', NULL, 0, 1623115963, 1, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 0, '1', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 16, 0, '', 8, '1622720996_FionaLynch_TarraWarra_03_Banner_2048x.jpg', NULL, '', NULL, 0, 1622720996, 0, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(54, 0, '1', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 16, 0, '', 13, '1622686257_duo-vases-herobannerfp-1600x6001600.jpg', NULL, '', NULL, 0, 1622686257, 0, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 0, '1', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 16, 0, '', 11, '1622720591_arrange-interior-design-3.jpg', NULL, '', NULL, 0, 1622720591, 0, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(58, 0, '1', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 16, 0, '', 3, '1622720103_web_BLOG_header-image__0015_bolia-trapeze.jpg', NULL, '', NULL, 0, 1622720103, 0, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 0, '1', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 16, 0, '', 5, '1622720626_chair-1600x600.jpg', NULL, '', NULL, 0, 1622720626, 0, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(66, 0, '1', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 16, 0, '', 1, '1623222990_P050-WS.png', NULL, '', NULL, 0, 1623222990, 0, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(67, 0, '1', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 16, 0, '', 1, '1623223090_9900-WS.png', NULL, '', NULL, 0, 1623223090, 0, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(68, 0, '1', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 16, 0, '', 1, '1623223160_7800-WS.png', NULL, '', NULL, 0, 1623223260, 0, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(69, 0, '1', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 29, 0, '', 3, '1623377261_7800-WS.png', NULL, '', NULL, 0, 1623377261, 1, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 0, '1', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 29, 0, 'apartment-smart-lock', 4, '1623377292_P050-WS.png', NULL, '', NULL, 0, 1623746482, 1, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 0, '1', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 29, 0, '', 0, '1623377342_060-1.png', NULL, '', NULL, 0, 1623377342, 0, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(72, 0, '1', '', NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 29, 0, '', 0, '1623377513_P070-1.png', NULL, '', NULL, 0, 1623377513, 0, 'datafiles', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lh_banner_danhmuc`
--

CREATE TABLE `lh_banner_danhmuc` (
  `id` int(11) NOT NULL,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `catasort` int(11) NOT NULL DEFAULT 0,
  `showhi` tinyint(2) NOT NULL DEFAULT 1,
  `ngaydang` int(15) NOT NULL DEFAULT 0,
  `cao` varchar(255) DEFAULT NULL,
  `rong` varchar(255) DEFAULT NULL,
  `is_mota` tinyint(4) NOT NULL DEFAULT 0,
  `is_noidung` tinyint(4) NOT NULL DEFAULT 0,
  `is_lienket` tinyint(4) NOT NULL DEFAULT 0,
  `is_video` tinyint(4) NOT NULL DEFAULT 0,
  `is_font_anh` tinyint(4) NOT NULL DEFAULT 0,
  `is_font_hinhanh` tinyint(4) NOT NULL DEFAULT 0,
  `is_font_hinhanh_1` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `lh_banner_danhmuc`
--

INSERT INTO `lh_banner_danhmuc` (`id`, `tenbaiviet_vi`, `tenbaiviet_en`, `catasort`, `showhi`, `ngaydang`, `cao`, `rong`, `is_mota`, `is_noidung`, `is_lienket`, `is_video`, `is_font_anh`, `is_font_hinhanh`, `is_font_hinhanh_1`) VALUES
(16, 'Ảnh slider', '', 13, 1, 1619142663, '600', '1600', 0, 0, 1, 0, 0, 1, 0),
(26, 'Ảnh khái nét', '', 17, 1, 1619142819, '200', '200', 0, 0, 1, 0, 1, 0, 0),
(27, 'Ảnh nền yêu cầu báo giá', '', 13, 0, 1613790150, '600', '1600', 0, 0, 0, 0, 0, 1, 0),
(25, 'Ảnh khu vực', '', 200, 0, 1591608849, '200', '200', 1, 0, 1, 0, 0, 0, 0),
(28, 'Ảnh nền đối tác của chúng tôi', '', 19, 0, 1608867034, '1000', '1600', 0, 0, 0, 0, 0, 1, 0),
(29, 'Ảnh bộ sưu tập', '', 12, 1, 1619140977, '300', '420', 0, 0, 1, 0, 0, 1, 1),
(30, 'Ảnh zalo, facebook chat', '', 22, 1, 1620630986, '100', '100', 0, 0, 1, 0, 0, 1, 0),
(32, 'Video SHOWROOM', '', 14, 1, 1619142749, '500', '500', 0, 0, 0, 1, 0, 0, 0),
(31, 'Ảnh trái', '', 20, 1, 1619239214, '400', '400', 0, 0, 1, 0, 0, 1, 0),
(33, 'Danh mục sản phẩm', '', 24, 0, 1594104225, '540', '390', 0, 0, 1, 0, 0, 0, 0),
(34, 'Ảnh danh mục sản phẩm', '', 25, 0, 1577419053, '75', '1200', 0, 0, 0, 0, 0, 0, 0),
(36, 'Liên kết chuyên mục', '', 26, 0, 1609137814, '100', '380', 0, 0, 1, 0, 0, 0, 0),
(37, 'Hình ảnh bên phải', '', 27, 0, 1609141025, '200', '300', 0, 0, 1, 0, 0, 1, 0),
(38, 'Ảnh menu danh muc', '', 28, 0, 1572593344, '320', '450', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lh_binhluan`
--

CREATE TABLE `lh_binhluan` (
  `id` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL DEFAULT 0,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `noidung_vi` mediumtext DEFAULT NULL,
  `ngay_dang` int(11) NOT NULL DEFAULT 0,
  `luot_thich` int(11) NOT NULL DEFAULT 0,
  `ip_gui` varchar(255) DEFAULT NULL,
  `showhi` tinyint(1) NOT NULL DEFAULT 1,
  `is_nuti` tinyint(1) NOT NULL DEFAULT 0,
  `loai_binhluan` tinyint(4) NOT NULL DEFAULT 0,
  `uid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lh_clanguage`
--

CREATE TABLE `lh_clanguage` (
  `id` int(11) NOT NULL,
  `code_lang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_vi` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_kr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_in` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nhom` int(11) NOT NULL DEFAULT 0,
  `showhi` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lh_clanguage`
--

INSERT INTO `lh_clanguage` (`id`, `code_lang`, `lang_vi`, `lang_en`, `lang_cn`, `lang_jp`, `lang_kr`, `lang_in`, `nhom`, `showhi`) VALUES
(1, 'trang_chu', 'Trang chủ', 'Home', 'Домашняя страница', 'ホームページ', '', '', 0, 1),
(58, 'lien_he', 'Liên hệ', 'Contact', 'Связаться с нами', '連絡先', NULL, NULL, 0, 1),
(19, 'date', 'Ngày', 'Day', 'День', '日', NULL, NULL, 0, 1),
(20, 'thu_hai', 'Thứ hai', 'Monday', 'понедельник', '月曜', NULL, NULL, 0, 1),
(21, 'thu_ba', 'Thứ ba', 'Tuesday', 'вторник', '火曜日', NULL, NULL, 0, 1),
(22, 'thu_tu', 'Thứ tư', 'Wednesday', 'Среда', '水曜日', NULL, NULL, 0, 1),
(23, 'thu_nam', 'Thứ năm', 'Thursday', 'Четверг', '木曜日', NULL, NULL, 0, 1),
(24, 'thu_sau', 'Thứ sáu', 'Friday', 'Пятница', '金曜日', NULL, NULL, 0, 1),
(25, 'thu_bay', 'Thứ bảy', 'Saturday', 'суббота', '土曜日', NULL, NULL, 0, 1),
(26, 'chu_nhat', 'Chủ nhật', 'Sunday', 'Воскресенье', '日曜日', NULL, NULL, 0, 1),
(28, 'thong_tin_bat_buoc', '(*) Thông tin bắt buộc', '(*) Required Information', '(*) Необходимая информация', '（*） 必要な情報', NULL, NULL, 0, 1),
(29, 'ho_va_ten', 'Họ & tên', 'Full name', 'ФИО', 'フルネーム', NULL, NULL, 0, 1),
(30, 'so_dien_thoai', 'Số điện thoại', 'phone number', 'телефонный номер', '電話番号', NULL, NULL, 0, 1),
(31, 'email', 'Email', 'Email', 'Эл. адрес', 'Eメール', NULL, NULL, 0, 1),
(32, 'dia_chi', 'Địa chỉ', 'Address', 'Адрес', '住所', NULL, NULL, 0, 1),
(33, 'tieu_de', 'Tiêu đề', 'Title', 'заглавие', '題名', NULL, NULL, 0, 1),
(34, 'noi_dung', 'Nội dung', 'Content', 'Описание', '説明', NULL, NULL, 0, 1),
(35, 'ma_bao_ve', 'Mã bảo vệ', 'Security Code', 'Код безопасности', 'セキュリティコード', NULL, NULL, 0, 1),
(36, 'gui', 'Gửi', 'To send', 'Отправлять', '送る', NULL, NULL, 0, 1),
(37, 'lam_lai', 'Làm lại', 'Rework, do it again', 'Переделай, сделай это снова', 'やり直す、もう一度やる', NULL, NULL, 0, 1),
(38, 'nhap_so_dien_thoai', 'Vui lòng nhập số điện thoại!', 'Please enter the phone number!', 'Пожалуйста, введите номер телефона!', '電話番号を入力してください！', NULL, NULL, 0, 1),
(39, 'nhap_ho_ten', 'Vui lòng nhập họ tên!', 'Please enter your full name!', 'Пожалуйста введите свое полное имя!', 'フルネームを入力してください！', NULL, NULL, 0, 1),
(40, 'dia_chi_email_khong_hop_le', 'Địa chỉ Email không hợp lệ!', 'Email address is not valid!', 'Электронный адрес недействителен!', 'メールアドレスが無効です！', NULL, NULL, 0, 1),
(41, 'nhap_tieu_de', 'Vui lòng nhập tiêu đề!', 'Please enter a title!', 'Пожалуйста, введите название!', 'タイトルを入力してください！', NULL, NULL, 0, 1),
(412, 'vui_long_nhap_ma_bao_ve', 'Vui lòng nhập mã bảo vệ!', 'Please enter the security code!', 'Пожалуйста введите код безопасности!', 'セキュリティコードを入力してください！', NULL, NULL, 0, 1),
(43, 'yeu_cau_cua_ban_da_duoc_gui', 'Yêu cầu của bạn đã được gửi!', 'Your request has been sent!', 'Ваш запрос был отправлен!', 'あなたのリクエストは送信されました！', NULL, NULL, 0, 1),
(44, 've_trang_chu', 'Quay về trang chủ', 'Return to home page', 'Вернуться на главную страницу', 'ホームページに戻る', NULL, NULL, 0, 1),
(62, 'gia', 'Giá', 'Price', '价格:', '価格', NULL, NULL, 3, 1),
(67, 've_trang_truoc', 'về trang trước', 'back to previous page', 'вернуться на предыдущую страницу', '前のページに戻る', NULL, NULL, 0, 1),
(74, 'xem_chi_tiet', 'Xem chi tiết', 'See details', 'Смотрите подробности', '詳細を見る', NULL, NULL, 0, 1),
(78, 'dang_ky_nhan_ban_tin', 'Liên hệ trực tuyến', 'Online contact', '', '', NULL, NULL, 4, 1),
(79, 'test_dang_ky_nhan_ban_tin', 'Đăng ký để nhận thông tin khuyến mãi', 'Sign up to receive promotional information', '', '私たちから素晴らしいプロモーションを受け取るためにメールにサインアップしてください！', NULL, NULL, 4, 1),
(1414, 'thong_tin', 'Danh mục', 'Category', NULL, NULL, NULL, NULL, 0, 0),
(80, 'nhap_email_cua_ban', 'Nhập địa chỉ email...', 'Enter your email address...', '输入邮箱地址......', 'メールアドレスを入力してください...', NULL, NULL, 4, 1),
(81, 'dang_ky', 'Đăng ký', 'Registration', '', '登録', NULL, NULL, 1, 0),
(82, 'them_dia_chi_email_thanh_cong', 'Thêm địa chỉ Email thành công!', 'Add Successful Email Address!', '添加成功电邮地址！', '成功したメールアドレスを追加してください！', NULL, NULL, 4, 1),
(83, 'dia_chi_email_da_ton_tai', 'Địa chỉ Email đã tồn tại!', 'Email Address already exists!', 'メールアドレスは既に存在します！', '电子邮件地址已存在！', NULL, NULL, 4, 1),
(85, 'nhap_dia_chi', 'Vui lòng nhập địa chỉ của bạn!', 'Please enter your address!', 'Пожалуйста, введите свой адрес!', '住所を入力してください！', NULL, NULL, 0, 1),
(86, 'nhap_noi_dung', 'Vui lòng nhập nội dung!', 'Please enter content!', 'Пожалуйста, введите содержание!', 'コンテンツを入力してください！', NULL, NULL, 0, 1),
(89, 'luot_xem', 'Lượt xem', 'View', '', '', NULL, NULL, 3, 1),
(146, 'dat_hang', 'Đặt hàng', 'Order', '', '', NULL, NULL, 2, 0),
(118, 'email_da_duoc_dang_ky', 'Rất tiết! Email này đã được đăng ký!', 'Sorry! This email is already registered!', '', '', NULL, NULL, 4, 1),
(1311, 'kiem_tra', 'Kiểm tra', 'Check', '', '', NULL, NULL, 0, 0),
(277, 'so_dien_thoai_khong_hop_le', 'Số điện thoại không hợp lệ!', 'Invalid phone number!', 'Неправильный номер телефона!', '無効な電話番号！', NULL, NULL, 0, 1),
(183, 'alert_dat_hang', 'Dữ liệu không hợp lệ!', 'Invalid data!', '无效的数据！', '', NULL, NULL, 2, 0),
(180, 'so_luong', 'Số lượng', 'Amount', '数量', '', NULL, NULL, 2, 0),
(544, 'nhap_tu_khoa_tim_kiem', 'Nhập từ khóa tìm kiếm...', 'Enter search keywords...', 'Введите ключевые слова для поиска ...', '検索キーワードを入力...', NULL, NULL, 0, 1),
(187, 'cart_hinh', 'Hình ảnh', 'Picture', '图片', '', NULL, NULL, 2, 0),
(188, 'cart_ten_sp', 'Tên sản phẩm', 'Product\'s name', '', '', NULL, NULL, 2, 0),
(189, 'cart_ma_sp', 'Mã sản phẩm', 'Product code', '', '製品コード', NULL, NULL, 2, 1),
(191, 'cart_dongia', 'Đơn giá (VNĐ)', 'Unit Price VND)', '单价（VND）', '', NULL, NULL, 2, 0),
(192, 'cart_thanhtien', 'Thành tiền (VNĐ)', 'Amount (VND)', '金额（VND）', '', NULL, NULL, 2, 0),
(193, 'cart_thaotac', 'Thao tác', 'Manipulation', '操作', '', NULL, NULL, 2, 0),
(194, 'hien_chua_co_san_pham_nao_trong_gio_hang', 'Hiện chưa có sản phẩm nào trong giỏ hàng!', 'There are currently no products in the shopping cart!', '购物车中没有产品！', '', NULL, NULL, 2, 0),
(195, 'tiep_tuc_mua_hang', 'Tiếp tục mua hàng', 'Continue buying', '继续购物', '', NULL, NULL, 2, 0),
(196, 'gio_hang', 'Giỏ hàng', 'Cart', '购物车', '', NULL, NULL, 2, 0),
(197, 'cart_xoa', 'Xóa', 'Erase', '抹去', '', NULL, NULL, 2, 0),
(198, 'ban_that_su_muon_xoa', 'Bạn thật sự muốn xóa ?', 'Do you really want to delete?', '你真的想删除吗？', '', NULL, NULL, 2, 0),
(199, 'cart_tong_tien', 'Tổng tiền', 'Total money', '总金额', '', NULL, NULL, 2, 0),
(200, 'gui_don_hang', 'Gửi đơn hàng', 'Submit an order', '提交订单', '', NULL, NULL, 2, 0),
(201, 'title_dat_hang', 'Đặt hàng', 'Order', '顺序', '', NULL, NULL, 2, 0),
(202, 'chinh_sua_don_hang', 'Chỉnh sửa đơn hàng', 'Edit orders', '编辑订单', '', NULL, NULL, 2, 0),
(203, 'thong_tin_nguoi_mua_hang', 'THÔNG TIN NGƯỜI MUA HÀNG', 'BUYER INFORMATION', '买方信息', '', NULL, NULL, 2, 0),
(204, 'cart_dia_chi', 'Địa chỉ giao hàng (*)', 'Delivery address (*)', '送货地址（*）', '', NULL, NULL, 2, 0),
(205, 'phuong_thuc_thanh_toan', 'Phương thức thanh toán', 'Payment methods', '付款方式', '', NULL, NULL, 2, 0),
(206, 'thanh_toan_tien_mat', 'Thanh toán khi nhận hàng', 'Payment on delivery', '现金付款（COD）', '', NULL, NULL, 2, 0),
(207, 'thanh_toan_chuyen_khoan', 'Thanh toán qua chuyển khoản', 'Payment via bank transfer', '通过银行转帐付款', '', NULL, NULL, 2, 0),
(208, 'cart_tieu_de', 'Tiêu đề', 'Title', '', '', NULL, NULL, 2, 0),
(209, 'cart_nhap_dia_chi', 'Vui lòng nhập địa chỉ giao hàng!', 'Please enter the shipping address!', '', '', NULL, NULL, 2, 0),
(210, 'thong_tin_dat_hang', 'THÔNG TIN ĐẶT HÀNG', 'ORDER INFORMATION', '订单信息', '', NULL, NULL, 2, 0),
(211, 'don_hang_cua_ban_da_duoc_gui', 'Đơn hàng của bạn đã được gửi!', 'Your order has been sent!', '您的订单已发送！', '', NULL, NULL, 2, 0),
(214, 'ma_dh', 'Mã đơn hàng', 'Code orders', '订购代码', '', NULL, NULL, 2, 0),
(216, 'thong_tin_don_hang', 'Thông tin đơn hàng', 'Information line', '订单信息', '', NULL, NULL, 2, 0),
(217, 'ngay_dat', 'Ngày đặt', 'Date set', '设定日期', '', NULL, NULL, 2, 0),
(218, 'trang_thai', 'Trạng thái', 'Status', '状态', '', NULL, NULL, 2, 0),
(220, 'don_hang_moi', 'Đơn hàng mới', 'New orders', '新订单', '新しい注文', NULL, NULL, 2, 0),
(223, 'da_giao_hang', 'Đã giao hàng', 'Delivered', '', '', NULL, NULL, 2, 0),
(224, 'huy_don_hang', 'Hủy đơn hàng', 'Cancel order', '', '', NULL, NULL, 2, 0),
(227, 'dang_nhap', 'Đăng Nhập', 'Log in', '', '', NULL, NULL, 1, 0),
(228, 'tai_khoan', 'Tài khoản', 'Account', '', '', NULL, NULL, 1, 0),
(229, 'title_dang_nhap', 'Đăng Nhập', 'Log in', '', '', NULL, NULL, 1, 0),
(230, 'login_email', 'Email', 'Email', '', '', NULL, NULL, 1, 0),
(231, 'login_pass', 'Mật khẩu', 'password', '', '', NULL, NULL, 1, 0),
(232, 'chua_co_tai_khoan', 'Bạn chưa có tài khoản?', 'Do not have an account?', '', '', NULL, NULL, 1, 0),
(233, 'quen_mat_khau', 'Quên mật khẩu', 'Forgot password', '', '', NULL, NULL, 1, 0),
(234, 'login_nhap_mat_khau', 'Vui lòng nhập mật khẩu!', 'Please enter a password!', '', '', NULL, NULL, 1, 0),
(235, 'email_pass_khong_khong_dung', 'Email hoặc mật khẩu không chính xác!', 'Email or password is incorrect!', '', '', NULL, NULL, 1, 0),
(236, 'title_dang_ky', 'Đăng ký thành viên', 'sign up', '', '', NULL, NULL, 1, 0),
(237, 'register_repass', 'Nhập lại mật khẩu', 'Enter the password', '', '', NULL, NULL, 1, 0),
(240, 'dieu_khoan_dk_thanh_vien', 'Đồng ý với các điều khoản của chúng tôi?', 'Agree to our terms?', '', '', NULL, NULL, 1, 0),
(241, 'da_co_tai_khoan', 'Bạn đã có tài khoản?', 'Do you already have an account?', '', '', NULL, NULL, 1, 0),
(242, 'mat_khau_phai_8_ky_tu_tro_len', 'Mật khẩu phải 8 ký tự trở lên!', 'Password must be 8 characters or more!', '', '', NULL, NULL, 1, 0),
(244, 'vui_long_nhap_lai_mat_khau', 'Vui lòng nhập lại mật khẩu!', 'Please re-enter your password!', '', '', NULL, NULL, 1, 0),
(245, 'nhap_lai_mat_khau_khong_chinh_xac', 'Nhập lại mật khẩu không chính xác!', 'Enter the password incorrectly!', '', '', NULL, NULL, 1, 0),
(246, 'dang_ky_tai_khoan_thanh_cong', 'Đăng ký tài khoản thành công!', 'Account registration is successful!', '', '', NULL, NULL, 1, 0),
(248, 'text_quen_pass', 'Vui lòng nhập email mà bạn đã dùng đăng ký tài khoản để được hướng dẫn thay đổi mật khẩu!', 'Please enter the email you used for your account registration for instructions on changing your password!', '', '', NULL, NULL, 1, 0),
(249, 'alert_forget_pass_error', 'Rất tiếc. Email không tồn tại trong hệ thống!', 'Sorry. Email does not exist in the system!', '', '', NULL, NULL, 1, 0),
(250, 'alert_forget_pass', 'Yêu cầu của bạn đã được gửi đến email', 'Your request has been sent to email', '', '', NULL, NULL, 1, 0),
(251, 'alert_forget_pass2', 'Vui lòng kiểm tra email để thiết lập mật khẩu mới!', 'Please check your email to set up a new password!', '', '', NULL, NULL, 1, 0),
(252, 'guide_change_pass', 'Hướng dẫn thay đổi mật khẩu', 'Guide to change password', '', '', NULL, NULL, 1, 0),
(253, 'thong_tin_tai_khoan', 'Thông Tin Tài Khoản', 'Account information', '', '', NULL, NULL, 1, 0),
(258, 'luu_thay_doi', 'Lưu thay đổi', 'Save changes', '', '', NULL, NULL, 1, 0),
(259, 'thay_doi_mat_khau', 'Thay đổi mật khẩu', 'Change the password', '', '', NULL, NULL, 1, 0),
(260, 'cap_nhat_tai_khoan_thanh_cong', 'Cập nhật tài khoản thành công!', 'Successful account update!', '', '', NULL, NULL, 1, 0),
(261, 'mat_khau_cu', 'Mật khẩu cũ', 'old password', '', '', NULL, NULL, 1, 0),
(262, 'mat_khau_moi', 'Mật khẩu mới', 'A new password', '', '', NULL, NULL, 1, 0),
(263, 'nhap_mat_khau_cu', 'Nhập mật khẩu cũ', 'Enter your old password', '', '', NULL, NULL, 1, 0),
(264, 'nhap_mat_khau_moi', 'Nhập mật khẩu mới', 'Enter your new password', '', '', NULL, NULL, 1, 0),
(265, 'nhap_lai_mat_khau_moi', 'Nhập lại mật khẩu mới', 'Enter a new password', '', '', NULL, NULL, 1, 0),
(266, 'vui_long_nhap_mat_khau_cu', 'Vui lòng nhập mật khẩu cũ!', 'Please enter old password!', '', '', NULL, NULL, 1, 0),
(267, 'mat_khau_cu_khong_dung', 'Mật khẩu cũ không đúng!', 'Old password is not correct!', '', '', NULL, NULL, 1, 0),
(268, 'doi_mat_khau_thanh_cong', 'Đổi mật khẩu thành công!', 'Password successfully changed!', '', '', NULL, NULL, 1, 0),
(644, 'lien_ket_khong_hop_le_hoac_da_su_dung', 'Liên kết không hợp lệ hoặc đã được sử dụng', 'Invalid link or already in use', '', '', NULL, NULL, 0, 0),
(272, 'doi_mat_khau_moi', 'Đổi mật khẩu mới', 'Change your password', '', '', NULL, NULL, 1, 0),
(553, 'san_pham_lien_quan', 'Sản phẩm liên quan', 'Related projects', '', '', NULL, NULL, 3, 1),
(282, 'chon_mua', 'Chọn mua', 'Choose to buy', '', '', NULL, NULL, 2, 0),
(283, 'mua_hang', 'Mua ngay', 'Buy now', '', '', NULL, NULL, 2, 0),
(545, 'san_pham_noi_bac', 'Sản phẩm <span> nổi bật </span>', 'Products<span> prominence</span>', '', '', NULL, NULL, 0, 0),
(546, 'gia_lienhe', 'Liên hệ', 'Contact', '联系我们', 'お問い合わせ', NULL, NULL, 3, 1),
(549, 'xem_tat_ca', 'Xem tất cả', 'See all', 'Увидеть все', 'すべてを見る', NULL, NULL, 0, 1),
(416, 'nhap_dia_chi_email', 'Nhập địa chỉ email...', 'Enter your email address...', 'Введите ваш адрес электронной почты...', 'メールアドレスを入力してください...', NULL, NULL, 0, 1),
(557, 'cart_qty', 'Số lượng', 'Amount', '数', '', NULL, NULL, 2, 0),
(413, 'nhap_ma_bao_ve_chua_dung', 'Mã bảo vệ chưa đúng!', 'Security code is not correct!', 'Защитный код неверен!', 'セキュリティコードが正しくありません！', NULL, NULL, 0, 1),
(414, 'thongtin_lienhe', 'Thông tin liên hệ', 'Contact information', 'Контактная информация', '連絡先', NULL, NULL, 0, 1),
(558, 'cap_nhat_so_luong', 'Cập nhật số lượng', 'Update quantity', '更新号码', '', NULL, NULL, 2, 0),
(559, 'xem_them', 'Xem thêm', 'See more', 'Узнать больше', '続きを見る', NULL, NULL, 0, 1),
(398, 'loi_dang_ky', 'Lỗi đăng ký', 'Registration error', '', '', NULL, NULL, 1, 0),
(407, 'ban_quyen_name', 'Copyright © 2020 Obtvietnam', 'Copyright © 2020 Obtvietnam', 'Авторские права © 2020 Famiviet', 'Copyright©2020Sakura Technical Plastics', NULL, NULL, 0, 1),
(1378, 'danh_gia', 'Đánh giá', 'Evaluate', '', '', NULL, NULL, 0, 0),
(1291, 'tiep_theo', 'Tiếp theo', 'Next', '', '', NULL, NULL, 0, 0),
(1125, 'san_pham', 'Sản phẩm', 'Product', '', '製品', NULL, NULL, 0, 0),
(433, 'khong_tim_thay_du_lieu_nao', 'Không tìm thấy dữ liệu nào!', 'No data found!', 'Данные не найдены!', '何もデータが見つかりませんでした！', NULL, NULL, 0, 1),
(554, 'chon_mua', 'Chọn mua', 'Choose buy', '选择购买', '', NULL, NULL, 2, 0),
(456, 'gui_di', 'Gửi đi', 'Send', 'послать', '送る', NULL, NULL, 0, 1),
(552, 'chi_tiet_san_pham', 'Chi tiết sản phẩm', 'Project details', '', '製品詳細', NULL, NULL, 3, 1),
(523, 'dvt', 'đ', 'd', '', 'd', NULL, NULL, 3, 1),
(574, 'bai_viet_lien_quan', 'Bài viết liên quan', 'Related News', 'Похожие сообщения', '関連記事', NULL, NULL, 0, 1),
(677, 'gio_truoc', 'giờ trước', 'hours ago', 'несколько часов назад', '時間前', NULL, NULL, 0, 1),
(676, 'phut_truoc', 'phút trước', 'minute ago', 'минуту назад', '分前', NULL, NULL, 0, 1),
(675, 'giay_truoc', 'giây trước', 'seconds ago', 'секунды назад', '数秒前', NULL, NULL, 0, 1),
(674, 'vua_xong', 'Vừa xong', 'Just finished', 'Только что закончили', 'ちょうど終わった', NULL, NULL, 0, 1),
(597, 'nhap_ma_bao_ve_chua_dung', 'Nhập mã bảo vệ chưa đúng!', 'Enter the security code is not correct!', 'Введите код безопасности неверно!', 'セキュリティコードを入力してください！', NULL, NULL, 0, 1),
(607, 'ngay_dang', 'Ngày đăng', 'Date Submitted', 'Дата отправки', '提出日', NULL, NULL, 0, 1),
(608, 'cap_nhat', 'Cập nhật', 'Update', 'Обновить', '更新', NULL, NULL, 0, 1),
(611, 'gia_ban', 'Giá', 'Price', '', '', NULL, NULL, 3, 1),
(656, 'mo_ta_chi_tiet', 'Mô tả chi tiết', 'Detailed description', 'Подробное описание', '詳細な説明', NULL, NULL, 0, 0),
(619, 'chua_nhap_dia_chi_email', 'Chưa nhập địa chỉ email', 'Email address entered', 'Электронный адрес введен', '入力したメールアドレス', NULL, NULL, 0, 1),
(672, 'noi_dung_lien_he', 'Nội dung liên hệ', 'Contact content', 'Контактное содержание', 'お問い合わせ内容', NULL, NULL, 0, 1),
(627, 'hotline', 'Hotline', 'Hotline', 'Горячая линия', 'ホットライン', NULL, NULL, 0, 1),
(767, 'san_pham_khuyen_mai', 'Sản phẩm khuyến mãi', 'Promotion products', '', '', NULL, NULL, 0, 0),
(768, 'them_vao_gio_hang', 'Thêm vào giỏ hàng', 'Add Cart', '', '', NULL, NULL, 2, 0),
(640, 'loi_xac_thuc_thu_lai_sau', 'Lỗi xác thực, vui lòng tại lại trang và thử lại!', 'Authentication error, please visit the page again and try again!', '認証エラーです、ページに戻ってもう一度お試しください！', '验证错误，请返回页面再试一次！', NULL, NULL, 0, 0),
(642, 'thong_tin_ca_nhan', 'Thông tin cá nhân', 'Personal information', '', '', NULL, NULL, 1, 0),
(643, 'thoat', 'Thoát', 'Exit', '', '', NULL, NULL, 1, 0),
(648, 'san_pham_moi', 'Sản phẩm mới nhất', 'Latest product', '', '', NULL, NULL, 0, 0),
(649, 'san_pham_ban_chay', 'Sản phẩm bán chạy', 'Selling products', '', '', NULL, NULL, 0, 0),
(683, 'ban_da_co_tai_khoan', 'Bạn đã có tài khoản? Vui lòng đăng nhập để sử dụng các tính năng của website!', 'Do you already have an account? Please login to use the features of the website!', '', '', NULL, NULL, 1, 0),
(684, 'lich_su_mua_hang', 'Lịch sử mua hàng', 'Purchase history', '', '', NULL, NULL, 2, 0),
(685, 'doi_mat_khau', 'Đổi mật khẩu', 'Change Password', '', '', NULL, NULL, 1, 0),
(704, 'thong_tin_nguoi_nhan_hang', 'Thông tin người nhận hàng', 'Consignee information', '', '', NULL, NULL, 2, 0),
(705, 'gui_den_nguoi_nhan_khac', 'Gửi đến người nhận khác', 'Send to other recipients', '', '', NULL, NULL, 2, 0),
(707, 'phuong_thuc_van_chuyen', 'Phương thức vận chuyển', 'Shipping method', '', '', NULL, NULL, 2, 0),
(709, 'ap_dung', 'Áp dụng', 'Apply', '', '', NULL, NULL, 2, 0),
(1146, 'y_kien_khach_hang', 'Ý kiến khách hàng', 'Customer reviews', '', '', NULL, NULL, 0, 0),
(1145, 'san_pham_cua_chung_toi', 'Sản phẩm chúng tôi', 'Our products', '', '', NULL, NULL, 0, 0),
(715, 'chon', 'Chọn', 'To choose', '选择', '選択', NULL, NULL, 2, 0),
(718, 'phi_van_chuyen', 'Phí vận chuyển', 'Transport fee', '', '', NULL, NULL, 2, 0),
(720, 'so_lan_su_dung_ma_giam_gia_da_het', 'Số lần sử dụng mã khuyến mãi đã hết!', 'The number of times the promotional code has been exhausted!', '', '', NULL, NULL, 2, 0),
(721, 'thoi_gian_ap_dung_ma_khuyen_mai_khong_hop_le', 'Thời gian áp dụng mã khuyến mãi không hợp lệ!', 'The time to apply promotion code is not valid!', '', '', NULL, NULL, 2, 0),
(722, 'ma_giam_gia_khong_hop_le', 'Mã khuyến mãi không hợp lệ!', 'Invalid promotional code!', '', '', NULL, NULL, 2, 0),
(723, 'khong_du_dieu_kien_ap_dung_khuyen_mai', 'Đơn hàng không đủ điều kiện áp dụng khuyến mãi!', 'Orders are not eligible for promotion!', '', '', NULL, NULL, 2, 0),
(724, 'tam_tinh', 'Tạm tính', 'Provisional', '', '', NULL, NULL, 2, 0),
(725, 'phi_van_chuyen_cod', 'Phí vận chuyển', 'Transport fee', '', '', NULL, NULL, 2, 0),
(726, 'khuyen_mai', 'Khuyến mãi', 'Promotion', '', '', NULL, NULL, 2, 0),
(727, 'thong_tin_thanh_toan', 'Thông tin thanh toán', 'Billing Information', '', '', NULL, NULL, 2, 0),
(728, 'stt', 'STT', 'No', 'Нет', '番号', NULL, NULL, 0, 1),
(729, 'ngay_dat', 'Ngày đặt', 'Date set', '设定日期', '日付の設定', NULL, NULL, 2, 0),
(730, 'don_hang_dang_giao', 'Đơn hàng đang được giao', 'The order is being delivered', '', '', NULL, NULL, 2, 0),
(731, 'don_hang_da_hoan_thanh', 'Đơn hàng đã hoàn thành', 'Order completed', '', '', NULL, NULL, 2, 0),
(732, 'don_hang_da_bi_huy', 'Đơn hàng đã bị hủy', 'Order canceled', '', '', NULL, NULL, 2, 0),
(734, 'chi_tiet_don_hang', 'Chi tiết đơn hàng', 'Cart detail', '', '', NULL, NULL, 2, 0),
(735, 'ma_dh_khong_ton_tai', 'Mã đơn hàng không tồn tại trong hệ thống.', 'Unexpected item code in system.', '', '', NULL, NULL, 2, 0),
(736, 'nhap_ma_don_hang', 'Nhập mã đơn hàng', 'Enter the order code', '', '', NULL, NULL, 2, 0),
(737, 'hoac_so_dien_thoai_va_mail_dat_hang', 'Hoặc số điện thoại và email đặt hàng', 'Or phone number and order email', '', '', NULL, NULL, 2, 0),
(738, 'so_dien_thoai_dat_hang', 'Số điện thoại đặt hàng', 'Order phone number', '', '', NULL, NULL, 0, 0),
(739, 'email_dat_hang', 'Email đặt hàng', 'Email order', '', '', NULL, NULL, 0, 0),
(740, 'khong_tim_thay_don_hang_nao', 'Không tìm thấy đơn hàng nào !', 'No orders found!', '', '', NULL, NULL, 2, 0),
(741, 'don_hang_chua_duoc_thanh_toan', 'Đơn hàng chưa được thanh toán', 'The order has not been paid', '', '', NULL, NULL, 2, 0),
(742, 'don_hang_da_thanh_toan', 'Đơn hàng đã thanh toán', 'Payment order', '', '', NULL, NULL, 2, 0),
(743, 'thanh_toan_paypal_khong_thanh_cong', 'Thanh toán Paypal không thành công!', 'Paypal payment is not successful!', '', '', NULL, NULL, 2, 0),
(744, 'thanh_toan_paypal_thanh_cong', 'Đơn hàng đã được thanh toán!', 'Your order has been paid!', '', '', NULL, NULL, 2, 0),
(745, 'dien_thoai', 'Điện thoại', 'Phone', 'Телефон', '電話', NULL, NULL, 0, 1),
(753, 'dang_ky_ngay', 'Đăng ký', 'Register now', '', '', NULL, NULL, 1, 1),
(801, 'lien_he_ngay', 'Liên hệ ngay', 'Contact now', 'связаться сейчас', '今コンタクトしてください', NULL, NULL, 0, 1),
(804, 'tat_ca_danh_muc', 'Danh mục', 'Category', '', '', NULL, NULL, 0, 0),
(811, 'san_pham_goi_y', 'Sản phẩm gợi ý', 'Recommended products', '', '', NULL, NULL, 0, 0),
(812, 'cam_on_danh_gia', 'Cảm ơn bạn đã đánh giá!', 'Thank you for rating!', '', '', NULL, NULL, 0, 0),
(816, 'danh_gia_ve_san_pham', 'Đánh giá của bạn về sản phẩm này', 'Your review of this product', '', '', NULL, NULL, 0, 0),
(828, 'gui_yeu_cau', 'Gửi yêu cầu', 'Send require', '', '', NULL, NULL, 0, 1),
(832, 'kiem_tra_don_hang', 'Kiểm tra đơn hàng', 'Check your order', '', '', NULL, NULL, 2, 0),
(872, 'nhap_so_cmnd', 'Nhập số CMND', 'Enter your ID number', '', '', NULL, NULL, 1, 0),
(873, 'so_cmnd', 'Số CMND', 'ID number', '', '', NULL, NULL, 1, 0),
(886, 'thanh_tien', 'Thành tiền', 'into money', '', '', NULL, NULL, 2, 0),
(887, 'thanh_toan', 'Thanh toán', 'Pay', '', '', NULL, NULL, 2, 0),
(911, 'san_pham_noi_bat', 'Sản phẩm nỗi bật', 'Featured products', '', '', NULL, NULL, 0, 0),
(1027, 'tin_tuc_su_kien', 'Tin tức <span>mới nhất</span>', 'Latest <span> News </span>', '', '', NULL, NULL, 0, 0),
(1035, 'dang_online', 'Số lượt đang online', 'Online now', '', 'オンラインの人々', NULL, NULL, 0, 0),
(1036, 'tong_view', 'Số lượt truy cập', 'Total number of visitors', '', 'トータルカウンター', NULL, NULL, 0, 0),
(1037, 'thong_ke_truy_cap', 'Thống kê truy cập', 'Statistical access', '', '', NULL, NULL, 0, 0),
(1047, 'tim_kiem', 'Tìm kiếm', 'Search', 'Поиск', '探す', NULL, NULL, 0, 1),
(1058, 'form_lien_he', 'Gửi tin nhắn cho chúng tôi', 'Inquiries', '', '私たちにメッセージを送る', NULL, NULL, 0, 1),
(1081, 'danh_muc_san_pham', 'Sản phẩm của chúng tôi', 'Our products', '', '', NULL, NULL, 0, 0),
(1115, 'slugan_1', '', '', '', '', NULL, NULL, 0, 0),
(1505, 'nop_don_ung_tuyen', 'Nộp đơn ứng tuyển', 'Quick application', NULL, NULL, NULL, NULL, 0, 0),
(1116, 'slugan_2', 'Việt Nam', '', '', '', NULL, NULL, 0, 0),
(1117, 'doi_tac_khach_hang', 'NHÀ PHÂN PHỐI', 'DISTRIBUTORS', '', '', NULL, NULL, 0, 0),
(1282, 'tat_ca', 'Tất cả', 'All', '', '', NULL, NULL, 0, 0),
(1118, 'ho_tro_247', 'Tổng đài hỗ trợ', '(online 24/7)', '', '', NULL, NULL, 0, 0),
(1119, 'du_an_noi_bat', 'Dự án của chúng tôi', 'Outstanding project', '', '', NULL, NULL, 0, 0),
(1121, 'fanpage', '', '', '', 'https://www.facebook.com/pavietnam.com.vn/', NULL, NULL, 0, 0),
(1427, 'dich_vu_cua_chung_toi', 'Dịch vụ của chúng tôi', 'Our services', NULL, NULL, NULL, NULL, 0, 0),
(1323, 'danh_muc_san_pham_mo_ta', 'Giấy in ấn & Bao bì, giấy đặc biệt, sản phẩm xanh (FSC), giấy an toàn thực phẩm', 'Printing Paper & Packaging, Special Paper, Green Product (FSC), Food Safety Paper', '', '', NULL, NULL, 0, 0),
(1123, 'tin_tuc_noi_bat', 'TIN MỚI NHẤT', 'LATEST NEWS', '', '最新の<span>ニュース</ span>', NULL, NULL, 0, 0),
(1124, 'tin_doc_nhieu', 'Tin nổi bật', 'Hot news', '', '', NULL, NULL, 0, 0),
(1127, 'tin_tuc_su_kien_mo_ta', 'Cập nhật các tin tức, sự kiện khuyến mãi mới nhất từ chúng tôi', 'Update the latest promotional news and events from us', '', '', NULL, NULL, 0, 0),
(1484, 'ho_tro_khach_hang', 'Hỗ trợ khách hàng', '', NULL, NULL, NULL, NULL, 0, 0),
(1485, 'chon_chuyen_muc', 'Chọn chuyên mục', '', NULL, NULL, NULL, NULL, 0, 0),
(1128, 'tin_nong', 'Bài viết mới', 'New Posts', '', '新しい投稿', NULL, NULL, 0, 0),
(1129, 'danh_gia', 'Đánh giá', 'Evaluate', '', '', NULL, NULL, 0, 0),
(1130, 'gia_tien', 'Giá tiền', 'Price', '', '', NULL, NULL, 0, 1),
(1131, 'binh_luan_danh_gia', 'Bình luận đánh giá', 'Comments and reviews', '', '', NULL, NULL, 0, 0),
(1132, 'dang_binh_luan', 'Gửi đánh giá', 'Submit review', '', '', NULL, NULL, 6, 0),
(1133, 'viet_danh_gia', 'Viết đánh giá', 'Write a review', '', '', NULL, NULL, 6, 0),
(1134, 'viet_nhan_xet', '3. Viết nhận xét của bạn vào bên dưới', '3. Write your comment below', '', '', NULL, NULL, 6, 0),
(1135, 'tieu_de_cua_nhan_xet', '2. Tiêu đề của nhận xét', '2. The title of the comment', '', '', NULL, NULL, 6, 0),
(1136, 'danh_gia_sp_nay', '1. Đánh giá của bạn về sản phẩm này', '1. Your review of this product', '', '', NULL, NULL, 6, 0),
(1137, 'gui_nhan_xet_cua_ban', 'GỬI NHẬN XÉT CỦA BẠN', 'SEND YOUR COMMENT', '', '', NULL, NULL, 6, 0),
(1138, 'binh_luan_da_duoc_gui', 'Gửi nội dung bình luận thành công!', 'Send successful comment content!', '', '', NULL, NULL, 6, 0),
(1139, 'sao_chep_qua_thong_tin_nhan_hang', 'Sao chép qua thông tin nhận hàng!', 'Copy through delivery information!', '', '', NULL, NULL, 0, 0),
(1140, 'nhap_ma_giam_gia', 'Nhập mã giảm giá!', 'Enter a discount code!', '', '', NULL, NULL, 0, 0),
(1141, 'ghi_chu', 'Ghi chú', 'Note', '', '', NULL, NULL, 0, 0),
(1142, 'thoi_gian_nhan_hang', 'Thời gian nhận hàng', 'Delivery time', '', '', NULL, NULL, 0, 0),
(1143, 'zalo', 'zalo', 'zalo', '', '', NULL, NULL, 0, 0),
(1147, 'mang_xa_hoi', 'Kết nối', 'Connect', 'Подписывайтесь на нас', 'フォローする', NULL, NULL, 0, 0),
(1148, 'lien_he_dat_hang', 'Liên hệ', 'Contact order', '', '', NULL, NULL, 0, 0),
(1149, 'video_clip', 'Video', 'Video', '', '', NULL, NULL, 0, 0),
(1150, 'ban_chua_dong_y_thoa_thuan', 'Bạn chưa đồng ý điều khoản thỏa thuận của chúng tôi!', 'You have not agreed to our terms of agreement!', '', '', NULL, NULL, 1, 0),
(1151, 'yeu_thich', 'Yêu thích', 'Favourite', '', '', NULL, NULL, 0, 0),
(1152, 'danh_sach_yeu_thich', 'Danh sách yêu thích', 'Favorites list', '', '', NULL, NULL, 0, 0),
(1177, 'fax', 'Fax', 'Fax', '', '', NULL, NULL, 0, 0),
(1185, 'ho_tro_truc_tuyen', 'Hỗ trợ trực tuyến', 'online support', '', '', NULL, NULL, 0, 0),
(1189, 'mua_ngay', 'Mua ngay', 'Buy now', '', '', NULL, NULL, 0, 0),
(1190, 'giao_hang_toan_quoc', 'Giao hàng tận nơi trên toàn quốc', 'Delivery nationwide', '', '', NULL, NULL, 0, 0),
(1203, 'binh_luan_san_pham', 'Bình luận', 'Comment', '', '', NULL, NULL, 0, 0),
(1202, 'thuong_hieu', 'Thương hiệu', 'Trademark', '', '', NULL, NULL, 0, 0),
(1211, 'thong_tin_lien_he', 'Thông tin liên hệ', 'Contact information', '', '', NULL, NULL, 0, 0),
(1223, 'ban_chay_nhat', 'BÁN CHẠY NHẤT', 'BESTSELLER', '', '', NULL, NULL, 0, 0),
(1224, 'san_pham_da_xem', 'Sản phẩm đã xem', 'viewed products', '', '', NULL, NULL, 0, 0),
(1225, 'sap_xep_theo', 'Sắp xếp theo', 'Sorted by', '', '', NULL, NULL, 0, 0),
(1226, 'xem_nhieu_nhat', 'Xem nhiều nhất', 'Most view', '', '', NULL, NULL, 0, 0),
(1227, 'ban_chay', 'Bán chạy', 'Selling', '', '', NULL, NULL, 0, 0),
(1228, 'gia_thap_den_cao', 'Giá thấp đến cao', 'Low to high price', '', '', NULL, NULL, 0, 0),
(1229, 'gia_cao_den_thap', 'Giá cao đến thấp', 'Price high to low', '', '', NULL, NULL, 0, 0),
(1231, 'khach_hang_danh_gia', 'khách hàng đánh giá', 'customer reviews', '', '', NULL, NULL, 6, 0),
(1232, 'cau_hoi_duoc_tra_loi', 'câu hỏi được trả lời', 'questions are answered', '', '', NULL, NULL, 6, 0),
(1233, 'anh_360_do', 'Ảnh 360 độ', '360-degree photo', '', '', NULL, NULL, 0, 0),
(1234, 'xem_them_anh', 'Xem thêm ảnh', 'See more photos', '', '', NULL, NULL, 0, 0),
(1235, 'hinh_anh', 'Hình ảnh', 'Picture', '', '', NULL, NULL, 0, 0),
(1236, 'danh_gia_nhan_xet', 'GỬI NHẬN XÉT CỦA BẠN', 'SEND YOUR COMMENT', '', '', NULL, NULL, 6, 0),
(1238, 'san_pham_cung_hang', 'Sản Phẩm Cùng Hãngs', 'Products of the same company', '', '', NULL, NULL, 0, 0),
(1239, 'gia_cu', 'Giá cũ', 'Old price', '', '', NULL, NULL, 3, 0),
(1240, 'gia_ban', 'Giá sản phẩm', 'Product price', '', '', NULL, NULL, 3, 0),
(1241, 'gia_khuyen_mai', 'Giá khuyến mại', 'Promotional price', '', '', NULL, NULL, 3, 0),
(1242, 'dat_mua_ngay', 'Đặt mua', 'Buy', '', '', NULL, NULL, 3, 0),
(1250, 'khach_hang_nhan_xet', 'KHÁCH HÀNG <span>NÓI VỀ CHÚNG TÔI</span>', 'CUSTOMERS <span> TALK ABOUT US </span>', '', '', NULL, NULL, 6, 0),
(1251, 'gui_cau_hoi_cua_ban', 'Gửi câu hỏi của bạn', 'Submit your question', '', '', NULL, NULL, 6, 0),
(1252, 'gui_cau_hoi', 'Gửi câu hỏi', 'Submit a question', '', '', NULL, NULL, 6, 0),
(1258, 'xem_ban_do', 'Bản đồ', 'Maps', '', '', NULL, NULL, 0, 0),
(1259, 'chon_tinh_tp', 'Chọn tỉnh / thành phố', 'Select province / city', '', '', NULL, NULL, 6, 0),
(1260, 'chon_quan_huyen', 'Chọn quận huyện', 'Select a district', '', '', NULL, NULL, 6, 0),
(1261, 'danh_gia_trung_binh', 'Đánh giá của bạn về sản phẩm này', 'Your review of this product', '', '', NULL, NULL, 6, 0),
(1262, 'trung_binh_diem_danh_gia', '[diem] trung bình dựa trên [luot] bài đánh giá', '[diem] average based on [luot] reviews', '', '', NULL, NULL, 6, 0),
(1263, 'sao', 'Sao', 'Start', '', '', NULL, NULL, 6, 0),
(1264, 'doc_them_binh_luan', 'Đọc thêm bình luận', 'Read more comments', '', '', NULL, NULL, 6, 0),
(1265, 'viet_binh_luan_cua_ban', 'Viết bình luận của bạn (Vui lòng gõ tiếng Việt có dấu)', 'Write your comment (Please type accented Vietnamese)', '', '', NULL, NULL, 6, 0),
(1267, 'nhap_ma_khuyen_mai', 'Nhập mã khuyến mãi', 'Enter the promotion code', '', '', NULL, NULL, 2, 0),
(1268, 'chon_tinh_thanh', 'Chọn Tỉnh / Thành', 'Select Province / City', '', '', NULL, NULL, 2, 0),
(1269, 'ma_giam_gia_hop_le', 'Kích hoạt mã giảm giá thành công!', 'Activate discount code successfully!', '', '', NULL, NULL, 2, 0),
(1283, 'registration', 'Đăng ký', 'Registration', '', '', NULL, NULL, 0, 0),
(1290, 'cac_bai_dang_moi_nhat', 'THỊNH HÀNH', 'POPULAR', '', '', NULL, NULL, 0, 0),
(1289, 'de_xuat', 'MỚI NHẤT', 'LATEST', '', '', NULL, NULL, 0, 0),
(1288, 'khong_tim_thay_video', 'Không tìm thấy video!', 'Video not found!', '', '', NULL, NULL, 0, 0),
(1294, 'danh_sach_so_sanh', 'Danh sách so sánh', 'Comparison list', '', '', NULL, NULL, 0, 0),
(1295, 'san_pham_hot', 'Sản phẩm hot', 'Hot products', '', '人気商品', NULL, NULL, 0, 0),
(1312, 'xem_tiep_san_pham', 'Xem tiếp sản phẩm', 'See more products', '', '', NULL, NULL, 0, 0),
(1302, 'thu_vien_anh_khac', 'Hình ảnh khác', 'Other images', '', '', NULL, NULL, 0, 0),
(1303, 'ten_file', 'Tên File', 'File name', '', '', NULL, NULL, 0, 0),
(1304, 'tai_ve', 'Tải xuống', 'Download', '', '', NULL, NULL, 0, 0),
(1305, 'download', 'Download', 'Download', '', '', NULL, NULL, 0, 0),
(1307, 'dang_ky_bang_facebook', 'Đăng ký bằng Facebook', 'Sign up with Facebook', '', '', NULL, NULL, 0, 0),
(1308, 'dang_ky_bang_google', 'Đăng ký bằng Google', 'Sign up with Google', '', '', NULL, NULL, 0, 0),
(1309, 'dang_nhap_bang_facebook', 'Đăng nhập bằng Facebook', 'Sign in with Facebook', '', '', NULL, NULL, 0, 0),
(1310, 'dang_nhap_bang_google', 'Đăng nhập bằng Google', 'Sign in with Google', '', '', NULL, NULL, 0, 0),
(1319, 'bai_doc_nhieu', 'Bài đọc nhiều', 'Read more', '', '', NULL, NULL, 0, 0),
(1322, 've_chung_toi', 'Về chúng tôi', 'About us', '', '', NULL, NULL, 0, 0),
(1324, 'link_google_map', 'https://www.google.com/maps/place/Khu+%C4%91%C3%B4+th%E1%BB%8B+Sala/@10.772277,106.722138,16z/data=!4m5!3m4!1s0x0:0x3a1f5c247c407f3e!8m2!3d10.7722768!4d106.7221381?hl=en', 'https://www.google.com/maps/place/Khu+%C4%91%C3%B4+th%E1%BB%8B+Sala/@10.772277,106.722138,16z/data=!4m5!3m4!1s0x0: 0x3a1f5c247c407f3e! 8m2! 3d10.7722768! 4d106.7221381? Hl = en', '', '', NULL, NULL, 0, 0),
(1325, 'yeu_cau_bao_gia', 'Yêu cầu tư vấn & báo giá', 'Ask for advice & quote', '', '', NULL, NULL, 0, 0),
(1326, 'gui_yeu_cau', 'Gửi Yêu Cầu', 'Send require', '', '', NULL, NULL, 0, 0),
(1327, 'san_pham_noi_bac_mo_ta', 'Sản phẩm <span>chúng tôi</span>', 'Our <span> products </span>', '', '', NULL, NULL, 0, 0),
(1328, 'xem_them_san_pham', 'Xem thêm sản phẩm', 'See more products', '', '', NULL, NULL, 0, 0),
(1329, 'tai_lieu', 'Tài liệu', 'Document', '', '', NULL, NULL, 0, 0),
(1330, 'tu_van', 'Tư vấn', 'Advisory', '', '', NULL, NULL, 0, 0),
(1331, 'loai_file', 'Loại file', 'File type', '', '', NULL, NULL, 0, 0),
(1332, 'san_pham_ung_dung', 'Mới nhất', 'Latest', '', '', NULL, NULL, 0, 0),
(1375, 'tinh_trang', 'Tình trạng', 'Status', '', '', NULL, NULL, 0, 1),
(1376, 'con_hang', 'Còn Hàng', 'Stocking', '', '', NULL, NULL, 0, 1),
(1377, 'het_hang', 'Hết Hàng', 'Out of stock', '', '', NULL, NULL, 0, 1),
(1398, 'yeu_cau_dat_hang', 'Yêu cầu & Đặt hàng', 'Order request', '', '', NULL, NULL, 0, 0),
(1373, 'danh_muc', 'Danh mục', 'Category', '', '', NULL, NULL, 0, 1),
(1399, 'thong_tin_san_pham', 'Thông tin sản phẩm', 'Product information', '', '', NULL, NULL, 0, 0),
(1400, 'yeu_cau_viec_lam', 'Yêu cầu việc làm', 'Job requirements', '', '', NULL, NULL, 0, 0),
(1401, 'cac_tai_lieu', 'Các tài liệu', 'Documents', '', '', NULL, NULL, 0, 0),
(1402, 'khac', 'Khác', 'Other', 'Другой', 'その他の', NULL, NULL, 0, 0),
(1403, 'bo_suu_tap', 'Bộ sưu tập', 'Collection', '', '', NULL, NULL, 0, 0),
(1363, 'san_pham_tim_kiem_nhieu_mo_ta', 'Nội dung mô tả sản phẩm tìm kiếm nhiều', 'Product description content many searchable', '', '', NULL, NULL, 0, 0),
(1362, 'san_pham_tim_kiem_nhieu', 'Sản phẩm tìm kiếm nhiều nhất', 'Products most searched', '', '', NULL, NULL, 0, 0),
(1379, 'cua_hang_cua_chung_toi', 'CỬA HÀNG CỦA CHÚNG TÔI', 'OUR STORE', '', '', NULL, NULL, 0, 0),
(1380, 'theo_doi_cau_chuyen_cua_chung_toi', 'Theo Dõi Câu Chuyện Của Chúng Tôi', 'Follow Our Story', '', '', NULL, NULL, 0, 0),
(1381, 'theo_doi_chung_toi_tren_in', 'Theo dõi chúng tôi trên Instagram', 'Follow us on Instagram', '', '', NULL, NULL, 0, 0),
(1382, 'link_instagram', 'https://www.instagram.com/', 'https://www.instagram.com/', '', '', NULL, NULL, 0, 0),
(1397, 'vui_long_chon_chu_de', '- Vui lòng chọn một chủ đề -', '- Please select a theme -', '', '', NULL, NULL, 0, 0),
(1385, 'su_kien_tieu_bieu', 'Sự kiện tiêu biểu', 'Typical events', '', '', NULL, NULL, 0, 0),
(1386, 'su_kien_khac', 'Sự kiện khác', 'Other events', '', '', NULL, NULL, 0, 0),
(1387, 'dang_ky_thong_tin', 'Đăng ký thông tin', 'Registration information', '', '', NULL, NULL, 0, 0),
(1388, 'su_kien', 'Sự kiện', 'Event', '', '', NULL, NULL, 0, 0),
(1389, 'khach_hang_moi', 'Khách hàng mới', 'A new customer', '', '', NULL, NULL, 0, 0),
(1390, 'dang_ky_tai_khoan', 'Đăng ký tài khoản', 'Sign up for an account', '', '', NULL, NULL, 0, 0),
(1391, 'dang_ky_tai_khoan_mo_ta', 'Bằng cách tạo tài khoản, bạn sẽ có thể mua sắm nhanh hơn,  cập nhật trạng thái của đơn hàng và theo dõi các đơn hàng bạn đã thực hiện trước đó.', 'By creating an account, you\'ll be able to shop faster, update order status and keep track of orders you\'ve made before.', '', '', NULL, NULL, 0, 0),
(1392, 'tiep_tuc', 'Tiếp tục', 'Continue', '', '', NULL, NULL, 0, 0),
(1393, 'dang_nhap_tai_khoan', 'Đăng nhập tài khoản', 'Sign in to your account', '', '', NULL, NULL, 0, 0),
(1394, 'title_dang_ky_mo_ta', 'Nếu bạn đã có tài khoản với chúng tôi, vui lòng đăng nhập tại [link]trang đăng nhập.</link>', 'If you already have an account with us, please login at the login page [link]. </link>', '', '', NULL, NULL, 0, 0),
(1395, 'tai_khoan_da_bi_khoa', 'Tài khoản đang bị khóa!', 'Account is locked!', '', '', NULL, NULL, 1, 0),
(1407, 'tim_hieu_them', 'Tìm hiểu thêm', 'Looking for more information', NULL, '', NULL, NULL, 0, 0),
(1409, 'qr_code', 'QR CODE', 'QR CODE', NULL, '', NULL, NULL, 0, 0),
(1410, 'danh_gia_san_pham', 'Đánh giá sản phẩm', 'Product reviews', NULL, '', NULL, NULL, 0, 0),
(1412, 'goi_de_dat_ngay', 'Gọi để đặt ngay', 'Call to book now', NULL, '今すぐ予約する', NULL, NULL, 0, 1),
(1413, 'doi_tac_khach_hang_mo_ta', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', NULL, NULL, NULL, NULL, 0, 0),
(1504, 'ung_tuyen', 'Ứng tuyển', 'Recruitment', NULL, NULL, NULL, NULL, 0, 0),
(1415, 'lien_he_dat_hang', 'Liên hệ đặt hàng', 'Contact order', NULL, NULL, NULL, NULL, 0, 0),
(1416, 'thong_tin_cong_ty', 'Thông tin công ty', 'Company information', NULL, NULL, NULL, NULL, 0, 0),
(1417, 'yeu_cau_san_pham', 'YÊU CẦU SẢN PHẨM', 'REQUEST PRODUCTS', NULL, NULL, NULL, NULL, 0, 0),
(1418, 'yeu_cau_giao_hang', 'Yêu cầu ngày giao hàng', 'Request ship day', NULL, NULL, NULL, NULL, 0, 0),
(1419, 'day', 'Ngày', 'Day', NULL, NULL, NULL, NULL, 0, 0),
(1420, 'month', 'Tháng', 'Month', NULL, NULL, NULL, NULL, 0, 0),
(1421, 'year', 'Năm', 'Year', NULL, NULL, NULL, NULL, 0, 0),
(1422, 'ten_cong_ty', '', '', NULL, NULL, NULL, NULL, 0, 0),
(1431, 'du_an_dang_tim_kiem', 'Dự án đang tìm kiếm', 'The project is looking for', NULL, NULL, NULL, NULL, 0, 0),
(1423, 'nhap_ten_cong_ty', 'Bạn chưa nhập tên công ty !', 'You have not entered the company name!', NULL, NULL, NULL, NULL, 0, 0),
(1424, 'nguoi_lien_he', 'Người liên hệ', 'Contact person', NULL, NULL, NULL, NULL, 0, 0),
(1425, 'xem_san_pham', 'Xem sản phẩm', 'View product', NULL, NULL, NULL, NULL, 0, 0),
(1426, 'he_thong_phan_phoi', 'Hệ thống phân phối trải dài từ Bắc đến Nam', 'The distribution system stretches from North to South', NULL, NULL, NULL, NULL, 0, 0),
(1428, 'chung_toi_lam_gi', 'Chúng tôi làm gì', 'What do we do', NULL, NULL, NULL, NULL, 0, 0),
(1430, 'du_an_dang_ban', 'Dự án đang bán', 'The project is on sale', NULL, NULL, NULL, NULL, 0, 0),
(1432, 'dang_ky_mua', 'Đăng ký mua', 'Register to buy', NULL, NULL, NULL, NULL, 0, 0),
(1433, 'dang_ky_ban', 'Đăng ký bán', 'Sign up for sale', NULL, NULL, NULL, NULL, 0, 0),
(1474, 'nhap_chu_cai_can_tim', 'Nhập chữ cái cần tìm kiếm...', '', NULL, NULL, NULL, NULL, 0, 0),
(1463, 'doc_tiep', 'Đọc thêm', 'Read more', NULL, NULL, NULL, NULL, 0, 0),
(1472, 'tai_sao_chon_chung_toi_mo_ta', 'Việc mang tới dịch vụ hoàn hảo, môi trường thoải mái cho người bệnh luôn là mục tiêu mà chúng tôi theo đuổi. Trong đó điều mà chúng tôi quan tâm hàng đầu chính là sự an toàn của người bệnh.', '', NULL, NULL, NULL, NULL, 0, 0),
(1473, 'lien_ket_mo_ta', '-- Chọn liên kết Website --', '', NULL, NULL, NULL, NULL, 0, 0),
(1471, 'tai_sao_chon_chung_toi', 'Tại sao chọn chúng tôi ?', '', NULL, NULL, NULL, NULL, 0, 0),
(1468, 'tin_moi_nhat', 'Tin mới nhất', 'Latest news', NULL, NULL, NULL, NULL, 0, 0),
(1469, 'lien_ket', 'Liên kết website', 'Quick link', NULL, NULL, NULL, NULL, 0, 0),
(1503, 'text_vitri', 'VỊ TRÍ TUYỂN DỤNG', 'VACANCIES', NULL, NULL, NULL, NULL, 0, 0),
(1501, 'vui_long_lua_chon', 'Vui lòng lựa chọn', 'Please choose', NULL, NULL, NULL, NULL, 0, 0),
(1502, 'gui_ngay', 'Gửi ngay', 'Send it now', NULL, NULL, NULL, NULL, 0, 1),
(1523, 'tim_san_pham', 'Tìm sản phẩm', 'Find products', NULL, NULL, NULL, NULL, 0, 1),
(1481, 'xem_ngay', 'Xem ngay', '', NULL, NULL, NULL, NULL, 0, 0),
(1482, 'tinh_thanh', 'Tỉnh/thành', '', NULL, NULL, NULL, NULL, 0, 0),
(1483, 'quan_huyen', 'Quận/huyện', '', NULL, NULL, NULL, NULL, 0, 0),
(1486, 'bai_viet_noi_bat', 'BÀI VIẾT NỔI BẬT', '', NULL, NULL, NULL, NULL, 0, 0),
(1488, 'ngay_het_han', 'Ngày hết hạn', 'Expiration date', NULL, NULL, NULL, NULL, 0, 0),
(1499, 'yeu_cau_bao_gia', 'Yêu cầu báo giá', 'Request a quote', NULL, NULL, NULL, NULL, 0, 0),
(1524, 'du_an_moi', 'Dự án mới', 'New project', NULL, NULL, NULL, NULL, 0, 1),
(1497, 'video_gioi_thieu', 'Video giới thiệu', 'Introduction video', NULL, NULL, NULL, NULL, 0, 0),
(1496, 've_chung_toi', 'Về chúng tôi', 'About us', NULL, NULL, NULL, NULL, 0, 0),
(1506, 'mo_ta_cong_viec', 'Mô tả công việc', 'Job description', NULL, NULL, NULL, NULL, 0, 0),
(1507, 'thong_tin_ung_tuyen', 'Thông tin ứng tuyển', 'Application information', NULL, NULL, NULL, NULL, 0, 0),
(1508, 'file_hs', 'Sơ yêu lý lịch của bạn', 'I love your resume', NULL, NULL, NULL, NULL, 0, 0),
(1509, 'chon_file', 'Chọn', 'Choose', NULL, NULL, NULL, NULL, 0, 0),
(1510, 'nop_don', 'Nộp đơn', 'Apply for', NULL, NULL, NULL, NULL, 0, 0),
(1511, 'so_sanh', 'So sánh', 'Compare', NULL, NULL, NULL, NULL, 0, 0),
(1512, 'xem_nhanh', 'Xem nhanh', 'Quick view', NULL, NULL, NULL, NULL, 0, 0),
(1522, 'gia_san_pham', 'Giá sản phẩm', 'Product price', NULL, NULL, NULL, NULL, 0, 1),
(1521, 'tat_ca_san_pham', 'Tất cả sản phẩm', 'All products', NULL, NULL, NULL, NULL, 0, 1),
(1518, 'thanh_toan_paypal', 'Thanh toán online qua paypal', 'Online payment via paypal', NULL, NULL, NULL, NULL, 2, 0),
(1519, 'ma_khuyen_mai', 'Mã khuyến mãi', 'Promotion code', NULL, NULL, NULL, NULL, 2, 0),
(1520, 'tim_kiem_nhanh', 'Tìm kiếm nhanh', 'Quick search', NULL, NULL, NULL, NULL, 0, 1),
(1525, 'mua_hang', 'Mua hàng', 'Purchase', NULL, NULL, NULL, NULL, 0, 1),
(1526, 'he_thong_chi_nhanh', 'Hệ thống chi nhánh', 'Branch system', NULL, NULL, NULL, NULL, 0, 1),
(1527, 'tu_van_mua_hang', 'Tư vấn', 'Advisory', NULL, NULL, NULL, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lh_clanguage_admin`
--

CREATE TABLE `lh_clanguage_admin` (
  `id` int(11) NOT NULL,
  `code_lang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `showhi` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lh_clanguage_admin`
--

INSERT INTO `lh_clanguage_admin` (`id`, `code_lang`, `lang_vi`, `showhi`) VALUES
(1325, 'Trang chủ', 'Home', 1),
(1326, 'CHỨC NĂNG HỆ THỐNG', 'SYSTEM FUNCTION', 1),
(1327, 'Xem website', 'See website', 1),
(1328, 'Xóa cache', 'Clear cache', 1),
(1329, 'Thêm', 'Add', 1),
(1330, 'Danh sách', 'List', 1),
(1331, 'Thêm chủ đề', 'Add a subject', 1),
(1332, 'Danh sách chủ đề', 'List of topics', 1),
(1333, 'Danh sách tính năng', 'Feature list', 1),
(1334, 'Thêm tính năng', 'Add features', 1),
(1335, 'bài viết', 'posts', 1),
(1336, 'Quản lý website', 'Website management', 1),
(1337, 'Thiết lập website', 'Website setup', 1),
(1338, 'Khóa website', 'Lock website', 1),
(1339, 'Quản lý ngôn ngữ', 'Language management', 1),
(1340, 'Danh sách email nhận tin', 'Email list to receive news', 1),
(1341, 'Thiết lập tìm kiếm theo giá', 'Set up search by price', 1),
(1342, 'Thiết lập tìm kiếm theo %', 'Set up search by%', 1),
(1343, 'Quản lý bình luận', 'Manage comments', 1),
(1344, 'Khách hàng liên hệ', 'Customer contact', 1),
(1345, 'Thiết lập menu', 'Setup menu', 1),
(1346, 'Nội dung khác', 'Nội dung khác', 1),
(1347, 'sản phẩm', 'sản phẩm', 1),
(1348, 'Quản lý hình ảnh', 'Quản lý hình ảnh', 1),
(1349, 'Slider trang chủ', 'Slider trang chủ', 1),
(1350, 'Ảnh trang chủ', 'Ảnh trang chủ', 1),
(1351, 'Ảnh danh mục trang chủ', 'Ảnh danh mục trang chủ', 1),
(1352, 'Logo chân trang', 'Logo chân trang', 1),
(1353, 'Quản lý Đơn hàng', 'Quản lý Đơn hàng', 1),
(1354, 'Danh sách đơn hàng', 'Danh sách đơn hàng', 1),
(1355, 'Phương thức thanh toán', 'Phương thức thanh toán', 1),
(1356, 'Thông tin thanh toán', 'Thông tin thanh toán', 1),
(1357, 'Tài khoản quản trị', 'Tài khoản quản trị', 1),
(1358, 'Thông tin cá nhân', 'Thông tin cá nhân', 1),
(1359, 'Quản lý ngôn ngữ Admin', 'Quản lý ngôn ngữ Admin', 1),
(1360, 'Danh sách thành viên', 'Danh sách thành viên', 1),
(1361, 'Thêm thành viên', 'Thêm thành viên', 1),
(1362, 'Email hệ thống', 'Email hệ thống', 1),
(1363, 'Thêm email', 'Thêm email', 1),
(1364, 'Danh sách email', 'Danh sách email', 1),
(1365, 'Hỗ trợ 24/7', 'Hỗ trợ 24/7', 1),
(1366, 'Đăng xuất', 'Đăng xuất', 1),
(1367, 'Đã xóa thành công!', 'Đã xóa thành công!', 1),
(1368, 'Dữ liệu không hợp lệ!', 'Dữ liệu không hợp lệ!', 1),
(1369, 'Cập nhật dữ liệu thành công!', 'Cập nhật dữ liệu thành công!', 1),
(1370, 'Quản lý', 'Quản lý', 1),
(1371, 'Tiêu đề', 'Tiêu đề', 1),
(1372, 'Hình ảnh', 'Hình ảnh', 1),
(1373, 'Hiển thị', 'Hiển thị', 1),
(1374, 'Tác vụ', 'Tác vụ', 1),
(1375, 'Lưu lại', 'Lưu lại', 1),
(1376, 'Thêm mới', 'Thêm mới', 1),
(1377, 'Thêm dữ liệu thành công!', 'Thêm dữ liệu thành công!', 1),
(1378, 'Sửa', 'Sửa', 1),
(1379, 'Thoát', 'Thoát', 1),
(1380, 'Bạn chưa nhập', 'Bạn chưa nhập', 1),
(1381, 'Mô tả', 'Mô tả', 1),
(1382, 'Lấy đường dẫn tự động', 'Lấy đường dẫn tự động', 1),
(1383, 'Đường dẫn chuẩn bao gồm các ký tự [a-zA-Z0-9-].', 'Đường dẫn chuẩn bao gồm các ký tự [a-zA-Z0-9-].', 1),
(1384, 'Số lượng bài viết hiển thị trên 1 trang', 'Số lượng bài viết hiển thị trên 1 trang', 1),
(1385, 'Số thứ tự', 'Số thứ tự', 1),
(1386, 'Hiển thị', 'Hiển thị', 1),
(1387, 'Ẩn', 'Ẩn', 1),
(1388, 'Thành công!', 'Thành công!', 1),
(1389, 'Lỗi!', 'Lỗi!', 1),
(1390, 'Cập nhật', 'Cập nhật', 1),
(1391, 'Tên công ty', 'Tên công ty', 1),
(1392, 'Địa chỉ', 'Địa chỉ', 1),
(1393, 'Số điện thoại', 'Số điện thoại', 1),
(1394, 'Bật Https', 'Bật Https', 1),
(1395, 'Bật Comment Facebook', 'Bật Comment Facebook', 1),
(1396, 'Bật ngôn ngữ', 'Bật ngôn ngữ', 1),
(1397, 'Chống sao chép', 'Chống sao chép', 1),
(1398, 'Tiếng Việt (Mặc định)', 'Tiếng Việt (Mặc định)', 1),
(1399, 'Email gửi tin', 'Email gửi tin', 1),
(1400, 'Mật khẩu', 'Mật khẩu', 1),
(1401, 'Dù website bị ĐÓNG, nhưng nếu bạn đăng nhập bằng tài khoản admin, bạn vẫn thấy như bình thường.', 'Dù website bị ĐÓNG, nhưng nếu bạn đăng nhập bằng tài khoản admin, bạn vẫn thấy như bình thường.', 1),
(1402, 'Khóa', 'Khóa', 1),
(1403, 'Mở', 'Mở', 1),
(1404, 'Nội dung', 'Nội dung', 1),
(1405, 'Bạn thật sự muốn xóa?', 'Bạn thật sự muốn xóa?', 1),
(1406, 'Ngôn ngữ', 'Ngôn ngữ', 1),
(1407, 'Mã ngôn ngữ', 'Mã ngôn ngữ', 1),
(1408, 'Xóa', 'Xóa', 1),
(1409, 'Giá', 'Giá', 1),
(1410, 'Từ giá', 'Từ giá', 1),
(1411, 'Đến giá', 'Đến giá', 1),
(1412, 'Từ', 'Từ', 1),
(1413, 'Đến', 'Đến', 1),
(1414, 'Xem bình luận', 'Xem bình luận', 1),
(1415, 'Ngày đăng', 'Ngày đăng', 1),
(1416, 'Đã xem', 'Đã xem', 1),
(1417, 'Chưa xem', 'Chưa xem', 1),
(1418, 'Xem chi tiết', 'Xem chi tiết', 1),
(1419, 'Trạng thái', 'Trạng thái', 1),
(1420, 'IP gửi', 'IP gửi', 1),
(1421, 'Ngày gửi', 'Ngày gửi', 1),
(1422, 'Nếu Link đến URL của Web khác thì phải có http:// ở đầu.', 'Nếu Link đến URL của Web khác thì phải có http:// ở đầu.', 1),
(1423, 'Lấy Liên kết theo module chọn.', 'Lấy Liên kết theo module chọn.', 1),
(1424, 'Loại menu', 'Loại menu', 1),
(1425, 'Nhập liên kế', 'Nhập liên kế', 1),
(1426, 'Chọn module', 'Chọn module', 1),
(1427, 'Hiển thị cửa sổ mới', 'Hiển thị cửa sổ mới', 1),
(1428, 'Nhập liên kết', 'Nhập liên kết', 1),
(1429, 'Kiểu hiển thị', 'Kiểu hiển thị', 1),
(1430, 'Tư động hiển thị các cấp con của danh mục hoặc danh sách bài viết của danh mục.', 'Tư động hiển thị các cấp con của danh mục hoặc danh sách bài viết của danh mục.', 1),
(1431, 'Tự động theo bài viết', 'Tự động theo bài viết', 1),
(1432, 'Tự động theo danh mục ngang', 'Tự động theo danh mục ngang', 1),
(1433, 'Tự động theo danh mục', 'Tự động theo danh mục', 1),
(1434, 'Chọn kiểu hiển thị', 'Chọn kiểu hiển thị', 1),
(1435, 'Chọn menu con', 'Chọn menu con', 1),
(1436, 'Liên kết', 'Liên kết', 1),
(1437, 'Mặc định', 'Mặc định', 1),
(1438, 'Cửa sổ mới', 'Cửa sổ mới', 1),
(1439, 'Đơn hàng mới', 'Đơn hàng mới', 1),
(1440, 'Đang xử lý', 'Đang xử lý', 1),
(1441, 'Đã giao hàng', 'Đã giao hàng', 1),
(1442, 'Hủy đơn hàng', 'Hủy đơn hàng', 1),
(1443, 'Mã đơn hàng', 'Mã đơn hàng', 1),
(1444, 'Địa chỉ giao hàng', 'Địa chỉ giao hàng', 1),
(1445, 'Ghi chú', 'Ghi chú', 1),
(1446, 'Thông Tin nhận hàng', 'Thông Tin nhận hàng', 1),
(1447, 'Hình thức thanh toán', 'Hình thức thanh toán', 1),
(1448, 'Đơn hàng chưa thanh toán', 'Đơn hàng chưa thanh toán', 1),
(1449, 'Đơn hàng đã thanh toán', 'Đơn hàng đã thanh toán', 1),
(1450, 'Khách đã xóa đơn hàng này.', 'Khách đã xóa đơn hàng này.', 1),
(1451, 'Xem chi tiết', 'Xem chi tiết', 1),
(1452, 'Ngày đặt', 'Ngày đặt', 1),
(1453, 'Thanh toán', 'Thanh toán', 1),
(1454, 'Họ tên', 'Họ tên', 1),
(1455, 'Thông tin đơn hàng', 'Thông tin đơn hàng', 1),
(1456, 'Mã sản phẩm', 'Mã sản phẩm', 1),
(1457, 'Đơn giá', 'Đơn giá', 1),
(1458, 'Số lượng', 'Số lượng', 1),
(1459, 'Thành tiền', 'Thành tiền', 1),
(1460, 'Tổng tiền', 'Tổng tiền', 1),
(1461, 'Thông Tin Mua Hàng', 'Thông Tin Mua Hàng', 1),
(1462, 'Thanh toán qua Paypal', 'Thanh toán qua Paypal', 1),
(1463, 'Email nhận tiền paypal', 'Email nhận tiền paypal', 1),
(1464, 'Tỉ lệ VNĐ - USD', 'Tỉ lệ VNĐ - USD', 1),
(1465, 'URL Paypal', 'URL Paypal', 1),
(1466, 'Thêm tài khoản', 'Thêm tài khoản', 1),
(1467, 'Danh sách tài khoản', 'Danh sách tài khoản', 1),
(1468, 'Tên tài khoản đã tồn tại!', 'Tên tài khoản đã tồn tại!', 1),
(1469, 'Email đã tồn tại trong hệ thống!', 'Email đã tồn tại trong hệ thống!', 1),
(1470, 'Tên tài khoản đã tồn tại trong hệ thống!', 'Tên tài khoản đã tồn tại trong hệ thống!', 1),
(1471, 'Địa chỉ email không hợp lệ. Vui lòng kiểm tra lại!', 'Địa chỉ email không hợp lệ. Vui lòng kiểm tra lại!', 1),
(1472, 'Nhập địa chỉ email!', 'Nhập địa chỉ email!', 1),
(1473, 'Mật khẩu nhập lại chưa đúng!', 'Mật khẩu nhập lại chưa đúng!', 1),
(1474, 'Nhập mật khẩu', 'Nhập mật khẩu', 1),
(1482, 'Nhập mật khẩu cũ', 'Nhập mật khẩu cũ', 1),
(1476, 'Tên tài khoản không hợp lệ!', 'Tên tài khoản không hợp lệ!', 1),
(1477, 'Nhập lại mật khẩu', 'Nhập lại mật khẩu', 1),
(1478, 'Tên tài khoản', 'Tên tài khoản', 1),
(1479, 'Loại tài khoản', 'Loại tài khoản', 1),
(1480, 'Nhóm tài khoản', 'Nhóm tài khoản', 1),
(1481, 'Mật khẩu cũ không đúng!', 'Mật khẩu cũ không đúng!', 1),
(1483, 'Mật khẩu cũ', 'Mật khẩu cũ', 1),
(1484, 'Mật khẩu mới', 'Mật khẩu mới', 1),
(1485, 'Nhập lại mật khẩu mới', 'Nhập lại mật khẩu mới', 1),
(1486, 'Nhập từ khóa tìm kiếm', 'Nhập từ khóa tìm kiếm', 1),
(1487, 'Đăng bởi', 'Đăng bởi', 1),
(1488, 'Vui lòng nhập tiêu đề', 'Vui lòng nhập tiêu đề', 1),
(1489, 'Seo Name đã tồn tại. Seo Name được thêm tự động!', 'Seo Name đã tồn tại. Seo Name được thêm tự động!', 1),
(1490, 'Lọc thuộc tính', 'Lọc thuộc tính', 1),
(1491, 'Khuyến mãi', 'Khuyến mãi', 1),
(1492, 'Bán chạy', 'Bán chạy', 1),
(1493, 'Mới', 'Mới', 1),
(1494, 'Tất cả chủ đề', 'Tất cả chủ đề', 1),
(1495, 'Tối đa 3 thuộc tính (Ví dụ: Màu, dung lượng, tính năng)', 'Tối đa 3 thuộc tính (Ví dụ: Màu, dung lượng, tính năng)', 1),
(1496, 'Thuộc tính đặt hàng', 'Thuộc tính đặt hàng', 1),
(1497, 'Giá bán', 'Giá bán', 1),
(1498, 'Giá so sánh', 'Giá so sánh', 1),
(1499, 'Giá thuộc tính chọn', 'Giá thuộc tính chọn', 1),
(1500, 'Phiên bản', 'Phiên bản', 1),
(1501, 'Ảnh thay đổi', 'Ảnh thay đổi', 1),
(1502, 'Ảnh chi tiết', 'Ảnh chi tiết', 1),
(1503, 'Thuộc chủ đề', 'Thuộc chủ đề', 1),
(1504, 'Tiêu biểu', 'Tiêu biểu', 1),
(1505, 'chủ đề', 'chủ đề', 1),
(1506, 'Nằm trong', 'Nằm trong', 1),
(1507, 'Option thuộc', 'Option thuộc', 1),
(1508, 'Đặt hàng', 'Đặt hàng', 1),
(1509, 'Thống kê lượt truy cập', 'Thống kê lượt truy cập', 1),
(1510, 'Thống kê lượt truy cập trong 10 ngày gần nhất', 'Thống kê lượt truy cập trong 10 ngày gần nhất', 1),
(1511, 'Tổng lượt truy cập', 'Tổng lượt truy cập', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lh_counter`
--

CREATE TABLE `lh_counter` (
  `id` int(11) NOT NULL,
  `coonter` double NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_counter`
--

INSERT INTO `lh_counter` (`id`, `coonter`) VALUES
(1, 111499);

-- --------------------------------------------------------

--
-- Table structure for table `lh_count_date`
--

CREATE TABLE `lh_count_date` (
  `id` int(11) NOT NULL,
  `day` int(2) NOT NULL DEFAULT 0,
  `month` int(2) NOT NULL DEFAULT 0,
  `year` int(4) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_count_date`
--

INSERT INTO `lh_count_date` (`id`, `day`, `month`, `year`, `count`) VALUES
(1, 22, 4, 2021, 1),
(2, 23, 4, 2021, 15),
(3, 24, 4, 2021, 6),
(4, 26, 4, 2021, 22),
(5, 27, 4, 2021, 38),
(6, 28, 4, 2021, 32),
(7, 29, 4, 2021, 6),
(8, 3, 5, 2021, 1),
(9, 5, 5, 2021, 2),
(10, 6, 5, 2021, 11),
(11, 7, 5, 2021, 9),
(12, 10, 5, 2021, 6),
(13, 11, 5, 2021, 39),
(14, 12, 5, 2021, 1),
(15, 13, 5, 2021, 10),
(16, 14, 5, 2021, 60),
(17, 15, 5, 2021, 1),
(18, 17, 5, 2021, 20),
(19, 18, 5, 2021, 77),
(20, 19, 5, 2021, 8),
(21, 20, 5, 2021, 9),
(22, 21, 5, 2021, 9),
(23, 24, 5, 2021, 20),
(24, 25, 5, 2021, 39),
(25, 26, 5, 2021, 32),
(26, 27, 5, 2021, 69),
(27, 28, 5, 2021, 33),
(28, 31, 5, 2021, 1),
(29, 1, 6, 2021, 1),
(30, 2, 6, 2021, 3),
(31, 3, 6, 2021, 45),
(32, 4, 6, 2021, 8),
(33, 7, 6, 2021, 80),
(34, 8, 6, 2021, 134),
(35, 9, 6, 2021, 105),
(36, 10, 6, 2021, 43),
(37, 11, 6, 2021, 41),
(38, 12, 6, 2021, 48),
(39, 13, 6, 2021, 20),
(40, 14, 6, 2021, 8),
(41, 15, 6, 2021, 49),
(42, 16, 6, 2021, 13),
(43, 17, 6, 2021, 13),
(44, 18, 6, 2021, 32),
(45, 19, 6, 2021, 3),
(46, 21, 6, 2021, 4),
(47, 22, 6, 2021, 13),
(48, 23, 6, 2021, 3),
(49, 25, 6, 2021, 16),
(50, 28, 6, 2021, 1),
(51, 3, 7, 2021, 3),
(52, 8, 7, 2021, 3),
(53, 29, 7, 2021, 13),
(54, 30, 7, 2021, 12),
(55, 31, 7, 2021, 1),
(56, 2, 8, 2021, 9),
(57, 6, 8, 2021, 1),
(58, 16, 8, 2021, 16),
(59, 18, 6, 2024, 2),
(60, 5, 8, 2024, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lh_danhmuc`
--

CREATE TABLE `lh_danhmuc` (
  `id` int(11) NOT NULL,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `tenbaiviet_cn` varchar(255) DEFAULT NULL,
  `tenbaiviet_jp` varchar(255) DEFAULT NULL,
  `p1_vi` varchar(255) DEFAULT NULL,
  `p1_en` varchar(255) DEFAULT NULL,
  `p1_cn` varchar(255) DEFAULT NULL,
  `p1_jp` varchar(255) DEFAULT NULL,
  `seo_name` varchar(250) DEFAULT NULL,
  `lien_ket` varchar(255) DEFAULT NULL,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `icon` varchar(200) DEFAULT NULL,
  `icon_hover` varchar(255) DEFAULT NULL,
  `mota_en` mediumtext DEFAULT NULL,
  `mota_vi` mediumtext DEFAULT NULL,
  `mota_cn` mediumtext DEFAULT NULL,
  `mota_jp` mediumtext DEFAULT NULL,
  `noidung_en` mediumtext DEFAULT NULL,
  `noidung_vi` mediumtext DEFAULT NULL,
  `noidung_cn` mediumtext DEFAULT NULL,
  `noidung_jp` mediumtext DEFAULT NULL,
  `duongdantin` varchar(200) DEFAULT NULL,
  `step` int(11) DEFAULT NULL,
  `id_step` int(11) NOT NULL DEFAULT 0,
  `ngaydang` int(15) NOT NULL DEFAULT 0,
  `seo_title_vi` varchar(255) DEFAULT NULL,
  `seo_title_en` varchar(255) DEFAULT NULL,
  `seo_title_cn` varchar(255) DEFAULT NULL,
  `seo_title_jp` varchar(255) DEFAULT NULL,
  `seo_description_vi` varchar(255) DEFAULT NULL,
  `seo_description_en` varchar(255) DEFAULT NULL,
  `seo_description_cn` varchar(255) DEFAULT NULL,
  `seo_description_jp` varchar(255) DEFAULT NULL,
  `seo_keywords_vi` varchar(255) DEFAULT NULL,
  `seo_keywords_en` varchar(255) DEFAULT NULL,
  `seo_keywords_cn` varchar(255) DEFAULT NULL,
  `seo_keywords_jp` varchar(255) DEFAULT NULL,
  `opt` tinyint(1) NOT NULL DEFAULT 0,
  `catasort` int(11) DEFAULT NULL,
  `showhi` tinyint(2) NOT NULL DEFAULT 1,
  `num_1` int(11) NOT NULL DEFAULT 0,
  `num_2` int(11) NOT NULL DEFAULT 0,
  `nhom_sp` tinyint(1) NOT NULL DEFAULT 0,
  `p_khuyenmai` tinyint(1) NOT NULL DEFAULT 0,
  `p_banchay` tinyint(1) NOT NULL DEFAULT 0,
  `p_noibat` tinyint(1) NOT NULL DEFAULT 0,
  `p_spmoi` tinyint(1) NOT NULL DEFAULT 0,
  `p_hethang` tinyint(1) NOT NULL DEFAULT 0,
  `id_parent_muti` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='Bang chua catalag News' ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `lh_danhmuc`
--

INSERT INTO `lh_danhmuc` (`id`, `tenbaiviet_vi`, `tenbaiviet_en`, `tenbaiviet_cn`, `tenbaiviet_jp`, `p1_vi`, `p1_en`, `p1_cn`, `p1_jp`, `seo_name`, `lien_ket`, `id_parent`, `icon`, `icon_hover`, `mota_en`, `mota_vi`, `mota_cn`, `mota_jp`, `noidung_en`, `noidung_vi`, `noidung_cn`, `noidung_jp`, `duongdantin`, `step`, `id_step`, `ngaydang`, `seo_title_vi`, `seo_title_en`, `seo_title_cn`, `seo_title_jp`, `seo_description_vi`, `seo_description_en`, `seo_description_cn`, `seo_description_jp`, `seo_keywords_vi`, `seo_keywords_en`, `seo_keywords_cn`, `seo_keywords_jp`, `opt`, `catasort`, `showhi`, `num_1`, `num_2`, `nhom_sp`, `p_khuyenmai`, `p_banchay`, `p_noibat`, `p_spmoi`, `p_hethang`, `id_parent_muti`) VALUES
(16, 'BARRIER TỰ ĐỘNG', '', NULL, NULL, '', '', NULL, NULL, 'barrier-tu-dong', NULL, 7, NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 'datafiles', 2, 2, 1623373739, 'BARRIER TỰ ĐỘNG', '', NULL, NULL, 'BARRIER TỰ ĐỘNG', '', NULL, NULL, 'BARRIER TỰ ĐỘNG', '', NULL, NULL, 0, 15, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(10, 'PASSCODE - CARD - KEY', '', NULL, NULL, '', '', NULL, NULL, 'passcode-card-key', NULL, 5, NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 'datafiles', 2, 2, 1622010517, 'PASSCODE - CARD - KEY', '', NULL, NULL, 'PASSCODE - CARD - KEY', '', NULL, NULL, 'PASSCODE - CARD - KEY', '', NULL, NULL, 0, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(14, 'CARD - KEY', '', NULL, NULL, '', '', NULL, NULL, 'card-key', NULL, 4, NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 'datafiles', 2, 2, 1622011469, 'CARD - KEY', '', NULL, NULL, 'CARD - KEY', '', NULL, NULL, 'CARD - KEY', '', NULL, NULL, 0, 13, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(15, 'CARD - KEY', '', NULL, NULL, '', '', NULL, NULL, 'card-key-127', NULL, 5, NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 'datafiles', 2, 2, 1623373669, 'CARD - KEY', '', NULL, NULL, 'CARD - KEY', '', NULL, NULL, 'CARD - KEY', '', NULL, NULL, 0, 14, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(13, 'CỔNG TỰ ĐỘNG', '', NULL, NULL, '', '', NULL, NULL, 'cong-tu-dong', NULL, 7, NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 'datafiles', 2, 2, 1622010641, 'CỔNG TỰ ĐỘNG', '', NULL, NULL, 'CỔNG TỰ ĐỘNG', '', NULL, NULL, 'CỔNG TỰ ĐỘNG', '', NULL, NULL, 0, 12, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(8, 'WIFI/BLUETOOTH - PASSCODE - CARD - KEY', '', NULL, NULL, '', '', NULL, NULL, 'wifi-bluetooth-passcode-card-key', NULL, 5, NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 'datafiles', 2, 2, 1622010461, 'WIFI/BLUETOOTH - PASSCODE - CARD - KEY', '', NULL, NULL, 'WIFI/BLUETOOTH - PASSCODE - CARD - KEY', '', NULL, NULL, 'WIFI/BLUETOOTH - PASSCODE - CARD - KEY', '', NULL, NULL, 0, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(9, 'FINGERSPINT - PASSCODE - CARD - KEY', '', NULL, NULL, '', '', NULL, NULL, 'fingerspint-passcode-card-key', NULL, 5, NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 'datafiles', 2, 2, 1623373627, 'FINGERSPINT - PASSCODE - CARD - KEY', '', NULL, NULL, 'FINGERSPINT - PASSCODE - CARD - KEY', '', NULL, NULL, 'FINGERSPINT - PASSCODE - CARD - KEY', '', NULL, NULL, 0, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4, 'HOTEL SMART LOCK', '', NULL, NULL, '', '', NULL, NULL, 'hotel-smart-lock', NULL, 0, NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 'datafiles', 2, 2, 1622010172, 'HOTEL SMART LOCK', '', NULL, NULL, 'HOTEL SMART LOCK', '', NULL, NULL, 'HOTEL SMART LOCK', '', NULL, NULL, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5, 'APARTMENT SMART LOCK', '', NULL, NULL, '', '', NULL, NULL, 'apartment-smart-lock', NULL, 0, NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 'datafiles', 2, 2, 1622010189, 'APARTMENT SMART LOCK', '', NULL, NULL, 'APARTMENT SMART LOCK', '', NULL, NULL, 'APARTMENT SMART LOCK', '', NULL, NULL, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(6, 'SMART HOME / SMART HOTEL', '', NULL, NULL, '', '', NULL, NULL, 'smart-home-smart-hotel', NULL, 0, NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 'datafiles', 2, 2, 1622010295, 'SMART HOME / SMART HOTEL', '', NULL, NULL, 'SMART HOME / SMART HOTEL', '', NULL, NULL, 'SMART HOME / SMART HOTEL', '', NULL, NULL, 0, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(7, 'COOPERATION PRODUCTS', '', NULL, NULL, '', '', NULL, NULL, 'san-pham-doi-tac-chien-luoc', NULL, 0, NULL, NULL, '', '', NULL, NULL, '', '', NULL, NULL, 'datafiles', 2, 2, 1622088872, 'SẢN PHẨM ĐỐI TÁC CHIẾN LƯỢC', '', NULL, NULL, 'SẢN PHẨM ĐỐI TÁC CHIẾN LƯỢC', '', NULL, NULL, 'SẢN PHẨM ĐỐI TÁC CHIẾN LƯỢC', '', NULL, NULL, 0, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `lh_du_lieu_sn`
--

CREATE TABLE `lh_du_lieu_sn` (
  `id` int(11) NOT NULL,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `mota_vi` varchar(255) DEFAULT NULL,
  `mota_en` varchar(255) DEFAULT NULL,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `seo_name` varchar(255) DEFAULT NULL,
  `val_1` varchar(255) DEFAULT NULL,
  `val_2` varchar(255) DEFAULT NULL,
  `blank` varchar(255) DEFAULT NULL,
  `catasort` int(11) NOT NULL DEFAULT 0,
  `opt` tinyint(1) NOT NULL DEFAULT 0,
  `spchon` mediumtext DEFAULT NULL,
  `showhi` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lh_email_config`
--

CREATE TABLE `lh_email_config` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `showhi` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_email_config`
--

INSERT INTO `lh_email_config` (`id`, `email`, `type`, `showhi`) VALUES
(6, 'linhhuynh@pavietnam.vn', 1, 1),
(7, 'hatrongduy@gmail.com', 0, 1),
(8, 'orbitavn-marketing@gmail.com', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lh_email_follow`
--

CREATE TABLE `lh_email_follow` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `v_name` varchar(255) DEFAULT NULL,
  `v_phone` varchar(255) DEFAULT NULL,
  `ddate` int(11) NOT NULL DEFAULT 0,
  `icon` varchar(255) DEFAULT NULL,
  `showhi` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lh_file_import_data`
--

CREATE TABLE `lh_file_import_data` (
  `id` int(11) NOT NULL,
  `ten_vi` varchar(255) DEFAULT NULL,
  `duongdantin` varchar(255) DEFAULT NULL,
  `file_excel` varchar(255) DEFAULT NULL,
  `ngay_dang` int(11) NOT NULL DEFAULT 0,
  `so_lan_import` int(11) NOT NULL DEFAULT 0,
  `noidung_vi` mediumtext DEFAULT NULL,
  `import_cuoi` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lh_form_lienhe`
--

CREATE TABLE `lh_form_lienhe` (
  `id` int(11) NOT NULL,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `ip_gui` varchar(255) DEFAULT NULL,
  `ngay_dang` int(11) NOT NULL DEFAULT 0,
  `noi_dung_vn` longtext DEFAULT NULL,
  `showhi` tinyint(1) NOT NULL DEFAULT 1,
  `loai` int(11) NOT NULL DEFAULT 0,
  `nd_json` longtext DEFAULT NULL,
  `file_1` varchar(255) DEFAULT NULL,
  `file_2` varchar(255) DEFAULT NULL,
  `id_bv` int(11) NOT NULL DEFAULT 0,
  `is_nuti` tinyint(4) NOT NULL DEFAULT 0,
  `mutile_files` longtext DEFAULT NULL,
  `inputfile_mul_check` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lh_lienket`
--

CREATE TABLE `lh_lienket` (
  `id` int(11) NOT NULL,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `lien_ket` varchar(255) DEFAULT NULL,
  `thuc_hien` int(11) NOT NULL DEFAULT 0,
  `lan_cuoi` int(11) NOT NULL DEFAULT 0,
  `showhi` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lh_lien_ket_nhanh`
--

CREATE TABLE `lh_lien_ket_nhanh` (
  `id` int(11) NOT NULL,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `gia_min` int(11) NOT NULL DEFAULT 0,
  `gia_max` int(11) NOT NULL DEFAULT 0,
  `catasort` int(11) NOT NULL DEFAULT 0,
  `showhi` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_lien_ket_nhanh`
--

INSERT INTO `lh_lien_ket_nhanh` (`id`, `tenbaiviet_vi`, `tenbaiviet_en`, `gia_min`, `gia_max`, `catasort`, `showhi`) VALUES
(1, 'Dưới 1 triệu đồng', 'Under 1 million', 0, 1000000, 1, 1),
(2, '1.000.000 đ - 2.000.000 đ', '1.000.000 đ - 2.000.000 đ', 1000000, 2000000, 2, 1),
(3, '2.000.000 đ - 4.000.000 đ', '2.000.000 đ - 4.000.000 đ', 2000000, 4000000, 3, 1),
(4, '4.000.000 đ - 5.000.000 đ', '2.000.000 đ - 4.000.000 đ', 4000000, 5000000, 4, 1),
(5, 'Trên 5 triệu đồng', 'Over 5 million', 5000000, 0, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lh_lien_ket_nhanh_phan_tram`
--

CREATE TABLE `lh_lien_ket_nhanh_phan_tram` (
  `id` int(11) NOT NULL,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `gia_min` int(11) NOT NULL DEFAULT 0,
  `gia_max` int(11) NOT NULL DEFAULT 0,
  `catasort` int(11) NOT NULL DEFAULT 0,
  `showhi` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lh_magiamgia`
--

CREATE TABLE `lh_magiamgia` (
  `id` int(11) NOT NULL,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `so_lan_su_dung` int(11) NOT NULL DEFAULT 0,
  `khong_gioi_han` tinyint(1) NOT NULL DEFAULT 0,
  `loai_km` tinyint(1) NOT NULL DEFAULT 0,
  `gia_tri_giam` int(11) NOT NULL DEFAULT 0,
  `ap_dung_cho` int(11) NOT NULL DEFAULT 0,
  `gia_tri_ap_dung` int(11) NOT NULL DEFAULT 0,
  `ap_dung_khuyen_mail_tren_don_hang` tinyint(1) NOT NULL DEFAULT 0,
  `bat_dau` int(11) NOT NULL DEFAULT 0,
  `ket_thuc` int(11) NOT NULL DEFAULT 0,
  `ngay_tao` int(11) NOT NULL DEFAULT 0,
  `catasort` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lh_magiamgia_chitiet`
--

CREATE TABLE `lh_magiamgia_chitiet` (
  `id` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `ma_giam_gia` varchar(255) DEFAULT NULL,
  `so_lan_su_dung` int(11) NOT NULL DEFAULT 0,
  `tong_su_dung` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lh_mangxahoi`
--

CREATE TABLE `lh_mangxahoi` (
  `id` int(11) NOT NULL,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `tenbaiviet_cn` varchar(255) DEFAULT NULL,
  `tenbaiviet_jp` varchar(255) DEFAULT NULL,
  `tenbaiviet_kr` varchar(255) DEFAULT NULL,
  `tenbaiviet_in` varchar(255) DEFAULT NULL,
  `seo_name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `duongdantin` varchar(255) DEFAULT NULL,
  `fontawesome` varchar(255) DEFAULT NULL,
  `catasort` int(11) NOT NULL DEFAULT 1,
  `showhi` tinyint(4) NOT NULL DEFAULT 1,
  `background` varchar(255) DEFAULT NULL,
  `is_top` tinyint(4) NOT NULL DEFAULT 0,
  `is_foot` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_mangxahoi`
--

INSERT INTO `lh_mangxahoi` (`id`, `tenbaiviet_vi`, `tenbaiviet_en`, `tenbaiviet_cn`, `tenbaiviet_jp`, `tenbaiviet_kr`, `tenbaiviet_in`, `seo_name`, `icon`, `duongdantin`, `fontawesome`, `catasort`, `showhi`, `background`, `is_top`, `is_foot`) VALUES
(1, 'Zalo', 'Zalo', NULL, NULL, NULL, NULL, '', '1619086465_z.png', 'datafiles', '', 5, 1, '', 0, 0),
(2, 'Message', 'Message', NULL, NULL, NULL, NULL, '', '1619086513_m.png', 'datafiles', '', 4, 1, '', 0, 0),
(3, 'Facebook', 'Facebook', NULL, NULL, NULL, NULL, '', '1619086533_f.png', 'datafiles', '', 3, 1, '', 0, 0),
(4, 'Youtube', 'Youtube', NULL, NULL, NULL, NULL, '', '1619086553_y.png', 'datafiles', '', 2, 1, '', 0, 0),
(5, 'Instagram', 'Instagram', NULL, NULL, NULL, NULL, '', '1619086724_i.png', 'datafiles', '', 1, 1, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lh_marketing`
--

CREATE TABLE `lh_marketing` (
  `id` int(11) NOT NULL,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `mota_vi` varchar(255) DEFAULT NULL,
  `mota_en` varchar(255) DEFAULT NULL,
  `noidung_vi` varchar(255) DEFAULT NULL,
  `noidung_en` varchar(255) DEFAULT NULL,
  `duongdantin` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `catasort` int(11) NOT NULL DEFAULT 0,
  `showhi` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lh_marketing`
--

INSERT INTO `lh_marketing` (`id`, `tenbaiviet_vi`, `tenbaiviet_en`, `mota_vi`, `mota_en`, `noidung_vi`, `noidung_en`, `duongdantin`, `icon`, `catasort`, `showhi`) VALUES
(27, 'Mới mua hàng', 'Mới mua hàng', 'diepnguyen928@gmail.com Ngọc Điệp', 'diepnguyen928@gmail.com Ngọc Điệp', 'Khách hàng [hoten] vừa mới mua hàng thành công!', 'Khách hàng [hoten] vừa mới mua hàng thành công!', 'datafiles', '1617177978_1591754155_6.jpg', 11, 1),
(28, 'Mới mua hàng', 'Mới mua hàng', 'diepnguyen928@gmail.com Ngọc Điệp', 'diepnguyen928@gmail.com Ngọc Điệp', 'Khách hàng [hoten] vừa mới mua hàng thành công!', 'Khách hàng [hoten] vừa mới mua hàng thành công!', 'datafiles', '1617177991_1591754155_7.jpg', 10, 1),
(29, 'Mới mua hàng', 'Mới mua hàng', 'diepnguyen928@gmail.com Ngọc Điệp', 'diepnguyen928@gmail.com Ngọc Điệp', 'Khách hàng [hoten] vừa mới mua hàng thành công!', 'Khách hàng [hoten] vừa mới mua hàng thành công!', 'datafiles', '1617178000_1591754155_8.jpg', 9, 1),
(30, 'Mới mua hàng', 'Mới mua hàng', 'diepnguyen928@gmail.com Ngọc Điệp', 'diepnguyen928@gmail.com Ngọc Điệp', 'Khách hàng [hoten] vừa mới mua hàng thành công!', 'Khách hàng [hoten] vừa mới mua hàng thành công!', 'datafiles', '1617178011_1591754155_10.jpg', 8, 1),
(31, 'Mới mua hàng', 'Mới mua hàng', 'diepnguyen928@gmail.com Ngọc Điệp', 'diepnguyen928@gmail.com Ngọc Điệp', 'Khách hàng [hoten] vừa mới mua hàng thành công!', 'Khách hàng [hoten] vừa mới mua hàng thành công!', 'datafiles', '1617178020_1591754155_11.jpeg', 7, 1),
(32, 'Mới mua hàng', 'Mới mua hàng', 'diepnguyen928@gmail.com Ngọc Điệp', 'diepnguyen928@gmail.com Ngọc Điệp', 'Khách hàng [hoten] vừa mới mua hàng thành công!', 'Khách hàng [hoten] vừa mới mua hàng thành công!', 'datafiles', '1617178119_1591754134_12.jpg', 6, 1),
(33, 'Mới mua hàng', 'Mới mua hàng', 'diepnguyen928@gmail.com Ngọc Điệp', 'diepnguyen928@gmail.com Ngọc Điệp', 'Khách hàng [hoten] vừa mới mua hàng thành công!', 'Khách hàng [hoten] vừa mới mua hàng thành công!', 'datafiles', '1617178144_1591754156_1.png', 5, 1),
(34, 'Mới mua hàng', 'Mới mua hàng', 'diepnguyen928@gmail.com Ngọc Điệp', 'diepnguyen928@gmail.com Ngọc Điệp', 'Khách hàng [hoten] vừa mới mua hàng thành công!', 'Khách hàng [hoten] vừa mới mua hàng thành công!', 'datafiles', '1617178149_1591754155_2.png', 4, 1),
(35, 'Mới mua hàng', 'Mới mua hàng', 'diepnguyen928@gmail.com Ngọc Điệp', 'diepnguyen928@gmail.com Ngọc Điệp', 'Khách hàng [hoten] vừa mới mua hàng thành công!', 'Khách hàng [hoten] vừa mới mua hàng thành công!', 'datafiles', '1617178154_1591754155_3.jpg', 3, 1),
(36, 'Mới mua hàng', 'Mới mua hàng', 'diepnguyen928@gmail.com Ngọc Điệp', 'diepnguyen928@gmail.com Ngọc Điệp', 'Khách hàng [hoten] vừa mới mua hàng thành công!', 'Khách hàng [hoten] vừa mới mua hàng thành công!', 'datafiles', '1617178159_1591754155_3.jpg', 2, 1),
(26, 'Mới mua hàng', 'Mới mua hàng', 'diepnguyen928@gmail.com Ngọc Điệp', 'diepnguyen928@gmail.com Ngọc Điệp', 'Khách hàng [hoten] vừa mới mua hàng thành công!', 'Khách hàng [hoten] vừa mới mua hàng thành công!', 'datafiles', '1617178165_1591754155_4.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lh_marketing_setting`
--

CREATE TABLE `lh_marketing_setting` (
  `id` int(11) NOT NULL,
  `time_hien_thi` int(11) NOT NULL DEFAULT 0,
  `time_cho` int(11) NOT NULL DEFAULT 0,
  `mau_nen` varchar(255) DEFAULT NULL,
  `mau_chu` varchar(255) DEFAULT NULL,
  `mau_ten` varchar(255) DEFAULT NULL,
  `mau_tim` varchar(255) DEFAULT NULL,
  `time_load_lan` int(11) NOT NULL DEFAULT 0,
  `is_vitri` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lh_marketing_setting`
--

INSERT INTO `lh_marketing_setting` (`id`, `time_hien_thi`, `time_cho`, `mau_nen`, `mau_chu`, `mau_ten`, `mau_tim`, `time_load_lan`, `is_vitri`) VALUES
(1, 60, 10, 'rgb(44 62 80)', '#fff', '#ff0', '#f93b2f', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `lh_members`
--

CREATE TABLE `lh_members` (
  `id` int(7) NOT NULL,
  `tentruycap` varchar(100) DEFAULT NULL,
  `matkhau` varchar(255) DEFAULT NULL,
  `keypass` varchar(10) DEFAULT NULL,
  `hoten` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `sodienthoai` varchar(255) DEFAULT NULL,
  `gioitinh` tinyint(1) NOT NULL DEFAULT 0,
  `ngaysinh` varchar(15) DEFAULT NULL,
  `cmnd` varchar(255) DEFAULT NULL,
  `idsp_view` mediumtext DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL,
  `phanquyen` int(11) NOT NULL DEFAULT 0,
  `showhi` tinyint(1) NOT NULL DEFAULT 1,
  `icon` varchar(255) DEFAULT NULL,
  `id_facebook` int(11) NOT NULL DEFAULT 0,
  `id_google` int(11) NOT NULL DEFAULT 0,
  `google_icon` varchar(255) DEFAULT NULL,
  `ip_login` varchar(255) DEFAULT NULL,
  `ip_login_last` varchar(255) DEFAULT NULL,
  `ip_login_time` int(11) NOT NULL DEFAULT 0,
  `ip_login_last_time` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_members`
--

INSERT INTO `lh_members` (`id`, `tentruycap`, `matkhau`, `keypass`, `hoten`, `email`, `diachi`, `sodienthoai`, `gioitinh`, `ngaysinh`, `cmnd`, `idsp_view`, `active`, `phanquyen`, `showhi`, `icon`, `id_facebook`, `id_google`, `google_icon`, `ip_login`, `ip_login_last`, `ip_login_time`, `ip_login_last_time`) VALUES
(1, 'obtvietnam', '8F8DDC3309DEB8241475894DF702AD4C1DBDD9D845644CE6B563EA5B4BE33F61D677817A', '8QC47', 'OBT VN', 'linhhuynh@pavietnam.vn', 'TP.HCM', '0797518166', 0, '', NULL, '', 'af0c3937de296541d566bec2f91f125dP_A012b26b3c4109e3eebb2f5b8f10451f3', 1, 1, '0', 0, 0, NULL, '::1', '::1', 1718695730, 1718695730),
(113, 'linhhuynhpa86851617240647', '0D5224D623B31FF216305D8B6570C1ECF22DB5BB14DA7AF77883C3EE0DC3F8B9A59031C5', '4KWMD', '1', 'linhhuynhpa@gmail.com', '3', '2', 0, '', '', NULL, NULL, 0, 1, NULL, 0, 0, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lh_members_log`
--

CREATE TABLE `lh_members_log` (
  `id` int(20) NOT NULL,
  `log` varchar(255) DEFAULT NULL,
  `time_log` int(11) NOT NULL DEFAULT 0,
  `id_user` int(11) NOT NULL DEFAULT 0,
  `id_mb` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lh_members_nhom`
--

CREATE TABLE `lh_members_nhom` (
  `id` int(11) NOT NULL,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `phan_tram` float NOT NULL DEFAULT 0,
  `catasort` int(11) NOT NULL DEFAULT 0,
  `showhi` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lh_menu`
--

CREATE TABLE `lh_menu` (
  `id` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `tenbaiviet_cn` varchar(255) DEFAULT NULL,
  `tenbaiviet_jp` varchar(255) DEFAULT NULL,
  `tenbaiviet_kr` varchar(255) DEFAULT NULL,
  `tenbaiviet_in` varchar(255) DEFAULT NULL,
  `seo_name` varchar(255) DEFAULT NULL,
  `step` int(11) NOT NULL DEFAULT 0,
  `danhmuc` int(11) NOT NULL DEFAULT 0,
  `kieu_hien_thi` tinyint(4) NOT NULL DEFAULT 0,
  `kieu_chon` tinyint(1) NOT NULL DEFAULT 0,
  `cua_so_moi` tinyint(4) NOT NULL DEFAULT 0,
  `catasort` int(11) NOT NULL DEFAULT 1,
  `showhi` tinyint(1) NOT NULL DEFAULT 1,
  `icon` varchar(255) DEFAULT NULL,
  `icon_hover` varchar(255) DEFAULT NULL,
  `duongdantin` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_menu`
--

INSERT INTO `lh_menu` (`id`, `id_parent`, `tenbaiviet_vi`, `tenbaiviet_en`, `tenbaiviet_cn`, `tenbaiviet_jp`, `tenbaiviet_kr`, `tenbaiviet_in`, `seo_name`, `step`, `danhmuc`, `kieu_hien_thi`, `kieu_chon`, `cua_so_moi`, `catasort`, `showhi`, `icon`, `icon_hover`, `duongdantin`) VALUES
(1, 0, '2021_obtvietnam', '2021_obtvietnam', NULL, NULL, NULL, NULL, '', 0, 0, 0, 0, 0, 1, 1, NULL, NULL, 'datafiles'),
(2, 1, 'Khái nét', 'Definition', NULL, NULL, NULL, NULL, '', 1, 0, 0, 1, 0, 2, 1, NULL, NULL, 'datafiles'),
(3, 1, 'Bộ sưu tập', 'Collection', NULL, NULL, NULL, NULL, '', 2, 0, 1, 1, 0, 3, 1, NULL, NULL, 'datafiles'),
(4, 1, 'DỰ ÁN', 'Key project', NULL, NULL, NULL, NULL, '', 3, 0, 0, 1, 0, 4, 1, NULL, NULL, 'datafiles'),
(5, 1, 'Dịch vụ', 'Service', NULL, NULL, NULL, NULL, '', 4, 0, 0, 1, 0, 5, 1, NULL, NULL, 'datafiles'),
(6, 1, 'Tuyển dụng', 'Recruitment', NULL, NULL, NULL, NULL, '', 5, 0, 0, 1, 0, 6, 1, NULL, NULL, 'datafiles'),
(7, 1, 'Liên hệ', 'Contact', NULL, NULL, NULL, NULL, '', 6, 0, 0, 1, 0, 7, 1, NULL, NULL, 'datafiles'),
(8, 1, 'Trang chủ', 'Home page', NULL, NULL, NULL, NULL, '', 0, 0, 0, 0, 0, 1, 1, NULL, NULL, 'datafiles');

-- --------------------------------------------------------

--
-- Table structure for table `lh_module_nhomtaikhoan`
--

CREATE TABLE `lh_module_nhomtaikhoan` (
  `id` int(11) NOT NULL,
  `ten_vi` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 1,
  `showhi` tinyint(1) NOT NULL DEFAULT 1,
  `phan_quyen` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_module_nhomtaikhoan`
--

INSERT INTO `lh_module_nhomtaikhoan` (`id`, `ten_vi`, `sort`, `showhi`, `phan_quyen`) VALUES
(7, 'Quản trị', 1, 0, '{\"ql-website\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":1},\"tn_29\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":1},\"thiet-lap-website\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_36\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"thiet-lap-menu\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_41\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"nhom-quan-tri\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_47\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_102\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"m-menu\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_30\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"khoa-website\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_37\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"danh-sach-thanh-vien-quan-tri\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_48\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_91\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"main-module\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":1},\"tn_31\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":1},\"quan-ly-ngon-ngu\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_38\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"ql-hinh-anh\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_33\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"danh-sach-mang-xa-hoi\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_64\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tk-quan-tri\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":1},\"tn_34\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":1},\"em-he-thong\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_13\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"nhung-thong-tin-khac\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_42\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"thong-tin-ca-nhan\":{\"xem\":1,\"them\":0,\"sua\":1,\"xoa\":0,\"menu\":1},\"tn_50\":{\"xem\":1,\"them\":0,\"sua\":1,\"xoa\":0,\"menu\":1},\"tn_99\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"khach-hang-lien-he\":{\"xem\":1,\"them\":0,\"sua\":1,\"xoa\":0,\"menu\":1},\"tn_40\":{\"xem\":1,\"them\":0,\"sua\":1,\"xoa\":0,\"menu\":1},\"tn_45\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"lien-ket-sn\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_101\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"1\":{\"xem\":1,\"them\":1,\"sua\":1,\"xoa\":0,\"menu\":1},\"2\":{\"xem\":1,\"them\":1,\"sua\":1,\"xoa\":0,\"menu\":1},\"3\":{\"xem\":1,\"them\":1,\"sua\":1,\"xoa\":0,\"menu\":1},\"4\":{\"xem\":1,\"them\":1,\"sua\":1,\"xoa\":0,\"menu\":1},\"5\":{\"xem\":1,\"them\":1,\"sua\":1,\"xoa\":0,\"menu\":1}}');

-- --------------------------------------------------------

--
-- Table structure for table `lh_module_page`
--

CREATE TABLE `lh_module_page` (
  `id` int(11) NOT NULL,
  `ten_vi` varchar(255) DEFAULT NULL,
  `page` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `showhi` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_module_page`
--

INSERT INTO `lh_module_page` (`id`, `ten_vi`, `page`, `sort`, `showhi`) VALUES
(1, 'Giới thiệu', 1, 1, 1),
(2, 'Sản phẩm', 2, 2, 1),
(3, 'Tin tức', 3, 3, 1),
(4, 'Dịch vụ', 4, 4, 1),
(5, 'Liên hệ', 5, 5, 1),
(6, 'Thư viện ảnh', 6, 6, 0),
(7, 'Dowload File', 7, 7, 0),
(8, 'Video', 8, 8, 0),
(33, 'Tuyển dung', 33, 33, 0),
(32, 'Hỏi đáp', 32, 32, 0),
(12, 'Hệ thống cửa hàng', 12, 12, 0),
(13, 'Đối tác', 13, 13, 0),
(34, 'Chính sách', 34, 34, 0),
(35, 'Xúc Tiến Chuyển Nhượng Dự Án', 35, 35, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lh_module_setting`
--

CREATE TABLE `lh_module_setting` (
  `id` int(11) NOT NULL,
  `ten_vi` varchar(255) DEFAULT NULL,
  `ten_key` varchar(255) DEFAULT NULL,
  `is_check` tinyint(4) NOT NULL DEFAULT 1,
  `sort` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_module_setting`
--

INSERT INTO `lh_module_setting` (`id`, `ten_vi`, `ten_key`, `is_check`, `sort`) VALUES
(6, 'Danh mục tiêu biểu', '', 1, 0),
(10, 'Sản phẩm khuyến mãi', 'san-pham-khuyen-mai', 0, 8),
(11, 'Hình ảnh hover', '', 1, 9),
(12, 'Mã sản phẩm', 'ma-san-pham', 1, 10),
(18, 'Ngôn ngữ Tiến Anh', 'ngon-ngu-tieng-anh', 1, 16),
(46, 'Dowload file', '', 1, 0),
(22, 'Mô tả main module', '', 1, 20),
(23, 'Main menu - Ảnh slider', 'main-menu-anh-slider', 0, 21),
(52, 'Bài viết không mô tả', '10,15,14,1,16,6,9,11,7,8,11,13,14', 1, 0),
(53, 'Bài viết không nội dung', '10,11', 1, 0),
(28, 'Thêm ngôn ngữ thứ 3', 'them-ngon-ngu-thu-3', 0, 16),
(29, 'Liên hệ nhóm con', 'lien-he-nhom-con', 1, 26),
(36, 'Danh sách hình ảnh nội dung', 'danh-sach-hinh-anh-noidung', 1, 33),
(37, 'Danh sách hình ảnh video', 'danh-sach-hinh-anh-video', 0, 34),
(38, 'Hiển thị danh mục', '2', 1, 0),
(39, 'Hiển thị tính năng', '2', 1, 0),
(42, 'Liên kết bài viết khác', 'lien-ket-bai-viet-khac', 0, 38),
(43, 'Ảnh slider', '2', 1, 0),
(45, 'Thêm ngôn ngữ thứ 4', 'them-ngon-ngu-thu-4', 0, 40),
(47, 'Danh mục mô tả', '', 1, 0),
(48, 'Danh mục nội dung', '', 1, 0),
(49, 'Bài viết Opt', '2,3', 1, 0),
(50, 'Bài viết Opt1', '', 1, 0),
(51, 'Bài viết Opt2', '2', 1, 0),
(54, 'Ảnh menu', '0', 1, 41),
(55, 'Ẩn nhóm bài viết', '', 1, 100),
(57, 'Video', '', 1, 99),
(58, 'Danh sách hình ảnh mô tả', 'danh-sach-hinh-anh-mota', 0, 28),
(59, 'Ảnh đại diện', '2,3,4,5', 1, 29),
(60, 'Ảnh đại diện danh mục', '', 1, 30),
(61, 'Ảnh hover danh mục', '', 1, 31),
(62, 'Tên option', '{\"2\":{\"op0\":\"Hết hàng\",\"op1\":\"Khuyến mãi\",\"op2\":\"Nhãn\",\"op3\":\"Trang chủ\",\"op4\":\"Khuyến mãi\",\"op5\":\"Lựa chọn chuyên gia\"},\"3\":{\"op0\":\"Trang chủ\",\"op1\":\"Mới nhất\",\"op2\":\"Nổi bật\"},\"21\":{\"op0\":\"Trang chủ\"}}', 1, 32),
(63, 'Quản lý bài viết', '', 1, 33),
(64, 'Option tính năng', '{\"3\":{\"op0\":\"Tiêu biểu\",\"op1\":\"Tìm kiếm\",\"op2\":\"Tìm kiếm\"},\"4\":{\"op0\":\"Trang chủ\",\"op1\":\"Chân trang\",\"op2\":\"Nổi bật\"},\"4\":{\"op0\":\"Trang chủ\"},\"15\":{\"op0\":\"Trang chủ\"},\"5\":{\"op0\":\"Nổi bật\"}}', 1, 341),
(65, 'Optiop tính năng 1', '', 1, 3500),
(66, 'Optiop tính năng 2', '', 1, 3600),
(67, 'Optiop tính năng 3', '', 1, 3700),
(68, 'Nhóm giá', '', 1, 421),
(69, 'Bài viết Opt3', '', 1, 39),
(70, 'Bài viết Opt4', '', 1, 40),
(71, 'Bài viết Opt5', '', 1, 41),
(72, 'Option p1', '', 1, 422),
(73, 'Ảnh 360', '', 1, 43),
(74, 'Main module - Tên hiển thị', '', 1, 44),
(75, 'Main module - Google map', '6', 1, 45),
(76, 'Main module - Hình ảnh', '1,2,3,4,5,6,7,8,9', 1, 46);

-- --------------------------------------------------------

--
-- Table structure for table `lh_module_tinhnang`
--

CREATE TABLE `lh_module_tinhnang` (
  `id` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `ten_vi` varchar(255) DEFAULT NULL,
  `m_action` varchar(255) DEFAULT NULL,
  `m_xem` tinyint(4) NOT NULL DEFAULT 0,
  `m_them` tinyint(4) NOT NULL DEFAULT 0,
  `m_sua` tinyint(4) NOT NULL DEFAULT 0,
  `m_xoa` tinyint(4) NOT NULL DEFAULT 0,
  `m_other` tinyint(4) NOT NULL DEFAULT 0,
  `m_dev` tinyint(1) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `icon` varchar(255) DEFAULT NULL,
  `lien_ket` varchar(255) DEFAULT NULL,
  `showhi` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_module_tinhnang`
--

INSERT INTO `lh_module_tinhnang` (`id`, `id_parent`, `ten_vi`, `m_action`, `m_xem`, `m_them`, `m_sua`, `m_xoa`, `m_other`, `m_dev`, `sort`, `icon`, `lien_ket`, `showhi`) VALUES
(73, 0, 'Quản lý Đơn hàng', 'ql-don-hang', 1, 0, 1, 1, 0, 0, 10, 'fa fa-shopping-cart', '', 0),
(13, 0, 'Email hệ thống', 'em-he-thong', 1, 1, 1, 1, 0, 0, 17, 'fa fa-envelope', '', 1),
(68, 66, 'Danh sách file', 'danh-sach-import-du-lieu', 0, 0, 0, 0, 1, 0, 40, '', '?module=quan-ly-import-du-lieu&action=danh-sach-import-du-lieu', 1),
(64, 29, 'Danh sách mạng xã hội', 'danh-sach-mang-xa-hoi', 1, 1, 1, 1, 0, 0, 6, '', '?module=quan-ly-website&action=danh-sach-mang-xa-hoi', 1),
(65, 29, 'Thiết lập tìm kiếm theo giá', 'thiet-lap-tim-kiem-gia', 1, 1, 1, 1, 0, 0, 37, '', '?module=quan-ly-website&action=thiet-lap-tim-kiem-gia', 1),
(66, 0, 'Quản lý import dữ liệu', 'ql-import-du-lieu', 1, 1, 1, 1, 0, 0, 8, 'fa fa-download', '', 0),
(67, 66, 'Thêm file', 'danh-sach-import-du-lieu', 0, 0, 0, 0, 1, 0, 39, '', '?module=quan-ly-import-du-lieu&action=danh-sach-import-du-lieu&them-moi=true', 1),
(29, 0, 'Quản lý website', 'ql-website', 0, 0, 0, 0, 0, 0, 1, 'fa fa-tachometer', '', 1),
(30, 0, 'Main Menu', 'm-menu', 0, 0, 0, 0, 0, 0, 2, 'fa fa-sliders', '', 1),
(31, 0, 'Main Module', 'main-module', 0, 0, 0, 0, 0, 0, 3, 'fa fa-bars', '', 1),
(33, 0, 'Quản lý hình ảnh', 'ql-hinh-anh', 1, 1, 1, 1, 0, 0, 5, 'fa fa-image', '', 1),
(34, 0, 'Tài khoản quản trị', 'tk-quan-tri', 0, 0, 0, 0, 0, 0, 16, 'fa fa-user-circle-o', '', 1),
(36, 29, 'Thiết lập website', 'thiet-lap-website', 1, 0, 1, 0, 0, 0, 1, '', '?module=quan-ly-website&action=thiet-lap-website', 1),
(37, 29, 'Khóa website', 'khoa-website', 1, 0, 1, 0, 0, 0, 2, '', '?module=quan-ly-website&action=khoa-website', 1),
(38, 29, 'Quản lý ngôn ngữ', 'quan-ly-ngon-ngu', 1, 0, 1, 0, 0, 0, 3, '', '?module=quan-ly-website&action=quan-ly-ngon-ngu', 1),
(39, 29, 'Danh sách email nhận tin', 'danh-sach-mail-nhan-tin', 1, 0, 0, 1, 0, 0, 4, '', '?module=quan-ly-website&action=danh-sach-mail-nhan-tin', 1),
(40, 29, 'Khách hàng liên hệ', 'khach-hang-lien-he', 1, 0, 1, 1, 0, 0, 72, '', '?module=quan-ly-website&action=khach-hang-lien-he', 1),
(41, 30, 'Thiết lập menu', 'thiet-lap-menu', 1, 1, 1, 1, 0, 0, 1, '', '?module=main-menu&action=thiet-lap-menu', 1),
(42, 30, 'Nội dung khác', 'nhung-thong-tin-khac', 1, 0, 1, 0, 0, 0, 40, '', '?module=main-menu&action=nhung-thong-tin-khac', 1),
(44, 73, 'Phí vận chuyển', 'thanh-toan-phuong-thuc-van-chuyen', 1, 1, 1, 1, 0, 0, 2, '', '?module=quan-ly-thanh-toan&action=thanh-toan-phuong-thuc-van-chuyen', 1),
(45, 73, 'Thông tin thanh toán', 'thanh-toan-phuong-thuc-thanh-toan', 1, 1, 1, 1, 0, 0, 100, '', '?module=quan-ly-thanh-toan&action=thanh-toan-phuong-thuc-thanh-toan', 1),
(46, 73, 'Mã giảm giá', 'danh-sach-ma-giam-gia', 1, 1, 1, 1, 0, 0, 4, '', '?module=quan-ly-thanh-toan&action=danh-sach-ma-giam-gia', 1),
(47, 34, 'Nhóm quản trị', 'nhom-quan-tri', 1, 1, 1, 1, 0, 0, 1, '', '', 0),
(48, 34, 'Tài khoản quản trị', 'danh-sach-thanh-vien-quan-tri', 1, 1, 1, 1, 0, 0, 2, '', '', 1),
(49, 0, 'Danh sách thành viên', 'ds-thanh-vien', 1, 1, 1, 1, 0, 0, 16, 'fa fa-users', '', 0),
(50, 34, 'Thông tin cá nhân', 'thong-tin-ca-nhan', 1, 0, 1, 0, 0, 0, 48, '', '?module=quan-ly-thanh-vien&action=thong-tin-ca-nhan', 1),
(51, 33, 'Thêm hình ảnh', 'danh-sach-hinh-anh', 0, 0, 0, 0, 1, 0, 49, '', '?module=quan-ly-hinh-anh&action=danh-sach-hinh-anh&them-moi=true', 1),
(52, 33, 'Danh sách hình ảnh', 'danh-sach-hinh-anh', 0, 0, 0, 0, 1, 0, 50, '', '?module=quan-ly-hinh-anh&action=danh-sach-hinh-anh', 1),
(53, 33, 'Thêm loại hình ảnh', 'danh-sach-loai-hinh-anh', 0, 0, 0, 0, 1, 1, 51, '', '?module=quan-ly-hinh-anh&action=danh-sach-loai-hinh-anh&them-moi=true', 1),
(54, 33, 'Danh sách loại hình ảnh', 'danh-sach-loai-hinh-anh', 0, 0, 0, 0, 1, 1, 52, '', '?module=quan-ly-hinh-anh&action=danh-sach-loai-hinh-anh', 1),
(55, 47, 'Thêm nhóm quản trị', 'nhom-quan-tri', 0, 0, 0, 0, 1, 0, 53, '', '?module=quan-ly-thanh-vien&action=nhom-quan-tri&them-moi=true', 1),
(56, 47, 'Danh sách nhóm quản trị', 'nhom-quan-tri', 0, 0, 0, 0, 1, 0, 54, '', '?module=quan-ly-thanh-vien&action=nhom-quan-tri', 1),
(57, 48, 'Thêm tài khoản', 'danh-sach-thanh-vien-quan-tri', 0, 0, 0, 0, 1, 0, 55, '', '?module=quan-ly-thanh-vien&action=danh-sach-thanh-vien-quan-tri&them-moi=true', 1),
(58, 48, 'Danh sách tài khoản', 'danh-sach-thanh-vien-quan-tri', 0, 0, 0, 0, 1, 0, 56, '', '?module=quan-ly-thanh-vien&action=danh-sach-thanh-vien-quan-tri', 1),
(59, 49, 'Thêm thành viên', 'danh-sach-thanh-vien', 0, 0, 0, 0, 1, 0, 57, '', '?module=quan-ly-thanh-vien&action=danh-sach-thanh-vien&them-moi=true', 1),
(60, 49, 'Danh sách thành viên', 'danh-sach-thanh-vien', 0, 0, 0, 0, 1, 0, 58, '', '?module=quan-ly-thanh-vien&action=danh-sach-thanh-vien', 1),
(61, 13, 'Thêm email', 'danh-sach-mail-he-thong', 0, 0, 0, 0, 1, 0, 59, '', '?module=quan-ly-mail-he-thong&action=danh-sach-mail-he-thong&them-moi=true', 1),
(62, 13, 'Danh sách email', 'danh-sach-mail-he-thong', 0, 0, 0, 0, 1, 0, 60, '', '?module=quan-ly-mail-he-thong&action=danh-sach-mail-he-thong', 1),
(74, 73, 'Danh sách đơn hàng', 'danh-sach-don-hang', 0, 0, 0, 0, 1, 0, 46, '', '?module=quan-ly-don-hang&action=danh-sach-don-hang', 1),
(75, 0, 'Quản lý Hỗ trợ online', 'ql-ho-tro-online', 1, 1, 1, 1, 0, 0, 11, 'fa fa-phone', '', 0),
(76, 75, 'Thêm mới', 'danh-sach-ho-tro', 0, 0, 0, 0, 1, 0, 48, '', '?module=quan-ly-ho-tro&action=danh-sach-ho-tro&them-moi=true', 1),
(77, 75, 'Danh sách hỗ trợ', 'danh-sach-ho-tro', 0, 0, 0, 0, 1, 0, 49, '', '?module=quan-ly-ho-tro&action=danh-sach-ho-tro', 1),
(103, 29, 'Liên kết trang', 'du-lieu-sn', 1, 1, 1, 1, 0, 0, 73, '', '?module=du-lieu-sn&action=du-lieu-sn', 0),
(79, 29, 'Quản lý bình luận', 'quan-ly-binh-luan', 1, 0, 1, 1, 0, 0, 51, '', '?module=module-he-thong&action=quan-ly-binh-luan', 0),
(90, 0, 'Quản lý địa điểm', 'ql-dia-diem', 1, 1, 1, 1, 0, 0, 62, '', '', 0),
(91, 90, 'Danh sách địa điểm', 'danh-sach-dia-diem', 1, 0, 1, 0, 0, 0, 2, '', '?module=quan-ly-dia-diem&action=danh-sach-dia-diem', 1),
(92, 34, 'Nhóm thành viên', 'nhom-thanh-vien', 1, 1, 1, 1, 0, 0, 47, '', '?module=quan-ly-tai-khoan&action=nhom-thanh-vien', 0),
(93, 92, 'Thêm nhóm thành viên', 'nhom-thanh-vien', 0, 0, 0, 0, 1, 0, 65, '', '?module=quan-ly-tai-khoan&action=nhom-thanh-vien&them-moi=true', 1),
(94, 92, 'Danh sách nhóm thành viên', 'nhom-thanh-vien', 0, 0, 0, 0, 1, 0, 66, '', '?module=quan-ly-tai-khoan&action=nhom-thanh-vien', 1),
(98, 49, 'Tin nhắn', 'tin-nhan', 1, 1, 1, 1, 0, 0, 70, '', '?module=danh-sach-thanh-vien&action=tin-nhan', 0),
(99, 73, 'Phương thức thanh toán', 'phuong-thuc-thanh-toan', 1, 1, 1, 1, 0, 0, 70, '', '?module=quan-ly-don-hang&action=phuong-thuc-thanh-toan', 1),
(100, 29, 'Quản lý link 301', 'quan-ly-link', 1, 1, 1, 1, 0, 0, 71, '', '?module=quan-ly-link&action=quan-ly-link', 0),
(101, 29, 'Quản lý link chân trang', 'lien-ket-sn', 1, 1, 1, 1, 0, 0, 222, '', '?module=lien-ket-sn&action=lien-ket-sn', 0),
(102, 90, 'Thêm địa điểm', 'danh-sach-dia-diem', 1, 1, 1, 1, 0, 0, 1, '', '?module=danh-sach-dia-diem&action=danh-sach-dia-diem&them-moi=true', 1),
(104, 29, 'Thiết lập tìm kiếm theo %', 'thiet-lap-tim-kiem-phan-tram', 1, 1, 1, 1, 0, 0, 38, '', '?module=thiet-lap-tim-kiem-phan-tram&action=thiet-lap-tim-kiem-phan-tram', 0),
(105, 29, 'Quản lý ngôn ngữ admin', '', 1, 1, 1, 1, 0, 0, 560, '', '?module=quan-ly-ngon-ngu-admin&action=quan-ly-ngon-ngu-admin', 0),
(106, 29, 'Backup dữ liệu', 'backup-data', 1, 1, 1, 1, 0, 0, 5700, '', '?module=backup-data&action=backup-data', 0),
(108, 29, 'Thông báo tự động', 'thong-bao-tu-dong', 1, 1, 1, 1, 0, 0, 58, '', '?module=thong-bao-tu-dong&action=thong-bao-tu-dong', 0),
(109, 0, 'Đóng dấu hình ảnh', 'dong-dau-hinh-anh', 1, 1, 1, 1, 0, 0, 16, 'fa fa-file-image-o', '?module=dong-dau-hinh-anh&action=dong-dau-hinh-anh', 1),
(110, 109, 'Cài đặt ảnh đóng dấu', 'dong-dau-hinh-anh', 1, 1, 1, 1, 0, 0, 60, '', '?module=dong-dau-hinh-anh&action=dong-dau-hinh-anh&them-moi=true', 1),
(111, 109, 'Quản lý sản phẩm đóng dấu', 'dong-dau-hinh-anh', 1, 1, 1, 1, 0, 0, 61, '', '?module=dong-dau-hinh-anh&action=dong-dau-hinh-anh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lh_online`
--

CREATE TABLE `lh_online` (
  `uip` varchar(150) NOT NULL DEFAULT '',
  `sidd` varchar(200) DEFAULT NULL,
  `timer` varchar(10) DEFAULT NULL,
  `uid` int(12) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_online`
--

INSERT INTO `lh_online` (`uip`, `sidd`, `timer`, `uid`) VALUES
('::1', '6a39fb9acfd3239d0ef6412730a21c03', '1722824105', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lh_order`
--

CREATE TABLE `lh_order` (
  `id` int(11) NOT NULL,
  `madh` varchar(255) DEFAULT NULL,
  `iduser` int(11) NOT NULL DEFAULT 0,
  `ngaydat` int(11) NOT NULL DEFAULT 0,
  `tam_tinh` int(11) NOT NULL DEFAULT 0,
  `gia_km` int(11) NOT NULL DEFAULT 0,
  `ma_giam_gia` varchar(255) DEFAULT NULL,
  `phi_ship` int(11) NOT NULL DEFAULT 0,
  `thanh_tien` int(11) NOT NULL DEFAULT 0,
  `thanh_toan` tinyint(4) NOT NULL DEFAULT 0,
  `thongtin_thanhtoan` longtext DEFAULT NULL,
  `id_sp` mediumtext DEFAULT NULL,
  `gia_tien` mediumtext DEFAULT NULL,
  `trangthai` tinyint(2) NOT NULL DEFAULT 1,
  `cus_del` tinyint(4) NOT NULL DEFAULT 0,
  `phieu_xuat_kho` int(11) NOT NULL DEFAULT 0,
  `ma_paypal` varchar(255) DEFAULT NULL,
  `hoten` varchar(255) DEFAULT NULL,
  `sodienthoai` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `ghichu` varchar(255) DEFAULT NULL,
  `don_vi` mediumtext DEFAULT NULL,
  `idsp` mediumtext DEFAULT NULL,
  `soluong` mediumtext DEFAULT NULL,
  `dongia` mediumtext DEFAULT NULL,
  `thanhtoan` int(11) NOT NULL DEFAULT 0,
  `thanh_pho` int(11) NOT NULL DEFAULT 0,
  `quan_huyen` int(11) NOT NULL DEFAULT 0,
  `is_key` mediumtext DEFAULT NULL,
  `is_nuti` tinyint(4) NOT NULL DEFAULT 0,
  `is_nhan` tinyint(1) NOT NULL DEFAULT 0,
  `hoten_nhan` varchar(255) DEFAULT NULL,
  `sodienthoai_nhan` varchar(255) DEFAULT NULL,
  `email_nhan` varchar(255) DEFAULT NULL,
  `diachi_nhan` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_order`
--

INSERT INTO `lh_order` (`id`, `madh`, `iduser`, `ngaydat`, `tam_tinh`, `gia_km`, `ma_giam_gia`, `phi_ship`, `thanh_tien`, `thanh_toan`, `thongtin_thanhtoan`, `id_sp`, `gia_tien`, `trangthai`, `cus_del`, `phieu_xuat_kho`, `ma_paypal`, `hoten`, `sodienthoai`, `email`, `diachi`, `ghichu`, `don_vi`, `idsp`, `soluong`, `dongia`, `thanhtoan`, `thanh_pho`, `quan_huyen`, `is_key`, `is_nuti`, `is_nhan`, `hoten_nhan`, `sodienthoai_nhan`, `email_nhan`, `diachi_nhan`) VALUES
(175, 'DH3881175', 0, 1617271126, 0, 50000, 'W4GIZOCR', 50000, 0, 1, '<table class=\'tb-thongtin-tv\' border=\'1\' cellspacing=\'0\' cellpadding=\'4\' style=\'width:100%; border-collapse: collapse; font-family:Tahoma; font-size:11px;text-align: left;\' bordercolor=\'#cccccc\'><tr/><tr> <td colspan=\"7\" style=\"text-align: left; color: #333; background: #cccccc; font-size: 13px;text-transform: uppercase;\"><b>THÔNG TIN NGƯỜI MUA HÀNG</b></td> </tr><tr><td colspan=\"3\" style=\"width:160px; font-size: 13px\">Họ & tên</td><td colspan=\"4\" width=\"400\"><span style=\"display:block; padding-left:5px; font-size: 13px\">Nguyễn Ly</span></td></tr><tr><td colspan=\"3\" style=\"width:160px; font-size: 13px\">Số điện thoại</td><td colspan=\"4\" width=\"400\"><span style=\"display:block; padding-left:5px; font-size: 13px\">0987 652 444</span></td></tr><tr><td colspan=\"3\" style=\"width:160px; font-size: 13px\">Email</td><td colspan=\"4\" width=\"400\"><span style=\"display:block; padding-left:5px; font-size: 13px\">aaa@gmail.com</span></td></tr><tr><td colspan=\"3\" style=\"width:160px; font-size: 13px\">Địa chỉ</td><td colspan=\"4\" width=\"400\"><span style=\"display:block; padding-left:5px; font-size: 13px\">TpHCM</span></td></tr><tr> <td colspan=\"7\" style=\"text-align: left; color: #333; background: #cccccc; font-size: 13px;text-transform: uppercase;\"><b>Thông tin người nhận hàng</b></td> </tr><tr><td colspan=\"3\" style=\"width:160px; font-size: 13px\">Họ & tên</td><td colspan=\"4\" width=\"400\"><span style=\"display:block; padding-left:5px; font-size: 13px\">Nguyễn Thị Lệ Thu</span></td></tr><tr><td colspan=\"3\" style=\"width:160px; font-size: 13px\">Số điện thoại</td><td colspan=\"4\" width=\"400\"><span style=\"display:block; padding-left:5px; font-size: 13px\">0988 222 111</span></td></tr><tr><td colspan=\"3\" style=\"width:160px; font-size: 13px\">Email</td><td colspan=\"4\" width=\"400\"><span style=\"display:block; padding-left:5px; font-size: 13px\">thunguyen@gmail.com</span></td></tr><tr><td colspan=\"3\" style=\"width:160px; font-size: 13px\">Địa chỉ</td><td colspan=\"4\" width=\"400\"><span style=\"display:block; padding-left:5px; font-size: 13px\">TpHCM</span></td></tr><tr><td colspan=\"3\" style=\"width:160px; font-size: 13px\">Phí vận chuyển</td><td colspan=\"4\" width=\"400\"><span style=\"display:block; padding-left:5px; font-size: 13px\">50.000 đ</span></td></tr><tr><td colspan=\"3\" style=\"width:160px; font-size: 13px\">Khuyến mãi</td><td colspan=\"4\" width=\"400\"><span style=\"display:block; padding-left:5px; font-size: 13px\">50.000 đ</span></td></tr><tr><td colspan=\"3\" style=\"width:160px; font-size: 13px\">Mã khuyến mãi</td><td colspan=\"4\" width=\"400\"><span style=\"display:block; padding-left:5px; font-size: 13px\">W4GIZOCR</span></td></tr><tr><td colspan=\"3\" style=\"width:160px; font-size: 13px\">Nội dung</td><td colspan=\"4\" width=\"400\"><span style=\"display:block; padding-left:5px; font-size: 13px\">Giao trong ngày</span></td></tr></tr></table></tr><tr><td colspan=\"7\" ><div id=\'cart_list\' class=\'tb_rps\'><table border=\'1\'  cellspacing=\'0\' cellpadding=\'4\' style=\'width:100%; border-collapse: collapse; font-family:Tahoma; font-size:11px;text-align: center;\' bordercolor=\'#cccccc\' class=\'tb-chitietdh-tv\'><tr> <th width=\"5%\" class=\"cls_cart_mb\">STT</th> <th>Tên sản phẩm</th> <th width=\"15%\">Số lượng</th> <th width=\"15%\">Đơn giá (VNĐ)</th> <th width=\"10%\">Thành tiền (VNĐ)</th> </tr><tr>\n                <td class=\"cls_cart_mb\">1</td>\n                <td title=\"Tên sản phẩm\" class=\"dv-anh-cart-sp\">\n                  <a href=\"http://localhost/2021_demo/bo-den-led-mica-dien-quang-dq-ledmf02-36727-cp-372271617177339\"><img src=\"http://localhost/2021_demo/datafiles/thumb_1617177348_15.jpg\" style=\"max-height: 100px\"/></a>\n                  <div class=\"dv-anh\">\n                  <a href=\"http://localhost/2021_demo/bo-den-led-mica-dien-quang-dq-ledmf02-36727-cp-372271617177339\">Bộ đèn LED Mica Điện Quang ĐQ LEDMF02 36727</a>\n                  <p class=\"p_mota_cart\"></p>\n                  </div>\n                </td>\n                <td title=\"Số lượng\">1</td>\n                <td title=\"Đơn giá (VNĐ)\">266.000</td>\n                <td title=\"Thành tiền (VNĐ)\">266.000</td>\n              </tr><tr>\n                <td class=\"cls_cart_mb\">2</td>\n                <td title=\"Tên sản phẩm\" class=\"dv-anh-cart-sp\">\n                  <a href=\"http://localhost/2021_demo/bo-den-led-mica-dien-quang-dq-ledmf02-36727-cp-372271617177339\"><img src=\"http://localhost/2021_demo/datafiles/thumb_1617177348_15.jpg\" style=\"max-height: 100px\"/></a>\n                  <div class=\"dv-anh\">\n                  <a href=\"http://localhost/2021_demo/bo-den-led-mica-dien-quang-dq-ledmf02-36727-cp-372271617177339\">Bộ đèn LED Mica Điện Quang ĐQ LEDMF02 36727</a>\n                  <p class=\"p_mota_cart\"><span>16GB</span><span>Màu đen</span><span>2GB</span></p>\n                  </div>\n                </td>\n                <td title=\"Số lượng\">1</td>\n                <td title=\"Đơn giá (VNĐ)\">360.000</td>\n                <td title=\"Thành tiền (VNĐ)\">360.000</td>\n              </tr><tr> <td colspan=\"4\" style=\"text-align:right;font-weight:bold;\">Tạm tính:</td> <td colspan=\"2\" ><span id=\"pro_sum\"> <label style=\"color:red;font-weight:bold;\">626.000 đ</label> </span> </td> </tr><tr> <td colspan=\"4\" style=\"text-align:right;font-weight:bold;\">Phí vận chuyển:</td> <td colspan=\"2\" ><span id=\"pro_sum\"> <label style=\"color:red;font-weight:bold;\">50.000 đ</label> </span> </td> </tr><tr> <td colspan=\"4\" style=\"text-align:right;font-weight:bold;\">Khuyến mãi:</td> <td colspan=\"2\" ><span id=\"pro_sum\"> <label style=\"color:red;font-weight:bold;\">50.000 đ</label> </span> </td> </tr><tr> <td colspan=\"4\" style=\"text-align:right;color:red;font-weight:bold;\">Tổng tiền:</td> <td colspan=\"2\" title=\"Tổng tiền\"><span id=\"pro_sum\"> <label style=\"color:red;font-weight:bold;\">626.000 đ</label> </span> </td> </tr></table></div></td>', NULL, NULL, 1, 0, 0, 'LMEAQNVH3VJQG', 'Nguyễn Ly', '0987 652 444', 'aaa@gmail.com', 'TpHCM', 'Giao trong ngày', '', '143,143', '1,1', '266000,360000', 0, 2, 94, '13,18,20', 1, 1, 'Nguyễn Thị Lệ Thu', '0988 222 111', 'thunguyen@gmail.com', 'TpHCM');

-- --------------------------------------------------------

--
-- Table structure for table `lh_phuongthucthanhtoan`
--

CREATE TABLE `lh_phuongthucthanhtoan` (
  `id` int(11) NOT NULL,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `noidung_vi` mediumtext DEFAULT NULL,
  `noidung_en` mediumtext DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `duongdantin` varchar(255) DEFAULT NULL,
  `catasort` int(11) NOT NULL DEFAULT 1,
  `showhi` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_phuongthucthanhtoan`
--

INSERT INTO `lh_phuongthucthanhtoan` (`id`, `tenbaiviet_vi`, `tenbaiviet_en`, `noidung_vi`, `noidung_en`, `icon`, `duongdantin`, `catasort`, `showhi`) VALUES
(4, 'Thanh toán bằng tiền mặt', 'Payment in cash', '<p>Thanh to&aacute;n bằng tiền mặt (COD)</p>', '<p>Cash payment (COD)</p>', NULL, 'datafiles/setone', 1, 1),
(5, 'Thanh toán qua chuyển khoản', 'Payment via bank transfer', '<p>ND&nbsp;Thanh to&aacute;n qua chuyển khoản</p>', '<p>ND Payment via bank transfer</p>', NULL, 'datafiles/setone', 2, 1),
(6, 'Thanh toán tại cửa hàng', 'Payment at the store', '<p>Thanh to&aacute;n tại cửa h&agrave;ng</p>', '<h3>Payment at the store</h3>', NULL, 'datafiles/setone', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lh_seo`
--

CREATE TABLE `lh_seo` (
  `id` int(11) NOT NULL,
  `seo_title_vi` varchar(255) DEFAULT NULL,
  `seo_title_en` varchar(255) DEFAULT NULL,
  `seo_title_cn` varchar(255) DEFAULT NULL,
  `seo_title_jp` varchar(255) DEFAULT NULL,
  `seo_description_vi` varchar(255) DEFAULT NULL,
  `seo_description_en` varchar(255) DEFAULT NULL,
  `seo_description_cn` varchar(255) DEFAULT NULL,
  `seo_description_jp` varchar(255) DEFAULT NULL,
  `seo_keywords_vi` varchar(255) DEFAULT NULL,
  `seo_keywords_en` varchar(255) DEFAULT NULL,
  `seo_keywords_cn` varchar(255) DEFAULT NULL,
  `seo_keywords_jp` varchar(255) DEFAULT NULL,
  `duongdantin` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `favico` varchar(255) DEFAULT NULL,
  `robots` mediumtext DEFAULT NULL,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `tenbaiviet_cn` varchar(255) DEFAULT NULL,
  `tenbaiviet_jp` varchar(255) DEFAULT NULL,
  `diachi_vi` varchar(255) DEFAULT NULL,
  `diachi_en` varchar(255) DEFAULT NULL,
  `diachi_cn` varchar(255) DEFAULT NULL,
  `diachi_jp` varchar(255) DEFAULT NULL,
  `sodienthoai_vi` varchar(255) DEFAULT NULL,
  `hotline_vi` varchar(255) DEFAULT NULL,
  `email_vi` varchar(255) DEFAULT NULL,
  `em_ip` varchar(255) DEFAULT NULL,
  `em_taikhoan` varchar(255) DEFAULT NULL,
  `em_pass` varchar(255) DEFAULT NULL,
  `js_google_anilatic` longtext DEFAULT NULL,
  `js_google_anilatic_body` longtext DEFAULT NULL,
  `khoa_website` mediumtext DEFAULT NULL,
  `is_khoasite` tinyint(4) NOT NULL DEFAULT 0,
  `is_https` tinyint(1) NOT NULL DEFAULT 0,
  `is_intro` tinyint(4) NOT NULL DEFAULT 0,
  `fb_app` varchar(255) DEFAULT NULL,
  `fb_id` varchar(255) DEFAULT NULL,
  `is_comment` tinyint(4) NOT NULL DEFAULT 0,
  `is_lang` tinyint(4) NOT NULL DEFAULT 0,
  `is_saochep` tinyint(1) NOT NULL DEFAULT 0,
  `is_tiengviet` tinyint(1) NOT NULL DEFAULT 1,
  `is_giamuti` tinyint(4) NOT NULL DEFAULT 0,
  `menu_hinhanh` tinyint(4) NOT NULL DEFAULT 0,
  `menu_hinhanh_size` varchar(50) DEFAULT NULL,
  `menu_hinhanh_hv` tinyint(4) NOT NULL DEFAULT 0,
  `menu_danhmuc` tinyint(4) NOT NULL DEFAULT 0,
  `menu_kieuhienthi` tinyint(4) NOT NULL DEFAULT 0,
  `is_login_fb` tinyint(4) NOT NULL DEFAULT 0,
  `is_login_gg` tinyint(4) NOT NULL DEFAULT 0,
  `fb_app_id` varchar(255) DEFAULT NULL,
  `fb_app_secret` varchar(255) DEFAULT NULL,
  `fb_url` varchar(255) DEFAULT NULL,
  `gg_client_id` varchar(255) DEFAULT NULL,
  `gg_client_secret` varchar(255) DEFAULT NULL,
  `gg_url` varchar(255) DEFAULT NULL,
  `lic_name` varchar(255) DEFAULT NULL,
  `lic_key` varchar(255) DEFAULT NULL,
  `mxh_is_anh` tinyint(4) NOT NULL DEFAULT 0,
  `mxh_is_css` tinyint(4) NOT NULL DEFAULT 0,
  `mxh_is_bg` tinyint(4) NOT NULL DEFAULT 0,
  `bvct_noidung` tinyint(4) NOT NULL DEFAULT 0,
  `bvct_hinhanh` tinyint(4) NOT NULL DEFAULT 0,
  `bvct_file` tinyint(4) NOT NULL DEFAULT 0,
  `seo_title_kr` varchar(255) DEFAULT NULL,
  `seo_title_in` varchar(255) DEFAULT NULL,
  `seo_description_kr` varchar(255) DEFAULT NULL,
  `seo_description_in` varchar(255) DEFAULT NULL,
  `seo_keywords_kr` varchar(255) DEFAULT NULL,
  `seo_keywords_in` varchar(255) DEFAULT NULL,
  `tenbaiviet_kr` varchar(255) DEFAULT NULL,
  `tenbaiviet_in` varchar(255) DEFAULT NULL,
  `diachi_kr` varchar(255) DEFAULT NULL,
  `diachi_in` varchar(255) DEFAULT NULL,
  `dongdau_img` varchar(255) DEFAULT NULL,
  `dongdau_step` varchar(255) DEFAULT NULL,
  `dongdau_check` tinyint(4) NOT NULL DEFAULT 0,
  `slider_speed` float NOT NULL DEFAULT 0,
  `slider_cho` float NOT NULL DEFAULT 0,
  `font_name` varchar(255) DEFAULT NULL,
  `font_link` text DEFAULT NULL,
  `slider_hieuung` varchar(255) DEFAULT NULL,
  `css_pc` text DEFAULT NULL,
  `css_mb` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_seo`
--

INSERT INTO `lh_seo` (`id`, `seo_title_vi`, `seo_title_en`, `seo_title_cn`, `seo_title_jp`, `seo_description_vi`, `seo_description_en`, `seo_description_cn`, `seo_description_jp`, `seo_keywords_vi`, `seo_keywords_en`, `seo_keywords_cn`, `seo_keywords_jp`, `duongdantin`, `icon`, `favico`, `robots`, `tenbaiviet_vi`, `tenbaiviet_en`, `tenbaiviet_cn`, `tenbaiviet_jp`, `diachi_vi`, `diachi_en`, `diachi_cn`, `diachi_jp`, `sodienthoai_vi`, `hotline_vi`, `email_vi`, `em_ip`, `em_taikhoan`, `em_pass`, `js_google_anilatic`, `js_google_anilatic_body`, `khoa_website`, `is_khoasite`, `is_https`, `is_intro`, `fb_app`, `fb_id`, `is_comment`, `is_lang`, `is_saochep`, `is_tiengviet`, `is_giamuti`, `menu_hinhanh`, `menu_hinhanh_size`, `menu_hinhanh_hv`, `menu_danhmuc`, `menu_kieuhienthi`, `is_login_fb`, `is_login_gg`, `fb_app_id`, `fb_app_secret`, `fb_url`, `gg_client_id`, `gg_client_secret`, `gg_url`, `lic_name`, `lic_key`, `mxh_is_anh`, `mxh_is_css`, `mxh_is_bg`, `bvct_noidung`, `bvct_hinhanh`, `bvct_file`, `seo_title_kr`, `seo_title_in`, `seo_description_kr`, `seo_description_in`, `seo_keywords_kr`, `seo_keywords_in`, `tenbaiviet_kr`, `tenbaiviet_in`, `diachi_kr`, `diachi_in`, `dongdau_img`, `dongdau_step`, `dongdau_check`, `slider_speed`, `slider_cho`, `font_name`, `font_link`, `slider_hieuung`, `css_pc`, `css_mb`) VALUES
(1, 'CÔNG TY TM DV OBT VIỆT NAM', 'OBT TRADING SERVICE VIETNAM COMPANY', 'Famiviet', 'さくらプラスチックカンパニー', 'CÔNG TY TM DV OBT VIỆT NAM', 'OBT TRADING SERVICE VIETNAM COMPANY', 'Famiviet', 'さくらプラスチックカンパニー', 'CÔNG TY TM DV OBT VIỆT NAM', 'OBT TRADING SERVICE VIETNAM COMPANY', 'Famiviet', 'さくらプラスチックカンパニー', 'datafiles', '1619085591_logo.jpg', '1622088643_logo-removebg-preview.png', 'User-agent: *\r\nDisallow: /myadmin/', 'CÔNG TY TM DV OBT VIỆT NAM', 'OBT TRADING SERVICE VIETNAM COMPANY', 'Famiviet', 'さくらプラスチックカンパニー', '130 Phan Đình Phùng, Phường 2, Quận Bình Thạnh, Việt Nam', 'B1-028 / 1, Hoa Long Quarter, Vinh Phu Ward, Thuan An Town, Binh Duong Province', '5/447 Lac Long Quan, Район Тай Хо, Ханой, Вьетнам', 'No. 23、Street 12、Ward Linh Tay、Thu Duc District、City。ホーチミン', '0971 570 707', '0971 570 707', 'orbitavn-marketing@gmail.com', '112.213.89.37', 'no-reply@webdemo5.pavietnam.vn', 'qqhtV&lFs#RZ', '<!-- Google Tag Manager -->\r\n<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({\'gtm.start\':\r\nnew Date().getTime(),event:\'gtm.js\'});var f=d.getElementsByTagName(s)[0],\r\nj=d.createElement(s),dl=l!=\'dataLayer\'?\'&l=\'+l:\'\';j.async=true;j.src=\r\n\'https://www.googletagmanager.com/gtm.js?id=\'+i+dl;f.parentNode.insertBefore(j,f);\r\n})(window,document,\'script\',\'dataLayer\',\'GTM-P69TJ5X\');</script>\r\n<!-- End Google Tag Manager -->', '<!-- Google Tag Manager (noscript) -->\r\n<noscript><iframe src=\"https://www.googletagmanager.com/ns.html?id=GTM-P69TJ5X\"\r\nheight=\"0\" width=\"0\" style=\"display:none;visibility:hidden\"></iframe></noscript>\r\n<!-- End Google Tag Manager (noscript) -->', '<p>...</p>', 0, 1, 0, '', '', 1, 1, 0, 1, 0, 0, '(300px x 300px)', 0, 0, 1, 0, 0, '', '', '', '', '', '', 'webdemo5.pavietnam.vn', 'X64F-Y89T-Y767-47A1-8UM5-NB15', 1, 0, 0, 1, 0, 0, 'Famiviet', '亲属', 'Famiviet', '亲属', 'Famiviet', '亲属', 'Famiviet', '亲属', '5/447 Lac Long Quan, Tay Ho District, 하노이, 베트남', '越南河内市大河区五龙泉5/447', '1619515697_1619431605_nenn-2.png', '2', 0, 20, 3, '', '', '1', '/* css tiêu đề trang chủ */\r\n.title { font-size: 33px; line-height: 35px; color: #413853;  font-family: \'Playfair Display\' }\r\n\r\n/* css tiêu đề trang con */\r\n.banner-detail h3 {  font-size: 33px; line-height: 45px; color: #fff;}', '/* css tiêu đề trang chủ */\r\n.title { font-size: 25px; line-height: 32px; color: #413853;  font-family: \'Playfair Display\' }\r\n\r\n/* css tiêu đề trang con */\r\n.banner-detail h3 {  font-size: 22px; line-height: 32px; color: #fff;}');

-- --------------------------------------------------------

--
-- Table structure for table `lh_seo_name`
--

CREATE TABLE `lh_seo_name` (
  `id` int(11) NOT NULL,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `noidung_vi` mediumtext DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `duongdantin` varchar(255) DEFAULT 'datafiles/setone',
  `seo_name` mediumtext DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `noidung_en` mediumtext DEFAULT NULL,
  `tenbaiviet_cn` mediumtext DEFAULT NULL,
  `noidung_cn` mediumtext DEFAULT NULL,
  `p1_cn` mediumtext DEFAULT NULL,
  `opt` tinyint(1) NOT NULL DEFAULT 0,
  `icon_hover` varchar(255) DEFAULT NULL,
  `p1_vi` mediumtext DEFAULT NULL,
  `p1_en` mediumtext DEFAULT NULL,
  `tenbaiviet_jp` varchar(255) DEFAULT NULL,
  `noidung_jp` mediumtext DEFAULT NULL,
  `p1_jp` mediumtext DEFAULT NULL,
  `showhi` tinyint(1) NOT NULL DEFAULT 1,
  `is_mota` tinyint(4) NOT NULL DEFAULT 0,
  `is_hinhanh` tinyint(4) NOT NULL DEFAULT 0,
  `is_hinhanh_2` tinyint(4) NOT NULL DEFAULT 0,
  `is_lienket` tinyint(4) NOT NULL DEFAULT 0,
  `is_hinhanh_size` varchar(50) DEFAULT NULL,
  `is_hinhanh_size_2` varchar(255) DEFAULT NULL,
  `tenbaiviet_kr` varchar(255) DEFAULT NULL,
  `tenbaiviet_in` varchar(255) DEFAULT NULL,
  `noidung_kr` mediumtext DEFAULT NULL,
  `noidung_in` mediumtext DEFAULT NULL,
  `p1_kr` mediumtext DEFAULT NULL,
  `p1_in` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_seo_name`
--

INSERT INTO `lh_seo_name` (`id`, `tenbaiviet_vi`, `noidung_vi`, `icon`, `duongdantin`, `seo_name`, `tenbaiviet_en`, `noidung_en`, `tenbaiviet_cn`, `noidung_cn`, `p1_cn`, `opt`, `icon_hover`, `p1_vi`, `p1_en`, `tenbaiviet_jp`, `noidung_jp`, `p1_jp`, `showhi`, `is_mota`, `is_hinhanh`, `is_hinhanh_2`, `is_lienket`, `is_hinhanh_size`, `is_hinhanh_size_2`, `tenbaiviet_kr`, `tenbaiviet_in`, `noidung_kr`, `noidung_in`, `p1_kr`, `p1_in`) VALUES
(1, 'Lỗi 404 - Không Tìm Thấy Trang!', '<p>Ch&uacute;ng t&ocirc;i kh&ocirc;ng thể t&igrave;m thấy trang qu&yacute; kh&aacute;ch y&ecirc;u cầu hoặc trang y&ecirc;u cầu hiện tại kh&ocirc;ng c&oacute; sẵn. Nếu lỗi n&agrave;y xảy ra với mức độ thường xuy&ecirc;n, xin qu&yacute; kh&aacute;ch vui l&ograve;ng th&ocirc;ng b&aacute;o cho ch&uacute;ng t&ocirc;i biết về sự cố qu&yacute; kh&aacute;ch gặp.</p>\r\n\r\n<p><strong>[tencongty]&nbsp;</strong>h&acirc;n hạnh được phục vụ qu&yacute; kh&aacute;ch!</p>', '1519956201_404-Slider-Anzeige.png', 'datafiles', '', '404 error page Not Found!', '<p>We could not find the page you requested or the requested page is not currently available. If this error occurs on a regular basis, please inform us about the problem you are having.</p>\r\n\r\n<p><strong>[tencongty]&nbsp;&nbsp;</strong>is pleased to serve you!</p>', 'Страница ошибки 404 не найдена!', '<p>Мы не смогли найти запрошенную вами страницу или запрошенная страница в настоящее время недоступна. Если эта ошибка возникает часто, сообщите нам о проблеме, с которой вы столкнулись.</p>\r\n\r\n<p>[tencongty] рада служить вам!</p>', '', 1, NULL, '', '', '404エラーページが見つかりません！', '<p>リクエストされたページが見つからなかったか、リクエストされたページは現在利用できません。 このエラーが頻繁に発生する場合は、発生している問題についてお知らせください。</p>\r\n\r\n<p>[tencongty] がおもてなしいたします！</p>', '', 1, 0, 0, 0, 0, NULL, NULL, '404 오류 페이지를 찾을 수 없습니다!', '找不到404错误页面！', '<p>요청한 페이지를 찾을 수 없거나 요청한 페이지를 현재 사용할 수 없습니다. 이 오류가 자주 발생하는 경우 발생한 문제에 대해 알려주십시오.</p>\r\n\r\n<p>[tencongty] 는 여러분을 기꺼이 모십니다!</p>', '<p>我们找不到您请求的页面，或者请求的页面当前不可用。 如果此错误频繁发生，请告诉我们您遇到的问题。</p>\r\n\r\n<p>[tencongty] 很高兴为您服务！</p>', '', ''),
(82, 'BỘ SƯU TẬP', '<p style=\"text-align: justify;\"><span style=\"color:#2c3e50;\"><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"></span></span></span></p>\r\n\r\n<div>\r\n<div><span style=\"color:#3498db;\"><span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><strong><span style=\"font-size:9.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:\" tahoma=\"\"><span style=\"color:#3498db\"></span></span></span></span></strong></span></span></span><span style=\"font-size:14px;\"><span style=\"line-height:normal\"><b><span tahoma=\"\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"></span></span></b></span><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"line-height:normal\"><b><span tahoma=\"\"></span></b></span></span></span><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"></span></span><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"></span></span><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">Bộ sưu tập l&agrave; một thuật ngữ xuất ph&aacute;t từ chữ Latin sưu tập v&agrave; n&oacute; li&ecirc;n quan đến tập hợp những thứ c&ugrave;ng loại đ&aacute;p ứng cho gi&aacute; trị của ch&uacute;ng hoặc cho lợi &iacute;ch m&agrave; ch&uacute;ng đ&aacute;nh thức,</span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">Bộ sưu tập được sử dụng để chỉ tập hợp c&aacute;c t&aacute;c phẩm v&agrave; phản &aacute;nh c&aacute;c xu hướng của Bộ sưu tập&nbsp;cho mỗi giai đoạn,</span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">Đội ngũ OBT lu&ocirc;n mang đến một bộ sưu tập mang đậm thiết kế Hiện đại - C&ocirc;ng nghệ - An to&agrave;n c&ugrave;ng xu hướng thế giới.</span></span><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"></span></span><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"></span></span></div>\r\n\r\n<div style=\"margin-bottom: 0.0001pt;\"><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"line-height:normal\"></span></span></span></div>\r\n</div>\r\n\r\n<div style=\"font-style: italic;\"><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"font-size:14px;\"></span></span></div>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"color:#2c3e50;\"><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"></span></span></span></p>', '1613788412_bg_home.jpg', 'datafiles', '', 'COLLECTION', '<p style=\"text-align: justify;\">An Thy Environmental Technology Co., Ltd is a technical sales representative for famous manufacturers in the world: Pall Water, Tulsion and Maxtreat - Thermax, Hydramem - Ion Exchange, Tra Bac, Vietfil ... Besides We are also a dedicated technical expert to support the client system of agents for construction of water treatment projects, high-tech water treatment RO, EDI, demineralization ... from design to examination. construction and operation.</p>', 'Содержание нижнего колонтитула', '<ul>\r\n	<li><a href=\"#\">Финансовое планирование</a></li>\r\n	<li><a href=\"#\">Страхование Консультации</a></li>\r\n	<li><a href=\"#\">Управление инвестициями</a></li>\r\n	<li><a href=\"#\">Пенсионные стратегии</a></li>\r\n	<li><a href=\"#\">Налоговое планирование</a></li>\r\n	<li><a href=\"#\">Бизнес-кредит</a></li>\r\n</ul>', '', 0, '', '', '', 'フッターの内容', '<figure class=\"image\"><img alt=\"\" height=\"110\" src=\"/2020_sakuraplastic/datafiles/images/img/logo.png\" width=\"190\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>住所：No. 23、Street 12、Ward Linh Tay、Thu Duc District、City。 ホーチミン</p>\r\n\r\n<p>電話: <a href=\"tel:0903 823 836\">0903 823 836</a></p>\r\n\r\n<p>税法: 0311934524</p>\r\n\r\n<p>Eメール:&nbsp;<a href=\"mailto:general@sakuraplastic.com\">general@sakuraplastic.com</a></p>', '', 1, 0, 0, 0, 0, '(1600px x 600px)', '(540px x 310px)', '', '', '<ul>\r\n	<li><a href=\"#\">재무 계획</a></li>\r\n	<li><a href=\"#\">보험 컨설팅</a></li>\r\n	<li><a href=\"#\">투자 관리</a></li>\r\n	<li><a href=\"#\">퇴직 전략</a></li>\r\n	<li><a href=\"#\">세금 계획</a></li>\r\n	<li><a href=\"#\">비즈니스 대출</a></li>\r\n</ul>', '<ul>\r\n	<li><a href=\"#\">金融计划</a></li>\r\n	<li><a href=\"#\">保险咨询</a></li>\r\n	<li><a href=\"#\">投资管理</a></li>\r\n	<li><a href=\"#\">退休策略</a></li>\r\n	<li><a href=\"#\">税收筹划</a></li>\r\n	<li><a href=\"#\">商业贷款</a></li>\r\n</ul>', '', ''),
(90, 'KHÁI NÉT OBT VIỆT NAM', '<div><span style=\"color:#2c3e50;\"><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"></span></span></span><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">Với lịch sử h&igrave;nh th&agrave;nh - ph&aacute;t triển&nbsp;20 năm tại Việt Nam - OBT khẳng định Thương hiệu với phương ch&acirc;m: </span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"color:#000099;\"><strong>&#39;CHẤT LƯỢNG TẠO&nbsp;THƯƠNG HIỆU - UY T&Iacute;N N&Acirc;NG TẦM ĐẲNG CẤP</strong><strong>&#39;</strong></span></span></span></div>\r\n\r\n<div><span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">...,&nbsp;giữ <span style=\"font-size:14px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">An to&agrave;n&nbsp;</span></span>cho M&aacute;i ấm - Giữ Đẳng cấp cho C&ocirc;ng tr&igrave;nh.</span></span><span style=\"color:#000099;\"><strong><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"></span></span></strong></span></div>', '1608972321_logo-ft.png', 'datafiles', '', 'CONCEPTS OF OBT VIETNAM', '<p>Let the leading brand of OBT Smart Lock in Vietnam bring to your home:</p>\r\n\r\n<p>Safe in protecting loved ones,<br />\r\nModern Security - Fast and convenient to unlock &amp; manage,<br />\r\nLuxury - Comfort - Class in design</p>\r\n\r\n<p>&lsquo;OBT Smart Lock - Keep Your Home Safe&rsquo;</p>', NULL, NULL, NULL, 0, NULL, '', '', NULL, NULL, NULL, 1, 0, 0, 0, 0, '(160px x 75px)', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'HỘI SỞ', '<h4>TP HỒ CH&Iacute; MINH</h4>\r\n\r\n<div><span style=\"color:#003399;\"></span><span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"color:#00cc66;\"><span class=\"fa fa-location-arrow\" style=\"color:rgb(0, 0, 0);\"></span>&nbsp;</span><a href=\"https://www.google.com/maps/place/130+Phan+%C4%90%C3%ACnh+Ph%C3%B9ng,+Ph%C6%B0%E1%BB%9Dng+2,+Ph%C3%BA+Nhu%E1%BA%ADn,+Th%C3%A0nh+ph%E1%BB%91+H%E1%BB%93+Ch%C3%AD+Minh,+Vi%E1%BB%87t+Nam/@10.794832,106.6812823,17z/data=!3m1!4b1!4m5!3m4!1s0x317528d3e8803ccd:0x272704f7e153598c!8m2!3d10.794832!4d106.683471?hl=vi-VN\"><span style=\"color:#000099;\">Số 130, Phan Đ&igrave;nh Ph&ugrave;ng, P.2,</span></a><span style=\"color:#000099;\">&nbsp;</span></span></span></div>\r\n\r\n<div><span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"color:#000099;\"></span></span></span><span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><a href=\"https://www.google.com/maps/place/130+Phan+%C4%90%C3%ACnh+Ph%C3%B9ng,+Ph%C6%B0%E1%BB%9Dng+2,+Ph%C3%BA+Nhu%E1%BA%ADn,+Th%C3%A0nh+ph%E1%BB%91+H%E1%BB%93+Ch%C3%AD+Minh,+Vi%E1%BB%87t+Nam/@10.794832,106.6812823,17z/data=!3m1!4b1!4m5!3m4!1s0x317528d3e8803ccd:0x272704f7e153598c!8m2!3d10.794832!4d106.683471?hl=vi-VN\"><span style=\"color:#000099;\">Q.Ph&uacute; Nhuận, TP. Hồ Ch&iacute; Minh</span></a></span></span></div>\r\n\r\n<div><span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"color:#000099;\"><span class=\"fa fa-phone-square\" style=\"color:rgb(0, 0, 0);\"></span>&nbsp;</span><a href=\"TEL:0971 570 707\"><span style=\"color:#000099;\">0971 570 707</span></a></span></span></div>\r\n\r\n<div><span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"color:#000099;\"><span class=\"fa fa-envelope-square\" style=\"color:rgb(0, 0, 0);\"></span>&nbsp;</span><a href=\"mailto:obttech.marketing@gmail.com?subject=EMAILS%20FROM%20WEBSITE\"><span style=\"color:#000099;\">obttech.marketing@gmail.com</span></a></span></span></div>\r\n\r\n<div><span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><strong><span style=\"color:#000099;\"></span><span class=\"fa fa-globe\"></span></strong><span style=\"color:#000099;\">&nbsp;</span><a href=\"http://obttech.com.vn\"><span style=\"color:#000099;\">obttech.com.vn</span></a></span></span></div>', NULL, 'datafiles', '', 'OBT VIETNAM', '<h4>TP HỒ CH&Iacute; MINH</h4>\r\n\r\n<div><span style=\"color:#003399;\"></span><span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"color:#00cc66;\"><span class=\"fa fa-location-arrow\" style=\"color:rgb(0, 0, 0);\"></span>&nbsp;</span><a href=\"https://www.google.com/maps/place/130+Phan+%C4%90%C3%ACnh+Ph%C3%B9ng,+Ph%C6%B0%E1%BB%9Dng+2,+Ph%C3%BA+Nhu%E1%BA%ADn,+Th%C3%A0nh+ph%E1%BB%91+H%E1%BB%93+Ch%C3%AD+Minh,+Vi%E1%BB%87t+Nam/@10.794832,106.6812823,17z/data=!3m1!4b1!4m5!3m4!1s0x317528d3e8803ccd:0x272704f7e153598c!8m2!3d10.794832!4d106.683471?hl=vi-VN\"><span style=\"color:#000099;\">Số 130, Phan Đ&igrave;nh Ph&ugrave;ng, P.2,</span></a><span style=\"color:#000099;\">&nbsp;</span></span></span><span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><a href=\"https://www.google.com/maps/place/130+Phan+%C4%90%C3%ACnh+Ph%C3%B9ng,+Ph%C6%B0%E1%BB%9Dng+2,+Ph%C3%BA+Nhu%E1%BA%ADn,+Th%C3%A0nh+ph%E1%BB%91+H%E1%BB%93+Ch%C3%AD+Minh,+Vi%E1%BB%87t+Nam/@10.794832,106.6812823,17z/data=!3m1!4b1!4m5!3m4!1s0x317528d3e8803ccd:0x272704f7e153598c!8m2!3d10.794832!4d106.683471?hl=vi-VN\"><span style=\"color:#000099;\">Q.B&igrave;nh Thạnh, TP.HCM</span></a></span></span></div>\r\n\r\n<div><span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"color:#000099;\"><span class=\"fa fa-phone-square\" style=\"color:rgb(0, 0, 0);\"></span>&nbsp;</span><a href=\"TEL:0971 570 707\"><span style=\"color:#000099;\">0971 570 707</span></a></span></span></div>\r\n\r\n<div><span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"color:#000099;\"><span class=\"fa fa-envelope-square\" style=\"color:rgb(0, 0, 0);\"></span>&nbsp;</span><a href=\"mailto:obttech.marketing@gmail.com?subject=EMAILS%20FROM%20WEBSITE\"><span style=\"color:#000099;\">obttech.marketing@gmail.com</span></a></span></span></div>\r\n\r\n<div><span style=\"font-size:12px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"color:#000099;\"><span class=\"fa fa-globe\"></span>&nbsp;</span><a href=\"http://obttech.com.vn\"><span style=\"color:#000099;\">obttech.com.vn</span></a></span></span></div>', NULL, NULL, NULL, 0, NULL, '', '', NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lh_ship_khuvuc`
--

CREATE TABLE `lh_ship_khuvuc` (
  `id` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `tenbaiviet_cn` varchar(255) DEFAULT NULL,
  `tenbaiviet_jp` varchar(255) DEFAULT NULL,
  `id_shipchung` int(11) NOT NULL DEFAULT 0,
  `id_giaohangnhanh` int(11) NOT NULL DEFAULT 0,
  `catasort` int(11) NOT NULL DEFAULT 0,
  `showhi` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_ship_khuvuc`
--

INSERT INTO `lh_ship_khuvuc` (`id`, `id_parent`, `tenbaiviet_vi`, `tenbaiviet_en`, `tenbaiviet_cn`, `tenbaiviet_jp`, `id_shipchung`, `id_giaohangnhanh`, `catasort`, `showhi`) VALUES
(1, 0, 'Hà Nội', 'Hà Nội', 'Hà Nội', 'Hà Nội', 18, 201, 1, 1),
(2, 0, 'TP Hồ Chí Minh', 'TP Hồ Chí Minh', 'TP.Hồ Chí Minh', 'TP.Hồ Chí Minh', 52, 202, 3, 1),
(3, 0, 'An Giang', 'An Giang', 'An Giang', 'An Giang', 56, 217, 4, 1),
(4, 0, 'Bà Rịa - Vũng Tàu', 'Bà Rịa - Vũng Tàu', 'Bà Rịa - Vũng Tàu', 'Bà Rịa - Vũng Tàu', 54, 206, 5, 1),
(5, 0, 'Bắc Giang', 'Bắc Giang', 'Bắc Giang', 'Bắc Giang', 19, 248, 6, 1),
(6, 0, 'Bắc Kạn', 'Bắc Kạn', 'Bắc Kạn', 'Bắc Kạn', 6, 245, 7, 1),
(7, 0, 'Bạc Liêu', 'Bạc Liêu', 'Bạc Liêu', 'Bạc Liêu', 65, 253, 8, 1),
(8, 0, 'Bắc Ninh', 'Bắc Ninh', 'Bắc Ninh', 'Bắc Ninh', 2, 249, 9, 1),
(9, 0, 'Bến Tre', 'Bến Tre', 'Bến Tre', 'Bến Tre', 60, 213, 10, 1),
(10, 0, 'Bình Dương', 'Bình Dương', 'Bình Dương', 'Bình Dương', 49, 205, 11, 1),
(11, 0, 'Bình Định', 'Bình Định', 'Bình Định', 'Bình Định', 39, 262, 12, 1),
(12, 0, 'Bình Phước', 'Bình Phước', 'Bình Phước', 'Bình Phước', 45, 239, 13, 1),
(13, 0, 'Bình Thuận', 'Bình Thuận', 'Bình Thuận', 'Bình Thuận', 51, 258, 14, 1),
(14, 0, 'Cà Mau', 'Cà Mau', 'Cà Mau', 'Cà Mau', 68, 252, 15, 1),
(15, 0, 'Cần Thơ', 'Cần Thơ', 'Cần Thơ', 'Cần Thơ', 59, 220, 16, 1),
(16, 0, 'Cao Bằng', 'Cao Bằng', 'Cao Bằng', 'Cao Bằng', 1, 246, 17, 1),
(17, 0, 'Đà Nẵng', 'Đà Nẵng', 'Đà Nẵng', 'Đà Nẵng', 35, 203, 18, 1),
(18, 0, 'Đắk Lắk', 'Đắk Lắk', 'Đắk Lắk', 'Đắk Lắk', 42, 210, 19, 1),
(19, 0, 'Đắk Nông', 'Đắk Nông', 'Đắk Nông', 'Đắk Nông', 44, 241, 20, 1),
(20, 0, 'Điện Biên', 'Điện Biên', 'Điện Biên', 'Điện Biên', 10, 265, 21, 1),
(21, 0, 'Đồng Nai', 'Đồng Nai', 'Đồng Nai', 'Đồng Nai', 50, 204, 22, 1),
(22, 0, 'Đồng Tháp', 'Đồng Tháp', 'Đồng Tháp', 'Đồng Tháp', 57, 216, 23, 1),
(23, 0, 'Gia Lai', 'Gia Lai', 'Gia Lai', 'Gia Lai', 40, 207, 24, 1),
(24, 0, 'Hà Giang', 'Hà Giang', 'Hà Giang', 'Hà Giang', 3, 227, 25, 1),
(25, 0, 'Hà Nam', 'Hà Nam', 'Hà Nam', 'Hà Nam', 25, 232, 26, 1),
(26, 0, 'Hà Tĩnh', 'Hà Tĩnh', 'Hà Tĩnh', 'Hà Tĩnh', 31, 236, 27, 1),
(27, 0, 'Hải Dương', 'Hải Dương', 'Hải Dương', 'Hải Dương', 22, 225, 28, 1),
(28, 0, 'Hải Phòng', 'Hải Phòng', 'Hải Phòng', 'Hải Phòng', 24, 224, 29, 1),
(29, 0, 'Hậu Giang', 'Hậu Giang', 'Hậu Giang', 'Hậu Giang', 63, 250, 30, 1),
(30, 0, 'Hòa Bình', 'Hòa Bình', 'Hòa Bình', 'Hòa Bình', 23, 267, 31, 1),
(31, 0, 'Hưng Yên', 'Hưng Yên', 'Hưng Yên', 'Hưng Yên', 8, 268, 32, 1),
(32, 0, 'Khánh Hòa', 'Khánh Hòa', 'Khánh Hòa', 'Khánh Hòa', 43, 208, 33, 1),
(33, 0, 'Kiên Giang', 'Kiên Giang', 'Kiên Giang', 'Kiên Giang', 62, 219, 34, 1),
(34, 0, 'Kon Tum', 'Kon Tum', 'Kon Tum', 'Kon Tum', 38, 259, 35, 1),
(35, 0, 'Lai Châu', 'Lai Châu', 'Lai Châu', 'Lai Châu', 4, 264, 36, 1),
(36, 0, 'Lâm Đồng', 'Lâm Đồng', 'Lâm Đồng', 'Lâm Đồng', 46, 209, 37, 1),
(37, 0, 'Lạng Sơn', 'Lạng Sơn', 'Lạng Sơn', 'Lạng Sơn', 14, 247, 38, 1),
(38, 0, 'Lào Cai', 'Lào Cai', 'Lào Cai', 'Lào Cai', 5, 269, 39, 1),
(39, 0, 'Long An', 'Long An', 'Long An', 'Long An', 53, 211, 40, 1),
(40, 0, 'Nam Định', 'Nam Định', 'Nam Định', 'Nam Định', 28, 231, 41, 1),
(41, 0, 'Nghệ An', 'Nghệ An', 'Nghệ An', 'Nghệ An', 30, 235, 42, 1),
(42, 0, 'Ninh Bình', 'Ninh Bình', 'Ninh Bình', 'Ninh Bình', 27, 233, 43, 1),
(43, 0, 'Ninh Thuận', 'Ninh Thuận', 'Ninh Thuận', 'Ninh Thuận', 47, 261, 44, 1),
(44, 0, 'Phú Thọ', 'Phú Thọ', 'Phú Thọ', 'Phú Thọ', 17, 229, 45, 1),
(45, 0, 'Phú Yên', 'Phú Yên', 'Phú Yên', 'Phú Yên', 9, 260, 46, 1),
(46, 0, 'Quảng Bình', 'Quảng Bình', 'Quảng Bình', 'Quảng Bình', 32, 237, 47, 1),
(47, 0, 'Quảng Nam', 'Quảng Nam', 'Quảng Nam', 'Quảng Nam', 36, 243, 48, 1),
(48, 0, 'Quảng Ngãi', 'Quảng Ngãi', 'Quảng Ngãi', 'Quảng Ngãi', 37, 242, 49, 1),
(49, 0, 'Quảng Ninh', 'Quảng Ninh', 'Quảng Ninh', 'Quảng Ninh', 20, 230, 50, 1),
(50, 0, 'Quảng Trị', 'Quảng Trị', 'Quảng Trị', 'Quảng Trị', 33, 238, 51, 1),
(51, 0, 'Sóc Trăng', 'Sóc Trăng', 'Sóc Trăng', 'Sóc Trăng', 13, 218, 52, 1),
(52, 0, 'Sơn La', 'Sơn La', 'Sơn La', 'Sơn La', 16, 266, 53, 1),
(53, 0, 'Tây Ninh', 'Tây Ninh', 'Tây Ninh', 'Tây Ninh', 48, 240, 54, 1),
(54, 0, 'Thái Bình', 'Thái Bình', 'Thái Bình', 'Thái Bình', 26, 226, 55, 1),
(55, 0, 'Thái Nguyên', 'Thái Nguyên', 'Thái Nguyên', 'Thái Nguyên', 12, 244, 56, 1),
(56, 0, 'Thanh Hóa', 'Thanh Hóa', 'Thanh Hóa', 'Thanh Hóa', 29, 234, 57, 1),
(57, 0, 'Thừa Thiên Huế', 'Thừa Thiên Huế', 'Thừa Thiên Huế', 'Thừa Thiên Huế', 34, 223, 58, 1),
(58, 0, 'Tiền Giang', 'Tiền Giang', 'Tiền Giang', 'Tiền Giang', 58, 212, 59, 1),
(59, 0, 'Trà Vinh', 'Trà Vinh', 'Trà Vinh', 'Trà Vinh', 64, 214, 60, 1),
(60, 0, 'Tuyên Quang', 'Tuyên Quang', 'Tuyên Quang', 'Tuyên Quang', 7, 228, 61, 1),
(61, 0, 'Vĩnh Long', 'Vĩnh Long', 'Vĩnh Long', 'Vĩnh Long', 61, 215, 62, 1),
(62, 0, 'Vĩnh Phúc', 'Vĩnh Phúc', 'Vĩnh Phúc', 'Vĩnh Phúc', 15, 221, 63, 1),
(63, 0, 'Yên Bái', 'Yên Bái', 'Yên Bái', 'Yên Bái', 11, 263, 64, 1),
(64, 1, 'Thị Xã Sơn Tây', 'Thị Xã Sơn Tây', 'Thị Xã Sơn Tây', 'Thị Xã Sơn Tây', 183, 1711, 2, 1),
(65, 1, 'Quận Thanh Xuân', 'Quận Thanh Xuân', 'Quận Thanh Xuân', 'Quận Thanh Xuân', 190, 1493, 3, 1),
(66, 1, 'Quận Tây Hồ', 'Quận Tây Hồ', 'Quận Tây Hồ', 'Quận Tây Hồ', 174, 1492, 4, 1),
(67, 1, 'Quận Nam Từ Liêm', 'Quận Nam Từ Liêm', 'Quận Nam Từ Liêm', 'Quận Nam Từ Liêm', 165, 3440, 5, 1),
(68, 1, 'Quận Long Biên', 'Quận Long Biên', 'Quận Long Biên', 'Quận Long Biên', 186, 1491, 6, 1),
(69, 1, 'Quận Hoàng Mai', 'Quận Hoàng Mai', 'Quận Hoàng Mai', 'Quận Hoàng Mai', 167, 1490, 7, 1),
(70, 1, 'Quận Hoàn Kiếm', 'Quận Hoàn Kiếm', 'Quận Hoàn Kiếm', 'Quận Hoàn Kiếm', 163, 1489, 8, 1),
(71, 1, 'Quận Hai Bà Trưng', 'Quận Hai Bà Trưng', 'Quận Hai Bà Trưng', 'Quận Hai Bà Trưng', 173, 1488, 9, 1),
(72, 1, 'Quận Hà Đông', 'Quận Hà Đông', 'Quận Hà Đông', 'Quận Hà Đông', 170, 1542, 10, 1),
(73, 1, 'Quận Đống Đa', 'Quận Đống Đa', 'Quận Đống Đa', 'Quận Đống Đa', 191, 1486, 11, 1),
(74, 1, 'Quận Cầu Giấy', 'Quận Cầu Giấy', 'Quận Cầu Giấy', 'Quận Cầu Giấy', 178, 1485, 12, 1),
(75, 1, 'Quận Bắc Từ Liêm', 'Quận Bắc Từ Liêm', 'Quận Bắc Từ Liêm', 'Quận Bắc Từ Liêm', 717, 1482, 13, 1),
(76, 1, 'Quận Ba Đình', 'Quận Ba Đình', 'Quận Ba Đình', 'Quận Ba Đình', 189, 1484, 14, 1),
(77, 1, 'Huyện Ứng Hòa', 'Huyện Ứng Hòa', 'Huyện Ứng Hòa', 'Huyện Ứng Hòa', 177, 1810, 15, 1),
(78, 1, 'Huyện Thường Tín', 'Huyện Thường Tín', 'Huyện Thường Tín', 'Huyện Thường Tín', 181, 3303, 16, 1),
(79, 1, 'Huyện Thanh Trì', 'Huyện Thanh Trì', 'Huyện Thanh Trì', 'Huyện Thanh Trì', 176, 1710, 17, 1),
(80, 1, 'Huyện Thanh Oai', 'Huyện Thanh Oai', 'Huyện Thanh Oai', 'Huyện Thanh Oai', 180, 1809, 18, 1),
(81, 1, 'Huyện Thạch Thất', 'Huyện Thạch Thất', 'Huyện Thạch Thất', 'Huyện Thạch Thất', 168, 1808, 19, 1),
(82, 1, 'Huyện Sóc Sơn', 'Huyện Sóc Sơn', 'Huyện Sóc Sơn', 'Huyện Sóc Sơn', 171, 1583, 20, 1),
(83, 1, 'Huyện Quốc Oai', 'Huyện Quốc Oai', 'Huyện Quốc Oai', 'Huyện Quốc Oai', 187, 2004, 21, 1),
(84, 1, 'Huyện Phúc Thọ', 'Huyện Phúc Thọ', 'Huyện Phúc Thọ', 'Huyện Phúc Thọ', 179, 1807, 22, 1),
(85, 1, 'Huyện Phú Xuyên', 'Huyện Phú Xuyên', 'Huyện Phú Xuyên', 'Huyện Phú Xuyên', 184, 3255, 23, 1),
(86, 1, 'Huyện Mỹ Đức', 'Huyện Mỹ Đức', 'Huyện Mỹ Đức', 'Huyện Mỹ Đức', 182, 1806, 24, 1),
(87, 1, 'Huyện Mê Linh', 'Huyện Mê Linh', 'Huyện Mê Linh', 'Huyện Mê Linh', 175, 1581, 25, 1),
(88, 1, 'Huyện Hoài Đức', 'Huyện Hoài Đức', 'Huyện Hoài Đức', 'Huyện Hoài Đức', 166, 1805, 26, 1),
(89, 1, 'Huyện Gia Lâm', 'Huyện Gia Lâm', 'Huyện Gia Lâm', 'Huyện Gia Lâm', 172, 1703, 27, 1),
(90, 1, 'Huyện Đông Anh', 'Huyện Đông Anh', 'Huyện Đông Anh', 'Huyện Đông Anh', 188, 1582, 28, 1),
(91, 1, 'Huyện Đan Phượng', 'Huyện Đan Phượng', 'Huyện Đan Phượng', 'Huyện Đan Phượng', 185, 1804, 29, 1),
(92, 1, 'Huyện Chương Mỹ', 'Huyện Chương Mỹ', 'Huyện Chương Mỹ', 'Huyện Chương Mỹ', 169, 1915, 30, 1),
(93, 1, 'Huyện Ba Vì', 'Huyện Ba Vì', 'Huyện Ba Vì', 'Huyện Ba Vì', 164, 1803, 31, 1),
(94, 2, 'Quận Thủ Đức', 'Thu-Duc District', 'Thu Duc区', 'Thu Duc地区', 568, 1463, 2, 1),
(95, 2, 'Quận Tân Phú', 'Tan Phu District', 'Tan Phu区', 'タンフー県', 552, 1456, 3, 1),
(96, 2, 'Quận Tân Bình', 'Tan Binh district', 'Tan Binh区', 'タンビン地区', 551, 1455, 4, 1),
(97, 2, 'Quận Phú Nhuận', 'Phu Nhuan district', 'Phu Nhuan区', 'Phu Nhuan地区', 570, 1457, 5, 1),
(98, 2, 'Quận Gò Vấp', 'Go vap district', '去Vap区', 'Go Vap地区', 561, 1461, 6, 1),
(99, 2, 'Quận Bình Thạnh', 'Binh thanh district', 'Binh Thanh区', 'ビンタン地区', 569, 1462, 7, 1),
(100, 2, 'Quận Bình Tân', 'Binh Tan District', '平坦区', 'ビンタン地区', 564, 1458, 8, 1),
(101, 2, 'Quận 9', 'District 9', '9区', '第9地区', 558, 1451, 9, 1),
(102, 2, 'Quận 8', 'District 8', '8区', '第8地区', 565, 1450, 10, 1),
(103, 2, 'Quận 7', 'District 7', '7区', '第7地区', 556, 1449, 11, 1),
(104, 2, 'Quận 6', 'District 6', '6区', '第6地区', 548, 1448, 12, 1),
(105, 2, 'Quận 5', 'District 5', '5区', '第5地区', 549, 1447, 13, 1),
(106, 2, 'Quận 4', 'District 4', '4区', '第4地区', 566, 1446, 14, 1),
(107, 2, 'Quận 3', 'District 3', '3区', '第3地区', 550, 1444, 15, 1),
(108, 2, 'Quận 2', 'District 2', '2区', '第2地区', 571, 1443, 16, 1),
(109, 2, 'Quận 12', 'District 12', '12区', '第12地区', 557, 1454, 17, 1),
(110, 2, 'Quận 11', 'District 11', '11区', '第11地区', 562, 1453, 18, 1),
(111, 2, 'Quận 10', 'District 10', '10区', '第10地区', 555, 1452, 19, 1),
(112, 2, 'Quận 1', 'District 1', '1区', '第1地区', 560, 1442, 20, 1),
(113, 2, 'Huyện Nhà Bè', 'Nha Be province', 'Nha Be区', 'ニャベ地区', 554, 1534, 21, 1),
(114, 2, 'Huyện Hóc Môn', 'Hoc Mon province', 'Hoc Mon区', 'Hoc Mon地区', 563, 1459, 22, 1),
(115, 2, 'Huyện Củ Chi', 'Cu Chi province', '铜池区', 'Cu Chi地区', 553, 1460, 23, 1),
(116, 2, 'Huyện Cần Giờ', 'Can Gio province', '可吉奥区', '缶ジオ地区', 559, 2090, 24, 1),
(117, 2, 'Huyện Bình Chánh', 'Binh Chanh province', 'Binh Chanh区', 'ビンチャン地区', 567, 1533, 25, 1),
(118, 3, 'Thị Xã Tân Châu', 'Thị Xã Tân Châu', 'Thị Xã Tân Châu', 'Thị Xã Tân Châu', 601, 1755, 2, 1),
(119, 3, 'Thị Xã Châu Đốc', 'Thị Xã Châu Đốc', 'Thị Xã Châu Đốc', 'Thị Xã Châu Đốc', 594, 1753, 3, 1),
(120, 3, 'Thành Phố Long Xuyên', 'Thành Phố Long Xuyên', 'Thành Phố Long Xuyên', 'Thành Phố Long Xuyên', 597, 1566, 4, 1),
(121, 3, 'Huyện Tri Tôn', 'Huyện Tri Tôn', 'Huyện Tri Tôn', 'Huyện Tri Tôn', 604, 1751, 5, 1),
(122, 3, 'Huyện Tịnh Biên', 'Huyện Tịnh Biên', 'Huyện Tịnh Biên', 'Huyện Tịnh Biên', 602, 1752, 6, 1),
(123, 3, 'Huyện Thoại Sơn', 'Huyện Thoại Sơn', 'Huyện Thoại Sơn', 'Huyện Thoại Sơn', 596, 1750, 7, 1),
(124, 3, 'Huyện Phú Tân', 'Huyện Phú Tân', 'Huyện Phú Tân', 'Huyện Phú Tân', 595, 1756, 8, 1),
(125, 3, 'Huyện Chợ Mới', 'Huyện Chợ Mới', 'Huyện Chợ Mới', 'Huyện Chợ Mới', 599, 1757, 9, 1),
(126, 3, 'Huyện Châu Thành', 'Huyện Châu Thành', 'Huyện Châu Thành', 'Huyện Châu Thành', 603, 1718, 10, 1),
(127, 3, 'Huyện Châu Phú', 'Huyện Châu Phú', 'Huyện Châu Phú', 'Huyện Châu Phú', 600, 1758, 11, 1),
(128, 3, 'Huyện An Phú', 'Huyện An Phú', 'Huyện An Phú', 'Huyện An Phú', 598, 1754, 12, 1),
(129, 4, 'Thành Phố Vũng Tàu', 'Thành Phố Vũng Tàu', 'Thành Phố Vũng Tàu', 'Thành Phố Vũng Tàu', 592, 1544, 2, 1),
(130, 4, 'Thành Phố Bà Rịa', 'Thành Phố Bà Rịa', 'Thành Phố Bà Rịa', 'Thành Phố Bà Rịa', 586, 1667, 3, 1),
(131, 4, 'Huyện Xuyên Mộc', 'Huyện Xuyên Mộc', 'Huyện Xuyên Mộc', 'Huyện Xuyên Mộc', 588, 1699, 4, 1),
(132, 4, 'Huyện Tân Thành', 'Huyện Tân Thành', 'Huyện Tân Thành', 'Huyện Tân Thành', 587, 1701, 5, 1),
(134, 4, 'Huyện Long điền', 'Huyện Long điền', 'Huyện Long điền', 'Huyện Long điền', 590, 1689, 7, 1),
(135, 4, 'Huyện Đất Đỏ', 'Huyện Đất Đỏ', 'Huyện Đất Đỏ', 'Huyện Đất Đỏ', 593, 1690, 8, 1),
(136, 4, 'Huyện Côn đảo', 'Huyện Côn đảo', 'Huyện Côn đảo', 'Huyện Côn đảo', 589, 2111, 9, 1),
(137, 4, 'Huyện Châu đức', 'Huyện Châu đức', 'Huyện Châu đức', 'Huyện Châu đức', 591, 1709, 10, 1),
(138, 5, 'Thành Phố Bắc Giang', 'Thành Phố Bắc Giang', 'Thành Phố Bắc Giang', 'Thành Phố Bắc Giang', 192, 1643, 2, 1),
(139, 5, 'Huyện Yên Thế', 'Huyện Yên Thế', 'Huyện Yên Thế', 'Huyện Yên Thế', 196, 1765, 3, 1),
(140, 5, 'Huyện Yên Dũng', 'Huyện Yên Dũng', 'Huyện Yên Dũng', 'Huyện Yên Dũng', 197, 1764, 4, 1),
(141, 5, 'Huyện Việt Yên', 'Huyện Việt Yên', 'Huyện Việt Yên', 'Huyện Việt Yên', 194, 1763, 5, 1),
(142, 5, 'Huyện Tân Yên', 'Huyện Tân Yên', 'Huyện Tân Yên', 'Huyện Tân Yên', 201, 1762, 6, 1),
(143, 5, 'Huyện Sơn Động', 'Huyện Sơn Động', 'Huyện Sơn Động', 'Huyện Sơn Động', 195, 1761, 7, 1),
(144, 5, 'Huyện Lục Ngạn', 'Huyện Lục Ngạn', 'Huyện Lục Ngạn', 'Huyện Lục Ngạn', 198, 1966, 8, 1),
(145, 5, 'Huyện Lục Nam', 'Huyện Lục Nam', 'Huyện Lục Nam', 'Huyện Lục Nam', 199, 1965, 9, 1),
(146, 5, 'Huyện Lạng Giang', 'Huyện Lạng Giang', 'Huyện Lạng Giang', 'Huyện Lạng Giang', 200, 1760, 10, 1),
(147, 5, 'Huyện Hiệp Hòa', 'Huyện Hiệp Hòa', 'Huyện Hiệp Hòa', 'Huyện Hiệp Hòa', 193, 1759, 11, 1),
(148, 6, 'Thành Phố Bắc Kạn', 'Thành Phố Bắc Kạn', 'Thành Phố Bắc Kạn', 'Thành Phố Bắc Kạn', 52, 1640, 2, 1),
(149, 6, 'Huyện Pắc Nặm', 'Huyện Pắc Nặm', 'Huyện Pắc Nặm', 'Huyện Pắc Nặm', 53, 3249, 3, 1),
(150, 6, 'Huyện Ngân Sơn', 'Huyện Ngân Sơn', 'Huyện Ngân Sơn', 'Huyện Ngân Sơn', 51, 3242, 4, 1),
(151, 6, 'Huyện Na Rì', 'Huyện Na Rì', 'Huyện Na Rì', 'Huyện Na Rì', 54, 3232, 5, 1),
(152, 6, 'Huyện Chợ Mới', 'Huyện Chợ Mới', 'Huyện Chợ Mới', 'Huyện Chợ Mới', 49, 1914, 6, 1),
(153, 6, 'Huyện Chợ đồn', 'Huyện Chợ đồn', 'Huyện Chợ đồn', 'Huyện Chợ đồn', 50, 1913, 7, 1),
(154, 6, 'Huyện Bạch Thông', 'Huyện Bạch Thông', 'Huyện Bạch Thông', 'Huyện Bạch Thông', 55, 1889, 8, 1),
(155, 6, 'Huyện Ba Bể', 'Huyện Ba Bể', 'Huyện Ba Bể', 'Huyện Ba Bể', 56, 1887, 9, 1),
(156, 7, 'Thành Phố Bạc Liêu', 'Thành Phố Bạc Liêu', 'Thành Phố Bạc Liêu', 'Thành Phố Bạc Liêu', 688, 1655, 2, 1),
(157, 7, 'Huyện Vĩnh Lợi', 'Huyện Vĩnh Lợi', 'Huyện Vĩnh Lợi', 'Huyện Vĩnh Lợi', 690, 2050, 3, 1),
(158, 7, 'Huyện Phước Long', 'Huyện Phước Long', 'Huyện Phước Long', 'Huyện Phước Long', 685, 1998, 4, 1),
(159, 7, 'Huyện Hồng Dân', 'Huyện Hồng Dân', 'Huyện Hồng Dân', 'Huyện Hồng Dân', 691, 1946, 5, 1),
(160, 7, 'Huyện Hòa Bình', 'Huyện Hòa Bình', 'Huyện Hòa Bình', 'Huyện Hòa Bình', 686, 1723, 6, 1),
(161, 7, 'Huyện Giá Rai', 'Huyện Giá Rai', 'Huyện Giá Rai', 'Huyện Giá Rai', 689, 1935, 7, 1),
(162, 7, 'Huyện Đông Hải', 'Huyện Đông Hải', 'Huyện Đông Hải', 'Huyện Đông Hải', 687, 1926, 8, 1),
(163, 8, 'Thành Phố Bắc Ninh', 'Thành Phố Bắc Ninh', 'Thành Phố Bắc Ninh', 'Thành Phố Bắc Ninh', 15, 1644, 2, 1),
(164, 8, 'Huyện Yên Phong', 'Huyện Yên Phong', 'Huyện Yên Phong', 'Huyện Yên Phong', 19, 1768, 3, 1),
(165, 8, 'Huyện Từ Sơn', 'Huyện Từ Sơn', 'Huyện Từ Sơn', 'Huyện Từ Sơn', 21, 1730, 4, 1),
(166, 8, 'Huyện Tiên Du', 'Huyện Tiên Du', 'Huyện Tiên Du', 'Huyện Tiên Du', 20, 1729, 5, 1),
(167, 8, 'Huyện Thuận Thành', 'Huyện Thuận Thành', 'Huyện Thuận Thành', 'Huyện Thuận Thành', 17, 1767, 6, 1),
(168, 8, 'Huyện Quế Võ', 'Huyện Quế Võ', 'Huyện Quế Võ', 'Huyện Quế Võ', 18, 1728, 7, 1),
(169, 8, 'Huyện Lương Tài', 'Huyện Lương Tài', 'Huyện Lương Tài', 'Huyện Lương Tài', 14, 1969, 8, 1),
(170, 8, 'Huyện Gia Bình', 'Huyện Gia Bình', 'Huyện Gia Bình', 'Huyện Gia Bình', 16, 1766, 9, 1),
(171, 9, 'Thành Phố Bến Tre', 'Thành Phố Bến Tre', 'Thành Phố Bến Tre', 'Thành Phố Bến Tre', 644, 1558, 2, 1),
(172, 9, 'Huyện Thạnh Phú', 'Huyện Thạnh Phú', 'Huyện Thạnh Phú', 'Huyện Thạnh Phú', 645, 2028, 3, 1),
(173, 9, 'Huyện Mỏ Cày Nam', 'Huyện Mỏ Cày Nam', 'Huyện Mỏ Cày Nam', 'Huyện Mỏ Cày Nam', 642, 1975, 4, 1),
(174, 9, 'Huyện Mỏ Cày Bắc', 'Huyện Mỏ Cày Bắc', 'Huyện Mỏ Cày Bắc', 'Huyện Mỏ Cày Bắc', 643, 1974, 5, 1),
(175, 9, 'Huyện Giồng Trôm', 'Huyện Giồng Trôm', 'Huyện Giồng Trôm', 'Huyện Giồng Trôm', 646, 1937, 6, 1),
(176, 9, 'Huyện Chợ Lách', 'Huyện Chợ Lách', 'Huyện Chợ Lách', 'Huyện Chợ Lách', 640, 3158, 7, 1),
(177, 9, 'Huyện Châu Thành', 'Huyện Châu Thành', 'Huyện Châu Thành', 'Huyện Châu Thành', 639, 1742, 8, 1),
(178, 9, 'Huyện Bình Đại', 'Huyện Bình Đại', 'Huyện Bình Đại', 'Huyện Bình Đại', 641, 1895, 9, 1),
(179, 9, 'Huyện Ba Tri', 'Huyện Ba Tri', 'Huyện Ba Tri', 'Huyện Ba Tri', 638, 1888, 10, 1),
(180, 10, 'Thành Phố Thủ Dầu Một', 'Thành Phố Thủ Dầu Một', 'Thành Phố Thủ Dầu Một', 'Thành Phố Thủ Dầu Một', 524, 1538, 2, 1),
(181, 10, 'Huyện Thuận An', 'Huyện Thuận An', 'Huyện Thuận An', 'Huyện Thuận An', 525, 1541, 3, 1),
(182, 10, 'Huyện Tân Uyên', 'Huyện Tân Uyên', 'Huyện Tân Uyên', 'Huyện Tân Uyên', 520, 1695, 4, 1),
(183, 10, 'Huyện Phú Giáo', 'Huyện Phú Giáo', 'Huyện Phú Giáo', 'Huyện Phú Giáo', 526, 1992, 5, 1),
(184, 10, 'Huyện Dĩ An', 'Huyện Dĩ An', 'Huyện Dĩ An', 'Huyện Dĩ An', 521, 1540, 6, 1),
(185, 10, 'Huyện Dầu Tiếng', 'Huyện Dầu Tiếng', 'Huyện Dầu Tiếng', 'Huyện Dầu Tiếng', 523, 1746, 7, 1),
(186, 10, 'Huyện Bến Cát', 'Huyện Bến Cát', 'Huyện Bến Cát', 'Huyện Bến Cát', 522, 1696, 8, 1),
(187, 10, 'Huyện Bàu Bàng', 'Huyện Bàu Bàng', 'Huyện Bàu Bàng', 'Huyện Bàu Bàng', 708, 3132, 9, 1),
(188, 10, 'Huyện Bắc Tân Uyên', 'Huyện Bắc Tân Uyên', 'Huyện Bắc Tân Uyên', 'Huyện Bắc Tân Uyên', 710, 3135, 10, 1),
(189, 11, 'Thành Phố Quy Nhơn', 'Thành Phố Quy Nhơn', 'Thành Phố Quy Nhơn', 'Thành Phố Quy Nhơn', 430, 1662, 2, 1),
(190, 11, 'Huyện Vĩnh Thạnh', 'Huyện Vĩnh Thạnh', 'Huyện Vĩnh Thạnh', 'Huyện Vĩnh Thạnh', 429, 2258, 3, 1),
(191, 11, 'Huyện Vân Canh', 'Huyện Vân Canh', 'Huyện Vân Canh', 'Huyện Vân Canh', 424, 3312, 4, 1),
(192, 11, 'Huyện Tuy Phước', 'Huyện Tuy Phước', 'Huyện Tuy Phước', 'Huyện Tuy Phước', 431, 2023, 5, 1),
(193, 11, 'Huyên Tây Sơn', 'Huyên Tây Sơn', 'Huyên Tây Sơn', 'Huyên Tây Sơn', 422, 3279, 6, 1),
(194, 11, 'Huyện Phù Mỹ', 'Huyện Phù Mỹ', 'Huyện Phù Mỹ', 'Huyện Phù Mỹ', 432, 3254, 7, 1),
(195, 11, 'Huyện Phù Cát', 'Huyện Phù Cát', 'Huyện Phù Cát', 'Huyện Phù Cát', 427, 1770, 8, 1),
(196, 11, 'Huyện Hoài Nhơn', 'Huyện Hoài Nhơn', 'Huyện Hoài Nhơn', 'Huyện Hoài Nhơn', 426, 1771, 9, 1),
(197, 11, 'Huyện Hoài ân', 'Huyện Hoài ân', 'Huyện Hoài ân', 'Huyện Hoài ân', 423, 2140, 10, 1),
(198, 11, 'Huyện An Nhơn', 'Huyện An Nhơn', 'Huyện An Nhơn', 'Huyện An Nhơn', 703, 1769, 11, 1),
(199, 11, 'Huyện An Lão', 'Huyện An Lão', 'Huyện An Lão', 'Huyện An Lão', 425, 1886, 12, 1),
(200, 12, 'Thị Xã Phước Long', 'Thị Xã Phước Long', 'Thị Xã Phước Long', 'Thị Xã Phước Long', 484, 1775, 2, 1),
(201, 12, 'Thị Xã Đồng Xoài', 'Thị Xã Đồng Xoài', 'Thị Xã Đồng Xoài', 'Thị Xã Đồng Xoài', 485, 1625, 3, 1),
(202, 12, 'Thị Xã Bình Long', 'Thị Xã Bình Long', 'Thị Xã Bình Long', 'Thị Xã Bình Long', 489, 1774, 4, 1),
(203, 12, 'Huyện Phú Riềng', 'Huyện Phú Riềng', 'Huyện Phú Riềng', 'Huyện Phú Riềng', 722, 3444, 5, 1),
(204, 12, 'Huyện Lộc Ninh', 'Huyện Lộc Ninh', 'Huyện Lộc Ninh', 'Huyện Lộc Ninh', 483, 1964, 6, 1),
(205, 12, 'Huyện Hớn Quản', 'Huyện Hớn Quản', 'Huyện Hớn Quản', 'Huyện Hớn Quản', 488, 1773, 7, 1),
(206, 12, 'Huyện Đồng Phú', 'Huyện Đồng Phú', 'Huyện Đồng Phú', 'Huyện Đồng Phú', 486, 1722, 8, 1),
(207, 12, 'Huyện Chơn Thành', 'Huyện Chơn Thành', 'Huyện Chơn Thành', 'Huyện Chơn Thành', 490, 1772, 9, 1),
(208, 12, 'Huyện Bù Gia Mập', 'Huyện Bù Gia Mập', 'Huyện Bù Gia Mập', 'Huyện Bù Gia Mập', 487, 3141, 10, 1),
(209, 12, 'Huyện Bù đốp', 'Huyện Bù đốp', 'Huyện Bù đốp', 'Huyện Bù đốp', 482, 3140, 11, 1),
(210, 12, 'Huyện Bù đăng', 'Huyện Bù đăng', 'Huyện Bù đăng', 'Huyện Bù đăng', 491, 1899, 12, 1),
(211, 13, 'Thị Xã La Gi', 'Thị Xã La Gi', 'Thị Xã La Gi', 'Thị Xã La Gi', 543, 1778, 2, 1),
(212, 13, 'Thành Phố Phan Thiết', 'Thành Phố Phan Thiết', 'Thành Phố Phan Thiết', 'Thành Phố Phan Thiết', 546, 1666, 3, 1),
(213, 13, 'Huyện Tuy Phong', 'Huyện Tuy Phong', 'Huyện Tuy Phong', 'Huyện Tuy Phong', 540, 1781, 4, 1),
(214, 13, 'Huyện Tánh Linh', 'Huyện Tánh Linh', 'Huyện Tánh Linh', 'Huyện Tánh Linh', 541, 2012, 5, 1),
(215, 13, 'Huyện Hàm Thuận Nam', 'Huyện Hàm Thuận Nam', 'Huyện Hàm Thuận Nam', 'Huyện Hàm Thuận Nam', 547, 1776, 6, 1),
(216, 13, 'Huyện Hàm Thuận Bắc', 'Huyện Hàm Thuận Bắc', 'Huyện Hàm Thuận Bắc', 'Huyện Hàm Thuận Bắc', 538, 1777, 7, 1),
(217, 13, 'Huyện Hàm Tân', 'Huyện Hàm Tân', 'Huyện Hàm Tân', 'Huyện Hàm Tân', 545, 3196, 8, 1),
(218, 13, 'Huyện Đức Linh', 'Huyện Đức Linh', 'Huyện Đức Linh', 'Huyện Đức Linh', 542, 1779, 9, 1),
(219, 13, 'Huyện Đảo Phú Quý', 'Huyện Đảo Phú Quý', 'Huyện Đảo Phú Quý', 'Huyện Đảo Phú Quý', 539, 2116, 10, 1),
(220, 13, 'Huyện Bắc Bình', 'Huyện Bắc Bình', 'Huyện Bắc Bình', 'Huyện Bắc Bình', 544, 1780, 11, 1),
(221, 14, 'Thành Phố Cà Mau', 'Thành Phố Cà Mau', 'Thành Phố Cà Mau', 'Thành Phố Cà Mau', 698, 1654, 2, 1),
(222, 14, 'Huyện U Minh', 'Huyện U Minh', 'Huyện U Minh', 'Huyện U Minh', 699, 2042, 3, 1),
(223, 14, 'Huyện Trần Văn Thời', 'Huyện Trần Văn Thời', 'Huyện Trần Văn Thời', 'Huyện Trần Văn Thời', 700, 2038, 4, 1),
(224, 14, 'Huyện Thới Bình', 'Huyện Thới Bình', 'Huyện Thới Bình', 'Huyện Thới Bình', 696, 1782, 5, 1),
(225, 14, 'Huyện Phú Tân', 'Huyện Phú Tân', 'Huyện Phú Tân', 'Huyện Phú Tân', 697, 1883, 6, 1),
(226, 14, 'Huyện Ngọc Hiển', 'Huyện Ngọc Hiển', 'Huyện Ngọc Hiển', 'Huyện Ngọc Hiển', 695, 2186, 7, 1),
(227, 14, 'Huyện Năm Căn', 'Huyện Năm Căn', 'Huyện Năm Căn', 'Huyện Năm Căn', 693, 1783, 8, 1),
(228, 14, 'Huyện Đầm Dơi', 'Huyện Đầm Dơi', 'Huyện Đầm Dơi', 'Huyện Đầm Dơi', 694, 1922, 9, 1),
(229, 14, 'Huyện Cái Nước', 'Huyện Cái Nước', 'Huyện Cái Nước', 'Huyện Cái Nước', 692, 1901, 10, 1),
(231, 15, 'Quận Thốt Nốt', 'Quận Thốt Nốt', 'Quận Thốt Nốt', 'Quận Thốt Nốt', 629, 1576, 3, 1),
(232, 15, 'Quận Ô Môn', 'Quận Ô Môn', 'Quận Ô Môn', 'Quận Ô Môn', 626, 1575, 4, 1),
(233, 15, 'Quận Ninh Kiều', 'Quận Ninh Kiều', 'Quận Ninh Kiều', 'Quận Ninh Kiều', 628, 1572, 5, 1),
(234, 15, 'Quận Cái Răng', 'Quận Cái Răng', 'Quận Cái Răng', 'Quận Cái Răng', 636, 1574, 6, 1),
(235, 15, 'Quận Bình Thủy', 'Quận Bình Thủy', 'Quận Bình Thủy', 'Quận Bình Thủy', 630, 1573, 7, 1),
(236, 15, 'Huyện Vĩnh Thạnh', 'Huyện Vĩnh Thạnh', 'Huyện Vĩnh Thạnh', 'Huyện Vĩnh Thạnh', 632, 3317, 8, 1),
(237, 15, 'Huyện Thới Lai', 'Huyện Thới Lai', 'Huyện Thới Lai', 'Huyện Thới Lai', 627, 3300, 9, 1),
(239, 15, 'Huyện Phong điền', 'Huyện Phong điền', 'Huyện Phong điền', 'Huyện Phong điền', 634, 3250, 11, 1),
(240, 15, 'Huyện Cờ Đỏ', 'Huyện Cờ Đỏ', 'Huyện Cờ Đỏ', 'Huyện Cờ Đỏ', 637, 3150, 12, 1),
(242, 16, 'Thành Phố Cao Bằng', 'Thành Phố Cao Bằng', 'Thành Phố Cao Bằng', 'Thành Phố Cao Bằng', 12, 1641, 2, 1),
(243, 16, 'Huyện Trùng Khánh', 'Huyện Trùng Khánh', 'Huyện Trùng Khánh', 'Huyện Trùng Khánh', 7, 2041, 3, 1),
(244, 16, 'Huyện Trà Lĩnh', 'Huyện Trà Lĩnh', 'Huyện Trà Lĩnh', 'Huyện Trà Lĩnh', 2, 3305, 4, 1),
(245, 16, 'Huyện Thông Nông', 'Huyện Thông Nông', 'Huyện Thông Nông', 'Huyện Thông Nông', 10, 3299, 5, 1),
(246, 16, 'Huyện Thạch An', 'Huyện Thạch An', 'Huyện Thạch An', 'Huyện Thạch An', 1, 3289, 6, 1),
(247, 16, 'Huyện Quảng Uyên', 'Huyện Quảng Uyên', 'Huyện Quảng Uyên', 'Huyện Quảng Uyên', 9, 3259, 7, 1),
(248, 16, 'Huyện Phục Hòa', 'Huyện Phục Hòa', 'Huyện Phục Hòa', 'Huyện Phục Hòa', 6, 1997, 8, 1),
(249, 16, 'Huyện Nguyên Bình', 'Huyện Nguyên Bình', 'Huyện Nguyên Bình', 'Huyện Nguyên Bình', 4, 3246, 9, 1),
(250, 16, 'Huyện Hòa An', 'Huyện Hòa An', 'Huyện Hòa An', 'Huyện Hòa An', 8, 1943, 10, 1),
(251, 16, 'Huyện Hà Quảng', 'Huyện Hà Quảng', 'Huyện Hà Quảng', 'Huyện Hà Quảng', 13, 1939, 11, 1),
(252, 16, 'Huyện Hạ Lang', 'Huyện Hạ Lang', 'Huyện Hạ Lang', 'Huyện Hạ Lang', 3, 3194, 12, 1),
(253, 16, 'Huyện Bảo Lâm', 'Huyện Bảo Lâm', 'Huyện Bảo Lâm', 'Huyện Bảo Lâm', 11, 1890, 13, 1),
(254, 16, 'Huyện Bảo Lạc', 'Huyện Bảo Lạc', 'Huyện Bảo Lạc', 'Huyện Bảo Lạc', 5, 3130, 14, 1),
(255, 17, 'Quận Thanh Khê', 'Quận Thanh Khê', 'Quận Thanh Khê', 'Quận Thanh Khê', 374, 1527, 2, 1),
(256, 17, 'Quận Sơn Trà', 'Quận Sơn Trà', 'Quận Sơn Trà', 'Quận Sơn Trà', 377, 1528, 3, 1),
(257, 17, 'Quận Ngũ Hành Sơn', 'Quận Ngũ Hành Sơn', 'Quận Ngũ Hành Sơn', 'Quận Ngũ Hành Sơn', 375, 1529, 4, 1),
(258, 17, 'Quận Liên Chiểu', 'Quận Liên Chiểu', 'Quận Liên Chiểu', 'Quận Liên Chiểu', 379, 1530, 5, 1),
(259, 17, 'Quận Hải Châu', 'Quận Hải Châu', 'Quận Hải Châu', 'Quận Hải Châu', 376, 1526, 6, 1),
(260, 17, 'Quận Cẩm Lệ', 'Quận Cẩm Lệ', 'Quận Cẩm Lệ', 'Quận Cẩm Lệ', 373, 1531, 7, 1),
(261, 17, 'Huyện Hoàng Sa', 'Huyện Hoàng Sa', 'Huyện Hoàng Sa', 'Huyện Hoàng Sa', 380, 2112, 8, 1),
(262, 17, 'Huyện Hòa Vang', 'Huyện Hòa Vang', 'Huyện Hòa Vang', 'Huyện Hòa Vang', 378, 1687, 9, 1),
(267, 18, 'Thị Xã Buôn Hồ', 'Thị Xã Buôn Hồ', 'Thị Xã Buôn Hồ', 'Thị Xã Buôn Hồ', 452, 1788, 2, 1),
(268, 18, 'Thành Phố Buôn Ma Thuột', 'Thành Phố Buôn Ma Thuột', 'Thành Phố Buôn Ma Thuột', 'Thành Phố Buôn Ma Thuột', 455, 1552, 3, 1),
(269, 18, 'Huyện M\'Đrắk', 'Huyện M\'Đrắk', 'Huyện M\'Đrắk', 'Huyện M\'Đrắk', 463, 3418, 4, 1),
(270, 18, 'Huyện Lắk', 'Huyện Lắk', 'Huyện Lắk', 'Huyện Lắk', 458, 3217, 5, 1),
(271, 18, 'Huyện Krông Pắk', 'Huyện Krông Pắk', 'Huyện Krông Pắk', 'Huyện Krông Pắk', 457, 1954, 6, 1),
(272, 18, 'Huyện Krông Năng', 'Huyện Krông Năng', 'Huyện Krông Năng', 'Huyện Krông Năng', 451, 1787, 7, 1),
(273, 18, 'Huyện Krông Búk', 'Huyện Krông Búk', 'Huyện Krông Búk', 'Huyện Krông Búk', 450, 2150, 8, 1),
(274, 18, 'Huyện Krông Bông', 'Huyện Krông Bông', 'Huyện Krông Bông', 'Huyện Krông Bông', 462, 1789, 9, 1),
(275, 18, 'Huyện Krông A Na', 'Huyện Krông A Na', 'Huyện Krông A Na', 'Huyện Krông A Na', 456, 1884, 10, 1),
(276, 18, 'Huyện Ea Súp', 'Huyện Ea Súp', 'Huyện Ea Súp', 'Huyện Ea Súp', 461, 2131, 11, 1),
(277, 18, 'Huyện Ea Kar', 'Huyện Ea Kar', 'Huyện Ea Kar', 'Huyện Ea Kar', 454, 1931, 12, 1),
(278, 18, 'Huyện Ea H\'leo', 'Huyện Ea H\'leo', 'Huyện Ea H\'leo', 'Huyện Ea H\'leo', 464, 1786, 13, 1),
(279, 18, 'Huyện Cư M\'gar', 'Huyện Cư M\'gar', 'Huyện Cư M\'gar', 'Huyện Cư M\'gar', 459, 1785, 14, 1),
(280, 18, 'Huyện Cư Kuin', 'Huyện Cư Kuin', 'Huyện Cư Kuin', 'Huyện Cư Kuin', 453, 3153, 15, 1),
(281, 18, 'Huyện Buôn đôn', 'Huyện Buôn đôn', 'Huyện Buôn đôn', 'Huyện Buôn đôn', 460, 1784, 16, 1),
(282, 19, 'Thị Xã Gia Nghĩa', 'Thị Xã Gia Nghĩa', 'Thị Xã Gia Nghĩa', 'Thị Xã Gia Nghĩa', 477, 1627, 2, 1),
(283, 19, 'Huyện Tuy đức', 'Huyện Tuy đức', 'Huyện Tuy đức', 'Huyện Tuy đức', 475, 2227, 3, 1),
(284, 19, 'Huyện Krông Nô', 'Huyện Krông Nô', 'Huyện Krông Nô', 'Huyện Krông Nô', 479, 2151, 4, 1),
(285, 19, 'Huyện Đắk Song', 'Huyện Đắk Song', 'Huyện Đắk Song', 'Huyện Đắk Song', 480, 2120, 5, 1),
(286, 19, 'Huyện Đăk R\'lấp', 'Huyện Đăk R\'lấp', 'Huyện Đăk R\'lấp', 'Huyện Đăk R\'lấp', 476, 1790, 6, 1),
(287, 19, 'Huyện Đắk Mil', 'Huyện Đắk Mil', 'Huyện Đắk Mil', 'Huyện Đắk Mil', 481, 1792, 7, 1),
(288, 19, 'Huyện Đắk Glong', 'Huyện Đắk Glong', 'Huyện Đắk Glong', 'Huyện Đắk Glong', 474, 1791, 8, 1),
(289, 19, 'Huyện Cư Jút', 'Huyện Cư Jút', 'Huyện Cư Jút', 'Huyện Cư Jút', 478, 3152, 9, 1),
(290, 20, 'Thị Xã Mường Lay', 'Thị Xã Mường Lay', 'Thị Xã Mường Lay', 'Thị Xã Mường Lay', 85, 2060, 2, 1),
(291, 20, 'Thành Phố Điện Biên Phủ', 'Thành Phố Điện Biên Phủ', 'Thành Phố Điện Biên Phủ', 'Thành Phố Điện Biên Phủ', 82, 1676, 3, 1),
(292, 20, 'Huyện Tuần Giáo', 'Huyện Tuần Giáo', 'Huyện Tuần Giáo', 'Huyện Tuần Giáo', 90, 2022, 4, 1),
(293, 20, 'Huyện Tủa Chùa', 'Huyện Tủa Chùa', 'Huyện Tủa Chùa', 'Huyện Tủa Chùa', 86, 2021, 5, 1),
(294, 20, 'Huyện Nậm Pồ', 'Huyện Nậm Pồ', 'Huyện Nậm Pồ', 'Huyện Nậm Pồ', 704, 2179, 6, 1),
(295, 20, 'Huyện Mường Nhé', 'Huyện Mường Nhé', 'Huyện Mường Nhé', 'Huyện Mường Nhé', 87, 1979, 7, 1),
(296, 20, 'Huyện Mường Chà', 'Huyện Mường Chà', 'Huyện Mường Chà', 'Huyện Mường Chà', 88, 1978, 8, 1),
(297, 20, 'Huyện Mường Áng', 'Huyện Mường Áng', 'Huyện Mường Áng', 'Huyện Mường Áng', 89, 2170, 9, 1),
(298, 20, 'Huyện Điện Biên Đông', 'Huyện Điện Biên Đông', 'Huyện Điện Biên Đông', 'Huyện Điện Biên Đông', 84, 2123, 10, 1),
(299, 20, 'Huyện Điện Biên', 'Huyện Điện Biên', 'Huyện Điện Biên', 'Huyện Điện Biên', 83, 1676, 11, 1),
(300, 21, 'Thị Xã Long Khánh', 'Thị Xã Long Khánh', 'Thị Xã Long Khánh', 'Thị Xã Long Khánh', 528, 1692, 2, 1),
(301, 21, 'Thành Phố Biên Hòa', 'Thành Phố Biên Hòa', 'Thành Phố Biên Hòa', 'Thành Phố Biên Hòa', 533, 1536, 3, 1),
(302, 21, 'Huyện Xuân Lộc', 'Huyện Xuân Lộc', 'Huyện Xuân Lộc', 'Huyện Xuân Lộc', 535, 1704, 4, 1),
(303, 21, 'Huyện Vĩnh Cửu', 'Huyện Vĩnh Cửu', 'Huyện Vĩnh Cửu', 'Huyện Vĩnh Cửu', 531, 2049, 5, 1),
(304, 21, 'Huyện Trảng Bom', 'Huyện Trảng Bom', 'Huyện Trảng Bom', 'Huyện Trảng Bom', 527, 1691, 6, 1),
(305, 21, 'Huyện Thống Nhất', 'Huyện Thống Nhất', 'Huyện Thống Nhất', 'Huyện Thống Nhất', 530, 1705, 7, 1),
(306, 21, 'Huyện Tân Phú', 'Huyện Tân Phú', 'Huyện Tân Phú', 'Huyện Tân Phú', 529, 1693, 8, 1),
(307, 21, 'Huyện Nhơn Trạch', 'Huyện Nhơn Trạch', 'Huyện Nhơn Trạch', 'Huyện Nhơn Trạch', 532, 1708, 9, 1),
(308, 21, 'Huyện Long Thành', 'Huyện Long Thành', 'Huyện Long Thành', 'Huyện Long Thành', 537, 1694, 10, 1),
(309, 21, 'Huyện Định Quán', 'Huyện Định Quán', 'Huyện Định Quán', 'Huyện Định Quán', 536, 1700, 11, 1),
(310, 21, 'Huyện Cẩm Mỹ', 'Huyện Cẩm Mỹ', 'Huyện Cẩm Mỹ', 'Huyện Cẩm Mỹ', 534, 1702, 12, 1),
(311, 22, 'Thị Xã Sa Đéc', 'Thị Xã Sa Đéc', 'Thị Xã Sa Đéc', 'Thị Xã Sa Đéc', 615, 1668, 2, 1),
(312, 22, 'Thành Phố Cao Lãnh', 'Thành Phố Cao Lãnh', 'Thành Phố Cao Lãnh', 'Thành Phố Cao Lãnh', 609, 1564, 3, 1),
(313, 22, 'Huyện Tháp Mười', 'Huyện Tháp Mười', 'Huyện Tháp Mười', 'Huyện Tháp Mười', 610, 2030, 4, 1),
(314, 22, 'Huyện Thanh Bình', 'Huyện Thanh Bình', 'Huyện Thanh Bình', 'Huyện Thanh Bình', 606, 2026, 5, 1),
(315, 22, 'Huyện Tân Hồng', 'Huyện Tân Hồng', 'Huyện Tân Hồng', 'Huyện Tân Hồng', 605, 2013, 6, 1),
(316, 22, 'Huyện Tam Nông', 'Huyện Tam Nông', 'Huyện Tam Nông', 'Huyện Tam Nông', 608, 2011, 7, 1),
(317, 22, 'Huyện Lấp Vò', 'Huyện Lấp Vò', 'Huyện Lấp Vò', 'Huyện Lấp Vò', 607, 1961, 8, 1),
(318, 22, 'Huyện Lai Vung', 'Huyện Lai Vung', 'Huyện Lai Vung', 'Huyện Lai Vung', 611, 1725, 9, 1),
(319, 22, 'Huyện Hồng Ngự', 'Huyện Hồng Ngự', 'Huyện Hồng Ngự', 'Huyện Hồng Ngự', 613, 3200, 10, 1),
(321, 22, 'Huyện Cao Lãnh', 'Huyện Cao Lãnh', 'Huyện Cao Lãnh', 'Huyện Cao Lãnh', 614, 1724, 12, 1),
(322, 23, 'Thị Xã Ayun Pa', 'Thị Xã Ayun Pa', 'Thị Xã Ayun Pa', 'Thị Xã Ayun Pa', 449, 1798, 2, 1),
(323, 23, 'Thị Xã An Khê', 'Thị Xã An Khê', 'Thị Xã An Khê', 'Thị Xã An Khê', 448, 1800, 3, 1),
(324, 23, 'Thành Phố Pleiku', 'Thành Phố Pleiku', 'Thành Phố Pleiku', 'Thành Phố Pleiku', 436, 1546, 4, 1),
(325, 23, 'Huyện Phú Thiện', 'Huyện Phú Thiện', 'Huyện Phú Thiện', 'Huyện Phú Thiện', 435, 1797, 5, 1),
(326, 23, 'Huyện Mang Yang', 'Huyện Mang Yang', 'Huyện Mang Yang', 'Huyện Mang Yang', 444, 2165, 6, 1),
(327, 23, 'Huyện Krông Pa', 'Huyện Krông Pa', 'Huyện Krông Pa', 'Huyện Krông Pa', 434, 2152, 7, 1),
(328, 23, 'Huyện Kông Chro', 'Huyện Kông Chro', 'Huyện Kông Chro', 'Huyện Kông Chro', 443, 2149, 8, 1),
(329, 23, 'Huyện Kbang', 'Huyện Kbang', 'Huyện Kbang', 'Huyện Kbang', 442, 2144, 9, 1),
(330, 23, 'Huyện Ia Pa', 'Huyện Ia Pa', 'Huyện Ia Pa', 'Huyện Ia Pa', 446, 1799, 10, 1),
(331, 23, 'Huyện Ia Grai', 'Huyện Ia Grai', 'Huyện Ia Grai', 'Huyện Ia Grai', 439, 1793, 11, 1),
(332, 23, 'Huyện Đức Cơ', 'Huyện Đức Cơ', 'Huyện Đức Cơ', 'Huyện Đức Cơ', 440, 1794, 12, 1),
(333, 23, 'Huyện Đăk Pơ', 'Huyện Đăk Pơ', 'Huyện Đăk Pơ', 'Huyện Đăk Pơ', 438, 2119, 13, 1),
(334, 23, 'Huyện Đăk Đoa', 'Huyện Đăk Đoa', 'Huyện Đăk Đoa', 'Huyện Đăk Đoa', 437, 2118, 14, 1),
(335, 23, 'Huyện Chư Sê', 'Huyện Chư Sê', 'Huyện Chư Sê', 'Huyện Chư Sê', 441, 1796, 15, 1),
(336, 23, 'Huyện Chư Pưh', 'Huyện Chư Pưh', 'Huyện Chư Pưh', 'Huyện Chư Pưh', 447, 2101, 16, 1),
(337, 23, 'Huyện Chư Prông', 'Huyện Chư Prông', 'Huyện Chư Prông', 'Huyện Chư Prông', 433, 1795, 17, 1),
(338, 23, 'Huyện Chư Păh', 'Huyện Chư Păh', 'Huyện Chư Păh', 'Huyện Chư Păh', 445, 1801, 18, 1),
(339, 24, 'Thành Phố Hà Giang', 'Thành Phố Hà Giang', 'Thành Phố Hà Giang', 'Thành Phố Hà Giang', 30, 1600, 2, 1),
(340, 24, 'Huyện Yên Minh', 'Huyện Yên Minh', 'Huyện Yên Minh', 'Huyện Yên Minh', 32, 2053, 3, 1),
(341, 24, 'Huyện Xín Mần', 'Huyện Xín Mần', 'Huyện Xín Mần', 'Huyện Xín Mần', 28, 2052, 4, 1),
(342, 24, 'Huyện Vị Xuyên', 'Huyện Vị Xuyên', 'Huyện Vị Xuyên', 'Huyện Vị Xuyên', 26, 2256, 5, 1),
(343, 24, 'Huyện Quang Bình', 'Huyện Quang Bình', 'Huyện Quang Bình', 'Huyện Quang Bình', 24, 2001, 6, 1),
(344, 24, 'Huyện Quản Bạ', 'Huyện Quản Bạ', 'Huyện Quản Bạ', 'Huyện Quản Bạ', 25, 1999, 7, 1),
(345, 24, 'Huyện Mèo Vạc', 'Huyện Mèo Vạc', 'Huyện Mèo Vạc', 'Huyện Mèo Vạc', 23, 1973, 8, 1),
(346, 24, 'Huyện Hoàng Su Phì', 'Huyện Hoàng Su Phì', 'Huyện Hoàng Su Phì', 'Huyện Hoàng Su Phì', 22, 1945, 9, 1),
(347, 24, 'Huyện Đồng Văn', 'Huyện Đồng Văn', 'Huyện Đồng Văn', 'Huyện Đồng Văn', 31, 1928, 10, 1),
(348, 24, 'Huyện Bắc Quang', 'Huyện Bắc Quang', 'Huyện Bắc Quang', 'Huyện Bắc Quang', 29, 1893, 11, 1),
(349, 24, 'Huyện Bắc Mê', 'Huyện Bắc Mê', 'Huyện Bắc Mê', 'Huyện Bắc Mê', 27, 2075, 12, 1),
(350, 25, 'Thành Phố Phủ Lý', 'Thành Phố Phủ Lý', 'Thành Phố Phủ Lý', 'Thành Phố Phủ Lý', 258, 1614, 2, 1),
(351, 25, 'Huyện Thanh Liêm', 'Huyện Thanh Liêm', 'Huyện Thanh Liêm', 'Huyện Thanh Liêm', 259, 2027, 3, 1),
(352, 25, 'Huyện Lý Nhân', 'Huyện Lý Nhân', 'Huyện Lý Nhân', 'Huyện Lý Nhân', 256, 1970, 4, 1),
(353, 25, 'Huyện Kim Bảng', 'Huyện Kim Bảng', 'Huyện Kim Bảng', 'Huyện Kim Bảng', 255, 1952, 5, 1),
(354, 25, 'Huyện Duy Tiên', 'Huyện Duy Tiên', 'Huyện Duy Tiên', 'Huyện Duy Tiên', 254, 1802, 6, 1),
(355, 25, 'Huyện Bình Lục', 'Huyện Bình Lục', 'Huyện Bình Lục', 'Huyện Bình Lục', 257, 1897, 7, 1),
(356, 26, 'Thị Xã Hồng Lĩnh', 'Thị Xã Hồng Lĩnh', 'Thị Xã Hồng Lĩnh', 'Thị Xã Hồng Lĩnh', 339, 1814, 2, 1),
(357, 26, 'Thành Phố Hà Tĩnh', 'Thành Phố Hà Tĩnh', 'Thành Phố Hà Tĩnh', 'Thành Phố Hà Tĩnh', 345, 1618, 3, 1),
(358, 26, 'Huyện Vũ Quang', 'Huyện Vũ Quang', 'Huyện Vũ Quang', 'Huyện Vũ Quang', 335, 3320, 4, 1),
(359, 26, 'Huyện Thạch Hà', 'Huyện Thạch Hà', 'Huyện Thạch Hà', 'Huyện Thạch Hà', 346, 2024, 5, 1),
(360, 26, 'Huyện Nghi Xuân', 'Huyện Nghi Xuân', 'Huyện Nghi Xuân', 'Huyện Nghi Xuân', 340, 1813, 6, 1),
(361, 26, 'Huyện Lộc Hà', 'Huyện Lộc Hà', 'Huyện Lộc Hà', 'Huyện Lộc Hà', 338, 3220, 7, 1),
(362, 26, 'Huyện Kỳ Anh', 'Huyện Kỳ Anh', 'Huyện Kỳ Anh', 'Huyện Kỳ Anh', 344, 1811, 8, 1),
(363, 26, 'Huyện Hương Sơn', 'Huyện Hương Sơn', 'Huyện Hương Sơn', 'Huyện Hương Sơn', 341, 3201, 9, 1),
(364, 26, 'Huyện Hương Khê', 'Huyện Hương Khê', 'Huyện Hương Khê', 'Huyện Hương Khê', 342, 1812, 10, 1),
(365, 26, 'Huyện Đức Thọ', 'Huyện Đức Thọ', 'Huyện Đức Thọ', 'Huyện Đức Thọ', 336, 3188, 11, 1),
(366, 26, 'Huyện Can Lộc', 'Huyện Can Lộc', 'Huyện Can Lộc', 'Huyện Can Lộc', 337, 3143, 12, 1),
(367, 26, 'Huyện Cẩm Xuyên', 'Huyện Cẩm Xuyên', 'Huyện Cẩm Xuyên', 'Huyện Cẩm Xuyên', 343, 1815, 13, 1),
(368, 27, 'Thị Xã Chí Linh', 'Thị Xã Chí Linh', 'Thị Xã Chí Linh', 'Thị Xã Chí Linh', 225, 2056, 2, 1),
(369, 27, 'Thành Phố Hải Dương', 'Thành Phố Hải Dương', 'Thành Phố Hải Dương', 'Thành Phố Hải Dương', 216, 1598, 3, 1),
(370, 27, 'Huyện Tứ Kỳ', 'Huyện Tứ Kỳ', 'Huyện Tứ Kỳ', 'Huyện Tứ Kỳ', 218, 3287, 4, 1),
(371, 27, 'Huyện Thanh Miện', 'Huyện Thanh Miện', 'Huyện Thanh Miện', 'Huyện Thanh Miện', 222, 3294, 5, 1),
(372, 27, 'Huyện Thanh Hà', 'Huyện Thanh Hà', 'Huyện Thanh Hà', 'Huyện Thanh Hà', 219, 3292, 6, 1),
(373, 27, 'Huyện Ninh Giang', 'Huyện Ninh Giang', 'Huyện Ninh Giang', 'Huyện Ninh Giang', 217, 3238, 7, 1),
(374, 27, 'Huyện Nam Sách', 'Huyện Nam Sách', 'Huyện Nam Sách', 'Huyện Nam Sách', 223, 1727, 8, 1),
(375, 27, 'Huyện Kinh Môn', 'Huyện Kinh Môn', 'Huyện Kinh Môn', 'Huyện Kinh Môn', 224, 1818, 9, 1),
(376, 27, 'Huyện Kim Thành', 'Huyện Kim Thành', 'Huyện Kim Thành', 'Huyện Kim Thành', 221, 1953, 10, 1),
(377, 27, 'Huyện Gia Lộc', 'Huyện Gia Lộc', 'Huyện Gia Lộc', 'Huyện Gia Lộc', 227, 1934, 11, 1),
(378, 27, 'Huyện Cẩm Giàng', 'Huyện Cẩm Giàng', 'Huyện Cẩm Giàng', 'Huyện Cẩm Giàng', 220, 1817, 12, 1),
(379, 27, 'Huyện Bình Giang', 'Huyện Bình Giang', 'Huyện Bình Giang', 'Huyện Bình Giang', 226, 1816, 13, 1),
(380, 28, 'Quận Ngô Quyền', 'Quận Ngô Quyền', 'Quận Ngô Quyền', 'Quận Ngô Quyền', 252, 1587, 2, 1),
(381, 28, 'Quận Lê Chân', 'Quận Lê Chân', 'Quận Lê Chân', 'Quận Lê Chân', 241, 1588, 3, 1),
(382, 28, 'Quận Kiến An', 'Quận Kiến An', 'Quận Kiến An', 'Quận Kiến An', 249, 1590, 4, 1),
(383, 28, 'Quận Hồng Bàng', 'Quận Hồng Bàng', 'Quận Hồng Bàng', 'Quận Hồng Bàng', 239, 1589, 5, 1),
(384, 28, 'Quận Hải An', 'Quận Hải An', 'Quận Hải An', 'Quận Hải An', 245, 1591, 6, 1),
(385, 28, 'Quận Đồ Sơn', 'Quận Đồ Sơn', 'Quận Đồ Sơn', 'Quận Đồ Sơn', 240, 1707, 7, 1),
(386, 28, 'Quận Dương Kinh', 'Quận Dương Kinh', 'Quận Dương Kinh', 'Quận Dương Kinh', 246, 1706, 8, 1),
(387, 28, 'Huyện Vĩnh Bảo', 'Huyện Vĩnh Bảo', 'Huyện Vĩnh Bảo', 'Huyện Vĩnh Bảo', 248, 1822, 9, 1),
(388, 28, 'Huyện Tiên Lãng', 'Huyện Tiên Lãng', 'Huyện Tiên Lãng', 'Huyện Tiên Lãng', 253, 1821, 10, 1),
(389, 28, 'Huyện Thủy Nguyên', 'Huyện Thủy Nguyên', 'Huyện Thủy Nguyên', 'Huyện Thủy Nguyên', 251, 1726, 11, 1),
(390, 28, 'Huyện Kiến Thụy', 'Huyện Kiến Thụy', 'Huyện Kiến Thụy', 'Huyện Kiến Thụy', 244, 3203, 12, 1),
(391, 28, 'Huyện Đảo Cát Hải', 'Huyện Đảo Cát Hải', 'Huyện Đảo Cát Hải', 'Huyện Đảo Cát Hải', 250, 2108, 13, 1),
(392, 28, 'Huyện Đảo Bạch Long Vĩ', 'Huyện Đảo Bạch Long Vĩ', 'Huyện Đảo Bạch Long Vĩ', 'Huyện Đảo Bạch Long Vĩ', 243, 2107, 14, 1),
(393, 28, 'Huyện An Lão', 'Huyện An Lão', 'Huyện An Lão', 'Huyện An Lão', 247, 1820, 15, 1),
(394, 28, 'Huyện An Dương', 'Huyện An Dương', 'Huyện An Dương', 'Huyện An Dương', 242, 1819, 16, 1),
(395, 29, 'Thị Xã Ngã Bảy', 'Thị Xã Ngã Bảy', 'Thị Xã Ngã Bảy', 'Thị Xã Ngã Bảy', 675, 1823, 2, 1),
(396, 29, 'Thành Phố Vị Thanh', 'Thành Phố Vị Thanh', 'Thành Phố Vị Thanh', 'Thành Phố Vị Thanh', 670, 1653, 3, 1),
(397, 29, 'Huyện Vị Thủy', 'Huyện Vị Thủy', 'Huyện Vị Thủy', 'Huyện Vị Thủy', 674, 2048, 4, 1),
(398, 29, 'Huyện Phụng Hiệp', 'Huyện Phụng Hiệp', 'Huyện Phụng Hiệp', 'Huyện Phụng Hiệp', 676, 1824, 5, 1),
(399, 29, 'Huyện Long Mỹ', 'Huyện Long Mỹ', 'Huyện Long Mỹ', 'Huyện Long Mỹ', 672, 3445, 6, 1),
(400, 29, 'Huyện Châu Thành A', 'Huyện Châu Thành A', 'Huyện Châu Thành A', 'Huyện Châu Thành A', 671, 1912, 7, 1),
(401, 29, 'Huyện Châu Thành', 'Huyện Châu Thành', 'Huyện Châu Thành', 'Huyện Châu Thành', 673, 2096, 8, 1),
(402, 30, 'Thành Phố Hòa Bình', 'Thành Phố Hòa Bình', 'Thành Phố Hòa Bình', 'Thành Phố Hòa Bình', 237, 1678, 2, 1),
(403, 30, 'Huyện Yên Thủy', 'Huyện Yên Thủy', 'Huyện Yên Thủy', 'Huyện Yên Thủy', 236, 2270, 3, 1),
(404, 30, 'Huyện Tân Lạc', 'Huyện Tân Lạc', 'Huyện Tân Lạc', 'Huyện Tân Lạc', 232, 2014, 4, 1),
(405, 30, 'Huyện Mai Châu', 'Huyện Mai Châu', 'Huyện Mai Châu', 'Huyện Mai Châu', 235, 2163, 5, 1),
(406, 30, 'Huyện Lương Sơn', 'Huyện Lương Sơn', 'Huyện Lương Sơn', 'Huyện Lương Sơn', 234, 1968, 6, 1),
(407, 30, 'Huyện Lạc Thủy', 'Huyện Lạc Thủy', 'Huyện Lạc Thủy', 'Huyện Lạc Thủy', 230, 2157, 7, 1),
(408, 30, 'Huyện Lạc Sơn', 'Huyện Lạc Sơn', 'Huyện Lạc Sơn', 'Huyện Lạc Sơn', 233, 2156, 8, 1),
(409, 30, 'Huyện Kỳ Sơn', 'Huyện Kỳ Sơn', 'Huyện Kỳ Sơn', 'Huyện Kỳ Sơn', 228, 1955, 9, 1),
(410, 30, 'Huyện Kim Bôi', 'Huyện Kim Bôi', 'Huyện Kim Bôi', 'Huyện Kim Bôi', 231, 2146, 10, 1),
(411, 30, 'Huyện Đà Bắc', 'Huyện Đà Bắc', 'Huyện Đà Bắc', 'Huyện Đà Bắc', 229, 1916, 11, 1),
(412, 30, 'Huyện Cao Phong', 'Huyện Cao Phong', 'Huyện Cao Phong', 'Huyện Cao Phong', 238, 2087, 12, 1),
(413, 31, 'Thành Phố Hưng Yên', 'Thành Phố Hưng Yên', 'Thành Phố Hưng Yên', 'Thành Phố Hưng Yên', 68, 1680, 2, 1),
(414, 31, 'Huyện Yên Mỹ', 'Huyện Yên Mỹ', 'Huyện Yên Mỹ', 'Huyện Yên Mỹ', 66, 1828, 3, 1),
(415, 31, 'Huyện Văn Lâm', 'Huyện Văn Lâm', 'Huyện Văn Lâm', 'Huyện Văn Lâm', 64, 2046, 4, 1),
(416, 31, 'Huyện Văn Giang', 'Huyện Văn Giang', 'Huyện Văn Giang', 'Huyện Văn Giang', 69, 2045, 5, 1),
(417, 31, 'Huyện Tiên Lữ', 'Huyện Tiên Lữ', 'Huyện Tiên Lữ', 'Huyện Tiên Lữ', 72, 2018, 6, 1),
(418, 31, 'Huyện Phù Cừ', 'Huyện Phù Cừ', 'Huyện Phù Cừ', 'Huyện Phù Cừ', 63, 2194, 7, 1),
(419, 31, 'Huyện Mỹ Hào', 'Huyện Mỹ Hào', 'Huyện Mỹ Hào', 'Huyện Mỹ Hào', 70, 1827, 8, 1),
(420, 31, 'Huyện Kim Động', 'Huyện Kim Động', 'Huyện Kim Động', 'Huyện Kim Động', 71, 0, 9, 1),
(421, 31, 'Huyện Khoái Châu', 'Huyện Khoái Châu', 'Huyện Khoái Châu', 'Huyện Khoái Châu', 65, 1826, 10, 1),
(422, 31, 'Huyện Ân Thi', 'Huyện Ân Thi', 'Huyện Ân Thi', 'Huyện Ân Thi', 67, 1825, 11, 1),
(423, 32, 'Thành Phố Nha Trang', 'Thành Phố Nha Trang', 'Thành Phố Nha Trang', 'Thành Phố Nha Trang', 465, 1548, 2, 1),
(424, 32, 'Thành Phố Cam Ranh', 'Thành Phố Cam Ranh', 'Thành Phố Cam Ranh', 'Thành Phố Cam Ranh', 468, 1664, 3, 1),
(425, 32, 'Huyện Vạn Ninh', 'Huyện Vạn Ninh', 'Huyện Vạn Ninh', 'Huyện Vạn Ninh', 471, 1829, 4, 1),
(426, 32, 'Huyện Ninh Hòa', 'Huyện Ninh Hòa', 'Huyện Ninh Hòa', 'Huyện Ninh Hòa', 466, 2061, 5, 1),
(427, 32, 'Huyện Khánh Vĩnh', 'Huyện Khánh Vĩnh', 'Huyện Khánh Vĩnh', 'Huyện Khánh Vĩnh', 470, 3213, 6, 1),
(428, 32, 'Huyện Khánh Sơn', 'Huyện Khánh Sơn', 'Huyện Khánh Sơn', 'Huyện Khánh Sơn', 467, 3212, 7, 1),
(429, 32, 'Huyện Đảo Trường Sa', 'Huyện Đảo Trường Sa', 'Huyện Đảo Trường Sa', 'Huyện Đảo Trường Sa', 473, 2117, 8, 1),
(430, 32, 'Huyện Diên Khánh', 'Huyện Diên Khánh', 'Huyện Diên Khánh', 'Huyện Diên Khánh', 469, 1739, 9, 1),
(431, 32, 'Huyện Cam Lâm', 'Huyện Cam Lâm', 'Huyện Cam Lâm', 'Huyện Cam Lâm', 472, 1902, 10, 1),
(432, 33, 'Thị Xã Hà Tiên', 'Thị Xã Hà Tiên', 'Thị Xã Hà Tiên', 'Thị Xã Hà Tiên', 665, 2058, 2, 1),
(433, 33, 'Thành Phố Rạch Giá', 'Thành Phố Rạch Giá', 'Thành Phố Rạch Giá', 'Thành Phố Rạch Giá', 666, 1570, 3, 1),
(434, 33, 'Huyện Vĩnh Thuận', 'Huyện Vĩnh Thuận', 'Huyện Vĩnh Thuận', 'Huyện Vĩnh Thuận', 664, 2260, 4, 1),
(435, 33, 'Huyện U Minh Thượng', 'Huyện U Minh Thượng', 'Huyện U Minh Thượng', 'Huyện U Minh Thượng', 658, 2251, 5, 1),
(436, 33, 'Huyện Tân Hiệp', 'Huyện Tân Hiệp', 'Huyện Tân Hiệp', 'Huyện Tân Hiệp', 667, 1831, 6, 1),
(437, 33, 'Huyện Kiên Lương', 'Huyện Kiên Lương', 'Huyện Kiên Lương', 'Huyện Kiên Lương', 660, 1950, 7, 1),
(438, 33, 'Huyện Kiên Hải', 'Huyện Kiên Hải', 'Huyện Kiên Hải', 'Huyện Kiên Hải', 668, 2113, 8, 1),
(439, 33, 'Huyện Hòn Đất', 'Huyện Hòn Đất', 'Huyện Hòn Đất', 'Huyện Hòn Đất', 662, 1830, 9, 1),
(440, 33, 'Huyện Gò Quao', 'Huyện Gò Quao', 'Huyện Gò Quao', 'Huyện Gò Quao', 655, 2132, 10, 1),
(441, 33, 'Huyện Giồng Riềng', 'Huyện Giồng Riềng', 'Huyện Giồng Riềng', 'Huyện Giồng Riềng', 657, 1832, 11, 1),
(442, 33, 'Huyên Giang Thành', 'Huyên Giang Thành', 'Huyên Giang Thành', 'Huyên Giang Thành', 663, 2134, 12, 1),
(443, 33, 'Huyện Đảo Phú Quốc', 'Huyện Đảo Phú Quốc', 'Huyện Đảo Phú Quốc', 'Huyện Đảo Phú Quốc', 669, 2115, 13, 1),
(444, 33, 'Huyện Châu Thành', 'Huyện Châu Thành', 'Huyện Châu Thành', 'Huyện Châu Thành', 661, 1719, 14, 1),
(445, 33, 'Huyện An Minh', 'Huyện An Minh', 'Huyện An Minh', 'Huyện An Minh', 659, 3125, 15, 1),
(446, 33, 'Huyện An Biên', 'Huyện An Biên', 'Huyện An Biên', 'Huyện An Biên', 656, 1833, 16, 1),
(447, 34, 'Thành Phố Kon Tum', 'Thành Phố Kon Tum', 'Thành Phố Kon Tum', 'Thành Phố Kon Tum', 418, 1660, 2, 1),
(448, 34, 'Huyện Tu Mơ Rông', 'Huyện Tu Mơ Rông', 'Huyện Tu Mơ Rông', 'Huyện Tu Mơ Rông', 416, 2225, 3, 1),
(449, 34, 'Huyện Sa Thầy', 'Huyện Sa Thầy', 'Huyện Sa Thầy', 'Huyện Sa Thầy', 415, 2205, 4, 1),
(450, 34, 'Huyện Ngọc Hồi', 'Huyện Ngọc Hồi', 'Huyện Ngọc Hồi', 'Huyện Ngọc Hồi', 420, 2187, 5, 1),
(451, 34, 'Huyện Kon Rẫy', 'Huyện Kon Rẫy', 'Huyện Kon Rẫy', 'Huyện Kon Rẫy', 421, 2148, 6, 1),
(452, 34, 'Huyện Kon Plông', 'Huyện Kon Plông', 'Huyện Kon Plông', 'Huyện Kon Plông', 417, 1834, 7, 1),
(453, 34, 'Huyện Ia H\'Drai', 'Huyện Ia H\'Drai', 'Huyện Ia H\'Drai', 'Huyện Ia H\'Drai', 723, 3446, 8, 1),
(454, 34, 'Huyện Đắk Tô', 'Huyện Đắk Tô', 'Huyện Đắk Tô', 'Huyện Đắk Tô', 419, 2121, 9, 1),
(455, 34, 'Huyện Đắk Hà', 'Huyện Đắk Hà', 'Huyện Đắk Hà', 'Huyện Đắk Hà', 413, 1835, 10, 1),
(456, 34, 'Huyện Đắk Glei', 'Huyện Đắk Glei', 'Huyện Đắk Glei', 'Huyện Đắk Glei', 414, 1921, 11, 1),
(457, 35, 'Thành phố Lai Châu', 'Thành phố Lai Châu', 'Thành phố Lai Châu', 'Thành phố Lai Châu', 38, 1675, 2, 1),
(458, 35, 'Huyện Than Uyên', 'Huyện Than Uyên', 'Huyện Than Uyên', 'Huyện Than Uyên', 36, 2025, 3, 1),
(459, 35, 'Huyện Tân Uyên', 'Huyện Tân Uyên', 'Huyện Tân Uyên', 'Huyện Tân Uyên', 713, 2017, 4, 1),
(460, 35, 'Huyện Tam Đường', 'Huyện Tam Đường', 'Huyện Tam Đường', 'Huyện Tam Đường', 33, 2010, 5, 1),
(461, 35, 'Huyện Sìn Hồ', 'Huyện Sìn Hồ', 'Huyện Sìn Hồ', 'Huyện Sìn Hồ', 35, 2006, 6, 1),
(462, 35, 'Huyện Phong Thổ', 'Huyện Phong Thổ', 'Huyện Phong Thổ', 'Huyện Phong Thổ', 34, 1989, 7, 1),
(463, 35, 'Huyện Nậm Nhùn', 'Huyện Nậm Nhùn', 'Huyện Nậm Nhùn', 'Huyện Nậm Nhùn', 705, 1984, 8, 1),
(464, 35, 'Huyện Mường Tè', 'Huyện Mường Tè', 'Huyện Mường Tè', 'Huyện Mường Tè', 37, 1980, 9, 1),
(465, 36, 'Thị Xã Bảo Lộc', 'Thị Xã Bảo Lộc', 'Thị Xã Bảo Lộc', 'Thị Xã Bảo Lộc', 503, 1838, 2, 1),
(466, 36, 'Thành Phố Đà Lạt', 'Thành Phố Đà Lạt', 'Thành Phố Đà Lạt', 'Thành Phố Đà Lạt', 499, 1550, 3, 1),
(467, 36, 'Huyện Lâm Hà', 'Huyện Lâm Hà', 'Huyện Lâm Hà', 'Huyện Lâm Hà', 498, 1958, 4, 1),
(468, 36, 'Huyện Lạc Dương', 'Huyện Lạc Dương', 'Huyện Lạc Dương', 'Huyện Lạc Dương', 493, 1956, 5, 1),
(469, 36, 'Huyện Đức Trọng', 'Huyện Đức Trọng', 'Huyện Đức Trọng', 'Huyện Đức Trọng', 492, 1837, 6, 1),
(470, 36, 'Huyện Đơn Dương', 'Huyện Đơn Dương', 'Huyện Đơn Dương', 'Huyện Đơn Dương', 501, 1836, 7, 1),
(471, 36, 'Huyện Đam Rông', 'Huyện Đam Rông', 'Huyện Đam Rông', 'Huyện Đam Rông', 502, 1919, 8, 1),
(472, 36, 'Huyện Đạ Tẻh', 'Huyện Đạ Tẻh', 'Huyện Đạ Tẻh', 'Huyện Đạ Tẻh', 500, 2106, 9, 1),
(473, 36, 'Huyện Đạ Huoai', 'Huyện Đạ Huoai', 'Huyện Đạ Huoai', 'Huyện Đạ Huoai', 497, 2104, 10, 1),
(474, 36, 'Huyện Di Linh', 'Huyện Di Linh', 'Huyện Di Linh', 'Huyện Di Linh', 496, 3160, 11, 1),
(475, 36, 'Huyện Cát Tiên', 'Huyện Cát Tiên', 'Huyện Cát Tiên', 'Huyện Cát Tiên', 495, 3146, 12, 1),
(476, 36, 'Huyện Bảo Lâm', 'Huyện Bảo Lâm', 'Huyện Bảo Lâm', 'Huyện Bảo Lâm', 494, 1839, 13, 1),
(477, 37, 'Thành Phố Lạng Sơn', 'Thành Phố Lạng Sơn', 'Thành Phố Lạng Sơn', 'Thành Phố Lạng Sơn', 122, 1642, 2, 1),
(478, 37, 'Huyện Văn Quan', 'Huyện Văn Quan', 'Huyện Văn Quan', 'Huyện Văn Quan', 119, 3311, 3, 1),
(479, 37, 'Huyện Văn Lãng', 'Huyện Văn Lãng', 'Huyện Văn Lãng', 'Huyện Văn Lãng', 124, 3310, 4, 1),
(480, 37, 'Huyện Tràng Định', 'Huyện Tràng Định', 'Huyện Tràng Định', 'Huyện Tràng Định', 126, 2036, 5, 1),
(481, 37, 'Huyện Lộc Bình', 'Huyện Lộc Bình', 'Huyện Lộc Bình', 'Huyện Lộc Bình', 127, 1963, 6, 1),
(482, 37, 'Huyện Hữu Lũng', 'Huyện Hữu Lũng', 'Huyện Hữu Lũng', 'Huyện Hữu Lũng', 120, 1948, 7, 1),
(483, 37, 'Huyện Đình Lập', 'Huyện Đình Lập', 'Huyện Đình Lập', 'Huyện Đình Lập', 129, 3182, 8, 1),
(484, 37, 'Huyện Chi Lăng', 'Huyện Chi Lăng', 'Huyện Chi Lăng', 'Huyện Chi Lăng', 121, 3156, 9, 1),
(485, 37, 'Huyện Cao Lộc', 'Huyện Cao Lộc', 'Huyện Cao Lộc', 'Huyện Cao Lộc', 128, 1904, 10, 1),
(486, 37, 'Huyện Bình Gia', 'Huyện Bình Gia', 'Huyện Bình Gia', 'Huyện Bình Gia', 125, 3138, 11, 1),
(487, 37, 'Huyện Bắc Sơn', 'Huyện Bắc Sơn', 'Huyện Bắc Sơn', 'Huyện Bắc Sơn', 123, 3134, 12, 1),
(488, 38, 'Thành Phố Lào Cai', 'Thành Phố Lào Cai', 'Thành Phố Lào Cai', 'Thành Phố Lào Cai', 40, 1682, 2, 1),
(489, 38, 'Huyện Văn Bàn', 'Huyện Văn Bàn', 'Huyện Văn Bàn', 'Huyện Văn Bàn', 45, 2043, 3, 1),
(490, 38, 'Huyện Si Ma Cai', 'Huyện Si Ma Cai', 'Huyện Si Ma Cai', 'Huyện Si Ma Cai', 47, 2264, 4, 1),
(491, 38, 'Huyện Sa Pa', 'Huyện Sa Pa', 'Huyện Sa Pa', 'Huyện Sa Pa', 41, 2005, 5, 1),
(492, 38, 'Huyện Mường Khương', 'Huyện Mường Khương', 'Huyện Mường Khương', 'Huyện Mường Khương', 42, 2171, 6, 1),
(493, 38, 'Huyện Bát Xát', 'Huyện Bát Xát', 'Huyện Bát Xát', 'Huyện Bát Xát', 43, 1744, 7, 1),
(494, 38, 'Huyện Bảo Yên', 'Huyện Bảo Yên', 'Huyện Bảo Yên', 'Huyện Bảo Yên', 48, 1891, 8, 1),
(495, 38, 'Huyện Bảo Thắng', 'Huyện Bảo Thắng', 'Huyện Bảo Thắng', 'Huyện Bảo Thắng', 44, 2073, 9, 1),
(496, 38, 'Huyện Bắc Hà', 'Huyện Bắc Hà', 'Huyện Bắc Hà', 'Huyện Bắc Hà', 46, 1892, 10, 1),
(497, 39, 'Thị Xã Kiến Tường', 'Thị Xã Kiến Tường', 'Thị Xã Kiến Tường', 'Thị Xã Kiến Tường', 706, 3329, 2, 1),
(498, 39, 'Thành Phố Tân An', 'Thành Phố Tân An', 'Thành Phố Tân An', 'Thành Phố Tân An', 576, 1554, 3, 1),
(499, 39, 'Huyện Vĩnh Hưng', 'Huyện Vĩnh Hưng', 'Huyện Vĩnh Hưng', 'Huyện Vĩnh Hưng', 585, 3315, 4, 1),
(500, 39, 'Huyện Thủ Thừa', 'Huyện Thủ Thừa', 'Huyện Thủ Thừa', 'Huyện Thủ Thừa', 577, 2031, 5, 1),
(501, 39, 'Huyện Thạnh Hóa', 'Huyện Thạnh Hóa', 'Huyện Thạnh Hóa', 'Huyện Thạnh Hóa', 582, 3293, 6, 1),
(502, 39, 'Huyện Tân Trụ', 'Huyện Tân Trụ', 'Huyện Tân Trụ', 'Huyện Tân Trụ', 572, 2016, 7, 1),
(503, 39, 'Huyện Tân Thạnh', 'Huyện Tân Thạnh', 'Huyện Tân Thạnh', 'Huyện Tân Thạnh', 581, 3276, 8, 1),
(504, 39, 'Huyện Tân Hưng', 'Huyện Tân Hưng', 'Huyện Tân Hưng', 'Huyện Tân Hưng', 578, 3273, 9, 1),
(505, 39, 'Huyện Mộc Hóa', 'Huyện Mộc Hóa', 'Huyện Mộc Hóa', 'Huyện Mộc Hóa', 583, 3227, 10, 1),
(506, 39, 'Huyện Đức Huệ', 'Huyện Đức Huệ', 'Huyện Đức Huệ', 'Huyện Đức Huệ', 573, 2129, 11, 1),
(507, 39, 'Huyện Đức Hòa', 'Huyện Đức Hòa', 'Huyện Đức Hòa', 'Huyện Đức Hòa', 584, 1929, 12, 1),
(508, 39, 'Huyện Châu Thành', 'Huyện Châu Thành', 'Huyện Châu Thành', 'Huyện Châu Thành', 579, 1909, 13, 1),
(509, 39, 'Huyện Cần Guộc', 'Huyện Cần Guộc', 'Huyện Cần Guộc', 'Huyện Cần Guộc', 574, 1907, 14, 1),
(510, 39, 'Huyện Cần đước', 'Huyện Cần đước', 'Huyện Cần đước', 'Huyện Cần đước', 575, 1906, 15, 1),
(511, 39, 'Huyện Bến Lức', 'Huyện Bến Lức', 'Huyện Bến Lức', 'Huyện Bến Lức', 580, 1894, 16, 1),
(512, 40, 'Thành Phố Nam định', 'Thành Phố Nam định', 'Thành Phố Nam định', 'Thành Phố Nam định', 285, 1613, 2, 1),
(513, 40, 'Huyện Ý Yên', 'Huyện Ý Yên', 'Huyện Ý Yên', 'Huyện Ý Yên', 278, 1841, 3, 1),
(514, 40, 'Huyện Xuân Trường', 'Huyện Xuân Trường', 'Huyện Xuân Trường', 'Huyện Xuân Trường', 282, 3323, 4, 1),
(515, 40, 'Huyện Vụ Bản', 'Huyện Vụ Bản', 'Huyện Vụ Bản', 'Huyện Vụ Bản', 287, 3319, 5, 1),
(516, 40, 'Huyện Trực Ninh', 'Huyện Trực Ninh', 'Huyện Trực Ninh', 'Huyện Trực Ninh', 280, 3308, 6, 1),
(517, 40, 'Huyện Nghĩa Hưng', 'Huyện Nghĩa Hưng', 'Huyện Nghĩa Hưng', 'Huyện Nghĩa Hưng', 284, 3243, 7, 1),
(518, 40, 'Huyện Nam Trực', 'Huyện Nam Trực', 'Huyện Nam Trực', 'Huyện Nam Trực', 279, 1983, 8, 1),
(519, 40, 'Huyện Mỹ Lộc', 'Huyện Mỹ Lộc', 'Huyện Mỹ Lộc', 'Huyện Mỹ Lộc', 281, 1981, 9, 1),
(520, 40, 'Huyện Hải Hậu', 'Huyện Hải Hậu', 'Huyện Hải Hậu', 'Huyện Hải Hậu', 286, 1840, 10, 1),
(521, 40, 'Huyện Giao Thủy', 'Huyện Giao Thủy', 'Huyện Giao Thủy', 'Huyện Giao Thủy', 283, 3193, 11, 1),
(522, 41, 'Thị Xã Thái Hòa', 'Thị Xã Thái Hòa', 'Thị Xã Thái Hòa', 'Thị Xã Thái Hòa', 322, 1850, 2, 1),
(523, 41, 'Thị xã Hoàng Mai', 'Thị xã Hoàng Mai', 'Thị xã Hoàng Mai', 'Thị xã Hoàng Mai', 720, 1849, 3, 1),
(524, 41, 'Thị Xã Cửa Lò', 'Thị Xã Cửa Lò', 'Thị Xã Cửa Lò', 'Thị Xã Cửa Lò', 324, 1842, 4, 1),
(525, 41, 'Thành Phố Vinh', 'Thành Phố Vinh', 'Thành Phố Vinh', 'Thành Phố Vinh', 331, 1617, 5, 1),
(526, 41, 'Huyện Yên Thành', 'Huyện Yên Thành', 'Huyện Yên Thành', 'Huyện Yên Thành', 334, 1846, 6, 1),
(527, 41, 'Huyện Tương Dương', 'Huyện Tương Dương', 'Huyện Tương Dương', 'Huyện Tương Dương', 325, 3288, 7, 1),
(528, 41, 'Huyện Thanh Chương', 'Huyện Thanh Chương', 'Huyện Thanh Chương', 'Huyện Thanh Chương', 316, 3291, 8, 1),
(529, 41, 'Huyện Tân Kỳ', 'Huyện Tân Kỳ', 'Huyện Tân Kỳ', 'Huyện Tân Kỳ', 328, 1845, 9, 1),
(530, 41, 'Huyện Quỳnh Lưu', 'Huyện Quỳnh Lưu', 'Huyện Quỳnh Lưu', 'Huyện Quỳnh Lưu', 317, 1848, 10, 1),
(531, 41, 'Huyện Quỳ Hợp', 'Huyện Quỳ Hợp', 'Huyện Quỳ Hợp', 'Huyện Quỳ Hợp', 318, 1852, 11, 1);
INSERT INTO `lh_ship_khuvuc` (`id`, `id_parent`, `tenbaiviet_vi`, `tenbaiviet_en`, `tenbaiviet_cn`, `tenbaiviet_jp`, `id_shipchung`, `id_giaohangnhanh`, `catasort`, `showhi`) VALUES
(532, 41, 'Huyện Quỳ Châu', 'Huyện Quỳ Châu', 'Huyện Quỳ Châu', 'Huyện Quỳ Châu', 323, 3261, 12, 1),
(533, 41, 'Huyện Quế Phong', 'Huyện Quế Phong', 'Huyện Quế Phong', 'Huyện Quế Phong', 326, 3260, 13, 1),
(534, 41, 'Huyện Nghĩa Đàn', 'Huyện Nghĩa Đàn', 'Huyện Nghĩa Đàn', 'Huyện Nghĩa Đàn', 321, 1851, 14, 1),
(535, 41, 'Huyện Nghi Lộc', 'Huyện Nghi Lộc', 'Huyện Nghi Lộc', 'Huyện Nghi Lộc', 333, 1854, 15, 1),
(536, 41, 'Huyện Nam Đàn', 'Huyện Nam Đàn', 'Huyện Nam Đàn', 'Huyện Nam Đàn', 327, 3233, 16, 1),
(537, 41, 'Huyện Kỳ Sơn', 'Huyện Kỳ Sơn', 'Huyện Kỳ Sơn', 'Huyện Kỳ Sơn', 330, 3211, 17, 1),
(538, 41, 'Huyện Hưng Nguyên', 'Huyện Hưng Nguyên', 'Huyện Hưng Nguyên', 'Huyện Hưng Nguyên', 320, 1947, 18, 1),
(539, 41, 'Huyện Đô Lương', 'Huyện Đô Lương', 'Huyện Đô Lương', 'Huyện Đô Lương', 332, 1843, 19, 1),
(540, 41, 'Huyện Diễn Châu', 'Huyện Diễn Châu', 'Huyện Diễn Châu', 'Huyện Diễn Châu', 329, 1847, 20, 1),
(541, 41, 'Huyện Con Cuông', 'Huyện Con Cuông', 'Huyện Con Cuông', 'Huyện Con Cuông', 319, 1853, 21, 1),
(542, 41, 'Huyện Anh Sơn', 'Huyện Anh Sơn', 'Huyện Anh Sơn', 'Huyện Anh Sơn', 315, 1844, 22, 1),
(543, 42, 'Thị Xã Tam điệp', 'Thị Xã Tam điệp', 'Thị Xã Tam điệp', 'Thị Xã Tam điệp', 270, 1713, 2, 1),
(544, 42, 'Thành Phố Ninh Bình', 'Thành Phố Ninh Bình', 'Thành Phố Ninh Bình', 'Thành Phố Ninh Bình', 269, 1615, 3, 1),
(545, 42, 'Huyện Yên Mô', 'Huyện Yên Mô', 'Huyện Yên Mô', 'Huyện Yên Mô', 275, 3327, 4, 1),
(546, 42, 'Huyện Yên Khánh', 'Huyện Yên Khánh', 'Huyện Yên Khánh', 'Huyện Yên Khánh', 277, 1714, 5, 1),
(547, 42, 'Huyện Nho Quan', 'Huyện Nho Quan', 'Huyện Nho Quan', 'Huyện Nho Quan', 272, 3247, 6, 1),
(548, 42, 'Huyện Kim Sơn', 'Huyện Kim Sơn', 'Huyện Kim Sơn', 'Huyện Kim Sơn', 271, 3205, 7, 1),
(549, 42, 'Huyện Hoa Lư', 'Huyện Hoa Lư', 'Huyện Hoa Lư', 'Huyện Hoa Lư', 274, 1944, 8, 1),
(550, 42, 'Huyện Gia Viễn', 'Huyện Gia Viễn', 'Huyện Gia Viễn', 'Huyện Gia Viễn', 273, 3191, 9, 1),
(551, 43, 'Thành phố Phan Rang - Tháp Chàm', 'Thành phố Phan Rang - Tháp Chàm', 'Thành phố Phan Rang - Tháp Chàm', 'Thành phố Phan Rang - Tháp Chàm', 510, 1665, 2, 1),
(552, 43, 'Huyện Thuận Nam', 'Huyện Thuận Nam', 'Huyện Thuận Nam', 'Huyện Thuận Nam', 507, 3302, 3, 1),
(553, 43, 'Huyện Thuận Bắc', 'Huyện Thuận Bắc', 'Huyện Thuận Bắc', 'Huyện Thuận Bắc', 509, 3301, 4, 1),
(554, 43, 'Huyện Ninh Sơn', 'Huyện Ninh Sơn', 'Huyện Ninh Sơn', 'Huyện Ninh Sơn', 506, 1855, 5, 1),
(555, 43, 'Huyện Ninh Phước', 'Huyện Ninh Phước', 'Huyện Ninh Phước', 'Huyện Ninh Phước', 505, 1986, 6, 1),
(556, 43, 'Huyện Ninh Hải', 'Huyện Ninh Hải', 'Huyện Ninh Hải', 'Huyện Ninh Hải', 508, 1985, 7, 1),
(557, 43, 'Huyện Bác Ái', 'Huyện Bác Ái', 'Huyện Bác Ái', 'Huyện Bác Ái', 504, 3129, 8, 1),
(558, 44, 'Thi Xã Phú Thọ', 'Thi Xã Phú Thọ', 'Thi Xã Phú Thọ', 'Thi Xã Phú Thọ', 150, 2064, 2, 1),
(559, 44, 'Thành Phố Việt Trì', 'Thành Phố Việt Trì', 'Thành Phố Việt Trì', 'Thành Phố Việt Trì', 152, 1602, 3, 1),
(560, 44, 'Huyện Yên Lập', 'Huyện Yên Lập', 'Huyện Yên Lập', 'Huyện Yên Lập', 158, 2268, 4, 1),
(561, 44, 'Huyện Thanh Thủy', 'Huyện Thanh Thủy', 'Huyện Thanh Thủy', 'Huyện Thanh Thủy', 154, 2237, 5, 1),
(562, 44, 'Huyện Thanh Sơn', 'Huyện Thanh Sơn', 'Huyện Thanh Sơn', 'Huyện Thanh Sơn', 156, 2029, 6, 1),
(563, 44, 'Huyện Thanh Ba', 'Huyện Thanh Ba', 'Huyện Thanh Ba', 'Huyện Thanh Ba', 151, 3290, 7, 1),
(564, 44, 'Huyện Tân Sơn', 'Huyện Tân Sơn', 'Huyện Tân Sơn', 'Huyện Tân Sơn', 157, 2015, 8, 1),
(565, 44, 'Huyện Tam Nông', 'Huyện Tam Nông', 'Huyện Tam Nông', 'Huyện Tam Nông', 160, 3272, 9, 1),
(566, 44, 'Huyện Phù Ninh', 'Huyện Phù Ninh', 'Huyện Phù Ninh', 'Huyện Phù Ninh', 155, 1994, 10, 1),
(567, 44, 'Huyện Lâm Thao', 'Huyện Lâm Thao', 'Huyện Lâm Thao', 'Huyện Lâm Thao', 161, 1959, 11, 1),
(568, 44, 'Huyện Hạ Hòa', 'Huyện Hạ Hòa', 'Huyện Hạ Hòa', 'Huyện Hạ Hòa', 162, 1938, 12, 1),
(569, 44, 'Huyện Đoan Hùng', 'Huyện Đoan Hùng', 'Huyện Đoan Hùng', 'Huyện Đoan Hùng', 153, 1925, 13, 1),
(570, 44, 'Huyện Cẩm Khê', 'Huyện Cẩm Khê', 'Huyện Cẩm Khê', 'Huyện Cẩm Khê', 159, 1905, 14, 1),
(571, 45, 'Thị Xã Sông Cầu', 'Thị Xã Sông Cầu', 'Thị Xã Sông Cầu', 'Thị Xã Sông Cầu', 74, 1856, 2, 1),
(572, 45, 'Thành Phố Tuy Hòa', 'Thành Phố Tuy Hòa', 'Thành Phố Tuy Hòa', 'Thành Phố Tuy Hòa', 79, 1663, 3, 1),
(573, 45, 'Huyện Tuy An', 'Huyện Tuy An', 'Huyện Tuy An', 'Huyện Tuy An', 75, 3284, 4, 1),
(574, 45, 'Huyện Tây Hòa', 'Huyện Tây Hòa', 'Huyện Tây Hòa', 'Huyện Tây Hòa', 77, 3278, 5, 1),
(575, 45, 'Huyện Sông Hinh', 'Huyện Sông Hinh', 'Huyện Sông Hinh', 'Huyện Sông Hinh', 76, 2206, 6, 1),
(576, 45, 'Huyện Sơn Hòa', 'Huyện Sơn Hòa', 'Huyện Sơn Hòa', 'Huyện Sơn Hòa', 80, 2211, 7, 1),
(577, 45, 'Huyện Phú Hòa', 'Huyện Phú Hòa', 'Huyện Phú Hòa', 'Huyện Phú Hòa', 73, 1993, 8, 1),
(578, 45, 'Huyện Đồng Xuân', 'Huyện Đồng Xuân', 'Huyện Đồng Xuân', 'Huyện Đồng Xuân', 81, 3186, 9, 1),
(579, 45, 'Huyện Đông Hòa', 'Huyện Đông Hòa', 'Huyện Đông Hòa', 'Huyện Đông Hòa', 78, 3184, 10, 1),
(580, 46, 'Thị xã Ba Đồn', 'Thị xã Ba Đồn', 'Thị xã Ba Đồn', 'Thị xã Ba Đồn', 719, 1859, 2, 1),
(581, 46, 'Thành Phố Đồng Hới', 'Thành Phố Đồng Hới', 'Thành Phố Đồng Hới', 'Thành Phố Đồng Hới', 349, 1619, 3, 1),
(582, 46, 'Huyện Tuyên Hóa', 'Huyện Tuyên Hóa', 'Huyện Tuyên Hóa', 'Huyện Tuyên Hóa', 348, 3286, 4, 1),
(583, 46, 'Huyện Quảng Trạch', 'Huyện Quảng Trạch', 'Huyện Quảng Trạch', 'Huyện Quảng Trạch', 351, 3258, 5, 1),
(584, 46, 'Huyện Quảng Ninh', 'Huyện Quảng Ninh', 'Huyện Quảng Ninh', 'Huyện Quảng Ninh', 353, 2002, 6, 1),
(585, 46, 'Huyện Minh Hóa', 'Huyện Minh Hóa', 'Huyện Minh Hóa', 'Huyện Minh Hóa', 352, 3224, 7, 1),
(586, 46, 'Huyện Lệ Thủy', 'Huyện Lệ Thủy', 'Huyện Lệ Thủy', 'Huyện Lệ Thủy', 347, 1857, 8, 1),
(587, 46, 'Huyện Bố Trạch', 'Huyện Bố Trạch', 'Huyện Bố Trạch', 'Huyện Bố Trạch', 350, 1858, 9, 1),
(588, 47, 'Thành Phố Tam Kỳ', 'Thành Phố Tam Kỳ', 'Thành Phố Tam Kỳ', 'Thành Phố Tam Kỳ', 386, 1631, 2, 1),
(589, 47, 'Thành Phố Hội An', 'Thành Phố Hội An', 'Thành Phố Hội An', 'Thành Phố Hội An', 391, 1632, 3, 1),
(590, 47, 'Huyện Tiên Phước', 'Huyện Tiên Phước', 'Huyện Tiên Phước', 'Huyện Tiên Phước', 392, 2224, 4, 1),
(591, 47, 'Huyện Thăng Bình', 'Huyện Thăng Bình', 'Huyện Thăng Bình', 'Huyện Thăng Bình', 385, 2239, 5, 1),
(592, 47, 'Huyện Tây Giang', 'Huyện Tây Giang', 'Huyện Tây Giang', 'Huyện Tây Giang', 390, 2219, 6, 1),
(593, 47, 'Huyện Quế Sơn', 'Huyện Quế Sơn', 'Huyện Quế Sơn', 'Huyện Quế Sơn', 396, 2003, 7, 1),
(594, 47, 'Huyện Phước Sơn', 'Huyện Phước Sơn', 'Huyện Phước Sơn', 'Huyện Phước Sơn', 382, 2198, 8, 1),
(595, 47, 'Huyện Phú Ninh', 'Huyện Phú Ninh', 'Huyện Phú Ninh', 'Huyện Phú Ninh', 381, 1995, 9, 1),
(596, 47, 'Huyện Núi Thành', 'Huyện Núi Thành', 'Huyện Núi Thành', 'Huyện Núi Thành', 398, 1987, 10, 1),
(597, 47, 'Huyện Nông Sơn', 'Huyện Nông Sơn', 'Huyện Nông Sơn', 'Huyện Nông Sơn', 397, 2182, 11, 1),
(598, 47, 'Huyện Nam Trà My', 'Huyện Nam Trà My', 'Huyện Nam Trà My', 'Huyện Nam Trà My', 387, 2178, 12, 1),
(599, 47, 'Huyện Nam Giang', 'Huyện Nam Giang', 'Huyện Nam Giang', 'Huyện Nam Giang', 384, 2177, 13, 1),
(600, 47, 'Huyện Hiệp Đức', 'Huyện Hiệp Đức', 'Huyện Hiệp Đức', 'Huyện Hiệp Đức', 393, 2139, 14, 1),
(601, 47, 'Huyện Đông Giang', 'Huyện Đông Giang', 'Huyện Đông Giang', 'Huyện Đông Giang', 388, 2125, 15, 1),
(602, 47, 'Huyện Điện Bàn', 'Huyện Điện Bàn', 'Huyện Điện Bàn', 'Huyện Điện Bàn', 394, 1736, 16, 1),
(603, 47, 'Huyện Đại Lộc', 'Huyện Đại Lộc', 'Huyện Đại Lộc', 'Huyện Đại Lộc', 383, 1917, 17, 1),
(604, 47, 'Huyện Duy Xuyên', 'Huyện Duy Xuyên', 'Huyện Duy Xuyên', 'Huyện Duy Xuyên', 395, 1735, 18, 1),
(605, 47, 'Huyện Bắc Trà My', 'Huyện Bắc Trà My', 'Huyện Bắc Trà My', 'Huyện Bắc Trà My', 389, 2078, 19, 1),
(606, 48, 'Thành Phố Quảng Ngãi', 'Thành Phố Quảng Ngãi', 'Thành Phố Quảng Ngãi', 'Thành Phố Quảng Ngãi', 404, 1630, 2, 1),
(607, 48, 'Huyện Tư Nghĩa', 'Huyện Tư Nghĩa', 'Huyện Tư Nghĩa', 'Huyện Tư Nghĩa', 400, 1738, 3, 1),
(608, 48, 'Huyện Trà Bồng', 'Huyện Trà Bồng', 'Huyện Trà Bồng', 'Huyện Trà Bồng', 407, 3304, 4, 1),
(609, 48, 'Huyện Tây Trà', 'Huyện Tây Trà', 'Huyện Tây Trà', 'Huyện Tây Trà', 408, 2222, 5, 1),
(610, 48, 'Huyện Sơn Tịnh', 'Huyện Sơn Tịnh', 'Huyện Sơn Tịnh', 'Huyện Sơn Tịnh', 412, 1737, 6, 1),
(611, 48, 'Huyện Sơn Tây', 'Huyện Sơn Tây', 'Huyện Sơn Tây', 'Huyện Sơn Tây', 406, 3270, 7, 1),
(612, 48, 'Huyện Sơn Hà', 'Huyện Sơn Hà', 'Huyện Sơn Hà', 'Huyện Sơn Hà', 410, 2210, 8, 1),
(613, 48, 'Huyện Nghĩa Hành', 'Huyện Nghĩa Hành', 'Huyện Nghĩa Hành', 'Huyện Nghĩa Hành', 399, 1988, 9, 1),
(614, 48, 'Huyện Mộ đức', 'Huyện Mộ đức', 'Huyện Mộ đức', 'Huyện Mộ đức', 405, 3226, 10, 1),
(615, 48, 'Huyện Minh Long', 'Huyện Minh Long', 'Huyện Minh Long', 'Huyện Minh Long', 402, 2167, 11, 1),
(616, 48, 'Huyện Lý Sơn', 'Huyện Lý Sơn', 'Huyện Lý Sơn', 'Huyện Lý Sơn', 409, 2114, 12, 1),
(617, 48, 'Huyện đức Phổ', 'Huyện đức Phổ', 'Huyện đức Phổ', 'Huyện đức Phổ', 411, 1930, 13, 1),
(618, 48, 'Huyện Bình Sơn', 'Huyện Bình Sơn', 'Huyện Bình Sơn', 'Huyện Bình Sơn', 403, 1898, 14, 1),
(619, 48, 'Huyện Ba Tơ', 'Huyện Ba Tơ', 'Huyện Ba Tơ', 'Huyện Ba Tơ', 401, 3127, 15, 1),
(620, 49, 'Thị Xã Quảng Yên', 'Thị Xã Quảng Yên', 'Thị Xã Quảng Yên', 'Thị Xã Quảng Yên', 204, 2066, 2, 1),
(621, 49, 'Thành phố Uông Bí', 'Thành phố Uông Bí', 'Thành phố Uông Bí', 'Thành phố Uông Bí', 203, 1686, 3, 1),
(622, 49, 'Thành Phố Móng Cái', 'Thành Phố Móng Cái', 'Thành Phố Móng Cái', 'Thành Phố Móng Cái', 213, 1603, 4, 1),
(623, 49, 'Thành Phố Hạ Long', 'Thành Phố Hạ Long', 'Thành Phố Hạ Long', 'Thành Phố Hạ Long', 215, 1604, 5, 1),
(624, 49, 'Thành phố Cẩm Phả', 'Thành phố Cẩm Phả', 'Thành phố Cẩm Phả', 'Thành phố Cẩm Phả', 211, 1683, 6, 1),
(625, 49, 'Huyện Vân Đồn', 'Huyện Vân Đồn', 'Huyện Vân Đồn', 'Huyện Vân Đồn', 210, 1920, 7, 1),
(626, 49, 'Huyện Tiên Yên', 'Huyện Tiên Yên', 'Huyện Tiên Yên', 'Huyện Tiên Yên', 202, 2019, 8, 1),
(627, 49, 'Huyện Hoành Bồ', 'Huyện Hoành Bồ', 'Huyện Hoành Bồ', 'Huyện Hoành Bồ', 209, 3199, 9, 1),
(628, 49, 'Huyện Hải Hà', 'Huyện Hải Hà', 'Huyện Hải Hà', 'Huyện Hải Hà', 214, 1940, 10, 1),
(629, 49, 'Huyện Đông Triều', 'Huyện Đông Triều', 'Huyện Đông Triều', 'Huyện Đông Triều', 205, 3185, 11, 1),
(630, 49, 'Huyện Đầm Hà', 'Huyện Đầm Hà', 'Huyện Đầm Hà', 'Huyện Đầm Hà', 208, 3180, 12, 1),
(631, 49, 'Huyện Cô Tô', 'Huyện Cô Tô', 'Huyện Cô Tô', 'Huyện Cô Tô', 212, 2109, 13, 1),
(632, 49, 'Huyện Bình Liêu', 'Huyện Bình Liêu', 'Huyện Bình Liêu', 'Huyện Bình Liêu', 207, 1896, 14, 1),
(633, 49, 'Huyện Ba Chẽ', 'Huyện Ba Chẽ', 'Huyện Ba Chẽ', 'Huyện Ba Chẽ', 206, 3126, 15, 1),
(634, 50, 'Thị Xã Quảng Trị', 'Thị Xã Quảng Trị', 'Thị Xã Quảng Trị', 'Thị Xã Quảng Trị', 358, 1621, 2, 1),
(635, 50, 'Thành Phố Đông Hà', 'Thành Phố Đông Hà', 'Thành Phố Đông Hà', 'Thành Phố Đông Hà', 355, 1620, 3, 1),
(636, 50, 'Huyện Vĩnh Linh', 'Huyện Vĩnh Linh', 'Huyện Vĩnh Linh', 'Huyện Vĩnh Linh', 363, 1861, 4, 1),
(637, 50, 'Huyện Triệu Phong', 'Huyện Triệu Phong', 'Huyện Triệu Phong', 'Huyện Triệu Phong', 354, 2040, 5, 1),
(638, 50, 'Huyện Hướng Hóa', 'Huyện Hướng Hóa', 'Huyện Hướng Hóa', 'Huyện Hướng Hóa', 357, 1860, 6, 1),
(639, 50, 'Huyện Hải Lăng', 'Huyện Hải Lăng', 'Huyện Hải Lăng', 'Huyện Hải Lăng', 362, 2137, 7, 1),
(640, 50, 'Huyện Gio Linh', 'Huyện Gio Linh', 'Huyện Gio Linh', 'Huyện Gio Linh', 356, 1936, 8, 1),
(641, 50, 'Huyện Đảo Cồn Cỏ', 'Huyện Đảo Cồn Cỏ', 'Huyện Đảo Cồn Cỏ', 'Huyện Đảo Cồn Cỏ', 360, 2110, 9, 1),
(642, 50, 'Huyện Đa Krông', 'Huyện Đa Krông', 'Huyện Đa Krông', 'Huyện Đa Krông', 361, 2105, 10, 1),
(643, 50, 'Huyện Cam Lộ', 'Huyện Cam Lộ', 'Huyện Cam Lộ', 'Huyện Cam Lộ', 359, 1903, 11, 1),
(644, 51, 'Thị Xã Vĩnh Châu', 'Thị Xã Vĩnh Châu', 'Thị Xã Vĩnh Châu', 'Thị Xã Vĩnh Châu', 110, 2272, 2, 1),
(645, 51, 'Thị trấn Trần Đề', 'Thị trấn Trần Đề', 'Thị trấn Trần Đề', 'Thị trấn Trần Đề', 707, 2037, 3, 1),
(646, 51, 'Thành Phố Sóc Trăng', 'Thành Phố Sóc Trăng', 'Thành Phố Sóc Trăng', 'Thành Phố Sóc Trăng', 116, 1568, 4, 1),
(647, 51, 'Huyện Thạnh Trị', 'Huyện Thạnh Trị', 'Huyện Thạnh Trị', 'Huyện Thạnh Trị', 111, 2238, 5, 1),
(648, 51, 'Huyện Ngã Năm', 'Huyện Ngã Năm', 'Huyện Ngã Năm', 'Huyện Ngã Năm', 113, 2062, 6, 1),
(649, 51, 'Huyện Mỹ Xuyên', 'Huyện Mỹ Xuyên', 'Huyện Mỹ Xuyên', 'Huyện Mỹ Xuyên', 117, 1743, 7, 1),
(650, 51, 'Huyện Mỹ Tú', 'Huyện Mỹ Tú', 'Huyện Mỹ Tú', 'Huyện Mỹ Tú', 118, 2173, 8, 1),
(651, 51, 'Huyện Long Phú', 'Huyện Long Phú', 'Huyện Long Phú', 'Huyện Long Phú', 109, 2161, 9, 1),
(652, 51, 'Huyện Kế Sách', 'Huyện Kế Sách', 'Huyện Kế Sách', 'Huyện Kế Sách', 114, 1949, 10, 1),
(653, 51, 'Huyện Cù Lao Dung', 'Huyện Cù Lao Dung', 'Huyện Cù Lao Dung', 'Huyện Cù Lao Dung', 115, 2093, 11, 1),
(654, 51, 'Huyện Châu Thành', 'Huyện Châu Thành', 'Huyện Châu Thành', 'Huyện Châu Thành', 112, 1910, 12, 1),
(655, 52, 'Thành phố Sơn La', 'Thành phố Sơn La', 'Thành phố Sơn La', 'Thành phố Sơn La', 142, 1677, 2, 1),
(656, 52, 'Huyện Yên Châu', 'Huyện Yên Châu', 'Huyện Yên Châu', 'Huyện Yên Châu', 149, 2267, 3, 1),
(657, 52, 'Huyện Vân Hồ', 'Huyện Vân Hồ', 'Huyện Vân Hồ', 'Huyện Vân Hồ', 714, 2255, 4, 1),
(658, 52, 'Huyện Thuận Châu', 'Huyện Thuận Châu', 'Huyện Thuận Châu', 'Huyện Thuận Châu', 146, 2032, 5, 1),
(659, 52, 'Huyện Sốp Cộp', 'Huyện Sốp Cộp', 'Huyện Sốp Cộp', 'Huyện Sốp Cộp', 145, 3266, 6, 1),
(660, 52, 'Huyện Sông Mã', 'Huyện Sông Mã', 'Huyện Sông Mã', 'Huyện Sông Mã', 141, 2007, 7, 1),
(661, 52, 'Huyện Quỳnh Nhai', 'Huyện Quỳnh Nhai', 'Huyện Quỳnh Nhai', 'Huyện Quỳnh Nhai', 139, 2204, 8, 1),
(662, 52, 'Huyện Phù Yên', 'Huyện Phù Yên', 'Huyện Phù Yên', 'Huyện Phù Yên', 144, 1996, 9, 1),
(663, 52, 'Huyện Mường La', 'Huyện Mường La', 'Huyện Mường La', 'Huyện Mường La', 140, 3230, 10, 1),
(664, 52, 'Huyện Mộc Châu', 'Huyện Mộc Châu', 'Huyện Mộc Châu', 'Huyện Mộc Châu', 148, 1976, 11, 1),
(665, 52, 'Huyện Mai Sơn', 'Huyện Mai Sơn', 'Huyện Mai Sơn', 'Huyện Mai Sơn', 143, 1971, 12, 1),
(666, 52, 'Huyện Bắc Yên', 'Huyện Bắc Yên', 'Huyện Bắc Yên', 'Huyện Bắc Yên', 147, 2079, 13, 1),
(667, 53, 'Thành Phố Tây Ninh', 'Thành Phố Tây Ninh', 'Thành Phố Tây Ninh', 'Thành Phố Tây Ninh', 514, 1626, 2, 1),
(668, 53, 'Huyện Trảng Bàng', 'Huyện Trảng Bàng', 'Huyện Trảng Bàng', 'Huyện Trảng Bàng', 518, 2035, 3, 1),
(669, 53, 'Huyện Tân Châu', 'Huyện Tân Châu', 'Huyện Tân Châu', 'Huyện Tân Châu', 511, 1863, 4, 1),
(670, 53, 'Huyện Tân Biên', 'Huyện Tân Biên', 'Huyện Tân Biên', 'Huyện Tân Biên', 516, 1862, 5, 1),
(671, 53, 'Huyện Hòa Thành', 'Huyện Hòa Thành', 'Huyện Hòa Thành', 'Huyện Hòa Thành', 515, 1721, 6, 1),
(672, 53, 'Huyện Gò Dầu', 'Huyện Gò Dầu', 'Huyện Gò Dầu', 'Huyện Gò Dầu', 517, 1866, 7, 1),
(673, 53, 'Huyện Dương Minh Châu', 'Huyện Dương Minh Châu', 'Huyện Dương Minh Châu', 'Huyện Dương Minh Châu', 519, 1864, 8, 1),
(674, 53, 'Huyện Châu Thành', 'Huyện Châu Thành', 'Huyện Châu Thành', 'Huyện Châu Thành', 512, 1720, 9, 1),
(675, 53, 'Huyện Bến Cầu', 'Huyện Bến Cầu', 'Huyện Bến Cầu', 'Huyện Bến Cầu', 513, 1865, 10, 1),
(676, 54, 'Thành Phố Thái Bình', 'Thành Phố Thái Bình', 'Thành Phố Thái Bình', 'Thành Phố Thái Bình', 265, 1599, 2, 1),
(677, 54, 'Huyện Vũ Thư', 'Huyện Vũ Thư', 'Huyện Vũ Thư', 'Huyện Vũ Thư', 261, 1716, 3, 1),
(678, 54, 'Huyện Tiền Hải', 'Huyện Tiền Hải', 'Huyện Tiền Hải', 'Huyện Tiền Hải', 267, 3281, 4, 1),
(679, 54, 'Huyện Thái Thụy', 'Huyện Thái Thụy', 'Huyện Thái Thụy', 'Huyện Thái Thụy', 260, 1869, 5, 1),
(680, 54, 'Huyện Quỳnh Phụ', 'Huyện Quỳnh Phụ', 'Huyện Quỳnh Phụ', 'Huyện Quỳnh Phụ', 262, 1868, 6, 1),
(681, 54, 'Huyện Quỳnh Côi', 'Huyện Quỳnh Côi', 'Huyện Quỳnh Côi', 'Huyện Quỳnh Côi', 264, 0, 7, 1),
(682, 54, 'Huyện Kiến Xương', 'Huyện Kiến Xương', 'Huyện Kiến Xương', 'Huyện Kiến Xương', 268, 1951, 8, 1),
(683, 54, 'Huyện Hưng Hà', 'Huyện Hưng Hà', 'Huyện Hưng Hà', 'Huyện Hưng Hà', 263, 1867, 9, 1),
(684, 54, 'Huyện Đông Hưng', 'Huyện Đông Hưng', 'Huyện Đông Hưng', 'Huyện Đông Hưng', 266, 1715, 10, 1),
(685, 55, 'Thị Xã Sông Công', 'Thị Xã Sông Công', 'Thị Xã Sông Công', 'Thị Xã Sông Công', 108, 1684, 2, 1),
(686, 55, 'Thành Phố Thái Nguyên', 'Thành Phố Thái Nguyên', 'Thành Phố Thái Nguyên', 'Thành Phố Thái Nguyên', 103, 1639, 3, 1),
(687, 55, 'Huyện Võ Nhai', 'Huyện Võ Nhai', 'Huyện Võ Nhai', 'Huyện Võ Nhai', 102, 2051, 4, 1),
(688, 55, 'Huyện Phú Lương', 'Huyện Phú Lương', 'Huyện Phú Lương', 'Huyện Phú Lương', 101, 2195, 5, 1),
(689, 55, 'Huyện Phú Bình', 'Huyện Phú Bình', 'Huyện Phú Bình', 'Huyện Phú Bình', 104, 1991, 6, 1),
(690, 55, 'Huyện Phổ Yên', 'Huyện Phổ Yên', 'Huyện Phổ Yên', 'Huyện Phổ Yên', 100, 1990, 7, 1),
(691, 55, 'Huyện Đồng Hỷ', 'Huyện Đồng Hỷ', 'Huyện Đồng Hỷ', 'Huyện Đồng Hỷ', 105, 1731, 8, 1),
(692, 55, 'Huyện Định Hóa', 'Huyện Định Hóa', 'Huyện Định Hóa', 'Huyện Định Hóa', 107, 1924, 9, 1),
(693, 55, 'Huyện Đại Từ', 'Huyện Đại Từ', 'Huyện Đại Từ', 'Huyện Đại Từ', 106, 1918, 10, 1),
(694, 56, 'Thị Xã Sầm Sơn', 'Thị Xã Sầm Sơn', 'Thị Xã Sầm Sơn', 'Thị Xã Sầm Sơn', 293, 1712, 2, 1),
(695, 56, 'Thị Xã Bỉm Sơn', 'Thị Xã Bỉm Sơn', 'Thị Xã Bỉm Sơn', 'Thị Xã Bỉm Sơn', 309, 1876, 3, 1),
(696, 56, 'Thành Phố Thanh Hóa', 'Thành Phố Thanh Hóa', 'Thành Phố Thanh Hóa', 'Thành Phố Thanh Hóa', 299, 1616, 4, 1),
(697, 56, 'Huyện Yên định', 'Huyện Yên định', 'Huyện Yên định', 'Huyện Yên định', 304, 1875, 5, 1),
(698, 56, 'Huyện Vĩnh Lộc', 'Huyện Vĩnh Lộc', 'Huyện Vĩnh Lộc', 'Huyện Vĩnh Lộc', 297, 1881, 6, 1),
(699, 56, 'Huyện Triệu Sơn', 'Huyện Triệu Sơn', 'Huyện Triệu Sơn', 'Huyện Triệu Sơn', 300, 2249, 7, 1),
(700, 56, 'Huyện Tĩnh Gia', 'Huyện Tĩnh Gia', 'Huyện Tĩnh Gia', 'Huyện Tĩnh Gia', 302, 1870, 8, 1),
(701, 56, 'Huyện Thường Xuân', 'Huyện Thường Xuân', 'Huyện Thường Xuân', 'Huyện Thường Xuân', 303, 1872, 9, 1),
(702, 56, 'Huyện Thọ Xuân', 'Huyện Thọ Xuân', 'Huyện Thọ Xuân', 'Huyện Thọ Xuân', 291, 1873, 10, 1),
(703, 56, 'Huyện Thiệu Hóa', 'Huyện Thiệu Hóa', 'Huyện Thiệu Hóa', 'Huyện Thiệu Hóa', 311, 3298, 11, 1),
(704, 56, 'Huyện Thạch Thành', 'Huyện Thạch Thành', 'Huyện Thạch Thành', 'Huyện Thạch Thành', 292, 1880, 12, 1),
(705, 56, 'Huyện Quảng Xương', 'Huyện Quảng Xương', 'Huyện Quảng Xương', 'Huyện Quảng Xương', 294, 1747, 13, 1),
(706, 56, 'Huyện Quan Sơn', 'Huyện Quan Sơn', 'Huyện Quan Sơn', 'Huyện Quan Sơn', 290, 2000, 14, 1),
(707, 56, 'Huyện Quan Hóa', 'Huyện Quan Hóa', 'Huyện Quan Hóa', 'Huyện Quan Hóa', 314, 1879, 15, 1),
(708, 56, 'Huyện Nông Cống', 'Huyện Nông Cống', 'Huyện Nông Cống', 'Huyện Nông Cống', 301, 2181, 16, 1),
(709, 56, 'Huyện Như Xuân', 'Huyện Như Xuân', 'Huyện Như Xuân', 'Huyện Như Xuân', 305, 1871, 17, 1),
(710, 56, 'Huyện Như Thanh', 'Huyện Như Thanh', 'Huyện Như Thanh', 'Huyện Như Thanh', 308, 2190, 18, 1),
(711, 56, 'Huyện Ngọc Lặc', 'Huyện Ngọc Lặc', 'Huyện Ngọc Lặc', 'Huyện Ngọc Lặc', 288, 1874, 19, 1),
(712, 56, 'Huyện Nga Sơn', 'Huyện Nga Sơn', 'Huyện Nga Sơn', 'Huyện Nga Sơn', 295, 3241, 20, 1),
(713, 56, 'Huyện Mường Lát', 'Huyện Mường Lát', 'Huyện Mường Lát', 'Huyện Mường Lát', 312, 1878, 21, 1),
(714, 56, 'Huyện Lang Chánh', 'Huyện Lang Chánh', 'Huyện Lang Chánh', 'Huyện Lang Chánh', 298, 3216, 22, 1),
(715, 56, 'Huyện Hoằng Hóa', 'Huyện Hoằng Hóa', 'Huyện Hoằng Hóa', 'Huyện Hoằng Hóa', 289, 1748, 23, 1),
(716, 56, 'Huyện Hậu Lộc', 'Huyện Hậu Lộc', 'Huyện Hậu Lộc', 'Huyện Hậu Lộc', 307, 1942, 24, 1),
(717, 56, 'Huyện Hà Trung', 'Huyện Hà Trung', 'Huyện Hà Trung', 'Huyện Hà Trung', 310, 1877, 25, 1),
(718, 56, 'Huyện Đông Sơn', 'Huyện Đông Sơn', 'Huyện Đông Sơn', 'Huyện Đông Sơn', 296, 1927, 26, 1),
(719, 56, 'Huyện Cẩm Thủy', 'Huyện Cẩm Thủy', 'Huyện Cẩm Thủy', 'Huyện Cẩm Thủy', 313, 3147, 27, 1),
(720, 56, 'Huyện Bá Thước', 'Huyện Bá Thước', 'Huyện Bá Thước', 'Huyện Bá Thước', 306, 2070, 28, 1),
(721, 57, 'Thị Xã Hương Thủy', 'Thị Xã Hương Thủy', 'Thị Xã Hương Thủy', 'Thị Xã Hương Thủy', 367, 1698, 2, 1),
(722, 57, 'Thành Phố Huế', 'Thành Phố Huế', 'Thành Phố Huế', 'Thành Phố Huế', 371, 1585, 3, 1),
(723, 57, 'Huyện Quảng Điền', 'Huyện Quảng Điền', 'Huyện Quảng Điền', 'Huyện Quảng Điền', 370, 3257, 4, 1),
(724, 57, 'Huyện Phú Vang', 'Huyện Phú Vang', 'Huyện Phú Vang', 'Huyện Phú Vang', 365, 1749, 5, 1),
(725, 57, 'Huyện Phú Lộc', 'Huyện Phú Lộc', 'Huyện Phú Lộc', 'Huyện Phú Lộc', 366, 1882, 6, 1),
(726, 57, 'Huyện Phong Điền', 'Huyện Phong Điền', 'Huyện Phong Điền', 'Huyện Phong Điền', 369, 2193, 7, 1),
(727, 57, 'Huyện Nam đông', 'Huyện Nam đông', 'Huyện Nam đông', 'Huyện Nam đông', 372, 3234, 8, 1),
(728, 57, 'Huyện Hương Trà', 'Huyện Hương Trà', 'Huyện Hương Trà', 'Huyện Hương Trà', 364, 1697, 9, 1),
(729, 57, 'Huyện A Lưới', 'Huyện A Lưới', 'Huyện A Lưới', 'Huyện A Lưới', 368, 1885, 10, 1),
(730, 58, 'Thị Xã Gò Công', 'Thị Xã Gò Công', 'Thị Xã Gò Công', 'Thị Xã Gò Công', 616, 2057, 2, 1),
(731, 58, 'Thị xã Cai Lậy', 'Thị xã Cai Lậy', 'Thị xã Cai Lậy', 'Thị xã Cai Lậy', 620, 2055, 3, 1),
(732, 58, 'Thành Phố Mỹ Tho', 'Thành Phố Mỹ Tho', 'Thành Phố Mỹ Tho', 'Thành Phố Mỹ Tho', 619, 1556, 4, 1),
(733, 58, 'Huyện Tân Phước', 'Huyện Tân Phước', 'Huyện Tân Phước', 'Huyện Tân Phước', 625, 3275, 5, 1),
(734, 58, 'Huyện Tân Phú Đông', 'Huyện Tân Phú Đông', 'Huyện Tân Phú Đông', 'Huyện Tân Phú Đông', 617, 2216, 6, 1),
(735, 58, 'Huyện Gò Công Tây', 'Huyện Gò Công Tây', 'Huyện Gò Công Tây', 'Huyện Gò Công Tây', 621, 1933, 7, 1),
(736, 58, 'Huyện Gò Công Đông', 'Huyện Gò Công Đông', 'Huyện Gò Công Đông', 'Huyện Gò Công Đông', 623, 1932, 8, 1),
(737, 58, 'Huyện Chợ Gạo', 'Huyện Chợ Gạo', 'Huyện Chợ Gạo', 'Huyện Chợ Gạo', 618, 1741, 9, 1),
(738, 58, 'Huyện Châu Thành', 'Huyện Châu Thành', 'Huyện Châu Thành', 'Huyện Châu Thành', 624, 1740, 10, 1),
(739, 58, 'Huyện Cái Bè', 'Huyện Cái Bè', 'Huyện Cái Bè', 'Huyện Cái Bè', 622, 1900, 11, 1),
(740, 59, 'Thành Phố Trà Vinh', 'Thành Phố Trà Vinh', 'Thành Phố Trà Vinh', 'Thành Phố Trà Vinh', 683, 1560, 2, 1),
(741, 59, 'Huyện Trà Cú', 'Huyện Trà Cú', 'Huyện Trà Cú', 'Huyện Trà Cú', 677, 2033, 3, 1),
(742, 59, 'Huyện Tiểu Cần', 'Huyện Tiểu Cần', 'Huyện Tiểu Cần', 'Huyện Tiểu Cần', 684, 2020, 4, 1),
(743, 59, 'Huyện Duyên Hải', 'Huyện Duyên Hải', 'Huyện Duyên Hải', 'Huyện Duyên Hải', 678, 2103, 5, 1),
(744, 59, 'Huyện Châu Thành', 'Huyện Châu Thành', 'Huyện Châu Thành', 'Huyện Châu Thành', 681, 1911, 6, 1),
(745, 59, 'Huyện Cầu Ngang', 'Huyện Cầu Ngang', 'Huyện Cầu Ngang', 'Huyện Cầu Ngang', 682, 1908, 7, 1),
(746, 59, 'Huyện Cầu Kè', 'Huyện Cầu Kè', 'Huyện Cầu Kè', 'Huyện Cầu Kè', 679, 2091, 8, 1),
(747, 59, 'Huyện Càng Long', 'Huyện Càng Long', 'Huyện Càng Long', 'Huyện Càng Long', 680, 2086, 9, 1),
(748, 60, 'Thành phố Tuyên Quang', 'Thành phố Tuyên Quang', 'Thành phố Tuyên Quang', 'Thành phố Tuyên Quang', 57, 1601, 2, 1),
(749, 60, 'Huyện Yên Sơn', 'Huyện Yên Sơn', 'Huyện Yên Sơn', 'Huyện Yên Sơn', 58, 1745, 3, 1),
(750, 60, 'Huyện Sơn Dương', 'Huyện Sơn Dương', 'Huyện Sơn Dương', 'Huyện Sơn Dương', 60, 3267, 4, 1),
(751, 60, 'Huyện Nà Hang', 'Huyện Nà Hang', 'Huyện Nà Hang', 'Huyện Nà Hang', 62, 1982, 5, 1),
(752, 60, 'Huyện Lâm Bình', 'Huyện Lâm Bình', 'Huyện Lâm Bình', 'Huyện Lâm Bình', 702, 1957, 6, 1),
(753, 60, 'Huyện Hàm Yên', 'Huyện Hàm Yên', 'Huyện Hàm Yên', 'Huyện Hàm Yên', 59, 1941, 7, 1),
(754, 60, 'Huyện Chiêm Hóa', 'Huyện Chiêm Hóa', 'Huyện Chiêm Hóa', 'Huyện Chiêm Hóa', 61, 3157, 8, 1),
(755, 61, 'Thành Phố Vĩnh Long', 'Thành Phố Vĩnh Long', 'Thành Phố Vĩnh Long', 'Thành Phố Vĩnh Long', 648, 1562, 2, 1),
(756, 61, 'Huyện Vũng Liêm', 'Huyện Vũng Liêm', 'Huyện Vũng Liêm', 'Huyện Vũng Liêm', 653, 2263, 3, 1),
(757, 61, 'Huyện Trà Ôn', 'Huyện Trà Ôn', 'Huyện Trà Ôn', 'Huyện Trà Ôn', 647, 2034, 4, 1),
(758, 61, 'Huyện Tam Bình', 'Huyện Tam Bình', 'Huyện Tam Bình', 'Huyện Tam Bình', 650, 2008, 5, 1),
(759, 61, 'Huyện Mang Thít', 'Huyện Mang Thít', 'Huyện Mang Thít', 'Huyện Mang Thít', 654, 2164, 6, 1),
(760, 61, 'Huyện Long Hồ', 'Huyện Long Hồ', 'Huyện Long Hồ', 'Huyện Long Hồ', 651, 1962, 7, 1),
(761, 61, 'Huyện Bình Tân', 'Huyện Bình Tân', 'Huyện Bình Tân', 'Huyện Bình Tân', 652, 2081, 8, 1),
(762, 61, 'Huyện Bình Minh', 'Huyện Bình Minh', 'Huyện Bình Minh', 'Huyện Bình Minh', 649, 2054, 9, 1),
(763, 62, 'Thị Xã Phúc Yên', 'Thị Xã Phúc Yên', 'Thị Xã Phúc Yên', 'Thị Xã Phúc Yên', 130, 2065, 2, 1),
(764, 62, 'Thành Phố Vĩnh Yên', 'Thành Phố Vĩnh Yên', 'Thành Phố Vĩnh Yên', 'Thành Phố Vĩnh Yên', 132, 1578, 3, 1),
(765, 62, 'Huyên Yên Lạc', 'Huyên Yên Lạc', 'Huyên Yên Lạc', 'Huyên Yên Lạc', 133, 1734, 4, 1),
(766, 62, 'Huyện Vĩnh Tường', 'Huyện Vĩnh Tường', 'Huyện Vĩnh Tường', 'Huyện Vĩnh Tường', 131, 1733, 5, 1),
(767, 62, 'Huỵên Tam Đảo', 'Huỵên Tam Đảo', 'Huỵên Tam Đảo', 'Huỵên Tam Đảo', 135, 3271, 6, 1),
(768, 62, 'Huyện Tam Dương', 'Huyện Tam Dương', 'Huyện Tam Dương', 'Huyện Tam Dương', 136, 2009, 7, 1),
(769, 62, 'Huyện Sông Lô', 'Huyện Sông Lô', 'Huyện Sông Lô', 'Huyện Sông Lô', 138, 3265, 8, 1),
(770, 62, 'Huyện Lập Thạch', 'Huyện Lập Thạch', 'Huyện Lập Thạch', 'Huyện Lập Thạch', 134, 1960, 9, 1),
(771, 62, 'Huyện Bình Xuyên', 'Huyện Bình Xuyên', 'Huyện Bình Xuyên', 'Huyện Bình Xuyên', 137, 1732, 10, 1),
(772, 63, 'Thị Xã Nghĩa Lộ', 'Thị Xã Nghĩa Lộ', 'Thị Xã Nghĩa Lộ', 'Thị Xã Nghĩa Lộ', 97, 2063, 2, 1),
(773, 63, 'Thành Phố Yên Bái', 'Thành Phố Yên Bái', 'Thành Phố Yên Bái', 'Thành Phố Yên Bái', 98, 1674, 3, 1),
(774, 63, 'Huyện Yên Bình', 'Huyện Yên Bình', 'Huyện Yên Bình', 'Huyện Yên Bình', 94, 2266, 4, 1),
(775, 63, 'Huyện Văn Yên', 'Huyện Văn Yên', 'Huyện Văn Yên', 'Huyện Văn Yên', 92, 2047, 5, 1),
(776, 63, 'Huyện Văn Chấn', 'Huyện Văn Chấn', 'Huyện Văn Chấn', 'Huyện Văn Chấn', 91, 2044, 6, 1),
(777, 63, 'Huyện Trấn Yên', 'Huyện Trấn Yên', 'Huyện Trấn Yên', 'Huyện Trấn Yên', 93, 2039, 7, 1),
(778, 63, 'Huyện Trạm Tấu', 'Huyện Trạm Tấu', 'Huyện Trạm Tấu', 'Huyện Trạm Tấu', 95, 2248, 8, 1),
(779, 63, 'Huyện Mù Căng Chải', 'Huyện Mù Căng Chải', 'Huyện Mù Căng Chải', 'Huyện Mù Căng Chải', 99, 1977, 9, 1),
(780, 63, 'Huyện Lục Yên', 'Huyện Lục Yên', 'Huyện Lục Yên', 'Huyện Lục Yên', 96, 1967, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lh_ship_thanhtoan_setup`
--

CREATE TABLE `lh_ship_thanhtoan_setup` (
  `id` int(11) NOT NULL,
  `check_tai_cong_ty` tinyint(1) NOT NULL DEFAULT 1,
  `check_khi_nhan_hang` tinyint(1) NOT NULL DEFAULT 1,
  `check_chuyen_khoan` tinyint(1) NOT NULL DEFAULT 1,
  `check_ngan_luong` tinyint(1) NOT NULL DEFAULT 1,
  `check_bao_kim` tinyint(1) NOT NULL DEFAULT 1,
  `noidung_chuyenkhoan` mediumtext DEFAULT NULL,
  `url_nganluong` varchar(255) DEFAULT NULL,
  `email_nganluong` varchar(255) DEFAULT NULL,
  `maketnoi_nganluong` varchar(255) DEFAULT NULL,
  `matkhau_nganluong` varchar(255) DEFAULT NULL,
  `url_baokim` varchar(255) DEFAULT NULL,
  `email_baokim` varchar(255) DEFAULT NULL,
  `matkhau_baokim` varchar(255) DEFAULT NULL,
  `ma_website_baokim` varchar(255) DEFAULT NULL,
  `api_user_baokim` varchar(255) DEFAULT NULL,
  `api_pass_baokim` varchar(255) DEFAULT NULL,
  `private_key_baokim` mediumtext DEFAULT NULL,
  `email_paypal` varchar(255) DEFAULT NULL,
  `url_paypal` varchar(255) DEFAULT NULL,
  `ti_le_paypal` float NOT NULL DEFAULT 0,
  `check_paypal` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_ship_thanhtoan_setup`
--

INSERT INTO `lh_ship_thanhtoan_setup` (`id`, `check_tai_cong_ty`, `check_khi_nhan_hang`, `check_chuyen_khoan`, `check_ngan_luong`, `check_bao_kim`, `noidung_chuyenkhoan`, `url_nganluong`, `email_nganluong`, `maketnoi_nganluong`, `matkhau_nganluong`, `url_baokim`, `email_baokim`, `matkhau_baokim`, `ma_website_baokim`, `api_user_baokim`, `api_pass_baokim`, `private_key_baokim`, `email_paypal`, `url_paypal`, `ti_le_paypal`, `check_paypal`) VALUES
(1, 1, 1, 1, 1, 1, '<p>Thông tin chuyển khoản</p>', 'https://sandbox.nganluong.vn:8088/nl30/micro_checkout_api.php?wsdl', 'hieutrinh@pavietnam.vn', '46234', '2f0fb87695890bde0cbccb285aba4ab0', 'https://sandbox.baokim.vn', 'dev.baokim@bk.vn', 'ae543c080ad91c23', '647', 'merchant', '1234', '-----BEGIN PRIVATE KEY-----\r\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDZZBAIQz1UZtVm\r\np0Jwv0SnoIkGYdHUs7vzdfXYBs1wvznuLp/SfC/MHzHVQw7urN8qv+ZDxzTMgu2Q\r\n3FhMOQ+LIoqYNnklm+5EFsE8hz01sZzg+uRBbyNEdcTa39I4X88OFr13KoJC6sBE\r\n397+5HG1HPjip8a83v8G4/IPcna5/3ydVbJ9ZeMSUXP6ZyKAKay4M22/Wli7PLrm\r\n1XNR9JgIuQLma74yCGkaXtCJQswjyYAmwDPpz4ZknSGuBYUmwaHMgrDOQsOXFW7/\r\n7M2KbjenwggAW98f0f97AR2DEq9Eb5r8vzyHURnHGD3/noZxl993lM2foPI3SKBO\r\n1KpSeXRzAgMBAAECggEANMINBgRTgQVH6xbSkAxLPCdAufTJeMZ56bcKB/h2qVMv\r\nWvejv/B1pSM489nHaPM5YeWam35f+PYZc5uWLkF23TxvyEsIEbGLHKktEmR73WkS\r\neqNI+/xd4cJ3GOtS2G2gEXpBVwdQ/657JPvz4YZNdjfmyxMOr02rNN/jIg6Uc8Tz\r\nvbpGdtP49nhqcOUpbKEyUxdDo6TgLVgmLAKkGJVW40kwvU9hTTo6GXledLNtL2kD\r\nl6gpVWAiT6xlTsD5m74YzsxCSjkh60NdYeUDYwMbv0WWH3kJq6qD063ac3i/i8H+\r\nB5nGf4KbKg1bBjPLNymUj7RRnKjHr301i2u8LUQYuQKBgQD15YCoa5uHd6DHUXEK\r\nkejU34Axznr3Gs6LqcisE7t0oQ9hB4s16U9f4DBHDOvnkLb0zkadwdEmwo/D/Tdf\r\n5c/JEk8q/aO9Wk8uV4Bswnx1OV9uKMzMOZbv/So1DQg1aW1MgvRnj3SiKpDUkNwr\r\nen4NT9tbH21SmVIO9Da5KpiFRwKBgQDiUrg1hp8EDaeZFTG9DvcwyTTrpD/YT9Wr\r\ns/NtEnPMjy0NXWcEXwGzx90P+qjJ+J29Hk89QHON6S7o0X2lUIer3uXokc86ce76\r\n5UIbR6u7R1T6TUNfwqwwNfIbgtFN4+7ybodPNZ5DWslKLqMr5wpwIOr7/U5ih7BH\r\nJK0cSriddQKBgGXzNZiepOlRrBN3rMqZHFPGJrx/w3PYZXJ6fnz54WrFrD6qhglg\r\nJky2As4yiUyFL5XoQFcAGNtdJ4Y24lKcUb4oHTLR3qWPX+zy0ohFSpy/oNVnjSHP\r\nbskpyeoc8R5UC8EBOpwFWnIx+8JmHSLZspGKXoQ1T3pDn0Yb8uRqyLnZAoGBAKdk\r\nNwqfvwzobIU0v8ztPLbAmnuOyAndQlP0jJ6nfy5U1yWDZ6Y7/q5RrJcc9aosT76I\r\npGLRQKY9SYy5JQ0YOsBL5A/XiEXZ7r9ywSocIFAruhZG/wXcni4qOB9Q6i2J4Dk+\r\ntqVHKv72LtrHE7hs8bNtJV+rQkZtxVtZLRA308PhAoGBALVEaYMRm97V+Tnsej6q\r\nfuT/6oKHPqZpur2rNfEKVn5Aq2kmFrvyUhvXi0IAWQ/XS3XJ7faQnprrWT6pYiSy\r\n2YQuaghlNG1SATVd5eUadq2pA8DuSzqWFa0Ac1IAyliBO2uLPL7LzuEKmmuQk0vI\r\nTU2Q8idAb77K7mvVguA3LDhN\r\n-----END PRIVATE KEY-----', 'trunghieu220994-buyer-2@gmail.com', 'https://www.sandbox.paypal.com/cgi-bin/webscr', 22000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lh_ship_vanchuyen_khac`
--

CREATE TABLE `lh_ship_vanchuyen_khac` (
  `id` int(11) NOT NULL,
  `id_kv` int(11) NOT NULL DEFAULT 0,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `toi_thieu` int(11) NOT NULL DEFAULT 0,
  `toi_da` int(11) NOT NULL DEFAULT 0,
  `loai` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 //gia tri 1 //kg',
  `phi_van_chuyen` int(11) NOT NULL DEFAULT 0,
  `gia_dieu_chinh` longtext DEFAULT NULL,
  `du_kien` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_ship_vanchuyen_khac`
--

INSERT INTO `lh_ship_vanchuyen_khac` (`id`, `id_kv`, `tenbaiviet_vi`, `tenbaiviet_en`, `toi_thieu`, `toi_da`, `loai`, `phi_van_chuyen`, `gia_dieu_chinh`, `du_kien`) VALUES
(15, 2, 'Giao hàng tận nơi', 'Giao hàng tận nơi', 0, 0, 0, 40000, '{\"94\":\"10000\",\"95\":\"20000\",\"96\":\"0\",\"97\":\"0\",\"98\":\"0\",\"99\":\"0\",\"100\":\"0\",\"101\":\"0\",\"102\":\"0\",\"103\":\"0\",\"104\":\"0\",\"105\":\"0\",\"106\":\"0\",\"107\":\"0\",\"108\":\"0\",\"109\":\"0\",\"110\":\"0\",\"111\":\"0\",\"112\":\"0\",\"113\":\"0\",\"114\":\"0\",\"115\":\"0\",\"116\":\"0\",\"117\":\"0\"}', ''),
(11, 0, 'Giao hàng tận nơi', 'Giao hàng tận nơi', 0, 0, 0, 40000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lh_ship_vanchuyen_setup`
--

CREATE TABLE `lh_ship_vanchuyen_setup` (
  `id` int(11) NOT NULL,
  `loai_ship` tinyint(1) NOT NULL DEFAULT 1,
  `url_shipchung` varchar(255) DEFAULT NULL,
  `api_shipchung` varchar(255) DEFAULT NULL,
  `url_giaohangnhanh` varchar(255) DEFAULT NULL,
  `api_giaohangnhanh` varchar(255) DEFAULT NULL,
  `kho_tinhthanh` int(11) NOT NULL DEFAULT 0,
  `kho_quanhuyen` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_ship_vanchuyen_setup`
--

INSERT INTO `lh_ship_vanchuyen_setup` (`id`, `loai_ship`, `url_shipchung`, `api_shipchung`, `url_giaohangnhanh`, `api_giaohangnhanh`, `kho_tinhthanh`, `kho_quanhuyen`) VALUES
(1, 2, 'http://services.shipchung.vn/api/rest/courier/calculate', 'db985f6c7e02110182d27ea85f3f6894', 'https://console.ghn.vn/api/v1/apiv3/FindAvailableServices', '5b2a0ccf94c06b036d1f8eba', 2, 94);

-- --------------------------------------------------------

--
-- Table structure for table `lh_slug`
--

CREATE TABLE `lh_slug` (
  `id` int(11) NOT NULL,
  `bang` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `id_bang` int(11) NOT NULL DEFAULT 0,
  `step` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_slug`
--

INSERT INTO `lh_slug` (`id`, `bang`, `slug`, `id_bang`, `step`) VALUES
(1, 'step', 'khai-net', 1, 1),
(2, 'step', 'bo-suu-tap', 2, 2),
(3, 'step', 'du-an', 3, 3),
(4, 'step', 'dich-vu', 4, 4),
(5, 'baiviet', 've-chung-toi', 1, 1),
(88, 'danhmuc', 'fingerspint-passcode-card-key', 9, 2),
(89, 'danhmuc', 'passcode-card-key', 10, 2),
(87, 'danhmuc', 'wifi-bluetooth-passcode-card-key', 8, 2),
(83, 'danhmuc', 'hotel-smart-lock', 4, 2),
(12, 'baiviet', 'hotel-smart-lock-s3063p', 3, 2),
(84, 'danhmuc', 'apartment-smart-lock', 5, 2),
(85, 'danhmuc', 'smart-home-smart-hotel', 6, 2),
(86, 'danhmuc', 'san-pham-doi-tac-chien-luoc', 7, 2),
(128, 'danhmuc', 'barrier-tu-dong', 16, 2),
(129, 'baiviet', 'cong-tu-dong-1', 104, 2),
(130, 'baiviet', 'cong-tu-dong-1-130', 105, 2),
(133, 'baiviet', 'cong-tu-dong-3', 108, 2),
(135, 'baiviet', 'cong-tu-dong-2', 110, 2),
(136, 'baiviet', 'cong-tu-dong-4', 111, 2),
(137, 'baiviet', 'cong-tu-dong-7', 112, 2),
(138, 'baiviet', 'auto-door-10', 113, 2),
(139, 'baiviet', 'cong-tu-dong-139', 114, 2),
(140, 'baiviet', 'smart-lock', 115, 2),
(141, 'baiviet', 'smart-lock-141', 116, 2),
(142, 'baiviet', 'cong-tu-dong-142', 117, 2),
(143, 'baiviet', 'cong-tu-dong-143', 118, 2),
(144, 'baiviet', 'cong-tu-dong-144', 119, 2),
(82, 'baiviet', 'he-thong-khach-san-muong-thanh-tai-viet-nam-lao', 70, 3),
(31, 'baiviet', 'du-an-obt-viet-nam-cp-193611619144476', 22, 3),
(33, 'baiviet', 'du-an-obt-viet-nam-cp-805871619144476', 24, 3),
(34, 'baiviet', 'du-an-obt-viet-nam-cp-700311619144476', 25, 3),
(35, 'baiviet', 'du-an-obt-viet-nam-cp-255941619144476', 26, 3),
(36, 'baiviet', 'du-an-obt-viet-nam-cp-682991619144476', 27, 3),
(37, 'baiviet', 'du-an-obt-viet-nam-cp-956321619144476', 28, 3),
(38, 'baiviet', 'du-an-obt-viet-nam-cp-343301619144476', 29, 3),
(39, 'baiviet', 'du-an-obt-viet-nam-cp-503721619144476', 30, 3),
(40, 'baiviet', 'du-an-obt-viet-nam-cp-119661619144476', 31, 3),
(111, 'baiviet', 'hotel-smart-lock-s4032g', 88, 2),
(112, 'baiviet', 'smart-lock-e5300', 89, 2),
(113, 'baiviet', 'smart-lock-p2300', 90, 2),
(114, 'baiviet', 'obt-p070', 91, 2),
(115, 'baiviet', 'obt-p080', 92, 2),
(116, 'baiviet', 'obt-p7800', 93, 2),
(117, 'baiviet', 'obt-p8800', 94, 2),
(118, 'baiviet', 'obt-e6800', 95, 2),
(119, 'baiviet', 'apartment-smart-lock-119', 96, 2),
(120, 'baiviet', 'smart-lock-p013', 97, 2),
(121, 'baiviet', 'apartment-smart-lock-121', 98, 2),
(122, 'baiviet', 'ivory-hoa-binh', 99, 3),
(123, 'baiviet', 'tu-van-giai-phap-an-ninh-ra-vao-cho-hotel-resort-apartment-office-building', 100, 4),
(54, 'baiviet', 'dich-vu-obt-viet-nam-cp-908461619144719', 45, 4),
(55, 'baiviet', 'dich-vu-obt-viet-nam-cp-854731619144719', 46, 4),
(56, 'step', 'tuyen-dung', 5, 5),
(99, 'baiviet', 'hotel-smart-lock-e4041', 76, 2),
(92, 'danhmuc', 'cong-tu-dong', 13, 2),
(93, 'baiviet', 'obt-p050', 71, 2),
(94, 'danhmuc', 'card-key', 14, 2),
(103, 'baiviet', 'obt-p060', 80, 2),
(97, 'baiviet', 'obt-p020', 74, 2),
(104, 'baiviet', 'obt-p6800', 81, 2),
(110, 'baiviet', 'binh-duong', 87, 7),
(124, 'baiviet', 'tuyen-dung-ky-thuat-vien-dien-dien-tu-124', 101, 5),
(125, 'baiviet', 'tuyen-dung-nhan-vien-it', 102, 5),
(126, 'baiviet', 'tuyen-dung-nhan-vien-admin', 103, 5),
(127, 'danhmuc', 'card-key-127', 15, 2),
(71, 'baiviet', 'tuyen-dung-ky-thuat-vien-dien-dien-tu', 61, 5),
(72, 'baiviet', 'dich-vu-obt-viet-nam-cp-358761619144854', 62, 5),
(73, 'step', 'lien-he', 6, 6),
(74, 'baiviet', '26a5258d9e821a119802dbe56307ef17', 63, 6),
(75, 'step', 'he-thong-chi-nhanh', 7, 7),
(76, 'baiviet', 'nha-trang', 64, 7),
(77, 'baiviet', 'nha-trang-77', 65, 7),
(78, 'baiviet', 'da-nang', 66, 7),
(145, 'baiviet', 'cong-tu-dong-145', 120, 2),
(146, 'baiviet', 'obt-vn-building-dau-an-mot-chang-duong', 121, 1),
(81, 'baiviet', 'ha-noi-cp-745521621225014', 69, 7);

-- --------------------------------------------------------

--
-- Table structure for table `lh_sponline`
--

CREATE TABLE `lh_sponline` (
  `id` int(11) NOT NULL,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `contact_link` varchar(255) DEFAULT NULL,
  `type` tinyint(2) DEFAULT NULL,
  `mota_vi` varchar(255) DEFAULT NULL,
  `mota_en` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `id_user` int(11) DEFAULT 0,
  `note` varchar(255) DEFAULT NULL,
  `opt` int(11) NOT NULL DEFAULT 0,
  `ngaydang` int(11) DEFAULT NULL,
  `catasort` int(11) NOT NULL DEFAULT 0,
  `showhi` tinyint(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `duongdantin` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_sponline`
--

INSERT INTO `lh_sponline` (`id`, `tenbaiviet_vi`, `tenbaiviet_en`, `contact_link`, `type`, `mota_vi`, `mota_en`, `phone`, `id_user`, `note`, `opt`, `ngaydang`, `catasort`, `showhi`, `email`, `duongdantin`, `icon`) VALUES
(1, 'TỔNG ĐÀI CHĂM SÓC KHÁCH HÀNG', '', NULL, NULL, '', '', '(028) 6270 8161', 0, '', 0, 1604312820, 1, 1, 'info@pqland.vn', 'datafiles', '1617161226_logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `lh_step`
--

CREATE TABLE `lh_step` (
  `id` int(11) NOT NULL,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `tenbaiviet_cn` varchar(255) DEFAULT NULL,
  `tenbaiviet_jp` varchar(255) DEFAULT NULL,
  `noidung_vi` mediumtext DEFAULT NULL,
  `noidung_en` mediumtext DEFAULT NULL,
  `noidung_cn` mediumtext DEFAULT NULL,
  `noidung_jp` mediumtext DEFAULT NULL,
  `seo_name` varchar(255) DEFAULT NULL,
  `catasort` int(11) DEFAULT 0,
  `step` tinyint(4) NOT NULL DEFAULT 0,
  `ngaydang` int(11) NOT NULL DEFAULT 0,
  `duongdantin` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `seo_title_vi` varchar(255) DEFAULT NULL,
  `seo_title_en` varchar(255) DEFAULT NULL,
  `seo_title_cn` varchar(255) DEFAULT NULL,
  `seo_title_jp` varchar(255) DEFAULT NULL,
  `seo_description_vi` varchar(255) DEFAULT NULL,
  `seo_description_en` varchar(255) DEFAULT NULL,
  `seo_description_cn` varchar(255) DEFAULT NULL,
  `seo_description_jp` varchar(255) DEFAULT NULL,
  `seo_keywords_vi` varchar(255) DEFAULT NULL,
  `seo_keywords_en` varchar(255) DEFAULT NULL,
  `seo_keywords_cn` varchar(255) DEFAULT NULL,
  `seo_keywords_jp` varchar(255) DEFAULT NULL,
  `p1_vi` varchar(255) DEFAULT NULL,
  `p1_en` varchar(255) DEFAULT NULL,
  `num_view` int(11) NOT NULL DEFAULT 0,
  `opt` tinyint(1) NOT NULL DEFAULT 0,
  `opt1` tinyint(1) NOT NULL DEFAULT 0,
  `showhi` tinyint(1) NOT NULL DEFAULT 1,
  `size_img` varchar(255) DEFAULT NULL,
  `size_img_dm` varchar(255) DEFAULT NULL,
  `map_google` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_step`
--

INSERT INTO `lh_step` (`id`, `tenbaiviet_vi`, `tenbaiviet_en`, `tenbaiviet_cn`, `tenbaiviet_jp`, `noidung_vi`, `noidung_en`, `noidung_cn`, `noidung_jp`, `seo_name`, `catasort`, `step`, `ngaydang`, `duongdantin`, `icon`, `seo_title_vi`, `seo_title_en`, `seo_title_cn`, `seo_title_jp`, `seo_description_vi`, `seo_description_en`, `seo_description_cn`, `seo_description_jp`, `seo_keywords_vi`, `seo_keywords_en`, `seo_keywords_cn`, `seo_keywords_jp`, `p1_vi`, `p1_en`, `num_view`, `opt`, `opt1`, `showhi`, `size_img`, `size_img_dm`, `map_google`) VALUES
(1, 'Khái nét', 'Definition', NULL, NULL, '', '', NULL, NULL, 'khai-net', 1, 1, 1621850127, 'datafiles', '1621850127_2-1.jpg', 'Khái nét', 'Definition', NULL, NULL, 'Khái nét', 'Definition', NULL, NULL, 'Khái nét', 'Definition', NULL, NULL, '', '', 0, 0, 0, 1, '', '', ''),
(2, 'Bộ sưu tập', 'Collection', NULL, NULL, '', '', NULL, NULL, 'bo-suu-tap', 2, 2, 1621850806, 'datafiles', '1621850806_5.jpg', 'Bộ sưu tập', 'Collection', NULL, NULL, 'Bộ sưu tập', 'Collection', NULL, NULL, 'Bộ sưu tập', 'Collection', NULL, NULL, '', '', 12, 1, 0, 1, '400x400', '400x400', ''),
(3, 'DỰ ÁN', 'Key project', NULL, NULL, '', '', NULL, NULL, 'du-an', 3, 3, 1621391526, 'datafiles', '1619145064_rfb-banner.jpg', 'DỰ ÁN', 'Key project', NULL, NULL, 'DỰ ÁN', 'Key project', NULL, NULL, 'DỰ ÁN', 'Key project', NULL, NULL, '', '', 9, 1, 0, 1, '410x270', '', ''),
(4, '.', 'Service', NULL, NULL, '', '', NULL, NULL, 'dich-vu', 4, 3, 1623163409, 'datafiles', '1623163409_15.jpg', 'Dịch vụ', 'Service', NULL, NULL, 'Dịch vụ', 'Service', NULL, NULL, 'Dịch vụ', 'Service', NULL, NULL, '', '', 12, 1, 0, 1, '410x270', '', ''),
(5, '_', 'Recruitment', NULL, NULL, '', '', NULL, NULL, 'tuyen-dung', 5, 4, 1623163224, 'datafiles', '1623163224_6f051d36-5b23-44f5-babd-23672f12f556.png', 'Tuyển dụng', 'Recruitment', NULL, NULL, 'Tuyển dụng', 'Recruitment', NULL, NULL, 'Tuyển dụng', 'Recruitment', NULL, NULL, '', '', 5, 1, 0, 1, '410x270', '', ''),
(6, '.', 'Contact us', NULL, NULL, '', '', NULL, NULL, 'lien-he', 6, 5, 1621852031, 'datafiles', '1621851996_8.jpg', 'Liên hệ', 'Contact us', NULL, NULL, 'Liên hệ', 'Contact us', NULL, NULL, 'Liên hệ', 'Contact us', NULL, NULL, '', '', 0, 0, 0, 1, NULL, NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15671.917570350523!2d106.6925394165274!3d10.889170447362952!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3174d7e838119eed%3A0xa0a31edc84f0522c!2zS2h1IHBo4buRIGjDsmEgbG9uZywgTMOhaSBUaGnDqnUsIFR4LiBUaHXhuq1uIEFuLCBCw6xuaCBExrDGoW5nLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1598405783001!5m2!1svi!2s'),
(7, 'Hệ thống', 'Branch system', NULL, NULL, '', '', NULL, NULL, 'he-thong-chi-nhanh', 7, 1, 1621845248, 'datafiles', '1621845196_2.jpg', 'Hệ thống', 'Branch system', NULL, NULL, 'Hệ thống', 'Branch system', NULL, NULL, 'Hệ thống', 'Branch system', NULL, NULL, '', '', 0, 0, 0, 1, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `lh_subdomain`
--

CREATE TABLE `lh_subdomain` (
  `id` int(11) NOT NULL,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `keycode` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lh_subdomain`
--

INSERT INTO `lh_subdomain` (`id`, `tenbaiviet_vi`, `keycode`) VALUES
(1, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lh_thuoctinhchung`
--

CREATE TABLE `lh_thuoctinhchung` (
  `id` int(11) NOT NULL,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `tenbaiviet_cn` varchar(255) DEFAULT NULL,
  `tenbaiviet_jp` varchar(255) DEFAULT NULL,
  `noidung_vi` text DEFAULT NULL,
  `noidung_en` text DEFAULT NULL,
  `noidung_cn` text DEFAULT NULL,
  `noidung_jp` text DEFAULT NULL,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `seo_name` varchar(255) DEFAULT NULL,
  `seo_name_1` varchar(255) DEFAULT NULL,
  `blank` varchar(255) DEFAULT NULL,
  `blank_1` varchar(255) DEFAULT NULL,
  `catasort` int(11) NOT NULL DEFAULT 0,
  `duongdantin` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `num_1` int(11) NOT NULL DEFAULT 0,
  `num_2` int(11) NOT NULL DEFAULT 0,
  `showhi` tinyint(4) NOT NULL DEFAULT 1,
  `tenbaiviet_kr` varchar(255) DEFAULT NULL,
  `tenbaiviet_in` varchar(255) DEFAULT NULL,
  `noidung_kr` text DEFAULT NULL,
  `noidung_in` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lh_yeuthich`
--

CREATE TABLE `lh_yeuthich` (
  `id` int(11) NOT NULL,
  `id_baiviet` int(11) NOT NULL DEFAULT 0,
  `id_member` int(11) NOT NULL DEFAULT 0,
  `showhi` tinyint(1) NOT NULL DEFAULT 1,
  `the_loai` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lh_backup`
--
ALTER TABLE `lh_backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_baiviet`
--
ALTER TABLE `lh_baiviet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_parent` (`id_parent`),
  ADD KEY `catasort` (`catasort`);

--
-- Indexes for table `lh_baiviet_chitiet`
--
ALTER TABLE `lh_baiviet_chitiet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_baiviet_img`
--
ALTER TABLE `lh_baiviet_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_baiviet_nhomgia`
--
ALTER TABLE `lh_baiviet_nhomgia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_baiviet_sao`
--
ALTER TABLE `lh_baiviet_sao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_baiviet_select_nhomgia`
--
ALTER TABLE `lh_baiviet_select_nhomgia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_baiviet_select_tinhnang`
--
ALTER TABLE `lh_baiviet_select_tinhnang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_baiviet_thuoctinh`
--
ALTER TABLE `lh_baiviet_thuoctinh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_baiviet_tinhnang`
--
ALTER TABLE `lh_baiviet_tinhnang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_banner`
--
ALTER TABLE `lh_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_banner_danhmuc`
--
ALTER TABLE `lh_banner_danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_binhluan`
--
ALTER TABLE `lh_binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sp` (`id_sp`,`id_parent`);

--
-- Indexes for table `lh_clanguage`
--
ALTER TABLE `lh_clanguage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_clanguage_admin`
--
ALTER TABLE `lh_clanguage_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_counter`
--
ALTER TABLE `lh_counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_count_date`
--
ALTER TABLE `lh_count_date`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_danhmuc`
--
ALTER TABLE `lh_danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_du_lieu_sn`
--
ALTER TABLE `lh_du_lieu_sn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_email_config`
--
ALTER TABLE `lh_email_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_email_follow`
--
ALTER TABLE `lh_email_follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_file_import_data`
--
ALTER TABLE `lh_file_import_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_form_lienhe`
--
ALTER TABLE `lh_form_lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_lienket`
--
ALTER TABLE `lh_lienket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_lien_ket_nhanh`
--
ALTER TABLE `lh_lien_ket_nhanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_lien_ket_nhanh_phan_tram`
--
ALTER TABLE `lh_lien_ket_nhanh_phan_tram`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_magiamgia`
--
ALTER TABLE `lh_magiamgia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_magiamgia_chitiet`
--
ALTER TABLE `lh_magiamgia_chitiet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_mangxahoi`
--
ALTER TABLE `lh_mangxahoi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_marketing`
--
ALTER TABLE `lh_marketing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_marketing_setting`
--
ALTER TABLE `lh_marketing_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_members`
--
ALTER TABLE `lh_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `tentruycap` (`tentruycap`);

--
-- Indexes for table `lh_members_log`
--
ALTER TABLE `lh_members_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_members_nhom`
--
ALTER TABLE `lh_members_nhom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_menu`
--
ALTER TABLE `lh_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_module_nhomtaikhoan`
--
ALTER TABLE `lh_module_nhomtaikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_module_page`
--
ALTER TABLE `lh_module_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_module_setting`
--
ALTER TABLE `lh_module_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_module_tinhnang`
--
ALTER TABLE `lh_module_tinhnang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_order`
--
ALTER TABLE `lh_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_phuongthucthanhtoan`
--
ALTER TABLE `lh_phuongthucthanhtoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_seo`
--
ALTER TABLE `lh_seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_seo_name`
--
ALTER TABLE `lh_seo_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_ship_khuvuc`
--
ALTER TABLE `lh_ship_khuvuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_ship_thanhtoan_setup`
--
ALTER TABLE `lh_ship_thanhtoan_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_ship_vanchuyen_khac`
--
ALTER TABLE `lh_ship_vanchuyen_khac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_ship_vanchuyen_setup`
--
ALTER TABLE `lh_ship_vanchuyen_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_slug`
--
ALTER TABLE `lh_slug`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`(250));

--
-- Indexes for table `lh_sponline`
--
ALTER TABLE `lh_sponline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_step`
--
ALTER TABLE `lh_step`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_subdomain`
--
ALTER TABLE `lh_subdomain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_thuoctinhchung`
--
ALTER TABLE `lh_thuoctinhchung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_yeuthich`
--
ALTER TABLE `lh_yeuthich`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lh_backup`
--
ALTER TABLE `lh_backup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lh_baiviet`
--
ALTER TABLE `lh_baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `lh_baiviet_chitiet`
--
ALTER TABLE `lh_baiviet_chitiet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_baiviet_img`
--
ALTER TABLE `lh_baiviet_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `lh_baiviet_nhomgia`
--
ALTER TABLE `lh_baiviet_nhomgia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lh_baiviet_sao`
--
ALTER TABLE `lh_baiviet_sao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_baiviet_select_nhomgia`
--
ALTER TABLE `lh_baiviet_select_nhomgia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_baiviet_select_tinhnang`
--
ALTER TABLE `lh_baiviet_select_tinhnang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_baiviet_thuoctinh`
--
ALTER TABLE `lh_baiviet_thuoctinh`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_baiviet_tinhnang`
--
ALTER TABLE `lh_baiviet_tinhnang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lh_banner`
--
ALTER TABLE `lh_banner`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `lh_banner_danhmuc`
--
ALTER TABLE `lh_banner_danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `lh_binhluan`
--
ALTER TABLE `lh_binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_clanguage`
--
ALTER TABLE `lh_clanguage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1528;

--
-- AUTO_INCREMENT for table `lh_clanguage_admin`
--
ALTER TABLE `lh_clanguage_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1512;

--
-- AUTO_INCREMENT for table `lh_counter`
--
ALTER TABLE `lh_counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lh_count_date`
--
ALTER TABLE `lh_count_date`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `lh_danhmuc`
--
ALTER TABLE `lh_danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `lh_du_lieu_sn`
--
ALTER TABLE `lh_du_lieu_sn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_email_config`
--
ALTER TABLE `lh_email_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lh_email_follow`
--
ALTER TABLE `lh_email_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lh_file_import_data`
--
ALTER TABLE `lh_file_import_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_form_lienhe`
--
ALTER TABLE `lh_form_lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lh_lienket`
--
ALTER TABLE `lh_lienket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_lien_ket_nhanh`
--
ALTER TABLE `lh_lien_ket_nhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lh_lien_ket_nhanh_phan_tram`
--
ALTER TABLE `lh_lien_ket_nhanh_phan_tram`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_magiamgia`
--
ALTER TABLE `lh_magiamgia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_magiamgia_chitiet`
--
ALTER TABLE `lh_magiamgia_chitiet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_mangxahoi`
--
ALTER TABLE `lh_mangxahoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lh_marketing`
--
ALTER TABLE `lh_marketing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `lh_marketing_setting`
--
ALTER TABLE `lh_marketing_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lh_members`
--
ALTER TABLE `lh_members`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `lh_members_log`
--
ALTER TABLE `lh_members_log`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_members_nhom`
--
ALTER TABLE `lh_members_nhom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_menu`
--
ALTER TABLE `lh_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lh_module_nhomtaikhoan`
--
ALTER TABLE `lh_module_nhomtaikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lh_module_page`
--
ALTER TABLE `lh_module_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `lh_module_setting`
--
ALTER TABLE `lh_module_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `lh_module_tinhnang`
--
ALTER TABLE `lh_module_tinhnang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `lh_order`
--
ALTER TABLE `lh_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `lh_phuongthucthanhtoan`
--
ALTER TABLE `lh_phuongthucthanhtoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lh_seo`
--
ALTER TABLE `lh_seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lh_seo_name`
--
ALTER TABLE `lh_seo_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `lh_ship_khuvuc`
--
ALTER TABLE `lh_ship_khuvuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=781;

--
-- AUTO_INCREMENT for table `lh_ship_thanhtoan_setup`
--
ALTER TABLE `lh_ship_thanhtoan_setup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lh_ship_vanchuyen_khac`
--
ALTER TABLE `lh_ship_vanchuyen_khac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `lh_ship_vanchuyen_setup`
--
ALTER TABLE `lh_ship_vanchuyen_setup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lh_slug`
--
ALTER TABLE `lh_slug`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `lh_sponline`
--
ALTER TABLE `lh_sponline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lh_step`
--
ALTER TABLE `lh_step`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lh_subdomain`
--
ALTER TABLE `lh_subdomain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lh_thuoctinhchung`
--
ALTER TABLE `lh_thuoctinhchung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_yeuthich`
--
ALTER TABLE `lh_yeuthich`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
