-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2018 at 06:19 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

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

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `idproduct`, `namemember`, `noidung`) VALUES
(5, 19, 'Vũ Đình Tuân', 'Sản phẩm tổt'),
(6, 19, 'Vũ Đình Tuân', 'Hàng fake vl'),
(7, 19, 'Vũ Đình Tuân', 'Sản phẩm bình thường');

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
(12, 'Sản phẩm 3', 'SP0001', 200000, 'img-product-04.png', '7', '', 150000, NULL),
(13, 'Sản phẩm 4', 'SP004', 40000, 'img-product-02.png', '7', '', NULL, NULL),
(14, 'Sản phẩm 5', 'SP0005', 4000000, 'img-product-03.png', '7', '', NULL, NULL),
(19, 'Sản phẩm 11', 'sp0000', 120000, 'a4f1495aed4b78ae3fef38b58acd79af.jpg', '7', '<ul>\r\n	<li>Sản phẩm được CẢI TIẾN TỪ MẪU THIẾT KẾ HOT NHẤT, với các đường caro kẻ chéo trên chất liệu DA MỊN, tạo nên VẺ SANG TRỌNG, TINH TẾ HƠN HẲN so với mẫu cũ.</li>\r\n	<li>CHẤT LƯỢNG VƯỢT TRỘI HƠN GẤP 2 LẦN, GẤP ĐÔI KHỐI LƯỢNG DA bằng lớp lót da cực mềm mịn bên trong (khác với nhiều loại ví khác chỉ có lớp lót bằng nỉ).</li>\r\n	<li>Sản phẩm được thiết kế rất tỉ mỉ chi tiết từng bộ phận. Ngoài ra sản phẩm cầm rất vừa tay và mềm mại của da bò thật.</li>\r\n	<li>CẤU TRÚC ĐỘC ĐÁO: 9 ngăn đựng thẻ, 2 ngăn lớn đựng tiền, 1 ngăn có khóa kéo,1 ngăn đựng ảnh ĐÁP ỨNG MỌI NHU CẦU SỬ DỤNG.</li>\r\n	<li>CÓ 3 MÀU: nâu, nâu đậm, đen</li>\r\n	<li>Thông tin chi tiết xin vui lòng tham khảo hình bên dưới</li>\r\n	<li>Để mua được sản phẩm với giá tốt tại Xưởng thời trang nam DIAVO (áo thun, đồ thể thao, quần sọt, dây lưng, ví da, túi đeo chéo, giỏ giặt, ...), xin Quý khách LƯU Ý:</li>\r\n	<li>Quý khách QUAN TÂM MẶT HÀNG NÀO của DIAVO thì chắc chắn nên THÊM VÀO GIỎ HÀNG mặt hàng đó, để được thông báo lập tức khi DIAVO có các chương trình giảm giá sâu !!!</li>\r\n	<li>Hiện tại Xưởng đang có các MÃ GIẢM GIÁ LÊN TỚI 60,000 đồng cho các đơn hàng từ 300k!Đặc biệt, mặt hàng GIÀY TĂNG CHIỀU CAO có MÃ GIẢM GIÁ LÊN TỚI 70,000 đồng !!!Ngoài ra nhiều mặt hàng còn được chiết khấu 10 - 15% khi mua từ 3 chiếc!</li>\r\n	<li>Khách hàng mua sắm lần thứ 2 trở lên tại DIAVO sẽ được tặng quà !!! Hãy liên hệ DIAVO sau khi đặt đơn để được nhận quà nhé!</li>\r\n	<li>DIAVO CHỊU 100% PHÍ VẬN CHUYỂN GIÙM KHÁCH HÀNG tại HN với đơn hàng từ 199k, tại miền Bắc và HCM với đơn hàng từ 299k, tại miền Nam với đơn hàng từ 499k</li>\r\n	<li>Quý khách tại Sài Gòn và miền Nam, Nam Trung Bộ xin vui lòng liên hệ Diavo để được Diavo hỗ trợ thêm phí ship thấp hơn !!!</li>\r\n	<li>Mọi vấn đề về sản phẩm, hãy gọi hotline có trong đơn hàng hoặc nhắn tin cho DIAVO, DIAVO hứa sẽ giúp Quý khách hài lòng!</li>\r\n	<li>Hãy gõ \"Diavo\" trong ô tìm kiếm trên trang chủ hoặc click \"ĐẾN GIAN HÀNG\" ở cột bên phải và khám phá các sản phẩm ĐỘC _LẠ_ CAO CẤP _ HÀNG HOT.Xưởng thời trang nam Diavo rất vui được phục vụ Quý khách!</li>\r\n</ul>\r\n\r\n<p><img alt=\"vi dau cong  + caro-01-06.jpg\" src=\"https://vn-live-01.slatic.net/original/0034a97e766f0d7d92d60db3caa02324.jpg\" /></p>\r\n\r\n<p>Hoạ tiết kẻ caro sang trọng và tinh tế</p>\r\n\r\n<p><img alt=\"vi dau cong  + caro-01-12.jpg\" src=\"https://vn-live-01.slatic.net/original/a4f1495aed4b78ae3fef38b58acd79af.jpg\" /></p>\r\n\r\n<p>Màu nâu trẻ trung</p>\r\n\r\n<p><img alt=\"vi dau cong  + caro-01-13.jpg\" src=\"https://vn-live-01.slatic.net/original/561cedb0d2f9dbc71e127e5f40c28cd5.jpg\" /></p>\r\n\r\n<p>Kiểu dáng thanh lịch vừa tay cầm</p>\r\n\r\n<p><img alt=\"vi dau cong  + caro-01-09.jpg\" src=\"https://vn-live-01.slatic.net/original/2594e5bff57f76f5931004e9ec75f39e.jpg\" /></p>\r\n\r\n<p>Quyến rũ trong từng chi tiết</p>\r\n\r\n<p><img alt=\"vi dau cong  + caro-01-07.jpg\" src=\"https://vn-live-01.slatic.net/original/dbbe9103900556d123f1c0b377615c57.jpg\" /></p>\r\n\r\n<p>Nhiều ngăn chứa vô cùng tiện lợi</p>\r\n\r\n<p>- Kính mời Quý khách click vào mục \"ĐẾN GIAN HÀNG\" (ở gần góc dưới bên phải) để xem thêm các sản phẩm QUẦN LÓT, VÍ, DÂY LƯNG, ÁO THUN, GIỎ GIẶT, GIỎ XẾP ĐA NĂNG, GIỎ ĐỂ BÀN ... khác của shop.<br />\r\n- Sau khi nhấn ĐẾN GIAN HÀNG, nhấn nút\"THEO DÕI\" shop (ở bên trên, góc bên trái) để nhận được các ưu đãi và đăng các sản phẩm mới nhất HÀNG TUẦN!<br />\r\n- Mọi thắc mắc, Quý khách có thể ĐẶT CÂU HỎI (ở phía dưới), các nhân viên của shop sẽ hỗ trợ nhanh có thể.</p>\r\n\r\n<p>Đội ngũ DIAVO xin chân thành cảm ơn và mong muốn được hết lòng phục vụ Quý khách!</p>\r\n', 100000, 'Sản phẩm được CẢI TIẾN TỪ MẪU THIẾT KẾ HOT NHẤT, với các đường caro kẻ chéo trên chất liệu DA MỊN, tạo nên VẺ SANG TRỌNG, TINH TẾ HƠN HẲN so với mẫu cũ.\r\nCHẤT LƯỢNG VƯỢT TRỘI HƠN GẤP 2 LẦN, GẤP ĐÔI KHỐI LƯỢNG DA bằng lớp lót da cực mềm mịn bên trong (khác với nhiều loại ví khác chỉ có lớp lót bằng nỉ).\r\nSản phẩm được thiết kế rất tỉ mỉ chi tiết từng bộ phận. Ngoài ra sản phẩm cầm rất vừa tay và mềm mại của da bò thật.\r\nCẤU TRÚC ĐỘC ĐÁO: 9 ngăn đựng thẻ, 2 ngăn lớn đựng tiền, 1 ngăn có khóa kéo,1');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
