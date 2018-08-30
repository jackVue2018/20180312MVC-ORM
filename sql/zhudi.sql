/*
Navicat MySQL Data Transfer

Source Server         : 本机
Source Server Version : 50554
Source Host           : localhost:3306
Source Database       : zhudi

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2018-08-29 17:52:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for wd_admin_function
-- ----------------------------
DROP TABLE IF EXISTS `wd_admin_function`;
CREATE TABLE `wd_admin_function` (
  `fID` int(11) NOT NULL AUTO_INCREMENT,
  `mID` int(11) NOT NULL COMMENT '菜单id',
  `fName` varchar(255) DEFAULT NULL COMMENT '操作方法描述',
  `fFunction` varchar(255) DEFAULT NULL COMMENT '操作方法英文标示',
  `fPicname` varchar(255) DEFAULT NULL COMMENT '操作方法图标',
  `fStatus` int(11) DEFAULT NULL COMMENT '0  有效   1禁用',
  `fCreatorID` int(11) DEFAULT NULL COMMENT '创建人',
  `fCreateTime` datetime DEFAULT NULL COMMENT '创建时间',
  `fUpdateID` int(11) DEFAULT NULL COMMENT '修改人id',
  `fUpdateTime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wd_admin_function
-- ----------------------------
INSERT INTO `wd_admin_function` VALUES ('15', '2036', '修改', 'update', 'iocn', '0', '1', '2018-05-02 14:08:40', null, null);
INSERT INTO `wd_admin_function` VALUES ('16', '2036', '新增', 'add', 'iocn', '0', '1', '2018-05-10 16:58:51', null, null);
INSERT INTO `wd_admin_function` VALUES ('17', '2038', '新增', 'add', 'iocn', '0', '1', '2018-05-11 13:26:39', null, null);
INSERT INTO `wd_admin_function` VALUES ('18', '2038', '修改', 'update', 'iocn', '0', '1', '2018-05-11 13:26:55', null, null);

-- ----------------------------
-- Table structure for wd_admin_module
-- ----------------------------
DROP TABLE IF EXISTS `wd_admin_module`;
CREATE TABLE `wd_admin_module` (
  `moduleID` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '上级id 一级菜单默认0 ',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `url` varchar(255) NOT NULL COMMENT '模块连接地址',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `orderID` int(11) NOT NULL DEFAULT '1' COMMENT '排序id',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '状态: 1使用 2删除  默认1',
  `isShow` int(11) NOT NULL DEFAULT '1' COMMENT '是否显示:1显示   2 不显示',
  `isMenu` int(11) NOT NULL DEFAULT '1' COMMENT '菜单: 1 是 2否',
  `mArea` varchar(255) DEFAULT NULL COMMENT '区域',
  `mController` varchar(255) DEFAULT NULL COMMENT '控制器',
  `mAction` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`moduleID`)
) ENGINE=InnoDB AUTO_INCREMENT=2039 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wd_admin_module
-- ----------------------------
INSERT INTO `wd_admin_module` VALUES ('1', '0', '後台首頁', '../User/UserList', 'icon-computer', '1', '1', '1', '1', null, null, null);
INSERT INTO `wd_admin_module` VALUES ('2', '0', '用戶管理', ' ', 'icon-zhanghu', '2', '1', '1', '1', null, null, null);
INSERT INTO `wd_admin_module` VALUES ('3', '0', '服務與需求', '', 'icon-menu1', '3', '1', '1', '1', null, null, null);
INSERT INTO `wd_admin_module` VALUES ('4', '0', '訂單管理', '', 'icon-text', '4', '1', '1', '1', null, null, null);
INSERT INTO `wd_admin_module` VALUES ('5', '0', '信息管理', '', 'icon-star', '5', '1', '1', '1', null, null, null);
INSERT INTO `wd_admin_module` VALUES ('6', '0', '管理員管理', ' ', 'icon-dongtaifensishu', '0', '1', '1', '1', null, null, null);
INSERT INTO `wd_admin_module` VALUES ('2036', '2', '用户列表', '../User/UserList', null, '0', '1', '1', '1', 'User', 'User', 'UserList');
INSERT INTO `wd_admin_module` VALUES ('2037', '6', '菜单列表', '../Function/Index', null, '0', '1', '1', '1', '  #', 'Function', 'Index');
INSERT INTO `wd_admin_module` VALUES ('2038', '6', '角色列表', '../role/index', null, '0', '1', '1', '1', '#', 'role', 'index');

-- ----------------------------
-- Table structure for wd_admin_permisslist
-- ----------------------------
DROP TABLE IF EXISTS `wd_admin_permisslist`;
CREATE TABLE `wd_admin_permisslist` (
  `rpID` int(11) NOT NULL AUTO_INCREMENT,
  `roleID` int(11) NOT NULL COMMENT '角色id',
  `moduleID` int(11) NOT NULL COMMENT '模块id',
  `functionID` int(11) NOT NULL DEFAULT '0' COMMENT '操作权限:0 所有 1 查看 2新增 3删除 4修改...',
  `uid` int(11) DEFAULT NULL COMMENT '后台用户id',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`rpID`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wd_admin_permisslist
-- ----------------------------
INSERT INTO `wd_admin_permisslist` VALUES ('173', '2', '1', '0', '0', '0');
INSERT INTO `wd_admin_permisslist` VALUES ('174', '2', '2', '0', '0', '0');
INSERT INTO `wd_admin_permisslist` VALUES ('175', '2', '2036', '0', '0', '0');
INSERT INTO `wd_admin_permisslist` VALUES ('176', '2', '3', '0', '0', '0');
INSERT INTO `wd_admin_permisslist` VALUES ('177', '2', '5', '0', '0', '0');
INSERT INTO `wd_admin_permisslist` VALUES ('178', '2', '6', '0', '0', '0');
INSERT INTO `wd_admin_permisslist` VALUES ('179', '2', '2037', '0', '0', '0');
INSERT INTO `wd_admin_permisslist` VALUES ('180', '2', '2038', '0', '0', '0');
INSERT INTO `wd_admin_permisslist` VALUES ('181', '2', '2036', '15', '0', '0');
INSERT INTO `wd_admin_permisslist` VALUES ('182', '2', '2038', '17', '0', '0');
INSERT INTO `wd_admin_permisslist` VALUES ('183', '2', '2038', '18', '0', '0');

-- ----------------------------
-- Table structure for wd_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `wd_admin_role`;
CREATE TABLE `wd_admin_role` (
  `roleID` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `roleName` varchar(50) NOT NULL COMMENT '角色名字',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `state` int(11) NOT NULL DEFAULT '1' COMMENT '状态: 1有效 2禁用 3删除',
  PRIMARY KEY (`roleID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wd_admin_role
-- ----------------------------
INSERT INTO `wd_admin_role` VALUES ('2', '测试', '1518419715', '1');
INSERT INTO `wd_admin_role` VALUES ('3', 'kefu', '1519876368', '1');
INSERT INTO `wd_admin_role` VALUES ('4', 'test1', '1521621998', '1');
INSERT INTO `wd_admin_role` VALUES ('6', '0509', '0', '2');
INSERT INTO `wd_admin_role` VALUES ('7', '8989', '1525850859', '1');
INSERT INTO `wd_admin_role` VALUES ('8', '管理员', '0', '1');

-- ----------------------------
-- Table structure for wd_admin_rolepermission
-- ----------------------------
DROP TABLE IF EXISTS `wd_admin_rolepermission`;
CREATE TABLE `wd_admin_rolepermission` (
  `rpID` int(11) NOT NULL AUTO_INCREMENT,
  `roleID` int(11) NOT NULL COMMENT '角色id',
  `moduleID` int(11) NOT NULL COMMENT '模块id',
  `operationPermission` int(11) NOT NULL DEFAULT '0' COMMENT '操作权限:0 所有 1 查看 2新增 3删除 4修改',
  `uid` int(11) NOT NULL COMMENT '后台用户id',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`rpID`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wd_admin_rolepermission
-- ----------------------------
INSERT INTO `wd_admin_rolepermission` VALUES ('111', '2', '1', '0', '1', '1519896229');
INSERT INTO `wd_admin_rolepermission` VALUES ('112', '2', '2', '0', '1', '1519896229');
INSERT INTO `wd_admin_rolepermission` VALUES ('113', '2', '2001', '0', '1', '1519896230');
INSERT INTO `wd_admin_rolepermission` VALUES ('114', '2', '2002', '0', '1', '1519896230');
INSERT INTO `wd_admin_rolepermission` VALUES ('115', '2', '2003', '0', '1', '1519896231');
INSERT INTO `wd_admin_rolepermission` VALUES ('116', '2', '2006', '0', '1', '1519896231');
INSERT INTO `wd_admin_rolepermission` VALUES ('117', '2', '2008', '0', '1', '1519896232');
INSERT INTO `wd_admin_rolepermission` VALUES ('118', '2', '2010', '0', '1', '1519896232');
INSERT INTO `wd_admin_rolepermission` VALUES ('119', '2', '2012', '0', '1', '1519896233');
INSERT INTO `wd_admin_rolepermission` VALUES ('120', '2', '2013', '0', '1', '1519896233');
INSERT INTO `wd_admin_rolepermission` VALUES ('121', '2', '3', '0', '1', '1519896234');
INSERT INTO `wd_admin_rolepermission` VALUES ('122', '2', '4', '0', '1', '1519896234');
INSERT INTO `wd_admin_rolepermission` VALUES ('123', '2', '2004', '0', '1', '1519896235');
INSERT INTO `wd_admin_rolepermission` VALUES ('124', '2', '5', '0', '1', '1519896235');
INSERT INTO `wd_admin_rolepermission` VALUES ('125', '2', '2022', '0', '1', '1519896236');
INSERT INTO `wd_admin_rolepermission` VALUES ('126', '3', '1', '0', '1', '1520819568');
INSERT INTO `wd_admin_rolepermission` VALUES ('127', '3', '2', '0', '1', '1520819569');
INSERT INTO `wd_admin_rolepermission` VALUES ('128', '3', '2001', '0', '1', '1520819569');
INSERT INTO `wd_admin_rolepermission` VALUES ('129', '3', '2002', '0', '1', '1520819570');
INSERT INTO `wd_admin_rolepermission` VALUES ('130', '3', '6', '0', '1', '1520819570');
INSERT INTO `wd_admin_rolepermission` VALUES ('131', '3', '2026', '0', '1', '1520819571');
INSERT INTO `wd_admin_rolepermission` VALUES ('132', '3', '2027', '0', '1', '1520819571');

-- ----------------------------
-- Table structure for wd_admin_users
-- ----------------------------
DROP TABLE IF EXISTS `wd_admin_users`;
CREATE TABLE `wd_admin_users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `account` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '账号',
  `password` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '密码',
  `nickname` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户昵称',
  `addtime` int(11) NOT NULL COMMENT '创建时间',
  `logintime` int(11) NOT NULL COMMENT '登录时间',
  `roleID` int(11) NOT NULL COMMENT '角色id',
  `state` int(11) NOT NULL DEFAULT '1' COMMENT '状态:1启用 2禁用 3删除',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='管理后台用户';

-- ----------------------------
-- Records of wd_admin_users
-- ----------------------------
INSERT INTO `wd_admin_users` VALUES ('1', 'wood', 'E10ADC3949BA59ABBE56E057F20F883E', '管理员1', '0', '0', '0', '1');
INSERT INTO `wd_admin_users` VALUES ('2', 'test22', 'E10ADC3949BA59ABBE56E057F20F883E', 'test22', '1519803645', '1519803645', '2', '1');
INSERT INTO `wd_admin_users` VALUES ('3', 'kefu', 'C33367701511B4F6020EC61DED352059', 'kefu', '1519876397', '1519876397', '3', '1');
INSERT INTO `wd_admin_users` VALUES ('4', '123456', 'E10ADC3949BA59ABBE56E057F20F883E', '123456', '1520489571', '1520489571', '2', '1');
INSERT INTO `wd_admin_users` VALUES ('5', 'sa', 'F59BD65F7EDAFB087A81D4DCA06C4910', 'sa', '1520500636', '1520500636', '2', '1');
INSERT INTO `wd_admin_users` VALUES ('6', 'wood002', 'E10ADC3949BA59ABBE56E057F20F883E', 'wood002', '1520819443', '1520819443', '0', '1');
INSERT INTO `wd_admin_users` VALUES ('7', 'wood003', 'E10ADC3949BA59ABBE56E057F20F883E', 'wood003', '1520819497', '1520819497', '0', '1');
INSERT INTO `wd_admin_users` VALUES ('8', 'gg', 'E7BD50567350D19CC16EB84C7EAD0DCC', 'gg', '1522721458', '1522721458', '2', '1');
