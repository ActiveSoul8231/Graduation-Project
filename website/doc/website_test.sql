/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : 127.0.0.1:3306
 Source Schema         : website

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 06/03/2020 10:50:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_area_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `tb_area_dictionary`;
CREATE TABLE `tb_area_dictionary`  (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '典型区域名称',
  PRIMARY KEY (`area_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_area_dictionary
-- ----------------------------
INSERT INTO `tb_area_dictionary` VALUES (1, '其它点');
INSERT INTO `tb_area_dictionary` VALUES (2, '西大门');
INSERT INTO `tb_area_dictionary` VALUES (3, '院食堂');
INSERT INTO `tb_area_dictionary` VALUES (4, '宿舍楼');
INSERT INTO `tb_area_dictionary` VALUES (5, '体育场');
INSERT INTO `tb_area_dictionary` VALUES (6, '逸夫楼');
INSERT INTO `tb_area_dictionary` VALUES (7, '主教楼');
INSERT INTO `tb_area_dictionary` VALUES (8, '网教楼');
INSERT INTO `tb_area_dictionary` VALUES (9, '111');
INSERT INTO `tb_area_dictionary` VALUES (10, '2224');
INSERT INTO `tb_area_dictionary` VALUES (11, '333');

-- ----------------------------
-- Table structure for tb_article_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `tb_article_dictionary`;
CREATE TABLE `tb_article_dictionary`  (
  `res_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '物品表比较大众的种类ID',
  `res_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '物品名称',
  PRIMARY KEY (`res_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_article_dictionary
-- ----------------------------
INSERT INTO `tb_article_dictionary` VALUES (1, '证件');
INSERT INTO `tb_article_dictionary` VALUES (2, '钱包');
INSERT INTO `tb_article_dictionary` VALUES (3, '箱包');
INSERT INTO `tb_article_dictionary` VALUES (4, '银行卡');
INSERT INTO `tb_article_dictionary` VALUES (5, '卡类');
INSERT INTO `tb_article_dictionary` VALUES (6, '钥匙');
INSERT INTO `tb_article_dictionary` VALUES (7, '衣物');
INSERT INTO `tb_article_dictionary` VALUES (8, '首饰');
INSERT INTO `tb_article_dictionary` VALUES (9, '数码');
INSERT INTO `tb_article_dictionary` VALUES (10, '其他');

-- ----------------------------
-- Table structure for tb_find_or_discover
-- ----------------------------
DROP TABLE IF EXISTS `tb_find_or_discover`;
CREATE TABLE `tb_find_or_discover`  (
  `m_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '信息ID',
  `m_type` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '信息类型（0为失物招领，1为寻物启事）',
  `m_article_type_id` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '物品类型ID字典',
  `m_post_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '公告信息状态（0为未发布，1为已发布）',
  `m_area_id` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域ID字典',
  `m_area_detail` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域详细位置',
  `m_launch_date` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '信息发布时间',
  `m_u_id` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '信息关联发布用户ID',
  `m_del_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '信息删除状态（0为未删除，1为已删除，默认为0）',
  `m_title` varchar(44) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '信息标题，不超过22个字',
  `m_article_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物品（拾到/丢失）时间',
  `m_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物品图片',
  PRIMARY KEY (`m_id`) USING BTREE,
  INDEX `fk_tb_find_or_discover_tb_user_1`(`m_u_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_find_or_discover
-- ----------------------------
INSERT INTO `tb_find_or_discover` VALUES (11, '1', '10', '1', '2', '在教学楼6楼四', '2020-02-20', '2', '0', '在教学楼6楼四丢失毛绒玩具（寻物启事）v范德萨v防擦算法擦三次水水水水水水水水水', '2020-02-19', 'http://localhost:1234/static/picture/20200220/45f45b10f5d34f47b6abbff4f99e9c23.png');
INSERT INTO `tb_find_or_discover` VALUES (12, '0', '8', '1', '5', '足球们处', '2020-02-20', '1', '0', '在操场足球们出拾到一部手机（失物招领）', '2020-02-20', 'http://localhost:1234/static/picture/20200220/ead6b9fe76fe45248133026e11e0e4f4.png');
INSERT INTO `tb_find_or_discover` VALUES (13, '0', '9', '1', '6', '六楼613', '2020-02-21', '2', '0', '在逸夫楼613拾到一个优盘', '2020-02-13', 'http://localhost:1234/static/picture/20200221/770d3180293c472483767b9f6b47b412.png');
INSERT INTO `tb_find_or_discover` VALUES (15, '0', '9', '1', '5', '43rtfqtf', '2020-02-21', '2', '0', 'qwretwegww', '2020-02-19', 'http://localhost:1234/template/picture/20200221/9a199a0544824782b5c160446816e9e2.jpg');
INSERT INTO `tb_find_or_discover` VALUES (16, '1', '5', '1', '4', '111', '2020-02-21', '2', '0', '111', '2020-02-24', 'http://localhost:1234/template/picture/20200221/497be6792f1b454db1d08814ce5e1f29.jpg');
INSERT INTO `tb_find_or_discover` VALUES (17, '1', '9', '1', '8', '222', '2020-02-17', '2', '0', '222', '2020-02-12', 'http://localhost:1234/template/picture/20200221/81a5a50ba7ca4e31ba81ecb58f75b13b.png');
INSERT INTO `tb_find_or_discover` VALUES (18, '1', '8', '1', '6', '3333', '2020-02-18', '2', '0', '333', '2020-02-20', 'http://localhost:1234/template/picture/20200221/3e4e2e6fceb94ede8439d600ee566392.png');
INSERT INTO `tb_find_or_discover` VALUES (19, '1', '7', '1', '6', '444', '2020-02-15', '2', '0', '444', '2020-02-19', 'http://localhost:1234/template/picture/20200221/22a6c75ad27d4f08aae8523366972c54.png');
INSERT INTO `tb_find_or_discover` VALUES (20, '1', '6', '1', '5', '555', '2020-02-03', '2', '0', '啊啊啊啊啊啊啊啊啊啊八八八八八八八八八八草草草草草草草草草草顶顶顶顶顶顶顶顶顶顶', '2020-01-29', 'http://localhost:1234/template/picture/20200221/89a1b0e6bf5742f6bbebc75a02a281b5.png');
INSERT INTO `tb_find_or_discover` VALUES (27, '1', '3', '0', '3', '测试地址', '2020-02-22', '2', '0', '测试标题', '2020-02-12', 'http://localhost:1234/template/picture/20200222/3f86f723577e44058e77453e4ab85dbe.png');
INSERT INTO `tb_find_or_discover` VALUES (28, '0', '2', '0', '4', '888', '2020-02-27', '2', '0', '888', '2020-02-19', 'http://localhost:1234/template/picture/20200227/426b8b8ff5df4e469f6ebeefe600b278.png');
INSERT INTO `tb_find_or_discover` VALUES (29, '1', '3', '0', '5', '777', '2020-02-27', '2', '1', '777', '2020-02-27', 'http://localhost:1234/template/picture/20200227/b414f6c9aa4a4cce8cac0c8d655f4245.png');
INSERT INTO `tb_find_or_discover` VALUES (30, '0', '6', '1', '6', '755', '2020-02-27', '2', '0', '555', '2020-02-29', 'http://localhost:1234/template/picture/20200227/00441917384c40329f11051006f6d026.png');
INSERT INTO `tb_find_or_discover` VALUES (31, '0', '1', '1', '7', 'qwertyuiop', '2020-02-29', '4', '0', 'qwertyuiop[', '2020-02-28', 'http://localhost:1234/template/picture/20200228/60be0e70503d40fa9393b879d3abe6f0.jpg');
INSERT INTO `tb_find_or_discover` VALUES (32, '1', '7', '1', '5', 'sdfghjk', '2020-02-29', '3', '0', 'qwertyuiop', '2020-01-06', 'http://localhost:1234/template/picture/20200221/9a199a0544824782b5c160446816e9e2.jpg');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `u_telephone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户手机号',
  `u_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户邮箱',
  `u_password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `u_level` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2' COMMENT '用户级别（0为管理员，1为普通管理员，2为普通用户）',
  `u_recovery_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '0为未封号，1为已封号',
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, '文岚', '15804780093', 'wenlan8231@163.com', '5958231', '0', '0');
INSERT INTO `tb_user` VALUES (2, '张三', '15464121654', '1345679845', '123456', '2', '0');
INSERT INTO `tb_user` VALUES (4, 'ww3306', '15048888735', '965646256654', 'ww3306', '2', '0');

SET FOREIGN_KEY_CHECKS = 1;
