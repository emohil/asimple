/*
Navicat MySQL Data Transfer

Source Server         : app-onceatime.rhcloud.com
Source Server Version : 50521
Source Host           : 127.12.45.129:3306
Source Database       : gap

Target Server Type    : MYSQL
Target Server Version : 50521
File Encoding         : 65001

Date: 2013-05-03 00:37:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_dict`
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_name` (`type`,`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dict
-- ----------------------------
INSERT INTO `t_dict` VALUES ('31', null, '0', '2013-05-03 00:13:23', 'Teee', '0', '0', 'Teee', 'CPLB');
INSERT INTO `t_dict` VALUES ('32', null, '0', '2013-05-03 00:30:05', '', '0', '0', '机械1', 'JXLB');
INSERT INTO `t_dict` VALUES ('33', null, '0', '2013-05-03 00:30:09', '', '0', '0', '机械2', 'JXLB');
INSERT INTO `t_dict` VALUES ('34', null, '0', '2013-05-03 00:30:15', '', '0', '0', '使用方法1', 'SYFF');
INSERT INTO `t_dict` VALUES ('35', null, '0', '2013-05-03 00:30:19', '', '0', '0', '使用方法2', 'SYFF');

-- ----------------------------
-- Table structure for `t_disinfectant_instock`
-- ----------------------------
DROP TABLE IF EXISTS `t_disinfectant_instock`;
CREATE TABLE `t_disinfectant_instock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `batch_id` int(11) DEFAULT '0',
  `kind_id` int(11) DEFAULT '0',
  `name_id` int(11) DEFAULT '0',
  `producer_id` int(11) DEFAULT '0',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `spec_id` int(11) DEFAULT '0',
  `element` varchar(60) DEFAULT NULL,
  `expirydate` datetime DEFAULT NULL,
  `indate` datetime DEFAULT NULL,
  `inuser_id` int(11) DEFAULT '0',
  `location` varchar(60) DEFAULT NULL,
  `stock_id` int(11) DEFAULT '0',
  `vendor` varchar(60) DEFAULT NULL,
  `wrap` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_disinfectant_instock
-- ----------------------------

-- ----------------------------
-- Table structure for `t_disinfectant_outstock`
-- ----------------------------
DROP TABLE IF EXISTS `t_disinfectant_outstock`;
CREATE TABLE `t_disinfectant_outstock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `batch_id` int(11) DEFAULT '0',
  `kind_id` int(11) DEFAULT '0',
  `name_id` int(11) DEFAULT '0',
  `producer_id` int(11) DEFAULT '0',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `spec_id` int(11) DEFAULT '0',
  `cell_id` int(11) DEFAULT '0',
  `outdate` datetime DEFAULT NULL,
  `outuser_id` int(11) DEFAULT '0',
  `register_id` int(11) DEFAULT '0',
  `stock_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_disinfectant_outstock
-- ----------------------------

-- ----------------------------
-- Table structure for `t_disinfectant_resource`
-- ----------------------------
DROP TABLE IF EXISTS `t_disinfectant_resource`;
CREATE TABLE `t_disinfectant_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `name` varchar(60) DEFAULT NULL,
  `type` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_disinfectant_resource
-- ----------------------------

-- ----------------------------
-- Table structure for `t_disinfectant_stock`
-- ----------------------------
DROP TABLE IF EXISTS `t_disinfectant_stock`;
CREATE TABLE `t_disinfectant_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `batch_id` int(11) DEFAULT '0',
  `kind_id` int(11) DEFAULT '0',
  `name_id` int(11) DEFAULT '0',
  `producer_id` int(11) DEFAULT '0',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `spec_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_disinfectant_stock
-- ----------------------------

-- ----------------------------
-- Table structure for `t_feed_instock`
-- ----------------------------
DROP TABLE IF EXISTS `t_feed_instock`;
CREATE TABLE `t_feed_instock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `batch_id` int(11) DEFAULT '0',
  `kind_id` int(11) DEFAULT '0',
  `name_id` int(11) DEFAULT '0',
  `producer_id` int(11) DEFAULT '0',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `spec_id` int(11) DEFAULT '0',
  `element` varchar(60) DEFAULT NULL,
  `expirydate` datetime DEFAULT NULL,
  `indate` datetime DEFAULT NULL,
  `inuser_id` int(11) DEFAULT '0',
  `location` varchar(60) DEFAULT NULL,
  `stock_id` int(11) DEFAULT '0',
  `vendor` varchar(60) DEFAULT NULL,
  `wrap` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_feed_instock
-- ----------------------------

-- ----------------------------
-- Table structure for `t_feed_outstock`
-- ----------------------------
DROP TABLE IF EXISTS `t_feed_outstock`;
CREATE TABLE `t_feed_outstock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `batch_id` int(11) DEFAULT '0',
  `kind_id` int(11) DEFAULT '0',
  `name_id` int(11) DEFAULT '0',
  `producer_id` int(11) DEFAULT '0',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `spec_id` int(11) DEFAULT '0',
  `cell_id` int(11) DEFAULT '0',
  `outdate` datetime DEFAULT NULL,
  `outuser_id` int(11) DEFAULT '0',
  `register_id` int(11) DEFAULT '0',
  `stock_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_feed_outstock
-- ----------------------------

-- ----------------------------
-- Table structure for `t_feed_resource`
-- ----------------------------
DROP TABLE IF EXISTS `t_feed_resource`;
CREATE TABLE `t_feed_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `name` varchar(60) DEFAULT NULL,
  `type` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_feed_resource
-- ----------------------------

-- ----------------------------
-- Table structure for `t_feed_stock`
-- ----------------------------
DROP TABLE IF EXISTS `t_feed_stock`;
CREATE TABLE `t_feed_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `batch_id` int(11) DEFAULT '0',
  `kind_id` int(11) DEFAULT '0',
  `name_id` int(11) DEFAULT '0',
  `producer_id` int(11) DEFAULT '0',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `spec_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_feed_stock
-- ----------------------------

-- ----------------------------
-- Table structure for `t_grow_farm`
-- ----------------------------
DROP TABLE IF EXISTS `t_grow_farm`;
CREATE TABLE `t_grow_farm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `activitydate` datetime DEFAULT NULL,
  `cell_id` int(11) DEFAULT '0',
  `content` varchar(255) DEFAULT NULL,
  `manager` varchar(60) DEFAULT NULL,
  `persons` int(11) DEFAULT '0',
  `register_id` int(11) DEFAULT '0',
  `scale` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_grow_farm
-- ----------------------------
INSERT INTO `t_grow_farm` VALUES ('1', null, '0', '2013-05-01 23:56:17', '按个', '0', '0', '2013-04-29 00:00:00', '0', '阿贵', '想法', '13', '2', '13.00');
INSERT INTO `t_grow_farm` VALUES ('2', null, '0', '2013-05-01 23:56:29', '2', '0', '0', '2013-05-22 00:00:00', '0', 'sssss', '2', '2', '2', '2.00');

-- ----------------------------
-- Table structure for `t_grow_harvest`
-- ----------------------------
DROP TABLE IF EXISTS `t_grow_harvest`;
CREATE TABLE `t_grow_harvest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `batch` int(11) DEFAULT '0',
  `cell_id` int(11) DEFAULT '0',
  `method` varchar(60) DEFAULT NULL,
  `operatedate` datetime DEFAULT NULL,
  `product` varchar(100) DEFAULT NULL,
  `register_id` int(11) DEFAULT '0',
  `respmanager` varchar(60) DEFAULT NULL,
  `scale` decimal(10,2) DEFAULT '0.00',
  `storage` varchar(60) DEFAULT NULL,
  `storemanager` varchar(60) DEFAULT NULL,
  `yield` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_grow_harvest
-- ----------------------------
INSERT INTO `t_grow_harvest` VALUES ('1', null, '0', '2013-05-01 23:57:16', 'ag', '0', '0', '2', '0', 'ag', '2013-04-09 00:00:00', 'ag', '2', '1ag', '1.00', '1', 'ag', '1.00');

-- ----------------------------
-- Table structure for `t_grow_irrigate`
-- ----------------------------
DROP TABLE IF EXISTS `t_grow_irrigate`;
CREATE TABLE `t_grow_irrigate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `area` decimal(10,2) DEFAULT '0.00',
  `cell_id` int(11) DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `manager` varchar(60) DEFAULT NULL,
  `quantum` decimal(10,2) DEFAULT '0.00',
  `register_id` int(11) DEFAULT '0',
  `way` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_grow_irrigate
-- ----------------------------
INSERT INTO `t_grow_irrigate` VALUES ('1', null, '0', '2013-05-01 23:56:49', 'ag', '0', '0', '2.00', '0', '2013-05-07 00:00:00', 'ga', '2.00', '2', 'a');

-- ----------------------------
-- Table structure for `t_grow_manure`
-- ----------------------------
DROP TABLE IF EXISTS `t_grow_manure`;
CREATE TABLE `t_grow_manure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `cell_id` int(11) DEFAULT '0',
  `isolation` decimal(10,2) DEFAULT '0.00',
  `machinecate` int(11) DEFAULT NULL,
  `method` int(11) DEFAULT NULL,
  `name_id` int(11) DEFAULT '0',
  `reason` varchar(100) DEFAULT NULL,
  `register_id` int(11) DEFAULT '0',
  `stock_id` int(11) DEFAULT '0',
  `tech` varchar(60) DEFAULT NULL,
  `usedate` datetime DEFAULT NULL,
  `useperson` varchar(60) DEFAULT NULL,
  `useqty` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_grow_manure
-- ----------------------------
INSERT INTO `t_grow_manure` VALUES ('1', null, '0', '2013-05-03 00:30:39', null, '0', '0', '0', '1.00', '32', '34', '2', '1', '3', '0', '1', '2013-05-07 00:00:00', '1', '1.00');

-- ----------------------------
-- Table structure for `t_grow_pesticide`
-- ----------------------------
DROP TABLE IF EXISTS `t_grow_pesticide`;
CREATE TABLE `t_grow_pesticide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `cell_id` int(11) DEFAULT '0',
  `isolation` decimal(10,2) DEFAULT '0.00',
  `machinecate` int(11) DEFAULT NULL,
  `method` int(11) DEFAULT NULL,
  `name_id` int(11) DEFAULT '0',
  `reason` varchar(100) DEFAULT NULL,
  `register_id` int(11) DEFAULT '0',
  `stock_id` int(11) DEFAULT '0',
  `tech` varchar(60) DEFAULT NULL,
  `usedate` datetime DEFAULT NULL,
  `useperson` varchar(60) DEFAULT NULL,
  `useqty` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_grow_pesticide
-- ----------------------------

-- ----------------------------
-- Table structure for `t_grow_register`
-- ----------------------------
DROP TABLE IF EXISTS `t_grow_register`;
CREATE TABLE `t_grow_register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `cell_id` int(11) DEFAULT '0',
  `description` varchar(100) DEFAULT NULL,
  `growstatus` int(11) DEFAULT '0',
  `person` varchar(36) DEFAULT NULL,
  `qrcode` longblob,
  `regdate` datetime DEFAULT NULL,
  `reguser_id` int(11) DEFAULT '0',
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_grow_register
-- ----------------------------
INSERT INTO `t_grow_register` VALUES ('3', null, '0', '2013-05-03 00:13:58', '', '0', '2', '4', 'ag', '1', 'ag', null, '2013-04-28 00:00:00', '0', '31');

-- ----------------------------
-- Table structure for `t_grow_resource`
-- ----------------------------
DROP TABLE IF EXISTS `t_grow_resource`;
CREATE TABLE `t_grow_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `name` varchar(60) DEFAULT NULL,
  `type` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_grow_resource
-- ----------------------------
INSERT INTO `t_grow_resource` VALUES ('2', null, '0', null, '山楂', '0', '2', '山楂', '1');

-- ----------------------------
-- Table structure for `t_manure_instock`
-- ----------------------------
DROP TABLE IF EXISTS `t_manure_instock`;
CREATE TABLE `t_manure_instock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `batch_id` int(11) DEFAULT '0',
  `kind_id` int(11) DEFAULT '0',
  `name_id` int(11) DEFAULT '0',
  `producer_id` int(11) DEFAULT '0',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `spec_id` int(11) DEFAULT '0',
  `element` varchar(60) DEFAULT NULL,
  `expirydate` datetime DEFAULT NULL,
  `indate` datetime DEFAULT NULL,
  `inuser_id` int(11) DEFAULT '0',
  `location` varchar(60) DEFAULT NULL,
  `stock_id` int(11) DEFAULT '0',
  `vendor` varchar(60) DEFAULT NULL,
  `wrap` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_manure_instock
-- ----------------------------

-- ----------------------------
-- Table structure for `t_manure_outstock`
-- ----------------------------
DROP TABLE IF EXISTS `t_manure_outstock`;
CREATE TABLE `t_manure_outstock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `batch_id` int(11) DEFAULT '0',
  `kind_id` int(11) DEFAULT '0',
  `name_id` int(11) DEFAULT '0',
  `producer_id` int(11) DEFAULT '0',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `spec_id` int(11) DEFAULT '0',
  `cell_id` int(11) DEFAULT '0',
  `outdate` datetime DEFAULT NULL,
  `outuser_id` int(11) DEFAULT '0',
  `register_id` int(11) DEFAULT '0',
  `stock_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_manure_outstock
-- ----------------------------

-- ----------------------------
-- Table structure for `t_manure_resource`
-- ----------------------------
DROP TABLE IF EXISTS `t_manure_resource`;
CREATE TABLE `t_manure_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `name` varchar(60) DEFAULT NULL,
  `type` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_manure_resource
-- ----------------------------
INSERT INTO `t_manure_resource` VALUES ('1', null, '0', '2013-05-02 21:56:50', 'DDDD', '0', '0', 'DDDD', '0');
INSERT INTO `t_manure_resource` VALUES ('2', null, '0', '2013-05-03 00:24:06', '', '0', '0', 'Test', '1');
INSERT INTO `t_manure_resource` VALUES ('3', null, '0', '2013-05-03 00:24:10', '', '0', '0', 'Test2', '1');

-- ----------------------------
-- Table structure for `t_manure_stock`
-- ----------------------------
DROP TABLE IF EXISTS `t_manure_stock`;
CREATE TABLE `t_manure_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `batch_id` int(11) DEFAULT '0',
  `kind_id` int(11) DEFAULT '0',
  `name_id` int(11) DEFAULT '0',
  `producer_id` int(11) DEFAULT '0',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `spec_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_manure_stock
-- ----------------------------

-- ----------------------------
-- Table structure for `t_medicine_instock`
-- ----------------------------
DROP TABLE IF EXISTS `t_medicine_instock`;
CREATE TABLE `t_medicine_instock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `batch_id` int(11) DEFAULT '0',
  `kind_id` int(11) DEFAULT '0',
  `name_id` int(11) DEFAULT '0',
  `producer_id` int(11) DEFAULT '0',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `spec_id` int(11) DEFAULT '0',
  `element` varchar(60) DEFAULT NULL,
  `expirydate` datetime DEFAULT NULL,
  `indate` datetime DEFAULT NULL,
  `inuser_id` int(11) DEFAULT '0',
  `location` varchar(60) DEFAULT NULL,
  `stock_id` int(11) DEFAULT '0',
  `vendor` varchar(60) DEFAULT NULL,
  `wrap` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_medicine_instock
-- ----------------------------

-- ----------------------------
-- Table structure for `t_medicine_outstock`
-- ----------------------------
DROP TABLE IF EXISTS `t_medicine_outstock`;
CREATE TABLE `t_medicine_outstock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `batch_id` int(11) DEFAULT '0',
  `kind_id` int(11) DEFAULT '0',
  `name_id` int(11) DEFAULT '0',
  `producer_id` int(11) DEFAULT '0',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `spec_id` int(11) DEFAULT '0',
  `cell_id` int(11) DEFAULT '0',
  `outdate` datetime DEFAULT NULL,
  `outuser_id` int(11) DEFAULT '0',
  `register_id` int(11) DEFAULT '0',
  `stock_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_medicine_outstock
-- ----------------------------

-- ----------------------------
-- Table structure for `t_medicine_resource`
-- ----------------------------
DROP TABLE IF EXISTS `t_medicine_resource`;
CREATE TABLE `t_medicine_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `name` varchar(60) DEFAULT NULL,
  `type` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_medicine_resource
-- ----------------------------

-- ----------------------------
-- Table structure for `t_medicine_stock`
-- ----------------------------
DROP TABLE IF EXISTS `t_medicine_stock`;
CREATE TABLE `t_medicine_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `batch_id` int(11) DEFAULT '0',
  `kind_id` int(11) DEFAULT '0',
  `name_id` int(11) DEFAULT '0',
  `producer_id` int(11) DEFAULT '0',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `spec_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_medicine_stock
-- ----------------------------

-- ----------------------------
-- Table structure for `t_nurture_farm`
-- ----------------------------
DROP TABLE IF EXISTS `t_nurture_farm`;
CREATE TABLE `t_nurture_farm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `activitydate` datetime DEFAULT NULL,
  `cell_id` int(11) DEFAULT '0',
  `content` varchar(255) DEFAULT NULL,
  `manager` varchar(60) DEFAULT NULL,
  `persons` int(11) DEFAULT '0',
  `register_id` int(11) DEFAULT '0',
  `scale` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_nurture_farm
-- ----------------------------

-- ----------------------------
-- Table structure for `t_nurture_harvest`
-- ----------------------------
DROP TABLE IF EXISTS `t_nurture_harvest`;
CREATE TABLE `t_nurture_harvest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `batch` int(11) DEFAULT '0',
  `cell_id` int(11) DEFAULT '0',
  `method` varchar(60) DEFAULT NULL,
  `operatedate` datetime DEFAULT NULL,
  `product` varchar(100) DEFAULT NULL,
  `register_id` int(11) DEFAULT '0',
  `respmanager` varchar(60) DEFAULT NULL,
  `scale` decimal(10,2) DEFAULT '0.00',
  `storage` varchar(60) DEFAULT NULL,
  `storemanager` varchar(60) DEFAULT NULL,
  `yield` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_nurture_harvest
-- ----------------------------

-- ----------------------------
-- Table structure for `t_nurture_irrigate`
-- ----------------------------
DROP TABLE IF EXISTS `t_nurture_irrigate`;
CREATE TABLE `t_nurture_irrigate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `area` decimal(10,2) DEFAULT '0.00',
  `cell_id` int(11) DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `manager` varchar(60) DEFAULT NULL,
  `quantum` decimal(10,2) DEFAULT '0.00',
  `register_id` int(11) DEFAULT '0',
  `way` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_nurture_irrigate
-- ----------------------------

-- ----------------------------
-- Table structure for `t_nurture_manure`
-- ----------------------------
DROP TABLE IF EXISTS `t_nurture_manure`;
CREATE TABLE `t_nurture_manure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `cell_id` int(11) DEFAULT '0',
  `isolation` decimal(10,2) DEFAULT '0.00',
  `machinecate` varchar(100) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `name_id` int(11) DEFAULT '0',
  `reason` varchar(100) DEFAULT NULL,
  `register_id` int(11) DEFAULT '0',
  `stock_id` int(11) DEFAULT '0',
  `tech` varchar(60) DEFAULT NULL,
  `usedate` datetime DEFAULT NULL,
  `useperson` varchar(60) DEFAULT NULL,
  `useqty` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_nurture_manure
-- ----------------------------

-- ----------------------------
-- Table structure for `t_nurture_pesticide`
-- ----------------------------
DROP TABLE IF EXISTS `t_nurture_pesticide`;
CREATE TABLE `t_nurture_pesticide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `cell_id` int(11) DEFAULT '0',
  `isolation` decimal(10,2) DEFAULT '0.00',
  `machinecate` varchar(100) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `name_id` int(11) DEFAULT '0',
  `reason` varchar(100) DEFAULT NULL,
  `register_id` int(11) DEFAULT '0',
  `stock_id` int(11) DEFAULT '0',
  `tech` varchar(60) DEFAULT NULL,
  `usedate` datetime DEFAULT NULL,
  `useperson` varchar(60) DEFAULT NULL,
  `useqty` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_nurture_pesticide
-- ----------------------------

-- ----------------------------
-- Table structure for `t_nurture_register`
-- ----------------------------
DROP TABLE IF EXISTS `t_nurture_register`;
CREATE TABLE `t_nurture_register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `cell_id` int(11) DEFAULT '0',
  `description` varchar(100) DEFAULT NULL,
  `nurturestatus` int(11) DEFAULT '0',
  `person` varchar(36) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `reguser_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_nurture_register
-- ----------------------------

-- ----------------------------
-- Table structure for `t_pesticide_instock`
-- ----------------------------
DROP TABLE IF EXISTS `t_pesticide_instock`;
CREATE TABLE `t_pesticide_instock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `batch_id` int(11) DEFAULT '0',
  `kind_id` int(11) DEFAULT '0',
  `name_id` int(11) DEFAULT '0',
  `producer_id` int(11) DEFAULT '0',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `spec_id` int(11) DEFAULT '0',
  `element` varchar(60) DEFAULT NULL,
  `expirydate` datetime DEFAULT NULL,
  `indate` datetime DEFAULT NULL,
  `inuser_id` int(11) DEFAULT '0',
  `location` varchar(60) DEFAULT NULL,
  `stock_id` int(11) DEFAULT '0',
  `vendor` varchar(60) DEFAULT NULL,
  `wrap` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pesticide_instock
-- ----------------------------

-- ----------------------------
-- Table structure for `t_pesticide_outstock`
-- ----------------------------
DROP TABLE IF EXISTS `t_pesticide_outstock`;
CREATE TABLE `t_pesticide_outstock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `batch_id` int(11) DEFAULT '0',
  `kind_id` int(11) DEFAULT '0',
  `name_id` int(11) DEFAULT '0',
  `producer_id` int(11) DEFAULT '0',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `spec_id` int(11) DEFAULT '0',
  `cell_id` int(11) DEFAULT '0',
  `outdate` datetime DEFAULT NULL,
  `outuser_id` int(11) DEFAULT '0',
  `register_id` int(11) DEFAULT '0',
  `stock_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pesticide_outstock
-- ----------------------------

-- ----------------------------
-- Table structure for `t_pesticide_resource`
-- ----------------------------
DROP TABLE IF EXISTS `t_pesticide_resource`;
CREATE TABLE `t_pesticide_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `name` varchar(60) DEFAULT NULL,
  `type` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pesticide_resource
-- ----------------------------

-- ----------------------------
-- Table structure for `t_pesticide_stock`
-- ----------------------------
DROP TABLE IF EXISTS `t_pesticide_stock`;
CREATE TABLE `t_pesticide_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `batch_id` int(11) DEFAULT '0',
  `kind_id` int(11) DEFAULT '0',
  `name_id` int(11) DEFAULT '0',
  `producer_id` int(11) DEFAULT '0',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `spec_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pesticide_stock
-- ----------------------------

-- ----------------------------
-- Table structure for `t_production_cell`
-- ----------------------------
DROP TABLE IF EXISTS `t_production_cell`;
CREATE TABLE `t_production_cell` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adate` datetime DEFAULT NULL,
  `auser_id` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cuser_id` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `area` decimal(10,2) DEFAULT '0.00',
  `builddate` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `usestatus` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_production_cell
-- ----------------------------
INSERT INTO `t_production_cell` VALUES ('4', null, '0', '2013-05-03 00:13:40', null, '0', '2', '2.00', '2013-04-29 00:00:00', 'T', 'T', '1');
