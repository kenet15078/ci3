-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.17 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for note
CREATE DATABASE IF NOT EXISTS `note` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `note`;

-- Dumping structure for table note.post
CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `flag` int(2) NOT NULL,
  `style` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'kiểu của post như: music, tutorial ...',
  `raw_note` text COLLATE utf8_unicode_ci,
  `time` varchar(20) COLLATE utf8_unicode_ci DEFAULT '0' COMMENT 'thời gian post, phục vụ sau này load theo ngày',
  `userID` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'user post, get id',
  `lilke` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dislike` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='\r\n';

-- Dumping data for table note.post: ~70 rows (approximately)
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` (`id`, `note`, `flag`, `style`, `raw_note`, `time`, `userID`, `lilke`, `dislike`) VALUES
	(1, 'sdfsdf', 0, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 'lafm sao', 0, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 'heheoifwe', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 'chuan', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, 'https://www.youtube.com/watch?v=1ckSiyEZ8BQ&index=6&list=UUzRhhmiUdaXgX5qNFO6UWHw', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, 'kiem tra\n', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(7, 'xong chưa nhỉ', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 'xong chuan hi', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 'xong chuan hi', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 'sao nhỉ\n', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(11, 'https://www.youtube.com/watch?v=j1xDizRZw3I', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(12, '<div class="text-center">heheh</div>', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(13, 'heheh', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(14, 'https://www.youtube.com/watch?v=FY-e2u35OCA', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(15, 'http://www.yan.vn/neu-pham-9-sai-lam-trong-so-cuu-nay-ban-co-the-se-phai-hoi-han-ca-doi-108855.html', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(16, '<a href="http://www.yan.vn/neu-pham-9-sai-lam-trong-so-cuu-nay-ban-co-the-se-phai-hoi-han-ca-doi-108855.html" target="_blank">http://www.yan.vn/neu-pham-9-sai-lam-trong-so-cuu-nay-ban-co-the-se-phai-hoi-han-ca-doi-108855.html</a>', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(17, '<a href="<a href="http://static.tinnhanhchungkhoan.vn/w660/Uploaded/Anh-Photoshop/2016/Nhan-Dinh/12/113_BCWP.jpg"" target="_blank">http://static.tinnhanhchungkhoan.vn/w660/Uploaded/Anh-Photoshop/2016/Nhan-Dinh/12/113_BCWP.jpg"</a> target="_blank"><a href="http://static.tinnhanhchungkhoan.vn/w660/Uploaded/Anh-Photoshop/2016/Nhan-Dinh/12/113_BCWP.jpg</a>" target="_blank">http://static.tinnhanhchungkhoan.vn/w660/Uploaded/Anh-Photoshop/2016/Nhan-Dinh/12/113_BCWP.jpg</a></a>', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(18, 'image code \nhttps://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15226466_1131563193623868_1035610185_n.jpg?oh=9a6565674b38be5acc91ab10735f8090&oe=583F4686 hehe', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(19, 'image code \n<a href="https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15226466_1131563193623868_1035610185_n.jpg?oh=9a6565674b38be5acc91ab10735f8090&oe=583F4686" target="_blank">https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15226466_1131563193623868_1035610185_n.jpg?oh=9a6565674b38be5acc91ab10735f8090&oe=583F4686</a> hehe', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(20, 'image code \n<a href="https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15226466_1131563193623868_1035610185_n.jpg?oh=9a6565674b38be5acc91ab10735f8090&oe=583F4686" target="_blank">https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15226466_1131563193623868_1035610185_n.jpg?oh=9a6565674b38be5acc91ab10735f8090&oe=583F4686</a> hehe', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(21, 'image code \n<a href="https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15226466_1131563193623868_1035610185_n.jpg?oh=9a6565674b38be5acc91ab10735f8090&oe=583F4686" target="_blank">https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15226466_1131563193623868_1035610185_n.jpg?oh=9a6565674b38be5acc91ab10735f8090&oe=583F4686</a> hehe', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(22, 'image code \n<a href="https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15226466_1131563193623868_1035610185_n.jpg?oh=9a6565674b38be5acc91ab10735f8090&oe=583F4686" target="_blank">https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15226466_1131563193623868_1035610185_n.jpg?oh=9a6565674b38be5acc91ab10735f8090&oe=583F4686</a> hehe', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(23, 'image code \n<a href="https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15226466_1131563193623868_1035610185_n.jpg?oh=9a6565674b38be5acc91ab10735f8090&oe=583F4686" target="_blank">https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15226466_1131563193623868_1035610185_n.jpg?oh=9a6565674b38be5acc91ab10735f8090&oe=583F4686</a> hehe 12', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(24, 'image code \n<a href="https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15226466_1131563193623868_1035610185_n.jpg?oh=9a6565674b38be5acc91ab10735f8090&oe=583F4686" target="_blank">https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15226466_1131563193623868_1035610185_n.jpg?oh=9a6565674b38be5acc91ab10735f8090&oe=583F4686</a> hehe 12', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(25, 'image code \n<a class="img" href="https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15226466_1131563193623868_1035610185_n.jpg?oh=9a6565674b38be5acc91ab10735f8090&oe=583F4686" target="_blank"><img src="https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15226466_1131563193623868_1035610185_n.jpg?oh=9a6565674b38be5acc91ab10735f8090&oe=583F4686"></a> hehe 12', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(26, 'image code \n<a class="img-a" href="https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15226466_1131563193623868_1035610185_n.jpg?oh=9a6565674b38be5acc91ab10735f8090&oe=583F4686" target="_blank"><img class="main-img" src="https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15226466_1131563193623868_1035610185_n.jpg?oh=9a6565674b38be5acc91ab10735f8090&oe=583F4686"></a> hehe 12', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(27, '<a href="https://www.youtube.com/watch?v=ggqyBG89h44" target="_blank">https://www.youtube.com/watch?v=ggqyBG89h44</a>', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(28, 'Nhớ những ngày tháng ấy chúng tôi trẻ, bao chuyển trải quả \n<a class="img-a" href="https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15226466_1131563193623868_1035610185_n.jpg?oh=9a6565674b38be5acc91ab10735f8090&oe=583F4686" target="_blank"><img class="main-img" src="https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15226466_1131563193623868_1035610185_n.jpg?oh=9a6565674b38be5acc91ab10735f8090&oe=583F4686"></a> \nnhưng cuối cùng là cánh đồng hoa là vị ngọt của mầu cúc họa my \n<a class="img-a" href="http://st.galaxypub.vn/staticFile/Subject/2016/08/22/skills_221030557.jpg" target="_blank"><img class="main-img" src="http://st.galaxypub.vn/staticFile/Subject/2016/08/22/skills_221030557.jpg"></a>\nmãi mãi rồi là 1 chấm nhỏ ở đâu đó trong ký ức\n\nvl thật', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(29, '<iframe width="100%" height="auto" src="https://www.youtube.com/embed/ggqyBG89h44" frameborder="0" allowfullscreen></iframe>', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(30, '<iframe width="100%" height="315" src="https://www.youtube.com/embed/ggqyBG89h44" frameborder="0" allowfullscreen></iframe>', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(31, '<iframe width="100%" height="100%" src="https://www.youtube.com/embed/ggqyBG89h44" frameborder="0" allowfullscreen></iframe>', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(32, 'video học tiếng anh <iframe width="100%" height="315" src="https://www.youtube.com/embed/ggqyBG89h44" frameborder="0" allowfullscreen></iframe> nghe dc phet\nthử nghe ', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(33, '<iframe width="100%" height="315" src="https://www.youtube.com/embed/v=bnRzpJtQf_w" frameborder="0" allowfullscreen></iframe>', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(34, '<iframe width="100%" height="315" src="https://www.youtube.com/embed/v=tFsBb1TKiTE" frameborder="0" allowfullscreen></iframe>', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(35, '<iframe width="100%" height="315" src="https://www.youtube.com/embed/https://www.youtube.com/watch?" frameborder="0" allowfullscreen></iframe>', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(36, '<iframe width="100%" height="315" src="https://www.youtube.com/embed/https://www.youtube.com/watch?" frameborder="0" allowfullscreen></iframe>', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(37, '<iframe width="100%" height="315" src="https://www.youtube.com/embed/v=tFsBb1TKiTE" frameborder="0" allowfullscreen></iframe>', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(38, '<a href="http://stackoverflow.com/questions/5830387/how-to-find-all-youtube-video-ids-in-a-string-using-a-regex" target="_blank">http://stackoverflow.com/questions/5830387/how-to-find-all-youtube-video-ids-in-a-string-using-a-regex</a>', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(39, '<iframe width="100%" height="315" src="https://www.youtube.com/embed/BHZ8viJEAoI" frameborder="0" allowfullscreen></iframe>', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(40, 'tìm tất id vide youtube <a href="http://stackoverflow.com/questions/5830387/how-to-find-all-youtube-video-ids-in-a-string-using-a-regex" target="_blank">http://stackoverflow.com/questions/5830387/how-to-find-all-youtube-video-ids-in-a-string-using-a-regex</a>', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(41, '<iframe width="100%" height="315" src="https://www.youtube.com/embed/bMv_4enya6E" frameborder="0" allowfullscreen></iframe>', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(42, '<iframe width="100%" height="315" src="https://www.youtube.com/embed/bMv_4enya6E" frameborder="0" allowfullscreen></iframe>', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(43, '<iframe width="100%" height="315" src="https://www.youtube.com/embed/bMv_4enya6E" frameborder="0" allowfullscreen></iframe> bài hat viewo\n<a class="img-a" href="https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15239213_1131566853623502_1459322900_n.jpg?oh=79464ddd6f3abdf2945e25fe1b972417&oe=583E5A4C" target="_blank"><img class="main-img" src="https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15239213_1131566853623502_1459322900_n.jpg?oh=79464ddd6f3abdf2945e25fe1b972417&oe=583E5A4C"></a> hehehf', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(44, '<a class="img-a" href="https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15239213_1131566853623502_1459322900_n.jpg?oh=79464ddd6f3abdf2945e25fe1b972417&oe=583E5A4C" target="_blank"><img class="main-img" src="https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15239213_1131566853623502_1459322900_n.jpg?oh=79464ddd6f3abdf2945e25fe1b972417&oe=583E5A4C"></a>\n<a class="img-a" href="https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15239213_1131566853623502_1459322900_n.jpg?oh=79464ddd6f3abdf2945e25fe1b972417&oe=583E5A4C" target="_blank"><img class="main-img" src="https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15239213_1131566853623502_1459322900_n.jpg?oh=79464ddd6f3abdf2945e25fe1b972417&oe=583E5A4C"></a>\n<a class="img-a" href="https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15239213_1131566853623502_1459322900_n.jpg?oh=79464ddd6f3abdf2945e25fe1b972417&oe=583E5A4C" target="_blank"><img class="main-img" src="https://scontent-hkg3-1.xx.fbcdn.net/v/t34.0-12/15239213_1131566853623502_1459322900_n.jpg?oh=79464ddd6f3abdf2945e25fe1b972417&oe=583E5A4C"></a>\n<iframe width="100%" height="315" src="https://www.youtube.com/embed/bMv_4enya6E" frameborder="0" allowfullscreen></iframe>\n<iframe width="100%" height="315" src="https://www.youtube.com/embed/bMv_4enya6E" frameborder="0" allowfullscreen></iframe>\n<iframe width="100%" height="315" src="https://www.youtube.com/embed/bMv_4enya6Ehttps://www.youtube.com/watch?" frameborder="0" allowfullscreen></iframe>\n', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(45, 'link<iframe width="100%" height="315" src="https://www.youtube.com/embed/mSNdGXN5_48" frameborder="0" allowfullscreen></iframe>', 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(46, 'Bức Tường\nNhững chuyến đi dài\n<iframe width="100%" height="315" src="https://www.youtube.com/embed/4RgCllKvJuc" frameborder="0" allowfullscreen></iframe>\nTháng 12\n<iframe width="100%" height="315" src="https://www.youtube.com/embed/fBN1V2gPzHI" frameborder="0" allowfullscreen></iframe>\n', 1, NULL, 'Bức Tường\nNhững chuyến đi dài\nhttps://www.youtube.com/watch?v=4RgCllKvJuc\nTháng 12\nhttps://www.youtube.com/watch?v=fBN1V2gPzHI&feature=youtu.be\n', NULL, NULL, NULL, NULL),
	(47, 'I miss U', 1, NULL, 'I miss U', NULL, NULL, NULL, NULL),
	(48, 'Comming', 1, NULL, 'Comming', NULL, NULL, NULL, NULL),
	(49, 'vui vãi nồi niêu xoong chảo', 1, NULL, 'vui vãi nồi niêu xoong chảo', NULL, NULL, NULL, NULL),
	(50, 'ngon chưa\n', 1, NULL, 'ngon chưa\n', NULL, NULL, NULL, NULL),
	(51, 'là soa nhỉ', 1, NULL, 'là soa nhỉ', NULL, NULL, NULL, NULL),
	(52, 'chúng ta không cần tới nó nữa', 1, NULL, 'chúng ta không cần tới nó nữa', NULL, NULL, NULL, NULL),
	(53, 'Hàng mobi hehr', 1, NULL, 'Hàng mobi hehr', NULL, NULL, NULL, NULL),
	(54, '<iframe width="100%" height="315" src="https://www.youtube.com/embed/l5WuVFgh33Y" frameborder="0" allowfullscreen></iframe>\n<iframe width="100%" height="315" src="https://www.youtube.com/embed/l5WuVFgh33Y" frameborder="0" allowfullscreen></iframe>\n<iframe width="100%" height="315" src="https://www.youtube.com/embed/l5WuVFgh33Y" frameborder="0" allowfullscreen></iframe>\n', 1, NULL, 'https://www.youtube.com/watch?v=l5WuVFgh33Y\nhttps://www.youtube.com/watch?v=l5WuVFgh33Y\nhttps://www.youtube.com/watch?v=l5WuVFgh33Y\n', NULL, NULL, NULL, NULL),
	(55, '<iframe width="100%" height="315" src="https://www.youtube.com/embed/R5NC9yyTeZ8" frameborder="0" allowfullscreen></iframe>\n<iframe width="100%" height="315" src="https://www.youtube.com/embed/R5NC9yyTeZ8" frameborder="0" allowfullscreen></iframe>\n<iframe width="100%" height="315" src="https://www.youtube.com/embed/R5NC9yyTeZ8" frameborder="0" allowfullscreen></iframe>', 1, NULL, 'https://www.youtube.com/watch?v=R5NC9yyTeZ8\nhttps://www.youtube.com/watch?v=R5NC9yyTeZ8\nhttps://www.youtube.com/watch?v=R5NC9yyTeZ8', NULL, NULL, NULL, NULL),
	(56, 'ngon\n', 1, NULL, 'ngon\n', NULL, NULL, NULL, NULL),
	(57, '<a href="http://stackoverflow.com/questions/17441065/how-to-detect-scroll-position-of-page-using-jquery" target="_blank">http://stackoverflow.com/questions/17441065/how-to-detect-scroll-position-of-page-using-jquery</a>', 1, NULL, 'http://stackoverflow.com/questions/17441065/how-to-detect-scroll-position-of-page-using-jquery', NULL, NULL, NULL, NULL),
	(58, '<iframe width="100%" height="315" src="https://www.youtube.com/embed/R5NC9yyTeZ8" frameborder="0" allowfullscreen></iframe>\n\n<iframe width="100%" height="315" src="https://www.youtube.com/embed/R5NC9yyTeZ8" frameborder="0" allowfullscreen></iframe>\n\n<iframe width="100%" height="315" src="https://www.youtube.com/embed/R5NC9yyTeZ8" frameborder="0" allowfullscreen></iframe>', 1, NULL, 'https://www.youtube.com/watch?v=R5NC9yyTeZ8\n\nhttps://www.youtube.com/watch?v=R5NC9yyTeZ8\n\nhttps://www.youtube.com/watch?v=R5NC9yyTeZ8', NULL, NULL, NULL, NULL),
	(59, '❝Khi móng tay mọc dài, ta cắt móng tay, không phải ngón tay. Khi sự hiểu lầm phát triển, ta cắt cái tôi, không phải mối quan hệ.❞\n— Khuyết danh', 1, NULL, '❝Khi móng tay mọc dài, ta cắt móng tay, không phải ngón tay. Khi sự hiểu lầm phát triển, ta cắt cái tôi, không phải mối quan hệ.❞\n— Khuyết danh', NULL, NULL, NULL, NULL),
	(61, '324234', 1, NULL, '324234', NULL, NULL, NULL, NULL),
	(62, 'alert(1)', 1, NULL, 'alert(1)', NULL, NULL, NULL, NULL),
	(63, '<a href="http://m.vnreview.vn/tu-van-anh-so/-/view_content/content/129980/bi-quyet-can-chinh-cac-thong-so-may-anh" target="_blank">http://m.vnreview.vn/tu-van-anh-so/-/view_content/content/129980/bi-quyet-can-chinh-cac-thong-so-may-anh</a>', 1, NULL, 'http://m.vnreview.vn/tu-van-anh-so/-/view_content/content/129980/bi-quyet-can-chinh-cac-thong-so-may-anh', NULL, NULL, NULL, NULL),
	(64, '<iframe width="100%" height="315" src="https://www.youtube.com/embed/Lo5Wb0nYMyk" frameborder="0" allowfullscreen></iframe>', 1, NULL, 'https://www.youtube.com/watch?v=Lo5Wb0nYMyk', NULL, NULL, NULL, NULL),
	(65, '<a href="http://cafef.vn/17-loi-khuyen-cua-thien-su-so-mot-nhat-ban-dieu-thu-5-co-le-ai-cung-phai-giat-minh-20161215202854216.chn" target="_blank">http://cafef.vn/17-loi-khuyen-cua-thien-su-so-mot-nhat-ban-dieu-thu-5-co-le-ai-cung-phai-giat-minh-20161215202854216.chn</a>', 1, NULL, 'http://cafef.vn/17-loi-khuyen-cua-thien-su-so-mot-nhat-ban-dieu-thu-5-co-le-ai-cung-phai-giat-minh-20161215202854216.chn', NULL, NULL, NULL, NULL),
	(66, '<a href="http://getbootstrap.com/javascript/#alert" target="_blank">http://getbootstrap.com/javascript/#alert</a>', 1, NULL, 'http://getbootstrap.com/javascript/#alert', NULL, NULL, NULL, NULL),
	(67, '<a href="http://stackoverflow.com/questions/17883692/how-to-set-time-delay-in-javascript" target="_blank">http://stackoverflow.com/questions/17883692/how-to-set-time-delay-in-javascript</a>', 1, NULL, 'http://stackoverflow.com/questions/17883692/how-to-set-time-delay-in-javascript', NULL, NULL, NULL, NULL),
	(68, '<a href="http://stackoverflow.com/questions/17883692/how-to-set-time-delay-in-javascript" target="_blank">http://stackoverflow.com/questions/17883692/how-to-set-time-delay-in-javascript</a>', 1, NULL, 'http://stackoverflow.com/questions/17883692/how-to-set-time-delay-in-javascript', NULL, NULL, NULL, NULL),
	(69, 'lọc chủi bậy\nuser đăng ký mới cho post - pending\nbài detail', 1, NULL, 'lọc chủi bậy\nuser đăng ký mới cho post - pending\nbài detail', NULL, NULL, NULL, NULL),
	(74, 'ggghg', 1, NULL, 'ggghg', '1481820790', NULL, NULL, NULL),
	(75, 'Hơ hơ', 1, NULL, 'Hơ hơ', '1481822154', NULL, NULL, NULL),
	(76, 'Báo đang load ajax', 1, NULL, 'Báo đang load ajax', '1481822251', NULL, NULL, NULL),
	(77, 'ok chua', 1, NULL, 'ok chua', '1481904940', NULL, NULL, NULL),
	(78, 'nhip cau dau tu\n', 1, NULL, 'nhip cau dau tu\n', '1481905510', NULL, NULL, NULL),
	(79, 'nhip cau dau tu', 1, NULL, 'nhip cau dau tu', '1481905522', NULL, NULL, NULL),
	(80, 'thanh cong ko doi tuoi', 1, NULL, 'thanh cong ko doi tuoi', '1481905532', NULL, NULL, NULL),
	(81, '\'\'\'\'\'', 1, NULL, '\'\'\'\'\'', '1481907460', NULL, NULL, NULL),
	(82, '\'\'\'\'\'\'', 1, NULL, '\'\'\'\'\'\'', '1481907471', NULL, NULL, NULL),
	(83, 'lam sao the nhi', 1, NULL, 'lam sao the nhi', '1481907492', NULL, NULL, NULL),
	(84, 'hehe', 1, NULL, 'hehe', '1481907517', NULL, NULL, NULL);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
