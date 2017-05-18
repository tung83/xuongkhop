-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Client: localhost:3306
-- Généré le: Jeu 18 Mai 2017 à 23:43
-- Version du serveur: 10.0.29-MariaDB-cll-lve
-- Version de PHP: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `jjketsap_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `about`
--

CREATE TABLE IF NOT EXISTS `about` (
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
  `img` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `home` tinyint(4) NOT NULL DEFAULT '0',
  `ind` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pId` (`pId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `about`
--

INSERT INTO `about` (`id`, `title`, `sum`, `content`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_content`, `e_meta_keyword`, `e_meta_description`, `pId`, `img`, `active`, `home`, `ind`) VALUES
(1, 'Our Values ', '', '<div style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><span style="line-height:2"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit">When it comes to our &quot;Values&quot; - it should represent the principles and standards of our Company.&nbsp; Our customers should be confident that we will represent them with the highest level of professionalism, trust and integrity.&nbsp; It is imperative that these values emanate from the top and flow through to every team member.&nbsp; Our values extends to all our Partners, so they are aligned in the partnership services we are providing to our customers.</span></span></span></span></span></div>\r\n', 'JJ Ketsa Property Agents', 'When it comes to our &quot;Values&quot; - it should represent the principles and standards of our Company.  Our customers should be confident that we will represent them with the highest level of professionalism, trust and integrity.  It is imperative that these values emanate from the top and flow through to every team member.  Our values extends to all our Partners, so they are aligned in the partnership services we are providing to our customers.', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '<p>Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.</p>\r\n\r\n<p>Chồng làm giám đốc một công ty lớn trong ngành truyền thông, gia đình có đến 2 người giúp việc, chị Thu ở Núi Trúc, Hà Nội, vẫn giữ thói quen tự nấu nướng cho cả gia đình. Chồng cùng 2 cậu con trai của chị cũng chỉ thích ăn những món do nội tướng chế biến.</p>\r\n\r\n<p>&quot;Nhiều món ăn tuy đơn giản nhưng vẫn cần bí quyết chế biến riêng nên người khác nấu không hợp khẩu vị khiến chồng con tôi không ưng. Hai cô giúp việc chỉ phải dọn dẹp với giặt giũ, còn đi chợ hay nấu nướng thì tôi tự thu xếp công việc và thời gian để làm&quot;, chị Thu nói.</p>\r\n\r\n<p>Không ít lần chị Thu &quot;mất điểm&quot; vì công việc quá lu bu. Chị kể, đặt nồi cá kho lên bếp định một tiếng rưỡi tiếng xuống tắt lửa là vừa, nhưng mải quyết toán doanh thu cuối tháng của công ty nên chị quên mất. Ngửi thấy mùi khét, chị chạy xuống bếp thì nồi cá đã sắp thành than.</p>\r\n\r\n<p>Chia sẻ với bạn, chị Thu được mách về loại bếp điện từ hồng ngoại - kết hợp tính năng điện từ với hồng ngoại, có hẹn giờ nên tránh được tối đa những sơ suất tương tự &quot;vụ nồi cá&quot;. Ngoài ra, dùng loại bếp này, thời gian nấu nhanh, nấu được với tất cả các loại nồi chứ không bị bó hẹp như bếp từ. Cân nhắc mãi, chị Thu quyết định mua một chiếc dù mức giá khá cao, 45 triệu đồng cho loại 4 bếp.</p>\r\n\r\n<p>&quot;Chi phí ban đầu hơi cao nhưng tiết kiệm được thời gian nấu, tính ra chưa đầy 30 phút là xong bữa tối. Con cái còn nhỏ, ở nhà cả ngày với người giúp việc, mà gần đây xảy ra nhiều vụ nổ gas nên tôi càng lo, quyết tâm đầu tư bếp từ hồng ngoại để đảm bảo an toàn cho cả nhà&quot;, chị Thu tâm sự. Ngoài ra, mặt bếp sáng bóng, hợp với không gian căn bếp sang trọng mà vợ chồng chị đã cất công thiết kế, khiến chị Thu không tiếc khoản tiền gần 50 triệu đồng đã bỏ ra để mua.</p>\r\n\r\n<p>Chị Tiến ở Mỹ Đình, Hà Nội, phu nhân giám đốc chi nhánh của công ty dược có tiếng, cũng chọn bếp điện từ hồng ngoại cho gian bếp nhà mình. Chị lý giải, ngoài lý do an toàn, hình thức bắt mắt và nấu nướng nhanh, bếp có giá trị sử dụng cao, giảm được chi phí hằng tháng so với dùng các loại bếp thông thường.</p>\r\n\r\n<p>Theo chị, nếu dùng bếp gas, trung bình mỗi tháng gia đình chị hết khoảng 250.000 đồng. Từ khi chuyển sang dùng bếp từ hồng ngoại, cắt giảm được chi phí gas, chị tính toán thấy số tiền điện chỉ tăng thêm từ 120.000 đồng đến 150.000 đồng so với trước. Định kỳ hằng năm, chị không phải thay van gas, dây nối..., tuổi thọ của loại bếp này cũng gấp 2-3 lần so với bếp gas. Chưa kể, do có nhiều chức năng tự động như tự ngắt khi gặp vật thể lạ hoặc người dùng quên tắt... nên thiết bị nhà bếp này khá an toàn.</p>\r\n\r\n<p>&quot;Tôi thấy giá khá cao nhưng &#39;đắt xắt ra miếng&#39;, đầu tư lớn ban đầu mà chi phí dùng về sau rẻ hơn khá nhiều nên tính về lâu dài thì tiết kiệm hơn. Một điểm nữa tôi rất thích là trời nóng vẫn có thể bật quạt hướng thẳng vào vị trí đứng nấu mà không sợ bị tản nhiệt như nấu bằng bếp gas&quot;, chị Tiến giải thích.</p>\r\n\r\n<p>Xuất hiện chưa lâu và có mức giá khá cao song bếp điện từ hồng ngoại đã được khá nhiều bà nội trợ đầu tư chọn lựa. Giá bếp dao động từ 20 đến trên 40 triệu đồng mỗi chiếc, tùy vào xuất xứ, vật liệu và số lượng mặt bếp. Ông Phạm Đức Tuân, Giám đốc kinh doanh ngành hàng bếp của Kangaroo, một những doanh nghiệp vừa tung ra dòng sản phẩm bếp điện từ hồng ngoại cao cấp cho biết, chỉ trong vòng 2 tháng, số lượng bán ra đã hơn 5.000 chiếc, trong đó, doanh số tháng sau cao hơn tháng trước 30%.</p>\r\n\r\n<p>Trao đổi với&nbsp;<em>VnExpress.net</em>, ông cho biết, so với bếp gas, bếp điện từ hồng ngoại Kangaroo có hiệu suất hấp thụ nhiệt cao đến 90%, trong khi bếp gas đạt 55%, bếp điện thông thường đạt khoảng 65%. Theo đó, nếu chuyển từ bếp gas sang bếp điện từ hồng ngoại, người tiêu dùng tiết kiệm được đến 40% chi phí nhiên liệu cho việc đun nấu, thời gian nấu nướng cũng vì thế mà nhanh gấp 2-3 lần.</p>\r\n\r\n<p>Hai bộ phận quan trọng nhất của bếp là mặt kính và bộ gia nhiệt đều được nhập khẩu từ các hãng danh tiếng của Đức là Schott và Ego, đảm bảo độ bền và hiệu suất ra nhiệt tối đa. Ngoài ra với độ dày 4 mm, bếp có khả năng chịu lực và chịu nhiệt lên đến 800 độ C. Nhiệt độ được truyền thẳng đứng đến đáy nồi, nhiệt năng không bị thất thoát ra không khí.</p>\r\n\r\n<p>Tuy nhiên, vị chuyên gia khẳng định, dù sử dụng bất kỳ loại bếp nào, người nội trợ cũng nên vệ sinh, bảo trì thiết bị thường xuyên, giữ không khí trong phòng bếp lưu thông, thoáng mát... để đảm bảo chất lượng sản phẩm.</p>\r\n', '', '', 0, '1492651860riviera.jpg', 1, 0, 3),
(2, 'Our VISION &amp; MISSION ', '', '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="line-height:2"><strong>Our VISION</strong> is to make the property building, buying and selling process an enjoyable experience.&nbsp; Building new, buying established and selling property is one of the most major transactions we experience in life, so we want to help as many people BUILD, BUY or SELL their property by connecting them with the most experienced Industry Leaders. Our VISION is to be highest recommended Agency in the Industry.&nbsp; The biggest compliment to a Business is a recommendation and referral.<br />\r\n<strong>Our MISSION</strong> is to partner with the most experienced Industry Leaders to assist our customers&nbsp; BUILD, BUY or SELL their property in the most simple and enjoyable way.&nbsp; Our goal is to offer the highest level of customer service so that the growth of our Business will be from recommendations and referrals. </span></span></span>', 'JJ Ketsa Property Agents', 'Our VISION is to make the property building, buying and selling process an enjoyable experience. Our MISSION is to partner with the most experienced Industry Leaders to assist our customers  BUILD, BUY or Sell their property in the most simple and enjoyable way', 'Sự lên ngôi của bếp từ trong căn bếp Việt', 'Không chỉ tuyệt vời về hiệu quả sử dụng, bếp từ còn rất được...', '<p><strong>Vì&nbsp;sao bếp gas bị thất thế?</strong></p>\r\n\r\n<p>Còn nhớ vụ nổ gas cách đây không lâu tại phố Tạ Quang Bửu khiến hai cháu bé bị tử vong rất thương tâm, bố và mẹ bị thương nặng. Chính vì lẽ đó mà không ít người e dè khi lựa chọn bếp gas để sử dụng.</p>\r\n\r\n<p>Anh Hoàng Vũ Linh (Đống Đa &ndash; Hà Nội) cho hay: &ldquo;Vụ nổ khí gas vừa rồi thật kinh khủng quá. Gia đình tôi cũng sử dụng gas để nấu nướng nhưng không hay thường xuyên kiểm tra xem dây dẫn gas, van gas có an toàn không, đã bị hư hại gì chưa. Nhưng sau lần này thì tôi sẽ thường xuyên gọi thợ tới kiểm tra hơn để đảm bảo an toàn khi sử dụng&rdquo;.</p>\r\n\r\n<p><a href="http://bep.vn/upload/editor/images/bep-ga-bep-tu.jpg" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 1"><img alt="Hình ảnh Sự lên ngôi của bếp từ trong căn bếp Việt số 1" src="http://bep.vn/upload/editor/images/bep-ga-bep-tu.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; max-width:100%; vertical-align:middle" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 1" /></a></p>\r\n\r\n<p><em>Nhiều người tiêu dùng e ngại tính an toàn của bếp gas</em></p>\r\n\r\n<p>Chính vì những &ldquo;ẩn họa&rdquo; khôn lường của bếp gas mà không ít gia đình đã loại nó ra khỏi danh mục những đồ dùng trong nhà bếp. Chị Trần Hoàng Ngân (Từ Liêm &ndash; Hà Nội) chia sẻ: &ldquo;Sau một vài vụ cháy nổ do gas gây ra, gia đình tôi đã quyết định không sử dụng loại bếp này nữa, chuyển sang sử dụng loại bếp khác an toàn hơn để tránh những rủi ro đáng tiếc có thể xảy ra&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Và sự lên ngôi của bếp từ</strong></p>\r\n\r\n<p>Chẳng có gì lạ khi người tiêu dùng quay lưng lại với bếp gas và &ldquo;sính&rdquo; sử dụng&nbsp;<a href="http://bep.vn/bep-tu" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank"><strong>bếp từ</strong></a>&nbsp;bởi sự an toàn, tiết kiệm và đẹp sang trọng của nó.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với cơ chế làm trực tiếp phần thức ăn bên trong nồi nên hiệu suất sử dụng của bếp từ rất cao lên tới 90%, cao hơn rất nhiều so với bếp gas và bếp điện. Chính vì vậy mà thời gian nấu ăn của bạn sẽ được rút ngắn hơn và chi phí phải bỏ ra cho công việc nấu nướng cũng tiết kiệm hơn. &nbsp;</p>\r\n\r\n<p><a href="http://bep.vn/upload/editor/images/bep-ga-bep-tu-1.jpg" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 2"><img alt="Hình ảnh Sự lên ngôi của bếp từ trong căn bếp Việt số 2" src="http://bep.vn/upload/editor/images/bep-ga-bep-tu-1.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; max-width:100%; vertical-align:middle" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 2" /></a></p>\r\n\r\n<p><em>Sự lên ngôi của bếp từ</em></p>\r\n\r\n<p>Không chỉ tuyệt vời về hiệu quả sử dụng, bếp từ còn rất được lòng các bà nội trợ bởi thiết kế đẹp mắt, sang trọng và hiện đại của nó. Hơn nữa, bếp từ rất dễ sử dụng (thông qua các nút điều khiển), tính năng đa dạng lại an toàn với cả trẻ em và người lớn nếu vô tình chạm phải mặt bếp trong khi đang nấu, nó không gây bỏng rát bởi mặt bếp luôn mát trong suốt quá trình sử dụng.</p>\r\n\r\n<p>Hiện nay có rất nhiều chủng loại&nbsp;<a href="http://bep.vn/bep-dien-tu" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank">bếp điện</a>,&nbsp;bếp từ của rất nhiều hang khác nhau, người tiêu dùng nên lựa chọn những loại bếp của các thương hiệu uy tín để đảm bảo an toàn và chất lượng khi sử dụng.&nbsp;</p>\r\n\r\n<p>Nếu bạn còn đang băn khoăn không biết nên lựa chọn loại bếp nào cho phù hợp với &ldquo;túi tiền&rdquo; và không gian bếp nhà mình, còn chần chừ gì nữa mà không đến với&nbsp;<strong>Bep.vn&nbsp;</strong>tại&nbsp;địa chỉ 406 Xã Đàn, Đống Đa, Hà Nội. Tại đây, bạn sẽ nhận được những lời tư vấn xác đáng từ những tư vấn viên chuyên nghiệp của chúng tôi, chắc chắn bạn sẽ dễ dàng chọn được cho gia đình một sản phẩm bếp từ ưng ý.</p>\r\n\r\n<p>Tại&nbsp;<strong>Bep.vn</strong>, chúng tôi&nbsp;cung cấp các sản phẩm bếp từ, bếp điện từ, bếp điện,&nbsp;<a href="http://bep.vn/lo-nuong" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank">lò nướng</a>, lò vi sóng, máy hút mùi, máy rửa bát và các sản phẩm gia dụng khác chính hãng với chất lượng tốt nhất trên thị trường hiện nay.</p>\r\n\r\n<p><strong>Thông tin liên hệ:</strong></p>\r\n\r\n<p>Công ty TNHH Xây Dựng và Dịch Vụ Anh Tú<br />\r\nSố 406 Phố Xã Đàn - Đống Đa - Hà Nội &nbsp;(Đường Kim Liên Mới)<br />\r\nTel : 04 35738480&nbsp;<br />\r\nEmail :&nbsp;info@bep.vn<br />\r\nWebsite:&nbsp;<a href="http://bep.vn/" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank">http://bep.vn</a></p>\r\n', '', '', 0, '1492651825duke.jpg', 1, 0, 2),
(3, 'Who are JJ Ketsa Property Agents?    ', '', '<div style="text-align: justify;"><span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">The buying or selling process can take up a lot of time and can become quite daunting.&nbsp; Consider us to be your friend in the business. We will ensure that you receive the highest level of customer service to achieve the best possible outcome.<br />\r\nLet us be the &quot;go to&quot; agents when you have any property needs.&nbsp; When it comes to building your home or investment, choose from our extensive house designs on offer.&nbsp; When it comes to buying your home, let us find the properties and negotiate them on your behalf.&nbsp; When it comes to selling, let us achieve the highest possible price through our successful sales strategies. You, our customers are our highest priority.&nbsp; When you choose us, we become you.&nbsp;&nbsp;&nbsp;<br />\r\n<strong>What&#39;s in a name?</strong><br />\r\nOur name &quot;JJ Ketsa&quot; represents the reason, the drive and the &quot;WHY&quot; of our Company.&nbsp; It is a reminder of what is important - FAMILY.&nbsp; The foundation of our values.&nbsp; So for our Company to thrive and grow, we need to stay in touch with what is really important.</span></span></span></div>\r\n', 'JJ Ketsa Property Agents', 'The buying or selling process can take up a lot of time and can become quite daunting.  Consider us to be your friend in the business. We will ensure that you receive the highest level of customer service to achieve the best possible outcome.', '', '', '', '', '', 0, '1492651804cambridge.jpg', 1, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ad_user`
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
-- Contenu de la table `ad_user`
--

INSERT INTO `ad_user` (`id`, `email`, `pwd`, `power`, `lastOnl`) VALUES
(1, 'czanubis@gmail.com', '949530644ef43dad3857cf6fbbbe10c1', 1, '2016-01-24 03:46:26'),
(2, 'nhatsang@gmail.com', '202cb962ac59075b964b07152d234b70', 1, '2016-03-12 03:53:10');

-- --------------------------------------------------------

--
-- Structure de la table `basic_config`
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
-- Contenu de la table `basic_config`
--

INSERT INTO `basic_config` (`id`, `smtp_server`, `smtp_port`, `smtp_user`, `smtp_pwd`, `smtp_sender_email`, `smtp_sender_name`, `smtp_receiver`, `gmap_script`, `another_script`, `social_twitter`, `social_facebook`, `social_google_plus`) VALUES
(1, 'smtp.gmail.com', '587', 'quantrimang.psmedia@gmail.com', 'psmediaquantrimang', 'quantrimang.psmedia@gmail.com', 'Website administrator', 'contact@jjketsaproperty.com.au', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.1633799912497!2d106.65656091421477!3d10.798795861734689!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175293132fa9845%3A0x2b09637f85d4a12f!2zVHLGsOG7nW5nIE3huqdtIE5vbiBUw6JuIFPGoW4gTmjhuqV0!5e0!3m2!1svi!2s!4v1474100962959" width="1004" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', 'https://www.instagram.com/jjketsa_property/?hl=en', 'https://www.facebook.com/jjketsapropertyagents/', '');

-- --------------------------------------------------------

--
-- Structure de la table `buy`
--

CREATE TABLE IF NOT EXISTS `buy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `feature` longtext NOT NULL,
  `price` int(11) DEFAULT NULL,
  `storey` int(11) NOT NULL,
  `beds` int(11) NOT NULL,
  `landWidth` float NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=228 ;

--
-- Contenu de la table `buy`
--

INSERT INTO `buy` (`id`, `title`, `feature`, `price`, `storey`, `beds`, `landWidth`, `price_reduce`, `in_stock`, `condition`, `brand_id`, `detail`, `content`, `teach`, `video`, `meta_keyword`, `meta_description`, `manual`, `e_manual`, `promotion`, `e_promotion`, `e_title`, `e_feature`, `e_detail`, `e_content`, `e_teach`, `e_meta_keyword`, `e_meta_description`, `pd_option`, `lnk`, `e_lnk`, `pId`, `active`, `home`, `ind`) VALUES
(227, 'buy', '', 0, 0, 0, 0, NULL, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `buy_cate`
--

CREATE TABLE IF NOT EXISTS `buy_cate` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `buy_cate`
--

INSERT INTO `buy_cate` (`id`, `title`, `sum`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_meta_keyword`, `e_meta_description`, `img`, `icon`, `pId`, `lev`, `ind`, `active`) VALUES
(1, 'BIẾN TẦN', '', 'LED Par Lights', 'LED Par Lights', 'Electrical Parts', '', 'Electrical Parts', 'Electrical Parts', '', '', 0, 1, 1, 1),
(2, 'SERVO', '', 'LED Moving Head', 'LED Moving Head', 'Auto Parts', '', 'Auto Parts', 'Auto Parts', '', '', 0, 1, 2, 1),
(3, 'ĐỘNG CƠ ', '', 'Moving Head light', 'Moving Head light', 'Mechanical Heat Sink', '', 'Mechanical Heat Sink', 'Mechanical Heat Sink', '', '', 0, 1, 3, 1),
(8, 'INVERTER OMRON', '', 'INVERTER OMRON', 'INVERTER OMRON', '', '', '', '', '', '', 0, 1, 8, 1),
(15, 'DUCATI', '', 'DUCATI', 'DUCATI', '', '', '', '', '', '', 0, 1, 6, 1),
(16, 'YASKAWA', '', 'YASKAWA', 'YASKAWA', '', '', '', '', '', '', 0, 1, 1, 1),
(17, 'BỘ ĐIỀU KHIỂN', '', 'BỘ ĐIỀU KHIỂN', 'BỘ ĐIỀU KHIỂN', '', '', '', '', '', '', 0, 1, 13, 1);

-- --------------------------------------------------------

--
-- Structure de la table `buy_image`
--

CREATE TABLE IF NOT EXISTS `buy_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` text NOT NULL,
  `pId` int(11) NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pId` (`pId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `adds` text NOT NULL,
  `phone` text NOT NULL,
  `notice` text NOT NULL,
  `dates` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `cart`
--

INSERT INTO `cart` (`id`, `name`, `adds`, `phone`, `notice`, `dates`) VALUES
(1, 'tung', '3434234', '232131231', 'nhớ', '2017-01-13 03:08:20'),
(2, 'w232', '2323', '23232', '2323232', '2017-01-13 03:09:16'),
(3, 'sdfsfsdf', 'sdfsdfdsf', 'sdfdsfsdf', 'sfsdfsdf', '2017-01-13 03:22:07'),
(4, 'terer', 'erere', 'erere', 'erere', '2017-01-13 03:29:43'),
(5, '32323', '2323', '2323', '2323', '2017-01-13 03:30:20'),
(6, 'ttt', 'ttt', 'tt', 'tttt', '2017-01-20 14:04:52');

-- --------------------------------------------------------

--
-- Structure de la table `cart_detail`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `cart_detail`
--

INSERT INTO `cart_detail` (`id`, `cart_id`, `product_id`, `product_title`, `product_price`, `product_qty`) VALUES
(1, 4, 186, 'BIẾN TẦN YASKAWA V1000', 0, 1),
(2, 4, 175, 'BIẾN TẦN YASKAWA F7', 0, 1),
(3, 5, 186, 'BIẾN TẦN YASKAWA V1000', 0, 5);

-- --------------------------------------------------------

--
-- Structure de la table `concierge`
--

CREATE TABLE IF NOT EXISTS `concierge` (
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
  `img` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `home` tinyint(4) NOT NULL DEFAULT '0',
  `ind` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pId` (`pId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `concierge`
--

INSERT INTO `concierge` (`id`, `title`, `sum`, `content`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_content`, `e_meta_keyword`, `e_meta_description`, `pId`, `img`, `active`, `home`, `ind`) VALUES
(1, 'tét 3', '', '<div class="SCX35180545">\r\n<p style="text-align:justify"><span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><img alt="" src="/file/ckfinder/userfiles/images/Designer%20New%20Orleans%20LHS%201132x674.jpg" style="float:left; height:179px; margin:10px 50px; width:300px" /></span></span></span></span></span><br />\r\n<br />\r\n<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><strong>Personal Assistant</strong> - Choose your own builder, let us do the leg work for you. We can take care of all the pre contract appointments.&nbsp; We will keep it simple. See us as your personal assistant.&nbsp; We will liaise directly with builder to ensure the building process of your home is delivered in a timely manner.</span></span>&nbsp;</span></span></span></p>\r\n</div>\r\n\r\n<div class="OutlineElement Ltr SCX35180545" style="margin-left: 0px; direction: ltr;">\r\n<p style="text-align:left"><span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp;</span></span></span></p>\r\n\r\n<p style="text-align:justify"><br />\r\n<br />\r\n<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><img alt="" src="/file/ckfinder/userfiles/images/Designer%20Wembley%20Varano%20RHS%201132x674.jpg" style="float:left; height:179px; margin:10px 50px; width:300px" /></span></span><br />\r\n<br />\r\n<span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><strong>Custom Builder</strong> - Can&#39;t see what you like from our extensive designs?&nbsp; Why not custom design your own home?&nbsp; Or maybe you have an irregular shaped site.&nbsp; That&rsquo;s where our design team can tailor the home design to your style and site condition to maximise the benefits without compromising on functionality.</span></span>&nbsp;</span></span></span><br />\r\n<br />\r\n&nbsp;</p>\r\n</div>\r\n\r\n<div class="OutlineElement Ltr SCX35180545" style="margin-left: 0px; direction: ltr;">\r\n<p style="text-align:justify"><span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp;</span></span></span></p>\r\n\r\n<p style="text-align:justify"><span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><img alt="" src="/file/ckfinder/userfiles/images/Langford%20Kyalami%20370.jpg" style="float:left; height:179px; margin:10px 50px; width:300px" /><br />\r\n<strong>Townhouse and Unit Developments</strong> - Is your block of land large enough to build 2 or more units or townhouses on?&nbsp; Let us do the TOWN PLANNING APPLICATION and DESIGN for you.&nbsp; We will liaise with the Councils on your behalf to best develop your land.&nbsp; Our experience with Building Regulations and Subdivision requirements can take the headache&nbsp; out of trying to do it yourself.&nbsp; We can save you time and money!</span></span></span></span></span><br />\r\n<br />\r\n&nbsp;</p>\r\n</div>\r\n&nbsp;\r\n\r\n<div class="OutlineElement Ltr SCX35180545" style="margin-left: 0px; direction: ltr;">\r\n<p style="text-align:justify"><br />\r\n<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><img alt="" src="/file/ckfinder/userfiles/images/Patriot%20Varano%20305.jpg" style="float:left; height:179px; margin:10px 50px; width:300px" /></span></span></span></span></span><br />\r\n<br />\r\n<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><strong>Knockdown Rebuild</strong> - Do you want to stay where you are but are dreaming of living in a brand new home?&nbsp; Well you can! We can knock your existing home, and BUILD you a brand new home from our extensive range of homes.&nbsp; Or if you want a more intricate design or style, you can use our CUSTOM Builder Service.</span></span>&nbsp;</span></span></span><br />\r\n<br />\r\n<br />\r\n&nbsp;</p>\r\n</div>\r\n&nbsp;\r\n\r\n<div class="OutlineElement Ltr SCX35180545" style="margin-left: 0px; direction: ltr;">\r\n<p style="text-align:justify"><span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><img alt="" src="/file/ckfinder/userfiles/images/Impression%20Palazzo%20380.jpg" style="float:left; height:179px; margin:10px 50px; width:300px" /></span></span></span></span></span><br />\r\n<br />\r\n<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><strong>Finance</strong> - As part of our CONCIERGE SERVICES, we can assist our clients seek finance to BUILD or BUY.&nbsp; Our FINANCE PARTNERS are the LEADERS in the Industry to seek the best lender and home loan rates to suit you and your lifestyle.&nbsp; They will negotiate with the Lenders on your behalf to get you into your home sooner.</span></span>&nbsp;</span></span></span><br />\r\n<br />\r\n<br />\r\n<br />\r\n&nbsp;</p>\r\n</div>\r\n', '', '', '', '', '', '', '', 0, '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `adds` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  `purpose` varchar(500) DEFAULT NULL,
  `content` text NOT NULL,
  `dates` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `contact`
--

INSERT INTO `contact` (`id`, `name`, `adds`, `phone`, `email`, `subject`, `purpose`, `content`, `dates`) VALUES
(1, 'Vivienne', '39 Lynne Maree Avenue', '0430 800 566', 'Viviennezablocki@hotmail.com', 'JJ Ketsa Pty Ltd', 'custom homes', 'Thank you', '2017-04-19 03:11:26'),
(2, 'Vivienne', '39 Lynne Maree Avenue', '0430 800 566', 'Viviennezablocki@hotmail.com', 'JJ Ketsa Pty Ltd', 'custom homes', 'Thank you', '2017-04-19 03:11:47'),
(3, 'Vivienne', '39 Lynne Maree Avenue', '0430 800 566', 'Viviennezablocki@hotmail.com', 'JJ Ketsa Pty Ltd', 'custom homes', 'Thank you', '2017-04-19 03:12:40'),
(4, 'Vivienne', '39 Lynne Maree Avenue', '0430 800 566', 'Viviennezablocki@hotmail.com', 'JJ Ketsa Pty Ltd', 'custom homes', 'Thank you', '2017-04-19 03:12:56'),
(5, 'Vivienne Zablocki', '39 Lynne Maree Avenue', '430800566', 'Viviennezablocki@hotmail.com', '', 'custom homes', 'Thank you', '2017-04-19 05:46:23'),
(6, 'fdf', '', 'fdff', 'fsf@fsdf', '', '', 'fsf', '2017-04-19 06:30:56'),
(7, 'tfsd', '', 'fsdfsdf', 'fdsfdsf@fdsf', '', '', 'fsdf', '2017-04-19 06:34:35'),
(8, 'tfsd', '', 'fsdfsdf', 'fdsfdsf@fdsf', '', '', 'fsdf', '2017-04-19 06:35:27'),
(9, 'tfsd', '', 'fsdfsdf', 'fdsfdsf@fdsf', '', '', 'fsdf', '2017-04-19 06:36:12'),
(10, 'te', 'fa', 'ee', 'mai.com@vnd.d', 'cd', 'custom homes', 'tese', '2017-04-19 08:29:46'),
(11, 's', 'fa', 'fdf', 'mai.com@vnd.d', '', 'custom homes', 'errwer', '2017-04-19 08:33:44'),
(12, 's', 'fa', 'fdf', 'mai.com@vnd.d', '', 'custom homes', 'errwer', '2017-04-19 08:37:09'),
(13, 'Vivienne Zablocki', '39 Lynne Maree Avenue', '430800566', 'Viviennengo@hotmail.com', '', 'buy home', 'Thank you', '2017-04-20 00:01:02'),
(14, 'dfsd', '', 'fsdf', 'fsf@fsdf', '', '', 'fsdf', '2017-04-20 00:34:17');

-- --------------------------------------------------------

--
-- Structure de la table `menu`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `menu`
--

INSERT INTO `menu` (`id`, `title`, `icon`, `meta_keyword`, `meta_description`, `view`, `e_title`, `e_meta_keyword`, `e_meta_description`, `e_view`, `ind`, `active`) VALUES
(1, 'HOME', '', '', '', 'home', 'Home', '', '', 'home', 1, 1),
(2, 'BUILD', '', '', '', 'build', 'BUILD', '', '', 'build', 2, 1),
(3, 'BUY', '', '', '', 'buy', 'buy', '', '', 'product', 3, 0),
(4, 'SELL', '', 'sell', '', 'sell', '', '', '', '', 4, 1),
(5, 'CONCIERGE', '', 'concierge', '', 'concierge', '', '', '', '', 5, 1),
(6, 'ABOUT US', 'about-us', '', '', 'about-us', 'About Us', '', '', 'about-us', 6, 1),
(7, 'MEET OUR PARTNERS', '', '', '', 'meet-our-partners', 'News', '', '', 'news', 7, 0),
(8, 'CONTACT US', '', '', '', 'contact-us', 'Contact Us', '', '', 'contact-us', 8, 1);

-- --------------------------------------------------------

--
-- Structure de la table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyName` text NOT NULL,
  `name` text NOT NULL,
  `list` text NOT NULL,
  `elist` text NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `options`
--

INSERT INTO `options` (`id`, `keyName`, `name`, `list`, `elist`, `ind`, `active`) VALUES
(1, 'storey', 'Storey', 'Single,Double', '', 1, 1),
(2, 'beds', 'Beds', '3,4,5', '', 2, 1),
(3, 'landWidth', 'Land Width (m)', '10,10.5,11,11.5', '', 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `partner`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Contenu de la table `partner`
--

INSERT INTO `partner` (`id`, `title`, `eTitle`, `lnk`, `img`, `active`, `ind`) VALUES
(1, 'Bambo interior2232323', 'Bambo interior', 'pspmedia.vn3232', '1483951483index_28.png', 1, 1),
(2, 'Bambo interior2232323', 'Bambo interior', 'pspmedia.vn3232', '1483951483index_28.png', 1, 1),
(3, 'Bambo interior2232323', 'Bambo interior', 'pspmedia.vn3232', '1483951483index_28.png', 1, 1),
(4, 'Bambo interior2232323', 'Bambo interior', 'pspmedia.vn3232', '1483951483index_28.png', 1, 1),
(5, 'Bambo interior2232323', 'Bambo interior', 'pspmedia.vn3232', '1483951483index_28.png', 1, 1),
(6, 'Bambo interior2232323', 'Bambo interior', 'pspmedia.vn3232', '1483951483index_28.png', 1, 1),
(7, 'Bambo interior2232323', 'Bambo interior', 'pspmedia.vn3232', '1483951483index_28.png', 1, 1),
(8, 'Bambo interior2232323', 'Bambo interior', 'pspmedia.vn3232', '1483951483index_28.png', 1, 1),
(9, 'Bambo interior2232323', 'Bambo interior', 'pspmedia.vn3232', '1483951483index_28.png', 1, 1),
(10, 'Bambo interior2232323', 'Bambo interior', 'pspmedia.vn3232', '1483951483index_28.png', 1, 1),
(11, 'Bambo interior2232323', 'Bambo interior', 'pspmedia.vn3232', '1483951483index_28.png', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `partner_detail`
--

CREATE TABLE IF NOT EXISTS `partner_detail` (
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
  `img` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `home` tinyint(4) NOT NULL DEFAULT '0',
  `ind` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pId` (`pId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `feature` longtext NOT NULL,
  `price` int(11) DEFAULT NULL,
  `storey` text NOT NULL,
  `beds` int(11) NOT NULL,
  `landWidth` float NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=251 ;

--
-- Contenu de la table `product`
--

INSERT INTO `product` (`id`, `title`, `feature`, `price`, `storey`, `beds`, `landWidth`, `price_reduce`, `in_stock`, `condition`, `brand_id`, `detail`, `content`, `teach`, `video`, `meta_keyword`, `meta_description`, `manual`, `e_manual`, `promotion`, `e_promotion`, `e_title`, `e_feature`, `e_detail`, `e_content`, `e_teach`, `e_meta_keyword`, `e_meta_description`, `pd_option`, `lnk`, `e_lnk`, `pId`, `active`, `home`, `ind`) VALUES
(226, 'Wembley Benson 285', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $220.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 220000, 'Single', 4, 12.5, NULL, 0, 0, 0, '<span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Bộ đếm đa năng 1 trạng thái, kích thước 72 x 72mm</strong></span></span></span>\r\n<ul>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Nguồn cấp: 100-240VAC</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chế độ hoạt động: 1-stage preset counter, total and preset counter *1 (lưạ chọn)</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Hiển thị negative transmissive&nbsp;LCD, 6 số, -99,999 ~ 999,999</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chọn màu hiển thị</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Ngõ vào NPN/PNP và cảm biến 2-dây</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chọn chế độ ngõ vào: Increment, decrement, command (UP/DOWN A), individual (UP/DOWN B), quadrature (UP/DOWN C)</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Ngõ ra: Rơle và NPN</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chọn&nbsp;chế độ ngõ ra:&nbsp;N, F, C, R, K-1, P, Q, A, K-2, D, L</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Ngõ ra tác động nhanh: 0.01 ~ 99.99s</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chức năng đếm: 1-stage counter / 1-stage counter with total counter</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tốc độ: 30Hz / 5kHz</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Có nguồn cho thiết bị ngoài: 12VDC, 100mA&nbsp;</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tiêu chuẩn: UL, CSA, EN, CE. IP54&nbsp;</strong></span></span></span></li>\r\n</ul>\r\n', '<img alt="" src="/file/ckfinder/userfiles/images/BENSON%20285_RHS.jpg" style="float:left; height:1094px; width:600px" />', '', '', 'Wembley Benson 285', 'Wembley Benson 285', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 21),
(227, 'New Orleans Benson 285', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $220.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 220000, 'Single', 4, 12.5, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/BENSON%20285_LHS.jpg" style="float:left; height:1094px; width:600px" />', '', '', 'New Orleans Benson 285', 'New Orleans Benson 285', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 13),
(228, 'Outlook Calgary 280', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $220.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 220000, 'Single', 4, 14, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Calgary-280-MK2_RHS.jpg" style="float:left; height:849px; width:600px" />', '', '', 'Outlook Calgary 280', 'Outlook Calgary 280', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 15),
(229, 'Westcott Calgary 280', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $220.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 220000, 'Single', 4, 14, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Calgary-280-MK2_LHS.jpg" style="float:left; height:849px; width:600px" />', '', '', 'Westcott Calgary 280', 'Westcott Calgary 280', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 1, 24),
(230, 'Sarin Fremont 250', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $190.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 190000, 'Single', 4, 12.5, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/FREMONT%20250_LHS.jpg" style="float:left; height:1190px; width:600px" /><br />\r\n&nbsp;', '', '', 'Sarin Fremont 250', 'Sarin Fremont 250', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 19),
(231, 'Boston Kyalami 345', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $290.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 290000, 'Double', 4, 12.5, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Kyalami%20345_LHS.jpg" style="float:left; height:564px; width:600px" />', '', '', 'Boston Kyalami 345', 'Boston Kyalami 345', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 1),
(232, 'Langford Kyalami 370', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $290.000</strong></span></span>\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 290000, 'Double', 4, 12.5, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/KYALAMI%20370_RHS.jpg" style="float:left; height:507px; width:600px" />', '', '', 'Langford Kyalami 370', 'Langford Kyalami 370', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 8),
(233, 'Glen Laguna 350', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $250.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>17&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 250000, 'Single', 4, 17, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Laguna_350_LHS.jpg" style="float:left; height:876px; width:600px" />', '', '', 'Glen Laguna 350', 'Glen Laguna 350', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 6),
(234, 'Malibu Madrid 260', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $210.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 210000, 'Single', 4, 12.5, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Madrid-260-RHS.jpg" style="float:left; height:1154px; width:600px" />', '', '', 'Malibu Madrid 260', 'Malibu Madrid 260', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 9),
(235, 'Contempo Mitchell 250', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $190.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 190000, 'Single', 4, 14, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Mitchell%20250_RHS.jpg" style="float:left; height:910px; width:600px" />', '', '', 'Contempo Mitchell 250', 'Contempo Mitchell 250', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 3),
(236, 'Sarin Mitchell 250', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $190.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 190000, 'Single', 4, 14, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Mitchell%20250_RHS.jpg" style="float:left; height:910px; width:600px" />', '', '', 'Sarin Mitchell 250', 'Sarin Mitchell 250', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 20),
(237, 'Impression Palazzo 380', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $320.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>16&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 320000, 'Double', 4, 16, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Palazzo_380_RHS.jpg" style="float:left; height:358px; width:600px" />', '', '', 'Impression Palazzo 380', 'Impression Palazzo 380', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 7),
(238, 'Wembley Radisson 225', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $180.000</strong></span></span>\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 180000, 'Single', 4, 12.5, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Radisson_225_RHS.jpg" style="float:left; height:1132px; width:600px" />', '', '', 'Wembley Radisson 225', 'Wembley Radisson 225', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 1, 22),
(239, 'Modena Ritz 385', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $300.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 300000, 'Double', 4, 14, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Ritz%20385_LHS.jpg" style="float:left; height:526px; width:600px" />', '', '', 'Modena Ritz 385', 'Modena Ritz 385', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 12),
(240, 'Medici Ritz 400', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $300.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 300000, 'Double', 4, 14, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Ritz-400-MK2_LHS.jpg" style="float:left; height:424px; width:600px" />', '', '', 'Medici Ritz 400', 'Medici Ritz 400', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 10),
(241, 'Medici Ritz 445', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $340.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 340000, 'Double', 4, 14, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Ritz%20445_LHS.jpg" style="float:left; height:484px; width:600px" />', '', '', 'Medici Ritz 445', 'Medici Ritz 445', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 11),
(242, 'Osaka Riviera 280', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $250.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>10 &nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 250000, 'Double', 4, 10, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Riviera%20280_RHS.jpg" style="float:left; height:637px; width:600px" />', '', '', 'Osaka Riviera 280', 'Osaka Riviera 280', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 14),
(243, 'Wembley Sanford 240', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $180.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 180000, 'Single', 4, 12.5, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Sanford_240_LHS.jpg" style="float:left; height:1154px; width:600px" />', '', '', 'Wembley Sanford 240', 'Wembley Sanford 240', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 23),
(244, 'Patriot Varano 305', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $230.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>16 &nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 230000, 'Single', 4, 16, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Varano_305_LHS.jpg" style="float:left; height:959px; width:600px" />', '', '', 'Patriot Varano 305', 'Patriot Varano 305', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 16),
(245, 'Cambridge Heathcote 39', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $250.000</strong></span></span>\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 250000, 'Double', 3, 14, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Heathcote%2039.png" style="height:992px; margin-left:10px; margin-right:10px; width:600px" /><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Heathcote%2039%20(1).png" style="height:945px; width:600px" />', '', '', 'Cambridge Heathcote 39', 'Cambridge Heathcote 39', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 1, 2),
(246, 'Duke Hudson 28', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $200.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 200000, 'Single', 4, 12.5, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Hudson%2028.png" style="float:left; height:1104px; width:600px" />', '', '', 'Duke Hudson 28', 'Duke Hudson 28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 4),
(247, 'Fitzroy Tasman 20', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $200.000</strong></span></span>\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 200000, 'Single', 4, 12.5, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/TASMAN%2020.png" style="float:left; height:1047px; width:600px" />', '', '', 'Fitzroy Tasman 20', 'Fitzroy Tasman 20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 5),
(248, 'President Flinders 19', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $200.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 200000, 'Single', 4, 12.5, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Flinders%2019.png" style="float:left; height:1062px; width:600px" />', '', '', 'President Flinders 19', 'President Flinders 19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 17),
(249, 'Riviera Elwood 20', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $200.000</strong></span></span>\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5 &nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 200000, 'Single', 4, 12.5, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Elwood%2020.png" style="height:1200px; width:655px" />', '', '', 'Riviera Elwood 20', 'Riviera Elwood 20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 18),
(250, 'Whitlam Jasper 20', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $200.000</strong></span></span>\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:338px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 200000, 'Single', 4, 12.5, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Jasper%2020.png" style="float:left; height:1016px; margin-left:10px; margin-right:10px; width:600px" />', '', '', 'Whitlam Jasper 20', 'Whitlam Jasper 20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 25);

-- --------------------------------------------------------

--
-- Structure de la table `product_cate`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `product_cate`
--

INSERT INTO `product_cate` (`id`, `title`, `sum`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_meta_keyword`, `e_meta_description`, `img`, `icon`, `pId`, `lev`, `ind`, `active`) VALUES
(1, 'BIẾN TẦN', '', 'LED Par Lights', 'LED Par Lights', 'Electrical Parts', '', 'Electrical Parts', 'Electrical Parts', '', '', 0, 1, 1, 1),
(2, 'SERVO', '', 'LED Moving Head', 'LED Moving Head', 'Auto Parts', '', 'Auto Parts', 'Auto Parts', '', '', 0, 1, 2, 1),
(3, 'ĐỘNG CƠ ', '', 'Moving Head light', 'Moving Head light', 'Mechanical Heat Sink', '', 'Mechanical Heat Sink', 'Mechanical Heat Sink', '', '', 0, 1, 3, 1),
(8, 'INVERTER OMRON', '', 'INVERTER OMRON', 'INVERTER OMRON', '', '', '', '', '', '', 0, 1, 8, 1),
(15, 'DUCATI', '', 'DUCATI', 'DUCATI', '', '', '', '', '', '', 0, 1, 6, 1),
(16, 'YASKAWA', '', 'YASKAWA', 'YASKAWA', '', '', '', '', '', '', 0, 1, 1, 1),
(17, 'BỘ ĐIỀU KHIỂN', '', 'BỘ ĐIỀU KHIỂN', 'BỘ ĐIỀU KHIỂN', '', '', '', '', '', '', 0, 1, 13, 1);

-- --------------------------------------------------------

--
-- Structure de la table `product_image`
--

CREATE TABLE IF NOT EXISTS `product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` text NOT NULL,
  `pId` int(11) NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pId` (`pId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=261 ;

--
-- Contenu de la table `product_image`
--

INSERT INTO `product_image` (`id`, `img`, `pId`, `ind`, `active`) VALUES
(235, '1491794859Designer New Orleans LHS 1132x674.jpg', 227, 1, 1),
(236, '1491795137Designer Wembley Varano RHS 1132x674.jpg', 226, 1, 1),
(237, '1491795868DESIGNER OUTLOOK RHS.jpg', 228, 1, 1),
(238, '1491796286Designer Westcott LHS.jpg', 229, 1, 1),
(239, '1491796655Edge Sarin LHS 1132x674.jpg', 230, 1, 1),
(240, '1491798180Designer Boston Kyalami LHS 1132x674.jpg', 231, 1, 1),
(241, '1491963282Langford Kyalami 370.jpg', 232, 1, 1),
(242, '1491963428Glen Laguna 350.jpg', 233, 1, 1),
(244, '1491963549Malibu Madrid 260 1132.jpg', 234, 1, 1),
(245, '1491963721Contempo Mitchell 250.jpg', 235, 1, 1),
(246, '1491964110Sarin Mitchell 250.jpg', 236, 1, 1),
(247, '1491964183Impression Palazzo 380.jpg', 237, 1, 1),
(248, '1491964383Wembley Radisson 225.jpg', 238, 1, 1),
(249, '1491964449Modena Ritz 385.jpg', 239, 1, 1),
(250, '1491964585Medici Ritz 400.jpg', 240, 1, 1),
(251, '1491964659Medici Ritz 445.jpg', 241, 1, 1),
(252, '1491964824Osaka Riviera 280.jpg', 242, 1, 1),
(253, '1491964982Wembley Sandford 240.jpg', 243, 1, 1),
(254, '1491965046Patriot Varano 305.jpg', 244, 1, 1),
(255, '1492593872cambridge.jpg', 245, 1, 1),
(256, '1492593955duke.jpg', 246, 1, 1),
(257, '1492594038fitzroy.jpg', 247, 1, 1),
(258, '1492594149president.jpg', 248, 1, 1),
(259, '1492594239riviera.jpg', 249, 1, 1),
(260, '1492594318whitlam.jpg', 250, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `qtext`
--

CREATE TABLE IF NOT EXISTS `qtext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `e_title` text NOT NULL,
  `content` longtext NOT NULL,
  `e_content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Contenu de la table `qtext`
--

INSERT INTO `qtext` (`id`, `title`, `e_title`, `content`, `e_content`) VALUES
(2, 'Hotline', '', '1800 918 503', ''),
(3, 'Liên hệ', '', '<div style="text-align: center;"><span style="color:#ff0099"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="line-height:3"><span style="font-size:20px">JJ Ketsa Property Agents</span></span></span></span></span></div>\r\n<span style="color:#FFF0F5"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="line-height:3">a. Suite 116, 566 St Kilda Road, Melbourne Vic 3004<br />\r\nt. 1800 918 503&nbsp;<br />\r\ne. contact@jjketsaproperty.com.au</span></span></span></span>', ''),
(4, 'Footer', '', '<span style="color:#ff3399"><span style="font-size:20px"><strong>JJ Ketsa Property Agents</strong></span></span><br />\r\n<span style="font-size:16px"><span style="line-height:2">a. Suite 116, 566 St Kilda Road, Melbourne Vic 3004<br />\r\nt. 1800 918 503&nbsp;<br />\r\ne. contact@jjketsaproperty.com.au<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Designer%20New%20Orleans%20LHS%201132x674.jpg" style="float:left; height:167px; width:280px" /></span></span>', ''),
(5, 'Header Text', '', '343435556', ''),
(6, 'build indicator', '', '<strong>Why BUILD with us?</strong><br />\r\n<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">With the experience, innovation and quality delivered by our Licenced Builders, you can build with peace of mind. Choose from our extensive designs and floorplans. If you can&#39;t find what you like, we can custom your design.</span></span></span>', ''),
(7, 'about indicator', '', '', ''),
(8, 'sell summary', '', '<strong>Why SELL with us?</strong><br />\r\nOur Vedors enjoy a highly skilled and boutique service from an experienced team who understand what it takes to deliver them the Premium Price. Ask us how we do this and why our progressive business structure allows them to save $1000&#39;s...', ''),
(9, 'Concierge summary', '', '<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Our property services extends a little further. Use our Concierge Services for Custom Design, Development, Knockdown- Rebuild, Property Finance or Builder Liaising.</span></span></span>', ''),
(10, 'buy sum', '', '<div style="text-align: center; margin-left: 40px;"><strong><span style="font-size:14px">What Is A Buyer Advocate?</span></strong><br />\r\nA Buyer Advocate is a fully licensed real estate agent who sources properties according to a brief. </div>\r\n\r\n<div style="text-align: center; margin-left: 40px;">A good Buyers Advocate will find you the best property, in the best position that your budget allows.</div>\r\n', ''),
(11, 'home_build', '', '<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Why BUILD with us?</strong><br />\r\nWith the experience, innovation and quality delivered by our Licenced Builders, you can build with peace of mind. Choose from our extensive designs and floorplans. If you can&#39;t find what you like, we can custom your design.</span></span></span>', ''),
(12, 'home_buy', '', '<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Let us help you buy.</strong><br />\r\nDo you need guidance when it comes to buying a home or investment property?&nbsp; Price guides, suburb guides, finance and legal, we can help you through the maze of information overload. </span></span></span>', ''),
(13, 'home_concierge', '', '<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Our property services extends a little further. Use our Concierge Services for Custom Design, Development,<br />\r\nKnockdown- Rebuild, Property Finance or Builder Liaising.</span></span></span>', ''),
(14, 'home_sell', '', '<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Why SELL with us?</strong><br />\r\nOur Vendors enjoy a highly skilled and boutique service from an experienced team who understand what it takes to deliver them the Premium Price. Ask us how we do this and why our progressive business structure allows them to save $1000&#39;s...</span></span></span>', ''),
(15, 'home_about', '', '<p style="text-align:center"><span style="font-size:14px"><span style="line-height:2"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit">You can say we are not your typical agents.&nbsp; We wanted to offer a service that help customers Build, Buy or Sell their home.&nbsp; By partnering with some of the best Industry Leaders to assist customers through the emotional rollercoaster of information overload.&nbsp; We work to make the process simple and enjoyable.&nbsp;</span></span>&nbsp;</span></span></span></p>\r\n', '');

-- --------------------------------------------------------

--
-- Structure de la table `sell`
--

CREATE TABLE IF NOT EXISTS `sell` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `feature` longtext NOT NULL,
  `price` int(11) DEFAULT NULL,
  `storey` text NOT NULL,
  `beds` int(11) NOT NULL,
  `landWidth` float NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `sell`
--

INSERT INTO `sell` (`id`, `title`, `feature`, `price`, `storey`, `beds`, `landWidth`, `price_reduce`, `in_stock`, `condition`, `brand_id`, `detail`, `content`, `teach`, `video`, `meta_keyword`, `meta_description`, `manual`, `e_manual`, `promotion`, `e_promotion`, `e_title`, `e_feature`, `e_detail`, `e_content`, `e_teach`, `e_meta_keyword`, `e_meta_description`, `pd_option`, `lnk`, `e_lnk`, `pId`, `active`, `home`, `ind`) VALUES
(1, 'Lot 81 Wollert Street, Wollert - Fitzroy Jasper 20', '', 0, '', 0, 0, NULL, 0, 0, 0, '', '<a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1QXlsbEtHVEFIQXM">Download</a><br />\r\n<img alt="Lot 81 Wollert Street, Wollert - Fitzroy Jasper 20" src="/file/ckfinder/userfiles/images/Jasper%2020(1).png" style="float:left; height:1016px; width:600px" />', '', '', '', 'Lot 81 Wollert Street, Wollert - Fitzroy Jasper 20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 1),
(2, 'Lot 106 Oakdale Drive, Wyndham Vale - President Jackson 18', '', 0, '', 0, 0, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Jackson%2018.png" style="height:1200px; width:590px" />', '', '', 'Lot 106 Oakdale Drive, Wyndham Vale - President Jackson 18', 'Lot 106 Oakdale Drive, Wyndham Vale - President Jackson 18', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `sell_cate`
--

CREATE TABLE IF NOT EXISTS `sell_cate` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `sell_cate`
--

INSERT INTO `sell_cate` (`id`, `title`, `sum`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_meta_keyword`, `e_meta_description`, `img`, `icon`, `pId`, `lev`, `ind`, `active`) VALUES
(1, 'BIẾN TẦN', '', 'LED Par Lights', 'LED Par Lights', 'Electrical Parts', '', 'Electrical Parts', 'Electrical Parts', '', '', 0, 1, 1, 1),
(2, 'SERVO', '', 'LED Moving Head', 'LED Moving Head', 'Auto Parts', '', 'Auto Parts', 'Auto Parts', '', '', 0, 1, 2, 1),
(3, 'ĐỘNG CƠ ', '', 'Moving Head light', 'Moving Head light', 'Mechanical Heat Sink', '', 'Mechanical Heat Sink', 'Mechanical Heat Sink', '', '', 0, 1, 3, 1),
(8, 'INVERTER OMRON', '', 'INVERTER OMRON', 'INVERTER OMRON', '', '', '', '', '', '', 0, 1, 8, 1),
(15, 'DUCATI', '', 'DUCATI', 'DUCATI', '', '', '', '', '', '', 0, 1, 6, 1),
(16, 'YASKAWA', '', 'YASKAWA', 'YASKAWA', '', '', '', '', '', '', 0, 1, 1, 1),
(17, 'BỘ ĐIỀU KHIỂN', '', 'BỘ ĐIỀU KHIỂN', 'BỘ ĐIỀU KHIỂN', '', '', '', '', '', '', 0, 1, 13, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sell_image`
--

CREATE TABLE IF NOT EXISTS `sell_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` text NOT NULL,
  `pId` int(11) NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pId` (`pId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `sell_image`
--

INSERT INTO `sell_image` (`id`, `img`, `pId`, `ind`, `active`) VALUES
(1, '1495003069fitzroy.jpg', 1, 1, 1),
(2, '1495005100president.jpg', 2, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `session_id` varchar(255) NOT NULL,
  `last_visit` datetime NOT NULL DEFAULT '2017-01-03 00:00:00',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `session`
--

INSERT INTO `session` (`session_id`, `last_visit`) VALUES
('0t5hddeb3438eando09bk6uop1', '2017-01-03 15:13:38'),
('7fbha854m8kpq4mtlquhfe64h1', '2017-01-03 15:22:14'),
('pjg2af50coeiuig9uu970r8n66', '2017-01-03 15:13:39');

-- --------------------------------------------------------

--
-- Structure de la table `slider`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Contenu de la table `slider`
--

INSERT INTO `slider` (`id`, `title`, `e_title`, `sum`, `e_sum`, `img`, `lnk`, `e_lnk`, `ind`, `active`) VALUES
(7, '', '', '', '', '1492592095banner2.jpg', '', '', 3, 1),
(9, '', '', '', '', '1492592379banner3.jpg', '', '', 2, 1),
(10, '', '', '', '', '1492832489banner3.jpg', '', '', 4, 1),
(11, '', '', '', '', '1492832519banner4.jpg', '', '', 5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `vs_counter`
--

CREATE TABLE IF NOT EXISTS `vs_counter` (
  `hit_counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `vs_counter`
--

INSERT INTO `vs_counter` (`hit_counter`) VALUES
(509);

-- --------------------------------------------------------

--
-- Structure de la table `vs_detail`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=507 ;

--
-- Contenu de la table `vs_detail`
--

INSERT INTO `vs_detail` (`id`, `vs_ip`, `vs_city`, `vs_browser`, `vs_os`, `vs_id`, `vs_flag`, `dates`) VALUES
(307, 'unknown', 'unknown', 'Chrome', 'Windows 8.1', 'dai9m30cqgecqga44rvjreb2m5', 0, '2017-04-21 03:18:07'),
(382, 'unknown', 'unknown', 'Chrome', 'Windows 10', '416cirirbmrrvjfjb9qubma6d3', 0, '2017-04-22 03:03:46'),
(429, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'k19ca3h3m58sd9lc5cn0k20si1', 0, '2017-04-21 06:33:34'),
(430, 'unknown', 'unknown', 'Firefox', 'Windows XP', 'vtnbvqe3erapp50b8u2fbgc1u5', 0, '2017-04-21 06:33:34'),
(431, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '6pd6ero83sn5lg1kbht26ormn7', 0, '2017-04-21 06:33:34'),
(432, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '1538o21lch421ufhq280r1ddo5', 0, '2017-04-21 07:02:34'),
(433, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'j6cep8ag8c2f4gcpovdohjjpg5', 0, '2017-04-21 07:31:57'),
(434, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'blaf0ck2785sal9qguth66k184', 0, '2017-04-21 07:38:18'),
(435, 'unknown', 'unknown', 'Chrome', 'Windows 8.1', 'c9d4ges6favcgna4agju3jfdu4', 1, '2017-04-22 03:03:46'),
(436, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'c46oo215g4qccl9foi4j7d6qa2', 0, '2017-04-21 08:31:54'),
(437, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'kag2imjspi00bingh9aa693ni5', 0, '2017-04-21 09:01:59'),
(438, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'tnteefs3a4qmf72qumjadeaa42', 0, '2017-04-21 09:31:53'),
(439, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'ejm608tgvqeufrd5l3bbuvsak0', 0, '2017-04-21 10:00:20'),
(440, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'v4jm824iq1sd2o5qeopvejhlp7', 0, '2017-04-21 10:31:45'),
(441, 'unknown', 'unknown', 'Firefox', 'Windows 7', '0caqtvvv3idrefe11pato457m7', 0, '2017-04-21 10:31:45'),
(442, 'unknown', 'unknown', 'Internet Explorer', 'Windows Vista', '7as6nkmgggjgpmd1a1ich1vo42', 0, '2017-04-21 10:31:45'),
(443, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'qpv87il3ffgmuum7m1lh4i4cq7', 0, '2017-04-21 10:31:45'),
(444, 'unknown', 'unknown', 'Safari', 'iPad', 'q62i1qgp984caj8dvjpcqoee64', 0, '2017-04-21 10:31:45'),
(445, 'unknown', 'unknown', 'Internet Explorer', 'Windows Vista', '2puj4lmntq537ffoie6pm6oj93', 0, '2017-04-21 10:31:45'),
(446, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '4f7jk8223b5vbn3vbe8h7dni52', 0, '2017-04-21 10:31:45'),
(447, 'unknown', 'unknown', 'Internet Explorer', 'Windows Vista', 'th52oljuu238uv4voei3qi11t7', 0, '2017-04-21 10:31:45'),
(448, 'unknown', 'unknown', 'Internet Explorer', 'Windows Vista', 'mpsvg5ue5cecd30gqv22hgg661', 0, '2017-04-21 10:31:45'),
(449, 'unknown', 'unknown', 'Handheld Browser', 'Android', 'vr9nlof62ob7egvgdmqlqsrbf3', 0, '2017-04-21 10:31:45'),
(450, 'unknown', 'unknown', 'Internet Explorer', 'Windows Vista', '8eqaird6l1e219luaafnq70so5', 0, '2017-04-21 10:31:45'),
(451, 'unknown', 'unknown', 'Chrome', 'Windows XP', 'h3dol7an1ohdghgea28oc0nk56', 0, '2017-04-21 10:31:45'),
(452, 'unknown', 'unknown', 'Internet Explorer', 'Windows Vista', '6qsk49eqgqsjepdakjq724lag1', 0, '2017-04-21 10:31:45'),
(453, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '1g3ug5bp7l9tp809sufqg84pa7', 0, '2017-04-21 11:31:06'),
(454, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'f1oj8d5jevrl4lv4ap6vsuv2m5', 0, '2017-04-21 12:02:04'),
(455, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'b154hn2a80h2agvfus30mll6f6', 0, '2017-04-21 12:02:04'),
(456, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '7moo6rd5jb6k6a0vhnk5r84hq3', 0, '2017-04-21 12:31:36'),
(457, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'vutiddhnshv2phn23aacpr2g54', 0, '2017-04-21 13:01:35'),
(458, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'ou6om40feduslapld8qqcesvf3', 0, '2017-04-21 13:31:12'),
(459, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'uc4um8c4i4ccm7k3tnua46nkh1', 0, '2017-04-21 14:01:17'),
(460, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'j8th30jf20qvvbfm80smmmjpu1', 0, '2017-04-21 14:30:59'),
(461, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'tqurd14t2cieh0qmqi3tu2g8p1', 0, '2017-04-21 15:01:52'),
(462, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'vedptuu0cedser89g83ga7n5a4', 0, '2017-04-21 15:31:20'),
(463, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '79rugj9up3qo9kdn12cfl5m140', 0, '2017-04-21 16:01:16'),
(464, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'jgljetv480h5jlu8ativ7ml7v6', 0, '2017-04-21 16:31:09'),
(465, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'eia1urhspesf7guj2laesi6me6', 0, '2017-04-21 17:00:50'),
(466, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '8g8ekr93091des0u5cj5bpic30', 0, '2017-04-21 17:30:29'),
(467, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '79scpmthi4afu7n4j9vb79i534', 0, '2017-04-21 18:00:19'),
(468, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '2ecnhi2li4su6j0blkpet5bd72', 0, '2017-04-21 18:31:05'),
(469, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'p4os3t4gclk54enrhccr05lhq6', 0, '2017-04-21 19:02:48'),
(470, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'd30btv9vi5mpdho3d7h4od6v24', 0, '2017-04-21 19:12:31'),
(471, 'unknown', 'unknown', 'Firefox', 'Windows 7', 'vq71cls1kiqmtlm31ujiml1or6', 0, '2017-04-21 19:17:49'),
(472, 'unknown', 'unknown', 'Internet Explorer', 'Windows Vista', 'ce90k9j54mabdbjvbouc6l10h7', 0, '2017-04-21 19:17:49'),
(473, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '7j7jql023m8a8r0iqdc4rsme20', 0, '2017-04-21 19:17:49'),
(474, 'unknown', 'unknown', 'Safari', 'iPad', '908d63g69rdkq0luu4b04kj316', 0, '2017-04-21 19:17:49'),
(475, 'unknown', 'unknown', 'Internet Explorer', 'Windows Vista', 'gs750oifnu59loukl88d7ouos6', 0, '2017-04-21 19:17:49'),
(476, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'jn7lbcoud99obn1ngr38b3q980', 0, '2017-04-21 19:17:49'),
(477, 'unknown', 'unknown', 'Internet Explorer', 'Windows Vista', 'ma1f005egbb25n28sq46rusrb7', 0, '2017-04-21 19:33:02'),
(478, 'unknown', 'unknown', 'Internet Explorer', 'Windows Vista', 'k8fcclvp894548n5vre8gsm1p7', 0, '2017-04-21 19:33:02'),
(479, 'unknown', 'unknown', 'Handheld Browser', 'Android', 'd4s91jham76lk8quu7kvgfot53', 0, '2017-04-21 19:33:02'),
(480, 'unknown', 'unknown', 'Internet Explorer', 'Windows Vista', 'jv26l07kvo0e2jabenc3df8po0', 0, '2017-04-21 19:33:02'),
(481, 'unknown', 'unknown', 'Chrome', 'Windows XP', 'phiud2ps6ivk23244tdg990e50', 0, '2017-04-21 19:33:02'),
(482, 'unknown', 'unknown', 'Internet Explorer', 'Windows Vista', 'd12fi8bvc1gqed61fh8a7mmpr5', 0, '2017-04-21 19:33:02'),
(483, 'unknown', 'unknown', 'Firefox', 'Windows 7', 'fqkgcbve9vbtcbc26uhf86fkn4', 0, '2017-04-21 19:33:02'),
(484, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'v5k5n8ehj5n13g3lnaupu2vtq3', 0, '2017-04-21 19:43:16'),
(485, 'unknown', 'unknown', 'Chrome', 'Windows 8', 'cp07vomll2etq341h8ihdsug41', 0, '2017-04-21 20:03:33'),
(486, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'udv0o878cdvhe7o8p4t60otlj0', 0, '2017-04-21 20:33:17'),
(487, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '5pa9bee0tp69l25527v8e9lco0', 0, '2017-04-21 21:02:22'),
(488, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'd425nr6d6srkgmt2fo5i0ibiu0', 0, '2017-04-21 21:32:34'),
(489, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'rblugua3c9ohd05n6eus4uj717', 0, '2017-04-21 22:02:25'),
(490, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'u5qikd585bj756ulrq8u97j600', 0, '2017-04-21 22:32:17'),
(491, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'ivq57fg1anegnif9gtsnumq8i3', 0, '2017-04-21 22:39:01'),
(492, 'unknown', 'unknown', 'Chrome', 'Windows 8.1', 'nji2ccs0fdcgt2nn6990g07jj3', 0, '2017-04-21 23:02:06'),
(493, 'unknown', 'unknown', 'Handheld Browser', 'Android', 'oivj23ket7fcefnq8kaliqhsr2', 0, '2017-04-21 22:47:09'),
(494, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'o94qt0gsi7138ieuvk9ff27kf6', 0, '2017-04-21 23:31:53'),
(495, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '7ikkalf6keuumedcintsli5lh3', 0, '2017-04-22 00:01:48'),
(496, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '9hdebob7kbulj03pn8umlof766', 0, '2017-04-22 00:30:32'),
(497, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '58cus7kvnkvto0vulfjj0qu0a1', 0, '2017-04-22 01:00:18'),
(498, 'unknown', 'unknown', 'Handheld Browser', 'iPhone', 'cd6g7reg20qerj89lri9tt6cd7', 0, '2017-04-22 01:09:12'),
(499, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'bt9t6g5b2auj8oa4c2grsfshp6', 0, '2017-04-22 01:15:29'),
(500, 'unknown', 'unknown', 'Firefox', 'Windows 7', 'qloibm0m5gs90vdje7582g4f52', 1, '2017-04-22 03:07:43'),
(501, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'fhcch3dosdauafpcch8ec632j4', 0, '2017-04-22 02:07:39'),
(502, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '03sotd42hmti655lbpcm6cnoa1', 0, '2017-04-22 02:12:41'),
(503, 'unknown', 'unknown', 'Chrome', 'Windows 7', '17bg6b1q6vc8t1kur7amrsbrv0', 0, '2017-04-22 02:30:58'),
(504, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '8bctqk0eu4q86aqvenfpkdvgi6', 0, '2017-04-22 02:44:08'),
(505, 'unknown', 'unknown', 'Handheld Browser', 'Android', '1stu2slukc9gs2k1mbbh2686d4', 0, '2017-04-22 03:07:31'),
(506, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '0ou489r44qqt808hhpi026ue24', 1, '2017-04-22 03:07:31');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `buy_image`
--
ALTER TABLE `buy_image`
  ADD CONSTRAINT `buy_image_ibfk_1` FOREIGN KEY (`pId`) REFERENCES `buy` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `product_image_ibfk_1` FOREIGN KEY (`pId`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sell_image`
--
ALTER TABLE `sell_image`
  ADD CONSTRAINT `sell_image_ibfk_1` FOREIGN KEY (`pId`) REFERENCES `sell` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
