/*
Navicat MySQL Data Transfer

Source Server         : associationmanagement
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2020-02-21 13:30:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for idleitems
-- ----------------------------
DROP TABLE IF EXISTS `idleitems`;
CREATE TABLE `idleitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL COMMENT '发布者对应的id',
  `itemName` varchar(255) NOT NULL COMMENT '商品名称',
  `orPrice` double NOT NULL COMMENT '购入价格',
  `nowPrice` double NOT NULL DEFAULT '0' COMMENT '卖出价格',
  `IdleDescribe` varchar(255) DEFAULT NULL COMMENT '商品描述',
  `pictureName` varchar(255) DEFAULT NULL,
  `selling` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of idleitems
-- ----------------------------
INSERT INTO `idleitems` VALUES ('26', '1', '篮球鞋', '100', '50', '穿过一次', '篮球鞋-71.jpg', '0');
INSERT INTO `idleitems` VALUES ('27', '1', 'puma', '100', '50', '穿过一次', 'puma-31.jpg', '0');
INSERT INTO `idleitems` VALUES ('28', '11', '篮球鞋', '100', '50', '穿过一次', '篮球鞋-89.jpg', '0');
INSERT INTO `idleitems` VALUES ('29', '12', '篮球鞋', '100', '50', '穿过一次', '篮球鞋-22.jpg', '0');
INSERT INTO `idleitems` VALUES ('30', '13', '篮球鞋', '100', '50', '穿过一次', '篮球鞋-85.jpg', '0');
INSERT INTO `idleitems` VALUES ('31', '14', '篮球鞋', '100', '50', '穿过一次', '篮球鞋-38.jpg', '0');
INSERT INTO `idleitems` VALUES ('32', '15', 'puma', '100', '50', '穿过一次', 'puma-98.jpg', '1');

-- ----------------------------
-- Table structure for publicbenefit
-- ----------------------------
DROP TABLE IF EXISTS `publicbenefit`;
CREATE TABLE `publicbenefit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `moneyNumber` double(11,0) NOT NULL,
  `pictureName` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `times` int(11) NOT NULL DEFAULT '0',
  `illnessDescribe` text,
  `needMoney` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of publicbenefit
-- ----------------------------
INSERT INTO `publicbenefit` VALUES ('8', '400', '123-11-2.jpg', '1', '123', '男', '11', '4', '啦啦啦啦啦啦啦啦', '1000');
INSERT INTO `publicbenefit` VALUES ('9', '0', 'ga-21-12.jpg', '12', 'ga', '男', '21', '0', null, '0');
INSERT INTO `publicbenefit` VALUES ('10', '0', 'gaga-2-14.jpg', '14', 'gaga', '男', '2', '0', null, '0');
INSERT INTO `publicbenefit` VALUES ('11', '0', 'hhh-21-14.jpg', '14', 'hhh', '男', '21', '0', 'bbbbbbbbbbbbbbb', '2000');
INSERT INTO `publicbenefit` VALUES ('12', '0', 'ggg-12-15.jpg', '15', 'ggg', '男', '12', '0', 'hgggghghghgh', '2000');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL COMMENT '登录账号',
  `password` varchar(255) NOT NULL COMMENT '登录密码',
  `money` int(11) NOT NULL DEFAULT '0' COMMENT '账户余额',
  `loveheart` int(11) NOT NULL DEFAULT '0' COMMENT '爱心值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '400', '0');
INSERT INTO `user` VALUES ('11', 'bbb', 'bbb', '50', '0');
INSERT INTO `user` VALUES ('12', 'ccc', 'ccc', '50', '101');
INSERT INTO `user` VALUES ('13', 'fff', 'fff', '50', '101');
INSERT INTO `user` VALUES ('14', 'aaa', 'aaa', '50', '101');
INSERT INTO `user` VALUES ('15', 'asd', 'asd', '0', '101');
