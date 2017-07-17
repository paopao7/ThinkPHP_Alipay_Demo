/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50635
 Source Host           : localhost
 Source Database       : alipay_class

 Target Server Type    : MySQL
 Target Server Version : 50635
 File Encoding         : utf-8

 Date: 07/15/2017 20:46:56 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `pay_record`
-- ----------------------------
DROP TABLE IF EXISTS `pay_record`;
CREATE TABLE `pay_record` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(100) DEFAULT '' COMMENT '订单编号',
  `user_id` int(30) DEFAULT '0' COMMENT '账户id',
  `type` varchar(50) DEFAULT '' COMMENT '充值类型',
  `money` float(10,2) DEFAULT '0.00' COMMENT '充值金额',
  `status` int(1) DEFAULT '0' COMMENT '是否回调成功（0：初始值 1：成功）',
  `create_time` int(30) DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='充值记录表';

-- ----------------------------
--  Records of `pay_record`
-- ----------------------------
BEGIN;
INSERT INTO `pay_record` VALUES ('1', '59560374697af', '1', '支付宝充值', '1000.00', '0', '1500113202');
COMMIT;

-- ----------------------------
--  Table structure for `pay_users`
-- ----------------------------
DROP TABLE IF EXISTS `pay_users`;
CREATE TABLE `pay_users` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT '' COMMENT '账户名称',
  `money` float(10,2) DEFAULT '0.00' COMMENT '账户余额',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='账户表';

-- ----------------------------
--  Records of `pay_users`
-- ----------------------------
BEGIN;
INSERT INTO `pay_users` VALUES ('1', '188888888888', '100000.00');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
