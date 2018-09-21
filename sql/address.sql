/*
Navicat MySQL Data Transfer

Source Server         : vantstore
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : vantstore

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-08-30 14:41:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `Username` char(40) NOT NULL,
  `Addressid` int(11) NOT NULL AUTO_INCREMENT,
  `Name` char(40) NOT NULL,
  `Phonenum` char(40) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `AddressDetail` varchar(500) NOT NULL,
  `PostalCode` char(20) NOT NULL,
  `Isdefault` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Addressid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('test@qq.com', '1', '张三', '15555578945', '山东省烟台市芝罘区', '鲁东大学', '271934', '1');
INSERT INTO `address` VALUES ('test@qq.com', '2', '小明', '15535578564', '山东省济南市历下区', '暨南大学', '271934', '0');
INSERT INTO `address` VALUES ('test@qq.com', '3', '李四', '15555578945', '山东省烟台市芝罘区', '烟台大学', '271934', '0');
INSERT INTO `address` VALUES ('test@qq.com', '4', '王五', '15555578945', '山东省青岛市即墨市', '烟台路', '271934', '0');
