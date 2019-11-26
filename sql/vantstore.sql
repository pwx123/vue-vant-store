/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : vantstore

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 26/11/2019 11:50:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `Username` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Addressid` int(11) NOT NULL AUTO_INCREMENT,
  `Name` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Phonenum` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `AddressDetail` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PostalCode` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Isdefault` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Addressid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('test@qq.com', 1, '张三', '15555578945', '山东省烟台市芝罘区', '鲁东大学', '271934', 1);
INSERT INTO `address` VALUES ('test@qq.com', 2, '小明', '15535578564', '山东省济南市历下区', '暨南大学', '271934', 0);
INSERT INTO `address` VALUES ('test@qq.com', 3, '李四', '15555578945', '山东省烟台市芝罘区', '烟台大学', '271934', 0);
INSERT INTO `address` VALUES ('test@qq.com', 4, '王五', '15555578945', '山东省青岛市即墨市', '烟台路', '271934', 0);

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `Username` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Goodid` int(11) NOT NULL,
  `Cartcount` int(11) NOT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('123@qq.com', 7, 2);
INSERT INTO `cart` VALUES ('123@qq.com', 1, 2);
INSERT INTO `cart` VALUES ('test@qq.com', 8, 1);

-- ----------------------------
-- Table structure for good
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good`  (
  `Goodid` int(11) NOT NULL AUTO_INCREMENT,
  `Goodname` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `GoodPrice` double NOT NULL,
  `GoodPriceaftersale` double NOT NULL,
  `Goodcount` int(11) NOT NULL,
  `Gooddescribe` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Gooddealprice` int(11) NOT NULL,
  `GoodItem` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `GoodImg` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Goodid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 58 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of good
-- ----------------------------
INSERT INTO `good` VALUES (1, '小米6X', 1499, 1299, 966, '小米6X,立减200', 0, '1', '/img/good/pic-1.jpg');
INSERT INTO `good` VALUES (2, '小米8', 2399, 2199, 966, '【全版本买就赠手环2】Xiaomi/小米 小米8年度旗舰全面屏骁龙845双频GPS智能拍照游戏手机刘海屏AI', 5, '3,4', '/img/good/pic-2.jpg');
INSERT INTO `good` VALUES (3, '迪士尼商城', 1499, 1399, 966, '当天可定亲子特惠上海迪士尼乐园门票上海迪士尼门票上海迪斯尼票', 6, '2', '/img/good/pic-3.jpg');
INSERT INTO `good` VALUES (4, '飞科剃须刀', 99, 66, 56, '飞科剃须刀电动男士刮胡刀全身水洗智能充电式胡须刀正品刮胡子刀', 0, '1,5,6', '/img/good/pic-4.jpg');
INSERT INTO `good` VALUES (5, '华为honor/荣耀 荣耀10', 1266, 1199, 98, '【低至2299】华为honor/荣耀 荣耀10GT游戏加速AIS手持夜景AI摄影全面屏双卡双待全网通8GB手机官方旗舰店', 5, '1,6', '/img/good/pic-5.jpg');
INSERT INTO `good` VALUES (6, '荣耀V10', 2199, 2099, 78, '【28日低至1799 6期免息】华为honor/荣耀 荣耀V10全面屏智能AI变焦双摄拍照商务手机全新官方正品旗舰店', 0, '3,5', '/img/good/pic-6.jpg');
INSERT INTO `good` VALUES (7, '洗衣机', 999, 889, 36, 'Haier/海尔 EB80M39TH 8kg/公斤全自动家用波轮洗衣机 大容量', 5, '2,5', '/img/good/pic-7.jpg');
INSERT INTO `good` VALUES (8, '小米8', 2399, 2199, 966, '【全版本买就赠手环2】Xiaomi/小米 小米8年度旗舰全面屏骁龙845双频GPS智能拍照游戏手机刘海屏AI', 0, '1,2,3', '/img/good/pic-2.jpg');
INSERT INTO `good` VALUES (9, '迪士尼商城', 1499, 1399, 966, '当天可定亲子特惠上海迪士尼乐园门票上海迪士尼门票上海迪斯尼票', 5, '1,5,6', '/img/good/pic-3.jpg');
INSERT INTO `good` VALUES (10, '飞科剃须刀', 99, 66, 56, '飞科剃须刀电动男士刮胡刀全身水洗智能充电式胡须刀正品刮胡子刀', 6, '1,6', '/img/good/pic-4.jpg');
INSERT INTO `good` VALUES (11, '华为honor/荣耀 荣耀10', 1266, 1199, 98, '【低至2299】华为honor/荣耀 荣耀10GT游戏加速AIS手持夜景AI摄影全面屏双卡双待全网通8GB手机官方旗舰店', 5, '2,6', '/img/good/pic-5.jpg');
INSERT INTO `good` VALUES (12, '荣耀V10', 2199, 2099, 78, '【28日低至1799 6期免息】华为honor/荣耀 荣耀V10全面屏智能AI变焦双摄拍照商务手机全新官方正品旗舰店', 5, '4,6', '/img/good/pic-6.jpg');
INSERT INTO `good` VALUES (13, '洗衣机', 999, 889, 36, 'Haier/海尔 EB80M39TH 8kg/公斤全自动家用波轮洗衣机 大容量', 5, '1,5', '/img/good/pic-7.jpg');
INSERT INTO `good` VALUES (14, '小米8', 2399, 2199, 966, '【全版本买就赠手环2】Xiaomi/小米 小米8年度旗舰全面屏骁龙845双频GPS智能拍照游戏手机刘海屏AI', 0, '2,5,6', '/img/good/pic-2.jpg');
INSERT INTO `good` VALUES (15, '迪士尼商城', 1499, 1399, 966, '当天可定亲子特惠上海迪士尼乐园门票上海迪士尼门票上海迪斯尼票', 5, '1,5', '/img/good/pic-3.jpg');
INSERT INTO `good` VALUES (16, '飞科剃须刀', 99, 66, 56, '飞科剃须刀电动男士刮胡刀全身水洗智能充电式胡须刀正品刮胡子刀', 5, '3,4,5', '/img/good/pic-4.jpg');
INSERT INTO `good` VALUES (17, '华为honor/荣耀 荣耀10', 1266, 1199, 98, '【低至2299】华为honor/荣耀 荣耀10GT游戏加速AIS手持夜景AI摄影全面屏双卡双待全网通8GB手机官方旗舰店', 0, '2,5', '/img/good/pic-5.jpg');
INSERT INTO `good` VALUES (18, '荣耀V10', 2199, 2099, 78, '【28日低至1799 6期免息】华为honor/荣耀 荣耀V10全面屏智能AI变焦双摄拍照商务手机全新官方正品旗舰店', 5, '1,2,5', '/img/good/pic-6.jpg');
INSERT INTO `good` VALUES (19, '洗衣机', 999, 889, 36, 'Haier/海尔 EB80M39TH 8kg/公斤全自动家用波轮洗衣机 大容量', 5, '1,5', '/img/good/pic-7.jpg');
INSERT INTO `good` VALUES (20, '小米8', 2399, 2199, 966, '【全版本买就赠手环2】Xiaomi/小米 小米8年度旗舰全面屏骁龙845双频GPS智能拍照游戏手机刘海屏AI', 5, '2,3,5', '/img/good/pic-2.jpg');
INSERT INTO `good` VALUES (21, '迪士尼商城', 1499, 1399, 966, '当天可定亲子特惠上海迪士尼乐园门票上海迪士尼门票上海迪斯尼票', 0, '1,5', '/img/good/pic-3.jpg');
INSERT INTO `good` VALUES (22, '飞科剃须刀', 99, 66, 56, '飞科剃须刀电动男士刮胡刀全身水洗智能充电式胡须刀正品刮胡子刀', 5, '2,3,5', '/img/good/pic-4.jpg');
INSERT INTO `good` VALUES (23, '华为honor/荣耀 荣耀10', 1266, 1199, 98, '【低至2299】华为honor/荣耀 荣耀10GT游戏加速AIS手持夜景AI摄影全面屏双卡双待全网通8GB手机官方旗舰店', 5, '1,5', '/img/good/pic-5.jpg');
INSERT INTO `good` VALUES (24, '荣耀V10', 2199, 2099, 78, '【28日低至1799 6期免息】华为honor/荣耀 荣耀V10全面屏智能AI变焦双摄拍照商务手机全新官方正品旗舰店', 5, '2,3,5', '/img/good/pic-6.jpg');
INSERT INTO `good` VALUES (25, '洗衣机', 999, 889, 36, 'Haier/海尔 EB80M39TH 8kg/公斤全自动家用波轮洗衣机 大容量', 0, '1,5', '/img/good/pic-7.jpg');
INSERT INTO `good` VALUES (26, '小米8', 2399, 2199, 966, '【全版本买就赠手环2】Xiaomi/小米 小米8年度旗舰全面屏骁龙845双频GPS智能拍照游戏手机刘海屏AI', 5, '1,5', '/img/good/pic-2.jpg');
INSERT INTO `good` VALUES (27, '迪士尼商城', 1499, 1399, 966, '当天可定亲子特惠上海迪士尼乐园门票上海迪士尼门票上海迪斯尼票', 5, '1,5,6', '/img/good/pic-3.jpg');
INSERT INTO `good` VALUES (28, '飞科剃须刀', 99, 66, 56, '飞科剃须刀电动男士刮胡刀全身水洗智能充电式胡须刀正品刮胡子刀', 5, '1,25', '/img/good/pic-4.jpg');
INSERT INTO `good` VALUES (29, '华为honor/荣耀 荣耀10', 1266, 1199, 98, '【低至2299】华为honor/荣耀 荣耀10GT游戏加速AIS手持夜景AI摄影全面屏双卡双待全网通8GB手机官方旗舰店', 5, '1,5', '/img/good/pic-5.jpg');
INSERT INTO `good` VALUES (30, '荣耀V10', 2199, 2099, 78, '【28日低至1799 6期免息】华为honor/荣耀 荣耀V10全面屏智能AI变焦双摄拍照商务手机全新官方正品旗舰店', 5, '2,3,4', '/img/good/pic-6.jpg');
INSERT INTO `good` VALUES (31, '洗衣机', 999, 889, 36, 'Haier/海尔 EB80M39TH 8kg/公斤全自动家用波轮洗衣机 大容量', 5, '1,5', '/img/good/pic-7.jpg');
INSERT INTO `good` VALUES (32, '小米8', 2399, 2199, 966, '【全版本买就赠手环2】Xiaomi/小米 小米8年度旗舰全面屏骁龙845双频GPS智能拍照游戏手机刘海屏AI', 5, '1,2,4', '/img/good/pic-2.jpg');
INSERT INTO `good` VALUES (33, '迪士尼商城', 1499, 1399, 966, '当天可定亲子特惠上海迪士尼乐园门票上海迪士尼门票上海迪斯尼票', 5, '1,5', '/img/good/pic-3.jpg');
INSERT INTO `good` VALUES (34, '飞科剃须刀', 99, 66, 56, '飞科剃须刀电动男士刮胡刀全身水洗智能充电式胡须刀正品刮胡子刀', 5, '2,6', '/img/good/pic-4.jpg');
INSERT INTO `good` VALUES (35, '华为honor/荣耀 荣耀10', 1266, 1199, 98, '【低至2299】华为honor/荣耀 荣耀10GT游戏加速AIS手持夜景AI摄影全面屏双卡双待全网通8GB手机官方旗舰店', 5, '1,5', '/img/good/pic-5.jpg');
INSERT INTO `good` VALUES (36, '荣耀V10', 2199, 2099, 78, '【28日低至1799 6期免息】华为honor/荣耀 荣耀V10全面屏智能AI变焦双摄拍照商务手机全新官方正品旗舰店', 5, '2,6', '/img/good/pic-6.jpg');
INSERT INTO `good` VALUES (37, '洗衣机', 999, 889, 36, 'Haier/海尔 EB80M39TH 8kg/公斤全自动家用波轮洗衣机 大容量', 5, '1,5', '/img/good/pic-7.jpg');
INSERT INTO `good` VALUES (38, '小米8', 2399, 2199, 966, '【全版本买就赠手环2】Xiaomi/小米 小米8年度旗舰全面屏骁龙845双频GPS智能拍照游戏手机刘海屏AI', 5, '1,4,5', '/img/good/pic-2.jpg');
INSERT INTO `good` VALUES (39, '迪士尼商城', 1499, 1399, 966, '当天可定亲子特惠上海迪士尼乐园门票上海迪士尼门票上海迪斯尼票', 5, '1,5', '/img/good/pic-3.jpg');
INSERT INTO `good` VALUES (40, '飞科剃须刀', 99, 66, 56, '飞科剃须刀电动男士刮胡刀全身水洗智能充电式胡须刀正品刮胡子刀', 5, '3,4,5', '/img/good/pic-4.jpg');
INSERT INTO `good` VALUES (41, '华为honor/荣耀 荣耀10', 1266, 1199, 98, '【低至2299】华为honor/荣耀 荣耀10GT游戏加速AIS手持夜景AI摄影全面屏双卡双待全网通8GB手机官方旗舰店', 5, '1,5', '/img/good/pic-5.jpg');
INSERT INTO `good` VALUES (42, '荣耀V10', 2199, 2099, 78, '【28日低至1799 6期免息】华为honor/荣耀 荣耀V10全面屏智能AI变焦双摄拍照商务手机全新官方正品旗舰店', 5, '2,5', '/img/good/pic-6.jpg');
INSERT INTO `good` VALUES (43, '洗衣机', 999, 889, 36, 'Haier/海尔 EB80M39TH 8kg/公斤全自动家用波轮洗衣机 大容量', 5, '2', '/img/good/pic-7.jpg');
INSERT INTO `good` VALUES (44, '小米8', 2399, 2199, 966, '【全版本买就赠手环2】Xiaomi/小米 小米8年度旗舰全面屏骁龙845双频GPS智能拍照游戏手机刘海屏AI', 5, '2,3', '/img/good/pic-2.jpg');
INSERT INTO `good` VALUES (45, '迪士尼商城', 1499, 1399, 966, '当天可定亲子特惠上海迪士尼乐园门票上海迪士尼门票上海迪斯尼票', 5, '2,3,6', '/img/good/pic-3.jpg');
INSERT INTO `good` VALUES (46, '飞科剃须刀', 99, 66, 56, '飞科剃须刀电动男士刮胡刀全身水洗智能充电式胡须刀正品刮胡子刀', 5, '4,5', '/img/good/pic-4.jpg');
INSERT INTO `good` VALUES (47, '华为honor/荣耀 荣耀10', 1266, 1199, 98, '【低至2299】华为honor/荣耀 荣耀10GT游戏加速AIS手持夜景AI摄影全面屏双卡双待全网通8GB手机官方旗舰店', 5, '1,2,3', '/img/good/pic-5.jpg');
INSERT INTO `good` VALUES (48, '荣耀V10', 2199, 2099, 78, '【28日低至1799 6期免息】华为honor/荣耀 荣耀V10全面屏智能AI变焦双摄拍照商务手机全新官方正品旗舰店', 5, '1,3,4', '/img/good/pic-6.jpg');
INSERT INTO `good` VALUES (49, '洗衣机', 999, 889, 36, 'Haier/海尔 EB80M39TH 8kg/公斤全自动家用波轮洗衣机 大容量', 5, '2,3,4', '/img/good/pic-7.jpg');
INSERT INTO `good` VALUES (50, '小米8', 2399, 2199, 966, '【全版本买就赠手环2】Xiaomi/小米 小米8年度旗舰全面屏骁龙845双频GPS智能拍照游戏手机刘海屏AI', 5, '1,5', '/img/good/pic-2.jpg');
INSERT INTO `good` VALUES (51, '迪士尼商城', 1499, 1399, 966, '当天可定亲子特惠上海迪士尼乐园门票上海迪士尼门票上海迪斯尼票', 5, '2,4', '/img/good/pic-3.jpg');
INSERT INTO `good` VALUES (52, '飞科剃须刀', 99, 66, 56, '飞科剃须刀电动男士刮胡刀全身水洗智能充电式胡须刀正品刮胡子刀', 5, '1,2,6', '/img/good/pic-4.jpg');
INSERT INTO `good` VALUES (53, '华为honor/荣耀 荣耀10', 1266, 1199, 98, '【低至2299】华为honor/荣耀 荣耀10GT游戏加速AIS手持夜景AI摄影全面屏双卡双待全网通8GB手机官方旗舰店', 5, '1,4', '/img/good/pic-5.jpg');
INSERT INTO `good` VALUES (54, '荣耀V10', 2199, 2099, 78, '【28日低至1799 6期免息】华为honor/荣耀 荣耀V10全面屏智能AI变焦双摄拍照商务手机全新官方正品旗舰店', 5, '1,5', '/img/good/pic-6.jpg');
INSERT INTO `good` VALUES (55, '洗衣机', 999, 889, 36, 'Haier/海尔 EB80M39TH 8kg/公斤全自动家用波轮洗衣机 大容量', 5, '2,3', '/img/good/pic-7.jpg');
INSERT INTO `good` VALUES (56, '洗衣机', 999, 889, 36, 'Haier/海尔 EB80M39TH 8kg/公斤全自动家用波轮洗衣机 大容量', 5, '1,5,6', '/img/good/pic-7.jpg');

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `ItemId` int(11) NOT NULL AUTO_INCREMENT,
  `Itemname` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ItemId`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES (1, '热销商品');
INSERT INTO `item` VALUES (2, '拼团商品');
INSERT INTO `item` VALUES (3, '发现');
INSERT INTO `item` VALUES (4, '限时折扣');
INSERT INTO `item` VALUES (5, '主题精选');
INSERT INTO `item` VALUES (6, '生活用品');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `Username` char(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Password` char(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('test@qq.com', '9c67e149bf846087c5b0043bb40eb35f');
INSERT INTO `user` VALUES ('123@qq.com', '9c67e149bf846087c5b0043bb40eb35f');
INSERT INTO `user` VALUES ('1234@qq.com', 'dee63eca4b76ca4d7a83ead699063302');
INSERT INTO `user` VALUES ('12345@qq.com', '9c67e149bf846087c5b0043bb40eb35f');
INSERT INTO `user` VALUES ('123456@qq.com', 'dee63eca4b76ca4d7a83ead699063302');

-- ----------------------------
-- Table structure for userorder
-- ----------------------------
DROP TABLE IF EXISTS `userorder`;
CREATE TABLE `userorder`  (
  `Orderid` int(11) NOT NULL AUTO_INCREMENT,
  `Username` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Addressid` int(11) NOT NULL,
  `totalMoney` int(11) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Orderid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of userorder
-- ----------------------------
INSERT INTO `userorder` VALUES (11, 'test@qq.com', 1, 198, 1);
INSERT INTO `userorder` VALUES (10, 'test@qq.com', 1, 66, 1);
INSERT INTO `userorder` VALUES (9, 'test@qq.com', 1, 2397, 1);
INSERT INTO `userorder` VALUES (8, 'test@qq.com', 1, 132, 1);

-- ----------------------------
-- Table structure for usersuborder
-- ----------------------------
DROP TABLE IF EXISTS `usersuborder`;
CREATE TABLE `usersuborder`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MainOrderId` int(11) NOT NULL,
  `GoodId` int(11) NOT NULL,
  `Count` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of usersuborder
-- ----------------------------
INSERT INTO `usersuborder` VALUES (8, 11, 4, 3);
INSERT INTO `usersuborder` VALUES (7, 10, 4, 1);
INSERT INTO `usersuborder` VALUES (6, 9, 8, 1);
INSERT INTO `usersuborder` VALUES (5, 9, 4, 3);

SET FOREIGN_KEY_CHECKS = 1;
