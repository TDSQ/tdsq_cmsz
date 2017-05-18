/*
Navicat MySQL Data Transfer

Source Server         : mt
Source Server Version : 50551
Source Host           : localhost:3306
Source Database       : ssm_shiro

Target Server Type    : MYSQL
Target Server Version : 50551
File Encoding         : 65001

Date: 2017-05-17 11:59:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `group`
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `groupid` int(5) NOT NULL DEFAULT '0' COMMENT '组号',
  `group_tm` int(5) DEFAULT NULL COMMENT '改组的主管（保存用户的是userid）',
  `groupname` varchar(30) DEFAULT NULL COMMENT '组名',
  PRIMARY KEY (`groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group
-- ----------------------------
INSERT INTO `group` VALUES ('104', '4', '四组');
INSERT INTO `group` VALUES ('1001', '1', '一组');
INSERT INTO `group` VALUES ('1002', '2', '二组');
INSERT INTO `group` VALUES ('1003', '3', '三组');

-- ----------------------------
-- Table structure for `history`
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `id` int(5) NOT NULL DEFAULT '0' COMMENT '主键',
  `realname` varchar(20) DEFAULT NULL COMMENT '开户申请人姓名',
  `account` varchar(20) NOT NULL DEFAULT '',
  `handelperson` varchar(20) DEFAULT NULL COMMENT '处理人（开户人或审批人id）',
  `handeltime` date DEFAULT NULL COMMENT '处理时间',
  `open_time` date DEFAULT NULL,
  `statue` int(2) DEFAULT NULL COMMENT '处理状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES ('101', '李四', 'lisi', '管事1', '2017-05-17', '2017-05-11', '1');
INSERT INTO `history` VALUES ('102', '张三', 'zhangsan', '管事2', '2017-05-04', '2017-05-17', '2');
INSERT INTO `history` VALUES ('103', '王五', 'wangwu', '员工', '2017-05-03', '2017-05-10', '1');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menuid` int(5) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `menuname` varchar(20) DEFAULT NULL COMMENT '权限名称',
  `menudesc` varchar(100) DEFAULT NULL COMMENT '权限描述',
  PRIMARY KEY (`menuid`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('101', '测试数据', '测试数据');
INSERT INTO `menu` VALUES ('102', '测试数据2', '测试');

-- ----------------------------
-- Table structure for `open_user_msg`
-- ----------------------------
DROP TABLE IF EXISTS `open_user_msg`;
CREATE TABLE `open_user_msg` (
  `id` int(5) NOT NULL DEFAULT '0' COMMENT '主键',
  `account` varchar(20) NOT NULL DEFAULT '' COMMENT '帐户名',
  `groupid` int(2) NOT NULL COMMENT '所属组id',
  `mainpath` varchar(30) NOT NULL COMMENT '主路径',
  `number_property` int(2) DEFAULT NULL COMMENT '账号属性',
  `start_time` date DEFAULT NULL COMMENT '开始使用时间',
  `end_time` date DEFAULT NULL COMMENT '账户注销时间',
  `system` varchar(50) DEFAULT NULL COMMENT '所属系统id（即为主路径的描述）',
  `equipment_stage` varchar(50) DEFAULT NULL COMMENT '账户所属硬件设备或软件平台id（选填）',
  `open_reason` varchar(100) DEFAULT NULL COMMENT '申请开户原因',
  `statue` int(2) NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of open_user_msg
-- ----------------------------
INSERT INTO `open_user_msg` VALUES ('1', 'lisi', '1', '192.168.1.1', '1', '2017-05-02', '2017-05-25', 'dfjggg', 'hhhhh', '工作需要', '1');
INSERT INTO `open_user_msg` VALUES ('2', 'zhangsan', '2', '192.168.1.2', '2', '2017-05-03', '2017-05-17', 'ggg', 'gggg', '工作需要', '2');

-- ----------------------------
-- Table structure for `property`
-- ----------------------------
DROP TABLE IF EXISTS `property`;
CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `property_Name` varchar(30) DEFAULT NULL COMMENT '账号属性',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of property
-- ----------------------------
INSERT INTO `property` VALUES ('1', '超级用户账号');
INSERT INTO `property` VALUES ('2', '程序内置账号');
INSERT INTO `property` VALUES ('3', '用户具名账号');
INSERT INTO `property` VALUES ('4', '其他');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `roleid` int(5) NOT NULL COMMENT '角色id',
  `rolenamme` varchar(20) NOT NULL COMMENT '角色名称',
  `roledesc` varchar(100) DEFAULT NULL COMMENT '角色描述',
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('101', '领导1', '负责管事');
INSERT INTO `role` VALUES ('102', '领导2', '管事');
INSERT INTO `role` VALUES ('103', '领导3', '干活');
INSERT INTO `role` VALUES ('104', '领导4', '做事');

-- ----------------------------
-- Table structure for `role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `roleid` int(5) NOT NULL DEFAULT '0' COMMENT '角色id',
  `menuid` int(5) NOT NULL DEFAULT '0' COMMENT '权限id',
  PRIMARY KEY (`roleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES ('101', '101');
INSERT INTO `role_menu` VALUES ('102', '102');
INSERT INTO `role_menu` VALUES ('103', '103');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(5) NOT NULL COMMENT '用户id',
  `account` varchar(20) NOT NULL COMMENT '帐户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `realname` varchar(20) NOT NULL COMMENT '用户姓名',
  `phonenum` varchar(11) NOT NULL COMMENT '用户电话号码',
  `email` varchar(30) NOT NULL COMMENT '邮箱',
  `number_4a` varchar(30) DEFAULT NULL COMMENT '4A主账号（选填）',
  `company` varchar(20) DEFAULT NULL COMMENT '工作单位',
  `superid` int(5) DEFAULT NULL COMMENT '上级领导id',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('101', 'lisi', '666666', '李四', '10086', 'abc@12.com', 'ggggggggggg', '中国移动', '1');
INSERT INTO `user` VALUES ('102', 'zhangsan', '777777', '张三', '10010', 'aaa@ll.com', 'oooooooo', '中国移动', '1');
INSERT INTO `user` VALUES ('103', 'wangwu', '888888', '王五', '10010', '12r@ll.com', 'ppppppp', '月亮传奇', '2');
INSERT INTO `user` VALUES ('104', 'libai', '888887', '李白', '12222', '333g@k.com', 'ggggg', '月亮传奇', '2');

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `userid` varchar(5) NOT NULL DEFAULT '' COMMENT '用户id',
  `roleid` int(5) NOT NULL DEFAULT '0' COMMENT '角色id',
  PRIMARY KEY (`userid`,`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('101', '101');
INSERT INTO `user_role` VALUES ('102', '102');
