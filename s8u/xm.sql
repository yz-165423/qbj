-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-08-08 08:52:05
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xm`
--
CREATE DATABASE IF NOT EXISTS `xm` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `xm`;

-- --------------------------------------------------------

--
-- 表的结构 `xm_carousel`
--

DROP TABLE IF EXISTS `xm_carousel`;
CREATE TABLE IF NOT EXISTS `xm_carousel` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `c_img_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xm_carousel`
--

INSERT INTO `xm_carousel` (`cid`, `c_img_url`) VALUES
(2, 'carousel1.jpg'),
(3, 'carousel2.jpg'),
(4, 'carousel3.jpg'),
(5, 'carousel4.jpg'),
(6, 'carousel5.jpg'),
(7, 'carousel6.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `xm_cart`
--

DROP TABLE IF EXISTS `xm_cart`;
CREATE TABLE IF NOT EXISTS `xm_cart` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `menus_id` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xm_cart`
--

INSERT INTO `xm_cart` (`cid`, `count`, `uid`, `menus_id`) VALUES
(4, 1, 2, 2),
(31, 7, 1, 13),
(33, 4, 1, 2),
(36, 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `xm_menus`
--

DROP TABLE IF EXISTS `xm_menus`;
CREATE TABLE IF NOT EXISTS `xm_menus` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `img_url` varchar(25) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xm_menus`
--

INSERT INTO `xm_menus` (`mid`, `title`, `price`, `img_url`, `type`) VALUES
(1, '红烧肘子', '50.00', '热菜/hszz.jpg', 0),
(2, '糖醋排骨', '30.00', '热菜/tcpg.jpg', 0),
(3, '小炒肉', '25.00', '热菜/xcr.jpg', 0),
(4, '麻婆豆腐', '18.00', '热菜/mpdf.jpg', 0),
(9, '小葱拌豆腐', '11.00', '凉菜/xcbdf.jpg', 1),
(10, '猪头肉', '30.00', '凉菜/ztr.jpg', 1),
(11, '羊肉串', '3.00', '烧烤/yrc.jpg', 2),
(12, '烤羊腿', '85.00', '烧烤/kyt.jpg', 2),
(13, '烤凤爪', '3.00', '烧烤/kfz.jpg', 2),
(14, '烤肘子', '12.00', '烧烤/kzz.jpg', 2),
(15, '烤鱿鱼', '8.00', '烧烤/kyy.jpg', 2),
(16, '牛栏山', '18.00', '酒水/nls.jpg', 3),
(17, '二锅头', '20.00', '酒水/rgt.jpg', 3),
(18, '人头马', '5000.00', '酒水/rtm.jpg', 3),
(19, '可乐', '5.00', '酒水/kl.jpg', 3),
(20, '雪碧', '5.00', '酒水/xb.jpg', 3),
(21, '牛肉面', '18.00', '主食/nrm.jpg', 4),
(22, '素饺子', '22.00', '主食/sjz.jpg', 4),
(23, '扬州炒饭', '20.00', '主食/yzcf.jpg', 4),
(24, '猪肉面', '15.00', '主食/zrm.jpg', 4),
(25, '云吞面', '25.00', '主食/ytm.jpg', 4);

-- --------------------------------------------------------

--
-- 表的结构 `xm_rooter`
--

DROP TABLE IF EXISTS `xm_rooter`;
CREATE TABLE IF NOT EXISTS `xm_rooter` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `rname` varchar(32) DEFAULT NULL,
  `rpwd` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xm_rooter`
--

INSERT INTO `xm_rooter` (`rid`, `rname`, `rpwd`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- 表的结构 `xm_user`
--

DROP TABLE IF EXISTS `xm_user`;
CREATE TABLE IF NOT EXISTS `xm_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xm_user`
--

INSERT INTO `xm_user` (`uid`, `uname`, `upwd`) VALUES
(1, 'tom', '202cb962ac59075b964b07152d234b70'),
(2, '', 'd41d8cd98f00b204e9800998ecf8427e'),
(3, '123456', '202cb962ac59075b964b07152d234b70');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
