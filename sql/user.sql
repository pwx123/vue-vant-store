/*
Navicat MySQL Data Transfer

Source Server         : vantstore
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : vantstore

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-08-30 14:42:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Username` char(40) NOT NULL,
  `Password` char(120) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('test@qq.com', '9c67e149bf846087c5b0043bb40eb35f');
INSERT INTO `user` VALUES ('123@qq.com', '9c67e149bf846087c5b0043bb40eb35f');
INSERT INTO `user` VALUES ('1234@qq.com', 'dee63eca4b76ca4d7a83ead699063302');
INSERT INTO `user` VALUES ('12345@qq.com', '9c67e149bf846087c5b0043bb40eb35f');
INSERT INTO `user` VALUES ('123456@qq.com', 'dee63eca4b76ca4d7a83ead699063302');
