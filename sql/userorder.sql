/*
Navicat MySQL Data Transfer

Source Server         : vantstore
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : vantstore

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-08-30 14:42:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for userorder
-- ----------------------------
DROP TABLE IF EXISTS `userorder`;
CREATE TABLE `userorder` (
  `Orderid` int(11) NOT NULL AUTO_INCREMENT,
  `Username` char(40) NOT NULL,
  `Goodid` char(100) NOT NULL,
  `Ordercount` char(100) NOT NULL,
  `Addressid` int(11) NOT NULL,
  `totalMoney` int(11) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Orderid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userorder
-- ----------------------------
INSERT INTO `userorder` VALUES ('2', 'test@qq.com', '(4)', '(1)', '1', '66', '1');
INSERT INTO `userorder` VALUES ('3', 'test@qq.com', '(26)', '(1)', '1', '2204', '1');
INSERT INTO `userorder` VALUES ('4', 'test@qq.com', '(4)', '(1)', '1', '66', '1');
INSERT INTO `userorder` VALUES ('5', 'test@qq.com', '(7)', '(1)', '1', '894', '1');
