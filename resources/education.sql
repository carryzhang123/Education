/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : education

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2019-03-04 14:45:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tab_comment`
-- ----------------------------
DROP TABLE IF EXISTS `tab_comment`;
CREATE TABLE `tab_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(2048) NOT NULL,
  `publish_time` varchar(255) NOT NULL,
  `publish_user` int(11) NOT NULL,
  `reply_user` int(11) DEFAULT NULL COMMENT '回复给 -(回复用户id)',
  `is_del` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000' COMMENT '0:正常 1:被删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户评论表';

-- ----------------------------
-- Records of tab_comment
-- ----------------------------
INSERT INTO `tab_comment` VALUES ('1', '签完到', '2018-05-27 03:46:43', '1', '5', '00000000000');
INSERT INTO `tab_comment` VALUES ('2', 'qwdq', '2018-05-27 04:11:43', '4', '5', '00000000000');
INSERT INTO `tab_comment` VALUES ('3', 'awfe', '2018-05-27 04:18:36', '4', '1', '00000000000');

-- ----------------------------
-- Table structure for `tab_course`
-- ----------------------------
DROP TABLE IF EXISTS `tab_course`;
CREATE TABLE `tab_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(255) NOT NULL,
  `add_time` varchar(255) NOT NULL,
  `add_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='课程表';

-- ----------------------------
-- Records of tab_course
-- ----------------------------
INSERT INTO `tab_course` VALUES ('7', '语文', '2018-05-27 02:21:00', '1');
INSERT INTO `tab_course` VALUES ('8', '英语', '2018-05-27 02:21:29', '1');

-- ----------------------------
-- Table structure for `tab_notice`
-- ----------------------------
DROP TABLE IF EXISTS `tab_notice`;
CREATE TABLE `tab_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(1024) NOT NULL,
  `info` varchar(2048) DEFAULT NULL,
  `publish_time` varchar(255) DEFAULT NULL,
  `publish_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='系统公告表';

-- ----------------------------
-- Records of tab_notice
-- ----------------------------
INSERT INTO `tab_notice` VALUES ('6', '第一个公告', '这里是公告的内容\n1\n2\n3\n4\n5\n6\n', '2018-05-27 02:22:29', '1');
INSERT INTO `tab_notice` VALUES ('7', '第二条公告', '', '2018-05-27 02:24:45', '1');

-- ----------------------------
-- Table structure for `tab_role`
-- ----------------------------
DROP TABLE IF EXISTS `tab_role`;
CREATE TABLE `tab_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role` varchar(255) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户角色表(勿动)';

-- ----------------------------
-- Records of tab_role
-- ----------------------------
INSERT INTO `tab_role` VALUES ('1', '系统管理员');
INSERT INTO `tab_role` VALUES ('2', '教员');
INSERT INTO `tab_role` VALUES ('3', '学员');

-- ----------------------------
-- Table structure for `tab_stu_study_course`
-- ----------------------------
DROP TABLE IF EXISTS `tab_stu_study_course`;
CREATE TABLE `tab_stu_study_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `note` varchar(2048) DEFAULT NULL COMMENT '要求/选择备注',
  `publish_time` varchar(255) DEFAULT NULL,
  `teach_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_stu_study_course
-- ----------------------------
INSERT INTO `tab_stu_study_course` VALUES ('1', '4', '7', null, '2018-05-27 04:38:33', '5');
INSERT INTO `tab_stu_study_course` VALUES ('2', '4', '1', null, '2018-05-27 05:01:36', '5');

-- ----------------------------
-- Table structure for `tab_teach_course`
-- ----------------------------
DROP TABLE IF EXISTS `tab_teach_course`;
CREATE TABLE `tab_teach_course` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `teacher` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_teach_course
-- ----------------------------
INSERT INTO `tab_teach_course` VALUES ('1', '7', '5');

-- ----------------------------
-- Table structure for `tab_user_info`
-- ----------------------------
DROP TABLE IF EXISTS `tab_user_info`;
CREATE TABLE `tab_user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_password` varchar(512) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_sex` varchar(255) DEFAULT NULL,
  `user_age` varchar(255) DEFAULT NULL,
  `user_role` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of tab_user_info
-- ----------------------------
INSERT INTO `tab_user_info` VALUES ('1', 'admin', 'admin', '管理员', '男', '21', '1');
INSERT INTO `tab_user_info` VALUES ('2', 'xueyuan', 'xueyuan', '学员', '女', '21', '3');
INSERT INTO `tab_user_info` VALUES ('3', 'jiaoyuan', 'jiaoyuan', '教员', '男', '21', '2');
