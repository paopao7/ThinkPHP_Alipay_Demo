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

 Date: 09/14/2017 00:45:56 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `pay_config`
-- ----------------------------
DROP TABLE IF EXISTS `pay_config`;
CREATE TABLE `pay_config` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(30) DEFAULT '' COMMENT 'app_id',
  `merchant_private_key` text COMMENT '私钥',
  `alipay_public_key` text COMMENT '公钥',
  `notify_url` varchar(255) DEFAULT '' COMMENT '异步通知地址',
  `return_url` varchar(255) DEFAULT '' COMMENT '跳转地址',
  `charset` varchar(30) DEFAULT '' COMMENT '编码',
  `sign_type` varchar(30) DEFAULT '' COMMENT '签名方式',
  `gatewayUrl` varchar(255) DEFAULT '' COMMENT '支付宝网关',
  `update_time` int(30) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='支付宝配置表';

-- ----------------------------
--  Records of `pay_config`
-- ----------------------------
BEGIN;
INSERT INTO `pay_config` VALUES ('1', '', '', '', '', '', 'UTF-8', 'RSA', 'https://openapi.alipay.com/gateway.do', '0');
COMMIT;

-- ----------------------------
--  Table structure for `pay_log`
-- ----------------------------
DROP TABLE IF EXISTS `pay_log`;
CREATE TABLE `pay_log` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `pay_data` text COMMENT '支付宝回调参数',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='存储支付宝回调参数的临时表';

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
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='充值记录表';

-- ----------------------------
--  Records of `pay_record`
-- ----------------------------
BEGIN;
INSERT INTO `pay_record` VALUES ('4', '59560374697af', '1', '支付宝充值', '400.00', '0', '1500113202'), ('1', '59b956832f8cb', '1', '支付宝支付', '100.00', '0', '1505318531'), ('2', '59b956948c9d8', '1', '支付宝支付', '200.00', '0', '1505318548'), ('3', '59b95bd7a0e9d', '1', '支付宝支付', '300.00', '0', '1505319895');
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
