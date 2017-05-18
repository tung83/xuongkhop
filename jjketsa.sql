-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2017 at 02:29 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hana2`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
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
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `sum`, `content`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_content`, `e_meta_keyword`, `e_meta_description`, `pId`, `img`, `active`, `home`, `ind`) VALUES
(1, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, ea eum exerci utroque liberavisse, vis in solet verear numquam, eam an soluta detracto. Eius aliquip nominati usu no, dico doctus convenire ut eam. Pro ad nisl esse iusto, case paulo tacimates pro ei. In viris habemus blandit per. Usu officiis petentium argumentum at, novum dicit consequuntur pro ei.', '<p>Lorem ipsum dolor sit amet, ea eum exerci utroque liberavisse, vis in solet verear numquam, eam an soluta detracto. Eius aliquip nominati usu no, dico doctus convenire ut eam. Pro ad nisl esse iusto, case paulo tacimates pro ei. In viris habemus blandit per. Usu officiis petentium argumentum at, novum dicit consequuntur pro ei.<br />\r\n<br />\r\nNonumy altera antiopam vim no, no sed meis pericula. No aperiri oporteat mei, sea et movet nobis utroque. Habemus electram te nec, id ubique semper discere eos, aliquid voluptaria ad per. Quo accusam luptatum apeirian an. Sensibus vituperata est cu. Ad cum adhuc appareat, eam no nemore tincidunt, ius oporteat torquatos posidonium et.<br />\r\n<br />\r\nEx eum nusquam iudicabit reformidans, essent delenit eu eos. His alia feugait voluptatum ei, an vidisse aperiri legimus qui. Lorem saepe eripuit quo in, id vidisse democritum vituperata has. Ea tation nominati suavitate sea, error constituam ad nec, ea integre luptatum erroribus has. Quem libris his et, menandri sapientem sed ei, vix possit voluptua rationibus eu. At pro civibus voluptua, quod illud aliquam vel te, eu vel mediocrem referrentur. Vocibus accommodare pri in, ea sed noluisse imperdiet.<br />\r\n<br />\r\nIus impetus nostrum adipisci eu, et indoctum posidonium pri, mei denique disputationi no. Sed an elitr omnes. An impedit fabellas cum, vel eu persius mentitum pericula. Rationibus incorrupte pro cu, cu nec minim ridens intellegebat. Vix ne ullum dolorem volumus, purto quaestio deterruisset sit ex.<br />\r\n<br />\r\nEius velit at ius, id nobis ponderum recusabo usu. Ex praesent accusamus consequat per, torquatos adolescens qui no, nam omnes repudiare constituto ne. Ut vim viderer discere pertinax, stet mucius probatus mea te. Vim nulla dicunt euripidis et.</p>\r\n', '34234', '34234324', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '<p>Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.</p>\r\n\r\n<p>Chồng làm giám đốc một công ty lớn trong ngành truyền thông, gia đình có đến 2 người giúp việc, chị Thu ở Núi Trúc, Hà Nội, vẫn giữ thói quen tự nấu nướng cho cả gia đình. Chồng cùng 2 cậu con trai của chị cũng chỉ thích ăn những món do nội tướng chế biến.</p>\r\n\r\n<p>&quot;Nhiều món ăn tuy đơn giản nhưng vẫn cần bí quyết chế biến riêng nên người khác nấu không hợp khẩu vị khiến chồng con tôi không ưng. Hai cô giúp việc chỉ phải dọn dẹp với giặt giũ, còn đi chợ hay nấu nướng thì tôi tự thu xếp công việc và thời gian để làm&quot;, chị Thu nói.</p>\r\n\r\n<p>Không ít lần chị Thu &quot;mất điểm&quot; vì công việc quá lu bu. Chị kể, đặt nồi cá kho lên bếp định một tiếng rưỡi tiếng xuống tắt lửa là vừa, nhưng mải quyết toán doanh thu cuối tháng của công ty nên chị quên mất. Ngửi thấy mùi khét, chị chạy xuống bếp thì nồi cá đã sắp thành than.</p>\r\n\r\n<p>Chia sẻ với bạn, chị Thu được mách về loại bếp điện từ hồng ngoại - kết hợp tính năng điện từ với hồng ngoại, có hẹn giờ nên tránh được tối đa những sơ suất tương tự &quot;vụ nồi cá&quot;. Ngoài ra, dùng loại bếp này, thời gian nấu nhanh, nấu được với tất cả các loại nồi chứ không bị bó hẹp như bếp từ. Cân nhắc mãi, chị Thu quyết định mua một chiếc dù mức giá khá cao, 45 triệu đồng cho loại 4 bếp.</p>\r\n\r\n<p>&quot;Chi phí ban đầu hơi cao nhưng tiết kiệm được thời gian nấu, tính ra chưa đầy 30 phút là xong bữa tối. Con cái còn nhỏ, ở nhà cả ngày với người giúp việc, mà gần đây xảy ra nhiều vụ nổ gas nên tôi càng lo, quyết tâm đầu tư bếp từ hồng ngoại để đảm bảo an toàn cho cả nhà&quot;, chị Thu tâm sự. Ngoài ra, mặt bếp sáng bóng, hợp với không gian căn bếp sang trọng mà vợ chồng chị đã cất công thiết kế, khiến chị Thu không tiếc khoản tiền gần 50 triệu đồng đã bỏ ra để mua.</p>\r\n\r\n<p>Chị Tiến ở Mỹ Đình, Hà Nội, phu nhân giám đốc chi nhánh của công ty dược có tiếng, cũng chọn bếp điện từ hồng ngoại cho gian bếp nhà mình. Chị lý giải, ngoài lý do an toàn, hình thức bắt mắt và nấu nướng nhanh, bếp có giá trị sử dụng cao, giảm được chi phí hằng tháng so với dùng các loại bếp thông thường.</p>\r\n\r\n<p>Theo chị, nếu dùng bếp gas, trung bình mỗi tháng gia đình chị hết khoảng 250.000 đồng. Từ khi chuyển sang dùng bếp từ hồng ngoại, cắt giảm được chi phí gas, chị tính toán thấy số tiền điện chỉ tăng thêm từ 120.000 đồng đến 150.000 đồng so với trước. Định kỳ hằng năm, chị không phải thay van gas, dây nối..., tuổi thọ của loại bếp này cũng gấp 2-3 lần so với bếp gas. Chưa kể, do có nhiều chức năng tự động như tự ngắt khi gặp vật thể lạ hoặc người dùng quên tắt... nên thiết bị nhà bếp này khá an toàn.</p>\r\n\r\n<p>&quot;Tôi thấy giá khá cao nhưng &#39;đắt xắt ra miếng&#39;, đầu tư lớn ban đầu mà chi phí dùng về sau rẻ hơn khá nhiều nên tính về lâu dài thì tiết kiệm hơn. Một điểm nữa tôi rất thích là trời nóng vẫn có thể bật quạt hướng thẳng vào vị trí đứng nấu mà không sợ bị tản nhiệt như nấu bằng bếp gas&quot;, chị Tiến giải thích.</p>\r\n\r\n<p>Xuất hiện chưa lâu và có mức giá khá cao song bếp điện từ hồng ngoại đã được khá nhiều bà nội trợ đầu tư chọn lựa. Giá bếp dao động từ 20 đến trên 40 triệu đồng mỗi chiếc, tùy vào xuất xứ, vật liệu và số lượng mặt bếp. Ông Phạm Đức Tuân, Giám đốc kinh doanh ngành hàng bếp của Kangaroo, một những doanh nghiệp vừa tung ra dòng sản phẩm bếp điện từ hồng ngoại cao cấp cho biết, chỉ trong vòng 2 tháng, số lượng bán ra đã hơn 5.000 chiếc, trong đó, doanh số tháng sau cao hơn tháng trước 30%.</p>\r\n\r\n<p>Trao đổi với&nbsp;<em>VnExpress.net</em>, ông cho biết, so với bếp gas, bếp điện từ hồng ngoại Kangaroo có hiệu suất hấp thụ nhiệt cao đến 90%, trong khi bếp gas đạt 55%, bếp điện thông thường đạt khoảng 65%. Theo đó, nếu chuyển từ bếp gas sang bếp điện từ hồng ngoại, người tiêu dùng tiết kiệm được đến 40% chi phí nhiên liệu cho việc đun nấu, thời gian nấu nướng cũng vì thế mà nhanh gấp 2-3 lần.</p>\r\n\r\n<p>Hai bộ phận quan trọng nhất của bếp là mặt kính và bộ gia nhiệt đều được nhập khẩu từ các hãng danh tiếng của Đức là Schott và Ego, đảm bảo độ bền và hiệu suất ra nhiệt tối đa. Ngoài ra với độ dày 4 mm, bếp có khả năng chịu lực và chịu nhiệt lên đến 800 độ C. Nhiệt độ được truyền thẳng đứng đến đáy nồi, nhiệt năng không bị thất thoát ra không khí.</p>\r\n\r\n<p>Tuy nhiên, vị chuyên gia khẳng định, dù sử dụng bất kỳ loại bếp nào, người nội trợ cũng nên vệ sinh, bảo trì thiết bị thường xuyên, giữ không khí trong phòng bếp lưu thông, thoáng mát... để đảm bảo chất lượng sản phẩm.</p>\r\n', '', '', 0, '1489408962Building-PNG.png', 1, 1, 1),
(2, 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, ea eum exerci utroque liberavisse, vis in solet verear numquam, eam an soluta detracto. Eius aliquip nominati usu no, dico doctus convenire ut eam. Pro ad nisl esse iusto, case paulo tacimates pro ei. In viris habemus blandit per. Usu officiis petentium argumentum at, novum dicit consequuntur pro ei.', '<p>Lorem ipsum dolor sit amet, ea eum exerci utroque liberavisse, vis in solet verear numquam, eam an soluta detracto. Eius aliquip nominati usu no, dico doctus convenire ut eam. Pro ad nisl esse iusto, case paulo tacimates pro ei. In viris habemus blandit per. Usu officiis petentium argumentum at, novum dicit consequuntur pro ei.<br />\r\n<br />\r\nNonumy altera antiopam vim no, no sed meis pericula. No aperiri oporteat mei, sea et movet nobis utroque. Habemus electram te nec, id ubique semper discere eos, aliquid voluptaria ad per. Quo accusam luptatum apeirian an. Sensibus vituperata est cu. Ad cum adhuc appareat, eam no nemore tincidunt, ius oporteat torquatos posidonium et.<br />\r\n<br />\r\nEx eum nusquam iudicabit reformidans, essent delenit eu eos. His alia feugait voluptatum ei, an vidisse aperiri legimus qui. Lorem saepe eripuit quo in, id vidisse democritum vituperata has. Ea tation nominati suavitate sea, error constituam ad nec, ea integre luptatum erroribus has. Quem libris his et, menandri sapientem sed ei, vix possit voluptua rationibus eu. At pro civibus voluptua, quod illud aliquam vel te, eu vel mediocrem referrentur. Vocibus accommodare pri in, ea sed noluisse imperdiet.<br />\r\n<br />\r\nIus impetus nostrum adipisci eu, et indoctum posidonium pri, mei denique disputationi no. Sed an elitr omnes. An impedit fabellas cum, vel eu persius mentitum pericula. Rationibus incorrupte pro cu, cu nec minim ridens intellegebat. Vix ne ullum dolorem volumus, purto quaestio deterruisset sit ex.<br />\r\n<br />\r\nEius velit at ius, id nobis ponderum recusabo usu. Ex praesent accusamus consequat per, torquatos adolescens qui no, nam omnes repudiare constituto ne. Ut vim viderer discere pertinax, stet mucius probatus mea te. Vim nulla dicunt euripidis et.</p>\r\n', '23232', '232323', 'Sự lên ngôi của bếp từ trong căn bếp Việt', 'Không chỉ tuyệt vời về hiệu quả sử dụng, bếp từ còn rất được...', '<p><strong>Vì&nbsp;sao bếp gas bị thất thế?</strong></p>\r\n\r\n<p>Còn nhớ vụ nổ gas cách đây không lâu tại phố Tạ Quang Bửu khiến hai cháu bé bị tử vong rất thương tâm, bố và mẹ bị thương nặng. Chính vì lẽ đó mà không ít người e dè khi lựa chọn bếp gas để sử dụng.</p>\r\n\r\n<p>Anh Hoàng Vũ Linh (Đống Đa &ndash; Hà Nội) cho hay: &ldquo;Vụ nổ khí gas vừa rồi thật kinh khủng quá. Gia đình tôi cũng sử dụng gas để nấu nướng nhưng không hay thường xuyên kiểm tra xem dây dẫn gas, van gas có an toàn không, đã bị hư hại gì chưa. Nhưng sau lần này thì tôi sẽ thường xuyên gọi thợ tới kiểm tra hơn để đảm bảo an toàn khi sử dụng&rdquo;.</p>\r\n\r\n<p><a href="http://bep.vn/upload/editor/images/bep-ga-bep-tu.jpg" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 1"><img alt="Hình ảnh Sự lên ngôi của bếp từ trong căn bếp Việt số 1" src="http://bep.vn/upload/editor/images/bep-ga-bep-tu.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; max-width:100%; vertical-align:middle" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 1" /></a></p>\r\n\r\n<p><em>Nhiều người tiêu dùng e ngại tính an toàn của bếp gas</em></p>\r\n\r\n<p>Chính vì những &ldquo;ẩn họa&rdquo; khôn lường của bếp gas mà không ít gia đình đã loại nó ra khỏi danh mục những đồ dùng trong nhà bếp. Chị Trần Hoàng Ngân (Từ Liêm &ndash; Hà Nội) chia sẻ: &ldquo;Sau một vài vụ cháy nổ do gas gây ra, gia đình tôi đã quyết định không sử dụng loại bếp này nữa, chuyển sang sử dụng loại bếp khác an toàn hơn để tránh những rủi ro đáng tiếc có thể xảy ra&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Và sự lên ngôi của bếp từ</strong></p>\r\n\r\n<p>Chẳng có gì lạ khi người tiêu dùng quay lưng lại với bếp gas và &ldquo;sính&rdquo; sử dụng&nbsp;<a href="http://bep.vn/bep-tu" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank"><strong>bếp từ</strong></a>&nbsp;bởi sự an toàn, tiết kiệm và đẹp sang trọng của nó.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với cơ chế làm trực tiếp phần thức ăn bên trong nồi nên hiệu suất sử dụng của bếp từ rất cao lên tới 90%, cao hơn rất nhiều so với bếp gas và bếp điện. Chính vì vậy mà thời gian nấu ăn của bạn sẽ được rút ngắn hơn và chi phí phải bỏ ra cho công việc nấu nướng cũng tiết kiệm hơn. &nbsp;</p>\r\n\r\n<p><a href="http://bep.vn/upload/editor/images/bep-ga-bep-tu-1.jpg" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 2"><img alt="Hình ảnh Sự lên ngôi của bếp từ trong căn bếp Việt số 2" src="http://bep.vn/upload/editor/images/bep-ga-bep-tu-1.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; max-width:100%; vertical-align:middle" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 2" /></a></p>\r\n\r\n<p><em>Sự lên ngôi của bếp từ</em></p>\r\n\r\n<p>Không chỉ tuyệt vời về hiệu quả sử dụng, bếp từ còn rất được lòng các bà nội trợ bởi thiết kế đẹp mắt, sang trọng và hiện đại của nó. Hơn nữa, bếp từ rất dễ sử dụng (thông qua các nút điều khiển), tính năng đa dạng lại an toàn với cả trẻ em và người lớn nếu vô tình chạm phải mặt bếp trong khi đang nấu, nó không gây bỏng rát bởi mặt bếp luôn mát trong suốt quá trình sử dụng.</p>\r\n\r\n<p>Hiện nay có rất nhiều chủng loại&nbsp;<a href="http://bep.vn/bep-dien-tu" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank">bếp điện</a>,&nbsp;bếp từ của rất nhiều hang khác nhau, người tiêu dùng nên lựa chọn những loại bếp của các thương hiệu uy tín để đảm bảo an toàn và chất lượng khi sử dụng.&nbsp;</p>\r\n\r\n<p>Nếu bạn còn đang băn khoăn không biết nên lựa chọn loại bếp nào cho phù hợp với &ldquo;túi tiền&rdquo; và không gian bếp nhà mình, còn chần chừ gì nữa mà không đến với&nbsp;<strong>Bep.vn&nbsp;</strong>tại&nbsp;địa chỉ 406 Xã Đàn, Đống Đa, Hà Nội. Tại đây, bạn sẽ nhận được những lời tư vấn xác đáng từ những tư vấn viên chuyên nghiệp của chúng tôi, chắc chắn bạn sẽ dễ dàng chọn được cho gia đình một sản phẩm bếp từ ưng ý.</p>\r\n\r\n<p>Tại&nbsp;<strong>Bep.vn</strong>, chúng tôi&nbsp;cung cấp các sản phẩm bếp từ, bếp điện từ, bếp điện,&nbsp;<a href="http://bep.vn/lo-nuong" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank">lò nướng</a>, lò vi sóng, máy hút mùi, máy rửa bát và các sản phẩm gia dụng khác chính hãng với chất lượng tốt nhất trên thị trường hiện nay.</p>\r\n\r\n<p><strong>Thông tin liên hệ:</strong></p>\r\n\r\n<p>Công ty TNHH Xây Dựng và Dịch Vụ Anh Tú<br />\r\nSố 406 Phố Xã Đàn - Đống Đa - Hà Nội &nbsp;(Đường Kim Liên Mới)<br />\r\nTel : 04 35738480&nbsp;<br />\r\nEmail :&nbsp;info@bep.vn<br />\r\nWebsite:&nbsp;<a href="http://bep.vn/" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank">http://bep.vn</a></p>\r\n', '', '', 0, '1489410043total-building-solutions-key-visual-large.jpg', 1, 1, 2),
(3, 'Free Ecommerce Teeee22', 'Lorem ipsum dolor sit amet, ea eum exerci utroque liberavisse, vis in solet verear numquam, eam an soluta detracto. Eius aliquip nominati usu no, dico doctus convenire ut eam. Pro ad nisl esse iusto, case paulo tacimates pro ei. In viris habemus blandit per. Usu officiis petentium argumentum at, novum dicit consequuntur pro ei.', '<span style="line-height:20.8px">Lorem ipsum dolor sit amet, ea eum exerci utroque liberavisse, vis in solet verear numquam, eam an soluta detracto. Eius aliquip nominati usu no, dico doctus convenire ut eam. Pro ad nisl esse iusto, case paulo tacimates pro ei. In viris habemus blandit per. Usu officiis petentium argumentum at, novum dicit consequuntur pro ei.</span><br />\r\n<br />\r\n<span style="line-height:20.8px">Nonumy altera antiopam vim no, no sed meis pericula. No aperiri oporteat mei, sea et movet nobis utroque. Habemus electram te nec, id ubique semper discere eos, aliquid voluptaria ad per. Quo accusam luptatum apeirian an. Sensibus vituperata est cu. Ad cum adhuc appareat, eam no nemore tincidunt, ius oporteat torquatos posidonium et.</span><br />\r\n<br />\r\n<span style="line-height:20.8px">Ex eum nusquam iudicabit reformidans, essent delenit eu eos. His alia feugait voluptatum ei, an vidisse aperiri legimus qui. Lorem saepe eripuit quo in, id vidisse democritum vituperata has. Ea tation nominati suavitate sea, error constituam ad nec, ea integre luptatum erroribus has. Quem libris his et, menandri sapientem sed ei, vix possit voluptua rationibus eu. At pro civibus voluptua, quod illud aliquam vel te, eu vel mediocrem referrentur. Vocibus accommodare pri in, ea sed noluisse imperdiet.</span><br />\r\n<br />\r\n<span style="line-height:20.8px">Ius impetus nostrum adipisci eu, et indoctum posidonium pri, mei denique disputationi no. Sed an elitr omnes. An impedit fabellas cum, vel eu persius mentitum pericula. Rationibus incorrupte pro cu, cu nec minim ridens intellegebat. Vix ne ullum dolorem volumus, purto quaestio deterruisset sit ex.</span><br />\r\n<br />\r\n<span style="line-height:20.8px">Eius velit at ius, id nobis ponderum recusabo usu. Ex praesent accusamus consequat per, torquatos adolescens qui no, nam omnes repudiare constituto ne. Ut vim viderer discere pertinax, stet mucius probatus mea te. Vim nulla dicunt euripidis et.</span>', 'tertret', 'tretret', '', '', '', '', '', 0, '1489408962Building-PNG.png', 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ad_user`
--

CREATE TABLE `ad_user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` text NOT NULL,
  `power` int(11) NOT NULL,
  `lastOnl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Dumping data for table `basic_config`
--

INSERT INTO `basic_config` (`id`, `smtp_server`, `smtp_port`, `smtp_user`, `smtp_pwd`, `smtp_sender_email`, `smtp_sender_name`, `smtp_receiver`, `gmap_script`, `another_script`, `social_twitter`, `social_facebook`, `social_google_plus`) VALUES
(1, 'smtp.gmail.com', '587', 'quantrimang.psmedia@gmail.com', 'psmediaquantrimang', 'quantrimang.psmedia@gmail.com', 'Website administrator', 'info@thaibinhauto.com', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.1633799912497!2d106.65656091421477!3d10.798795861734689!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175293132fa9845%3A0x2b09637f85d4a12f!2zVHLGsOG7nW5nIE3huqdtIE5vbiBUw6JuIFPGoW4gTmjhuqV0!5e0!3m2!1svi!2s!4v1474100962959" width="1004" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', 'https://twitter.com', 'https://www.facebook.com/', 'https://plus.google.com/');

-- --------------------------------------------------------

--
-- Table structure for table `buy`
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
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`id`, `title`, `feature`, `price`, `storey`, `beds`, `landWidth`, `price_reduce`, `in_stock`, `condition`, `brand_id`, `detail`, `content`, `teach`, `video`, `meta_keyword`, `meta_description`, `manual`, `e_manual`, `promotion`, `e_promotion`, `e_title`, `e_feature`, `e_detail`, `e_content`, `e_teach`, `e_meta_keyword`, `e_meta_description`, `pd_option`, `lnk`, `e_lnk`, `pId`, `active`, `home`, `ind`) VALUES
(175, 'BIẾN TẦN YASKAWA F7', '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Biến tần Yaskawa F7</strong> là dòng biến tần cao cấp, tích hợp sẵn chế độ điều khiển tự động điều hướng động cơ (auto tuning), tĩnh và động. Là dòng biến tần duy nhất tại Nhật Bản đạt chuẩn RoHS<br />\r\n<br />\r\n&nbsp;</span></span>', NULL, 0, 0, 0, NULL, 0, 0, 0, '<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Nguồn cấp: 3 pha 200VAC / 3 pha 400VAC</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Tần số: 50-60Hz (&plusmn;5%)</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Công suất: 0.4 &ndash; 300kw</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Phương pháp điều khiển: V/f, véc tơ vòng hở cho động cơ đồng bộ</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Mô men khởi động: 150%/3Hz (điều khiển V/f), 100%/5% tốc độ (điều khiển véc tơ vòng hở)</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Khả năng quá tải: 120% trong 60 giây</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Chức năng tự động dò tốc độ động cơ khi mất nguồn không sử dụng cảm biến tốc độ</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Chức năng KEB giữ động cơ hoạt động ổn định khi mất nguồn dùng động năng tái sinh</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Tích hợp sẵn bộ điều khiển PID và cổng truyền thông RS422/RS485.</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Các tính năng đặc biệt cho bơm quạt: thiết lập cho các ứng dụng bơm quạt cài đặt trước, khả năng phát hiện sự cố mô men cao hoặc thấp, giữ động cơ hoạt động ngay cả khi mất tín hiệu cài đặt tần số, giám sát công suất và điện năng tiêu thụ.</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Thiết bị mở rộng:</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Hỗ trợ các chuẩn truyền thông RS422/RS485, mechatrolink II, CC-link, Devicenet, Profibus-DP, CANopen, Lonworks</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Bộ lọc sóng hài và cải thiện hệ số công suất xoay chiều, một chiều</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Ứng dụng:</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Quạt, bơm, máy ép, băng tải, xe lăn, xe cáp, máy trục hàng, máy ly tâm.</span>', '', '', '', 'BIẾN TẦN YASKAWA F7', 'BIẾN TẦN YASKAWA F7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 1, 4),
(181, 'SERVO MOTOR', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '<span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Servo motor 100W</strong></span></span></span>\r\n<ul>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Công suất ra: 100W, 0.32N.m</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tốc độ định mức: 3000 vòng/phút</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tốc độ tức thời cực đại: 5000 vòng/phút</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Momen xoắn cực đại: 0.45</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Quán tính rotor: 2.5 &times; 10&minus;6 (kg.m2)</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Sử dụng được cho tải quán tính: 30 lần quán tính của rotor</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Quán tính hãm: 2 &times; 10-7 (kg.m2)</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Ma sát tĩnh: 0.29 min. (N.m)</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tuổi thọ hãm: 10,000,000 lần tối thiểu</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Cấp cách điện: Type B</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Cấu trúc: Kín, tự làm mát</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Cấp bảo vệ: IP65</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Cấp chịu rung: V-15</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Lắp đặt: Flange-mounting</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tiêu chuẩn: EC, UL CSA</strong></span></span></span></li>\r\n</ul>\r\n', '', '', '', 'SERVO MOTOR', 'SERVO MOTOR', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, 1, 0, 5),
(183, 'SERVO JUNMA YASKAWA', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><strong>Servopack: SGDV</strong><br />\r\n1/3 AC 230V, 50/60Hz, +10%/-15%, 0,05kW &ndash; 1,5kW<br />\r\n3 AC 380V &ndash; 480V, 50/60Hz, +10%/-15%, 0,5kW &ndash; 15kW<br />\r\n<br />\r\n<strong>Servomotor: SGMAV, SGMEV, SGMGV, SGMJV, SGMSV</strong><br />\r\n3 AC 230V, 3000min-1, 0,159Nm &ndash; 2,39Nm, 50W &ndash; 1.5kW<br />\r\n3 AC 400V, 1500min-1, 1,96Nm &ndash; 28,4Nm, 0,3kW &ndash; 15kW<br />\r\n3 AC 400V, 3000min-1, 0,637Nm &ndash; 22,3Nm, 200kW &ndash; 7kW</span></span>', '', '', '', 'SERVO JUNMA YASKAWA', 'SERVO JUNMA YASKAWA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 1),
(184, 'SERVO YASKAWA', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>SERVO YASKAWA</strong></span></span></p>\r\n\r\n<ul>\r\n	<li><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Độ phân giải vượt trội đến 1.6Khz.</span></span></li>\r\n	<li><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp; Tự động dò tìm theo thời gian thực nhằm điều khiển tải phù hợp.</span></span></li>\r\n	<li><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp; Giảm thiểu rung động cho tải.</span></span></li>\r\n	<li><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp; Chức năng tự động dò tìm tiên tiến</span></span></li>\r\n	<li><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp; Điều khiển truyền động chính xác cao nhất.</span></span></li>\r\n	<li><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp; Servopack: SGDV</span></span></li>\r\n</ul>\r\n\r\n<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">1/3 AC 230V, 50/60Hz, +10%/-15%, 0,05kW &ndash; 1,5kW<br />\r\n3 AC 380V &ndash; 480V, 50/60Hz, +10%/-15%, 0,5kW &ndash; 15kW<br />\r\n<br />\r\n<strong>Servomotor: SGMAV, SGMEV, SGMGV, SGMJV, SGMSV</strong><br />\r\n3 AC 230V, 3000min-1, 0,159Nm &ndash; 2,39Nm, 50W &ndash; 1.5kW<br />\r\n3 AC 400V, 1500min-1, 1,96Nm &ndash; 28,4Nm, 0,3kW &ndash; 15kW<br />\r\n3 AC 400V, 3000min-1, 0,637Nm &ndash; 22,3Nm, 200kW &ndash; 7kW</span></span></p>\r\n', '', '', '', 'SERVO YASKAWA', 'SERVO YASKAWA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 1, 5),
(185, 'BIẾN TẦN YASKAWA A1000', '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Dòng biến tần YASKAWA A1000 là dòng biến tần đa năng,cách lắp đặt và cài đặt tham số đơn giản,cung cấp hệ thống điều khiển cơ bản cho động cơ không đồng bộ 3 pha rotor lồng sóc với giải công xuất từ 0.4kw- 630kw<br />\r\nLà biến tần duy nhất Nhật Bản đạt tiêu chuẩn môi trường<br />\r\nCông xuất : 3P &nbsp; 200-240V/50Hz : 0.4 &ndash; 110kw<br />\r\n3P: 380-480V/50Hz : 0.4 - 630kw<br />\r\nSai số nguồn cấp cho phép : Điện áp + 10%,-15% ; Tần số : &plusmn; 5%<br />\r\nKhả năng quá tải : 120% trong vòng 60s với tải thường,150% trong vòng 60s với tải nặng.<br />\r\nPhương pháp điều kiển động cơ : Điều khiển V/f,V/f với PG ( Pluse Generrato &ndash; máy phát xung ),vector vòng hở,vector vòng kín với PG,vector vòng hở cho PM ( Permanent &ndash;Động cơ nam châm vĩnh cửu ),vector vòng kín cho PM.<br />\r\nHãm 1 chiều cho toàn dải công xuất,tích hợp mạch điều khiển hãm động năng biến tần 30kw<br />\r\nMôi trường làm viêc : Nhiệt độ : -10 -50Oc,độ ẩm : &lt; 95%,độ cao &lt; 1000m<br />\r\nTiêu chuẩn bảo vệ IP00,IP20,ỊP4<br />\r\nThiết bị mở rộng : mạch phản hồi tốc độ Encoder,mạch kế nối Proﬁbus-DP, Lonwork,Mechatrolink,CANopen,Devvicenet,CC-link</span></span>', NULL, 0, 0, 0, NULL, 0, 0, 0, '', '', '', '', 'BIẾN TẦN YASKAWA A1000', 'BIẾN TẦN YASKAWA A1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 3),
(186, 'BIẾN TẦN YASKAWA V1000', '<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><strong>Biến tần YASKAWA V1000</strong> chuyên dùng cho các ứng dụng tải năng, phức tạp<br />\r\nPhần mềm ( CranSoftware ) với các tham số dành riêng cho ứng dụng cẩu trục chuyên biệt.<br />\r\nLà biến tần duy nhất Nhật bản đạt tiêu chuần về môi trường<br />\r\nCông xuất : 3P &nbsp; 200-240V/50Hz : 0.1 &ndash; 15kw 3P &nbsp; 380-480V/50Hz : 0.2 &ndash; 15kw<br />\r\nTần số ra : 0 &ndash; 400Hz<br />\r\nKhả năng quá tải 150% trong vòng 60s<br />\r\nDải điều khiển : 0-10V,4-20Ma<br />\r\nChức năng vận hành : điều khiển đa tốc độ,phanh DC trong quá trình tăng,điều khiển PID,AVR,tự động Reset khi có lỗi,kế nối truyền thông 485<br />\r\nTiêu chuẩn bảo vệ : IP 20<br />\r\nThiết bị mở rộng : mạch phản hồi tốc độ Encoder,mạch kế nối Proﬁbus-DP, &nbsp;Lonwork,Mechatrolink,CANopen,Devvicenet,CC-link</span></span>', NULL, 0, 0, 0, NULL, 0, 0, 0, '', '', '', '', 'BIẾN TẦN YASKAWA V1000', 'BIẾN TẦN YASKAWA V1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 1, 2),
(187, 'BIẾN TẦN YASKAWA J1000', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Dòng biến tần YASKAWA J1000 là dòng biến tần tiện dụng, cách lắp đặt và cài đặt đơn giản, có thiết kế nhỏ gọn,phù hợp cho lắp đặt công xuất nhỏ,yêu cầu thẩm mỹ cao, khả năng chịu tải lớn<br />\r\nLà biến tần duy nhất tại Nhật Bản đạt tiêu chuẩn quốc tế về môi trường.<br />\r\nCông xuất : 3P &nbsp; 200V-240V / 50Hz &nbsp; : 0.2-5.5kw<br />\r\nCông xuất : 3P &nbsp; 380V-480V / 50Hz &nbsp; &nbsp;: 0.4-5.5kw<br />\r\nGiải tần số ra : 0-1500Hz<br />\r\nKhả năng quá tải 150% trong vòng 60s,200% trong vòng 0.5s<br />\r\nMô men khởi động 200% tại 0.5Hz<br />\r\nDải điều khiển từ : 0-10v,4-20Ma<br />\r\nTần số song mang lên tới 15Khz<br />\r\nChức năng vận hành : điều khiển đa tốc độ,phanh DC trong quá trình tăng,điều khiển PID,AVR,tự động Reset khi có lỗi,kế nối truyền thông 485<br />\r\nBảo vệ quá áp,quá tải,nhiệt độ quá cao,lỗi CPU,&hellip;<br />\r\nTiêu chuẩn bảo vệ : IP 20<br />\r\nThiết bị mở rộng : mạch phản hồi tốc độ Encoder,mạch kế nối Proﬁbus-DP, Lonwork,Mechatrolink,CANopen,Devvicenet,CC-link</span></span>', '', '', '', 'BIẾN TẦN YASKAWA J1000', 'BIẾN TẦN YASKAWA J1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 1, 1),
(216, 'Ezi-Servo ', '<span style="line-height:1"><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><strong>Motor + Encoder + Drive<br />\r\nFast Response&nbsp; / Closed Loop System / High Torque / No Gain Tuning.</strong></span></span></span>', NULL, 0, 0, 0, NULL, 0, 0, 0, '', '', '', '', 'Ezi-Servo ', 'Ezi-Servo ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, 1, 0, 1),
(217, 'BỘ ĐIỀU KHIỂN TỤ BÙ  DUCATI', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '', '', '', '', 'BỘ ĐIỀU KHIỂN TỤ BÙ  DUCATI', 'BỘ ĐIỀU KHIỂN TỤ BÙ  DUCATI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 15, 1, 0, 1),
(218, 'TỤ BÙ SAMWHA', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '', '', '', '', 'TỤ BÙ SAMWHA', 'TỤ BÙ SAMWHA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 15, 1, 0, 2),
(219, 'SERVO JUMMA YASKAWA', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '<p><span style="font-family:arial,helvetica,sans-serif"><span style="line-height:1"><span style="font-size:14px"><strong>Servopack: SGDV<br />\r\n1/3 AC 230V, 50/60Hz, +10%/-15%, 0,05kW &ndash; 1,5kW<br />\r\n3 AC 380V &ndash; 480V, 50/60Hz, +10%/-15%, 0,5kW &ndash; 15kW</strong></span></span></span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif"><span style="line-height:1"><span style="font-size:14px"><strong>&nbsp;Servomotor: SGMAV, SGMEV, SGMGV, SGMJV, SGMSV<br />\r\n3 AC 230V, 3000min-1, 0,159Nm &ndash; 2,39Nm, 50W &ndash; 1.5kW<br />\r\n3 AC 400V, 1500min-1, 1,96Nm &ndash; 28,4Nm, 0,3kW &ndash; 15kW<br />\r\n3 AC 400V, 3000min-1, 0,637Nm &ndash; 22,3Nm, 200kW &ndash; 7kW</strong></span></span></span></p>\r\n', '', '', '', 'SERVO JUMMA YASKAWA', 'SERVO JUMMA YASKAWA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 1),
(220, 'SERVO YASKAWA', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '<ul>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Độ phân giải vượt trội đến 1.6Khz.</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Tự động dò tìm theo thời gian thực nhằm điều khiển tải phù hợp.</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Giảm thiểu rung động cho tải.</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Chức năng tự động dò tìm tiên tiến</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Điều khiển truyền động chính xác cao nhất.</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Servopack: SGDV<br />\r\n	1/3 AC 230V, 50/60Hz, +10%/-15%, 0,05kW &ndash; 1,5kW<br />\r\n	3 AC 380V &ndash; 480V, 50/60Hz, +10%/-15%, 0,5kW &ndash; 15kW</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Servomotor: SGMAV, SGMEV, SGMGV, SGMJV, SGMSV<br />\r\n	3 AC 230V, 3000min-1, 0,159Nm &ndash; 2,39Nm, 50W &ndash; 1.5kW<br />\r\n	3 AC 400V, 1500min-1, 1,96Nm &ndash; 28,4Nm, 0,3kW &ndash; 15kW<br />\r\n	3 AC 400V, 3000min-1, 0,637Nm &ndash; 22,3Nm, 200kW &ndash; 7kW</span></span></span></strong></li>\r\n</ul>\r\n', '', '', '', 'SERVO YASKAWA', 'SERVO YASKAWA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 5),
(221, 'INVERTER YASKAWA SERRI A1000', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '<span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>-&nbsp;&nbsp; &nbsp;Dòng biến tần A1000 là dòng biến tần đa năng,cách lắp đặt và cài đặt tham số đơn giản,cung cấp hệ thống điều khiển cơ bản cho động cơ không đồng bộ 3 pha rotor lồng sóc với giải công xuất từ 0.4kw- 630kw<br />\r\n-&nbsp;&nbsp; &nbsp;Là biến tần duy nhất Nhật Bản đạt tiêu chuẩn môi trường<br />\r\n-&nbsp;&nbsp; &nbsp;Công xuất : 3P &nbsp; 200-240V/50Hz : 0.4 &ndash; 110kw<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3P &nbsp; 380-480V/50Hz : 0.4 - 630kw<br />\r\n-&nbsp;&nbsp; &nbsp;Sai số nguồn cấp cho phép : Điện áp + 10%,-15% ; Tần số : &plusmn; 5%<br />\r\n-&nbsp;&nbsp; &nbsp;Khả năng quá tải : 120% trong vòng 60s với tải thường,150% trong vòng 60s với tải nặng.<br />\r\n-&nbsp;&nbsp; &nbsp;Phương pháp điều kiển động cơ : Điều khiển V/f,V/f với PG ( Pluse Generrato &ndash; máy phát xung ),vector vòng hở,vector vòng kín với PG,vector vòng hở cho PM ( Permanent &ndash;Động cơ nam châm vĩnh cửu ),vector vòng kín cho PM.<br />\r\n-&nbsp;&nbsp; &nbsp;Hãm 1 chiều cho toàn dải công xuất,tích hợp mạch điều khiển hãm động năng biến tần 30kw<br />\r\n-&nbsp;&nbsp; &nbsp;Môi trường làm viêc : Nhiệt độ : -10 -50Oc,độ ẩm : &lt; 95%,độ cao &lt; 1000m<br />\r\n-&nbsp;&nbsp; &nbsp;Tiêu chuẩn bảo vệ IP00,IP20,ỊP4<br />\r\n-&nbsp;&nbsp; &nbsp; Thiết bị mở rộng : mạch phản hồi tốc độ Encoder,mạch kế nối Profibus-DP,Lonwork,Mechatrolink,CANopen,Devvicenet,CC-link</strong></span></span></span><br />\r\n', '', '', '', 'INVERTER YASKAWA SERRI A1000', 'INVERTER YASKAWA SERRI A1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 6),
(222, 'Inverter Yaskawa Serri V1000', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '<ul>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Chuyên dung cho các ứng dụng tải năng,phức tạp</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Phần mềm ( CranSoftware ) với các tham số dành riêng cho ứng dụng cẩu trục chuyên biệt.</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Là biến tần duy nhất Nhật bản đạt tiêu chuần về môi trường</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Công xuất : 3P&nbsp;&nbsp; 200-240V/50Hz : 0.1 &ndash; 15kw</span></span></span></strong></li>\r\n</ul>\r\n<strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3P&nbsp;&nbsp; 380-480V/50Hz : 0.2 &ndash; 15kw</span></span></span></strong>\r\n\r\n<ul>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Tần số ra : 0 &ndash; 400Hz</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Khả năng quá tải 150% trong vòng 60s</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Dải điều khiển : 0-10V,4-20Ma</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Chức năng vận hành : điều khiển đa tốc độ,phanh DC trong quá trình tăng,điều khiển PID,AVR,tự động Reset khi có lỗi,kế nối truyền thông 485</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Tiêu chuẩn bảo vệ : IP 20</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Thiết bị mở rộng : mạch phản hồi tốc độ Encoder,mạch kế nối Profibus-DP,Lonwork,Mechatrolink,CANopen,Devvicenet,CC-link</span></span></span></strong></li>\r\n</ul>\r\n', '', '', '', 'Inverter Yaskawa Serri V1000', 'Inverter Yaskawa Serri V1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 7),
(223, 'Inverter Yaskawa Serri J1000', '', 2000000, 0, 0, 0, 1000000, 0, 0, 0, '<strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Inverter Yaskawa Serri J1000</span></span></span></strong>\r\n<ul>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Dòng biến tần J1000 là dòng biến tần tiện dụng,cách lắp đặt và cài đặt đơn giản,có thiết kế nhỏ gọn,phù hợp cho lắp đặt công xuất nhỏ,yêu cầu thẩm mỹ cao,khả năng chịu tải lớn</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Là biến tần duy nhất tại Nhật Bản đạt tiêu chuẩn quốc tế về môi trường.</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Công xuất : 3P&nbsp;&nbsp; 200V-240V / 50Hz&nbsp;&nbsp; : 0.2-5.5kw</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Công xuất : 3P&nbsp;&nbsp; 380V-480V / 50Hz&nbsp;&nbsp;&nbsp; : 0.4-5.5kw</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Giải tần số ra : 0-1500Hz</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Khả năng quá tải 150% trong vòng 60s,200% trong vòng 0.5s</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Mô men khởi động 200% tại 0.5Hz</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Dải điều khiển từ : 0-10v,4-20Ma</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Tần số song mang lên tới 15Khz</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Chức năng vận hành : điều khiển đa tốc độ,phanh DC trong quá trình tăng,điều khiển PID,AVR,tự động Reset khi có lỗi,kế nối truyền thông 485</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Bảo vệ quá áp,quá tải,nhiệt độ quá cao,lỗi CPU,&hellip;</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Tiêu chuẩn bảo vệ : IP 20</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Thiết bị mở rộng : mạch phản hồi tốc độ Encoder,mạch kế nối Profibus-DP,Lonwork,Mechatrolink,CANopen,Devvicenet,CC-link</span></span></span></strong></li>\r\n</ul>\r\n', '', '', '', 'Inverter Yaskawa Serri J1000', 'Inverter Yaskawa Serri J1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 8),
(226, 'BỘ ĐẾM', '', 100000, 0, 0, 0, 0, 0, 0, 0, '<span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Bộ đếm đa năng 1 trạng thái, kích thước 72 x 72mm</strong></span></span></span>\r\n<ul>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Nguồn cấp: 100-240VAC</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chế độ hoạt động: 1-stage preset counter, total and preset counter *1 (lưạ chọn)</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Hiển thị negative transmissive&nbsp;LCD, 6 số, -99,999 ~ 999,999</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chọn màu hiển thị</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Ngõ vào NPN/PNP và cảm biến 2-dây</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chọn chế độ ngõ vào: Increment, decrement, command (UP/DOWN A), individual (UP/DOWN B), quadrature (UP/DOWN C)</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Ngõ ra: Rơle và NPN</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chọn&nbsp;chế độ ngõ ra:&nbsp;N, F, C, R, K-1, P, Q, A, K-2, D, L</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Ngõ ra tác động nhanh: 0.01 ~ 99.99s</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chức năng đếm: 1-stage counter / 1-stage counter with total counter</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tốc độ: 30Hz / 5kHz</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Có nguồn cho thiết bị ngoài: 12VDC, 100mA&nbsp;</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tiêu chuẩn: UL, CSA, EN, CE. IP54&nbsp;</strong></span></span></span></li>\r\n</ul>\r\n', '', '', '', 'BỘ ĐẾM', 'BỘ ĐẾM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 17, 1, 0, 14);

-- --------------------------------------------------------

--
-- Table structure for table `buy_cate`
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
-- Dumping data for table `buy_cate`
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
-- Table structure for table `buy_image`
--

CREATE TABLE `buy_image` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `pId` int(11) NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buy_image`
--

INSERT INTO `buy_image` (`id`, `img`, `pId`, `ind`, `active`) VALUES
(178, '1489410322total-building-solutions-key-visual-large.jpg', 175, 1, 1),
(184, '1489410322total-building-solutions-key-visual-large.jpg', 181, 1, 1),
(186, '1489410322total-building-solutions-key-visual-large.jpg', 183, 1, 1),
(187, '1489410322total-building-solutions-key-visual-large.jpg', 184, 2, 1),
(188, '1489410322total-building-solutions-key-visual-large.jpg', 185, 3, 1),
(189, '1489410322total-building-solutions-key-visual-large.jpg', 186, 4, 1),
(190, '1489410322total-building-solutions-key-visual-large.jpg', 187, 6, 1),
(224, '1489410322total-building-solutions-key-visual-large.jpg', 216, 1, 1),
(225, '1489410322total-building-solutions-key-visual-large.jpg', 217, 1, 1),
(226, '1489410322total-building-solutions-key-visual-large.jpg', 218, 2, 1),
(227, '1489410322total-building-solutions-key-visual-large.jpg', 219, 1, 1),
(228, '1489410322total-building-solutions-key-visual-large.jpg', 220, 5, 1),
(229, '1489410322total-building-solutions-key-visual-large.jpg', 221, 6, 1),
(230, '1489410322total-building-solutions-key-visual-large.jpg', 222, 7, 1),
(231, '1489410322total-building-solutions-key-visual-large.jpg', 223, 9, 1),
(233, '1489410322total-building-solutions-key-visual-large.jpg', 226, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
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
-- Dumping data for table `cart`
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
-- Table structure for table `cart_detail`
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
-- Dumping data for table `cart_detail`
--

INSERT INTO `cart_detail` (`id`, `cart_id`, `product_id`, `product_title`, `product_price`, `product_qty`) VALUES
(1, 4, 186, 'BIẾN TẦN YASKAWA V1000', 0, 1),
(2, 4, 175, 'BIẾN TẦN YASKAWA F7', 0, 1),
(3, 5, 186, 'BIẾN TẦN YASKAWA V1000', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `concierge`
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
-- Dumping data for table `concierge`
--

INSERT INTO `concierge` (`id`, `title`, `sum`, `content`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_content`, `e_meta_keyword`, `e_meta_description`, `pId`, `img`, `active`, `home`, `ind`) VALUES
(1, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, ea eum exerci utroque liberavisse, vis in solet verear numquam, eam an soluta detracto. Eius aliquip nominati usu no, dico doctus convenire ut eam. Pro ad nisl esse iusto, case paulo tacimates pro ei. In viris habemus blandit per. Usu officiis petentium argumentum at, novum dicit consequuntur pro ei.', '<p>Lorem ipsum dolor sit amet, ea eum exerci utroque liberavisse, vis in solet verear numquam, eam an soluta detracto. Eius aliquip nominati usu no, dico doctus convenire ut eam. Pro ad nisl esse iusto, case paulo tacimates pro ei. In viris habemus blandit per. Usu officiis petentium argumentum at, novum dicit consequuntur pro ei.<br />\r\n<br />\r\nNonumy altera antiopam vim no, no sed meis pericula. No aperiri oporteat mei, sea et movet nobis utroque. Habemus electram te nec, id ubique semper discere eos, aliquid voluptaria ad per. Quo accusam luptatum apeirian an. Sensibus vituperata est cu. Ad cum adhuc appareat, eam no nemore tincidunt, ius oporteat torquatos posidonium et.<br />\r\n<br />\r\nEx eum nusquam iudicabit reformidans, essent delenit eu eos. His alia feugait voluptatum ei, an vidisse aperiri legimus qui. Lorem saepe eripuit quo in, id vidisse democritum vituperata has. Ea tation nominati suavitate sea, error constituam ad nec, ea integre luptatum erroribus has. Quem libris his et, menandri sapientem sed ei, vix possit voluptua rationibus eu. At pro civibus voluptua, quod illud aliquam vel te, eu vel mediocrem referrentur. Vocibus accommodare pri in, ea sed noluisse imperdiet.<br />\r\n<br />\r\nIus impetus nostrum adipisci eu, et indoctum posidonium pri, mei denique disputationi no. Sed an elitr omnes. An impedit fabellas cum, vel eu persius mentitum pericula. Rationibus incorrupte pro cu, cu nec minim ridens intellegebat. Vix ne ullum dolorem volumus, purto quaestio deterruisset sit ex.<br />\r\n<br />\r\nEius velit at ius, id nobis ponderum recusabo usu. Ex praesent accusamus consequat per, torquatos adolescens qui no, nam omnes repudiare constituto ne. Ut vim viderer discere pertinax, stet mucius probatus mea te. Vim nulla dicunt euripidis et.</p>\r\n', '34234', '34234324', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '<p>Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.</p>\r\n\r\n<p>Chồng làm giám đốc một công ty lớn trong ngành truyền thông, gia đình có đến 2 người giúp việc, chị Thu ở Núi Trúc, Hà Nội, vẫn giữ thói quen tự nấu nướng cho cả gia đình. Chồng cùng 2 cậu con trai của chị cũng chỉ thích ăn những món do nội tướng chế biến.</p>\r\n\r\n<p>&quot;Nhiều món ăn tuy đơn giản nhưng vẫn cần bí quyết chế biến riêng nên người khác nấu không hợp khẩu vị khiến chồng con tôi không ưng. Hai cô giúp việc chỉ phải dọn dẹp với giặt giũ, còn đi chợ hay nấu nướng thì tôi tự thu xếp công việc và thời gian để làm&quot;, chị Thu nói.</p>\r\n\r\n<p>Không ít lần chị Thu &quot;mất điểm&quot; vì công việc quá lu bu. Chị kể, đặt nồi cá kho lên bếp định một tiếng rưỡi tiếng xuống tắt lửa là vừa, nhưng mải quyết toán doanh thu cuối tháng của công ty nên chị quên mất. Ngửi thấy mùi khét, chị chạy xuống bếp thì nồi cá đã sắp thành than.</p>\r\n\r\n<p>Chia sẻ với bạn, chị Thu được mách về loại bếp điện từ hồng ngoại - kết hợp tính năng điện từ với hồng ngoại, có hẹn giờ nên tránh được tối đa những sơ suất tương tự &quot;vụ nồi cá&quot;. Ngoài ra, dùng loại bếp này, thời gian nấu nhanh, nấu được với tất cả các loại nồi chứ không bị bó hẹp như bếp từ. Cân nhắc mãi, chị Thu quyết định mua một chiếc dù mức giá khá cao, 45 triệu đồng cho loại 4 bếp.</p>\r\n\r\n<p>&quot;Chi phí ban đầu hơi cao nhưng tiết kiệm được thời gian nấu, tính ra chưa đầy 30 phút là xong bữa tối. Con cái còn nhỏ, ở nhà cả ngày với người giúp việc, mà gần đây xảy ra nhiều vụ nổ gas nên tôi càng lo, quyết tâm đầu tư bếp từ hồng ngoại để đảm bảo an toàn cho cả nhà&quot;, chị Thu tâm sự. Ngoài ra, mặt bếp sáng bóng, hợp với không gian căn bếp sang trọng mà vợ chồng chị đã cất công thiết kế, khiến chị Thu không tiếc khoản tiền gần 50 triệu đồng đã bỏ ra để mua.</p>\r\n\r\n<p>Chị Tiến ở Mỹ Đình, Hà Nội, phu nhân giám đốc chi nhánh của công ty dược có tiếng, cũng chọn bếp điện từ hồng ngoại cho gian bếp nhà mình. Chị lý giải, ngoài lý do an toàn, hình thức bắt mắt và nấu nướng nhanh, bếp có giá trị sử dụng cao, giảm được chi phí hằng tháng so với dùng các loại bếp thông thường.</p>\r\n\r\n<p>Theo chị, nếu dùng bếp gas, trung bình mỗi tháng gia đình chị hết khoảng 250.000 đồng. Từ khi chuyển sang dùng bếp từ hồng ngoại, cắt giảm được chi phí gas, chị tính toán thấy số tiền điện chỉ tăng thêm từ 120.000 đồng đến 150.000 đồng so với trước. Định kỳ hằng năm, chị không phải thay van gas, dây nối..., tuổi thọ của loại bếp này cũng gấp 2-3 lần so với bếp gas. Chưa kể, do có nhiều chức năng tự động như tự ngắt khi gặp vật thể lạ hoặc người dùng quên tắt... nên thiết bị nhà bếp này khá an toàn.</p>\r\n\r\n<p>&quot;Tôi thấy giá khá cao nhưng &#39;đắt xắt ra miếng&#39;, đầu tư lớn ban đầu mà chi phí dùng về sau rẻ hơn khá nhiều nên tính về lâu dài thì tiết kiệm hơn. Một điểm nữa tôi rất thích là trời nóng vẫn có thể bật quạt hướng thẳng vào vị trí đứng nấu mà không sợ bị tản nhiệt như nấu bằng bếp gas&quot;, chị Tiến giải thích.</p>\r\n\r\n<p>Xuất hiện chưa lâu và có mức giá khá cao song bếp điện từ hồng ngoại đã được khá nhiều bà nội trợ đầu tư chọn lựa. Giá bếp dao động từ 20 đến trên 40 triệu đồng mỗi chiếc, tùy vào xuất xứ, vật liệu và số lượng mặt bếp. Ông Phạm Đức Tuân, Giám đốc kinh doanh ngành hàng bếp của Kangaroo, một những doanh nghiệp vừa tung ra dòng sản phẩm bếp điện từ hồng ngoại cao cấp cho biết, chỉ trong vòng 2 tháng, số lượng bán ra đã hơn 5.000 chiếc, trong đó, doanh số tháng sau cao hơn tháng trước 30%.</p>\r\n\r\n<p>Trao đổi với&nbsp;<em>VnExpress.net</em>, ông cho biết, so với bếp gas, bếp điện từ hồng ngoại Kangaroo có hiệu suất hấp thụ nhiệt cao đến 90%, trong khi bếp gas đạt 55%, bếp điện thông thường đạt khoảng 65%. Theo đó, nếu chuyển từ bếp gas sang bếp điện từ hồng ngoại, người tiêu dùng tiết kiệm được đến 40% chi phí nhiên liệu cho việc đun nấu, thời gian nấu nướng cũng vì thế mà nhanh gấp 2-3 lần.</p>\r\n\r\n<p>Hai bộ phận quan trọng nhất của bếp là mặt kính và bộ gia nhiệt đều được nhập khẩu từ các hãng danh tiếng của Đức là Schott và Ego, đảm bảo độ bền và hiệu suất ra nhiệt tối đa. Ngoài ra với độ dày 4 mm, bếp có khả năng chịu lực và chịu nhiệt lên đến 800 độ C. Nhiệt độ được truyền thẳng đứng đến đáy nồi, nhiệt năng không bị thất thoát ra không khí.</p>\r\n\r\n<p>Tuy nhiên, vị chuyên gia khẳng định, dù sử dụng bất kỳ loại bếp nào, người nội trợ cũng nên vệ sinh, bảo trì thiết bị thường xuyên, giữ không khí trong phòng bếp lưu thông, thoáng mát... để đảm bảo chất lượng sản phẩm.</p>\r\n', '', '', 0, '1484038911index_16.jpg', 1, 1, 1),
(2, 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, ea eum exerci utroque liberavisse, vis in solet verear numquam, eam an soluta detracto. Eius aliquip nominati usu no, dico doctus convenire ut eam. Pro ad nisl esse iusto, case paulo tacimates pro ei. In viris habemus blandit per. Usu officiis petentium argumentum at, novum dicit consequuntur pro ei.', '<p>Lorem ipsum dolor sit amet, ea eum exerci utroque liberavisse, vis in solet verear numquam, eam an soluta detracto. Eius aliquip nominati usu no, dico doctus convenire ut eam. Pro ad nisl esse iusto, case paulo tacimates pro ei. In viris habemus blandit per. Usu officiis petentium argumentum at, novum dicit consequuntur pro ei.<br />\r\n<br />\r\nNonumy altera antiopam vim no, no sed meis pericula. No aperiri oporteat mei, sea et movet nobis utroque. Habemus electram te nec, id ubique semper discere eos, aliquid voluptaria ad per. Quo accusam luptatum apeirian an. Sensibus vituperata est cu. Ad cum adhuc appareat, eam no nemore tincidunt, ius oporteat torquatos posidonium et.<br />\r\n<br />\r\nEx eum nusquam iudicabit reformidans, essent delenit eu eos. His alia feugait voluptatum ei, an vidisse aperiri legimus qui. Lorem saepe eripuit quo in, id vidisse democritum vituperata has. Ea tation nominati suavitate sea, error constituam ad nec, ea integre luptatum erroribus has. Quem libris his et, menandri sapientem sed ei, vix possit voluptua rationibus eu. At pro civibus voluptua, quod illud aliquam vel te, eu vel mediocrem referrentur. Vocibus accommodare pri in, ea sed noluisse imperdiet.<br />\r\n<br />\r\nIus impetus nostrum adipisci eu, et indoctum posidonium pri, mei denique disputationi no. Sed an elitr omnes. An impedit fabellas cum, vel eu persius mentitum pericula. Rationibus incorrupte pro cu, cu nec minim ridens intellegebat. Vix ne ullum dolorem volumus, purto quaestio deterruisset sit ex.<br />\r\n<br />\r\nEius velit at ius, id nobis ponderum recusabo usu. Ex praesent accusamus consequat per, torquatos adolescens qui no, nam omnes repudiare constituto ne. Ut vim viderer discere pertinax, stet mucius probatus mea te. Vim nulla dicunt euripidis et.</p>\r\n', '23232', '232323', 'Sự lên ngôi của bếp từ trong căn bếp Việt', 'Không chỉ tuyệt vời về hiệu quả sử dụng, bếp từ còn rất được...', '<p><strong>Vì&nbsp;sao bếp gas bị thất thế?</strong></p>\r\n\r\n<p>Còn nhớ vụ nổ gas cách đây không lâu tại phố Tạ Quang Bửu khiến hai cháu bé bị tử vong rất thương tâm, bố và mẹ bị thương nặng. Chính vì lẽ đó mà không ít người e dè khi lựa chọn bếp gas để sử dụng.</p>\r\n\r\n<p>Anh Hoàng Vũ Linh (Đống Đa &ndash; Hà Nội) cho hay: &ldquo;Vụ nổ khí gas vừa rồi thật kinh khủng quá. Gia đình tôi cũng sử dụng gas để nấu nướng nhưng không hay thường xuyên kiểm tra xem dây dẫn gas, van gas có an toàn không, đã bị hư hại gì chưa. Nhưng sau lần này thì tôi sẽ thường xuyên gọi thợ tới kiểm tra hơn để đảm bảo an toàn khi sử dụng&rdquo;.</p>\r\n\r\n<p><a href="http://bep.vn/upload/editor/images/bep-ga-bep-tu.jpg" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 1"><img alt="Hình ảnh Sự lên ngôi của bếp từ trong căn bếp Việt số 1" src="http://bep.vn/upload/editor/images/bep-ga-bep-tu.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; max-width:100%; vertical-align:middle" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 1" /></a></p>\r\n\r\n<p><em>Nhiều người tiêu dùng e ngại tính an toàn của bếp gas</em></p>\r\n\r\n<p>Chính vì những &ldquo;ẩn họa&rdquo; khôn lường của bếp gas mà không ít gia đình đã loại nó ra khỏi danh mục những đồ dùng trong nhà bếp. Chị Trần Hoàng Ngân (Từ Liêm &ndash; Hà Nội) chia sẻ: &ldquo;Sau một vài vụ cháy nổ do gas gây ra, gia đình tôi đã quyết định không sử dụng loại bếp này nữa, chuyển sang sử dụng loại bếp khác an toàn hơn để tránh những rủi ro đáng tiếc có thể xảy ra&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Và sự lên ngôi của bếp từ</strong></p>\r\n\r\n<p>Chẳng có gì lạ khi người tiêu dùng quay lưng lại với bếp gas và &ldquo;sính&rdquo; sử dụng&nbsp;<a href="http://bep.vn/bep-tu" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank"><strong>bếp từ</strong></a>&nbsp;bởi sự an toàn, tiết kiệm và đẹp sang trọng của nó.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với cơ chế làm trực tiếp phần thức ăn bên trong nồi nên hiệu suất sử dụng của bếp từ rất cao lên tới 90%, cao hơn rất nhiều so với bếp gas và bếp điện. Chính vì vậy mà thời gian nấu ăn của bạn sẽ được rút ngắn hơn và chi phí phải bỏ ra cho công việc nấu nướng cũng tiết kiệm hơn. &nbsp;</p>\r\n\r\n<p><a href="http://bep.vn/upload/editor/images/bep-ga-bep-tu-1.jpg" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 2"><img alt="Hình ảnh Sự lên ngôi của bếp từ trong căn bếp Việt số 2" src="http://bep.vn/upload/editor/images/bep-ga-bep-tu-1.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; max-width:100%; vertical-align:middle" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 2" /></a></p>\r\n\r\n<p><em>Sự lên ngôi của bếp từ</em></p>\r\n\r\n<p>Không chỉ tuyệt vời về hiệu quả sử dụng, bếp từ còn rất được lòng các bà nội trợ bởi thiết kế đẹp mắt, sang trọng và hiện đại của nó. Hơn nữa, bếp từ rất dễ sử dụng (thông qua các nút điều khiển), tính năng đa dạng lại an toàn với cả trẻ em và người lớn nếu vô tình chạm phải mặt bếp trong khi đang nấu, nó không gây bỏng rát bởi mặt bếp luôn mát trong suốt quá trình sử dụng.</p>\r\n\r\n<p>Hiện nay có rất nhiều chủng loại&nbsp;<a href="http://bep.vn/bep-dien-tu" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank">bếp điện</a>,&nbsp;bếp từ của rất nhiều hang khác nhau, người tiêu dùng nên lựa chọn những loại bếp của các thương hiệu uy tín để đảm bảo an toàn và chất lượng khi sử dụng.&nbsp;</p>\r\n\r\n<p>Nếu bạn còn đang băn khoăn không biết nên lựa chọn loại bếp nào cho phù hợp với &ldquo;túi tiền&rdquo; và không gian bếp nhà mình, còn chần chừ gì nữa mà không đến với&nbsp;<strong>Bep.vn&nbsp;</strong>tại&nbsp;địa chỉ 406 Xã Đàn, Đống Đa, Hà Nội. Tại đây, bạn sẽ nhận được những lời tư vấn xác đáng từ những tư vấn viên chuyên nghiệp của chúng tôi, chắc chắn bạn sẽ dễ dàng chọn được cho gia đình một sản phẩm bếp từ ưng ý.</p>\r\n\r\n<p>Tại&nbsp;<strong>Bep.vn</strong>, chúng tôi&nbsp;cung cấp các sản phẩm bếp từ, bếp điện từ, bếp điện,&nbsp;<a href="http://bep.vn/lo-nuong" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank">lò nướng</a>, lò vi sóng, máy hút mùi, máy rửa bát và các sản phẩm gia dụng khác chính hãng với chất lượng tốt nhất trên thị trường hiện nay.</p>\r\n\r\n<p><strong>Thông tin liên hệ:</strong></p>\r\n\r\n<p>Công ty TNHH Xây Dựng và Dịch Vụ Anh Tú<br />\r\nSố 406 Phố Xã Đàn - Đống Đa - Hà Nội &nbsp;(Đường Kim Liên Mới)<br />\r\nTel : 04 35738480&nbsp;<br />\r\nEmail :&nbsp;info@bep.vn<br />\r\nWebsite:&nbsp;<a href="http://bep.vn/" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank">http://bep.vn</a></p>\r\n', '', '', 0, '1484038911index_16.jpg', 1, 1, 2),
(3, 'Free Ecommerce Teeee', 'Lorem ipsum dolor sit amet, ea eum exerci utroque liberavisse, vis in solet verear numquam, eam an soluta detracto. Eius aliquip nominati usu no, dico doctus convenire ut eam. Pro ad nisl esse iusto, case paulo tacimates pro ei. In viris habemus blandit per. Usu officiis petentium argumentum at, novum dicit consequuntur pro ei.', '<span style="line-height:20.8px">Lorem ipsum dolor sit amet, ea eum exerci utroque liberavisse, vis in solet verear numquam, eam an soluta detracto. Eius aliquip nominati usu no, dico doctus convenire ut eam. Pro ad nisl esse iusto, case paulo tacimates pro ei. In viris habemus blandit per. Usu officiis petentium argumentum at, novum dicit consequuntur pro ei.</span><br />\r\n<br />\r\n<span style="line-height:20.8px">Nonumy altera antiopam vim no, no sed meis pericula. No aperiri oporteat mei, sea et movet nobis utroque. Habemus electram te nec, id ubique semper discere eos, aliquid voluptaria ad per. Quo accusam luptatum apeirian an. Sensibus vituperata est cu. Ad cum adhuc appareat, eam no nemore tincidunt, ius oporteat torquatos posidonium et.</span><br />\r\n<br />\r\n<span style="line-height:20.8px">Ex eum nusquam iudicabit reformidans, essent delenit eu eos. His alia feugait voluptatum ei, an vidisse aperiri legimus qui. Lorem saepe eripuit quo in, id vidisse democritum vituperata has. Ea tation nominati suavitate sea, error constituam ad nec, ea integre luptatum erroribus has. Quem libris his et, menandri sapientem sed ei, vix possit voluptua rationibus eu. At pro civibus voluptua, quod illud aliquam vel te, eu vel mediocrem referrentur. Vocibus accommodare pri in, ea sed noluisse imperdiet.</span><br />\r\n<br />\r\n<span style="line-height:20.8px">Ius impetus nostrum adipisci eu, et indoctum posidonium pri, mei denique disputationi no. Sed an elitr omnes. An impedit fabellas cum, vel eu persius mentitum pericula. Rationibus incorrupte pro cu, cu nec minim ridens intellegebat. Vix ne ullum dolorem volumus, purto quaestio deterruisset sit ex.</span><br />\r\n<br />\r\n<span style="line-height:20.8px">Eius velit at ius, id nobis ponderum recusabo usu. Ex praesent accusamus consequat per, torquatos adolescens qui no, nam omnes repudiare constituto ne. Ut vim viderer discere pertinax, stet mucius probatus mea te. Vim nulla dicunt euripidis et.</span>', 'tertret', 'tretret', '', '', '', '', '', 0, '1484038911index_16.jpg', 1, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `adds` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  `content` text NOT NULL,
  `dates` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `icon`, `meta_keyword`, `meta_description`, `view`, `e_title`, `e_meta_keyword`, `e_meta_description`, `e_view`, `ind`, `active`) VALUES
(1, 'HOME', '', '', '', 'home', 'Home', '', '', 'home', 1, 1),
(2, 'BUILD', '', '', '', 'build', 'BUILD', '', '', 'build', 2, 1),
(3, 'BUY', '', '', '', 'buy', 'buy', '', '', 'product', 3, 1),
(4, 'SELL', '', 'sell', '', 'sell', '', '', '', '', 4, 1),
(5, 'CONCIERGE', '', 'concierge', '', 'concierge', '', '', '', '', 5, 1),
(6, 'ABOUT US', 'about-us', '', '', 'about-us', 'About Us', '', '', 'about-us', 6, 1),
(7, 'MEET OUR PARTNERS', '', '', '', 'meet-our-partners', 'News', '', '', 'news', 7, 1),
(8, 'CONTACT US', '', '', '', 'contact-us', 'Contact Us', '', '', 'contact-us', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
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
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `keyName`, `name`, `list`, `elist`, `ind`, `active`) VALUES
(1, 'storey', 'Storey', 'Single,Double', '', 1, 1),
(2, 'beds', 'Beds', '3,4,5', '', 2, 1),
(3, 'landWidth', 'Land Width (m)', '10,10.5,11,11.5', '', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `partner`
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
-- Dumping data for table `partner`
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
-- Table structure for table `partner_detail`
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

--
-- Dumping data for table `partner_detail`
--

INSERT INTO `partner_detail` (`id`, `title`, `sum`, `content`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_content`, `e_meta_keyword`, `e_meta_description`, `pId`, `img`, `active`, `home`, `ind`) VALUES
(1, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, ea eum exerci utroque liberavisse, vis in solet verear numquam, eam an soluta detracto. Eius aliquip nominati usu no, dico doctus convenire ut eam. Pro ad nisl esse iusto, case paulo tacimates pro ei. In viris habemus blandit per. Usu officiis petentium argumentum at, novum dicit consequuntur pro ei.', '<p>Lorem ipsum dolor sit amet, ea eum exerci utroque liberavisse, vis in solet verear numquam, eam an soluta detracto. Eius aliquip nominati usu no, dico doctus convenire ut eam. Pro ad nisl esse iusto, case paulo tacimates pro ei. In viris habemus blandit per. Usu officiis petentium argumentum at, novum dicit consequuntur pro ei.<br />\r\n<br />\r\nNonumy altera antiopam vim no, no sed meis pericula. No aperiri oporteat mei, sea et movet nobis utroque. Habemus electram te nec, id ubique semper discere eos, aliquid voluptaria ad per. Quo accusam luptatum apeirian an. Sensibus vituperata est cu. Ad cum adhuc appareat, eam no nemore tincidunt, ius oporteat torquatos posidonium et.<br />\r\n<br />\r\nEx eum nusquam iudicabit reformidans, essent delenit eu eos. His alia feugait voluptatum ei, an vidisse aperiri legimus qui. Lorem saepe eripuit quo in, id vidisse democritum vituperata has. Ea tation nominati suavitate sea, error constituam ad nec, ea integre luptatum erroribus has. Quem libris his et, menandri sapientem sed ei, vix possit voluptua rationibus eu. At pro civibus voluptua, quod illud aliquam vel te, eu vel mediocrem referrentur. Vocibus accommodare pri in, ea sed noluisse imperdiet.<br />\r\n<br />\r\nIus impetus nostrum adipisci eu, et indoctum posidonium pri, mei denique disputationi no. Sed an elitr omnes. An impedit fabellas cum, vel eu persius mentitum pericula. Rationibus incorrupte pro cu, cu nec minim ridens intellegebat. Vix ne ullum dolorem volumus, purto quaestio deterruisset sit ex.<br />\r\n<br />\r\nEius velit at ius, id nobis ponderum recusabo usu. Ex praesent accusamus consequat per, torquatos adolescens qui no, nam omnes repudiare constituto ne. Ut vim viderer discere pertinax, stet mucius probatus mea te. Vim nulla dicunt euripidis et.</p>\r\n', '34234', '34234324', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '<p>Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.</p>\r\n\r\n<p>Chồng làm giám đốc một công ty lớn trong ngành truyền thông, gia đình có đến 2 người giúp việc, chị Thu ở Núi Trúc, Hà Nội, vẫn giữ thói quen tự nấu nướng cho cả gia đình. Chồng cùng 2 cậu con trai của chị cũng chỉ thích ăn những món do nội tướng chế biến.</p>\r\n\r\n<p>&quot;Nhiều món ăn tuy đơn giản nhưng vẫn cần bí quyết chế biến riêng nên người khác nấu không hợp khẩu vị khiến chồng con tôi không ưng. Hai cô giúp việc chỉ phải dọn dẹp với giặt giũ, còn đi chợ hay nấu nướng thì tôi tự thu xếp công việc và thời gian để làm&quot;, chị Thu nói.</p>\r\n\r\n<p>Không ít lần chị Thu &quot;mất điểm&quot; vì công việc quá lu bu. Chị kể, đặt nồi cá kho lên bếp định một tiếng rưỡi tiếng xuống tắt lửa là vừa, nhưng mải quyết toán doanh thu cuối tháng của công ty nên chị quên mất. Ngửi thấy mùi khét, chị chạy xuống bếp thì nồi cá đã sắp thành than.</p>\r\n\r\n<p>Chia sẻ với bạn, chị Thu được mách về loại bếp điện từ hồng ngoại - kết hợp tính năng điện từ với hồng ngoại, có hẹn giờ nên tránh được tối đa những sơ suất tương tự &quot;vụ nồi cá&quot;. Ngoài ra, dùng loại bếp này, thời gian nấu nhanh, nấu được với tất cả các loại nồi chứ không bị bó hẹp như bếp từ. Cân nhắc mãi, chị Thu quyết định mua một chiếc dù mức giá khá cao, 45 triệu đồng cho loại 4 bếp.</p>\r\n\r\n<p>&quot;Chi phí ban đầu hơi cao nhưng tiết kiệm được thời gian nấu, tính ra chưa đầy 30 phút là xong bữa tối. Con cái còn nhỏ, ở nhà cả ngày với người giúp việc, mà gần đây xảy ra nhiều vụ nổ gas nên tôi càng lo, quyết tâm đầu tư bếp từ hồng ngoại để đảm bảo an toàn cho cả nhà&quot;, chị Thu tâm sự. Ngoài ra, mặt bếp sáng bóng, hợp với không gian căn bếp sang trọng mà vợ chồng chị đã cất công thiết kế, khiến chị Thu không tiếc khoản tiền gần 50 triệu đồng đã bỏ ra để mua.</p>\r\n\r\n<p>Chị Tiến ở Mỹ Đình, Hà Nội, phu nhân giám đốc chi nhánh của công ty dược có tiếng, cũng chọn bếp điện từ hồng ngoại cho gian bếp nhà mình. Chị lý giải, ngoài lý do an toàn, hình thức bắt mắt và nấu nướng nhanh, bếp có giá trị sử dụng cao, giảm được chi phí hằng tháng so với dùng các loại bếp thông thường.</p>\r\n\r\n<p>Theo chị, nếu dùng bếp gas, trung bình mỗi tháng gia đình chị hết khoảng 250.000 đồng. Từ khi chuyển sang dùng bếp từ hồng ngoại, cắt giảm được chi phí gas, chị tính toán thấy số tiền điện chỉ tăng thêm từ 120.000 đồng đến 150.000 đồng so với trước. Định kỳ hằng năm, chị không phải thay van gas, dây nối..., tuổi thọ của loại bếp này cũng gấp 2-3 lần so với bếp gas. Chưa kể, do có nhiều chức năng tự động như tự ngắt khi gặp vật thể lạ hoặc người dùng quên tắt... nên thiết bị nhà bếp này khá an toàn.</p>\r\n\r\n<p>&quot;Tôi thấy giá khá cao nhưng &#39;đắt xắt ra miếng&#39;, đầu tư lớn ban đầu mà chi phí dùng về sau rẻ hơn khá nhiều nên tính về lâu dài thì tiết kiệm hơn. Một điểm nữa tôi rất thích là trời nóng vẫn có thể bật quạt hướng thẳng vào vị trí đứng nấu mà không sợ bị tản nhiệt như nấu bằng bếp gas&quot;, chị Tiến giải thích.</p>\r\n\r\n<p>Xuất hiện chưa lâu và có mức giá khá cao song bếp điện từ hồng ngoại đã được khá nhiều bà nội trợ đầu tư chọn lựa. Giá bếp dao động từ 20 đến trên 40 triệu đồng mỗi chiếc, tùy vào xuất xứ, vật liệu và số lượng mặt bếp. Ông Phạm Đức Tuân, Giám đốc kinh doanh ngành hàng bếp của Kangaroo, một những doanh nghiệp vừa tung ra dòng sản phẩm bếp điện từ hồng ngoại cao cấp cho biết, chỉ trong vòng 2 tháng, số lượng bán ra đã hơn 5.000 chiếc, trong đó, doanh số tháng sau cao hơn tháng trước 30%.</p>\r\n\r\n<p>Trao đổi với&nbsp;<em>VnExpress.net</em>, ông cho biết, so với bếp gas, bếp điện từ hồng ngoại Kangaroo có hiệu suất hấp thụ nhiệt cao đến 90%, trong khi bếp gas đạt 55%, bếp điện thông thường đạt khoảng 65%. Theo đó, nếu chuyển từ bếp gas sang bếp điện từ hồng ngoại, người tiêu dùng tiết kiệm được đến 40% chi phí nhiên liệu cho việc đun nấu, thời gian nấu nướng cũng vì thế mà nhanh gấp 2-3 lần.</p>\r\n\r\n<p>Hai bộ phận quan trọng nhất của bếp là mặt kính và bộ gia nhiệt đều được nhập khẩu từ các hãng danh tiếng của Đức là Schott và Ego, đảm bảo độ bền và hiệu suất ra nhiệt tối đa. Ngoài ra với độ dày 4 mm, bếp có khả năng chịu lực và chịu nhiệt lên đến 800 độ C. Nhiệt độ được truyền thẳng đứng đến đáy nồi, nhiệt năng không bị thất thoát ra không khí.</p>\r\n\r\n<p>Tuy nhiên, vị chuyên gia khẳng định, dù sử dụng bất kỳ loại bếp nào, người nội trợ cũng nên vệ sinh, bảo trì thiết bị thường xuyên, giữ không khí trong phòng bếp lưu thông, thoáng mát... để đảm bảo chất lượng sản phẩm.</p>\r\n', '', '', 0, '14894105881_BecomePartner1.jpg', 1, 1, 1),
(2, 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, ea eum exerci utroque liberavisse, vis in solet verear numquam, eam an soluta detracto. Eius aliquip nominati usu no, dico doctus convenire ut eam. Pro ad nisl esse iusto, case paulo tacimates pro ei. In viris habemus blandit per. Usu officiis petentium argumentum at, novum dicit consequuntur pro ei.', '<p>Lorem ipsum dolor sit amet, ea eum exerci utroque liberavisse, vis in solet verear numquam, eam an soluta detracto. Eius aliquip nominati usu no, dico doctus convenire ut eam. Pro ad nisl esse iusto, case paulo tacimates pro ei. In viris habemus blandit per. Usu officiis petentium argumentum at, novum dicit consequuntur pro ei.<br />\r\n<br />\r\nNonumy altera antiopam vim no, no sed meis pericula. No aperiri oporteat mei, sea et movet nobis utroque. Habemus electram te nec, id ubique semper discere eos, aliquid voluptaria ad per. Quo accusam luptatum apeirian an. Sensibus vituperata est cu. Ad cum adhuc appareat, eam no nemore tincidunt, ius oporteat torquatos posidonium et.<br />\r\n<br />\r\nEx eum nusquam iudicabit reformidans, essent delenit eu eos. His alia feugait voluptatum ei, an vidisse aperiri legimus qui. Lorem saepe eripuit quo in, id vidisse democritum vituperata has. Ea tation nominati suavitate sea, error constituam ad nec, ea integre luptatum erroribus has. Quem libris his et, menandri sapientem sed ei, vix possit voluptua rationibus eu. At pro civibus voluptua, quod illud aliquam vel te, eu vel mediocrem referrentur. Vocibus accommodare pri in, ea sed noluisse imperdiet.<br />\r\n<br />\r\nIus impetus nostrum adipisci eu, et indoctum posidonium pri, mei denique disputationi no. Sed an elitr omnes. An impedit fabellas cum, vel eu persius mentitum pericula. Rationibus incorrupte pro cu, cu nec minim ridens intellegebat. Vix ne ullum dolorem volumus, purto quaestio deterruisset sit ex.<br />\r\n<br />\r\nEius velit at ius, id nobis ponderum recusabo usu. Ex praesent accusamus consequat per, torquatos adolescens qui no, nam omnes repudiare constituto ne. Ut vim viderer discere pertinax, stet mucius probatus mea te. Vim nulla dicunt euripidis et.</p>\r\n', '23232', '232323', 'Sự lên ngôi của bếp từ trong căn bếp Việt', 'Không chỉ tuyệt vời về hiệu quả sử dụng, bếp từ còn rất được...', '<p><strong>Vì&nbsp;sao bếp gas bị thất thế?</strong></p>\r\n\r\n<p>Còn nhớ vụ nổ gas cách đây không lâu tại phố Tạ Quang Bửu khiến hai cháu bé bị tử vong rất thương tâm, bố và mẹ bị thương nặng. Chính vì lẽ đó mà không ít người e dè khi lựa chọn bếp gas để sử dụng.</p>\r\n\r\n<p>Anh Hoàng Vũ Linh (Đống Đa &ndash; Hà Nội) cho hay: &ldquo;Vụ nổ khí gas vừa rồi thật kinh khủng quá. Gia đình tôi cũng sử dụng gas để nấu nướng nhưng không hay thường xuyên kiểm tra xem dây dẫn gas, van gas có an toàn không, đã bị hư hại gì chưa. Nhưng sau lần này thì tôi sẽ thường xuyên gọi thợ tới kiểm tra hơn để đảm bảo an toàn khi sử dụng&rdquo;.</p>\r\n\r\n<p><a href="http://bep.vn/upload/editor/images/bep-ga-bep-tu.jpg" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 1"><img alt="Hình ảnh Sự lên ngôi của bếp từ trong căn bếp Việt số 1" src="http://bep.vn/upload/editor/images/bep-ga-bep-tu.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; max-width:100%; vertical-align:middle" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 1" /></a></p>\r\n\r\n<p><em>Nhiều người tiêu dùng e ngại tính an toàn của bếp gas</em></p>\r\n\r\n<p>Chính vì những &ldquo;ẩn họa&rdquo; khôn lường của bếp gas mà không ít gia đình đã loại nó ra khỏi danh mục những đồ dùng trong nhà bếp. Chị Trần Hoàng Ngân (Từ Liêm &ndash; Hà Nội) chia sẻ: &ldquo;Sau một vài vụ cháy nổ do gas gây ra, gia đình tôi đã quyết định không sử dụng loại bếp này nữa, chuyển sang sử dụng loại bếp khác an toàn hơn để tránh những rủi ro đáng tiếc có thể xảy ra&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Và sự lên ngôi của bếp từ</strong></p>\r\n\r\n<p>Chẳng có gì lạ khi người tiêu dùng quay lưng lại với bếp gas và &ldquo;sính&rdquo; sử dụng&nbsp;<a href="http://bep.vn/bep-tu" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank"><strong>bếp từ</strong></a>&nbsp;bởi sự an toàn, tiết kiệm và đẹp sang trọng của nó.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với cơ chế làm trực tiếp phần thức ăn bên trong nồi nên hiệu suất sử dụng của bếp từ rất cao lên tới 90%, cao hơn rất nhiều so với bếp gas và bếp điện. Chính vì vậy mà thời gian nấu ăn của bạn sẽ được rút ngắn hơn và chi phí phải bỏ ra cho công việc nấu nướng cũng tiết kiệm hơn. &nbsp;</p>\r\n\r\n<p><a href="http://bep.vn/upload/editor/images/bep-ga-bep-tu-1.jpg" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 2"><img alt="Hình ảnh Sự lên ngôi của bếp từ trong căn bếp Việt số 2" src="http://bep.vn/upload/editor/images/bep-ga-bep-tu-1.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; max-width:100%; vertical-align:middle" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 2" /></a></p>\r\n\r\n<p><em>Sự lên ngôi của bếp từ</em></p>\r\n\r\n<p>Không chỉ tuyệt vời về hiệu quả sử dụng, bếp từ còn rất được lòng các bà nội trợ bởi thiết kế đẹp mắt, sang trọng và hiện đại của nó. Hơn nữa, bếp từ rất dễ sử dụng (thông qua các nút điều khiển), tính năng đa dạng lại an toàn với cả trẻ em và người lớn nếu vô tình chạm phải mặt bếp trong khi đang nấu, nó không gây bỏng rát bởi mặt bếp luôn mát trong suốt quá trình sử dụng.</p>\r\n\r\n<p>Hiện nay có rất nhiều chủng loại&nbsp;<a href="http://bep.vn/bep-dien-tu" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank">bếp điện</a>,&nbsp;bếp từ của rất nhiều hang khác nhau, người tiêu dùng nên lựa chọn những loại bếp của các thương hiệu uy tín để đảm bảo an toàn và chất lượng khi sử dụng.&nbsp;</p>\r\n\r\n<p>Nếu bạn còn đang băn khoăn không biết nên lựa chọn loại bếp nào cho phù hợp với &ldquo;túi tiền&rdquo; và không gian bếp nhà mình, còn chần chừ gì nữa mà không đến với&nbsp;<strong>Bep.vn&nbsp;</strong>tại&nbsp;địa chỉ 406 Xã Đàn, Đống Đa, Hà Nội. Tại đây, bạn sẽ nhận được những lời tư vấn xác đáng từ những tư vấn viên chuyên nghiệp của chúng tôi, chắc chắn bạn sẽ dễ dàng chọn được cho gia đình một sản phẩm bếp từ ưng ý.</p>\r\n\r\n<p>Tại&nbsp;<strong>Bep.vn</strong>, chúng tôi&nbsp;cung cấp các sản phẩm bếp từ, bếp điện từ, bếp điện,&nbsp;<a href="http://bep.vn/lo-nuong" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank">lò nướng</a>, lò vi sóng, máy hút mùi, máy rửa bát và các sản phẩm gia dụng khác chính hãng với chất lượng tốt nhất trên thị trường hiện nay.</p>\r\n\r\n<p><strong>Thông tin liên hệ:</strong></p>\r\n\r\n<p>Công ty TNHH Xây Dựng và Dịch Vụ Anh Tú<br />\r\nSố 406 Phố Xã Đàn - Đống Đa - Hà Nội &nbsp;(Đường Kim Liên Mới)<br />\r\nTel : 04 35738480&nbsp;<br />\r\nEmail :&nbsp;info@bep.vn<br />\r\nWebsite:&nbsp;<a href="http://bep.vn/" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank">http://bep.vn</a></p>\r\n', '', '', 0, '14894105881_BecomePartner1.jpg', 1, 1, 2),
(3, 'Free Ecommerce Teeee22', 'Lorem ipsum dolor sit amet, ea eum exerci utroque liberavisse, vis in solet verear numquam, eam an soluta detracto. Eius aliquip nominati usu no, dico doctus convenire ut eam. Pro ad nisl esse iusto, case paulo tacimates pro ei. In viris habemus blandit per. Usu officiis petentium argumentum at, novum dicit consequuntur pro ei.', '<span style="line-height:20.8px">Lorem ipsum dolor sit amet, ea eum exerci utroque liberavisse, vis in solet verear numquam, eam an soluta detracto. Eius aliquip nominati usu no, dico doctus convenire ut eam. Pro ad nisl esse iusto, case paulo tacimates pro ei. In viris habemus blandit per. Usu officiis petentium argumentum at, novum dicit consequuntur pro ei.</span><br />\r\n<br />\r\n<span style="line-height:20.8px">Nonumy altera antiopam vim no, no sed meis pericula. No aperiri oporteat mei, sea et movet nobis utroque. Habemus electram te nec, id ubique semper discere eos, aliquid voluptaria ad per. Quo accusam luptatum apeirian an. Sensibus vituperata est cu. Ad cum adhuc appareat, eam no nemore tincidunt, ius oporteat torquatos posidonium et.</span><br />\r\n<br />\r\n<span style="line-height:20.8px">Ex eum nusquam iudicabit reformidans, essent delenit eu eos. His alia feugait voluptatum ei, an vidisse aperiri legimus qui. Lorem saepe eripuit quo in, id vidisse democritum vituperata has. Ea tation nominati suavitate sea, error constituam ad nec, ea integre luptatum erroribus has. Quem libris his et, menandri sapientem sed ei, vix possit voluptua rationibus eu. At pro civibus voluptua, quod illud aliquam vel te, eu vel mediocrem referrentur. Vocibus accommodare pri in, ea sed noluisse imperdiet.</span><br />\r\n<br />\r\n<span style="line-height:20.8px">Ius impetus nostrum adipisci eu, et indoctum posidonium pri, mei denique disputationi no. Sed an elitr omnes. An impedit fabellas cum, vel eu persius mentitum pericula. Rationibus incorrupte pro cu, cu nec minim ridens intellegebat. Vix ne ullum dolorem volumus, purto quaestio deterruisset sit ex.</span><br />\r\n<br />\r\n<span style="line-height:20.8px">Eius velit at ius, id nobis ponderum recusabo usu. Ex praesent accusamus consequat per, torquatos adolescens qui no, nam omnes repudiare constituto ne. Ut vim viderer discere pertinax, stet mucius probatus mea te. Vim nulla dicunt euripidis et.</span>', 'tertret', 'tretret', '', '', '', '', '', 0, '14894105881_BecomePartner1.jpg', 1, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
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
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `feature`, `price`, `storey`, `beds`, `landWidth`, `price_reduce`, `in_stock`, `condition`, `brand_id`, `detail`, `content`, `teach`, `video`, `meta_keyword`, `meta_description`, `manual`, `e_manual`, `promotion`, `e_promotion`, `e_title`, `e_feature`, `e_detail`, `e_content`, `e_teach`, `e_meta_keyword`, `e_meta_description`, `pd_option`, `lnk`, `e_lnk`, `pId`, `active`, `home`, `ind`) VALUES
(175, 'BIẾN TẦN YASKAWA F7', '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Biến tần Yaskawa F7</strong> là dòng biến tần cao cấp, tích hợp sẵn chế độ điều khiển tự động điều hướng động cơ (auto tuning), tĩnh và động. Là dòng biến tần duy nhất tại Nhật Bản đạt chuẩn RoHS<br />\r\n<br />\r\n&nbsp;</span></span>', NULL, 0, 0, 0, NULL, 0, 0, 0, '<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Nguồn cấp: 3 pha 200VAC / 3 pha 400VAC</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Tần số: 50-60Hz (&plusmn;5%)</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Công suất: 0.4 &ndash; 300kw</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Phương pháp điều khiển: V/f, véc tơ vòng hở cho động cơ đồng bộ</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Mô men khởi động: 150%/3Hz (điều khiển V/f), 100%/5% tốc độ (điều khiển véc tơ vòng hở)</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Khả năng quá tải: 120% trong 60 giây</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Chức năng tự động dò tốc độ động cơ khi mất nguồn không sử dụng cảm biến tốc độ</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Chức năng KEB giữ động cơ hoạt động ổn định khi mất nguồn dùng động năng tái sinh</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Tích hợp sẵn bộ điều khiển PID và cổng truyền thông RS422/RS485.</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Các tính năng đặc biệt cho bơm quạt: thiết lập cho các ứng dụng bơm quạt cài đặt trước, khả năng phát hiện sự cố mô men cao hoặc thấp, giữ động cơ hoạt động ngay cả khi mất tín hiệu cài đặt tần số, giám sát công suất và điện năng tiêu thụ.</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Thiết bị mở rộng:</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Hỗ trợ các chuẩn truyền thông RS422/RS485, mechatrolink II, CC-link, Devicenet, Profibus-DP, CANopen, Lonworks</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Bộ lọc sóng hài và cải thiện hệ số công suất xoay chiều, một chiều</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Ứng dụng:</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Quạt, bơm, máy ép, băng tải, xe lăn, xe cáp, máy trục hàng, máy ly tâm.</span>', '', '', '', 'BIẾN TẦN YASKAWA F7', 'BIẾN TẦN YASKAWA F7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 1, 4),
(181, 'SERVO MOTOR', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '<span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Servo motor 100W</strong></span></span></span>\r\n<ul>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Công suất ra: 100W, 0.32N.m</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tốc độ định mức: 3000 vòng/phút</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tốc độ tức thời cực đại: 5000 vòng/phút</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Momen xoắn cực đại: 0.45</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Quán tính rotor: 2.5 &times; 10&minus;6 (kg.m2)</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Sử dụng được cho tải quán tính: 30 lần quán tính của rotor</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Quán tính hãm: 2 &times; 10-7 (kg.m2)</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Ma sát tĩnh: 0.29 min. (N.m)</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tuổi thọ hãm: 10,000,000 lần tối thiểu</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Cấp cách điện: Type B</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Cấu trúc: Kín, tự làm mát</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Cấp bảo vệ: IP65</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Cấp chịu rung: V-15</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Lắp đặt: Flange-mounting</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tiêu chuẩn: EC, UL CSA</strong></span></span></span></li>\r\n</ul>\r\n', '', '', '', 'SERVO MOTOR', 'SERVO MOTOR', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, 1, 0, 5),
(183, 'SERVO JUNMA YASKAWA', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><strong>Servopack: SGDV</strong><br />\r\n1/3 AC 230V, 50/60Hz, +10%/-15%, 0,05kW &ndash; 1,5kW<br />\r\n3 AC 380V &ndash; 480V, 50/60Hz, +10%/-15%, 0,5kW &ndash; 15kW<br />\r\n<br />\r\n<strong>Servomotor: SGMAV, SGMEV, SGMGV, SGMJV, SGMSV</strong><br />\r\n3 AC 230V, 3000min-1, 0,159Nm &ndash; 2,39Nm, 50W &ndash; 1.5kW<br />\r\n3 AC 400V, 1500min-1, 1,96Nm &ndash; 28,4Nm, 0,3kW &ndash; 15kW<br />\r\n3 AC 400V, 3000min-1, 0,637Nm &ndash; 22,3Nm, 200kW &ndash; 7kW</span></span>', '', '', '', 'SERVO JUNMA YASKAWA', 'SERVO JUNMA YASKAWA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 1),
(184, 'SERVO YASKAWA', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>SERVO YASKAWA</strong></span></span></p>\r\n\r\n<ul>\r\n	<li><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Độ phân giải vượt trội đến 1.6Khz.</span></span></li>\r\n	<li><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp; Tự động dò tìm theo thời gian thực nhằm điều khiển tải phù hợp.</span></span></li>\r\n	<li><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp; Giảm thiểu rung động cho tải.</span></span></li>\r\n	<li><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp; Chức năng tự động dò tìm tiên tiến</span></span></li>\r\n	<li><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp; Điều khiển truyền động chính xác cao nhất.</span></span></li>\r\n	<li><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp; Servopack: SGDV</span></span></li>\r\n</ul>\r\n\r\n<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">1/3 AC 230V, 50/60Hz, +10%/-15%, 0,05kW &ndash; 1,5kW<br />\r\n3 AC 380V &ndash; 480V, 50/60Hz, +10%/-15%, 0,5kW &ndash; 15kW<br />\r\n<br />\r\n<strong>Servomotor: SGMAV, SGMEV, SGMGV, SGMJV, SGMSV</strong><br />\r\n3 AC 230V, 3000min-1, 0,159Nm &ndash; 2,39Nm, 50W &ndash; 1.5kW<br />\r\n3 AC 400V, 1500min-1, 1,96Nm &ndash; 28,4Nm, 0,3kW &ndash; 15kW<br />\r\n3 AC 400V, 3000min-1, 0,637Nm &ndash; 22,3Nm, 200kW &ndash; 7kW</span></span></p>\r\n', '', '', '', 'SERVO YASKAWA', 'SERVO YASKAWA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 1, 5),
(185, 'BIẾN TẦN YASKAWA A1000', '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Dòng biến tần YASKAWA A1000 là dòng biến tần đa năng,cách lắp đặt và cài đặt tham số đơn giản,cung cấp hệ thống điều khiển cơ bản cho động cơ không đồng bộ 3 pha rotor lồng sóc với giải công xuất từ 0.4kw- 630kw<br />\r\nLà biến tần duy nhất Nhật Bản đạt tiêu chuẩn môi trường<br />\r\nCông xuất : 3P &nbsp; 200-240V/50Hz : 0.4 &ndash; 110kw<br />\r\n3P: 380-480V/50Hz : 0.4 - 630kw<br />\r\nSai số nguồn cấp cho phép : Điện áp + 10%,-15% ; Tần số : &plusmn; 5%<br />\r\nKhả năng quá tải : 120% trong vòng 60s với tải thường,150% trong vòng 60s với tải nặng.<br />\r\nPhương pháp điều kiển động cơ : Điều khiển V/f,V/f với PG ( Pluse Generrato &ndash; máy phát xung ),vector vòng hở,vector vòng kín với PG,vector vòng hở cho PM ( Permanent &ndash;Động cơ nam châm vĩnh cửu ),vector vòng kín cho PM.<br />\r\nHãm 1 chiều cho toàn dải công xuất,tích hợp mạch điều khiển hãm động năng biến tần 30kw<br />\r\nMôi trường làm viêc : Nhiệt độ : -10 -50Oc,độ ẩm : &lt; 95%,độ cao &lt; 1000m<br />\r\nTiêu chuẩn bảo vệ IP00,IP20,ỊP4<br />\r\nThiết bị mở rộng : mạch phản hồi tốc độ Encoder,mạch kế nối Proﬁbus-DP, Lonwork,Mechatrolink,CANopen,Devvicenet,CC-link</span></span>', NULL, 0, 0, 0, NULL, 0, 0, 0, '', '', '', '', 'BIẾN TẦN YASKAWA A1000', 'BIẾN TẦN YASKAWA A1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 3),
(186, 'BIẾN TẦN YASKAWA V1000', '<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><strong>Biến tần YASKAWA V1000</strong> chuyên dùng cho các ứng dụng tải năng, phức tạp<br />\r\nPhần mềm ( CranSoftware ) với các tham số dành riêng cho ứng dụng cẩu trục chuyên biệt.<br />\r\nLà biến tần duy nhất Nhật bản đạt tiêu chuần về môi trường<br />\r\nCông xuất : 3P &nbsp; 200-240V/50Hz : 0.1 &ndash; 15kw 3P &nbsp; 380-480V/50Hz : 0.2 &ndash; 15kw<br />\r\nTần số ra : 0 &ndash; 400Hz<br />\r\nKhả năng quá tải 150% trong vòng 60s<br />\r\nDải điều khiển : 0-10V,4-20Ma<br />\r\nChức năng vận hành : điều khiển đa tốc độ,phanh DC trong quá trình tăng,điều khiển PID,AVR,tự động Reset khi có lỗi,kế nối truyền thông 485<br />\r\nTiêu chuẩn bảo vệ : IP 20<br />\r\nThiết bị mở rộng : mạch phản hồi tốc độ Encoder,mạch kế nối Proﬁbus-DP, &nbsp;Lonwork,Mechatrolink,CANopen,Devvicenet,CC-link</span></span>', NULL, 0, 0, 0, NULL, 0, 0, 0, '', '', '', '', 'BIẾN TẦN YASKAWA V1000', 'BIẾN TẦN YASKAWA V1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 1, 2),
(187, 'BIẾN TẦN YASKAWA J1000', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Dòng biến tần YASKAWA J1000 là dòng biến tần tiện dụng, cách lắp đặt và cài đặt đơn giản, có thiết kế nhỏ gọn,phù hợp cho lắp đặt công xuất nhỏ,yêu cầu thẩm mỹ cao, khả năng chịu tải lớn<br />\r\nLà biến tần duy nhất tại Nhật Bản đạt tiêu chuẩn quốc tế về môi trường.<br />\r\nCông xuất : 3P &nbsp; 200V-240V / 50Hz &nbsp; : 0.2-5.5kw<br />\r\nCông xuất : 3P &nbsp; 380V-480V / 50Hz &nbsp; &nbsp;: 0.4-5.5kw<br />\r\nGiải tần số ra : 0-1500Hz<br />\r\nKhả năng quá tải 150% trong vòng 60s,200% trong vòng 0.5s<br />\r\nMô men khởi động 200% tại 0.5Hz<br />\r\nDải điều khiển từ : 0-10v,4-20Ma<br />\r\nTần số song mang lên tới 15Khz<br />\r\nChức năng vận hành : điều khiển đa tốc độ,phanh DC trong quá trình tăng,điều khiển PID,AVR,tự động Reset khi có lỗi,kế nối truyền thông 485<br />\r\nBảo vệ quá áp,quá tải,nhiệt độ quá cao,lỗi CPU,&hellip;<br />\r\nTiêu chuẩn bảo vệ : IP 20<br />\r\nThiết bị mở rộng : mạch phản hồi tốc độ Encoder,mạch kế nối Proﬁbus-DP, Lonwork,Mechatrolink,CANopen,Devvicenet,CC-link</span></span>', '', '', '', 'BIẾN TẦN YASKAWA J1000', 'BIẾN TẦN YASKAWA J1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 1, 1),
(216, 'Ezi-Servo ', '<span style="line-height:1"><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><strong>Motor + Encoder + Drive<br />\r\nFast Response&nbsp; / Closed Loop System / High Torque / No Gain Tuning.</strong></span></span></span>', NULL, 0, 0, 0, NULL, 0, 0, 0, '', '', '', '', 'Ezi-Servo ', 'Ezi-Servo ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, 1, 0, 1),
(217, 'BỘ ĐIỀU KHIỂN TỤ BÙ  DUCATI', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '', '', '', '', 'BỘ ĐIỀU KHIỂN TỤ BÙ  DUCATI', 'BỘ ĐIỀU KHIỂN TỤ BÙ  DUCATI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 15, 1, 0, 1),
(218, 'TỤ BÙ SAMWHA', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '', '', '', '', 'TỤ BÙ SAMWHA', 'TỤ BÙ SAMWHA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 15, 1, 0, 2),
(219, 'SERVO JUMMA YASKAWA', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '<p><span style="font-family:arial,helvetica,sans-serif"><span style="line-height:1"><span style="font-size:14px"><strong>Servopack: SGDV<br />\r\n1/3 AC 230V, 50/60Hz, +10%/-15%, 0,05kW &ndash; 1,5kW<br />\r\n3 AC 380V &ndash; 480V, 50/60Hz, +10%/-15%, 0,5kW &ndash; 15kW</strong></span></span></span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif"><span style="line-height:1"><span style="font-size:14px"><strong>&nbsp;Servomotor: SGMAV, SGMEV, SGMGV, SGMJV, SGMSV<br />\r\n3 AC 230V, 3000min-1, 0,159Nm &ndash; 2,39Nm, 50W &ndash; 1.5kW<br />\r\n3 AC 400V, 1500min-1, 1,96Nm &ndash; 28,4Nm, 0,3kW &ndash; 15kW<br />\r\n3 AC 400V, 3000min-1, 0,637Nm &ndash; 22,3Nm, 200kW &ndash; 7kW</strong></span></span></span></p>\r\n', '', '', '', 'SERVO JUMMA YASKAWA', 'SERVO JUMMA YASKAWA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 1),
(220, 'SERVO YASKAWA', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '<ul>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Độ phân giải vượt trội đến 1.6Khz.</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Tự động dò tìm theo thời gian thực nhằm điều khiển tải phù hợp.</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Giảm thiểu rung động cho tải.</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Chức năng tự động dò tìm tiên tiến</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Điều khiển truyền động chính xác cao nhất.</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Servopack: SGDV<br />\r\n	1/3 AC 230V, 50/60Hz, +10%/-15%, 0,05kW &ndash; 1,5kW<br />\r\n	3 AC 380V &ndash; 480V, 50/60Hz, +10%/-15%, 0,5kW &ndash; 15kW</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Servomotor: SGMAV, SGMEV, SGMGV, SGMJV, SGMSV<br />\r\n	3 AC 230V, 3000min-1, 0,159Nm &ndash; 2,39Nm, 50W &ndash; 1.5kW<br />\r\n	3 AC 400V, 1500min-1, 1,96Nm &ndash; 28,4Nm, 0,3kW &ndash; 15kW<br />\r\n	3 AC 400V, 3000min-1, 0,637Nm &ndash; 22,3Nm, 200kW &ndash; 7kW</span></span></span></strong></li>\r\n</ul>\r\n', '', '', '', 'SERVO YASKAWA', 'SERVO YASKAWA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 5),
(221, 'INVERTER YASKAWA SERRI A1000', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '<span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>-&nbsp;&nbsp; &nbsp;Dòng biến tần A1000 là dòng biến tần đa năng,cách lắp đặt và cài đặt tham số đơn giản,cung cấp hệ thống điều khiển cơ bản cho động cơ không đồng bộ 3 pha rotor lồng sóc với giải công xuất từ 0.4kw- 630kw<br />\r\n-&nbsp;&nbsp; &nbsp;Là biến tần duy nhất Nhật Bản đạt tiêu chuẩn môi trường<br />\r\n-&nbsp;&nbsp; &nbsp;Công xuất : 3P &nbsp; 200-240V/50Hz : 0.4 &ndash; 110kw<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3P &nbsp; 380-480V/50Hz : 0.4 - 630kw<br />\r\n-&nbsp;&nbsp; &nbsp;Sai số nguồn cấp cho phép : Điện áp + 10%,-15% ; Tần số : &plusmn; 5%<br />\r\n-&nbsp;&nbsp; &nbsp;Khả năng quá tải : 120% trong vòng 60s với tải thường,150% trong vòng 60s với tải nặng.<br />\r\n-&nbsp;&nbsp; &nbsp;Phương pháp điều kiển động cơ : Điều khiển V/f,V/f với PG ( Pluse Generrato &ndash; máy phát xung ),vector vòng hở,vector vòng kín với PG,vector vòng hở cho PM ( Permanent &ndash;Động cơ nam châm vĩnh cửu ),vector vòng kín cho PM.<br />\r\n-&nbsp;&nbsp; &nbsp;Hãm 1 chiều cho toàn dải công xuất,tích hợp mạch điều khiển hãm động năng biến tần 30kw<br />\r\n-&nbsp;&nbsp; &nbsp;Môi trường làm viêc : Nhiệt độ : -10 -50Oc,độ ẩm : &lt; 95%,độ cao &lt; 1000m<br />\r\n-&nbsp;&nbsp; &nbsp;Tiêu chuẩn bảo vệ IP00,IP20,ỊP4<br />\r\n-&nbsp;&nbsp; &nbsp; Thiết bị mở rộng : mạch phản hồi tốc độ Encoder,mạch kế nối Profibus-DP,Lonwork,Mechatrolink,CANopen,Devvicenet,CC-link</strong></span></span></span><br />\r\n', '', '', '', 'INVERTER YASKAWA SERRI A1000', 'INVERTER YASKAWA SERRI A1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 6),
(222, 'Inverter Yaskawa Serri V1000', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '<ul>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Chuyên dung cho các ứng dụng tải năng,phức tạp</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Phần mềm ( CranSoftware ) với các tham số dành riêng cho ứng dụng cẩu trục chuyên biệt.</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Là biến tần duy nhất Nhật bản đạt tiêu chuần về môi trường</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Công xuất : 3P&nbsp;&nbsp; 200-240V/50Hz : 0.1 &ndash; 15kw</span></span></span></strong></li>\r\n</ul>\r\n<strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3P&nbsp;&nbsp; 380-480V/50Hz : 0.2 &ndash; 15kw</span></span></span></strong>\r\n\r\n<ul>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Tần số ra : 0 &ndash; 400Hz</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Khả năng quá tải 150% trong vòng 60s</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Dải điều khiển : 0-10V,4-20Ma</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Chức năng vận hành : điều khiển đa tốc độ,phanh DC trong quá trình tăng,điều khiển PID,AVR,tự động Reset khi có lỗi,kế nối truyền thông 485</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Tiêu chuẩn bảo vệ : IP 20</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Thiết bị mở rộng : mạch phản hồi tốc độ Encoder,mạch kế nối Profibus-DP,Lonwork,Mechatrolink,CANopen,Devvicenet,CC-link</span></span></span></strong></li>\r\n</ul>\r\n', '', '', '', 'Inverter Yaskawa Serri V1000', 'Inverter Yaskawa Serri V1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 7),
(223, 'Inverter Yaskawa Serri J1000', '', 2000000, 0, 0, 0, 1000000, 0, 0, 0, '<strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Inverter Yaskawa Serri J1000</span></span></span></strong>\r\n<ul>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Dòng biến tần J1000 là dòng biến tần tiện dụng,cách lắp đặt và cài đặt đơn giản,có thiết kế nhỏ gọn,phù hợp cho lắp đặt công xuất nhỏ,yêu cầu thẩm mỹ cao,khả năng chịu tải lớn</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Là biến tần duy nhất tại Nhật Bản đạt tiêu chuẩn quốc tế về môi trường.</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Công xuất : 3P&nbsp;&nbsp; 200V-240V / 50Hz&nbsp;&nbsp; : 0.2-5.5kw</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Công xuất : 3P&nbsp;&nbsp; 380V-480V / 50Hz&nbsp;&nbsp;&nbsp; : 0.4-5.5kw</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Giải tần số ra : 0-1500Hz</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Khả năng quá tải 150% trong vòng 60s,200% trong vòng 0.5s</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Mô men khởi động 200% tại 0.5Hz</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Dải điều khiển từ : 0-10v,4-20Ma</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Tần số song mang lên tới 15Khz</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Chức năng vận hành : điều khiển đa tốc độ,phanh DC trong quá trình tăng,điều khiển PID,AVR,tự động Reset khi có lỗi,kế nối truyền thông 485</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Bảo vệ quá áp,quá tải,nhiệt độ quá cao,lỗi CPU,&hellip;</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Tiêu chuẩn bảo vệ : IP 20</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Thiết bị mở rộng : mạch phản hồi tốc độ Encoder,mạch kế nối Profibus-DP,Lonwork,Mechatrolink,CANopen,Devvicenet,CC-link</span></span></span></strong></li>\r\n</ul>\r\n', '', '', '', 'Inverter Yaskawa Serri J1000', 'Inverter Yaskawa Serri J1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 8),
(226, 'BỘ ĐẾM', '', 100000, 1, 5, 4, NULL, 0, 0, 0, '<span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Bộ đếm đa năng 1 trạng thái, kích thước 72 x 72mm</strong></span></span></span>\r\n<ul>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Nguồn cấp: 100-240VAC</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chế độ hoạt động: 1-stage preset counter, total and preset counter *1 (lưạ chọn)</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Hiển thị negative transmissive&nbsp;LCD, 6 số, -99,999 ~ 999,999</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chọn màu hiển thị</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Ngõ vào NPN/PNP và cảm biến 2-dây</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chọn chế độ ngõ vào: Increment, decrement, command (UP/DOWN A), individual (UP/DOWN B), quadrature (UP/DOWN C)</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Ngõ ra: Rơle và NPN</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chọn&nbsp;chế độ ngõ ra:&nbsp;N, F, C, R, K-1, P, Q, A, K-2, D, L</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Ngõ ra tác động nhanh: 0.01 ~ 99.99s</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chức năng đếm: 1-stage counter / 1-stage counter with total counter</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tốc độ: 30Hz / 5kHz</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Có nguồn cho thiết bị ngoài: 12VDC, 100mA&nbsp;</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tiêu chuẩn: UL, CSA, EN, CE. IP54&nbsp;</strong></span></span></span></li>\r\n</ul>\r\n', '', '', '', 'BỘ ĐẾM', 'BỘ ĐẾM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 17, 1, 0, 14);

-- --------------------------------------------------------

--
-- Table structure for table `product_cate`
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
-- Dumping data for table `product_cate`
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
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `pId` int(11) NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`id`, `img`, `pId`, `ind`, `active`) VALUES
(178, '1489410322total-building-solutions-key-visual-large.jpg', 175, 1, 1),
(184, '1489410322total-building-solutions-key-visual-large.jpg', 181, 1, 1),
(186, '1489410322total-building-solutions-key-visual-large.jpg', 183, 1, 1),
(187, '1489410322total-building-solutions-key-visual-large.jpg', 184, 2, 1),
(188, '1489410322total-building-solutions-key-visual-large.jpg', 185, 3, 1),
(189, '1489410322total-building-solutions-key-visual-large.jpg', 186, 4, 1),
(190, '1489410322total-building-solutions-key-visual-large.jpg', 187, 6, 1),
(224, '1489410322total-building-solutions-key-visual-large.jpg', 216, 1, 1),
(225, '1489410322total-building-solutions-key-visual-large.jpg', 217, 1, 1),
(226, '1489410322total-building-solutions-key-visual-large.jpg', 218, 2, 1),
(227, '1489410322total-building-solutions-key-visual-large.jpg', 219, 1, 1),
(228, '1489410322total-building-solutions-key-visual-large.jpg', 220, 5, 1),
(229, '1489410322total-building-solutions-key-visual-large.jpg', 221, 6, 1),
(230, '1489410322total-building-solutions-key-visual-large.jpg', 222, 7, 1),
(231, '1489410322total-building-solutions-key-visual-large.jpg', 223, 9, 1),
(233, '1489410322total-building-solutions-key-visual-large.jpg', 226, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `qtext`
--

CREATE TABLE `qtext` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `e_title` text NOT NULL,
  `content` longtext NOT NULL,
  `e_content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qtext`
--

INSERT INTO `qtext` (`id`, `title`, `e_title`, `content`, `e_content`) VALUES
(2, 'Hotline', '', '0963 907 282', ''),
(3, 'Liên hệ', '', '<span style="color:#008000"><strong><img alt="" src="/file/ckfinder/userfiles/images/03-01-2017%205-04-15%20CH.png" style="height:131px; width:380px" /><br />\r\nCÔNG TY TNHH KỸ THUẬT TỰ ĐỘNG&nbsp;THÁI BÌNH</strong><br />\r\n<strong>NHÀ CUNG CẤP CÁC THIẾT BỊ TỰ ĐỘNG HÓA TRONG CÔNG NGHIỆP</strong></span><br />\r\n<span style="font-size:14px"><strong>MST : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0312 953 329&nbsp;</strong><br />\r\n<strong>Địa Chỉ: &nbsp; &nbsp; &nbsp; &nbsp; 566/12 Điện Biên Phủ, Phường 22, Quận Bình Thạnh,&nbsp;Tp. HCM<br />\r\nĐiện Thoại: &nbsp; 0912 907 282<br />\r\nFax: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;08.62 945 256</strong><br />\r\n<strong>Email: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;sale.thaibinh@gmail.com<br />\r\nWebsite: &nbsp; &nbsp; &nbsp; &nbsp;thaibinhauto.com</strong></span><br />\r\n&nbsp;', ''),
(4, 'Footer', '', '<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="color:rgb(0, 128, 0)"><strong>CÔNG TY TRÁCH NHIỆM HỮU HẠN&nbsp;KỸ THUẬT TỰ ĐỘNG THÁI BÌNH</strong></span><br />\r\n<strong>MST : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0312 953 329&nbsp;</strong><br />\r\n<strong>Địa Chỉ: &nbsp; &nbsp; &nbsp; &nbsp; </strong>566/12 Điện Biên Phủ, Phường 22, Quận Bình Thạnh,&nbsp;Tp. HCM<br />\r\n<strong>Điện Thoại: &nbsp; (84-8) 62 945 255 - Hotline: <span style="color:#FFF0F5">0963 907 282</span><br />\r\nFax: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;(84-8) 62 945 256</strong><br />\r\n<strong>Email: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;info@thaibinhauto.com<br />\r\nWebsite: &nbsp; &nbsp; &nbsp; &nbsp;thaibinhauto.com</strong></span></span></span>', ''),
(5, 'Header Text', '', '343435556', ''),
(6, 'build indicator', '', 'se YouTube to improve your English pronunciation. With more than 15M tracks, YouGlish gives you fast, unbiased answers about how English is spoken by real people and in context.', ''),
(7, 'about indicator', '', 'English Conversation Exercise - Is Rachel Stressed? Ben Franklin ', ''),
(8, 'sell summary', '', 'Making Plans - English Conversation - Ben Franklin Exercise', ''),
(9, 'Concierge summary', '', ' how American speak. Notice all the reductions! Today\'s Topic: discussing plans.', ''),
(10, 'buy sum', '', 'Unlike many other buyers advocates who work on a commission bas', '');

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE `sell` (
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
-- Dumping data for table `sell`
--

INSERT INTO `sell` (`id`, `title`, `feature`, `price`, `storey`, `beds`, `landWidth`, `price_reduce`, `in_stock`, `condition`, `brand_id`, `detail`, `content`, `teach`, `video`, `meta_keyword`, `meta_description`, `manual`, `e_manual`, `promotion`, `e_promotion`, `e_title`, `e_feature`, `e_detail`, `e_content`, `e_teach`, `e_meta_keyword`, `e_meta_description`, `pd_option`, `lnk`, `e_lnk`, `pId`, `active`, `home`, `ind`) VALUES
(175, 'BIẾN TẦN YASKAWA F7', '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Biến tần Yaskawa F7</strong> là dòng biến tần cao cấp, tích hợp sẵn chế độ điều khiển tự động điều hướng động cơ (auto tuning), tĩnh và động. Là dòng biến tần duy nhất tại Nhật Bản đạt chuẩn RoHS<br />\r\n<br />\r\n&nbsp;</span></span>', NULL, 0, 0, 0, NULL, 0, 0, 0, '<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Nguồn cấp: 3 pha 200VAC / 3 pha 400VAC</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Tần số: 50-60Hz (&plusmn;5%)</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Công suất: 0.4 &ndash; 300kw</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Phương pháp điều khiển: V/f, véc tơ vòng hở cho động cơ đồng bộ</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Mô men khởi động: 150%/3Hz (điều khiển V/f), 100%/5% tốc độ (điều khiển véc tơ vòng hở)</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Khả năng quá tải: 120% trong 60 giây</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Chức năng tự động dò tốc độ động cơ khi mất nguồn không sử dụng cảm biến tốc độ</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Chức năng KEB giữ động cơ hoạt động ổn định khi mất nguồn dùng động năng tái sinh</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Tích hợp sẵn bộ điều khiển PID và cổng truyền thông RS422/RS485.</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Các tính năng đặc biệt cho bơm quạt: thiết lập cho các ứng dụng bơm quạt cài đặt trước, khả năng phát hiện sự cố mô men cao hoặc thấp, giữ động cơ hoạt động ngay cả khi mất tín hiệu cài đặt tần số, giám sát công suất và điện năng tiêu thụ.</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Thiết bị mở rộng:</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Hỗ trợ các chuẩn truyền thông RS422/RS485, mechatrolink II, CC-link, Devicenet, Profibus-DP, CANopen, Lonworks</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Bộ lọc sóng hài và cải thiện hệ số công suất xoay chiều, một chiều</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Ứng dụng:</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Quạt, bơm, máy ép, băng tải, xe lăn, xe cáp, máy trục hàng, máy ly tâm.</span>', '', '', '', 'BIẾN TẦN YASKAWA F7', 'BIẾN TẦN YASKAWA F7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 1, 4),
(181, 'SERVO MOTOR', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '<span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Servo motor 100W</strong></span></span></span>\r\n<ul>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Công suất ra: 100W, 0.32N.m</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tốc độ định mức: 3000 vòng/phút</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tốc độ tức thời cực đại: 5000 vòng/phút</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Momen xoắn cực đại: 0.45</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Quán tính rotor: 2.5 &times; 10&minus;6 (kg.m2)</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Sử dụng được cho tải quán tính: 30 lần quán tính của rotor</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Quán tính hãm: 2 &times; 10-7 (kg.m2)</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Ma sát tĩnh: 0.29 min. (N.m)</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tuổi thọ hãm: 10,000,000 lần tối thiểu</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Cấp cách điện: Type B</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Cấu trúc: Kín, tự làm mát</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Cấp bảo vệ: IP65</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Cấp chịu rung: V-15</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Lắp đặt: Flange-mounting</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tiêu chuẩn: EC, UL CSA</strong></span></span></span></li>\r\n</ul>\r\n', '', '', '', 'SERVO MOTOR', 'SERVO MOTOR', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, 1, 0, 5),
(183, 'SERVO JUNMA YASKAWA', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><strong>Servopack: SGDV</strong><br />\r\n1/3 AC 230V, 50/60Hz, +10%/-15%, 0,05kW &ndash; 1,5kW<br />\r\n3 AC 380V &ndash; 480V, 50/60Hz, +10%/-15%, 0,5kW &ndash; 15kW<br />\r\n<br />\r\n<strong>Servomotor: SGMAV, SGMEV, SGMGV, SGMJV, SGMSV</strong><br />\r\n3 AC 230V, 3000min-1, 0,159Nm &ndash; 2,39Nm, 50W &ndash; 1.5kW<br />\r\n3 AC 400V, 1500min-1, 1,96Nm &ndash; 28,4Nm, 0,3kW &ndash; 15kW<br />\r\n3 AC 400V, 3000min-1, 0,637Nm &ndash; 22,3Nm, 200kW &ndash; 7kW</span></span>', '', '', '', 'SERVO JUNMA YASKAWA', 'SERVO JUNMA YASKAWA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 1),
(184, 'SERVO YASKAWA', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>SERVO YASKAWA</strong></span></span></p>\r\n\r\n<ul>\r\n	<li><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Độ phân giải vượt trội đến 1.6Khz.</span></span></li>\r\n	<li><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp; Tự động dò tìm theo thời gian thực nhằm điều khiển tải phù hợp.</span></span></li>\r\n	<li><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp; Giảm thiểu rung động cho tải.</span></span></li>\r\n	<li><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp; Chức năng tự động dò tìm tiên tiến</span></span></li>\r\n	<li><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp; Điều khiển truyền động chính xác cao nhất.</span></span></li>\r\n	<li><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp; Servopack: SGDV</span></span></li>\r\n</ul>\r\n\r\n<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">1/3 AC 230V, 50/60Hz, +10%/-15%, 0,05kW &ndash; 1,5kW<br />\r\n3 AC 380V &ndash; 480V, 50/60Hz, +10%/-15%, 0,5kW &ndash; 15kW<br />\r\n<br />\r\n<strong>Servomotor: SGMAV, SGMEV, SGMGV, SGMJV, SGMSV</strong><br />\r\n3 AC 230V, 3000min-1, 0,159Nm &ndash; 2,39Nm, 50W &ndash; 1.5kW<br />\r\n3 AC 400V, 1500min-1, 1,96Nm &ndash; 28,4Nm, 0,3kW &ndash; 15kW<br />\r\n3 AC 400V, 3000min-1, 0,637Nm &ndash; 22,3Nm, 200kW &ndash; 7kW</span></span></p>\r\n', '', '', '', 'SERVO YASKAWA', 'SERVO YASKAWA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 1, 5),
(185, 'BIẾN TẦN YASKAWA A1000', '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Dòng biến tần YASKAWA A1000 là dòng biến tần đa năng,cách lắp đặt và cài đặt tham số đơn giản,cung cấp hệ thống điều khiển cơ bản cho động cơ không đồng bộ 3 pha rotor lồng sóc với giải công xuất từ 0.4kw- 630kw<br />\r\nLà biến tần duy nhất Nhật Bản đạt tiêu chuẩn môi trường<br />\r\nCông xuất : 3P &nbsp; 200-240V/50Hz : 0.4 &ndash; 110kw<br />\r\n3P: 380-480V/50Hz : 0.4 - 630kw<br />\r\nSai số nguồn cấp cho phép : Điện áp + 10%,-15% ; Tần số : &plusmn; 5%<br />\r\nKhả năng quá tải : 120% trong vòng 60s với tải thường,150% trong vòng 60s với tải nặng.<br />\r\nPhương pháp điều kiển động cơ : Điều khiển V/f,V/f với PG ( Pluse Generrato &ndash; máy phát xung ),vector vòng hở,vector vòng kín với PG,vector vòng hở cho PM ( Permanent &ndash;Động cơ nam châm vĩnh cửu ),vector vòng kín cho PM.<br />\r\nHãm 1 chiều cho toàn dải công xuất,tích hợp mạch điều khiển hãm động năng biến tần 30kw<br />\r\nMôi trường làm viêc : Nhiệt độ : -10 -50Oc,độ ẩm : &lt; 95%,độ cao &lt; 1000m<br />\r\nTiêu chuẩn bảo vệ IP00,IP20,ỊP4<br />\r\nThiết bị mở rộng : mạch phản hồi tốc độ Encoder,mạch kế nối Proﬁbus-DP, Lonwork,Mechatrolink,CANopen,Devvicenet,CC-link</span></span>', NULL, 0, 0, 0, NULL, 0, 0, 0, '', '', '', '', 'BIẾN TẦN YASKAWA A1000', 'BIẾN TẦN YASKAWA A1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 3),
(186, 'BIẾN TẦN YASKAWA V1000', '<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><strong>Biến tần YASKAWA V1000</strong> chuyên dùng cho các ứng dụng tải năng, phức tạp<br />\r\nPhần mềm ( CranSoftware ) với các tham số dành riêng cho ứng dụng cẩu trục chuyên biệt.<br />\r\nLà biến tần duy nhất Nhật bản đạt tiêu chuần về môi trường<br />\r\nCông xuất : 3P &nbsp; 200-240V/50Hz : 0.1 &ndash; 15kw 3P &nbsp; 380-480V/50Hz : 0.2 &ndash; 15kw<br />\r\nTần số ra : 0 &ndash; 400Hz<br />\r\nKhả năng quá tải 150% trong vòng 60s<br />\r\nDải điều khiển : 0-10V,4-20Ma<br />\r\nChức năng vận hành : điều khiển đa tốc độ,phanh DC trong quá trình tăng,điều khiển PID,AVR,tự động Reset khi có lỗi,kế nối truyền thông 485<br />\r\nTiêu chuẩn bảo vệ : IP 20<br />\r\nThiết bị mở rộng : mạch phản hồi tốc độ Encoder,mạch kế nối Proﬁbus-DP, &nbsp;Lonwork,Mechatrolink,CANopen,Devvicenet,CC-link</span></span>', NULL, 0, 0, 0, NULL, 0, 0, 0, '', '', '', '', 'BIẾN TẦN YASKAWA V1000', 'BIẾN TẦN YASKAWA V1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 1, 2),
(187, 'BIẾN TẦN YASKAWA J1000', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Dòng biến tần YASKAWA J1000 là dòng biến tần tiện dụng, cách lắp đặt và cài đặt đơn giản, có thiết kế nhỏ gọn,phù hợp cho lắp đặt công xuất nhỏ,yêu cầu thẩm mỹ cao, khả năng chịu tải lớn<br />\r\nLà biến tần duy nhất tại Nhật Bản đạt tiêu chuẩn quốc tế về môi trường.<br />\r\nCông xuất : 3P &nbsp; 200V-240V / 50Hz &nbsp; : 0.2-5.5kw<br />\r\nCông xuất : 3P &nbsp; 380V-480V / 50Hz &nbsp; &nbsp;: 0.4-5.5kw<br />\r\nGiải tần số ra : 0-1500Hz<br />\r\nKhả năng quá tải 150% trong vòng 60s,200% trong vòng 0.5s<br />\r\nMô men khởi động 200% tại 0.5Hz<br />\r\nDải điều khiển từ : 0-10v,4-20Ma<br />\r\nTần số song mang lên tới 15Khz<br />\r\nChức năng vận hành : điều khiển đa tốc độ,phanh DC trong quá trình tăng,điều khiển PID,AVR,tự động Reset khi có lỗi,kế nối truyền thông 485<br />\r\nBảo vệ quá áp,quá tải,nhiệt độ quá cao,lỗi CPU,&hellip;<br />\r\nTiêu chuẩn bảo vệ : IP 20<br />\r\nThiết bị mở rộng : mạch phản hồi tốc độ Encoder,mạch kế nối Proﬁbus-DP, Lonwork,Mechatrolink,CANopen,Devvicenet,CC-link</span></span>', '', '', '', 'BIẾN TẦN YASKAWA J1000', 'BIẾN TẦN YASKAWA J1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 1, 1),
(216, 'Ezi-Servo ', '<span style="line-height:1"><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><strong>Motor + Encoder + Drive<br />\r\nFast Response&nbsp; / Closed Loop System / High Torque / No Gain Tuning.</strong></span></span></span>', NULL, 0, 0, 0, NULL, 0, 0, 0, '', '', '', '', 'Ezi-Servo ', 'Ezi-Servo ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, 1, 0, 1),
(217, 'BỘ ĐIỀU KsssdHIỂN TỤ BÙ  DUCATI', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 'BỘ ĐIỀU KHIỂN TỤ BÙ  DUCATI', 'BỘ ĐIỀU KHIỂN TỤ BÙ  DUCATI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 1),
(218, 'TỤ BÙ SAMWHA', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '', '', '', '', 'TỤ BÙ SAMWHA', 'TỤ BÙ SAMWHA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 15, 1, 0, 2),
(219, 'SERVO JUMMA YASKAWA', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '<p><span style="font-family:arial,helvetica,sans-serif"><span style="line-height:1"><span style="font-size:14px"><strong>Servopack: SGDV<br />\r\n1/3 AC 230V, 50/60Hz, +10%/-15%, 0,05kW &ndash; 1,5kW<br />\r\n3 AC 380V &ndash; 480V, 50/60Hz, +10%/-15%, 0,5kW &ndash; 15kW</strong></span></span></span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif"><span style="line-height:1"><span style="font-size:14px"><strong>&nbsp;Servomotor: SGMAV, SGMEV, SGMGV, SGMJV, SGMSV<br />\r\n3 AC 230V, 3000min-1, 0,159Nm &ndash; 2,39Nm, 50W &ndash; 1.5kW<br />\r\n3 AC 400V, 1500min-1, 1,96Nm &ndash; 28,4Nm, 0,3kW &ndash; 15kW<br />\r\n3 AC 400V, 3000min-1, 0,637Nm &ndash; 22,3Nm, 200kW &ndash; 7kW</strong></span></span></span></p>\r\n', '', '', '', 'SERVO JUMMA YASKAWA', 'SERVO JUMMA YASKAWA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 1),
(220, 'SERVO YASKAWA', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '<ul>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Độ phân giải vượt trội đến 1.6Khz.</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Tự động dò tìm theo thời gian thực nhằm điều khiển tải phù hợp.</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Giảm thiểu rung động cho tải.</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Chức năng tự động dò tìm tiên tiến</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Điều khiển truyền động chính xác cao nhất.</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Servopack: SGDV<br />\r\n	1/3 AC 230V, 50/60Hz, +10%/-15%, 0,05kW &ndash; 1,5kW<br />\r\n	3 AC 380V &ndash; 480V, 50/60Hz, +10%/-15%, 0,5kW &ndash; 15kW</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Servomotor: SGMAV, SGMEV, SGMGV, SGMJV, SGMSV<br />\r\n	3 AC 230V, 3000min-1, 0,159Nm &ndash; 2,39Nm, 50W &ndash; 1.5kW<br />\r\n	3 AC 400V, 1500min-1, 1,96Nm &ndash; 28,4Nm, 0,3kW &ndash; 15kW<br />\r\n	3 AC 400V, 3000min-1, 0,637Nm &ndash; 22,3Nm, 200kW &ndash; 7kW</span></span></span></strong></li>\r\n</ul>\r\n', '', '', '', 'SERVO YASKAWA', 'SERVO YASKAWA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 5),
(221, 'INVERTER YASKAWA SERRI A1000', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '<span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>-&nbsp;&nbsp; &nbsp;Dòng biến tần A1000 là dòng biến tần đa năng,cách lắp đặt và cài đặt tham số đơn giản,cung cấp hệ thống điều khiển cơ bản cho động cơ không đồng bộ 3 pha rotor lồng sóc với giải công xuất từ 0.4kw- 630kw<br />\r\n-&nbsp;&nbsp; &nbsp;Là biến tần duy nhất Nhật Bản đạt tiêu chuẩn môi trường<br />\r\n-&nbsp;&nbsp; &nbsp;Công xuất : 3P &nbsp; 200-240V/50Hz : 0.4 &ndash; 110kw<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3P &nbsp; 380-480V/50Hz : 0.4 - 630kw<br />\r\n-&nbsp;&nbsp; &nbsp;Sai số nguồn cấp cho phép : Điện áp + 10%,-15% ; Tần số : &plusmn; 5%<br />\r\n-&nbsp;&nbsp; &nbsp;Khả năng quá tải : 120% trong vòng 60s với tải thường,150% trong vòng 60s với tải nặng.<br />\r\n-&nbsp;&nbsp; &nbsp;Phương pháp điều kiển động cơ : Điều khiển V/f,V/f với PG ( Pluse Generrato &ndash; máy phát xung ),vector vòng hở,vector vòng kín với PG,vector vòng hở cho PM ( Permanent &ndash;Động cơ nam châm vĩnh cửu ),vector vòng kín cho PM.<br />\r\n-&nbsp;&nbsp; &nbsp;Hãm 1 chiều cho toàn dải công xuất,tích hợp mạch điều khiển hãm động năng biến tần 30kw<br />\r\n-&nbsp;&nbsp; &nbsp;Môi trường làm viêc : Nhiệt độ : -10 -50Oc,độ ẩm : &lt; 95%,độ cao &lt; 1000m<br />\r\n-&nbsp;&nbsp; &nbsp;Tiêu chuẩn bảo vệ IP00,IP20,ỊP4<br />\r\n-&nbsp;&nbsp; &nbsp; Thiết bị mở rộng : mạch phản hồi tốc độ Encoder,mạch kế nối Profibus-DP,Lonwork,Mechatrolink,CANopen,Devvicenet,CC-link</strong></span></span></span><br />\r\n', '', '', '', 'INVERTER YASKAWA SERRI A1000', 'INVERTER YASKAWA SERRI A1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 6),
(222, 'Inverter Yaskawa Serri V1000', '', NULL, 0, 0, 0, NULL, 0, 0, 0, '<ul>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Chuyên dung cho các ứng dụng tải năng,phức tạp</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Phần mềm ( CranSoftware ) với các tham số dành riêng cho ứng dụng cẩu trục chuyên biệt.</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Là biến tần duy nhất Nhật bản đạt tiêu chuần về môi trường</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Công xuất : 3P&nbsp;&nbsp; 200-240V/50Hz : 0.1 &ndash; 15kw</span></span></span></strong></li>\r\n</ul>\r\n<strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3P&nbsp;&nbsp; 380-480V/50Hz : 0.2 &ndash; 15kw</span></span></span></strong>\r\n\r\n<ul>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Tần số ra : 0 &ndash; 400Hz</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Khả năng quá tải 150% trong vòng 60s</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Dải điều khiển : 0-10V,4-20Ma</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Chức năng vận hành : điều khiển đa tốc độ,phanh DC trong quá trình tăng,điều khiển PID,AVR,tự động Reset khi có lỗi,kế nối truyền thông 485</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Tiêu chuẩn bảo vệ : IP 20</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Thiết bị mở rộng : mạch phản hồi tốc độ Encoder,mạch kế nối Profibus-DP,Lonwork,Mechatrolink,CANopen,Devvicenet,CC-link</span></span></span></strong></li>\r\n</ul>\r\n', '', '', '', 'Inverter Yaskawa Serri V1000', 'Inverter Yaskawa Serri V1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 7),
(223, 'Inverter Yaskawa Serri J1000', '', 2000000, 0, 0, 0, 1000000, 0, 0, 0, '<strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Inverter Yaskawa Serri J1000</span></span></span></strong>\r\n<ul>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Dòng biến tần J1000 là dòng biến tần tiện dụng,cách lắp đặt và cài đặt đơn giản,có thiết kế nhỏ gọn,phù hợp cho lắp đặt công xuất nhỏ,yêu cầu thẩm mỹ cao,khả năng chịu tải lớn</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Là biến tần duy nhất tại Nhật Bản đạt tiêu chuẩn quốc tế về môi trường.</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Công xuất : 3P&nbsp;&nbsp; 200V-240V / 50Hz&nbsp;&nbsp; : 0.2-5.5kw</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Công xuất : 3P&nbsp;&nbsp; 380V-480V / 50Hz&nbsp;&nbsp;&nbsp; : 0.4-5.5kw</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Giải tần số ra : 0-1500Hz</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Khả năng quá tải 150% trong vòng 60s,200% trong vòng 0.5s</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Mô men khởi động 200% tại 0.5Hz</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Dải điều khiển từ : 0-10v,4-20Ma</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Tần số song mang lên tới 15Khz</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Chức năng vận hành : điều khiển đa tốc độ,phanh DC trong quá trình tăng,điều khiển PID,AVR,tự động Reset khi có lỗi,kế nối truyền thông 485</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Bảo vệ quá áp,quá tải,nhiệt độ quá cao,lỗi CPU,&hellip;</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Tiêu chuẩn bảo vệ : IP 20</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Thiết bị mở rộng : mạch phản hồi tốc độ Encoder,mạch kế nối Profibus-DP,Lonwork,Mechatrolink,CANopen,Devvicenet,CC-link</span></span></span></strong></li>\r\n</ul>\r\n', '', '', '', 'Inverter Yaskawa Serri J1000', 'Inverter Yaskawa Serri J1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 8),
(226, 'BỘ ĐẾM', '', 100000, 0, 0, 0, 0, 0, 0, 0, '<span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Bộ đếm đa năng 1 trạng thái, kích thước 72 x 72mm</strong></span></span></span>\r\n<ul>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Nguồn cấp: 100-240VAC</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chế độ hoạt động: 1-stage preset counter, total and preset counter *1 (lưạ chọn)</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Hiển thị negative transmissive&nbsp;LCD, 6 số, -99,999 ~ 999,999</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chọn màu hiển thị</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Ngõ vào NPN/PNP và cảm biến 2-dây</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chọn chế độ ngõ vào: Increment, decrement, command (UP/DOWN A), individual (UP/DOWN B), quadrature (UP/DOWN C)</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Ngõ ra: Rơle và NPN</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chọn&nbsp;chế độ ngõ ra:&nbsp;N, F, C, R, K-1, P, Q, A, K-2, D, L</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Ngõ ra tác động nhanh: 0.01 ~ 99.99s</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chức năng đếm: 1-stage counter / 1-stage counter with total counter</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tốc độ: 30Hz / 5kHz</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Có nguồn cho thiết bị ngoài: 12VDC, 100mA&nbsp;</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tiêu chuẩn: UL, CSA, EN, CE. IP54&nbsp;</strong></span></span></span></li>\r\n</ul>\r\n', '', '', '', 'BỘ ĐẾM', 'BỘ ĐẾM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 17, 1, 0, 14);

-- --------------------------------------------------------

--
-- Table structure for table `sell_cate`
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
-- Dumping data for table `sell_cate`
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
-- Table structure for table `sell_image`
--

CREATE TABLE `sell_image` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `pId` int(11) NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sell_image`
--

INSERT INTO `sell_image` (`id`, `img`, `pId`, `ind`, `active`) VALUES
(178, '1489410322total-building-solutions-key-visual-large.jpg', 175, 1, 1),
(184, '1489410322total-building-solutions-key-visual-large.jpg', 181, 1, 1),
(186, '1489410322total-building-solutions-key-visual-large.jpg', 183, 1, 1),
(187, '1489410322total-building-solutions-key-visual-large.jpg', 184, 2, 1),
(188, '1489410322total-building-solutions-key-visual-large.jpg', 185, 3, 1),
(189, '1489410322total-building-solutions-key-visual-large.jpg', 186, 4, 1),
(190, '1489410322total-building-solutions-key-visual-large.jpg', 187, 6, 1),
(224, '1489410322total-building-solutions-key-visual-large.jpg', 216, 1, 1),
(225, '1489410322total-building-solutions-key-visual-large.jpg', 217, 1, 1),
(226, '1489410322total-building-solutions-key-visual-large.jpg', 218, 2, 1),
(227, '1489410322total-building-solutions-key-visual-large.jpg', 219, 1, 1),
(228, '1489410322total-building-solutions-key-visual-large.jpg', 220, 5, 1),
(229, '1489410322total-building-solutions-key-visual-large.jpg', 221, 6, 1),
(230, '1489410322total-building-solutions-key-visual-large.jpg', 222, 7, 1),
(231, '1489410322total-building-solutions-key-visual-large.jpg', 223, 9, 1),
(233, '1489410322total-building-solutions-key-visual-large.jpg', 226, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `session_id` varchar(255) NOT NULL,
  `last_visit` datetime NOT NULL DEFAULT '2017-01-03 00:00:00'
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
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `e_title`, `sum`, `e_sum`, `img`, `lnk`, `e_lnk`, `ind`, `active`) VALUES
(7, 'You can also turn on', '', 'Learn the difference in pronunciation between A and O vowel sounds in English. Hear the difference between words like cat, sack, and caps', '', '1482802266z545205850373_9510fc44fe245b44d94d86c8b20889a8.jpg', '', '', 1, 1),
(8, 'Learning English Video3', '', 'English environments, high and low level Business English lesson plans.3', '', '1482802276z545205868441_ede69b610d86f3f2d746469c938a094b.jpg', '', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vs_counter`
--

CREATE TABLE `vs_counter` (
  `hit_counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vs_counter`
--

INSERT INTO `vs_counter` (`hit_counter`) VALUES
(201);

-- --------------------------------------------------------

--
-- Table structure for table `vs_detail`
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
-- Dumping data for table `vs_detail`
--

INSERT INTO `vs_detail` (`id`, `vs_ip`, `vs_city`, `vs_browser`, `vs_os`, `vs_id`, `vs_flag`, `dates`) VALUES
(197, 'unknown', 'unknown', 'Chrome', 'Windows 10', 'q3picm50498e0473oiv91b5rr0', 0, '2017-03-03 14:47:29'),
(198, 'unknown', 'unknown', 'Chrome', 'Windows 10', 'r2l8v18nh4e2jlonpg9bl3sht1', 1, '2017-03-03 15:39:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `ad_user`
--
ALTER TABLE `ad_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_config`
--
ALTER TABLE `basic_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `buy_cate`
--
ALTER TABLE `buy_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buy_image`
--
ALTER TABLE `buy_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_id` (`cart_id`);

--
-- Indexes for table `concierge`
--
ALTER TABLE `concierge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner_detail`
--
ALTER TABLE `partner_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `product_cate`
--
ALTER TABLE `product_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `qtext`
--
ALTER TABLE `qtext`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `sell_cate`
--
ALTER TABLE `sell_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sell_image`
--
ALTER TABLE `sell_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vs_detail`
--
ALTER TABLE `vs_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ad_user`
--
ALTER TABLE `ad_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `basic_config`
--
ALTER TABLE `basic_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `buy`
--
ALTER TABLE `buy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT for table `buy_cate`
--
ALTER TABLE `buy_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `buy_image`
--
ALTER TABLE `buy_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `cart_detail`
--
ALTER TABLE `cart_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `concierge`
--
ALTER TABLE `concierge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `partner_detail`
--
ALTER TABLE `partner_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT for table `product_cate`
--
ALTER TABLE `product_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;
--
-- AUTO_INCREMENT for table `qtext`
--
ALTER TABLE `qtext`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `sell`
--
ALTER TABLE `sell`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT for table `sell_cate`
--
ALTER TABLE `sell_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `sell_image`
--
ALTER TABLE `sell_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `vs_detail`
--
ALTER TABLE `vs_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `buy_image`
--
ALTER TABLE `buy_image`
  ADD CONSTRAINT `buy_image_ibfk_1` FOREIGN KEY (`pId`) REFERENCES `buy` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `product_image_ibfk_1` FOREIGN KEY (`pId`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sell_image`
--
ALTER TABLE `sell_image`
  ADD CONSTRAINT `sell_image_ibfk_1` FOREIGN KEY (`pId`) REFERENCES `sell` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
