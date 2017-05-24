-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 23, 2017 lúc 11:46 CH
-- Phiên bản máy phục vụ: 5.7.14
-- Phiên bản PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `xuongkhop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
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
  `ind` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `about`
--

INSERT INTO `about` (`id`, `title`, `sum`, `content`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_content`, `e_meta_keyword`, `e_meta_description`, `pId`, `img`, `active`, `home`, `ind`) VALUES
(1, 'Our Values ', '', '<div style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><span style="line-height:2"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit">When it comes to our &quot;Values&quot; - it should represent the principles and standards of our Company.&nbsp; Our customers should be confident that we will represent them with the highest level of professionalism, trust and integrity.&nbsp; It is imperative that these values emanate from the top and flow through to every team member.&nbsp; Our values extends to all our Partners, so they are aligned in the partnership services we are providing to our customers.</span></span></span></span></span></div>\r\n', 'JJ Ketsa Property Agents', 'When it comes to our &quot;Values&quot; - it should represent the principles and standards of our Company.  Our customers should be confident that we will represent them with the highest level of professionalism, trust and integrity.  It is imperative that these values emanate from the top and flow through to every team member.  Our values extends to all our Partners, so they are aligned in the partnership services we are providing to our customers.', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '<p>Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.</p>\r\n\r\n<p>Chồng làm giám đốc một công ty lớn trong ngành truyền thông, gia đình có đến 2 người giúp việc, chị Thu ở Núi Trúc, Hà Nội, vẫn giữ thói quen tự nấu nướng cho cả gia đình. Chồng cùng 2 cậu con trai của chị cũng chỉ thích ăn những món do nội tướng chế biến.</p>\r\n\r\n<p>&quot;Nhiều món ăn tuy đơn giản nhưng vẫn cần bí quyết chế biến riêng nên người khác nấu không hợp khẩu vị khiến chồng con tôi không ưng. Hai cô giúp việc chỉ phải dọn dẹp với giặt giũ, còn đi chợ hay nấu nướng thì tôi tự thu xếp công việc và thời gian để làm&quot;, chị Thu nói.</p>\r\n\r\n<p>Không ít lần chị Thu &quot;mất điểm&quot; vì công việc quá lu bu. Chị kể, đặt nồi cá kho lên bếp định một tiếng rưỡi tiếng xuống tắt lửa là vừa, nhưng mải quyết toán doanh thu cuối tháng của công ty nên chị quên mất. Ngửi thấy mùi khét, chị chạy xuống bếp thì nồi cá đã sắp thành than.</p>\r\n\r\n<p>Chia sẻ với bạn, chị Thu được mách về loại bếp điện từ hồng ngoại - kết hợp tính năng điện từ với hồng ngoại, có hẹn giờ nên tránh được tối đa những sơ suất tương tự &quot;vụ nồi cá&quot;. Ngoài ra, dùng loại bếp này, thời gian nấu nhanh, nấu được với tất cả các loại nồi chứ không bị bó hẹp như bếp từ. Cân nhắc mãi, chị Thu quyết định mua một chiếc dù mức giá khá cao, 45 triệu đồng cho loại 4 bếp.</p>\r\n\r\n<p>&quot;Chi phí ban đầu hơi cao nhưng tiết kiệm được thời gian nấu, tính ra chưa đầy 30 phút là xong bữa tối. Con cái còn nhỏ, ở nhà cả ngày với người giúp việc, mà gần đây xảy ra nhiều vụ nổ gas nên tôi càng lo, quyết tâm đầu tư bếp từ hồng ngoại để đảm bảo an toàn cho cả nhà&quot;, chị Thu tâm sự. Ngoài ra, mặt bếp sáng bóng, hợp với không gian căn bếp sang trọng mà vợ chồng chị đã cất công thiết kế, khiến chị Thu không tiếc khoản tiền gần 50 triệu đồng đã bỏ ra để mua.</p>\r\n\r\n<p>Chị Tiến ở Mỹ Đình, Hà Nội, phu nhân giám đốc chi nhánh của công ty dược có tiếng, cũng chọn bếp điện từ hồng ngoại cho gian bếp nhà mình. Chị lý giải, ngoài lý do an toàn, hình thức bắt mắt và nấu nướng nhanh, bếp có giá trị sử dụng cao, giảm được chi phí hằng tháng so với dùng các loại bếp thông thường.</p>\r\n\r\n<p>Theo chị, nếu dùng bếp gas, trung bình mỗi tháng gia đình chị hết khoảng 250.000 đồng. Từ khi chuyển sang dùng bếp từ hồng ngoại, cắt giảm được chi phí gas, chị tính toán thấy số tiền điện chỉ tăng thêm từ 120.000 đồng đến 150.000 đồng so với trước. Định kỳ hằng năm, chị không phải thay van gas, dây nối..., tuổi thọ của loại bếp này cũng gấp 2-3 lần so với bếp gas. Chưa kể, do có nhiều chức năng tự động như tự ngắt khi gặp vật thể lạ hoặc người dùng quên tắt... nên thiết bị nhà bếp này khá an toàn.</p>\r\n\r\n<p>&quot;Tôi thấy giá khá cao nhưng &#39;đắt xắt ra miếng&#39;, đầu tư lớn ban đầu mà chi phí dùng về sau rẻ hơn khá nhiều nên tính về lâu dài thì tiết kiệm hơn. Một điểm nữa tôi rất thích là trời nóng vẫn có thể bật quạt hướng thẳng vào vị trí đứng nấu mà không sợ bị tản nhiệt như nấu bằng bếp gas&quot;, chị Tiến giải thích.</p>\r\n\r\n<p>Xuất hiện chưa lâu và có mức giá khá cao song bếp điện từ hồng ngoại đã được khá nhiều bà nội trợ đầu tư chọn lựa. Giá bếp dao động từ 20 đến trên 40 triệu đồng mỗi chiếc, tùy vào xuất xứ, vật liệu và số lượng mặt bếp. Ông Phạm Đức Tuân, Giám đốc kinh doanh ngành hàng bếp của Kangaroo, một những doanh nghiệp vừa tung ra dòng sản phẩm bếp điện từ hồng ngoại cao cấp cho biết, chỉ trong vòng 2 tháng, số lượng bán ra đã hơn 5.000 chiếc, trong đó, doanh số tháng sau cao hơn tháng trước 30%.</p>\r\n\r\n<p>Trao đổi với&nbsp;<em>VnExpress.net</em>, ông cho biết, so với bếp gas, bếp điện từ hồng ngoại Kangaroo có hiệu suất hấp thụ nhiệt cao đến 90%, trong khi bếp gas đạt 55%, bếp điện thông thường đạt khoảng 65%. Theo đó, nếu chuyển từ bếp gas sang bếp điện từ hồng ngoại, người tiêu dùng tiết kiệm được đến 40% chi phí nhiên liệu cho việc đun nấu, thời gian nấu nướng cũng vì thế mà nhanh gấp 2-3 lần.</p>\r\n\r\n<p>Hai bộ phận quan trọng nhất của bếp là mặt kính và bộ gia nhiệt đều được nhập khẩu từ các hãng danh tiếng của Đức là Schott và Ego, đảm bảo độ bền và hiệu suất ra nhiệt tối đa. Ngoài ra với độ dày 4 mm, bếp có khả năng chịu lực và chịu nhiệt lên đến 800 độ C. Nhiệt độ được truyền thẳng đứng đến đáy nồi, nhiệt năng không bị thất thoát ra không khí.</p>\r\n\r\n<p>Tuy nhiên, vị chuyên gia khẳng định, dù sử dụng bất kỳ loại bếp nào, người nội trợ cũng nên vệ sinh, bảo trì thiết bị thường xuyên, giữ không khí trong phòng bếp lưu thông, thoáng mát... để đảm bảo chất lượng sản phẩm.</p>\r\n', '', '', 0, '1492651860riviera.jpg', 1, 0, 3),
(2, 'Our VISION &amp; MISSION ', '', '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="line-height:2"><strong>Our VISION</strong> is to make the property building, buying and selling process an enjoyable experience.&nbsp; Building new, buying established and selling property is one of the most major transactions we experience in life, so we want to help as many people BUILD, BUY or SELL their property by connecting them with the most experienced Industry Leaders. Our VISION is to be highest recommended Agency in the Industry.&nbsp; The biggest compliment to a Business is a recommendation and referral.<br />\r\n<strong>Our MISSION</strong> is to partner with the most experienced Industry Leaders to assist our customers&nbsp; BUILD, BUY or SELL their property in the most simple and enjoyable way.&nbsp; Our goal is to offer the highest level of customer service so that the growth of our Business will be from recommendations and referrals. </span></span></span>', 'JJ Ketsa Property Agents', 'Our VISION is to make the property building, buying and selling process an enjoyable experience. Our MISSION is to partner with the most experienced Industry Leaders to assist our customers  BUILD, BUY or Sell their property in the most simple and enjoyable way', 'Sự lên ngôi của bếp từ trong căn bếp Việt', 'Không chỉ tuyệt vời về hiệu quả sử dụng, bếp từ còn rất được...', '<p><strong>Vì&nbsp;sao bếp gas bị thất thế?</strong></p>\r\n\r\n<p>Còn nhớ vụ nổ gas cách đây không lâu tại phố Tạ Quang Bửu khiến hai cháu bé bị tử vong rất thương tâm, bố và mẹ bị thương nặng. Chính vì lẽ đó mà không ít người e dè khi lựa chọn bếp gas để sử dụng.</p>\r\n\r\n<p>Anh Hoàng Vũ Linh (Đống Đa &ndash; Hà Nội) cho hay: &ldquo;Vụ nổ khí gas vừa rồi thật kinh khủng quá. Gia đình tôi cũng sử dụng gas để nấu nướng nhưng không hay thường xuyên kiểm tra xem dây dẫn gas, van gas có an toàn không, đã bị hư hại gì chưa. Nhưng sau lần này thì tôi sẽ thường xuyên gọi thợ tới kiểm tra hơn để đảm bảo an toàn khi sử dụng&rdquo;.</p>\r\n\r\n<p><a href="http://bep.vn/upload/editor/images/bep-ga-bep-tu.jpg" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 1"><img alt="Hình ảnh Sự lên ngôi của bếp từ trong căn bếp Việt số 1" src="http://bep.vn/upload/editor/images/bep-ga-bep-tu.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; max-width:100%; vertical-align:middle" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 1" /></a></p>\r\n\r\n<p><em>Nhiều người tiêu dùng e ngại tính an toàn của bếp gas</em></p>\r\n\r\n<p>Chính vì những &ldquo;ẩn họa&rdquo; khôn lường của bếp gas mà không ít gia đình đã loại nó ra khỏi danh mục những đồ dùng trong nhà bếp. Chị Trần Hoàng Ngân (Từ Liêm &ndash; Hà Nội) chia sẻ: &ldquo;Sau một vài vụ cháy nổ do gas gây ra, gia đình tôi đã quyết định không sử dụng loại bếp này nữa, chuyển sang sử dụng loại bếp khác an toàn hơn để tránh những rủi ro đáng tiếc có thể xảy ra&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Và sự lên ngôi của bếp từ</strong></p>\r\n\r\n<p>Chẳng có gì lạ khi người tiêu dùng quay lưng lại với bếp gas và &ldquo;sính&rdquo; sử dụng&nbsp;<a href="http://bep.vn/bep-tu" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank"><strong>bếp từ</strong></a>&nbsp;bởi sự an toàn, tiết kiệm và đẹp sang trọng của nó.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với cơ chế làm trực tiếp phần thức ăn bên trong nồi nên hiệu suất sử dụng của bếp từ rất cao lên tới 90%, cao hơn rất nhiều so với bếp gas và bếp điện. Chính vì vậy mà thời gian nấu ăn của bạn sẽ được rút ngắn hơn và chi phí phải bỏ ra cho công việc nấu nướng cũng tiết kiệm hơn. &nbsp;</p>\r\n\r\n<p><a href="http://bep.vn/upload/editor/images/bep-ga-bep-tu-1.jpg" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 2"><img alt="Hình ảnh Sự lên ngôi của bếp từ trong căn bếp Việt số 2" src="http://bep.vn/upload/editor/images/bep-ga-bep-tu-1.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; max-width:100%; vertical-align:middle" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 2" /></a></p>\r\n\r\n<p><em>Sự lên ngôi của bếp từ</em></p>\r\n\r\n<p>Không chỉ tuyệt vời về hiệu quả sử dụng, bếp từ còn rất được lòng các bà nội trợ bởi thiết kế đẹp mắt, sang trọng và hiện đại của nó. Hơn nữa, bếp từ rất dễ sử dụng (thông qua các nút điều khiển), tính năng đa dạng lại an toàn với cả trẻ em và người lớn nếu vô tình chạm phải mặt bếp trong khi đang nấu, nó không gây bỏng rát bởi mặt bếp luôn mát trong suốt quá trình sử dụng.</p>\r\n\r\n<p>Hiện nay có rất nhiều chủng loại&nbsp;<a href="http://bep.vn/bep-dien-tu" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank">bếp điện</a>,&nbsp;bếp từ của rất nhiều hang khác nhau, người tiêu dùng nên lựa chọn những loại bếp của các thương hiệu uy tín để đảm bảo an toàn và chất lượng khi sử dụng.&nbsp;</p>\r\n\r\n<p>Nếu bạn còn đang băn khoăn không biết nên lựa chọn loại bếp nào cho phù hợp với &ldquo;túi tiền&rdquo; và không gian bếp nhà mình, còn chần chừ gì nữa mà không đến với&nbsp;<strong>Bep.vn&nbsp;</strong>tại&nbsp;địa chỉ 406 Xã Đàn, Đống Đa, Hà Nội. Tại đây, bạn sẽ nhận được những lời tư vấn xác đáng từ những tư vấn viên chuyên nghiệp của chúng tôi, chắc chắn bạn sẽ dễ dàng chọn được cho gia đình một sản phẩm bếp từ ưng ý.</p>\r\n\r\n<p>Tại&nbsp;<strong>Bep.vn</strong>, chúng tôi&nbsp;cung cấp các sản phẩm bếp từ, bếp điện từ, bếp điện,&nbsp;<a href="http://bep.vn/lo-nuong" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank">lò nướng</a>, lò vi sóng, máy hút mùi, máy rửa bát và các sản phẩm gia dụng khác chính hãng với chất lượng tốt nhất trên thị trường hiện nay.</p>\r\n\r\n<p><strong>Thông tin liên hệ:</strong></p>\r\n\r\n<p>Công ty TNHH Xây Dựng và Dịch Vụ Anh Tú<br />\r\nSố 406 Phố Xã Đàn - Đống Đa - Hà Nội &nbsp;(Đường Kim Liên Mới)<br />\r\nTel : 04 35738480&nbsp;<br />\r\nEmail :&nbsp;info@bep.vn<br />\r\nWebsite:&nbsp;<a href="http://bep.vn/" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank">http://bep.vn</a></p>\r\n', '', '', 0, '1492651825duke.jpg', 1, 0, 2),
(3, 'Who are JJ Ketsa Property Agents?    ', '', '<div style="text-align: justify;"><span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">The buying or selling process can take up a lot of time and can become quite daunting.&nbsp; Consider us to be your friend in the business. We will ensure that you receive the highest level of customer service to achieve the best possible outcome.<br />\r\nLet us be the &quot;go to&quot; agents when you have any property needs.&nbsp; When it comes to building your home or investment, choose from our extensive house designs on offer.&nbsp; When it comes to buying your home, let us find the properties and negotiate them on your behalf.&nbsp; When it comes to selling, let us achieve the highest possible price through our successful sales strategies. You, our customers are our highest priority.&nbsp; When you choose us, we become you.&nbsp;&nbsp;&nbsp;<br />\r\n<strong>What&#39;s in a name?</strong><br />\r\nOur name &quot;JJ Ketsa&quot; represents the reason, the drive and the &quot;WHY&quot; of our Company.&nbsp; It is a reminder of what is important - FAMILY.&nbsp; The foundation of our values.&nbsp; So for our Company to thrive and grow, we need to stay in touch with what is really important.</span></span></span></div>\r\n', 'JJ Ketsa Property Agents', 'The buying or selling process can take up a lot of time and can become quite daunting.  Consider us to be your friend in the business. We will ensure that you receive the highest level of customer service to achieve the best possible outcome.', '', '', '', '', '', 0, '1492651804cambridge.jpg', 1, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ad_user`
--

CREATE TABLE `ad_user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` text NOT NULL,
  `power` int(11) NOT NULL,
  `lastOnl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `ad_user`
--

INSERT INTO `ad_user` (`id`, `email`, `pwd`, `power`, `lastOnl`) VALUES
(1, 'czanubis@gmail.com', '949530644ef43dad3857cf6fbbbe10c1', 1, '2016-01-24 03:46:26'),
(2, 'nhatsang@gmail.com', '202cb962ac59075b964b07152d234b70', 1, '2016-03-12 03:53:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baithuocquy`
--

CREATE TABLE `baithuocquy` (
  `id` int(11) NOT NULL,
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
  `ind` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `baithuocquy`
--

INSERT INTO `baithuocquy` (`id`, `title`, `sum`, `content`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_content`, `e_meta_keyword`, `e_meta_description`, `pId`, `maps`, `city`, `district`, `img`, `active`, `home`, `ind`) VALUES
(1, 'Làm Thế Nào Để Có Một Làn Da Khỏe', 'Làm Thế Nào Để Có Một Làn Da Khỏe', '<h2 style="text-align:center"><span style="font-size:16px"><strong>Sau đây là 9 câu hỏi làm đẹp phổ biến và câu trả lời chính xác dành cho mỗi câu hỏi.</strong></span></h2>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); text-align: center;">&nbsp;</div>\r\n\r\n<div class="knc-content" style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: ">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="01-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/01-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Việc make up nói chung và sử dụng kem nền nói riêng chỉ gây mụn vì 2 lý do: một là sản phẩm bạn sử dụng gây tắc lỗ chân lông, hai là bạn không tẩy trang kỹ. Bởi vậy, khi bạn sử dụng sản phẩm an toàn và làm sạch da thật kỹ, da bạn hoàn toàn không cần &quot;nghỉ chơi&quot; với việc trang điểm để &quot;thở&quot; và trở nên đẹp hơn (thực chất, khái niệm &quot;thở&quot; không tồn tại với làn da).</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;">Khi mua bất cứ sản phẩm nào dùng để thoa lên da mặt, từ kem dưỡng đến kem nền, bạn hãy chắc chắn nó không gây tắc, bí lỗ chân lông (hãy tìm chữ &quot;noncomedogenic&quot; trên bao bì). Trong trường hợp da bạn bị mụn, hãy chọn kem nền có thành phần trị mụn như acid salicylic để có thể vừa che phủ lại vừa trị mụn cho da.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;">Việc tẩy trang thật kỹ cũng là chìa khóa để da không bị xấu đi khi trang điểm. Vào cuối ngày, hãy luôn nhớ làm sạch da với hai sản phẩm: dầu tẩy trang và sữa rửa mặt nhẹ dịu.&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;">Một khi bạn đã tuân thủ hai nguyên tắc kể trên, bạn sẽ thấy rằng thực sự không tồn tại khái niệm &quot;trang điểm nhiều làm da xấu đi&quot;.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="02-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/02-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Mụn đầu đen hình thành do bã nhờn tích tụ trong lỗ chân lông và bị ôxy hóa nên mới có màu đen. Cách trị mụn đầu đen hiệu quả nhất là sử dụng sản phẩm trị mụn có chứa benzoyl peroxide để diệt khuẩn và loại bỏ bã nhờn. Kèm theo đó, bạn cần tẩy da chết thường xuyên để ngăn chặn mụn đầu đen hình thành thêm.&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="03-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/03-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:&nbsp;</span>Khi mới tập tành make up, bạn không cần thiết phải sắm sửa ngay đủ bộ mỹ phẩm như các chuyên gia trang điểm chuyên nghiệp<span style="font-family:inherit; font-size:inherit; line-height:inherit">&nbsp;</span>mà chỉ cần những sản phẩm thiết yếu sau đây: kem nền (BB cream, phấn cushion hoặc tinted moisturizer, v.v...), phấn phủ không màu, một màu son tôn da (bạn có thể chọn sản phẩm môi và má 2 trong 1 để vừa làm son, vừa làm má hồng rất tiện), một cây eyeliner (dạng nước, gel hoặc chì), kẹp mi và một cây mascara. Sau này, khi đã sử dụng thành thạo những sản phẩm cơ bản trên, bạn có thể mua thêm những món đồ phụ trợ để make up chuyên nghiệp hơn, như sản phẩm tạo khối, tạo sáng, v.v...</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="04-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/04-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Đáng tiếc là không. Về cơ bản, lỗ chân lông không thể đóng, mở hay thu nhỏ lại được. Lỗ chân lông to hay nhỏ phụ thuộc vào gene của mỗi người và bạn không thể thay đổi kích cỡ của chúng. Tuy không thể thu nhỏ nhưng lỗ chân lông lại có thể bị giãn ra khi bị tắc nghẽn. Điều đó có nghĩa là lỗ chân lông càng sạch sẽ bao nhiêu, bạn sẽ càng cảm thấy chúng nhỏ bấy nhiêu và đó là lý do tại sao chúng ta nên làm sạch da thật kỹ. Cách làm sạch từng lỗ chân lông hiệu quả là rửa mặt bằng thao tác xoáy tròn tập trung vào từng vùng trên mặt.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="05-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/05-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Lâu nay, uống nhiều nước (ít nhất là 2,5 lít/ngày) vẫn được tin là một trong những cách hiệu quả nhất giúp cung cấp độ ẩm cho da, từ đó giúp da khỏe đẹp. Tuy nhiên, trên thực tế lại không có bất cứ nghiên cứu khoa học nào chứng minh rằng việc uống nhiều nước có thể giúp da đẹp hơn hay làm cơ thể thon gọn hơn. &quot;Lượng nước mà chúng ta uống vào không có tác dụng cung cấp độ ẩm cho da bởi làn da của chúng ta hoạt động như một tấm rào chắn vững chắc giúp ngăn cách môi trường bên trong và ngoài cơ thể. Chỉ trong trường hợp bạn bị thiếu nước một cách trầm trọng, làn da mới bị ảnh hưởng. Những vấn đề hay gặp với làn da khô sẽ không tự hết chỉ nhờ việc uống 8 cốc nước mỗi ngày mà cần đến những sản phẩm dưỡng da phù hợp&quot; - chuyên gia sức khỏe Andrew Carroll viết trên tờ New York Times cách đây không lâu. Ngoài ra, đúng là cơ thể chúng ta cần 2,5 lít nước/ngày để duy trì sự khỏe mạnh nhưng mỗi người không cần thiết phải uống đúng 2,5 lít nước bởi nước cũng có thể được bổ sung qua đường ăn, khi phần lớn các loại thức ăn đều có chứa một lượng nước nhất định.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="07-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/07-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Da mặt bạn sẽ khó thấm kem dưỡng, khó &quot;ăn&quot; kem nền khi tế bào chết bị ứ đọng trên da mà không được dọn dẹp. Việc bạn cần làm là tẩy da chết thật thường xuyên với tần suất từ 2 - 3 lần một tuần. Khi đó, da sẽ mỏng, mịn hơn hẳn và đóng vai trò như một lớp phông nền mịn mượt giúp các loại mỹ phẩm &quot;bám dính&quot; lên da một cách trơn tru, dễ dàng. Ngoài ra, việc dùng kem lót (primer) trước khi đánh nền cũng sẽ khiến lớp nền bám lên da chắc hơn và lâu trôi hơn hẳn so với bình thường.</div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="08-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/08-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Khi môi bạn bị thâm và lấn át hết màu son, bí quyết là hãy tán kem che khuyết điểm lên môi trước khi tô son. Ngoài ra, bạn hãy chọn loại son có kết cấu màu thật đặc (opaque) - thường là son lì, son nước (còn gọi là son kem hay liquid lipstick). Đặc điểm của những loại son này là khả năng lên màu rất mạnh, có thể che phủ hoàn toàn màu môi nguyên thủy của bạn. Bên cạnh đó, hãy thường xuyên tẩy da chết cho môi và thường xuyên thoa mật ong để cải thiện phần nào sắc tố môi.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="09-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/09-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n</div>\r\n</div>\r\n\r\n<div><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Tần suất gội đầu phụ thuộc vào mái tóc cũng như môi trường sống của riêng mỗi người. Trong trường hợp bạn sống ở nơi nhiều khói bụi, tần suất gội đầu nên là 1 - 2 ngày một lần. Với dầu gội nhẹ dịu có thành phần dưỡng tóc, bạn hoàn toàn có thể gội đầu hằng ngày mà không sợ tóc bị khô hay xấu đi. Khi tóc bạn thuộc dạng tóc khô hoặc bạn sống ở nơi có khí hậu trong lành, tần suất gội đầu có thể giãn xuống còn khoảng 2 - 3 ngày một lần.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="06-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/06-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Việc cắt tóc thường xuyên không hề tác động gì đến chân tóc, bởi vậy, có thể khẳng định rằng cắt tóc không hề khiến tóc mọc nhanh hơn. Trên thực tế, tóc bạn vẫn mọc với tốc độ bình thường và nếu bạn có cảm thấy tóc &quot;mọc nhanh hơn&quot; thì đó cũng chỉ là cảm giác chủ quan của bạn mà thôi. Mục đích thực sự của việc tỉa ngắn đuôi tóc thường xuyên là để ngăn ngừa đuôi tóc chẻ ngọn.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: right;">Nguồn: Elly</div>\r\n</div>\r\n</div>\r\n</div>\r\n', 'Làm Thế Nào Để Có Một Làn Da Khỏe', 'Làm Thế Nào Để Có Một Làn Da Khỏe', '', '', '', '', '', 0, '', 0, 0, '148473223601-80eb9.jpg', 1, 0, 1),
(2, 'Da Sạch- Khỏe Là Tiền Đề Của Làn Da Không Mụn', 'Da Sạch- Khỏe Là Tiền Đề Của Làn Da Không Mụn', '<span style="font-size:14px"><strong>HANA BEAUTY - CHUYÊN MỸ PHẨM XÁCH TAY</strong></span><br />\r\n<span style="font-size:14px">Tết sắp đến gần bạn quan tâm đến việc DƯỠNG DA để da mịn màng mướt khoẻ hay là MAKEUP để mang đến hiệu ứng da đẹp 1 cách nhanh nhất ạ ?<br />\r\n-----&gt; Nghe có vẻ là 2 khái niệm riêng biệt nhưng thật ra thì cả hai lại liên quan đến nhau, vì da đẹp là tiền đề của lớp makeup đẹp<br />\r\nKhi da được chăm sóc đúng cách và dưỡng ẩm đủ thì da sẽ trở nên căng mướt. Và tất nhiên lớp makeup chỉ đẹp và tự nhiên nhất khi da thật sự đủ độ ẩm khoẻ và ít khuyết điểm khi đó chỉ cần một lớp#Cushion hoặc kem nền với độ che phủ mỏng nhẹ thì chắc chắn bạn đã đủ tươi tắn với vẻ ngoài tự nhiên của mình, tự tin trong buổi họp lớp ngồi 8 chuyện xưa cùng đám bạn cũ . Nguyên năm gặp để check in 1 lần&nbsp;</span><br />\r\n<span style="font-size:14px"><strong>TẢN MẠN CHUYỆN NĂM XƯA</strong></span><br />\r\n<span style="font-size:14px">Nhớ tầm này năm ngoái da mình vẫn trong tình trạng da sần sùi khô và sạm, thiệt sự là lo lắng cho cái Tết sắp đến gần và mình đã được biết đến loại mặt nạ #mybeautydiary này qua 1 chị beauty blogger : chị #banhbeophuphiem và rất nhiều feedback tốt đẹp từ các chị em đã dùng qua. Nó như 1 cuộc cách mạng mang lại hiểu quả nhanh ngoài sức mong đợi</span>\r\n<div style="text-align: center;"><img alt="" src="/file/ckfinder/userfiles/images/15894411_1637198409917755_474428940902961389_n.jpg" style="height:800px; width:600px" /></div>\r\n<span style="font-size:14px">---&gt; @uyết định dùng thử .kết quả là 1 tuần đắp 2 lần trong vòng 1 tháng da đã thay đổi 1 cách không thể ngờ được luôn đó&nbsp;<br />\r\nDa đủ độ ẩm nên mướt lắm - kiểu da pưng pưng ngậm nước í, còn khi makeup kiểu ăn phấn thôi rồi chứ không bị cakey ( da ra đằng da - phấn ra đằng phấn)&nbsp;<br />\r\nDa sáng hẳn ra - trong giới skincare ở nước ngoài người ta không có khái niệm về sản phẩm làm trắng thay vào đó là dùng những sản phẩm giúp da sáng khoẻ và đều màu trong đó có thể kể đến là serum dòng vitamin C. Nhưng với mình lúc đó mặt nạ vẫn là lựa chọn nhanh gọn để chạy cho kịp cái tết sắp đến gần ^^</span><br />\r\n<span style="font-size:14px"><strong>DA MỀM MỊN VÀ KHÔNG BỊ SẦN SÙI</strong></span><br />\r\n<span style="font-size:14px">Tóm lại : Đây là mặt nạ thần thánh cứu cánh mình sau những ngày da thật sự xuống cấp do nhiều nguyên nhân - stress trong công việc hay thức khuya , thậm chí sau vài ngày bỏ bê skincare.</span>\r\n\r\n<div style="text-align: center;"><span style="font-size:14px"><img alt="" src="/file/ckfinder/userfiles/images/15966309_1637198656584397_3931164285883289336_n.jpg" style="height:800px; width:600px" /></span></div>\r\n<span style="font-size:14px">( Chắc ai cũng hiểu cảm giác có những ngày chẳng muốn làm gì chỉ muốn được lăn ngay ra ngủ sau khi về tới nhà )&nbsp;<br />\r\nHãy nhớ giùm Hana đây là 1 bước dưỡng sau tất cả các bước skincare hoàn chỉnh của bạn - đừng bao giờ nghĩ rằng nó thần thánh đến mức giúp bạn rạng rỡ khi bước làm sạch da của bạn không đúng cách : vd : srm với độ PH quá cao, tẩy trang chưa sạch sau khi trang điểm hoặc dùng kem chống nắng.<br />\r\nCó rất nhiều bạn thắc mắc rằng DA MỤN có nên dùng hay không , bạn phải hiểu rằng da mụn cũng cần được dưỡng ẩm nhưng thay vào đó skincare của bạn phải thêm bước trị mụn, đắp mặt nạ kháng khuẩn song song với mặt nạ thiên về dòng dưỡng này và Hana không khuyên dùng cho những bạn đang trong tình trạng viêm da nhiều mụn ạ&nbsp;<br />\r\nDa sạch- khoẻ là tiền đề của làn da không mụn<br />\r\nMột lần đắp mặt nạ hiểu quả gấp 6 lần xài serum vì tinh chất cô đặc thấm đẫm trong miếng mặt nạ<br />\r\nVậy nên hãy bắt đầu làm đẹp ngay hôm nay để kịp xúng xính đón tết nha.</span>', 'Da sạch- khỏe là tiền đề của làn da không mụn', 'Da sạch- khỏe là tiền đề của làn da không mụn', '', '', '', '', '', 0, '', 0, 0, '1484733003tri-mun-da-kho.jpg', 1, 0, 2),
(3, 'Massage với những viên đá này để da đẹp &quot;không tì vết&quot; yên tâm đón Tết', 'Massage với những viên đá này để da đẹp &quot;không tì vết&quot; yên tâm đón Tết\r\n', '<p><span style="color:rgb(0, 0, 0); font-family:roboto-regular,serif; font-size:14px"><strong><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif">Chỉ với những nguyên liệu đơn giản, rẻ tiền bạn đã có thể tự làm mặt nạ chăm sóc da hiệu quả và an toàn.</span></span></strong></span><br />\r\n<span style="font-size:14px; text-align:justify">Khoa học đã chứng nhận rằng chúng ta <span style="color:#000000">nên&nbsp;</span></span><a href="http://bestie.vn/2016/09/nhung-dau-hieu-chung-to-ban-dang-rua-mat-sai-cach" style="font-size: 14px; text-align: justify; background-color: transparent; box-sizing: border-box; text-decoration: none; color: rgb(0, 51, 153) !important;"><span style="color:#000000">rửa mặt</span></a><span style="font-size:14px; text-align:justify"><span style="color:#000000">&nbsp;b</span>uổi sáng bằng những viên đá được làm từ nước các loại hoa quả thay cho nước lã. Những viên đá lạnh buốt này sẽ làm tăng tuần hoàn máu, trẻ hoá làn da, xóa đi những vết nhăn, ngăn chặn các dấu hiệu lão hóa thông thường và làm ửng hồng đôi má của bạn. Nó cũng giúp da sáng lên một cách tự nhiên hơn. Nên thực hiện 2 lần/tuần.</span></p>\r\n\r\n<p style="text-align: center;"><img alt="bestie cham soc da bang da vien " src="http://static1.bestie.vn/Mlog/ImageContent/201701/scrape-14646007708928-pimtha-hot-girl-thai-lan-6-6405-1464600623-20170107152308.jpg" style="border:0px; box-sizing:border-box; height:432px; vertical-align:middle; width:500px" /></p>\r\n\r\n<p><span style="font-size:14px">Nếu bạn phải vội ra khỏi nhà trong tình trạng mệt mỏi, kém tươi thì đây cũng là cách nhanh nhất khiến da mặt bạn trông mượt mà, mịn màng hơn và tươi tắn hơn.<br />\r\nBạn có thể kết hợp giữa việc làm đá với các loại nguyên liệu<span style="color:#000000">,&nbsp;</span><a href="http://bestie.vn/2016/11/nhung-my-pham-cac-nang-nen-so-huu-de-co-guong-mat-makeup-ma-nhu-khong" style="box-sizing: border-box; background-color: transparent; color: rgb(0, 51, 153) !important; text-decoration: none;"><span style="color:#000000">mỹ phẩm từ tự nhiên</span></a><span style="color:#000000">&nbsp;</span>như các loại lá hoặc quả khác nhau để có một chế độ chăm sóc hoàn hảo cho làn da. Tuy nhiên, nước lạnh từ vòi không nên dùng để làm đá rửa mặt. Sẽ tốt hơn nhiều nếu làm đá từ nước đun sôi hay nước khoáng không ga.</span><br />\r\n&nbsp;</p>\r\n<span style="font-size:14px"><strong>1.&nbsp;<span style="font-family:arial,helvetica,sans-serif"><span style="color:rgb(0, 0, 0)">Làm trắng da với đá viên nước cơm dùng cho da thường</span></span></strong></span>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 1" src="http://static1.bestie.vn/Mlog/ImageContent/201701/030-20170107145736.JPG" style="border:0px; box-sizing:border-box; height:563px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p><span style="font-size:14px">Dùng nước cơm để làm đá, ngoài tác dụng dưỡng da, nó còn có tác<span style="color:#000000"> dụng&nbsp;</span><a href="http://bestie.vn/2016/12/da-trang-bat-tong-voi-nhung-phuong-phap-tam-trang-an-toan-tai-nha" style="box-sizing: border-box; background-color: transparent; color: rgb(0, 51, 153) !important; text-decoration: none;"><span style="color:#000000">làm trắng da</span></a><span style="color:#000000">. Nư</span>ớc cơm được chắt ra khi nấu cơm, để nguội rồi cho vào ngăn đá. Loại đá này nên giữ trong ngăn đá không quá 3 ngày.</span></p>\r\n<strong>​​​</strong><span style="font-size:14px"><strong>​​2.&nbsp;</strong></span><strong style="font-size:14px; text-align:justify"><span style="line-height:20.8px">Cung cấp độ ẩm cho da khô bằng đá viên hoa quả</span></strong>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 2" src="http://static1.bestie.vn/Mlog/ImageContent/201701/fruit-ice-cubes-20170107150123.jpg" style="border:0px; box-sizing:border-box; height:325px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p><span style="font-size:14px">Da khô thích hợp với những loại đá được làm từ lá, hoa, cũng như quả. Những quả sơn tra đỏ thắm, những cọng bồ công anh là thứ nguyên liệu tuyệt diệu cho loại da này. Có thể làm đá từ nước quả, tốt nhất là những loại quả đỏ. Nghiền nát 3 thìa quả và khuấy đều trong 2 cốc nước sôi để nguội, sau đấy lọc lấy nước. Cho vào ngăn đá và dùng trong vòng 5 ngày.</span><br />\r\n<br />\r\n<strong>3.&nbsp;</strong><span style="font-size:14px"><strong>Se khít lỗ chân lông bằng đá viên nước hoa hồng</strong></span></p>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 3" src="http://static1.bestie.vn/Mlog/ImageContent/201701/our-white-rose-goji-blend-is-the-perfect-tea-to-drink-cold-try-our-iced-tea-recipe-today-love-tea-i-20170107150332.jpg" style="border:0px; box-sizing:border-box; height:500px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p><span style="font-size:14px">Bạn có thể biến đổi một chú<span style="color:#000000">t cho&nbsp;</span><a href="http://bestie.vn/2016/11/3-loi-ich-that-bat-ngo-tu-glycerin-nuoc-hoa-hong-va-nuoc-cot-chanh" style="box-sizing: border-box; background-color: transparent; color: rgb(0, 51, 153) !important; text-decoration: none;"><span style="color:#000000">nước hoa hồng</span></a><span style="color:#000000">&nbsp;c</span>ủa mình bằng cách làm lạnh trong các khay đá. Những viên đá nước hoa hồng sẽ giúp cho da mặt được mềm mại và tươi mới hơn.<br />\r\n<br />\r\n<strong>4.&nbsp;</strong></span><span style="font-size:14px"><strong>Giải nhiệt, làm dịu làn da cháy nắng bằng đá viên nha đam</strong></span></p>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 4" src="http://static1.bestie.vn/Mlog/ImageContent/201701/aloe-vera-ice-cubes-final2-20170107150523.jpg" style="border:0px; box-sizing:border-box; height:341px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p><span style="font-size:14px">Với hàm lượng nước cao, lá nha đam với cấu tạo đặc trưng có lớp gel trong suốt, mềm mịn và mát lành tinh khiết nên có công dụng tuyệt với với việc giải nhiệt và làm dịu làn da khi cháy nắng. Bạn chỉ cần cắt bỏ hai bên gai dọc thân lá, tách lấy phần gel bên trong, nghiền nát cùng với nước và dựng trong khay đá để lạnh. Sau khi ra ngoài dưới trời nắng nóng, hãy dùng một viên lướt nhẹ lên da, khi đó mọi tác động của nắng nóng và tia UV đều được giải quyết hết</span>.<br />\r\n<br />\r\n<strong>5.&nbsp;</strong><span style="font-size:14px"><strong>Làm sạch và sáng da với đá viên dưa leo,&nbsp;<span style="line-height:20.8px">mật ong và chanh</span></strong></span></p>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 5" src="http://static1.bestie.vn/Mlog/ImageContent/201701/cucumber-lemon-honey-ice-cubes-20170107150630.jpg" style="border:0px; box-sizing:border-box; height:700px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p><span style="font-size:14px">Dưa leo chứa hàm lượng nước lên đến 90% giúp da luôn có đủ độ ẩm cần thiết, nên một khi kết hợp với các thành phần dưỡng ẩm của mật ong và khả năng kháng khuẩn chống viên của chanh tươi thì hiệu quả chăm sóc và làm sạch da sẽ trọn vẹn và sạch sâu hơn hẳn. Cách đơn giản nhất là bạn xay nhuyễn dưa leo cùng một thìa cafe mật ong rồi thêm vài giọt chanh tươi đựng trong khay đá và để lạnh. Mỗi khi sử dụng lấy một viên massage nhẹ nhàng trên da và để nguyên hỗn hợp trên da khoảng 5-10 phút để dưỡng chất thẩm thấu sâu trên da bạn.<br />\r\n<br />\r\n<strong>6.&nbsp;</strong></span><span style="font-size:14px"><strong>Trị mụn và vết thâm với đá viên Matcha</strong></span></p>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 6" src="http://static1.bestie.vn/Mlog/ImageContent/201701/making-veggie-ice-cubes-20170107150806.jpg" style="border:0px; box-sizing:border-box; height:375px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Trà xanh có tác dụng làm mát tại chỗ, trị mụn và chống lão hóa. Rất nhiều bạn nữ ưa thích chọn trà xanh để làm mặt nạ dưỡng da. Thay vì trộn với các nguyên liệu khác đắp mặt, bạn có thể pha bột trà và làm đông để tăng hiệu quả dưỡng da hơn nữa.<br />\r\nBạn hòa bột trà xanh với nước khoáng cho thật tan. Sau đó lọc qua rây để lấy phần nước trong. Dùng nước này cho vào khay đá và để đông. Hàng ngày dùng nó để rửa mặt sáng, tối bạn sẽ thấy da mặt trắng mịn, sạch mụn và đánh bay vết thâm đen.</span></p>\r\n\r\n<p><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif"><strong><span style="color:rgb(0, 0, 0)">Cách chăm sóc da bằng đá viên</span></strong></span></span></p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;"><span style="font-size:14px">Bước 1: Rửa mặt bằng nước ấm rồi dùng khăn mềm thấm khô da, lưu ý không nên dùng khăn mặt sần sùi và khô ráp tránh gây tổn hại da và tránh mụn lây lan nhiều hơn.</span></li>\r\n	<li style="text-align: justify;"><span style="font-size:14px">Bước 2: Cho 1 ít đá bào hoặc đá viên vào khăn khô, túm bốn góc thành 1 khối vuông.</span></li>\r\n	<li style="text-align: justify;"><span style="font-size:14px">Bước 3: Chườm đá trực tiếp lên vùng da bị mụn, để yên trong vài phút, sau đó chuyển sang khu vực khác. Đợi 10 phút sau đó thực hiện lại 1 lần nữa.</span></li>\r\n</ul>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Bạn có thể thực hiện cách này đều đặn mỗi ngày trước khi đi ngủ hoặc sáng thức dậy, chỉ sau 1 tuần sẽ cảm nhận được tác dụng thực sự.<br />\r\n<span style="line-height:20.8px">&quot;Mọi thứ đều nở ra khi nóng lên và co lại khi lạnh đi&quot;. Đừng ngại sử dụng viên đá lạnh thoa lên mặt, kết hợp với các động tác massage mặt mỗi ngày, điều này sẽ giúp làm se khít lỗ chân lông trên da mặt, đồng thời giảm bớt việc các chất bã nhờn, giảm lượng bụi và vi khuẩn thâm nhập lỗ chân lông, giúp bạn làm sạch da mặt dễ dàng hơn mà không phải kỳ công chăm sóc.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Massage với những viên đá này để da đẹp &quot;không tì vết&quot; yên tâm đón Tết', 'Massage với những viên đá này để da đẹp &quot;không tì vết&quot; yên tâm đón Tết', '', '', '', '', '', 0, '', 0, 0, '148488481820-01-2017 11-00-04 SA.png', 1, 1, 3),
(4, 'Bí quyết dưỡng da trắng hồng dành cho bạn gái', 'Bí quyết dưỡng da trắng hồng dành cho bạn gái ', '<div style="text-align: center;"><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif"><strong>Bí quyết dưỡng da trắng hồng dành cho bạn gái</strong></span></span></div>\r\n\r\n<div style="text-align: justify;"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Làm sao để có được làn da trắng mịn hồng hào luôn là vấn đề được các bạn nữ quan tậm. Bạn đã biết cách dưỡng da trắng hồng chưa? Những bí quyết dưới đây sẽ giúp bạn!<br />\r\nChăm sóc da là một việc không dễ dàng, đòi hỏi bạn phải cẩn thận và kiên trì. Trên thực tế có rất nhiều biện pháp để giúp bạn sở hữu được nước da trắng hồng, mịn màng. Chú ý đến những vấn đề sau, bạn sẽ không còn lo lắng về làn da của mình nữa.<br />\r\nDưỡng da trắng hồng bằng cách làm sạch da mặt&nbsp;</span></span><br />\r\n<img alt="Dưỡng da trắng hồng" class="aligncenter wp-image-24288" src="http://www.phunu.baithuocquy/wp-content/uploads/2016/06/D%C6%B0%E1%BB%A1ng-da-tr%E1%BA%AFng-h%E1%BB%93ng-2-433x290.jpg" style="background-color:rgb(255, 255, 255); border:0px; color:rgb(34, 34, 34); display:block; font-family:noto serif,serif; font-size:17.6px; height:auto; margin-bottom:24px; margin-left:auto; margin-right:auto; max-width:100%; text-align:center; width:473px" /><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Điều đầu tiên trong quy trình dưỡng da trắng hồng đó là bạn phải luôn giữ cho da mặt sạch sẽ. Bạn phải rửa sạch tay, cho một lượng sữa rửa mặt vừa đủ vào lòng bàn tay, tạo bọt thật kỹ và xoa đều lên mặt. Chuyển động tròn, massage da mặt nhẹ nhàng khoảng 30 giây rồi dùng nước ấm rửa sạch mặt. Không nên dùng nước quá nóng vì như thế có thể sẽ làm tổn thương da mặt của bạn.<br />\r\nThường xuyên tẩy tế bào chết cho da<br />\r\nĐây là thao tác quan trọng để dưỡng da trắng hồng. Bạn có thể trộn đều đường và nước với tỉ lệ 2:1 để làm thành hỗn hợp tẩy tế bào chết cho da đơn giản tại nhà. Thoa đều lên ba phần của khuôn mặt: vùng trán và hai bên má. Nhẹ nhàng massage theo hình tròn khoảng 1 phút rồi rửa mặt với nước ấm.</span></span><br />\r\n<img alt="Dưỡng da trắng hồng" class="aligncenter wp-image-24289" src="http://www.phunu.baithuocquy/wp-content/uploads/2016/06/D%C6%B0%E1%BB%A1ng-da-tr%E1%BA%AFng-h%E1%BB%93ng-3-421x290.jpg" style="background-color:rgb(255, 255, 255); border:0px; color:rgb(34, 34, 34); display:block; font-family:noto serif,serif; font-size:17.6px; height:auto; margin-bottom:24px; margin-left:auto; margin-right:auto; max-width:100%; text-align:center; width:449px" /><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif"><strong>Dưỡng da trắng hồng bằng cách đắp mặt nạ dưỡng da</strong></span></span><br />\r\n<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Công đoạn không thể thiếu để giúp bạn dưỡng da trắng hồng đó chính là thường xuyên đắp mặt nạ cho da.<br />\r\nBạn có thể dùng các loại nguyên liệu có sẵn ngay tại nhà để chăm sóc cho da như:<br />\r\n<strong><em>&ndash; Cà chua: </em></strong>Vitamin C và các loại dưỡng chất có trong cà chua sẽ giúp da bạn trắng mịn tự nhiên. Bạn có thể cắt cà chua thành nhiều lát mỏng rồi đắp lên mặt trong khoảng 20 phút, sau đó rửa mặt sạch bằng nước lạnh. Áp dụng cách này một tuần từ 2-3 lần, bạn sẽ sớm có được làn da trắng hồng.<br />\r\nBạn cũng có thể dùng nước ép cà chua trộn với vài giọt nước cốt chanh rồi xoa lên mặt trong vòng 15 phút. Thực hiện khoảng 1 tháng bạn sẽ thấy tác dụng diệu kỳ của cà chua đối với làn da của bạn.</span></span><br />\r\n<img alt="Dưỡng da trắng hồng" class="aligncenter wp-image-24290" src="http://www.phunu.baithuocquy/wp-content/uploads/2016/06/D%C6%B0%E1%BB%A1ng-da-tr%E1%BA%AFng-h%E1%BB%93ng-4-435x290.jpg" style="background-color:rgb(255, 255, 255); border:0px; color:rgb(34, 34, 34); display:block; font-family:noto serif,serif; font-size:17.6px; height:auto; margin-bottom:24px; margin-left:auto; margin-right:auto; max-width:100%; text-align:center; width:473px" /><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><em>&ndash;</em><strong><em><em> </em>Dưỡng da trắng hồng với dưa chuột</em></strong>: Dưa chuột là loại thực phẩm quen thuộc với các gia đình. Các axit tartaric và axit amin có trong dựa chuột có hiệu quả rất tốt để dưỡng trắng da. Dùng vài giọt nước cốt chanh trộn đều với nước ép dưa chuột rồi xoa lên mặt. Massage nhẹ nhàng kết hợp thư giãn khoảng 20 phút rồi rửa sạch mặt. Với cách làm này, làn da bạn sẽ mềm mịn, trắng hồng trông thấy. Thực hiện 2-3 lần trong tuần để thu được kết quả tốt nhất.<br />\r\n<em><strong>&ndash; Khoai tây:</strong></em> Một loại dưỡng chất từ thiên nhiên giúp dưỡng da trắng hồng không thể bỏ qua đó là khoai tây. Bạn chỉ cần hấp chín khoai tây sau đó nghiền nát và trộn đều với lượng sữa tươi sao cho tạo thành một hỗn hợp sền sệt. Thoa đều hỗn hợp này lên mặt, đợi trong khoảng 30 phút rồi rửa lại bằng nước ấm. Mỗi tuần thực hiện 2 lần, làn da của bạn sẽ trắng hồng rạng rỡ.</span></span><br />\r\n<br />\r\n<span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif"><strong>Thu nhỏ lỗ chân lông</strong></span></span><br />\r\n<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Đây chính là hâu cuối cùng để bạn sở hữu được làn da trắng hồng, mịn màng. Luân phiên dùng nước ấm, lạnh để rửa mặt và cuối cùng là nước lạnh. Hãy tạt nước lên mặt thay vì rửa bằng tay. Dùng một viên đá nhỏ xoa nhẹ lên mặt để giúp thu nhỏ lỗ chân lông. Dùng khăn mềm lau khô và thoa kem dưỡng ẩm cho da.<br />\r\nVới những khâu chăm sóc như trên, tin chắc rằng bạn sẽ dưỡng da trắng hồng nhanh chóng và hiệu quả. Hãy nhớ che chắn cho da mỗi khi ra ngoài. Chúc các bạn may mắn!</span></span></div>\r\n\r\n<div style="text-align: justify;">&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n', 'Bí quyết dưỡng da trắng hồng dành cho bạn gái', 'Bí quyết dưỡng da trắng hồng dành cho bạn gái', '', '', '', '', '', 0, '', 0, 0, '14848866433-bí-quyết-dưỡng-trắng-không-phải-ai-cũng-biết.jpg', 1, 0, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `basic_config`
--

CREATE TABLE `basic_config` (
  `id` int(11) NOT NULL,
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
  `social_google_plus` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `basic_config`
--

INSERT INTO `basic_config` (`id`, `smtp_server`, `smtp_port`, `smtp_user`, `smtp_pwd`, `smtp_sender_email`, `smtp_sender_name`, `smtp_receiver`, `gmap_script`, `another_script`, `social_twitter`, `social_facebook`, `social_google_plus`) VALUES
(1, 'smtp.gmail.com', '587', 'quantrimang.psmedia@gmail.com', 'psmediaquantrimang', 'quantrimang.psmedia@gmail.com', 'Website administrator', 'contact@jjketsaproperty.com.au', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.1633799912497!2d106.65656091421477!3d10.798795861734689!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175293132fa9845%3A0x2b09637f85d4a12f!2zVHLGsOG7nW5nIE3huqdtIE5vbiBUw6JuIFPGoW4gTmjhuqV0!5e0!3m2!1svi!2s!4v1474100962959" width="1004" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', 'https://www.instagram.com/jjketsa_property/?hl=en', 'https://www.facebook.com/jjketsapropertyagents/', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `buy`
--

CREATE TABLE `buy` (
  `id` int(11) NOT NULL,
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
  `ind` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `buy`
--

INSERT INTO `buy` (`id`, `title`, `feature`, `price`, `storey`, `beds`, `landWidth`, `price_reduce`, `in_stock`, `condition`, `brand_id`, `detail`, `content`, `teach`, `video`, `meta_keyword`, `meta_description`, `manual`, `e_manual`, `promotion`, `e_promotion`, `e_title`, `e_feature`, `e_detail`, `e_content`, `e_teach`, `e_meta_keyword`, `e_meta_description`, `pd_option`, `lnk`, `e_lnk`, `pId`, `active`, `home`, `ind`) VALUES
(227, 'buy', '', 0, 0, 0, 0, NULL, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `buy_cate`
--

CREATE TABLE `buy_cate` (
  `id` int(11) NOT NULL,
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
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `buy_cate`
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
-- Cấu trúc bảng cho bảng `buy_image`
--

CREATE TABLE `buy_image` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `pId` int(11) NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `adds` text NOT NULL,
  `phone` text NOT NULL,
  `notice` text NOT NULL,
  `dates` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cart`
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
-- Cấu trúc bảng cho bảng `cart_detail`
--

CREATE TABLE `cart_detail` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_title` text NOT NULL,
  `product_price` float NOT NULL,
  `product_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cart_detail`
--

INSERT INTO `cart_detail` (`id`, `cart_id`, `product_id`, `product_title`, `product_price`, `product_qty`) VALUES
(1, 4, 186, 'BIẾN TẦN YASKAWA V1000', 0, 1),
(2, 4, 175, 'BIẾN TẦN YASKAWA F7', 0, 1),
(3, 5, 186, 'BIẾN TẦN YASKAWA V1000', 0, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `concierge`
--

CREATE TABLE `concierge` (
  `id` int(11) NOT NULL,
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
  `ind` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `concierge`
--

INSERT INTO `concierge` (`id`, `title`, `sum`, `content`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_content`, `e_meta_keyword`, `e_meta_description`, `pId`, `img`, `active`, `home`, `ind`) VALUES
(1, 'tét 3', '', '<div class="SCX35180545">\r\n<p style="text-align:justify"><span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><img alt="" src="/file/ckfinder/userfiles/images/Designer%20New%20Orleans%20LHS%201132x674.jpg" style="float:left; height:179px; margin:10px 50px; width:300px" /></span></span></span></span></span><br />\r\n<br />\r\n<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><strong>Personal Assistant</strong> - Choose your own builder, let us do the leg work for you. We can take care of all the pre contract appointments.&nbsp; We will keep it simple. See us as your personal assistant.&nbsp; We will liaise directly with builder to ensure the building process of your home is delivered in a timely manner.</span></span>&nbsp;</span></span></span></p>\r\n</div>\r\n\r\n<div class="OutlineElement Ltr SCX35180545" style="margin-left: 0px; direction: ltr;">\r\n<p style="text-align:left"><span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp;</span></span></span></p>\r\n\r\n<p style="text-align:justify"><br />\r\n<br />\r\n<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><img alt="" src="/file/ckfinder/userfiles/images/Designer%20Wembley%20Varano%20RHS%201132x674.jpg" style="float:left; height:179px; margin:10px 50px; width:300px" /></span></span><br />\r\n<br />\r\n<span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><strong>Custom Builder</strong> - Can&#39;t see what you like from our extensive designs?&nbsp; Why not custom design your own home?&nbsp; Or maybe you have an irregular shaped site.&nbsp; That&rsquo;s where our design team can tailor the home design to your style and site condition to maximise the benefits without compromising on functionality.</span></span>&nbsp;</span></span></span><br />\r\n<br />\r\n&nbsp;</p>\r\n</div>\r\n\r\n<div class="OutlineElement Ltr SCX35180545" style="margin-left: 0px; direction: ltr;">\r\n<p style="text-align:justify"><span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp;</span></span></span></p>\r\n\r\n<p style="text-align:justify"><span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><img alt="" src="/file/ckfinder/userfiles/images/Langford%20Kyalami%20370.jpg" style="float:left; height:179px; margin:10px 50px; width:300px" /><br />\r\n<strong>Townhouse and Unit Developments</strong> - Is your block of land large enough to build 2 or more units or townhouses on?&nbsp; Let us do the TOWN PLANNING APPLICATION and DESIGN for you.&nbsp; We will liaise with the Councils on your behalf to best develop your land.&nbsp; Our experience with Building Regulations and Subdivision requirements can take the headache&nbsp; out of trying to do it yourself.&nbsp; We can save you time and money!</span></span></span></span></span><br />\r\n<br />\r\n&nbsp;</p>\r\n</div>\r\n&nbsp;\r\n\r\n<div class="OutlineElement Ltr SCX35180545" style="margin-left: 0px; direction: ltr;">\r\n<p style="text-align:justify"><br />\r\n<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><img alt="" src="/file/ckfinder/userfiles/images/Patriot%20Varano%20305.jpg" style="float:left; height:179px; margin:10px 50px; width:300px" /></span></span></span></span></span><br />\r\n<br />\r\n<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><strong>Knockdown Rebuild</strong> - Do you want to stay where you are but are dreaming of living in a brand new home?&nbsp; Well you can! We can knock your existing home, and BUILD you a brand new home from our extensive range of homes.&nbsp; Or if you want a more intricate design or style, you can use our CUSTOM Builder Service.</span></span>&nbsp;</span></span></span><br />\r\n<br />\r\n<br />\r\n&nbsp;</p>\r\n</div>\r\n&nbsp;\r\n\r\n<div class="OutlineElement Ltr SCX35180545" style="margin-left: 0px; direction: ltr;">\r\n<p style="text-align:justify"><span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><img alt="" src="/file/ckfinder/userfiles/images/Impression%20Palazzo%20380.jpg" style="float:left; height:179px; margin:10px 50px; width:300px" /></span></span></span></span></span><br />\r\n<br />\r\n<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><strong>Finance</strong> - As part of our CONCIERGE SERVICES, we can assist our clients seek finance to BUILD or BUY.&nbsp; Our FINANCE PARTNERS are the LEADERS in the Industry to seek the best lender and home loan rates to suit you and your lifestyle.&nbsp; They will negotiate with the Lenders on your behalf to get you into your home sooner.</span></span>&nbsp;</span></span></span><br />\r\n<br />\r\n<br />\r\n<br />\r\n&nbsp;</p>\r\n</div>\r\n', '', '', '', '', '', '', '', 0, '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `adds` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  `purpose` varchar(500) DEFAULT NULL,
  `content` text NOT NULL,
  `dates` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `contact`
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
-- Cấu trúc bảng cho bảng `duoclieu`
--

CREATE TABLE `duoclieu` (
  `id` int(11) NOT NULL,
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
  `ind` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `duoclieu`
--

INSERT INTO `duoclieu` (`id`, `title`, `sum`, `content`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_content`, `e_meta_keyword`, `e_meta_description`, `pId`, `maps`, `city`, `district`, `img`, `active`, `home`, `ind`) VALUES
(1, 'Làm Thế Nào Để Có Một Làn Da Khỏe', 'Làm Thế Nào Để Có Một Làn Da Khỏe', '<h2 style="text-align:center"><span style="font-size:16px"><strong>Sau đây là 9 câu hỏi làm đẹp phổ biến và câu trả lời chính xác dành cho mỗi câu hỏi.</strong></span></h2>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); text-align: center;">&nbsp;</div>\r\n\r\n<div class="knc-content" style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: ">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="01-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/01-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Việc make up nói chung và sử dụng kem nền nói riêng chỉ gây mụn vì 2 lý do: một là sản phẩm bạn sử dụng gây tắc lỗ chân lông, hai là bạn không tẩy trang kỹ. Bởi vậy, khi bạn sử dụng sản phẩm an toàn và làm sạch da thật kỹ, da bạn hoàn toàn không cần &quot;nghỉ chơi&quot; với việc trang điểm để &quot;thở&quot; và trở nên đẹp hơn (thực chất, khái niệm &quot;thở&quot; không tồn tại với làn da).</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;">Khi mua bất cứ sản phẩm nào dùng để thoa lên da mặt, từ kem dưỡng đến kem nền, bạn hãy chắc chắn nó không gây tắc, bí lỗ chân lông (hãy tìm chữ &quot;noncomedogenic&quot; trên bao bì). Trong trường hợp da bạn bị mụn, hãy chọn kem nền có thành phần trị mụn như acid salicylic để có thể vừa che phủ lại vừa trị mụn cho da.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;">Việc tẩy trang thật kỹ cũng là chìa khóa để da không bị xấu đi khi trang điểm. Vào cuối ngày, hãy luôn nhớ làm sạch da với hai sản phẩm: dầu tẩy trang và sữa rửa mặt nhẹ dịu.&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;">Một khi bạn đã tuân thủ hai nguyên tắc kể trên, bạn sẽ thấy rằng thực sự không tồn tại khái niệm &quot;trang điểm nhiều làm da xấu đi&quot;.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="02-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/02-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Mụn đầu đen hình thành do bã nhờn tích tụ trong lỗ chân lông và bị ôxy hóa nên mới có màu đen. Cách trị mụn đầu đen hiệu quả nhất là sử dụng sản phẩm trị mụn có chứa benzoyl peroxide để diệt khuẩn và loại bỏ bã nhờn. Kèm theo đó, bạn cần tẩy da chết thường xuyên để ngăn chặn mụn đầu đen hình thành thêm.&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="03-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/03-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:&nbsp;</span>Khi mới tập tành make up, bạn không cần thiết phải sắm sửa ngay đủ bộ mỹ phẩm như các chuyên gia trang điểm chuyên nghiệp<span style="font-family:inherit; font-size:inherit; line-height:inherit">&nbsp;</span>mà chỉ cần những sản phẩm thiết yếu sau đây: kem nền (BB cream, phấn cushion hoặc tinted moisturizer, v.v...), phấn phủ không màu, một màu son tôn da (bạn có thể chọn sản phẩm môi và má 2 trong 1 để vừa làm son, vừa làm má hồng rất tiện), một cây eyeliner (dạng nước, gel hoặc chì), kẹp mi và một cây mascara. Sau này, khi đã sử dụng thành thạo những sản phẩm cơ bản trên, bạn có thể mua thêm những món đồ phụ trợ để make up chuyên nghiệp hơn, như sản phẩm tạo khối, tạo sáng, v.v...</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="04-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/04-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Đáng tiếc là không. Về cơ bản, lỗ chân lông không thể đóng, mở hay thu nhỏ lại được. Lỗ chân lông to hay nhỏ phụ thuộc vào gene của mỗi người và bạn không thể thay đổi kích cỡ của chúng. Tuy không thể thu nhỏ nhưng lỗ chân lông lại có thể bị giãn ra khi bị tắc nghẽn. Điều đó có nghĩa là lỗ chân lông càng sạch sẽ bao nhiêu, bạn sẽ càng cảm thấy chúng nhỏ bấy nhiêu và đó là lý do tại sao chúng ta nên làm sạch da thật kỹ. Cách làm sạch từng lỗ chân lông hiệu quả là rửa mặt bằng thao tác xoáy tròn tập trung vào từng vùng trên mặt.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="05-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/05-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Lâu nay, uống nhiều nước (ít nhất là 2,5 lít/ngày) vẫn được tin là một trong những cách hiệu quả nhất giúp cung cấp độ ẩm cho da, từ đó giúp da khỏe đẹp. Tuy nhiên, trên thực tế lại không có bất cứ nghiên cứu khoa học nào chứng minh rằng việc uống nhiều nước có thể giúp da đẹp hơn hay làm cơ thể thon gọn hơn. &quot;Lượng nước mà chúng ta uống vào không có tác dụng cung cấp độ ẩm cho da bởi làn da của chúng ta hoạt động như một tấm rào chắn vững chắc giúp ngăn cách môi trường bên trong và ngoài cơ thể. Chỉ trong trường hợp bạn bị thiếu nước một cách trầm trọng, làn da mới bị ảnh hưởng. Những vấn đề hay gặp với làn da khô sẽ không tự hết chỉ nhờ việc uống 8 cốc nước mỗi ngày mà cần đến những sản phẩm dưỡng da phù hợp&quot; - chuyên gia sức khỏe Andrew Carroll viết trên tờ New York Times cách đây không lâu. Ngoài ra, đúng là cơ thể chúng ta cần 2,5 lít nước/ngày để duy trì sự khỏe mạnh nhưng mỗi người không cần thiết phải uống đúng 2,5 lít nước bởi nước cũng có thể được bổ sung qua đường ăn, khi phần lớn các loại thức ăn đều có chứa một lượng nước nhất định.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="07-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/07-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Da mặt bạn sẽ khó thấm kem dưỡng, khó &quot;ăn&quot; kem nền khi tế bào chết bị ứ đọng trên da mà không được dọn dẹp. Việc bạn cần làm là tẩy da chết thật thường xuyên với tần suất từ 2 - 3 lần một tuần. Khi đó, da sẽ mỏng, mịn hơn hẳn và đóng vai trò như một lớp phông nền mịn mượt giúp các loại mỹ phẩm &quot;bám dính&quot; lên da một cách trơn tru, dễ dàng. Ngoài ra, việc dùng kem lót (primer) trước khi đánh nền cũng sẽ khiến lớp nền bám lên da chắc hơn và lâu trôi hơn hẳn so với bình thường.</div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="08-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/08-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Khi môi bạn bị thâm và lấn át hết màu son, bí quyết là hãy tán kem che khuyết điểm lên môi trước khi tô son. Ngoài ra, bạn hãy chọn loại son có kết cấu màu thật đặc (opaque) - thường là son lì, son nước (còn gọi là son kem hay liquid lipstick). Đặc điểm của những loại son này là khả năng lên màu rất mạnh, có thể che phủ hoàn toàn màu môi nguyên thủy của bạn. Bên cạnh đó, hãy thường xuyên tẩy da chết cho môi và thường xuyên thoa mật ong để cải thiện phần nào sắc tố môi.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="09-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/09-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n</div>\r\n</div>\r\n\r\n<div><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Tần suất gội đầu phụ thuộc vào mái tóc cũng như môi trường sống của riêng mỗi người. Trong trường hợp bạn sống ở nơi nhiều khói bụi, tần suất gội đầu nên là 1 - 2 ngày một lần. Với dầu gội nhẹ dịu có thành phần dưỡng tóc, bạn hoàn toàn có thể gội đầu hằng ngày mà không sợ tóc bị khô hay xấu đi. Khi tóc bạn thuộc dạng tóc khô hoặc bạn sống ở nơi có khí hậu trong lành, tần suất gội đầu có thể giãn xuống còn khoảng 2 - 3 ngày một lần.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="06-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/06-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Việc cắt tóc thường xuyên không hề tác động gì đến chân tóc, bởi vậy, có thể khẳng định rằng cắt tóc không hề khiến tóc mọc nhanh hơn. Trên thực tế, tóc bạn vẫn mọc với tốc độ bình thường và nếu bạn có cảm thấy tóc &quot;mọc nhanh hơn&quot; thì đó cũng chỉ là cảm giác chủ quan của bạn mà thôi. Mục đích thực sự của việc tỉa ngắn đuôi tóc thường xuyên là để ngăn ngừa đuôi tóc chẻ ngọn.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: right;">Nguồn: Elly</div>\r\n</div>\r\n</div>\r\n</div>\r\n', 'Làm Thế Nào Để Có Một Làn Da Khỏe', 'Làm Thế Nào Để Có Một Làn Da Khỏe', '', '', '', '', '', 0, '', 0, 0, '148473223601-80eb9.jpg', 1, 0, 1),
(2, 'Da Sạch- Khỏe Là Tiền Đề Của Làn Da Không Mụn', 'Da Sạch- Khỏe Là Tiền Đề Của Làn Da Không Mụn', '<span style="font-size:14px"><strong>HANA BEAUTY - CHUYÊN MỸ PHẨM XÁCH TAY</strong></span><br />\r\n<span style="font-size:14px">Tết sắp đến gần bạn quan tâm đến việc DƯỠNG DA để da mịn màng mướt khoẻ hay là MAKEUP để mang đến hiệu ứng da đẹp 1 cách nhanh nhất ạ ?<br />\r\n-----&gt; Nghe có vẻ là 2 khái niệm riêng biệt nhưng thật ra thì cả hai lại liên quan đến nhau, vì da đẹp là tiền đề của lớp makeup đẹp<br />\r\nKhi da được chăm sóc đúng cách và dưỡng ẩm đủ thì da sẽ trở nên căng mướt. Và tất nhiên lớp makeup chỉ đẹp và tự nhiên nhất khi da thật sự đủ độ ẩm khoẻ và ít khuyết điểm khi đó chỉ cần một lớp#Cushion hoặc kem nền với độ che phủ mỏng nhẹ thì chắc chắn bạn đã đủ tươi tắn với vẻ ngoài tự nhiên của mình, tự tin trong buổi họp lớp ngồi 8 chuyện xưa cùng đám bạn cũ . Nguyên năm gặp để check in 1 lần&nbsp;</span><br />\r\n<span style="font-size:14px"><strong>TẢN MẠN CHUYỆN NĂM XƯA</strong></span><br />\r\n<span style="font-size:14px">Nhớ tầm này năm ngoái da mình vẫn trong tình trạng da sần sùi khô và sạm, thiệt sự là lo lắng cho cái Tết sắp đến gần và mình đã được biết đến loại mặt nạ #mybeautydiary này qua 1 chị beauty blogger : chị #banhbeophuphiem và rất nhiều feedback tốt đẹp từ các chị em đã dùng qua. Nó như 1 cuộc cách mạng mang lại hiểu quả nhanh ngoài sức mong đợi</span>\r\n<div style="text-align: center;"><img alt="" src="/file/ckfinder/userfiles/images/15894411_1637198409917755_474428940902961389_n.jpg" style="height:800px; width:600px" /></div>\r\n<span style="font-size:14px">---&gt; @uyết định dùng thử .kết quả là 1 tuần đắp 2 lần trong vòng 1 tháng da đã thay đổi 1 cách không thể ngờ được luôn đó&nbsp;<br />\r\nDa đủ độ ẩm nên mướt lắm - kiểu da pưng pưng ngậm nước í, còn khi makeup kiểu ăn phấn thôi rồi chứ không bị cakey ( da ra đằng da - phấn ra đằng phấn)&nbsp;<br />\r\nDa sáng hẳn ra - trong giới skincare ở nước ngoài người ta không có khái niệm về sản phẩm làm trắng thay vào đó là dùng những sản phẩm giúp da sáng khoẻ và đều màu trong đó có thể kể đến là serum dòng vitamin C. Nhưng với mình lúc đó mặt nạ vẫn là lựa chọn nhanh gọn để chạy cho kịp cái tết sắp đến gần ^^</span><br />\r\n<span style="font-size:14px"><strong>DA MỀM MỊN VÀ KHÔNG BỊ SẦN SÙI</strong></span><br />\r\n<span style="font-size:14px">Tóm lại : Đây là mặt nạ thần thánh cứu cánh mình sau những ngày da thật sự xuống cấp do nhiều nguyên nhân - stress trong công việc hay thức khuya , thậm chí sau vài ngày bỏ bê skincare.</span>\r\n\r\n<div style="text-align: center;"><span style="font-size:14px"><img alt="" src="/file/ckfinder/userfiles/images/15966309_1637198656584397_3931164285883289336_n.jpg" style="height:800px; width:600px" /></span></div>\r\n<span style="font-size:14px">( Chắc ai cũng hiểu cảm giác có những ngày chẳng muốn làm gì chỉ muốn được lăn ngay ra ngủ sau khi về tới nhà )&nbsp;<br />\r\nHãy nhớ giùm Hana đây là 1 bước dưỡng sau tất cả các bước skincare hoàn chỉnh của bạn - đừng bao giờ nghĩ rằng nó thần thánh đến mức giúp bạn rạng rỡ khi bước làm sạch da của bạn không đúng cách : vd : srm với độ PH quá cao, tẩy trang chưa sạch sau khi trang điểm hoặc dùng kem chống nắng.<br />\r\nCó rất nhiều bạn thắc mắc rằng DA MỤN có nên dùng hay không , bạn phải hiểu rằng da mụn cũng cần được dưỡng ẩm nhưng thay vào đó skincare của bạn phải thêm bước trị mụn, đắp mặt nạ kháng khuẩn song song với mặt nạ thiên về dòng dưỡng này và Hana không khuyên dùng cho những bạn đang trong tình trạng viêm da nhiều mụn ạ&nbsp;<br />\r\nDa sạch- khoẻ là tiền đề của làn da không mụn<br />\r\nMột lần đắp mặt nạ hiểu quả gấp 6 lần xài serum vì tinh chất cô đặc thấm đẫm trong miếng mặt nạ<br />\r\nVậy nên hãy bắt đầu làm đẹp ngay hôm nay để kịp xúng xính đón tết nha.</span>', 'Da sạch- khỏe là tiền đề của làn da không mụn', 'Da sạch- khỏe là tiền đề của làn da không mụn', '', '', '', '', '', 0, '', 0, 0, '1484733003tri-mun-da-kho.jpg', 1, 0, 2),
(3, 'Massage với những viên đá này để da đẹp &quot;không tì vết&quot; yên tâm đón Tết', 'Massage với những viên đá này để da đẹp &quot;không tì vết&quot; yên tâm đón Tết\r\n', '<p><span style="color:rgb(0, 0, 0); font-family:roboto-regular,serif; font-size:14px"><strong><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif">Chỉ với những nguyên liệu đơn giản, rẻ tiền bạn đã có thể tự làm mặt nạ chăm sóc da hiệu quả và an toàn.</span></span></strong></span><br />\r\n<span style="font-size:14px; text-align:justify">Khoa học đã chứng nhận rằng chúng ta <span style="color:#000000">nên&nbsp;</span></span><a href="http://bestie.vn/2016/09/nhung-dau-hieu-chung-to-ban-dang-rua-mat-sai-cach" style="font-size: 14px; text-align: justify; background-color: transparent; box-sizing: border-box; text-decoration: none; color: rgb(0, 51, 153) !important;"><span style="color:#000000">rửa mặt</span></a><span style="font-size:14px; text-align:justify"><span style="color:#000000">&nbsp;b</span>uổi sáng bằng những viên đá được làm từ nước các loại hoa quả thay cho nước lã. Những viên đá lạnh buốt này sẽ làm tăng tuần hoàn máu, trẻ hoá làn da, xóa đi những vết nhăn, ngăn chặn các dấu hiệu lão hóa thông thường và làm ửng hồng đôi má của bạn. Nó cũng giúp da sáng lên một cách tự nhiên hơn. Nên thực hiện 2 lần/tuần.</span></p>\r\n\r\n<p style="text-align: center;"><img alt="bestie cham soc da bang da vien " src="http://static1.bestie.vn/Mlog/ImageContent/201701/scrape-14646007708928-pimtha-hot-girl-thai-lan-6-6405-1464600623-20170107152308.jpg" style="border:0px; box-sizing:border-box; height:432px; vertical-align:middle; width:500px" /></p>\r\n\r\n<p><span style="font-size:14px">Nếu bạn phải vội ra khỏi nhà trong tình trạng mệt mỏi, kém tươi thì đây cũng là cách nhanh nhất khiến da mặt bạn trông mượt mà, mịn màng hơn và tươi tắn hơn.<br />\r\nBạn có thể kết hợp giữa việc làm đá với các loại nguyên liệu<span style="color:#000000">,&nbsp;</span><a href="http://bestie.vn/2016/11/nhung-my-pham-cac-nang-nen-so-huu-de-co-guong-mat-makeup-ma-nhu-khong" style="box-sizing: border-box; background-color: transparent; color: rgb(0, 51, 153) !important; text-decoration: none;"><span style="color:#000000">mỹ phẩm từ tự nhiên</span></a><span style="color:#000000">&nbsp;</span>như các loại lá hoặc quả khác nhau để có một chế độ chăm sóc hoàn hảo cho làn da. Tuy nhiên, nước lạnh từ vòi không nên dùng để làm đá rửa mặt. Sẽ tốt hơn nhiều nếu làm đá từ nước đun sôi hay nước khoáng không ga.</span><br />\r\n&nbsp;</p>\r\n<span style="font-size:14px"><strong>1.&nbsp;<span style="font-family:arial,helvetica,sans-serif"><span style="color:rgb(0, 0, 0)">Làm trắng da với đá viên nước cơm dùng cho da thường</span></span></strong></span>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 1" src="http://static1.bestie.vn/Mlog/ImageContent/201701/030-20170107145736.JPG" style="border:0px; box-sizing:border-box; height:563px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p><span style="font-size:14px">Dùng nước cơm để làm đá, ngoài tác dụng dưỡng da, nó còn có tác<span style="color:#000000"> dụng&nbsp;</span><a href="http://bestie.vn/2016/12/da-trang-bat-tong-voi-nhung-phuong-phap-tam-trang-an-toan-tai-nha" style="box-sizing: border-box; background-color: transparent; color: rgb(0, 51, 153) !important; text-decoration: none;"><span style="color:#000000">làm trắng da</span></a><span style="color:#000000">. Nư</span>ớc cơm được chắt ra khi nấu cơm, để nguội rồi cho vào ngăn đá. Loại đá này nên giữ trong ngăn đá không quá 3 ngày.</span></p>\r\n<strong>​​​</strong><span style="font-size:14px"><strong>​​2.&nbsp;</strong></span><strong style="font-size:14px; text-align:justify"><span style="line-height:20.8px">Cung cấp độ ẩm cho da khô bằng đá viên hoa quả</span></strong>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 2" src="http://static1.bestie.vn/Mlog/ImageContent/201701/fruit-ice-cubes-20170107150123.jpg" style="border:0px; box-sizing:border-box; height:325px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p><span style="font-size:14px">Da khô thích hợp với những loại đá được làm từ lá, hoa, cũng như quả. Những quả sơn tra đỏ thắm, những cọng bồ công anh là thứ nguyên liệu tuyệt diệu cho loại da này. Có thể làm đá từ nước quả, tốt nhất là những loại quả đỏ. Nghiền nát 3 thìa quả và khuấy đều trong 2 cốc nước sôi để nguội, sau đấy lọc lấy nước. Cho vào ngăn đá và dùng trong vòng 5 ngày.</span><br />\r\n<br />\r\n<strong>3.&nbsp;</strong><span style="font-size:14px"><strong>Se khít lỗ chân lông bằng đá viên nước hoa hồng</strong></span></p>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 3" src="http://static1.bestie.vn/Mlog/ImageContent/201701/our-white-rose-goji-blend-is-the-perfect-tea-to-drink-cold-try-our-iced-tea-recipe-today-love-tea-i-20170107150332.jpg" style="border:0px; box-sizing:border-box; height:500px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p><span style="font-size:14px">Bạn có thể biến đổi một chú<span style="color:#000000">t cho&nbsp;</span><a href="http://bestie.vn/2016/11/3-loi-ich-that-bat-ngo-tu-glycerin-nuoc-hoa-hong-va-nuoc-cot-chanh" style="box-sizing: border-box; background-color: transparent; color: rgb(0, 51, 153) !important; text-decoration: none;"><span style="color:#000000">nước hoa hồng</span></a><span style="color:#000000">&nbsp;c</span>ủa mình bằng cách làm lạnh trong các khay đá. Những viên đá nước hoa hồng sẽ giúp cho da mặt được mềm mại và tươi mới hơn.<br />\r\n<br />\r\n<strong>4.&nbsp;</strong></span><span style="font-size:14px"><strong>Giải nhiệt, làm dịu làn da cháy nắng bằng đá viên nha đam</strong></span></p>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 4" src="http://static1.bestie.vn/Mlog/ImageContent/201701/aloe-vera-ice-cubes-final2-20170107150523.jpg" style="border:0px; box-sizing:border-box; height:341px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p><span style="font-size:14px">Với hàm lượng nước cao, lá nha đam với cấu tạo đặc trưng có lớp gel trong suốt, mềm mịn và mát lành tinh khiết nên có công dụng tuyệt với với việc giải nhiệt và làm dịu làn da khi cháy nắng. Bạn chỉ cần cắt bỏ hai bên gai dọc thân lá, tách lấy phần gel bên trong, nghiền nát cùng với nước và dựng trong khay đá để lạnh. Sau khi ra ngoài dưới trời nắng nóng, hãy dùng một viên lướt nhẹ lên da, khi đó mọi tác động của nắng nóng và tia UV đều được giải quyết hết</span>.<br />\r\n<br />\r\n<strong>5.&nbsp;</strong><span style="font-size:14px"><strong>Làm sạch và sáng da với đá viên dưa leo,&nbsp;<span style="line-height:20.8px">mật ong và chanh</span></strong></span></p>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 5" src="http://static1.bestie.vn/Mlog/ImageContent/201701/cucumber-lemon-honey-ice-cubes-20170107150630.jpg" style="border:0px; box-sizing:border-box; height:700px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p><span style="font-size:14px">Dưa leo chứa hàm lượng nước lên đến 90% giúp da luôn có đủ độ ẩm cần thiết, nên một khi kết hợp với các thành phần dưỡng ẩm của mật ong và khả năng kháng khuẩn chống viên của chanh tươi thì hiệu quả chăm sóc và làm sạch da sẽ trọn vẹn và sạch sâu hơn hẳn. Cách đơn giản nhất là bạn xay nhuyễn dưa leo cùng một thìa cafe mật ong rồi thêm vài giọt chanh tươi đựng trong khay đá và để lạnh. Mỗi khi sử dụng lấy một viên massage nhẹ nhàng trên da và để nguyên hỗn hợp trên da khoảng 5-10 phút để dưỡng chất thẩm thấu sâu trên da bạn.<br />\r\n<br />\r\n<strong>6.&nbsp;</strong></span><span style="font-size:14px"><strong>Trị mụn và vết thâm với đá viên Matcha</strong></span></p>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 6" src="http://static1.bestie.vn/Mlog/ImageContent/201701/making-veggie-ice-cubes-20170107150806.jpg" style="border:0px; box-sizing:border-box; height:375px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Trà xanh có tác dụng làm mát tại chỗ, trị mụn và chống lão hóa. Rất nhiều bạn nữ ưa thích chọn trà xanh để làm mặt nạ dưỡng da. Thay vì trộn với các nguyên liệu khác đắp mặt, bạn có thể pha bột trà và làm đông để tăng hiệu quả dưỡng da hơn nữa.<br />\r\nBạn hòa bột trà xanh với nước khoáng cho thật tan. Sau đó lọc qua rây để lấy phần nước trong. Dùng nước này cho vào khay đá và để đông. Hàng ngày dùng nó để rửa mặt sáng, tối bạn sẽ thấy da mặt trắng mịn, sạch mụn và đánh bay vết thâm đen.</span></p>\r\n\r\n<p><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif"><strong><span style="color:rgb(0, 0, 0)">Cách chăm sóc da bằng đá viên</span></strong></span></span></p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;"><span style="font-size:14px">Bước 1: Rửa mặt bằng nước ấm rồi dùng khăn mềm thấm khô da, lưu ý không nên dùng khăn mặt sần sùi và khô ráp tránh gây tổn hại da và tránh mụn lây lan nhiều hơn.</span></li>\r\n	<li style="text-align: justify;"><span style="font-size:14px">Bước 2: Cho 1 ít đá bào hoặc đá viên vào khăn khô, túm bốn góc thành 1 khối vuông.</span></li>\r\n	<li style="text-align: justify;"><span style="font-size:14px">Bước 3: Chườm đá trực tiếp lên vùng da bị mụn, để yên trong vài phút, sau đó chuyển sang khu vực khác. Đợi 10 phút sau đó thực hiện lại 1 lần nữa.</span></li>\r\n</ul>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Bạn có thể thực hiện cách này đều đặn mỗi ngày trước khi đi ngủ hoặc sáng thức dậy, chỉ sau 1 tuần sẽ cảm nhận được tác dụng thực sự.<br />\r\n<span style="line-height:20.8px">&quot;Mọi thứ đều nở ra khi nóng lên và co lại khi lạnh đi&quot;. Đừng ngại sử dụng viên đá lạnh thoa lên mặt, kết hợp với các động tác massage mặt mỗi ngày, điều này sẽ giúp làm se khít lỗ chân lông trên da mặt, đồng thời giảm bớt việc các chất bã nhờn, giảm lượng bụi và vi khuẩn thâm nhập lỗ chân lông, giúp bạn làm sạch da mặt dễ dàng hơn mà không phải kỳ công chăm sóc.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Massage với những viên đá này để da đẹp &quot;không tì vết&quot; yên tâm đón Tết', 'Massage với những viên đá này để da đẹp &quot;không tì vết&quot; yên tâm đón Tết', '', '', '', '', '', 0, '', 0, 0, '148488481820-01-2017 11-00-04 SA.png', 1, 1, 3),
(4, 'Bí quyết dưỡng da trắng hồng dành cho bạn gái', 'Bí quyết dưỡng da trắng hồng dành cho bạn gái ', '<div style="text-align: center;"><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif"><strong>Bí quyết dưỡng da trắng hồng dành cho bạn gái</strong></span></span></div>\r\n\r\n<div style="text-align: justify;"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Làm sao để có được làn da trắng mịn hồng hào luôn là vấn đề được các bạn nữ quan tậm. Bạn đã biết cách dưỡng da trắng hồng chưa? Những bí quyết dưới đây sẽ giúp bạn!<br />\r\nChăm sóc da là một việc không dễ dàng, đòi hỏi bạn phải cẩn thận và kiên trì. Trên thực tế có rất nhiều biện pháp để giúp bạn sở hữu được nước da trắng hồng, mịn màng. Chú ý đến những vấn đề sau, bạn sẽ không còn lo lắng về làn da của mình nữa.<br />\r\nDưỡng da trắng hồng bằng cách làm sạch da mặt&nbsp;</span></span><br />\r\n<img alt="Dưỡng da trắng hồng" class="aligncenter wp-image-24288" src="http://www.phunu.duoclieu/wp-content/uploads/2016/06/D%C6%B0%E1%BB%A1ng-da-tr%E1%BA%AFng-h%E1%BB%93ng-2-433x290.jpg" style="background-color:rgb(255, 255, 255); border:0px; color:rgb(34, 34, 34); display:block; font-family:noto serif,serif; font-size:17.6px; height:auto; margin-bottom:24px; margin-left:auto; margin-right:auto; max-width:100%; text-align:center; width:473px" /><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Điều đầu tiên trong quy trình dưỡng da trắng hồng đó là bạn phải luôn giữ cho da mặt sạch sẽ. Bạn phải rửa sạch tay, cho một lượng sữa rửa mặt vừa đủ vào lòng bàn tay, tạo bọt thật kỹ và xoa đều lên mặt. Chuyển động tròn, massage da mặt nhẹ nhàng khoảng 30 giây rồi dùng nước ấm rửa sạch mặt. Không nên dùng nước quá nóng vì như thế có thể sẽ làm tổn thương da mặt của bạn.<br />\r\nThường xuyên tẩy tế bào chết cho da<br />\r\nĐây là thao tác quan trọng để dưỡng da trắng hồng. Bạn có thể trộn đều đường và nước với tỉ lệ 2:1 để làm thành hỗn hợp tẩy tế bào chết cho da đơn giản tại nhà. Thoa đều lên ba phần của khuôn mặt: vùng trán và hai bên má. Nhẹ nhàng massage theo hình tròn khoảng 1 phút rồi rửa mặt với nước ấm.</span></span><br />\r\n<img alt="Dưỡng da trắng hồng" class="aligncenter wp-image-24289" src="http://www.phunu.duoclieu/wp-content/uploads/2016/06/D%C6%B0%E1%BB%A1ng-da-tr%E1%BA%AFng-h%E1%BB%93ng-3-421x290.jpg" style="background-color:rgb(255, 255, 255); border:0px; color:rgb(34, 34, 34); display:block; font-family:noto serif,serif; font-size:17.6px; height:auto; margin-bottom:24px; margin-left:auto; margin-right:auto; max-width:100%; text-align:center; width:449px" /><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif"><strong>Dưỡng da trắng hồng bằng cách đắp mặt nạ dưỡng da</strong></span></span><br />\r\n<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Công đoạn không thể thiếu để giúp bạn dưỡng da trắng hồng đó chính là thường xuyên đắp mặt nạ cho da.<br />\r\nBạn có thể dùng các loại nguyên liệu có sẵn ngay tại nhà để chăm sóc cho da như:<br />\r\n<strong><em>&ndash; Cà chua: </em></strong>Vitamin C và các loại dưỡng chất có trong cà chua sẽ giúp da bạn trắng mịn tự nhiên. Bạn có thể cắt cà chua thành nhiều lát mỏng rồi đắp lên mặt trong khoảng 20 phút, sau đó rửa mặt sạch bằng nước lạnh. Áp dụng cách này một tuần từ 2-3 lần, bạn sẽ sớm có được làn da trắng hồng.<br />\r\nBạn cũng có thể dùng nước ép cà chua trộn với vài giọt nước cốt chanh rồi xoa lên mặt trong vòng 15 phút. Thực hiện khoảng 1 tháng bạn sẽ thấy tác dụng diệu kỳ của cà chua đối với làn da của bạn.</span></span><br />\r\n<img alt="Dưỡng da trắng hồng" class="aligncenter wp-image-24290" src="http://www.phunu.duoclieu/wp-content/uploads/2016/06/D%C6%B0%E1%BB%A1ng-da-tr%E1%BA%AFng-h%E1%BB%93ng-4-435x290.jpg" style="background-color:rgb(255, 255, 255); border:0px; color:rgb(34, 34, 34); display:block; font-family:noto serif,serif; font-size:17.6px; height:auto; margin-bottom:24px; margin-left:auto; margin-right:auto; max-width:100%; text-align:center; width:473px" /><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><em>&ndash;</em><strong><em><em> </em>Dưỡng da trắng hồng với dưa chuột</em></strong>: Dưa chuột là loại thực phẩm quen thuộc với các gia đình. Các axit tartaric và axit amin có trong dựa chuột có hiệu quả rất tốt để dưỡng trắng da. Dùng vài giọt nước cốt chanh trộn đều với nước ép dưa chuột rồi xoa lên mặt. Massage nhẹ nhàng kết hợp thư giãn khoảng 20 phút rồi rửa sạch mặt. Với cách làm này, làn da bạn sẽ mềm mịn, trắng hồng trông thấy. Thực hiện 2-3 lần trong tuần để thu được kết quả tốt nhất.<br />\r\n<em><strong>&ndash; Khoai tây:</strong></em> Một loại dưỡng chất từ thiên nhiên giúp dưỡng da trắng hồng không thể bỏ qua đó là khoai tây. Bạn chỉ cần hấp chín khoai tây sau đó nghiền nát và trộn đều với lượng sữa tươi sao cho tạo thành một hỗn hợp sền sệt. Thoa đều hỗn hợp này lên mặt, đợi trong khoảng 30 phút rồi rửa lại bằng nước ấm. Mỗi tuần thực hiện 2 lần, làn da của bạn sẽ trắng hồng rạng rỡ.</span></span><br />\r\n<br />\r\n<span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif"><strong>Thu nhỏ lỗ chân lông</strong></span></span><br />\r\n<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Đây chính là hâu cuối cùng để bạn sở hữu được làn da trắng hồng, mịn màng. Luân phiên dùng nước ấm, lạnh để rửa mặt và cuối cùng là nước lạnh. Hãy tạt nước lên mặt thay vì rửa bằng tay. Dùng một viên đá nhỏ xoa nhẹ lên mặt để giúp thu nhỏ lỗ chân lông. Dùng khăn mềm lau khô và thoa kem dưỡng ẩm cho da.<br />\r\nVới những khâu chăm sóc như trên, tin chắc rằng bạn sẽ dưỡng da trắng hồng nhanh chóng và hiệu quả. Hãy nhớ che chắn cho da mỗi khi ra ngoài. Chúc các bạn may mắn!</span></span></div>\r\n\r\n<div style="text-align: justify;">&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n', 'Bí quyết dưỡng da trắng hồng dành cho bạn gái', 'Bí quyết dưỡng da trắng hồng dành cho bạn gái', '', '', '', '', '', 0, '', 0, 0, '14848866433-bí-quyết-dưỡng-trắng-không-phải-ai-cũng-biết.jpg', 1, 0, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
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
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `title`, `icon`, `meta_keyword`, `meta_description`, `view`, `e_title`, `e_meta_keyword`, `e_meta_description`, `e_view`, `ind`, `active`) VALUES
(1, 'Trang chủ', '', '', '', 'trang-chu', 'Home', '', '', 'home', 1, 1),
(2, 'Về gia tộc lương y tâm tài', '', '', '', 've-gia-toc-luong-y-tam-tai', 'BUILD', '', '', 'build', 2, 1),
(3, 'Điều trị xương khớp', '', '', '', 'dieu-tri-xuong-khop', 'buy', '', '', 'product', 3, 1),
(4, 'Dược liệu', '', 'sell', '', 'duoc-lieu', '', '', '', '', 4, 1),
(5, 'Bài thuốc quý', '', 'bai-thuoc-quy', '', 'bai-thuoc-quy', '', '', '', '', 5, 1),
(6, 'Tin tức', 'about-us', '', '', 'tin-tuc', 'About Us', '', '', 'about-us', 6, 1),
(7, 'Tư vấn', '', '', '', 'tu-van', 'tv', '', '', 'news', 7, 1),
(8, 'Liên hệ', '', '', '', 'lien-he', 'Contact Us', '', '', 'contact-us', 8, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
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
  `ind` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `sum`, `content`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_content`, `e_meta_keyword`, `e_meta_description`, `pId`, `maps`, `city`, `district`, `img`, `active`, `home`, `ind`) VALUES
(1, 'Làm Thế Nào Để Có Một Làn Da Khỏe', 'Làm Thế Nào Để Có Một Làn Da Khỏe', '<h2 style="text-align:center"><span style="font-size:16px"><strong>Sau đây là 9 câu hỏi làm đẹp phổ biến và câu trả lời chính xác dành cho mỗi câu hỏi.</strong></span></h2>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); text-align: center;">&nbsp;</div>\r\n\r\n<div class="knc-content" style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: ">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="01-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/01-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Việc make up nói chung và sử dụng kem nền nói riêng chỉ gây mụn vì 2 lý do: một là sản phẩm bạn sử dụng gây tắc lỗ chân lông, hai là bạn không tẩy trang kỹ. Bởi vậy, khi bạn sử dụng sản phẩm an toàn và làm sạch da thật kỹ, da bạn hoàn toàn không cần &quot;nghỉ chơi&quot; với việc trang điểm để &quot;thở&quot; và trở nên đẹp hơn (thực chất, khái niệm &quot;thở&quot; không tồn tại với làn da).</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;">Khi mua bất cứ sản phẩm nào dùng để thoa lên da mặt, từ kem dưỡng đến kem nền, bạn hãy chắc chắn nó không gây tắc, bí lỗ chân lông (hãy tìm chữ &quot;noncomedogenic&quot; trên bao bì). Trong trường hợp da bạn bị mụn, hãy chọn kem nền có thành phần trị mụn như acid salicylic để có thể vừa che phủ lại vừa trị mụn cho da.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;">Việc tẩy trang thật kỹ cũng là chìa khóa để da không bị xấu đi khi trang điểm. Vào cuối ngày, hãy luôn nhớ làm sạch da với hai sản phẩm: dầu tẩy trang và sữa rửa mặt nhẹ dịu.&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;">Một khi bạn đã tuân thủ hai nguyên tắc kể trên, bạn sẽ thấy rằng thực sự không tồn tại khái niệm &quot;trang điểm nhiều làm da xấu đi&quot;.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="02-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/02-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Mụn đầu đen hình thành do bã nhờn tích tụ trong lỗ chân lông và bị ôxy hóa nên mới có màu đen. Cách trị mụn đầu đen hiệu quả nhất là sử dụng sản phẩm trị mụn có chứa benzoyl peroxide để diệt khuẩn và loại bỏ bã nhờn. Kèm theo đó, bạn cần tẩy da chết thường xuyên để ngăn chặn mụn đầu đen hình thành thêm.&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="03-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/03-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:&nbsp;</span>Khi mới tập tành make up, bạn không cần thiết phải sắm sửa ngay đủ bộ mỹ phẩm như các chuyên gia trang điểm chuyên nghiệp<span style="font-family:inherit; font-size:inherit; line-height:inherit">&nbsp;</span>mà chỉ cần những sản phẩm thiết yếu sau đây: kem nền (BB cream, phấn cushion hoặc tinted moisturizer, v.v...), phấn phủ không màu, một màu son tôn da (bạn có thể chọn sản phẩm môi và má 2 trong 1 để vừa làm son, vừa làm má hồng rất tiện), một cây eyeliner (dạng nước, gel hoặc chì), kẹp mi và một cây mascara. Sau này, khi đã sử dụng thành thạo những sản phẩm cơ bản trên, bạn có thể mua thêm những món đồ phụ trợ để make up chuyên nghiệp hơn, như sản phẩm tạo khối, tạo sáng, v.v...</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="04-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/04-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Đáng tiếc là không. Về cơ bản, lỗ chân lông không thể đóng, mở hay thu nhỏ lại được. Lỗ chân lông to hay nhỏ phụ thuộc vào gene của mỗi người và bạn không thể thay đổi kích cỡ của chúng. Tuy không thể thu nhỏ nhưng lỗ chân lông lại có thể bị giãn ra khi bị tắc nghẽn. Điều đó có nghĩa là lỗ chân lông càng sạch sẽ bao nhiêu, bạn sẽ càng cảm thấy chúng nhỏ bấy nhiêu và đó là lý do tại sao chúng ta nên làm sạch da thật kỹ. Cách làm sạch từng lỗ chân lông hiệu quả là rửa mặt bằng thao tác xoáy tròn tập trung vào từng vùng trên mặt.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="05-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/05-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Lâu nay, uống nhiều nước (ít nhất là 2,5 lít/ngày) vẫn được tin là một trong những cách hiệu quả nhất giúp cung cấp độ ẩm cho da, từ đó giúp da khỏe đẹp. Tuy nhiên, trên thực tế lại không có bất cứ nghiên cứu khoa học nào chứng minh rằng việc uống nhiều nước có thể giúp da đẹp hơn hay làm cơ thể thon gọn hơn. &quot;Lượng nước mà chúng ta uống vào không có tác dụng cung cấp độ ẩm cho da bởi làn da của chúng ta hoạt động như một tấm rào chắn vững chắc giúp ngăn cách môi trường bên trong và ngoài cơ thể. Chỉ trong trường hợp bạn bị thiếu nước một cách trầm trọng, làn da mới bị ảnh hưởng. Những vấn đề hay gặp với làn da khô sẽ không tự hết chỉ nhờ việc uống 8 cốc nước mỗi ngày mà cần đến những sản phẩm dưỡng da phù hợp&quot; - chuyên gia sức khỏe Andrew Carroll viết trên tờ New York Times cách đây không lâu. Ngoài ra, đúng là cơ thể chúng ta cần 2,5 lít nước/ngày để duy trì sự khỏe mạnh nhưng mỗi người không cần thiết phải uống đúng 2,5 lít nước bởi nước cũng có thể được bổ sung qua đường ăn, khi phần lớn các loại thức ăn đều có chứa một lượng nước nhất định.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="07-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/07-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Da mặt bạn sẽ khó thấm kem dưỡng, khó &quot;ăn&quot; kem nền khi tế bào chết bị ứ đọng trên da mà không được dọn dẹp. Việc bạn cần làm là tẩy da chết thật thường xuyên với tần suất từ 2 - 3 lần một tuần. Khi đó, da sẽ mỏng, mịn hơn hẳn và đóng vai trò như một lớp phông nền mịn mượt giúp các loại mỹ phẩm &quot;bám dính&quot; lên da một cách trơn tru, dễ dàng. Ngoài ra, việc dùng kem lót (primer) trước khi đánh nền cũng sẽ khiến lớp nền bám lên da chắc hơn và lâu trôi hơn hẳn so với bình thường.</div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="08-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/08-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Khi môi bạn bị thâm và lấn át hết màu son, bí quyết là hãy tán kem che khuyết điểm lên môi trước khi tô son. Ngoài ra, bạn hãy chọn loại son có kết cấu màu thật đặc (opaque) - thường là son lì, son nước (còn gọi là son kem hay liquid lipstick). Đặc điểm của những loại son này là khả năng lên màu rất mạnh, có thể che phủ hoàn toàn màu môi nguyên thủy của bạn. Bên cạnh đó, hãy thường xuyên tẩy da chết cho môi và thường xuyên thoa mật ong để cải thiện phần nào sắc tố môi.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="09-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/09-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n</div>\r\n</div>\r\n\r\n<div><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Tần suất gội đầu phụ thuộc vào mái tóc cũng như môi trường sống của riêng mỗi người. Trong trường hợp bạn sống ở nơi nhiều khói bụi, tần suất gội đầu nên là 1 - 2 ngày một lần. Với dầu gội nhẹ dịu có thành phần dưỡng tóc, bạn hoàn toàn có thể gội đầu hằng ngày mà không sợ tóc bị khô hay xấu đi. Khi tóc bạn thuộc dạng tóc khô hoặc bạn sống ở nơi có khí hậu trong lành, tần suất gội đầu có thể giãn xuống còn khoảng 2 - 3 ngày một lần.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="06-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/06-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Việc cắt tóc thường xuyên không hề tác động gì đến chân tóc, bởi vậy, có thể khẳng định rằng cắt tóc không hề khiến tóc mọc nhanh hơn. Trên thực tế, tóc bạn vẫn mọc với tốc độ bình thường và nếu bạn có cảm thấy tóc &quot;mọc nhanh hơn&quot; thì đó cũng chỉ là cảm giác chủ quan của bạn mà thôi. Mục đích thực sự của việc tỉa ngắn đuôi tóc thường xuyên là để ngăn ngừa đuôi tóc chẻ ngọn.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: right;">Nguồn: Elly</div>\r\n</div>\r\n</div>\r\n</div>\r\n', 'Làm Thế Nào Để Có Một Làn Da Khỏe', 'Làm Thế Nào Để Có Một Làn Da Khỏe', '', '', '', '', '', 0, '', 0, 0, '148473223601-80eb9.jpg', 1, 0, 1),
(2, 'Da Sạch- Khỏe Là Tiền Đề Của Làn Da Không Mụn', 'Da Sạch- Khỏe Là Tiền Đề Của Làn Da Không Mụn', '<span style="font-size:14px"><strong>HANA BEAUTY - CHUYÊN MỸ PHẨM XÁCH TAY</strong></span><br />\r\n<span style="font-size:14px">Tết sắp đến gần bạn quan tâm đến việc DƯỠNG DA để da mịn màng mướt khoẻ hay là MAKEUP để mang đến hiệu ứng da đẹp 1 cách nhanh nhất ạ ?<br />\r\n-----&gt; Nghe có vẻ là 2 khái niệm riêng biệt nhưng thật ra thì cả hai lại liên quan đến nhau, vì da đẹp là tiền đề của lớp makeup đẹp<br />\r\nKhi da được chăm sóc đúng cách và dưỡng ẩm đủ thì da sẽ trở nên căng mướt. Và tất nhiên lớp makeup chỉ đẹp và tự nhiên nhất khi da thật sự đủ độ ẩm khoẻ và ít khuyết điểm khi đó chỉ cần một lớp#Cushion hoặc kem nền với độ che phủ mỏng nhẹ thì chắc chắn bạn đã đủ tươi tắn với vẻ ngoài tự nhiên của mình, tự tin trong buổi họp lớp ngồi 8 chuyện xưa cùng đám bạn cũ . Nguyên năm gặp để check in 1 lần&nbsp;</span><br />\r\n<span style="font-size:14px"><strong>TẢN MẠN CHUYỆN NĂM XƯA</strong></span><br />\r\n<span style="font-size:14px">Nhớ tầm này năm ngoái da mình vẫn trong tình trạng da sần sùi khô và sạm, thiệt sự là lo lắng cho cái Tết sắp đến gần và mình đã được biết đến loại mặt nạ #mybeautydiary này qua 1 chị beauty blogger : chị #banhbeophuphiem và rất nhiều feedback tốt đẹp từ các chị em đã dùng qua. Nó như 1 cuộc cách mạng mang lại hiểu quả nhanh ngoài sức mong đợi</span>\r\n<div style="text-align: center;"><img alt="" src="/file/ckfinder/userfiles/images/15894411_1637198409917755_474428940902961389_n.jpg" style="height:800px; width:600px" /></div>\r\n<span style="font-size:14px">---&gt; @uyết định dùng thử .kết quả là 1 tuần đắp 2 lần trong vòng 1 tháng da đã thay đổi 1 cách không thể ngờ được luôn đó&nbsp;<br />\r\nDa đủ độ ẩm nên mướt lắm - kiểu da pưng pưng ngậm nước í, còn khi makeup kiểu ăn phấn thôi rồi chứ không bị cakey ( da ra đằng da - phấn ra đằng phấn)&nbsp;<br />\r\nDa sáng hẳn ra - trong giới skincare ở nước ngoài người ta không có khái niệm về sản phẩm làm trắng thay vào đó là dùng những sản phẩm giúp da sáng khoẻ và đều màu trong đó có thể kể đến là serum dòng vitamin C. Nhưng với mình lúc đó mặt nạ vẫn là lựa chọn nhanh gọn để chạy cho kịp cái tết sắp đến gần ^^</span><br />\r\n<span style="font-size:14px"><strong>DA MỀM MỊN VÀ KHÔNG BỊ SẦN SÙI</strong></span><br />\r\n<span style="font-size:14px">Tóm lại : Đây là mặt nạ thần thánh cứu cánh mình sau những ngày da thật sự xuống cấp do nhiều nguyên nhân - stress trong công việc hay thức khuya , thậm chí sau vài ngày bỏ bê skincare.</span>\r\n\r\n<div style="text-align: center;"><span style="font-size:14px"><img alt="" src="/file/ckfinder/userfiles/images/15966309_1637198656584397_3931164285883289336_n.jpg" style="height:800px; width:600px" /></span></div>\r\n<span style="font-size:14px">( Chắc ai cũng hiểu cảm giác có những ngày chẳng muốn làm gì chỉ muốn được lăn ngay ra ngủ sau khi về tới nhà )&nbsp;<br />\r\nHãy nhớ giùm Hana đây là 1 bước dưỡng sau tất cả các bước skincare hoàn chỉnh của bạn - đừng bao giờ nghĩ rằng nó thần thánh đến mức giúp bạn rạng rỡ khi bước làm sạch da của bạn không đúng cách : vd : srm với độ PH quá cao, tẩy trang chưa sạch sau khi trang điểm hoặc dùng kem chống nắng.<br />\r\nCó rất nhiều bạn thắc mắc rằng DA MỤN có nên dùng hay không , bạn phải hiểu rằng da mụn cũng cần được dưỡng ẩm nhưng thay vào đó skincare của bạn phải thêm bước trị mụn, đắp mặt nạ kháng khuẩn song song với mặt nạ thiên về dòng dưỡng này và Hana không khuyên dùng cho những bạn đang trong tình trạng viêm da nhiều mụn ạ&nbsp;<br />\r\nDa sạch- khoẻ là tiền đề của làn da không mụn<br />\r\nMột lần đắp mặt nạ hiểu quả gấp 6 lần xài serum vì tinh chất cô đặc thấm đẫm trong miếng mặt nạ<br />\r\nVậy nên hãy bắt đầu làm đẹp ngay hôm nay để kịp xúng xính đón tết nha.</span>', 'Da sạch- khỏe là tiền đề của làn da không mụn', 'Da sạch- khỏe là tiền đề của làn da không mụn', '', '', '', '', '', 0, '', 0, 0, '1484733003tri-mun-da-kho.jpg', 1, 0, 2),
(3, 'Massage với những viên đá này để da đẹp &quot;không tì vết&quot; yên tâm đón Tết', 'Massage với những viên đá này để da đẹp &quot;không tì vết&quot; yên tâm đón Tết\r\n', '<p><span style="color:rgb(0, 0, 0); font-family:roboto-regular,serif; font-size:14px"><strong><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif">Chỉ với những nguyên liệu đơn giản, rẻ tiền bạn đã có thể tự làm mặt nạ chăm sóc da hiệu quả và an toàn.</span></span></strong></span><br />\r\n<span style="font-size:14px; text-align:justify">Khoa học đã chứng nhận rằng chúng ta <span style="color:#000000">nên&nbsp;</span></span><a href="http://bestie.vn/2016/09/nhung-dau-hieu-chung-to-ban-dang-rua-mat-sai-cach" style="font-size: 14px; text-align: justify; background-color: transparent; box-sizing: border-box; text-decoration: none; color: rgb(0, 51, 153) !important;"><span style="color:#000000">rửa mặt</span></a><span style="font-size:14px; text-align:justify"><span style="color:#000000">&nbsp;b</span>uổi sáng bằng những viên đá được làm từ nước các loại hoa quả thay cho nước lã. Những viên đá lạnh buốt này sẽ làm tăng tuần hoàn máu, trẻ hoá làn da, xóa đi những vết nhăn, ngăn chặn các dấu hiệu lão hóa thông thường và làm ửng hồng đôi má của bạn. Nó cũng giúp da sáng lên một cách tự nhiên hơn. Nên thực hiện 2 lần/tuần.</span></p>\r\n\r\n<p style="text-align: center;"><img alt="bestie cham soc da bang da vien " src="http://static1.bestie.vn/Mlog/ImageContent/201701/scrape-14646007708928-pimtha-hot-girl-thai-lan-6-6405-1464600623-20170107152308.jpg" style="border:0px; box-sizing:border-box; height:432px; vertical-align:middle; width:500px" /></p>\r\n\r\n<p><span style="font-size:14px">Nếu bạn phải vội ra khỏi nhà trong tình trạng mệt mỏi, kém tươi thì đây cũng là cách nhanh nhất khiến da mặt bạn trông mượt mà, mịn màng hơn và tươi tắn hơn.<br />\r\nBạn có thể kết hợp giữa việc làm đá với các loại nguyên liệu<span style="color:#000000">,&nbsp;</span><a href="http://bestie.vn/2016/11/nhung-my-pham-cac-nang-nen-so-huu-de-co-guong-mat-makeup-ma-nhu-khong" style="box-sizing: border-box; background-color: transparent; color: rgb(0, 51, 153) !important; text-decoration: none;"><span style="color:#000000">mỹ phẩm từ tự nhiên</span></a><span style="color:#000000">&nbsp;</span>như các loại lá hoặc quả khác nhau để có một chế độ chăm sóc hoàn hảo cho làn da. Tuy nhiên, nước lạnh từ vòi không nên dùng để làm đá rửa mặt. Sẽ tốt hơn nhiều nếu làm đá từ nước đun sôi hay nước khoáng không ga.</span><br />\r\n&nbsp;</p>\r\n<span style="font-size:14px"><strong>1.&nbsp;<span style="font-family:arial,helvetica,sans-serif"><span style="color:rgb(0, 0, 0)">Làm trắng da với đá viên nước cơm dùng cho da thường</span></span></strong></span>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 1" src="http://static1.bestie.vn/Mlog/ImageContent/201701/030-20170107145736.JPG" style="border:0px; box-sizing:border-box; height:563px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p><span style="font-size:14px">Dùng nước cơm để làm đá, ngoài tác dụng dưỡng da, nó còn có tác<span style="color:#000000"> dụng&nbsp;</span><a href="http://bestie.vn/2016/12/da-trang-bat-tong-voi-nhung-phuong-phap-tam-trang-an-toan-tai-nha" style="box-sizing: border-box; background-color: transparent; color: rgb(0, 51, 153) !important; text-decoration: none;"><span style="color:#000000">làm trắng da</span></a><span style="color:#000000">. Nư</span>ớc cơm được chắt ra khi nấu cơm, để nguội rồi cho vào ngăn đá. Loại đá này nên giữ trong ngăn đá không quá 3 ngày.</span></p>\r\n<strong>​​​</strong><span style="font-size:14px"><strong>​​2.&nbsp;</strong></span><strong style="font-size:14px; text-align:justify"><span style="line-height:20.8px">Cung cấp độ ẩm cho da khô bằng đá viên hoa quả</span></strong>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 2" src="http://static1.bestie.vn/Mlog/ImageContent/201701/fruit-ice-cubes-20170107150123.jpg" style="border:0px; box-sizing:border-box; height:325px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p><span style="font-size:14px">Da khô thích hợp với những loại đá được làm từ lá, hoa, cũng như quả. Những quả sơn tra đỏ thắm, những cọng bồ công anh là thứ nguyên liệu tuyệt diệu cho loại da này. Có thể làm đá từ nước quả, tốt nhất là những loại quả đỏ. Nghiền nát 3 thìa quả và khuấy đều trong 2 cốc nước sôi để nguội, sau đấy lọc lấy nước. Cho vào ngăn đá và dùng trong vòng 5 ngày.</span><br />\r\n<br />\r\n<strong>3.&nbsp;</strong><span style="font-size:14px"><strong>Se khít lỗ chân lông bằng đá viên nước hoa hồng</strong></span></p>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 3" src="http://static1.bestie.vn/Mlog/ImageContent/201701/our-white-rose-goji-blend-is-the-perfect-tea-to-drink-cold-try-our-iced-tea-recipe-today-love-tea-i-20170107150332.jpg" style="border:0px; box-sizing:border-box; height:500px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p><span style="font-size:14px">Bạn có thể biến đổi một chú<span style="color:#000000">t cho&nbsp;</span><a href="http://bestie.vn/2016/11/3-loi-ich-that-bat-ngo-tu-glycerin-nuoc-hoa-hong-va-nuoc-cot-chanh" style="box-sizing: border-box; background-color: transparent; color: rgb(0, 51, 153) !important; text-decoration: none;"><span style="color:#000000">nước hoa hồng</span></a><span style="color:#000000">&nbsp;c</span>ủa mình bằng cách làm lạnh trong các khay đá. Những viên đá nước hoa hồng sẽ giúp cho da mặt được mềm mại và tươi mới hơn.<br />\r\n<br />\r\n<strong>4.&nbsp;</strong></span><span style="font-size:14px"><strong>Giải nhiệt, làm dịu làn da cháy nắng bằng đá viên nha đam</strong></span></p>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 4" src="http://static1.bestie.vn/Mlog/ImageContent/201701/aloe-vera-ice-cubes-final2-20170107150523.jpg" style="border:0px; box-sizing:border-box; height:341px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p><span style="font-size:14px">Với hàm lượng nước cao, lá nha đam với cấu tạo đặc trưng có lớp gel trong suốt, mềm mịn và mát lành tinh khiết nên có công dụng tuyệt với với việc giải nhiệt và làm dịu làn da khi cháy nắng. Bạn chỉ cần cắt bỏ hai bên gai dọc thân lá, tách lấy phần gel bên trong, nghiền nát cùng với nước và dựng trong khay đá để lạnh. Sau khi ra ngoài dưới trời nắng nóng, hãy dùng một viên lướt nhẹ lên da, khi đó mọi tác động của nắng nóng và tia UV đều được giải quyết hết</span>.<br />\r\n<br />\r\n<strong>5.&nbsp;</strong><span style="font-size:14px"><strong>Làm sạch và sáng da với đá viên dưa leo,&nbsp;<span style="line-height:20.8px">mật ong và chanh</span></strong></span></p>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 5" src="http://static1.bestie.vn/Mlog/ImageContent/201701/cucumber-lemon-honey-ice-cubes-20170107150630.jpg" style="border:0px; box-sizing:border-box; height:700px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p><span style="font-size:14px">Dưa leo chứa hàm lượng nước lên đến 90% giúp da luôn có đủ độ ẩm cần thiết, nên một khi kết hợp với các thành phần dưỡng ẩm của mật ong và khả năng kháng khuẩn chống viên của chanh tươi thì hiệu quả chăm sóc và làm sạch da sẽ trọn vẹn và sạch sâu hơn hẳn. Cách đơn giản nhất là bạn xay nhuyễn dưa leo cùng một thìa cafe mật ong rồi thêm vài giọt chanh tươi đựng trong khay đá và để lạnh. Mỗi khi sử dụng lấy một viên massage nhẹ nhàng trên da và để nguyên hỗn hợp trên da khoảng 5-10 phút để dưỡng chất thẩm thấu sâu trên da bạn.<br />\r\n<br />\r\n<strong>6.&nbsp;</strong></span><span style="font-size:14px"><strong>Trị mụn và vết thâm với đá viên Matcha</strong></span></p>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 6" src="http://static1.bestie.vn/Mlog/ImageContent/201701/making-veggie-ice-cubes-20170107150806.jpg" style="border:0px; box-sizing:border-box; height:375px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Trà xanh có tác dụng làm mát tại chỗ, trị mụn và chống lão hóa. Rất nhiều bạn nữ ưa thích chọn trà xanh để làm mặt nạ dưỡng da. Thay vì trộn với các nguyên liệu khác đắp mặt, bạn có thể pha bột trà và làm đông để tăng hiệu quả dưỡng da hơn nữa.<br />\r\nBạn hòa bột trà xanh với nước khoáng cho thật tan. Sau đó lọc qua rây để lấy phần nước trong. Dùng nước này cho vào khay đá và để đông. Hàng ngày dùng nó để rửa mặt sáng, tối bạn sẽ thấy da mặt trắng mịn, sạch mụn và đánh bay vết thâm đen.</span></p>\r\n\r\n<p><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif"><strong><span style="color:rgb(0, 0, 0)">Cách chăm sóc da bằng đá viên</span></strong></span></span></p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;"><span style="font-size:14px">Bước 1: Rửa mặt bằng nước ấm rồi dùng khăn mềm thấm khô da, lưu ý không nên dùng khăn mặt sần sùi và khô ráp tránh gây tổn hại da và tránh mụn lây lan nhiều hơn.</span></li>\r\n	<li style="text-align: justify;"><span style="font-size:14px">Bước 2: Cho 1 ít đá bào hoặc đá viên vào khăn khô, túm bốn góc thành 1 khối vuông.</span></li>\r\n	<li style="text-align: justify;"><span style="font-size:14px">Bước 3: Chườm đá trực tiếp lên vùng da bị mụn, để yên trong vài phút, sau đó chuyển sang khu vực khác. Đợi 10 phút sau đó thực hiện lại 1 lần nữa.</span></li>\r\n</ul>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Bạn có thể thực hiện cách này đều đặn mỗi ngày trước khi đi ngủ hoặc sáng thức dậy, chỉ sau 1 tuần sẽ cảm nhận được tác dụng thực sự.<br />\r\n<span style="line-height:20.8px">&quot;Mọi thứ đều nở ra khi nóng lên và co lại khi lạnh đi&quot;. Đừng ngại sử dụng viên đá lạnh thoa lên mặt, kết hợp với các động tác massage mặt mỗi ngày, điều này sẽ giúp làm se khít lỗ chân lông trên da mặt, đồng thời giảm bớt việc các chất bã nhờn, giảm lượng bụi và vi khuẩn thâm nhập lỗ chân lông, giúp bạn làm sạch da mặt dễ dàng hơn mà không phải kỳ công chăm sóc.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Massage với những viên đá này để da đẹp &quot;không tì vết&quot; yên tâm đón Tết', 'Massage với những viên đá này để da đẹp &quot;không tì vết&quot; yên tâm đón Tết', '', '', '', '', '', 0, '', 0, 0, '148488481820-01-2017 11-00-04 SA.png', 1, 1, 3),
(4, 'Bí quyết dưỡng da trắng hồng dành cho bạn gái', 'Bí quyết dưỡng da trắng hồng dành cho bạn gái ', '<div style="text-align: center;"><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif"><strong>Bí quyết dưỡng da trắng hồng dành cho bạn gái</strong></span></span></div>\r\n\r\n<div style="text-align: justify;"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Làm sao để có được làn da trắng mịn hồng hào luôn là vấn đề được các bạn nữ quan tậm. Bạn đã biết cách dưỡng da trắng hồng chưa? Những bí quyết dưới đây sẽ giúp bạn!<br />\r\nChăm sóc da là một việc không dễ dàng, đòi hỏi bạn phải cẩn thận và kiên trì. Trên thực tế có rất nhiều biện pháp để giúp bạn sở hữu được nước da trắng hồng, mịn màng. Chú ý đến những vấn đề sau, bạn sẽ không còn lo lắng về làn da của mình nữa.<br />\r\nDưỡng da trắng hồng bằng cách làm sạch da mặt&nbsp;</span></span><br />\r\n<img alt="Dưỡng da trắng hồng" class="aligncenter wp-image-24288" src="http://www.phunu.news/wp-content/uploads/2016/06/D%C6%B0%E1%BB%A1ng-da-tr%E1%BA%AFng-h%E1%BB%93ng-2-433x290.jpg" style="background-color:rgb(255, 255, 255); border:0px; color:rgb(34, 34, 34); display:block; font-family:noto serif,serif; font-size:17.6px; height:auto; margin-bottom:24px; margin-left:auto; margin-right:auto; max-width:100%; text-align:center; width:473px" /><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Điều đầu tiên trong quy trình dưỡng da trắng hồng đó là bạn phải luôn giữ cho da mặt sạch sẽ. Bạn phải rửa sạch tay, cho một lượng sữa rửa mặt vừa đủ vào lòng bàn tay, tạo bọt thật kỹ và xoa đều lên mặt. Chuyển động tròn, massage da mặt nhẹ nhàng khoảng 30 giây rồi dùng nước ấm rửa sạch mặt. Không nên dùng nước quá nóng vì như thế có thể sẽ làm tổn thương da mặt của bạn.<br />\r\nThường xuyên tẩy tế bào chết cho da<br />\r\nĐây là thao tác quan trọng để dưỡng da trắng hồng. Bạn có thể trộn đều đường và nước với tỉ lệ 2:1 để làm thành hỗn hợp tẩy tế bào chết cho da đơn giản tại nhà. Thoa đều lên ba phần của khuôn mặt: vùng trán và hai bên má. Nhẹ nhàng massage theo hình tròn khoảng 1 phút rồi rửa mặt với nước ấm.</span></span><br />\r\n<img alt="Dưỡng da trắng hồng" class="aligncenter wp-image-24289" src="http://www.phunu.news/wp-content/uploads/2016/06/D%C6%B0%E1%BB%A1ng-da-tr%E1%BA%AFng-h%E1%BB%93ng-3-421x290.jpg" style="background-color:rgb(255, 255, 255); border:0px; color:rgb(34, 34, 34); display:block; font-family:noto serif,serif; font-size:17.6px; height:auto; margin-bottom:24px; margin-left:auto; margin-right:auto; max-width:100%; text-align:center; width:449px" /><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif"><strong>Dưỡng da trắng hồng bằng cách đắp mặt nạ dưỡng da</strong></span></span><br />\r\n<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Công đoạn không thể thiếu để giúp bạn dưỡng da trắng hồng đó chính là thường xuyên đắp mặt nạ cho da.<br />\r\nBạn có thể dùng các loại nguyên liệu có sẵn ngay tại nhà để chăm sóc cho da như:<br />\r\n<strong><em>&ndash; Cà chua: </em></strong>Vitamin C và các loại dưỡng chất có trong cà chua sẽ giúp da bạn trắng mịn tự nhiên. Bạn có thể cắt cà chua thành nhiều lát mỏng rồi đắp lên mặt trong khoảng 20 phút, sau đó rửa mặt sạch bằng nước lạnh. Áp dụng cách này một tuần từ 2-3 lần, bạn sẽ sớm có được làn da trắng hồng.<br />\r\nBạn cũng có thể dùng nước ép cà chua trộn với vài giọt nước cốt chanh rồi xoa lên mặt trong vòng 15 phút. Thực hiện khoảng 1 tháng bạn sẽ thấy tác dụng diệu kỳ của cà chua đối với làn da của bạn.</span></span><br />\r\n<img alt="Dưỡng da trắng hồng" class="aligncenter wp-image-24290" src="http://www.phunu.news/wp-content/uploads/2016/06/D%C6%B0%E1%BB%A1ng-da-tr%E1%BA%AFng-h%E1%BB%93ng-4-435x290.jpg" style="background-color:rgb(255, 255, 255); border:0px; color:rgb(34, 34, 34); display:block; font-family:noto serif,serif; font-size:17.6px; height:auto; margin-bottom:24px; margin-left:auto; margin-right:auto; max-width:100%; text-align:center; width:473px" /><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><em>&ndash;</em><strong><em><em> </em>Dưỡng da trắng hồng với dưa chuột</em></strong>: Dưa chuột là loại thực phẩm quen thuộc với các gia đình. Các axit tartaric và axit amin có trong dựa chuột có hiệu quả rất tốt để dưỡng trắng da. Dùng vài giọt nước cốt chanh trộn đều với nước ép dưa chuột rồi xoa lên mặt. Massage nhẹ nhàng kết hợp thư giãn khoảng 20 phút rồi rửa sạch mặt. Với cách làm này, làn da bạn sẽ mềm mịn, trắng hồng trông thấy. Thực hiện 2-3 lần trong tuần để thu được kết quả tốt nhất.<br />\r\n<em><strong>&ndash; Khoai tây:</strong></em> Một loại dưỡng chất từ thiên nhiên giúp dưỡng da trắng hồng không thể bỏ qua đó là khoai tây. Bạn chỉ cần hấp chín khoai tây sau đó nghiền nát và trộn đều với lượng sữa tươi sao cho tạo thành một hỗn hợp sền sệt. Thoa đều hỗn hợp này lên mặt, đợi trong khoảng 30 phút rồi rửa lại bằng nước ấm. Mỗi tuần thực hiện 2 lần, làn da của bạn sẽ trắng hồng rạng rỡ.</span></span><br />\r\n<br />\r\n<span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif"><strong>Thu nhỏ lỗ chân lông</strong></span></span><br />\r\n<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Đây chính là hâu cuối cùng để bạn sở hữu được làn da trắng hồng, mịn màng. Luân phiên dùng nước ấm, lạnh để rửa mặt và cuối cùng là nước lạnh. Hãy tạt nước lên mặt thay vì rửa bằng tay. Dùng một viên đá nhỏ xoa nhẹ lên mặt để giúp thu nhỏ lỗ chân lông. Dùng khăn mềm lau khô và thoa kem dưỡng ẩm cho da.<br />\r\nVới những khâu chăm sóc như trên, tin chắc rằng bạn sẽ dưỡng da trắng hồng nhanh chóng và hiệu quả. Hãy nhớ che chắn cho da mỗi khi ra ngoài. Chúc các bạn may mắn!</span></span></div>\r\n\r\n<div style="text-align: justify;">&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n', 'Bí quyết dưỡng da trắng hồng dành cho bạn gái', 'Bí quyết dưỡng da trắng hồng dành cho bạn gái', '', '', '', '', '', 0, '', 0, 0, '14848866433-bí-quyết-dưỡng-trắng-không-phải-ai-cũng-biết.jpg', 1, 0, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `keyName` text NOT NULL,
  `name` text NOT NULL,
  `list` text NOT NULL,
  `elist` text NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `options`
--

INSERT INTO `options` (`id`, `keyName`, `name`, `list`, `elist`, `ind`, `active`) VALUES
(1, 'storey', 'Storey', 'Single,Double', '', 1, 1),
(2, 'beds', 'Beds', '3,4,5', '', 2, 1),
(3, 'landWidth', 'Land Width (m)', '10,10.5,11,11.5', '', 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `partner`
--

CREATE TABLE `partner` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `eTitle` text NOT NULL,
  `lnk` text NOT NULL,
  `img` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `ind` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `partner`
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
-- Cấu trúc bảng cho bảng `partner_detail`
--

CREATE TABLE `partner_detail` (
  `id` int(11) NOT NULL,
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
  `ind` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
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
  `ind` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
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
-- Cấu trúc bảng cho bảng `product_cate`
--

CREATE TABLE `product_cate` (
  `id` int(11) NOT NULL,
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
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_cate`
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
-- Cấu trúc bảng cho bảng `product_image`
--

CREATE TABLE `product_image` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `pId` int(11) NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_image`
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
-- Cấu trúc bảng cho bảng `qtext`
--

CREATE TABLE `qtext` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `e_title` text NOT NULL,
  `content` longtext NOT NULL,
  `e_content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `qtext`
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
(11, 'home_build', '', '<div class="col-md-4">\r\n<div class="ind-product-item">\r\n<div class="row">\r\n<div class="col-md-4"><img alt="" class="img-responsive" src="/file/ckfinder/userfiles/images/Chrysanthemum.jpg" style="border-radius: 50%;"  /></div>\r\n<div class="col-md-8">thong tin Free flashcards app for Windows - use it to learn any subject</div>\r\n</div>\r\n</div>\r\n</div>', ''),
(12, 'home_buy', '', '<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Let us help you buy.</strong><br />\r\nDo you need guidance when it comes to buying a home or investment property?&nbsp; Price guides, suburb guides, finance and legal, we can help you through the maze of information overload. </span></span></span>', ''),
(13, 'home_concierge', '', '<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Our property services extends a little further. Use our Concierge Services for Custom Design, Development,<br />\r\nKnockdown- Rebuild, Property Finance or Builder Liaising.</span></span></span>', ''),
(14, 'home_sell', '', '<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Why SELL with us?</strong><br />\r\nOur Vendors enjoy a highly skilled and boutique service from an experienced team who understand what it takes to deliver them the Premium Price. Ask us how we do this and why our progressive business structure allows them to save $1000&#39;s...</span></span></span>', ''),
(15, 'home_about', '', '<div class="col-md-9">\r\n<div class="title-head"><span>Về gia tộc lương y tâm tài</span>\r\n\r\n<p>thong tin Free flashcards app for Windows - use it to learn any subject</p>\r\n</div>\r\n</div>\r\n\r\n<div class="col-md-3"><img alt="" class="img-responsive" src="/file/ckfinder/userfiles/images/Chrysanthemum.jpg" /></div>\r\n', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sell`
--

CREATE TABLE `sell` (
  `id` int(11) NOT NULL,
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
  `ind` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sell`
--

INSERT INTO `sell` (`id`, `title`, `feature`, `price`, `storey`, `beds`, `landWidth`, `price_reduce`, `in_stock`, `condition`, `brand_id`, `detail`, `content`, `teach`, `video`, `meta_keyword`, `meta_description`, `manual`, `e_manual`, `promotion`, `e_promotion`, `e_title`, `e_feature`, `e_detail`, `e_content`, `e_teach`, `e_meta_keyword`, `e_meta_description`, `pd_option`, `lnk`, `e_lnk`, `pId`, `active`, `home`, `ind`) VALUES
(1, 'Lot 81 Wollert Street, Wollert - Fitzroy Jasper 20', '', 0, '', 0, 0, NULL, 0, 0, 0, '', '<a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1QXlsbEtHVEFIQXM">Download</a><br />\r\n<img alt="Lot 81 Wollert Street, Wollert - Fitzroy Jasper 20" src="/file/ckfinder/userfiles/images/Jasper%2020(1).png" style="float:left; height:1016px; width:600px" />', '', '', '', 'Lot 81 Wollert Street, Wollert - Fitzroy Jasper 20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 1),
(2, 'Lot 106 Oakdale Drive, Wyndham Vale - President Jackson 18', '', 0, '', 0, 0, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Jackson%2018.png" style="height:1200px; width:590px" />', '', '', 'Lot 106 Oakdale Drive, Wyndham Vale - President Jackson 18', 'Lot 106 Oakdale Drive, Wyndham Vale - President Jackson 18', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sell_cate`
--

CREATE TABLE `sell_cate` (
  `id` int(11) NOT NULL,
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
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sell_cate`
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
-- Cấu trúc bảng cho bảng `sell_image`
--

CREATE TABLE `sell_image` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `pId` int(11) NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sell_image`
--

INSERT INTO `sell_image` (`id`, `img`, `pId`, `ind`, `active`) VALUES
(1, '1495003069fitzroy.jpg', 1, 1, 1),
(2, '1495005100president.jpg', 2, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `session`
--

CREATE TABLE `session` (
  `session_id` varchar(255) NOT NULL,
  `last_visit` datetime NOT NULL DEFAULT '2017-01-03 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `session`
--

INSERT INTO `session` (`session_id`, `last_visit`) VALUES
('0t5hddeb3438eando09bk6uop1', '2017-01-03 15:13:38'),
('7fbha854m8kpq4mtlquhfe64h1', '2017-01-03 15:22:14'),
('pjg2af50coeiuig9uu970r8n66', '2017-01-03 15:13:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `e_title` text NOT NULL,
  `sum` text NOT NULL,
  `e_sum` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `lnk` text NOT NULL,
  `e_lnk` text NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `title`, `e_title`, `sum`, `e_sum`, `img`, `lnk`, `e_lnk`, `ind`, `active`) VALUES
(7, '', '', '', '', '1492592095banner2.jpg', '', '', 3, 1),
(9, '', '', '', '', '1492592379banner3.jpg', '', '', 2, 1),
(10, '', '', '', '', '1492832489banner3.jpg', '', '', 4, 1),
(11, '', '', '', '', '1492832519banner4.jpg', '', '', 5, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subscriber`
--

CREATE TABLE `subscriber` (
  `id` int(11) UNSIGNED NOT NULL,
  `hoten` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL,
  `dates` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tuvan`
--

CREATE TABLE `tuvan` (
  `id` int(11) NOT NULL,
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
  `ind` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tuvan`
--

INSERT INTO `tuvan` (`id`, `title`, `sum`, `content`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_content`, `e_meta_keyword`, `e_meta_description`, `pId`, `maps`, `city`, `district`, `img`, `active`, `home`, `ind`) VALUES
(1, 'Làm Thế Nào Để Có Một Làn Da Khỏe', 'Làm Thế Nào Để Có Một Làn Da Khỏe', '<h2 style="text-align:center"><span style="font-size:16px"><strong>Sau đây là 9 câu hỏi làm đẹp phổ biến và câu trả lời chính xác dành cho mỗi câu hỏi.</strong></span></h2>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); text-align: center;">&nbsp;</div>\r\n\r\n<div class="knc-content" style="margin: 0px 0px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: ">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="01-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/01-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Việc make up nói chung và sử dụng kem nền nói riêng chỉ gây mụn vì 2 lý do: một là sản phẩm bạn sử dụng gây tắc lỗ chân lông, hai là bạn không tẩy trang kỹ. Bởi vậy, khi bạn sử dụng sản phẩm an toàn và làm sạch da thật kỹ, da bạn hoàn toàn không cần &quot;nghỉ chơi&quot; với việc trang điểm để &quot;thở&quot; và trở nên đẹp hơn (thực chất, khái niệm &quot;thở&quot; không tồn tại với làn da).</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;">Khi mua bất cứ sản phẩm nào dùng để thoa lên da mặt, từ kem dưỡng đến kem nền, bạn hãy chắc chắn nó không gây tắc, bí lỗ chân lông (hãy tìm chữ &quot;noncomedogenic&quot; trên bao bì). Trong trường hợp da bạn bị mụn, hãy chọn kem nền có thành phần trị mụn như acid salicylic để có thể vừa che phủ lại vừa trị mụn cho da.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;">Việc tẩy trang thật kỹ cũng là chìa khóa để da không bị xấu đi khi trang điểm. Vào cuối ngày, hãy luôn nhớ làm sạch da với hai sản phẩm: dầu tẩy trang và sữa rửa mặt nhẹ dịu.&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;">Một khi bạn đã tuân thủ hai nguyên tắc kể trên, bạn sẽ thấy rằng thực sự không tồn tại khái niệm &quot;trang điểm nhiều làm da xấu đi&quot;.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="02-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/02-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Mụn đầu đen hình thành do bã nhờn tích tụ trong lỗ chân lông và bị ôxy hóa nên mới có màu đen. Cách trị mụn đầu đen hiệu quả nhất là sử dụng sản phẩm trị mụn có chứa benzoyl peroxide để diệt khuẩn và loại bỏ bã nhờn. Kèm theo đó, bạn cần tẩy da chết thường xuyên để ngăn chặn mụn đầu đen hình thành thêm.&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="03-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/03-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:&nbsp;</span>Khi mới tập tành make up, bạn không cần thiết phải sắm sửa ngay đủ bộ mỹ phẩm như các chuyên gia trang điểm chuyên nghiệp<span style="font-family:inherit; font-size:inherit; line-height:inherit">&nbsp;</span>mà chỉ cần những sản phẩm thiết yếu sau đây: kem nền (BB cream, phấn cushion hoặc tinted moisturizer, v.v...), phấn phủ không màu, một màu son tôn da (bạn có thể chọn sản phẩm môi và má 2 trong 1 để vừa làm son, vừa làm má hồng rất tiện), một cây eyeliner (dạng nước, gel hoặc chì), kẹp mi và một cây mascara. Sau này, khi đã sử dụng thành thạo những sản phẩm cơ bản trên, bạn có thể mua thêm những món đồ phụ trợ để make up chuyên nghiệp hơn, như sản phẩm tạo khối, tạo sáng, v.v...</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="04-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/04-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Đáng tiếc là không. Về cơ bản, lỗ chân lông không thể đóng, mở hay thu nhỏ lại được. Lỗ chân lông to hay nhỏ phụ thuộc vào gene của mỗi người và bạn không thể thay đổi kích cỡ của chúng. Tuy không thể thu nhỏ nhưng lỗ chân lông lại có thể bị giãn ra khi bị tắc nghẽn. Điều đó có nghĩa là lỗ chân lông càng sạch sẽ bao nhiêu, bạn sẽ càng cảm thấy chúng nhỏ bấy nhiêu và đó là lý do tại sao chúng ta nên làm sạch da thật kỹ. Cách làm sạch từng lỗ chân lông hiệu quả là rửa mặt bằng thao tác xoáy tròn tập trung vào từng vùng trên mặt.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="05-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/05-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Lâu nay, uống nhiều nước (ít nhất là 2,5 lít/ngày) vẫn được tin là một trong những cách hiệu quả nhất giúp cung cấp độ ẩm cho da, từ đó giúp da khỏe đẹp. Tuy nhiên, trên thực tế lại không có bất cứ nghiên cứu khoa học nào chứng minh rằng việc uống nhiều nước có thể giúp da đẹp hơn hay làm cơ thể thon gọn hơn. &quot;Lượng nước mà chúng ta uống vào không có tác dụng cung cấp độ ẩm cho da bởi làn da của chúng ta hoạt động như một tấm rào chắn vững chắc giúp ngăn cách môi trường bên trong và ngoài cơ thể. Chỉ trong trường hợp bạn bị thiếu nước một cách trầm trọng, làn da mới bị ảnh hưởng. Những vấn đề hay gặp với làn da khô sẽ không tự hết chỉ nhờ việc uống 8 cốc nước mỗi ngày mà cần đến những sản phẩm dưỡng da phù hợp&quot; - chuyên gia sức khỏe Andrew Carroll viết trên tờ New York Times cách đây không lâu. Ngoài ra, đúng là cơ thể chúng ta cần 2,5 lít nước/ngày để duy trì sự khỏe mạnh nhưng mỗi người không cần thiết phải uống đúng 2,5 lít nước bởi nước cũng có thể được bổ sung qua đường ăn, khi phần lớn các loại thức ăn đều có chứa một lượng nước nhất định.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="07-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/07-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Da mặt bạn sẽ khó thấm kem dưỡng, khó &quot;ăn&quot; kem nền khi tế bào chết bị ứ đọng trên da mà không được dọn dẹp. Việc bạn cần làm là tẩy da chết thật thường xuyên với tần suất từ 2 - 3 lần một tuần. Khi đó, da sẽ mỏng, mịn hơn hẳn và đóng vai trò như một lớp phông nền mịn mượt giúp các loại mỹ phẩm &quot;bám dính&quot; lên da một cách trơn tru, dễ dàng. Ngoài ra, việc dùng kem lót (primer) trước khi đánh nền cũng sẽ khiến lớp nền bám lên da chắc hơn và lâu trôi hơn hẳn so với bình thường.</div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="08-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/08-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Khi môi bạn bị thâm và lấn át hết màu son, bí quyết là hãy tán kem che khuyết điểm lên môi trước khi tô son. Ngoài ra, bạn hãy chọn loại son có kết cấu màu thật đặc (opaque) - thường là son lì, son nước (còn gọi là son kem hay liquid lipstick). Đặc điểm của những loại son này là khả năng lên màu rất mạnh, có thể che phủ hoàn toàn màu môi nguyên thủy của bạn. Bên cạnh đó, hãy thường xuyên tẩy da chết cho môi và thường xuyên thoa mật ong để cải thiện phần nào sắc tố môi.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="09-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/09-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n</div>\r\n</div>\r\n\r\n<div><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Tần suất gội đầu phụ thuộc vào mái tóc cũng như môi trường sống của riêng mỗi người. Trong trường hợp bạn sống ở nơi nhiều khói bụi, tần suất gội đầu nên là 1 - 2 ngày một lần. Với dầu gội nhẹ dịu có thành phần dưỡng tóc, bạn hoàn toàn có thể gội đầu hằng ngày mà không sợ tóc bị khô hay xấu đi. Khi tóc bạn thuộc dạng tóc khô hoặc bạn sống ở nơi có khí hậu trong lành, tần suất gội đầu có thể giãn xuống còn khoảng 2 - 3 ngày một lần.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: center;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><img alt="06-80eb9" src="http://kenh14cdn.com/thumb_w/600/d9baecf2c8/2015/09/08/06-80eb9.jpg" style="border:0px; box-sizing:border-box; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:480px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:800px" /></div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: left;"><span style="font-family:inherit; font-size:inherit; line-height:inherit">Câu trả lời:</span>&nbsp;Việc cắt tóc thường xuyên không hề tác động gì đến chân tóc, bởi vậy, có thể khẳng định rằng cắt tóc không hề khiến tóc mọc nhanh hơn. Trên thực tế, tóc bạn vẫn mọc với tốc độ bình thường và nếu bạn có cảm thấy tóc &quot;mọc nhanh hơn&quot; thì đó cũng chỉ là cảm giác chủ quan của bạn mà thôi. Mục đích thực sự của việc tỉa ngắn đuôi tóc thường xuyên là để ngăn ngừa đuôi tóc chẻ ngọn.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box; text-align: right;">Nguồn: Elly</div>\r\n</div>\r\n</div>\r\n</div>\r\n', 'Làm Thế Nào Để Có Một Làn Da Khỏe', 'Làm Thế Nào Để Có Một Làn Da Khỏe', '', '', '', '', '', 0, '', 0, 0, '148473223601-80eb9.jpg', 1, 0, 1),
(2, 'Da Sạch- Khỏe Là Tiền Đề Của Làn Da Không Mụn', 'Da Sạch- Khỏe Là Tiền Đề Của Làn Da Không Mụn', '<span style="font-size:14px"><strong>HANA BEAUTY - CHUYÊN MỸ PHẨM XÁCH TAY</strong></span><br />\r\n<span style="font-size:14px">Tết sắp đến gần bạn quan tâm đến việc DƯỠNG DA để da mịn màng mướt khoẻ hay là MAKEUP để mang đến hiệu ứng da đẹp 1 cách nhanh nhất ạ ?<br />\r\n-----&gt; Nghe có vẻ là 2 khái niệm riêng biệt nhưng thật ra thì cả hai lại liên quan đến nhau, vì da đẹp là tiền đề của lớp makeup đẹp<br />\r\nKhi da được chăm sóc đúng cách và dưỡng ẩm đủ thì da sẽ trở nên căng mướt. Và tất nhiên lớp makeup chỉ đẹp và tự nhiên nhất khi da thật sự đủ độ ẩm khoẻ và ít khuyết điểm khi đó chỉ cần một lớp#Cushion hoặc kem nền với độ che phủ mỏng nhẹ thì chắc chắn bạn đã đủ tươi tắn với vẻ ngoài tự nhiên của mình, tự tin trong buổi họp lớp ngồi 8 chuyện xưa cùng đám bạn cũ . Nguyên năm gặp để check in 1 lần&nbsp;</span><br />\r\n<span style="font-size:14px"><strong>TẢN MẠN CHUYỆN NĂM XƯA</strong></span><br />\r\n<span style="font-size:14px">Nhớ tầm này năm ngoái da mình vẫn trong tình trạng da sần sùi khô và sạm, thiệt sự là lo lắng cho cái Tết sắp đến gần và mình đã được biết đến loại mặt nạ #mybeautydiary này qua 1 chị beauty blogger : chị #banhbeophuphiem và rất nhiều feedback tốt đẹp từ các chị em đã dùng qua. Nó như 1 cuộc cách mạng mang lại hiểu quả nhanh ngoài sức mong đợi</span>\r\n<div style="text-align: center;"><img alt="" src="/file/ckfinder/userfiles/images/15894411_1637198409917755_474428940902961389_n.jpg" style="height:800px; width:600px" /></div>\r\n<span style="font-size:14px">---&gt; @uyết định dùng thử .kết quả là 1 tuần đắp 2 lần trong vòng 1 tháng da đã thay đổi 1 cách không thể ngờ được luôn đó&nbsp;<br />\r\nDa đủ độ ẩm nên mướt lắm - kiểu da pưng pưng ngậm nước í, còn khi makeup kiểu ăn phấn thôi rồi chứ không bị cakey ( da ra đằng da - phấn ra đằng phấn)&nbsp;<br />\r\nDa sáng hẳn ra - trong giới skincare ở nước ngoài người ta không có khái niệm về sản phẩm làm trắng thay vào đó là dùng những sản phẩm giúp da sáng khoẻ và đều màu trong đó có thể kể đến là serum dòng vitamin C. Nhưng với mình lúc đó mặt nạ vẫn là lựa chọn nhanh gọn để chạy cho kịp cái tết sắp đến gần ^^</span><br />\r\n<span style="font-size:14px"><strong>DA MỀM MỊN VÀ KHÔNG BỊ SẦN SÙI</strong></span><br />\r\n<span style="font-size:14px">Tóm lại : Đây là mặt nạ thần thánh cứu cánh mình sau những ngày da thật sự xuống cấp do nhiều nguyên nhân - stress trong công việc hay thức khuya , thậm chí sau vài ngày bỏ bê skincare.</span>\r\n\r\n<div style="text-align: center;"><span style="font-size:14px"><img alt="" src="/file/ckfinder/userfiles/images/15966309_1637198656584397_3931164285883289336_n.jpg" style="height:800px; width:600px" /></span></div>\r\n<span style="font-size:14px">( Chắc ai cũng hiểu cảm giác có những ngày chẳng muốn làm gì chỉ muốn được lăn ngay ra ngủ sau khi về tới nhà )&nbsp;<br />\r\nHãy nhớ giùm Hana đây là 1 bước dưỡng sau tất cả các bước skincare hoàn chỉnh của bạn - đừng bao giờ nghĩ rằng nó thần thánh đến mức giúp bạn rạng rỡ khi bước làm sạch da của bạn không đúng cách : vd : srm với độ PH quá cao, tẩy trang chưa sạch sau khi trang điểm hoặc dùng kem chống nắng.<br />\r\nCó rất nhiều bạn thắc mắc rằng DA MỤN có nên dùng hay không , bạn phải hiểu rằng da mụn cũng cần được dưỡng ẩm nhưng thay vào đó skincare của bạn phải thêm bước trị mụn, đắp mặt nạ kháng khuẩn song song với mặt nạ thiên về dòng dưỡng này và Hana không khuyên dùng cho những bạn đang trong tình trạng viêm da nhiều mụn ạ&nbsp;<br />\r\nDa sạch- khoẻ là tiền đề của làn da không mụn<br />\r\nMột lần đắp mặt nạ hiểu quả gấp 6 lần xài serum vì tinh chất cô đặc thấm đẫm trong miếng mặt nạ<br />\r\nVậy nên hãy bắt đầu làm đẹp ngay hôm nay để kịp xúng xính đón tết nha.</span>', 'Da sạch- khỏe là tiền đề của làn da không mụn', 'Da sạch- khỏe là tiền đề của làn da không mụn', '', '', '', '', '', 0, '', 0, 0, '1484733003tri-mun-da-kho.jpg', 1, 0, 2),
(3, 'Massage với những viên đá này để da đẹp &quot;không tì vết&quot; yên tâm đón Tết', 'Massage với những viên đá này để da đẹp &quot;không tì vết&quot; yên tâm đón Tết\r\n', '<p><span style="color:rgb(0, 0, 0); font-family:roboto-regular,serif; font-size:14px"><strong><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif">Chỉ với những nguyên liệu đơn giản, rẻ tiền bạn đã có thể tự làm mặt nạ chăm sóc da hiệu quả và an toàn.</span></span></strong></span><br />\r\n<span style="font-size:14px; text-align:justify">Khoa học đã chứng nhận rằng chúng ta <span style="color:#000000">nên&nbsp;</span></span><a href="http://bestie.vn/2016/09/nhung-dau-hieu-chung-to-ban-dang-rua-mat-sai-cach" style="font-size: 14px; text-align: justify; background-color: transparent; box-sizing: border-box; text-decoration: none; color: rgb(0, 51, 153) !important;"><span style="color:#000000">rửa mặt</span></a><span style="font-size:14px; text-align:justify"><span style="color:#000000">&nbsp;b</span>uổi sáng bằng những viên đá được làm từ nước các loại hoa quả thay cho nước lã. Những viên đá lạnh buốt này sẽ làm tăng tuần hoàn máu, trẻ hoá làn da, xóa đi những vết nhăn, ngăn chặn các dấu hiệu lão hóa thông thường và làm ửng hồng đôi má của bạn. Nó cũng giúp da sáng lên một cách tự nhiên hơn. Nên thực hiện 2 lần/tuần.</span></p>\r\n\r\n<p style="text-align: center;"><img alt="bestie cham soc da bang da vien " src="http://static1.bestie.vn/Mlog/ImageContent/201701/scrape-14646007708928-pimtha-hot-girl-thai-lan-6-6405-1464600623-20170107152308.jpg" style="border:0px; box-sizing:border-box; height:432px; vertical-align:middle; width:500px" /></p>\r\n\r\n<p><span style="font-size:14px">Nếu bạn phải vội ra khỏi nhà trong tình trạng mệt mỏi, kém tươi thì đây cũng là cách nhanh nhất khiến da mặt bạn trông mượt mà, mịn màng hơn và tươi tắn hơn.<br />\r\nBạn có thể kết hợp giữa việc làm đá với các loại nguyên liệu<span style="color:#000000">,&nbsp;</span><a href="http://bestie.vn/2016/11/nhung-my-pham-cac-nang-nen-so-huu-de-co-guong-mat-makeup-ma-nhu-khong" style="box-sizing: border-box; background-color: transparent; color: rgb(0, 51, 153) !important; text-decoration: none;"><span style="color:#000000">mỹ phẩm từ tự nhiên</span></a><span style="color:#000000">&nbsp;</span>như các loại lá hoặc quả khác nhau để có một chế độ chăm sóc hoàn hảo cho làn da. Tuy nhiên, nước lạnh từ vòi không nên dùng để làm đá rửa mặt. Sẽ tốt hơn nhiều nếu làm đá từ nước đun sôi hay nước khoáng không ga.</span><br />\r\n&nbsp;</p>\r\n<span style="font-size:14px"><strong>1.&nbsp;<span style="font-family:arial,helvetica,sans-serif"><span style="color:rgb(0, 0, 0)">Làm trắng da với đá viên nước cơm dùng cho da thường</span></span></strong></span>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 1" src="http://static1.bestie.vn/Mlog/ImageContent/201701/030-20170107145736.JPG" style="border:0px; box-sizing:border-box; height:563px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p><span style="font-size:14px">Dùng nước cơm để làm đá, ngoài tác dụng dưỡng da, nó còn có tác<span style="color:#000000"> dụng&nbsp;</span><a href="http://bestie.vn/2016/12/da-trang-bat-tong-voi-nhung-phuong-phap-tam-trang-an-toan-tai-nha" style="box-sizing: border-box; background-color: transparent; color: rgb(0, 51, 153) !important; text-decoration: none;"><span style="color:#000000">làm trắng da</span></a><span style="color:#000000">. Nư</span>ớc cơm được chắt ra khi nấu cơm, để nguội rồi cho vào ngăn đá. Loại đá này nên giữ trong ngăn đá không quá 3 ngày.</span></p>\r\n<strong>​​​</strong><span style="font-size:14px"><strong>​​2.&nbsp;</strong></span><strong style="font-size:14px; text-align:justify"><span style="line-height:20.8px">Cung cấp độ ẩm cho da khô bằng đá viên hoa quả</span></strong>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 2" src="http://static1.bestie.vn/Mlog/ImageContent/201701/fruit-ice-cubes-20170107150123.jpg" style="border:0px; box-sizing:border-box; height:325px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p><span style="font-size:14px">Da khô thích hợp với những loại đá được làm từ lá, hoa, cũng như quả. Những quả sơn tra đỏ thắm, những cọng bồ công anh là thứ nguyên liệu tuyệt diệu cho loại da này. Có thể làm đá từ nước quả, tốt nhất là những loại quả đỏ. Nghiền nát 3 thìa quả và khuấy đều trong 2 cốc nước sôi để nguội, sau đấy lọc lấy nước. Cho vào ngăn đá và dùng trong vòng 5 ngày.</span><br />\r\n<br />\r\n<strong>3.&nbsp;</strong><span style="font-size:14px"><strong>Se khít lỗ chân lông bằng đá viên nước hoa hồng</strong></span></p>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 3" src="http://static1.bestie.vn/Mlog/ImageContent/201701/our-white-rose-goji-blend-is-the-perfect-tea-to-drink-cold-try-our-iced-tea-recipe-today-love-tea-i-20170107150332.jpg" style="border:0px; box-sizing:border-box; height:500px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p><span style="font-size:14px">Bạn có thể biến đổi một chú<span style="color:#000000">t cho&nbsp;</span><a href="http://bestie.vn/2016/11/3-loi-ich-that-bat-ngo-tu-glycerin-nuoc-hoa-hong-va-nuoc-cot-chanh" style="box-sizing: border-box; background-color: transparent; color: rgb(0, 51, 153) !important; text-decoration: none;"><span style="color:#000000">nước hoa hồng</span></a><span style="color:#000000">&nbsp;c</span>ủa mình bằng cách làm lạnh trong các khay đá. Những viên đá nước hoa hồng sẽ giúp cho da mặt được mềm mại và tươi mới hơn.<br />\r\n<br />\r\n<strong>4.&nbsp;</strong></span><span style="font-size:14px"><strong>Giải nhiệt, làm dịu làn da cháy nắng bằng đá viên nha đam</strong></span></p>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 4" src="http://static1.bestie.vn/Mlog/ImageContent/201701/aloe-vera-ice-cubes-final2-20170107150523.jpg" style="border:0px; box-sizing:border-box; height:341px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p><span style="font-size:14px">Với hàm lượng nước cao, lá nha đam với cấu tạo đặc trưng có lớp gel trong suốt, mềm mịn và mát lành tinh khiết nên có công dụng tuyệt với với việc giải nhiệt và làm dịu làn da khi cháy nắng. Bạn chỉ cần cắt bỏ hai bên gai dọc thân lá, tách lấy phần gel bên trong, nghiền nát cùng với nước và dựng trong khay đá để lạnh. Sau khi ra ngoài dưới trời nắng nóng, hãy dùng một viên lướt nhẹ lên da, khi đó mọi tác động của nắng nóng và tia UV đều được giải quyết hết</span>.<br />\r\n<br />\r\n<strong>5.&nbsp;</strong><span style="font-size:14px"><strong>Làm sạch và sáng da với đá viên dưa leo,&nbsp;<span style="line-height:20.8px">mật ong và chanh</span></strong></span></p>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 5" src="http://static1.bestie.vn/Mlog/ImageContent/201701/cucumber-lemon-honey-ice-cubes-20170107150630.jpg" style="border:0px; box-sizing:border-box; height:700px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p><span style="font-size:14px">Dưa leo chứa hàm lượng nước lên đến 90% giúp da luôn có đủ độ ẩm cần thiết, nên một khi kết hợp với các thành phần dưỡng ẩm của mật ong và khả năng kháng khuẩn chống viên của chanh tươi thì hiệu quả chăm sóc và làm sạch da sẽ trọn vẹn và sạch sâu hơn hẳn. Cách đơn giản nhất là bạn xay nhuyễn dưa leo cùng một thìa cafe mật ong rồi thêm vài giọt chanh tươi đựng trong khay đá và để lạnh. Mỗi khi sử dụng lấy một viên massage nhẹ nhàng trên da và để nguyên hỗn hợp trên da khoảng 5-10 phút để dưỡng chất thẩm thấu sâu trên da bạn.<br />\r\n<br />\r\n<strong>6.&nbsp;</strong></span><span style="font-size:14px"><strong>Trị mụn và vết thâm với đá viên Matcha</strong></span></p>\r\n\r\n<div style="text-align: center;"><img alt="bestie cham soc da bang da vien 6" src="http://static1.bestie.vn/Mlog/ImageContent/201701/making-veggie-ice-cubes-20170107150806.jpg" style="border:0px; box-sizing:border-box; height:375px; vertical-align:middle; width:500px" /></div>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Trà xanh có tác dụng làm mát tại chỗ, trị mụn và chống lão hóa. Rất nhiều bạn nữ ưa thích chọn trà xanh để làm mặt nạ dưỡng da. Thay vì trộn với các nguyên liệu khác đắp mặt, bạn có thể pha bột trà và làm đông để tăng hiệu quả dưỡng da hơn nữa.<br />\r\nBạn hòa bột trà xanh với nước khoáng cho thật tan. Sau đó lọc qua rây để lấy phần nước trong. Dùng nước này cho vào khay đá và để đông. Hàng ngày dùng nó để rửa mặt sáng, tối bạn sẽ thấy da mặt trắng mịn, sạch mụn và đánh bay vết thâm đen.</span></p>\r\n\r\n<p><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif"><strong><span style="color:rgb(0, 0, 0)">Cách chăm sóc da bằng đá viên</span></strong></span></span></p>\r\n\r\n<ul>\r\n	<li style="text-align: justify;"><span style="font-size:14px">Bước 1: Rửa mặt bằng nước ấm rồi dùng khăn mềm thấm khô da, lưu ý không nên dùng khăn mặt sần sùi và khô ráp tránh gây tổn hại da và tránh mụn lây lan nhiều hơn.</span></li>\r\n	<li style="text-align: justify;"><span style="font-size:14px">Bước 2: Cho 1 ít đá bào hoặc đá viên vào khăn khô, túm bốn góc thành 1 khối vuông.</span></li>\r\n	<li style="text-align: justify;"><span style="font-size:14px">Bước 3: Chườm đá trực tiếp lên vùng da bị mụn, để yên trong vài phút, sau đó chuyển sang khu vực khác. Đợi 10 phút sau đó thực hiện lại 1 lần nữa.</span></li>\r\n</ul>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">Bạn có thể thực hiện cách này đều đặn mỗi ngày trước khi đi ngủ hoặc sáng thức dậy, chỉ sau 1 tuần sẽ cảm nhận được tác dụng thực sự.<br />\r\n<span style="line-height:20.8px">&quot;Mọi thứ đều nở ra khi nóng lên và co lại khi lạnh đi&quot;. Đừng ngại sử dụng viên đá lạnh thoa lên mặt, kết hợp với các động tác massage mặt mỗi ngày, điều này sẽ giúp làm se khít lỗ chân lông trên da mặt, đồng thời giảm bớt việc các chất bã nhờn, giảm lượng bụi và vi khuẩn thâm nhập lỗ chân lông, giúp bạn làm sạch da mặt dễ dàng hơn mà không phải kỳ công chăm sóc.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Massage với những viên đá này để da đẹp &quot;không tì vết&quot; yên tâm đón Tết', 'Massage với những viên đá này để da đẹp &quot;không tì vết&quot; yên tâm đón Tết', '', '', '', '', '', 0, '', 0, 0, '148488481820-01-2017 11-00-04 SA.png', 1, 1, 3),
(4, 'Bí quyết dưỡng da trắng hồng dành cho bạn gái', 'Bí quyết dưỡng da trắng hồng dành cho bạn gái ', '<div style="text-align: center;"><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif"><strong>Bí quyết dưỡng da trắng hồng dành cho bạn gái</strong></span></span></div>\r\n\r\n<div style="text-align: justify;"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Làm sao để có được làn da trắng mịn hồng hào luôn là vấn đề được các bạn nữ quan tậm. Bạn đã biết cách dưỡng da trắng hồng chưa? Những bí quyết dưới đây sẽ giúp bạn!<br />\r\nChăm sóc da là một việc không dễ dàng, đòi hỏi bạn phải cẩn thận và kiên trì. Trên thực tế có rất nhiều biện pháp để giúp bạn sở hữu được nước da trắng hồng, mịn màng. Chú ý đến những vấn đề sau, bạn sẽ không còn lo lắng về làn da của mình nữa.<br />\r\nDưỡng da trắng hồng bằng cách làm sạch da mặt&nbsp;</span></span><br />\r\n<img alt="Dưỡng da trắng hồng" class="aligncenter wp-image-24288" src="http://www.phunu.tuvan/wp-content/uploads/2016/06/D%C6%B0%E1%BB%A1ng-da-tr%E1%BA%AFng-h%E1%BB%93ng-2-433x290.jpg" style="background-color:rgb(255, 255, 255); border:0px; color:rgb(34, 34, 34); display:block; font-family:noto serif,serif; font-size:17.6px; height:auto; margin-bottom:24px; margin-left:auto; margin-right:auto; max-width:100%; text-align:center; width:473px" /><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Điều đầu tiên trong quy trình dưỡng da trắng hồng đó là bạn phải luôn giữ cho da mặt sạch sẽ. Bạn phải rửa sạch tay, cho một lượng sữa rửa mặt vừa đủ vào lòng bàn tay, tạo bọt thật kỹ và xoa đều lên mặt. Chuyển động tròn, massage da mặt nhẹ nhàng khoảng 30 giây rồi dùng nước ấm rửa sạch mặt. Không nên dùng nước quá nóng vì như thế có thể sẽ làm tổn thương da mặt của bạn.<br />\r\nThường xuyên tẩy tế bào chết cho da<br />\r\nĐây là thao tác quan trọng để dưỡng da trắng hồng. Bạn có thể trộn đều đường và nước với tỉ lệ 2:1 để làm thành hỗn hợp tẩy tế bào chết cho da đơn giản tại nhà. Thoa đều lên ba phần của khuôn mặt: vùng trán và hai bên má. Nhẹ nhàng massage theo hình tròn khoảng 1 phút rồi rửa mặt với nước ấm.</span></span><br />\r\n<img alt="Dưỡng da trắng hồng" class="aligncenter wp-image-24289" src="http://www.phunu.tuvan/wp-content/uploads/2016/06/D%C6%B0%E1%BB%A1ng-da-tr%E1%BA%AFng-h%E1%BB%93ng-3-421x290.jpg" style="background-color:rgb(255, 255, 255); border:0px; color:rgb(34, 34, 34); display:block; font-family:noto serif,serif; font-size:17.6px; height:auto; margin-bottom:24px; margin-left:auto; margin-right:auto; max-width:100%; text-align:center; width:449px" /><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif"><strong>Dưỡng da trắng hồng bằng cách đắp mặt nạ dưỡng da</strong></span></span><br />\r\n<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Công đoạn không thể thiếu để giúp bạn dưỡng da trắng hồng đó chính là thường xuyên đắp mặt nạ cho da.<br />\r\nBạn có thể dùng các loại nguyên liệu có sẵn ngay tại nhà để chăm sóc cho da như:<br />\r\n<strong><em>&ndash; Cà chua: </em></strong>Vitamin C và các loại dưỡng chất có trong cà chua sẽ giúp da bạn trắng mịn tự nhiên. Bạn có thể cắt cà chua thành nhiều lát mỏng rồi đắp lên mặt trong khoảng 20 phút, sau đó rửa mặt sạch bằng nước lạnh. Áp dụng cách này một tuần từ 2-3 lần, bạn sẽ sớm có được làn da trắng hồng.<br />\r\nBạn cũng có thể dùng nước ép cà chua trộn với vài giọt nước cốt chanh rồi xoa lên mặt trong vòng 15 phút. Thực hiện khoảng 1 tháng bạn sẽ thấy tác dụng diệu kỳ của cà chua đối với làn da của bạn.</span></span><br />\r\n<img alt="Dưỡng da trắng hồng" class="aligncenter wp-image-24290" src="http://www.phunu.tuvan/wp-content/uploads/2016/06/D%C6%B0%E1%BB%A1ng-da-tr%E1%BA%AFng-h%E1%BB%93ng-4-435x290.jpg" style="background-color:rgb(255, 255, 255); border:0px; color:rgb(34, 34, 34); display:block; font-family:noto serif,serif; font-size:17.6px; height:auto; margin-bottom:24px; margin-left:auto; margin-right:auto; max-width:100%; text-align:center; width:473px" /><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><em>&ndash;</em><strong><em><em> </em>Dưỡng da trắng hồng với dưa chuột</em></strong>: Dưa chuột là loại thực phẩm quen thuộc với các gia đình. Các axit tartaric và axit amin có trong dựa chuột có hiệu quả rất tốt để dưỡng trắng da. Dùng vài giọt nước cốt chanh trộn đều với nước ép dưa chuột rồi xoa lên mặt. Massage nhẹ nhàng kết hợp thư giãn khoảng 20 phút rồi rửa sạch mặt. Với cách làm này, làn da bạn sẽ mềm mịn, trắng hồng trông thấy. Thực hiện 2-3 lần trong tuần để thu được kết quả tốt nhất.<br />\r\n<em><strong>&ndash; Khoai tây:</strong></em> Một loại dưỡng chất từ thiên nhiên giúp dưỡng da trắng hồng không thể bỏ qua đó là khoai tây. Bạn chỉ cần hấp chín khoai tây sau đó nghiền nát và trộn đều với lượng sữa tươi sao cho tạo thành một hỗn hợp sền sệt. Thoa đều hỗn hợp này lên mặt, đợi trong khoảng 30 phút rồi rửa lại bằng nước ấm. Mỗi tuần thực hiện 2 lần, làn da của bạn sẽ trắng hồng rạng rỡ.</span></span><br />\r\n<br />\r\n<span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif"><strong>Thu nhỏ lỗ chân lông</strong></span></span><br />\r\n<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Đây chính là hâu cuối cùng để bạn sở hữu được làn da trắng hồng, mịn màng. Luân phiên dùng nước ấm, lạnh để rửa mặt và cuối cùng là nước lạnh. Hãy tạt nước lên mặt thay vì rửa bằng tay. Dùng một viên đá nhỏ xoa nhẹ lên mặt để giúp thu nhỏ lỗ chân lông. Dùng khăn mềm lau khô và thoa kem dưỡng ẩm cho da.<br />\r\nVới những khâu chăm sóc như trên, tin chắc rằng bạn sẽ dưỡng da trắng hồng nhanh chóng và hiệu quả. Hãy nhớ che chắn cho da mỗi khi ra ngoài. Chúc các bạn may mắn!</span></span></div>\r\n\r\n<div style="text-align: justify;">&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n', 'Bí quyết dưỡng da trắng hồng dành cho bạn gái', 'Bí quyết dưỡng da trắng hồng dành cho bạn gái', '', '', '', '', '', 0, '', 0, 0, '14848866433-bí-quyết-dưỡng-trắng-không-phải-ai-cũng-biết.jpg', 1, 0, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vs_counter`
--

CREATE TABLE `vs_counter` (
  `hit_counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `vs_counter`
--

INSERT INTO `vs_counter` (`hit_counter`) VALUES
(514);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vs_detail`
--

CREATE TABLE `vs_detail` (
  `id` int(11) NOT NULL,
  `vs_ip` varchar(255) NOT NULL,
  `vs_city` varchar(255) DEFAULT NULL,
  `vs_browser` varchar(255) NOT NULL,
  `vs_os` varchar(255) NOT NULL,
  `vs_id` varchar(255) NOT NULL,
  `vs_flag` tinyint(1) NOT NULL,
  `dates` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `vs_detail`
--

INSERT INTO `vs_detail` (`id`, `vs_ip`, `vs_city`, `vs_browser`, `vs_os`, `vs_id`, `vs_flag`, `dates`) VALUES
(509, 'unknown', 'unknown', 'Chrome', 'Windows 7', '4pucvut646irpnbdehps4jah15', 0, '2017-05-23 14:17:06'),
(510, 'unknown', 'unknown', 'Chrome', 'Windows 7', 'qggg4pe9svfp7r4ef8lmelp064', 0, '2017-05-23 21:50:29'),
(511, 'unknown', 'unknown', 'Chrome', 'Windows 7', '1p90b37toinll0i7th6gbnb4l2', 1, '2017-05-23 23:44:26');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Chỉ mục cho bảng `ad_user`
--
ALTER TABLE `ad_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `baithuocquy`
--
ALTER TABLE `baithuocquy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Chỉ mục cho bảng `basic_config`
--
ALTER TABLE `basic_config`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Chỉ mục cho bảng `buy_cate`
--
ALTER TABLE `buy_cate`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `buy_image`
--
ALTER TABLE `buy_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_id` (`cart_id`);

--
-- Chỉ mục cho bảng `concierge`
--
ALTER TABLE `concierge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `duoclieu`
--
ALTER TABLE `duoclieu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Chỉ mục cho bảng `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `partner_detail`
--
ALTER TABLE `partner_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Chỉ mục cho bảng `product_cate`
--
ALTER TABLE `product_cate`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Chỉ mục cho bảng `qtext`
--
ALTER TABLE `qtext`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Chỉ mục cho bảng `sell_cate`
--
ALTER TABLE `sell_cate`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sell_image`
--
ALTER TABLE `sell_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Chỉ mục cho bảng `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`session_id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tuvan`
--
ALTER TABLE `tuvan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Chỉ mục cho bảng `vs_detail`
--
ALTER TABLE `vs_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `ad_user`
--
ALTER TABLE `ad_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `baithuocquy`
--
ALTER TABLE `baithuocquy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `basic_config`
--
ALTER TABLE `basic_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `buy`
--
ALTER TABLE `buy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;
--
-- AUTO_INCREMENT cho bảng `buy_cate`
--
ALTER TABLE `buy_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT cho bảng `buy_image`
--
ALTER TABLE `buy_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `cart_detail`
--
ALTER TABLE `cart_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `concierge`
--
ALTER TABLE `concierge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT cho bảng `duoclieu`
--
ALTER TABLE `duoclieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT cho bảng `partner_detail`
--
ALTER TABLE `partner_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
--
-- AUTO_INCREMENT cho bảng `product_cate`
--
ALTER TABLE `product_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT cho bảng `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;
--
-- AUTO_INCREMENT cho bảng `qtext`
--
ALTER TABLE `qtext`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT cho bảng `sell`
--
ALTER TABLE `sell`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `sell_cate`
--
ALTER TABLE `sell_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT cho bảng `sell_image`
--
ALTER TABLE `sell_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT cho bảng `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `tuvan`
--
ALTER TABLE `tuvan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `vs_detail`
--
ALTER TABLE `vs_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `buy_image`
--
ALTER TABLE `buy_image`
  ADD CONSTRAINT `buy_image_ibfk_1` FOREIGN KEY (`pId`) REFERENCES `buy` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `product_image_ibfk_1` FOREIGN KEY (`pId`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sell_image`
--
ALTER TABLE `sell_image`
  ADD CONSTRAINT `sell_image_ibfk_1` FOREIGN KEY (`pId`) REFERENCES `sell` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
