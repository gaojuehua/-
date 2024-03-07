/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50520
 Source Host           : localhost:3306
 Source Schema         : honey2024

 Target Server Type    : MySQL
 Target Server Version : 50520
 File Encoding         : 65001

 Date: 07/03/2024 21:40:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '简介',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `sort` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '科室',
  `schedule` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '排班',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '入职时间',
  `post` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '职位',
  `open` tinyint(1) NULL DEFAULT 1 COMMENT '是否公开',
  `states` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '医生信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES (1, 'http://localhost:9090/file/download/XHS_1604069579752673fa905-a50b-3d41-82d9-a16ce13f0b4e.jpg', 'wang', '王琦凯', '熟练掌握各种临床矫治技术，积蓄了大量的临床经验。积极致力于把精确、精致、精细、精准的观念贯穿于病种诊断、治疗计划制定及治疗计划实施的各个环节，主张以精致的临床操作程序取信病人、以先进的临床服务理念吸引病人。能够主动跟踪国际正畸临床最新发展态势，将国际最新临床技术与自主创新技术相结合，及时更新临床技术手段，用于拥挤、反合、下颌后缩等各种错合畸形的矫治。', '123456', '123456@qq.com', '内科', '周一', '2023-06-11', '主任医师', 1, '在职');
INSERT INTO `doctor` VALUES (16, 'http://localhost:9090/file/download/XHS_1602716931005187c9c8e-a103-36dc-92f3-0b3aff20c46a.jpg', 'gao', '高启强', '早产儿与新生儿重症监护；婴幼儿营养与喂养指导；儿童慢性咳嗽与过敏防治；儿童肥胖矮小与性早熟诊治；儿童自闭多动与学习困难康复。', '2234565434', '1234@qq.com', '耳鼻喉科', '周二', '2023-12-07', '副主任医师', 1, NULL);
INSERT INTO `doctor` VALUES (17, 'http://localhost:9090/file/download/1702818931335_XHS_1605138966773b856a2ea-e1b6-3397-93e3-3ec76d226413.jpg', 'sdfsdfds', 'dsfsdfsdf', '医学知识宽广，临床经验丰富，综合能力强，坚持以人为本、以健康为中心的医学新理念，坚持整体性临床思维和循证医学，坚持绿色医疗和有温度的医学。注重医学人文，善于医患沟通，关心、照顾病人。在临床实践中将心理学、叙事医学、营养学、康复医学等多学科知识融合贯通，遵循生理-心理-社会医学模式，具有处理复杂疾病、多病共存的全科诊疗能力，擅长全程全方位的个人及家庭健康管理。', 'sdfsdfsdf', 'sdfsdfsd', '外科', '周三', '2023-12-09', '副主任医师', 1, NULL);
INSERT INTO `doctor` VALUES (18, 'http://localhost:9090/file/download/XHS_1602921661919338d5c9b-0ea6-3e85-8bba-5403db905654.jpg', 'wang', '王瑞', '熟练掌握各种临床矫治技术，积蓄了大量的临床经验。积极致力于把精确、精致、精细、精准的观念贯穿于病种诊断、治疗计划制定及治疗计划实施的各个环节，主张以精致的临床操作程序取信病人、以先进的临床服务理念吸引病人。能够主动跟踪国际正畸临床最新发展态势，将国际最新临床技术与自主创新技术相结合，及时更新临床技术手段，用于拥挤、反合、下颌后缩等各种错合畸形的矫治。', '2342545435', '365543646@qq.com', '内科', '周二', NULL, '主任医师', 1, NULL);
INSERT INTO `doctor` VALUES (19, 'http://localhost:9090/file/download/1702818912549_XHS_1603381565518a7c78656-a5f1-3210-b9b3-7b8d40eb667c.jpg', 'wqrwerawerawe', 'awerfawerew', '熟练掌握各种临床矫治技术，积蓄了大量的临床经验。积极致力于把精确、精致、精细、精准的观念贯穿于病种诊断、治疗计划制定及治疗计划实施的各个环节，主张以精致的临床操作程序取信病人、以先进的临床服务理念吸引病人。能够主动跟踪国际正畸临床最新发展态势，将国际最新临床技术与自主创新技术相结合，及时更新临床技术手段，用于拥挤、反合、下颌后缩等各种错合畸形的矫治。', 'awefwafawf', 'awefawfaW', '外科', '周三', '2023-12-09', '副主任医师', 1, NULL);
INSERT INTO `doctor` VALUES (20, 'http://localhost:9090/file/download/XHS_1602921618957398e1cf1-f8d5-300d-82b7-bf7fdbd8ff64.jpg', 'asdfadsfgdas', 'asdfasdfdasf', '熟练掌握各种临床矫治技术，积蓄了大量的临床经验。积极致力于把精确、精致、精细、精准的观念贯穿于病种诊断、治疗计划制定及治疗计划实施的各个环节，主张以精致的临床操作程序取信病人、以先进的临床服务理念吸引病人。能够主动跟踪国际正畸临床最新发展态势，将国际最新临床技术与自主创新技术相结合，及时更新临床技术手段，用于拥挤、反合、下颌后缩等各种错合畸形的矫治。', 'asdfasdfa', 'sdfasdfasd', '外科', '周五', '2023-12-09', NULL, 1, NULL);
INSERT INTO `doctor` VALUES (21, 'http://localhost:9090/file/download/XHS_1605781416034ec15ff62-0941-39b7-8110-5811094eace1.jpg', 'zhi', '志强', '熟练掌握各种临床矫治技术，积蓄了大量的临床经验。积极致力于把精确、精致、精细、精准的观念贯穿于病种诊断、治疗计划制定及治疗计划实施的各个环节，主张以精致的临床操作程序取信病人、以先进的临床服务理念吸引病人。能够主动跟踪国际正畸临床最新发展态势，将国际最新临床技术与自主创新技术相结合，及时更新临床技术手段，用于拥挤、反合、下颌后缩等各种错合畸形的矫治。', '123456', '2797203669@qq.com', '儿科', '周三', '2023-12-17', '副主任医师', 1, '在职');
INSERT INTO `doctor` VALUES (22, 'http://localhost:9090/file/download/1702818881656_XHS_1603381563631b3abd198-da68-3eed-bb91-0dd5de350422.jpg', 'qwe', '小鼠', '熟练掌握各种临床矫治技术，积蓄了大量的临床经验。积极致力于把精确、精致、精细、精准的观念贯穿于病种诊断、治疗计划制定及治疗计划实施的各个环节，主张以精致的临床操作程序取信病人、以先进的临床服务理念吸引病人。能够主动跟踪国际正畸临床最新发展态势，将国际最新临床技术与自主创新技术相结合，及时更新临床技术手段，用于拥挤、反合、下颌后缩等各种错合畸形的矫治。', '123456', '123456@qq.com', '眼科', '周四', '2023-12-17', '主任医师', 1, '离职');
INSERT INTO `doctor` VALUES (24, 'http://localhost:9090/file/download/1702819575741_XHS_1603377330214a4a72cfb-bbf5-326e-b6bb-a26d95e1723e.jpg', 'qweqwewq', 'QEQEQ', '熟练掌握各种临床矫治技术，积蓄了大量的临床经验。积极致力于把精确、精致、精细、精准的观念贯穿于病种诊断、治疗计划制定及治疗计划实施的各个环节，主张以精致的临床操作程序取信病人、以先进的临床服务理念吸引病人。能够主动跟踪国际正畸临床最新发展态势，将国际最新临床技术与自主创新技术相结合，及时更新临床技术手段，用于拥挤、反合、下颌后缩等各种错合畸形的矫治。', '请问231231231', '委屈委屈恶趣味', '内科', '周四', '2023-12-17', '副主任医师', 1, '在职');
INSERT INTO `doctor` VALUES (26, 'http://localhost:9090/file/download/XHS_1605080956520aa1d468f-30f7-384d-95e5-d67050da3b2d.jpg', '123', '123', '熟练掌握各种临床矫治技术，积蓄了大量的临床经验。积极致力于把精确、精致、精细、精准的观念贯穿于病种诊断、治疗计划制定及治疗计划实施的各个环节，主张以精致的临床操作程序取信病人、以先进的临床服务理念吸引病人。能够主动跟踪国际正畸临床最新发展态势，将国际最新临床技术与自主创新技术相结合，及时更新临床技术手段，用于拥挤、反合、下颌后缩等各种错合畸形的矫治。', '123', '123', '肛肠科', '周六', '2023-12-17', '副主任医师', 1, '离职');

-- ----------------------------
-- Table structure for hanjian
-- ----------------------------
DROP TABLE IF EXISTS `hanjian`;
CREATE TABLE `hanjian`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `idcard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '身份证号',
  `sex` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `sort` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '科室',
  `ilk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '得病类型',
  `authorid` int(11) NULL DEFAULT NULL COMMENT '医生id',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `category` decimal(10, 2) NULL DEFAULT NULL COMMENT '病型类别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '病历表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hanjian
-- ----------------------------

-- ----------------------------
-- Table structure for inpantient
-- ----------------------------
DROP TABLE IF EXISTS `inpantient`;
CREATE TABLE `inpantient`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `idcard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '身份证号',
  `sex` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `sort` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '科室',
  `ilk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '得病类型',
  `authorid` int(11) NULL DEFAULT NULL COMMENT '医生id',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `category` decimal(10, 2) NULL DEFAULT NULL COMMENT '病型类别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '病历表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of inpantient
-- ----------------------------
INSERT INTO `inpantient` VALUES (96, '熊大', '34566', '男', 16, '123456789', '123456@qq.com', '内科', '病毒性', 23, '2023-12-05', '<p>adasadac</p>', 1.00);
INSERT INTO `inpantient` VALUES (97, 'asdfgfdsafdas', '3456345', '男', 16, 'asdfgfdsafdas', 'asdfgfdsafdas', NULL, '遗传性', 23, '2023-12-04', '<p>献祭了</p>', 1.00);
INSERT INTO `inpantient` VALUES (98, 'qwewqee', '234627', '男', 16, 'asdfgfdsafdas', NULL, NULL, '罕见性', 23, '2023-12-04', '<p>asdfgfdsafdasasdfgfdsafdasasdfgfdsafdas</p>', 1.00);
INSERT INTO `inpantient` VALUES (99, '我爱你', '610125200206031323', '男', 16, '我爱你', '我爱你', NULL, '细菌性', 23, '2023-12-03', '<p>asdfgfdsafdasasdfgfdsafdas</p>', 1.00);
INSERT INTO `inpantient` VALUES (100, '王老板', '12312321', '男', 123, 'qwe', 'qwe', '肛肠科', '病毒性', 23, '2023-12-03', '<p>我爱你我爱你我爱你我爱你</p>', 1.00);
INSERT INTO `inpantient` VALUES (104, '老王', '123', NULL, NULL, NULL, NULL, '内科', '细菌性', 17, '2024-01-16', '<p>good</p>', 1.00);
INSERT INTO `inpantient` VALUES (105, '老陈', '123', NULL, NULL, NULL, NULL, '内科', '季节性', 17, '2024-01-16', '', 1.00);
INSERT INTO `inpantient` VALUES (106, '23454345', '23456', '男', 16, '5432543', '66666666666', NULL, '遗传性', 23, '2023-12-06', '', 1.00);
INSERT INTO `inpantient` VALUES (107, '23454345', '23456', '男', 16, '5432543', '66666666666', NULL, '遗传性', 23, '2023-12-06', '<p>adasadac</p>', 1.00);
INSERT INTO `inpantient` VALUES (108, '熊大1', '34566', '男', 16, '123456789', '123456@qq.com', '内科', '病毒性', 23, '2023-12-05', '<p>adasadac</p>', 1.00);

-- ----------------------------
-- Table structure for jijie
-- ----------------------------
DROP TABLE IF EXISTS `jijie`;
CREATE TABLE `jijie`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `idcard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '身份证号',
  `sex` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `sort` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '科室',
  `ilk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '得病类型',
  `authorid` int(11) NULL DEFAULT NULL COMMENT '医生id',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `category` decimal(10, 2) NULL DEFAULT NULL COMMENT '病型类别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '病历表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jijie
-- ----------------------------

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作名称',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作类型',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'ip地址',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作人',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 396 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '系统日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES (4, '3', '3', '3', '3', '3');
INSERT INTO `logs` VALUES (5, '公告', '修改', '127.0.0.1', 'gao2', '2023-12-03 21:44:26');
INSERT INTO `logs` VALUES (6, '公告', '修改', '127.0.0.1', 'gao2', '2023-12-03 21:44:27');
INSERT INTO `logs` VALUES (7, '公告', '新增', '127.0.0.1', 'gao2', '2023-12-03 21:44:47');
INSERT INTO `logs` VALUES (8, '公告', '修改', '127.0.0.1', 'gao2', '2023-12-03 21:45:01');
INSERT INTO `logs` VALUES (9, '公告', '修改', '127.0.0.1', 'gao2', '2023-12-03 21:45:06');
INSERT INTO `logs` VALUES (10, '公告', '修改', '127.0.0.1', 'gao2', '2023-12-03 21:46:38');
INSERT INTO `logs` VALUES (11, '公告', '删除', '127.0.0.1', 'gao2', '2023-12-03 21:46:47');
INSERT INTO `logs` VALUES (12, '公告', '批量删除', '127.0.0.1', 'gao2', '2023-12-03 21:47:08');
INSERT INTO `logs` VALUES (13, '用户', '修改', '127.0.0.1', 'gao2', '2023-12-03 21:53:15');
INSERT INTO `logs` VALUES (14, '用户', '修改', '127.0.0.1', 'gao2', '2023-12-03 21:54:31');
INSERT INTO `logs` VALUES (15, '公告', '新增', '127.0.0.1', 'gao2', '2023-12-03 21:56:06');
INSERT INTO `logs` VALUES (16, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-03 22:21:32');
INSERT INTO `logs` VALUES (17, '用户', '修改', '127.0.0.1', 'gao2', '2023-12-03 22:21:35');
INSERT INTO `logs` VALUES (18, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-03 22:21:49');
INSERT INTO `logs` VALUES (19, '用户', '修改', '127.0.0.1', 'gao2', '2023-12-03 22:21:52');
INSERT INTO `logs` VALUES (20, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-03 22:26:36');
INSERT INTO `logs` VALUES (21, '用户', '修改', '127.0.0.1', 'gao2', '2023-12-03 22:26:38');
INSERT INTO `logs` VALUES (22, '公告', '修改', '127.0.0.1', 'gao2', '2023-12-03 22:26:54');
INSERT INTO `logs` VALUES (23, '公告', '修改', '127.0.0.1', 'gao2', '2023-12-03 22:26:55');
INSERT INTO `logs` VALUES (24, '公告', '修改', '127.0.0.1', 'gao2', '2023-12-03 22:26:56');
INSERT INTO `logs` VALUES (25, '公告', '修改', '127.0.0.1', 'gao2', '2023-12-03 22:27:00');
INSERT INTO `logs` VALUES (26, '公告', '修改', '127.0.0.1', 'gao2', '2023-12-03 22:27:04');
INSERT INTO `logs` VALUES (27, '公告', '修改', '127.0.0.1', 'gao2', '2023-12-03 22:27:21');
INSERT INTO `logs` VALUES (28, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-03 22:27:49');
INSERT INTO `logs` VALUES (29, '用户', '新增', '127.0.0.1', 'gao2', '2023-12-03 22:27:50');
INSERT INTO `logs` VALUES (30, '公告', '新增', '127.0.0.1', 'gao2', '2023-12-03 22:34:17');
INSERT INTO `logs` VALUES (31, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-03 22:34:30');
INSERT INTO `logs` VALUES (32, '用户', '修改', '127.0.0.1', 'gao2', '2023-12-03 22:34:38');
INSERT INTO `logs` VALUES (33, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-03 22:48:49');
INSERT INTO `logs` VALUES (34, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-03 22:49:41');
INSERT INTO `logs` VALUES (35, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-03 23:03:07');
INSERT INTO `logs` VALUES (36, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-03 23:03:44');
INSERT INTO `logs` VALUES (37, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-03 23:05:37');
INSERT INTO `logs` VALUES (38, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-03 23:07:57');
INSERT INTO `logs` VALUES (39, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-03 23:13:57');
INSERT INTO `logs` VALUES (40, '用户', '修改', '127.0.0.1', 'gao2', '2023-12-03 23:14:02');
INSERT INTO `logs` VALUES (41, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-03 23:18:13');
INSERT INTO `logs` VALUES (42, '用户', '修改', '127.0.0.1', 'gao2', '2023-12-03 23:18:19');
INSERT INTO `logs` VALUES (43, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-03 23:18:57');
INSERT INTO `logs` VALUES (44, '用户', '修改', '127.0.0.1', 'gao2', '2023-12-03 23:19:03');
INSERT INTO `logs` VALUES (45, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-03 23:23:07');
INSERT INTO `logs` VALUES (46, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-03 23:24:15');
INSERT INTO `logs` VALUES (47, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-03 23:27:15');
INSERT INTO `logs` VALUES (48, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-03 23:29:30');
INSERT INTO `logs` VALUES (49, '用户', '修改', '127.0.0.1', 'gao2', '2023-12-03 23:29:31');
INSERT INTO `logs` VALUES (50, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-03 23:33:46');
INSERT INTO `logs` VALUES (51, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-03 23:49:19');
INSERT INTO `logs` VALUES (52, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-04 15:33:34');
INSERT INTO `logs` VALUES (53, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-04 15:33:54');
INSERT INTO `logs` VALUES (54, '用户', '修改', '127.0.0.1', 'gao2', '2023-12-04 15:33:57');
INSERT INTO `logs` VALUES (55, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-04 16:28:09');
INSERT INTO `logs` VALUES (56, '用户', '修改', '127.0.0.1', 'gao2', '2023-12-04 16:28:11');
INSERT INTO `logs` VALUES (57, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-04 16:28:51');
INSERT INTO `logs` VALUES (58, '用户', '新增', '127.0.0.1', 'gao2', '2023-12-04 16:28:53');
INSERT INTO `logs` VALUES (59, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-04 16:36:27');
INSERT INTO `logs` VALUES (60, '用户', '新增', '127.0.0.1', 'gao2', '2023-12-04 16:36:28');
INSERT INTO `logs` VALUES (61, '用户', '登录', '127.0.0.1', 'woainiqqq', '2023-12-04 16:38:04');
INSERT INTO `logs` VALUES (62, '用户', '修改', '127.0.0.1', 'woainiqqq', '2023-12-04 16:59:47');
INSERT INTO `logs` VALUES (63, '用户', '修改', '127.0.0.1', 'woainiqqq', '2023-12-04 16:59:55');
INSERT INTO `logs` VALUES (64, '用户', '登录', '127.0.0.1', 'woainiqqq', '2023-12-04 17:00:05');
INSERT INTO `logs` VALUES (65, '用户', '修改', '127.0.0.1', 'woainiqqq', '2023-12-04 17:03:52');
INSERT INTO `logs` VALUES (66, '用户', '登录', '127.0.0.1', 'woainiqqq', '2023-12-04 17:06:41');
INSERT INTO `logs` VALUES (67, '用户', '修改', '127.0.0.1', 'gao2', '2023-12-04 17:06:59');
INSERT INTO `logs` VALUES (68, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-04 17:10:38');
INSERT INTO `logs` VALUES (69, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-04 17:14:58');
INSERT INTO `logs` VALUES (70, '用户', '修改', '127.0.0.1', 'gao2', '2023-12-04 17:15:10');
INSERT INTO `logs` VALUES (71, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-04 17:15:20');
INSERT INTO `logs` VALUES (72, '用户', '登录', '127.0.0.1', 'woainiqqq', '2023-12-04 17:15:43');
INSERT INTO `logs` VALUES (73, '用户', '修改', '127.0.0.1', 'woainiqqq', '2023-12-04 17:16:04');
INSERT INTO `logs` VALUES (74, '用户', '登录', '127.0.0.1', 'woainiqqq', '2023-12-04 17:16:47');
INSERT INTO `logs` VALUES (75, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-04 17:17:02');
INSERT INTO `logs` VALUES (76, '用户', '修改', '127.0.0.1', 'gao2', '2023-12-04 17:17:09');
INSERT INTO `logs` VALUES (77, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-05 16:36:34');
INSERT INTO `logs` VALUES (78, '订单', '新增', '127.0.0.1', 'gao2', '2023-12-05 16:42:46');
INSERT INTO `logs` VALUES (79, '订单', '新增', '127.0.0.1', 'gao2', '2023-12-05 16:42:58');
INSERT INTO `logs` VALUES (80, '订单', '新增', '127.0.0.1', 'gao2', '2023-12-05 16:43:14');
INSERT INTO `logs` VALUES (81, '订单', '新增', '127.0.0.1', 'gao2', '2023-12-05 16:43:26');
INSERT INTO `logs` VALUES (82, '订单', '修改', '127.0.0.1', 'gao2', '2023-12-05 16:43:33');
INSERT INTO `logs` VALUES (83, '订单', '修改', '127.0.0.1', 'gao2', '2023-12-05 16:43:39');
INSERT INTO `logs` VALUES (84, '订单', '修改', '127.0.0.1', 'gao2', '2023-12-05 16:43:44');
INSERT INTO `logs` VALUES (85, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-06 15:31:25');
INSERT INTO `logs` VALUES (86, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-06 15:53:35');
INSERT INTO `logs` VALUES (87, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-06 17:59:42');
INSERT INTO `logs` VALUES (88, '用户', '登录', '127.0.0.1', '234', '2023-12-06 18:07:47');
INSERT INTO `logs` VALUES (89, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-06 20:57:21');
INSERT INTO `logs` VALUES (90, '用户', '登录', '127.0.0.1', '234', '2023-12-06 21:36:54');
INSERT INTO `logs` VALUES (91, '用户', '登录', '127.0.0.1', '234', '2023-12-06 21:53:46');
INSERT INTO `logs` VALUES (92, '病历表', '新增', '127.0.0.1', '234', '2023-12-06 22:13:29');
INSERT INTO `logs` VALUES (93, '病历表', '新增', '127.0.0.1', '234', '2023-12-06 22:13:43');
INSERT INTO `logs` VALUES (94, '病历表', '新增', '127.0.0.1', '234', '2023-12-06 22:15:45');
INSERT INTO `logs` VALUES (95, '病历表', '批量删除', '127.0.0.1', '234', '2023-12-06 22:16:25');
INSERT INTO `logs` VALUES (96, '病历表', '新增', '127.0.0.1', '234', '2023-12-06 22:28:50');
INSERT INTO `logs` VALUES (97, '病历表', '新增', '127.0.0.1', '234', '2023-12-06 22:30:09');
INSERT INTO `logs` VALUES (98, '病历表', '新增', '127.0.0.1', '234', '2023-12-06 22:30:36');
INSERT INTO `logs` VALUES (99, '文件', '新增', '127.0.0.1', '234', '2023-12-06 22:33:19');
INSERT INTO `logs` VALUES (100, '病历表', '批量删除', '127.0.0.1', '234', '2023-12-06 22:36:41');
INSERT INTO `logs` VALUES (101, '病历表', '批量删除', '127.0.0.1', '234', '2023-12-06 22:36:45');
INSERT INTO `logs` VALUES (102, '病历表', '批量删除', '127.0.0.1', '234', '2023-12-06 22:36:51');
INSERT INTO `logs` VALUES (103, '病历表', '批量删除', '127.0.0.1', '234', '2023-12-06 22:36:55');
INSERT INTO `logs` VALUES (104, '病历表', '批量删除', '127.0.0.1', '234', '2023-12-06 22:36:59');
INSERT INTO `logs` VALUES (105, '病历表', '修改', '127.0.0.1', '234', '2023-12-06 22:42:33');
INSERT INTO `logs` VALUES (106, '病历表', '修改', '127.0.0.1', '234', '2023-12-06 22:42:37');
INSERT INTO `logs` VALUES (107, '病历表', '新增', '127.0.0.1', '234', '2023-12-06 22:42:50');
INSERT INTO `logs` VALUES (108, '病历表', '修改', '127.0.0.1', '234', '2023-12-06 22:42:52');
INSERT INTO `logs` VALUES (109, '病历表', '批量删除', '127.0.0.1', '234', '2023-12-06 22:44:15');
INSERT INTO `logs` VALUES (110, '用户', '登录', '127.0.0.1', '234', '2023-12-07 16:58:36');
INSERT INTO `logs` VALUES (111, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-07 17:45:55');
INSERT INTO `logs` VALUES (112, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-07 20:23:50');
INSERT INTO `logs` VALUES (113, '用户', '登录', '127.0.0.1', '234', '2023-12-07 20:24:47');
INSERT INTO `logs` VALUES (114, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-07 21:25:48');
INSERT INTO `logs` VALUES (115, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-07 21:25:52');
INSERT INTO `logs` VALUES (116, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-07 21:26:20');
INSERT INTO `logs` VALUES (117, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-07 21:26:22');
INSERT INTO `logs` VALUES (118, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-07 22:12:59');
INSERT INTO `logs` VALUES (119, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-07 22:16:05');
INSERT INTO `logs` VALUES (120, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-07 22:16:53');
INSERT INTO `logs` VALUES (121, '医生信息', '新增', '127.0.0.1', 'gao2', '2023-12-07 22:16:54');
INSERT INTO `logs` VALUES (122, '用户', '登录', '127.0.0.1', '234', '2023-12-07 22:27:30');
INSERT INTO `logs` VALUES (123, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-07 22:29:42');
INSERT INTO `logs` VALUES (124, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-08 10:12:48');
INSERT INTO `logs` VALUES (125, '用户', '登录', '127.0.0.1', '234', '2023-12-08 10:15:51');
INSERT INTO `logs` VALUES (126, '用户', '注册', '127.0.0.1', '12345678', '2023-12-08 10:22:52');
INSERT INTO `logs` VALUES (127, '用户', '登录', '127.0.0.1', '12345678', '2023-12-08 10:23:05');
INSERT INTO `logs` VALUES (128, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-08 10:24:18');
INSERT INTO `logs` VALUES (129, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-08 22:15:48');
INSERT INTO `logs` VALUES (130, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-08 22:30:08');
INSERT INTO `logs` VALUES (131, '用户', '注册', '127.0.0.1', '890', '2023-12-08 22:36:25');
INSERT INTO `logs` VALUES (132, '用户', '注册', '127.0.0.1', '890', '2023-12-08 22:36:32');
INSERT INTO `logs` VALUES (133, '用户', '注册', '127.0.0.1', '890', '2023-12-08 22:36:46');
INSERT INTO `logs` VALUES (134, '用户', '注册', '127.0.0.1', '890', '2023-12-08 22:38:59');
INSERT INTO `logs` VALUES (135, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-08 22:39:11');
INSERT INTO `logs` VALUES (136, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-08 23:07:43');
INSERT INTO `logs` VALUES (137, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-08 23:18:02');
INSERT INTO `logs` VALUES (138, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-08 23:21:20');
INSERT INTO `logs` VALUES (139, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-08 23:27:41');
INSERT INTO `logs` VALUES (140, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-08 23:41:54');
INSERT INTO `logs` VALUES (141, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-08 23:42:04');
INSERT INTO `logs` VALUES (142, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-08 23:42:15');
INSERT INTO `logs` VALUES (143, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-08 23:43:27');
INSERT INTO `logs` VALUES (144, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-08 23:43:57');
INSERT INTO `logs` VALUES (145, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-08 23:44:47');
INSERT INTO `logs` VALUES (146, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-08 23:46:08');
INSERT INTO `logs` VALUES (147, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-08 23:46:12');
INSERT INTO `logs` VALUES (148, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-08 23:49:56');
INSERT INTO `logs` VALUES (149, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-08 23:54:09');
INSERT INTO `logs` VALUES (150, '医生信息', '新增', '127.0.0.1', 'gao2', '2023-12-09 00:12:54');
INSERT INTO `logs` VALUES (151, '医生信息', '新增', '127.0.0.1', 'gao2', '2023-12-09 00:28:00');
INSERT INTO `logs` VALUES (152, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-09 00:28:12');
INSERT INTO `logs` VALUES (153, '医生信息', '新增', '127.0.0.1', 'gao2', '2023-12-09 00:28:25');
INSERT INTO `logs` VALUES (154, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-09 00:31:27');
INSERT INTO `logs` VALUES (155, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-09 00:31:32');
INSERT INTO `logs` VALUES (156, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-09 00:31:33');
INSERT INTO `logs` VALUES (157, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-09 00:31:33');
INSERT INTO `logs` VALUES (158, '用户', '登录', '127.0.0.1', '234', '2023-12-09 16:34:50');
INSERT INTO `logs` VALUES (159, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-09 16:35:48');
INSERT INTO `logs` VALUES (160, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-10 20:00:34');
INSERT INTO `logs` VALUES (161, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-10 22:17:58');
INSERT INTO `logs` VALUES (162, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-11 17:26:32');
INSERT INTO `logs` VALUES (163, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-11 19:37:03');
INSERT INTO `logs` VALUES (164, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-13 19:46:09');
INSERT INTO `logs` VALUES (165, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-13 20:25:48');
INSERT INTO `logs` VALUES (166, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-13 20:25:49');
INSERT INTO `logs` VALUES (167, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-17 16:24:07');
INSERT INTO `logs` VALUES (168, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-17 16:34:33');
INSERT INTO `logs` VALUES (169, '医生信息', '新增', '127.0.0.1', 'gao2', '2023-12-17 16:34:34');
INSERT INTO `logs` VALUES (170, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-17 16:34:52');
INSERT INTO `logs` VALUES (171, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-17 16:44:52');
INSERT INTO `logs` VALUES (172, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-17 16:47:39');
INSERT INTO `logs` VALUES (173, '医生信息', '新增', '127.0.0.1', 'gao2', '2023-12-17 16:48:12');
INSERT INTO `logs` VALUES (174, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-17 21:05:04');
INSERT INTO `logs` VALUES (175, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-17 21:14:41');
INSERT INTO `logs` VALUES (176, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-17 21:14:42');
INSERT INTO `logs` VALUES (177, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-17 21:15:12');
INSERT INTO `logs` VALUES (178, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-17 21:15:15');
INSERT INTO `logs` VALUES (179, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-17 21:15:31');
INSERT INTO `logs` VALUES (180, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-17 21:15:34');
INSERT INTO `logs` VALUES (181, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-17 21:17:33');
INSERT INTO `logs` VALUES (182, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-17 21:17:34');
INSERT INTO `logs` VALUES (183, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-17 21:20:27');
INSERT INTO `logs` VALUES (184, '医生信息', '新增', '127.0.0.1', 'gao2', '2023-12-17 21:20:29');
INSERT INTO `logs` VALUES (185, '医生信息', '删除', '127.0.0.1', 'gao2', '2023-12-17 21:25:53');
INSERT INTO `logs` VALUES (186, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-17 21:26:15');
INSERT INTO `logs` VALUES (187, '医生信息', '新增', '127.0.0.1', 'gao2', '2023-12-17 21:26:17');
INSERT INTO `logs` VALUES (188, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-17 21:29:02');
INSERT INTO `logs` VALUES (189, '用户', '修改', '127.0.0.1', 'gao2', '2023-12-17 21:29:03');
INSERT INTO `logs` VALUES (190, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-17 21:38:58');
INSERT INTO `logs` VALUES (191, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-17 21:41:00');
INSERT INTO `logs` VALUES (192, '医生信息', '新增', '127.0.0.1', 'gao2', '2023-12-17 21:41:19');
INSERT INTO `logs` VALUES (193, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-17 21:42:01');
INSERT INTO `logs` VALUES (194, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-17 21:42:04');
INSERT INTO `logs` VALUES (195, '医生信息', '删除', '127.0.0.1', 'gao2', '2023-12-17 21:43:02');
INSERT INTO `logs` VALUES (196, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-17 21:43:15');
INSERT INTO `logs` VALUES (197, '医生信息', '新增', '127.0.0.1', 'gao2', '2023-12-17 21:43:38');
INSERT INTO `logs` VALUES (198, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-17 21:55:12');
INSERT INTO `logs` VALUES (199, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-17 21:56:11');
INSERT INTO `logs` VALUES (200, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-17 21:56:41');
INSERT INTO `logs` VALUES (201, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-17 22:00:44');
INSERT INTO `logs` VALUES (202, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-17 22:08:53');
INSERT INTO `logs` VALUES (203, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-17 22:09:26');
INSERT INTO `logs` VALUES (204, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-17 22:10:02');
INSERT INTO `logs` VALUES (205, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-17 23:06:45');
INSERT INTO `logs` VALUES (206, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-18 16:30:49');
INSERT INTO `logs` VALUES (207, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-18 16:31:58');
INSERT INTO `logs` VALUES (208, '公告', '修改', '127.0.0.1', 'gao2', '2023-12-18 17:21:22');
INSERT INTO `logs` VALUES (209, '公告', '修改', '127.0.0.1', 'gao2', '2023-12-18 17:21:27');
INSERT INTO `logs` VALUES (210, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-18 17:31:55');
INSERT INTO `logs` VALUES (211, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-18 17:33:57');
INSERT INTO `logs` VALUES (212, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-18 17:33:59');
INSERT INTO `logs` VALUES (213, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-18 17:34:22');
INSERT INTO `logs` VALUES (214, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-18 17:34:25');
INSERT INTO `logs` VALUES (215, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-18 17:34:36');
INSERT INTO `logs` VALUES (216, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-18 17:38:19');
INSERT INTO `logs` VALUES (217, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-18 17:38:33');
INSERT INTO `logs` VALUES (218, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-20 15:59:07');
INSERT INTO `logs` VALUES (219, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 16:05:12');
INSERT INTO `logs` VALUES (220, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 16:05:13');
INSERT INTO `logs` VALUES (221, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 16:05:13');
INSERT INTO `logs` VALUES (222, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 16:05:14');
INSERT INTO `logs` VALUES (223, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 16:05:14');
INSERT INTO `logs` VALUES (224, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 16:05:16');
INSERT INTO `logs` VALUES (225, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 16:05:22');
INSERT INTO `logs` VALUES (226, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 16:05:27');
INSERT INTO `logs` VALUES (227, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 16:05:30');
INSERT INTO `logs` VALUES (228, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 16:05:32');
INSERT INTO `logs` VALUES (229, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 16:07:52');
INSERT INTO `logs` VALUES (230, '用户', '登录', '127.0.0.1', '234', '2023-12-20 16:09:24');
INSERT INTO `logs` VALUES (231, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 16:12:56');
INSERT INTO `logs` VALUES (232, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 16:15:12');
INSERT INTO `logs` VALUES (233, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 16:25:17');
INSERT INTO `logs` VALUES (234, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 16:26:09');
INSERT INTO `logs` VALUES (235, '用户', '删除', '127.0.0.1', 'gao2', '2023-12-20 16:27:14');
INSERT INTO `logs` VALUES (236, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 16:39:13');
INSERT INTO `logs` VALUES (237, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 16:45:27');
INSERT INTO `logs` VALUES (238, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 17:07:41');
INSERT INTO `logs` VALUES (239, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 17:08:31');
INSERT INTO `logs` VALUES (240, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 17:23:22');
INSERT INTO `logs` VALUES (241, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 17:24:02');
INSERT INTO `logs` VALUES (242, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 17:27:56');
INSERT INTO `logs` VALUES (243, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 17:28:15');
INSERT INTO `logs` VALUES (244, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 17:28:55');
INSERT INTO `logs` VALUES (245, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 17:29:24');
INSERT INTO `logs` VALUES (246, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 17:29:29');
INSERT INTO `logs` VALUES (247, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 17:35:14');
INSERT INTO `logs` VALUES (248, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 17:38:28');
INSERT INTO `logs` VALUES (249, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 17:39:06');
INSERT INTO `logs` VALUES (250, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 17:39:16');
INSERT INTO `logs` VALUES (251, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 17:39:54');
INSERT INTO `logs` VALUES (252, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 17:40:57');
INSERT INTO `logs` VALUES (253, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 17:41:15');
INSERT INTO `logs` VALUES (254, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 17:41:26');
INSERT INTO `logs` VALUES (255, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 17:41:53');
INSERT INTO `logs` VALUES (256, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 17:42:08');
INSERT INTO `logs` VALUES (257, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 17:42:37');
INSERT INTO `logs` VALUES (258, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 17:46:37');
INSERT INTO `logs` VALUES (259, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 17:46:46');
INSERT INTO `logs` VALUES (260, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-20 19:54:17');
INSERT INTO `logs` VALUES (261, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-20 19:54:25');
INSERT INTO `logs` VALUES (262, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 20:01:47');
INSERT INTO `logs` VALUES (263, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 20:25:19');
INSERT INTO `logs` VALUES (264, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 20:30:14');
INSERT INTO `logs` VALUES (265, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 20:30:15');
INSERT INTO `logs` VALUES (266, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 20:30:15');
INSERT INTO `logs` VALUES (267, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 20:30:19');
INSERT INTO `logs` VALUES (268, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 20:30:21');
INSERT INTO `logs` VALUES (269, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 20:30:23');
INSERT INTO `logs` VALUES (270, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 20:30:26');
INSERT INTO `logs` VALUES (271, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 20:30:28');
INSERT INTO `logs` VALUES (272, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 20:30:39');
INSERT INTO `logs` VALUES (273, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 20:30:48');
INSERT INTO `logs` VALUES (274, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 20:34:08');
INSERT INTO `logs` VALUES (275, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 20:34:28');
INSERT INTO `logs` VALUES (276, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 20:34:40');
INSERT INTO `logs` VALUES (277, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 20:34:52');
INSERT INTO `logs` VALUES (278, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 20:39:05');
INSERT INTO `logs` VALUES (279, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 20:39:16');
INSERT INTO `logs` VALUES (280, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 20:39:26');
INSERT INTO `logs` VALUES (281, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 20:39:32');
INSERT INTO `logs` VALUES (282, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 20:41:28');
INSERT INTO `logs` VALUES (283, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 20:41:51');
INSERT INTO `logs` VALUES (284, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 21:25:34');
INSERT INTO `logs` VALUES (285, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-20 21:25:42');
INSERT INTO `logs` VALUES (286, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-22 16:04:45');
INSERT INTO `logs` VALUES (287, '用户', '登录', '127.0.0.1', '234', '2023-12-22 16:06:47');
INSERT INTO `logs` VALUES (288, '用户', '登录', '127.0.0.1', '234', '2023-12-22 16:14:31');
INSERT INTO `logs` VALUES (289, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-22 16:16:40');
INSERT INTO `logs` VALUES (290, '用户', '登录', '127.0.0.1', '234', '2023-12-22 16:17:21');
INSERT INTO `logs` VALUES (291, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-22 16:18:27');
INSERT INTO `logs` VALUES (292, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-23 16:43:15');
INSERT INTO `logs` VALUES (293, '文件', '新增', '127.0.0.1', 'gao2', '2023-12-23 16:44:07');
INSERT INTO `logs` VALUES (294, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-23 20:51:00');
INSERT INTO `logs` VALUES (295, '用户', '登录', '127.0.0.1', '234', '2023-12-23 21:43:34');
INSERT INTO `logs` VALUES (296, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-23 22:13:06');
INSERT INTO `logs` VALUES (297, '用户', '修改', '127.0.0.1', 'gao2', '2023-12-23 22:15:10');
INSERT INTO `logs` VALUES (298, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-23 22:16:10');
INSERT INTO `logs` VALUES (299, '用户', '修改', '127.0.0.1', 'gao2', '2023-12-23 22:19:10');
INSERT INTO `logs` VALUES (300, '用户', '修改', '127.0.0.1', 'gao2', '2023-12-23 22:19:15');
INSERT INTO `logs` VALUES (301, '用户', '修改', '127.0.0.1', 'gao2', '2023-12-23 22:20:47');
INSERT INTO `logs` VALUES (302, '用户', '修改', '127.0.0.1', 'gao2', '2023-12-23 22:22:54');
INSERT INTO `logs` VALUES (303, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-24 17:16:45');
INSERT INTO `logs` VALUES (304, '病历表', '新增', '127.0.0.1', 'gao2', '2023-12-24 17:27:14');
INSERT INTO `logs` VALUES (305, '病历表', '新增', '127.0.0.1', 'gao2', '2023-12-24 17:51:23');
INSERT INTO `logs` VALUES (306, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-24 20:15:00');
INSERT INTO `logs` VALUES (307, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-24 22:38:11');
INSERT INTO `logs` VALUES (308, '用户', '登录', '127.0.0.1', 'gao2', '2023-12-26 23:29:48');
INSERT INTO `logs` VALUES (309, '医生信息', '修改', '127.0.0.1', 'gao2', '2023-12-26 23:30:08');
INSERT INTO `logs` VALUES (310, '用户', '登录', '127.0.0.1', 'gao2', '2024-01-02 11:51:43');
INSERT INTO `logs` VALUES (311, '用户', '登录', '127.0.0.1', 'gao2', '2024-01-02 11:56:12');
INSERT INTO `logs` VALUES (312, '公告', '新增', '127.0.0.1', 'gao2', '2024-01-02 11:59:05');
INSERT INTO `logs` VALUES (313, '公告', '修改', '127.0.0.1', 'gao2', '2024-01-02 12:00:00');
INSERT INTO `logs` VALUES (314, '公告', '修改', '127.0.0.1', 'gao2', '2024-01-02 12:00:10');
INSERT INTO `logs` VALUES (315, '用户', '登录', '127.0.0.1', 'gao2', '2024-01-04 13:33:52');
INSERT INTO `logs` VALUES (316, '病历表', '修改', '127.0.0.1', 'gao2', '2024-01-04 13:58:46');
INSERT INTO `logs` VALUES (317, '用户', '登录', '127.0.0.1', 'qwer', '2024-01-04 14:26:56');
INSERT INTO `logs` VALUES (318, '病历表', '删除', '127.0.0.1', 'qwer', '2024-01-04 14:27:06');
INSERT INTO `logs` VALUES (319, '病历表', '删除', '127.0.0.1', 'qwer', '2024-01-04 14:27:23');
INSERT INTO `logs` VALUES (320, '病历表', '删除', '127.0.0.1', 'qwer', '2024-01-04 14:27:27');
INSERT INTO `logs` VALUES (321, '病历表', '新增', '127.0.0.1', 'qwer', '2024-01-04 14:27:59');
INSERT INTO `logs` VALUES (322, '病历表', '删除', '127.0.0.1', 'qwer', '2024-01-04 14:28:35');
INSERT INTO `logs` VALUES (323, '病历表', '删除', '127.0.0.1', 'qwer', '2024-01-04 14:28:45');
INSERT INTO `logs` VALUES (324, '病历表', '删除', '127.0.0.1', 'qwer', '2024-01-04 14:29:24');
INSERT INTO `logs` VALUES (325, '病历表', '删除', '127.0.0.1', 'qwer', '2024-01-04 14:29:30');
INSERT INTO `logs` VALUES (326, '病历表', '删除', '127.0.0.1', 'qwer', '2024-01-04 14:29:39');
INSERT INTO `logs` VALUES (327, '病历表', '删除', '127.0.0.1', 'qwer', '2024-01-04 14:31:00');
INSERT INTO `logs` VALUES (328, '病历表', '删除', '127.0.0.1', 'qwer', '2024-01-04 14:31:03');
INSERT INTO `logs` VALUES (329, '病历表', '删除', '127.0.0.1', 'qwer', '2024-01-04 14:31:16');
INSERT INTO `logs` VALUES (330, '病历表', '删除', '127.0.0.1', 'qwer', '2024-01-04 14:32:05');
INSERT INTO `logs` VALUES (331, '病历表', '删除', '127.0.0.1', 'qwer', '2024-01-04 14:32:09');
INSERT INTO `logs` VALUES (332, '病历表', '删除', '127.0.0.1', 'qwer', '2024-01-04 14:33:20');
INSERT INTO `logs` VALUES (333, '病历表', '删除', '127.0.0.1', 'qwer', '2024-01-04 14:33:23');
INSERT INTO `logs` VALUES (334, '病历表', '删除', '127.0.0.1', 'qwer', '2024-01-04 14:34:52');
INSERT INTO `logs` VALUES (335, '病历表', '删除', '127.0.0.1', 'qwer', '2024-01-04 14:38:28');
INSERT INTO `logs` VALUES (336, '病历表', '删除', '127.0.0.1', 'qwer', '2024-01-04 14:38:59');
INSERT INTO `logs` VALUES (337, '病历表', '删除', '127.0.0.1', 'qwer', '2024-01-04 14:39:52');
INSERT INTO `logs` VALUES (338, '病历表', '删除', '127.0.0.1', 'qwer', '2024-01-04 14:39:55');
INSERT INTO `logs` VALUES (339, '用户', '登录', '127.0.0.1', 'qwer', '2024-01-04 16:58:10');
INSERT INTO `logs` VALUES (340, '病历表', '删除', '127.0.0.1', 'gao2', '2024-01-04 17:40:15');
INSERT INTO `logs` VALUES (341, '病历表', '删除', '127.0.0.1', 'gao2', '2024-01-04 17:44:20');
INSERT INTO `logs` VALUES (342, '病历表', '删除', '127.0.0.1', 'gao2', '2024-01-04 17:45:40');
INSERT INTO `logs` VALUES (343, '病历表', '删除', '127.0.0.1', 'gao2', '2024-01-04 17:46:05');
INSERT INTO `logs` VALUES (344, '病历表', '删除', '127.0.0.1', 'gao2', '2024-01-04 18:00:49');
INSERT INTO `logs` VALUES (345, '用户', '登录', '127.0.0.1', 'gao2', '2024-01-04 19:18:01');
INSERT INTO `logs` VALUES (346, '病历表', '删除', '127.0.0.1', 'gao2', '2024-01-04 19:18:21');
INSERT INTO `logs` VALUES (347, '病历表', '删除', '127.0.0.1', 'gao2', '2024-01-04 19:20:09');
INSERT INTO `logs` VALUES (348, '病历表', '删除', '127.0.0.1', 'gao2', '2024-01-04 19:20:49');
INSERT INTO `logs` VALUES (349, '病历表', '删除', '127.0.0.1', 'gao2', '2024-01-04 19:22:59');
INSERT INTO `logs` VALUES (350, '病历表', '删除', '127.0.0.1', 'gao2', '2024-01-04 19:23:12');
INSERT INTO `logs` VALUES (351, '病历表', '删除', '127.0.0.1', 'gao2', '2024-01-04 19:23:17');
INSERT INTO `logs` VALUES (352, '用户', '登录', '127.0.0.1', 'gao2', '2024-01-05 08:45:07');
INSERT INTO `logs` VALUES (353, '病历表', '删除', '127.0.0.1', 'gao2', '2024-01-05 08:53:47');
INSERT INTO `logs` VALUES (354, '用户', '登录', '127.0.0.1', 'gao2', '2024-01-05 11:04:15');
INSERT INTO `logs` VALUES (355, '用户', '登录', '127.0.0.1', 'gao2', '2024-01-05 16:37:32');
INSERT INTO `logs` VALUES (356, '病历表', '修改', '127.0.0.1', 'gao2', '2024-01-05 16:51:36');
INSERT INTO `logs` VALUES (357, '病历表', '修改', '127.0.0.1', 'gao2', '2024-01-05 16:54:13');
INSERT INTO `logs` VALUES (358, '病历表', '修改', '127.0.0.1', 'gao2', '2024-01-05 16:56:40');
INSERT INTO `logs` VALUES (359, '病历表', '修改', '127.0.0.1', 'gao2', '2024-01-05 16:56:58');
INSERT INTO `logs` VALUES (360, '病历表', '修改', '127.0.0.1', 'gao2', '2024-01-05 17:01:33');
INSERT INTO `logs` VALUES (361, '病历表', '修改', '127.0.0.1', 'gao2', '2024-01-05 17:01:48');
INSERT INTO `logs` VALUES (362, '用户', '登录', '127.0.0.1', 'gao2', '2024-01-06 14:09:43');
INSERT INTO `logs` VALUES (363, '病历表', '修改', '127.0.0.1', 'gao2', '2024-01-06 14:23:02');
INSERT INTO `logs` VALUES (364, '用户', '登录', '127.0.0.1', 'gao2', '2024-01-07 15:10:21');
INSERT INTO `logs` VALUES (365, '用户', '登录', '127.0.0.1', 'gao2', '2024-01-08 08:55:44');
INSERT INTO `logs` VALUES (366, '用户', '登录', '127.0.0.1', 'gao2', '2024-01-09 09:04:20');
INSERT INTO `logs` VALUES (367, '用户', '登录', '127.0.0.1', 'gao2', '2024-01-11 13:13:54');
INSERT INTO `logs` VALUES (368, '病历表', '修改', '127.0.0.1', 'gao2', '2024-01-11 13:18:27');
INSERT INTO `logs` VALUES (369, '病历表', '修改', '127.0.0.1', 'gao2', '2024-01-11 13:18:54');
INSERT INTO `logs` VALUES (370, '用户', '登录', '127.0.0.1', 'gao2', '2024-01-15 16:27:46');
INSERT INTO `logs` VALUES (371, '用户', '登录', '127.0.0.1', 'gao2', '2024-01-16 11:51:17');
INSERT INTO `logs` VALUES (372, '病历表', '新增', '127.0.0.1', 'gao2', '2024-01-16 12:20:24');
INSERT INTO `logs` VALUES (373, '病历表', '新增', '127.0.0.1', 'gao2', '2024-01-16 12:21:22');
INSERT INTO `logs` VALUES (374, '用户', '登录', '127.0.0.1', 'gao2', '2024-01-16 13:58:22');
INSERT INTO `logs` VALUES (375, '用户', '登录', '127.0.0.1', 'gao2', '2024-01-16 16:00:21');
INSERT INTO `logs` VALUES (376, '用户', '登录', '127.0.0.1', 'gao2', '2024-01-16 23:04:51');
INSERT INTO `logs` VALUES (377, '用户', '登录', '127.0.0.1', 'gao2', '2024-01-22 22:39:29');
INSERT INTO `logs` VALUES (378, '用户', '登录', '127.0.0.1', 'gao2', '2024-01-23 15:09:06');
INSERT INTO `logs` VALUES (379, '用户', '登录', '127.0.0.1', 'gao2', '2024-01-23 22:27:11');
INSERT INTO `logs` VALUES (380, '用户', '登录', '127.0.0.1', 'gao2', '2024-02-02 23:36:16');
INSERT INTO `logs` VALUES (381, '用户', '登录', '127.0.0.1', 'gao2', '2024-02-12 01:15:42');
INSERT INTO `logs` VALUES (382, '用户', '登录', '127.0.0.1', 'gao2', '2024-02-12 13:44:34');
INSERT INTO `logs` VALUES (383, '用户', '登录', '127.0.0.1', 'gao2', '2024-02-12 15:51:01');
INSERT INTO `logs` VALUES (384, '用户', '登录', '127.0.0.1', 'gao2', '2024-02-12 22:23:27');
INSERT INTO `logs` VALUES (385, '用户', '登录', '127.0.0.1', 'gao2', '2024-03-04 10:51:00');
INSERT INTO `logs` VALUES (386, '用户', '登录', '127.0.0.1', 'gao2', '2024-03-06 12:39:32');
INSERT INTO `logs` VALUES (387, '用户', '登录', '127.0.0.1', 'gao2', '2024-03-06 15:09:15');
INSERT INTO `logs` VALUES (388, '用户', '登录', '127.0.0.1', 'gao2', '2024-03-07 11:51:55');
INSERT INTO `logs` VALUES (389, '用户', '登录', '127.0.0.1', 'gao2', '2024-03-07 13:57:03');
INSERT INTO `logs` VALUES (390, '用户', '登录', '127.0.0.1', 'gao3', '2024-03-07 15:07:29');
INSERT INTO `logs` VALUES (391, '用户', '登录', '127.0.0.1', 'gao2', '2024-03-07 15:11:17');
INSERT INTO `logs` VALUES (392, '用户', '登录', '127.0.0.1', 'gao4', '2024-03-07 15:28:20');
INSERT INTO `logs` VALUES (393, '用户', '登录', '127.0.0.1', 'gao4', '2024-03-07 19:07:24');
INSERT INTO `logs` VALUES (394, '用户', '登录', '127.0.0.1', 'gao2', '2024-03-07 20:39:23');
INSERT INTO `logs` VALUES (395, '用户', '登录', '127.0.0.1', 'gao2', '2024-03-07 20:57:48');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '简介',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `authorid` int(11) NULL DEFAULT NULL COMMENT '发布人id',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '111', '111', '111', NULL, NULL);
INSERT INTO `news` VALUES (2, '1111', '222', '111', 17, '2023-11-30 16:38:04');
INSERT INTO `news` VALUES (3, '66', '66', '66', 17, '2023-11-30 16:53:05');
INSERT INTO `news` VALUES (4, '123', '123q', '<p>123<img src=\"http://localhost:9090/file/download/1701594271091_XHS_1603381565518a7c78656-a5f1-3210-b9b3-7b8d40eb667c.jpg\" contenteditable=\"false\" style=\"font-size: 14px; max-width: 100%;\"/></p>', 17, '2023-12-01 23:11:34');
INSERT INTO `news` VALUES (5, '123wq', '124r', '<p><img src=\"http://localhost:9090/file/download/1701594692052_XHS_1603377191928b5005340-8467-30d6-9616-0e03283b3c24.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 17, '2023-11-30 17:13:38');
INSERT INTO `news` VALUES (6, 'hahaha', 'hahaha', '<p>dfgedfdsdvfreasdf</p><pre><code class=\"Java\"><span class=\"hljs-keyword\">let</span> <span class=\"hljs-attr\">a</span> = <span class=\"hljs-number\">1</span></code></pre><table border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><th>1</th><th>2</th><th>3</th><th>4</th><th>5</th></tr><tr><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td></tr></tbody></table><img src=\"http://localhost:9090/file/download/1701357301935_XHS_1603377330214a4a72cfb-bbf5-326e-b6bb-a26d95e1723e.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/>', 17, '2023-11-30 21:48:40');
INSERT INTO `news` VALUES (7, '213', '21312', '<p>asdsa<img src=\"http://localhost:9090/file/download/1701357223332_XHS_1603381565518a7c78656-a5f1-3210-b9b3-7b8d40eb667c.jpg\" contenteditable=\"false\" style=\"font-size: 14px; max-width: 100%;\"/></p>', 17, '2023-11-30 22:02:52');
INSERT INTO `news` VALUES (8, 'qwrewfa', 'agfdadsf', '<p><img src=\"http://localhost:9090/file/download/1701448228233_XHS_1603381563631b3abd198-da68-3eed-bb91-0dd5de350422.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/file/download/XHS_1602921568913771ef6b0-84a0-3af6-bef2-fb3601064953.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 17, '2023-12-02 00:30:34');
INSERT INTO `news` VALUES (9, '23445432', 'sadsfghcxz', '<p><img src=\"http://localhost:9090/file/download/1701448360671_XHS_1603377330214a4a72cfb-bbf5-326e-b6bb-a26d95e1723e.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/>aasdffsadfsdfdefdes<span style=\"font-size: 14px;\">🙃</span><img src=\"http://localhost:9090/file/download/1701585708122_XHS_1603381565518a7c78656-a5f1-3210-b9b3-7b8d40eb667c.jpg\" contenteditable=\"false\" style=\"font-size: 14px; max-width: 100%;\"/><img src=\"http://localhost:9090/file/download/1701585717725_XHS_1603017658813be6f1336-c39d-303d-8f87-90fc98343b39.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/file/download/1701596758921_XHS_1603381561552d1ddca20-f591-3159-ac4d-a04675291f7b.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 17, '2023-12-02 00:32:55');
INSERT INTO `news` VALUES (10, 'wqefa', 'wqefas', '<p>dsfgadf<img src=\"http://localhost:9090/file/download/1701597170440_XHS_1603381561552d1ddca20-f591-3159-ac4d-a04675291f7b.jpg\" contenteditable=\"false\" style=\"font-size: 14px; max-width: 100%;\"/></p>', 17, '2023-12-03 17:52:44');
INSERT INTO `news` VALUES (11, '123213', '213213', '<p><img src=\"http://localhost:9090/file/download/1701597603919_XHS_1603381565518a7c78656-a5f1-3210-b9b3-7b8d40eb667c.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 17, '2023-12-03 18:00:05');
INSERT INTO `news` VALUES (12, '21321', '2131232', '<p>213121312<img src=\"http://localhost:9090/file/download/1701597938291_XHS_1603381563631b3abd198-da68-3eed-bb91-0dd5de350422.jpg\" contenteditable=\"false\" style=\"font-size: 14px; max-width: 100%;\"/></p>', 17, '2023-12-03 18:05:27');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `userid` int(11) NULL DEFAULT NULL COMMENT '发布人id',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发布时间',
  `open` tinyint(1) NULL DEFAULT 1 COMMENT '是否公开',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '系统公告' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '今天天气', '天气', 17, '2023-12-01 16:59:15', 1);
INSERT INTO `notice` VALUES (2, 'hahahah23122', 'ahahahaha12312ahahahaha12312ahahahaha12312ahahahaha12312ahahahaha12312ahahahaha12312ahahahaha12312ahahahaha12312ahahahaha12312ahahahaha12312ahahahaha12312ahahahaha12312ahahahaha12312ahahahaha123121231212312123121231212312', 17, '2023-12-01 17:00:55', 1);
INSERT INTO `notice` VALUES (3, '666666', '姓名：\n年龄：\n性别：\n家庭住址：\n关系：', 17, '2023-12-01 22:47:28', 1);
INSERT INTO `notice` VALUES (5, '12321321', '我\n设计\n了\na\na\na\na\na\nas\ns\nf\ndf\nds\nf\ndsf\nds\nfds\nfsdf', 17, '2023-12-03 17:27:44', 1);
INSERT INTO `notice` VALUES (8, '214234324', 'qwrqwerARweq', 17, '2023-12-03 21:56:06', 1);
INSERT INTO `notice` VALUES (9, 'awdfqfafwa', 'fawfSFSDvs', 17, '2023-12-03 22:34:17', 1);
INSERT INTO `notice` VALUES (10, 'qweerertyuydsdfbfdcv', '我爱你我爱你我爱你我爱你我爱你我爱你我爱你', 17, '2024-01-02 11:59:05', 1);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单名称',
  `money` decimal(10, 2) NULL DEFAULT NULL COMMENT '订单金额',
  `userid` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单分类',
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, '5440436eb72e4a849b645af8b1466342', '面包', 15.50, 17, '注册(登录)', '2023-12-05');
INSERT INTO `orders` VALUES (2, 'df20512b987a4553ba6ca85c5aa0a19f', '香蕉', 9.90, 17, '注册(登录)', '2023-12-06');
INSERT INTO `orders` VALUES (3, '3dd261da28ce4f2a89236011e33940c3', '西红柿', 7.00, 17, '购买', '2023-12-06');
INSERT INTO `orders` VALUES (4, '6b21a43ddaa94b759ed351a369a13e3d', '奶', 45.50, 17, '购买', '2023-12-07');
INSERT INTO `orders` VALUES (5, '6b21a43ddaa94b759ed351a369a13e3d', '奶', 45.50, 17, '商品', '2023-12-07');
INSERT INTO `orders` VALUES (6, '3dd261da28ce4f2a89236011e33940c3', '西红柿', 7.00, 17, '商品', '2023-12-08');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` int(11) NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `sort` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '科室',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (17, 'gao2', 1234, '帅66', '1234567892331', '123@qq.com', '陕西xian', 'http://localhost:9090/file/download/1701616437279_XHS_1603381561552d1ddca20-f591-3159-ac4d-a04675291f7b.jpg', '管理员', '内科');
INSERT INTO `user` VALUES (18, 'gao3', 123, '帅66', '123456789', '123@qq.com', '陕西xian', NULL, '用户', NULL);
INSERT INTO `user` VALUES (19, 'gao4', 123, '帅66', '123456789', '123@qq.com', '陕西xian', NULL, '用户', NULL);
INSERT INTO `user` VALUES (20, 'gaojuehua', 123456789, 'gaojuehua', NULL, NULL, NULL, 'http://localhost:9090/file/download/XHS_1607068429226072c7d3b-b331-3236-8fac-241c56c4bd15.jpg', '用户', NULL);
INSERT INTO `user` VALUES (21, 'gcc', 123, 'gcc', NULL, NULL, NULL, 'http://localhost:9090/file/download/1699541720772_XHS_1603017626415ce4f01df-b988-33ed-8c62-482e05c4641d.jpg', '用户', NULL);
INSERT INTO `user` VALUES (23, '234', 234, '234', NULL, NULL, NULL, 'http://localhost:9090/file/download/1701678489002_XHS_1602921793195540e757c-eca7-3f80-8e35-c66f197474d7.jpg', '医生', NULL);
INSERT INTO `user` VALUES (26, '123456', 123, '123456', NULL, NULL, NULL, 'http://localhost:9090/file/download/1701093599668_XHS_1603377330214a4a72cfb-bbf5-326e-b6bb-a26d95e1723e.jpg', '用户', NULL);
INSERT INTO `user` VALUES (27, 'qqq', 123, 'asd', '12345678', 'qweqr@qq.com', '陕西西安', 'http://localhost:9090/file/download/XHS_1605080275184e303f3ae-d8ad-3207-84c1-e4e94d552c2e.jpg', '用户', NULL);
INSERT INTO `user` VALUES (84, 'gao9', 123, '帅66', '123456789', '123@qq.com', '陕西xian', 'http://localhost:9090/file/download/1701675234013_XHS_1616777022468844b48d9-45f8-3588-8da5-d01e5093a552.jpg', '用户', NULL);
INSERT INTO `user` VALUES (85, 'gao0', 123, '帅66', '123456789', '123@qq.com', '陕西xian', 'http://localhost:9090/file/download/1701616693034_XHS_1603381565518a7c78656-a5f1-3210-b9b3-7b8d40eb667c.jpg', '用户', NULL);
INSERT INTO `user` VALUES (86, 'juehua', 123456789, 'gaojuehua', '', '', '', 'http://localhost:9090/file/download/XHS_1616251144335681a076d-135f-3e18-b0ca-0e1656842fef.jpg', '用户', NULL);
INSERT INTO `user` VALUES (87, 'gao11', 1234, '', '', '', '', 'http://localhost:9090/file/download/XHS_1603173343585067a7578-202b-3bb1-827b-dc63a9c86992.jpg', '用户', NULL);
INSERT INTO `user` VALUES (88, 'gccc', 123, 'gcc', '', '1232121', '', 'http://localhost:9090/file/download/1699541720772_XHS_1603017626415ce4f01df-b988-33ed-8c62-482e05c4641d.jpg', '用户', NULL);
INSERT INTO `user` VALUES (89, '111', 111, '111', NULL, NULL, NULL, 'http://localhost:9090/file/download/1701613309291_XHS_1604832364552bf281d6a-0d01-3972-8a6e-8e157d41f935.jpg', '医生', '内科');
INSERT INTO `user` VALUES (90, '1111', 1111, '1111', NULL, NULL, NULL, 'http://localhost:9090/file/download/XHS_1602921793195540e757c-eca7-3f80-8e35-c66f197474d7.jpg', '其他人员', NULL);
INSERT INTO `user` VALUES (91, 'admin', 123, 'admin', 'admin', 'admin', 'admin', 'http://localhost:9090/file/download/XHS_1603167303522448d992d-4f3b-3a13-b5d1-6b717ad55bae.jpg', '用户', NULL);
INSERT INTO `user` VALUES (92, 'woaini', 123, 'woaini', 'woaini', 'woaini', 'woainivvvwoainiwoaini', 'http://localhost:9090/file/download/XHS_1608799971123132afa71-6897-3b95-bd73-f7f786eb5754.jpg', '用户', NULL);
INSERT INTO `user` VALUES (93, 'woainiqqq', 1234, 'woainiqqq', 'woainiqqq', 'woainiqqq', 'woainiqqqwoainiqqqwoainiqqq', 'http://localhost:9090/file/download/XHS_1616300053470312a07a2-ed3e-359d-9265-4420c9634ab9.jpg', '用户', NULL);
INSERT INTO `user` VALUES (95, '890', 890, '890', NULL, NULL, NULL, 'http://localhost:9090/file/download/1702819742433_XHS_1603377330214a4a72cfb-bbf5-326e-b6bb-a26d95e1723e.jpg', '用户', NULL);
INSERT INTO `user` VALUES (96, 'qwer', 1234, 'qwer', 'qwer', 'qwer', 'qwer', NULL, '医生', '肛肠科');

-- ----------------------------
-- Table structure for xijun
-- ----------------------------
DROP TABLE IF EXISTS `xijun`;
CREATE TABLE `xijun`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `idcard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '身份证号',
  `sex` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `sort` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '科室',
  `ilk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '得病类型',
  `authorid` int(11) NULL DEFAULT NULL COMMENT '医生id',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `category` decimal(10, 2) NULL DEFAULT NULL COMMENT '病型类别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '病历表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xijun
-- ----------------------------

-- ----------------------------
-- Table structure for yichuan
-- ----------------------------
DROP TABLE IF EXISTS `yichuan`;
CREATE TABLE `yichuan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `idcard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '身份证号',
  `sex` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `sort` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '科室',
  `ilk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '得病类型',
  `authorid` int(11) NULL DEFAULT NULL COMMENT '医生id',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `category` decimal(10, 2) NULL DEFAULT NULL COMMENT '病型类别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '病历表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yichuan
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
