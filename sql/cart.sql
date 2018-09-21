/*
Navicat MySQL Data Transfer

Source Server         : vantstore
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : vantstore

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-08-30 15:39:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `Username` char(40) NOT NULL,
  `Goodid` int(11) NOT NULL,
  `Cartcount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('123@qq.com', '7', '2');
INSERT INTO `cart` VALUES ('123@qq.com', '1', '2');
