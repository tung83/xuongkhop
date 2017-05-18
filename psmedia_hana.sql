-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 22, 2017 at 02:59 PM
-- Server version: 5.6.26-cll-lve
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `psmedia_hana`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE IF NOT EXISTS `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `sum` text NOT NULL,
  `content` longtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `e_title` text NOT NULL,
  `e_sum` text NOT NULL,
  `e_content` longtext NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `ind` int(11) NOT NULL,
  `dates` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `sum`, `content`, `img`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_content`, `e_meta_keyword`, `e_meta_description`, `active`, `ind`, `dates`) VALUES
(1, 'Về Hana Shop', 'Về Hana Shop', '', '14815312831.png', 'Về Hana Shop', 'Về Hana Shop', 'Taiwan Aluminium', 'Taiwan Aluminium', '<div style="text-align: center;"><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif"><strong>ALUMINIUM COMPANY LIMITED TAIWAN</strong></span></span></div>\r\n\r\n<div><br />\r\n<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>COMPANY LIMITED ALUMINIUM TAIWAN</strong> established with an investment of over 30 million, 100% investment from Taiwan, with an area of 25,000m2, located in Vinh Loc Industrial Park 2.</span></span></div>\r\n\r\n<div><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>T</strong>he initial criteria when establishing our business is establishing a company has sufficient capacity and expertise in the field of manufacturing Aluminum profiles.<br />\r\nOur products include: various types of aluminum alloy, surface treatment varied and extensive range of industrial aluminum.<br />\r\nIn addition to stand on Aluminum construction market in the country, we also received a lot of orders for export Aluminium.</span></span></div>\r\n\r\n<div style="text-align: center;"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><img alt="" src="/file/ckfinder/userfiles/images/12-10-2016%209-31-49%20CH(2).png" style="height:179px; width:500px" /></span></span></div>\r\n\r\n<div><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">With the business motto: <strong>PRESTIGE - QUALITY - DEVELOPING.</strong><br />\r\nWe are proud to be one of the leading companies in Vietnam specializing in supply and installation of aluminum doors for high-end projects.<br />\r\nWe sincerely thank you for your trust, support and use TWA aluminum products during the past.<br />\r\nIn response to his sincerity, Aluminum TWA will be happy to accompany you, research and development more product Aluminum profiles.<br />\r\nThrough which customers can be assured of quality and product design.</span></span></div>\r\n\r\n<div style="text-align: center;"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><img alt="" src="/file/ckfinder/userfiles/images/12-10-2016%209-31-15%20CH(2).png" style="height:334px; width:500px" /></span></span></div>\r\n\r\n<div style="text-align: center;">&nbsp;</div>\r\n', 'Taiwan Aluminium', 'Taiwan Aluminium', 1, 1, '2017-01-19 01:53:33');

-- --------------------------------------------------------

--
-- Table structure for table `ad_user`
--

CREATE TABLE IF NOT EXISTS `ad_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `pwd` text NOT NULL,
  `power` int(11) NOT NULL,
  `lastOnl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ad_user`
--

INSERT INTO `ad_user` (`id`, `email`, `pwd`, `power`, `lastOnl`) VALUES
(1, 'czanubis@gmail.com', '949530644ef43dad3857cf6fbbbe10c1', 1, '2016-01-24 03:46:26'),
(2, 'nhatsang@gmail.com', '202cb962ac59075b964b07152d234b70', 1, '2016-03-12 03:53:10');

-- --------------------------------------------------------

--
-- Table structure for table `basic_config`
--

CREATE TABLE IF NOT EXISTS `basic_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `smtp_server` text NOT NULL,
  `smtp_port` text NOT NULL,
  `smtp_user` text NOT NULL,
  `smtp_pwd` text NOT NULL,
  `smtp_sender_email` text NOT NULL,
  `smtp_sender_name` text NOT NULL,
  `smtp_receiver` text NOT NULL,
  `gmap_script` text NOT NULL,
  `another_script` text NOT NULL,
  `social_twitter` text NOT NULL,
  `social_facebook` text NOT NULL,
  `social_google_plus` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `basic_config`
--

INSERT INTO `basic_config` (`id`, `smtp_server`, `smtp_port`, `smtp_user`, `smtp_pwd`, `smtp_sender_email`, `smtp_sender_name`, `smtp_receiver`, `gmap_script`, `another_script`, `social_twitter`, `social_facebook`, `social_google_plus`) VALUES
(1, 'smtp.gmail.com', '587', 'quantrimang.psmedia@gmail.com', 'psmediaquantrimang', 'quantrimang.psmedia@gmail.com', 'Website administrator', 'info@thaibinhauto.com', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.1633799912497!2d106.65656091421477!3d10.798795861734689!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175293132fa9845%3A0x2b09637f85d4a12f!2zVHLGsOG7nW5nIE3huqdtIE5vbiBUw6JuIFPGoW4gTmjhuqV0!5e0!3m2!1svi!2s!4v1474100962959" width="1004" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', 'https://twitter.com', 'https://www.facebook.com/', 'https://plus.google.com/');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `adds` text NOT NULL,
  `phone` text NOT NULL,
  `notice` text NOT NULL,
  `dates` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `adds`, `phone`, `notice`, `dates`) VALUES
(4, 'terer', 'erere', 'erere', 'erere', '2017-01-13 03:29:43'),
(5, '32323', '2323', '2323', '2323', '2017-01-13 03:30:20'),
(6, 'tyyyyy', 'tyyyyyyyyyyyy', 'y5555555555555', 'teeeeeeeeeee', '2017-01-20 14:19:51'),
(7, 'duong ngoc yen', 'go vap', '0906616958', 'giao hang luc 10h', '2017-01-21 09:14:39');

-- --------------------------------------------------------

--
-- Table structure for table `cart_detail`
--

CREATE TABLE IF NOT EXISTS `cart_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_title` text NOT NULL,
  `product_price` float NOT NULL,
  `product_qty` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_id` (`cart_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `cart_detail`
--

INSERT INTO `cart_detail` (`id`, `cart_id`, `product_id`, `product_title`, `product_price`, `product_qty`) VALUES
(1, 4, 186, 'BIẾN TẦN YASKAWA V1000', 0, 1),
(2, 4, 175, 'BIẾN TẦN YASKAWA F7', 0, 1),
(3, 5, 186, 'BIẾN TẦN YASKAWA V1000', 0, 5),
(4, 6, 267, 'Hyaluronic Acid Dưỡng Ẩm', 280000, 1),
(5, 7, 265, 'Mặt Nạ Ngọc Trai', 280000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `adds` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  `content` text NOT NULL,
  `dates` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `adds`, `phone`, `email`, `subject`, `content`, `dates`) VALUES
(1, 'tung', 'dc', 'dt', 'tung@mail', 'dc', 'ndung cn hoc5  CÔNG TY TNHH NHÔM TAIWAN', '2016-11-20 14:45:24'),
(2, 'df3434', '232567778', '3434343', '43aad@mail.com', '3434343', '343434', '2016-12-14 08:18:29');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `view` varchar(200) NOT NULL,
  `e_title` text NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `e_view` varchar(255) NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `icon`, `meta_keyword`, `meta_description`, `view`, `e_title`, `e_meta_keyword`, `e_meta_description`, `e_view`, `ind`, `active`) VALUES
(1, 'Trang Chủ', '', 'cửa sắt,cửa nhôm,mặt alu', 'EWEWEWE', 'trang-chu', 'Home', 'cửa sắt,cửa nhôm,mặt alu', '', 'home', 1, 1),
(2, 'Giới Thiệu', 'team', '', '', 'gioi-thieu', 'About Us', '', '', 'about-us', 2, 1),
(3, 'Sản Phẩm', '', '', '', 'san-pham', 'Products', '', '', 'product', 3, 1),
(4, 'Tin Tức', '', '', '', 'tin-tuc', 'News', '', '', 'news', 4, 1),
(5, 'Khuyến mãi', '', 'khuyen-mai', '', 'khuyen-mai', '', '', '', '', 5, 1),
(6, 'Thanh toán', '', 'Thanh toán', '', 'thanh-toan', '', '', '', '', 6, 1),
(7, 'Liên Hệ', '', '', '', 'lien-he', 'Contact Us', '', '', 'contact-us', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `sum` text NOT NULL,
  `content` longtext NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `e_title` text NOT NULL,
  `e_sum` text NOT NULL,
  `e_content` longtext NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `pId` int(11) NOT NULL,
  `maps` text NOT NULL,
  `city` int(11) NOT NULL,
  `district` int(11) NOT NULL,
  `img` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `home` tinyint(4) NOT NULL DEFAULT '0',
  `ind` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pId` (`pId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `sum`, `content`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_content`, `e_meta_keyword`, `e_meta_description`, `pId`, `maps`, `city`, `district`, `img`, `active`, `home`, `ind`) VALUES
(1, 'Làm Thế Nào Để Có Một Làn Da Khỏe', 'Làm Thế Nào Để Có Một Làn Da Khỏe', '<h2 style="text-align:center"><span style="font-size:16px"><strong>Sau đây là 9 câu hỏi làm đẹp phổ biến và câu trả lời chính xác dành cho mỗi câu hỏi.</strong></span></h2>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); text-align: center;">&nbsp;</div>\r\n\r\n<div class="knc-content" style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: ">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="01-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/01-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Việc make up nói chung và sử dụng kem nền nói riêng chỉ gây mụn vì 2 lý do: một là sản phẩm bạn sử dụng gây tắc lỗ chân lông, hai là bạn không tẩy trang kỹ. Bởi vậy, khi bạn sử dụng sản phẩm an toàn và làm sạch da thật kỹ, da bạn hoàn toàn không cần &quot;nghỉ chơi&quot; với việc trang điểm để &quot;thở&quot; và trở nên đẹp hơn (thực chất, khái niệm &quot;thở&quot; không tồn tại với làn da).</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;">Khi mua bất cứ sản phẩm nào dùng để thoa lên da mặt, từ kem dưỡng đến kem nền, bạn hãy chắc chắn nó không gây tắc, bí lỗ chân lông (hãy tìm chữ &quot;noncomedogenic&quot; trên bao bì). Trong trường hợp da bạn bị mụn, hãy chọn kem nền có thành phần trị mụn như acid salicylic để có thể vừa che phủ lại vừa trị mụn cho da.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;">Việc tẩy trang thật kỹ cũng là chìa khóa để da không bị xấu đi khi trang điểm. Vào cuối ngày, hãy luôn nhớ làm sạch da với hai sản phẩm: dầu tẩy trang và sữa rửa mặt nhẹ dịu.&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;">Một khi bạn đã tuân thủ hai nguyên tắc kể trên, bạn sẽ thấy rằng thực sự không tồn tại khái niệm &quot;trang điểm nhiều làm da xấu đi&quot;.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="02-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/02-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Mụn đầu đen hình thành do bã nhờn tích tụ trong lỗ chân lông và bị ôxy hóa nên mới có màu đen. Cách trị mụn đầu đen hiệu quả nhất là sử dụng sản phẩm trị mụn có chứa benzoyl peroxide để diệt khuẩn và loại bỏ bã nhờn. Kèm theo đó, bạn cần tẩy da chết thường xuyên để ngăn chặn mụn đầu đen hình thành thêm.&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="03-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/03-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:&nbsp;</span>Khi mới tập tành make up, bạn không cần thiết phải sắm sửa ngay đủ bộ mỹ phẩm như các chuyên gia trang điểm chuyên nghiệp<span style="font-family:inherit; font-size:inherit; line-height:inherit">&nbsp;</span>mà chỉ cần những sản phẩm thiết yếu sau đây: kem nền (BB cream, phấn cushion hoặc tinted moisturizer, v.v...), phấn phủ không màu, một màu son tôn da (bạn có thể chọn sản phẩm môi và má 2 trong 1 để vừa làm son, vừa làm má hồng rất tiện), một cây eyeliner (dạng nước, gel hoặc chì), kẹp mi và một cây mascara. Sau này, khi đã sử dụng thành thạo những sản phẩm cơ bản trên, bạn có thể mua thêm những món đồ phụ trợ để make up chuyên nghiệp hơn, như sản phẩm tạo khối, tạo sáng, v.v...</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="04-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/04-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Đáng tiếc là không. Về cơ bản, lỗ chân lông không thể đóng, mở hay thu nhỏ lại được. Lỗ chân lông to hay nhỏ phụ thuộc vào gene của mỗi người và bạn không thể thay đổi kích cỡ của chúng. Tuy không thể thu nhỏ nhưng lỗ chân lông lại có thể bị giãn ra khi bị tắc nghẽn. Điều đó có nghĩa là lỗ chân lông càng sạch sẽ bao nhiêu, bạn sẽ càng cảm thấy chúng nhỏ bấy nhiêu và đó là lý do tại sao chúng ta nên làm sạch da thật kỹ. Cách làm sạch từng lỗ chân lông hiệu quả là rửa mặt bằng thao tác xoáy tròn tập trung vào từng vùng trên mặt.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="05-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/05-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Lâu nay, uống nhiều nước (ít nhất là 2,5 lít/ngày) vẫn được tin là một trong những cách hiệu quả nhất giúp cung cấp độ ẩm cho da, từ đó giúp da khỏe đẹp. Tuy nhiên, trên thực tế lại không có bất cứ nghiên cứu khoa học nào chứng minh rằng việc uống nhiều nước có thể giúp da đẹp hơn hay làm cơ thể thon gọn hơn. &quot;Lượng nước mà chúng ta uống vào không có tác dụng cung cấp độ ẩm cho da bởi làn da của chúng ta hoạt động như một tấm rào chắn vững chắc giúp ngăn cách môi trường bên trong và ngoài cơ thể. Chỉ trong trường hợp bạn bị thiếu nước một cách trầm trọng, làn da mới bị ảnh hưởng. Những vấn đề hay gặp với làn da khô sẽ không tự hết chỉ nhờ việc uống 8 cốc nước mỗi ngày mà cần đến những sản phẩm dưỡng da phù hợp&quot; - chuyên gia sức khỏe Andrew Carroll viết trên tờ New York Times cách đây không lâu. Ngoài ra, đúng là cơ thể chúng ta cần 2,5 lít nước/ngày để duy trì sự khỏe mạnh nhưng mỗi người không cần thiết phải uống đúng 2,5 lít nước bởi nước cũng có thể được bổ sung qua đường ăn, khi phần lớn các loại thức ăn đều có chứa một lượng nước nhất định.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="07-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/07-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Da mặt bạn sẽ khó thấm kem dưỡng, khó &quot;ăn&quot; kem nền khi tế bào chết bị ứ đọng trên da mà không được dọn dẹp. Việc bạn cần làm là tẩy da chết thật thường xuyên với tần suất từ 2 - 3 lần một tuần. Khi đó, da sẽ mỏng, mịn hơn hẳn và đóng vai trò như một lớp phông nền mịn mượt giúp các loại mỹ phẩm &quot;bám dính&quot; lên da một cách trơn tru, dễ dàng. Ngoài ra, việc dùng kem lót (primer) trước khi đánh nền cũng sẽ khiến lớp nền bám lên da chắc hơn và lâu trôi hơn hẳn so với bình thường.</div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="08-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/08-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Khi môi bạn bị thâm và lấn át hết màu son, bí quyết là hãy tán kem che khuyết điểm lên môi trước khi tô son. Ngoài ra, bạn hãy chọn loại son có kết cấu màu thật đặc (opaque) - thường là son lì, son nước (còn gọi là son kem hay liquid lipstick). Đặc điểm của những loại son này là khả năng lên màu rất mạnh, có thể che phủ hoàn toàn màu môi nguyên thủy của bạn. Bên cạnh đó, hãy thường xuyên tẩy da chết cho môi và thường xuyên thoa mật ong để cải thiện phần nào sắc tố môi.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="09-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/09-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n</div>\r\n</div>\r\n\r\n<div><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Tần suất gội đầu phụ thuộc vào mái tóc cũng như môi trường sống của riêng mỗi người. Trong trường hợp bạn sống ở nơi nhiều khói bụi, tần suất gội đầu nên là 1 - 2 ngày một lần. Với dầu gội nhẹ dịu có thành phần dưỡng tóc, bạn hoàn toàn có thể gội đầu hằng ngày mà không sợ tóc bị khô hay xấu đi. Khi tóc bạn thuộc dạng tóc khô hoặc bạn sống ở nơi có khí hậu trong lành, tần suất gội đầu có thể giãn xuống còn khoảng 2 - 3 ngày một lần.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="06-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/06-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Việc cắt tóc thường xuyên không hề tác động gì đến chân tóc, bởi vậy, có thể khẳng định rằng cắt tóc không hề khiến tóc mọc nhanh hơn. Trên thực tế, tóc bạn vẫn mọc với tốc độ bình thường và nếu bạn có cảm thấy tóc &quot;mọc nhanh hơn&quot; thì đó cũng chỉ là cảm giác chủ quan của bạn mà thôi. Mục đích thực sự của việc tỉa ngắn đuôi tóc thường xuyên là để ngăn ngừa đuôi tóc chẻ ngọn.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: right;">Nguồn: Elly</div>\r\n</div>\r\n</div>\r\n</div>\r\n', 'Làm Thế Nào Để Có Một Làn Da Khỏe', 'Làm Thế Nào Để Có Một Làn Da Khỏe', '', '', '', '', '', 0, '', 0, 0, '148473223601-80eb9.jpg', 1, 0, 1),
(2, 'Da Sạch- Khỏe Là Tiền Đề Của Làn Da Không Mụn', 'Da Sạch- Khỏe Là Tiền Đề Của Làn Da Không Mụn', '<span style="font-size:14px"><strong>HANA BEAUTY - CHUYÊN MỸ PHẨM XÁCH TAY</strong></span><br />\r\n<span style="font-size:14px">Tết sắp đến gần bạn quan tâm đến việc DƯỠNG DA để da mịn màng mướt khoẻ hay là MAKEUP để mang đến hiệu ứng da đẹp 1 cách nhanh nhất ạ ?<br />\r\n-----&gt; Nghe có vẻ là 2 khái niệm riêng biệt nhưng thật ra thì cả hai lại liên quan đến nhau, vì da đẹp là tiền đề của lớp makeup đẹp<br />\r\nKhi da được chăm sóc đúng cách và dưỡng ẩm đủ thì da sẽ trở nên căng mướt. Và tất nhiên lớp makeup chỉ đẹp và tự nhiên nhất khi da thật sự đủ độ ẩm khoẻ và ít khuyết điểm khi đó chỉ cần một lớp#Cushion hoặc kem nền với độ che phủ mỏng nhẹ thì chắc chắn bạn đã đủ tươi tắn với vẻ ngoài tự nhiên của mình, tự tin trong buổi họp lớp ngồi 8 chuyện xưa cùng đám bạn cũ . Nguyên năm gặp để check in 1 lần&nbsp;</span><br />\r\n<span style="font-size:14px"><strong>TẢN MẠN CHUYỆN NĂM XƯA</strong></span><br />\r\n<span style="font-size:14px">Nhớ tầm này năm ngoái da mình vẫn trong tình trạng da sần sùi khô và sạm, thiệt sự là lo lắng cho cái Tết sắp đến gần và mình đã được biết đến loại mặt nạ #mybeautydiary này qua 1 chị beauty blogger : chị #banhbeophuphiem và rất nhiều feedback tốt đẹp từ các chị em đã dùng qua. Nó như 1 cuộc cách mạng mang lại hiểu quả nhanh ngoài sức mong đợi</span>\r\n<div style="text-align: center;"><img alt="" src="/file/ckfinder/userfiles/images/15894411_1637198409917755_474428940902961389_n.jpg" style="height:800px; width:600px" /></div>\r\n<span style="font-size:14px">---&gt; @uyết định dùng thử .kết quả là 1 tuần đắp 2 lần trong vòng 1 tháng da đã thay đổi 1 cách không thể ngờ được luôn đó&nbsp;<br />\r\nDa đủ độ ẩm nên mướt lắm - kiểu da pưng pưng ngậm nước í, còn khi makeup kiểu ăn phấn thôi rồi chứ không bị cakey ( da ra đằng da - phấn ra đằng phấn)&nbsp;<br />\r\nDa sáng hẳn ra - trong giới skincare ở nước ngoài người ta không có khái niệm về sản phẩm làm trắng thay vào đó là dùng những sản phẩm giúp da sáng khoẻ và đều màu trong đó có thể kể đến là serum dòng vitamin C. Nhưng với mình lúc đó mặt nạ vẫn là lựa chọn nhanh gọn để chạy cho kịp cái tết sắp đến gần ^^</span><br />\r\n<span style="font-size:14px"><strong>DA MỀM MỊN VÀ KHÔNG BỊ SẦN SÙI</strong></span><br />\r\n<span style="font-size:14px">Tóm lại : Đây là mặt nạ thần thánh cứu cánh mình sau những ngày da thật sự xuống cấp do nhiều nguyên nhân - stress trong công việc hay thức khuya , thậm chí sau vài ngày bỏ bê skincare.</span>\r\n\r\n<div style="text-align: center;"><span style="font-size:14px"><img alt="" src="/file/ckfinder/userfiles/images/15966309_1637198656584397_3931164285883289336_n.jpg" style="height:800px; width:600px" /></span></div>\r\n<span style="font-size:14px">( Chắc ai cũng hiểu cảm giác có những ngày chẳng muốn làm gì chỉ muốn được lăn ngay ra ngủ sau khi về tới nhà )&nbsp;<br />\r\nHãy nhớ giùm Hana đây là 1 bước dưỡng sau tất cả các bước skincare hoàn chỉnh của bạn - đừng bao giờ nghĩ rằng nó thần thánh đến mức giúp bạn rạng rỡ khi bước làm sạch da của bạn không đúng cách : vd : srm với độ PH quá cao, tẩy trang chưa sạch sau khi trang điểm hoặc dùng kem chống nắng.<br />\r\nCó rất nhiều bạn thắc mắc rằng DA MỤN có nên dùng hay không , bạn phải hiểu rằng da mụn cũng cần được dưỡng ẩm nhưng thay vào đó skincare của bạn phải thêm bước trị mụn, đắp mặt nạ kháng khuẩn song song với mặt nạ thiên về dòng dưỡng này và Hana không khuyên dùng cho những bạn đang trong tình trạng viêm da nhiều mụn ạ&nbsp;<br />\r\nDa sạch- khoẻ là tiền đề của làn da không mụn<br />\r\nMột lần đắp mặt nạ hiểu quả gấp 6 lần xài serum vì tinh chất cô đặc thấm đẫm trong miếng mặt nạ<br />\r\nVậy nên hãy bắt đầu làm đẹp ngay hôm nay để kịp xúng xính đón tết nha.</span>', 'Da sạch- khỏe là tiền đề của làn da không mụn', 'Da sạch- khỏe là tiền đề của làn da không mụn', '', '', '', '', '', 0, '', 0, 0, '1484733003tri-mun-da-kho.jpg', 1, 0, 2),
(3, 'Massage với những viên đá này để da đẹp &quot;không tì vết&quot; yên tâm đón Tết', 'Massage với những viên đá này để da đẹp &quot;không tì vết&quot; yên tâm đón Tết\r\n', '<p><span style="color:rgb(0, 0, 0); font-family:roboto-regular,serif; font-size:14px"><strong><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif">Chỉ với những nguyên liệu đơn giản, rẻ tiền bạn đã có thể tự làm mặt nạ chăm sóc da hiệu quả và an toàn.</span></span></strong></span><br />\r\n<span style="font-size:14px; text-align:justify">Khoa học đã chứng nhận rằng chúng ta <span style="color:#000000">nên&nbsp;</span></span><a href="http://bestie.vn/2016/09/nhung-dau-hieu-chung-to-ban-dang-rua-mat-sai-cach" style="font-size: 14px; text-align: justify; background-color: transparent; box-sizing: border-box; text-decoration: none; color: rgb(0, 51, 153) !important;"><span style="color:#000000">rửa mặt</span></a><span style="font-size:14px; text-align:justify"><span style="color:#000000">&nbsp;b</span>uổi sáng bằng những viên đá được làm từ nước các loại hoa quả thay cho nước lã. Những viên đá lạnh buốt này sẽ làm tăng tuần hoàn máu, trẻ hoá làn da, xóa đi những vết nhăn, ngăn chặn các dấu hiệu lão hóa thông thường và làm ửng hồng đôi má của bạn. Nó cũng giúp da sáng lên một cách tự nhiên hơn. Nên thực hiện 2 lần/tuần.</span></p>\r\n\r\n<p style="text-align: center;"><img alt="bestie cham soc da bang da vien " src="http://static1.bestie.vn/Mlog/ImageContent/201701/scrape-14646007708928-pimtha-hot-girl-thai-lan-6-6405-1464600623-20170107152308.jpg" style="border:0px; box-sizing:border-box; height:432px; vertical-align:middle; width:500px" /></p>\r\n\r\n<p><span style="font-size:14px">Nếu bạn phải vội ra khỏi nhà trong tình trạng mệt mỏi, kém tươi thì đây cũng là cách nhanh nhất khiến da mặt bạn trông mượt mà, mịn màng hơn và tươi tắn hơn.<br />\r\nBạn có thể kết hợp giữa việc làm đá với các loại nguyên liệu<span style="color:#000000">,&nbsp;</span><a href="http://bestie.vn/2016/11/nhung-my-pham-cac-nang-nen-so-huu-de-co-guong-mat-makeup-ma-nhu-khong" style="box-sizing: border-box; background-color: transparent; color: rgb(0, 51, 153) !important; text-decoration: none;"><span style="color:#000000">mỹ phẩm từ tự nhiên</span></a><span style="color:#000000">&nbsp;</span>như các loại lá hoặc quả khác nhau để có một chế độ chăm sóc hoàn hảo cho làn da. Tuy nhiên, nước lạnh từ vòi không nên dùng để làm đá rửa mặt. Sẽ tốt hơn nhiều nếu làm đá từ nước đun sôi hay nước khoáng không ga.</span><br />\r\n&nbsp;</p>\r\n<span style="font-size:14px"><strong>1.&nbsp;<span style="font-family:arial,helvetica,sans-serif"><span style="color:rgb(0, 0, 0)">Làm trắng da với đá viên nước cơm dùng cho da thường</span></span></strong></span>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 1" src="http://static1.bestie.vn/Mlog/ImageContent/201701/030-20170107145736.JPG" style="border:0px; box-sizing:border-box; height:563px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p><span style="font-size:14px">Dùng nước cơm để làm đá, ngoài tác dụng dưỡng da, nó còn có tác<span style="color:#000000"> dụng&nbsp;</span><a href="http://bestie.vn/2016/12/da-trang-bat-tong-voi-nhung-phuong-phap-tam-trang-an-toan-tai-nha" style="box-sizing: border-box; background-color: transparent; color: rgb(0, 51, 153) !important; text-decoration: none;"><span style="color:#000000">làm trắng da</span></a><span style="color:#000000">. Nư</span>ớc cơm được chắt ra khi nấu cơm, để nguội rồi cho vào ngăn đá. Loại đá này nên giữ trong ngăn đá không quá 3 ngày.</span></p>\r\n<strong>​​​</strong><span style="font-size:14px"><strong>​​2.&nbsp;</strong></span><strong style="font-size:14px; text-align:justify"><span style="line-height:20.8px">Cung cấp độ ẩm cho da khô bằng đá viên hoa quả</span></strong>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 2" src="http://static1.bestie.vn/Mlog/ImageContent/201701/fruit-ice-cubes-20170107150123.jpg" style="border:0px; box-sizing:border-box; height:325px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p><span style="font-size:14px">Da khô thích hợp với những loại đá được làm từ lá, hoa, cũng như quả. Những quả sơn tra đỏ thắm, những cọng bồ công anh là thứ nguyên liệu tuyệt diệu cho loại da này. Có thể làm đá từ nước quả, tốt nhất là những loại quả đỏ. Nghiền nát 3 thìa quả và khuấy đều trong 2 cốc nước sôi để nguội, sau đấy lọc lấy nước. Cho vào ngăn đá và dùng trong vòng 5 ngày.</span><br />\r\n<br />\r\n<strong>3.&nbsp;</strong><span style="font-size:14px"><strong>Se khít lỗ chân lông bằng đá viên nước hoa hồng</strong></span></p>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 3" src="http://static1.bestie.vn/Mlog/ImageContent/201701/our-white-rose-goji-blend-is-the-perfect-tea-to-drink-cold-try-our-iced-tea-recipe-today-love-tea-i-20170107150332.jpg" style="border:0px; box-sizing:border-box; height:500px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p><span style="font-size:14px">Bạn có thể biến đổi một chú<span style="color:#000000">t cho&nbsp;</span><a href="http://bestie.vn/2016/11/3-loi-ich-that-bat-ngo-tu-glycerin-nuoc-hoa-hong-va-nuoc-cot-chanh" style="box-sizing: border-box; background-color: transparent; color: rgb(0, 51, 153) !important; text-decoration: none;"><span style="color:#000000">nước hoa hồng</span></a><span style="color:#000000">&nbsp;c</span>ủa mình bằng cách làm lạnh trong các khay đá. Những viên đá nước hoa hồng sẽ giúp cho da mặt được mềm mại và tươi mới hơn.<br />\r\n<br />\r\n<strong>4.&nbsp;</strong></span><span style="font-size:14px"><strong>Giải nhiệt, làm dịu làn da cháy nắng bằng đá viên nha đam</strong></span></p>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 4" src="http://static1.bestie.vn/Mlog/ImageContent/201701/aloe-vera-ice-cubes-final2-20170107150523.jpg" style="border:0px; box-sizing:border-box; height:341px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p><span style="font-size:14px">Với hàm lượng nước cao, lá nha đam với cấu tạo đặc trưng có lớp gel trong suốt, mềm mịn và mát lành tinh khiết nên có công dụng tuyệt với với việc giải nhiệt và làm dịu làn da khi cháy nắng. Bạn chỉ cần cắt bỏ hai bên gai dọc thân lá, tách lấy phần gel bên trong, nghiền nát cùng với nước và dựng trong khay đá để lạnh. Sau khi ra ngoài dưới trời nắng nóng, hãy dùng một viên lướt nhẹ lên da, khi đó mọi tác động của nắng nóng và tia UV đều được giải quyết hết</span>.<br />\r\n<br />\r\n<strong>5.&nbsp;</strong><span style="font-size:14px"><strong>Làm sạch và sáng da với đá viên dưa leo,&nbsp;<span style="line-height:20.8px">mật ong và chanh</span></strong></span></p>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 5" src="http://static1.bestie.vn/Mlog/ImageContent/201701/cucumber-lemon-honey-ice-cubes-20170107150630.jpg" style="border:0px; box-sizing:border-box; height:700px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p><span style="font-size:14px">Dưa leo chứa hàm lượng nước lên đến 90% giúp da luôn có đủ độ ẩm cần thiết, nên một khi kết hợp với các thành phần dưỡng ẩm của mật ong và khả năng kháng khuẩn chống viên của chanh tươi thì hiệu quả chăm sóc và làm sạch da sẽ trọn vẹn và sạch sâu hơn hẳn. Cách đơn giản nhất là bạn xay nhuyễn dưa leo cùng một thìa cafe mật ong rồi thêm vài giọt chanh tươi đựng trong khay đá và để lạnh. Mỗi khi sử dụng lấy một viên massage nhẹ nhàng trên da và để nguyên hỗn hợp trên da khoảng 5-10 phút để dưỡng chất thẩm thấu sâu trên da bạn.<br />\r\n<br />\r\n<strong>6.&nbsp;</strong></span><span style="font-size:14px"><strong>Trị mụn và vết thâm với đá viên Matcha</strong></span></p>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 6" src="http://static1.bestie.vn/Mlog/ImageContent/201701/making-veggie-ice-cubes-20170107150806.jpg" style="border:0px; box-sizing:border-box; height:375px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Trà xanh có tác dụng làm mát tại chỗ, trị mụn và chống lão hóa. Rất nhiều bạn nữ ưa thích chọn trà xanh để làm mặt nạ dưỡng da. Thay vì trộn với các nguyên liệu khác đắp mặt, bạn có thể pha bột trà và làm đông để tăng hiệu quả dưỡng da hơn nữa.<br />\r\nBạn hòa bột trà xanh với nước khoáng cho thật tan. Sau đó lọc qua rây để lấy phần nước trong. Dùng nước này cho vào khay đá và để đông. Hàng ngày dùng nó để rửa mặt sáng, tối bạn sẽ thấy da mặt trắng mịn, sạch mụn và đánh bay vết thâm đen.</span></p>\r\n\r\n<p><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif"><strong><span style="color:rgb(0, 0, 0)">Cách chăm sóc da bằng đá viên</span></strong></span></span></p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;"><span style="font-size:14px">Bước 1: Rửa mặt bằng nước ấm rồi dùng khăn mềm thấm khô da, lưu ý không nên dùng khăn mặt sần sùi và khô ráp tránh gây tổn hại da và tránh mụn lây lan nhiều hơn.</span></li>\r\n	<li style="text-align: justify;"><span style="font-size:14px">Bước 2: Cho 1 ít đá bào hoặc đá viên vào khăn khô, túm bốn góc thành 1 khối vuông.</span></li>\r\n	<li style="text-align: justify;"><span style="font-size:14px">Bước 3: Chườm đá trực tiếp lên vùng da bị mụn, để yên trong vài phút, sau đó chuyển sang khu vực khác. Đợi 10 phút sau đó thực hiện lại 1 lần nữa.</span></li>\r\n</ul>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Bạn có thể thực hiện cách này đều đặn mỗi ngày trước khi đi ngủ hoặc sáng thức dậy, chỉ sau 1 tuần sẽ cảm nhận được tác dụng thực sự.<br />\r\n<span style="line-height:20.8px">&quot;Mọi thứ đều nở ra khi nóng lên và co lại khi lạnh đi&quot;. Đừng ngại sử dụng viên đá lạnh thoa lên mặt, kết hợp với các động tác massage mặt mỗi ngày, điều này sẽ giúp làm se khít lỗ chân lông trên da mặt, đồng thời giảm bớt việc các chất bã nhờn, giảm lượng bụi và vi khuẩn thâm nhập lỗ chân lông, giúp bạn làm sạch da mặt dễ dàng hơn mà không phải kỳ công chăm sóc.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Massage với những viên đá này để da đẹp &quot;không tì vết&quot; yên tâm đón Tết', 'Massage với những viên đá này để da đẹp &quot;không tì vết&quot; yên tâm đón Tết', '', '', '', '', '', 0, '', 0, 0, '148488481820-01-2017 11-00-04 SA.png', 1, 1, 3),
(4, 'Bí quyết dưỡng da trắng hồng dành cho bạn gái', 'Bí quyết dưỡng da trắng hồng dành cho bạn gái ', '<div style="text-align: center;"><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif"><strong>Bí quyết dưỡng da trắng hồng dành cho bạn gái</strong></span></span></div>\r\n\r\n<div style="text-align: justify;"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Làm sao để có được làn da trắng mịn hồng hào luôn là vấn đề được các bạn nữ quan tậm. Bạn đã biết cách dưỡng da trắng hồng chưa? Những bí quyết dưới đây sẽ giúp bạn!<br />\r\nChăm sóc da là một việc không dễ dàng, đòi hỏi bạn phải cẩn thận và kiên trì. Trên thực tế có rất nhiều biện pháp để giúp bạn sở hữu được nước da trắng hồng, mịn màng. Chú ý đến những vấn đề sau, bạn sẽ không còn lo lắng về làn da của mình nữa.<br />\r\nDưỡng da trắng hồng bằng cách làm sạch da mặt&nbsp;</span></span><br />\r\n<img alt="Dưỡng da trắng hồng" class="aligncenter wp-image-24288" src="http://www.phunu.news/wp-content/uploads/2016/06/D%C6%B0%E1%BB%A1ng-da-tr%E1%BA%AFng-h%E1%BB%93ng-2-433x290.jpg" style="background-color:rgb(255, 255, 255); border:0px; color:rgb(34, 34, 34); display:block; font-family:noto serif,serif; font-size:17.6px; height:auto; margin-bottom:24px; margin-left:auto; margin-right:auto; max-width:100%; text-align:center; width:473px" /><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Điều đầu tiên trong quy trình dưỡng da trắng hồng đó là bạn phải luôn giữ cho da mặt sạch sẽ. Bạn phải rửa sạch tay, cho một lượng sữa rửa mặt vừa đủ vào lòng bàn tay, tạo bọt thật kỹ và xoa đều lên mặt. Chuyển động tròn, massage da mặt nhẹ nhàng khoảng 30 giây rồi dùng nước ấm rửa sạch mặt. Không nên dùng nước quá nóng vì như thế có thể sẽ làm tổn thương da mặt của bạn.<br />\r\nThường xuyên tẩy tế bào chết cho da<br />\r\nĐây là thao tác quan trọng để dưỡng da trắng hồng. Bạn có thể trộn đều đường và nước với tỉ lệ 2:1 để làm thành hỗn hợp tẩy tế bào chết cho da đơn giản tại nhà. Thoa đều lên ba phần của khuôn mặt: vùng trán và hai bên má. Nhẹ nhàng massage theo hình tròn khoảng 1 phút rồi rửa mặt với nước ấm.</span></span><br />\r\n<img alt="Dưỡng da trắng hồng" class="aligncenter wp-image-24289" src="http://www.phunu.news/wp-content/uploads/2016/06/D%C6%B0%E1%BB%A1ng-da-tr%E1%BA%AFng-h%E1%BB%93ng-3-421x290.jpg" style="background-color:rgb(255, 255, 255); border:0px; color:rgb(34, 34, 34); display:block; font-family:noto serif,serif; font-size:17.6px; height:auto; margin-bottom:24px; margin-left:auto; margin-right:auto; max-width:100%; text-align:center; width:449px" /><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif"><strong>Dưỡng da trắng hồng bằng cách đắp mặt nạ dưỡng da</strong></span></span><br />\r\n<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Công đoạn không thể thiếu để giúp bạn dưỡng da trắng hồng đó chính là thường xuyên đắp mặt nạ cho da.<br />\r\nBạn có thể dùng các loại nguyên liệu có sẵn ngay tại nhà để chăm sóc cho da như:<br />\r\n<strong><em>&ndash; Cà chua: </em></strong>Vitamin C và các loại dưỡng chất có trong cà chua sẽ giúp da bạn trắng mịn tự nhiên. Bạn có thể cắt cà chua thành nhiều lát mỏng rồi đắp lên mặt trong khoảng 20 phút, sau đó rửa mặt sạch bằng nước lạnh. Áp dụng cách này một tuần từ 2-3 lần, bạn sẽ sớm có được làn da trắng hồng.<br />\r\nBạn cũng có thể dùng nước ép cà chua trộn với vài giọt nước cốt chanh rồi xoa lên mặt trong vòng 15 phút. Thực hiện khoảng 1 tháng bạn sẽ thấy tác dụng diệu kỳ của cà chua đối với làn da của bạn.</span></span><br />\r\n<img alt="Dưỡng da trắng hồng" class="aligncenter wp-image-24290" src="http://www.phunu.news/wp-content/uploads/2016/06/D%C6%B0%E1%BB%A1ng-da-tr%E1%BA%AFng-h%E1%BB%93ng-4-435x290.jpg" style="background-color:rgb(255, 255, 255); border:0px; color:rgb(34, 34, 34); display:block; font-family:noto serif,serif; font-size:17.6px; height:auto; margin-bottom:24px; margin-left:auto; margin-right:auto; max-width:100%; text-align:center; width:473px" /><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><em>&ndash;</em><strong><em><em> </em>Dưỡng da trắng hồng với dưa chuột</em></strong>: Dưa chuột là loại thực phẩm quen thuộc với các gia đình. Các axit tartaric và axit amin có trong dựa chuột có hiệu quả rất tốt để dưỡng trắng da. Dùng vài giọt nước cốt chanh trộn đều với nước ép dưa chuột rồi xoa lên mặt. Massage nhẹ nhàng kết hợp thư giãn khoảng 20 phút rồi rửa sạch mặt. Với cách làm này, làn da bạn sẽ mềm mịn, trắng hồng trông thấy. Thực hiện 2-3 lần trong tuần để thu được kết quả tốt nhất.<br />\r\n<em><strong>&ndash; Khoai tây:</strong></em> Một loại dưỡng chất từ thiên nhiên giúp dưỡng da trắng hồng không thể bỏ qua đó là khoai tây. Bạn chỉ cần hấp chín khoai tây sau đó nghiền nát và trộn đều với lượng sữa tươi sao cho tạo thành một hỗn hợp sền sệt. Thoa đều hỗn hợp này lên mặt, đợi trong khoảng 30 phút rồi rửa lại bằng nước ấm. Mỗi tuần thực hiện 2 lần, làn da của bạn sẽ trắng hồng rạng rỡ.</span></span><br />\r\n<br />\r\n<span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif"><strong>Thu nhỏ lỗ chân lông</strong></span></span><br />\r\n<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Đây chính là hâu cuối cùng để bạn sở hữu được làn da trắng hồng, mịn màng. Luân phiên dùng nước ấm, lạnh để rửa mặt và cuối cùng là nước lạnh. Hãy tạt nước lên mặt thay vì rửa bằng tay. Dùng một viên đá nhỏ xoa nhẹ lên mặt để giúp thu nhỏ lỗ chân lông. Dùng khăn mềm lau khô và thoa kem dưỡng ẩm cho da.<br />\r\nVới những khâu chăm sóc như trên, tin chắc rằng bạn sẽ dưỡng da trắng hồng nhanh chóng và hiệu quả. Hãy nhớ che chắn cho da mỗi khi ra ngoài. Chúc các bạn may mắn!</span></span></div>\r\n\r\n<div style="text-align: justify;">&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n', 'Bí quyết dưỡng da trắng hồng dành cho bạn gái', 'Bí quyết dưỡng da trắng hồng dành cho bạn gái', '', '', '', '', '', 0, '', 0, 0, '14848866433-bí-quyết-dưỡng-trắng-không-phải-ai-cũng-biết.jpg', 1, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `news_cate`
--

CREATE TABLE IF NOT EXISTS `news_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `sum` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `e_title` text NOT NULL,
  `e_sum` text NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `img` text NOT NULL,
  `icon` text NOT NULL,
  `pId` int(11) NOT NULL,
  `lev` int(11) NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `news_cate`
--

INSERT INTO `news_cate` (`id`, `title`, `sum`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_meta_keyword`, `e_meta_description`, `img`, `icon`, `pId`, `lev`, `ind`, `active`) VALUES
(3, 'BIẾN TẦN YASKAWA A1000 CHO CÁC ỨNG DỤNG CẦU TRỤC VÀ NÂNG HẠ', '', 'BIẾN TẦN YASKAWA A1000 CHO CÁC ỨNG DỤNG CẦU TRỤC VÀ NÂNG HẠ', 'BIẾN TẦN YASKAWA A1000 CHO CÁC ỨNG DỤNG CẦU TRỤC VÀ NÂNG HẠ', 'Careers news', '', '', '', '', '', 0, 1, 3, 1),
(4, 'NHÀ PHÂN PHỐI SERVO YASKAWA', '', 'NHÀ PHÂN PHỐI SERVO YASKAWA', 'NHÀ PHÂN PHỐI SERVO YASKAWA', '', '', '', '', '', '', 0, 1, 2, 1),
(5, 'BIẾN TẦN YASKAWA ', '', 'BIẾN TẦN YASKAWA ', 'BIẾN TẦN YASKAWA ', '', '', '', '', '', '', 0, 1, 3, 1),
(6, 'NHÀ PHÂN PHỐI BIẾN TẦN YASKAWA', '', 'NHÀ PHÂN PHỐI BIẾN TẦN YASKAWA', 'NHÀ PHÂN PHỐI BIẾN TẦN YASKAWA', '', '', '', '', '', '', 0, 1, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE IF NOT EXISTS `partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `eTitle` text NOT NULL,
  `lnk` text NOT NULL,
  `img` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `ind` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`id`, `title`, `eTitle`, `lnk`, `img`, `active`, `ind`) VALUES
(10, 'CeraVe', 'Bambo interior', 'CeraVe', '1484551343tải xuống.jpg', 1, 2),
(11, 'Beauty Diary', 'Bambo interior', 'pspmedia.vn3232', '14845483238799411372062.jpg', 1, 1),
(12, 'CLINIQUE', '', '', '1484551521Clinique-Logo-vector-image.png', 1, 3),
(13, 'SIMPLE', '', '', '1484551591simple_skincare-logo.jpg', 1, 4),
(14, ' NEUTROGENA', '', '', '1484551667Neutrogena-logo.jpg', 1, 5),
(15, 'NATURA SIBERCA', '', '', '1484551924images.jpg', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `feature` longtext NOT NULL,
  `price` int(11) DEFAULT NULL,
  `price_reduce` int(11) DEFAULT NULL,
  `in_stock` tinyint(1) NOT NULL,
  `condition` tinyint(1) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `detail` longtext NOT NULL,
  `content` longtext NOT NULL,
  `teach` longtext NOT NULL,
  `video` varchar(200) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `manual` longtext NOT NULL,
  `e_manual` longtext NOT NULL,
  `promotion` longtext NOT NULL,
  `e_promotion` longtext NOT NULL,
  `e_title` text NOT NULL,
  `e_feature` longtext NOT NULL,
  `e_detail` longtext NOT NULL,
  `e_content` longtext NOT NULL,
  `e_teach` longtext NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `pd_option` varchar(255) NOT NULL,
  `lnk` text NOT NULL,
  `e_lnk` text NOT NULL,
  `pId` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `home` tinyint(1) NOT NULL,
  `ind` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pId` (`pId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=287 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `feature`, `price`, `price_reduce`, `in_stock`, `condition`, `brand_id`, `detail`, `content`, `teach`, `video`, `meta_keyword`, `meta_description`, `manual`, `e_manual`, `promotion`, `e_promotion`, `e_title`, `e_feature`, `e_detail`, `e_content`, `e_teach`, `e_meta_keyword`, `e_meta_description`, `pd_option`, `lnk`, `e_lnk`, `pId`, `active`, `home`, `ind`) VALUES
(234, 'Mặt Nạ Ngọc Trai Tahiti', '', 250000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><span style="color:#FF0000"><strong>Mặt nạ Ngọc trai đen Tahiti - 5 miếng</strong></span><br />\r\nBảo vệ toàn diện<br />\r\nNgọc trai đen Tahiti bên trong có chứa phân tử dưỡng ẩm, khởi động cơ chế bảo vệ từ cơ sở khôi phục làn da săn chắc mịn màng, cùng với Hyaluronic acid và tinh chất men có tác dụng dưỡng ẩm, kết hợp với nhân sâm, tảo bẹ Laminaria có tác dụng săn chắc da, điều trị làn da khô và đánh bay các nếp nhăn nhỏ, để làn da duy trì sức sống tuổi thanh xuân, giúp da giữ nước, bổ sung dưỡng chất, thêm oxy, bảo vệ, tái sinh, năng lượng vitamin, kích thích khả năng đổi mới của da, đánh thức cơ chế tuổi trẻ của làn da.<br />\r\nTrắng sáng đàn hồi<br />\r\n4 peptide chưa phân tử đàn hồi cho da, cung cấp các nguyên tố giữ ẩm đàn hồi cho lớp sâu bên trong da, cân bằng lượng nước lượng dầu trên da, với vitamin B3 và B5 điều trị giữ ẩm từ sâu bên trong, để làn da thêm mịn màng đàn hồi và săn chắc.<br />\r\n<span style="color:#FF0000"><strong>Xuất xứ : Đài Loan<br />\r\nDung tích 20ml/ miếng<br />\r\nGiá : 250k/ 5 miếng</strong></span></span></span>', '', '', 'Mặt Nạ Ngọc Trai Tahiti', 'Mặt Nạ Ngọc Trai Tahiti', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 17, 1, 0, 1),
(235, 'Toner SIMPLE', '', 220000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="color:#FF0000"><strong>Toner simple &ndash; kind to skin soothing facial toner</strong></span><br />\r\nSoothing Facial Toner để lại làn da của bạn cảm giác sạch sẽ và tươi mới, cộng với<br />\r\nđó là một sự pha trộn hoàn hảo của các thành phần dịu nhẹ và lành tính nhất như cây phỉ giúp sát khuẩn, làm mềm và mịn da cùng chiết xuất hoa cúc Chamomile giúp chống viêm và làm dịu da. Đồng thời Toner Simple cũng bổ sung thêm&nbsp; Vitamin Pro &ndash; B5 và B3 vừa nâng cao khả năng cấp ẩm, vừa kích thích khả năng tái tạo tế bào mới, giúp da luôn được khỏe mạnh.<br />\r\nẤn tượng với tiêu chí 2 KHÔNG : không chất bảo quản , không hương liệu<br />\r\n<strong><span style="color:#FF0000">Xuất xứ : Mỹ<br />\r\nGiá : 200ml &ndash; 220k</span></strong></span></span>', '', '', 'Toner SIMPLE', 'Toner SIMPLE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 18, 1, 0, 1),
(236, 'Tinh Chất Caviar Trứng Cá Đen Chống Lão Hóa Natura Siberca', '', 550000, 0, 0, 0, 0, '', '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="color:#FF0000"><strong>Tinh chất Caviar trứng cá muối chống lão hóa Natura Siberca</strong></span></span></span>\r\n<h2><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Phức hợp chất chống lão hóa, đóng vai trò đặc biệt trên tất cả các lớp của da, cung cấp đổi mới sâu sắc và trẻ hóa.&nbsp;Nguyên tắc hoạt động - một cuộc chiến đấu của tế bào da lão hóa đa: tái tạo, phục hồi, phục hồi cấu trúc, cuộc chiến chống lại các nếp nhăn, phục hồi độ đàn hồi, chống oxy hóa hiệu quả, giữ ẩm và rạng rỡ.<br />\r\n<em>Hoạt chất:</em><br />\r\nChiết xuất trứng cá đen (beluga,cá tầm và cá tầm hình sao) rất giàu protein và collagen, chất khoáng và vitamin, do đó mang lại hiểu quả ngăn chặn quá trình lão hóa, phục hồi các hư hại da, kích thích sản sinh collagen<br />\r\nCollagen trứng cá muối giữ độ ẩm ở mức biểu bì, cải thiện tông màu da và độ đàn hồi</span></span></h2>\r\n<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Peptide Vàng (acid amin phức tạp với vàng keo) kích thích sự tổng hợp Collagen, kích thích chuyển hóa tế bào và táo tạo da<br />\r\nActive Peptide phức tạp Syn-Sb&nbsp; (huyết thanh 3%) kích thích sự tổng hợp Collagen trong cấu trúc da và bảo vệ nó khỏi bị suy thoái bởi các Enzyme trong tương lai.<br />\r\nĐã được chứng minh hiểu quả :làm mịn da.giảm lão hóa 12%<br />\r\nPolypeptide Syn- Ake (huyết thanh 4%) làm mềm da và xóa các nếp nhăn trên khuôn mặt<br />\r\nHiểu quả đã được chứng minh: giảm độ sâu của nếp nhăn lên tới 52%<br />\r\nVitamin phức hợp gồm trứng cá muối (A, E,D,F,K)&nbsp; hỗ trợ hàng rào bảo vệ của da và bù đắp cho những ảnh hưởng bên ngoài gây hại, thúc đẩy quá trình lão hóa<br />\r\nSilicon 0% 0% BHT &ndash; BHA<br />\r\n0% dầu khoáng 0% PEG<br />\r\n0% paraben 0% EDTA<br />\r\n<span style="color:#FF0000"><strong>Xuất xứ : Nga<br />\r\nGiá : 550k/10 ống.300k/5 ống (3ml/tuýp)</strong></span></span></span>', '', '', 'Tinh Chất Caviar Trứng Cá Đen Chống Lão Hóa Natura Siberca', 'Tinh Chất Caviar Trứng Cá Đen Chống Lão Hóa Natura Siberca', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 22, 1, 0, 2),
(237, 'Timeless 20% vitamin C+ E ferulic Acid SERUM', '', 390000, 0, 0, 0, 0, '', '', '', '', 'Timeless 20% vitamin C+ E ferulic acid SERUM', 'Timeless 20% vitamin C+ E ferulic acid SERUM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 24, 1, 0, 1),
(238, 'Tea Tree Oil 20ml', '', 320000, 0, 0, 0, 0, '', '<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><span style="color:#FF0000"><strong>TRỊ MỤN<br />\r\nNHÀ SẢN XUẤT CAM KẾT ĐIỀU GÌ :</strong></span><br />\r\nTea Tree Oil The Body Shop là sự pha trộn của các thành phần hoạt tính tự nhiên - dầu cây TRÀ từ CỘNG ĐỒNG THƯƠNG MẠI CÔNG BẰNG, CÂY TRÀ CHANH và DẦU TAMANU để giữ cho làn da được tươi sáng bằng cách giúp ngăn ngừa nhược điểm và mụn đầu đen, kiểm soát dầu thừa. Bất kể bạn đang sống ở vùng khí hậu nào, sử dụng sản phẩm tea tree oil của chúng tôi sẽ giúp giảm nhược điểm hiện có, ngăn ngừa mụn trong tương lai, kiểm soát dầu và tỏa sáng cả năm dài&nbsp;<br />\r\nNgoài công dụng trị mụn, còn có khả năng sát khuẩn vết thương, mẩn đỏ, côn trùng cắn<br />\r\n<strong><span style="color:#FF0000">Xuất xứ : Mỹ<br />\r\nGiá : 20ml &ndash; 320k</span></strong></span></span>', '', '', 'Tea Tree Oil 20ml', 'Tea Tree Oil 20ml', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 22, 1, 0, 2),
(239, ' Tea Tree Oil 10ml', '', 190000, 0, 0, 0, 0, '', '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="color:#FF0000"><strong>TRỊ MỤN<br />\r\nNHÀ SẢN XUẤT CAM KẾT ĐIỀU GÌ :</strong></span><br />\r\nTea Tree Oil The Body Shop là sự pha trộn của các thành phần hoạt tính tự nhiên - dầu cây TRÀ từ CỘNG ĐỒNG THƯƠNG MẠI CÔNG BẰNG, CÂY TRÀ CHANH và DẦU TAMANU để giữ cho làn da được tươi sáng bằng cách giúp ngăn ngừa nhược điểm và mụn đầu đen, kiểm soát dầu thừa. Bất kể bạn đang sống ở vùng khí hậu nào, sử dụng sản phẩm tea tree oil của chúng tôi sẽ giúp giảm nhược điểm hiện có, ngăn ngừa mụn trong tương lai, kiểm soát dầu và tỏa sáng cả năm dài&nbsp;<br />\r\nNgoài công dụng trị mụn, còn có khả năng sát khuẩn vết thương, mẩn đỏ, côn trùng cắn<br />\r\n<span style="color:#FF0000"><strong>Xuất xứ : Mỹ<br />\r\nGiá :10ml - 190K</strong></span></span></span>', '', '', ' Tea Tree Oil 10ml', ' Tea Tree Oil 10ml', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 22, 1, 0, 2),
(240, 'Tẩy Trang GARNIER 500ml', '', 300000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><span style="color:#FF0000"><strong>Tẩy trang Garnier</strong></span><br />\r\nNước tẩy trang Garnier Micellar Oil-Infused có dành cho tôi ?<br />\r\n<strong><em>Mô tả Sản phẩm</em></strong><br />\r\nĐược Garnier Micellar Oil-Truyền Cleansing Water Quyền Đối với Me?<br />\r\nVâng, nếu bạn đang tìm kiếm một, chất tẩy rửa nhẹ nhàng nhưng hiệu quả mà xóa bỏ tất cả các make-up (thậm chí là những sản phẩm chống thấm nước), các tạp chất và bụi bẩn và cho làn da cảm giác được nuôi dưỡng. Thích hợp ngay cả đối với da khô, nhạy cảm.<br />\r\nTại sao là khác nhau?<br />\r\nNước tẩy trang Garnier Micellar Oil-Infused dễ dàng để loại bỏ ngay cả những lớp make-up chống thấm nước, làm sạch và nuôi dưỡng cảm giác của da, ở 1 bước mà không cần rửa.<br />\r\nLàm thế nào nó hoạt động?<br />\r\nLần đầu tiên nước tẩy trang Garnier Micellar được xây dựng với các loại dầu. Các mixen (chất làm sạch) hút tạp chất như một nam châm và lấy đi bụi bẩn sâu dưới &nbsp;da, trong khi các loại dầu ngay lập tức giải tán tất cả các loại của make-up trên bề mặt da.<br />\r\nKết quả:<br />\r\nHoàn toàn sạch, nuôi dưỡng làn da cảm giác mà không cần chà xát hoặc rửa.<br />\r\nLàm thế nào để sử dụng<br />\r\nÁp dụng các sản phẩm vào một miếng bông và lau mặt, mắt và môi.<br />\r\n<strong><span style="color:#FF0000">Xuất xứ : Pháp<br />\r\nGiá : 400ml - 300k</span></strong></span></span><br />\r\n&nbsp;', '', '', 'Tẩy Trang GARNIER 500ml', 'Tẩy Trang GARNIER 500ml', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 20, 1, 0, 1),
(241, 'Tẩy Trang BIO Hồng 500ml', '<br />\r\n<span style="color:#FF0000"><strong>Tẩy trang Bioderma</strong></span><br />\r\nMột chai Créaline H2O bán ra trên toàn thế giới mỗi 5 giây!<br />\r\nCréaline H2O là nước tẩy trang đầu tiên và duy nhất có công nghệ Micellar Water hoàn toàn tương thích với da: este acid béo của nó, là yếu tố cấu thành các mixen, tương tự như các phospholipid của tế bào da membranesand tự nhiên giúp xây dựng lại bộ phim hydrolipidic của da.<br />\r\n<em><strong>HƯỚNG DẪN SỬ DỤNG</strong></em><br />\r\nThấm vài giọt nước tẩy trang lên miếng bông<br />\r\nNhẹ nhàng làm sạch hoặc loại bỏ make-up từ khuôn mặt và đôi mắt của bạn.<br />\r\nTái áp dụng cho đến khi miếng bông trở nên sạch sẽ.<br />\r\nRửa sạch lại với nước<br />\r\nĐặc biệt :<br />\r\nCông thức không chứa hương thơm<br />\r\nKhông có cồn<br />\r\nKhông chứa paraben<br />\r\nkhông gây dị ứng<br />\r\n<strong><span style="color:#FF0000">Xuất xứ : Pháp<br />\r\nGiá : 500ml &ndash; 490k</span></strong>', 490000, 0, 0, 0, 0, '', '', '', '', 'Tẩy trang BIO hồng 500ml', 'Tẩy Trang BIO Hồng 500ml', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 20, 1, 0, 3),
(242, 'Tẩy Trang BIO Hồng 100ml', '<br />\r\n<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><strong><span style="color:#FF0000">Tẩy trang Bioderma</span></strong><br />\r\nMột chai Créaline H2O bán ra trên toàn thế giới mỗi 5 giây!<br />\r\nCréaline H2O là nước tẩy trang đầu tiên và duy nhất có công nghệ Micellar Water hoàn toàn tương thích với da: este acid béo của nó, là yếu tố cấu thành các mixen, tương tự như các phospholipid của tế bào da membranesand tự nhiên giúp xây dựng lại bộ phim hydrolipidic của da.<br />\r\nHƯỚNG DẪN SỬ DỤNG<br />\r\nThấm vài giọt nước tẩy trang lên miếng bông<br />\r\nNhẹ nhàng làm sạch hoặc loại bỏ make-up từ khuôn mặt và đôi mắt của bạn.<br />\r\nTái áp dụng cho đến khi miếng bông trở nên sạch sẽ.<br />\r\nRửa sạch lại với nước<br />\r\nĐặc biệt :<br />\r\nCông thức không chứa hương thơm<br />\r\nKhông có cồn<br />\r\nKhông chứa paraben<br />\r\nkhông gây dị ứng<br />\r\n<strong><span style="color:#FF0000">Xuất xứ : Pháp<br />\r\nGiá : 100ml - 165k</span></strong></span></span><br />\r\n&nbsp; &nbsp;', 160000, 0, 0, 0, 0, '', '', '', '', 'Tẩy Trang BIO Hồng 100ml', 'Tẩy Trang BIO Hồng 100ml', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 20, 1, 0, 4),
(243, 'Kem Tẩy Tế Bào Chết Natura Siberca', '', 195000, 0, 0, 0, 0, '', '', '', '', 'Kem tẩy tế bào chết Natura Siberca', 'Kem tẩy tế bào chết Natura Siberca', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 23, 1, 0, 1),
(244, 'Sữa Rửa Mặt Neutrogena', '', 245000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-size:14px"><strong><span style="font-size:16px">Neutrogena Oil Free Acne Wash</span></strong><br />\r\nSữa rửa mặt <strong>Neutrogena Oil Free Acne Wash</strong> là sản phẩm Sữa rửa mặt trị mụn chất lượng cao của Neutrogena &ndash; Mỹ được các bác sĩ da liễu khuyên dùng để ngăn ngừa và điều trị mụn trứng cá. Với công thức đặc biệt, sản phẩm giúp loại bỏ chất dầu thừa tích tụ trên da một cách hiệu quả, làm sạch sâu lỗ chân lông, mang đến làn da mịn màng tươi trẻ. Đồng thời Axit Salicylic giúp sát trùng da, chống mụn trứng cá hiệu quả, giúp ngăn ngừa mụn trong tương lai<br />\r\nSữa rửa mặt <strong>Neutrogena&nbsp;Oil Free Acne Wash</strong> trị mụn này có công thức dịu nhẹ không gây kích ứng da, không làm khô da, không làm tắt nghẽn lỗ chân lông<br />\r\nSữa rửa mặt trị mụn Neutrogena Oil Free Acnes Wash được tạp chí uy tín Allure bình chọn là 1 trong những sản phẩm sữa rửa mặt trị mụn tốt nhất.<br />\r\nXuất xứ : Made in USA<br />\r\nGiá:</span>\r\n<ul>\r\n	<li><strong><span style="font-size:14px"><span style="color:#FF0000">Chai 269ml &ndash;245k</span></span></strong></li>\r\n	<li><strong><span style="font-size:14px"><span style="color:#FF0000">Chai 177ml&nbsp; - 190k</span></span></strong></li>\r\n</ul>\r\n<span style="font-size:14px"><strong><span style="color:#FF0000">Lưu ý : </span></strong>Khi trong quá trình dùng sữa rửa mặt Neutrogena Oil Free Acne Wash thì bạn phải hạn chế tiếp xúc với ánh nắng nhất là từ 11h đến 15h vì tia nắng chói chang từ vào thời gian này có thể làm tình trạng mụn của bạn tồi tệ hơn</span>', '', '', 'Sữa Rửa Mặt Neutrogena', 'Sữa Rửa Mặt Neutrogena', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 18, 1, 0, 5),
(245, 'Sữa Rữa Mặt Natura Siberca - Dành Cho Da Khô', '', 220000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-size:14px"><span style="color:#FF0000"><strong>Sữa rửa mặt Natura Siberica </strong></span>&ndash; cho da khô,nhạy cảm và làn da cần được chăm sóc đặc biệt<br />\r\nFluid rửa mặt ( dạng sữa lỏng không bọt) dành cho da khô<br />\r\nThành phần : Manchurian chi cuồng cuồng, Rhodiola rosea và Vitamin F có hiểu quả và nhẹ nhàng loại bỏ make-up, làm mềm và dưỡng ẩm cho da. Chi cuồng cuồng Mãn Châu bảo vệ da khỏi ảnh hưởng của khí hậu, cải thiện tông màu da và năng lượng. Rhodiola Rosea phục hồi các chức năng bảo vệ vf tái sinh tự nhiên của da. Vitamin F lipid tự nhiên nhằm thúc đẩy tái tạo tế bào da, đem lại cho da sự săn chắc và đàn hồi. thích hợp cho sử dụng hằng ngày<br />\r\nSilicon 0% 0% BHT &ndash; BHA<br />\r\n0% dầu khoáng 0% PEG<br />\r\n0% paraben 0% EDTA<br />\r\n<span style="color:#FF0000"><strong>Xuất xứ : Nga<br />\r\nGiá : 150ml &ndash; 220k</strong></span></span>', '', '', 'Sữa Rữa Mặt Natura Siberca - Dành Cho Da Khô', 'Sữa Rữa Mặt Natura Siberca - Dành Cho Da Khô', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 18, 1, 0, 6),
(246, 'Sữa Rữa Mặt Natura Siberca - Dành Cho Da Dầu', '', 220000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-size:14px"><strong><span style="color:#FF0000">Sữa rửa mặt Natura Siberica</span> </strong>&ndash; cho da khô,nhạy cảm và làn da cần được chăm sóc đặc biệt<br />\r\nFluid rửa mặt ( dạng sữa lỏng không bọt) dành cho da khô<br />\r\nThành phần : Manchurian chi cuồng cuồng, Rhodiola rosea và Vitamin F có hiểu quả và nhẹ nhàng loại bỏ make-up, làm mềm và dưỡng ẩm cho da. Chi cuồng cuồng Mãn Châu bảo vệ da khỏi ảnh hưởng của khí hậu, cải thiện tông màu da và năng lượng. Rhodiola Rosea phục hồi các chức năng bảo vệ vf tái sinh tự nhiên của da. Vitamin F lipid tự nhiên nhằm thúc đẩy tái tạo tế bào da, đem lại cho da sự săn chắc và đàn hồi. thích hợp cho sử dụng hằng ngày<br />\r\nSilicon 0% 0% BHT &ndash; BHA<br />\r\n0% dầu khoáng 0% PEG<br />\r\n0% paraben 0% EDTA<br />\r\n<span style="color:#FF0000"><strong>Xuất xứ : Nga<br />\r\nGiá : 150ml &ndash; 220k</strong></span></span>', '', '', 'Sữa Rữa Mặt Natura Siberca - Dành Cho Da Dầu', 'Sữa Rữa Mặt Natura Siberca - Dành Cho Da Dầu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 18, 1, 0, 7),
(247, 'Sữa Rửa Mặt CeraVe - Dành Cho Da Dầu', '', 355000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-size:14px"><span style="color:#FF0000"><strong>Sữa rửa mặt Cerave Hydrating Cleanser</strong></span><br />\r\nLuôn trong danh sách được tin dùng, kê đơn bởi các bác sĩ da liễu số 1 thế giới.<br />\r\nThích hợp cho da nhạy cảm, da yếu đang bị tổn thương cần phục hồi.<br />\r\nChẳng có gì đáng ngạc nhiên khi sữa rửa mặt Cerave này đồng loạt được đánh giá rất cao ở Amazon, Drugstore, ngay cả trang khó tính Paula&rsquo;s Choice cả, vì nó có những thành phần thuộc loại siêu tốt cho da như:<br />\r\nCeramides dưỡng ẩm, giúp duy trì lớp màng bảo vệ da khỏe mạnh.<br />\r\nHyaluronic Acid duy trì độ ẩm, chống lão hóa<br />\r\nNiacinamide giúp da tự sản sinh thêm Ceramides và các acid béo cần thiết để tự duy trì và phục hồi màng bảo vệ da<br />\r\nĐộ Ph 5.5 cực chuẩn<br />\r\nVới 3 thành phần như trên thì không có gì để chê 1 loại sữa rửa mặt giá tốt, an toàn &ndash; kể cả phụ nữ mang thai và cho con bú<br />\r\nSữa rửa mặt Cerave Hydrating Cleanser là một loại sữa rửa mặt lành tính,dịu nhẹ, và chứa nhiều chất có lợi cho da<br />\r\n<span style="color:#FF0000"><strong>Xuất xứ : Made in USA</strong></span><br />\r\n<strong><span style="color:#FF0000">Giá:</span></strong></span>\r\n<ul>\r\n	<li><span style="font-size:14px"><span style="color:#FF0000"><strong>Chai 355ml- 355k&nbsp;</strong></span></span></li>\r\n</ul>\r\n', '', '', 'Sữa Rửa Mặt CeraVe - Dành Cho Da Dầu', 'Sữa Rửa Mặt CeraVe - Dành Cho Da Dầu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 18, 1, 0, 8),
(248, ' Sữa Rửa Mặt CeraVe - Dành Cho Da Khô', '', 335000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-size:14px"><strong><span style="color:#FF0000">Sữa rửa mặt Cerave Hydrating Cleanser</span></strong><br />\r\nLuôn trong danh sách được tin dùng, kê đơn bởi các bác sĩ da liễu số 1 thế giới.<br />\r\nThích hợp cho da nhạy cảm, da yếu đang bị tổn thương cần phục hồi.<br />\r\nChẳng có gì đáng ngạc nhiên khi sữa rửa mặt Cerave này đồng loạt được đánh giá rất cao ở Amazon, Drugstore, ngay cả trang khó tính Paula&rsquo;s Choice cả, vì nó có những thành phần thuộc loại siêu tốt cho da như:<br />\r\nCeramides dưỡng ẩm, giúp duy trì lớp màng bảo vệ da khỏe mạnh.<br />\r\nHyaluronic Acid duy trì độ ẩm, chống lão hóa<br />\r\nNiacinamide giúp da tự sản sinh thêm Ceramides và các acid béo cần thiết để tự duy trì và phục hồi màng bảo vệ da<br />\r\nĐộ Ph 5.5 cực chuẩn<br />\r\nVới 3 thành phần như trên thì không có gì để chê 1 loại sữa rửa mặt giá tốt, an toàn &ndash; kể cả phụ nữ mang thai và cho con bú<br />\r\nSữa rửa mặt Cerave Hydrating Cleanser là một loại sữa rửa mặt lành tính,dịu nhẹ, và chứa nhiều chất có lợi cho da<br />\r\n<strong><span style="color:#FF0000">Xuất xứ : Made in USA<br />\r\nGiá:</span></strong></span>\r\n<ul>\r\n	<li><span style="font-size:14px"><strong><span style="color:#FF0000">Chai 355ml- 355k&nbsp;</span></strong></span></li>\r\n</ul>\r\n', '', '', ' Sữa Rửa Mặt CeraVe - Dành Cho Da Khô', ' Sữa Rửa Mặt CeraVe - Dành Cho Da Khô', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 18, 1, 0, 9),
(249, 'Son Dưỡng NUXE ', '', 280000, 0, 0, 0, 0, '', '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="color:#FF0000"><strong>Son dưỡng môi NUXE Balm Rêve de Miel</strong></span><br />\r\nHydrating Lip Care &ndash; nuôi dưỡng,phục hồi và bảo vệ đôi môi khô nứt nẻ<br />\r\nSon dưỡng kết hợp giữa mật ong và các loại dầu quý hiếm được đánh giá cao tập trung ở các thành phần giúp nuôi dưỡng, phục hồi, làm dịu và bảo vệ ngay cả những đôi môi khô và nứt nẻ nhất<br />\r\nNhờ kết cấu độc đáo và hương vị tinh tế của bưởi làm tươi mới đôi môi, nó thực sự là một sản phẩm làm đẹp phải có<br />\r\n<strong>Chứa ít nhất 79,5% của các thành phần tự nhiên</strong> (Mật Ong, Hoa Hướng Dương,Hoa Hồng, Bơ Shea và tinh chất Bưởi Đào)<br />\r\n<strong>Không paraben</strong>.<br />\r\n<span style="color:#FF0000"><strong>Xuất xứ : Pháp<br />\r\nGiá : 15g - 340k</strong></span></span></span>', '', '', 'Son Dưỡng NUXE Hộp Tròn', 'Son Dưỡng NUXE Hộp Tròn', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 21, 1, 0, 1),
(250, 'Son Dưỡng NUXE ', '', 160000, 0, 0, 0, 0, '', '<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><span style="color:#FF0000"><strong>Son dưỡng môi NUXE Balm Rêve de Miel</strong></span><br />\r\nHydrating Lip Care &ndash; nuôi dưỡng,phục hồi và bảo vệ đôi môi khô nứt nẻ<br />\r\nSon dưỡng kết hợp giữa mật ong và các loại dầu quý hiếm được đánh giá cao tập trung ở các thành phần giúp nuôi dưỡng, phục hồi, làm dịu và bảo vệ ngay cả những đôi môi khô và nứt nẻ nhất<br />\r\nNhờ kết cấu độc đáo và hương vị tinh tế của bưởi làm tươi mới đôi môi, nó thực sự là một sản phẩm làm đẹp phải có<br />\r\n<strong>Chứa ít nhất</strong> <strong>79,5% của các thành phần tự nhiên</strong> (Mật Ong, Hoa Hướng Dương,Hoa Hồng, Bơ Shea và tinh chất Bưởi Đào)<br />\r\n<strong>Không paraben</strong>.<br />\r\n<span style="color:#FF0000"><strong>Xuất xứ : Pháp<br />\r\nGiá : 4g -160k</strong></span></span></span>', '', '', 'Son Dưỡng NUXE ', 'Son Dưỡng NUXE ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 21, 1, 0, 2),
(251, 'Kem Than Hoạt Tính Thải Độc Natura Siberca', '', 250000, 0, 0, 0, 0, '', '', '', '', 'Kem Than Hoạt Tính Thải Độc Natura Siberca', 'Kem Than Hoạt Tính Thải Độc Natura Siberca', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 23, 1, 0, 4),
(252, 'Mặt Nạ Thải Độc Natura Siberca', '', 160000, 0, 0, 0, 0, '', '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="color:#FF0000"><strong>Mặt nạ giải độc ban đêm cho tất cả các loại da phục hồi và tái tạo tế bào</strong></span><br />\r\nMặt nạ đêm giúp tái sinh và tái lập sự cân bằng của da trong khi ngủ. Các chất chiết xuất từ nhân sâm Siberica và cải thiện lưu thông máu, kích thích quá trình đổi mới, tăng cường chức năng bảo vệ&nbsp; và trao đổi chất của tế bào.<br />\r\nChiết xuất tà xanh làm giảm viêm và tấy đỏ. Elastin có tác dụng nâng, làm mềm,đem lại cho da sự đàn hồi. Vitamin P tăng cường và tái tạo da.<br />\r\n<strong><span style="color:#FF0000">Xuất xứ : Nga<br />\r\nGiá : 75ml &ndash; 160k</span></strong></span></span>', '', '', 'Mặt Nạ Thải Độc Natura Siberca', 'Mặt Nạ Thải Độc Natura Siberca', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 17, 1, 0, 6),
(253, 'Kem Dưỡng Mắt Simple', '', 220000, 0, 0, 0, 0, '', '<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><span style="line-height:1"><span style="color:#FF0000"><strong>Kem mắt Simple &ndash;kind to eyes revitalising eye roll-on</strong></span><br />\r\nLàm bằng nguyên liệu dịu nhẹ với da và gấp ba lần nước tinh chế, loại nước tinh khiết có thể cấp ẩm ngay lập tức cho da<br />\r\nBác sĩ da liễu thử nghiệm<br />\r\nSản phẩm dòng Simple không chứa đựng nguồn gốc động vật<br />\r\nBác sĩ da liễu thử nhiệm &ndash; Bác sĩ nhãn khoa thử nghiệm. an toàn cho mắt nhạy cảm và những người đeo kính áp tròng, không gây mụn, không gây dị ứng<br />\r\nLàm mát và tươi mới đôi mắt của bạn để giúp giảm bọng mắt<br />\r\nKhông chứa bất kỳ nước hoa, thuốc nhuộm hay chất kích thích khắc nghiệt có thể làm đảo lộn làn da của bạn<br />\r\n<strong><span style="color:#FF0000">Xuất xứ : Mỹ<br />\r\nGiá : 15ml - 220K</span></strong></span></span></span>', '', '', 'Kem dưỡng mắt Simple', 'Kem dưỡng mắt Simple', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 23, 1, 0, 5),
(254, 'Kem Dưỡng Môi', '', 120000, 0, 0, 0, 0, '', '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong><span style="color:#FF0000">Kem dưỡng đa năng &ndash; Lucas&rsquo; Papaw Ointment</span></strong><br />\r\n<strong>Lucas Papaw Ointment&nbsp;giúp trị các vấn đề về da như:</strong><br />\r\n<strong>1 &ndash; Bỏng nước sôi và bỏng do bị cháy rộp.<br />\r\n2 &ndash; Cháy nắng.<br />\r\n3 &ndash; Bị phát ban, vết thương bị cắt.<br />\r\n4 &ndash; Hăm tã và bị nứt đầu ti do cho con bú.<br />\r\n5 &ndash; Bị côn trùng cắn.<br />\r\n6 &ndash; Bị mảnh vụn &amp; gai đâm.<br />\r\n7 &ndash; Trị nứt trên tay và chân, môi, mụn nhọt.<br />\r\n8 &ndash; Trị da khô hay bị phồng rộp.<br />\r\n9 &ndash; Vấn đề mụn trứng cá, mụn bọc &hellip;.<br />\r\n10 &ndash; Cứu trợ tạm thời khi bị bệnh trĩ.</strong><br />\r\n<strong>80% dân số Úc đều sở hữu</strong>&nbsp;<strong>Lucas Papaw Ointment</strong><strong>, các tín đồ làm đẹp và ngay cả phù thủy make up Michelline Phan cũng rất &ldquo;yêu&rdquo;</strong>&nbsp;<strong>Lucas</strong><strong>, còn bạn thì sao?</strong><br />\r\nThành phần :Đu Đủ<br />\r\n<span style="color:#FF0000"><strong>Xuất xứ : Úc<br />\r\nGiá : 25g &ndash; 120k</strong></span></span></span>', '', '', 'Kem dưỡng môi', 'Kem dưỡng môi', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 23, 1, 0, 6),
(255, 'Kem Chống Lão Hóa Anti-age Natura Siberca', '', 350000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-family:arial,helvetica,sans-serif"><span style="line-height:1"><span style="font-size:14px"><span style="color:#FF0000"><strong>Kem làm săn chắc khuôn mặt</strong></span></span></span></span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Đây là giải pháp hoàn hảo cho làn da mệt mỏi dễ bị lão hóa sớm.&nbsp;Do kết cấu phong phú của nó và một nồng độ tối đa của các loại kem cung cấp hiệu ứng săn chắc mạnh mẽ, rõ ràng là làm mềm thậm chí nếp nhăn sâu và kích thích quá trình tái sinh tự nhiên trong các tế bào da.</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif"><span style="line-height:1"><span style="font-size:14px"><em><strong>Hoạt chất :</strong></em><br />\r\nChiết xuất từ trứng cá đen , nổi tiếng thế giới do đặc tính chỗng lão hóa độc đáo của nó, giàu protein và collagen giúp trả lại làn da với vẻ tự nhiên của nó<br />\r\nComplex Omega -6 nuôi dưỡng sâu sắc các tế bào, phục hồi độ đàn hồi của da rõ rệt. Bằng cách kích hoạt quá trình tái sinh, phức hợp làm chậm quá trình lão hóa, mang lại độ đàn hồi và săn chắc<br />\r\nMoisturizing Complex MóitUp nuôi dưỡng làn da với độ ẩm cần thiết, ngăn chặn lão hóa sớm<br />\r\nKết quả:<br />\r\nMàu da phục hồi rõ rệt, các nếp nhăn được làm nhẵn, đường nét trên khuôn mặt được cải thiện và trở nên rõ ràng hơn. Làn da trở nên đàn hồi và mịn màng&nbsp; đầy sức sống và năng lượng .<br />\r\nSilicon 0% 0% BHT &ndash; BHA<br />\r\n0% dầu khoáng 0% PEG<br />\r\n0% paraben 0% EDTA<br />\r\n<strong><span style="color:#FF0000">Xuất xứ : Nga<br />\r\nGiá : 50ml-350k</span></strong></span></span></span>', '', '', 'Kem chống lão hóa Anti-age Natura Siberca', 'Kem chống lão hóa Anti-age Natura Siberca', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 23, 1, 0, 7),
(256, 'Dưỡng Ẩm CLINIQUE GEL 125ml', '', 750000, 0, 0, 0, 0, '', '', '', '', 'Dưỡng ẩm CLINIQUE GEL 125ml', 'Dưỡng ẩm CLINIQUE GEL 125ml', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 19, 1, 0, 3),
(257, 'Dưỡng Ẩm CLINIQUE GEL 50ml', '', 500000, 0, 0, 0, 0, '', '', '', '', 'Dưỡng ẩm CLINIQUE GEL 50ml', 'Dưỡng ẩm CLINIQUE GEL 50ml', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 19, 1, 0, 4),
(258, 'Clear Complexion Whitening Face Wash (Himalaya)', '', 130000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-size:14px"><span style="color:#FF0000"><strong>Sữa rửa mặt Himalaya Herbals - Clear Complexion Whitening</strong></span><br />\r\nSữa rửa mặt dạng bọt sử dụng hằng ngày để tẩy rửa và lọc sạch sâu những tạp chất của da, đem lại làn da rạng rỡ, trắng mịn đều màu<br />\r\nSaffron nổi tiếng với tinh chất tăng cường giúp làn da mịn màng xóa tan khuyết điểm của da trong khi Cam Thảo và Dammer trắng giúp điều chỉnh sự tổng hợp melanin phục hồi cân bằng độ ẩm của da. Lựu nuôi dưỡng trong khi Dưa Chuột làm dịu làn da của bạn. Sử dụng buổi sáng và buổi tối cho làn da trắng sáng rạng rỡ<br />\r\nThành phần chính:<br />\r\nCam Thảo. Dammer trắng, Safron, Dưa Chuột, Lựu<br />\r\nFree From: Parabens , SLS/SLES, Phthalates.<br />\r\n<strong><span style="color:#FF0000">Xuất xứ : India<br />\r\nGiá :</span></strong></span>\r\n<ul>\r\n	<li><span style="font-size:14px"><strong><span style="color:#FF0000">Chai 150ml &ndash; 130k</span></strong></span></li>\r\n</ul>\r\n', '', '', 'Clear Complexion Whitening Face Wash (Himalaya)', 'Clear Complexion Whitening Face Wash (Himalaya)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 18, 1, 0, 8),
(259, 'Body Phren Shower Gel Vanilla Milk', '', 300000, 0, 0, 0, 0, '', '<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><span style="color:#FF0000"><strong>Sữa tắm Vanilla Milk&nbsp;</strong></span><br />\r\nChiết xuất từ những dưỡng chất thiên nhiên rất tốt cho sức khỏe người dùng.<br />\r\nKhông chứa các thành phần hóa học ảnh hưởng đến sức khỏe người dùng.<br />\r\nĐược sản xuất theo tiêu chuẩn nghiêm ngặt về an toàn và sức khỏe.<br />\r\nLàm mềm mại làn da, mang lại làn da săn chắc, đàn hồi và mềm mại, đủ độ ẩm.<br />\r\nTăng cường sự trao đổi chất ở da, làm cho da luôn mềm mại và đủ độ ẩm, không khô da.<br />\r\nThích hợp cho mọi loại da.<br />\r\n<span style="color:#FF0000"><strong>Xuất xứ: Hàn Quốc<br />\r\nGiá : 732gr &ndash; 300k</strong></span></span></span><br />\r\n', '', '', 'Body phren shower Gel Vanilla Milk', 'Body phren shower Gel Vanilla Milk', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 25, 1, 0, 1),
(260, 'Body Phren Shower Gel Oriental Rose', '', 300000, 0, 0, 0, 0, '', '<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><span style="color:#FF0000"><strong>Sữa tắm</strong>&nbsp;<strong>Oriental Rose</strong></span><br />\r\nChiết xuất từ những dưỡng chất thiên nhiên rất tốt cho sức khỏe người dùng.<br />\r\nKhông chứa các thành phần hóa học ảnh hưởng đến sức khỏe người dùng.<br />\r\nĐược sản xuất theo tiêu chuẩn nghiêm ngặt về an toàn và sức khỏe.<br />\r\nChiết xuất từ hoa hồng, là loại hoa chuyên dùng cho chăm sóc sắc đẹp và làn da.<br />\r\nLàm mềm mại làn da, mang lại làn da săn chắc, đàn hồi và mềm mại, đủ độ ẩm.<br />\r\nTăng cường sự trao đổi chất ở da, làm cho da luôn mềm mại và đủ độ ẩm, không khô da.<br />\r\nThích hợp cho mọi loại da.<br />\r\n<span style="color:#FF0000"><span style="line-height:1"><strong>Xuất xứ:&nbsp;Hàn Quốc<br />\r\nGiá : 732gr &ndash; 300k</strong></span></span></span></span>', '', '', 'Body phren shower Gel oriental Rose', 'Body phren shower Gel oriental Rose', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 25, 1, 0, 2),
(261, 'Mặt Nạ Xương Rồng Dưỡng Ẩm', '', 280000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="color:#FF0000"><strong>Cây Xương Rồng</strong></span><br />\r\nBất động nơi sa mạc hoang vu vô cùng nóng cháy, vẫn sinh trưởng không ngừng. Thông qua cách chiết xuất thân cây có được gồm Mucopolysaccharide, vitamin C, axit amin vv các tinh chất dưỡng ẩm làm sáng da, khóa chặt các phân tử nước, hỗ trợ cho da cải thiện tình trạng rối loạn thô ráp, trả lại 1 làn da trắng sáng, mịn màng hoàn hảo; Lượng nước dồi dào của xương rồng cung cấp lượng nước cho lớp sâu bên trong da giúp da khôi phục sức sống, dưỡng ẩm giúp bạn có được làn da ngọc băng thanh không tì vết<br />\r\n<span style="color:#FF0000"><strong>Xuất xứ : Đài Loan<br />\r\nDung tích 23ml/ miếng<br />\r\nGiá : 280k/ 8 miếng</strong></span><br />\r\n&nbsp;</span></span>', '', '', 'Mặt Nạ Xương Rồng Dưỡng Ẩm', 'Mặt Nạ Xương Rồng Dưỡng Ẩm', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 17, 1, 1, 6),
(262, 'Mặt Nạ Tổ Yến', '', 280000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong><span style="color:#FF0000">Yến sào thượng hạng</span></strong><br />\r\nTổ yến sinh trưởng trên hang núi cao 1000m so với mực nước biển, có giá trị dinh dưỡng cao ngoài công dụng làm thuốc còn được dùng làm nguyên liệu thực phẩm, trong chứa Acid yến sào, polysaccharides và nguyên tố vi lượng, giúp lớp sừng bị tổn thương như rối loạn, thô ráp, da khô được bảo dưỡng dưỡng ẩm, bảo vệ từ trong ra ngoài đánh bay nếp nhăn nhỏ sạm đen, tăng khả năng hồi phục tái tạo, giúp da săn chắc khôi phục trạng thái sạch sẽ mịn màng của tuổi thanh xuân, giúp da khô ráp được dưỡng ẩm và đàn hồi tối đa.<br />\r\n<strong><span style="color:#FF0000">Xuất xứ : Đài Loan<br />\r\nDung tích 23ml/ miếng<br />\r\nGiá : 280k/ 8 miếng</span></strong></span></span>', '', '', 'Mặt Nạ Tổ Yến', 'Mặt Nạ Tổ Yến', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 17, 1, 1, 6),
(263, 'Mặt Nạ Rượu Vang', '', 280000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="color:#FF0000"><strong>Polyphenol Rượu Vang</strong></span><br />\r\nKhi dùng nho đỏ lên men thành rượu vang sinh ra nguyên tố polyphenol, với đặc tính làm chậm sự lão hóa 1 cách ưu việt có ích trong việc loại trừ tạp chất, ngăn ngừa các phần tử có hại trong môi trường làm tổn thương da, hoạt hóa tế bào da duy trì sức sống sáng mịn tuổi thanh xuân, giã từ da mờ sạm đen, tái tạo làn da căng đàn hồi; Khuôn mặt mịn màng ánh hồng, khí sắc khỏe mạnh trắng sáng ửng hồng.<br />\r\n<strong><span style="color:#FF0000">Xuất xứ : Đài Loan<br />\r\nDung tích 23ml/ miếng<br />\r\nGiá : 280k/ 8 miếng</span></strong></span></span>', '', '', 'Mặt Nạ Rượu Vang', 'Mặt Nạ Rượu Vang', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 17, 1, 1, 7),
(264, 'Mặt Nạ Nha Đam', '', 280000, 0, 0, 0, 0, '', '<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px">&nbsp;<br />\r\n<span style="color:#FF0000"><strong>Lô hội Curaçao</strong></span><br />\r\nGiống nha đam khả năng thích nghi môi trường cực tốt, có thể phát triển trong môi trường khí hậu khô hạn khắc nghiệt, tự nhiên tạo cho nó có khả năng chống lại các tác hại từ môi trường và trữ nước. Phần nha đam sau khi đã lột vỏ mềm mịn chứa tinh chất Mucopolysaccharides giúp cho làn da khô được bổ sung nước và có cơ chế giữ ẩm, khóa phân tử nước làm dịu các kích ứng gây mẩn đỏ từ môi trường, khôi phục làn da giữ nước tràn đầy sức sống.<br />\r\n<strong><span style="color:#FF0000">Xuất xứ : Đài Loan<br />\r\nDung tích 23ml/ miếng<br />\r\nGiá : 280k/ 8 miếng</span></strong></span></span>', '', '', 'Mặt nạ nha đam mềm da', 'Mặt nạ nha đam mềm da', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 17, 1, 1, 8),
(265, 'Mặt Nạ Ngọc Trai', '', 280000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong><span style="color:#FF0000">Ngọc Trai</span></strong><br />\r\nTrong sách y cổ &ldquo;Bản thảo cương mục&rdquo; có ghi ngọc trai có tác dụng giúp cho làn da trắng mịn, từ đó ngọc trai trở thành phương thức làm đẹp được yêu chuộng của quý tộc hoàng thất; Khoa học hiện đại thông qua phân tích bằng thủy phân, ngọc trai có chứa nhiều nguyên tố vi lượng và axit amin, điều trị và xoa dịu khi da không khỏe, duy trì sức phòng vệ hoàn chỉnh của làn da thanh xuân, cung cấp sức sống vô hạn cho làn da khỏe mạnh làm chậm tiến trình lão hóa, nuôi dưỡng 1 làn da sạch sẽ trắng đều<br />\r\n<span style="color:#FF0000"><strong>Xuất xứ : Đài Loan<br />\r\nDung tích 23ml/ miếng<br />\r\nGiá : 280k/ 8 miếng</strong></span></span></span>', '', '', 'Mặt nạ ngọc trai', 'Mặt nạ ngọc trai', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 17, 1, 0, 9),
(266, ' Mặt Nạ Chim Cánh Cụt', '', 280000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><span style="color:#FF0000"><strong>Sông băng nam cực Glycoprotein thấm sâu vào da, có tác dụng giữ ẩm</strong></span><br />\r\nBùn biển Nam cực từ đáy tảng băng trôi trong Glycoprotein băng Nam Cực giàu protein, carbohydrate và acid amin cần thiết cho việc bảo vệ da khỏi các kích thích bên ngoài da, làn da bạn sẽ trở nên sạch mịn màng sau khi sử dụng<br />\r\nThành phần giữ ẩm nước biển hiệu quả để duy trì độ ẩm tự nhiên trên da<br />\r\nCó đặc điểm thân thiện với da tuyệt vời của collagen biển, tảo biển thành phần dưỡng ẩm hiệu quả, cơ chế lưu trữ nước để duy trì làn da được dưỡng ẩm sâu<br />\r\n<strong><span style="color:#FF0000">Xuất xứ : Đài Loan<br />\r\nDung tích 23ml/ miếng<br />\r\nGiá : 280k/ 8 miếng</span></strong></span></span><br />\r\n', '', '', ' Mặt nạ chim cánh cụt', 'Mặt nạ chim cánh cụt', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 17, 1, 0, 9),
(267, 'Hyaluronic Acid Dưỡng Ẩm', '', 280000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><strong><span style="color:#FF0000">Hyaluronic acid</span></strong><br />\r\nThành phần kinh điển giữ nước 3 trong 1 Bổ sung nước, tích nước, khóa nước, thông qua kỹ thuật lên men tạo ra các Hyaluronic acid có phân tử lượng khác nhau, phân tử nhỏ vào tầng sâu trong ba bổ sung nước cho da, phân tử lớn duy trì việc ngậm nước ở lớp sừng và khóa chặt lượng nước ngăn ngừa nước bị thất thoát, để Hyaluronic acid thể hiện khả năng bổ sung nước tuyệt hảo, từ trong ra ngoài duy trì khả năng giữ ẩm liên tục của da, tạo nên làn da đẹp mịn màng<br />\r\n<span style="color:#FF0000"><strong>Xuất xứ : Đài Loan<br />\r\nDung tích 23ml/ miếng<br />\r\nGiá : 280k/ 8 miếng</strong></span></span></span>', '', '', 'Hyaluronic acid dưỡng ẩm', 'Hyaluronic acid dưỡng ẩm', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 17, 1, 1, 0),
(268, 'Mặt Nạ Hoa Hồng ', '', 280000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="color:#FF0000"><strong>Hoa hồng Damascus</strong></span><br />\r\nHoa hồng nổi tiếng quý giá được thế giới công nhận sản xuất tại Bulgaria đông âu. Thông qua việc chưng cất ở nhiệt độ cao rồi ngưng tụ chế tạo ra hoa hồng cực thơm dạng tinh dầu có chứa nhiều vitamin, nguyên tố vi lượng và thành phần polyphenol, bổ sung phân tử nước giúp da không bị tổn thương do khô ráp, hỗ trợ trị các vấn đề về rối loạn da và ngứa ngáy, đồng thời đánh bay tình trạng da đen sạm, đốm đỏ, vàng da, duy trì làn da thanh xuân trắng sáng không tì vết.<br />\r\n<span style="color:#FF0000"><strong>Xuất xứ : Đài Loan<br />\r\nDung tích 23ml/ miếng<br />\r\nGiá : 280k/ 8 miếng</strong></span></span></span>', '', '', 'Mặt nạ hoa hồng', 'Mặt nạ hoa hồng', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 17, 1, 1, 11),
(269, 'Mặt Nạ Đậu Nành', '', 280000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="color:#FF0000"><strong>Natto&nbsp;Mặt nạ đậu nành</strong></span><br />\r\nTheo ghi chép từ dân gian bắt nguồn từ thời kỳ Nhật đô hộ, sau khi nấu chín đậu nành gói bằng rơm lúa hoặc rơm mạch, giữ ở 1 nhiệt độ nhất định sẽ tạo ra loại thực phẩm dính ướt và cái mùi đặc trưng. Beauty Diary áp dụng kỹ thuật lên men natto điêu luyện của Taiwan tạo ra nước lên men natto 3D, natto trong chứa chất Isoflavone, có tác dụng làm dịu, dưỡng ẩm sâu, làm chậm quá trình lão hóa, nhiều tinh chất Polyglutamic Acid khóa phân tử nước vào sâu trong lớp da, cảm nhận cảm giác ẩm ướt siêu tự nhiên, tận hưởng cảm giác làn da mịn màng sáng mịn<br />\r\n<span style="color:#FF0000"><strong>Xuất xứ : Đài Loan<br />\r\nDung tích 23ml/ miếng<br />\r\nGiá : 280k/ 8 miếng</strong></span></span></span>', '', '', 'Mặt nạ đậu nành', 'Mặt nạ đậu nành', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 17, 1, 0, 12),
(270, 'Mặt Nạ Hoa Cúc Kim Tiền', '', 250000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><span style="color:#FF0000"><strong>Mặt Nạ Hoa Cúc Kim Tiền -&nbsp;Bảo vệ thoải mái</strong></span><br />\r\nKết hợp chiết xuất hoa cúc kim tiền, có tác dụng vừa thoải mái, bảo vệ, lành mạnh cho lớp sừng của da, giúp cho làn da đầy sức sống thực vật có thể ngăn ngừa các tổn hại từ môi trường, làn da trở nên trắng sáng, sáng trong như sương mai buổi sớm!<br />\r\n<span style="color:#FF0000"><strong>Xuất xứ : Đài Loan<br />\r\nDung tích 20ml/ miếng<br />\r\nGiá : 250k/ 7miếng</strong></span></span></span>', '', '', 'Mặt nạ hoa cúc kim tiền', 'Mặt nạ hoa cúc kim tiền', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 17, 1, 0, 13),
(271, 'Mặt Nạ Hoa Hồng', '', 250000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong><span style="color:#FF0000">Mặt nạ hoa hồng 7 miếng</span></strong><br />\r\nThoải mái mịn màng<br />\r\nHoa hồng là loài hoa huyền bí có thể giúp da thoải mái mềm mịn, mỗi cánh hoa đều chuyển hóa thành năng lượng làm đẹp da. Tinh dầu hoa hồng hương thơm nhẹ nhàng hoàn toàn được tinh chọn, kết hợp với tinh túy hoa hồng, nhẹ nhàng giữ ẩm cho da đến 2 lần, cùng với phân tử tơ tằm Multi-SilkTM giúp da mịn màng như tơ tằm, dưỡng da giữ ẩm cực tốt giúp da trở nên mịn màng sáng bóng và săn chắc.<br />\r\nGiữ ẩm dưỡng da<br />\r\nCác chiết xuất thực vật dưỡng da giữ ẩm như nhựa phong, rau má và tảo biển, giúp da có sức sống như cây cỏ, cảm nhận sự thanh thoát thoải mái, làn da hoa hồng thoang thoảng hương thơm!<br />\r\n<span style="color:#FF0000"><strong>Xuất xứ : Đài Loan<br />\r\nDung tích 20ml/ miếng<br />\r\nGiá : 250k/ 7 miếng</strong></span></span></span>', '', '', 'Mặt nạ hoa hồng', 'Mặt nạ hoa hồng', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 17, 1, 0, 14),
(272, ' Mặt Nạ Hoa Bách Hợp', '', 250000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><span style="color:#FF0000"><strong>Mặt nạ hoa bách hơp 7 miếng</strong></span><br />\r\nMềm mịn sáng sạch<br />\r\nHoa bách hợp là loài hoa huyền bí có thể giúp da mềm mịn sáng sạch, từng đóa đều có năng lượng giúp làm đẹp da, cùng với lá ô liu, lá trà, với thành phần trắng mịn sạch da Sodium ascorbate phosphate, xây dưng cơ chế da trắng sạch đều khắp, cùng với phân tử tơ tằm Multi-SilkTM giúp da mịn màng như tơ tằm, dưỡng da giữ ẩm cực tốt giúp da trở nên mịn màng sáng bóng và săn chắc.<br />\r\n<span style="color:#FF0000"><strong>Xuất xứ : Đài Loan<br />\r\nDung tích 20ml/ miếng<br />\r\nGiá : 250k/ 7 miếng</strong></span><br />\r\n&nbsp;</span></span>', '', '', ' Mặt nạ hoa bách hợp', 'Mặt nạ hoa bách hợp', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 17, 1, 1, 15);
INSERT INTO `product` (`id`, `title`, `feature`, `price`, `price_reduce`, `in_stock`, `condition`, `brand_id`, `detail`, `content`, `teach`, `video`, `meta_keyword`, `meta_description`, `manual`, `e_manual`, `promotion`, `e_promotion`, `e_title`, `e_feature`, `e_detail`, `e_content`, `e_teach`, `e_meta_keyword`, `e_meta_description`, `pd_option`, `lnk`, `e_lnk`, `pId`, `active`, `home`, `ind`) VALUES
(273, 'Mặt Nạ Tảo Lục Sahara', '', 280000, 0, 0, 0, 0, '', '<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><strong><span style="color:#FF0000">Mặt Nạ Tảo Lục Sahara - cân bằng làm sạch</span></strong><br />\r\nChiết xuất tảo lục sa mạc sahara, chứa nhiều phân tử cân bằng điều tiết trữ nước thích ứng với khí hậu khắc nghiệt, kết hợp với hiệu quả cộng dồn của các phân tử thẩm thấu nhanh chóng Aquaroad&trade; ｘ Tinysome ｘ Cosphingo&trade;, ngăn chặn bã nhờn bài tiết quá độ, giúp da không còn bị tình trạng bóng nhờn.<br />\r\n<strong><span style="color:#FF0000">Xuất xứ : Đài Loan<br />\r\nDung tích 23ml/ miếng<br />\r\nGiá : 280k/ 8 miếng</span></strong></span></span><br />\r\n&nbsp;', '', '', 'Mặt Nạ Tảo Lục Sahara', 'Mặt Nạ Tảo Lục Sahara', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 17, 1, 1, 15),
(274, ' Sữa Rửa Mặt Himalaya Herbals', '', 130000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-size:14px"><strong><span style="color:#FF0000">Sữa rửa mặt Himalaya Herbals &ndash; Oil Control Lemon Face Wash</span></strong><br />\r\nSữa rửa mặt Chanh kiểm soát dầu thừa cho làn da nhờn<br />\r\nNhững gì nó làm:<br />\r\nSữa rửa mặt Kiểm soát dầu Lemon của Himalaya là một công thức xà phòng thảo dược nhẹ nhàng làm sạch khuôn mặt của bạn và loại bỏ dầu thừa. Pha trộn với Chanh, một tác nhân làm se và làm mát, trong đó có Mật Ong tự nhiên với đặc tính làm sạch sâu tự nhiên đồng thời không làm khô da<br />\r\nThành phần chính:<br />\r\nChanh có tác dụng làm dịu và làm se khít lỗ chân lông. Các chuỗi axit citric trong Chanh làm sáng và làm mềm làn da của bạn. Nó cũng giúp vết tàn nhang , các đốm đồi mồi mờ dần và loại bỏ mụn đầu đen. Lemon loại bỏ bụi bẩn giúp làn da của bạn cảm giác mềm mại và mịn màng.<br />\r\nMật Ong là rất có lợi cho da vì nó thu hút nước để duy trì độ ẩm cũng như cung cấp dinh dưỡng cho da. Nó cũng là một chất khử trùng tự nhiên vì nó có chứa các tác nhân kháng khuẩn, tiêu diệt vi khuẩn.<br />\r\nFree From: Parabens , SLS/SLES, Phthalates.<br />\r\n<strong><span style="color:#FF0000">Xuất xứ : India<br />\r\nGiá:<br />\r\n150ml &ndash; 130k</span></strong></span>', '', '', ' Sữa Rửa Mặt Himalaya Herbals', 'Sữa Rửa Mặt Himalaya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 18, 1, 0, 16),
(276, 'Dưỡng ẩm CLINIQUE GEL-15ml', '', 195000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><strong><span style="color:#FF0000">Kem Dưỡng Ẩm Clinique dòng Dramatically Different Moisturizing Lotion</span></strong><br />\r\nĐây là lọ kem đầu tiên mang thương hiệu Clinique gần hơn đến với người dùng , đến tận hôm nay nó vẫn giữ vị trí bestseller của hãng<br />\r\nThành phần gồm Nước và các chất hút ẩm kinh điểm:<br />\r\nGlycerin chất tạo ẩm kinh điển<br />\r\nUrea, Sodium Hyaluronate : một thành phần được ưa chuộng trong việc cấp ẩm<br />\r\nOcclusiver : hoạt chất giữ ẩm<br />\r\nMột lượng nhỏ Mineral Oil (dầu khoáng) được bác sĩ da liễu Mỹ khẳng định hoàn toàn an toàn với da<br />\r\nNhà sản xuất cam kết điều gì:<br />\r\nCam kết không chứa hương liệu<br />\r\nTăng cường độ ẩm cho da<br />\r\nCấp nước cả ngày<br />\r\nPhục hồi vẻ tươi trẻ cho da<br />\r\n<strong><span style="color:#FF0000">Xuất xứ : Mỹ<br />\r\nGiá : 15ml &ndash; 195k</span></strong></span></span>', '', '', 'Dưỡng ẩm CLINIQUE GEL-15ml', 'Dưỡng ẩm CLINIQUE GEL-15ml', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 19, 1, 0, 11),
(277, 'Dưỡng ẩm CLINIQUE GEL-50ml', '', 500000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><span style="color:#FF0000"><strong>Kem Dưỡng Ẩm Clinique dòng Dramatically Different Moisturizing Gel</strong></span><br />\r\nNgay từ cái tên, em nó đã muốn mình nổi bật: <strong>Dramatically Different</strong>-thật sự khác biệt<br />\r\nCứ 5 giây trên thế giới lại có một lọ dưỡng Dramatically Different được bán ra<br />\r\nNhà sản xuất cam kết điều gì:<br />\r\nCam kết không chưa hương liệu<br />\r\nTăng cường độ ẩm cho da<br />\r\nCấp nước cả ngày<br />\r\nPhục hồi vẻ tươi trẻ cho da<br />\r\nVới phiên bản <strong>Gel</strong>, Clinique nhấn mạnh<br />\r\nCấp nước không dầu<br />\r\nKết cấu nhẹ dịu<br />\r\nDùng tốt nhất cho da dầu, hoặc một loại kem dưỡng nhẹ nhàng cho mùa hè<br />\r\nThành phần nổi bật<br />\r\nDimethicone ( dẫn xuất Silicone) chiếm ngô nhì bảng chỉ sau Water, chất này đóng vai trò làm mềm mịn bề mặt da, khóa ẩm.<br />\r\nButylen Glycol giúp hấp thụ nhanh dưỡng chất từ kem dưỡng.<br />\r\nGlycerin chất tạo ẩm kinh điển<br />\r\nSodium Hyaluronate dẫn xuất&nbsp; Hyaluronic acid<br />\r\nTocopheryl Acetate hay còn gọi là Vitamin E Actate<br />\r\nCafeine giúp da phục hồi chống oxi hóa, kháng viêm<br />\r\nNgoài ra còn có cả chiết xuất dưa leo, lúa mạch, hướng dương...​<br />\r\n<span style="color:#FF0000"><strong>Xuất xứ : Mỹ<br />\r\nGiá : 50ml &ndash; 500k</strong></span></span></span><br />\r\n&nbsp;', '', '', 'Dưỡng ẩm CLINIQUE GEL-50ml', 'Dưỡng ẩm CLINIQUE GEL-50ml', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 19, 1, 0, 12),
(278, 'Dưỡng ẩm CLINIQUE GEL-125ml ', '', 750000, 0, 0, 0, 0, '', '<span style="font-size:14px"><span style="color:#FF0000"><strong>Kem Dưỡng Ẩm Clinique dòng Dramatically Different Moisturizing Gel</strong></span><br />\r\nNgay từ cái tên, em nó đã muốn mình nổi bật: Dramatically Different-thật sự khác biệt<br />\r\nCứ 5 giây trên thế giới lại có một lọ dưỡng Dramatically Different được bán ra<br />\r\nNhà sản xuất cam kết điều gì:<br />\r\nCam kết không chưa hương liệu<br />\r\nTăng cường độ ẩm cho da<br />\r\nCấp nước cả ngày<br />\r\nPhục hồi vẻ tươi trẻ cho da<br />\r\nVới phiên bản Gel, Clinique nhấn mạnh<br />\r\nCấp nước không dầu<br />\r\nKết cấu nhẹ dịu<br />\r\nDùng tốt nhất cho da dầu, hoặc một loại kem dưỡng nhẹ nhàng cho mùa hè<br />\r\nThành phần nổi bật<br />\r\nDimethicone ( dẫn xuất Silicone) chiếm ngô nhì bảng chỉ sau Water, chất này đóng vai trò làm mềm mịn bề mặt da, khóa ẩm.<br />\r\nButylen Glycol giúp hấp thụ nhanh dưỡng chất từ kem dưỡng.<br />\r\nGlycerin chất tạo ẩm kinh điển<br />\r\nSodium Hyaluronate dẫn xuất &nbsp;Hyaluronic acid<br />\r\nTocopheryl Acetate hay còn gọi là Vitamin E Actate<br />\r\nCafeine giúp da phục hồi chống oxi hóa, kháng viêm<br />\r\nNgoài ra còn có cả chiết xuất dưa leo, lúa mạch, hướng dương...<br />\r\n<span style="color:#FF0000"><strong>Xuất xứ : Mỹ<br />\r\nGiá :&nbsp;125ml- 750k</strong></span></span><br />\r\n<br />\r\n', '', '', 'Dưỡng ẩm CLINIQUE GEL-125ml ', 'Dưỡng ẩm CLINIQUE GEL-125ml ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 19, 1, 0, 13),
(279, 'Dưỡng ẩm CLINIQUE LOTION-15ml', '', 195000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><strong><span style="color:#FF0000">Kem Dưỡng Ẩm Clinique dòng Dramatically Different Moisturizing Gel</span></strong><br />\r\nNgay từ cái tên, em nó đã muốn mình nổi bật: <strong>Dramatically Different</strong>-thật sự khác biệt<br />\r\nCứ 5 giây trên thế giới lại có một lọ dưỡng Dramatically Different được bán ra<br />\r\nNhà sản xuất cam kết điều gì:<br />\r\nCam kết không chưa hương liệu<br />\r\nTăng cường độ ẩm cho da<br />\r\nCấp nước cả ngày<br />\r\nPhục hồi vẻ tươi trẻ cho da<br />\r\nVới phiên bản <strong>Gel</strong>, Clinique nhấn mạnh<br />\r\nCấp nước không dầu<br />\r\nKết cấu nhẹ dịu<br />\r\nDùng tốt nhất cho da dầu, hoặc một loại kem dưỡng nhẹ nhàng cho mùa hè<br />\r\nThành phần nổi bật<br />\r\nDimethicone ( dẫn xuất Silicone) chiếm ngô nhì bảng chỉ sau Water, chất này đóng vai trò làm mềm mịn bề mặt da, khóa ẩm.<br />\r\nButylen Glycol giúp hấp thụ nhanh dưỡng chất từ kem dưỡng.<br />\r\nGlycerin chất tạo ẩm kinh điển<br />\r\nSodium Hyaluronate dẫn xuất&nbsp; Hyaluronic acid<br />\r\nTocopheryl Acetate hay còn gọi là Vitamin E Actate<br />\r\nCafeine giúp da phục hồi chống oxi hóa, kháng viêm<br />\r\nNgoài ra còn có cả chiết xuất dưa leo, lúa mạch, hướng dương...​<br />\r\n<strong><span style="color:#FF0000">Xuất xứ : Mỹ<br />\r\nGiá : 15ml &ndash; 195k</span></strong></span></span>', '', '', 'Dưỡng ẩm CLINIQUE LOTION-15ml', 'Dưỡng ẩm CLINIQUE LOTION-15ml', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 19, 1, 0, 14),
(280, 'Dưỡng ẩm CLINIQUE LOTION-50ml', '', 500000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><span style="color:#FF0000"><strong>Kem Dưỡng Ẩm Clinique dòng Dramatically Different Moisturizing Gel</strong></span><br />\r\nNgay từ cái tên, em nó đã muốn mình nổi bật: Dramatically Different-thật sự khác biệt<br />\r\nCứ 5 giây trên thế giới lại có một lọ dưỡng Dramatically Different được bán ra<br />\r\nNhà sản xuất cam kết điều gì:<br />\r\nCam kết không chưa hương liệu<br />\r\nTăng cường độ ẩm cho da<br />\r\nCấp nước cả ngày<br />\r\nPhục hồi vẻ tươi trẻ cho da<br />\r\nVới phiên bản Gel, Clinique nhấn mạnh<br />\r\nCấp nước không dầu<br />\r\nKết cấu nhẹ dịu<br />\r\nDùng tốt nhất cho da dầu, hoặc một loại kem dưỡng nhẹ nhàng cho mùa hè<br />\r\nThành phần nổi bật<br />\r\nDimethicone ( dẫn xuất Silicone) chiếm ngô nhì bảng chỉ sau Water, chất này đóng vai trò làm mềm mịn bề mặt da, khóa ẩm.<br />\r\nButylen Glycol giúp hấp thụ nhanh dưỡng chất từ kem dưỡng.<br />\r\nGlycerin chất tạo ẩm kinh điển<br />\r\nSodium Hyaluronate dẫn xuất &nbsp;Hyaluronic acid<br />\r\nTocopheryl Acetate hay còn gọi là Vitamin E Actate<br />\r\nCafeine giúp da phục hồi chống oxi hóa, kháng viêm<br />\r\nNgoài ra còn có cả chiết xuất dưa leo, lúa mạch, hướng dương...<br />\r\n<strong><span style="color:#FF0000">Xuất xứ : Mỹ<br />\r\nGiá : 50ml &ndash; 500k</span></strong></span></span><br />\r\n', '', '', 'Dưỡng ẩm CLINIQUE LOTION-50ml', 'Dưỡng ẩm CLINIQUE LOTION-50ml', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 19, 1, 0, 14),
(281, 'Dưỡng ẩm CLINIQUE LOTION-125ml', '', 750000, 0, 0, 0, 0, '', '<br />\r\n<span style="color:#FF0000"><strong>Kem Dưỡng Ẩm Clinique dòng Dramatically Different Moisturizing Gel</strong></span><br />\r\nNgay từ cái tên, em nó đã muốn mình nổi bật: <strong>Dramatically Different</strong>-thật sự khác biệt<br />\r\nCứ 5 giây trên thế giới lại có một lọ dưỡng Dramatically Different được bán ra<br />\r\nNhà sản xuất cam kết điều gì:<br />\r\nCam kết không chưa hương liệu<br />\r\nTăng cường độ ẩm cho da<br />\r\nCấp nước cả ngày<br />\r\nPhục hồi vẻ tươi trẻ cho da<br />\r\nVới phiên bản <strong>Gel</strong>, Clinique nhấn mạnh<br />\r\nCấp nước không dầu<br />\r\nKết cấu nhẹ dịu<br />\r\nDùng tốt nhất cho da dầu, hoặc một loại kem dưỡng nhẹ nhàng cho mùa hè<br />\r\nThành phần nổi bật<br />\r\nDimethicone ( dẫn xuất Silicone) chiếm ngô nhì bảng chỉ sau Water, chất này đóng vai trò làm mềm mịn bề mặt da, khóa ẩm.<br />\r\nButylen Glycol giúp hấp thụ nhanh dưỡng chất từ kem dưỡng.<br />\r\nGlycerin chất tạo ẩm kinh điển<br />\r\nSodium Hyaluronate dẫn xuất&nbsp; Hyaluronic acid<br />\r\nTocopheryl Acetate hay còn gọi là Vitamin E Actate<br />\r\nCafeine giúp da phục hồi chống oxi hóa, kháng viêm<br />\r\nNgoài ra còn có cả chiết xuất dưa leo, lúa mạch, hướng dương...​<br />\r\n<strong><span style="color:#FF0000">Xuất xứ : Mỹ<br />\r\nGiá : 125ml- 750k</span></strong><br />\r\n<br />\r\n&nbsp;', '', '', 'Dưỡng ẩm CLINIQUE LOTION-125ml', 'Dưỡng ẩm CLINIQUE LOTION-125ml', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 19, 1, 0, 15),
(282, 'Sữa Rửa Mặt Himalaya Herbals ', '', 130000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-size:14px"><span style="color:#FF0000"><strong>Sữa rửa mặt Himalaya Herbals &ndash; Purifying Neen Face Wash</strong></span><br />\r\nCông thức đặc biệt&nbsp; giúp làm sạch, giải quyết vấn đề của da, giúp mềm mịn, sử dụng sữa rửa mặt hằng ngày có thể giúp loại bỏ dầu thừa và các tạp chất mà không quá khô. Chiết xuất Neem &ndash; nổi tiếng với thuộc tính kháng khuẩn của nó, diệt vi khuẩn gây nên các vấn đề về da. Kết hợp với Nghệ, nó giúp kiểm soát mụn trứng cá để lại làn da của bạn mềm mại, thoáng sạch, sảng khoái.<br />\r\nThành phần chính:<br />\r\nNeem, Nghệ<br />\r\nFree From: Parabens , SLS/SLES, Phthalates.<br />\r\n<strong><span style="color:#FF0000">Xuất xứ : India<br />\r\nGiá:<br />\r\n150ml &ndash; 130k</span></strong></span>', '', '', 'Sữa Rửa Mặt Himalaya Herbals ', 'Sữa Rửa Mặt Himalaya Herbals ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 18, 1, 0, 16),
(283, 'Sữa Rửa Mặt Himalaya Herbals ', '', 130000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-size:14px"><span style="color:#FF0000"><strong>Sữa rửa mặt Himalaya Herbals &ndash; Gentle Exfoliating Daily Face Wash</strong></span><br />\r\nSữa rửa mặt hằng ngày nhẹ nhàng tẩy tế bào chết<br />\r\nSữa rửa mặt dạng bọt có thể sử dụng hằng ngày có hiểu quả làm sạch làn da của bạn và nhẹ nhàng làm tróc các tế bào da chết. Hạt mơ nhẹ nhàng chà xát để loại bỏ tế bào chết, giúp kích thích tăng trưởng tế bào mới và ngăn chặn sự hình thành của mụn đầu đen. Neem và Chanh làm sạch sâu và loại bỏ dầu thừa trong khi Aloe Vera giúp làm dịu da của bạn và duy trì cân bằng độ ẩm tự nhiên của nó, để lại làn da của bạn tươi, trẻ trung và rạng rỡ, ngày này qua ngày khác.<br />\r\nThành phần chính:<br />\r\nApricot, Aloe Vera, Neem, Chanh, Đỏ Đậu Lăng.<br />\r\nFree From: Parabens , SLS/SLES, Phthalates.<br />\r\n<strong><span style="color:#FF0000">Xuất xứ : India<br />\r\nGiá:<br />\r\n150ml &ndash; 130k</span></strong></span><br />\r\n', '', '', 'Sữa rửa mặt Himalaya Herbals ', 'Sữa rửa mặt Himalaya Herbals ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 18, 1, 0, 17),
(284, 'Kem Nền Bourjois', '', 330000, 0, 0, 0, 0, '', '<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><span style="line-height:1"><span style="color:#FF0000"><strong>Kem nền Bourjois Mix Serum</strong></span><br />\r\nMix Serum Gel Bourjois - làm từ công thức giàu Vitamin Trái Cây cho một làn da phẳng mịn và hiệu ứng rạng rỡ ngay tức thì<br />\r\nKết cấu Gel thấm nhanh như serum, kem chạm đến đâu là tệp vào da đến đấy,&nbsp; không nhờn dính, lướt nhẹ trên da cho một bề mặt phẳng mịn, tự nhiên không có cảm giác dày mặt. khuyết điểm được xoá hoàn toàn một cách tự nhiên nhất, lấp đầy các lỗ chân lông, cấp ẩm cho làn da khô hiểu quả và duy trì vẻ rạng rỡ của làn da lên đến tận 16 giờ .<br />\r\nCông thức chứa Vải, Dâu Goji và Lựu để chống lại dấu hiệu của sự mệt mỏi để lại làn da tỏa sáng<br />\r\n<strong><span style="color:#FF0000">Xuất xứ : Pháp<br />\r\n52 &ndash; dành cho da sáng; 53 &ndash; dành cho da trung bình<br />\r\nGiá&nbsp; : 30ml &ndash; 330k</span></strong></span></span></span>', '', '', 'Kem Nền Bourjois', 'Kem Nền Bourjois', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 23, 1, 0, 0),
(286, 'Mặt Nạ Ngọc Trai Trắng', '', 280000, 0, 0, 0, 0, '', '<br />\r\n<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="color:#FF0000"><strong>Mặt Nạ Ngọc Trai Trắng 8 miếng</strong></span><br />\r\nCông dụng :<br />\r\nLàm sáng phục hồi làn da mệt mỏi, bị xỉn màu<br />\r\nThành phần chính :bột ngọc trai và Amino Acid giúp sáng da, đem lại vẻ trắng sáng<br />\r\nVitamin b và rong biển giúp nuôi dưỡng, cấp ẩm cho da, giúp loại bỏ làn da xỉn màu<br />\r\n<span style="color:#FF0000"><strong>Xuất xứ : Đài Loan<br />\r\nDung tích 23ml/ miếng<br />\r\nGiá : 280k/ 8 miếng</strong></span></span></span><br />\r\n', '', '', 'Mặt Nạ Ngọc Trai', 'Mặt Nạ Ngọc Trai', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 17, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_cate`
--

CREATE TABLE IF NOT EXISTS `product_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `sum` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `e_title` text NOT NULL,
  `e_sum` text NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `img` text NOT NULL,
  `icon` text NOT NULL,
  `pId` int(11) NOT NULL,
  `lev` int(11) NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `product_cate`
--

INSERT INTO `product_cate` (`id`, `title`, `sum`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_meta_keyword`, `e_meta_description`, `img`, `icon`, `pId`, `lev`, `ind`, `active`) VALUES
(17, 'Mặt Nạ', '', 'MẶT NẠ HANA', 'MẶT NẠ HANA', '', '', '', '', '', '', 0, 1, 1, 1),
(18, 'Sữa Rửa Mặt', '', 'SỮA RỬA MẶT HANA', 'SỮA RỬA MẶT HANA', '', '', '', '', '', '', 0, 1, 2, 1),
(19, 'Dưỡng Ẩm ', '', 'DƯỠNG ẨM HANA ', 'DƯỠNG ẨM HANA ', '', '', '', '', '', '', 0, 1, 3, 1),
(20, 'Tẩy Trang', '', 'TẨY TRANG HANA ', 'TẨY TRANG HANA ', '', '', '', '', '', '', 0, 1, 4, 1),
(21, 'Son Dưỡng', '', 'SON DƯỠNG HANA', 'SON DƯỠNG HANA', '', '', '', '', '', '', 0, 1, 5, 1),
(22, 'Tinh Chất Dưỡng Da', '', 'TINH CHẤT DƯỠNG DA', 'TINH CHẤT DƯỠNG DA', '', '', '', '', '', '', 0, 1, 6, 1),
(23, 'Kem Dưỡng Da', '', 'KÈM DƯỠNG DA', 'KÈM DƯỠNG DA', '', '', '', '', '', '', 0, 1, 7, 1),
(24, 'Serum', '', 'SERUM HANA', 'SERUM HANA', '', '', '', '', '', '', 0, 1, 8, 1),
(25, 'Sữa Tắm', '', 'SỮA TẮM HANA', 'SỮA TẮM HANA', '', '', '', '', '', '', 0, 1, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE IF NOT EXISTS `product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` text NOT NULL,
  `pId` int(11) NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pId` (`pId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=292 ;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`id`, `img`, `pId`, `ind`, `active`) VALUES
(240, '1484638750...MẶT NẠ NGỌC TRAI  ĐEN Tahiti 5 miếng 250k.png', 234, 1, 1),
(241, '1484639430Toner SIMPLE220K.JPG', 235, 1, 1),
(242, '1484639511Tinh chất Caviar trứng cá đen chống lão hóa natura siberca 550k.jpg', 236, 1, 1),
(243, '148463985015277795_1229301890469994_5392745736968339456_n.jpg', 237, 1, 1),
(244, '1484639803Tea tree oil 20ml 320k.JPG', 238, 2, 1),
(245, '1484640042Tea tree oil 10ml 190k.JPG', 239, 3, 1),
(246, '148500145021-01-2017 7-23-45 CH.png', 240, 2, 1),
(247, '1484640305Tẩy trang BIO hồng 500ml 490k.JPG', 241, 3, 1),
(248, '148500176221-01-2017 7-28-48 CH.png', 242, 4, 1),
(249, '1484640937tẩy tế bào chết natura siberca 195k.JPG', 243, 1, 1),
(250, '1484641075sửa rửa mặt neutrogena 245k.JPG', 244, 5, 1),
(251, '148471419918-01-2017 11-36-14 SA.png', 245, 5, 1),
(252, '148471425918-01-2017 11-36-55 SA.png', 246, 7, 1),
(253, '1484641303Sữa rửa mặt CeraVe 355k.PNG', 247, 8, 1),
(254, '1484641364Sữa rửa mặt CeraVe 355k.JPG', 248, 9, 1),
(255, '1484641470Son dưỡng NUXE 280k.jpg', 249, 1, 1),
(256, '1484641515Son dưỡng NUXE 160k.jpg', 250, 2, 1),
(257, '148471438318-01-2017 11-38-54 SA.png', 251, 5, 1),
(258, '1484641619mặt nạ thải độc natura siberca 160k.JPG', 252, 6, 1),
(259, '1484711793Kem mắt SIMPLE 220K.JPG', 253, 5, 1),
(260, '148471440818-01-2017 11-38-23 SA.png', 254, 6, 1),
(261, '1484711989kem chống lão hóa anti-age natura siberca 350K.JPG', 255, 7, 1),
(262, '1484712051Dưỡng ẩm CLINIQUE GEL-125ml 750k.JPG', 256, 3, 1),
(263, '1484712104Dưỡng ẩm CLINIQUE GEL-50ml 500k.JPG', 257, 4, 1),
(264, '148471255218-01-2017 11-08-26 SA.png', 258, 8, 1),
(265, '148471292918-01-2017 11-14-54 SA.png', 259, 1, 1),
(266, '148471297918-01-2017 11-15-07 SA.png', 260, 2, 1),
(267, '148471322518-01-2017 11-18-25 SA.png', 261, 6, 1),
(268, '148471331418-01-2017 11-19-24 SA.png', 262, 6, 1),
(269, '1484713429.rượu vang 280k.JPG', 263, 7, 1),
(270, '1484713505.nha đam - mềm da 280k.JPG', 264, 8, 1),
(271, '1484713557.ngọc trai đen 280k.JPG', 265, 8, 1),
(272, '1484713607.mặt nạ chim cánh cụt 280K.jpg', 266, 9, 1),
(273, '1484713791.hyaluronic acid - dưỡng ẩm  280k.JPG', 267, 0, 1),
(274, '1484713855.hoa hồng se lỗ chân lông 280k.JPG', 268, 11, 1),
(275, '1484713895.đậu nành dưỡng ẩm 280k.JPG', 269, 12, 1),
(276, '1484713962..NẠ HOA CÚC KIM TIỀN  7 MIẾNG 250k.png', 270, 13, 1),
(277, '1484714019..MẶT NẠ HOA HỒNG 7 MIẾNG 250k.png', 271, 14, 1),
(278, '1484714076..mặt nạ hoa bách hợp 7 miếng 250K.png', 272, 15, 1),
(279, '148482987912.MẶT NẠ TẢO LỤC SAHARA 280k.png', 273, 15, 1),
(280, '148487849720-01-2017 9-12-46 SA.png', 274, 15, 1),
(282, '148487900320-01-2017 9-20-32 SA.png', 276, 11, 1),
(283, '148487910920-01-2017 9-18-39 SA.png', 277, 12, 1),
(284, '148487916820-01-2017 9-18-25 SA.png', 278, 13, 1),
(285, '148487926320-01-2017 9-19-22 SA.png', 279, 13, 1),
(286, '148487932020-01-2017 9-20-09 SA.png', 280, 14, 1),
(287, '148487936320-01-2017 9-19-45 SA.png', 281, 15, 1),
(288, '148500062720-01-2017 9-12-22 SA.png', 282, 16, 1),
(289, '148500119718-01-2017 11-07-20 SA.png', 283, 17, 1),
(290, '148500366921-01-2017 8-00-53 CH.png', 284, 1, 1),
(291, '1485005037.ngọc trai 280k.JPG', 286, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `sum` text NOT NULL,
  `content` longtext NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `e_title` text NOT NULL,
  `e_sum` text NOT NULL,
  `e_content` longtext NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `pId` int(11) DEFAULT NULL,
  `maps` text NOT NULL,
  `city` int(11) NOT NULL,
  `district` int(11) NOT NULL,
  `img` text NOT NULL,
  `date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `home` tinyint(4) NOT NULL DEFAULT '0',
  `ind` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE IF NOT EXISTS `promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `sum` text NOT NULL,
  `content` longtext NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `e_title` text NOT NULL,
  `e_sum` text NOT NULL,
  `e_content` longtext NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `pId` int(11) NOT NULL,
  `maps` text NOT NULL,
  `city` int(11) NOT NULL,
  `district` int(11) NOT NULL,
  `img` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `home` tinyint(4) NOT NULL DEFAULT '0',
  `ind` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pId` (`pId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`id`, `title`, `sum`, `content`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_content`, `e_meta_keyword`, `e_meta_description`, `pId`, `maps`, `city`, `district`, `img`, `active`, `home`, `ind`) VALUES
(1, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '<p>Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.</p>\r\n\r\n<p>Chồng làm giám đốc một công ty lớn trong ngành truyền thông, gia đình có đến 2 người giúp việc, chị Thu ở Núi Trúc, Hà Nội, vẫn giữ thói quen tự nấu nướng cho cả gia đình. Chồng cùng 2 cậu con trai của chị cũng chỉ thích ăn những món do nội tướng chế biến.</p>\r\n\r\n<p>&quot;Nhiều món ăn tuy đơn giản nhưng vẫn cần bí quyết chế biến riêng nên người khác nấu không hợp khẩu vị khiến chồng con tôi không ưng. Hai cô giúp việc chỉ phải dọn dẹp với giặt giũ, còn đi chợ hay nấu nướng thì tôi tự thu xếp công việc và thời gian để làm&quot;, chị Thu nói.</p>\r\n\r\n<p>Không ít lần chị Thu &quot;mất điểm&quot; vì công việc quá lu bu. Chị kể, đặt nồi cá kho lên bếp định một tiếng rưỡi tiếng xuống tắt lửa là vừa, nhưng mải quyết toán doanh thu cuối tháng của công ty nên chị quên mất. Ngửi thấy mùi khét, chị chạy xuống bếp thì nồi cá đã sắp thành than.</p>\r\n\r\n<p>Chia sẻ với bạn, chị Thu được mách về loại bếp điện từ hồng ngoại - kết hợp tính năng điện từ với hồng ngoại, có hẹn giờ nên tránh được tối đa những sơ suất tương tự &quot;vụ nồi cá&quot;. Ngoài ra, dùng loại bếp này, thời gian nấu nhanh, nấu được với tất cả các loại nồi chứ không bị bó hẹp như bếp từ. Cân nhắc mãi, chị Thu quyết định mua một chiếc dù mức giá khá cao, 45 triệu đồng cho loại 4 bếp.</p>\r\n\r\n<p>&quot;Chi phí ban đầu hơi cao nhưng tiết kiệm được thời gian nấu, tính ra chưa đầy 30 phút là xong bữa tối. Con cái còn nhỏ, ở nhà cả ngày với người giúp việc, mà gần đây xảy ra nhiều vụ nổ gas nên tôi càng lo, quyết tâm đầu tư bếp từ hồng ngoại để đảm bảo an toàn cho cả nhà&quot;, chị Thu tâm sự. Ngoài ra, mặt bếp sáng bóng, hợp với không gian căn bếp sang trọng mà vợ chồng chị đã cất công thiết kế, khiến chị Thu không tiếc khoản tiền gần 50 triệu đồng đã bỏ ra để mua.</p>\r\n\r\n<p>Chị Tiến ở Mỹ Đình, Hà Nội, phu nhân giám đốc chi nhánh của công ty dược có tiếng, cũng chọn bếp điện từ hồng ngoại cho gian bếp nhà mình. Chị lý giải, ngoài lý do an toàn, hình thức bắt mắt và nấu nướng nhanh, bếp có giá trị sử dụng cao, giảm được chi phí hằng tháng so với dùng các loại bếp thông thường.</p>\r\n\r\n<p>Theo chị, nếu dùng bếp gas, trung bình mỗi tháng gia đình chị hết khoảng 250.000 đồng. Từ khi chuyển sang dùng bếp từ hồng ngoại, cắt giảm được chi phí gas, chị tính toán thấy số tiền điện chỉ tăng thêm từ 120.000 đồng đến 150.000 đồng so với trước. Định kỳ hằng năm, chị không phải thay van gas, dây nối..., tuổi thọ của loại bếp này cũng gấp 2-3 lần so với bếp gas. Chưa kể, do có nhiều chức năng tự động như tự ngắt khi gặp vật thể lạ hoặc người dùng quên tắt... nên thiết bị nhà bếp này khá an toàn.</p>\r\n\r\n<p>&quot;Tôi thấy giá khá cao nhưng &#39;đắt xắt ra miếng&#39;, đầu tư lớn ban đầu mà chi phí dùng về sau rẻ hơn khá nhiều nên tính về lâu dài thì tiết kiệm hơn. Một điểm nữa tôi rất thích là trời nóng vẫn có thể bật quạt hướng thẳng vào vị trí đứng nấu mà không sợ bị tản nhiệt như nấu bằng bếp gas&quot;, chị Tiến giải thích.</p>\r\n\r\n<p>Xuất hiện chưa lâu và có mức giá khá cao song bếp điện từ hồng ngoại đã được khá nhiều bà nội trợ đầu tư chọn lựa. Giá bếp dao động từ 20 đến trên 40 triệu đồng mỗi chiếc, tùy vào xuất xứ, vật liệu và số lượng mặt bếp. Ông Phạm Đức Tuân, Giám đốc kinh doanh ngành hàng bếp của Kangaroo, một những doanh nghiệp vừa tung ra dòng sản phẩm bếp điện từ hồng ngoại cao cấp cho biết, chỉ trong vòng 2 tháng, số lượng bán ra đã hơn 5.000 chiếc, trong đó, doanh số tháng sau cao hơn tháng trước 30%.</p>\r\n\r\n<p>Trao đổi với&nbsp;<em>VnExpress.net</em>, ông cho biết, so với bếp gas, bếp điện từ hồng ngoại Kangaroo có hiệu suất hấp thụ nhiệt cao đến 90%, trong khi bếp gas đạt 55%, bếp điện thông thường đạt khoảng 65%. Theo đó, nếu chuyển từ bếp gas sang bếp điện từ hồng ngoại, người tiêu dùng tiết kiệm được đến 40% chi phí nhiên liệu cho việc đun nấu, thời gian nấu nướng cũng vì thế mà nhanh gấp 2-3 lần.</p>\r\n\r\n<p>Hai bộ phận quan trọng nhất của bếp là mặt kính và bộ gia nhiệt đều được nhập khẩu từ các hãng danh tiếng của Đức là Schott và Ego, đảm bảo độ bền và hiệu suất ra nhiệt tối đa. Ngoài ra với độ dày 4 mm, bếp có khả năng chịu lực và chịu nhiệt lên đến 800 độ C. Nhiệt độ được truyền thẳng đứng đến đáy nồi, nhiệt năng không bị thất thoát ra không khí.</p>\r\n\r\n<p>Tuy nhiên, vị chuyên gia khẳng định, dù sử dụng bất kỳ loại bếp nào, người nội trợ cũng nên vệ sinh, bảo trì thiết bị thường xuyên, giữ không khí trong phòng bếp lưu thông, thoáng mát... để đảm bảo chất lượng sản phẩm.</p>\r\n', '', '', 0, '<iframe src="https://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=Kuningan,+Jakarta+Capital+Region,+Indonesia&aq=3&oq=kuningan+&sll=37.0625,-95.677068&sspn=37.410045,86.572266&ie=UTF8&hq=&hnear=Kuningan&t=m&z=14&ll=-6.238824,106.830177&output=embed"></iframe>', 3, 136, '1484721347tải xuống (1).jpg', 1, 1, 1),
(2, 'Khuyến Mãi Ngày Vàng', 'Khuyến Mãi Ngày Vàng', '', 'Khuyến Mãi Ngày Vàng', 'Khuyến Mãi Ngày Vàng', 'Sự lên ngôi của bếp từ trong căn bếp Việt', 'Không chỉ tuyệt vời về hiệu quả sử dụng, bếp từ còn rất được...', '<p><strong>Vì&nbsp;sao bếp gas bị thất thế?</strong></p>\r\n\r\n<p>Còn nhớ vụ nổ gas cách đây không lâu tại phố Tạ Quang Bửu khiến hai cháu bé bị tử vong rất thương tâm, bố và mẹ bị thương nặng. Chính vì lẽ đó mà không ít người e dè khi lựa chọn bếp gas để sử dụng.</p>\r\n\r\n<p>Anh Hoàng Vũ Linh (Đống Đa &ndash; Hà Nội) cho hay: &ldquo;Vụ nổ khí gas vừa rồi thật kinh khủng quá. Gia đình tôi cũng sử dụng gas để nấu nướng nhưng không hay thường xuyên kiểm tra xem dây dẫn gas, van gas có an toàn không, đã bị hư hại gì chưa. Nhưng sau lần này thì tôi sẽ thường xuyên gọi thợ tới kiểm tra hơn để đảm bảo an toàn khi sử dụng&rdquo;.</p>\r\n\r\n<p><a href="http://bep.vn/upload/editor/images/bep-ga-bep-tu.jpg" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 1"><img alt="Hình ảnh Sự lên ngôi của bếp từ trong căn bếp Việt số 1" src="http://bep.vn/upload/editor/images/bep-ga-bep-tu.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; max-width:100%; vertical-align:middle" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 1" /></a></p>\r\n\r\n<p><em>Nhiều người tiêu dùng e ngại tính an toàn của bếp gas</em></p>\r\n\r\n<p>Chính vì những &ldquo;ẩn họa&rdquo; khôn lường của bếp gas mà không ít gia đình đã loại nó ra khỏi danh mục những đồ dùng trong nhà bếp. Chị Trần Hoàng Ngân (Từ Liêm &ndash; Hà Nội) chia sẻ: &ldquo;Sau một vài vụ cháy nổ do gas gây ra, gia đình tôi đã quyết định không sử dụng loại bếp này nữa, chuyển sang sử dụng loại bếp khác an toàn hơn để tránh những rủi ro đáng tiếc có thể xảy ra&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Và sự lên ngôi của bếp từ</strong></p>\r\n\r\n<p>Chẳng có gì lạ khi người tiêu dùng quay lưng lại với bếp gas và &ldquo;sính&rdquo; sử dụng&nbsp;<a href="http://bep.vn/bep-tu" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank"><strong>bếp từ</strong></a>&nbsp;bởi sự an toàn, tiết kiệm và đẹp sang trọng của nó.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với cơ chế làm trực tiếp phần thức ăn bên trong nồi nên hiệu suất sử dụng của bếp từ rất cao lên tới 90%, cao hơn rất nhiều so với bếp gas và bếp điện. Chính vì vậy mà thời gian nấu ăn của bạn sẽ được rút ngắn hơn và chi phí phải bỏ ra cho công việc nấu nướng cũng tiết kiệm hơn. &nbsp;</p>\r\n\r\n<p><a href="http://bep.vn/upload/editor/images/bep-ga-bep-tu-1.jpg" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 2"><img alt="Hình ảnh Sự lên ngôi của bếp từ trong căn bếp Việt số 2" src="http://bep.vn/upload/editor/images/bep-ga-bep-tu-1.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; max-width:100%; vertical-align:middle" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 2" /></a></p>\r\n\r\n<p><em>Sự lên ngôi của bếp từ</em></p>\r\n\r\n<p>Không chỉ tuyệt vời về hiệu quả sử dụng, bếp từ còn rất được lòng các bà nội trợ bởi thiết kế đẹp mắt, sang trọng và hiện đại của nó. Hơn nữa, bếp từ rất dễ sử dụng (thông qua các nút điều khiển), tính năng đa dạng lại an toàn với cả trẻ em và người lớn nếu vô tình chạm phải mặt bếp trong khi đang nấu, nó không gây bỏng rát bởi mặt bếp luôn mát trong suốt quá trình sử dụng.</p>\r\n\r\n<p>Hiện nay có rất nhiều chủng loại&nbsp;<a href="http://bep.vn/bep-dien-tu" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank">bếp điện</a>,&nbsp;bếp từ của rất nhiều hang khác nhau, người tiêu dùng nên lựa chọn những loại bếp của các thương hiệu uy tín để đảm bảo an toàn và chất lượng khi sử dụng.&nbsp;</p>\r\n\r\n<p>Nếu bạn còn đang băn khoăn không biết nên lựa chọn loại bếp nào cho phù hợp với &ldquo;túi tiền&rdquo; và không gian bếp nhà mình, còn chần chừ gì nữa mà không đến với&nbsp;<strong>Bep.vn&nbsp;</strong>tại&nbsp;địa chỉ 406 Xã Đàn, Đống Đa, Hà Nội. Tại đây, bạn sẽ nhận được những lời tư vấn xác đáng từ những tư vấn viên chuyên nghiệp của chúng tôi, chắc chắn bạn sẽ dễ dàng chọn được cho gia đình một sản phẩm bếp từ ưng ý.</p>\r\n\r\n<p>Tại&nbsp;<strong>Bep.vn</strong>, chúng tôi&nbsp;cung cấp các sản phẩm bếp từ, bếp điện từ, bếp điện,&nbsp;<a href="http://bep.vn/lo-nuong" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank">lò nướng</a>, lò vi sóng, máy hút mùi, máy rửa bát và các sản phẩm gia dụng khác chính hãng với chất lượng tốt nhất trên thị trường hiện nay.</p>\r\n\r\n<p><strong>Thông tin liên hệ:</strong></p>\r\n\r\n<p>Công ty TNHH Xây Dựng và Dịch Vụ Anh Tú<br />\r\nSố 406 Phố Xã Đàn - Đống Đa - Hà Nội &nbsp;(Đường Kim Liên Mới)<br />\r\nTel : 04 35738480&nbsp;<br />\r\nEmail :&nbsp;info@bep.vn<br />\r\nWebsite:&nbsp;<a href="http://bep.vn/" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank">http://bep.vn</a></p>\r\n', '', '', 0, '', 0, 0, '14847211918799411372062.jpg', 1, 1, 2),
(3, 'Tri Ân Khách Háng Cuối Năm ', 'Tri Ân Khách Háng Cuối Năm ', '', 'Tri Ân Khách Háng Cuối Năm ', 'Tri Ân Khách Háng Cuối Năm ', '', '', '', '', '', 0, '', 0, 0, '1484721142tải xuống.jpg', 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `qtext`
--

CREATE TABLE IF NOT EXISTS `qtext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `e_title` text NOT NULL,
  `content` longtext NOT NULL,
  `e_content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `qtext`
--

INSERT INTO `qtext` (`id`, `title`, `e_title`, `content`, `e_content`) VALUES
(2, 'Hotline', '', '0165 9181037', ''),
(3, 'Liên hệ', '', '<span style="color:#800080"><strong><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><span style="line-height:2"><img alt="" src="/file/ckfinder/userfiles/images/15826584_1635735890064007_5758161874276884894_n(1).png" style="border-style:solid; border-width:0px; float:left; height:150px; margin:5px; width:150px" />Hana Beauty Shop - Chuyên Mỹ Phẩm Xách Tay</span></span></span></strong></span><br />\r\n<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><span style="line-height:2">Địa Chỉ: Hẻm 8/17 Đường Số 44, Phường 14, Quận Gò Vấp&nbsp;<br />\r\n(Phía Sau Lô C Chung Cư Khang Gia)<br />\r\nĐiện Thoại:&nbsp;<strong><span style="color:rgb(255, 0, 0)">Ms.Linh 0165 9181 037</span>&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;<span style="color:rgb(255, 0, 0)">Ms.Yến &nbsp;0985 888 019</span></strong></span></span></span>', ''),
(4, 'Footer', '', '<span style="color:#000000"><strong><img alt="" src="/file/ckfinder/userfiles/images/15826584_1635735890064007_5758161874276884894_n(1).png" style="border-style:solid; border-width:0px; float:left; height:150px; margin:5px; width:150px" /></strong></span><span style="color:#800080"><strong><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><span style="line-height:2">Hana Beauty Shop - Chuyên Mỹ Phẩm Xách Tay</span></span></span></strong></span><br />\r\n<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><span style="line-height:2">Địa Chỉ: Hẻm 8/17 Đường Số 44, Phường 14, Quận Gò Vấp&nbsp;(Phía Sau Lô C Chung Cư Khang Gia)<br />\r\nĐiện Thoại: <strong><span style="color:#FF0000">Ms.Linh 0165 9181 037</span>&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <span style="color:#FF0000">Ms.Yến &nbsp;0985 888 019</span></strong></span></span></span>', ''),
(5, 'Header Text', '', '343435556', '');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `sum` text NOT NULL,
  `content` longtext NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `e_title` text NOT NULL,
  `e_sum` text NOT NULL,
  `e_content` longtext NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `pId` int(11) DEFAULT NULL,
  `maps` text NOT NULL,
  `city` int(11) NOT NULL,
  `district` int(11) NOT NULL,
  `img` text NOT NULL,
  `date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `home` tinyint(4) NOT NULL DEFAULT '0',
  `ind` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pId` (`pId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `title`, `sum`, `content`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_content`, `e_meta_keyword`, `e_meta_description`, `pId`, `maps`, `city`, `district`, `img`, `date`, `active`, `home`, `ind`) VALUES
(2, 'DỊCH VỤ CỦA TBC', 'DỊCH VỤ CỦA TBC', '<div><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif">- Cung cấp tất các các thiết bị dung tròng nghành công nghiệp<br />\r\n- Chuyển đổi công nghệ,cải tạo nhà xưởng<br />\r\n- Hỗ trợ kỹ thuật và lắp đặt hệ thống,dây chuyền sản xuất tự động,<br />\r\n- Thiết kế và thi công các loại tủ điện điều khiển và tủ động lực.<br />\r\n- Bảo dưỡng trang thiết bị công nghiệp&hellip;.</span></span></div>\r\n&nbsp;\r\n\r\n<div style="text-align: center;"><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><img alt="" src="/file/ckfinder/userfiles/images/5.png" style="height:525px; width:554px" /></span></span></div>\r\n\r\n<div style="text-align: center;"><span style="color:#FF8C00"><strong>THAI BINH AUTOMATION TECHNOLOGY COMPANY LIMITED<br />\r\n&nbsp;&nbsp;SYSTEM DESIGN &amp; PANEN BUIDING</strong></span></div>\r\n\r\n<div style="text-align: center;">&nbsp;</div>\r\n', 'DỊCH VỤ CỦA TBC', 'DỊCH VỤ CỦA TBC', '', '', '', '', '', 3, '', 0, 0, '14815339665.png', '2016-11-23', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `session_id` varchar(255) NOT NULL,
  `last_visit` datetime NOT NULL DEFAULT '2017-01-03 00:00:00',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`session_id`, `last_visit`) VALUES
('0t5hddeb3438eando09bk6uop1', '2017-01-03 15:13:38'),
('7fbha854m8kpq4mtlquhfe64h1', '2017-01-03 15:22:14'),
('pjg2af50coeiuig9uu970r8n66', '2017-01-03 15:13:39');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `e_title` text NOT NULL,
  `sum` text NOT NULL,
  `e_sum` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `lnk` text NOT NULL,
  `e_lnk` text NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `e_title`, `sum`, `e_sum`, `img`, `lnk`, `e_lnk`, `ind`, `active`) VALUES
(8, '', '', '', '', '1484901433banner2.jpg', 'http://chamsocdahana.com/san-pham/sua-rua-mat-p18', '', 2, 1),
(9, '', '', '', '', '1484901420banner.jpg', 'http://chamsocdahana.com/san-pham/mat-na-p17', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE IF NOT EXISTS `subscriber` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `dates` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`id`, `email`, `dates`) VALUES
(2, 'tung@mail.com', '2017-01-13 09:10:01'),
(3, 'tung@mail.com', '2017-01-13 09:11:45'),
(4, 'nhatsang@psmedia.vn', '2017-01-19 10:11:23');

-- --------------------------------------------------------

--
-- Table structure for table `vs_counter`
--

CREATE TABLE IF NOT EXISTS `vs_counter` (
  `hit_counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vs_counter`
--

INSERT INTO `vs_counter` (`hit_counter`) VALUES
(530);

-- --------------------------------------------------------

--
-- Table structure for table `vs_detail`
--

CREATE TABLE IF NOT EXISTS `vs_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vs_ip` varchar(255) NOT NULL,
  `vs_city` varchar(255) DEFAULT NULL,
  `vs_browser` varchar(255) NOT NULL,
  `vs_os` varchar(255) NOT NULL,
  `vs_id` varchar(255) NOT NULL,
  `vs_flag` tinyint(1) NOT NULL,
  `dates` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=528 ;

--
-- Dumping data for table `vs_detail`
--

INSERT INTO `vs_detail` (`id`, `vs_ip`, `vs_city`, `vs_browser`, `vs_os`, `vs_id`, `vs_flag`, `dates`) VALUES
(475, 'unknown', 'unknown', 'Handheld Browser', 'Android', 'e704fv6lrsulb5h62ck5dd7rp0', 0, '2017-01-21 09:21:01'),
(491, 'unknown', 'unknown', 'Handheld Browser', 'iPhone', 'jk5qapfdujrdin6l4j7h0oai42', 0, '2017-01-21 16:31:39'),
(498, 'unknown', 'unknown', 'Chrome', 'Windows 10', '4k3g6j8r9g9jo8bq238nfrku00', 0, '2017-01-21 09:09:49'),
(499, 'unknown', 'unknown', 'Chrome', 'Windows 10', 'kso7n2g1jb0ugrpvahdvi0dbq1', 0, '2017-01-21 09:09:49'),
(500, 'unknown', 'unknown', 'Chrome', 'Windows 10', 'nirolgoq2gv8mg98bt6iu5s9a4', 0, '2017-01-21 13:53:51'),
(501, 'unknown', 'unknown', 'Chrome', 'Windows 7', 'e983nc3qcnk8t7mi4j08nd84u5', 0, '2017-01-21 09:17:22'),
(502, 'unknown', 'unknown', 'Chrome', 'Windows 7', 'ipffeaek9rfj4ss7g8pbfnm7j7', 0, '2017-01-21 09:21:01'),
(503, 'unknown', 'unknown', 'Chrome', 'Linux', 'dp2cqj9ubocpa0hdgqe53u4qo7', 0, '2017-01-21 12:05:48'),
(504, 'unknown', 'unknown', 'Chrome', 'Linux', '430cak834l3pgcsv60shht08l0', 0, '2017-01-21 12:05:48'),
(505, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '5lkgqjtj9irpvmbcod6ad51tb1', 0, '2017-01-21 15:58:44'),
(506, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'kept9edm0ls4p28k28l6ig6vb5', 0, '2017-01-21 15:58:44'),
(507, 'unknown', 'unknown', 'Handheld Browser', 'Android', '8vg9kv2p0p7bh17ktkttnhfq87', 0, '2017-01-21 15:58:44'),
(508, 'unknown', 'unknown', 'Handheld Browser', 'iPad', 'nmasmqfadqm3ue4dpn2gkjkfi5', 0, '2017-01-21 16:47:24'),
(509, 'unknown', 'unknown', 'Handheld Browser', 'iPhone', 'jk5qapfdujrdin6l4j7h0oai42', 0, '2017-01-21 16:31:39'),
(510, 'unknown', 'unknown', 'Handheld Browser', 'iPhone', 'h7hth110p7aj0chmlke16hd4p3', 0, '2017-01-21 16:47:24'),
(511, 'unknown', 'unknown', 'Chrome', 'Windows 10', 'qjlbpp0jgi6kb96op78g0fp514', 0, '2017-01-21 18:54:03'),
(512, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 's5ii35bi9mmj8b97ncjflvc363', 0, '2017-01-22 01:02:34'),
(513, 'unknown', 'unknown', 'Internet Explorer', 'Windows 7', '94kfkmb38jbksjss7q95e2neb5', 0, '2017-01-22 01:48:53'),
(514, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '5jv8km5p35fb3mt79rqv6aj0h7', 0, '2017-01-22 01:56:25'),
(515, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'ninu3jrjpoi6tj1qj0d5r8v9r2', 0, '2017-01-22 01:56:25'),
(516, 'unknown', 'unknown', 'Handheld Browser', 'iPhone', '0lbjeprc47ej9efj9gl7lf5bg7', 0, '2017-01-22 01:56:25'),
(517, 'unknown', 'unknown', 'Handheld Browser', 'iPhone', 'sb0t62pui27mleqdc5usrjsp01', 0, '2017-01-22 02:26:49'),
(518, 'unknown', 'unknown', 'Chrome', 'Windows 7', 'jmorobnf4cen02u9bgjt664il1', 0, '2017-01-22 03:16:55'),
(519, 'unknown', 'unknown', 'Handheld Browser', 'iPhone', 's0pfdrugmebul7fgdhetlvehg2', 0, '2017-01-22 04:08:36'),
(520, 'unknown', 'unknown', 'Chrome', 'Windows 7', '1f8lahn1dl2skvar8u0hp72917', 0, '2017-01-22 04:08:36'),
(521, 'unknown', 'unknown', 'Firefox', 'Windows 7', 'go17k3jj3h42vrtod8qpv2llc6', 0, '2017-01-22 04:08:36'),
(522, 'unknown', 'unknown', 'Firefox', 'Windows 7', '3cpg9ak03obn4qrdqj05126df6', 0, '2017-01-22 07:58:46'),
(523, 'unknown', 'unknown', 'Firefox', 'Windows 7', 'b6kll83fg5ge9vlq366e6ivrk1', 0, '2017-01-22 04:08:36'),
(524, 'unknown', 'unknown', 'Chrome', 'Windows 10', 'lesj5ps307rai0ketm37619db4', 0, '2017-01-22 05:35:58'),
(525, 'unknown', 'unknown', 'Chrome', 'Windows 10', 'd4k9vft610kodghurcosmvtbi3', 0, '2017-01-22 07:31:53'),
(526, 'unknown', 'unknown', 'Internet Explorer', 'Windows 7', 'qb2onuk74ni9l0i7mu8bltgie3', 0, '2017-01-22 07:40:47'),
(527, 'unknown', 'unknown', 'Chrome', 'Windows 10', 'an49lo6p7dolh634scnrgmol07', 1, '2017-01-22 07:58:46');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `product_image_ibfk_1` FOREIGN KEY (`pId`) REFERENCES `product` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
