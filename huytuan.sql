-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2018 at 08:11 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `huytuan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbl_banner`
--

INSERT INTO `tbl_banner` (`id`, `title`, `image`, `active`) VALUES
(6, 'Banner 1', '01_Preview5.jpg', 1),
(7, 'Banner 2', 'sl3.jpg', 1),
(8, 'Banner 3', 'slideshow_2.jpg', 1),
(9, 'Banner 4', 'slideshow_3.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `content`) VALUES
(7, 'Áo thu đông', 'Áo thu đông'),
(8, 'Thời trang công sở', 'Thời trang công sở'),
(9, 'Thời trang hè', 'Thời trang hè');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL,
  `namemember` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_oder`
--

CREATE TABLE `tbl_oder` (
  `id` int(11) UNSIGNED NOT NULL,
  `diachi` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL,
  `tongtien` float NOT NULL,
  `tenkhachhang` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `note` varchar(500) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `hinhthuc` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tinhtrang` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `tbl_oder`
--

INSERT INTO `tbl_oder` (`id`, `diachi`, `tongtien`, `tenkhachhang`, `email`, `phone`, `note`, `hinhthuc`, `tinhtrang`) VALUES
(1, 'Hà Nội', 120000, 'Vũ Đình Tuân', 'vudinhtuan@gmail.com', '0358850515', 'Hà Nội', 'thanh toán tại nhà', 'Thành công'),
(2, 'Hà Nội', 5260000, 'Vũ Đình Tuân', 'vudinhtuan242@gmail.', '0356918488', '11111', 'Thanh toán tại cửa hàng', 'Chờ duyệt'),
(3, 'Hà Nội', 2400000, 'Vũ Đình Tuân', 'minhduc171190@gmail.', '0356918488', '1111111', 'Thanh toán tại cửa hàng', 'Đang vận chuyển'),
(5, 'Hà Nội', 64080000, 'Vũ Đình Tuân', 'vudinhtuan242@gmail.', '0356918488', 'XXXXXX', 'Thanh toán tại cửa hàng', 'Chờ duyệt'),
(6, 'ngõ 185, chùa láng, đống đa, hà nội', 120000, 'Nông Hải Yến', 'yentuan348@gmail.com', '0397959961', 'Chuyển vào chủ nhật', 'Thanh toán tại nhà', 'Đang vận chuyển'),
(7, 'Hà Nội', 120000, 'Vũ Đình Tuân', 'vudinhtuan242@gmail.', '0358850511', 'Note nè', 'Thanh toán tại cửa hàng', 'Chờ duyệt'),
(8, 'Hà Nội', 120000, 'Vũ Đình Tuân', 'vudinhtuan242@gmail.', '0358850515', 'Note nè hihi', 'Thanh toán tại cửa hàng', 'Đang vận chuyển');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_oder_detail`
--

CREATE TABLE `tbl_oder_detail` (
  `maOder` int(10) UNSIGNED NOT NULL,
  `idproduct` int(10) UNSIGNED NOT NULL,
  `soluong` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_oder_detail`
--

INSERT INTO `tbl_oder_detail` (`maOder`, `idproduct`, `soluong`) VALUES
(1, 8, 3),
(2, 8, 19),
(2, 7, 9),
(3, 7, 14),
(3, 19, 6),
(4, 7, 13),
(4, 12, 13),
(5, 12, 32),
(5, 19, 14),
(5, 14, 14),
(6, 7, 1),
(7, 19, 1),
(8, 19, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `title`, `content`, `image`) VALUES
(4, 'Louis Hà – Thế hệ Instagram của sân chơi thời trang', '<p>[Tạp ch&iacute; Ph&aacute;i đẹp ELLE &ndash; số th&aacute;ng 11/2018] Louis H&agrave; (H&agrave; Mỹ Ng&acirc;n) sở hữu 98,7 ngh&igrave;n lượt theo d&otilde;i tr&ecirc;n Instagram kh&ocirc;ng phải v&igrave; giọng h&aacute;t, diễn xuất hay &ldquo;ch&acirc;n d&agrave;i&rdquo;, m&agrave; v&igrave; thời trang. H&agrave; mặc đồ c&aacute; t&iacute;nh v&agrave; chụp ảnh ngẫu hứng, phong c&aacute;ch của c&ocirc; tr&ecirc;n mạng x&atilde; hội khiến giới trẻ m&ecirc; mẩn.</p>\r\n\r\n<p>T&ocirc;i hẹn Louis H&agrave; tại một qu&aacute;n c&agrave; ph&ecirc; tr&ecirc;n lầu một chung cư cũ đường Đồng Khởi. H&agrave; đến đ&uacute;ng giờ v&agrave; gọi một chai bia lạnh. Cuộc tr&ograve; chuyện bắt đầu từ chuyện uống bia. H&agrave; kh&ocirc;ng uống qu&aacute; nhiều nhưng th&iacute;ch loại đồ uống n&agrave;y.</p>\r\n\r\n<h3>&ldquo;EM KH&Ocirc;NG PHẢI L&Agrave; FASHIONISTA!&rdquo;</h3>\r\n\r\n<p>Lời b&agrave;i h&aacute;t &ldquo;They Said&rdquo;: &ldquo;Nghe n&oacute;i em chỉ ra đường khi trời sắp tối&hellip;&rdquo; c&oacute; đ&uacute;ng với H&agrave; kh&ocirc;ng?</p>\r\n\r\n<p>Kh&ocirc;ng chị, em ngủ sớm v&agrave; dậy sớm. V&igrave; sống ở quận 2 n&ecirc;n muốn thức khuya cũng kh&oacute;. 9 giờ tối ngo&agrave;i đường đ&atilde; thấy vắng. Mọi thứ y&ecirc;n tĩnh, tiếng c&ocirc;n tr&ugrave;ng k&ecirc;u&hellip; ngủ rất ngon.</p>\r\n\r\n<p><a href=\"https://www.elle.vn/wp-content/uploads/2018/11/06/elle-viet-nam-louis-ha-1.jpg\"><img alt=\"Louis Hà 1\" src=\"https://www.elle.vn/wp-content/uploads/2018/11/06/elle-viet-nam-louis-ha-1.jpg\" style=\"height:930px; width:753px\" /></a></p>\r\n\r\n<p>Những g&oacute;c nh&igrave;n kh&aacute;c, những cảm x&uacute;c thật về cuộc sống với thời trang.</p>\r\n\r\n<p>Danh xưng n&agrave;o hiện giờ l&agrave; ph&ugrave; hợp với H&agrave; nhất: fashionista hay l&agrave; g&igrave;?</p>\r\n\r\n<p>Em kh&ocirc;ng biết nữa. Em kh&ocirc;ng phải l&agrave; một&nbsp;<a href=\"https://www.elle.vn/xu-huong-thoi-trang/cau-chuyen-thanh-cong-tui-ket-hat-cuom\">h&igrave;nh mẫu fashionista</a>, cũng chẳng phải KOL [PV: key opinion leader]. Em kh&ocirc;ng cần nổi tiếng, chỉ muốn truyền cảm hứng cho những ai c&ugrave;ng sở th&iacute;ch.</p>\r\n\r\n<p>C&oacute; rất nhiều người theo d&otilde;i Louis H&agrave; tr&ecirc;n mạng x&atilde; hội, họ th&iacute;ch phong c&aacute;ch Louis H&agrave;. Điều n&agrave;y c&oacute; thể gi&uacute;p bạn c&oacute; c&ocirc;ng việc th&uacute; vị hoặc cơ hội mới mẻ, tại sao lại kh&ocirc;ng nhỉ?</p>\r\n\r\n<p>Instagram của em nhiều &ldquo;follower&rdquo; nhưng khi mọi người b&igrave;nh luận hoặc hỏi g&igrave; đ&oacute; dưới mỗi bức ảnh, em thường &iacute;t khi trả lời. Đ&oacute; chỉ l&agrave; v&igrave; em lười, v&agrave; cũng kh&ocirc;ng biết n&oacute;i g&igrave;. V&agrave; một người như vậy c&oacute; lẽ kh&oacute; l&agrave;m KOL lắm. Em cũng từng nhận lời hợp t&aacute;c với nh&atilde;n h&agrave;ng nhưng khi được y&ecirc;u cầu phải l&agrave;m theo sự sắp đặt, em cảm thấy kh&ocirc;ng c&ograve;n l&agrave; m&igrave;nh nữa. H&igrave;nh mẫu fashionista c&oacute; lẽ&hellip; ph&ugrave; hợp với người kh&aacute;c hơn.</p>\r\n\r\n<p><a href=\"https://www.elle.vn/wp-content/uploads/2018/11/06/elle-viet-nam-louis-ha-2.jpg\"><img alt=\"Louis Hà 2\" src=\"https://www.elle.vn/wp-content/uploads/2018/11/06/elle-viet-nam-louis-ha-2.jpg\" style=\"height:682px; width:1023px\" /></a></p>\r\n\r\n<p><a href=\"https://www.elle.vn/wp-content/uploads/2018/11/06/elle-viet-nam-louis-ha-3.jpg\"><img alt=\"Louis Hà 3\" src=\"https://www.elle.vn/wp-content/uploads/2018/11/06/elle-viet-nam-louis-ha-3.jpg\" style=\"height:627px; width:1115px\" /></a></p>\r\n\r\n<p>Điều g&igrave; v&agrave; ai đ&oacute; ảnh hưởng đến bạn nhất?</p>\r\n\r\n<p>Đ&oacute; l&agrave; phim, l&agrave; nhạc. Louis H&agrave; chịu ảnh hưởng bởi rất nhiều phim nước ngo&agrave;i, những bộ phim&nbsp;c&oacute; nội dung hay, m&agrave;u sắc, cảnh quay đẹp v&agrave; quần &aacute;o th&igrave; thật &ldquo;chất&rdquo;, phần lớn l&agrave; phim xưa. Em th&iacute;ch phim&nbsp;<em>Lolita, Blue Velvet, Người trong giang hồ</em>&hellip; H&igrave;nh ảnh từ phim ảnh hưởng đến&nbsp;<a href=\"https://www.elle.vn/sao-style/cap-doi-hollywood-phong-cach-thoi-trang\">phong c&aacute;ch thời trang</a>của em. Em sẽ th&iacute;ch chọn trang phục như c&aacute;c nh&acirc;n vật trong phim.</p>\r\n\r\n<p>C&ocirc;ng việc n&agrave;o hiện tại chiếm nhiều thời gian của Louis H&agrave;?</p>\r\n\r\n<p>Em kh&ocirc;ng &eacute;p m&igrave;nh phải sống như thế n&agrave;o, l&agrave;m g&igrave; để vui l&agrave; được. Hiện giờ em chia sẻ sở th&iacute;ch thời trang với mọi người qua một cửa h&agrave;ng thời trang nhỏ. Đồ b&aacute;n l&agrave; những lựa chọn theo cảm nhận xu hướng của bản th&acirc;n. Em cũng c&oacute; thực hiện ý tưởng cho c&aacute;c bộ ảnh thời trang, sản xuất h&igrave;nh ảnh với những g&igrave; ph&ugrave; hợp sở trường. Thời gian gần đ&acirc;y em c&oacute; hợp t&aacute;c với Quỳnh Anh Shyn trong vai tr&ograve; stylist cho phong c&aacute;ch du lịch v&agrave; đời thường.</p>\r\n\r\n<p><a href=\"https://www.elle.vn/wp-content/uploads/2018/11/06/elle-viet-nam-louis-ha-4.jpg\"><img alt=\"Louis Hà 4\" src=\"https://www.elle.vn/wp-content/uploads/2018/11/06/elle-viet-nam-louis-ha-4.jpg\" style=\"height:993px; width:730px\" /></a></p>\r\n\r\n<p><a href=\"https://www.elle.vn/wp-content/uploads/2018/11/06/elle-viet-nam-louis-ha-5.jpg\"><img alt=\"Louis Hà 5\" src=\"https://www.elle.vn/wp-content/uploads/2018/11/06/elle-viet-nam-louis-ha-5.jpg\" style=\"height:856px; width:814px\" /></a></p>\r\n\r\n<p>Nhưng chắc l&agrave; tương lai H&agrave; sẽ c&oacute; thương hiệu ri&ecirc;ng do m&igrave;nh thiết kế chứ?</p>\r\n\r\n<p>Em sẽ c&oacute; thương hiệu thời trang ri&ecirc;ng nhưng em kh&ocirc;ng l&agrave;m NTK. C&oacute; thể em sẽ hợp t&aacute;c c&ugrave;ng một người kh&aacute;c để thiết kế lại ý tưởng của m&igrave;nh.</p>\r\n', 'elle-viet-nam-louis-ha-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `content` text COLLATE utf8_vietnamese_ci,
  `image` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `mota` text COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `title`, `content`, `image`, `mota`) VALUES
(3, 'Về chúng tôi', '<p><strong><img alt=\"\" src=\"http://biluxury.vn/media/Tin%20tuc/1%20resize.jpg\" style=\"height:480px; width:845px\" /></strong>&nbsp;</p>\r\n\r\n<p><strong>TẦM NHÌN</strong></p>\r\n\r\n<ul>\r\n	<li>Trở thành thương hiệu thời trang nam hàng đầu được giới trẻ tin dùng</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>SỨ MỆNH</strong></p>\r\n\r\n<ul>\r\n	<li>Biluxury ra đời để hoàn thành sứ mệnh đáp ứng được cho khách hàng sự hài lòng&nbsp; về chất lượng sản phẩm,dịch vụ bán hàng và đặc biệt là một không gian thời trang được cập nhật xu hướng mới nhất trên thế giới.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>GIÁ TRỊ CỐT LÕI</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Hàng hóa đa dạng:&nbsp;Biluxury đem đến những sản phẩm thiết yếu và cập nhật xu hướng thời trang - đáp ứng tối đa nhu cầu của khách hàng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Giá cả đồng hành cùng chất lượng:&nbsp;Giá bán sản phẩm tại Biluxury luôn được kiểm soát để phù hợp, xứng đáng là địa điểm mua sắm đáng tin cậy và đem lại nhiều giá trị cho khách hàng, đồng thời thể hiện vị thế cạnh tranh so với thị trường.</p>\r\n	</li>\r\n	<li>\r\n	<p>Dịch vụ chuyên nghiệp và tận tâm:&nbsp;Biluxury luôn có nhiều chương trình ưu đãi và dịch vụ hấp dẫn được thiết kế riêng dành cho khách hàng. Đến với Biluxury, khách hàng sẽ luôn được phục vụ tận tình bởi đội ngũ nhân viên tận tâm, nhiệt huyết, được trải nghiệm và tận hưởng các sản phẩm mới trong không gian hiện đại, sang trọng</p>\r\n\r\n	<p>Hệ thống phân phối rộng khắp:&nbsp;Mạng lưới showroom, đại lý nhượng quyền trải rộng ngay tại các khu dân cư, cùng không gian mua sắm được thiết kế và bài trí khoa học, tiện lợi.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>TRIẾT LÝ KINH DOANH</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Với khách hàng:&nbsp;</strong>BILUXURY luôn quan tâm đến lợi ích của khách hàng và không ngừng mở rộng hệ thống phân phối để đáp ứng tốt nhất nhu cầu của khách hàng: nhanh nhất, tiện lợi nhất, chất lượng tốt nhất, giá rẻ nhất.&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Với đối tác:&nbsp;</strong>BILUXURY luôn đưa ra mức chiết khấu tốt nhất và ngày càng có các mức chiết khấu tốt hơn&nbsp; cho đối tác của mình, với phương châm hợp tác đôi bên cùng có lợi, cùng tiến bước đi lên.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Với nhân viên:&nbsp;</strong>BILUXURY luôn quan tâm tới đời sống vật chất và tinh thần làm việc cho nhân viên. Công ty luôn coi con người là tài sản quý giá nhất. Vì vậy, yếu tố con người luôn được quan tâm hàng đâu. Công ty tạo điều kiện, tổ chức đào tạo, cử đi đào tạo để phát huy tối đa tiềm năng của từng vị trí. Xây dựng một môi trường làm việc tốt nhất để nhân viên phát huy hết năng lực của mình</li>\r\n</ul>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>VĂN HÓA BILUXURY</strong></p>\r\n\r\n<p>Biluxury là 1 gia đình đoàn kết, sáng tạo, nỗ lực tạo giá trị mới cho khách hàng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>CONCEPT SHOWROOM</strong></p>\r\n\r\n<ul>\r\n	<li>Bản mẫu</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"http://biluxury.vn/media/Tin%20tuc/concept%20showroom.jpg\" style=\"height:480px; width:716px\" /></p>\r\n\r\n<ul>\r\n	<li>&nbsp;Bản hoàn thiện</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://biluxury.vn/media/Tin%20tuc/4.jpg\" style=\"height:480px; width:720px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Không gian thời trang sang trọng, hiện đại&nbsp;tại showroom Biluxury</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hiện tại, Biluxury đang có rất nhiều ưu đãi dành cho đại lý mới mở, vui lòng tìm hiểu thêm tại&nbsp;<a href=\"http://localhost:3408/huytuan\">ĐÂY</a></p>\r\n', '1 resize.jpg', 'Hàng hóa đa dạng: Biluxury đem đến những sản phẩm thiết yếu và cập nhật xu hướng thời trang - đáp ứng tối đa nhu cầu của khách hàng.\r\n\r\nGiá cả đồng hành cùng chất lượng: Giá bán sản phẩm tại Biluxury luôn được kiểm soát để phù hợp, xứng đáng là địa điểm mua sắm đáng tin cậy và đem lại nhiều giá trị cho khách hàng, đồng thời thể hiện vị thế cạnh tranh so với thị trường.\r\n\r\nDịch vụ chuyên nghiệp và tận tâm: Biluxury luôn có nhiều chương trình ưu đãi và dịch vụ hấp dẫn được thiết kế riêng dành cho khách hàng. Đến với Biluxury, khách hàng sẽ luôn được phục vụ tận tình bởi đội ngũ nhân viên tận tâm, nhiệt huyết, được trải nghiệm và tận hưởng các sản phẩm mới trong không gian hiện đại, sang trọng\r\n\r\nHệ thống phân phối rộng khắp: Mạng lưới showroom, đại lý nhượng quyền trải rộng ngay tại các khu dân cư, cùng không gian mua sắm được thiết kế và bài trí khoa học, tiện lợi.'),
(4, 'Thanh toán', '<h1>QUY ĐỊNH VÀ HÌNH THỨC THANH TOÁN&nbsp;(Thứ Tư;, 19/11/2014, 17:08)</h1>\r\n\r\n<p>HƯỚNG DẪN THỰC HIỆN MUA HÀNG ONLINE</p>\r\n\r\n<p>Hà Nội, ngày 10 tháng 03 năm 2017</p>\r\n\r\n<p><strong>I. Hình thức giao hàng&nbsp;</strong><br />\r\n- Miễn phí CPN với những hóa đơn:<br />\r\n+ Hàng nguyên giá từ 1 triệu đồng<br />\r\n+ Hàng sale 30% từ 2 triệu đồng<br />\r\n+ Hàng sale 50% từ 3 triệu đồng&nbsp;<br />\r\n- Khách hàng nội thành : Pantio sẽ giao hàng và nhận tiền trực tiếp từ khách hàng<br />\r\n- Khách hàng tỉnh: Chuyển khoản trước 100% tiền hàng sau đó Pantio sẽ gửi hàng theo địa chỉ khách hàng cung cấp<br />\r\n- Được đổi hàng trong trường hợp lỗi sản phẩm, gửi nhầm size, nhầm màu, trong 3-5 ngày tính từ ngày nhận hàng<br />\r\n- Hàng sale shock, hàng đồng giá không nhận đổi trả<br />\r\n- Hỗ trợ sửa đồ miễn phí cho khách hàng</p>\r\n\r\n<p><strong>II. Cách thức mua hàng</strong><br />\r\nBước 1: Chọn hàng<br />\r\nBạn có thể xem thông tin sản phẩm trên website,&nbsp;<br />\r\nhoặc địa chỉ FaceBook: https://www.facebook.com/pantio.vn<br />\r\nBước 2: Đặt hàng&nbsp;<br />\r\n- Đặt hàng trên website<br />\r\n+ Truy cập vào website: www.pantio.vn</p>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>&nbsp;<em>Bước 1: Truy cập vào</em>&nbsp;website:&nbsp;</strong><a href=\"http://www.pantio.vn/\"><strong><em>www.pantio.vn</em></strong></a></p>\r\n\r\n<p>&nbsp;&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://pantio.vn/media/fck/B1.jpg\" style=\"height:704px; width:1200px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<strong><em>Bước 2: Chọn sản phẩm và thêm vào giỏ hàng</em></strong>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://pantio.vn/media/fck/B2.jpg\" style=\"height:712px; width:1200px\" /></p>\r\n\r\n<p>&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>Bước 3: Xác nhận đơn hàng và thanh toán</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em><img alt=\"\" src=\"http://pantio.vn/media/fck/B3.jpg\" style=\"height:709px; width:1200px\" /></em></strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;<img alt=\"\" src=\"http://pantio.vn/media/fck/thanh%20toan.png\" style=\"height:650px; width:1200px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>Bước 4: Xác nhận lại đơn hàng qua Email</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<strong><em><img alt=\"\" src=\"http://pantio.vn/media/fck/B5.jpg\" style=\"height:710px; width:1200px\" /></em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Quý khách hàng vui lòng chờ xác nhận từ nhân viên Pantio hoặc liên hệ Số điện thoại: 04.385.31476/ 096.301.4949/0981.955.541/0968.339.958 để đặt hàng.</p>\r\n\r\n<p><strong>- Đặt hàng trên Facebook</strong><br />\r\nBước 1:&nbsp;Truy cập vào https://www.facebook.com/pantio.vn</p>\r\n\r\n<p>Comment hoặc inbox trên fanpage đặt hàng</p>\r\n\r\n<p>- Đặt hàng trên viber,zalo, điện thoại<br />\r\n+ Số điện thoại: 04 385 31476 - 096 301 4949 - 0968.339.958<br />\r\n+ Zalo, viber: 0963 01 4949 - 0968 339 958</p>\r\n\r\n<p>* Tất cả các hình thức đặt hàng với Pantio đều phải có xác nhận lại từ nhân viên công ty, khách hàng không tự chuyển tiền khi chưa có xác nhận</p>\r\n\r\n<p><br />\r\n<strong>Bước 3: Thanh toán tiền</strong><br />\r\nBạn có thể chuyển tiền vào tài khoản sau của Pantio:</p>\r\n\r\n<p>Sau khi khách đặt hàng, bộ phận CSKH của Pantio sẽ liên hệ lại để chốt đơn hàng và thông báo tổng số tiền để khách hàng chuyển khoản ( gồm đơn giá sản phẩm + phí vận chuyển ).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tài Khoản: Ngân hàng Ngoại Thương Việt Nam (<strong>&nbsp;Vietcombank</strong>&nbsp;)</strong></p>\r\n\r\n<p>Tên TK:&nbsp;Công ty TNHH Thời trang H và A</p>\r\n\r\n<p>Số TK:&nbsp;<em>0021.000.421.168</em></p>\r\n\r\n<p>Chi nhánh:&nbsp;<strong>Vietcombank Hà Nội.</strong></p>\r\n\r\n<p><br />\r\n<strong>Bước 4: Nhận hàng</strong><br />\r\nSau 12h – 72h kể từ khi hoàn tất thanh toán và TK của công ty báo tiền đã được chuyển, bạn sẽ nhận được hàng từ dịch vụ chuyển phát nhanh. Nếu bạn mặc không vừa size, vui lòng liên lạc lại ngay với nhân viên chăm sóc để đăng k‎ý đổi size. Trường hợp này, bạn vui lòng thanh toán phí chuyển phát hàng hóa phát sinh.</p>\r\n\r\n<p><strong>IV – Hỗ trợ sau bán hàng</strong><br />\r\nNếu bạn cần hỗ trợ về sản phẩm sau khi mua, xin vui lòng liên lạc với nhân viên bán hàng:&nbsp;<br />\r\n<img alt=\"\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/f9e/1/16/27a1.png\" style=\"height:16px; width:16px\" />➡&nbsp;Hotline: 096 287 7733 - 0968 339 958 - 096 301 4949<br />\r\n<img alt=\"\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/f9e/1/16/27a1.png\" style=\"height:16px; width:16px\" />➡&nbsp;Zalo: 096 287 7733 - 0968 339 958 - 096 301 4949&nbsp;<br />\r\n<br />\r\nNhân viên chăm sóc khách hàng Ms.Ngọc 096.961.5544﻿</p>\r\n\r\n<p>Thời trang PANTIO hân hạnh được phục vụ Qu‎ý khách !</p>\r\n', 'img-news-01.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `masp` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `price` float NOT NULL,
  `image` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `category` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `chitiet` text COLLATE utf8_vietnamese_ci NOT NULL,
  `sale` float DEFAULT NULL,
  `mota` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `masp`, `price`, `image`, `category`, `chitiet`, `sale`, `mota`) VALUES
(20, 'Măng tô kaki lót lông MT-0419', 'MT-0419', 820000, '120_2308_30_1.jpg', '7', '<p><strong>Chất liệu:</strong>&nbsp;Kaki chắc chắn, thoáng mát</p>\r\n\r\n<p><strong>Thiết kế áo</strong>:</p>\r\n\r\n<ul>\r\n	<li>Áo măng tô Kaki lót lông MT-0419 cao cấp, chắc chắn thanh lịch và co dẫn nhẹ tạo cảm giác nhẹ nhàng thoải mái cho người mặc.</li>\r\n	<li>Áo thiết kế với dạng Vest nổi bật với hàng nút khuy lịch sự tạo điểm nhấn sang trọng cho chiếc</li>\r\n	<li>Kiểu dáng trẻ trung, lịch lãm đặc biệt lớp lót lông mềm mịn, thoáng mát thấm hút mồ hôi sẽ giúp bạn ấm áp qua những ngày đông giá rét.</li>\r\n</ul>\r\n\r\n<p><strong>Màu sắc</strong>: Vàng, Đen</p>\r\n\r\n<p><strong>Size hiện có sẵn</strong>: M, L, XL, XXL</p>\r\n\r\n<p><strong>Mix and match</strong>:</p>\r\n\r\n<ul>\r\n	<li>Với chiếc áo Áo măng tô Kaki lót lông MT-0419 rất dễ phối đồ đặc biệt khi kết hợp với áo sơ mi hay áo len sẽ đem lại cho bạn một diện mạo mới mẻ sang trọng lịch sự nhưng không kém phần nam tính.</li>\r\n</ul>\r\n\r\n<p><strong>Hình ảnh chi tiết sản phẩm</strong>&nbsp;Áo măng tô Kaki lót lông MT-0419:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/2308_30_1.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/2308_30_2.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/2308_30_3.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/2308_30_4.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/2308_30_5.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/2308_30_6.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/2308_30_7.jpg\" /></p>\r\n\r\n<ul>\r\n	<li><a href=\"https://h2tshop.com/mang-to-kaki-lot-long-mt-0419/p2308.html#news\">TIN&nbsp;</a></li>\r\n</ul>\r\n', 800000, '\r\nNgày nay, Áo măng tô đã trở thành một trang phục không thể thiếu được trong tủ đồ của phái mạnh mỗi độ đông về. Là một chàng trai sở hữu phong cách thời trang sành điệu chắc chắn bạn không thể bỏ qua chiếc áo Măng tô kaki lót lông MT-0419 để tự tin bước ra ngoài trời đông giá rét.'),
(21, 'Măng tô kaki dáng dài MT-0418', 'MT-0418', 999000, '120_2307_29_1.jpg', '7', '<p><strong>Chất liệu</strong>: Kaki chắc chắn, thoáng mát, thấm hút tốt.</p>\r\n\r\n<p><strong>Thiết kế áo</strong>:</p>\r\n\r\n<ul>\r\n	<li><strong>&nbsp;Măng tô kaki dáng dài MT-0418&nbsp;</strong>được may 2 lớp, kaki giày dặn, đường may tỉ mỉ, cẩn thận tạo nên sự hoàn hảo cho sản phẩm&nbsp;</li>\r\n	<li>Thiết kế cổ bẻ, tay dài lịch lãm tạo điểm nhấn bằng chiếc đai thắt ở eo giúp góp phần nam tính mạnh mẽ cho các chàng trai.</li>\r\n</ul>\r\n\r\n<p><strong>Màu sắc</strong>: Vàng, Đen</p>\r\n\r\n<p><strong>Size hiện có sẵn</strong>: M, L, XL, XXL</p>\r\n\r\n<p><strong>Mix and match</strong>:</p>\r\n\r\n<p>Với chiếc áo&nbsp;<strong>&nbsp;Măng tô kaki dáng dài MT-0418</strong>rất dễ phối đồ đặc biệt khi kết hợp với áo sơ mi hay áo len sẽ đem lại cho bạn một diện mạo mới mẻ sang trọng lịch sự nhưng không kém phần nam tính.</p>\r\n\r\n<p><strong>Hình ảnh chi tiết sản phẩm</strong>&nbsp;<strong>Măng tô kaki dáng dài MT-0418:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/2307_29_1.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/2307_29_2.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/2307_29_5.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/2307_29_4.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/2307_29_3.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/2307_29_6.jpg\" /></p>\r\n', 950000, 'Ngày nay, Áo măng tô đã trở thành một trang phục không thể thiếu được trong tủ đồ của phái mạnh mỗi độ đông về. Là một chàng trai sở hữu phong cách thời trang sành điệu chắc chắn bạn không thể bỏ qua chiếc áo Măng tô kaki dáng dài MT-0418 để tự tin bước ra ngoài trời đông giá rét.'),
(22, 'Măng tô dạ cao cấp MT-754', 'MT-754', 1890000, '120_1685_19_1.jpg', '7', '<p><strong>Chất liệu:</strong>&nbsp;Dạ&nbsp;cao cấp</p>\r\n\r\n<p><strong>Màu sắc:&nbsp;</strong>Ghi xám, Xanh đen</p>\r\n\r\n<p><strong>Size hiện có sẵn:&nbsp;</strong>M, L, XL, XXL</p>\r\n\r\n<p><strong>Thiết kế áo:</strong>&nbsp;Dáng ôm nhẹ eo, cổ bẻ đứng cách điệu giả vest, độ dài&nbsp;ngang mông.</p>\r\n\r\n<p><strong>Cách phối đồ:&nbsp;</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Măng tô dạ cao cấp MT-754 kết hợp với áo sơ mi&nbsp;hay <strong>áo len</strong>&nbsp;&amp; phối cùng<strong>&nbsp;quần jeans, quần kaki</strong>&nbsp;mix đồ hoàn hảo.</p>\r\n\r\n<p><strong>Bảng size tham khảo:</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://h2tshop.com/media/lib/630_479_4_19_5.jpg\" style=\"height:359px; width:750px\" /></strong></p>\r\n\r\n<p><strong>Hình ảnh chi tiết áo Măng tô dạ cao cấp MT-754:</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1685_19_1.jpg\" /></p>\r\n\r\n<p>Chất liệu dạ cao cấp, màu sắc trung tính ghi xám nhưng mang lại vẻ sang trọng, thanh lịch cho các chàng trai.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1685_19_4.jpg\" /></p>\r\n\r\n<p>Dáng măng tô lửng ngang mông cách điệu giả vest phù hợp với các chàng thư sinh hay công sở.</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1685_19_2.jpg\" /></p>\r\n\r\n<p>Bạn có thể phối cùng cùng áo len cổ lọ màu đen, ghi xám để vẫn thời trang và ấm áp mỗi khi gió lạnh về.</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1685_19_3.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1685_19_5.jpg\" /></p>\r\n\r\n<p>Những điểm nhấn huy hiệu, cúc áo tinh tế càng khẳng định chất lượng cao cấp của áo măng tô nam này.</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1685_19_6.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1685_19_7.jpg\" /></p>\r\n', 1800000, 'Vẻ đẹp nam tính, cuốn hút, sang trọng sẽ hoàn hảo khi kết hợp với chiếc áo măng tô nam hàng hiệu của H2T giúp bạn tự tin với phong cách thời trang của mình. Áo măng tô dạ hay áo măng tô kaki chính là xu hướng thời trang nam thu đông 2017 mang lại vẻ sang trọng, thanh lịch và hiện đại.'),
(23, 'Áo măng tô dạ MT-689', 'MT-689', 1890000, '120_1679_6_2.jpg', '7', '<p><strong>Chất liệu:</strong>&nbsp;Dạ&nbsp;cao cấp</p>\r\n\r\n<p><strong>Màu sắc:&nbsp;</strong>Ghi xám, Xanh đen</p>\r\n\r\n<p><strong>Size hiện có sẵn:&nbsp;</strong>M, L, XL, XXL</p>\r\n\r\n<p><strong>Thiết kế áo:</strong>&nbsp;Dáng ôm nhẹ eo, cổ bẻ đứng cách điệu giả vest, độ dài&nbsp;ngang mông.</p>\r\n\r\n<p><strong>Cách phối đồ:&nbsp;</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Măng tô dạ cao cấp MT-754 kết hợp với áo sơ mi&nbsp;hay&nbsp;<strong>áo len</strong>&nbsp;&amp; phối cùng<strong>&nbsp;quần jeans, quần kaki</strong>&nbsp;mix đồ hoàn hảo.</p>\r\n\r\n<p><strong>Bảng size tham khảo:</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://h2tshop.com/media/lib/630_479_4_19_5.jpg\" /></strong></p>\r\n\r\n<p><strong>Hình ảnh chi tiết áo Măng tô dạ cao cấp MT-689:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1679_6_6.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1679_6_5.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1679_6_.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1679_6_4.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1679_6_2.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1679_6_1.jpg\" /></p>\r\n', 1800000, 'Vẻ đẹp nam tính, cuốn hút, sang trọng sẽ hoàn hảo khi kết hợp với chiếc áo măng tô nam hàng hiệu của H2T giúp bạn tự tin với phong cách thời trang của mình. Áo măng tô dạ hay áo măng tô kaki chính là xu hướng thời trang nam thu đông 2017 mang lại vẻ sang trọng, thanh lịch và hiện đại.'),
(24, 'Măng tô dạ dáng dài MT-181', 'MT-181', 1750000, '120_1645_20_3.jpg', '7', '<p><strong>Chất liệu:</strong>&nbsp;Dạ&nbsp;cao cấp</p>\r\n\r\n<p><strong>Màu sắc:&nbsp;</strong>Đen, Ghi xám</p>\r\n\r\n<p><strong>Size hiện có sẵn:&nbsp;</strong>M, L, XL, XXL</p>\r\n\r\n<p><strong>Thiết kế áo:</strong>&nbsp;Dáng suông, có mũ kèm dây buộc, túi 2 bên rộng, độ dài qua mông dành cho nam từ 1m65 trở lên</p>\r\n\r\n<p><strong>Cách phối đồ:&nbsp;</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Măng tô dạ dáng dài MT181 kết hợp với&nbsp;<strong>áo sơ mi</strong>&nbsp;hay&nbsp;<strong>áo len</strong>&nbsp;&amp; phối cùng<strong>&nbsp;quần jeans,&nbsp;quần kaki</strong>&nbsp;để tạo ra nhiều phong cách khác nhau.&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Bạn nên kết hợp&nbsp;<strong>phụ kiện</strong>&nbsp;như&nbsp;<strong>chiếc khăn</strong>&nbsp;buông dài hoặc quấn quanh cổ cho ngày rét đậm, ở bên trong có thể là&nbsp;<strong>áo len thu đông, áo sơ mi nam</strong>&nbsp;kết hợp&nbsp;<strong>giày da</strong>&nbsp;để có một trang phục văn phòng tuyệt đẹp &amp; manly.</p>\r\n\r\n<p><strong>&nbsp;Bảng size tham khảo:</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://scontent.fhan3-1.fna.fbcdn.net/v/t34.0-12/23772338_1777107122323978_937787925_n.png?oh=f16f831986b578107a4d334c2ac52b90&amp;oe=5A16B289\" style=\"height:367px; width:790px\" /><img alt=\"\" src=\"https://h2tshop.com/media/lib/630_479_4_19_5.jpg\" style=\"height:359px; width:750px\" /></strong></p>\r\n\r\n<p><strong>Hình ảnh chi tiết mẫu áo măng tô dạ dáng dài MT-181:</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1645_20_1.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1645_20_2.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1645_20_3.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1645_20_4.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1645_20_5.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1645_20_6.jpg\" /></p>\r\n', 1600000, 'Vẻ đẹp nam tính, cuốn hút, sang trọng sẽ hoàn hảo khi kết hợp với chiếc áo măng tô nam hàng hiệu của H2T giúp bạn tự tin với phong cách thời trang của mình. Áo măng tô dạ dáng dài có mũ trẻ trung dưới đây là mẫu mới nhất trong xu hướng thời trang nam thu đông 2017.'),
(25, 'Măng tô dạ nam MT-482', 'MT-482', 1250000, '120_1641_11_4.jpg', '7', '<p><strong>&nbsp;Chất liệu:</strong>&nbsp;Dạ&nbsp;cao cấp</p>\r\n\r\n<p><strong>&nbsp;Màu sắc:&nbsp;</strong>Ghi xám</p>\r\n\r\n<p><strong>&nbsp;Size hiện có sẵn:&nbsp;</strong>M, L, XL, XXL</p>\r\n\r\n<p><strong>&nbsp;Thiết kế áo:</strong>&nbsp;Dáng cách điệu giả vest, cổ đứng không bẻ, túi vuông ẩn 2 bên, 2 cúc cài, dáng lửng ngang mông.</p>\r\n\r\n<p><strong>&nbsp;Cách phối đồ:&nbsp;</strong></p>\r\n\r\n<p>&nbsp;Măng tô dạ&nbsp;nam&nbsp;MT-482 kết hợp với&nbsp;<strong>áo sơ mi</strong>&nbsp;hay&nbsp;<strong>áo len&nbsp;</strong>cổ lọ&nbsp;&amp; phối cùng<strong>&nbsp;quần kaki</strong>&nbsp;mang đậm nét thời trang công sở.&nbsp;</p>\r\n\r\n<p><strong>&nbsp;Bảng size tham khảo:</strong></p>\r\n\r\n<p>&nbsp;<img alt=\"\" src=\"https://h2tshop.com/media/lib/630_479_4_19_5.jpg\" style=\"height:359px; width:750px\" /></p>\r\n\r\n<p><strong>Hình ảnh chi tiết mẫu áo măng tô dạ nam MT-482:&nbsp;</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1641_11_1.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1641_11_5.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1641_11_4.jpg\" /></p>\r\n\r\n<p>Thiết kế cách điệu vest, dáng lửng ngang mông, màu ghi xám nhẹ nhàng giúp chàng trai công sở thêm lịch thiệp, sang trọng mà vẫn trẻ trung.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1641_11_2.jpg\" /></p>\r\n\r\n<p>Chất vải dạ cao cấp cùng đường nét nhấn cúc tinh tế khẳng định chất lượng cao cấp của mẫu áo măng tô dạ này.</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1641_11_3.jpg\" /></p>\r\n', 1000000, 'Vẻ đẹp nam tính, cuốn hút, sang trọng sẽ hoàn hảo khi kết hợp với chiếc áo măng tô nam hàng hiệu của H2T giúp bạn tự tin với phong cách thời trang của mình. Áo măng tô dạ nam MT-482 là một trong những mẫu áo nam mới nhất trong bộ sưu tập thời trang thu đông này. '),
(26, 'Măng tô dạ lót lông MT-279', 'MT-279', 1250000, '120_1627_1.jpg', '7', '<p><strong>Chất liệu:</strong>&nbsp;Vải dạ bền, lót lông, giữ ấm tốt, dễ phối đồ</p>\r\n\r\n<p><strong>Màu sắc:</strong>&nbsp;Đen, Xanh, Vàng nâu</p>\r\n\r\n<p><strong>Size hiện có sẵn:&nbsp;</strong>M, L, XL, XXL</p>\r\n\r\n<p><strong>Thiết kế áo:</strong>&nbsp;dáng ngắn, cổ bẻ&nbsp;giả&nbsp;vest, 3 cúc cài cách điệu</p>\r\n\r\n<p><strong>Cách phối đồ:&nbsp;</strong></p>\r\n\r\n<p>&nbsp;<strong>Măng tô dạ lót lông MT-279</strong>&nbsp;kết hợp với&nbsp;<strong>áo len</strong>&nbsp;trắng chính là sự lựa chọn hoàn hảo giúp các anh chàng có nước da tối màu diện&nbsp;<strong>măng tô nam đẹp</strong>.</p>\r\n\r\n<p><strong>&nbsp;Măng tô nam MT-279</strong>&nbsp;chất liệu dạ kết hợp cùng&nbsp;<strong>quần</strong>&nbsp;<strong>jean</strong>,&nbsp;<strong>áo si mi lót lông</strong>&nbsp;là sự lựa chọn hoàn hảo dành cho những chàng trai yêu thích phong cách năng động, trẻ trung.</p>\r\n\r\n<p><strong>&nbsp;&nbsp;</strong>Kết hợp&nbsp;<strong>áo thun</strong>&nbsp;bên trong măng tô dành cho chàng trai nhẹ nhàng, đơn giản. Ngoài ra, sẽ nổi bật hơn với gu thời trang tinh tế khi măng tô được kết hợp với các&nbsp;<strong>phụ kiện</strong>&nbsp;như khăn bỏ túi, khăn quàng cổ hay găng tay.&nbsp;</p>\r\n\r\n<p><strong>???? Bảng size tham khảo:</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://h2tshop.com/media/lib/630_479_4_19_5.jpg\" style=\"height:359px; width:750px\" /></strong></p>\r\n\r\n<p><strong>Hình ảnh chi tiết cho mẫu áo măng tô dạ lót lông MT-279:</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1627_1.jpg\" /></p>\r\n\r\n<p>Khi sở hữu một chiếc áo măng tô, bạn cần để ý đến chất liệu. Chính chất liệu giúp bạn đánh giá được chất lượng, độ bền và khả năng phối đồ có dễ dàng hay không. Măng tô nam chất liệu dạ kết hợp cùng quần jean, áo si mi là sự lựa chọn hoàn hảo dành cho những chàng trai yêu thích phong cách năng động, trẻ trung.</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1627_2.jpg\" /></p>\r\n\r\n<p>Kết hợp áo thun bên trong măng tô dành cho chàng trai nhẹ nhàng, đơn giản. Ngoài ra, sẽ nổi bật hơn với gu thời trang tinh tế khi măng tô được kết hợp với các phụ kiện như khăn bỏ túi, khăn quàng cổ hay găng tay. Đây là những món đồ phụ kiện thời trang nam rất dễ kết hợp mà các chàng không nên bỏ qua nhé.</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1627_3.jpg\" /></p>\r\n\r\n<p>Lưng bạn trông sẽ thẳng hơn và vai có cảm giác rộng hơn trogn mắt người đối diện khi diện chiếc&nbsp;<strong>măng tô giả vest</strong>&nbsp;được may đo vừa vặn với cơ thể. Ngực bạn trông sẽ lớn hơn còn phần eo thì nhỏ lại khi út áo trên của áo nằm ngay trên rốn khi cài. Điều này giúp cho cơ thể bạn trông cân đối hơn giữa thân trên và thân dưới. Đặc biệt, sự lựa chọn này sẽ giúp cho cơ thể bạn trông thanh mảnh hơn và gây ảo giác về chiều cao.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1627_4.jpg\" /></p>\r\n\r\n<p>Bạn nên chọn những chiếc&nbsp;<strong>măng tô nam dáng ngắn</strong>&nbsp;để ăn gian chiều cao hiệu quả bằng cách kết hợp những mẫu áo dáng ngắn này cùng chiếc áo sơ mi đơn giản đóng thùng bên trong và đôi giày tối màu. Hoặc bạn có thể mặc chiếc áo sơ mi có vạt không được dài quá xương chậu nếu không muốn sơ vin, điều này cũng giúp chân bạn có cảm giác dài hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1627_6.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1627_7.jpg\" /></p>\r\n', 1000000, 'Áo măng tô dạ hay măng tô kaki chính là xu hướng thời trang nam 2017 hiện nay. Đây là hai kiểu trang phục rất dễ phối hợp và phổ biến cho mùa đông này. Một diện mạo hoàn toàn mới cho măng tô khi được kết hợp với sơ mi hay áo len giúp bạn sang trọng, thanh lịch nhưng không kém phần mạnh mẽ.'),
(27, 'Măng tô dạ dáng dài MT-179', ' MT-179', 1350000, '120_1629_7.jpg', '7', '<p><strong>Chất liệu:</strong>&nbsp;Dạ&nbsp;cao cấp</p>\r\n\r\n<p><strong>Màu sắc:&nbsp;</strong>Ghi, Xanh đen</p>\r\n\r\n<p><strong>Size hiện có sẵn:&nbsp;</strong>M, L, XL, XXL</p>\r\n\r\n<p><strong>Thiết kế áo:</strong>&nbsp;Dáng suông, cổ bẻ đứng,&nbsp;1 cúc, cách điệu giả vest, độ dài qua mông dành cho nam từ 1m65 trở lên</p>\r\n\r\n<p><strong>Cách phối đồ:&nbsp;</strong></p>\r\n\r\n<p>&nbsp;Măng tô dạ dáng dài MT-179&nbsp;kết hợp với&nbsp;<strong>áo sơ mi</strong>&nbsp;hay&nbsp;<strong>áo len</strong>&nbsp;&amp; phối cùng<strong>&nbsp;quần jeans,&nbsp;quần kaki</strong>&nbsp;để tạo ra nhiều phong cách khác nhau.&nbsp;</p>\r\n\r\n<p>&nbsp;Bạn nên kết hợp&nbsp;<strong>phụ kiện</strong>&nbsp;như&nbsp;<strong>chiếc khăn</strong>&nbsp;buông dài hoặc quấn quanh cổ cho ngày rét đậm, ở bên trong có thể là&nbsp;<strong>áo len thu đông, áo sơ mi nam</strong>&nbsp;kết hợp&nbsp;<strong>giày da</strong>&nbsp;để có một trang phục văn phòng tuyệt đẹp &amp; manly.</p>\r\n\r\n<p><strong>???? Bảng size tham khảo:</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://scontent.fhan3-1.fna.fbcdn.net/v/t34.0-12/23772338_1777107122323978_937787925_n.png?oh=f16f831986b578107a4d334c2ac52b90&amp;oe=5A16B289\" style=\"height:367px; width:790px\" /><img alt=\"\" src=\"https://h2tshop.com/media/lib/630_479_4_19_5.jpg\" style=\"height:359px; width:750px\" /></strong></p>\r\n\r\n<p><strong>Hình ảnh chi tiết măng tô dạ dáng dài MT-179:</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1629_7.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1629_6.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1629_2.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1629_1.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1629_4.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1629_3.jpg\" /></p>\r\n', 1200000, 'Vẻ đẹp nam tính, cuốn hút, sang trọng sẽ hoàn hảo khi kết hợp với chiếc áo măng tô nam hàng hiệu của H2T giúp bạn tự tin với phong cách thời trang của mình. Áo măng tô dạ hay áo măng tô kaki chính là xu hướng thời trang nam thu đông 2017. Sang trọng, cá tính và hiện đại là những điểm mạnh nổi bật mà chiếc áo măng tô nam mà H2T mang lại cho phái .'),
(28, 'Măng tô dạ cừu MT-1751', 'MT-1751', 1650000, '120_1442_1_3.jpg', '7', '<p>Chất liệu: Dạ cừu, chần bông</p>\r\n\r\n<p>Màu sắc: Đen, xanh tím</p>\r\n\r\n<p>Size hiện có sẵn: M, L, XL, XXL</p>\r\n\r\n<p>Phù hợp với những bạn nam có chiều cao từ 1m65 trở lên</p>\r\n\r\n<h2>Dưới đây là thông số tham khảo và &nbsp;hình ảnh chi tiết về sản phẩm:</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1442_1_6.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1442_1_5.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1442_1_4.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1442_1_3.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1442_1_1.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1442_1_2.jpg\" /></p>\r\n', 1500000, 'Áo măng tô  dạ  cừu mới nhất, trẻ trung, hiện đại phù hợp cho mùa đông.\r\n\r\nĐược thiết kế đơn giản, dáng dài mang lại cho bạn vẻ đẹp lịch lãm, nam tính.\r\n\r\nÁo cổ vest, dài quá hông túi chéo có nắp.'),
(29, 'ÁO VEST ĐEN AV1089', 'AV1089', 500000, 'ao-vest-cao-cap-den-av2l1089-6975-slide-1.jpg', '8', '<p>- Màu đen nam tính, kiểu áo một nút trẻ trung<br />\r\n- Kiểu áo vest nam mới nhất, thiết kế sang trọng, hiện đại<br />\r\n- Thiết kế theo form dáng Hàn Quốc ôm theo body cực đẹp, cổ áo ve nhỏ<br />\r\n- Áo có túi ngực viền trắng tạo điểm nhấn và hai túi nắp hai bên hông, tay áo phối hàng nút lịch lãm<br />\r\n- Chất liệu vải âu hai lớp cao cấp, bền đẹp, ít nhăn, dễ giặt ủi mà không sợ mất dáng<br />\r\n- Có đầy đủ các size cho bạn lựa chọn theo dáng người<br />\r\n- Thiết kế và sản xuất tại&nbsp;<strong>4MEN</strong></p>\r\n\r\n<p><img alt=\"Áo vest đen av1089 - 1\" src=\"https://4menshop.com/images/2016/06/20160607_6886e349bff7608a7e4b35b6429e54eb_1465266813.jpg\" /></p>\r\n', 350000, 'Áo Vest Cao Cấp Đen AV1089 thiết kế dạng vest cổ bẻ, tay dài, 1 nút gài, form áo ôm vừa tạo giúp tôn dáng quý ông. Áo màu đen mạnh mẽ, có một túi viền trắng trước ngực và 2 túi bên hông có nắp bẻ, tay áo được phối nút tạo cho chàng nét lịch thiệp, mạnh mẽ hơn trong mắt đồng nghiệp, đối tác.'),
(30, 'ÁO SƠ MI HỌA TIẾT XÁM XANH ASM1227', 'ASM1227', 275000, 'ao-so-mi-hoa-tiet-xanh-da-troi-asm1224-10194-slide-products-5bee83d3afef1.jpg', '8', '<p>- Màu sắc nam tính, họa tiết cá tính<br />\r\n- Cổ bẻ, tay dài, form tôn dáng<br />\r\n-&nbsp;Thiết kế theo phong cách Hàn Quốc hiện đại<br />\r\n- Chất liệu cao cấp thấm hút tốt<br />\r\n- Đường chỉ may đều đẹp, chắc chắn<br />\r\n- Thanh lịch và sang trọng, giúp bạn tự tin và thoải mái hơn<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Áo sơ mi họa tiết xám xanh asm1227 - 1\" src=\"https://4menshop.com/images/thumbs/2018/11/ao-so-mi-hoa-tiet-xanh-da-troi-asm1224-10194-slide-products-5bee83d3617eb.jpg\" /></p>\r\n', 25000, 'Áo Sơ Mi Họa Tiết Xám Xanh ASM1227 chất liệu cao cấp, thấm hút mồ hôi tốt. Thiết kế theo phong cách Hàn Quốc, form tôn dáng, cổ bẻ, tay dài, rất thanh lịch.'),
(31, 'ÁO SƠ MI HỌA TIẾT XANH DA TRỜI ASM1224', 'ASM1224', 275000, 'ao-so-mi-hoa-tiet-xanh-da-troi-asm1224-10193-slide-products-5bee70be40aa9.jpg', '8', '<p>- Màu sắc trang nhã, nền vải dệt đốm màu tạo điểm nhấn<br />\r\n- Cổ bẻ, tay dài, form tôn dáng<br />\r\n-&nbsp;Thiết kế theo phong cách Hàn Quốc hiện đại<br />\r\n- Chất liệu cao cấp thấm hút tốt<br />\r\n- Đường chỉ may đều đẹp, chắc chắn<br />\r\n- Thanh lịch và sang trọng, giúp bạn tự tin và thoải mái hơn<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Áo sơ mi họa tiết xanh da trời asm1224 - 1\" src=\"https://4menshop.com/images/thumbs/2018/11/ao-so-mi-hoa-tiet-xanh-da-troi-asm1224-10193-slide-products-5bee70bdf0fef.jpg\" /></p>\r\n', 25000, 'Áo Sơ Mi Họa Tiết Xanh Da Trời ASM1224 chất liệu oxford dày dặn, đứng form dáng, thấm hút mồ hôi tốt. Thiết kế theo phong cách Hàn Quốc, form tôn dáng, cổ bẻ, tay dài, rất thanh lịch.'),
(32, 'ÁO SƠ MI HỌA TIẾT TRẮNG ASM1223', ' ASM1223', 265000, 'ao-so-mi-hoa-tiet-trang-asm1223-10192-slide-products-5bee6b89c1f78.jpg', '8', '<p>- Màu sắc trang nhã, nền vải dệt đốm màu tạo điểm nhấn<br />\r\n- Cổ bẻ, tay dài, form tôn dáng<br />\r\n-&nbsp;Thiết kế theo phong cách Hàn Quốc hiện đại<br />\r\n- Chất liệu linen cao cấp thấm hút tốt<br />\r\n- Đường chỉ may đều đẹp, chắc chắn<br />\r\n- Thanh lịch và sang trọng, giúp bạn tự tin và thoải mái hơn<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Áo sơ mi họa tiết trắng asm1223 - 1\" src=\"https://4menshop.com/images/thumbs/2018/11/ao-so-mi-hoa-tiet-trang-asm1223-10192-slide-products-5bee6b894cd05.jpg\" /></p>\r\n', 245000, 'Áo Sơ Mi Họa Tiết Trắng ASM1223 chất linen mềm mại, mát mẻ, dệt đốm màu tạo điểm nhấn tinh tế trên nền vải. Thiết kế theo phong cách Hàn Quốc, form tôn dáng, cổ bẻ, tay dài, rất thanh lịch.'),
(33, 'ÁO SƠ MI HỌA TIẾT ĐEN ASM1223', 'ASM1223', 265000, 'ao-so-mi-hoa-tiet-den-asm1223-10191-slide-products-5bee68b4486f2.jpg', '8', '<p>- Màu sắc trang nhã, nền vải dệt đốm màu tạo điểm nhấn<br />\r\n- Cổ bẻ, tay dài, form tôn dáng<br />\r\n-&nbsp;Thiết kế theo phong cách Hàn Quốc hiện đại<br />\r\n- Chất liệu linen cao cấp thấm hút tốt<br />\r\n- Đường chỉ may đều đẹp, chắc chắn<br />\r\n- Thanh lịch và sang trọng, giúp bạn tự tin và thoải mái hơn<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Áo sơ mi họa tiết đen asm1223 - 1\" src=\"https://4menshop.com/images/thumbs/2018/11/ao-so-mi-hoa-tiet-den-asm1223-10191-slide-products-5bee68b3ea64e.jpg\" /></p>\r\n', 245000, 'Áo Sơ Mi Họa Tiết Đen ASM1223 chất linen mềm mại, mát mẻ, dệt đốm màu tạo điểm nhấn tinh tế trên nền vải. Thiết kế theo phong cách Hàn Quốc, form tôn dáng, cổ bẻ, tay dài, rất thanh lịch.'),
(34, 'ÁO SƠ MI CA RÔ XÁM XANH ASM1229', ' ASM1229', 225000, 'ao-so-mi-ca-ro-xam-xanh-asm1228-10199-slide-products-5bee95acf0e20.jpg', '8', '<p>-&nbsp;<strong>Áo Sơ Mi Ca Rô Xám Xanh&nbsp;ASM1229</strong>&nbsp;chất vải nỉ dày dặn, thấm hút tốt, dễ dàng giặt ủi và bảo quản<br />\r\n- Form áo fit nhẹ, hiện đại, cá tính, năng động<br />\r\n- Kẻ caro trẻ trung, nam tính, phối layer cùng áo thun hoặc mặc riêng đều đẹp.</p>\r\n\r\n<p><br />\r\n<img alt=\"Áo sơ mi ca rô xám xanh asm1229 - 1\" src=\"https://4menshop.com/images/thumbs/2018/11/ao-so-mi-ca-ro-xam-xanh-asm1228-10199-slide-products-5bee95ad3e662.jpg\" /></p>\r\n', 200000, 'Áo Sơ Mi Ca Rô Xám Xanh ASM1229 được may từ chất nỉ thấm hút tốt, thoáng mát và mềm mại. Form áo trẻ trung, hiện đại, năng động, mặc riêng hay phối layer cùng áo thun đều đẹp.'),
(35, 'ÁO SƠ MI CA RÔ XÁM XANH ASM1228', 'ASM1228', 255000, 'ao-so-mi-ca-ro-xam-xanh-asm1228-10198-slide-products-5bee92ca8dae5.jpg', '8', '<p>-&nbsp;<strong>Áo Sơ Mi Ca Rô Xám Xanh&nbsp;ASM1228</strong>&nbsp;chất vải nỉ dày dặn, thấm hút tốt, dễ dàng giặt ủi và bảo quản<br />\r\n- Form áo fit nhẹ, hiện đại, cá tính, năng động<br />\r\n- Kẻ caro trẻ trung, nam tính, phối layer cùng áo thun hoặc mặc riêng đều đẹp.</p>\r\n\r\n<p><br />\r\n<img alt=\"Áo sơ mi ca rô xám xanh asm1228 - 1\" src=\"https://4menshop.com/images/thumbs/2018/11/ao-so-mi-ca-ro-xam-xanh-asm1228-10198-slide-products-5bee92cadca96.jpg\" /></p>\r\n', 235000, 'Áo Sơ Mi Ca Rô Xám Xanh ASM1228 được may từ chất nỉ thấm hút tốt, thoáng mát và mềm mại. Form áo trẻ trung, hiện đại, năng động, mặc riêng hay phối layer cùng áo thun đều đẹp.'),
(36, 'ÁO SƠ MI CA RÔ ĐỎ ASM1226', 'ASM1226', 225000, 'ao-so-mi-ca-ro-xanh-asm1225-10197-slide-products-5bee8ff755af0.jpg', '8', '<p>-&nbsp;<strong>Áo Sơ Mi Ca Rô Đỏ&nbsp;ASM1226</strong>&nbsp;chất vải dày dặn, thấm hút tốt, dễ dàng giặt ủi và bảo quản<br />\r\n- Form áo fit nhẹ, hiện đại, cá tính, năng động<br />\r\n- Kẻ caro trẻ trung, nam tính, phối layer cùng áo thun hoặc mặc riêng đều đẹp.</p>\r\n\r\n<p><br />\r\n<img alt=\"Áo sơ mi ca rô đỏ asm1226 - 1\" src=\"https://4menshop.com/images/thumbs/2018/11/ao-so-mi-ca-ro-xanh-asm1225-10197-slide-products-5bee8ff6be017.jpg\" /></p>\r\n', 200000, 'Áo Sơ Mi Ca Rô Đỏ ASM1226 được may từ chất vải thấm hút tốt, thoáng mát và giặt mau khô. Form áo fit nhẹ mang đến sự hiện đại, năng động cho nam giới.'),
(37, 'ÁO SƠ MI CA RÔ XANH ASM1225', 'ASM1225', 255000, 'ao-so-mi-ca-ro-asm1205-10196-slide-products-5bee896798aba.jpg', '8', '<p>-&nbsp;<strong>Áo Sơ Mi Ca Rô Xanh ASM1225</strong>&nbsp;chất vải mềm mại, thấm hút tốt, dễ dàng giặt ủi và bảo quản<br />\r\n- Form áo rộng, hiện đại, cá tính, năng động<br />\r\n- Kẻ caro trẻ trung, nam tính, phối layer cùng áo thun hoặc mặc riêng đều đẹp.</p>\r\n\r\n<p><br />\r\n<img alt=\"Áo sơ mi ca rô xanh asm1225 - 1\" src=\"https://4menshop.com/images/thumbs/2018/11/ao-so-mi-ca-ro-asm1205-10196-slide-products-5bee89675abee.jpg\" /></p>\r\n', 235000, 'Áo Sơ Mi Ca Rô Xanh ASM1225 được may từ chất vải thấm hút tốt, thoáng mát và giặt mau khô. Form áo rộng, freestyle mang đến sự hiện đại, năng động cho nam giới.'),
(38, 'ÁO THUN CÓ CỔ SỌC ĐỎ AT620', 'AT620', 195000, 'ao-thun-co-co-soc-do-at620-7753-slide-1.jpg', '9', '<p>Áo Thun Có Cổ Sọc Đỏ AT620&nbsp;kiểu dáng tay ngắn bo nhẹ năng động, khỏe khoắn giúp bạn tự tin thoải mái trong mọi hoạt động.&nbsp;Dạng cổ bẻ phối hàng&nbsp;nút tinh tế, form ôm body khoe khéo&nbsp;vẻ đẹp hình thể của người mặc.&nbsp;Chất liệu thun 100% cotton co giãn và thấm hút mồ hôi tốt. Phối sọc màu đỏ tinh tế tạo điểm nhấn cá tính&nbsp;cho sản phẩm.&nbsp;Rất năng động&nbsp;mà vẫn thời trang, bạn có thể tùy chọn phối với nhiều kiểu quần khác nhau.<br />\r\n<br />\r\n<br />\r\n<strong><a href=\"https://4menshop.com/quan-nam.html\"><img alt=\"Áo thun có cổ sọc đỏ at620 - 1\" src=\"https://4menshop.com/images/thumbs/2016/10/ao-thun-co-co-soc-do-at620-7753-slide-1.jpg\" /><br />\r\n<br />\r\n<img alt=\"Áo thun có cổ sọc đỏ at620 - 2\" src=\"https://4menshop.com/images/thumbs/2016/10/ao-thun-co-co-soc-do-at620-7753-slide-2.jpg\" /></a></strong></p>\r\n', 175000, 'Áo Thun Có Cổ Sọc Đỏ AT620 thu hút với màu trắng thanh lịch phối sọc đỏ tinh tế. Kiểu dáng tay ngắn khỏe khoắn, có bo nhẹ, cổ áo dạng bẻ phối nút cài. Chất liệu thun cotton mềm mịn, thấm hút mồ hôi tốt và co giãn 4 chiều, giúp bạn tự tin và thoải mái. Dáng áo ôm body theo phong cách Hàn Quốc, rất đáng để trải nghiệm!'),
(39, 'ÁO THUN CÓ CỔ XANH AT627', 'AT627', 195000, 'ao-thun-co-co-xanh-at627-7824-slide-1.jpg', '9', '<p>Bạn sẽ trở nên&nbsp;tự tin và&nbsp;thoải mái khi tham gia các&nbsp;hoạt động vui chơi ngoài trời&nbsp;cùng người thân, bạn bè với chiếc áo thun cá tính này.&nbsp;Màu&nbsp;xanh trẻ trung, cá tính mang cảm giác tươi mới, thu hút ánh nhìn.&nbsp;Chất liệu thun 100% cotton có ưu điểm là thoáng mát, mềm mịn, thấm hút mồ hôi tốt.&nbsp;Cổ áo được thiết kế dạng bẻ ve nhỏ thanh nhã&nbsp;phối hàng&nbsp;nút cài,&nbsp;tay áo bo nhẹ, form ôm body khỏe khoắn&nbsp;khoe dáng chuẩn cho người mặc.&nbsp;Áo được gắn logo nhỏ ở ngực áo và cổ áo tạo nét chấm phá tinh tế.&nbsp;<br />\r\n<br />\r\n--&gt; Có nhiều size cho bạn thoải mái lựa chọn. Đặc biệt, dễ dàng phối với đa dạng quần, mặc được&nbsp;trong nhiều thời điểm và hoàn cảnh khác nhau.</p>\r\n\r\n<p><br />\r\n<img alt=\"Áo thun có cổ xanh at627 - 1\" src=\"https://4menshop.com/images/2016/10/20161025_11ce7b68239f9348ab77bcf592582fe8_1477376190.jpg\" /><br />\r\n<img alt=\"Áo thun có cổ xanh at627 - 2\" src=\"https://4menshop.com/images/2016/10/20161025_33f3bd67d0e90c8f960ecce58cad75e7_1477376190.jpg\" /></p>\r\n', 175000, 'Áo Thun Có Cổ Xanh AT627 mang đến cho bạn cảm giác mát lạnh, mềm mịn từ chất liệu vải 100% cotton thấm hút mồ hôi và co giãn tốt. Dáng áo ôm body theo phong cách thời trang Hàn Quốc. Màu xanh tươi sáng, nổi bật cho bạn vẻ ngoài thu hút hơn. Một sản phẩm mới lạ rất đáng để bạn đầu tư.'),
(40, 'ÁO THUN CÓ CỔ TRẮNG KEM AT629', 'AT629', 175000, 'ao-thun-co-tron-trang-kem-at629-7903-slide-3.jpg', '9', '<p>Áo thun có cổ được ưa chuộng&nbsp;hơn những mẫu Áo thun khác bởi tính tiện dụng, sự chỉn chu và lịch sự mà nó mang lại. Điển hình như mẫu&nbsp;<strong>Áo Thun Có Cổ Trắng Kem AT629</strong>,<strong>&nbsp;</strong>thiết kế&nbsp;dạng cổ bẻ ve nhỏ phối hàng nút cài rất tinh tế. Tay ngắn bo nhẹ thoải mái cho bạn dễ dàng vận động. Thêm một điểm cộng của sản phẩm đó là cách phối màu rất hài hòa tinh tế, làm nổi bật lên sản phẩm cũng như vóc dáng người mặc.&nbsp;Màu trắng kem thanh lịch&nbsp;kết hợp màu đen nam tính, hứa hẹn mang đến cho bạn diện mạo mới mẻ. Chất liệu vải vẫn là thun cotton mềm mịn&nbsp;và&nbsp;nó mang lại cảm giác thoải mái, đặc biệt dễ chịu. Thích hợp cho bạn diện ở nhiều nơi và tự tin thể hiện phong cách của mình.</p>\r\n\r\n<p><br />\r\n<img alt=\"Áo thun có cổ trắng kem at629 - 1\" src=\"https://4menshop.com/images/2016/11/20161110_e945dd0b5aaa9ae93864afe35a75074c_1478750657.jpg\" /><br />\r\n<br />\r\n<img alt=\"Áo thun có cổ trắng kem at629 - 2\" src=\"https://4menshop.com/images/2016/11/20161110_e845accbb251db1deabf36b75ad935f7_1478750655.jpg\" /></p>\r\n', 150000, 'Màu trắng kem tươi sáng và thanh lịch khiến chiếc Áo Thun Có Cổ Trắng Kem AT629 thêm tiện dụng và phụ hợp với nhiều lứa tuổi. Được tạo điểm nhấn với logo nhỏ nổi bật ở ngực áo. Kiểu dáng thiết kế đơn giản, từ cổ bẻ đến tay áo ngắn năng động, giúp bạn nam tự tin, thoải mái trong vận động.'),
(41, 'ÁO THUN CÓ CỔ XANH ĐẬM AT629', 'AT629', 175000, 'ao-thun-co-co-xanh-la-cay-at62-7911-slide-3.jpg', '9', '<p>Áo thun có cổ được ưa chuộng&nbsp;hơn những mẫu Áo thun khác bởi tính tiện dụng, sự chỉn chu và lịch sự mà nó mang lại. Điển hình như mẫu&nbsp;<strong>Áo Thun Có Cổ Xanh Đậm AT629,&nbsp;</strong>thiết kế&nbsp;dạng cổ bẻ ve nhỏ phối hàng nút cài rất tinh tế. Tay ngắn bo nhẹ thoải mái cho bạn dễ dàng vận động. Thêm một điểm cộng của sản phẩm đó là cách phối màu rất hài hòa tinh tế, làm nổi bật lên sản phẩm cũng như vóc dáng người mặc.&nbsp;Màu xanh đậm nam tính kết hợp màu trắng thanh lịch, hứa hẹn mang đến cho bạn diện mạo mới mẻ. Chất liệu vải vẫn là thun cotton mềm mịn&nbsp;và&nbsp;nó mang lại cảm giác thoải mái, đặc biệt dễ chịu. Thích hợp cho bạn diện ở nhiều nơi và tự tin thể hiện phong cách của mình.</p>\r\n\r\n<p><br />\r\n<img alt=\"Áo thun có cổ xanh đậm at629 - 1\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-la-cay-at62-7911-slide-1.jpg\" /><br />\r\n<br />\r\n<img alt=\"Áo thun có cổ xanh đậm at629 - 2\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-la-cay-at62-7911-slide-2.jpg\" /><br />\r\n<br />\r\n<img alt=\"Áo thun có cổ xanh đậm at629 - 3\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-la-cay-at62-7911-slide-3.jpg\" /></p>\r\n', 150000, 'Áo Thun Có Cổ Xanh Đậm AT629 rất bắt mắt và thu hút với màu xanh đen nam tính nhấn nhá một chút màu trắng tươi sáng. Thiết kế cổ bẻ ve nhỏ với hàng cúc cùng màu, tay ngắn khỏe khoắn, năng động. Sản phẩm được tạo điểm nhấn với logo nhỏ nổi bật ở ngực áo. Sắm ngay cho mình chiếc áo này để làm mới mẻ tủ đồ của bạn.'),
(43, 'ÁO THUN CÓ CỔ XANH LÁ CÂY AT629', 'AT629', 175000, 'ao-thun-co-co-xanh-la-cay-at62-7912-slide-1.jpg', '9', '<p>Áo thun có cổ được ưa chuộng&nbsp;hơn những mẫu Áo thun khác bởi tính tiện dụng, sự chỉn chu và lịch sự mà nó mang lại. Áo thiết kế&nbsp;dạng cổ bẻ ve nhỏ phối hàng nút cài rất tinh tế. Tay ngắn bo nhẹ thoải mái cho bạn dễ dàng vận động. Thêm một điểm cộng của sản phẩm đó là cách phối màu rất hài hòa tinh tế, làm nổi bật lên sản phẩm cũng như vóc dáng người mặc.&nbsp;Màu xanh lá cây tươi sáng kết hợp màu trắng thanh lịch, hứa hẹn mang đến cho bạn diện mạo mới mẻ. Chất liệu vải vẫn là thun cotton mềm mịn&nbsp;và&nbsp;nó mang lại cảm giác thoải mái, đặc biệt dễ chịu. Thích hợp cho bạn diện ở nhiều nơi và tự tin thể hiện phong cách của mình.</p>\r\n\r\n<p><br />\r\n<img alt=\"Áo thun có cổ xanh lá cây at629 - 1\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-la-cay-at62-7912-slide-2.jpg\" /><br />\r\n<br />\r\n<img alt=\"Áo thun có cổ xanh lá cây at629 - 2\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-la-cay-at62-7912-slide-1.jpg\" /><br />\r\n<br />\r\n<img alt=\"Áo thun có cổ xanh lá cây at629 - 3\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-la-cay-at62-7912-slide-4.jpg\" /><br />\r\n<br />\r\n<img alt=\"Áo thun có cổ xanh lá cây at629 - 4\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-la-cay-at62-7912-slide-3.jpg\" /></p>\r\n', 150000, 'Màu sắc chủ đạo của sản phẩm là màu xanh lá cây tươi sáng, nhấn nhá một chút màu trắng ở cổ áo và viền tay áo rất thanh lịch. Áo Thun Có Cổ Xanh Lá Cây AT629 mang đến cho bạn sức sống và năng lượng của tuổi trẻ để bạn thỏa sức hoạt động cả ngày dài. Với thiết kế form ôm body khoe dáng cực chuẩn, chất liệu vải từ thun 100% cotton mềm mịn và vô cùng thoải mái.'),
(44, 'ÁO THUN CÓ CỔ XANH ĐEN AT630', 'AT630', 175000, 'ao-thun-co-co-xanh-den-at630-7916-slide-1.jpg', '9', '<p>Những điểm nổi bật làm nên sự thu hút của chiếc&nbsp;Áo Thun Có Cổ Xanh Đen AT630 :&nbsp;<br />\r\n<br />\r\n- Màu xanh đen nam tính, thu hút ánh nhìn được kết hợp hài hòa với màu vàng bắt mắt<br />\r\n- Chất liệu từ thun 100% cotton mang cảm giác&nbsp;mềm mịn<br />\r\n- Thoáng mát, thấm hút mồ hôi tốt, cho bạn thoải mái vận động cả ngày dài.<br />\r\n- Thiết kế dạng cổ áo bẻ ve nhỏ thanh nhã phối hàng nút cài cùng màu.<br />\r\n- Tay áo dạng ngắn&nbsp;bo thun khỏe khoắn, năng động.<br />\r\n- Đường may đều đẹp, tỉ mỉ.<br />\r\n- Form ôm body khoe vẻ đẹp hình thể hoàn hảo.<br />\r\n- Tips: Phối với đa dạng quần, đặc biệt thu hút khi diện với&nbsp;<strong>Quần Jean</strong>&nbsp;cá tính của 4MEN.</p>\r\n\r\n<p><br />\r\n<img alt=\"Áo thun có cổ xanh đen at630 - 1\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-den-at630-7916-slide-1.jpg\" /><br />\r\n<br />\r\n<img alt=\"Áo thun có cổ xanh đen at630 - 2\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-den-at630-7916-slide-2.jpg\" /><br />\r\n<br />\r\n<img alt=\"Áo thun có cổ xanh đen at630 - 3\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-den-at630-7916-slide-3.jpg\" /></p>\r\n', 150000, 'Áo Thun Có Cổ Xanh Đen AT630 mang đến cho bạn một diện mạo hoàn toàn mới mẻ từ màu xanh đen phối màu vàng bắt mắt. Thiết kế cổ bẻ ve nhỏ với hàng cúc cùng màu, tay ngắn khỏe khoắn, năng động. Sản phẩm được tạo chấm phá với sọc ngang màu trắng ở ngực áo như một chiếc túi giả. Chất liệu mềm mịn, thoải mái khiến bạn chỉ muốn diện vào ngày để xuống phố cùng bạn bè.'),
(45, 'ÁO THUN CÓ CỔ XANH LÁ CÂY AT630', 'AT630', 175000, 'ao-thun-co-co-xanh-la-cay-at630-7917-slide-1.jpg', '9', '<p>Bạn sẽ yêu từ cái nhìn đầu tiên khi thấy chiếc<strong>&nbsp;Áo Thun Có Cổ Xanh Lá Cây AT630&nbsp;</strong>này,&nbsp;bởi sự tinh tế trong thiết kế và cách phối màu bắt màu, thu hút người nhìn. Màu xanh lá cây tươi sáng kết hợp màu trắng thanh lịch, hứa hẹn mang đến cho bạn diện mạo mới mẻ. Chất liệu vải vẫn là thun cotton mềm mịn&nbsp;nhưng nó mang lại cảm giác mát lạnh, đặc biệt dễ chịu cho người mặc. Cầm chiếc áo trên tay, bạn sẽ có cảm giác rất thích thú và muốn diện ngay vào người.</p>\r\n\r\n<p><br />\r\n<img alt=\"Áo thun có cổ xanh lá cây at630 - 1\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-la-cay-at630-7917-slide-1.jpg\" /><br />\r\n<br />\r\n<img alt=\"Áo thun có cổ xanh lá cây at630 - 2\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-la-cay-at630-7917-slide-2.jpg\" /></p>\r\n\r\n<p><br />\r\nĐược thiết kế theo phong cách thời trang Hàn Quốc lịch lãm, với tay áo ngắn bo nhẹ khỏe khoắn khác màu, cổ áo dạng bẻ ve nhỏ phối hàng nút cài. Form áo ôm body nhưng rất thoải mái do có độ co giãn vừa vặn theo dáng người.&nbsp;Màu trắng phối xanh lá&nbsp;cá tính, cực ngầu khi kết hợp&nbsp;với&nbsp;<strong><a href=\"https://4menshop.com/quan-jean-nam.html\">Quần Jean</a></strong>&nbsp;4MEN.</p>\r\n\r\n<p><br />\r\n<img alt=\"Áo thun có cổ xanh lá cây at630 - 3\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-la-cay-at630-7917-slide-3.jpg\" /></p>\r\n', 150000, 'Nổi bật với cách kết hợp màu xanh lá cây tươi sáng với màu trắng thanh lịch, Áo Thun Có Cổ Xanh Lá Cây AT630 mang đến cho bạn một diện mạo hoàn toàn mới mẻ. Thiết kế form ôm body khoe dáng cực chuẩn, chất liệu vải là một điểm nổi bật của sản phẩm, cảm giác mát mịn từ thun 100% cotton. Sản phẩm được tạo chấm phá với sọc ngang màu đen ở ngực áo như một chiếc túi giả. Độc quyền bởi 4men, là sản phẩm rất đáng sắm cho tủ đồ của bạn.'),
(46, 'ÁO THUN SỌC CÓ CỔ XANH BIỂN AT635', ' AT635', 245000, 'ao-thun-co-co-xanh-bien-at635-8128-slide-1.jpg', '9', '<p>Với những tính năng đặc biệt dưới đây, mẫu Áo thun cá tính này sẽ chinh phục bất kỳ chàng trai nào khi được cầm nó trên tay.&nbsp;<br />\r\n<br />\r\n- Màu xanh biển tươi sáng, thu hút ánh nhìn<br />\r\n- Chất liệu từ thun 100% cotton co giãn 4 chiều.<br />\r\n- Mềm mịn, mát lạnh, thấm hút mồ hôi tốt, cho bạn thoải mái vận động cả ngày dài.<br />\r\n- Tay áo dáng ngắn, bo nhẹ với thun màu nổi bật<br />\r\n- Thiết kế cổ áo bẻ ve nhỏ thanh nhã phối hàng nút cài.<br />\r\n- Đường may đều đẹp, tỉ mỉ<br />\r\n- Form ôm body khoe vẻ đẹp hình thể hoàn hảo<br />\r\n- Nhiều size cho bạn thoải mái lựa chọn</p>\r\n\r\n<p><br />\r\n<img alt=\"Áo thun sọc có cổ xanh biển at635 - 1\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-bien-at635-8128-slide-1.jpg\" /></p>\r\n\r\n<p><br />\r\n<img alt=\"Áo thun sọc có cổ xanh biển at635 - 2\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-bien-at635-8128-slide-2.jpg\" /><br />\r\n<br />\r\n<img alt=\"Áo thun sọc có cổ xanh biển at635 - 3\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-bien-at635-8128-slide-4.jpg\" /><br />\r\n<br />\r\n<img alt=\"Áo thun sọc có cổ xanh biển at635 - 4\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-bien-at635-8128-slide-3.jpg\" /></p>\r\n', 220000, 'Áo Thun Sọc Có Cổ Xanh Biển AT635 bắt mắt với màu xanh biển tươi sáng, chất liệu vải thun cotton co giãn 4 chiều, mang đến cảm giác mềm mịn, mát lạnh khi mặc. Sản phẩm tạo điểm nhấn với những đường sọc ngang màu trắng bắt mắt. Tay áo dáng ngắn, cổ bẻ phối hàng nút cài tinh tế, đẹp mắt.'),
(47, 'ÁO THUN ĐỎ AT719', 'AT719', 195000, 'ao-thun-xanh-den-at719-9379-slide-products-5a225564a8b57.jpg', '9', '<p><strong>Thông tin chi tiết: Áo Thun Đỏ AT719</strong><br />\r\n<br />\r\n<strong>- Mã sản phẩm:</strong>&nbsp;AT719-DO<br />\r\n<br />\r\n<strong>- Màu sắc:&nbsp;</strong>Đỏ<br />\r\n<br />\r\n<strong>- Chất liệu:</strong>&nbsp;Thun cotton co giãn 4 chiều<br />\r\n<br />\r\n<strong>- Kiểu dáng:</strong>&nbsp;Áo thun cổ bẻ<br />\r\n<br />\r\n<strong>- Thích hợp:</strong>&nbsp;đi làm, đi học, đi chơi, du lịch, tiệc nhẹ...</p>\r\n', 170000, 'Áo Thun Đỏ AT719 chất liệu thun cotton co giãn 4 chiều thấm hút tốt, mềm mại, bền màu, thoáng khí. Kiểu dáng áo thun có cổ bẻ phối nút lịch sự, tay ngắn thoải mái vận động. Màu sắc dễ phối trang phục, phù hợp khi đi làm, đi học, đi chơi...'),
(48, 'ÁO THUN CÓ CỔ XANH LÁ CÂY AT781', 'AT781', 275000, 'ao-thun-co-co-xanh-den-at781-9919-slide-products-5b65756bb97a1.jpg', '9', '<p><strong>Thông tin chi tiết: Áo Thun Có Cổ Xanh Lá Cây AT781</strong><br />\r\n<br />\r\n<strong>- Mã sản phẩm:</strong>&nbsp;AT781-XLC<br />\r\n<br />\r\n<strong>- Màu sắc: Xanh Lá Cây</strong><br />\r\n<br />\r\n<strong>- Chất liệu:</strong>&nbsp;Thun cotton co giãn 4 chiều<br />\r\n<br />\r\n<strong>- Kiểu dáng:</strong>&nbsp;Áo thun cổ bẻ<br />\r\n<br />\r\n<strong>- Thích hợp:</strong>&nbsp;đi làm, đi học, đi chơi, du lịch...</p>\r\n\r\n<p><img alt=\"Áo thun có cổ xanh lá cây at781 - 1\" src=\"https://4menshop.com/images/thumbs/2018/08/ao-thun-co-co-xanh-den-at781-9919-slide-products-5b65756bb97a1.jpg\" /><br />\r\n<img alt=\"Áo thun có cổ xanh lá cây at781 - 2\" src=\"https://4menshop.com/images/thumbs/2018/08/ao-thun-co-co-xanh-den-at781-9919-slide-products-5b65756c3a94b.jpg\" /><br />\r\n<img alt=\"Áo thun có cổ xanh lá cây at781 - 3\" src=\"https://4menshop.com/images/thumbs/2018/08/ao-thun-co-co-xanh-den-at781-9919-slide-products-5b65756c6c9ce.jpg\" /><br />\r\n<img alt=\"Áo thun có cổ xanh lá cây at781 - 4\" src=\"https://4menshop.com/images/thumbs/2018/08/ao-thun-co-co-xanh-den-at781-9919-slide-products-5b65756cadb1d.jpg\" /></p>\r\n', 25000, 'Áo Thun Có Cổ Xanh Lá Cây AT781 được may từ chất liệu thun cotton cao cấp, co giãn 4 chiều thấm hút tốt, mềm mại, bền màu, thoáng mát. Kiểu dáng áo thun có cổ bẻ nhỏ thanh lịch, tay ngắn, logo thêu ngực rất thể thao và năng động.'),
(49, 'ÁO SƠ MI NAZAFU XÁM 980', ' 980', 445000, 'ao-so-mi-nazafu-soc-xanh-la-cay-979-10124-slide-products-5bc44f08b834e.jpg', '8', '<p><strong>hông tin chi tiết:&nbsp;</strong><strong>Áo Sơ Mi NAZAFU Xám 980</strong><br />\r\n<br />\r\n<strong>- Mã sản phẩm:</strong>&nbsp;ASM980-XAM<br />\r\n<br />\r\n<strong>- Màu sắc:</strong>&nbsp;Xám<br />\r\n<br />\r\n<strong>- Chất liệu:&nbsp;</strong>Vải ngoại nhập Hàn Quốc<br />\r\n<br />\r\n<strong>- Thích hợp:</strong>&nbsp;Phù hợp môi trường công sở, mặc đi làm, đi học, dự tiệc nhẹ, hẹn hò</p>\r\n\r\n<p><br />\r\n<img alt=\"Áo sơ mi nazafu xám 980 - 1\" src=\"https://4menshop.com/images/thumbs/2018/10/ao-so-mi-nazafu-soc-xanh-la-cay-979-10124-slide-products-5bc44f08ee89e.jpg\" /></p>\r\n', 420000, 'Áo Sơ Mi NAZAFU Xám 980 chất liệu vải cao cấp mềm mại, rất thoáng mát, chống nhăn nhàu hiệu quả. Kiểu dáng hiện đại, sang trọng, form áo chuẩn tôn dáng. Nút vuông quyền lực, mạnh mẽ, khắc logo NAZAFU.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `name` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `phone` varchar(10) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `password` varchar(10) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`username`, `name`, `email`, `phone`, `address`, `password`) VALUES
('dinhtuan242', 'Vũ Đình Tuân', 'vudinhtuan242@gmail.com', '0358850515', 'Hà Nội', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_oder`
--
ALTER TABLE `tbl_oder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
