-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.6.26 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 new17 的数据库结构
CREATE DATABASE IF NOT EXISTS `new17` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `new17`;


-- 导出  表 new17.bill 结构
CREATE TABLE IF NOT EXISTS `bill` (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `total_price` double DEFAULT NULL COMMENT '总价',
  `total_amount` int(11) DEFAULT NULL COMMENT '总数量',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `status` int(11) DEFAULT '0' COMMENT '状态：0待付款，1已付款，2已取货，3已取消，4退货中，5已退货',
  `identify_code` int(11) DEFAULT NULL COMMENT '验证码',
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9890 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  new17.bill 的数据：~16 rows (大约)
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` (`bill_id`, `user_id`, `total_price`, `total_amount`, `create_time`, `status`, `identify_code`) VALUES
	(511, 1859231227, 159.9, 1, '2017-05-17 09:17:06', 1, 9180),
	(1182, 1859231229, 62.1, 2, '2017-06-14 11:05:55', 4, 8650),
	(1289, 1859231225, 39.9, 1, '2017-05-17 16:03:31', 1, 2138),
	(1564, 1859231225, 1198, 2, '2017-05-16 15:50:33', 4, 3519),
	(3155, 1859231227, 159.9, 1, '2017-05-17 09:15:34', 1, 3912),
	(4862, 1859231225, 197.5, 2, '2017-05-16 15:49:39', 3, 8845),
	(5485, 1859231229, 62.1, 2, '2017-06-14 11:07:21', 1, 5892),
	(6319, 1859231230, 84.3, 3, '2017-06-14 11:12:33', 2, 527),
	(6358, 1859231230, 84.3, 3, '2017-06-14 11:13:51', 1, 4182),
	(6644, 1859231225, 599, 1, '2017-05-16 17:22:21', 5, 168),
	(7444, 1859231228, 44.4, 2, '2017-06-14 11:02:04', 0, 862),
	(7760, 1859231225, 22.2, 1, '2017-05-16 17:25:16', 1, 3136),
	(8316, 1859231225, 1832.5, 4, '2017-05-16 15:46:36', 5, 6265),
	(8661, 1859231225, 39.9, 1, '2017-05-16 17:25:32', 1, 9487),
	(8712, 1859231225, 26.6, 1, '2017-05-16 15:52:44', 5, 6267),
	(8809, 1859231225, 13.4, 1, '2017-05-16 15:51:11', 0, 7782),
	(9554, 1859231226, 68.5, 1, '2017-05-17 08:44:58', 1, 4392),
	(9889, 1859231225, 12.2, 1, '2017-05-16 15:53:01', 5, 7605);
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;


-- 导出  表 new17.bill_detail 结构
CREATE TABLE IF NOT EXISTS `bill_detail` (
  `bd_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单详情id',
  `bill_id` int(11) NOT NULL COMMENT '订单id',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '商品名称',
  `price` double DEFAULT NULL COMMENT '商品价格',
  `amount` int(11) DEFAULT NULL COMMENT '商品数量',
  `url` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '商品图片',
  PRIMARY KEY (`bd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1190 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  new17.bill_detail 的数据：~22 rows (大约)
/*!40000 ALTER TABLE `bill_detail` DISABLE KEYS */;
INSERT INTO `bill_detail` (`bd_id`, `bill_id`, `goods_id`, `name`, `price`, `amount`, `url`) VALUES
	(1166, 8316, 999, '婴儿床', 599, 3, 'babyBed'),
	(1167, 8316, 1008, '润肤露', 35.5, 1, 'lotion'),
	(1168, 4862, 1007, '染发膏', 68.5, 1, 'hairColor'),
	(1169, 4862, 1013, '沐浴露', 129, 1, 'soap'),
	(1170, 1564, 999, '婴儿床', 599, 2, 'babyBed'),
	(1171, 8809, 1027, '咖喱', 13.4, 1, 'curry'),
	(1172, 8712, 1026, '荞麦面', 26.6, 1, 'buckwheatNoodles'),
	(1173, 9889, 1036, '苹果汁', 12.2, 1, 'appleJuice'),
	(1174, 6644, 999, '婴儿床', 599, 1, 'babyBed'),
	(1175, 7760, 1037, '卡布奇诺', 22.2, 1, 'cappuccino'),
	(1176, 8661, 1038, '水果麦片', 39.9, 1, 'fruitCereal'),
	(1177, 9554, 1007, '染发膏', 68.5, 1, 'hairColor'),
	(1178, 3155, 1028, '橄榄油', 159.9, 1, 'oliveOil'),
	(1179, 511, 1028, '橄榄油', 159.9, 1, 'oliveOil'),
	(1180, 1289, 1038, '水果麦片', 39.9, 1, 'fruitCereal'),
	(1181, 7444, 1037, '卡布奇诺', 22.2, 2, 'cappuccino'),
	(1182, 1182, 1037, '卡布奇诺', 22.2, 1, 'cappuccino'),
	(1183, 1182, 1038, '水果麦片', 39.9, 1, 'fruitCereal'),
	(1184, 5485, 1037, '卡布奇诺', 22.2, 1, 'cappuccino'),
	(1185, 5485, 1038, '水果麦片', 39.9, 1, 'fruitCereal'),
	(1186, 6319, 1037, '卡布奇诺', 22.2, 2, 'cappuccino'),
	(1187, 6319, 1038, '水果麦片', 39.9, 1, 'fruitCereal'),
	(1188, 6358, 1037, '卡布奇诺', 22.2, 2, 'cappuccino'),
	(1189, 6358, 1038, '水果麦片', 39.9, 1, 'fruitCereal');
/*!40000 ALTER TABLE `bill_detail` ENABLE KEYS */;


-- 导出  表 new17.cart 结构
CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `amount` int(11) NOT NULL COMMENT '商品数量',
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  new17.cart 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` (`cart_id`, `goods_id`, `user_id`, `amount`) VALUES
	(14, 998, 1859231227, 1),
	(15, 1017, 1859231227, 1),
	(16, 1037, 1859231225, 1);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;


-- 导出  表 new17.goods 结构
CREATE TABLE IF NOT EXISTS `goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `name` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '商品名称',
  `price` double NOT NULL COMMENT '商品价格',
  `stock` int(11) NOT NULL DEFAULT '0' COMMENT '商品库存',
  `url` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '图片名称',
  `sort_id` int(11) NOT NULL COMMENT '类别id',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1046 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  new17.goods 的数据：~50 rows (大约)
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` (`goods_id`, `name`, `price`, `stock`, `url`, `sort_id`, `status`) VALUES
	(996, 'GRACO葛莱汽车儿童安全座椅增高垫4-12岁', 438, 50, 'heighteningPad', 105, 0),
	(997, '宝宝汽车儿童安全座椅', 1980, 50, 'safetySeat', 105, 1),
	(998, '婴儿护臀膏', 28, 50, 'babyDiaperOintment', 105, 1),
	(999, '婴儿床', 599, 50, 'babyBed', 105, 1),
	(1000, '婴儿床垫', 288, 50, 'babyMattress', 105, 1),
	(1001, '婴儿奶粉', 57, 50, 'babyMilkPowder', 105, 1),
	(1002, '营养补充剂', 128, 50, 'capsule', 105, 1),
	(1003, '儿童霜', 34, 50, 'childrenCream', 105, 1),
	(1004, '儿童纸尿裤', 56, 50, 'paperDiaper', 105, 1),
	(1005, '奶瓶', 28, 50, 'teats', 105, 1),
	(1006, '护发素', 45, 50, 'hair conditioner', 104, 1),
	(1007, '染发膏', 68.5, 49, 'hairColor', 104, 1),
	(1008, '润肤露', 35.5, 50, 'lotion', 104, 1),
	(1009, '漱口水', 35.9, 50, 'mouthWash', 104, 1),
	(1010, '卫生巾', 19.9, 50, 'pads', 104, 1),
	(1011, '洗发露', 33.3, 50, 'shampoo', 104, 1),
	(1012, '男士洗发露', 36.6, 50, 'shampooForMen', 104, 1),
	(1013, '沐浴露', 129, 50, 'soap', 104, 1),
	(1014, '牙刷', 20.5, 50, 'toothbrush', 104, 1),
	(1015, '牙膏', 34.6, 50, 'toothpaste', 104, 1),
	(1016, '洗手液', 32.2, 50, 'handWashing', 103, 1),
	(1017, '衣架', 25, 50, 'hanger', 103, 1),
	(1018, '拖把套装', 288, 50, 'mop', 103, 1),
	(1019, '雨衣', 58, 50, 'raincoat', 103, 1),
	(1020, '垃圾袋', 9.9, 50, 'rubbishBag', 103, 1),
	(1021, '拖鞋', 13.4, 50, 'slipper', 103, 1),
	(1022, '纸巾', 25.6, 50, 'tissue', 103, 1),
	(1023, '毛巾套装', 15.5, 50, 'towel', 103, 1),
	(1024, '雨伞', 39.9, 50, 'umbrella', 103, 1),
	(1025, '保温杯', 39.9, 50, 'vacuumCup', 103, 1),
	(1026, '荞麦面', 26.6, 50, 'buckwheatNoodles', 102, 1),
	(1027, '咖喱', 13.4, 50, 'curry', 102, 1),
	(1028, '橄榄油', 159.9, 48, 'oliveOil', 102, 1),
	(1029, '花生油', 59.9, 50, 'peanutOil', 102, 1),
	(1030, '辛拉面', 19.9, 50, 'ramenNoodles', 102, 1),
	(1031, '薏仁粥', 28.8, 50, 'riceBeans', 102, 1),
	(1032, '无碘盐', 9.9, 50, 'salt', 102, 1),
	(1033, '酱油', 6.9, 50, 'soySauce', 102, 1),
	(1034, '粉丝', 8.8, 50, 'vermicelli', 102, 1),
	(1035, '五常大米', 99.9, 50, 'wuchangRice', 102, 1),
	(1036, '苹果汁', 12.2, 50, 'appleJuice', 101, 1),
	(1037, '卡布奇诺', 22.2, 44, 'cappuccino', 101, 1),
	(1038, '水果麦片', 39.9, 44, 'fruitCereal', 101, 1),
	(1039, '即食麦片', 28.8, 50, 'granola', 101, 1),
	(1040, '葡萄汁', 12.2, 50, 'grapeJuice', 101, 1),
	(1041, '橙汁', 12.2, 50, 'orangeJuice', 101, 1),
	(1042, '脱脂牛奶', 19.9, 50, 'skimMilk', 101, 1),
	(1043, '全脂牛奶', 25.9, 50, 'wholeMilk', 101, 1),
	(1044, '星巴克咖啡', 19.9, 50, 'starbucks', 101, 1),
	(1045, '速溶白咖啡', 25.9, 50, 'whieCoffee', 101, 1);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;


-- 导出  表 new17.sort 结构
CREATE TABLE IF NOT EXISTS `sort` (
  `sort_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类别id',
  `sort_name` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '类别名称',
  PRIMARY KEY (`sort_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  new17.sort 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `sort` DISABLE KEYS */;
INSERT INTO `sort` (`sort_id`, `sort_name`) VALUES
	(101, '食品饮'),
	(102, '副食粮油'),
	(103, '美容洗护'),
	(104, '家庭清洁'),
	(105, '母婴用品');
/*!40000 ALTER TABLE `sort` ENABLE KEYS */;


-- 导出  表 new17.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `name` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '用户名',
  `password` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '用户密码',
  `pay_pwd` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '支付密码',
  `money` double NOT NULL DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1859231231 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  new17.user 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`, `name`, `password`, `pay_pwd`, `money`) VALUES
	(1859231225, 'wen', 'wen', 'wen', 49922.5),
	(1859231226, '11', '11', '11', 9931.5),
	(1859231227, '111', '111', '11', 9680.2),
	(1859231228, 'wen2020', '1111', 'wen2020', 0),
	(1859231229, 'wen2021', '1111', '1111', 9875.8),
	(1859231230, 'wen2028', '111', '111', 831.4000000000001);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
