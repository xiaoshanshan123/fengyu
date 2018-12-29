/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : newcrm

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2018-12-24 16:03:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for count_day
-- ----------------------------
DROP TABLE IF EXISTS `count_day`;
CREATE TABLE `count_day` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL COMMENT 'web,tel 等',
  `type_id` int(10) NOT NULL COMMENT '项目ID',
  `type_name` varchar(40) NOT NULL,
  `date` int(10) NOT NULL,
  `click_all` int(10) NOT NULL COMMENT '客服总点击',
  `zero_talk` int(10) NOT NULL COMMENT '零对话',
  `wangcha` int(10) NOT NULL COMMENT '网查',
  `addtime` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `u_name` varchar(32) NOT NULL,
  `log` text NOT NULL,
  KEY `id` (`id`),
  KEY `type_id` (`type_id`),
  KEY `date` (`date`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='单日数据表(不需汇总部分)';

-- ----------------------------
-- Records of count_day
-- ----------------------------

-- ----------------------------
-- Table structure for count_tel
-- ----------------------------
DROP TABLE IF EXISTS `count_tel`;
CREATE TABLE `count_tel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `type_name` varchar(50) NOT NULL,
  `date` int(10) NOT NULL,
  `kefu` varchar(20) NOT NULL,
  `tel_all` int(10) NOT NULL,
  `tel_ok` int(10) NOT NULL,
  `yuyue` int(10) NOT NULL,
  `jiuzhen` int(10) NOT NULL,
  `wangluo` int(10) NOT NULL,
  `zazhi` int(10) NOT NULL,
  `laobao` int(10) NOT NULL,
  `xinbao` int(10) NOT NULL,
  `t400` int(10) NOT NULL,
  `t114` int(10) NOT NULL,
  `jieshao` int(10) NOT NULL,
  `luguo` int(10) NOT NULL,
  `qita` int(10) NOT NULL,
  `detail` text NOT NULL,
  `uid` int(10) NOT NULL,
  `uname` varchar(32) NOT NULL,
  `addtime` int(10) NOT NULL,
  `memo` text NOT NULL,
  `log` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`),
  KEY `date` (`date`),
  KEY `kefu` (`kefu`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='电话统计表';

-- ----------------------------
-- Records of count_tel
-- ----------------------------

-- ----------------------------
-- Table structure for count_type
-- ----------------------------
DROP TABLE IF EXISTS `count_type`;
CREATE TABLE `count_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  `hid` int(10) NOT NULL,
  `h_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `kefu` text NOT NULL,
  `uids` varchar(200) NOT NULL,
  `addtime` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `u_realname` varchar(32) NOT NULL,
  `sort` int(10) NOT NULL DEFAULT '0',
  `log` text NOT NULL COMMENT '修改日志',
  PRIMARY KEY (`id`),
  KEY `hid` (`hid`),
  KEY `sort` (`sort`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='统计项目表';

-- ----------------------------
-- Records of count_type
-- ----------------------------

-- ----------------------------
-- Table structure for count_web
-- ----------------------------
DROP TABLE IF EXISTS `count_web`;
CREATE TABLE `count_web` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL COMMENT '项目ID',
  `type_name` varchar(50) NOT NULL COMMENT '项目名称',
  `date` int(8) NOT NULL COMMENT '时间如20090824',
  `kefu` varchar(20) NOT NULL,
  `ip` int(10) NOT NULL COMMENT '访问ip数量',
  `ip_local` int(10) NOT NULL COMMENT '本地ip数量',
  `ip_other` int(10) NOT NULL COMMENT '外地ip数量',
  `pv` int(10) NOT NULL COMMENT '访问pv量',
  `pv_local` int(10) NOT NULL COMMENT '本地pv',
  `pv_other` int(10) NOT NULL COMMENT '外地pv',
  `click` int(10) NOT NULL COMMENT '总点击量',
  `click_local` int(10) NOT NULL COMMENT '本地点击量',
  `click_other` int(10) NOT NULL COMMENT '外地点击量',
  `zero_talk` int(10) NOT NULL COMMENT '零对话',
  `ok_click` int(10) NOT NULL COMMENT '有效点击',
  `ok_click_local` int(10) NOT NULL COMMENT '本地有效点击',
  `ok_click_other` int(10) NOT NULL COMMENT '外地有效点击',
  `talk` int(10) NOT NULL DEFAULT '0' COMMENT '总对话',
  `talk_swt` int(10) NOT NULL DEFAULT '0' COMMENT '商务通',
  `talk_qq` int(10) NOT NULL DEFAULT '0' COMMENT 'qq',
  `talk_sq` int(10) NOT NULL DEFAULT '0' COMMENT '商桥',
  `talk_app` int(10) NOT NULL DEFAULT '0' COMMENT 'app',
  `talk_120ask` int(10) NOT NULL DEFAULT '0' COMMENT '120ask',
  `talk_jj` int(10) NOT NULL DEFAULT '0' COMMENT '机佳对话',
  `talk_local` int(10) NOT NULL DEFAULT '0' COMMENT '本地对话',
  `talk_other` int(10) NOT NULL DEFAULT '0' COMMENT '其他对话',
  `order` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `order_swt` int(10) NOT NULL DEFAULT '0' COMMENT '商务通',
  `order_qq` int(10) NOT NULL DEFAULT '0' COMMENT 'qq',
  `order_sq` int(10) NOT NULL DEFAULT '0' COMMENT '商桥',
  `order_app` int(10) NOT NULL DEFAULT '0' COMMENT 'app',
  `order_120ask` int(10) NOT NULL DEFAULT '0' COMMENT '120ask',
  `order_local` int(10) NOT NULL DEFAULT '0' COMMENT '本地预约',
  `order_other` int(10) NOT NULL DEFAULT '0' COMMENT '其他预约',
  `come` int(10) NOT NULL DEFAULT '0' COMMENT '当日实际到院',
  `come_swt` int(10) NOT NULL DEFAULT '0' COMMENT '商务通',
  `come_qq` int(10) NOT NULL DEFAULT '0' COMMENT 'qq',
  `come_sq` int(10) NOT NULL DEFAULT '0' COMMENT '商桥',
  `come_app` int(10) NOT NULL DEFAULT '0' COMMENT 'app',
  `come_120ask` int(10) NOT NULL DEFAULT '0' COMMENT '120ask',
  `come_local` int(10) NOT NULL DEFAULT '0' COMMENT '本地到院',
  `come_other` int(10) NOT NULL DEFAULT '0' COMMENT '其他到院',
  `engine` mediumtext NOT NULL COMMENT '搜索引擎',
  `addtime` int(10) NOT NULL COMMENT '添加时间',
  `uid` int(10) NOT NULL DEFAULT '0' COMMENT '作者UID',
  `u_realname` varchar(32) NOT NULL COMMENT '作者实名',
  `memo` mediumtext NOT NULL COMMENT '备注',
  `other` mediumtext NOT NULL COMMENT '其他信息',
  `log` text NOT NULL,
  `repeatcheck` varchar(32) NOT NULL COMMENT '重复检查字段',
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `kefu` (`kefu`),
  KEY `repeatcheck` (`repeatcheck`),
  KEY `type_id` (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of count_web
-- ----------------------------

-- ----------------------------
-- Table structure for junkang_25
-- ----------------------------
DROP TABLE IF EXISTS `junkang_25`;
CREATE TABLE `junkang_25` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of junkang_25
-- ----------------------------

-- ----------------------------
-- Table structure for order_num
-- ----------------------------
DROP TABLE IF EXISTS `order_num`;
CREATE TABLE `order_num` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `hid` int(10) NOT NULL DEFAULT '0',
  `num` int(10) NOT NULL DEFAULT '10000',
  `addtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hid` (`hid`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='预约号表';

-- ----------------------------
-- Records of order_num
-- ----------------------------

-- ----------------------------
-- Table structure for patient
-- ----------------------------
DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient
-- ----------------------------

-- ----------------------------
-- Table structure for patient_1
-- ----------------------------
DROP TABLE IF EXISTS `patient_1`;
CREATE TABLE `patient_1` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=265 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_1
-- ----------------------------

-- ----------------------------
-- Table structure for patient_10
-- ----------------------------
DROP TABLE IF EXISTS `patient_10`;
CREATE TABLE `patient_10` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_10
-- ----------------------------

-- ----------------------------
-- Table structure for patient_10_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_10_sum`;
CREATE TABLE `patient_10_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_10_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_11
-- ----------------------------
DROP TABLE IF EXISTS `patient_11`;
CREATE TABLE `patient_11` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_11
-- ----------------------------

-- ----------------------------
-- Table structure for patient_11_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_11_sum`;
CREATE TABLE `patient_11_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_11_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_12
-- ----------------------------
DROP TABLE IF EXISTS `patient_12`;
CREATE TABLE `patient_12` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_12
-- ----------------------------

-- ----------------------------
-- Table structure for patient_12_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_12_sum`;
CREATE TABLE `patient_12_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_12_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_13
-- ----------------------------
DROP TABLE IF EXISTS `patient_13`;
CREATE TABLE `patient_13` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_13
-- ----------------------------

-- ----------------------------
-- Table structure for patient_13_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_13_sum`;
CREATE TABLE `patient_13_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_13_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_14
-- ----------------------------
DROP TABLE IF EXISTS `patient_14`;
CREATE TABLE `patient_14` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=958 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_14
-- ----------------------------

-- ----------------------------
-- Table structure for patient_14_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_14_sum`;
CREATE TABLE `patient_14_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_14_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_15
-- ----------------------------
DROP TABLE IF EXISTS `patient_15`;
CREATE TABLE `patient_15` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) DEFAULT '0',
  `part_id` int(10) DEFAULT '0',
  `qudao` varchar(10) DEFAULT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL COMMENT '性别',
  `disease_id` varchar(200) DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) DEFAULT NULL COMMENT '病人来源地区',
  `tel` varchar(20) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `zhuanjia_num` varchar(10) DEFAULT NULL,
  `content` mediumtext,
  `talk_content` mediumtext,
  `order_date` int(10) DEFAULT '0',
  `media_from` varchar(20) DEFAULT NULL,
  `engine` varchar(32) DEFAULT NULL,
  `engine_key` varchar(32) DEFAULT NULL,
  `from_site` varchar(40) DEFAULT NULL,
  `memo` mediumtext,
  `status` int(2) DEFAULT '0',
  `doctor` varchar(32) DEFAULT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext COMMENT '消费记录',
  `xiangmu` varchar(250) DEFAULT NULL COMMENT '治疗项目',
  `huifang` mediumtext COMMENT '回访记录',
  `huifang_nexttime` int(10) DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) DEFAULT '0',
  `author` varchar(32) DEFAULT NULL,
  `edit_log` mediumtext COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_15
-- ----------------------------

-- ----------------------------
-- Table structure for patient_15_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_15_sum`;
CREATE TABLE `patient_15_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_15_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_16
-- ----------------------------
DROP TABLE IF EXISTS `patient_16`;
CREATE TABLE `patient_16` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL COMMENT '性别',
  `disease_id` varchar(200) CHARACTER SET gb2312 NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) DEFAULT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `zhuanjia_num` varchar(10) DEFAULT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) DEFAULT NULL,
  `engine_key` varchar(32) DEFAULT NULL,
  `from_site` varchar(40) DEFAULT NULL,
  `memo` mediumtext,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) DEFAULT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext COMMENT '消费记录',
  `xiangmu` varchar(250) DEFAULT NULL COMMENT '治疗项目',
  `huifang` mediumtext COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_16
-- ----------------------------

-- ----------------------------
-- Table structure for patient_16_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_16_sum`;
CREATE TABLE `patient_16_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_16_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_17
-- ----------------------------
DROP TABLE IF EXISTS `patient_17`;
CREATE TABLE `patient_17` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) DEFAULT '0',
  `part_id` int(10) DEFAULT '0',
  `qudao` varchar(10) DEFAULT NULL COMMENT '预约渠道',
  `name` varchar(20) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL COMMENT '性别',
  `disease_id` varchar(200) DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) DEFAULT NULL COMMENT '病人来源地区',
  `tel` varchar(20) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `zhuanjia_num` varchar(10) DEFAULT NULL,
  `content` mediumtext,
  `talk_content` mediumtext,
  `order_date` int(10) DEFAULT '0',
  `media_from` varchar(20) DEFAULT NULL,
  `engine` varchar(32) DEFAULT NULL,
  `engine_key` varchar(32) DEFAULT NULL,
  `from_site` varchar(40) DEFAULT NULL,
  `memo` mediumtext,
  `status` int(2) DEFAULT '0',
  `doctor` varchar(32) DEFAULT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext COMMENT '消费记录',
  `xiangmu` varchar(250) DEFAULT NULL COMMENT '治疗项目',
  `huifang` mediumtext COMMENT '回访记录',
  `huifang_nexttime` int(10) DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) DEFAULT '0',
  `author` varchar(32) DEFAULT NULL,
  `edit_log` mediumtext COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=579 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_17
-- ----------------------------

-- ----------------------------
-- Table structure for patient_17_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_17_sum`;
CREATE TABLE `patient_17_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_17_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_18
-- ----------------------------
DROP TABLE IF EXISTS `patient_18`;
CREATE TABLE `patient_18` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=2685 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_18
-- ----------------------------

-- ----------------------------
-- Table structure for patient_18_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_18_sum`;
CREATE TABLE `patient_18_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_18_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_19
-- ----------------------------
DROP TABLE IF EXISTS `patient_19`;
CREATE TABLE `patient_19` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_19
-- ----------------------------

-- ----------------------------
-- Table structure for patient_1_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_1_sum`;
CREATE TABLE `patient_1_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_1_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_2
-- ----------------------------
DROP TABLE IF EXISTS `patient_2`;
CREATE TABLE `patient_2` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=4149 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_2
-- ----------------------------

-- ----------------------------
-- Table structure for patient_20
-- ----------------------------
DROP TABLE IF EXISTS `patient_20`;
CREATE TABLE `patient_20` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_20
-- ----------------------------

-- ----------------------------
-- Table structure for patient_20_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_20_sum`;
CREATE TABLE `patient_20_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_20_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_21
-- ----------------------------
DROP TABLE IF EXISTS `patient_21`;
CREATE TABLE `patient_21` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=1808 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_21
-- ----------------------------

-- ----------------------------
-- Table structure for patient_21_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_21_sum`;
CREATE TABLE `patient_21_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_21_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_22
-- ----------------------------
DROP TABLE IF EXISTS `patient_22`;
CREATE TABLE `patient_22` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=1133 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_22
-- ----------------------------

-- ----------------------------
-- Table structure for patient_22_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_22_sum`;
CREATE TABLE `patient_22_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_22_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_23
-- ----------------------------
DROP TABLE IF EXISTS `patient_23`;
CREATE TABLE `patient_23` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=9108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_23
-- ----------------------------

-- ----------------------------
-- Table structure for patient_23_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_23_sum`;
CREATE TABLE `patient_23_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_23_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_24
-- ----------------------------
DROP TABLE IF EXISTS `patient_24`;
CREATE TABLE `patient_24` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=9540 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_24
-- ----------------------------

-- ----------------------------
-- Table structure for patient_24_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_24_sum`;
CREATE TABLE `patient_24_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_24_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_25
-- ----------------------------
DROP TABLE IF EXISTS `patient_25`;
CREATE TABLE `patient_25` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_25
-- ----------------------------

-- ----------------------------
-- Table structure for patient_25_copy
-- ----------------------------
DROP TABLE IF EXISTS `patient_25_copy`;
CREATE TABLE `patient_25_copy` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_25_copy
-- ----------------------------

-- ----------------------------
-- Table structure for patient_25_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_25_sum`;
CREATE TABLE `patient_25_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_25_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_26
-- ----------------------------
DROP TABLE IF EXISTS `patient_26`;
CREATE TABLE `patient_26` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_26
-- ----------------------------

-- ----------------------------
-- Table structure for patient_26_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_26_sum`;
CREATE TABLE `patient_26_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_26_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_27
-- ----------------------------
DROP TABLE IF EXISTS `patient_27`;
CREATE TABLE `patient_27` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=1122 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_27
-- ----------------------------

-- ----------------------------
-- Table structure for patient_27_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_27_sum`;
CREATE TABLE `patient_27_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_27_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_28
-- ----------------------------
DROP TABLE IF EXISTS `patient_28`;
CREATE TABLE `patient_28` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_28
-- ----------------------------

-- ----------------------------
-- Table structure for patient_28_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_28_sum`;
CREATE TABLE `patient_28_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_28_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_29
-- ----------------------------
DROP TABLE IF EXISTS `patient_29`;
CREATE TABLE `patient_29` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_29
-- ----------------------------

-- ----------------------------
-- Table structure for patient_29_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_29_sum`;
CREATE TABLE `patient_29_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_29_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_2_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_2_sum`;
CREATE TABLE `patient_2_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_2_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_3
-- ----------------------------
DROP TABLE IF EXISTS `patient_3`;
CREATE TABLE `patient_3` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=6956 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_3
-- ----------------------------

-- ----------------------------
-- Table structure for patient_30
-- ----------------------------
DROP TABLE IF EXISTS `patient_30`;
CREATE TABLE `patient_30` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=1029 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_30
-- ----------------------------

-- ----------------------------
-- Table structure for patient_30_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_30_sum`;
CREATE TABLE `patient_30_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_30_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_31
-- ----------------------------
DROP TABLE IF EXISTS `patient_31`;
CREATE TABLE `patient_31` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_31
-- ----------------------------

-- ----------------------------
-- Table structure for patient_31_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_31_sum`;
CREATE TABLE `patient_31_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_31_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_32
-- ----------------------------
DROP TABLE IF EXISTS `patient_32`;
CREATE TABLE `patient_32` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_32
-- ----------------------------

-- ----------------------------
-- Table structure for patient_32_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_32_sum`;
CREATE TABLE `patient_32_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_32_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_33
-- ----------------------------
DROP TABLE IF EXISTS `patient_33`;
CREATE TABLE `patient_33` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=360 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_33
-- ----------------------------

-- ----------------------------
-- Table structure for patient_33_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_33_sum`;
CREATE TABLE `patient_33_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_33_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_34
-- ----------------------------
DROP TABLE IF EXISTS `patient_34`;
CREATE TABLE `patient_34` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=2286 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_34
-- ----------------------------

-- ----------------------------
-- Table structure for patient_34_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_34_sum`;
CREATE TABLE `patient_34_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_34_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_35
-- ----------------------------
DROP TABLE IF EXISTS `patient_35`;
CREATE TABLE `patient_35` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=655 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_35
-- ----------------------------

-- ----------------------------
-- Table structure for patient_35_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_35_sum`;
CREATE TABLE `patient_35_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_35_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_36
-- ----------------------------
DROP TABLE IF EXISTS `patient_36`;
CREATE TABLE `patient_36` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_36
-- ----------------------------

-- ----------------------------
-- Table structure for patient_36_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_36_sum`;
CREATE TABLE `patient_36_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_36_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_37
-- ----------------------------
DROP TABLE IF EXISTS `patient_37`;
CREATE TABLE `patient_37` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_37
-- ----------------------------

-- ----------------------------
-- Table structure for patient_37_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_37_sum`;
CREATE TABLE `patient_37_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_37_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_38
-- ----------------------------
DROP TABLE IF EXISTS `patient_38`;
CREATE TABLE `patient_38` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=5574 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_38
-- ----------------------------

-- ----------------------------
-- Table structure for patient_38_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_38_sum`;
CREATE TABLE `patient_38_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_38_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_39
-- ----------------------------
DROP TABLE IF EXISTS `patient_39`;
CREATE TABLE `patient_39` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_39
-- ----------------------------

-- ----------------------------
-- Table structure for patient_39_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_39_sum`;
CREATE TABLE `patient_39_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_39_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_3_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_3_sum`;
CREATE TABLE `patient_3_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_3_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_4
-- ----------------------------
DROP TABLE IF EXISTS `patient_4`;
CREATE TABLE `patient_4` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=29296 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_4
-- ----------------------------

-- ----------------------------
-- Table structure for patient_40
-- ----------------------------
DROP TABLE IF EXISTS `patient_40`;
CREATE TABLE `patient_40` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=1511 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_40
-- ----------------------------

-- ----------------------------
-- Table structure for patient_40_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_40_sum`;
CREATE TABLE `patient_40_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_40_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_41
-- ----------------------------
DROP TABLE IF EXISTS `patient_41`;
CREATE TABLE `patient_41` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=731 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_41
-- ----------------------------

-- ----------------------------
-- Table structure for patient_41_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_41_sum`;
CREATE TABLE `patient_41_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_41_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_42
-- ----------------------------
DROP TABLE IF EXISTS `patient_42`;
CREATE TABLE `patient_42` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=484 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_42
-- ----------------------------

-- ----------------------------
-- Table structure for patient_42_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_42_sum`;
CREATE TABLE `patient_42_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_42_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_43
-- ----------------------------
DROP TABLE IF EXISTS `patient_43`;
CREATE TABLE `patient_43` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=261 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_43
-- ----------------------------

-- ----------------------------
-- Table structure for patient_43_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_43_sum`;
CREATE TABLE `patient_43_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_43_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_44
-- ----------------------------
DROP TABLE IF EXISTS `patient_44`;
CREATE TABLE `patient_44` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_44
-- ----------------------------

-- ----------------------------
-- Table structure for patient_44_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_44_sum`;
CREATE TABLE `patient_44_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_44_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_45
-- ----------------------------
DROP TABLE IF EXISTS `patient_45`;
CREATE TABLE `patient_45` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=1718 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_45
-- ----------------------------

-- ----------------------------
-- Table structure for patient_45_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_45_sum`;
CREATE TABLE `patient_45_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_45_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_46
-- ----------------------------
DROP TABLE IF EXISTS `patient_46`;
CREATE TABLE `patient_46` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_46
-- ----------------------------

-- ----------------------------
-- Table structure for patient_46_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_46_sum`;
CREATE TABLE `patient_46_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_46_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_4_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_4_sum`;
CREATE TABLE `patient_4_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_4_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_5
-- ----------------------------
DROP TABLE IF EXISTS `patient_5`;
CREATE TABLE `patient_5` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=1772 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_5
-- ----------------------------

-- ----------------------------
-- Table structure for patient_5_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_5_sum`;
CREATE TABLE `patient_5_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_5_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_6
-- ----------------------------
DROP TABLE IF EXISTS `patient_6`;
CREATE TABLE `patient_6` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=3447 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_6
-- ----------------------------

-- ----------------------------
-- Table structure for patient_6_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_6_sum`;
CREATE TABLE `patient_6_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_6_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_7
-- ----------------------------
DROP TABLE IF EXISTS `patient_7`;
CREATE TABLE `patient_7` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) DEFAULT '0',
  `part_id` int(10) DEFAULT '0',
  `qudao` varchar(10) DEFAULT NULL COMMENT '预约渠道',
  `name` varchar(100) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL COMMENT '性别',
  `disease_id` varchar(200) DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) DEFAULT NULL COMMENT '病人来源地区',
  `tel` varchar(20) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) DEFAULT NULL,
  `content` mediumtext,
  `talk_content` mediumtext,
  `order_date` int(10) DEFAULT '0',
  `media_from` varchar(20) DEFAULT NULL,
  `engine` varchar(32) DEFAULT NULL,
  `engine_key` varchar(32) DEFAULT NULL,
  `from_site` varchar(40) DEFAULT NULL,
  `memo` mediumtext,
  `status` int(2) DEFAULT '0',
  `doctor` varchar(32) DEFAULT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext COMMENT '消费记录',
  `xiangmu` varchar(250) DEFAULT NULL COMMENT '治疗项目',
  `huifang` mediumtext COMMENT '回访记录',
  `huifang_nexttime` int(10) DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) DEFAULT '0',
  `author` varchar(32) DEFAULT NULL,
  `edit_log` mediumtext COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=1983 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_7
-- ----------------------------

-- ----------------------------
-- Table structure for patient_7_copy
-- ----------------------------
DROP TABLE IF EXISTS `patient_7_copy`;
CREATE TABLE `patient_7_copy` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) DEFAULT '0',
  `part_id` int(10) DEFAULT '0',
  `qudao` varchar(10) DEFAULT NULL COMMENT '预约渠道',
  `name` varchar(100) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL COMMENT '性别',
  `disease_id` varchar(200) DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) DEFAULT NULL COMMENT '病人来源地区',
  `tel` varchar(20) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `zhuanjia_num` varchar(10) DEFAULT NULL,
  `content` mediumtext,
  `talk_content` mediumtext,
  `order_date` int(10) DEFAULT '0',
  `media_from` varchar(20) DEFAULT NULL,
  `engine` varchar(32) DEFAULT NULL,
  `engine_key` varchar(32) DEFAULT NULL,
  `from_site` varchar(40) DEFAULT NULL,
  `memo` mediumtext,
  `status` int(2) DEFAULT '0',
  `doctor` varchar(32) DEFAULT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext COMMENT '消费记录',
  `xiangmu` varchar(250) DEFAULT NULL COMMENT '治疗项目',
  `huifang` mediumtext COMMENT '回访记录',
  `huifang_nexttime` int(10) DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) DEFAULT '0',
  `author` varchar(32) DEFAULT NULL,
  `edit_log` mediumtext COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=841 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_7_copy
-- ----------------------------

-- ----------------------------
-- Table structure for patient_7_copy1
-- ----------------------------
DROP TABLE IF EXISTS `patient_7_copy1`;
CREATE TABLE `patient_7_copy1` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) DEFAULT '0',
  `part_id` int(10) DEFAULT '0',
  `qudao` varchar(10) DEFAULT NULL COMMENT '预约渠道',
  `name` varchar(100) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL COMMENT '性别',
  `disease_id` varchar(200) DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) DEFAULT NULL COMMENT '病人来源地区',
  `tel` varchar(20) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `zhuanjia_num` varchar(10) DEFAULT NULL,
  `content` mediumtext,
  `talk_content` mediumtext,
  `order_date` int(10) DEFAULT '0',
  `media_from` varchar(20) DEFAULT NULL,
  `engine` varchar(32) DEFAULT NULL,
  `engine_key` varchar(32) DEFAULT NULL,
  `from_site` varchar(40) DEFAULT NULL,
  `memo` mediumtext,
  `status` int(2) DEFAULT '0',
  `doctor` varchar(32) DEFAULT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext COMMENT '消费记录',
  `xiangmu` varchar(250) DEFAULT NULL COMMENT '治疗项目',
  `huifang` mediumtext COMMENT '回访记录',
  `huifang_nexttime` int(10) DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) DEFAULT '0',
  `author` varchar(32) DEFAULT NULL,
  `edit_log` mediumtext COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=841 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_7_copy1
-- ----------------------------

-- ----------------------------
-- Table structure for patient_7_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_7_sum`;
CREATE TABLE `patient_7_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_7_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_8
-- ----------------------------
DROP TABLE IF EXISTS `patient_8`;
CREATE TABLE `patient_8` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_8
-- ----------------------------

-- ----------------------------
-- Table structure for patient_8_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_8_sum`;
CREATE TABLE `patient_8_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_8_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_9
-- ----------------------------
DROP TABLE IF EXISTS `patient_9`;
CREATE TABLE `patient_9` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_9
-- ----------------------------

-- ----------------------------
-- Table structure for patient_9_sum
-- ----------------------------
DROP TABLE IF EXISTS `patient_9_sum`;
CREATE TABLE `patient_9_sum` (
  `date` int(10) NOT NULL COMMENT '日期',
  `x1` int(10) NOT NULL DEFAULT '0' COMMENT '总预约',
  `x2` int(10) NOT NULL DEFAULT '0' COMMENT '总预到',
  `x3` int(10) NOT NULL DEFAULT '0' COMMENT '总实到',
  `x4` int(10) NOT NULL DEFAULT '0' COMMENT '网络预约',
  `x5` int(10) NOT NULL DEFAULT '0' COMMENT '网络预到',
  `x6` int(10) NOT NULL DEFAULT '0' COMMENT '网络实到',
  `x7` int(10) NOT NULL DEFAULT '0' COMMENT '电话预约',
  `x8` int(10) NOT NULL DEFAULT '0' COMMENT '电话预到',
  `x9` int(10) NOT NULL DEFAULT '0' COMMENT '电话实到',
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='汇总表';

-- ----------------------------
-- Records of patient_9_sum
-- ----------------------------

-- ----------------------------
-- Table structure for patient_cachetime
-- ----------------------------
DROP TABLE IF EXISTS `patient_cachetime`;
CREATE TABLE `patient_cachetime` (
  `hid` int(10) NOT NULL,
  `lasttime` int(10) NOT NULL DEFAULT '0',
  `timer_huodong` int(10) NOT NULL DEFAULT '0',
  `timer_old` int(10) NOT NULL DEFAULT '0',
  KEY `hid` (`hid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='缓存时间表';

-- ----------------------------
-- Records of patient_cachetime
-- ----------------------------

-- ----------------------------
-- Table structure for sites
-- ----------------------------
DROP TABLE IF EXISTS `sites`;
CREATE TABLE `sites` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `hid` int(10) NOT NULL COMMENT '医院ID',
  `h_name` varchar(100) NOT NULL COMMENT '医院名称',
  `url` varchar(32) NOT NULL COMMENT '网址www.a.com',
  `site_name` varchar(100) NOT NULL COMMENT '网站名称',
  `config` text NOT NULL COMMENT '站点配置',
  `uid` int(10) NOT NULL,
  `u_realname` varchar(32) NOT NULL,
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hid` (`hid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sites
-- ----------------------------

-- ----------------------------
-- Table structure for sys_admin
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin`;
CREATE TABLE `sys_admin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `isshow` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-正常,0-关闭',
  `name` varchar(20) DEFAULT NULL COMMENT '登录名',
  `pass` varchar(32) DEFAULT NULL COMMENT '密码(加密后)',
  `powermode` tinyint(1) NOT NULL DEFAULT '0' COMMENT '权限模式',
  `menu` mediumtext COMMENT '菜单定义',
  `guahao_config` varchar(255) NOT NULL COMMENT '挂号配置',
  `character_id` int(11) DEFAULT '0' COMMENT '角色ID',
  `showmodule` varchar(250) NOT NULL DEFAULT '-' COMMENT '显示的模块',
  `shortcut` mediumtext COMMENT '定制的快捷方式',
  `lastlogin` int(10) DEFAULT NULL COMMENT '上次登录',
  `thislogin` int(10) DEFAULT NULL COMMENT '本次登录时间',
  `logintimes` int(8) DEFAULT '0' COMMENT '登录总次数',
  `online` tinyint(1) DEFAULT '0' COMMENT '是否在线',
  `lastactiontime` int(10) DEFAULT '0' COMMENT '上次活动时间',
  `menuclicks` mediumtext NOT NULL COMMENT '菜单点击数据',
  `addtime` int(10) DEFAULT NULL COMMENT '资料添加时间',
  `part_id` int(8) NOT NULL DEFAULT '0' COMMENT '所在部门',
  `part_admin` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否部门管理员',
  `part_manage` varchar(250) NOT NULL COMMENT '能管理的部门数据',
  `hospitals` varchar(500) NOT NULL DEFAULT '0' COMMENT '所在医院',
  `detail` mediumtext NOT NULL COMMENT '用户详细资料(序列化)',
  `config` mediumtext NOT NULL COMMENT '用户配置',
  `author` varchar(32) NOT NULL,
  `allow_ip` mediumtext NOT NULL COMMENT '允许登录的ip',
  `history_ip` mediumtext NOT NULL COMMENT '最近登录的ip',
  `mac` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `online` (`online`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM AUTO_INCREMENT=936 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_admin
-- ----------------------------
INSERT INTO `sys_admin` VALUES ('1', '1', 'admin', '123456', '0', null, '', '0', '-', null, null, null, '0', '0', '0', '', null, '0', '0', '', '0', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for sys_admin_copy
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin_copy`;
CREATE TABLE `sys_admin_copy` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `isshow` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-正常,0-关闭',
  `name` varchar(20) DEFAULT NULL COMMENT '登录名',
  `pass` varchar(32) DEFAULT NULL COMMENT '密码(加密后)',
  `powermode` tinyint(1) NOT NULL DEFAULT '0' COMMENT '权限模式',
  `menu` mediumtext COMMENT '菜单定义',
  `guahao_config` varchar(255) NOT NULL COMMENT '挂号配置',
  `character_id` int(11) DEFAULT '0' COMMENT '角色ID',
  `showmodule` varchar(250) NOT NULL DEFAULT '-' COMMENT '显示的模块',
  `shortcut` mediumtext COMMENT '定制的快捷方式',
  `lastlogin` int(10) DEFAULT NULL COMMENT '上次登录',
  `thislogin` int(10) DEFAULT NULL COMMENT '本次登录时间',
  `logintimes` int(8) DEFAULT '0' COMMENT '登录总次数',
  `online` tinyint(1) DEFAULT '0' COMMENT '是否在线',
  `lastactiontime` int(10) DEFAULT '0' COMMENT '上次活动时间',
  `menuclicks` mediumtext NOT NULL COMMENT '菜单点击数据',
  `addtime` int(10) DEFAULT NULL COMMENT '资料添加时间',
  `part_id` int(8) NOT NULL DEFAULT '0' COMMENT '所在部门',
  `part_admin` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否部门管理员',
  `part_manage` varchar(250) NOT NULL COMMENT '能管理的部门数据',
  `hospitals` varchar(500) NOT NULL DEFAULT '0' COMMENT '所在医院',
  `detail` mediumtext NOT NULL COMMENT '用户详细资料(序列化)',
  `config` mediumtext NOT NULL COMMENT '用户配置',
  `author` varchar(32) NOT NULL,
  `allow_ip` mediumtext NOT NULL COMMENT '允许登录的ip',
  `history_ip` mediumtext NOT NULL COMMENT '最近登录的ip',
  `mac` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `online` (`online`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM AUTO_INCREMENT=515 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_admin_copy
-- ----------------------------

-- ----------------------------
-- Table structure for sys_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth_group`;
CREATE TABLE `sys_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for sys_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth_group_access`;
CREATE TABLE `sys_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_auth_group_access
-- ----------------------------

-- ----------------------------
-- Table structure for sys_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth_rule`;
CREATE TABLE `sys_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `pid` int(10) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `sort` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_auth_rule
-- ----------------------------
INSERT INTO `sys_auth_rule` VALUES ('1', '系统设置', 'Sys', '1', '1', '', '0', null, null);
INSERT INTO `sys_auth_rule` VALUES ('2', '部门管理', 'Part/index', '1', '1', '', '1', null, null);
INSERT INTO `sys_auth_rule` VALUES ('3', '部门修改', 'Part/update', '1', '1', '', '2', null, null);
INSERT INTO `sys_auth_rule` VALUES ('4', '部门删除', 'Part/del', '1', '1', '', '2', null, null);
INSERT INTO `sys_auth_rule` VALUES ('5', '部门新增', 'Part/add', '1', '1', '', '2', null, null);
INSERT INTO `sys_auth_rule` VALUES ('6', '医生管理', 'Doctor/index', '1', '1', '', '1', null, null);
INSERT INTO `sys_auth_rule` VALUES ('7', '医生修改', 'Doctor/update', '1', '1', '', '6', null, null);
INSERT INTO `sys_auth_rule` VALUES ('8', '医生新增', 'Doctor/add', '1', '1', '', '6', null, null);
INSERT INTO `sys_auth_rule` VALUES ('9', '医生删除', 'Doctor/del', '1', '1', '', '6', null, null);

-- ----------------------------
-- Table structure for sys_character
-- ----------------------------
DROP TABLE IF EXISTS `sys_character`;
CREATE TABLE `sys_character` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `menu` mediumtext,
  `author` varchar(20) DEFAULT NULL,
  `addtime` int(10) DEFAULT '0',
  `isshow` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_character
-- ----------------------------

-- ----------------------------
-- Table structure for sys_depart
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart`;
CREATE TABLE `sys_depart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `intro` mediumtext NOT NULL,
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `status` int(10) NOT NULL DEFAULT '1' COMMENT '1为ture，0为false',
  `update_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hospital_id` (`hospital_id`,`addtime`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_depart
-- ----------------------------
INSERT INTO `sys_depart` VALUES ('70', '4', '内科 张素兰', '内科 张素兰', '1545529180', '', '1', '1545529180');
INSERT INTO `sys_depart` VALUES ('71', '4', '中医科 何贵琼', '中医科 何贵琼', '1545529194', '', '1', '1545529194');
INSERT INTO `sys_depart` VALUES ('72', '4', '外科（男科） 杨坤', '外科（男科） 杨坤', '1545529207', '', '1', '1545529207');
INSERT INTO `sys_depart` VALUES ('73', '4', '疼痛科 颜家长', '疼痛科 颜家长', '1545529216', '', '1', '1545529216');
INSERT INTO `sys_depart` VALUES ('74', '3', '理疗科 赵超', '理疗科 赵超', '1545529240', '', '1', '1545529240');
INSERT INTO `sys_depart` VALUES ('75', '3', '五官科 刘贤龙', '五官科 刘贤龙', '1545529254', '', '1', '1545529254');
INSERT INTO `sys_depart` VALUES ('76', '3', '妇科 余德云', '妇科 余德云', '1545529263', '', '1', '1545529263');
INSERT INTO `sys_depart` VALUES ('77', '3', '内科2-破伤风', '内科2-破伤风', '1545529270', '', '1', '1545529270');
INSERT INTO `sys_depart` VALUES ('78', '3', '住院部-李静', '住院部-李静', '1545529277', '', '1', '1545529277');
INSERT INTO `sys_depart` VALUES ('79', '3', '住院部-张敏', '住院部-张敏', '1545529285', '', '1', '1545529285');
INSERT INTO `sys_depart` VALUES ('80', '3', '住院部-刘丹', '住院部-刘丹', '1545529295', '', '1', '1545529295');
INSERT INTO `sys_depart` VALUES ('81', '4', '住院部-刘亚', '住院部-刘亚', '1545529305', '', '1', '1545529305');

-- ----------------------------
-- Table structure for sys_disease
-- ----------------------------
DROP TABLE IF EXISTS `sys_disease`;
CREATE TABLE `sys_disease` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(10) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `intro` mediumtext NOT NULL,
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `isshow` tinyint(1) NOT NULL DEFAULT '1',
  `sort` int(10) NOT NULL DEFAULT '0',
  `sort2` int(10) NOT NULL DEFAULT '0',
  `update_time` int(10) NOT NULL DEFAULT '0',
  `status` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=540 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_disease
-- ----------------------------
INSERT INTO `sys_disease` VALUES ('534', '4', '包皮包茎', '包皮包茎', '包皮包茎包皮包茎', '1545449659', '', '1', '100', '0', '1545449659', '1');
INSERT INTO `sys_disease` VALUES ('535', '4', '早泄', '早泄', '早泄', '1545449822', '', '1', '10', '0', '1545449822', '1');
INSERT INTO `sys_disease` VALUES ('536', '4', '男科检查', '男科检查', '男科检查', '1545449837', '', '1', '30', '0', '1545449837', '1');
INSERT INTO `sys_disease` VALUES ('537', '4', '泌尿感染', '泌尿感染', '泌尿感染', '1545449849', '', '1', '25', '0', '1545449849', '1');
INSERT INTO `sys_disease` VALUES ('538', '3', '妇科', '妇科', '妇科', '1545457787', '', '1', '0', '0', '1545462130', '0');
INSERT INTO `sys_disease` VALUES ('539', '3', '测试01', '测试01', '测试01', '1545461111', '', '1', '99', '0', '1545462092', '0');

-- ----------------------------
-- Table structure for sys_doctor
-- ----------------------------
DROP TABLE IF EXISTS `sys_doctor`;
CREATE TABLE `sys_doctor` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(8) NOT NULL DEFAULT '0' COMMENT '医院id',
  `doctor_num` varchar(20) NOT NULL COMMENT '专家号',
  `name` varchar(32) NOT NULL COMMENT '医生姓名',
  `intro` mediumtext NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `update_time` int(10) NOT NULL DEFAULT '0',
  `status` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_doctor
-- ----------------------------
INSERT INTO `sys_doctor` VALUES ('3', '1', '2018122099100509', '老赵', '测试', '1545287564', '', '1545287564', '1');
INSERT INTO `sys_doctor` VALUES ('4', '3', '2018122056102489', '老钱', '测试2', '1545287577', '', '1545287577', '1');
INSERT INTO `sys_doctor` VALUES ('5', '4', '2018122052485797', '老孙', '测试3', '1545287588', '', '1545287588', '1');
INSERT INTO `sys_doctor` VALUES ('6', '3', '2018122050545254', '老李', '医生', '1545287602', '', '1545287602', '1');
INSERT INTO `sys_doctor` VALUES ('7', '4', '2018122298551015', '是', '是', '1545449371', '', '1545449371', '1');

-- ----------------------------
-- Table structure for sys_engine
-- ----------------------------
DROP TABLE IF EXISTS `sys_engine`;
CREATE TABLE `sys_engine` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `addtime` int(10) NOT NULL,
  `author` varchar(32) NOT NULL,
  `update_time` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  `engine_img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='搜索引擎列表';

-- ----------------------------
-- Records of sys_engine
-- ----------------------------
INSERT INTO `sys_engine` VALUES ('12', '百度', '1545540682', '', '1545540682', '1', '/Uploads/20181223\\94118f50007331efc5c3c7bc77f379e8.jpg');
INSERT INTO `sys_engine` VALUES ('13', '360搜索', '1545543614', '', '1545543614', '1', '/Uploads/20181223\\ddfb55479160274af50147b18f32057b.jpg');
INSERT INTO `sys_engine` VALUES ('14', '搜狗搜索', '1545543632', '', '1545543632', '1', '/Uploads/20181223\\8dd4dd03edb8452a09fa6f20543b57ca.jpg');

-- ----------------------------
-- Table structure for sys_hospital
-- ----------------------------
DROP TABLE IF EXISTS `sys_hospital`;
CREATE TABLE `sys_hospital` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `intro` mediumtext NOT NULL,
  `add_time` int(10) NOT NULL,
  `author` varchar(32) NOT NULL,
  `sort` int(10) NOT NULL DEFAULT '0',
  `config` text NOT NULL COMMENT '医院个性化配置',
  `update_time` int(10) NOT NULL,
  `status` int(10) NOT NULL COMMENT '默认为1,;1为真，0为假',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_hospital
-- ----------------------------
INSERT INTO `sys_hospital` VALUES ('1', '天康医院', '天康医院', '1545272743', '', '0', '测试', '1545284652', '1');
INSERT INTO `sys_hospital` VALUES ('3', '彭州建国医院', '彭州建国医院', '1545272911', '', '0', '彭州建国医院彭州建国医院彭州建国医院', '1545272911', '1');
INSERT INTO `sys_hospital` VALUES ('4', '六盘水博爱医院', '六盘水博爱医院', '1545272941', '', '0', '六盘水博爱医院六盘水博爱医院六盘水博爱医院', '1545272941', '1');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `hid` int(6) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `title` varchar(254) NOT NULL DEFAULT '',
  `pagename` varchar(200) DEFAULT NULL,
  `view_url` varchar(200) NOT NULL,
  `data` mediumtext,
  `table_name` varchar(50) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `uid` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(15) DEFAULT NULL,
  `addtime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=151398 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_login_error
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_error`;
CREATE TABLE `sys_login_error` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tryname` varchar(32) DEFAULT NULL,
  `trypass` varchar(32) DEFAULT NULL,
  `userip` varchar(15) DEFAULT NULL,
  `addtime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_login_error
-- ----------------------------

-- ----------------------------
-- Table structure for sys_media
-- ----------------------------
DROP TABLE IF EXISTS `sys_media`;
CREATE TABLE `sys_media` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `addtime` int(10) NOT NULL,
  `author` varchar(32) NOT NULL,
  `type_id` int(10) NOT NULL DEFAULT '1' COMMENT '1代表网络2代表落地',
  `status` int(10) NOT NULL DEFAULT '1',
  `update_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM AUTO_INCREMENT=593 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_media
-- ----------------------------
INSERT INTO `sys_media` VALUES ('584', '4', '网络预约-电话', '1545464962', '', '1', '1', '1545464962');
INSERT INTO `sys_media` VALUES ('585', '4', '网络预约-商务通', '1545464978', '', '1', '1', '1545464978');
INSERT INTO `sys_media` VALUES ('586', '4', '网络预约-QQ', '1545464989', '', '1', '1', '1545464989');
INSERT INTO `sys_media` VALUES ('587', '4', '网络预约-APP-120', '1545464999', '', '1', '1', '1545464999');
INSERT INTO `sys_media` VALUES ('588', '4', '网络预约-商务通转QQ', '1545465009', '', '1', '1', '1545465009');
INSERT INTO `sys_media` VALUES ('589', '4', '微信小号', '1545465021', '', '4', '1', '1545465021');
INSERT INTO `sys_media` VALUES ('590', '4', '杂志', '1545465032', '', '5', '1', '1545465032');
INSERT INTO `sys_media` VALUES ('591', '4', '落地', '1545465043', '', '2', '1', '1545465043');
INSERT INTO `sys_media` VALUES ('592', '4', '微信公众平台02', '1545465065', '', '4', '1', '1545468302');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) NOT NULL DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `title` varchar(40) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `modules` varchar(255) NOT NULL,
  `tips` varchar(100) DEFAULT NULL,
  `pagesize` int(4) DEFAULT NULL,
  `shortcut` tinyint(1) DEFAULT '0',
  `powercheck` int(1) DEFAULT '1',
  `sort` int(10) NOT NULL DEFAULT '0',
  `isshow` tinyint(1) NOT NULL DEFAULT '1',
  `addtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM AUTO_INCREMENT=215 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_message
-- ----------------------------
DROP TABLE IF EXISTS `sys_message`;
CREATE TABLE `sys_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `to_uid` varchar(20) DEFAULT NULL COMMENT '接收人uid',
  `to_realname` varchar(32) NOT NULL,
  `from_uid` varchar(20) DEFAULT NULL COMMENT '发送人uid',
  `from_realname` varchar(32) NOT NULL,
  `from_id` int(8) DEFAULT '0' COMMENT '回复的消息id',
  `content` mediumtext,
  `addtime` int(10) DEFAULT '0',
  `readtime` int(10) DEFAULT '0' COMMENT '阅读时间,0表示未读',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=232 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_message
-- ----------------------------

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reader_type` varchar(10) NOT NULL COMMENT 'all, part, user, manager',
  `part_ids` varchar(250) NOT NULL,
  `uids` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `isshow` tinyint(1) NOT NULL,
  `read_uids` text NOT NULL,
  `read_info` text NOT NULL,
  `uid` int(10) NOT NULL COMMENT '发起人',
  `u_realname` varchar(32) NOT NULL COMMENT '发起人真实姓名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------

-- ----------------------------
-- Table structure for sys_part
-- ----------------------------
DROP TABLE IF EXISTS `sys_part`;
CREATE TABLE `sys_part` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL,
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `status` int(10) DEFAULT NULL,
  `update_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1010 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_part
-- ----------------------------
INSERT INTO `sys_part` VALUES ('1001', '0', '系统管理员', '1545572044', 'admin', '1', '1545572044');
INSERT INTO `sys_part` VALUES ('1002', '1001', '医院管理员', '1545572111', 'admin', '1', '1545572111');
INSERT INTO `sys_part` VALUES ('1003', '1002', '咨询组', '1545572125', 'admin', '1', '1545572125');
INSERT INTO `sys_part` VALUES ('1004', '1002', '经营部', '1545572133', 'admin', '1', '1545572133');
INSERT INTO `sys_part` VALUES ('1005', '1002', '导医组', '1545572140', 'admin', '1', '1545572140');
INSERT INTO `sys_part` VALUES ('1006', '1002', '微信组', '1545572146', 'admin', '1', '1545572146');
INSERT INTO `sys_part` VALUES ('1007', '1002', '落地组', '1545572154', 'admin', '1', '1545617280');

-- ----------------------------
-- Table structure for sys_session
-- ----------------------------
DROP TABLE IF EXISTS `sys_session`;
CREATE TABLE `sys_session` (
  `sid` varchar(40) NOT NULL,
  `uid` int(10) NOT NULL DEFAULT '0',
  `u_realname` varchar(32) NOT NULL,
  `data` mediumtext NOT NULL,
  `addtime` int(10) NOT NULL DEFAULT '0',
  `updatetime` int(10) NOT NULL DEFAULT '0',
  KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_session
-- ----------------------------

-- ----------------------------
-- Table structure for yuyue
-- ----------------------------
DROP TABLE IF EXISTS `yuyue`;
CREATE TABLE `yuyue` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_num` int(10) NOT NULL DEFAULT '0',
  `part_id` int(10) NOT NULL DEFAULT '0',
  `qudao` varchar(10) NOT NULL COMMENT '预约渠道',
  `name` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL COMMENT '性别',
  `disease_id` varchar(200) NOT NULL DEFAULT '0' COMMENT '病患类型',
  `depart` int(10) NOT NULL DEFAULT '0' COMMENT '科室',
  `is_local` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否本地病人',
  `area` varchar(32) NOT NULL COMMENT '病人来源地区',
  `tel` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `bjhz` varchar(200) DEFAULT NULL,
  `zhuanjia_num` varchar(10) NOT NULL,
  `content` mediumtext NOT NULL,
  `talk_content` mediumtext NOT NULL,
  `order_date` int(10) NOT NULL DEFAULT '0',
  `media_from` varchar(20) NOT NULL,
  `engine` varchar(32) NOT NULL,
  `engine_key` varchar(32) NOT NULL,
  `from_site` varchar(40) NOT NULL,
  `memo` mediumtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `doctor` varchar(32) NOT NULL COMMENT '接待医生',
  `is_zhiliao` int(2) NOT NULL DEFAULT '0' COMMENT '是否治疗',
  `is_xiaofei` int(2) NOT NULL DEFAULT '0' COMMENT '是否消费',
  `xiaofei_count` int(10) NOT NULL DEFAULT '0' COMMENT '消费总额',
  `xiaofei_log` mediumtext NOT NULL COMMENT '消费记录',
  `xiangmu` varchar(250) NOT NULL COMMENT '治疗项目',
  `huifang` mediumtext NOT NULL COMMENT '回访记录',
  `huifang_nexttime` int(10) NOT NULL DEFAULT '0' COMMENT '下次回访时间',
  `huifang_kf` varchar(20) NOT NULL DEFAULT '' COMMENT '上次回访客服',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `author` varchar(32) NOT NULL,
  `edit_log` mediumtext NOT NULL COMMENT '修改记录',
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`),
  KEY `order_date` (`order_date`),
  KEY `status` (`status`),
  KEY `addtime` (`addtime`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yuyue
-- ----------------------------
