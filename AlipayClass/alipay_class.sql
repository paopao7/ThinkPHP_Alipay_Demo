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

 Date: 09/14/2017 00:41:32 AM
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
INSERT INTO `pay_config` VALUES ('1', '2016042901349061', 'MIICeAIBADANBgkqhkiG9w0BAQEFAASCAmIwggJeAgEAAoGBAMPnJ7JIdM5RQk711UDpVZ7dJEyOC0hetzjaHn4+L3sfuV5X6+dhvaHfuCysvqDElEBgk4IlCfw+f1tt24A6OIxpR3vUkk5IQDyZvLyrt0OpFBq12b9qQnx8ME9tMOzMorBLugJPL3kHy2DoNiujNK4EUNsjMaCdMbpFglg3FePrAgMBAAECgYEAjKywB8kZ/5HAcNz9HtivgB3C1CpoFbbWEUAoB3V2OQ7l2MaAAy5fsx7orUP6u42N+9Cd/CXGzti+MZRou+KS+ZXXOQhU4ZMs0yWgJpnRfUpcBjWUaVDnHoDPLdbi+coFwxLpZwuZH2VzUjyGC4UZq6kjoY5urwCo95Lh7kM2b4kCQQD3wEMZWueRID/0rN5XVQF1q1+/i9jyHNhJU3Fuo9lWFggS3SNYLHoFw6fEeuaYSbiEsOseCOqr5AuxasSQJOXHAkEAymz1jYdHbPOpfYY244649lR0CnSHSzT36U7nC7SUzG3fgKuZEzMWxsmTZkITylYJShRo4VCyKPwgwnaUyGXAvQJBAK3dVzlr+iZ2o2tqBX70QNn7Mm6SDeWbKI4M6QXkJpmrTG8wkaVHUTrKW+oe9cTZt4wnPFkPmOCYYTxY2SjvO/ECQAze5rIMAu+bgpBXo0/OuFX5QrOTezK9+HFeMfSdk8R3y/k7b+03l2AmWvfqhaWc2NRb/dstrVZLya1zqrwfNCUCQQDHJE0ob2dbCYMNA6jblCO1dIQywlMfq7CsWmJ2+0zMXBvJxIMEKzBiuBCjV3iAG44TVBwqc8pzvH+iBAbLYV5m', 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDDI6d306Q8fIfCOaTXyiUeJHkrIvYISRcc73s3vF1ZT7XN8RNPwJxo8pWaJMmvyTn9N4HQ632qJBVHf8sxHi/fEsraprwCtzvzQETrNRwVxLO5jVmRGi60j8Ue1efIlzPXV9je9mkjzOmdssymZkh2QhUrCmZYI/FCEa3/cNMW0QIDAQAB', 'http://alipayclass.cn/index.php/Home/Index/get_post.html', 'http://外网可访问网关地址/alipay.trade.page.pay-PHP-UTF-8/return_url.php', 'UTF-8', 'RSA', 'https://openapi.alipay.com/gateway.do', '1505319892');
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
