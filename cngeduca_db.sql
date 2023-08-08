-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th8 08, 2023 lúc 06:48 AM
-- Phiên bản máy phục vụ: 10.2.43-MariaDB
-- Phiên bản PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cngeduca_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_state` int(11) DEFAULT 1,
  `admin_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_login`, `admin_password`, `admin_phone`, `admin_email`, `admin_note`, `admin_state`, `admin_role`) VALUES
(1, 'Admin', 'admin', '$2y$10$sYR1CeUP5x0cw2Rwc1N25uglpBtX520qXyolMIggKy.zEt6XUinRu', '', '', '', 1, 1),
(2, 'hpt', 'hpt', '$2y$10$x9RWBVgCWSb9fkQGoh7ESOhYV1SnY5Fn5uwKUS9WfdUV1O4wvIe4a', '0973457689', 'ngobkanh@gmail.com', 'đây là tài khoản test', 1, 2),
(3, 'Trương Quang Tuấn', 'tuan', '$2y$10$5xn9Ri83pYZIOwglCNPE1O77nvaCUPJJFUifoHtxyWgqM1EU34Yku', '', '', '', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role`
--

CREATE TABLE `admin_role` (
  `admin_role_id` int(11) NOT NULL,
  `admin_role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_role_name`) VALUES
(1, 'Admin'),
(2, 'Mod');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bang_gia_1`
--

CREATE TABLE `bang_gia_1` (
  `id` int(11) NOT NULL,
  `khoahoc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chinhanh` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hocvien` int(11) NOT NULL,
  `namsinh` year(4) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bang_gia_1`
--

INSERT INTO `bang_gia_1` (`id`, `khoahoc`, `chinhanh`, `hocvien`, `namsinh`, `email`, `phone`, `name`, `notes`) VALUES
(43, 'Smart Reading Skills', 'AMERICAN SKILLS LONG BIÊN-HÀ NỘI', 0, 1995, 'viethung95cute@gmail.com', '1672523165', 'Nguyễn Việt Hưng', ''),
(44, 'Smarth Kills', 'AMERICAN SKILLS GÒ VẤP - TPHCM', 1, 1998, 'viethung95cute@gmail.com', '1672523165', 'Việt Hưng', ''),
(45, 'Smarth Kills', 'AMERICAN SKILLS GÒ VẤP - TPHCM', 1, 1998, 'viethung95cute@gmail.com', '1672523165', 'Việt Hưng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bang_gia_2`
--

CREATE TABLE `bang_gia_2` (
  `id` int(11) NOT NULL,
  `name_parent` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_parent` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_student` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `adress` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(300) NOT NULL,
  `hoan_thien_so_sach` varchar(300) NOT NULL,
  `quyet_toan_thue` varchar(300) NOT NULL,
  `tong_dich_vu` varchar(300) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bang_gia_2`
--

INSERT INTO `bang_gia_2` (`id`, `name_parent`, `phone_parent`, `name_student`, `birthday`, `adress`, `email`, `hoan_thien_so_sach`, `quyet_toan_thue`, `tong_dich_vu`, `time`) VALUES
(34, 'Việt Hưng', '01672523165', 'ABC', '2018-03-30', 'ĐH Mỏ - Địa chất', 'viethung95cute@gmail.com', '', '', '', '2018-03-28 04:54:52'),
(35, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:10:26'),
(36, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:10:33'),
(37, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:12:13'),
(38, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:12:19'),
(39, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:13:51'),
(40, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:20:52'),
(41, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:21:19'),
(42, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:21:22'),
(43, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:22:52'),
(44, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:22:55'),
(45, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:23:34'),
(46, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:24:46'),
(47, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:24:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cad_file`
--

CREATE TABLE `cad_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cad_file`
--

INSERT INTO `cad_file` (`id`, `name`) VALUES
(2, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calculators_file`
--

CREATE TABLE `calculators_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `calculators_file`
--

INSERT INTO `calculators_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cam_nhan`
--

CREATE TABLE `cam_nhan` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cam_nhan`
--

INSERT INTO `cam_nhan` (`id`, `name`, `title`, `image`, `note`) VALUES
(1, 'Nguyễn Thị Hồng Hà', 'Du học sinh Canada', 'cus_per2.jpg', 'Thật may mắn vì em đã được biết đến CNG EDUCATION. Em được tư vấn, chỉ bảo rất chi tiết, tận tình và được giúp đỡ rất nhiều vấn đề. Từ đó giúp con đường đi du học của em được thuận lợi và dễ dàng hơn. CNG EDUCATION đồng hành cùng em như người thân, và tất cả giấy tờ, thủ được được các thầy cô của công ty làm hết từ A-Z, em chỉ việc tập trung vào việc học thôi ạ. Cảm ơn các thầy cô tại CNG EDUCATION rất nhiều ạ'),
(2, 'Trần Quang Minh', 'Du học sinh Thụy Sỹ', 'cus_per1.jpg', 'Thật may mắn vì em đã được biết đến CNG EDUCATION. Em được tư vấn, chỉ bảo rất chi tiết, tận tình và được giúp đỡ rất nhiều vấn đề. Từ đó giúp con đường đi du học của em được thuận lợi và dễ dàng hơn. CNG EDUCATION đồng hành cùng em như người thân, và tất cả giấy tờ, thủ được được các thầy cô của công ty làm hết từ A-Z, em chỉ việc tập trung vào việc học thôi ạ. Cảm ơn các thầy cô tại CNG EDUCATION rất nhiều ạ'),
(3, 'Lương Thùy Linh', 'Du học sinh Philippines', 'cus_per3.jpg', 'Thật may mắn vì em đã được biết đến CNG EDUCATION. Em được tư vấn, chỉ bảo rất chi tiết, tận tình và được giúp đỡ rất nhiều vấn đề. Từ đó giúp con đường đi du học của em được thuận lợi và dễ dàng hơn. CNG EDUCATION đồng hành cùng em như người thân, và tất cả giấy tờ, thủ được được các thầy cô của công ty làm hết từ A-Z, em chỉ việc tập trung vào việc học thôi ạ. Cảm ơn các thầy cô tại CNG EDUCATION rất nhiều ạ'),
(4, 'Nguyễn Quốc Bình', 'Du học sinh Thụy Sỹ', 'cus_per4.jpg', 'Thật may mắn vì em đã được biết đến CNG EDUCATION. Em được tư vấn, chỉ bảo rất chi tiết, tận tình và được giúp đỡ rất nhiều vấn đề. Từ đó giúp con đường đi du học của em được thuận lợi và dễ dàng hơn. CNG EDUCATION đồng hành cùng em như người thân, và tất cả giấy tờ, thủ được được các thầy cô của công ty làm hết từ A-Z, em chỉ việc tập trung vào việc học thôi ạ. Cảm ơn các thầy cô tại CNG EDUCATION rất nhiều ạ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_account` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `total_cart` int(11) DEFAULT NULL,
  `date_cart` date DEFAULT NULL,
  `id_orderState` int(11) DEFAULT NULL,
  `note_cart` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_buyer` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_buyer` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id_cart`, `id_account`, `session_id`, `total_price`, `total_cart`, `date_cart`, `id_orderState`, `note_cart`, `name_buyer`, `mail_buyer`, `phone_buyer`, `address_buyer`, `note_buyer`) VALUES
(1, NULL, 'sdgdfgdbcvbcvbxcv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfgdf', 'sdf@gmail.com', '5646', 'sdf@gmail.com', 'sdf@gmail.com'),
(3, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'drtert', 'sdf@gmail.com', '3454', 'sdf@gmail.com', 'sdf@gmail.com'),
(4, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdfasf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sfgdfg'),
(5, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdf'),
(6, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'df', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'ag'),
(7, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'rgf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', '.'),
(8, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'zsfxdg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdfg'),
(9, NULL, '507hpkui803q8chnerqdtf3vl2', 1520000, NULL, '0000-00-00', NULL, NULL, 'zsfxdg', 'tung92.ns@gmail.com', '1658824321', '', 'sdfg'),
(10, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdgf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'dfgfdhgvjm'),
(11, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'd'),
(12, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'zscf'),
(13, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sds', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'xfc'),
(14, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'ádasf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'cv'),
(15, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'zxd'),
(16, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'rf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'xf'),
(17, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'f', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdf'),
(18, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'g'),
(19, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdf'),
(20, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sè', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'cvb'),
(21, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfgd', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'zxcv'),
(22, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfjas@gmail.com', 'tung92.ns@gmail.com', '12342', 'fg', 'xc'),
(23, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdf', 'tung92.ns@gmail.com', 'dfg', 'dfg', 'gh'),
(24, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dgfdg', 'tung92.ns@gmail.com', '1234567', 'xfvd', 'sx'),
(25, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'ạgdfh', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'cfgvb'),
(26, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'ggf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'xcv'),
(27, NULL, '507hpkui803q8chnerqdtf3vl2', 3040000, NULL, '0000-00-00', NULL, NULL, 'ggf', 'tung92.ns@gmail.com', '1658824321', '', 'xcv'),
(28, NULL, 'k75ivhcmgk5u9bbi4ajsqeqon7', 0, NULL, '0000-00-00', NULL, NULL, 'hangpt', 'phamthuyhang@yahoo.com', '0973378669', 'fghfgh', 'zdfgdfg'),
(29, NULL, 'k75ivhcmgk5u9bbi4ajsqeqon7', 1845000, NULL, '0000-00-00', NULL, NULL, 'hangpt', 'phamthuyhang@yahoo.com', '0973378669', '', 'zdfgdfg'),
(30, NULL, '334n6joa344tmhngo3r5aqpve3', 1845000, NULL, '0000-00-00', NULL, NULL, 'HANGWF', 'HGJFGH@GMAIL.COM', '45657', 'qUAN NHAN', 'DTAN'),
(31, NULL, 'uicgfl7gr3e7ahodo04vpssns6', 3930000, NULL, '0000-00-00', NULL, NULL, 'dfHFGH', 'XFGHFG@GMAIL.COM', '3456789', 'ARFG', 'WRWER'),
(33, NULL, 'jom8ufm7f64s09i4gk10fp1ma2', 2255000, NULL, '0000-00-00', NULL, NULL, 'Vahah', 'vaba@gmail.com', '12184', 'Fqgq', 'Vsbs'),
(34, NULL, '20ks5j7ju4vpq91d9699nvile3', 1455000, NULL, '0000-00-00', NULL, NULL, 'Vahah', 'vaba@gmail.com', '86633889', 'Fgujbvg', ''),
(35, NULL, 'ljlvfop98o8sevrh6ihtgdn7o6', 205000, NULL, '0000-00-00', NULL, NULL, 'Ngọc thế', 'ngocthe505@gmail.com', '0943218532', 'Số 19 ngõ 4 văn la hà đông hn', ''),
(36, NULL, '0m0i103i9mk3s0t8mi1g6gnqd5', 2250000, NULL, '0000-00-00', 4, '', 'Lìu tìu phìu', 'admin@deptrai.com', '096969969', 'Hà Nội', ''),
(37, NULL, 'meesi1d3laemnvqfgu7m1lm9p4', 2050000, NULL, '0000-00-00', 4, 'gfdgfd', 'Lìu tìu phìu', 'admin@deptrai.com', '0969068969', 'Hà Nội', ''),
(38, NULL, 'r3ktn90f3cn3fv82lob0qfv7l2', 0, NULL, '0000-00-00', NULL, NULL, 'hfgh', 'gfhg@gmail.com', '5345345435', 'gbfdgfdg', 'gdfg'),
(39, NULL, '3j87stb5hl70hfftn49fg9uve2', 615000, NULL, '0000-00-00', 1, '', 'Tâm', 'ngockhanh@gmail.com', '0974698975', 'thanh xuân', ''),
(40, NULL, 'vjnoaabl9tui5463ttpol3a745', 3040000, NULL, '0000-00-00', 1, '', 'hằng pt', 'ngockhanh@gmail.com', '123123435', 'dfghdfgh', 'dfghdfgh'),
(41, NULL, '36v2v63fsce7tth1ep3mp51uh3', 760000, NULL, '0000-00-00', NULL, NULL, 'ádfasdf', 'ngockhanh@gmail.com', 'dfgadfg', 'ádfgsdf', ''),
(42, NULL, '9ed4v2g4sm1v3og223ckgdh650', 4560000, NULL, '0000-00-00', NULL, NULL, 'sxdfsdf', 'ng@gmail.com', '345345', 'étdgvdf', ''),
(43, NULL, 's7kfj9rca2ic102k5sgpe4it67', 0, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '30012018', 'Ha Noi', '1'),
(44, NULL, 'uh6mafdedbdh4sqodcd4amspa5', 0, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(45, NULL, '1phakdlrnq7gn5ln72umgujq63', 238620, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '13-7'),
(46, NULL, '14pvd1p4a6tu35c2km9ck3fbf4', 246000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '24-08'),
(47, NULL, '976nru8ujtm188utfmdli20mo5', 420000, NULL, '0000-00-00', NULL, NULL, 'Hanh', 'hanhbp@gmail.com', '0913261689', '326 Le trong Tan Thanh Xuan', 'Giao ngoai gio hanh chinh'),
(48, NULL, 'v3p39e8h23inda7t5e6ch0tv35', 420000, NULL, '0000-00-00', NULL, NULL, 'Hoàng thu thảo', '', '0946944866', 'Số 8, tổ 1, tân lập 1, cẩm thuỷ, cẩm phả, quảng ninh', ''),
(49, NULL, 'addpl7ej742e3q0r43nrfssub3', 315000, NULL, '0000-00-00', NULL, NULL, 'Lê Thị Thuỳ', 'emaillethuy@gmail.com', '0967883638', 'Số 22H Ngõ 350 Kim Giang Hà Nội', 'Muốn nhận hàng trong ngày mai ngày 2/2'),
(50, NULL, 'l3il149c0de98t630fla3fsuq7', 0, NULL, '0000-00-00', NULL, NULL, 'Phạm thanh thuý', 'thanhthuyuno8908@gmail.com', '0979121445', 'CT1B - chung cư Mon city, ngõ 6 Nguyễn Cơ Thạch , Mĩ đình 2, nam từ Liêm, Hà Nội', ''),
(51, NULL, 'tn1kre5u79qng34es3ufod71r7', 0, NULL, '0000-00-00', NULL, NULL, 'a', 'a@fff.com', '02313545312', '123123123', '12312');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cartdetail`
--

CREATE TABLE `cartdetail` (
  `id_cartDetail` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_product` double DEFAULT NULL,
  `qyt_product` int(11) DEFAULT NULL,
  `totalprice_product` double DEFAULT NULL,
  `subInfo1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_color` int(11) DEFAULT NULL,
  `id_size` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cartdetail`
--

INSERT INTO `cartdetail` (`id_cartDetail`, `id_product`, `session_id`, `price_product`, `qyt_product`, `totalprice_product`, `subInfo1`, `id_color`, `id_size`, `color`, `size`, `id_cart`) VALUES
(4, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, 27, 'fg4g7m0pb0vnv4dnvp88f7lds7', 760000, 3, 2280000, NULL, 2, 1, 'Cam', 'S', 1),
(8, 27, '507hpkui803q8chnerqdtf3vl2', 760000, 2, 1520000, NULL, 2, 1, 'Cam', 'S', 25),
(9, 27, '507hpkui803q8chnerqdtf3vl2', 760000, 4, 3040000, NULL, 2, 1, 'Cam', 'S', 26),
(10, 42, 'k75ivhcmgk5u9bbi4ajsqeqon7', 205000, 9, 1845000, NULL, 0, 0, '', '', 28),
(11, 42, '334n6joa344tmhngo3r5aqpve3', 205000, 9, 1845000, NULL, 0, 0, '', '', 30),
(12, 42, 'uicgfl7gr3e7ahodo04vpssns6', 205000, 6, 1230000, NULL, 0, 0, '', '', 31),
(13, 43, 'uicgfl7gr3e7ahodo04vpssns6', 450000, 6, 2700000, NULL, 0, 0, '', '', 31),
(15, 42, 'jom8ufm7f64s09i4gk10fp1ma2', 205000, 11, 2255000, NULL, 0, 0, '', '', 33),
(16, 43, '20ks5j7ju4vpq91d9699nvile3', 225000, 1, 225000, NULL, 0, 0, '', '', 34),
(17, 42, '20ks5j7ju4vpq91d9699nvile3', 205000, 6, 1230000, NULL, 0, 0, '', '', 34),
(18, 42, 'ljlvfop98o8sevrh6ihtgdn7o6', 205000, 1, 205000, NULL, 0, 0, '', '', 35),
(19, 43, '0m0i103i9mk3s0t8mi1g6gnqd5', 225000, 10, 2250000, NULL, 0, 0, '', '', 36),
(20, 42, 'meesi1d3laemnvqfgu7m1lm9p4', 205000, 10, 2050000, NULL, 0, 0, '', '', 37),
(21, 42, 'r3ktn90f3cn3fv82lob0qfv7l2', 205000, 0, 0, NULL, 0, 0, '', '', 38),
(22, 42, '3j87stb5hl70hfftn49fg9uve2', 205000, 3, 615000, NULL, 0, 0, '', '', 39),
(23, 27, 'vjnoaabl9tui5463ttpol3a745', 760000, 3, 2280000, NULL, 0, 0, '', '', 40),
(24, 28, 'vjnoaabl9tui5463ttpol3a745', 760000, 1, 760000, NULL, 0, 0, '', '', 40),
(25, 27, '36v2v63fsce7tth1ep3mp51uh3', 760000, 1, 760000, NULL, 0, 0, '', '', 41),
(26, 27, '9ed4v2g4sm1v3og223ckgdh650', 760000, 6, 4560000, NULL, 0, 0, '', '', 42),
(27, 55, 's7kfj9rca2ic102k5sgpe4it67', 0, 2, 0, NULL, 0, 0, '', '60x90 cm', 43),
(28, 48, 'uh6mafdedbdh4sqodcd4amspa5', 0, 1, 0, NULL, 0, 0, '', '', 44),
(29, 55, '1phakdlrnq7gn5ln72umgujq63', 119310, 2, 238620, NULL, 0, 0, '', '', 45),
(30, 55, '14pvd1p4a6tu35c2km9ck3fbf4', 123000, 2, 246000, NULL, 0, 0, '', '', 46),
(31, 154, '976nru8ujtm188utfmdli20mo5', 420000, 1, 420000, NULL, 0, 0, '', '', 47),
(32, 154, 'v3p39e8h23inda7t5e6ch0tv35', 420000, 1, 420000, NULL, 0, 0, '', '', 48),
(33, 139, 'addpl7ej742e3q0r43nrfssub3', 315000, 1, 315000, NULL, 0, 0, '', '', 49),
(34, 154, 'l3il149c0de98t630fla3fsuq7', 0, 1, 0, NULL, 0, 0, '', '', 50),
(35, 238, 'tn1kre5u79qng34es3ufod71r7', 0, 1, 0, NULL, 0, 0, '', '', 51);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `color_id` bigint(20) NOT NULL,
  `color_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_price` double DEFAULT NULL,
  `color_stock` int(11) DEFAULT NULL,
  `color_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
  `config_id` int(11) NOT NULL,
  `web_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_meta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_logo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_hotline` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home6` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home7` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home8` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home9` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home10` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `slideshow_home` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `link1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `link2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `link3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner2` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner1` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner3` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_web` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config`
--

INSERT INTO `config` (`config_id`, `web_name`, `web_meta`, `web_des`, `web_keyword`, `web_logo`, `web_hotline`, `web_phone`, `web_email`, `content_home1`, `content_home2`, `content_home3`, `content_home4`, `content_home5`, `content_home6`, `content_home7`, `content_home8`, `content_home9`, `content_home10`, `slideshow_home`, `link1`, `link2`, `link3`, `banner2`, `banner1`, `banner3`, `icon_web`) VALUES
(1, 'CNG Education - Tư vấn du học', '', 'Sứ mệnh của CNG Education là biến ước mơ du học của bạn trở thành hiện thực, truyền cảm hứng và dẫn đường và là người bạn đồng hành trên suốt hành trình trải nghiệm môi trường giáo dục quốc tế chất lượng và phù hợp nhất.', 'CNG Education - Tư vấn du học', 'cng_logo.png', '', '', 'Sứ mệnh của CNG Education là biến ước mơ du học của bạn trở thành hiện thực, truyền cảm hứng và dẫn đường và là người bạn đồng hành trên suốt hành trình trải nghiệm môi trường giáo dục quốc tế chất lượng và phù hợp nhất.', 'Tầng 4, số 38 MKL, cạnh trường Quốc tế UK cổng chính, Hồng Hải, Hạ Long, Quảng Ninh', 'cngeducation@cnggroup.org', '0822 824 188', '', '', '', '', '', '', '0822 824 188', '[]', 'avits-smart-readingbrphat-trien-ngon-ngu-tieng-viet-4-10-tuoi', 'avits-mathbrtu-duy-toan-my-ixl-4-14-tuoi', 'avits-mathbrtoan', 'cng_bn1.jpg', 'cng_bn2.jpg', 'airplane.png', 'cng_logo.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_languages`
--

CREATE TABLE `config_languages` (
  `id` int(11) NOT NULL,
  `config_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_meta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_hotline` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home6` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home7` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home8` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home9` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home10` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) DEFAULT 0,
  `lang_link1` text COLLATE utf8_unicode_ci NOT NULL,
  `lang_link2` text COLLATE utf8_unicode_ci NOT NULL,
  `lang_link3` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config_languages`
--

INSERT INTO `config_languages` (`id`, `config_id`, `languages_code`, `lang_web_name`, `lang_web_meta`, `lang_web_des`, `lang_web_keyword`, `lang_web_hotline`, `lang_web_phone`, `lang_web_email`, `lang_content_home1`, `lang_content_home2`, `lang_content_home3`, `lang_content_home4`, `lang_content_home5`, `lang_content_home6`, `lang_content_home7`, `lang_content_home8`, `lang_content_home9`, `lang_content_home10`, `edit_state`, `lang_link1`, `lang_link2`, `lang_link3`) VALUES
(1, 1, 'vn', 'CNG Education - Tư vấn du học', NULL, 'Sứ mệnh của CNG Education là biến ước mơ du học của bạn trở thành hiện thực, truyền cảm hứng và dẫn đường và là người bạn đồng hành trên suốt hành trình trải nghiệm môi trường giáo dục quốc tế chất lượng và phù hợp nhất.', 'CNG Education - Tư vấn du học', NULL, NULL, 'Sứ mệnh của CNG Education là biến ước mơ du học của bạn trở thành hiện thực, truyền cảm hứng và dẫn đường và là người bạn đồng hành trên suốt hành trình trải nghiệm môi trường giáo dục quốc tế chất lượng và phù hợp nhất.', 'Tầng 4, số 38 MKL, cạnh trường Quốc tế UK cổng chính, Hồng Hải, Hạ Long, Quảng Ninh', 'cngeducation@cnggroup.org', '0822 824 188', '', '', '', '', '', '', NULL, 1, '0', 'avits-mathbrtu-duy-toan-my-ixl-4-14-tuoi', 'avits-mathbrtoan'),
(2, 1, 'en', 'CNG Education - Study abroad consulting', NULL, 'CNG Education\'s mission is to make your dream of studying abroad come true, to inspire and guide and be a companion on the journey to experience the most appropriate and quality international educational environment.', 'CNG Education - Study abroad consulting', NULL, NULL, 'CNG Education\'s mission is to make your dream of studying abroad come true, to inspire and guide and be a companion on the journey to experience the most appropriate and quality international educational environment.', '4th floor, 38 MKL, next to UK International School main gate, Hong Hai, Ha Long, Quang Ninh', '', '', '', '', '', '', '', '', NULL, 1, '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_exchange_rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dang_ky_tu_van`
--

CREATE TABLE `dang_ky_tu_van` (
  `id` bigint(20) NOT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `noi_song` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `nam_di` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `noi_di` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dang_ky_tu_van`
--

INSERT INTO `dang_ky_tu_van` (`id`, `name`, `phone`, `email`, `note`, `noi_song`, `nam_di`, `noi_di`, `ngay`) VALUES
(1, 'Trương Quang Tuấn', '0987654321', 'tuan@gmail.com', 'test', 'Việt Nam', '2023', '[\"Anh\",\"\\u00dac\",\"M\\u1ef9\",\"Canada\",\"N\\u01b0\\u1edbc kh\\u00e1c\"]', '2023-08-03 10:00:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `datasheets_file`
--

CREATE TABLE `datasheets_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `datasheets_file`
--

INSERT INTO `datasheets_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dat_mua`
--

CREATE TABLE `dat_mua` (
  `id` int(11) NOT NULL,
  `name_investors` varchar(200) CHARACTER SET utf8 NOT NULL,
  `professional_field` varchar(225) NOT NULL,
  `work_unit` varchar(225) NOT NULL,
  `phone` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(100) NOT NULL,
  `district` varchar(200) CHARACTER SET utf8 NOT NULL,
  `city` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chanel` varchar(200) NOT NULL,
  `aspiration` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dat_mua`
--

INSERT INTO `dat_mua` (`id`, `name_investors`, `professional_field`, `work_unit`, `phone`, `email`, `address`, `district`, `city`, `chanel`, `aspiration`) VALUES
(2, 'Rèm vải 01', '760', '1', 'tuấn', 'tuan@gmail.com', '0123', 'Hà Nội', '', '', ''),
(3, 'Việt Hưng', 'IT', 'GOLDBRIDGE ', '1672523165', 'viethung95cute@gmail.com', '', 'Thanh Xuân', 'Hà N?i', 'Facebook', 'Không có nguy?n v?ng'),
(4, 'Việt Hưng', 'IT', 'GOLDBRIDGE ', '1672523165', 'viethung95cute@gmail.com', '', 'Thanh Xuân', 'Hà N?i', 'Facebook', 'Không có nguy?n v?ng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `declaration_file`
--

CREATE TABLE `declaration_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `declaration_file`
--

INSERT INTO `declaration_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doi_tac`
--

CREATE TABLE `doi_tac` (
  `id` int(11) NOT NULL,
  `image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `doi_tac`
--

INSERT INTO `doi_tac` (`id`, `image`) VALUES
(2, 'cesar-CRCS.png'),
(3, 'culinaly.png'),
(4, 'him1.png'),
(6, 'HTMI.png'),
(7, 'shms.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home`
--

CREATE TABLE `home` (
  `page_id` int(11) NOT NULL,
  `page_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_created_date` datetime DEFAULT NULL,
  `page_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `page_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `page_img_1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_img_2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_img_3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_img_4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info6` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info7` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info8` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `home`
--

INSERT INTO `home` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`, `page_img_1`, `page_img_2`, `page_img_3`, `page_img_4`, `page_sub_info6`, `page_sub_info7`, `page_sub_info8`) VALUES
(55, 'TẠI SAO CHỌN CNG EDUCATION <br> LEAD YOUR DREAM CONQUER', '', '<p>Bạn mong muốn được đi du học c&aacute;c quốc gia như Thụy Sĩ, Philippines, Canada, Anh, &Uacute;c?<br />\r\nBạn đang băn khoăn lựa chọn quốc gia ph&ugrave; hợp nhất với năng lực bản th&acirc;n, hay thủ tục, chi ph&iacute;, học bổng, cơ hội việc l&agrave;m, v&agrave; những trải nghiệm thực tế từ c&aacute;c du học sinh tại c&aacute;c quốc gia n&agrave;y?<br />\r\nBạn đang t&igrave;m kiếm một đơn vị tư vấn du học uy t&iacute;n v&agrave; chuy&ecirc;n nghiệp kh&ocirc;ng?&nbsp;</p>\r\n\r\n<p>Nếu c&acirc;u trả lời l&agrave; c&oacute;, th&igrave; bạn đ&atilde; đến đ&uacute;ng nơi rồi.&nbsp;<br />\r\n- CNG Education l&agrave; một trong những trung t&acirc;m tư vấn du học Thụy Sĩ uy t&iacute;n h&agrave;ng đầu Việt Nam. Ngo&agrave;i ra, nếu bạn c&oacute; mong muốn du học c&aacute;c nước n&oacute;i tiếng Anh như Philippines, Canada, &Uacute;c, Anh, Ireland,... th&igrave; CNG cũng sẽ l&agrave; một người bạn đ&aacute;ng tin cậy đ&oacute;.&nbsp;<br />\r\n- &quot;Đi trước&quot;, chia sẻ những kinh nghiệm c&aacute; nh&acirc;n đầy qu&yacute; b&aacute;u v&agrave; t&acirc;m huyết nhất cho c&aacute;c bạn, &nbsp;kết hợp với đội ngũ nh&acirc;n vi&ecirc;n tư vấn du học chuy&ecirc;n nghiệp, nhiệt t&igrave;nh v&agrave; gi&agrave;u kinh nghiệm l&agrave; những cựu du học sinh đến từ Thuỵ Sĩ, Anh, Canada, Philippines, Singapore, những người bạn đồng h&agrave;nh, kh&ocirc;ng chỉ định hướng, m&agrave; c&ograve;n chia sẻ cho bạn những g&oacute;c nh&igrave;n thực tế nhất, để bạn hiện thực h&oacute;a ước mơ đặt ch&acirc;n đến một v&ugrave;ng trời ở nước ngo&agrave;i với nền gi&aacute;o dục chất lượng cao.<br />\r\n- Với tầm nh&igrave;n v&agrave; gi&aacute; trị mang đến cho bạn sự dẫn đường ph&ugrave; hợp nhất để bạn tự m&igrave;nh chinh phục thế giới, CNG Education sẽ l&agrave; người bạn đồng h&agrave;nh tin cậy của bạn trong suốt qu&aacute; tr&igrave;nh du học<br />\r\n- Sứ mệnh của ch&uacute;ng t&ocirc;i l&agrave; biến ước mơ du học của bạn trở th&agrave;nh hiện thực, truyền cảm hứng v&agrave; dẫn đường v&agrave; l&agrave; người bạn đồng h&agrave;nh tr&ecirc;n suốt h&agrave;nh tr&igrave;nh trải nghiệm m&ocirc;i trường gi&aacute;o dục quốc tế chất lượng v&agrave; ph&ugrave; hợp nhất.</p>\r\n', NULL, '2021-06-11 14:06:36', '2023-07-26 16:07:35', 1, 'SỨ MỆNH', 'Tư vấn định hướng về học tập và nghề nghiệp học sinh, sinh viên trở thành công dân toàn cầu, có tư duy sáng tạo độc lập, có kỹ năng tay nghề cao, có bằng cấp và có năng lực cống hiến và phục vụ cho đất nước', 'TẦM NHÌN', 'Phấn đấu đến năm 2025 khẳng định, cam kết là công ty hàng đầu Việt Nam tư vấn về du học . Địa chỉ cầu nối tin cậy của đối tác, các trường, các tập đoàn giáo dục quốc tế và Đại sứ quán trên toàn thế giới', 'MỤC TIÊU', '', 'TẠI SAO CHỌN DU HỌC HÀN QUỐC TẠI HK_INCO?', '', 'tai-sao-chon-du-hoc-han-quoc-tai-hkinco', 1, 'Cong-dong-300x200.jpg', 'do-cao-300x200.jpg', 'cam-ket-300x200.jpg', 'bao-luu-300x200.jpg', 'Mục tiêu: Xây dựng đến năm 2025 Viện đào tạo HÀN ngữ và nghề đạt tiêu chuẩn quốc tế, đào tạo từ 500 đến 1000 học sinh một khóa trở lên/năm.​', 'GIÁ TRỊ CỐT LÕI', 'Tạo giá trị tương lai bền vững về chất lượng niềm tin với khách hàng. Tôn chỉ văn hóa doanh nghiệp, quan tâm, chú trọng đến quyền lợi người lao động và chia sẻ cộng đồng.​'),
(56, 'SỨ MỆNH', 'Tư vấn tận tâm và mang lại cho các bạn những giải pháp du học hiệu quả nhất, tối ưu chi phí nhất phù hợp với từng trường hợp cụ thể', '', 'Cong-dong-300x200.jpg', '2021-06-11 14:06:58', '2023-06-13 10:06:41', 1, '', '', '', '', '', '', 'SỨ MỆNH', '', 'su-menh', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'TẦM NHÌN', 'CNG Education với khát vọng tiên phong, chúng tôi không ngừng nỗ lực phát triển để trở thành tổ chức tư vấn du học hàng đầu tại Việt Nam và khu vực.', '', 'do-cao-300x200.jpg', '2021-06-11 14:06:27', '2023-06-13 10:06:06', 1, '', '', '', '', '', '', 'TẦM NHÌN', '', 'tam-nhin', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'MỤC TIÊU', 'CNG Education mong muốn tạo dựng được một thương hiệu chất lượng và là đối tác chiến lượng của nhiều phụ huynh, học sinh, nhà trường, tổ chức giáo dục....', '', 'cam-ket-300x200.jpg', '2021-06-11 14:06:52', '2023-06-13 10:06:24', 1, '', '', '', '', '', '', 'MỤC TIÊU', '', 'muc-tieu', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'GIÁ TRỊ CỐT LÕI', 'CNG Education luôn cổ vũ và đề cao tinh thần không ngừng học hỏi, luôn đặt mục tiêu nỗ lực hoàn thành xuất sắc công việc của mình. Mang lại giá trị ý nghĩa thiết thực cho các quý khách hàng thân yêu', '', 'bao-luu-300x200.jpg', '2021-06-11 14:06:13', '2023-06-13 10:06:40', 1, '', '', '', '', '', '', 'GIÁ TRỊ CỐT LÕI', '', 'gia-tri-cot-loi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'ĐANG CẬP NHẬT', 'Tổng Giám Đốc', '', 'per4.jpg', '2021-06-11 15:06:31', '2023-06-13 11:06:32', 1, 'Mobile: đang cập nhật\r\nEmail: đang cập nhật', '', '', '', '', '', 'HOÀNG TRỌNG HIẾU', '', 'hoang-trong-hieu', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'ĐANG CẬP NHẬT', 'Giám Đốc Điều Hành Tại Hàn Quốc', '', 'per1.jpg', '2021-06-11 15:06:07', '2023-06-13 11:06:19', 1, 'Mobile: đang cập nhật\r\nEmail: đang cập nhật', '', '', '', '', '', 'NGUYỄN TRỌNG HIẾU', '', 'nguyen-trong-hieu', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'ĐANG CẬP NHẬT', 'Giám Đốc Điều Hành', '', 'per3.jpg', '2021-06-11 15:06:43', '2023-06-13 11:06:53', 1, 'Mobile: đang cập nhật\r\nEmail: đang cập nhật', '', '', '', '', '', 'HOÀNG TRỌNG ANH', '', 'hoang-trong-anh', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'BẠN MUỐN ĐI DU HỌC Ở ĐÂU?', 'CNG Education luôn cổ vũ và đề cao tinh thần không ngừng học hỏi, luôn đặt mục tiêu nỗ lực hoàn thành xuất sắc công việc của mình. Mang lại giá trị ý nghĩa thiết thực cho các quý khách hàng thân yêu', '', NULL, '2023-07-22 09:07:35', '2023-07-25 09:07:41', 1, '', '', '', '', '', '', 'DỊCH VỤ TIÊU BIỂU TẠI CNG EDUCATION', '', 'dich-vu-tieu-bieu-tai-cng-education', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'LÃNH ĐẠO CNG EDUCATION', 'CNG Education là một trong những trung tâm tư vấn du học Thụy Sĩ uy tín hàng đầu Việt Nam. Ngoài ra, nếu bạn có mong muốn du học các nước nói tiếng Anh như Philippines, Canada, Úc, Anh, Ireland,... thì CNG cũng sẽ là một người bạn đáng tin cậy đó.', '', NULL, '2023-07-22 09:07:52', '2023-07-25 11:07:31', 1, '', '', '', '', '', '', 'BAN LÃNH ĐẠO CNG EDUCATION', '', 'ban-lanh-dao-cng-education', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'NHỮNG CÂU CHUYỆN CHƯA KỂ VỀ DU HỌC', 'CNG Education với khát vọng tiên phong, chúng tôi không ngừng nỗ lực phát triển để trở thành tổ chức tư vấn du học hàng đầu tại Việt Nam và khu vực. Chúng tôi mong muốn tạo dựng được một thương hiệu chất lượng và là đối tác chiến lượng của nhiều phụ huynh, học sinh, nhà trường, tổ chức giáo dục....', '', NULL, '2023-07-22 09:07:28', '2023-07-24 15:07:10', 1, '', '', '', '', '', '', 'Ý KIẾN - CẢM NHẬN DU HỌC SINH', '', 'y-kien-cam-nhan-du-hoc-sinh', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'Hi! Tôi là Candice Nguyen', 'CNG Education là một trong những trung tâm tư vấn du học Thụy Sĩ uy tín hàng đầu Việt Nam. Ngoài ra, nếu bạn có mong muốn du học các nước nói tiếng Anh như Philippines, Canada, Úc, Anh, Ireland,... thì CNG cũng sẽ là một người bạn đáng tin cậy đó.\r\n\r\n\"Đi trước\", chia sẻ những kinh nghiệm cá nhân đầy quý báu và tâm huyết nhất cho các bạn, kết hợp với đội ngũ nhân viên tư vấn du học chuyên nghiệp, nhiệt tình và giàu kinh nghiệm là những cựu du học sinh đến từ Thuỵ Sĩ, Anh, Canada, Philippines, Singapore, những người bạn đồng hành, không chỉ định hướng, mà còn chia sẻ cho bạn những góc nhìn thực tế nhất, để bạn hiện thực hóa ước mơ đặt chân đến một vùng trời ở nước ngoài với nền giáo dục chất lượng cao.\r\n\r\nVới tầm nhìn và giá trị mang đến cho bạn sự dẫn đường phù hợp nhất để bạn tự mình chinh phục thế giới, CNG Education sẽ là người bạn đồng hành tin cậy của bạn trong suốt quá trình du học\r\n\r\nSứ mệnh của chúng tôi là biến ước mơ du học của bạn trở thành hiện thực, truyền cảm hứng và dẫn đường và là người bạn đồng hành trên suốt hành trình trải nghiệm môi trường giáo dục quốc tế chất lượng và phù hợp nhất.\r\n\r\nHãy liên hệ với CNG Education ngay hôm nay để được tư vấn bằng tất cả sự tận tâm, sự quan tâm, cùng bạn nuôi dưỡng những ước mơ, với chi phí học tập hợp lí nhất.', '', 'cng_gt.png', '2023-07-22 16:07:36', '2023-07-26 17:07:41', 1, '', '', '', '', '', '', 'Hi! I\'m Avery Davis', '', 'hi-im-avery-davis', 1, NULL, NULL, NULL, NULL, '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home_languages`
--

CREATE TABLE `home_languages` (
  `id` bigint(20) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info6` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info7` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info8` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `home_languages`
--

INSERT INTO `home_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`, `lang_page_sub_info6`, `lang_page_sub_info7`, `lang_page_sub_info8`) VALUES
(75, 55, 'vn', 'TẠI SAO CHỌN CNG EDUCATION <br> LEAD YOUR DREAM CONQUER', '', '<p>Bạn mong muốn được đi du học c&aacute;c quốc gia như Thụy Sĩ, Philippines, Canada, Anh, &Uacute;c?<br />\r\nBạn đang băn khoăn lựa chọn quốc gia ph&ugrave; hợp nhất với năng lực bản th&acirc;n, hay thủ tục, chi ph&iacute;, học bổng, cơ hội việc l&agrave;m, v&agrave; những trải nghiệm thực tế từ c&aacute;c du học sinh tại c&aacute;c quốc gia n&agrave;y?<br />\r\nBạn đang t&igrave;m kiếm một đơn vị tư vấn du học uy t&iacute;n v&agrave; chuy&ecirc;n nghiệp kh&ocirc;ng?&nbsp;</p>\r\n\r\n<p>Nếu c&acirc;u trả lời l&agrave; c&oacute;, th&igrave; bạn đ&atilde; đến đ&uacute;ng nơi rồi.&nbsp;<br />\r\n- CNG Education l&agrave; một trong những trung t&acirc;m tư vấn du học Thụy Sĩ uy t&iacute;n h&agrave;ng đầu Việt Nam. Ngo&agrave;i ra, nếu bạn c&oacute; mong muốn du học c&aacute;c nước n&oacute;i tiếng Anh như Philippines, Canada, &Uacute;c, Anh, Ireland,... th&igrave; CNG cũng sẽ l&agrave; một người bạn đ&aacute;ng tin cậy đ&oacute;.&nbsp;<br />\r\n- &quot;Đi trước&quot;, chia sẻ những kinh nghiệm c&aacute; nh&acirc;n đầy qu&yacute; b&aacute;u v&agrave; t&acirc;m huyết nhất cho c&aacute;c bạn, &nbsp;kết hợp với đội ngũ nh&acirc;n vi&ecirc;n tư vấn du học chuy&ecirc;n nghiệp, nhiệt t&igrave;nh v&agrave; gi&agrave;u kinh nghiệm l&agrave; những cựu du học sinh đến từ Thuỵ Sĩ, Anh, Canada, Philippines, Singapore, những người bạn đồng h&agrave;nh, kh&ocirc;ng chỉ định hướng, m&agrave; c&ograve;n chia sẻ cho bạn những g&oacute;c nh&igrave;n thực tế nhất, để bạn hiện thực h&oacute;a ước mơ đặt ch&acirc;n đến một v&ugrave;ng trời ở nước ngo&agrave;i với nền gi&aacute;o dục chất lượng cao.<br />\r\n- Với tầm nh&igrave;n v&agrave; gi&aacute; trị mang đến cho bạn sự dẫn đường ph&ugrave; hợp nhất để bạn tự m&igrave;nh chinh phục thế giới, CNG Education sẽ l&agrave; người bạn đồng h&agrave;nh tin cậy của bạn trong suốt qu&aacute; tr&igrave;nh du học<br />\r\n- Sứ mệnh của ch&uacute;ng t&ocirc;i l&agrave; biến ước mơ du học của bạn trở th&agrave;nh hiện thực, truyền cảm hứng v&agrave; dẫn đường v&agrave; l&agrave; người bạn đồng h&agrave;nh tr&ecirc;n suốt h&agrave;nh tr&igrave;nh trải nghiệm m&ocirc;i trường gi&aacute;o dục quốc tế chất lượng v&agrave; ph&ugrave; hợp nhất.</p>\r\n', 'SỨ MỆNH', 'Tư vấn định hướng về học tập và nghề nghiệp học sinh, sinh viên trở thành công dân toàn cầu, có tư duy sáng tạo độc lập, có kỹ năng tay nghề cao, có bằng cấp và có năng lực cống hiến và phục vụ cho đất nước', 'TẦM NHÌN', 'Phấn đấu đến năm 2025 khẳng định, cam kết là công ty hàng đầu Việt Nam tư vấn về du học . Địa chỉ cầu nối tin cậy của đối tác, các trường, các tập đoàn giáo dục quốc tế và Đại sứ quán trên toàn thế giới', 'MỤC TIÊU', 1, 'tai-sao-chon-du-hoc-han-quoc-tai-hkinco', 'TẠI SAO CHỌN DU HỌC HÀN QUỐC TẠI HK_INCO?', '', '', 'Mục tiêu: Xây dựng đến năm 2025 Viện đào tạo HÀN ngữ và nghề đạt tiêu chuẩn quốc tế, đào tạo từ 500 đến 1000 học sinh một khóa trở lên/năm.​', 'GIÁ TRỊ CỐT LÕI', 'Tạo giá trị tương lai bền vững về chất lượng niềm tin với khách hàng. Tôn chỉ văn hóa doanh nghiệp, quan tâm, chú trọng đến quyền lợi người lao động và chia sẻ cộng đồng.​'),
(76, 55, 'en', 'WHY CHOOSE CNG EDUCATION <br> LEAD YOUR DREAM CONQUER', '', '<p>Currently, there are many opportunities open to young people who are oriented to study at universities and colleges in Korea. Information sources are also constantly updated, from many different sources.</p>\r\n\r\n<p>&nbsp; &nbsp;But have you ever wondered, is that information accurate? Anyone confirm? Who will be available to support and update information when needed?</p>\r\n\r\n<p>&nbsp; &nbsp;And if you choose a Korean study abroad company, there are many questions that are enough to make you wonder: Is the company reputable? What is the pass rate of VISA? Are the learning and living conditions good? And the most disturbing question is whether the cost is &ldquo;expensive&rdquo;?</p>\r\n\r\n<p>&nbsp; &nbsp;With dozens of questions like that, it may be enough to make you confused and difficult to decide on the future path forward.</p>\r\n\r\n<p>&nbsp; &nbsp;With many years of experience in supporting students studying in Korea at prestigious schools, as well as career orientation, ensuring learning and living conditions with the criteria of dedication, sharing, and joint efforts. . All of these things have made the students and their families completely feel the sincerity and efforts of HK INCO in bringing customers True Value, accompanied by attentive and dedicated service. .</p>\r\n', 'MISSION', 'Counseling on academic and career orientation for students, students become global citizens, have independent creative thinking, have high skilled skills, have qualifications and have the capacity to dedicate and serve the community. country', 'VISION', 'Striving to 2025 affirms and commits to be the leading company in consulting on studying abroad in Vietnam. The trusted bridge address of partners, schools, international education corporations and Embassies around the world', 'TARGET', 1, 'tai-sao-chon-du-hoc-han-quoc-tai-hkinco', 'TẠI SAO CHỌN DU HỌC HÀN QUỐC TẠI HK_INCO?', '', '', 'Objectives: To build by 2025 a Korean language and vocational training institute of international standards, to train from 500 to 1000 students one course or more per year.​', 'CORE VALUES', 'Create sustainable future value on quality trust with customers. Corporate culture principles, concern, focus on the rights of employees and share the community.​'),
(77, 56, 'vn', 'SỨ MỆNH', 'Tư vấn tận tâm và mang lại cho các bạn những giải pháp du học hiệu quả nhất, tối ưu chi phí nhất phù hợp với từng trường hợp cụ thể', '', '', '', '', '', '', 0, 'su-menh', 'SỨ MỆNH', '', '', NULL, NULL, NULL),
(78, 56, 'en', 'english version SỨ MỆNH', 'english version Tư vấn định hướng về học tập và nghề nghiệp học sinh, sinh viên trở thành công dân toàn cầu, có tư duy sáng tạo độc lập, có kỹ năng tay nghề cao, có bằng cấp và có năng lực cống hiến và phục vụ cho đất nước', 'english version ', '', '', '', '', '', 0, 'en-su-menh', 'SỨ MỆNH', '', '', NULL, NULL, NULL),
(79, 57, 'vn', 'TẦM NHÌN', 'CNG Education với khát vọng tiên phong, chúng tôi không ngừng nỗ lực phát triển để trở thành tổ chức tư vấn du học hàng đầu tại Việt Nam và khu vực.', '', '', '', '', '', '', 0, 'tam-nhin', 'TẦM NHÌN', '', '', NULL, NULL, NULL),
(80, 57, 'en', 'english version TẦM NHÌN', 'english version Phấn đấu đến năm 2025 khẳng định, cam kết là công ty hàng đầu Việt Nam tư vấn về du học . Địa chỉ cầu nối tin cậy của đối tác, các trường, các tập đoàn giáo dục quốc tế và Đại sứ quán trên toàn thế giới', 'english version ', '', '', '', '', '', 0, 'en-tam-nhin', 'TẦM NHÌN', '', '', NULL, NULL, NULL),
(81, 58, 'vn', 'MỤC TIÊU', 'CNG Education mong muốn tạo dựng được một thương hiệu chất lượng và là đối tác chiến lượng của nhiều phụ huynh, học sinh, nhà trường, tổ chức giáo dục....', '', '', '', '', '', '', 0, 'muc-tieu', 'MỤC TIÊU', '', '', NULL, NULL, NULL),
(82, 58, 'en', 'english version MỤC TIÊU', 'english version Mục tiêu: Xây dựng đến năm 2025 Viện đào tạo HÀN ngữ và nghề đạt tiêu chuẩn quốc tế, đào tạo từ 500 đến 1000 học sinh một khóa trở lên/năm.​', 'english version ', '', '', '', '', '', 0, 'en-muc-tieu', 'MỤC TIÊU', '', '', NULL, NULL, NULL),
(83, 59, 'vn', 'GIÁ TRỊ CỐT LÕI', 'CNG Education luôn cổ vũ và đề cao tinh thần không ngừng học hỏi, luôn đặt mục tiêu nỗ lực hoàn thành xuất sắc công việc của mình. Mang lại giá trị ý nghĩa thiết thực cho các quý khách hàng thân yêu', '', '', '', '', '', '', 0, 'gia-tri-cot-loi', 'GIÁ TRỊ CỐT LÕI', '', '', NULL, NULL, NULL),
(84, 59, 'en', 'english version GIÁ TRỊ CỐT LÕI', 'english version Tạo giá trị tương lai bền vững về chất lượng niềm tin với khách hàng. Tôn chỉ văn hóa doanh nghiệp, quan tâm, chú trọng đến quyền lợi người lao động và chia sẻ cộng đồng.​', 'english version ', '', '', '', '', '', 0, 'en-gia-tri-cot-loi', 'GIÁ TRỊ CỐT LÕI', '', '', NULL, NULL, NULL),
(85, 60, 'vn', 'ĐANG CẬP NHẬT', 'Tổng Giám Đốc', '', 'Mobile: đang cập nhật\r\nEmail: đang cập nhật', '', '', '', '', 0, 'hoang-trong-hieu', 'HOÀNG TRỌNG HIẾU', '', '', NULL, NULL, NULL),
(86, 60, 'en', 'english version HOÀNG TRỌNG HIẾU', 'english version 1', 'english version ', '2', '', '', '', '', 0, 'en-hoang-trong-hieu', 'HOÀNG TRỌNG HIẾU', '', '', NULL, NULL, NULL),
(87, 61, 'vn', 'ĐANG CẬP NHẬT', 'Giám Đốc Điều Hành Tại Hàn Quốc', '', 'Mobile: đang cập nhật\r\nEmail: đang cập nhật', '', '', '', '', 0, 'nguyen-trong-hieu', 'NGUYỄN TRỌNG HIẾU', '', '', NULL, NULL, NULL),
(88, 61, 'en', 'english version NGUYỄN TRỌNG HIẾU', 'english version Giám Đốc', 'english version ', 'Mobile: 0986 205 055\r\nEmail: hkinco98@gmail.com', '', '', '', '', 0, 'en-nguyen-trong-hieu', 'NGUYỄN TRỌNG HIẾU', '', '', NULL, NULL, NULL),
(89, 62, 'vn', 'ĐANG CẬP NHẬT', 'Giám Đốc Điều Hành', '', 'Mobile: đang cập nhật\r\nEmail: đang cập nhật', '', '', '', '', 0, 'hoang-trong-anh', 'HOÀNG TRỌNG ANH', '', '', NULL, NULL, NULL),
(90, 62, 'en', 'english version HOÀNG TRỌNG ANH', 'english version Giám Đốc', 'english version ', 'Mobile: 0986 205 055\r\nEmail: hkinco98@gmail.com', '', '', '', '', 0, 'en-hoang-trong-anh', 'HOÀNG TRỌNG ANH', '', '', NULL, NULL, NULL),
(161, 98, 'vn', 'BẠN MUỐN ĐI DU HỌC Ở ĐÂU?', 'CNG Education luôn cổ vũ và đề cao tinh thần không ngừng học hỏi, luôn đặt mục tiêu nỗ lực hoàn thành xuất sắc công việc của mình. Mang lại giá trị ý nghĩa thiết thực cho các quý khách hàng thân yêu', '', '', '', '', '', '', 1, 'dich-vu-tieu-bieu-tai-cng-education', 'DỊCH VỤ TIÊU BIỂU TẠI CNG EDUCATION', '', '', '', '', ''),
(162, 98, 'en', 'WHERE DO YOU WANT TO STUDY?', 'CNG Education always encourages and upholds the spirit of constantly learning, always aiming to strive to excellently complete its work. Bringing practical value to our dear customers', '', '', '', '', '', '', 1, 'dich-vu-tieu-bieu-tai-cng-education', 'DỊCH VỤ TIÊU BIỂU TẠI CNG EDUCATION', '', '', '', '', ''),
(163, 99, 'vn', 'LÃNH ĐẠO CNG EDUCATION', 'CNG Education là một trong những trung tâm tư vấn du học Thụy Sĩ uy tín hàng đầu Việt Nam. Ngoài ra, nếu bạn có mong muốn du học các nước nói tiếng Anh như Philippines, Canada, Úc, Anh, Ireland,... thì CNG cũng sẽ là một người bạn đáng tin cậy đó.', '', '', '', '', '', '', 1, 'ban-lanh-dao-cng-education', 'BAN LÃNH ĐẠO CNG EDUCATION', '', '', '', '', ''),
(164, 99, 'en', 'LEADERSHIP CNG EDUCATION', 'CNG Education is one of the leading prestigious Swiss study abroad consulting centers in Vietnam. In addition, if you have a desire to study in English-speaking countries such as the Philippines, Canada, Australia, UK, Ireland, etc., CNG will also be a reliable friend.', '', '', '', '', '', '', 1, 'ban-lanh-dao-cng-education', 'BAN LÃNH ĐẠO CNG EDUCATION', '', '', '', '', ''),
(165, 100, 'vn', 'NHỮNG CÂU CHUYỆN CHƯA KỂ VỀ DU HỌC', 'CNG Education với khát vọng tiên phong, chúng tôi không ngừng nỗ lực phát triển để trở thành tổ chức tư vấn du học hàng đầu tại Việt Nam và khu vực. Chúng tôi mong muốn tạo dựng được một thương hiệu chất lượng và là đối tác chiến lượng của nhiều phụ huynh, học sinh, nhà trường, tổ chức giáo dục....', '', '', '', '', '', '', 1, 'y-kien-cam-nhan-du-hoc-sinh', 'Ý KIẾN - CẢM NHẬN DU HỌC SINH', '', '', '', '', ''),
(166, 100, 'en', 'UNTESTED STORIES ABOUT STUDY AWAY', 'CNG Education with pioneering aspirations, we are constantly striving to develop to become the leading study abroad consulting organization in Vietnam and the region. We wish to build a quality brand and be a strategic partner of many parents, students, schools, educational institutions....', '', '', '', '', '', '', 1, 'y-kien-cam-nhan-du-hoc-sinh', 'Ý KIẾN - CẢM NHẬN DU HỌC SINH', '', '', '', '', ''),
(167, 101, 'vn', 'Hi! Tôi là Candice Nguyen', 'CNG Education là một trong những trung tâm tư vấn du học Thụy Sĩ uy tín hàng đầu Việt Nam. Ngoài ra, nếu bạn có mong muốn du học các nước nói tiếng Anh như Philippines, Canada, Úc, Anh, Ireland,... thì CNG cũng sẽ là một người bạn đáng tin cậy đó.\r\n\r\n\"Đi trước\", chia sẻ những kinh nghiệm cá nhân đầy quý báu và tâm huyết nhất cho các bạn, kết hợp với đội ngũ nhân viên tư vấn du học chuyên nghiệp, nhiệt tình và giàu kinh nghiệm là những cựu du học sinh đến từ Thuỵ Sĩ, Anh, Canada, Philippines, Singapore, những người bạn đồng hành, không chỉ định hướng, mà còn chia sẻ cho bạn những góc nhìn thực tế nhất, để bạn hiện thực hóa ước mơ đặt chân đến một vùng trời ở nước ngoài với nền giáo dục chất lượng cao.\r\n\r\nVới tầm nhìn và giá trị mang đến cho bạn sự dẫn đường phù hợp nhất để bạn tự mình chinh phục thế giới, CNG Education sẽ là người bạn đồng hành tin cậy của bạn trong suốt quá trình du học\r\n\r\nSứ mệnh của chúng tôi là biến ước mơ du học của bạn trở thành hiện thực, truyền cảm hứng và dẫn đường và là người bạn đồng hành trên suốt hành trình trải nghiệm môi trường giáo dục quốc tế chất lượng và phù hợp nhất.\r\n\r\nHãy liên hệ với CNG Education ngay hôm nay để được tư vấn bằng tất cả sự tận tâm, sự quan tâm, cùng bạn nuôi dưỡng những ước mơ, với chi phí học tập hợp lí nhất.', '', '', '', '', '', '', 1, 'hi-im-avery-davis', 'Hi! I\'m Avery Davis', '', '', '', '', ''),
(168, 101, 'en', ' Hi! I\'m Candice Nguyen', 'CNG Education is one of the leading prestigious Swiss study abroad consulting centers in Vietnam. In addition, if you have a desire to study in English-speaking countries such as the Philippines, Canada, Australia, UK, Ireland, etc., CNG will also be a reliable friend.\r\n\r\n\"Go ahead\", share the most valuable and enthusiastic personal experiences with you, combined with a team of professional, enthusiastic and experienced study abroad consultants who are former international students coming to Vietnam. from Switzerland, England, Canada, Philippines, Singapore, the companions, not only orient, but also share with you the most realistic perspectives, so that you realize your dream of setting foot in a sky in the world. abroad with high quality education.\r\n\r\nWith the vision and values that give you the most suitable guidance for you to conquer the world on your own, CNG Education will be your reliable companion throughout the study abroad process.\r\n\r\nOur mission is to make your dream of studying abroad come true, to inspire and guide and be a companion on the journey to experience the most relevant and quality international education environment.\r\n\r\nContact CNG Education today for advice with all your dedication and care, to nurture your dreams with the most reasonable study costs.', '', '', '', '', '', '', 1, 'hi-im-avery-davis', 'Hi! I\'m Avery Davis', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ho_so_online`
--

CREATE TABLE `ho_so_online` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `nguyen_vong` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `bang_diem` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `chung_chi_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay` datetime DEFAULT NULL,
  `passport` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ho_so_online`
--

INSERT INTO `ho_so_online` (`id`, `name`, `phone`, `email`, `note`, `nguyen_vong`, `bang_diem`, `chung_chi_en`, `ngay`, `passport`) VALUES
(1, 'Trương Quang Tuấn', '0987654321', 'tuan@gmail.com', '2', '1', '1691034278ghe1.png', '1691034278logocopy.png', '2023-08-03 10:44:38', '1691034278ghe.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ho_tro`
--

CREATE TABLE `ho_tro` (
  `id` int(11) NOT NULL,
  `phone` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `ho_tro`
--

INSERT INTO `ho_tro` (`id`, `phone`, `ngay`) VALUES
(1, '0987654321', '2021-06-12 01:20:11'),
(2, '0123456798', '2021-06-15 04:48:02'),
(3, '0123456798', '2021-06-15 04:49:50'),
(4, '0987654322', '2021-06-15 04:49:56'),
(5, '092955885', '2021-06-15 04:57:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `installation_file`
--

CREATE TABLE `installation_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `installation_file`
--

INSERT INTO `installation_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_name` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`languages_id`, `languages_code`, `languages_name`) VALUES
(1, 'vn', 'Tiếng Việt'),
(2, 'en', 'English');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `comment` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `passport` text DEFAULT NULL,
  `nguyen_vong` text DEFAULT NULL,
  `ngay` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lien_he`
--

INSERT INTO `lien_he` (`id`, `name`, `email`, `phone`, `address`, `comment`, `time`, `passport`, `nguyen_vong`, `ngay`) VALUES
(9, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', NULL, '2', '2023-07-22 04:39:13', '1690000753logocopy.png', '1', '2023-07-22 11:39:13'),
(10, 'Phạm Thúy Hằng', 'phamthuyhang11091989@gmail.com', '0973378668', NULL, '', '2023-07-25 02:43:34', '', '', '2023-07-25 09:43:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `listings_certifications_file`
--

CREATE TABLE `listings_certifications_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `listings_certifications_file`
--

INSERT INTO `listings_certifications_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_sort_order` int(11) DEFAULT 0,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `menu_parent` int(11) NOT NULL DEFAULT 0,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `state_menuHeader` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_sort_order`, `menu_type_id`, `menu_url`, `productcat_id`, `newscat_id`, `product_id`, `page_id`, `news_id`, `state`, `menu_parent`, `servicecat_id`, `service_id`, `state_menuHeader`) VALUES
(147, 'Dịch vụ', 2, 10, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(153, 'Trắc nghiệm tính cách / nghề nghiệp', 6, 5, '', 0, 17, 0, 0, 0, 1, 0, 0, 0, NULL),
(155, 'Về CNG', 1, 13, '', 0, 0, 0, 35, 0, 1, 0, 0, 0, NULL),
(164, 'Blog du học', 5, 5, '', 0, 14, 0, 0, 0, 1, 0, 0, 0, NULL),
(260, 'Tin tức & Học bổng', 4, 5, '', 0, 5, 0, 0, 0, 1, 0, 0, 0, NULL),
(265, 'Khoa học', 0, 7, '', 0, 0, 0, 0, 160, 1, 264, 0, 0, NULL),
(320, 'Du học sinh Blog', 0, 5, '', 0, 15, 0, 0, 0, 1, 164, 0, 0, NULL),
(321, 'Cựu du học sinh Blog', 0, 5, '', 0, 16, 0, 0, 0, 1, 164, 0, 0, NULL),
(322, 'Nộp hồ sơ online', 7, 8, 'nop-ho-so-online', 0, 0, 0, 0, 0, 1, 329, 0, 0, NULL),
(323, 'Tin tức Sự kiện', 8, 8, 'su-kien', 0, 0, 0, 0, 0, 1, 329, 0, 0, NULL),
(324, 'Lịch sự kiện', 9, 8, 'lich-su-kien', 0, 0, 0, 0, 0, 1, 329, 0, 0, NULL),
(326, 'Tư vấn du học', 0, 5, '', 0, 18, 0, 0, 0, 1, 147, 0, 0, NULL),
(327, 'Các dịch vụ hỗ trợ du học sinh', 0, 5, '', 0, 19, 0, 0, 0, 1, 147, 0, 0, NULL),
(328, 'Du học', 3, 13, '', 0, 0, 0, 102, 0, 1, 0, 0, 0, NULL),
(329, 'Sự kiện', 6, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_languages`
--

CREATE TABLE `menu_languages` (
  `id` bigint(20) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_menu_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `urlFriendly_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_languages`
--

INSERT INTO `menu_languages` (`id`, `languages_code`, `lang_menu_name`, `edit_state`, `urlFriendly_menu`, `menu_id`) VALUES
(271, 'vn', 'Dịch vụ', 1, '', 147),
(272, 'en', 'Study program', 1, '', 147),
(283, 'vn', 'Trắc nghiệm tính cách / nghề nghiệp', 1, '', 153),
(284, 'en', 'Personality/career test', 1, '', 153),
(287, 'vn', 'Về CNG', 1, '', 155),
(288, 'en', 'About CNG', 1, '', 155),
(305, 'vn', 'Blog du học', 0, '', 164),
(306, 'en', 'Blog du học', 0, '', 164),
(513, 'vn', 'Tin tức & Học bổng', 1, '', 260),
(514, 'en', 'News', 1, '', 260),
(523, 'vn', 'Khoa học', 0, '', 265),
(524, 'en', 'Khoa học', 0, '', 265),
(633, 'vn', 'Du học sinh Blog', 1, '', 320),
(634, 'en', 'Overseas Student Blog', 1, '', 320),
(635, 'vn', 'Cựu du học sinh Blog', 1, '', 321),
(636, 'en', 'Alumni Blog', 1, '', 321),
(637, 'vn', 'Nộp hồ sơ online', 1, 'nop-ho-so-online', 322),
(638, 'en', 'Submit your resume online', 1, '', 322),
(639, 'vn', 'Tin tức Sự kiện', 1, 'su-kien', 323),
(640, 'en', 'Event', 1, 'su-kien', 323),
(641, 'vn', 'Lịch sự kiện', 1, 'lich-su-kien', 324),
(642, 'en', 'Event calendar', 1, 'lich-su-kien', 324),
(645, 'vn', 'Tư vấn du học', 0, '', 326),
(646, 'en', 'Tư vấn du học', 0, '', 326),
(647, 'vn', 'Các dịch vụ hỗ trợ du học sinh', 0, '', 327),
(648, 'en', 'Các dịch vụ hỗ trợ du học sinh', 0, '', 327),
(649, 'vn', 'Du học', 0, '', 328),
(650, 'en', 'Du học', 0, '', 328),
(651, 'vn', 'Sự kiện', 0, '', 329),
(652, 'en', 'Sự kiện', 0, '', 329);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type`
--

CREATE TABLE `menu_type` (
  `menu_type_id` int(11) NOT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type`
--

INSERT INTO `menu_type` (`menu_type_id`, `menu_type_name`, `first_url`) VALUES
(1, 'Trang chủ', ''),
(2, 'Tất cả sản phẩm', 'san-pham'),
(3, 'Danh mục sản phẩm', NULL),
(4, 'Sản phẩm cụ thể', NULL),
(5, 'Danh mục tin tức', NULL),
(6, 'Tất cả bài tin tức', ''),
(7, 'Bài viết tin tức', NULL),
(8, 'Địa chỉ web', NULL),
(9, 'Liên hệ', NULL),
(10, 'Tất cả dịch vụ', NULL),
(11, 'Bài viết dịch vụ', NULL),
(12, 'Danh mục dịch vụ', NULL),
(13, 'Page', NULL),
(14, 'Đăng ký', NULL),
(15, 'Đăng nhập', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type_languages`
--

CREATE TABLE `menu_type_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type_languages`
--

INSERT INTO `menu_type_languages` (`id`, `languages_code`, `menu_type_id`, `menu_type_name`, `friendly_url`) VALUES
(1, 'vn', 1, 'Trang chủ', ''),
(2, 'en', 1, 'Home', ''),
(3, 'vn', 2, 'Tất cả sản phẩm', 'san-pham'),
(4, 'en', 2, 'All products', 'products'),
(5, 'vn', 3, 'Danh mục sản phẩm', ''),
(6, 'en', 3, 'Catalog product', ''),
(7, 'vn', 4, 'Sản phẩm cụ thể', ''),
(8, 'en', 4, 'Product detail', ''),
(9, 'vn', 5, 'Danh mục tin tức', ''),
(10, 'en', 5, 'Catalog news', ''),
(11, 'vn', 6, 'Tất cả bài tin tức', 'tin-tuc'),
(12, 'en', 6, 'All News', 'news'),
(13, 'vn', 7, 'Bài viết tin tức', ''),
(14, 'en', 7, 'News detail', ''),
(15, 'vn', 8, 'Địa chỉ website', ''),
(16, 'en', 8, 'Website Address', ''),
(17, 'vn', 9, 'Liên hệ', 'lien-he'),
(18, 'en', 9, 'Contact', 'contact'),
(19, 'vn', 10, 'Tất cả dịch vụ', 'dich-vu'),
(20, 'en', 10, 'All Services', 'services'),
(21, 'vn', 11, 'Bài viết dịch vụ', ''),
(22, 'en', 11, 'Service detail', ''),
(23, 'vn', 12, 'Danh mục dịch vụ', ''),
(24, 'en', 12, 'Catalog service', ''),
(25, 'vn', 13, 'Trang nội dung', ''),
(26, 'en', 13, 'Page', ''),
(27, 'vn', 14, 'Đăng ký', 'dang-ky'),
(28, 'en', 14, 'Sign in', 'sign-in'),
(29, 'vn', 15, 'Đăng nhập', 'dang-nhap'),
(30, 'en', 15, 'Log in', 'log-in');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_views` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `news_author` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_created_date` datetime DEFAULT NULL,
  `news_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `news_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`news_id`, `news_name`, `news_des`, `news_content`, `news_img`, `news_views`, `newscat_id`, `news_author`, `news_created_date`, `news_update_date`, `state`, `news_sub_info1`, `news_sub_info2`, `news_sub_info3`, `news_sub_info4`, `news_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(188, 'ĐIỀU KIỆN ĐỂ DU HỌC THỤY SĨ NĂM 2023', 'Được biết đến không chỉ là một trong những quốc gia đáng sống nhất, Thụy Sĩ còn cực kì nổi tiếng với tốc độ phát triển của giáo dục, đặc biệt là sự vươn lên mạnh mẽ của ngành Nhà hàng khách sạn - Du lịch.', '<p dir=\"ltr\"><strong>Được biết đến kh&ocirc;ng chỉ l&agrave; một trong những quốc gia đ&aacute;ng sống nhất, Thụy Sĩ c&ograve;n cực k&igrave; nổi tiếng với tốc độ ph&aacute;t triển của gi&aacute;o dục, đặc biệt l&agrave; sự vươn l&ecirc;n mạnh mẽ của ng&agrave;nh Nh&agrave; h&agrave;ng kh&aacute;ch sạn - Du lịch. Đ&oacute; cũng ch&iacute;nh l&agrave; l&yacute; do m&agrave; ng&agrave;y c&agrave;ng nhiều sinh vi&ecirc;n Việt Nam lựa chọn đất nước n&agrave;y l&agrave; điểm đến l&yacute; tưởng để học tập.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>C&ugrave;ng CNG Education t&igrave;m hiểu về những điều kiện để c&oacute; thể trở th&agrave;nh du học sinh Thụy Sĩ nh&eacute;!</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Điều kiện về năng lực học tập: Nếu bạn muốn xin học bổng th&igrave; GPA l&agrave; yếu tố thiết yếu, nhưng điều kiện nhập học tại Thụy Sĩ kh&aacute; dễ d&agrave;ng. Bạn sẽ chỉ cần c&oacute; bằng tốt nghiệp THPT, hoặc Đại học m&agrave; k cần phải x&eacute;t GPA.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Điều kiện về ngoại ngữ: Y&ecirc;u cầu đầu v&agrave;o căn bản đối với phần lớn c&aacute;c kh&oacute;a học l&agrave; IELTS 5.0. Bạn cũng ho&agrave;n to&agrave;n c&oacute; thể l&agrave;m b&agrave;i test với trường v&agrave; đăng k&iacute; c&aacute;c kh&oacute;a học tiếng Anh tại Thụy Sĩ.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Điều kiện về t&agrave;i ch&iacute;nh: Đ&acirc;y l&agrave; một trong những điều kiện đ&aacute;ng c&acirc;n nhắc nhất, bởi học ph&iacute; v&agrave; sinh hoạt ph&iacute; tại quốc gia n&agrave;y thường nằm ở mức rất cao, trung b&igrave;nh 1 năm khoảng 25&#39;000 đến 30&#39;000 CHF t&ugrave;y trường.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>Để c&oacute; thể du học Thụy Sĩ th&agrave;nh c&ocirc;ng, bạn rất cần một người bạn đồng h&agrave;nh để hướng dẫn, chỉ đường v&agrave; gi&uacute;p đỡ, đặc biệt l&agrave; trong qu&aacute; tr&igrave;nh chuẩn bị hồ sơ v&agrave; đ&aacute;p ứng c&aacute;c điều kiện đi du học. V&agrave; CNG Education rất mong c&oacute; thể s&aacute;t c&aacute;nh c&ugrave;ng bạn tr&ecirc;n h&agrave;nh tr&igrave;nh n&agrave;y.</strong></p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>----------------------------------</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>CNG GROUP&nbsp;- TRUNG T&Acirc;M TƯ VẤN DU HỌC&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>thuộc c&ocirc;ng ty TNHH&nbsp;Candice Nguyen Global Group</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>Lead your dream conquer</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>| Th&ocirc;ng tin li&ecirc;n hệ&nbsp;|</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Phone: +84 822-824-188</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Office Hours: 8 - 11h, 13h30 - 16h30 từ thứ Hai đến thứ Bảy</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Email: cngeducation@cnggroup.org</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Address: Tầng 4, L&ocirc; số 38, khu đ&ocirc; thị MKL, Hồng Hải, Hạ Long, Quảng Ninh.</strong></p>\r\n', '347803626_768414418109229_7044320877905095028_n.jpg', 0, 4, '', '2023-06-13 14:06:27', '2023-06-13 14:06:07', 1, '', '', '', '', '', 'ĐIỀU KIỆN ĐỂ DU HỌC THỤY SĨ NĂM 2023', '', 'dieu-kien-de-du-hoc-thuy-si-nam-2023', '', 1),
(189, 'Nhóm tính cách của bạn có phù hợp với vị trí nào trong ngành hospitality? ', 'Hospitality (tiếng Anh) được hiểu là lòng mến khách, sự hiếu khách và sự tiếp đãi ân cần. Chúng ta sẽ nhận thấy, đây là một từ rất quen thuộc, và thường xuyên bắt gặp tại các ngành cung cấp dịch vụ khách hàng bao gồm các hoạt động chào đón khách', '<p>Nội dung đang cập nh&acirc;t</p>\r\n', '347803626_768414418109229_7044320877905095028_n.jpg', 0, 5, '', '2023-07-13 08:07:31', '2023-07-25 11:07:35', 1, '', '', '', '', '', 'Nhóm tính cách của bạn có phù hợp với vị trí nào trong ngành hospitality? ', '', 'nhom-tinh-cach-cua-ban-co-phu-hop-voi-vi-tri-nao-trong-nganh-hospitality', '', 1),
(190, 'Vươn mình ra thế giới chỉ sau một mùa hè. Bạn có dám không?', 'Để có thể phát triển một cách toàn diện ngay trong mùa hè này, các em cần được hướng dẫn và được sống trong môi trường không gian giáo dục, được sử dụng tiếng Anh trong cuộc sống hàng ngày. Hãy để cho bản thân có cơ hội bứt phá', '<p>Nội dung đang cập nhật</p>\r\n', '349108282_1333869850559447_7786420146062536054_n.jpg', 0, 5, '', '2023-07-13 08:07:19', '2023-07-25 11:07:54', 1, '', '', '', '', '', 'Vươn mình ra thế giới chỉ sau một mùa hè. Bạn có dám không?', '', 'vuon-minh-ra-the-gioi-chi-sau-mot-mua-he-ban-co-dam-khong', '', 1),
(191, 'Nguyễn Thị Hồng Hà', 'Thật may mắn vì em đã được biết đến CNG EDUCATION. Em được tư vấn, chỉ bảo rất chi tiết, tận tình và được giúp đỡ rất nhiều vấn đề. Từ đó giúp con đường đi du học của em được thuận lợi và dễ dàng hơn. CNG EDUCATION đồng hành cùng em như người thân, và tất cả giấy tờ, thủ được được các thầy cô của công ty làm hết từ A-Z, em chỉ việc tập trung vào việc học thôi ạ. Cảm ơn các thầy cô tại CNG EDUCATION rất nhiều ạ', '<p>Thật may mắn v&igrave; em đ&atilde; được biết đến CNG EDUCATION. Em được tư vấn, chỉ bảo rất chi tiết, tận t&igrave;nh v&agrave; được gi&uacute;p đỡ rất nhiều vấn đề. Từ đ&oacute; gi&uacute;p con đường đi du học của em được thuận lợi v&agrave; dễ d&agrave;ng hơn. CNG EDUCATION đồng h&agrave;nh c&ugrave;ng em như người th&acirc;n, v&agrave; tất cả giấy tờ, thủ được được c&aacute;c thầy c&ocirc; của c&ocirc;ng ty l&agrave;m hết từ A-Z, em chỉ việc tập trung v&agrave;o việc học th&ocirc;i ạ. Cảm ơn c&aacute;c thầy c&ocirc; tại CNG EDUCATION rất nhiều ạ</p>\r\n', 'cus_per2.jpg', 0, 13, '', '2023-07-13 09:07:11', NULL, 1, 'Du học sinh Canada', '', '', '', '', 'Nguyễn Thị Hồng Hà', '', 'nguyen-thi-hong-ha', '', 1),
(192, 'Trần Quang Minh', 'Thật may mắn vì em đã được biết đến CNG EDUCATION. Em được tư vấn, chỉ bảo rất chi tiết, tận tình và được giúp đỡ rất nhiều vấn đề. Từ đó giúp con đường đi du học của em được thuận lợi và dễ dàng hơn. CNG EDUCATION đồng hành cùng em như người thân, và tất cả giấy tờ, thủ được được các thầy cô của công ty làm hết từ A-Z, em chỉ việc tập trung vào việc học thôi ạ. Cảm ơn các thầy cô tại CNG EDUCATION rất nhiều ạ', '<p>Thật may mắn v&igrave; em đ&atilde; được biết đến CNG EDUCATION. Em được tư vấn, chỉ bảo rất chi tiết, tận t&igrave;nh v&agrave; được gi&uacute;p đỡ rất nhiều vấn đề. Từ đ&oacute; gi&uacute;p con đường đi du học của em được thuận lợi v&agrave; dễ d&agrave;ng hơn. CNG EDUCATION đồng h&agrave;nh c&ugrave;ng em như người th&acirc;n, v&agrave; tất cả giấy tờ, thủ được được c&aacute;c thầy c&ocirc; của c&ocirc;ng ty l&agrave;m hết từ A-Z, em chỉ việc tập trung v&agrave;o việc học th&ocirc;i ạ. Cảm ơn c&aacute;c thầy c&ocirc; tại CNG EDUCATION rất nhiều ạ</p>\r\n', 'cus_per1.jpg', 0, 13, '', '2023-07-13 09:07:20', NULL, 1, 'Du học sinh Thụy Sỹ', '', '', '', '', 'Trần Quang Minh', '', 'tran-quang-minh', '', 1),
(193, 'Lương Thùy Linh', 'Thật may mắn vì em đã được biết đến CNG EDUCATION. Em được tư vấn, chỉ bảo rất chi tiết, tận tình và được giúp đỡ rất nhiều vấn đề. Từ đó giúp con đường đi du học của em được thuận lợi và dễ dàng hơn. CNG EDUCATION đồng hành cùng em như người thân, và tất cả giấy tờ, thủ được được các thầy cô của công ty làm hết từ A-Z, em chỉ việc tập trung vào việc học thôi ạ. Cảm ơn các thầy cô tại CNG EDUCATION rất nhiều ạ', '<p>Thật may mắn v&igrave; em đ&atilde; được biết đến CNG EDUCATION. Em được tư vấn, chỉ bảo rất chi tiết, tận t&igrave;nh v&agrave; được gi&uacute;p đỡ rất nhiều vấn đề. Từ đ&oacute; gi&uacute;p con đường đi du học của em được thuận lợi v&agrave; dễ d&agrave;ng hơn. CNG EDUCATION đồng h&agrave;nh c&ugrave;ng em như người th&acirc;n, v&agrave; tất cả giấy tờ, thủ được được c&aacute;c thầy c&ocirc; của c&ocirc;ng ty l&agrave;m hết từ A-Z, em chỉ việc tập trung v&agrave;o việc học th&ocirc;i ạ. Cảm ơn c&aacute;c thầy c&ocirc; tại CNG EDUCATION rất nhiều ạ</p>\r\n', 'cus_per3.jpg', 0, 13, '', '2023-07-13 09:07:26', NULL, 1, 'Du học sinh Philippines', '', '', '', '', 'Lương Thùy Linh', '', 'luong-thuy-linh', '', 1),
(194, 'Nguyễn Quốc Bình', 'Thật may mắn vì em đã được biết đến CNG EDUCATION. Em được tư vấn, chỉ bảo rất chi tiết, tận tình và được giúp đỡ rất nhiều vấn đề. Từ đó giúp con đường đi du học của em được thuận lợi và dễ dàng hơn. CNG EDUCATION đồng hành cùng em như người thân, và tất cả giấy tờ, thủ được được các thầy cô của công ty làm hết từ A-Z, em chỉ việc tập trung vào việc học thôi ạ. Cảm ơn các thầy cô tại CNG EDUCATION rất nhiều ạ', '<p>Thật may mắn v&igrave; em đ&atilde; được biết đến CNG EDUCATION. Em được tư vấn, chỉ bảo rất chi tiết, tận t&igrave;nh v&agrave; được gi&uacute;p đỡ rất nhiều vấn đề. Từ đ&oacute; gi&uacute;p con đường đi du học của em được thuận lợi v&agrave; dễ d&agrave;ng hơn. CNG EDUCATION đồng h&agrave;nh c&ugrave;ng em như người th&acirc;n, v&agrave; tất cả giấy tờ, thủ được được c&aacute;c thầy c&ocirc; của c&ocirc;ng ty l&agrave;m hết từ A-Z, em chỉ việc tập trung v&agrave;o việc học th&ocirc;i ạ. Cảm ơn c&aacute;c thầy c&ocirc; tại CNG EDUCATION rất nhiều ạ</p>\r\n', 'cus_per4.jpg', 0, 13, '', '2023-07-13 09:07:57', NULL, 1, 'Du học sinh Thụy Sỹ', '', '', '', '', 'Nguyễn Quốc Bình', '', 'nguyen-quoc-binh', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat`
--

CREATE TABLE `newscat` (
  `newscat_id` int(11) NOT NULL,
  `newscat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_parent` int(11) DEFAULT NULL,
  `newscat_sort_order` int(11) DEFAULT NULL,
  `newscat_created_date` datetime DEFAULT NULL,
  `newscat_update_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT 0,
  `newscat_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat`
--

INSERT INTO `newscat` (`newscat_id`, `newscat_name`, `newscat_des`, `newscat_content`, `newscat_parent`, `newscat_sort_order`, `newscat_created_date`, `newscat_update_date`, `state`, `newscat_img`, `newscat_sub_info1`, `newscat_sub_info2`, `newscat_sub_info3`, `newscat_sub_info4`, `newscat_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(4, 'Tư vấn', '', '', 0, 0, '2023-06-13 11:06:12', NULL, 1, NULL, '', '', '', '', '', 'Tư vấn', '', 'tu-van', '', 1),
(5, 'Tin tức', '<p>&igrave;uio9p</p>\r\n', '', 0, 0, '2023-07-26 10:07:52', NULL, 1, NULL, '', '', '', '', '', 'Tin tức', '', 'tin-tuc', '', 1),
(13, 'Ý kiến - cảm nhận', '', '', 0, 0, '2023-07-13 09:07:10', NULL, 1, '', '', '', '', '', '', 'Ý kiến - cảm nhận', '', 'y-kien-cam-nhan', '', 1),
(14, 'Blog', '', '', 0, 0, '2023-07-22 09:07:39', NULL, 1, '', '', '', '', '', '', 'Blog', '', 'blog', '', 1),
(15, 'Du học sinh Blog', '', '', 14, 0, '2023-07-22 09:07:22', NULL, 1, '', '', '', '', '', '', 'Du học sinh Blog', '', 'du-hoc-sinh-blog', '', 1),
(16, 'Cựu du học sinh Blog', '', '', 14, 0, '2023-07-22 09:07:57', NULL, 1, '', '', '', '', '', '', 'Cựu du học sinh Blog', '', 'cuu-du-hoc-sinh-blog', '', 1),
(17, 'Trắc nghiệm tích cách / Nghề nghiệp', '', '', 0, 0, '2023-07-25 11:07:22', NULL, 1, NULL, '', '', '', '', '', 'Trắc nghiệm tính cách / Nghề nghiệp', '', 'trac-nghiem-tinh-cach-nghe-nghiep', '', 1),
(18, 'Tư vấn du học', '', '', 0, 0, '2023-08-01 11:08:55', NULL, 1, '', '', '', '', '', '', 'Tư vấn du học', '', 'tu-van-du-hoc', '', 1),
(19, 'Các dịch vụ hỗ trợ du học sinh', '', '', 0, 0, '2023-08-01 11:08:14', NULL, 1, '', '', '', '', '', '', 'Các dịch vụ hỗ trợ du học sinh', '', 'cac-dich-vu-ho-tro-du-hoc-sinh', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat_languages`
--

CREATE TABLE `newscat_languages` (
  `id` int(11) NOT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat_languages`
--

INSERT INTO `newscat_languages` (`id`, `newscat_id`, `languages_code`, `lang_newscat_name`, `lang_newscat_des`, `lang_newscat_content`, `lang_newscat_sub_info1`, `lang_newscat_sub_info2`, `lang_newscat_sub_info3`, `lang_newscat_sub_info4`, `lang_newscat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(7, 4, 'vn', 'Tư vấn', '', NULL, '', '', '', '', '', 0, 'tu-van', '', 'Tư vấn', ''),
(8, 4, 'en', 'english version Cẩm nang', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-cam-nang', '', 'Cẩm nang', ''),
(9, 5, 'vn', 'Tin tức', '<p>&igrave;uio9p</p>\r\n', '1', '', '', '', '', '', 1, 'tin-tuc', '', 'Tin tức', ''),
(10, 5, 'en', 'english version Tin tức – Sự kiện', '<p>english version</p>\r\n', '1', '', '', '', '', '', 1, 'tin-tuc', '', 'News', ''),
(25, 13, 'vn', 'Ý kiến - cảm nhận', '', '1', '', '', '', '', '', 1, 'y-kien-cam-nhan', '', 'Ý kiến - cảm nhận', ''),
(26, 13, 'en', 'english version Ý kiến - cảm nhận', '<p>english version</p>\r\n', '1', '', '', '', '', '', 1, 'en-y-kien-cam-nhan', '', 'Ý kiến - cảm nhận', ''),
(27, 14, 'vn', 'Blog', '', '', '', '', '', '', '', 0, 'blog', '', 'Blog', ''),
(28, 14, 'en', 'english version Blog', 'english version ', 'english version ', '', '', '', '', '', 0, 'blog', '', 'Blog', ''),
(29, 15, 'vn', 'Du học sinh Blog', '', '', '', '', '', '', '', 0, 'du-hoc-sinh-blog', '', 'Du học sinh Blog', ''),
(30, 15, 'en', 'english version Du học sinh Blog', 'english version ', 'english version ', '', '', '', '', '', 0, 'du-hoc-sinh-blog', '', 'Du học sinh Blog', ''),
(31, 16, 'vn', 'Cựu du học sinh Blog', '', '', '', '', '', '', '', 0, 'cuu-du-hoc-sinh-blog', '', 'Cựu du học sinh Blog', ''),
(32, 16, 'en', 'english version Cựu du học sinh Blog', 'english version ', 'english version ', '', '', '', '', '', 0, 'cuu-du-hoc-sinh-blog', '', 'Cựu du học sinh Blog', ''),
(33, 17, 'vn', 'Trắc nghiệm tích cách / Nghề nghiệp', '', NULL, '', '', '', '', '', 0, 'trac-nghiem-tinh-cach-nghe-nghiep', '', 'Trắc nghiệm tính cách / Nghề nghiệp', ''),
(34, 17, 'en', 'english version Trắc nghiệm tích cách / Nghề nghiệp', 'english version ', 'english version ', '', '', '', '', '', 0, 'trac-nghiem-tinh-cach-nghe-nghiep', '', 'Trắc nghiệm tích cách / Nghề nghiệp', ''),
(35, 18, 'vn', 'Tư vấn du học', '', '', '', '', '', '', '', 0, 'tu-van-du-hoc', '', 'Tư vấn du học', ''),
(36, 18, 'en', 'english version Tư vấn du học', 'english version ', 'english version ', '', '', '', '', '', 0, 'tu-van-du-hoc', '', 'Tư vấn du học', ''),
(37, 19, 'vn', 'Các dịch vụ hỗ trợ du học sinh', '', '', '', '', '', '', '', 0, 'cac-dich-vu-ho-tro-du-hoc-sinh', '', 'Các dịch vụ hỗ trợ du học sinh', ''),
(38, 19, 'en', 'english version Các dịch vụ hỗ trợ du học sinh', 'english version ', 'english version ', '', '', '', '', '', 0, 'cac-dich-vu-ho-tro-du-hoc-sinh', '', 'Các dịch vụ hỗ trợ du học sinh', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_languages`
--

CREATE TABLE `news_languages` (
  `id` bigint(20) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_languages`
--

INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(375, 188, 'vn', 'ĐIỀU KIỆN ĐỂ DU HỌC THỤY SĨ NĂM 2023', 'Được biết đến không chỉ là một trong những quốc gia đáng sống nhất, Thụy Sĩ còn cực kì nổi tiếng với tốc độ phát triển của giáo dục, đặc biệt là sự vươn lên mạnh mẽ của ngành Nhà hàng khách sạn - Du lịch.', '<p dir=\"ltr\"><strong>Được biết đến kh&ocirc;ng chỉ l&agrave; một trong những quốc gia đ&aacute;ng sống nhất, Thụy Sĩ c&ograve;n cực k&igrave; nổi tiếng với tốc độ ph&aacute;t triển của gi&aacute;o dục, đặc biệt l&agrave; sự vươn l&ecirc;n mạnh mẽ của ng&agrave;nh Nh&agrave; h&agrave;ng kh&aacute;ch sạn - Du lịch. Đ&oacute; cũng ch&iacute;nh l&agrave; l&yacute; do m&agrave; ng&agrave;y c&agrave;ng nhiều sinh vi&ecirc;n Việt Nam lựa chọn đất nước n&agrave;y l&agrave; điểm đến l&yacute; tưởng để học tập.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>C&ugrave;ng CNG Education t&igrave;m hiểu về những điều kiện để c&oacute; thể trở th&agrave;nh du học sinh Thụy Sĩ nh&eacute;!</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Điều kiện về năng lực học tập: Nếu bạn muốn xin học bổng th&igrave; GPA l&agrave; yếu tố thiết yếu, nhưng điều kiện nhập học tại Thụy Sĩ kh&aacute; dễ d&agrave;ng. Bạn sẽ chỉ cần c&oacute; bằng tốt nghiệp THPT, hoặc Đại học m&agrave; k cần phải x&eacute;t GPA.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Điều kiện về ngoại ngữ: Y&ecirc;u cầu đầu v&agrave;o căn bản đối với phần lớn c&aacute;c kh&oacute;a học l&agrave; IELTS 5.0. Bạn cũng ho&agrave;n to&agrave;n c&oacute; thể l&agrave;m b&agrave;i test với trường v&agrave; đăng k&iacute; c&aacute;c kh&oacute;a học tiếng Anh tại Thụy Sĩ.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Điều kiện về t&agrave;i ch&iacute;nh: Đ&acirc;y l&agrave; một trong những điều kiện đ&aacute;ng c&acirc;n nhắc nhất, bởi học ph&iacute; v&agrave; sinh hoạt ph&iacute; tại quốc gia n&agrave;y thường nằm ở mức rất cao, trung b&igrave;nh 1 năm khoảng 25&#39;000 đến 30&#39;000 CHF t&ugrave;y trường.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>Để c&oacute; thể du học Thụy Sĩ th&agrave;nh c&ocirc;ng, bạn rất cần một người bạn đồng h&agrave;nh để hướng dẫn, chỉ đường v&agrave; gi&uacute;p đỡ, đặc biệt l&agrave; trong qu&aacute; tr&igrave;nh chuẩn bị hồ sơ v&agrave; đ&aacute;p ứng c&aacute;c điều kiện đi du học. V&agrave; CNG Education rất mong c&oacute; thể s&aacute;t c&aacute;nh c&ugrave;ng bạn tr&ecirc;n h&agrave;nh tr&igrave;nh n&agrave;y.</strong></p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>----------------------------------</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>CNG GROUP&nbsp;- TRUNG T&Acirc;M TƯ VẤN DU HỌC&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>thuộc c&ocirc;ng ty TNHH&nbsp;Candice Nguyen Global Group</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>Lead your dream conquer</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>| Th&ocirc;ng tin li&ecirc;n hệ&nbsp;|</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Phone: +84 822-824-188</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Office Hours: 8 - 11h, 13h30 - 16h30 từ thứ Hai đến thứ Bảy</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Email: cngeducation@cnggroup.org</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Address: Tầng 4, L&ocirc; số 38, khu đ&ocirc; thị MKL, Hồng Hải, Hạ Long, Quảng Ninh.</strong></p>\r\n', '', '', '', '', '', 0, 'dieu-kien-de-du-hoc-thuy-si-nam-2023', 'ĐIỀU KIỆN ĐỂ DU HỌC THỤY SĨ NĂM 2023', '', ''),
(376, 188, 'en', 'english version ĐIỀU KIỆN ĐỂ DU HỌC THỤY SĨ NĂM 2023', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-dieu-kien-de-du-hoc-thuy-si-nam-2023', 'ĐIỀU KIỆN ĐỂ DU HỌC THỤY SĨ NĂM 2023', '', ''),
(377, 189, 'vn', 'Nhóm tính cách của bạn có phù hợp với vị trí nào trong ngành hospitality? ', 'Hospitality (tiếng Anh) được hiểu là lòng mến khách, sự hiếu khách và sự tiếp đãi ân cần. Chúng ta sẽ nhận thấy, đây là một từ rất quen thuộc, và thường xuyên bắt gặp tại các ngành cung cấp dịch vụ khách hàng bao gồm các hoạt động chào đón khách', '<p>Nội dung đang cập nh&acirc;t</p>\r\n', '', '', '', '', '', 1, 'nhom-tinh-cach-cua-ban-co-phu-hop-voi-vi-tri-nao-trong-nganh-hospitality', 'Nhóm tính cách của bạn có phù hợp với vị trí nào trong ngành hospitality? ', '', ''),
(378, 189, 'en', 'english version Nhóm tính cách của bạn có phù hợp với vị trí nào trong ngành hospitality? ', 'english version ', '<p>english version</p>\r\n\r\n<p>Nội dung đang cập nh&acirc;t</p>\r\n', '', '', '', '', '', 1, 'nhom-tinh-cach-cua-ban-co-phu-hop-voi-vi-tri-nao-trong-nganh-hospitality', 'Sự kiện tuyển dụng', '', ''),
(379, 190, 'vn', 'Vươn mình ra thế giới chỉ sau một mùa hè. Bạn có dám không?', 'Để có thể phát triển một cách toàn diện ngay trong mùa hè này, các em cần được hướng dẫn và được sống trong môi trường không gian giáo dục, được sử dụng tiếng Anh trong cuộc sống hàng ngày. Hãy để cho bản thân có cơ hội bứt phá', '<p>Nội dung đang cập nhật</p>\r\n', '', '', '', '', '', 1, 'vuon-minh-ra-the-gioi-chi-sau-mot-mua-he-ban-co-dam-khong', 'Vươn mình ra thế giới chỉ sau một mùa hè. Bạn có dám không?', '', ''),
(380, 190, 'en', 'english version Vươn mình ra thế giới chỉ sau một mùa hè. Bạn có dám không?', 'english version ', '<p>english version</p>\r\n\r\n<p>Nội dung đang cập nhật</p>\r\n', '', '', '', '', '', 1, 'vuon-minh-ra-the-gioi-chi-sau-mot-mua-he-ban-co-dam-khong', 'Sự kiện nghe quảng bá', '', ''),
(381, 191, 'vn', 'Nguyễn Thị Hồng Hà', 'Thật may mắn vì em đã được biết đến CNG EDUCATION. Em được tư vấn, chỉ bảo rất chi tiết, tận tình và được giúp đỡ rất nhiều vấn đề. Từ đó giúp con đường đi du học của em được thuận lợi và dễ dàng hơn. CNG EDUCATION đồng hành cùng em như người thân, và tất cả giấy tờ, thủ được được các thầy cô của công ty làm hết từ A-Z, em chỉ việc tập trung vào việc học thôi ạ. Cảm ơn các thầy cô tại CNG EDUCATION rất nhiều ạ', '<p>Thật may mắn v&igrave; em đ&atilde; được biết đến CNG EDUCATION. Em được tư vấn, chỉ bảo rất chi tiết, tận t&igrave;nh v&agrave; được gi&uacute;p đỡ rất nhiều vấn đề. Từ đ&oacute; gi&uacute;p con đường đi du học của em được thuận lợi v&agrave; dễ d&agrave;ng hơn. CNG EDUCATION đồng h&agrave;nh c&ugrave;ng em như người th&acirc;n, v&agrave; tất cả giấy tờ, thủ được được c&aacute;c thầy c&ocirc; của c&ocirc;ng ty l&agrave;m hết từ A-Z, em chỉ việc tập trung v&agrave;o việc học th&ocirc;i ạ. Cảm ơn c&aacute;c thầy c&ocirc; tại CNG EDUCATION rất nhiều ạ</p>\r\n', '', '', '', '', '', 1, 'nguyen-thi-hong-ha', 'Nguyễn Thị Hồng Hà', '', ''),
(382, 191, 'en', 'Nguyễn Thị Hồng Hà', 'I\'m lucky that I got to know CNG EDUCATION. I was consulted, instructed in very detailed, dedicated and helped a lot of issues. This made my study abroad journey easier and more convenient. CNG EDUCATION accompanies me like a relative, and all the documents and procedures are done by the company\'s teachers from A-Z, I just need to focus on studying. Thank you very much to the teachers at CNG EDUCATION', '<p>I&#39;m lucky that I got to know CNG EDUCATION. I was consulted, instructed in very detailed, dedicated and helped a lot of issues. This made my study abroad journey easier and more convenient. CNG EDUCATION accompanies me like a relative, and all the documents and procedures are done by the company&#39;s teachers from A-Z, I just need to focus on studying. Thank you very much to the teachers at CNG EDUCATION</p>\r\n', '', '', '', '', '', 1, 'en-nguyen-thi-hong-ha', 'Nguyễn Thị Hồng Hà', '', ''),
(383, 192, 'vn', 'Trần Quang Minh', 'Thật may mắn vì em đã được biết đến CNG EDUCATION. Em được tư vấn, chỉ bảo rất chi tiết, tận tình và được giúp đỡ rất nhiều vấn đề. Từ đó giúp con đường đi du học của em được thuận lợi và dễ dàng hơn. CNG EDUCATION đồng hành cùng em như người thân, và tất cả giấy tờ, thủ được được các thầy cô của công ty làm hết từ A-Z, em chỉ việc tập trung vào việc học thôi ạ. Cảm ơn các thầy cô tại CNG EDUCATION rất nhiều ạ', '<p>Thật may mắn v&igrave; em đ&atilde; được biết đến CNG EDUCATION. Em được tư vấn, chỉ bảo rất chi tiết, tận t&igrave;nh v&agrave; được gi&uacute;p đỡ rất nhiều vấn đề. Từ đ&oacute; gi&uacute;p con đường đi du học của em được thuận lợi v&agrave; dễ d&agrave;ng hơn. CNG EDUCATION đồng h&agrave;nh c&ugrave;ng em như người th&acirc;n, v&agrave; tất cả giấy tờ, thủ được được c&aacute;c thầy c&ocirc; của c&ocirc;ng ty l&agrave;m hết từ A-Z, em chỉ việc tập trung v&agrave;o việc học th&ocirc;i ạ. Cảm ơn c&aacute;c thầy c&ocirc; tại CNG EDUCATION rất nhiều ạ</p>\r\n', '', '', '', '', '', 1, 'tran-quang-minh', 'Trần Quang Minh', '', ''),
(384, 192, 'en', 'Trần Quang Minh', 'I\'m lucky that I got to know CNG EDUCATION. I was consulted, instructed in very detailed, dedicated and helped a lot of issues. This made my study abroad journey easier and more convenient. CNG EDUCATION accompanies me like a relative, and all the documents and procedures are done by the company\'s teachers from A-Z, I just need to focus on studying. Thank you very much to the teachers at CNG EDUCATION', '<p>I&#39;m lucky that I got to know CNG EDUCATION. I was consulted, instructed in very detailed, dedicated and helped a lot of issues. This made my study abroad journey easier and more convenient. CNG EDUCATION accompanies me like a relative, and all the documents and procedures are done by the company&#39;s teachers from A-Z, I just need to focus on studying. Thank you very much to the teachers at CNG EDUCATION</p>\r\n', '', '', '', '', '', 1, 'en-tran-quang-minh', 'Trần Quang Minh', '', ''),
(385, 193, 'vn', 'Lương Thùy Linh', 'Thật may mắn vì em đã được biết đến CNG EDUCATION. Em được tư vấn, chỉ bảo rất chi tiết, tận tình và được giúp đỡ rất nhiều vấn đề. Từ đó giúp con đường đi du học của em được thuận lợi và dễ dàng hơn. CNG EDUCATION đồng hành cùng em như người thân, và tất cả giấy tờ, thủ được được các thầy cô của công ty làm hết từ A-Z, em chỉ việc tập trung vào việc học thôi ạ. Cảm ơn các thầy cô tại CNG EDUCATION rất nhiều ạ', '<p>Thật may mắn v&igrave; em đ&atilde; được biết đến CNG EDUCATION. Em được tư vấn, chỉ bảo rất chi tiết, tận t&igrave;nh v&agrave; được gi&uacute;p đỡ rất nhiều vấn đề. Từ đ&oacute; gi&uacute;p con đường đi du học của em được thuận lợi v&agrave; dễ d&agrave;ng hơn. CNG EDUCATION đồng h&agrave;nh c&ugrave;ng em như người th&acirc;n, v&agrave; tất cả giấy tờ, thủ được được c&aacute;c thầy c&ocirc; của c&ocirc;ng ty l&agrave;m hết từ A-Z, em chỉ việc tập trung v&agrave;o việc học th&ocirc;i ạ. Cảm ơn c&aacute;c thầy c&ocirc; tại CNG EDUCATION rất nhiều ạ</p>\r\n', '', '', '', '', '', 1, 'luong-thuy-linh', 'Lương Thùy Linh', '', ''),
(386, 193, 'en', 'Lương Thùy Linh', 'I\'m lucky that I got to know CNG EDUCATION. I was consulted, instructed in very detailed, dedicated and helped a lot of issues. This made my study abroad journey easier and more convenient. CNG EDUCATION accompanies me like a relative, and all the documents and procedures are done by the company\'s teachers from A-Z, I just need to focus on studying. Thank you very much to the teachers at CNG EDUCATION', '<p>I&#39;m lucky that I got to know CNG EDUCATION. I was consulted, instructed in very detailed, dedicated and helped a lot of issues. This made my study abroad journey easier and more convenient. CNG EDUCATION accompanies me like a relative, and all the documents and procedures are done by the company&#39;s teachers from A-Z, I just need to focus on studying. Thank you very much to the teachers at CNG EDUCATION</p>\r\n', '', '', '', '', '', 1, 'en-luong-thuy-linh', 'Lương Thùy Linh', '', ''),
(387, 194, 'vn', 'Nguyễn Quốc Bình', 'Thật may mắn vì em đã được biết đến CNG EDUCATION. Em được tư vấn, chỉ bảo rất chi tiết, tận tình và được giúp đỡ rất nhiều vấn đề. Từ đó giúp con đường đi du học của em được thuận lợi và dễ dàng hơn. CNG EDUCATION đồng hành cùng em như người thân, và tất cả giấy tờ, thủ được được các thầy cô của công ty làm hết từ A-Z, em chỉ việc tập trung vào việc học thôi ạ. Cảm ơn các thầy cô tại CNG EDUCATION rất nhiều ạ', '<p>Thật may mắn v&igrave; em đ&atilde; được biết đến CNG EDUCATION. Em được tư vấn, chỉ bảo rất chi tiết, tận t&igrave;nh v&agrave; được gi&uacute;p đỡ rất nhiều vấn đề. Từ đ&oacute; gi&uacute;p con đường đi du học của em được thuận lợi v&agrave; dễ d&agrave;ng hơn. CNG EDUCATION đồng h&agrave;nh c&ugrave;ng em như người th&acirc;n, v&agrave; tất cả giấy tờ, thủ được được c&aacute;c thầy c&ocirc; của c&ocirc;ng ty l&agrave;m hết từ A-Z, em chỉ việc tập trung v&agrave;o việc học th&ocirc;i ạ. Cảm ơn c&aacute;c thầy c&ocirc; tại CNG EDUCATION rất nhiều ạ</p>\r\n', '', '', '', '', '', 1, 'nguyen-quoc-binh', 'Nguyễn Quốc Bình', '', ''),
(388, 194, 'en', 'Nguyễn Quốc Bình', 'english version Thật may mắn vì em đã được biết đến CNG EDUCATION. Em được tư vấn, chỉ bảo rất chi tiết, tận tình và được giúp đỡ rất nhiều vấn đề. Từ đó giúp con đường đi du học của em được thuận lợi và dễ dàng hơn. CNG EDUCATION đồng hành cùng em như người thân, và tất cả giấy tờ, thủ được được các thầy cô của công ty làm hết từ A-Z, em chỉ việc tập trung vào việc học thôi ạ. Cảm ơn các thầy cô tại CNG EDUCATION rất nhiều ạ', '<p>english version</p>\r\n\r\n<p>Thật may mắn v&igrave; em đ&atilde; được biết đến CNG EDUCATION. Em được tư vấn, chỉ bảo rất chi tiết, tận t&igrave;nh v&agrave; được gi&uacute;p đỡ rất nhiều vấn đề. Từ đ&oacute; gi&uacute;p con đường đi du học của em được thuận lợi v&agrave; dễ d&agrave;ng hơn. CNG EDUCATION đồng h&agrave;nh c&ugrave;ng em như người th&acirc;n, v&agrave; tất cả giấy tờ, thủ được được c&aacute;c thầy c&ocirc; của c&ocirc;ng ty l&agrave;m hết từ A-Z, em chỉ việc tập trung v&agrave;o việc học th&ocirc;i ạ. Cảm ơn c&aacute;c thầy c&ocirc; tại CNG EDUCATION rất nhiều ạ</p>\r\n', '', '', '', '', '', 1, 'en-nguyen-quoc-binh', 'Nguyễn Quốc Bình', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_ban_tin`
--

CREATE TABLE `nhan_ban_tin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhan_ban_tin`
--

INSERT INTO `nhan_ban_tin` (`id`, `email`, `time`) VALUES
(1, 'tuan@gmail.com', '2017-11-29 13:54:44'),
(2, 'donguyenthinh30031989@gmail.com', '2017-12-23 01:12:33'),
(3, 'truongquangtuan3110@gmail.com', '2018-01-03 12:04:35'),
(4, 'truongquangtuan3110@gmail.com', '2018-01-03 12:12:05'),
(5, 'donguyenthinh30031989@gmail.com', '2018-01-04 07:40:46'),
(6, 'truongquangtuan3110@gmail.com', '2018-01-04 09:02:07'),
(7, 'donguyenthinh30031989@gmail.com', '2018-01-04 09:31:40'),
(8, 'donguyenthinh30031989@gmail.com', '2018-01-04 10:17:09'),
(9, 'viethung95cute@gmail.com', '2018-03-27 07:55:42'),
(10, 'viethung95cute@gmail.com', '2018-03-28 05:08:41'),
(11, 'viethung95cute@gmail.com', '2018-03-28 05:12:29'),
(12, 'viethung95cute@gmail.com', '2018-03-28 05:13:40'),
(13, 'viethung95cute@gmail.com', '2018-03-28 05:45:42'),
(14, 'viethung95cute@gmail.com', '2018-03-28 05:48:44'),
(15, 'hung71483@gmail.com', '2018-03-28 05:51:51'),
(16, 'hung71483@gmail.com', '2018-03-28 05:54:44'),
(17, 'hung71483@gmail.com', '2018-03-28 06:01:14'),
(18, 'hung71483@gmail.com', '2018-03-28 06:03:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_tai_lieu`
--

CREATE TABLE `nhan_tai_lieu` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhan_tai_lieu`
--

INSERT INTO `nhan_tai_lieu` (`id`, `email`, `time`) VALUES
(1, 'tuan@gmail.com', '2017-11-29 12:33:22'),
(2, 'manh@gmail.com', '2017-12-02 11:58:58'),
(3, 'ngockhanh260614@gmail.com', '2017-12-03 04:05:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `noi_su_kien`
--

CREATE TABLE `noi_su_kien` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `thoi_gian` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `van_phong` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dia_chi` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `noi_su_kien`
--

INSERT INTO `noi_su_kien` (`id`, `product_id`, `name`, `thoi_gian`, `van_phong`, `dia_chi`) VALUES
(3, 269, 'Hà Nội', '12:00 sáng', 'CNG Education', 'Hồ Gươm, Hà Nội');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `obsolete_products_file`
--

CREATE TABLE `obsolete_products_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `obsolete_products_file`
--

INSERT INTO `obsolete_products_file` (`id`, `name`) VALUES
(3, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `operating_file`
--

CREATE TABLE `operating_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `operating_file`
--

INSERT INTO `operating_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ1`
--

CREATE TABLE `optionsQ1` (
  `optionsQ1_id` int(11) NOT NULL,
  `optionsQ1_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ1`
--

INSERT INTO `optionsQ1` (`optionsQ1_id`, `optionsQ1_value`) VALUES
(1, 'Đau rát'),
(2, 'Chảy máu khi đi vệ sinh'),
(3, 'Ngứa ngáy, khó chịu, ẩm ướt có mùi khó chịu'),
(4, 'Búi trĩ sa ra ngoài (nhìn hoặc sờ)'),
(5, 'Không có biểu hiện nào như trên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ2`
--

CREATE TABLE `optionsQ2` (
  `optionsQ2_id` int(11) NOT NULL,
  `optionsQ2_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ2`
--

INSERT INTO `optionsQ2` (`optionsQ2_id`, `optionsQ2_value`) VALUES
(1, 'Có'),
(2, 'Không');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ3`
--

CREATE TABLE `optionsQ3` (
  `optionsQ3_id` int(11) NOT NULL,
  `optionsQ3_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ3`
--

INSERT INTO `optionsQ3` (`optionsQ3_id`, `optionsQ3_value`) VALUES
(1, 'Mới (đang bị)'),
(2, 'Lâu, tái đi tái lại'),
(3, 'Lâu, nhưng giờ đang bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ4`
--

CREATE TABLE `optionsQ4` (
  `optionsQ4_id` int(11) NOT NULL,
  `optionsQ4_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ4`
--

INSERT INTO `optionsQ4` (`optionsQ4_id`, `optionsQ4_value`) VALUES
(1, 'Máu dính trên giấy vệ sinh'),
(2, 'Máu dính trên phân hoặc nhỏ giọt'),
(3, 'Máu chảy thành tia'),
(4, 'Không thấy máu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ5`
--

CREATE TABLE `optionsQ5` (
  `optionsQ5_id` int(11) NOT NULL,
  `optionsQ5_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ5`
--

INSERT INTO `optionsQ5` (`optionsQ5_id`, `optionsQ5_value`) VALUES
(1, 'Hơi đau, tức hậu môn, khó chịu'),
(2, 'Đau nhiều, rát. đỡ khi nằm'),
(3, 'Rất đau rát, đứng ngồi, nằm không yên'),
(4, 'Không đau, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ6`
--

CREATE TABLE `optionsQ6` (
  `optionsQ6_id` int(11) NOT NULL,
  `optionsQ6_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ6`
--

INSERT INTO `optionsQ6` (`optionsQ6_id`, `optionsQ6_value`) VALUES
(1, 'Ít, lồi ra như hạt ngô'),
(2, 'Nhiều, lồi ra bằng 1/3 đốt ngón tay'),
(3, 'Rất nhiều, dài >2.5cm'),
(4, 'Không sa, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ7`
--

CREATE TABLE `optionsQ7` (
  `optionsQ7_id` int(11) NOT NULL,
  `optionsQ7_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ7`
--

INSERT INTO `optionsQ7` (`optionsQ7_id`, `optionsQ7_value`) VALUES
(1, 'Không tự co vào được, ấn vào lại sa ra, hoặc rặn nhẹ là sa ra'),
(2, 'Tự co lên được sau khi ấn vào nhẹ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ8`
--

CREATE TABLE `optionsQ8` (
  `optionsQ8_id` int(11) NOT NULL,
  `optionsQ8_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ8`
--

INSERT INTO `optionsQ8` (`optionsQ8_id`, `optionsQ8_value`) VALUES
(1, 'Khô, thoáng bình thường, không có dịch'),
(2, 'Hơi ẩm, ít mùi'),
(3, 'Ướt, có dịch vào đồ lót, mùi khó chịu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ9`
--

CREATE TABLE `optionsQ9` (
  `optionsQ9_id` int(11) NOT NULL,
  `optionsQ9_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ9`
--

INSERT INTO `optionsQ9` (`optionsQ9_id`, `optionsQ9_value`) VALUES
(1, 'Có'),
(2, 'Không'),
(3, 'Có nhưng mức độ 3-4h/ngày');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_total_price` float DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `orders_created_date` datetime DEFAULT NULL,
  `orders_state` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_detail_quantity` int(11) DEFAULT NULL,
  `order_detail_price` double DEFAULT NULL,
  `order_detail_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_state`
--

CREATE TABLE `order_state` (
  `order_state_id` int(11) NOT NULL,
  `order_state_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_state`
--

INSERT INTO `order_state` (`order_state_id`, `order_state_name`, `state`) VALUES
(1, 'Chờ xác nhận', 0),
(2, 'Đã xác nhận', 0),
(3, 'Chờ thanh toán', 0),
(4, 'Đã thanh toán', 0),
(5, 'Chờ gửi hàng', 0),
(6, '	\r\nHủy đơn hàng', 0),
(7, '	\r\nĐã chuyển hàng', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `page_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_created_date` datetime DEFAULT NULL,
  `page_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `page_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`) VALUES
(35, 'Về chúng tôi', 'Sứ mệnh của CNG Education là biến ước mơ du học của bạn trở thành hiện thực, truyền cảm hứng và dẫn đường và là người bạn đồng hành trên suốt hành trình trải nghiệm môi trường giáo dục quốc tế chất lượng và phù hợp nhất.', '<p dir=\"ltr\">CNG EDUCATION - LEAD YOUR DREAM CONQUER</p>\r\n\r\n<p dir=\"ltr\">&nbsp;Bạn mong muốn được đi du học c&aacute;c quốc gia như Thụy Sĩ, Philippines, Canada, Anh, &Uacute;c?</p>\r\n\r\n<p dir=\"ltr\">&nbsp;Bạn đang băn khoăn lựa chọn quốc gia ph&ugrave; hợp nhất với năng lực bản th&acirc;n, hay thủ tục, chi ph&iacute;, học bổng, cơ hội việc l&agrave;m, v&agrave; những trải nghiệm thực tế từ c&aacute;c du học sinh tại c&aacute;c quốc gia n&agrave;y?</p>\r\n\r\n<p dir=\"ltr\">&nbsp;Bạn đang t&igrave;m kiếm một đơn vị tư vấn du học uy t&iacute;n v&agrave; chuy&ecirc;n nghiệp kh&ocirc;ng?&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Nếu c&acirc;u trả lời l&agrave; c&oacute;, th&igrave; bạn đ&atilde; đến đ&uacute;ng nơi rồi.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">&nbsp;CNG Education l&agrave; một trong những trung t&acirc;m tư vấn du học Thụy Sĩ uy t&iacute;n h&agrave;ng đầu Việt Nam. Ngo&agrave;i ra, nếu bạn c&oacute; mong muốn du học c&aacute;c nước n&oacute;i tiếng Anh như Philippines, Canada, &Uacute;c, Anh, Ireland,... th&igrave; CNG cũng sẽ l&agrave; một người bạn đ&aacute;ng tin cậy đ&oacute;.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">&quot;Đi trước&quot;, chia sẻ những kinh nghiệm c&aacute; nh&acirc;n đầy qu&yacute; b&aacute;u v&agrave; t&acirc;m huyết nhất cho c&aacute;c bạn,&nbsp; kết hợp với đội ngũ nh&acirc;n vi&ecirc;n tư vấn du học chuy&ecirc;n nghiệp, nhiệt t&igrave;nh v&agrave; gi&agrave;u kinh nghiệm l&agrave; những cựu du học sinh đến từ Thuỵ Sĩ, Anh, Canada, Philippines, Singapore, những người bạn đồng h&agrave;nh, kh&ocirc;ng chỉ định hướng, m&agrave; c&ograve;n chia sẻ cho bạn những g&oacute;c nh&igrave;n thực tế nhất, để bạn hiện thực h&oacute;a ước mơ đặt ch&acirc;n đến một v&ugrave;ng trời ở nước ngo&agrave;i với nền gi&aacute;o dục chất lượng cao.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;Với tầm nh&igrave;n v&agrave; gi&aacute; trị mang đến cho bạn sự dẫn đường ph&ugrave; hợp nhất để bạn tự m&igrave;nh chinh phục thế giới, CNG Education sẽ l&agrave; người bạn đồng h&agrave;nh tin cậy của bạn trong suốt qu&aacute; tr&igrave;nh du học</p>\r\n\r\n<p dir=\"ltr\">&nbsp;Sứ mệnh của ch&uacute;ng t&ocirc;i l&agrave; biến ước mơ du học của bạn trở th&agrave;nh hiện thực, truyền cảm hứng v&agrave; dẫn đường v&agrave; l&agrave; người bạn đồng h&agrave;nh tr&ecirc;n suốt h&agrave;nh tr&igrave;nh trải nghiệm m&ocirc;i trường gi&aacute;o dục quốc tế chất lượng v&agrave; ph&ugrave; hợp nhất.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;H&atilde;y li&ecirc;n hệ với CNG Education ngay h&ocirc;m nay để được tư vấn bằng tất cả sự tận t&acirc;m, sự quan t&acirc;m, c&ugrave;ng bạn nu&ocirc;i dưỡng những ước mơ, với chi ph&iacute; học tập hợp l&iacute; nhất.</p>\r\n', 'tuyển dụng.png', '2017-05-11 16:05:22', '2023-07-21 17:07:18', 1, '', '', '', '', '', '', 'Về chúng tôi', '', 've-chung-toi', 1),
(36, 'Chuyên nhận đặt hàng', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', NULL, '2017-05-11 16:05:03', '2018-08-24 19:08:39', 1, '', '', '', '', '', 'báo giá dịch vụ', 'Chuyên nhận đặt hàng', '\"Làm kế toán phải có Tâm với Doanh nghiệp. Đang Tư vấn Miễn Phí. Tìm hiểu ngay!\r\nBảo hành trọn đời · Bảo vệ Doanh Nghiệp\"', 'chuyen-nhan-dat-hang', 1),
(37, 'Tuyển dụng', '', '', NULL, '2017-05-18 02:05:05', '2020-09-04 08:09:04', 1, '', '', '', '', '', '', 'Tuyển Dụng', '', 'tuyen-cong-tac-vien', 1),
(40, 'Chính sách bảo mật', '', '', NULL, '2017-07-10 22:07:44', '2020-09-04 08:09:12', 1, '', '', '', '', '', '', 'Chính sách bảo mật', '', 'chinh-sach-bao-mat', 1),
(46, ' Hệ thống', '', '', NULL, '2018-03-27 11:03:18', '2018-10-30 10:10:10', 1, '', '', '', '', '', '', ' Hệ thống', '', 'he-thong', 1),
(102, 'Du học', '', '<p>Nội dung đang cập nhật</p>\r\n', '', '2023-08-01 10:08:34', NULL, 1, '', '', '', '', '', '', 'Du học', '', 'du-hoc-page', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_languages`
--

CREATE TABLE `page_languages` (
  `id` bigint(20) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page_languages`
--

INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(35, 35, 'vn', 'Về chúng tôi', 'Sứ mệnh của CNG Education là biến ước mơ du học của bạn trở thành hiện thực, truyền cảm hứng và dẫn đường và là người bạn đồng hành trên suốt hành trình trải nghiệm môi trường giáo dục quốc tế chất lượng và phù hợp nhất.', '<p dir=\"ltr\">CNG EDUCATION - LEAD YOUR DREAM CONQUER</p>\r\n\r\n<p dir=\"ltr\">&nbsp;Bạn mong muốn được đi du học c&aacute;c quốc gia như Thụy Sĩ, Philippines, Canada, Anh, &Uacute;c?</p>\r\n\r\n<p dir=\"ltr\">&nbsp;Bạn đang băn khoăn lựa chọn quốc gia ph&ugrave; hợp nhất với năng lực bản th&acirc;n, hay thủ tục, chi ph&iacute;, học bổng, cơ hội việc l&agrave;m, v&agrave; những trải nghiệm thực tế từ c&aacute;c du học sinh tại c&aacute;c quốc gia n&agrave;y?</p>\r\n\r\n<p dir=\"ltr\">&nbsp;Bạn đang t&igrave;m kiếm một đơn vị tư vấn du học uy t&iacute;n v&agrave; chuy&ecirc;n nghiệp kh&ocirc;ng?&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Nếu c&acirc;u trả lời l&agrave; c&oacute;, th&igrave; bạn đ&atilde; đến đ&uacute;ng nơi rồi.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">&nbsp;CNG Education l&agrave; một trong những trung t&acirc;m tư vấn du học Thụy Sĩ uy t&iacute;n h&agrave;ng đầu Việt Nam. Ngo&agrave;i ra, nếu bạn c&oacute; mong muốn du học c&aacute;c nước n&oacute;i tiếng Anh như Philippines, Canada, &Uacute;c, Anh, Ireland,... th&igrave; CNG cũng sẽ l&agrave; một người bạn đ&aacute;ng tin cậy đ&oacute;.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">&quot;Đi trước&quot;, chia sẻ những kinh nghiệm c&aacute; nh&acirc;n đầy qu&yacute; b&aacute;u v&agrave; t&acirc;m huyết nhất cho c&aacute;c bạn,&nbsp; kết hợp với đội ngũ nh&acirc;n vi&ecirc;n tư vấn du học chuy&ecirc;n nghiệp, nhiệt t&igrave;nh v&agrave; gi&agrave;u kinh nghiệm l&agrave; những cựu du học sinh đến từ Thuỵ Sĩ, Anh, Canada, Philippines, Singapore, những người bạn đồng h&agrave;nh, kh&ocirc;ng chỉ định hướng, m&agrave; c&ograve;n chia sẻ cho bạn những g&oacute;c nh&igrave;n thực tế nhất, để bạn hiện thực h&oacute;a ước mơ đặt ch&acirc;n đến một v&ugrave;ng trời ở nước ngo&agrave;i với nền gi&aacute;o dục chất lượng cao.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;Với tầm nh&igrave;n v&agrave; gi&aacute; trị mang đến cho bạn sự dẫn đường ph&ugrave; hợp nhất để bạn tự m&igrave;nh chinh phục thế giới, CNG Education sẽ l&agrave; người bạn đồng h&agrave;nh tin cậy của bạn trong suốt qu&aacute; tr&igrave;nh du học</p>\r\n\r\n<p dir=\"ltr\">&nbsp;Sứ mệnh của ch&uacute;ng t&ocirc;i l&agrave; biến ước mơ du học của bạn trở th&agrave;nh hiện thực, truyền cảm hứng v&agrave; dẫn đường v&agrave; l&agrave; người bạn đồng h&agrave;nh tr&ecirc;n suốt h&agrave;nh tr&igrave;nh trải nghiệm m&ocirc;i trường gi&aacute;o dục quốc tế chất lượng v&agrave; ph&ugrave; hợp nhất.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;H&atilde;y li&ecirc;n hệ với CNG Education ngay h&ocirc;m nay để được tư vấn bằng tất cả sự tận t&acirc;m, sự quan t&acirc;m, c&ugrave;ng bạn nu&ocirc;i dưỡng những ước mơ, với chi ph&iacute; học tập hợp l&iacute; nhất.</p>\r\n', '', '', '', '', '', 1, 've-chung-toi', 'Về chúng tôi', '', ''),
(36, 35, 'en', 'Giới thiệu', 'Giới thiệu công ty. Được thành lập vào năm 1993, Công ty Cổ Phần Kỹ Thuật Toàn Thắng được biết đến như một nhà cung cấp chuyên nghiệp các giải pháp ...', '<p>Được th&agrave;nh lập v&agrave;o năm 1993, C&ocirc;ng ty Cổ Phần Kỹ Thuật To&agrave;n Thắng được biết đến như một&nbsp; nh&agrave; cung cấp chuy&ecirc;n nghiệp c&aacute;c giải ph&aacute;p thiết bị v&agrave; dịch vụ kỹ thuật chất lượng cao, c&ocirc;ng nghệ ti&ecirc;n tiến&nbsp;cho kh&aacute;ch h&agrave;ng ng&agrave;nh dầu kh&iacute;, điện lực v&agrave; một số ng&agrave;nh c&ocirc;ng nghiệp nặng kh&aacute;c.</p>\r\n\r\n<p>C&ocirc;ng ty c&oacute; văn ph&ograve;ng ch&iacute;nh tại TP. Hồ Ch&iacute; Minh v&agrave; một c&ocirc;ng ty con tại TP. Vũng T&agrave;u. Với đội ngũ chuy&ecirc;n gia, kỹ sư được đ&agrave;o tạo chuy&ecirc;n s&acirc;u, chuy&ecirc;n tr&aacute;ch từng mảng sản phẩm, ch&uacute;ng t&ocirc;i lu&ocirc;n đem đến cho kh&aacute;ch h&agrave;ng những giải ph&aacute;p kỹ thuật, thương mại đa dạng, đ&aacute;p ứng tốt nhu cầu ng&agrave;y c&agrave;ng cao của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><img alt=\"\" height=\"564\" src=\"/image/images/670px-conceptualmapfloss(1).png\" style=\"float:right\" width=\"670\" /></p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i cũng đảm nhận cung cấp c&aacute;c dịch vụ sau b&aacute;n h&agrave;ng như: Bảo tr&igrave;, đại tu, sửa chữa, đ&agrave;o tạo, hướng dẫn sử dụng, dịch vụ quản l&yacute; t&agrave;i sản &amp; hợp đồng v&agrave; c&aacute;c dịch vụ kh&aacute;c tại c&ocirc;ng trường cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 1, 've-chung-toi', 'Introduce', '', ''),
(37, 36, 'vn', 'Chuyên nhận đặt hàng', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 0, 'chuyen-nhan-dat-hang', 'Chuyên nhận đặt hàng', 'báo giá dịch vụ', '\"Làm kế toán phải có Tâm với Doanh nghiệp. Đang Tư vấn Miễn Phí. Tìm hiểu ngay!\r\nBảo hành trọn đời · Bảo vệ Doanh Nghiệp\"'),
(38, 36, 'en', 'Báo giá', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" style=\"height:800px; width:1600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 0, 'bao-gia', 'Báo giá', '', 'thẻ mô tả của bài viết báo giá'),
(39, 37, 'vn', 'Tuyển dụng', '', '', '', '', '', '', '', 0, 'tuyen-cong-tac-vien', 'Tuyển Dụng', '', ''),
(40, 37, 'en', 'Tuyển Cộng Tác Viên ', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', '', '', '', '', '', 0, 'tuyen-cong-tac-vien', 'Tuyển Cộng Tác Viên ', 'tuyên cộng tác viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!'),
(45, 40, 'vn', 'Chính sách bảo mật', '', '', '', '', '', '', '', 0, 'chinh-sach-bao-mat', 'Chính sách bảo mật', '', ''),
(46, 40, 'en', 'Chính sách bảo mật', '', 'DP GREEN-PHAR CAM KẾT BẢO MẬT THÔNG TIN CÁ NHÂN CỦA TẤT CẢ KHÁCH HÀNG. Cảm ơn bạn đã truy cập website: www.greenphar.com\r\nChúng tôi hiểu rõ tầm quan trọng của sự riêng tư và sẽ giữ bí mật thông tin cá nhân của bạn. Xin vui lòng đọc bản Chính sách bảo mật thông tin này và hiểu các hành động liên quan về thông tin cá nhân của bạn. Chính sách bảo mật thông tin này có thể thay đổi mà không thông báo trước, do đó bạn vui lòng thường xuyên rà soát, cập nhật các điều khoản để biết những thay đổi. ĐIỀU 1. MỤC ĐÍCH VÀ PHẠM VI THU THẬP THÔNG TIN1.1. Mục đích thu thập thông tin:Chúng tôi thực hiện việc thu thập thông tin của bạn thông qua website này nhằm:\r\nDP GREEN-PHAR trung tâm tư vấn & tìm giải pháp xử lý các bệnh ngoài cộng đồng.\r\nGiải đáp thắc mắc của bạn về vấn đề các bệnh mà bạn thắc mắc và quan tâm.\r\nGiới thiệu các hàng hóa và dịch vụ có thể phù hợp với các nhu cầu và sở thích của bạn.\r\nCung cấp những thông tin mới nhất của website.\r\nXem xét và nâng cấp nội dung, giao diện của website.\r\nThực hiện hoạt động khảo sát khách hàng.\r\nThực hiện các hoạt động quảng bá sản phẩm và giới thiệu những chương trình khuyến mãi.\r\nGiải quyết các vấn đề, tranh chấp phát sinh liên quan đến việc sử dụng website.\r\nChúng tôi bảo lưu quyền từ chối trách nhiệm về bất kỳ thiệt hại nào phát sinh nếu thông tin cá nhân của bạn bị đánh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ cách nào khác. 1.2. Phạm vi thu thập thông tin cá nhân:Thông tin cá nhân mà chúng tôi thu thập của bạn khi bạn gửi thắc mắc về cho chúng tôi, bao gồm:\r\nHọ, tên, Năm sinh.\r\nĐịa chỉ liên hệ.\r\nĐiện thoại liên hệ.\r\nEmail.\r\nThông tin bệnh lý và những thắc mắc về bệnh học liên quan. ĐIỀU 2. PHẠM VI SỬ DỤNG THÔNG TINThông tin của bạn được sử dụng để chúng tôi hoặc các bên có liên quan khác có thể thực hiện các yêu cầu của bạn.\r\nChúng tôi có thể liên hệ với bạn hoặc giới thiệu bạn đến các cuộc nghiên cứu bao gồm nghiên cứu sự hài lòng của khách hàng, thị trường, nội dung cá nhân khác, hoặc có liên quan đến một số giao dịch nhất định.\r\nChúng tôi thu thập thông tin về truy cập website của bạn gồm những thông tin có thể nhận biết và không thể nhận biết để phân tích (ví dụ: dữ liệu phân tích việc truy cập website, …).\r\nThông tin của bạn được sử dụng để giúp cung cấp cho các dịch vụ của chúng tôi và chúng tôi có thể cung cấp thông tin cho các công ty đại diện chúng tôi. Những công ty này cũng chịu sự ràng buộc nghiêm ngặt bởi Chính sách Bảo mật của chúng tôi. ĐIỀU 3. THỜI GIAN LƯU TRỮ THÔNG TINChúng tôi sẽ lưu trữ các thông tin cá nhân do khách hàng cung cấp trên các hệ thống quản lý, lưu trữ dữ liệu của chúng tôi hoặc chúng tôi thuê trong quá trình cung cấp dịch vụ cho khách hàng cho đến khi hoàn thành mục đích thu thập hoặc khi bạn có yêu cầu hủy các thông tin đã cung cấp.ĐIỀU 4. ĐỊA CHỈ CỦA ĐƠN VỊ THU THẬP VÀ QUẢN LÝ THÔNG TIN CÁ NHÂNCÔNG TY CỔ PHẦN DP GREEN-PHAR\r\nĐịa chỉ: Số 19, Ngõ 4, phố Văn La, Hà Đông, Hà Nội.\r\nĐiện thoại: (024) 6262.7731\r\nEmail: dpgreenphar@gmail.com ĐIỀU 5. PHƯƠNG TIỆN VÀ CÔNG CỤ ĐỂ NGƯỜI DÙNG TIẾP CẬN VÀ CHỈNH SỬA DỮ LIỆU CÁ NHÂN CỦA MÌNH.Bạn có thể tự đăng nhập vào website qua link www.greenphar.com  và chỉnh sửa các thông tin cá nhân như: tên, số điện thoại, địa chỉ giao-nhận hàng, ...\r\nNếu bạn không quan tâm hoặc không muốn nhận tin tức, thông tin, bạn có thể thay đổi thông tin của bạn vào bất kỳ lúc nào bằng cách gửi email về cho chúng tôi qua địa chỉ email: cskh@greenphar.comĐIỀU 6. CAM KẾT BẢO MẬT THÔNG TIN CÁ NHÂN KHÁCH HÀNGNgoài việc sử dụng các thông tin của bạn vào các mục đích nêu tại Khoản 1.1 Điều 1 của Chính sách bảo mật này và phạm vi nêu tại Điều 2 của Chính sách bảo mật này, Chúng tôi sẽ giữ bí mật thông tin cá nhân của bạn. Xin vui lòng đọc bản Chính sách bảo mật thông tin này và hiểu các hành động liên quan về thông tin cá nhân của bạn. Chính sách bảo mật thông tin này có thể thay đổi mà không thông báo trước, do đó bạn vui lòng thường xuyên rà soát, cập nhật các điều khoản này để biết những thay đổi.\r\nChính sách bảo mật tại DP GREEN- PHAR\r\n- DP GREEN-PHAR có thể thay đổi chính sách bảo mật và mọi thay đổi sẽ được công khai trên website www.greenphar.com\r\n- Tất cả các thay đổi về chính sách bảo mật chúng tôi đều tuân thủ theo quy định của Pháp Luật Nhà Nước hiện hành.\r\n- Mọi ý kiến thắc mắc, khiếu nại và tranh chấp vui lòng liên hệ với chúng tôi qua hotline Chăm sóc khách hàng: (024) 6262. 7731\r\n\r\nTrân trọng,\r\nDP GREEN- PHAR: Chu Đáo, Tin Cậy!', '', '', '', '', '', 0, 'chinh-sach-bao-mat', 'Chính sách bảo mật', '', ''),
(57, 46, 'vn', ' Hệ thống', '', '', '', '', '', '', '', 0, 'he-thong', ' Hệ thống', '', ''),
(58, 46, 'en', ' hệ thống', '', '', '', '', '', '', '', 0, 'he-thong', ' hệ thống', '', ''),
(169, 102, 'vn', 'Du học', '', '<p>Nội dung đang cập nhật</p>\r\n', '', '', '', '', '', 0, 'du-hoc-page', 'Du học', '', ''),
(170, 102, 'en', 'english version Du học', 'english version ', 'english version <p>Nội dung đang cập nhật</p>\r\n', '', '', '', '', '', 0, 'du-hoc-page', 'Du học', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_des2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_des3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_content2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_content3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price` float DEFAULT NULL,
  `product_price_sale` float DEFAULT NULL,
  `product_discount` float DEFAULT NULL,
  `product_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_created_date` datetime DEFAULT NULL,
  `product_update_date` datetime DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_hot` int(11) DEFAULT 0,
  `product_favorite` int(11) NOT NULL DEFAULT 0,
  `product_new` int(11) DEFAULT 0,
  `product_sale` int(11) DEFAULT 0,
  `product_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_original` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_size` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_package` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_delivery` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_delivery_time` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_payment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_payment_type` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `product_material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_shape` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_expiration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_producer` int(11) DEFAULT NULL,
  `product_review` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_ar` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `thuoc_tinh` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `diff_color` int(11) NOT NULL DEFAULT 0,
  `date_end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_des`, `product_des2`, `product_des3`, `product_content`, `product_content2`, `product_content3`, `product_price`, `product_price_sale`, `product_discount`, `product_img`, `product_sub_img`, `product_created_date`, `product_update_date`, `productcat_id`, `product_hot`, `product_favorite`, `product_new`, `product_sale`, `product_code`, `product_original`, `product_size`, `product_package`, `product_delivery`, `product_delivery_time`, `product_payment`, `product_payment_type`, `product_sub_info1`, `product_sub_info2`, `product_sub_info3`, `product_sub_info4`, `product_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `product_material`, `product_shape`, `product_expiration`, `product_producer`, `product_review`, `productcat_ar`, `thuoc_tinh`, `diff_color`, `date_end`) VALUES
(269, 'Trại hè chuyên ngành Quản trị khách sạn, Du lịch & Sự kiện – 2023', '<p>Cơ hội trải nghiệm những hoạt động th&uacute; vị, đầy t&iacute;nh thử th&aacute;ch v&agrave; kh&ocirc;ng k&eacute;m phần hữu &iacute;ch: T&igrave;m hiểu về ph&aacute;t triển bền vững trong quản trị kh&aacute;ch sạn, Tham gia cuộc thi &ldquo;Master Chef&rdquo; v&agrave; &ldquo;X&acirc;y dựng kh&aacute;ch sạn tương...</p>\r\n', '', '', '<p>Cơ hội trải nghiệm những hoạt động th&uacute; vị, đầy t&iacute;nh thử th&aacute;ch v&agrave; kh&ocirc;ng k&eacute;m phần hữu &iacute;ch: T&igrave;m hiểu về ph&aacute;t triển bền vững trong quản trị kh&aacute;ch sạn, Tham gia cuộc thi &ldquo;Master Chef&rdquo; v&agrave; &ldquo;X&acirc;y dựng kh&aacute;ch sạn tương...</p>\r\n', '', '', 0, 0, 0, NULL, '[]', '2023-07-24 00:00:00', '2023-07-26 11:07:46', 0, 0, 0, 0, 0, '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'Trại hè chuyên ngành Quản trị khách sạn, Du lịch & Sự kiện – 2023', '', 'trai-he-chuyen-nganh-quan-tri-khach-san-du-lich-su-kien-2023', '', 1, '', '', '', NULL, NULL, NULL, '[\"0\",\"0\",\"0\",\"0\"]', 0, '2023-07-24'),
(270, 'Du học Úc: Mở Lối Tương Lai Đến Sự Nghiệp Vững Chắc', '<p>L&agrave;m thế n&agrave;o để th&iacute;ch ứng với ng&agrave;nh C&ocirc;ng nghiệp kh&ocirc;ng kh&oacute;i, khi lĩnh vực Quản trị dịch vụ kh&aacute;ch h&agrave;ng đang c&oacute; sự biến đổi...</p>\r\n', '', '', '<p>L&agrave;m thế n&agrave;o để th&iacute;ch ứng với ng&agrave;nh C&ocirc;ng nghiệp kh&ocirc;ng kh&oacute;i, khi lĩnh vực Quản trị dịch vụ kh&aacute;ch h&agrave;ng đang c&oacute; sự biến đổi...</p>\r\n', '', '', 0, 0, 0, NULL, '[]', '2023-07-26 00:00:00', '2023-07-26 17:07:16', 0, 0, 0, 0, 0, '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'Du học Úc: Mở Lối Tương Lai Đến Sự Nghiệp Vững Chắc', '', 'du-hoc-uc-mo-loi-tuong-lai-den-su-nghiep-vung-chac', '', 1, '', '', '', NULL, NULL, NULL, '[\"0\",\"0\",\"0\",\"0\"]', 0, '2023-07-26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat`
--

CREATE TABLE `productcat` (
  `productcat_id` int(11) NOT NULL,
  `productcat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_parent` int(11) NOT NULL DEFAULT 0,
  `productcat_sort_order` int(11) NOT NULL DEFAULT 0,
  `productcat_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_created_date` datetime DEFAULT NULL,
  `productcat_update_date` datetime DEFAULT NULL,
  `productcat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `home` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat_languages`
--

CREATE TABLE `productcat_languages` (
  `id` bigint(20) NOT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `lang_productcat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_catalogs_file`
--

CREATE TABLE `product_catalogs_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product_catalogs_file`
--

INSERT INTO `product_catalogs_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_diff_color`
--

CREATE TABLE `product_diff_color` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product_diff_color`
--

INSERT INTO `product_diff_color` (`id`, `name`) VALUES
(2, 'Nhóm một'),
(3, 'Nhóm hai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_languages`
--

CREATE TABLE `product_languages` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_des2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_des3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_content2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_content3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_original` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_size` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_package` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_delivery` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_delivery_time` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_payment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_payment_type` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_languages`
--

INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(525, 269, 'vn', 'Trại hè chuyên ngành Quản trị khách sạn, Du lịch & Sự kiện – 2023', '<p>Cơ hội trải nghiệm những hoạt động th&uacute; vị, đầy t&iacute;nh thử th&aacute;ch v&agrave; kh&ocirc;ng k&eacute;m phần hữu &iacute;ch: T&igrave;m hiểu về ph&aacute;t triển bền vững trong quản trị kh&aacute;ch sạn, Tham gia cuộc thi &ldquo;Master Chef&rdquo; v&agrave; &ldquo;X&acirc;y dựng kh&aacute;ch sạn tương...</p>\r\n', '', '', '<p>Cơ hội trải nghiệm những hoạt động th&uacute; vị, đầy t&iacute;nh thử th&aacute;ch v&agrave; kh&ocirc;ng k&eacute;m phần hữu &iacute;ch: T&igrave;m hiểu về ph&aacute;t triển bền vững trong quản trị kh&aacute;ch sạn, Tham gia cuộc thi &ldquo;Master Chef&rdquo; v&agrave; &ldquo;X&acirc;y dựng kh&aacute;ch sạn tương...</p>\r\n', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'trai-he-chuyen-nganh-quan-tri-khach-san-du-lich-su-kien-2023', 'Trại hè chuyên ngành Quản trị khách sạn, Du lịch & Sự kiện – 2023', '', ''),
(526, 269, 'en', 'english version Trại hè chuyên ngành Quản trị khách sạn, Du lịch & Sự kiện – 2023', 'english version <p>Cơ hội trải nghiệm những hoạt động th&uacute; vị, đầy t&iacute;nh thử th&aacute;ch v&agrave; kh&ocirc;ng k&eacute;m phần hữu &iacute;ch: T&igrave;m hiểu về ph&aacute;t triển bền vững trong quản trị kh&aacute;ch sạn, Tham gia cuộc thi &ldquo;Master Chef&rdquo; v&agrave; &ldquo;X&acirc;y dựng kh&aacute;ch sạn tương...</p>\r\n', '', '', 'english version <p>Cơ hội trải nghiệm những hoạt động th&uacute; vị, đầy t&iacute;nh thử th&aacute;ch v&agrave; kh&ocirc;ng k&eacute;m phần hữu &iacute;ch: T&igrave;m hiểu về ph&aacute;t triển bền vững trong quản trị kh&aacute;ch sạn, Tham gia cuộc thi &ldquo;Master Chef&rdquo; v&agrave; &ldquo;X&acirc;y dựng kh&aacute;ch sạn tương...</p>\r\n', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'en-trai-he-chuyen-nganh-quan-tri-khach-san-du-lich-su-kien-2023', 'Trại hè chuyên ngành Quản trị khách sạn, Du lịch & Sự kiện – 2023', '', ''),
(527, 270, 'vn', 'Du học Úc: Mở Lối Tương Lai Đến Sự Nghiệp Vững Chắc', '<p>L&agrave;m thế n&agrave;o để th&iacute;ch ứng với ng&agrave;nh C&ocirc;ng nghiệp kh&ocirc;ng kh&oacute;i, khi lĩnh vực Quản trị dịch vụ kh&aacute;ch h&agrave;ng đang c&oacute; sự biến đổi...</p>\r\n', '', '', '<p>L&agrave;m thế n&agrave;o để th&iacute;ch ứng với ng&agrave;nh C&ocirc;ng nghiệp kh&ocirc;ng kh&oacute;i, khi lĩnh vực Quản trị dịch vụ kh&aacute;ch h&agrave;ng đang c&oacute; sự biến đổi...</p>\r\n', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'du-hoc-uc-mo-loi-tuong-lai-den-su-nghiep-vung-chac', 'Du học Úc: Mở Lối Tương Lai Đến Sự Nghiệp Vững Chắc', '', ''),
(528, 270, 'en', 'english version Du học Úc: Mở Lối Tương Lai Đến Sự Nghiệp Vững Chắc', 'english version <p>L&agrave;m thế n&agrave;o để th&iacute;ch ứng với ng&agrave;nh C&ocirc;ng nghiệp kh&ocirc;ng kh&oacute;i, khi lĩnh vực Quản trị dịch vụ kh&aacute;ch h&agrave;ng đang c&oacute; sự biến đổi...</p>\r\n', '', '', 'english version <p>L&agrave;m thế n&agrave;o để th&iacute;ch ứng với ng&agrave;nh C&ocirc;ng nghiệp kh&ocirc;ng kh&oacute;i, khi lĩnh vực Quản trị dịch vụ kh&aacute;ch h&agrave;ng đang c&oacute; sự biến đổi...</p>\r\n', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'en-du-hoc-uc-mo-loi-tuong-lai-den-su-nghiep-vung-chac', 'Du học Úc: Mở Lối Tương Lai Đến Sự Nghiệp Vững Chắc', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer`
--

CREATE TABLE `product_producer` (
  `producer_id` int(11) NOT NULL,
  `producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_sort_order` int(11) DEFAULT NULL,
  `producer_parent` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer`
--

INSERT INTO `product_producer` (`producer_id`, `producer_name`, `producer_sort_order`, `producer_parent`, `state`) VALUES
(3, 'Donaldson', 1, 0, 1),
(4, 'Komatsu', 2, 0, 1),
(5, 'Fleetguard', 3, 0, 1),
(6, 'Badwin', 4, 0, 1),
(7, 'Huyndai-Mobis', 5, 0, 1),
(8, 'Sakura', 6, 0, 1),
(9, 'Kobelco', 7, 0, 1),
(10, 'Hãng khác', 8, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer_languages`
--

CREATE TABLE `product_producer_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_id` int(11) NOT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer_languages`
--

INSERT INTO `product_producer_languages` (`id`, `languages_code`, `lang_producer_name`, `producer_id`, `friendly_url`) VALUES
(34, 'vn', 'Donaldson', 3, 'donaldson'),
(35, 'en', 'Donaldson', 3, 'donaldson'),
(36, 'vn', 'Komatsu', 4, 'komatsu'),
(37, 'en', 'Komatsu', 4, 'komatsu'),
(38, 'vn', 'Fleetguard', 5, 'fleetguard'),
(39, 'en', 'Fleetguard', 5, 'fleetguard'),
(40, 'vn', 'Badwin', 6, 'badwin'),
(41, 'en', 'Badwin', 6, 'badwin'),
(42, 'vn', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(43, 'en', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(44, 'vn', 'Sakura', 8, 'sakura'),
(45, 'en', 'Sakura', 8, 'sakura'),
(46, 'vn', 'Kobelco', 9, 'kobelco'),
(47, 'en', 'Kobelco', 9, 'kobelco'),
(48, 'vn', 'Hãng khác', 10, 'hang-khac'),
(49, 'en', 'Hãng khác', 10, 'hang-khac');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_color`
--

CREATE TABLE `pro_color` (
  `id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regInfor`
--

CREATE TABLE `regInfor` (
  `regInfor_id` int(11) NOT NULL,
  `regInfor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_wasBorn` int(11) DEFAULT NULL,
  `regInfor_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_state` int(11) DEFAULT 1,
  `regInfor_createdDate` date DEFAULT NULL,
  `regInfor_answer1` int(11) DEFAULT 1,
  `regInfor_answer2` int(11) DEFAULT 1,
  `regInfor_answer3` int(11) DEFAULT 1,
  `regInfor_answer4` int(11) DEFAULT 1,
  `regInfor_answer5` int(11) DEFAULT 1,
  `regInfor_answer6` int(11) DEFAULT 1,
  `regInfor_answer7` int(11) DEFAULT 1,
  `regInfor_answer8` int(11) DEFAULT 1,
  `regInfor_answer9` int(11) DEFAULT 1,
  `regInfor_sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regInfor`
--

INSERT INTO `regInfor` (`regInfor_id`, `regInfor_name`, `regInfor_phone`, `regInfor_mail`, `regInfor_address`, `regInfor_wasBorn`, `regInfor_code`, `regInfor_state`, `regInfor_createdDate`, `regInfor_answer1`, `regInfor_answer2`, `regInfor_answer3`, `regInfor_answer4`, `regInfor_answer5`, `regInfor_answer6`, `regInfor_answer7`, `regInfor_answer8`, `regInfor_answer9`, `regInfor_sex`) VALUES
(25, 'fgsf', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(26, 'th', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(31, 'thuyhang', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(32, 'thuyhang2', '0967878', NULL, NULL, 1955, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 2, 'nữ'),
(34, 'thdfghgfh', 'dfasdfas', NULL, NULL, 1940, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 2, 1, 1, 'nam'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(37, 'hh', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(38, '', '01669745858', NULL, NULL, 1982, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(39, 'hsdfansdf', '0967878', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(40, '', 'dsfdsfsfs', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(46, '', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-27', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(53, 'erte', '5657', NULL, NULL, 2345, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(54, '', '', NULL, NULL, 0, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(55, 'dryrs', '3426546', NULL, NULL, 25346, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(56, 'hangpt', '0973378669', NULL, NULL, 1989, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(57, 'fhgh', 'fhfhfh', NULL, NULL, 0, NULL, 1, '2017-07-15', 1, 1, 1, 1, 1, 1, 1, 1, 1, '3'),
(58, 'tgsdfg', '', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(59, 'zxcv', 'sdf', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(60, 'xzc', '35345', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regMember`
--

CREATE TABLE `regMember` (
  `regMember_id` int(11) NOT NULL,
  `regMember_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regMember_createdDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regMember`
--

INSERT INTO `regMember` (`regMember_id`, `regMember_mail`, `regMember_createdDate`) VALUES
(11, 'ádgf', '2017-07-16'),
(12, 'xvdfg', '2017-07-16'),
(13, '', '2017-07-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_total_count` int(11) DEFAULT NULL,
  `sale_type` int(11) DEFAULT NULL,
  `sale_value` float DEFAULT NULL,
  `sale_apply` int(11) DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_start_date` datetime DEFAULT NULL,
  `sale_end_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_views` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_create_date` date DEFAULT NULL,
  `service_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `service_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `home` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `service_des`, `service_content`, `service_img`, `service_views`, `servicecat_id`, `service_author`, `service_create_date`, `service_update_date`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `home`, `sort`) VALUES
(79, 'TRẠI HÈ PHILIPPINES', 'Bạn đang tìm kiếm một cơ hội để nâng cao ngoại ngữ và phát triển tiếng Anh của mình?', '<p>TRẠI H&Egrave; PHILIPPINES - N&Acirc;NG CAO NGOẠI NGỮ, PH&Aacute;T TRIỂN TIẾNG ANH</p>\r\n\r\n<p>Bạn đang t&igrave;m kiếm một cơ hội để n&acirc;ng cao ngoại ngữ v&agrave; ph&aacute;t triển tiếng Anh của m&igrave;nh?</p>\r\n\r\n<p>Bạn muốn trải nghiệm một nền văn h&oacute;a mới v&agrave; kết bạn với những người đến từ khắp nơi tr&ecirc;n thế giới?</p>\r\n\r\n<p>Nếu c&acirc;u trả lời l&agrave; c&oacute;, th&igrave; bạn kh&ocirc;ng n&ecirc;n bỏ lỡ cơ hội tham gia trại h&egrave; Philippines do CNG Education tổ chức d&agrave;nh cho c&aacute;c bạn học sinh v&agrave; sinh vi&ecirc;n Việt Nam.</p>\r\n\r\n<p>Trại h&egrave; Philippines do CNG Education tổ chức l&agrave; một chương tr&igrave;nh trại h&egrave; ngắn hạn được tổ chức tại Philippines. Chương tr&igrave;nh k&eacute;o d&agrave;i từ 4 - 8 tuần, trong đ&oacute; bạn sẽ được học tiếng Anh với c&aacute;c gi&aacute;o vi&ecirc;n bản ngữ, tham gia c&aacute;c hoạt động ngoại kh&oacute;a v&agrave; tham quan c&aacute;c địa điểm</p>\r\n\r\n<p>Bạn sẽ c&oacute; cơ hội giao lưu với c&aacute;c bạn học sinh v&agrave; sinh vi&ecirc;n quốc tế, cải thiện khả năng giao tiếp v&agrave; tự tin trong tiếng Anh.</p>\r\n\r\n<p>Bạn cũng sẽ được trải nghiệm một nền văn h&oacute;a mới, t&igrave;m hiểu về lịch sử, văn h&oacute;a v&agrave; con người của Philippines. B&ecirc;n cạnh đ&oacute;, bạn sẽ được ph&aacute;t triển kỹ năng l&agrave;m việc nh&oacute;m, l&atilde;nh đạo v&agrave; th&iacute;ch ứng với m&ocirc;i trường mới.</p>\r\n\r\n<p>Đặc biệt, khi đăng k&iacute; tham gia chương tr&igrave;nh trại h&egrave; Philippines của CNG, những ưu đ&atilde;i cực khủng sẽ chờ đ&oacute;n bạn đ&oacute;!</p>\r\n\r\n<p>Học vi&ecirc;n đăng k&yacute; sớm th&igrave; đc giảm tới $300</p>\r\n\r\n<p>Sẽ được tặng 1 lần thi IELTS hoặc TOEIC miễn ph&iacute;</p>\r\n\r\n<p>H&atilde;y nhanh tay đăng k&yacute; để kh&ocirc;ng bỏ lỡ cơ hội tham gia trại h&egrave; Philippines - một chương tr&igrave;nh du học ngắn hạn đầy &yacute; nghĩa v&agrave; kh&oacute; qu&ecirc;n nh&eacute;! Li&ecirc;n hệ CNG Education để biết th&ecirc;m th&ocirc;ng tin chi tiết.</p>\r\n', '349108282_1333869850559447_7786420146062536054_n.jpg', '0', 0, '', '2023-06-13', '2023-07-13', 1, NULL, NULL, NULL, NULL, NULL, 'TRẠI HÈ PHILIPPINES', '', 'trai-he-philippines', '', 1, 0, 0),
(80, 'DU HỌC CANADA', ' CNG Education là một trung tâm tư vấn du học Canada có nhiều kinh nghiệm và uy tín trong lĩnh vực này. CNG Education có đội ngũ nhân viên tư vấn chuyên nghiệp, nhiệt tình và tận tâm. CNG mang đến cho bạn các dịch vụ như', '<p dir=\"ltr\"><strong>&nbsp;CNG - TIẾP NỐI NHỮNG CHUYẾN BAY&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;CNG Education l&agrave; một trung t&acirc;m tư vấn du học Canada c&oacute; nhiều kinh nghiệm v&agrave; uy t&iacute;n trong lĩnh vực n&agrave;y. CNG Education c&oacute; đội ngũ nh&acirc;n vi&ecirc;n tư vấn chuy&ecirc;n nghiệp, nhiệt t&igrave;nh v&agrave; tận t&acirc;m. CNG mang đến cho bạn c&aacute;c dịch vụ như:</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Tư vấn miễn ph&iacute; về c&aacute;c trường đại học v&agrave; c&aacute;c kh&oacute;a học ngắn hạn, c&aacute;c chuyến summer camp tại Canada.</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Hỗ trợ l&agrave;m hồ sơ du học, xin visa, xin học bổng v&agrave; c&aacute;c thủ tục kh&aacute;c.</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Tổ chức c&aacute;c buổi giao lưu văn h&oacute;a, tham quan du lịch v&agrave; c&aacute;c hoạt động ngoại kh&oacute;a cho học sinh.</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Hỗ trợ t&igrave;m kiếm nơi ở, việc l&agrave;m v&agrave; c&aacute;c vấn đề sinh hoạt khi du học Canada.</strong></p>\r\n\r\n<p><strong>&nbsp;CNG Education lu&ocirc;n đặt chất lượng gi&aacute;o dục v&agrave; sự h&agrave;i l&ograve;ng của học sinh l&ecirc;n h&agrave;ng đầu. Ch&uacute;ng t&ocirc;i cũng đ&atilde; gi&uacute;p rất nhiều học sinh Việt Nam du học th&agrave;nh c&ocirc;ng v&agrave; c&oacute; cuộc sống ổn định ở Canada - một ch&acirc;n trời mới.&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;C&ugrave;ng CNG Education c&oacute; những chuyến bay an to&agrave;n đến với h&agrave;nh tr&igrave;nh mơ ước, đến với những nền gi&aacute;o dục ti&ecirc;n tiến thế giới tại Canada nh&eacute;!</strong></p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>CNG GROUP&nbsp;- TRUNG T&Acirc;M TƯ VẤN DU HỌC&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>thuộc c&ocirc;ng ty TNHH&nbsp;Candice Nguyen Global Group</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>Lead your dream conquer</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>| Th&ocirc;ng tin li&ecirc;n hệ&nbsp;|</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Phone: +84 822-824-188</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Office Hours: 8 - 11h, 13h30 - 16h30 từ thứ Hai đến thứ Bảy</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Email: cngeducation@cnggroup.org</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Address: Tầng 4, L&ocirc; số 38, khu đ&ocirc; thị MKL, Hồng Hải, Hạ Long, Quảng Ninh.</strong></p>\r\n', 'kinh-nghiem-du-hoc-canada.png', '0', 0, '', '2023-06-13', '2023-07-13', 1, NULL, NULL, NULL, NULL, NULL, 'DU HỌC CANADA', '', 'du-hoc-canada', '', 1, 1, 0),
(81, 'DU HỌC THỤY SĨ', 'Bạn có muốn du học tại một quốc gia có nền giáo dục hàng đầu thế giới, với nhiều trường đại học danh tiếng và chất lượng cao?', '<p>DU HỌC THỤY SĨ - TẠI SAO KH&Ocirc;NG?</p>\r\n\r\n<p>CƠ HỘI VỪA HỌC VỪA THỰC TẬP VỚI MỨC LƯƠNG HẤP DẪN</p>\r\n\r\n<p>Bạn c&oacute; muốn du học tại một quốc gia c&oacute; nền gi&aacute;o dục h&agrave;ng đầu thế giới, với nhiều trường đại học danh tiếng v&agrave; chất lượng cao?</p>\r\n\r\n<p>Bạn c&oacute; muốn được trải nghiệm một nền văn h&oacute;a đa dạng, phong ph&uacute; v&agrave; th&acirc;n thiện?</p>\r\n\r\n<p>Nếu c&acirc;u trả lời l&agrave; c&oacute;, th&igrave; du học Thụy Sĩ l&agrave; lựa chọn ho&agrave;n hảo cho bạn!</p>\r\n\r\n<p>Du học Thụy Sĩ kh&ocirc;ng chỉ mang lại cho bạn cơ hội được tiếp cận với một nền gi&aacute;o dục chất lượng cao, m&agrave; c&ograve;n cho bạn cơ hội được thực tập tại c&aacute;c c&ocirc;ng ty h&agrave;ng đầu thế giới, với mức lương hấp dẫn.</p>\r\n\r\n<p>Bạn sẽ được giao lưu v&agrave; kết bạn với những sinh vi&ecirc;n quốc tế đến từ khắp nơi tr&ecirc;n thế giới.</p>\r\n\r\n<p>Bạn sẽ được ph&aacute;t triển kỹ năng giao tiếp, l&agrave;m việc nh&oacute;m, giải quyết vấn đề v&agrave; s&aacute;ng tạo.</p>\r\n\r\n<p>Đặc biệt, bạn sẽ c&oacute; cơ hội lắng nghe những chia sẻ qu&yacute; gi&aacute; về kinh nghiệm du học từ c&aacute;c cựu du học sinh Thụy Sĩ v&agrave; trải nghiệm tư vấn với đại diện trường HTMI Thụy Sĩ trong buổi workshop online được livestream l&uacute;c 19h30 - 20h30 ng&agrave;y 16/6/2023 tr&ecirc;n Fanpage CNG Education nữa đ&oacute;!</p>\r\n\r\n<p>Đừng qu&ecirc;n đặt lịch hẹn để kh&ocirc;ng bỏ lỡ sự kiện hấp dẫn n&agrave;y nha</p>\r\n\r\n<p>Du học Thụy Sĩ l&agrave; một cơ hội qu&yacute; b&aacute;u để bạn mở rộng tầm nh&igrave;n, n&acirc;ng cao kiến thức v&agrave; kinh nghiệm, v&agrave; chuẩn bị cho sự nghiệp tương lai của m&igrave;nh. Nếu bạn quan t&acirc;m đến du học Thụy Sĩ, h&atilde;y li&ecirc;n hệ với CNG Education để được tư vấn chi tiết v&agrave; hỗ trợ thủ tục nhập học. Ch&uacute;ng t&ocirc;i sẽ gi&uacute;p bạn thực hiện ước mơ du học của m&igrave;nh!</p>\r\n', '347803626_768414418109229_7044320877905095028_n.jpg', '0', 0, '', '2023-06-13', '2023-07-22', 1, NULL, NULL, NULL, NULL, NULL, 'DU HỌC THỤY SĨ', '', 'du-hoc-thuy-si', '', 1, 1, 2),
(82, 'DU HỌC PHILIPPINES', 'Nhắc đến du học Philippines, phải chăng điều đầu tiên các bạn trẻ nghĩ đến trong đầu là “ giao tiếp Tiếng Anh “ ?', '<p>Nhắc đến du học Philippines, phải chăng điều đầu ti&ecirc;n c&aacute;c bạn trẻ nghĩ đến trong đầu l&agrave; &ldquo; giao tiếp Tiếng Anh &ldquo; ?</p>\r\n\r\n<p>Thực ra, du học Philippines kh&ocirc;ng đơn thuần g&oacute;i gọn về chương tr&igrave;nh giao tiếp, m&agrave; c&ograve;n bao h&agrave;m đa dạng c&aacute;c kh&oacute;a học đ&aacute;p ứng cho mọi nhu cầu của từng độ tuổi v&agrave; tr&igrave;nh độ của mỗi học vi&ecirc;n. Nếu bạn đang c&oacute; thắc mắc về c&aacute;c chương tr&igrave;nh học ở Philippines th&igrave; đừng bỏ qua b&agrave;i viết n&agrave;y của Du học CNG nh&eacute; !</p>\r\n\r\n<p>Kh&oacute;a học Tiếng Anh giao tiếp: mang đến cho c&aacute;c bạn học vi&ecirc;n cơ hội trau dồi kỹ năng n&oacute;i tiếng Anh v&agrave; tăng cường sự tương t&aacute;c với gi&aacute;o vi&ecirc;n, n&acirc;ng cao tr&igrave;nh độ bản th&acirc;n một c&aacute;ch tốt nhất.</p>\r\n\r\n<p>Kh&oacute;a ESL ( giao tiếp tổng qu&aacute;t ):kho&aacute; học tập trung cải thiện kỹ năng giao tiếp v&agrave; hệ thống lại c&aacute;c kiến thức tiếng Anh từ c&aacute;c lớp 1:1 v&agrave; 1:4 bao gồm kỹ năng nghe, n&oacute;i, đọc, viết, ph&aacute;t &acirc;m, từ vựng, ngữ ph&aacute;p, biện luận v&agrave; thuyết tr&igrave;nh.</p>\r\n\r\n<p>Kh&oacute;a Power Speaking ( luyện n&oacute;i chuy&ecirc;n s&acirc;u )</p>\r\n\r\n<p>Kh&oacute;a Business English ( tiếng Anh giao tiếp cho người đi l&agrave;m từng ng&agrave;nh nghề chuy&ecirc;n biệt )</p>\r\n\r\n<p>Kh&oacute;a học tiếng Anh học thuật: tập trung luyện thi lấy bằng IELTS/ TOEIC/ TOEFL trong thời gian ngắn nhất. Đ&acirc;y l&agrave; chứng chỉ tiếng Anh quốc tế phục vụ cho mục đ&iacute;ch du học, định cư v&agrave; l&agrave;m việc, hay đơn giản l&agrave; đ&aacute;nh gi&aacute; năng lực tiếng Anh của m&igrave;nh. Đặc biệt IELTS c&oacute; rất nhiều kho&aacute; cho c&aacute;c tr&igrave;nh độ kh&aacute;c nhau:</p>\r\n\r\n<p>Kh&oacute;a Pre-IELTS ( l&agrave;m quen với IELTS )</p>\r\n\r\n<p>Kh&oacute;a IELTS thường ( luyện từng kĩ năng s&aacute;t với đề IELTS )</p>\r\n\r\n<p>Kh&oacute;a IELTS đảm bảo ( cam kết đầu ra cho học vi&ecirc;n )</p>\r\n\r\n<p>Kh&oacute;a học tiếng Anh chuy&ecirc;n biệt: b&ecirc;n cạnh những kh&oacute;a học phổ biến th&igrave; c&aacute;c trường Anh ngữ ở Philippines c&ograve;n cung cấp nhiều kh&oacute;a học kh&aacute;c, điển h&igrave;nh như:</p>\r\n\r\n<p>Kh&oacute;a Flight Attendant ( tiếng Anh h&agrave;ng kh&ocirc;ng )</p>\r\n\r\n<p>Kh&oacute;a Juniors ( tiếng Anh trẻ em )</p>\r\n\r\n<p>Kh&oacute;a Family ( tiếng Anh gia đ&igrave;nh ) : l&agrave; kho&aacute; học m&agrave; ba mẹ c&oacute; thể đồng h&agrave;nh để vừa trau dồi tr&igrave;nh độ tiếng Anh c&ugrave;ng con, vừa ở b&ecirc;n chứng kiến con tiến bộ từng ng&agrave;y</p>\r\n\r\n<p>Với sự đa dạng v&agrave; t&iacute;nh hiệu quả của mỗi kh&oacute;a học mang lại, Du học CNG tin rằng khi ba mẹ trao niềm tin v&agrave; gửi gắm c&aacute;c con v&agrave;o m&ocirc;i trường giảng dạy tại Philippines, cũng l&agrave; l&uacute;c ba mẹ sẽ nhận được sự bứt ph&aacute; từ h&agrave;nh tr&igrave;nh trưởng th&agrave;nh của con</p>\r\n', '339274663_1895460234154281_5062588855398958387_n.jpg', '0', 0, '', '2023-06-13', '2023-07-22', 1, NULL, NULL, NULL, NULL, NULL, 'DU HỌC PHILIPPINES', '', 'du-hoc-philippines', '', 1, 1, 1),
(83, 'Du học Úc', '', '<p>Nội dung đang cập nhật</p>\r\n', 'cng_uc.jpg', '0', 0, '', '2023-07-13', '2023-07-13', 1, NULL, NULL, NULL, NULL, NULL, 'Du học Úc', '', 'du-hoc-uc', '', 1, 1, 0),
(84, 'Du học Anh', '', '<p>Nội dung đang cập nhật</p>\r\n', 'cng_anh.jpg', '0', 0, '', '2023-07-13', '2023-07-13', 1, NULL, NULL, NULL, NULL, NULL, 'Du học Anh', '', 'du-hoc-anh', '', 1, 1, 0),
(85, 'Du học Ireland', '', '<p>Nội dung đang cập nhật</p>\r\n', 'cng_ailen.jpg', '0', 0, '', '2023-07-13', '2023-07-22', 1, NULL, NULL, NULL, NULL, NULL, 'Du học Ireland', '', 'du-hoc-ireland', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat`
--

CREATE TABLE `servicecat` (
  `servicecat_id` int(11) NOT NULL,
  `servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_parent` int(11) DEFAULT NULL,
  `servicecat_sort_order` int(11) DEFAULT NULL,
  `servicecat_created_date` date DEFAULT NULL,
  `servicecat_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `servicecat_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat_languages`
--

CREATE TABLE `servicecat_languages` (
  `id` int(11) NOT NULL,
  `lang_servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `lang_servicecat_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_languages`
--

CREATE TABLE `service_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `service_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service_languages`
--

INSERT INTO `service_languages` (`id`, `languages_code`, `lang_service_name`, `lang_service_des`, `lang_service_content`, `lang_service_author`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `service_id`) VALUES
(113, 'vn', 'TRẠI HÈ PHILIPPINES', 'Bạn đang tìm kiếm một cơ hội để nâng cao ngoại ngữ và phát triển tiếng Anh của mình?', '<p>TRẠI H&Egrave; PHILIPPINES - N&Acirc;NG CAO NGOẠI NGỮ, PH&Aacute;T TRIỂN TIẾNG ANH</p>\r\n\r\n<p>Bạn đang t&igrave;m kiếm một cơ hội để n&acirc;ng cao ngoại ngữ v&agrave; ph&aacute;t triển tiếng Anh của m&igrave;nh?</p>\r\n\r\n<p>Bạn muốn trải nghiệm một nền văn h&oacute;a mới v&agrave; kết bạn với những người đến từ khắp nơi tr&ecirc;n thế giới?</p>\r\n\r\n<p>Nếu c&acirc;u trả lời l&agrave; c&oacute;, th&igrave; bạn kh&ocirc;ng n&ecirc;n bỏ lỡ cơ hội tham gia trại h&egrave; Philippines do CNG Education tổ chức d&agrave;nh cho c&aacute;c bạn học sinh v&agrave; sinh vi&ecirc;n Việt Nam.</p>\r\n\r\n<p>Trại h&egrave; Philippines do CNG Education tổ chức l&agrave; một chương tr&igrave;nh trại h&egrave; ngắn hạn được tổ chức tại Philippines. Chương tr&igrave;nh k&eacute;o d&agrave;i từ 4 - 8 tuần, trong đ&oacute; bạn sẽ được học tiếng Anh với c&aacute;c gi&aacute;o vi&ecirc;n bản ngữ, tham gia c&aacute;c hoạt động ngoại kh&oacute;a v&agrave; tham quan c&aacute;c địa điểm</p>\r\n\r\n<p>Bạn sẽ c&oacute; cơ hội giao lưu với c&aacute;c bạn học sinh v&agrave; sinh vi&ecirc;n quốc tế, cải thiện khả năng giao tiếp v&agrave; tự tin trong tiếng Anh.</p>\r\n\r\n<p>Bạn cũng sẽ được trải nghiệm một nền văn h&oacute;a mới, t&igrave;m hiểu về lịch sử, văn h&oacute;a v&agrave; con người của Philippines. B&ecirc;n cạnh đ&oacute;, bạn sẽ được ph&aacute;t triển kỹ năng l&agrave;m việc nh&oacute;m, l&atilde;nh đạo v&agrave; th&iacute;ch ứng với m&ocirc;i trường mới.</p>\r\n\r\n<p>Đặc biệt, khi đăng k&iacute; tham gia chương tr&igrave;nh trại h&egrave; Philippines của CNG, những ưu đ&atilde;i cực khủng sẽ chờ đ&oacute;n bạn đ&oacute;!</p>\r\n\r\n<p>Học vi&ecirc;n đăng k&yacute; sớm th&igrave; đc giảm tới $300</p>\r\n\r\n<p>Sẽ được tặng 1 lần thi IELTS hoặc TOEIC miễn ph&iacute;</p>\r\n\r\n<p>H&atilde;y nhanh tay đăng k&yacute; để kh&ocirc;ng bỏ lỡ cơ hội tham gia trại h&egrave; Philippines - một chương tr&igrave;nh du học ngắn hạn đầy &yacute; nghĩa v&agrave; kh&oacute; qu&ecirc;n nh&eacute;! Li&ecirc;n hệ CNG Education để biết th&ecirc;m th&ocirc;ng tin chi tiết.</p>\r\n', NULL, 1, '', '', '', '', '', 'TRẠI HÈ PHILIPPINES', '', 'trai-he-philippines', '', NULL, 79),
(114, 'en', 'TRẠI HÈ PHILIPPINES', 'english version ', '<p>english version</p>\r\n', NULL, 1, '', '', '', '', '', 'TRẠI HÈ PHILIPPINES', '', 'en-trai-he-philippines', '', NULL, 79),
(115, 'vn', 'DU HỌC CANADA', ' CNG Education là một trung tâm tư vấn du học Canada có nhiều kinh nghiệm và uy tín trong lĩnh vực này. CNG Education có đội ngũ nhân viên tư vấn chuyên nghiệp, nhiệt tình và tận tâm. CNG mang đến cho bạn các dịch vụ như', '<p dir=\"ltr\"><strong>&nbsp;CNG - TIẾP NỐI NHỮNG CHUYẾN BAY&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;CNG Education l&agrave; một trung t&acirc;m tư vấn du học Canada c&oacute; nhiều kinh nghiệm v&agrave; uy t&iacute;n trong lĩnh vực n&agrave;y. CNG Education c&oacute; đội ngũ nh&acirc;n vi&ecirc;n tư vấn chuy&ecirc;n nghiệp, nhiệt t&igrave;nh v&agrave; tận t&acirc;m. CNG mang đến cho bạn c&aacute;c dịch vụ như:</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Tư vấn miễn ph&iacute; về c&aacute;c trường đại học v&agrave; c&aacute;c kh&oacute;a học ngắn hạn, c&aacute;c chuyến summer camp tại Canada.</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Hỗ trợ l&agrave;m hồ sơ du học, xin visa, xin học bổng v&agrave; c&aacute;c thủ tục kh&aacute;c.</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Tổ chức c&aacute;c buổi giao lưu văn h&oacute;a, tham quan du lịch v&agrave; c&aacute;c hoạt động ngoại kh&oacute;a cho học sinh.</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Hỗ trợ t&igrave;m kiếm nơi ở, việc l&agrave;m v&agrave; c&aacute;c vấn đề sinh hoạt khi du học Canada.</strong></p>\r\n\r\n<p><strong>&nbsp;CNG Education lu&ocirc;n đặt chất lượng gi&aacute;o dục v&agrave; sự h&agrave;i l&ograve;ng của học sinh l&ecirc;n h&agrave;ng đầu. Ch&uacute;ng t&ocirc;i cũng đ&atilde; gi&uacute;p rất nhiều học sinh Việt Nam du học th&agrave;nh c&ocirc;ng v&agrave; c&oacute; cuộc sống ổn định ở Canada - một ch&acirc;n trời mới.&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;C&ugrave;ng CNG Education c&oacute; những chuyến bay an to&agrave;n đến với h&agrave;nh tr&igrave;nh mơ ước, đến với những nền gi&aacute;o dục ti&ecirc;n tiến thế giới tại Canada nh&eacute;!</strong></p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>CNG GROUP&nbsp;- TRUNG T&Acirc;M TƯ VẤN DU HỌC&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>thuộc c&ocirc;ng ty TNHH&nbsp;Candice Nguyen Global Group</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>Lead your dream conquer</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>| Th&ocirc;ng tin li&ecirc;n hệ&nbsp;|</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Phone: +84 822-824-188</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Office Hours: 8 - 11h, 13h30 - 16h30 từ thứ Hai đến thứ Bảy</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Email: cngeducation@cnggroup.org</strong></p>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;Address: Tầng 4, L&ocirc; số 38, khu đ&ocirc; thị MKL, Hồng Hải, Hạ Long, Quảng Ninh.</strong></p>\r\n', NULL, 1, '', '', '', '', '', 'DU HỌC CANADA', '', 'du-hoc-canada', '', NULL, 80),
(116, 'en', 'STUDY IN CANADA', 'english version ', '<p>english version</p>\r\n', NULL, 1, '', '', '', '', '', 'DU HỌC CANADA', '', 'en-du-hoc-canada', '', NULL, 80),
(117, 'vn', 'DU HỌC THỤY SĨ', 'Bạn có muốn du học tại một quốc gia có nền giáo dục hàng đầu thế giới, với nhiều trường đại học danh tiếng và chất lượng cao?', '<p>DU HỌC THỤY SĨ - TẠI SAO KH&Ocirc;NG?</p>\r\n\r\n<p>CƠ HỘI VỪA HỌC VỪA THỰC TẬP VỚI MỨC LƯƠNG HẤP DẪN</p>\r\n\r\n<p>Bạn c&oacute; muốn du học tại một quốc gia c&oacute; nền gi&aacute;o dục h&agrave;ng đầu thế giới, với nhiều trường đại học danh tiếng v&agrave; chất lượng cao?</p>\r\n\r\n<p>Bạn c&oacute; muốn được trải nghiệm một nền văn h&oacute;a đa dạng, phong ph&uacute; v&agrave; th&acirc;n thiện?</p>\r\n\r\n<p>Nếu c&acirc;u trả lời l&agrave; c&oacute;, th&igrave; du học Thụy Sĩ l&agrave; lựa chọn ho&agrave;n hảo cho bạn!</p>\r\n\r\n<p>Du học Thụy Sĩ kh&ocirc;ng chỉ mang lại cho bạn cơ hội được tiếp cận với một nền gi&aacute;o dục chất lượng cao, m&agrave; c&ograve;n cho bạn cơ hội được thực tập tại c&aacute;c c&ocirc;ng ty h&agrave;ng đầu thế giới, với mức lương hấp dẫn.</p>\r\n\r\n<p>Bạn sẽ được giao lưu v&agrave; kết bạn với những sinh vi&ecirc;n quốc tế đến từ khắp nơi tr&ecirc;n thế giới.</p>\r\n\r\n<p>Bạn sẽ được ph&aacute;t triển kỹ năng giao tiếp, l&agrave;m việc nh&oacute;m, giải quyết vấn đề v&agrave; s&aacute;ng tạo.</p>\r\n\r\n<p>Đặc biệt, bạn sẽ c&oacute; cơ hội lắng nghe những chia sẻ qu&yacute; gi&aacute; về kinh nghiệm du học từ c&aacute;c cựu du học sinh Thụy Sĩ v&agrave; trải nghiệm tư vấn với đại diện trường HTMI Thụy Sĩ trong buổi workshop online được livestream l&uacute;c 19h30 - 20h30 ng&agrave;y 16/6/2023 tr&ecirc;n Fanpage CNG Education nữa đ&oacute;!</p>\r\n\r\n<p>Đừng qu&ecirc;n đặt lịch hẹn để kh&ocirc;ng bỏ lỡ sự kiện hấp dẫn n&agrave;y nha</p>\r\n\r\n<p>Du học Thụy Sĩ l&agrave; một cơ hội qu&yacute; b&aacute;u để bạn mở rộng tầm nh&igrave;n, n&acirc;ng cao kiến thức v&agrave; kinh nghiệm, v&agrave; chuẩn bị cho sự nghiệp tương lai của m&igrave;nh. Nếu bạn quan t&acirc;m đến du học Thụy Sĩ, h&atilde;y li&ecirc;n hệ với CNG Education để được tư vấn chi tiết v&agrave; hỗ trợ thủ tục nhập học. Ch&uacute;ng t&ocirc;i sẽ gi&uacute;p bạn thực hiện ước mơ du học của m&igrave;nh!</p>\r\n', NULL, 1, '', '', '', '', '', 'DU HỌC THỤY SĨ', '', 'du-hoc-thuy-si', '', NULL, 81),
(118, 'en', 'STUDY IN Switzerland', 'english version ', '<p>english version</p>\r\n', NULL, 1, '', '', '', '', '', 'DU HỌC THỤY SĨ', '', 'du-hoc-thuy-si', '', NULL, 81),
(119, 'vn', 'DU HỌC PHILIPPINES', 'Nhắc đến du học Philippines, phải chăng điều đầu tiên các bạn trẻ nghĩ đến trong đầu là “ giao tiếp Tiếng Anh “ ?', '<p>Nhắc đến du học Philippines, phải chăng điều đầu ti&ecirc;n c&aacute;c bạn trẻ nghĩ đến trong đầu l&agrave; &ldquo; giao tiếp Tiếng Anh &ldquo; ?</p>\r\n\r\n<p>Thực ra, du học Philippines kh&ocirc;ng đơn thuần g&oacute;i gọn về chương tr&igrave;nh giao tiếp, m&agrave; c&ograve;n bao h&agrave;m đa dạng c&aacute;c kh&oacute;a học đ&aacute;p ứng cho mọi nhu cầu của từng độ tuổi v&agrave; tr&igrave;nh độ của mỗi học vi&ecirc;n. Nếu bạn đang c&oacute; thắc mắc về c&aacute;c chương tr&igrave;nh học ở Philippines th&igrave; đừng bỏ qua b&agrave;i viết n&agrave;y của Du học CNG nh&eacute; !</p>\r\n\r\n<p>Kh&oacute;a học Tiếng Anh giao tiếp: mang đến cho c&aacute;c bạn học vi&ecirc;n cơ hội trau dồi kỹ năng n&oacute;i tiếng Anh v&agrave; tăng cường sự tương t&aacute;c với gi&aacute;o vi&ecirc;n, n&acirc;ng cao tr&igrave;nh độ bản th&acirc;n một c&aacute;ch tốt nhất.</p>\r\n\r\n<p>Kh&oacute;a ESL ( giao tiếp tổng qu&aacute;t ):kho&aacute; học tập trung cải thiện kỹ năng giao tiếp v&agrave; hệ thống lại c&aacute;c kiến thức tiếng Anh từ c&aacute;c lớp 1:1 v&agrave; 1:4 bao gồm kỹ năng nghe, n&oacute;i, đọc, viết, ph&aacute;t &acirc;m, từ vựng, ngữ ph&aacute;p, biện luận v&agrave; thuyết tr&igrave;nh.</p>\r\n\r\n<p>Kh&oacute;a Power Speaking ( luyện n&oacute;i chuy&ecirc;n s&acirc;u )</p>\r\n\r\n<p>Kh&oacute;a Business English ( tiếng Anh giao tiếp cho người đi l&agrave;m từng ng&agrave;nh nghề chuy&ecirc;n biệt )</p>\r\n\r\n<p>Kh&oacute;a học tiếng Anh học thuật: tập trung luyện thi lấy bằng IELTS/ TOEIC/ TOEFL trong thời gian ngắn nhất. Đ&acirc;y l&agrave; chứng chỉ tiếng Anh quốc tế phục vụ cho mục đ&iacute;ch du học, định cư v&agrave; l&agrave;m việc, hay đơn giản l&agrave; đ&aacute;nh gi&aacute; năng lực tiếng Anh của m&igrave;nh. Đặc biệt IELTS c&oacute; rất nhiều kho&aacute; cho c&aacute;c tr&igrave;nh độ kh&aacute;c nhau:</p>\r\n\r\n<p>Kh&oacute;a Pre-IELTS ( l&agrave;m quen với IELTS )</p>\r\n\r\n<p>Kh&oacute;a IELTS thường ( luyện từng kĩ năng s&aacute;t với đề IELTS )</p>\r\n\r\n<p>Kh&oacute;a IELTS đảm bảo ( cam kết đầu ra cho học vi&ecirc;n )</p>\r\n\r\n<p>Kh&oacute;a học tiếng Anh chuy&ecirc;n biệt: b&ecirc;n cạnh những kh&oacute;a học phổ biến th&igrave; c&aacute;c trường Anh ngữ ở Philippines c&ograve;n cung cấp nhiều kh&oacute;a học kh&aacute;c, điển h&igrave;nh như:</p>\r\n\r\n<p>Kh&oacute;a Flight Attendant ( tiếng Anh h&agrave;ng kh&ocirc;ng )</p>\r\n\r\n<p>Kh&oacute;a Juniors ( tiếng Anh trẻ em )</p>\r\n\r\n<p>Kh&oacute;a Family ( tiếng Anh gia đ&igrave;nh ) : l&agrave; kho&aacute; học m&agrave; ba mẹ c&oacute; thể đồng h&agrave;nh để vừa trau dồi tr&igrave;nh độ tiếng Anh c&ugrave;ng con, vừa ở b&ecirc;n chứng kiến con tiến bộ từng ng&agrave;y</p>\r\n\r\n<p>Với sự đa dạng v&agrave; t&iacute;nh hiệu quả của mỗi kh&oacute;a học mang lại, Du học CNG tin rằng khi ba mẹ trao niềm tin v&agrave; gửi gắm c&aacute;c con v&agrave;o m&ocirc;i trường giảng dạy tại Philippines, cũng l&agrave; l&uacute;c ba mẹ sẽ nhận được sự bứt ph&aacute; từ h&agrave;nh tr&igrave;nh trưởng th&agrave;nh của con</p>\r\n', NULL, 1, '', '', '', '', '', 'DU HỌC PHILIPPINES', '', 'du-hoc-philippines', '', NULL, 82),
(120, 'en', 'STUDY IN THE PHILIPPINES', 'english version ', '<p>english version</p>\r\n', NULL, 1, '', '', '', '', '', 'DU HỌC PHILIPPINES', '', 'du-hoc-philippines', '', NULL, 82),
(121, 'vn', 'Du học Úc', '', '<p>Nội dung đang cập nhật</p>\r\n', NULL, 1, '', '', '', '', '', 'Du học Úc', '', 'du-hoc-uc', '', NULL, 83),
(122, 'en', 'Study in Australia', 'english version ', '<p>english version</p>\r\n\r\n<p>Nội dung đang cập nhật</p>\r\n', NULL, 1, '', '', '', '', '', 'Du học Úc', '', 'en-du-hoc-uc', '', NULL, 83),
(123, 'vn', 'Du học Anh', '', '<p>Nội dung đang cập nhật</p>\r\n', NULL, 1, '', '', '', '', '', 'Du học Anh', '', 'du-hoc-anh', '', NULL, 84),
(124, 'en', 'Study abroad in England', 'english version ', '<p>english version</p>\r\n\r\n<p>Nội dung đang cập nhật</p>\r\n', NULL, 1, '', '', '', '', '', 'Du học Anh', '', 'en-du-hoc-anh', '', NULL, 84),
(125, 'vn', 'Du học Ireland', '', '<p>Nội dung đang cập nhật</p>\r\n', NULL, 1, '', '', '', '', '', 'Du học Ireland', '', 'du-hoc-ireland', '', NULL, 85),
(126, 'en', 'Study in Ireland', 'english version ', '<p>english version</p>\r\n\r\n<p>Nội dung đang cập nhật</p>\r\n', NULL, 1, '', '', '', '', '', 'Du học Ailen', '', 'du-hoc-ireland', '', NULL, 85);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `size_id` bigint(20) NOT NULL,
  `size_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_stock` int(11) DEFAULT NULL,
  `size_price` double DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slideshow`
--

CREATE TABLE `slideshow` (
  `id` int(11) NOT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slideshow`
--

INSERT INTO `slideshow` (`id`, `image`, `link`) VALUES
(2, 't02-fixSize2.jpg', '/su-kien-nghe-quang-ba'),
(3, 't01-fixSize1.jpg', '/su-kien-tuyen-dung');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `technical_bulletin_file`
--

CREATE TABLE `technical_bulletin_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `technical_bulletin_file`
--

INSERT INTO `technical_bulletin_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuoc_tinh`
--

CREATE TABLE `thuoc_tinh` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `thuoc_tinh`
--

INSERT INTO `thuoc_tinh` (`id`, `name`) VALUES
(1, 'Màu sắc'),
(2, 'Kích cỡ'),
(3, 'Loại dây đeo'),
(4, 'Kiểu khóa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuoc_tinh_value`
--

CREATE TABLE `thuoc_tinh_value` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thuoc_tinh_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `thuoc_tinh_value`
--

INSERT INTO `thuoc_tinh_value` (`id`, `name`, `thuoc_tinh_id`) VALUES
(1, 'Đen', 1),
(2, 'Đỏ', 1),
(3, 'Tím', 1),
(4, 'Vàng', 1),
(5, 'Xanh', 1),
(6, 'Xám', 1),
(7, 'Hồng', 1),
(8, 'Kích cỡ một', 2),
(9, 'Loại dây đeo một', 3),
(10, 'Kiểu khóa một', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_password` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `user_birthday` date NOT NULL,
  `time` date NOT NULL,
  `ask` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_me_identify` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_me_token` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `user_password`, `created_date`, `state`, `user_birthday`, `time`, `ask`, `remember_me_identify`, `remember_me_token`) VALUES
(2, 'manh', 'manh@gmail.com', '0123434', '', '$2y$10$8JKJKBN1HlCxSIR6nv39pedRpujNWEOOQ9ePRT07j4x2F4blrAfA2', '2017-03-23 15:03:28', 1, '0000-00-00', '0000-00-00', NULL, NULL, NULL),
(3, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', 'Hà Nội', '$2y$10$AEI/miqMt7vhtFlsLkJefOsXM6GcQft3SEYhe14AAiIV0CYo6GqtK', NULL, 1, '1983-10-31', '2020-09-09', '$2y$10$zhkAx70VHTkxyzh33GM.Ku1AyHL79LG/.f482jKCeSIjjLq/1LF8u', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_online`
--

CREATE TABLE `user_online` (
  `tgtmp` int(15) NOT NULL DEFAULT 0,
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `local` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `wishlist_created_date` datetime DEFAULT NULL,
  `product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_role` (`admin_role`),
  ADD KEY `admin_state` (`admin_state`);

--
-- Chỉ mục cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`admin_role_id`);

--
-- Chỉ mục cho bảng `bang_gia_1`
--
ALTER TABLE `bang_gia_1`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bang_gia_2`
--
ALTER TABLE `bang_gia_2`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cad_file`
--
ALTER TABLE `cad_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `calculators_file`
--
ALTER TABLE `calculators_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cam_nhan`
--
ALTER TABLE `cam_nhan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD PRIMARY KEY (`id_cartDetail`),
  ADD KEY `id_cart` (`id_cart`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`config_id`);

--
-- Chỉ mục cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`);

--
-- Chỉ mục cho bảng `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD UNIQUE KEY `currency_code` (`currency_code`);

--
-- Chỉ mục cho bảng `dang_ky_tu_van`
--
ALTER TABLE `dang_ky_tu_van`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `datasheets_file`
--
ALTER TABLE `datasheets_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dat_mua`
--
ALTER TABLE `dat_mua`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `declaration_file`
--
ALTER TABLE `declaration_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `doi_tac`
--
ALTER TABLE `doi_tac`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `home_languages`
--
ALTER TABLE `home_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `ho_so_online`
--
ALTER TABLE `ho_so_online`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ho_tro`
--
ALTER TABLE `ho_tro`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `installation_file`
--
ALTER TABLE `installation_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `listings_certifications_file`
--
ALTER TABLE `listings_certifications_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_type_id` (`menu_type_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `state` (`state`),
  ADD KEY `menu_parent` (`menu_parent`),
  ADD KEY `productcat_id` (`productcat_id`),
  ADD KEY `newscat_id` (`newscat_id`);

--
-- Chỉ mục cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Chỉ mục cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`menu_type_id`);

--
-- Chỉ mục cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_type` (`menu_type_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat`
--
ALTER TABLE `newscat`
  ADD PRIMARY KEY (`newscat_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newscat_id` (`newscat_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `nhan_ban_tin`
--
ALTER TABLE `nhan_ban_tin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhan_tai_lieu`
--
ALTER TABLE `nhan_tai_lieu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `noi_su_kien`
--
ALTER TABLE `noi_su_kien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `obsolete_products_file`
--
ALTER TABLE `obsolete_products_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `operating_file`
--
ALTER TABLE `operating_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  ADD PRIMARY KEY (`optionsQ1_id`);

--
-- Chỉ mục cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  ADD PRIMARY KEY (`optionsQ2_id`);

--
-- Chỉ mục cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  ADD PRIMARY KEY (`optionsQ3_id`);

--
-- Chỉ mục cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  ADD PRIMARY KEY (`optionsQ4_id`);

--
-- Chỉ mục cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  ADD PRIMARY KEY (`optionsQ5_id`);

--
-- Chỉ mục cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  ADD PRIMARY KEY (`optionsQ6_id`);

--
-- Chỉ mục cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  ADD PRIMARY KEY (`optionsQ7_id`);

--
-- Chỉ mục cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  ADD PRIMARY KEY (`optionsQ8_id`);

--
-- Chỉ mục cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  ADD PRIMARY KEY (`optionsQ9_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `orders_state` (`orders_state`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_state`
--
ALTER TABLE `order_state`
  ADD PRIMARY KEY (`order_state_id`),
  ADD KEY `state` (`state`);

--
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `product_hot` (`product_hot`),
  ADD KEY `state` (`state`),
  ADD KEY `product_sale` (`product_sale`),
  ADD KEY `product_new` (`product_new`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat`
--
ALTER TABLE `productcat`
  ADD PRIMARY KEY (`productcat_id`),
  ADD KEY `productcat_sort_order` (`productcat_sort_order`),
  ADD KEY `productcat_parent` (`productcat_parent`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_catalogs_file`
--
ALTER TABLE `product_catalogs_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product_diff_color`
--
ALTER TABLE `product_diff_color`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  ADD PRIMARY KEY (`producer_id`);

--
-- Chỉ mục cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_id` (`producer_id`);

--
-- Chỉ mục cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  ADD PRIMARY KEY (`regInfor_id`);

--
-- Chỉ mục cho bảng `regMember`
--
ALTER TABLE `regMember`
  ADD PRIMARY KEY (`regMember_id`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Chỉ mục cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  ADD PRIMARY KEY (`servicecat_id`);

--
-- Chỉ mục cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_servicecat` (`servicecat_id`);

--
-- Chỉ mục cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_service` (`service_id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `technical_bulletin_file`
--
ALTER TABLE `technical_bulletin_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thuoc_tinh`
--
ALTER TABLE `thuoc_tinh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thuoc_tinh_value`
--
ALTER TABLE `thuoc_tinh_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thuoc_tinh_id` (`thuoc_tinh_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`tgtmp`),
  ADD KEY `ip` (`ip`),
  ADD KEY `local` (`local`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `admin_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `bang_gia_1`
--
ALTER TABLE `bang_gia_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `bang_gia_2`
--
ALTER TABLE `bang_gia_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `cad_file`
--
ALTER TABLE `cad_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `calculators_file`
--
ALTER TABLE `calculators_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cam_nhan`
--
ALTER TABLE `cam_nhan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  MODIFY `id_cartDetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `color_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `config`
--
ALTER TABLE `config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dang_ky_tu_van`
--
ALTER TABLE `dang_ky_tu_van`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `datasheets_file`
--
ALTER TABLE `datasheets_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `dat_mua`
--
ALTER TABLE `dat_mua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `declaration_file`
--
ALTER TABLE `declaration_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `doi_tac`
--
ALTER TABLE `doi_tac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `home`
--
ALTER TABLE `home`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT cho bảng `home_languages`
--
ALTER TABLE `home_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT cho bảng `ho_so_online`
--
ALTER TABLE `ho_so_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `ho_tro`
--
ALTER TABLE `ho_tro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `installation_file`
--
ALTER TABLE `installation_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `listings_certifications_file`
--
ALTER TABLE `listings_certifications_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330;

--
-- AUTO_INCREMENT cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=653;

--
-- AUTO_INCREMENT cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `menu_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT cho bảng `newscat`
--
ALTER TABLE `newscat`
  MODIFY `newscat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=389;

--
-- AUTO_INCREMENT cho bảng `nhan_ban_tin`
--
ALTER TABLE `nhan_ban_tin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `nhan_tai_lieu`
--
ALTER TABLE `nhan_tai_lieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `noi_su_kien`
--
ALTER TABLE `noi_su_kien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `obsolete_products_file`
--
ALTER TABLE `obsolete_products_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `operating_file`
--
ALTER TABLE `operating_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  MODIFY `optionsQ1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  MODIFY `optionsQ2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  MODIFY `optionsQ3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  MODIFY `optionsQ4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  MODIFY `optionsQ5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  MODIFY `optionsQ6_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  MODIFY `optionsQ7_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  MODIFY `optionsQ8_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  MODIFY `optionsQ9_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_state`
--
ALTER TABLE `order_state`
  MODIFY `order_state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT cho bảng `productcat`
--
ALTER TABLE `productcat`
  MODIFY `productcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_catalogs_file`
--
ALTER TABLE `product_catalogs_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_diff_color`
--
ALTER TABLE `product_diff_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=535;

--
-- AUTO_INCREMENT cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  MODIFY `producer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  MODIFY `regInfor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `regMember`
--
ALTER TABLE `regMember`
  MODIFY `regMember_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  MODIFY `servicecat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `size_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `technical_bulletin_file`
--
ALTER TABLE `technical_bulletin_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `thuoc_tinh`
--
ALTER TABLE `thuoc_tinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `thuoc_tinh_value`
--
ALTER TABLE `thuoc_tinh_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD CONSTRAINT `cartdetail_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id_cart`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `color`
--
ALTER TABLE `color`
  ADD CONSTRAINT `color_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `home_languages`
--
ALTER TABLE `home_languages`
  ADD CONSTRAINT `home_languages_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `home` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD CONSTRAINT `menu_languages_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD CONSTRAINT `menu_type_languages_ibfk_1` FOREIGN KEY (`menu_type_id`) REFERENCES `menu_type` (`menu_type_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD CONSTRAINT `newscat_languages_ibfk_1` FOREIGN KEY (`newscat_id`) REFERENCES `newscat` (`newscat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD CONSTRAINT `news_languages_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `noi_su_kien`
--
ALTER TABLE `noi_su_kien`
  ADD CONSTRAINT `noi_su_kien_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD CONSTRAINT `page_languages_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD CONSTRAINT `productcat_languages_ibfk_1` FOREIGN KEY (`productcat_id`) REFERENCES `productcat` (`productcat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD CONSTRAINT `product_languages_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD CONSTRAINT `product_producer_languages_ibfk_1` FOREIGN KEY (`producer_id`) REFERENCES `product_producer` (`producer_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD CONSTRAINT `pro_color_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`product_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD CONSTRAINT `servicecat_languages_ibfk_1` FOREIGN KEY (`servicecat_id`) REFERENCES `servicecat` (`servicecat_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD CONSTRAINT `service_languages_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `thuoc_tinh_value`
--
ALTER TABLE `thuoc_tinh_value`
  ADD CONSTRAINT `thuoc_tinh_value_ibfk_1` FOREIGN KEY (`thuoc_tinh_id`) REFERENCES `thuoc_tinh` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
