/*
Navicat MySQL Data Transfer

Source Server         : 阿里云
Source Server Version : 50716
Source Host           : biggsai.com:3306
Source Database       : recevie

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2020-07-14 19:20:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `ID` int(20) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `teachclassid` int(20) NOT NULL COMMENT '所选课程，外键',
  `no` int(20) DEFAULT NULL COMMENT '序号，每个学生的实验报告文件名默认格式为学号项目实验X。X为序号',
  `title` varchar(20) DEFAULT NULL COMMENT '序号',
  `duedate` char(10) DEFAULT NULL COMMENT '报告提交截止日期',
  `type` int(20) DEFAULT NULL COMMENT '作业类型。1-实验；2-作业',
  `note` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES ('4', '6', '2', 'Java面向对象程序设计', '2020-06-21', '1', '', '2019-02-20 22:02:25');
INSERT INTO `job` VALUES ('6', '2', '2', '回话操作', '2020-2-12', '1', '会话操作3', '2019-02-21 11:25:56');
INSERT INTO `job` VALUES ('8', '6', '1', '流程控制语句', '2019-06-29', '1', '', '2019-02-21 15:18:19');
INSERT INTO `job` VALUES ('16', '2', '3', '通信和JavaBean', '2021-05-14', '1', '实验5555', '2019-05-08 02:56:10');
INSERT INTO `job` VALUES ('17', '6', '3', '输入输出流操作', '2019-05-25', '1', '', '2019-05-08 06:04:38');
INSERT INTO `job` VALUES ('18', '6', '4', '并发程序设计', '2019-05-31', '1', '', '2019-05-22 09:24:49');
INSERT INTO `job` VALUES ('19', '2', '4', '原型设计报告', '2019-05-26', '1', '大作业原型设计报告', '2019-05-22 09:51:18');
INSERT INTO `job` VALUES ('20', '6', '5', 'GUI程序设计', '2019-06-28', '1', '', '2019-05-27 00:08:15');
INSERT INTO `job` VALUES ('21', '2', '5', '数据库设计', '2019-05-30', '1', '数据库设计,将jsp的数据库设计以word形式提交', '2019-05-27 14:49:02');
INSERT INTO `job` VALUES ('27', '2', '5', '大作业', '2019-06-24', '1', 'niubio', '2019-06-20 08:03:40');
INSERT INTO `job` VALUES ('29', '9', '1', '666', '2019-10-01', '1', '66', '2019-09-30 10:01:19');
INSERT INTO `job` VALUES ('30', '9', '6', '666', '2019-10-03', '1', '66', '2019-09-30 10:27:01');
INSERT INTO `job` VALUES ('31', '8', '1', '实习报告', '2020-06-10', '1', '大作业', '2020-06-02 00:51:27');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `jobID` int(20) NOT NULL COMMENT '外键',
  `studentno` varchar(20) NOT NULL,
  `score` int(5) DEFAULT NULL,
  `time` datetime DEFAULT NULL COMMENT '可以用来区分不同类型作业信息。如实验，可以填入提交时间',
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uniq_job` (`jobID`,`studentno`) USING HASH,
  CONSTRAINT `fk_jobid` FOREIGN KEY (`jobID`) REFERENCES `job` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=606 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('7', '6', '162210702234', null, '2019-04-21 15:50:30', null);
INSERT INTO `score` VALUES ('8', '6', '162210702235', null, '2019-04-21 23:30:54', null);
INSERT INTO `score` VALUES ('9', '6', '162210702201', null, '2019-04-19 18:40:46', null);
INSERT INTO `score` VALUES ('10', '6', '162210702118', null, '2019-04-19 18:42:04', null);
INSERT INTO `score` VALUES ('11', '6', '162210702114', null, '2019-04-19 18:44:46', null);
INSERT INTO `score` VALUES ('12', '8', '182210712122', null, '2019-04-19 19:16:48', null);
INSERT INTO `score` VALUES ('13', '6', '162210702106', null, '2019-04-19 20:04:57', null);
INSERT INTO `score` VALUES ('14', '6', '162210702226', null, '2019-04-19 20:24:35', null);
INSERT INTO `score` VALUES ('15', '6', '162210702136', null, '2019-04-19 22:39:28', null);
INSERT INTO `score` VALUES ('16', '6', '162210702230', null, '2019-04-21 23:04:25', null);
INSERT INTO `score` VALUES ('17', '6', '162210702214', null, '2019-04-20 09:53:26', null);
INSERT INTO `score` VALUES ('18', '6', '162210702231', null, '2019-04-20 14:30:26', null);
INSERT INTO `score` VALUES ('19', '6', '162210702135', null, '2019-04-20 16:23:33', null);
INSERT INTO `score` VALUES ('20', '6', '162210702122', null, '2019-04-20 18:09:58', null);
INSERT INTO `score` VALUES ('22', '6', '162210702111', null, '2019-04-20 20:51:51', null);
INSERT INTO `score` VALUES ('23', '6', '162210702103', null, '2019-04-20 20:53:56', null);
INSERT INTO `score` VALUES ('24', '6', '162210702228', null, '2019-04-20 20:56:45', null);
INSERT INTO `score` VALUES ('25', '6', '162210702203', null, '2019-04-20 21:08:42', null);
INSERT INTO `score` VALUES ('26', '6', '162210702113', null, '2019-04-21 23:08:09', null);
INSERT INTO `score` VALUES ('28', '6', '162210702205', null, '2019-04-20 23:21:22', null);
INSERT INTO `score` VALUES ('29', '6', '162210702110', null, '2019-04-21 13:15:08', null);
INSERT INTO `score` VALUES ('31', '6', '162210702119', null, '2019-04-21 14:02:38', null);
INSERT INTO `score` VALUES ('32', '6', '162210702225', null, '2019-04-21 14:08:41', null);
INSERT INTO `score` VALUES ('35', '6', '162210702128', null, '2019-04-21 16:37:58', null);
INSERT INTO `score` VALUES ('36', '6', '162210702125', null, '2019-04-21 16:38:06', null);
INSERT INTO `score` VALUES ('37', '6', '162210702117', null, '2019-04-21 17:01:59', null);
INSERT INTO `score` VALUES ('38', '6', '162210702133', null, '2019-04-21 17:54:09', null);
INSERT INTO `score` VALUES ('39', '6', '162210702127', null, '2019-04-21 22:10:26', null);
INSERT INTO `score` VALUES ('42', '6', '162210702124', null, '2019-04-21 18:49:20', null);
INSERT INTO `score` VALUES ('43', '6', '162210702104', null, '2019-04-21 18:54:49', null);
INSERT INTO `score` VALUES ('44', '6', '162210702121', null, '2019-04-21 19:34:54', null);
INSERT INTO `score` VALUES ('45', '6', '162210702131', null, '2019-04-21 20:08:21', null);
INSERT INTO `score` VALUES ('46', '6', '162210702202', null, '2019-04-21 20:18:57', null);
INSERT INTO `score` VALUES ('47', '6', '162210702101', '80', '2019-04-21 20:20:48', 'yinh');
INSERT INTO `score` VALUES ('49', '6', '162210702130', null, '2019-04-21 21:29:07', null);
INSERT INTO `score` VALUES ('50', '6', '162210702129', null, '2019-04-21 21:22:22', null);
INSERT INTO `score` VALUES ('51', '6', '162210203128', '80', '2019-04-21 21:24:20', '挺好的');
INSERT INTO `score` VALUES ('52', '6', '162210201321', '45', '2019-04-21 21:39:11', '45');
INSERT INTO `score` VALUES ('53', '6', '162210702209', null, '2019-04-21 21:43:37', null);
INSERT INTO `score` VALUES ('54', '6', '162210702227', null, '2019-04-21 21:47:44', null);
INSERT INTO `score` VALUES ('55', '6', '162210702229', null, '2019-05-17 02:53:29', null);
INSERT INTO `score` VALUES ('56', '6', '162210702102', '80', '2019-04-21 22:02:32', null);
INSERT INTO `score` VALUES ('58', '6', '162210702105', null, '2019-04-21 22:09:04', null);
INSERT INTO `score` VALUES ('59', '6', '162210702115', null, '2019-04-21 22:13:15', null);
INSERT INTO `score` VALUES ('60', '6', '162210702211', null, '2019-04-21 22:15:05', null);
INSERT INTO `score` VALUES ('61', '6', '162210702107', null, '2019-04-21 22:15:49', null);
INSERT INTO `score` VALUES ('62', '6', '162210702221', null, '2019-04-21 22:20:15', null);
INSERT INTO `score` VALUES ('63', '6', '162210702213', null, '2019-04-21 22:25:50', null);
INSERT INTO `score` VALUES ('64', '6', '1441904116', '60', '2019-04-21 22:29:20', '60');
INSERT INTO `score` VALUES ('66', '6', '162210702108', null, '2019-04-21 22:43:43', null);
INSERT INTO `score` VALUES ('67', '6', '162210807121', null, '2019-04-21 23:01:37', null);
INSERT INTO `score` VALUES ('68', '6', '162210702112', null, '2019-04-21 23:07:00', null);
INSERT INTO `score` VALUES ('69', '6', '162212002121', null, '2019-04-21 23:08:16', null);
INSERT INTO `score` VALUES ('70', '6', '162210702137', null, '2019-04-21 23:10:57', null);
INSERT INTO `score` VALUES ('71', '6', '162210702233', null, '2019-04-21 23:10:37', null);
INSERT INTO `score` VALUES ('72', '6', '162210702116', null, '2019-04-21 23:11:35', null);
INSERT INTO `score` VALUES ('73', '6', '162210702138', null, '2019-04-21 23:19:09', null);
INSERT INTO `score` VALUES ('74', '6', '162210702223', null, '2019-04-21 23:23:20', null);
INSERT INTO `score` VALUES ('75', '6', '162210702123', null, '2019-04-21 23:27:39', null);
INSERT INTO `score` VALUES ('76', '6', '162210702208', null, '2019-04-21 23:28:04', null);
INSERT INTO `score` VALUES ('77', '6', '162210702217', null, '2019-04-21 23:28:08', null);
INSERT INTO `score` VALUES ('78', '6', '162211903148', null, '2019-04-21 23:35:19', null);
INSERT INTO `score` VALUES ('79', '6', '162210702207', null, '2019-04-21 23:40:56', null);
INSERT INTO `score` VALUES ('80', '6', '162210702236', null, '2019-04-21 23:45:19', null);
INSERT INTO `score` VALUES ('82', '6', '162210702132', null, '2019-04-21 23:49:52', null);
INSERT INTO `score` VALUES ('83', '6', '162210702215', null, '2019-04-21 23:50:05', null);
INSERT INTO `score` VALUES ('84', '6', '162210702237', null, '2019-04-21 23:52:19', null);
INSERT INTO `score` VALUES ('85', '6', '162210702218', null, '2019-04-21 23:53:41', null);
INSERT INTO `score` VALUES ('86', '6', '162210702120', null, '2019-04-21 23:55:55', null);
INSERT INTO `score` VALUES ('87', '6', '162210702232', null, '2019-04-21 23:56:13', null);
INSERT INTO `score` VALUES ('89', '6', '162210702109', null, '2019-04-22 00:00:38', null);
INSERT INTO `score` VALUES ('90', '6', '162210902131', null, '2019-04-22 00:01:44', null);
INSERT INTO `score` VALUES ('91', '6', '162210702216', null, '2019-04-22 00:07:00', null);
INSERT INTO `score` VALUES ('92', '6', '162210702134', null, '2019-04-22 00:14:36', null);
INSERT INTO `score` VALUES ('93', '6', '162210702219', null, '2019-04-22 00:16:13', null);
INSERT INTO `score` VALUES ('94', '6', '162210702220', null, '2019-04-22 00:24:19', null);
INSERT INTO `score` VALUES ('95', '6', '162210702224', null, '2019-04-22 00:46:29', null);
INSERT INTO `score` VALUES ('96', '6', '162210702212', null, '2019-04-22 06:11:07', null);
INSERT INTO `score` VALUES ('97', '6', '162210702210', null, '2019-04-22 09:00:02', null);
INSERT INTO `score` VALUES ('98', '6', '162210702204', null, '2019-04-22 09:09:59', null);
INSERT INTO `score` VALUES ('99', '16', '162210702115', null, '2019-05-13 02:47:35', null);
INSERT INTO `score` VALUES ('100', '16', '162210702231', null, '2019-05-08 03:04:32', null);
INSERT INTO `score` VALUES ('101', '16', '162210702111', null, '2019-05-08 03:17:05', null);
INSERT INTO `score` VALUES ('102', '16', '162212002121', null, '2019-05-08 03:23:29', null);
INSERT INTO `score` VALUES ('103', '16', '162210702205', null, '2019-05-08 03:26:38', null);
INSERT INTO `score` VALUES ('104', '16', '162210702119', null, '2019-05-08 03:32:50', null);
INSERT INTO `score` VALUES ('105', '16', '162210203128', null, '2019-05-08 03:36:03', null);
INSERT INTO `score` VALUES ('106', '16', '162210702201', null, '2019-05-08 04:23:56', null);
INSERT INTO `score` VALUES ('107', '17', '182210712218', null, '2019-05-08 06:44:23', null);
INSERT INTO `score` VALUES ('108', '17', '182210712211', null, '2019-05-08 06:45:19', null);
INSERT INTO `score` VALUES ('109', '17', '182210712214', null, '2019-05-08 06:55:15', null);
INSERT INTO `score` VALUES ('110', '17', '182210712204', null, '2019-05-08 06:55:26', null);
INSERT INTO `score` VALUES ('111', '8', '182210712211', null, '2019-05-08 06:55:35', null);
INSERT INTO `score` VALUES ('112', '4', '182210712211', null, '2019-05-08 06:55:41', null);
INSERT INTO `score` VALUES ('113', '17', '182210712203', null, '2019-05-08 07:04:03', null);
INSERT INTO `score` VALUES ('114', '17', '182210712120', null, '2019-05-08 08:04:25', null);
INSERT INTO `score` VALUES ('115', '16', '162210702230', null, '2019-05-08 08:32:08', null);
INSERT INTO `score` VALUES ('116', '17', '182210712235', null, '2019-05-08 11:01:30', null);
INSERT INTO `score` VALUES ('117', '16', '162210702226', null, '2019-05-08 14:42:57', null);
INSERT INTO `score` VALUES ('118', '16', '162210702114', null, '2019-05-16 13:53:42', null);
INSERT INTO `score` VALUES ('119', '16', '162210702106', null, '2019-05-08 15:37:36', null);
INSERT INTO `score` VALUES ('120', '16', '162210702107', null, '2019-05-08 16:08:27', null);
INSERT INTO `score` VALUES ('121', '17', '182210712210', null, '2019-05-09 12:43:34', null);
INSERT INTO `score` VALUES ('122', '17', '182210712209', null, '2019-05-09 13:19:44', null);
INSERT INTO `score` VALUES ('123', '16', '162210702209', null, '2019-05-09 13:42:59', null);
INSERT INTO `score` VALUES ('124', '17', '182210712217', null, '2019-05-09 15:41:10', null);
INSERT INTO `score` VALUES ('125', '17', '182210712219', null, '2019-05-10 09:11:23', null);
INSERT INTO `score` VALUES ('126', '16', '162210702202', null, '2019-05-11 05:43:47', null);
INSERT INTO `score` VALUES ('127', '17', '182210712216', null, '2019-05-12 02:14:16', null);
INSERT INTO `score` VALUES ('128', '17', '182210712206', null, '2019-05-12 02:58:51', null);
INSERT INTO `score` VALUES ('129', '16', '162210702133', null, '2019-05-12 03:52:40', null);
INSERT INTO `score` VALUES ('130', '16', '162210702108', null, '2019-05-12 07:11:24', null);
INSERT INTO `score` VALUES ('131', '17', '182210712108', null, '2019-05-12 10:42:56', null);
INSERT INTO `score` VALUES ('132', '17', '182210712213', null, '2019-05-12 10:57:25', null);
INSERT INTO `score` VALUES ('133', '16', '162210702113', null, '2019-05-12 10:58:48', null);
INSERT INTO `score` VALUES ('134', '17', '182210712232', null, '2019-05-26 01:37:13', null);
INSERT INTO `score` VALUES ('135', '17', '182210712237', null, '2019-05-12 12:03:24', null);
INSERT INTO `score` VALUES ('136', '17', '182210712233', null, '2019-05-26 11:06:50', null);
INSERT INTO `score` VALUES ('137', '17', '182210712234', null, '2019-05-12 12:52:05', null);
INSERT INTO `score` VALUES ('138', '16', '162210807121', null, '2019-05-12 13:25:49', null);
INSERT INTO `score` VALUES ('139', '17', '182210712212', null, '2019-05-12 13:42:12', null);
INSERT INTO `score` VALUES ('140', '17', '182210712104', null, '2019-05-12 14:01:06', null);
INSERT INTO `score` VALUES ('141', '16', '162210702216', null, '2019-05-12 14:05:21', null);
INSERT INTO `score` VALUES ('142', '17', '182210712201', null, '2019-05-12 14:11:00', null);
INSERT INTO `score` VALUES ('143', '17', '182210712225', null, '2019-05-12 14:18:53', null);
INSERT INTO `score` VALUES ('144', '17', '182210712106', null, '2019-05-12 14:20:40', null);
INSERT INTO `score` VALUES ('145', '17', '182210712229', null, '2019-05-12 14:35:04', null);
INSERT INTO `score` VALUES ('146', '17', '182210712105', null, '2019-05-12 14:40:15', null);
INSERT INTO `score` VALUES ('147', '17', '182210712129', null, '2019-05-12 14:41:19', null);
INSERT INTO `score` VALUES ('148', '17', '182210712202', null, '2019-05-12 14:41:59', null);
INSERT INTO `score` VALUES ('149', '17', '182210712127', null, '2019-05-12 14:45:27', null);
INSERT INTO `score` VALUES ('150', '16', '162210702211', null, '2019-05-12 14:45:54', null);
INSERT INTO `score` VALUES ('151', '17', '182210712128', null, '2019-05-12 14:48:38', null);
INSERT INTO `score` VALUES ('152', '16', '162210702122', null, '2019-05-12 14:50:18', null);
INSERT INTO `score` VALUES ('153', '17', '182210712131', null, '2019-05-12 14:53:51', null);
INSERT INTO `score` VALUES ('154', '16', '162210702204', null, '2019-05-12 15:24:42', null);
INSERT INTO `score` VALUES ('155', '16', '162210702109', null, '2019-05-12 15:26:48', null);
INSERT INTO `score` VALUES ('156', '16', '162210702103', null, '2019-05-12 15:26:53', null);
INSERT INTO `score` VALUES ('157', '16', '162210702101', null, '2019-05-12 15:28:54', null);
INSERT INTO `score` VALUES ('158', '16', '162210702105', null, '2019-05-12 15:30:34', null);
INSERT INTO `score` VALUES ('159', '17', '182210712220', null, '2019-05-12 15:30:52', null);
INSERT INTO `score` VALUES ('160', '16', '162210702102', null, '2019-05-12 15:33:20', null);
INSERT INTO `score` VALUES ('161', '17', '182210712101', null, '2019-05-12 16:20:03', null);
INSERT INTO `score` VALUES ('162', '17', '182210712133', null, '2019-05-22 13:54:11', null);
INSERT INTO `score` VALUES ('163', '16', '162210702236', null, '2019-05-13 00:10:29', null);
INSERT INTO `score` VALUES ('164', '16', '162210702135', null, '2019-05-13 00:21:27', null);
INSERT INTO `score` VALUES ('165', '16', '162210702228', null, '2019-05-13 00:42:12', null);
INSERT INTO `score` VALUES ('166', '16', '162210702130', null, '2019-05-13 00:54:20', null);
INSERT INTO `score` VALUES ('167', '16', '162210702136', null, '2019-05-13 01:04:23', null);
INSERT INTO `score` VALUES ('168', '16', '162210702212', null, '2019-05-13 01:19:41', null);
INSERT INTO `score` VALUES ('169', '16', '162210702129', null, '2019-05-13 01:39:21', null);
INSERT INTO `score` VALUES ('170', '17', '182210712208', null, '2019-05-13 04:21:41', null);
INSERT INTO `score` VALUES ('171', '17', '182210712102', null, '2019-05-13 04:45:23', null);
INSERT INTO `score` VALUES ('172', '17', '182210712117', null, '2019-05-13 05:02:19', null);
INSERT INTO `score` VALUES ('173', '17', '182210712222', null, '2019-05-13 05:42:16', null);
INSERT INTO `score` VALUES ('174', '17', '182210712137', null, '2019-05-22 11:32:00', null);
INSERT INTO `score` VALUES ('175', '17', '182210712119', null, '2019-05-13 11:52:03', null);
INSERT INTO `score` VALUES ('176', '17', '182210712116', null, '2019-05-13 12:49:33', null);
INSERT INTO `score` VALUES ('177', '17', '182210712130', null, '2019-05-13 13:50:27', null);
INSERT INTO `score` VALUES ('178', '17', '182210712118', null, '2019-05-13 14:15:54', null);
INSERT INTO `score` VALUES ('179', '17', '182210712226', null, '2019-05-13 14:46:34', null);
INSERT INTO `score` VALUES ('180', '17', '182210712115', null, '2019-05-13 15:16:09', null);
INSERT INTO `score` VALUES ('181', '17', '182210712134', null, '2019-05-14 06:22:31', null);
INSERT INTO `score` VALUES ('182', '17', '182210712132', null, '2019-05-14 08:14:51', null);
INSERT INTO `score` VALUES ('183', '17', '182210712114', null, '2019-05-14 09:36:08', null);
INSERT INTO `score` VALUES ('184', '17', '182210712224', null, '2019-05-14 11:33:47', null);
INSERT INTO `score` VALUES ('185', '17', '182210712138', null, '2019-05-14 12:07:48', null);
INSERT INTO `score` VALUES ('186', '17', '182210712223', null, '2019-05-14 14:16:10', null);
INSERT INTO `score` VALUES ('187', '17', '182210712236', null, '2019-05-14 14:33:20', null);
INSERT INTO `score` VALUES ('188', '16', '162210702118', null, '2019-05-15 03:08:30', null);
INSERT INTO `score` VALUES ('189', '16', '162210702131', null, '2019-05-16 02:59:51', null);
INSERT INTO `score` VALUES ('190', '16', '162210702112', null, '2019-05-16 03:03:54', null);
INSERT INTO `score` VALUES ('191', '16', '162210702110', null, '2019-05-16 03:14:41', null);
INSERT INTO `score` VALUES ('192', '16', '162210702125', null, '2019-05-16 03:32:20', null);
INSERT INTO `score` VALUES ('193', '16', '162210201321', null, '2019-05-16 13:09:08', null);
INSERT INTO `score` VALUES ('194', '16', '162210702225', null, '2019-05-16 13:56:31', null);
INSERT INTO `score` VALUES ('195', '16', '162210702207', null, '2019-05-16 14:01:15', null);
INSERT INTO `score` VALUES ('196', '16', '162210702227', null, '2019-05-16 14:00:47', null);
INSERT INTO `score` VALUES ('197', '16', '162210702223', null, '2019-05-16 14:06:26', null);
INSERT INTO `score` VALUES ('198', '16', '162210702123', null, '2019-05-16 14:20:16', null);
INSERT INTO `score` VALUES ('199', '17', '182210712113', null, '2019-05-16 14:36:49', null);
INSERT INTO `score` VALUES ('200', '16', '162210702215', null, '2019-05-16 14:37:38', null);
INSERT INTO `score` VALUES ('201', '16', '1441904116', null, '2019-05-16 14:39:14', null);
INSERT INTO `score` VALUES ('202', '16', '162210702117', null, '2019-05-16 14:42:49', null);
INSERT INTO `score` VALUES ('203', '16', '162210702120', null, '2019-05-16 14:45:28', null);
INSERT INTO `score` VALUES ('204', '16', '162210702132', null, '2019-05-16 14:46:24', null);
INSERT INTO `score` VALUES ('205', '16', '162210702203', null, '2019-05-16 14:52:58', null);
INSERT INTO `score` VALUES ('206', '16', '162210702206', null, '2019-05-16 15:04:14', null);
INSERT INTO `score` VALUES ('207', '16', '162210702128', null, '2019-05-16 15:08:04', null);
INSERT INTO `score` VALUES ('208', '16', '162210702221', null, '2019-05-16 15:11:05', null);
INSERT INTO `score` VALUES ('209', '16', '162210702104', null, '2019-05-16 15:29:06', null);
INSERT INTO `score` VALUES ('210', '16', '162210702232', null, '2019-05-16 15:48:00', null);
INSERT INTO `score` VALUES ('211', '16', '162210702137', null, '2019-05-17 03:11:23', null);
INSERT INTO `score` VALUES ('212', '16', '162210702214', null, '2019-05-17 07:24:48', null);
INSERT INTO `score` VALUES ('213', '16', '162211903148', null, '2019-05-17 08:30:15', null);
INSERT INTO `score` VALUES ('214', '16', '162210702217', null, '2019-05-17 15:25:16', null);
INSERT INTO `score` VALUES ('215', '16', '162210702127', null, '2019-05-18 04:22:21', null);
INSERT INTO `score` VALUES ('216', '16', '162210702124', null, '2019-05-18 05:28:15', null);
INSERT INTO `score` VALUES ('217', '16', '162210702121', null, '2019-05-18 05:29:31', null);
INSERT INTO `score` VALUES ('218', '16', '162210702224', null, '2019-05-18 06:11:01', null);
INSERT INTO `score` VALUES ('219', '16', '162210702235', null, '2019-05-19 02:21:11', null);
INSERT INTO `score` VALUES ('220', '16', '162210702210', null, '2019-05-19 05:12:59', null);
INSERT INTO `score` VALUES ('221', '16', '162210702220', null, '2019-05-19 09:24:26', null);
INSERT INTO `score` VALUES ('222', '16', '162210702218', null, '2019-05-19 09:59:05', null);
INSERT INTO `score` VALUES ('223', '16', '162210702134', null, '2019-05-19 11:50:46', null);
INSERT INTO `score` VALUES ('224', '16', '162210702213', null, '2019-05-19 12:46:54', null);
INSERT INTO `score` VALUES ('225', '8', '182210712128', null, '2019-05-19 14:28:43', null);
INSERT INTO `score` VALUES ('226', '4', '182210712128', null, '2019-05-19 14:28:58', null);
INSERT INTO `score` VALUES ('227', '16', '162210702233', null, '2019-05-19 15:56:23', null);
INSERT INTO `score` VALUES ('228', '16', '162210902131', null, '2019-05-19 16:01:47', null);
INSERT INTO `score` VALUES ('229', '16', '162210702237', null, '2019-05-19 16:10:35', null);
INSERT INTO `score` VALUES ('230', '19', '162210702127', null, '2019-05-22 10:03:59', null);
INSERT INTO `score` VALUES ('231', '19', '162210702106', null, '2019-05-22 10:09:06', null);
INSERT INTO `score` VALUES ('232', '19', '162210702115', null, '2019-05-22 10:09:44', null);
INSERT INTO `score` VALUES ('233', '19', '162210702226', null, '2019-05-22 10:24:13', null);
INSERT INTO `score` VALUES ('234', '19', '162210702109', null, '2019-05-22 10:41:18', null);
INSERT INTO `score` VALUES ('235', '17', '182210712110', null, '2019-05-22 10:34:07', null);
INSERT INTO `score` VALUES ('236', '19', '162210702201', null, '2019-05-22 11:04:54', null);
INSERT INTO `score` VALUES ('237', '17', '182210712123', null, '2019-05-22 11:16:18', null);
INSERT INTO `score` VALUES ('238', '19', '162210201321', null, '2019-05-22 11:26:38', null);
INSERT INTO `score` VALUES ('239', '17', '182210712121', null, '2019-05-22 11:33:58', null);
INSERT INTO `score` VALUES ('240', '17', '182210712122', null, '2019-05-22 11:34:09', null);
INSERT INTO `score` VALUES ('241', '18', '182210712124', null, '2019-05-22 11:38:02', null);
INSERT INTO `score` VALUES ('242', '17', '182210712124', null, '2019-05-22 11:39:37', null);
INSERT INTO `score` VALUES ('243', '18', '182210712120', null, '2019-05-22 12:42:00', null);
INSERT INTO `score` VALUES ('244', '17', '182210712227', null, '2019-05-22 12:45:24', null);
INSERT INTO `score` VALUES ('245', '19', '162210702135', null, '2019-05-22 13:07:34', null);
INSERT INTO `score` VALUES ('246', '19', '162210702235', null, '2019-05-22 13:18:40', null);
INSERT INTO `score` VALUES ('247', '19', '162210702208', null, '2019-05-22 13:21:05', null);
INSERT INTO `score` VALUES ('248', '18', '182210712133', null, '2019-05-26 14:27:07', null);
INSERT INTO `score` VALUES ('249', '18', '182210712110', null, '2019-05-22 14:12:33', null);
INSERT INTO `score` VALUES ('250', '17', '182210712111', null, '2019-05-22 14:17:58', null);
INSERT INTO `score` VALUES ('251', '17', '182210712112', null, '2019-05-22 14:46:25', null);
INSERT INTO `score` VALUES ('252', '19', '162210702102', null, '2019-05-22 14:57:32', null);
INSERT INTO `score` VALUES ('253', '19', '162210702134', null, '2019-05-22 15:04:38', null);
INSERT INTO `score` VALUES ('254', '19', '162210702202', null, '2019-05-22 15:26:38', null);
INSERT INTO `score` VALUES ('255', '18', '182210712128', null, '2019-05-22 16:04:48', null);
INSERT INTO `score` VALUES ('256', '19', '162210702216', null, '2019-05-22 16:08:48', null);
INSERT INTO `score` VALUES ('257', '19', '162210702236', null, '2019-05-27 15:10:42', null);
INSERT INTO `score` VALUES ('258', '18', '182210712231', null, '2019-05-23 04:00:52', null);
INSERT INTO `score` VALUES ('259', '19', '162210702120', null, '2019-05-23 04:42:40', null);
INSERT INTO `score` VALUES ('260', '18', '182210712107', null, '2019-06-10 05:59:13', null);
INSERT INTO `score` VALUES ('261', '18', '182210712206', null, '2019-05-25 13:09:39', null);
INSERT INTO `score` VALUES ('262', '18', '182210712232', null, '2019-05-26 01:36:21', null);
INSERT INTO `score` VALUES ('263', '8', '182210712232', null, '2019-05-26 01:37:26', null);
INSERT INTO `score` VALUES ('264', '4', '182210712232', null, '2019-05-26 01:37:37', null);
INSERT INTO `score` VALUES ('265', '18', '182210712235', null, '2019-05-26 02:20:44', null);
INSERT INTO `score` VALUES ('266', '19', '162210702138', null, '2019-05-26 11:18:19', null);
INSERT INTO `score` VALUES ('267', '18', '182210712211', null, '2019-05-26 12:31:21', null);
INSERT INTO `score` VALUES ('268', '18', '182210712236', null, '2019-05-26 12:33:01', null);
INSERT INTO `score` VALUES ('269', '18', '182210712237', null, '2019-05-26 12:42:08', null);
INSERT INTO `score` VALUES ('270', '18', '182210712210', null, '2019-05-26 13:00:07', null);
INSERT INTO `score` VALUES ('271', '18', '182210712203', null, '2019-05-26 13:17:17', null);
INSERT INTO `score` VALUES ('272', '18', '182210712234', null, '2019-05-26 13:37:43', null);
INSERT INTO `score` VALUES ('273', '18', '182210712233', null, '2019-05-26 14:01:12', null);
INSERT INTO `score` VALUES ('274', '18', '182210712213', null, '2019-05-26 14:08:39', null);
INSERT INTO `score` VALUES ('275', '18', '182210712130', null, '2019-05-26 14:46:52', null);
INSERT INTO `score` VALUES ('276', '18', '182210712201', null, '2019-05-26 15:42:44', null);
INSERT INTO `score` VALUES ('277', '18', '182210712229', null, '2019-05-26 16:02:33', null);
INSERT INTO `score` VALUES ('278', '19', '162210702131', null, '2019-05-27 00:37:34', null);
INSERT INTO `score` VALUES ('279', '17', '182210712231', null, '2019-05-27 03:51:35', null);
INSERT INTO `score` VALUES ('280', '20', '182210712217', null, '2019-06-17 14:41:43', null);
INSERT INTO `score` VALUES ('281', '17', '182210712136', null, '2019-05-27 04:39:34', null);
INSERT INTO `score` VALUES ('282', '18', '182210712114', null, '2019-05-27 09:55:14', null);
INSERT INTO `score` VALUES ('283', '18', '182210712204', null, '2019-05-27 11:18:27', null);
INSERT INTO `score` VALUES ('284', '17', '182210712107', null, '2019-05-27 12:33:47', null);
INSERT INTO `score` VALUES ('285', '18', '182210712108', null, '2019-05-27 14:01:24', null);
INSERT INTO `score` VALUES ('286', '18', '182210712222', null, '2019-05-27 14:14:09', null);
INSERT INTO `score` VALUES ('287', '20', '182210712228', null, '2019-05-27 14:35:43', null);
INSERT INTO `score` VALUES ('288', '21', '162210702106', null, '2019-05-27 15:00:47', null);
INSERT INTO `score` VALUES ('289', '21', '162210702236', null, '2019-05-27 15:04:25', null);
INSERT INTO `score` VALUES ('290', '21', '162210702101', null, '2019-05-27 15:25:49', null);
INSERT INTO `score` VALUES ('291', '21', '162210702109', null, '2019-05-27 15:55:55', null);
INSERT INTO `score` VALUES ('292', '21', '162210702235', null, '2019-06-16 12:08:32', null);
INSERT INTO `score` VALUES ('293', '21', '162210702134', null, '2019-05-27 15:56:38', null);
INSERT INTO `score` VALUES ('294', '21', '162210702208', null, '2019-05-27 17:14:04', null);
INSERT INTO `score` VALUES ('295', '21', '162210702115', null, '2019-05-28 00:14:19', null);
INSERT INTO `score` VALUES ('303', '21', '162210702202', null, '2019-05-28 01:44:58', null);
INSERT INTO `score` VALUES ('304', '21', '162210702216', null, '2019-05-28 01:46:27', null);
INSERT INTO `score` VALUES ('309', '21', '162210702226', null, '2019-05-28 02:00:53', null);
INSERT INTO `score` VALUES ('317', '18', '182210712219', null, '2019-05-28 07:10:32', null);
INSERT INTO `score` VALUES ('323', '21', '162210702209', null, '2019-05-28 10:39:34', null);
INSERT INTO `score` VALUES ('324', '21', '162210702120', null, '2019-05-28 11:00:51', null);
INSERT INTO `score` VALUES ('325', '17', '182210712205', null, '2019-05-28 13:09:35', null);
INSERT INTO `score` VALUES ('326', '17', '182210712230', null, '2019-05-28 13:18:55', null);
INSERT INTO `score` VALUES ('327', '18', '182210712216', null, '2019-05-28 13:41:13', null);
INSERT INTO `score` VALUES ('331', '18', '182210712129', null, '2019-05-28 15:01:09', null);
INSERT INTO `score` VALUES ('332', '20', '182210712131', null, '2019-06-17 15:50:18', null);
INSERT INTO `score` VALUES ('340', '18', '182210712127', null, '2019-05-29 08:09:52', null);
INSERT INTO `score` VALUES ('341', '18', '182210712132', null, '2019-05-29 08:50:05', null);
INSERT INTO `score` VALUES ('342', '21', '162210702127', null, '2019-05-29 10:03:59', null);
INSERT INTO `score` VALUES ('344', '21', '162210702138', null, '2019-05-29 11:21:05', null);
INSERT INTO `score` VALUES ('345', '18', '182210712208', null, '2019-05-29 13:21:04', null);
INSERT INTO `score` VALUES ('348', '21', '162210702131', null, '2019-05-29 14:52:33', null);
INSERT INTO `score` VALUES ('359', '18', '182210712214', null, '2019-05-30 10:47:02', null);
INSERT INTO `score` VALUES ('392', '21', '162210702135', null, '2019-06-02 08:12:27', null);
INSERT INTO `score` VALUES ('394', '20', '182210712104', null, '2019-06-10 10:34:16', null);
INSERT INTO `score` VALUES ('395', '18', '182210712106', null, '2019-06-02 14:01:47', null);
INSERT INTO `score` VALUES ('396', '18', '182210712104', null, '2019-06-02 14:02:56', null);
INSERT INTO `score` VALUES ('397', '18', '182210712103', null, '2019-06-02 14:08:43', null);
INSERT INTO `score` VALUES ('398', '18', '182210712102', null, '2019-06-02 14:24:34', null);
INSERT INTO `score` VALUES ('399', '18', '182210712101', null, '2019-06-02 14:26:48', null);
INSERT INTO `score` VALUES ('400', '18', '182210712105', null, '2019-06-02 14:28:16', null);
INSERT INTO `score` VALUES ('401', '18', '182210712116', null, '2019-06-03 12:55:45', null);
INSERT INTO `score` VALUES ('403', '20', '182210712106', null, '2019-06-10 10:36:45', null);
INSERT INTO `score` VALUES ('404', '18', '182210712227', null, '2019-06-08 06:15:36', null);
INSERT INTO `score` VALUES ('405', '20', '182210712114', null, '2019-06-10 08:25:58', null);
INSERT INTO `score` VALUES ('406', '20', '182210712102', null, '2019-06-10 10:36:51', null);
INSERT INTO `score` VALUES ('407', '20', '182210712235', null, '2019-06-10 12:11:48', null);
INSERT INTO `score` VALUES ('408', '20', '182210712101', null, '2019-06-10 14:48:06', null);
INSERT INTO `score` VALUES ('409', '20', '182210712219', null, '2019-06-12 03:43:26', null);
INSERT INTO `score` VALUES ('410', '20', '182210712105', null, '2019-06-12 10:59:10', null);
INSERT INTO `score` VALUES ('411', '20', '182210712103', null, '2019-06-12 11:01:13', null);
INSERT INTO `score` VALUES ('412', '20', '182210712234', null, '2019-06-12 14:15:33', null);
INSERT INTO `score` VALUES ('413', '20', '182210712236', null, '2019-06-12 14:57:26', null);
INSERT INTO `score` VALUES ('414', '20', '182210712233', null, '2019-06-12 15:05:23', null);
INSERT INTO `score` VALUES ('415', '20', '182210712120', null, '2019-06-13 04:41:22', null);
INSERT INTO `score` VALUES ('416', '20', '182210712237', null, '2019-06-13 12:54:34', null);
INSERT INTO `score` VALUES ('417', '20', '182210712110', null, '2019-06-13 13:31:03', null);
INSERT INTO `score` VALUES ('439', '20', '182210712232', null, '2019-06-15 02:14:51', null);
INSERT INTO `score` VALUES ('440', '20', '182210712118', null, '2019-06-15 03:32:07', null);
INSERT INTO `score` VALUES ('441', '20', '182210712117', null, '2019-06-15 03:35:47', null);
INSERT INTO `score` VALUES ('442', '18', '182210712119', null, '2019-06-15 03:45:57', null);
INSERT INTO `score` VALUES ('443', '20', '182210712119', null, '2019-06-15 03:48:02', null);
INSERT INTO `score` VALUES ('497', '20', '182210712123', null, '2019-06-17 04:06:39', null);
INSERT INTO `score` VALUES ('498', '20', '182210712115', null, '2019-06-17 04:31:05', null);
INSERT INTO `score` VALUES ('499', '20', '182210712113', null, '2019-06-17 04:33:00', null);
INSERT INTO `score` VALUES ('500', '18', '182210712113', null, '2019-06-17 04:33:14', null);
INSERT INTO `score` VALUES ('502', '20', '182210712216', null, '2019-06-17 04:36:52', null);
INSERT INTO `score` VALUES ('503', '20', '182210712116', null, '2019-06-17 04:39:03', null);
INSERT INTO `score` VALUES ('504', '20', '182210712133', null, '2019-06-17 04:47:42', null);
INSERT INTO `score` VALUES ('505', '20', '182210712226', null, '2019-06-17 04:58:20', null);
INSERT INTO `score` VALUES ('506', '8', '182210712226', null, '2019-06-17 05:04:11', null);
INSERT INTO `score` VALUES ('507', '20', '182210712203', null, '2019-06-17 05:02:33', null);
INSERT INTO `score` VALUES ('508', '4', '182210712226', null, '2019-06-17 05:03:43', null);
INSERT INTO `score` VALUES ('509', '20', '182210712204', null, '2019-06-17 05:14:26', null);
INSERT INTO `score` VALUES ('510', '20', '182210712128', null, '2019-06-17 05:25:24', null);
INSERT INTO `score` VALUES ('511', '20', '182210712214', null, '2019-06-17 05:27:37', null);
INSERT INTO `score` VALUES ('512', '20', '182210712229', null, '2019-06-17 10:32:10', null);
INSERT INTO `score` VALUES ('513', '20', '182210712201', null, '2019-06-17 10:31:52', null);
INSERT INTO `score` VALUES ('514', '18', '182210712226', null, '2019-06-17 11:01:40', null);
INSERT INTO `score` VALUES ('515', '18', '182210712225', null, '2019-06-17 11:35:39', null);
INSERT INTO `score` VALUES ('516', '20', '182210712227', null, '2019-06-17 11:39:08', null);
INSERT INTO `score` VALUES ('517', '20', '182210712225', null, '2019-06-17 12:03:08', null);
INSERT INTO `score` VALUES ('518', '20', '182210712111', null, '2019-06-17 12:07:36', null);
INSERT INTO `score` VALUES ('519', '18', '182210712111', null, '2019-06-17 12:08:27', null);
INSERT INTO `score` VALUES ('520', '20', '182210712213', null, '2019-06-17 12:12:19', null);
INSERT INTO `score` VALUES ('521', '20', '182210712206', null, '2019-06-17 12:27:59', null);
INSERT INTO `score` VALUES ('522', '20', '182210712109', null, '2019-06-17 12:36:44', null);
INSERT INTO `score` VALUES ('523', '20', '182210712208', null, '2019-06-17 12:39:19', null);
INSERT INTO `score` VALUES ('524', '20', '182210712209', null, '2019-06-17 13:05:02', null);
INSERT INTO `score` VALUES ('525', '20', '182210712218', null, '2019-06-17 13:36:15', null);
INSERT INTO `score` VALUES ('526', '20', '182210712211', null, '2019-06-17 13:53:31', null);
INSERT INTO `score` VALUES ('527', '20', '182210712230', null, '2019-06-17 15:03:21', null);
INSERT INTO `score` VALUES ('528', '20', '182210712129', null, '2019-06-17 15:18:05', null);
INSERT INTO `score` VALUES ('529', '20', '182210712127', null, '2019-06-17 15:34:49', null);
INSERT INTO `score` VALUES ('530', '20', '182210712130', null, '2019-06-17 15:43:40', null);
INSERT INTO `score` VALUES ('531', '20', '182210712132', null, '2019-06-18 04:31:12', null);
INSERT INTO `score` VALUES ('532', '20', '182210712231', null, '2019-06-18 04:39:07', null);
INSERT INTO `score` VALUES ('533', '20', '182210712107', null, '2019-06-18 11:07:40', null);
INSERT INTO `score` VALUES ('534', '20', '182210712210', null, '2019-06-18 11:26:08', null);
INSERT INTO `score` VALUES ('535', '20', '182210712108', null, '2019-06-18 11:28:09', null);
INSERT INTO `score` VALUES ('536', '20', '182210712205', null, '2019-06-19 02:55:41', null);
INSERT INTO `score` VALUES ('537', '20', '182210712122', null, '2019-06-20 09:31:32', null);
INSERT INTO `score` VALUES ('538', '20', '182210712125', null, '2019-06-20 09:56:47', null);
INSERT INTO `score` VALUES ('539', '20', '182210712124', null, '2019-06-20 09:59:22', null);
INSERT INTO `score` VALUES ('540', '20', '182210712112', null, '2019-06-20 11:18:04', null);
INSERT INTO `score` VALUES ('541', '18', '182210712224', null, '2019-06-20 12:06:13', null);
INSERT INTO `score` VALUES ('542', '20', '182210712224', null, '2019-06-20 12:06:44', null);
INSERT INTO `score` VALUES ('543', '27', '162210702208', null, '2019-06-20 12:27:20', null);
INSERT INTO `score` VALUES ('544', '20', '182210712223', null, '2019-06-20 14:32:58', null);
INSERT INTO `score` VALUES ('545', '27', '162210702106', null, '2019-06-20 12:59:01', null);
INSERT INTO `score` VALUES ('546', '18', '182210712223', null, '2019-06-20 14:31:52', null);
INSERT INTO `score` VALUES ('547', '20', '182210712138', null, '2019-06-20 14:44:47', null);
INSERT INTO `score` VALUES ('548', '18', '182210712221', null, '2019-06-20 14:51:01', null);
INSERT INTO `score` VALUES ('549', '20', '182210712202', null, '2019-06-20 14:51:14', null);
INSERT INTO `score` VALUES ('550', '20', '182210712221', null, '2019-06-20 14:51:17', null);
INSERT INTO `score` VALUES ('551', '27', '162210702204', null, '2019-06-20 16:00:26', null);
INSERT INTO `score` VALUES ('552', '27', '162210702228', null, '2019-06-20 16:35:40', null);
INSERT INTO `score` VALUES ('553', '27', '162210702202', null, '2019-06-20 16:46:00', null);
INSERT INTO `score` VALUES ('554', '27', '162210702138', null, '2019-06-21 06:39:05', null);
INSERT INTO `score` VALUES ('555', '27', '162210702127', null, '2019-06-21 09:36:45', null);
INSERT INTO `score` VALUES ('556', '18', '182210712220', null, '2019-06-21 12:21:42', null);
INSERT INTO `score` VALUES ('557', '20', '182210712220', null, '2019-06-21 12:21:55', null);
INSERT INTO `score` VALUES ('558', '27', '162210702211', null, '2019-06-21 13:58:31', null);
INSERT INTO `score` VALUES ('559', '20', '182210712212', null, '2019-06-23 02:20:33', null);
INSERT INTO `score` VALUES ('560', '27', '162210702120', null, '2019-06-23 06:35:13', null);
INSERT INTO `score` VALUES ('562', '27', '162210702131', null, '2019-06-23 12:36:22', null);
INSERT INTO `score` VALUES ('563', '27', '162210201321', null, '2019-06-23 12:51:31', null);
INSERT INTO `score` VALUES ('568', '27', '162210807121', null, '2019-06-23 14:08:34', null);
INSERT INTO `score` VALUES ('572', '27', '162210702102', null, '2019-06-24 05:55:45', null);
INSERT INTO `score` VALUES ('573', '27', '162210702134', null, '2019-06-24 06:38:55', null);
INSERT INTO `score` VALUES ('574', '27', '162210702223', null, '2019-06-24 06:51:16', null);
INSERT INTO `score` VALUES ('576', '27', '162210702135', null, '2019-06-25 02:34:04', null);
INSERT INTO `score` VALUES ('589', '27', '162210702224', null, '2019-06-26 08:17:24', null);
INSERT INTO `score` VALUES ('590', '29', '162210702234', null, '2019-09-30 10:03:27', null);
INSERT INTO `score` VALUES ('591', '30', '162210702234', null, '2019-10-01 22:21:45', null);
INSERT INTO `score` VALUES ('592', '31', '162210702234', null, '2020-06-02 00:56:19', null);
INSERT INTO `score` VALUES ('593', '31', '162210702110', null, '2020-06-02 05:44:09', null);
INSERT INTO `score` VALUES ('594', '31', '162210702116', null, '2020-06-02 04:05:33', null);
INSERT INTO `score` VALUES ('595', '31', '162210702226', null, '2020-06-02 04:09:41', null);
INSERT INTO `score` VALUES ('596', '31', '162210702223', null, '2020-06-02 04:10:38', null);
INSERT INTO `score` VALUES ('597', '31', '162210702236', null, '2020-06-02 05:11:44', null);
INSERT INTO `score` VALUES ('598', '31', '162210203128', null, '2020-06-02 06:11:58', null);
INSERT INTO `score` VALUES ('599', '31', '162211903148', null, '2020-06-02 06:09:29', null);
INSERT INTO `score` VALUES ('600', '31', '162210702237', null, '2020-06-02 06:10:01', null);
INSERT INTO `score` VALUES ('601', '31', '162210702231', null, '2020-06-02 06:28:41', null);
INSERT INTO `score` VALUES ('602', '31', '162210702233', null, '2020-06-02 06:38:26', null);
INSERT INTO `score` VALUES ('603', '31', '162210702117', null, '2020-06-02 06:50:42', null);
INSERT INTO `score` VALUES ('604', '31', '162210702216', null, '2020-06-02 12:14:38', null);
INSERT INTO `score` VALUES ('605', '31', '162210702224', null, '2020-06-02 12:44:08', null);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `studentno` varchar(20) NOT NULL,
  `name` varchar(8) DEFAULT NULL,
  `pinyin` varchar(20) DEFAULT NULL COMMENT '姓名的拼音，防止不认识生僻字',
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`studentno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1100888', '张思', 'zhang1si1', '123456789');
INSERT INTO `student` VALUES ('1441904116', '蒋宇', 'jiang3yu3', '1441904116');
INSERT INTO `student` VALUES ('1441904231', '谢嘉云', 'xie4jia1yun2', '1441904231');
INSERT INTO `student` VALUES ('152210702113', '凌晓玮', 'ling2xiao3wei3', '152210702113');
INSERT INTO `student` VALUES ('152210702132', '徐少成', 'xu2shao3cheng2', '152210702132');
INSERT INTO `student` VALUES ('162210201321', '史经犇', 'shi3jing1ben1', '162210201321');
INSERT INTO `student` VALUES ('162210203128', '夏锦桦', 'xia4jin3hua4', '162210203128');
INSERT INTO `student` VALUES ('162210702101', '陈希慧', 'chen2xi1hui4', '162210702101');
INSERT INTO `student` VALUES ('162210702102', '方敏', 'fang1min3', '162210702102');
INSERT INTO `student` VALUES ('162210702103', '陶也', 'tao2ye3', '162210702103');
INSERT INTO `student` VALUES ('162210702104', '杨臻', 'yang2zhen1', '162210702104');
INSERT INTO `student` VALUES ('162210702105', '张沁涵', 'zhang1qin4han2', '162210702105');
INSERT INTO `student` VALUES ('162210702106', '包轩宇', 'bao1xuan1yu3', '162210702106');
INSERT INTO `student` VALUES ('162210702107', '陈博', 'chen2bo2', '162210702107');
INSERT INTO `student` VALUES ('162210702108', '陈浩田', 'chen2hao4tian2', '162210702108');
INSERT INTO `student` VALUES ('162210702109', '邓佳程', 'deng4jia1cheng2', '162210702109');
INSERT INTO `student` VALUES ('162210702110', '伏广宇', 'fu2guang3yu3', '162210702110');
INSERT INTO `student` VALUES ('162210702111', '耿铃迪', 'geng3ling2di2', '162210702111');
INSERT INTO `student` VALUES ('162210702112', '郭晋', 'guo1jin4', '162210702112');
INSERT INTO `student` VALUES ('162210702113', '郭帅民', 'guo1shuai4min2', '162210702113');
INSERT INTO `student` VALUES ('162210702114', '何益豪', 'he2yi4hao2', '162210702114');
INSERT INTO `student` VALUES ('162210702115', '贺文杰', 'he4wen2jie2', 'hejsp8888');
INSERT INTO `student` VALUES ('162210702116', '胡清', 'hu2qing1', '162210702116');
INSERT INTO `student` VALUES ('162210702117', '黄秋斌', 'huang2qiu1bin1', '162210702117');
INSERT INTO `student` VALUES ('162210702118', '姜福福', 'jiang1fu2fu2', '162210702118');
INSERT INTO `student` VALUES ('162210702119', '蒋韫骋', 'jiang3yun4cheng3', '162210702119');
INSERT INTO `student` VALUES ('162210702120', '刘记', 'liu2ji4', '162210702120');
INSERT INTO `student` VALUES ('162210702121', '孟凡猛', 'meng4fan2meng3', '162210702121');
INSERT INTO `student` VALUES ('162210702122', '潘饶', 'pan1rao2', 'panrao980320');
INSERT INTO `student` VALUES ('162210702123', '彭敬召', 'peng2jing4zhao4', '162210702123');
INSERT INTO `student` VALUES ('162210702124', '施宇', 'shi1yu3', '162210702124');
INSERT INTO `student` VALUES ('162210702125', '石树奇', 'shi2shu4qi2', '162210702125');
INSERT INTO `student` VALUES ('162210702127', '王贝贝', 'wang2bei4bei4', '162210702127');
INSERT INTO `student` VALUES ('162210702128', '王铭坤', 'wang2ming2kun1', '162210702128');
INSERT INTO `student` VALUES ('162210702129', '王延锋', 'wang2yan2feng1', '162210702129');
INSERT INTO `student` VALUES ('162210702130', '王韵博', 'wang2yun4bo2', '162210702130');
INSERT INTO `student` VALUES ('162210702131', '向益宏', 'xiang4yi4hong2', '162210702131');
INSERT INTO `student` VALUES ('162210702132', '杨佳辉', 'yang2jia1hui1', '162210702132');
INSERT INTO `student` VALUES ('162210702133', '郁正远', 'yu4zheng4yuan3', '162210702133');
INSERT INTO `student` VALUES ('162210702134', '张冲', 'zhang1chong1', '2bLH6otFfkPPMBQ');
INSERT INTO `student` VALUES ('162210702135', '张俊涛', 'zhang1jun4tao1', '162210702135');
INSERT INTO `student` VALUES ('162210702136', '张文', 'zhang1wen2', '162210702136');
INSERT INTO `student` VALUES ('162210702137', '赵逸非', 'zhao4yi4fei1', '162210702137');
INSERT INTO `student` VALUES ('162210702138', '朱皓秋', 'zhu1hao4qiu1', '162210702138');
INSERT INTO `student` VALUES ('162210702201', '邓石铜', 'deng4shi2tong2', '162210702201');
INSERT INTO `student` VALUES ('162210702202', '倪佳敏', 'ni2jia1min3', '162210702202');
INSERT INTO `student` VALUES ('162210702203', '薛雅文', 'xue1ya3wen2', '162210702203');
INSERT INTO `student` VALUES ('162210702204', '张成红', 'zhang1cheng2hong2', '162210702204');
INSERT INTO `student` VALUES ('162210702205', '张旭', 'zhang1xu4', '162210702205');
INSERT INTO `student` VALUES ('162210702206', '车玉华', 'che1yu4hua2', '162210702206');
INSERT INTO `student` VALUES ('162210702207', '陈浩明', 'chen2hao4ming2', '162210702207');
INSERT INTO `student` VALUES ('162210702208', '陈俊达', 'chen2jun4da2', '162210702208');
INSERT INTO `student` VALUES ('162210702209', '范家华', 'fan4jia1hua2', '162210702209');
INSERT INTO `student` VALUES ('162210702210', '付前程', 'fu4qian2cheng2', '162210702210');
INSERT INTO `student` VALUES ('162210702211', '顾培译', 'gu4pei2yi4', '162210702211');
INSERT INTO `student` VALUES ('162210702212', '郭亮', 'guo1liang4', '162210702212');
INSERT INTO `student` VALUES ('162210702213', '韩玉皇', 'han2yu4huang2', '162210702213');
INSERT INTO `student` VALUES ('162210702214', '何子晗', 'he2zi5han2', '162210702214');
INSERT INTO `student` VALUES ('162210702215', '胡明明', 'hu2ming2ming2', '162210702215');
INSERT INTO `student` VALUES ('162210702216', '黄培林', 'huang2pei2lin2', '162210702216');
INSERT INTO `student` VALUES ('162210702217', '蒋昊轩', 'jiang3hao4xuan1', '162210702217');
INSERT INTO `student` VALUES ('162210702218', '李健', 'li3jian4', '162210702218');
INSERT INTO `student` VALUES ('162210702219', '刘源', 'liu2yuan2', '162210702219');
INSERT INTO `student` VALUES ('162210702220', '莫璐禹', 'mo4lu4yu3', '162210702220');
INSERT INTO `student` VALUES ('162210702221', '潘科棋', 'pan1ke1qi2', '162210702221');
INSERT INTO `student` VALUES ('162210702222', '潘雪祺', 'pan1xue3qi2', '162210702222');
INSERT INTO `student` VALUES ('162210702223', '钱前', 'qian2qian2', '162210702223');
INSERT INTO `student` VALUES ('162210702224', '史旭烜', 'shi3xu4xuan3', '162210702224');
INSERT INTO `student` VALUES ('162210702225', '唐程远', 'tang2cheng2yuan3', '162210702225');
INSERT INTO `student` VALUES ('162210702226', '汪远材', 'wang1yuan3cai2', '162210702226');
INSERT INTO `student` VALUES ('162210702227', '王彬', 'wang2bin1', '162210702227');
INSERT INTO `student` VALUES ('162210702228', '王天鹏', 'wang2tian1peng2', '162210702228');
INSERT INTO `student` VALUES ('162210702229', '王峥力', 'wang2zheng1li4', '162210702229');
INSERT INTO `student` VALUES ('162210702230', '严晨旭', 'yan2chen2xu4', '162210702230');
INSERT INTO `student` VALUES ('162210702231', '印正荣', 'yin4zheng4rong2', '162210702231');
INSERT INTO `student` VALUES ('162210702232', '袁野', 'yuan2ye3', '162210702232');
INSERT INTO `student` VALUES ('162210702233', '张海鹏', 'zhang1hai3peng2', '162210702233');
INSERT INTO `student` VALUES ('162210702234', '张赛', 'zhang1sai4', '162210702234');
INSERT INTO `student` VALUES ('162210702235', '张子杰', 'zhang1zi5jie2', '162210702235');
INSERT INTO `student` VALUES ('162210702236', '仲虎', 'zhong4hu3', '162210702236');
INSERT INTO `student` VALUES ('162210702237', '周泽', 'zhou1ze2', '162210702237');
INSERT INTO `student` VALUES ('162210807121', '阮玉祥', 'ruan3yu4xiang2', '162210807121');
INSERT INTO `student` VALUES ('162210902131', '王继福', 'wang2ji4fu2', '162210902131');
INSERT INTO `student` VALUES ('162211903148', '赵鑫', 'zhao4xin1', '162211903148');
INSERT INTO `student` VALUES ('162212002121', '黄相杰', 'huang2xiang1jie2', 'abc123');
INSERT INTO `student` VALUES ('16331020', '赛张', 'saizhang66', '165555');
INSERT INTO `student` VALUES ('182210711115', '侯杰', 'hou4jie2', '182210711115');
INSERT INTO `student` VALUES ('182210712101', '艾维', 'ai4wei2', '182210712101');
INSERT INTO `student` VALUES ('182210712102', '冯雪', 'feng2xue3', '182210712102');
INSERT INTO `student` VALUES ('182210712103', '蒋贵方', 'jiang3gui4fang1', '182210712103');
INSERT INTO `student` VALUES ('182210712104', '刘锦丽', 'liu2jin3li4', '182210712104');
INSERT INTO `student` VALUES ('182210712105', '申玉婷', 'shen1yu4ting2', '182210712105');
INSERT INTO `student` VALUES ('182210712106', '苏玉倩', 'su1yu4qian4', '182210712106');
INSERT INTO `student` VALUES ('182210712107', '吴楠', 'wu2nan2', '182210712107');
INSERT INTO `student` VALUES ('182210712108', '赵冉', 'zhao4ran3', '20001125ZHAOran');
INSERT INTO `student` VALUES ('182210712109', '曾元鹏', 'ceng2yuan2peng2', '182210712109');
INSERT INTO `student` VALUES ('182210712110', '陈志云', 'chen2zhi4yun2', '182210712110');
INSERT INTO `student` VALUES ('182210712111', '段毅', 'duan4yi4', '182210712111');
INSERT INTO `student` VALUES ('182210712112', '范龙龙', 'fan4long2long2', '182210712112');
INSERT INTO `student` VALUES ('182210712113', '高君宇', 'gao1jun1yu3', '182210712113');
INSERT INTO `student` VALUES ('182210712114', '顾和平', 'gu4he2ping2', '182210712114');
INSERT INTO `student` VALUES ('182210712115', '胡建安', 'hu2jian4an1', '182210712115');
INSERT INTO `student` VALUES ('182210712116', '蒋昊泽', 'jiang3hao4ze2', '182210712116');
INSERT INTO `student` VALUES ('182210712117', '孔浩', 'kong3hao4', 'kong19980726');
INSERT INTO `student` VALUES ('182210712118', '李佳乐', 'li3jia1le4', '182210712118');
INSERT INTO `student` VALUES ('182210712119', '李添奇', 'li3tian1qi2', '182399');
INSERT INTO `student` VALUES ('182210712120', '李仔龙', 'li3zi3long2', '182210712120');
INSERT INTO `student` VALUES ('182210712121', '刘钰晖', 'liu2yu4hui1', '182210712121');
INSERT INTO `student` VALUES ('182210712122', '罗统铨', 'luo2tong3quan2', '182210712122');
INSERT INTO `student` VALUES ('182210712123', '聂云飞', 'nie4yun2fei1', '182210712123');
INSERT INTO `student` VALUES ('182210712124', '秦鸿宇', 'qin2hong2yu3', '182210712124');
INSERT INTO `student` VALUES ('182210712125', '沈江天', 'shen3jiang1tian1', '182210712125');
INSERT INTO `student` VALUES ('182210712126', '孙玉峰', 'sun1yu4feng1', '182210712126');
INSERT INTO `student` VALUES ('182210712127', '孙智航', 'sun1zhi4hang2', '182210712127');
INSERT INTO `student` VALUES ('182210712128', '田昕杲', 'tian2xin1gao3', '182210712128');
INSERT INTO `student` VALUES ('182210712129', '王鹤淞', 'wang2he4song1', '182210712129');
INSERT INTO `student` VALUES ('182210712130', '王文龙', 'wang2wen2long2', '182210712130');
INSERT INTO `student` VALUES ('182210712131', '王应烽', 'wang2ying1feng1', '182210712131');
INSERT INTO `student` VALUES ('182210712132', '文炼', 'wen2lian4', '182210712132');
INSERT INTO `student` VALUES ('182210712133', '杨道玉', 'yang2dao4yu4', '182210712133');
INSERT INTO `student` VALUES ('182210712134', '袁平宇', 'yuan2ping2yu3', '182210712134');
INSERT INTO `student` VALUES ('182210712135', '张津硕', 'zhang1jin1shuo4', '182210712135');
INSERT INTO `student` VALUES ('182210712136', '周洋', 'zhou1yang2', '182210712136');
INSERT INTO `student` VALUES ('182210712137', '朱嘉豪', 'zhu1jia1hao2', '182210712137');
INSERT INTO `student` VALUES ('182210712138', '邹溢', 'zou1yi4', '182210712138');
INSERT INTO `student` VALUES ('182210712201', '董佳玮', 'dong3jia1wei3', '182210712201');
INSERT INTO `student` VALUES ('182210712202', '何桂楠', 'he2gui4nan2', '182210712202');
INSERT INTO `student` VALUES ('182210712203', '李先华', 'li3xian1hua2', '182210712203');
INSERT INTO `student` VALUES ('182210712204', '潘玉洁', 'pan1yu4jie2', '182210712204');
INSERT INTO `student` VALUES ('182210712205', '史玥', 'shi3yue4', '182210712205');
INSERT INTO `student` VALUES ('182210712206', '万芳盈', 'wan4fang1ying2', '182210712206');
INSERT INTO `student` VALUES ('182210712207', '张立婷', 'zhang1li4ting2', '182210712207');
INSERT INTO `student` VALUES ('182210712208', '仓明明', 'cang1ming2ming2', '182210712208');
INSERT INTO `student` VALUES ('182210712209', '陈啸天', 'chen2xiao4tian1', '182210712209');
INSERT INTO `student` VALUES ('182210712210', '崔严', 'cui1yan2', 'Cy20000502@');
INSERT INTO `student` VALUES ('182210712211', '范安宁', 'fan4an1ning2', 'fanls@2604');
INSERT INTO `student` VALUES ('182210712212', '高东浦', 'gao1dong1pu3', '182210712212');
INSERT INTO `student` VALUES ('182210712213', '龚雨龙', 'gong1yu3long2', '182210712213');
INSERT INTO `student` VALUES ('182210712214', '何子昂', 'he2zi5ang2', '182210712214');
INSERT INTO `student` VALUES ('182210712215', '黄川', 'huang2chuan1', '182210712215');
INSERT INTO `student` VALUES ('182210712216', '蒋金鑫', 'jiang3jin1xin1', '182210712216');
INSERT INTO `student` VALUES ('182210712217', '雷天杰', 'lei2tian1jie2', '182210712217');
INSERT INTO `student` VALUES ('182210712218', '李隆罡', 'li3long2gang1', '182210712218');
INSERT INTO `student` VALUES ('182210712219', '李新赐', 'li3xin1ci4', 'ci20001127');
INSERT INTO `student` VALUES ('182210712220', '林磊', 'lin2lei3', '182210712220');
INSERT INTO `student` VALUES ('182210712221', '罗韶程', 'luo2shao2cheng2', '182210712221');
INSERT INTO `student` VALUES ('182210712222', '马聪', 'ma3cong1', '18221071');
INSERT INTO `student` VALUES ('182210712223', '牛炅', 'niu2gui4', '182210712223');
INSERT INTO `student` VALUES ('182210712224', '桑永龙', 'sang1yong3long2', '182210712224');
INSERT INTO `student` VALUES ('182210712225', '孙荣楠', 'sun1rong2nan2', '182210712225');
INSERT INTO `student` VALUES ('182210712226', '孙桢琪', 'sun1zhen1qi2', '182210712226');
INSERT INTO `student` VALUES ('182210712227', '汤炜贤', 'tang1wei3xian2', '182210712227');
INSERT INTO `student` VALUES ('182210712228', '汪涛', 'wang1tao1', '182210712228');
INSERT INTO `student` VALUES ('182210712229', '王涛', 'wang2tao1', '182210712229');
INSERT INTO `student` VALUES ('182210712230', '王文泽', 'wang2wen2ze2', '182210712230');
INSERT INTO `student` VALUES ('182210712231', '魏逸潇', 'wei4yi4xiao1', '182210712231');
INSERT INTO `student` VALUES ('182210712232', '薛银杰', 'xue1yin2jie2', 'Xx1234567890');
INSERT INTO `student` VALUES ('182210712233', '余剑', 'yu2jian4', '182210712233');
INSERT INTO `student` VALUES ('182210712234', '张凡', 'zhang1fan2', '182210712234');
INSERT INTO `student` VALUES ('182210712235', '张永泉', 'zhang1yong3quan2', '182210712235');
INSERT INTO `student` VALUES ('182210712236', '朱宸皞', 'zhu1chen2hao4', '182210712236');

-- ----------------------------
-- Table structure for studentclass
-- ----------------------------
DROP TABLE IF EXISTS `studentclass`;
CREATE TABLE `studentclass` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `no` int(11) NOT NULL COMMENT '花名册上的序号，排序用',
  `classID` int(11) NOT NULL COMMENT '学生所在的教学班号，外键',
  `studentno` varchar(20) NOT NULL COMMENT '学号',
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uk_studentclass_noid` (`studentno`,`classID`),
  KEY `fkey_classid` (`classID`),
  CONSTRAINT `fkey_classid` FOREIGN KEY (`classID`) REFERENCES `teachclass` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fkey_studentno` FOREIGN KEY (`studentno`) REFERENCES `student` (`studentno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=857 DEFAULT CHARSET=utf8 COMMENT='学生和教学班号的连接表\r\n';

-- ----------------------------
-- Records of studentclass
-- ----------------------------
INSERT INTO `studentclass` VALUES ('568', '1', '6', '182210711115', null);
INSERT INTO `studentclass` VALUES ('569', '2', '6', '182210712101', null);
INSERT INTO `studentclass` VALUES ('570', '3', '6', '182210712102', null);
INSERT INTO `studentclass` VALUES ('571', '4', '6', '182210712103', null);
INSERT INTO `studentclass` VALUES ('572', '5', '6', '182210712104', null);
INSERT INTO `studentclass` VALUES ('573', '6', '6', '182210712105', null);
INSERT INTO `studentclass` VALUES ('574', '7', '6', '182210712106', null);
INSERT INTO `studentclass` VALUES ('575', '8', '6', '182210712107', null);
INSERT INTO `studentclass` VALUES ('576', '9', '6', '182210712108', null);
INSERT INTO `studentclass` VALUES ('577', '10', '6', '182210712109', null);
INSERT INTO `studentclass` VALUES ('578', '11', '6', '182210712110', null);
INSERT INTO `studentclass` VALUES ('579', '12', '6', '182210712111', null);
INSERT INTO `studentclass` VALUES ('580', '13', '6', '182210712112', null);
INSERT INTO `studentclass` VALUES ('581', '14', '6', '182210712113', null);
INSERT INTO `studentclass` VALUES ('582', '15', '6', '182210712114', null);
INSERT INTO `studentclass` VALUES ('583', '16', '6', '182210712115', null);
INSERT INTO `studentclass` VALUES ('584', '17', '6', '182210712116', null);
INSERT INTO `studentclass` VALUES ('585', '18', '6', '182210712117', null);
INSERT INTO `studentclass` VALUES ('586', '19', '6', '182210712118', null);
INSERT INTO `studentclass` VALUES ('587', '20', '6', '182210712119', null);
INSERT INTO `studentclass` VALUES ('588', '21', '6', '182210712120', null);
INSERT INTO `studentclass` VALUES ('589', '22', '6', '182210712121', null);
INSERT INTO `studentclass` VALUES ('590', '23', '6', '182210712122', null);
INSERT INTO `studentclass` VALUES ('591', '24', '6', '182210712123', null);
INSERT INTO `studentclass` VALUES ('592', '25', '6', '182210712124', null);
INSERT INTO `studentclass` VALUES ('593', '26', '6', '182210712125', null);
INSERT INTO `studentclass` VALUES ('594', '27', '6', '182210712126', null);
INSERT INTO `studentclass` VALUES ('595', '28', '6', '182210712127', null);
INSERT INTO `studentclass` VALUES ('596', '29', '6', '182210712128', null);
INSERT INTO `studentclass` VALUES ('597', '30', '6', '182210712129', null);
INSERT INTO `studentclass` VALUES ('598', '31', '6', '182210712130', null);
INSERT INTO `studentclass` VALUES ('599', '33', '6', '182210712131', null);
INSERT INTO `studentclass` VALUES ('600', '34', '6', '182210712133', null);
INSERT INTO `studentclass` VALUES ('601', '35', '6', '182210712134', null);
INSERT INTO `studentclass` VALUES ('602', '36', '6', '182210712135', null);
INSERT INTO `studentclass` VALUES ('603', '37', '6', '182210712136', null);
INSERT INTO `studentclass` VALUES ('604', '38', '6', '182210712137', null);
INSERT INTO `studentclass` VALUES ('605', '39', '6', '182210712138', null);
INSERT INTO `studentclass` VALUES ('606', '40', '6', '182210712201', null);
INSERT INTO `studentclass` VALUES ('607', '41', '6', '182210712202', null);
INSERT INTO `studentclass` VALUES ('608', '42', '6', '182210712203', null);
INSERT INTO `studentclass` VALUES ('609', '43', '6', '182210712204', null);
INSERT INTO `studentclass` VALUES ('610', '44', '6', '182210712205', null);
INSERT INTO `studentclass` VALUES ('611', '45', '6', '182210712206', null);
INSERT INTO `studentclass` VALUES ('612', '46', '6', '182210712207', null);
INSERT INTO `studentclass` VALUES ('613', '47', '6', '182210712208', null);
INSERT INTO `studentclass` VALUES ('614', '48', '6', '182210712209', null);
INSERT INTO `studentclass` VALUES ('615', '49', '6', '182210712210', null);
INSERT INTO `studentclass` VALUES ('616', '50', '6', '182210712211', null);
INSERT INTO `studentclass` VALUES ('617', '51', '6', '182210712212', null);
INSERT INTO `studentclass` VALUES ('618', '52', '6', '182210712213', null);
INSERT INTO `studentclass` VALUES ('619', '53', '6', '182210712214', null);
INSERT INTO `studentclass` VALUES ('620', '54', '6', '182210712215', null);
INSERT INTO `studentclass` VALUES ('621', '55', '6', '182210712216', null);
INSERT INTO `studentclass` VALUES ('622', '56', '6', '182210712217', null);
INSERT INTO `studentclass` VALUES ('623', '57', '6', '182210712218', null);
INSERT INTO `studentclass` VALUES ('624', '58', '6', '182210712219', null);
INSERT INTO `studentclass` VALUES ('625', '59', '6', '182210712220', null);
INSERT INTO `studentclass` VALUES ('626', '60', '6', '182210712221', null);
INSERT INTO `studentclass` VALUES ('627', '61', '6', '182210712222', null);
INSERT INTO `studentclass` VALUES ('628', '62', '6', '182210712223', null);
INSERT INTO `studentclass` VALUES ('629', '63', '6', '182210712224', null);
INSERT INTO `studentclass` VALUES ('630', '64', '6', '182210712225', null);
INSERT INTO `studentclass` VALUES ('631', '65', '6', '182210712226', null);
INSERT INTO `studentclass` VALUES ('632', '66', '6', '182210712227', null);
INSERT INTO `studentclass` VALUES ('633', '67', '6', '182210712228', null);
INSERT INTO `studentclass` VALUES ('634', '68', '6', '182210712229', null);
INSERT INTO `studentclass` VALUES ('635', '69', '6', '182210712230', null);
INSERT INTO `studentclass` VALUES ('636', '70', '6', '182210712231', null);
INSERT INTO `studentclass` VALUES ('637', '71', '6', '182210712232', null);
INSERT INTO `studentclass` VALUES ('638', '72', '6', '182210712233', null);
INSERT INTO `studentclass` VALUES ('639', '73', '6', '182210712234', null);
INSERT INTO `studentclass` VALUES ('640', '74', '6', '182210712235', null);
INSERT INTO `studentclass` VALUES ('641', '75', '6', '182210712236', null);
INSERT INTO `studentclass` VALUES ('682', '1', '2', '1441904116', '义务兵');
INSERT INTO `studentclass` VALUES ('683', '2', '2', '1441904231', '休学');
INSERT INTO `studentclass` VALUES ('684', '3', '2', '152210702113', '');
INSERT INTO `studentclass` VALUES ('685', '4', '2', '152210702132', '');
INSERT INTO `studentclass` VALUES ('686', '5', '2', '162210201321', '');
INSERT INTO `studentclass` VALUES ('687', '6', '2', '162210203128', '');
INSERT INTO `studentclass` VALUES ('688', '7', '2', '162210702101', '');
INSERT INTO `studentclass` VALUES ('689', '8', '2', '162210702102', '');
INSERT INTO `studentclass` VALUES ('690', '9', '2', '162210702103', '');
INSERT INTO `studentclass` VALUES ('691', '10', '2', '162210702104', '');
INSERT INTO `studentclass` VALUES ('692', '11', '2', '162210702105', '');
INSERT INTO `studentclass` VALUES ('693', '12', '2', '162210702106', '');
INSERT INTO `studentclass` VALUES ('694', '13', '2', '162210702107', '');
INSERT INTO `studentclass` VALUES ('695', '14', '2', '162210702108', '');
INSERT INTO `studentclass` VALUES ('696', '15', '2', '162210702109', '');
INSERT INTO `studentclass` VALUES ('697', '16', '2', '162210702110', '');
INSERT INTO `studentclass` VALUES ('698', '17', '2', '162210702111', '');
INSERT INTO `studentclass` VALUES ('699', '18', '2', '162210702112', '');
INSERT INTO `studentclass` VALUES ('700', '19', '2', '162210702113', '');
INSERT INTO `studentclass` VALUES ('701', '20', '2', '162210702114', '');
INSERT INTO `studentclass` VALUES ('702', '21', '2', '162210702115', '');
INSERT INTO `studentclass` VALUES ('703', '22', '2', '162210702116', '');
INSERT INTO `studentclass` VALUES ('704', '23', '2', '162210702117', '');
INSERT INTO `studentclass` VALUES ('705', '24', '2', '162210702118', '');
INSERT INTO `studentclass` VALUES ('706', '25', '2', '162210702119', '');
INSERT INTO `studentclass` VALUES ('707', '26', '2', '162210702120', '');
INSERT INTO `studentclass` VALUES ('708', '27', '2', '162210702121', '');
INSERT INTO `studentclass` VALUES ('709', '28', '2', '162210702122', '');
INSERT INTO `studentclass` VALUES ('710', '29', '2', '162210702123', '');
INSERT INTO `studentclass` VALUES ('711', '30', '2', '162210702124', '');
INSERT INTO `studentclass` VALUES ('712', '31', '2', '162210702125', '');
INSERT INTO `studentclass` VALUES ('713', '32', '2', '162210702127', '');
INSERT INTO `studentclass` VALUES ('714', '33', '2', '162210702128', '');
INSERT INTO `studentclass` VALUES ('715', '34', '2', '162210702129', '');
INSERT INTO `studentclass` VALUES ('716', '35', '2', '162210702130', '');
INSERT INTO `studentclass` VALUES ('717', '36', '2', '162210702131', '');
INSERT INTO `studentclass` VALUES ('718', '37', '2', '162210702132', '');
INSERT INTO `studentclass` VALUES ('719', '38', '2', '162210702133', '');
INSERT INTO `studentclass` VALUES ('720', '39', '2', '162210702134', '');
INSERT INTO `studentclass` VALUES ('721', '40', '2', '162210702135', '');
INSERT INTO `studentclass` VALUES ('722', '41', '2', '162210702136', '');
INSERT INTO `studentclass` VALUES ('723', '42', '2', '162210702137', '');
INSERT INTO `studentclass` VALUES ('724', '43', '2', '162210702138', '');
INSERT INTO `studentclass` VALUES ('725', '44', '2', '162210702201', '');
INSERT INTO `studentclass` VALUES ('726', '45', '2', '162210702202', '');
INSERT INTO `studentclass` VALUES ('727', '46', '2', '162210702203', '');
INSERT INTO `studentclass` VALUES ('728', '47', '2', '162210702204', '');
INSERT INTO `studentclass` VALUES ('729', '48', '2', '162210702205', '');
INSERT INTO `studentclass` VALUES ('730', '49', '2', '162210702206', '');
INSERT INTO `studentclass` VALUES ('731', '50', '2', '162210702207', '');
INSERT INTO `studentclass` VALUES ('732', '51', '2', '162210702208', '');
INSERT INTO `studentclass` VALUES ('733', '52', '2', '162210702209', '');
INSERT INTO `studentclass` VALUES ('734', '53', '2', '162210702210', '');
INSERT INTO `studentclass` VALUES ('735', '54', '2', '162210702211', '');
INSERT INTO `studentclass` VALUES ('736', '55', '2', '162210702212', '');
INSERT INTO `studentclass` VALUES ('737', '56', '2', '162210702213', '');
INSERT INTO `studentclass` VALUES ('738', '57', '2', '162210702214', '');
INSERT INTO `studentclass` VALUES ('739', '58', '2', '162210702215', '');
INSERT INTO `studentclass` VALUES ('740', '59', '2', '162210702216', '');
INSERT INTO `studentclass` VALUES ('741', '60', '2', '162210702217', '');
INSERT INTO `studentclass` VALUES ('742', '61', '2', '162210702218', '');
INSERT INTO `studentclass` VALUES ('743', '62', '2', '162210702219', '');
INSERT INTO `studentclass` VALUES ('744', '63', '2', '162210702220', '');
INSERT INTO `studentclass` VALUES ('745', '64', '2', '162210702221', '');
INSERT INTO `studentclass` VALUES ('746', '65', '2', '162210702222', '');
INSERT INTO `studentclass` VALUES ('747', '66', '2', '162210702223', '');
INSERT INTO `studentclass` VALUES ('748', '67', '2', '162210702224', '');
INSERT INTO `studentclass` VALUES ('749', '68', '2', '162210702225', '');
INSERT INTO `studentclass` VALUES ('750', '69', '2', '162210702226', '');
INSERT INTO `studentclass` VALUES ('751', '70', '2', '162210702227', '');
INSERT INTO `studentclass` VALUES ('752', '71', '2', '162210702228', '');
INSERT INTO `studentclass` VALUES ('753', '72', '2', '162210702229', '');
INSERT INTO `studentclass` VALUES ('754', '73', '2', '162210702230', '');
INSERT INTO `studentclass` VALUES ('755', '74', '2', '162210702231', '');
INSERT INTO `studentclass` VALUES ('756', '75', '2', '162210702232', '');
INSERT INTO `studentclass` VALUES ('757', '76', '2', '162210702233', '');
INSERT INTO `studentclass` VALUES ('758', '77', '2', '162210702234', null);
INSERT INTO `studentclass` VALUES ('759', '78', '2', '162210702235', '');
INSERT INTO `studentclass` VALUES ('760', '79', '2', '162210702236', '');
INSERT INTO `studentclass` VALUES ('761', '80', '2', '162210702237', '');
INSERT INTO `studentclass` VALUES ('762', '81', '2', '162210807121', '');
INSERT INTO `studentclass` VALUES ('763', '82', '2', '162210902131', '');
INSERT INTO `studentclass` VALUES ('764', '83', '2', '162211903148', '');
INSERT INTO `studentclass` VALUES ('765', '84', '2', '162212002121', '');
INSERT INTO `studentclass` VALUES ('770', '32', '6', '182210712132', null);
INSERT INTO `studentclass` VALUES ('772', '1', '8', '1441904116', null);
INSERT INTO `studentclass` VALUES ('773', '81', '8', '162210702234', null);
INSERT INTO `studentclass` VALUES ('774', '2', '8', '1441904231', null);
INSERT INTO `studentclass` VALUES ('775', '3', '8', '162210201321', null);
INSERT INTO `studentclass` VALUES ('776', '4', '8', '162210203128', null);
INSERT INTO `studentclass` VALUES ('777', '5', '8', '162210702201', null);
INSERT INTO `studentclass` VALUES ('778', '6', '8', '162210702202', null);
INSERT INTO `studentclass` VALUES ('779', '7', '8', '162210702203', null);
INSERT INTO `studentclass` VALUES ('780', '8', '8', '162210702204', null);
INSERT INTO `studentclass` VALUES ('781', '9', '8', '162210702205', null);
INSERT INTO `studentclass` VALUES ('782', '10', '8', '162210702206', null);
INSERT INTO `studentclass` VALUES ('783', '11', '8', '162210702207', null);
INSERT INTO `studentclass` VALUES ('784', '12', '8', '162210702208', null);
INSERT INTO `studentclass` VALUES ('785', '13', '8', '162210702209', null);
INSERT INTO `studentclass` VALUES ('786', '14', '8', '162210702210', null);
INSERT INTO `studentclass` VALUES ('787', '15', '8', '162210702211', null);
INSERT INTO `studentclass` VALUES ('788', '16', '8', '162210702212', null);
INSERT INTO `studentclass` VALUES ('789', '17', '8', '162210702213', null);
INSERT INTO `studentclass` VALUES ('790', '18', '8', '162210702214', null);
INSERT INTO `studentclass` VALUES ('791', '19', '8', '162210702215', null);
INSERT INTO `studentclass` VALUES ('792', '20', '8', '162210702216', null);
INSERT INTO `studentclass` VALUES ('793', '21', '8', '162210702217', null);
INSERT INTO `studentclass` VALUES ('794', '22', '8', '162210702218', null);
INSERT INTO `studentclass` VALUES ('795', '23', '8', '162210702219', null);
INSERT INTO `studentclass` VALUES ('796', '24', '8', '162210702220', null);
INSERT INTO `studentclass` VALUES ('797', '25', '8', '162210702221', null);
INSERT INTO `studentclass` VALUES ('798', '26', '8', '162210702222', null);
INSERT INTO `studentclass` VALUES ('799', '27', '8', '162210702223', null);
INSERT INTO `studentclass` VALUES ('800', '28', '8', '162210702224', null);
INSERT INTO `studentclass` VALUES ('801', '29', '8', '162210702225', null);
INSERT INTO `studentclass` VALUES ('802', '30', '8', '162210702226', null);
INSERT INTO `studentclass` VALUES ('803', '31', '8', '162210702227', null);
INSERT INTO `studentclass` VALUES ('804', '32', '8', '162210702228', null);
INSERT INTO `studentclass` VALUES ('805', '33', '8', '162210702229', null);
INSERT INTO `studentclass` VALUES ('806', '34', '8', '162210702230', null);
INSERT INTO `studentclass` VALUES ('807', '35', '8', '162210702231', null);
INSERT INTO `studentclass` VALUES ('808', '36', '8', '162210702232', null);
INSERT INTO `studentclass` VALUES ('809', '37', '8', '162210702233', null);
INSERT INTO `studentclass` VALUES ('811', '37', '8', '162210702101', null);
INSERT INTO `studentclass` VALUES ('812', '38', '8', '162210702102', null);
INSERT INTO `studentclass` VALUES ('813', '39', '8', '162210702103', null);
INSERT INTO `studentclass` VALUES ('814', '40', '8', '162210702104', null);
INSERT INTO `studentclass` VALUES ('815', '41', '8', '162210702105', null);
INSERT INTO `studentclass` VALUES ('816', '42', '8', '162210702106', null);
INSERT INTO `studentclass` VALUES ('817', '43', '8', '162210702107', null);
INSERT INTO `studentclass` VALUES ('818', '44', '8', '162210702108', null);
INSERT INTO `studentclass` VALUES ('819', '45', '8', '162210702109', null);
INSERT INTO `studentclass` VALUES ('820', '46', '8', '162210702110', null);
INSERT INTO `studentclass` VALUES ('821', '47', '8', '162210702111', null);
INSERT INTO `studentclass` VALUES ('822', '48', '8', '162210702112', null);
INSERT INTO `studentclass` VALUES ('823', '49', '8', '162210702113', null);
INSERT INTO `studentclass` VALUES ('824', '50', '8', '162210702114', null);
INSERT INTO `studentclass` VALUES ('825', '51', '8', '162210702115', null);
INSERT INTO `studentclass` VALUES ('826', '52', '8', '162210702116', null);
INSERT INTO `studentclass` VALUES ('827', '53', '8', '162210702117', null);
INSERT INTO `studentclass` VALUES ('828', '54', '8', '162210702118', null);
INSERT INTO `studentclass` VALUES ('829', '55', '8', '162210702119', null);
INSERT INTO `studentclass` VALUES ('830', '56', '8', '162210702120', null);
INSERT INTO `studentclass` VALUES ('831', '57', '8', '162210702121', null);
INSERT INTO `studentclass` VALUES ('832', '58', '8', '162210702122', null);
INSERT INTO `studentclass` VALUES ('833', '59', '8', '162210702123', null);
INSERT INTO `studentclass` VALUES ('834', '60', '8', '162210702124', null);
INSERT INTO `studentclass` VALUES ('835', '61', '8', '162210702125', null);
INSERT INTO `studentclass` VALUES ('836', '62', '8', '162210702127', null);
INSERT INTO `studentclass` VALUES ('837', '63', '8', '162210702128', null);
INSERT INTO `studentclass` VALUES ('838', '64', '8', '162210702129', null);
INSERT INTO `studentclass` VALUES ('839', '65', '8', '162210702130', null);
INSERT INTO `studentclass` VALUES ('840', '66', '8', '162210702131', null);
INSERT INTO `studentclass` VALUES ('841', '67', '8', '162210702132', null);
INSERT INTO `studentclass` VALUES ('842', '68', '8', '162210702133', null);
INSERT INTO `studentclass` VALUES ('843', '69', '8', '162210702134', null);
INSERT INTO `studentclass` VALUES ('844', '77', '8', '162210807121', null);
INSERT INTO `studentclass` VALUES ('845', '74', '8', '162210902131', null);
INSERT INTO `studentclass` VALUES ('846', '75', '8', '162211903148', null);
INSERT INTO `studentclass` VALUES ('847', '76', '8', '162212002121', null);
INSERT INTO `studentclass` VALUES ('849', '70', '8', '162210702135', null);
INSERT INTO `studentclass` VALUES ('850', '71', '8', '162210702136', null);
INSERT INTO `studentclass` VALUES ('851', '72', '8', '162210702137', null);
INSERT INTO `studentclass` VALUES ('852', '73', '8', '162210702138', null);
INSERT INTO `studentclass` VALUES ('853', '78', '8', '162210702235', null);
INSERT INTO `studentclass` VALUES ('854', '79', '8', '162210702236', null);
INSERT INTO `studentclass` VALUES ('855', '80', '8', '162210702237', null);

-- ----------------------------
-- Table structure for teachclass
-- ----------------------------
DROP TABLE IF EXISTS `teachclass`;
CREATE TABLE `teachclass` (
  `teachclassno` varchar(20) NOT NULL,
  `coursename` varchar(100) DEFAULT NULL,
  `coursesemester` char(11) NOT NULL,
  `credit` tinyint(4) DEFAULT NULL,
  `evalmethod` char(4) DEFAULT NULL,
  `teacherno` varchar(20) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uniclassno` (`teachclassno`,`coursesemester`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teachclass
-- ----------------------------
INSERT INTO `teachclass` VALUES ('19090173a-1', 'Android application development', '2018-2019-2', '5', '考试', '199800001483', '1');
INSERT INTO `teachclass` VALUES ('19090177a-1', 'Web applications development using JSP & Servlet', '2018-2019-2', '4', '考试', '199800001483', '2');
INSERT INTO `teachclass` VALUES ('19020183b-1', 'Java高级编程', '2018-2019-2', '3', '考查', '199800001483', '6');
INSERT INTO `teachclass` VALUES ('19W07014b-1', '移动终端程序开发', '2018-2019-2', '3', '考查', '199800001483', '7');
INSERT INTO `teachclass` VALUES ('课设', '大作业提交', '2019-2020-2', '6', '考察', '199800001483', '8');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teacherno` varchar(20) NOT NULL,
  `name` varchar(8) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `level` tinyint(6) DEFAULT NULL,
  PRIMARY KEY (`teacherno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('123456', '张三', '123', '1');
INSERT INTO `teacher` VALUES ('1234567', '李四', '123', '1');
INSERT INTO `teacher` VALUES ('199800001483', '夏永锋', '199800001483', '0');

-- ----------------------------
-- Table structure for timetable
-- ----------------------------
DROP TABLE IF EXISTS `timetable`;
CREATE TABLE `timetable` (
  `no` bigint(20) NOT NULL AUTO_INCREMENT,
  `teachclassno` varchar(20) NOT NULL,
  `weeks` varchar(100) DEFAULT NULL COMMENT '上课周次如1-9,12',
  `classroom` varchar(50) DEFAULT NULL,
  `day` smallint(6) DEFAULT NULL COMMENT '星期，取值0,1,2,3,4,5,6',
  `time` smallint(6) DEFAULT NULL COMMENT '上课时间1,2,3,4,5大节',
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of timetable
-- ----------------------------
