/*
Navicat MySQL Data Transfer

Source Server         : vantstore
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : vantstore

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-08-30 14:42:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for good
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good` (
  `Goodid` int(11) NOT NULL AUTO_INCREMENT,
  `Goodname` varchar(500) NOT NULL,
  `GoodPrice` double NOT NULL,
  `GoodPriceaftersale` double NOT NULL,
  `Goodcount` int(11) NOT NULL,
  `Gooddescribe` varchar(2000) NOT NULL,
  `Gooddealprice` int(11) NOT NULL,
  `GoodItem` varchar(500) DEFAULT NULL,
  `GoodImg` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Goodid`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of good
-- ----------------------------
INSERT INTO `good` VALUES ('1', '小米6X', '1499', '1299', '966', '小米6X,立减200', '0', '1', 'http://182.61.16.163/img/good/pic-1.jpg');
INSERT INTO `good` VALUES ('2', '小米8', '2399', '2199', '966', '【全版本买就赠手环2】Xiaomi/小米 小米8年度旗舰全面屏骁龙845双频GPS智能拍照游戏手机刘海屏AI', '5', '3,4', 'http://182.61.16.163/img/good/pic-2.jpg');
INSERT INTO `good` VALUES ('3', '迪士尼商城', '1499', '1399', '966', '当天可定亲子特惠上海迪士尼乐园门票上海迪士尼门票上海迪斯尼票', '6', '2', 'http://182.61.16.163/img/good/pic-3.jpg');
INSERT INTO `good` VALUES ('4', '飞科剃须刀', '99', '66', '56', '飞科剃须刀电动男士刮胡刀全身水洗智能充电式胡须刀正品刮胡子刀', '0', '1,5,6', 'http://182.61.16.163/img/good/pic-4.jpg');
INSERT INTO `good` VALUES ('5', '华为honor/荣耀 荣耀10', '1266', '1199', '98', '【低至2299】华为honor/荣耀 荣耀10GT游戏加速AIS手持夜景AI摄影全面屏双卡双待全网通8GB手机官方旗舰店', '5', '1,6', 'http://182.61.16.163/img/good/pic-5.jpg');
INSERT INTO `good` VALUES ('6', '荣耀V10', '2199', '2099', '78', '【28日低至1799 6期免息】华为honor/荣耀 荣耀V10全面屏智能AI变焦双摄拍照商务手机全新官方正品旗舰店', '0', '3,5', 'http://182.61.16.163/img/good/pic-6.jpg');
INSERT INTO `good` VALUES ('7', '洗衣机', '999', '889', '36', 'Haier/海尔 EB80M39TH 8kg/公斤全自动家用波轮洗衣机 大容量', '5', '2,5', 'http://182.61.16.163/img/good/pic-7.jpg');
INSERT INTO `good` VALUES ('8', '小米8', '2399', '2199', '966', '【全版本买就赠手环2】Xiaomi/小米 小米8年度旗舰全面屏骁龙845双频GPS智能拍照游戏手机刘海屏AI', '0', '1,2,3', 'http://182.61.16.163/img/good/pic-2.jpg');
INSERT INTO `good` VALUES ('9', '迪士尼商城', '1499', '1399', '966', '当天可定亲子特惠上海迪士尼乐园门票上海迪士尼门票上海迪斯尼票', '5', '1,5,6', 'http://182.61.16.163/img/good/pic-3.jpg');
INSERT INTO `good` VALUES ('10', '飞科剃须刀', '99', '66', '56', '飞科剃须刀电动男士刮胡刀全身水洗智能充电式胡须刀正品刮胡子刀', '6', '1,6', 'http://182.61.16.163/img/good/pic-4.jpg');
INSERT INTO `good` VALUES ('11', '华为honor/荣耀 荣耀10', '1266', '1199', '98', '【低至2299】华为honor/荣耀 荣耀10GT游戏加速AIS手持夜景AI摄影全面屏双卡双待全网通8GB手机官方旗舰店', '5', '2,6', 'http://182.61.16.163/img/good/pic-5.jpg');
INSERT INTO `good` VALUES ('12', '荣耀V10', '2199', '2099', '78', '【28日低至1799 6期免息】华为honor/荣耀 荣耀V10全面屏智能AI变焦双摄拍照商务手机全新官方正品旗舰店', '5', '4,6', 'http://182.61.16.163/img/good/pic-6.jpg');
INSERT INTO `good` VALUES ('13', '洗衣机', '999', '889', '36', 'Haier/海尔 EB80M39TH 8kg/公斤全自动家用波轮洗衣机 大容量', '5', '1,5', 'http://182.61.16.163/img/good/pic-7.jpg');
INSERT INTO `good` VALUES ('14', '小米8', '2399', '2199', '966', '【全版本买就赠手环2】Xiaomi/小米 小米8年度旗舰全面屏骁龙845双频GPS智能拍照游戏手机刘海屏AI', '0', '2,5,6', 'http://182.61.16.163/img/good/pic-2.jpg');
INSERT INTO `good` VALUES ('15', '迪士尼商城', '1499', '1399', '966', '当天可定亲子特惠上海迪士尼乐园门票上海迪士尼门票上海迪斯尼票', '5', '1,5', 'http://182.61.16.163/img/good/pic-3.jpg');
INSERT INTO `good` VALUES ('16', '飞科剃须刀', '99', '66', '56', '飞科剃须刀电动男士刮胡刀全身水洗智能充电式胡须刀正品刮胡子刀', '5', '3,4,5', 'http://182.61.16.163/img/good/pic-4.jpg');
INSERT INTO `good` VALUES ('17', '华为honor/荣耀 荣耀10', '1266', '1199', '98', '【低至2299】华为honor/荣耀 荣耀10GT游戏加速AIS手持夜景AI摄影全面屏双卡双待全网通8GB手机官方旗舰店', '0', '2,5', 'http://182.61.16.163/img/good/pic-5.jpg');
INSERT INTO `good` VALUES ('18', '荣耀V10', '2199', '2099', '78', '【28日低至1799 6期免息】华为honor/荣耀 荣耀V10全面屏智能AI变焦双摄拍照商务手机全新官方正品旗舰店', '5', '1,2,5', 'http://182.61.16.163/img/good/pic-6.jpg');
INSERT INTO `good` VALUES ('19', '洗衣机', '999', '889', '36', 'Haier/海尔 EB80M39TH 8kg/公斤全自动家用波轮洗衣机 大容量', '5', '1,5', 'http://182.61.16.163/img/good/pic-7.jpg');
INSERT INTO `good` VALUES ('20', '小米8', '2399', '2199', '966', '【全版本买就赠手环2】Xiaomi/小米 小米8年度旗舰全面屏骁龙845双频GPS智能拍照游戏手机刘海屏AI', '5', '2,3,5', 'http://182.61.16.163/img/good/pic-2.jpg');
INSERT INTO `good` VALUES ('21', '迪士尼商城', '1499', '1399', '966', '当天可定亲子特惠上海迪士尼乐园门票上海迪士尼门票上海迪斯尼票', '0', '1,5', 'http://182.61.16.163/img/good/pic-3.jpg');
INSERT INTO `good` VALUES ('22', '飞科剃须刀', '99', '66', '56', '飞科剃须刀电动男士刮胡刀全身水洗智能充电式胡须刀正品刮胡子刀', '5', '2,3,5', 'http://182.61.16.163/img/good/pic-4.jpg');
INSERT INTO `good` VALUES ('23', '华为honor/荣耀 荣耀10', '1266', '1199', '98', '【低至2299】华为honor/荣耀 荣耀10GT游戏加速AIS手持夜景AI摄影全面屏双卡双待全网通8GB手机官方旗舰店', '5', '1,5', 'http://182.61.16.163/img/good/pic-5.jpg');
INSERT INTO `good` VALUES ('24', '荣耀V10', '2199', '2099', '78', '【28日低至1799 6期免息】华为honor/荣耀 荣耀V10全面屏智能AI变焦双摄拍照商务手机全新官方正品旗舰店', '5', '2,3,5', 'http://182.61.16.163/img/good/pic-6.jpg');
INSERT INTO `good` VALUES ('25', '洗衣机', '999', '889', '36', 'Haier/海尔 EB80M39TH 8kg/公斤全自动家用波轮洗衣机 大容量', '0', '1,5', 'http://182.61.16.163/img/good/pic-7.jpg');
INSERT INTO `good` VALUES ('26', '小米8', '2399', '2199', '966', '【全版本买就赠手环2】Xiaomi/小米 小米8年度旗舰全面屏骁龙845双频GPS智能拍照游戏手机刘海屏AI', '5', '1,5', 'http://182.61.16.163/img/good/pic-2.jpg');
INSERT INTO `good` VALUES ('27', '迪士尼商城', '1499', '1399', '966', '当天可定亲子特惠上海迪士尼乐园门票上海迪士尼门票上海迪斯尼票', '5', '1,5,6', 'http://182.61.16.163/img/good/pic-3.jpg');
INSERT INTO `good` VALUES ('28', '飞科剃须刀', '99', '66', '56', '飞科剃须刀电动男士刮胡刀全身水洗智能充电式胡须刀正品刮胡子刀', '5', '1,25', 'http://182.61.16.163/img/good/pic-4.jpg');
INSERT INTO `good` VALUES ('29', '华为honor/荣耀 荣耀10', '1266', '1199', '98', '【低至2299】华为honor/荣耀 荣耀10GT游戏加速AIS手持夜景AI摄影全面屏双卡双待全网通8GB手机官方旗舰店', '5', '1,5', 'http://182.61.16.163/img/good/pic-5.jpg');
INSERT INTO `good` VALUES ('30', '荣耀V10', '2199', '2099', '78', '【28日低至1799 6期免息】华为honor/荣耀 荣耀V10全面屏智能AI变焦双摄拍照商务手机全新官方正品旗舰店', '5', '2,3,4', 'http://182.61.16.163/img/good/pic-6.jpg');
INSERT INTO `good` VALUES ('31', '洗衣机', '999', '889', '36', 'Haier/海尔 EB80M39TH 8kg/公斤全自动家用波轮洗衣机 大容量', '5', '1,5', 'http://182.61.16.163/img/good/pic-7.jpg');
INSERT INTO `good` VALUES ('32', '小米8', '2399', '2199', '966', '【全版本买就赠手环2】Xiaomi/小米 小米8年度旗舰全面屏骁龙845双频GPS智能拍照游戏手机刘海屏AI', '5', '1,2,4', 'http://182.61.16.163/img/good/pic-2.jpg');
INSERT INTO `good` VALUES ('33', '迪士尼商城', '1499', '1399', '966', '当天可定亲子特惠上海迪士尼乐园门票上海迪士尼门票上海迪斯尼票', '5', '1,5', 'http://182.61.16.163/img/good/pic-3.jpg');
INSERT INTO `good` VALUES ('34', '飞科剃须刀', '99', '66', '56', '飞科剃须刀电动男士刮胡刀全身水洗智能充电式胡须刀正品刮胡子刀', '5', '2,6', 'http://182.61.16.163/img/good/pic-4.jpg');
INSERT INTO `good` VALUES ('35', '华为honor/荣耀 荣耀10', '1266', '1199', '98', '【低至2299】华为honor/荣耀 荣耀10GT游戏加速AIS手持夜景AI摄影全面屏双卡双待全网通8GB手机官方旗舰店', '5', '1,5', 'http://182.61.16.163/img/good/pic-5.jpg');
INSERT INTO `good` VALUES ('36', '荣耀V10', '2199', '2099', '78', '【28日低至1799 6期免息】华为honor/荣耀 荣耀V10全面屏智能AI变焦双摄拍照商务手机全新官方正品旗舰店', '5', '2,6', 'http://182.61.16.163/img/good/pic-6.jpg');
INSERT INTO `good` VALUES ('37', '洗衣机', '999', '889', '36', 'Haier/海尔 EB80M39TH 8kg/公斤全自动家用波轮洗衣机 大容量', '5', '1,5', 'http://182.61.16.163/img/good/pic-7.jpg');
INSERT INTO `good` VALUES ('38', '小米8', '2399', '2199', '966', '【全版本买就赠手环2】Xiaomi/小米 小米8年度旗舰全面屏骁龙845双频GPS智能拍照游戏手机刘海屏AI', '5', '1,4,5', 'http://182.61.16.163/img/good/pic-2.jpg');
INSERT INTO `good` VALUES ('39', '迪士尼商城', '1499', '1399', '966', '当天可定亲子特惠上海迪士尼乐园门票上海迪士尼门票上海迪斯尼票', '5', '1,5', 'http://182.61.16.163/img/good/pic-3.jpg');
INSERT INTO `good` VALUES ('40', '飞科剃须刀', '99', '66', '56', '飞科剃须刀电动男士刮胡刀全身水洗智能充电式胡须刀正品刮胡子刀', '5', '3,4,5', 'http://182.61.16.163/img/good/pic-4.jpg');
INSERT INTO `good` VALUES ('41', '华为honor/荣耀 荣耀10', '1266', '1199', '98', '【低至2299】华为honor/荣耀 荣耀10GT游戏加速AIS手持夜景AI摄影全面屏双卡双待全网通8GB手机官方旗舰店', '5', '1,5', 'http://182.61.16.163/img/good/pic-5.jpg');
INSERT INTO `good` VALUES ('42', '荣耀V10', '2199', '2099', '78', '【28日低至1799 6期免息】华为honor/荣耀 荣耀V10全面屏智能AI变焦双摄拍照商务手机全新官方正品旗舰店', '5', '2,5', 'http://182.61.16.163/img/good/pic-6.jpg');
INSERT INTO `good` VALUES ('43', '洗衣机', '999', '889', '36', 'Haier/海尔 EB80M39TH 8kg/公斤全自动家用波轮洗衣机 大容量', '5', '2', 'http://182.61.16.163/img/good/pic-7.jpg');
INSERT INTO `good` VALUES ('44', '小米8', '2399', '2199', '966', '【全版本买就赠手环2】Xiaomi/小米 小米8年度旗舰全面屏骁龙845双频GPS智能拍照游戏手机刘海屏AI', '5', '2,3', 'http://182.61.16.163/img/good/pic-2.jpg');
INSERT INTO `good` VALUES ('45', '迪士尼商城', '1499', '1399', '966', '当天可定亲子特惠上海迪士尼乐园门票上海迪士尼门票上海迪斯尼票', '5', '2,3,6', 'http://182.61.16.163/img/good/pic-3.jpg');
INSERT INTO `good` VALUES ('46', '飞科剃须刀', '99', '66', '56', '飞科剃须刀电动男士刮胡刀全身水洗智能充电式胡须刀正品刮胡子刀', '5', '4,5', 'http://182.61.16.163/img/good/pic-4.jpg');
INSERT INTO `good` VALUES ('47', '华为honor/荣耀 荣耀10', '1266', '1199', '98', '【低至2299】华为honor/荣耀 荣耀10GT游戏加速AIS手持夜景AI摄影全面屏双卡双待全网通8GB手机官方旗舰店', '5', '1,2,3', 'http://182.61.16.163/img/good/pic-5.jpg');
INSERT INTO `good` VALUES ('48', '荣耀V10', '2199', '2099', '78', '【28日低至1799 6期免息】华为honor/荣耀 荣耀V10全面屏智能AI变焦双摄拍照商务手机全新官方正品旗舰店', '5', '1,3,4', 'http://182.61.16.163/img/good/pic-6.jpg');
INSERT INTO `good` VALUES ('49', '洗衣机', '999', '889', '36', 'Haier/海尔 EB80M39TH 8kg/公斤全自动家用波轮洗衣机 大容量', '5', '2,3,4', 'http://182.61.16.163/img/good/pic-7.jpg');
INSERT INTO `good` VALUES ('50', '小米8', '2399', '2199', '966', '【全版本买就赠手环2】Xiaomi/小米 小米8年度旗舰全面屏骁龙845双频GPS智能拍照游戏手机刘海屏AI', '5', '1,5', 'http://182.61.16.163/img/good/pic-2.jpg');
INSERT INTO `good` VALUES ('51', '迪士尼商城', '1499', '1399', '966', '当天可定亲子特惠上海迪士尼乐园门票上海迪士尼门票上海迪斯尼票', '5', '2,4', 'http://182.61.16.163/img/good/pic-3.jpg');
INSERT INTO `good` VALUES ('52', '飞科剃须刀', '99', '66', '56', '飞科剃须刀电动男士刮胡刀全身水洗智能充电式胡须刀正品刮胡子刀', '5', '1,2,6', 'http://182.61.16.163/img/good/pic-4.jpg');
INSERT INTO `good` VALUES ('53', '华为honor/荣耀 荣耀10', '1266', '1199', '98', '【低至2299】华为honor/荣耀 荣耀10GT游戏加速AIS手持夜景AI摄影全面屏双卡双待全网通8GB手机官方旗舰店', '5', '1,4', 'http://182.61.16.163/img/good/pic-5.jpg');
INSERT INTO `good` VALUES ('54', '荣耀V10', '2199', '2099', '78', '【28日低至1799 6期免息】华为honor/荣耀 荣耀V10全面屏智能AI变焦双摄拍照商务手机全新官方正品旗舰店', '5', '1,5', 'http://182.61.16.163/img/good/pic-6.jpg');
INSERT INTO `good` VALUES ('55', '洗衣机', '999', '889', '36', 'Haier/海尔 EB80M39TH 8kg/公斤全自动家用波轮洗衣机 大容量', '5', '2,3', 'http://182.61.16.163/img/good/pic-7.jpg');
INSERT INTO `good` VALUES ('56', '洗衣机', '999', '889', '36', 'Haier/海尔 EB80M39TH 8kg/公斤全自动家用波轮洗衣机 大容量', '5', '1,5,6', 'http://182.61.16.163/img/good/pic-7.jpg');
