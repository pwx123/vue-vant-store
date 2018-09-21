/*
Navicat MySQL Data Transfer

Source Server         : vantstore
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : vantstore

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-08-30 14:42:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `ItemId` int(11) NOT NULL AUTO_INCREMENT,
  `Itemname` varchar(500) NOT NULL,
  PRIMARY KEY (`ItemId`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('1', '热销商品');
INSERT INTO `item` VALUES ('2', '拼团商品');
INSERT INTO `item` VALUES ('3', '发现');
INSERT INTO `item` VALUES ('4', '限时折扣');
INSERT INTO `item` VALUES ('5', '主题精选');
INSERT INTO `item` VALUES ('6', '生活用品');
