/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : driver

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 08/03/2020 23:26:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for adminlog
-- ----------------------------
DROP TABLE IF EXISTS `adminlog`;
CREATE TABLE `adminlog`  (
  `logId` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志编号',
  `empId` int(11) NULL DEFAULT NULL COMMENT '员工编号',
  `companyId` int(11) NULL DEFAULT NULL COMMENT '公司编号',
  `logContent` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作内容',
  `logTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '操作时间',
  PRIMARY KEY (`logId`) USING BTREE,
  INDEX `FK_companyId_log`(`companyId`) USING BTREE,
  INDEX `FK_empId_log`(`empId`) USING BTREE,
  CONSTRAINT `FK_companyId_log` FOREIGN KEY (`companyId`) REFERENCES `company` (`companyId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_empId_log` FOREIGN KEY (`empId`) REFERENCES `employee` (`empId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 206 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adminlog
-- ----------------------------
INSERT INTO `adminlog` VALUES (8, 1, 1, '登录系统', '2020-03-04 19:12:02');
INSERT INTO `adminlog` VALUES (9, 1, 1, '访问首页', '2020-03-04 19:12:02');
INSERT INTO `adminlog` VALUES (10, 1, 1, '查询了所有的客户资料', '2020-03-04 19:13:03');
INSERT INTO `adminlog` VALUES (11, 1, 1, '查询了所有的员工', '2020-03-04 19:15:31');
INSERT INTO `adminlog` VALUES (12, 1, 1, '查询了所有的客户资料', '2020-03-04 19:15:40');
INSERT INTO `adminlog` VALUES (13, 1, 1, '访问首页', '2020-03-04 19:21:36');
INSERT INTO `adminlog` VALUES (14, 1, 1, '查询了所有销售订单', '2020-03-04 19:21:39');
INSERT INTO `adminlog` VALUES (15, 1, 1, '查询了所有的员工', '2020-03-04 19:21:44');
INSERT INTO `adminlog` VALUES (16, 1, 1, '查询了库存', '2020-03-04 19:21:58');
INSERT INTO `adminlog` VALUES (17, 1, 1, '登录系统', '2020-03-05 13:27:24');
INSERT INTO `adminlog` VALUES (18, 1, 1, '访问首页', '2020-03-05 13:27:24');
INSERT INTO `adminlog` VALUES (19, 1, 1, '查询了所有的客户资料', '2020-03-05 13:27:30');
INSERT INTO `adminlog` VALUES (20, 1, 1, '添加了客户', '2020-03-05 13:31:31');
INSERT INTO `adminlog` VALUES (21, 1, 1, '查询了所有的客户资料', '2020-03-05 13:31:31');
INSERT INTO `adminlog` VALUES (22, 1, 1, '查询了所有销售订单', '2020-03-05 13:32:01');
INSERT INTO `adminlog` VALUES (23, 1, 1, '查询了库存', '2020-03-05 13:32:26');
INSERT INTO `adminlog` VALUES (24, 1, 1, '查询了收款信息', '2020-03-05 13:32:38');
INSERT INTO `adminlog` VALUES (25, 1, 1, '查询了所有的订单', '2020-03-05 13:32:41');
INSERT INTO `adminlog` VALUES (26, 1, 1, '登录系统', '2020-03-05 13:34:07');
INSERT INTO `adminlog` VALUES (27, 1, 1, '访问首页', '2020-03-05 13:34:07');
INSERT INTO `adminlog` VALUES (28, 1, 1, '查询了所有的员工', '2020-03-05 13:34:45');
INSERT INTO `adminlog` VALUES (29, 1, 1, '访问首页', '2020-03-05 13:35:06');
INSERT INTO `adminlog` VALUES (30, 4, 1, '登录系统', '2020-03-05 13:38:36');
INSERT INTO `adminlog` VALUES (31, 4, 1, '访问首页', '2020-03-05 13:38:36');
INSERT INTO `adminlog` VALUES (32, 4, 1, '查询了库存', '2020-03-05 13:38:42');
INSERT INTO `adminlog` VALUES (33, 4, 1, '查询了所有销售订单', '2020-03-05 13:38:47');
INSERT INTO `adminlog` VALUES (34, 4, 1, '查询了所有的客户资料', '2020-03-05 13:38:51');
INSERT INTO `adminlog` VALUES (35, 7, 1, '登录系统', '2020-03-05 13:59:56');
INSERT INTO `adminlog` VALUES (36, 7, 1, '访问首页', '2020-03-05 13:59:56');
INSERT INTO `adminlog` VALUES (37, 1, 1, '登录系统', '2020-03-05 14:38:21');
INSERT INTO `adminlog` VALUES (38, 1, 1, '访问首页', '2020-03-05 14:38:21');
INSERT INTO `adminlog` VALUES (39, 1, 1, '登录系统', '2020-03-05 14:44:16');
INSERT INTO `adminlog` VALUES (40, 1, 1, '访问首页', '2020-03-05 14:44:16');
INSERT INTO `adminlog` VALUES (41, 4, 1, '登录系统', '2020-03-05 14:44:53');
INSERT INTO `adminlog` VALUES (42, 4, 1, '访问首页', '2020-03-05 14:44:53');
INSERT INTO `adminlog` VALUES (43, 1, 1, '登录系统', '2020-03-05 14:59:23');
INSERT INTO `adminlog` VALUES (44, 1, 1, '访问首页', '2020-03-05 14:59:23');
INSERT INTO `adminlog` VALUES (45, 1, 1, '登录系统', '2020-03-05 15:30:03');
INSERT INTO `adminlog` VALUES (46, 1, 1, '访问首页', '2020-03-05 15:30:03');
INSERT INTO `adminlog` VALUES (47, 1, 1, '查询了所有的员工', '2020-03-05 15:30:12');
INSERT INTO `adminlog` VALUES (48, 1, 1, '查询了所有的客户资料', '2020-03-05 15:32:43');
INSERT INTO `adminlog` VALUES (49, 1, 1, '访问首页', '2020-03-05 15:33:23');
INSERT INTO `adminlog` VALUES (50, 1, 1, '登录系统', '2020-03-06 13:28:50');
INSERT INTO `adminlog` VALUES (51, 1, 1, '访问首页', '2020-03-06 13:28:50');
INSERT INTO `adminlog` VALUES (52, 1, 1, '查询了所有的客户资料', '2020-03-06 13:28:58');
INSERT INTO `adminlog` VALUES (53, 1, 1, '查询了所有销售订单', '2020-03-06 13:29:04');
INSERT INTO `adminlog` VALUES (54, 1, 1, '查询了库存', '2020-03-06 13:29:12');
INSERT INTO `adminlog` VALUES (55, 1, 1, '查询了收款信息', '2020-03-06 13:29:31');
INSERT INTO `adminlog` VALUES (56, 1, 1, '查询了所有的订单', '2020-03-06 13:29:32');
INSERT INTO `adminlog` VALUES (57, 1, 1, '查询了收款信息', '2020-03-06 13:29:33');
INSERT INTO `adminlog` VALUES (58, 1, 1, '查询了所有的员工', '2020-03-06 13:30:35');
INSERT INTO `adminlog` VALUES (59, 1, 1, '访问首页', '2020-03-06 13:31:24');
INSERT INTO `adminlog` VALUES (60, 4, 1, '登录系统', '2020-03-06 13:32:15');
INSERT INTO `adminlog` VALUES (61, 4, 1, '访问首页', '2020-03-06 13:32:15');
INSERT INTO `adminlog` VALUES (62, 4, 1, '查询了所有的客户资料', '2020-03-06 13:32:23');
INSERT INTO `adminlog` VALUES (63, 4, 1, '查询了所有销售订单', '2020-03-06 13:32:27');
INSERT INTO `adminlog` VALUES (64, 4, 1, '查询了库存', '2020-03-06 13:32:33');
INSERT INTO `adminlog` VALUES (65, 4, 1, '查询了所有的客户资料', '2020-03-06 13:34:06');
INSERT INTO `adminlog` VALUES (66, 4, 1, '删除了客户信息', '2020-03-06 13:34:10');
INSERT INTO `adminlog` VALUES (67, 4, 1, '查询了所有的客户资料', '2020-03-06 13:34:10');
INSERT INTO `adminlog` VALUES (68, 4, 1, '修改了客户信息', '2020-03-06 13:34:29');
INSERT INTO `adminlog` VALUES (69, 4, 1, '查询了所有的客户资料', '2020-03-06 13:34:29');
INSERT INTO `adminlog` VALUES (70, 4, 1, '添加了客户', '2020-03-06 13:34:56');
INSERT INTO `adminlog` VALUES (71, 4, 1, '查询了所有的客户资料', '2020-03-06 13:34:56');
INSERT INTO `adminlog` VALUES (72, 4, 1, '添加了客户', '2020-03-06 13:35:37');
INSERT INTO `adminlog` VALUES (73, 4, 1, '查询了所有的客户资料', '2020-03-06 13:35:37');
INSERT INTO `adminlog` VALUES (74, 1, 1, '登录系统', '2020-03-07 16:54:51');
INSERT INTO `adminlog` VALUES (75, 1, 1, '访问首页', '2020-03-07 16:54:51');
INSERT INTO `adminlog` VALUES (76, 1, 1, '查询了所有的客户资料', '2020-03-07 16:55:00');
INSERT INTO `adminlog` VALUES (77, 1, 1, '查询了所有销售订单', '2020-03-07 16:55:08');
INSERT INTO `adminlog` VALUES (78, 1, 1, '查询了库存', '2020-03-07 16:55:17');
INSERT INTO `adminlog` VALUES (79, 1, 1, '查询了收款信息', '2020-03-07 16:55:22');
INSERT INTO `adminlog` VALUES (80, 1, 1, '查询了所有的订单', '2020-03-07 16:55:25');
INSERT INTO `adminlog` VALUES (81, 1, 1, '查询了所有的员工', '2020-03-07 16:56:04');
INSERT INTO `adminlog` VALUES (82, 1, 1, '查询了所有的员工', '2020-03-07 16:56:30');
INSERT INTO `adminlog` VALUES (83, 1, 1, '查询了所有的客户资料', '2020-03-07 16:57:08');
INSERT INTO `adminlog` VALUES (84, 1, 1, '查询了所有的员工', '2020-03-07 16:57:10');
INSERT INTO `adminlog` VALUES (85, 1, 1, '查询了所有销售订单', '2020-03-07 16:57:53');
INSERT INTO `adminlog` VALUES (86, 1, 1, '查询了所有销售订单', '2020-03-07 16:58:12');
INSERT INTO `adminlog` VALUES (87, 1, 1, '查询了所有的客户资料', '2020-03-07 16:58:22');
INSERT INTO `adminlog` VALUES (88, 1, 1, '查询了所有销售订单', '2020-03-07 16:58:32');
INSERT INTO `adminlog` VALUES (89, 1, 1, '访问首页', '2020-03-07 16:58:52');
INSERT INTO `adminlog` VALUES (90, 1, 1, '查询了所有的客户资料', '2020-03-07 16:58:54');
INSERT INTO `adminlog` VALUES (91, 1, 1, '查询了所有的客户资料', '2020-03-07 16:59:31');
INSERT INTO `adminlog` VALUES (92, 4, 1, '登录系统', '2020-03-07 18:08:29');
INSERT INTO `adminlog` VALUES (93, 4, 1, '访问首页', '2020-03-07 18:08:30');
INSERT INTO `adminlog` VALUES (94, 4, 1, '查询了所有的客户资料', '2020-03-07 18:08:37');
INSERT INTO `adminlog` VALUES (95, 4, 1, '查询了所有销售订单', '2020-03-07 18:08:43');
INSERT INTO `adminlog` VALUES (96, 4, 1, '查询了库存', '2020-03-07 18:09:11');
INSERT INTO `adminlog` VALUES (97, 4, 1, '查询了所有销售订单', '2020-03-07 18:09:32');
INSERT INTO `adminlog` VALUES (98, 4, 1, '访问首页', '2020-03-07 18:09:36');
INSERT INTO `adminlog` VALUES (99, 4, 1, '查询了所有的客户资料', '2020-03-07 18:09:38');
INSERT INTO `adminlog` VALUES (100, 4, 1, '查询了所有销售订单', '2020-03-07 18:11:51');
INSERT INTO `adminlog` VALUES (101, 1, 1, '登录系统', '2020-03-08 10:46:40');
INSERT INTO `adminlog` VALUES (102, 1, 1, '访问首页', '2020-03-08 10:46:40');
INSERT INTO `adminlog` VALUES (103, 1, 1, '登录系统', '2020-03-08 10:54:58');
INSERT INTO `adminlog` VALUES (104, 1, 1, '访问首页', '2020-03-08 10:54:59');
INSERT INTO `adminlog` VALUES (105, 1, 1, '登录系统', '2020-03-08 10:59:57');
INSERT INTO `adminlog` VALUES (106, 1, 1, '访问首页', '2020-03-08 10:59:58');
INSERT INTO `adminlog` VALUES (107, 1, 1, '访问首页', '2020-03-08 11:00:02');
INSERT INTO `adminlog` VALUES (108, 1, 1, '访问首页', '2020-03-08 11:00:04');
INSERT INTO `adminlog` VALUES (109, 1, 1, '访问首页', '2020-03-08 11:00:05');
INSERT INTO `adminlog` VALUES (110, 1, 1, '访问首页', '2020-03-08 11:00:07');
INSERT INTO `adminlog` VALUES (111, 1, 1, '查询了所有的客户资料', '2020-03-08 11:00:16');
INSERT INTO `adminlog` VALUES (112, 1, 1, '查询了库存', '2020-03-08 11:00:32');
INSERT INTO `adminlog` VALUES (113, 1, 1, '登录系统', '2020-03-08 11:02:14');
INSERT INTO `adminlog` VALUES (114, 1, 1, '访问首页', '2020-03-08 11:02:14');
INSERT INTO `adminlog` VALUES (115, 1, 1, '查询了所有的客户资料', '2020-03-08 11:02:35');
INSERT INTO `adminlog` VALUES (116, 1, 1, '登录系统', '2020-03-08 11:04:57');
INSERT INTO `adminlog` VALUES (117, 1, 1, '访问首页', '2020-03-08 11:04:57');
INSERT INTO `adminlog` VALUES (118, 1, 1, '查询了所有的员工', '2020-03-08 11:05:01');
INSERT INTO `adminlog` VALUES (119, 1, 1, '查询了所有的员工', '2020-03-08 11:05:34');
INSERT INTO `adminlog` VALUES (120, 1, 1, '登录系统', '2020-03-08 11:08:27');
INSERT INTO `adminlog` VALUES (121, 1, 1, '访问首页', '2020-03-08 11:08:27');
INSERT INTO `adminlog` VALUES (122, 10, 1, '登录系统', '2020-03-08 12:36:22');
INSERT INTO `adminlog` VALUES (123, 10, 1, '访问首页', '2020-03-08 12:36:23');
INSERT INTO `adminlog` VALUES (124, 1, 1, '登录系统', '2020-03-08 12:37:31');
INSERT INTO `adminlog` VALUES (125, 1, 1, '访问首页', '2020-03-08 12:37:31');
INSERT INTO `adminlog` VALUES (126, 1, 1, '查询了所有的客户资料', '2020-03-08 12:37:36');
INSERT INTO `adminlog` VALUES (127, 1, 1, '查询了所有销售订单', '2020-03-08 12:37:41');
INSERT INTO `adminlog` VALUES (128, 1, 1, '查询了所有的员工', '2020-03-08 12:37:49');
INSERT INTO `adminlog` VALUES (129, 10, 1, '修改了员工信息', '2020-03-08 12:38:13');
INSERT INTO `adminlog` VALUES (130, 10, 1, '查询了所有的员工', '2020-03-08 12:38:13');
INSERT INTO `adminlog` VALUES (131, 10, 1, '修改了员工信息', '2020-03-08 12:38:22');
INSERT INTO `adminlog` VALUES (132, 10, 1, '查询了所有的员工', '2020-03-08 12:38:22');
INSERT INTO `adminlog` VALUES (133, 10, 1, '查询了所有的员工', '2020-03-08 12:39:09');
INSERT INTO `adminlog` VALUES (134, 10, 1, '查询了所有的员工', '2020-03-08 12:39:10');
INSERT INTO `adminlog` VALUES (135, 10, 1, '查询了所有的员工', '2020-03-08 12:39:16');
INSERT INTO `adminlog` VALUES (136, 1, 1, '登录系统', '2020-03-08 12:56:47');
INSERT INTO `adminlog` VALUES (137, 1, 1, '访问首页', '2020-03-08 12:56:47');
INSERT INTO `adminlog` VALUES (138, 1, 1, '查询了所有的员工', '2020-03-08 12:56:51');
INSERT INTO `adminlog` VALUES (139, 1, 1, '登录系统', '2020-03-08 13:11:11');
INSERT INTO `adminlog` VALUES (140, 1, 1, '访问首页', '2020-03-08 13:11:11');
INSERT INTO `adminlog` VALUES (141, 1, 1, '查询了所有的员工', '2020-03-08 13:11:18');
INSERT INTO `adminlog` VALUES (142, 1, 1, '查询了所有的员工', '2020-03-08 13:11:21');
INSERT INTO `adminlog` VALUES (143, 1, 1, '登录系统', '2020-03-08 13:13:07');
INSERT INTO `adminlog` VALUES (144, 1, 1, '访问首页', '2020-03-08 13:13:08');
INSERT INTO `adminlog` VALUES (145, 1, 1, '查询了所有的员工', '2020-03-08 13:13:42');
INSERT INTO `adminlog` VALUES (146, 1, 1, '登录系统', '2020-03-08 13:16:10');
INSERT INTO `adminlog` VALUES (147, 1, 1, '访问首页', '2020-03-08 13:16:10');
INSERT INTO `adminlog` VALUES (148, 1, 1, '查询了所有的员工', '2020-03-08 13:16:22');
INSERT INTO `adminlog` VALUES (149, 1, 1, '查询了所有的员工', '2020-03-08 13:16:26');
INSERT INTO `adminlog` VALUES (150, 1, 1, '查询了所有的员工', '2020-03-08 13:19:09');
INSERT INTO `adminlog` VALUES (151, 1, 1, '登录系统', '2020-03-08 13:20:59');
INSERT INTO `adminlog` VALUES (152, 1, 1, '访问首页', '2020-03-08 13:20:59');
INSERT INTO `adminlog` VALUES (153, 1, 1, '查询了所有的员工', '2020-03-08 13:21:02');
INSERT INTO `adminlog` VALUES (154, 1, 1, '查询了所有的员工', '2020-03-08 13:21:07');
INSERT INTO `adminlog` VALUES (155, 1, 1, '查询了所有的员工', '2020-03-08 13:21:24');
INSERT INTO `adminlog` VALUES (156, 1, 1, '查询了所有的员工', '2020-03-08 13:21:31');
INSERT INTO `adminlog` VALUES (157, 1, 1, '查询了所有的员工', '2020-03-08 13:21:33');
INSERT INTO `adminlog` VALUES (158, 1, 1, '查询了所有的客户资料', '2020-03-08 13:22:20');
INSERT INTO `adminlog` VALUES (159, 1, 1, '登录系统', '2020-03-08 13:29:42');
INSERT INTO `adminlog` VALUES (160, 1, 1, '访问首页', '2020-03-08 13:29:43');
INSERT INTO `adminlog` VALUES (161, 1, 1, '查询了所有的员工', '2020-03-08 13:29:48');
INSERT INTO `adminlog` VALUES (162, 1, 1, '查询了所有的客户资料', '2020-03-08 13:30:02');
INSERT INTO `adminlog` VALUES (163, 1, 1, '查询了所有的客户资料', '2020-03-08 13:32:36');
INSERT INTO `adminlog` VALUES (164, 1, 1, '查询了所有的客户资料', '2020-03-08 13:35:33');
INSERT INTO `adminlog` VALUES (165, 1, 1, '查询了所有的客户资料', '2020-03-08 13:36:57');
INSERT INTO `adminlog` VALUES (166, 1, 1, '查询了所有的客户资料', '2020-03-08 13:38:43');
INSERT INTO `adminlog` VALUES (167, 1, 1, '查询了所有的客户资料', '2020-03-08 13:41:23');
INSERT INTO `adminlog` VALUES (168, 1, 1, '查询了所有的客户资料', '2020-03-08 13:43:14');
INSERT INTO `adminlog` VALUES (169, 1, 1, '查询了所有的客户资料', '2020-03-08 13:43:46');
INSERT INTO `adminlog` VALUES (170, 1, 1, '查询了所有的客户资料', '2020-03-08 13:45:44');
INSERT INTO `adminlog` VALUES (171, 1, 1, '查询了所有的客户资料', '2020-03-08 13:46:10');
INSERT INTO `adminlog` VALUES (172, 1, 1, '查询了所有的客户资料', '2020-03-08 13:49:22');
INSERT INTO `adminlog` VALUES (173, 1, 1, '添加了客户', '2020-03-08 13:49:28');
INSERT INTO `adminlog` VALUES (174, 1, 1, '查询了所有的客户资料', '2020-03-08 13:49:28');
INSERT INTO `adminlog` VALUES (175, 1, 1, '删除了客户信息', '2020-03-08 13:50:50');
INSERT INTO `adminlog` VALUES (176, 1, 1, '查询了所有的客户资料', '2020-03-08 13:50:50');
INSERT INTO `adminlog` VALUES (177, 1, 1, '查询了所有的客户资料', '2020-03-08 14:11:53');
INSERT INTO `adminlog` VALUES (178, 1, 1, '查询了所有的客户资料', '2020-03-08 14:12:25');
INSERT INTO `adminlog` VALUES (179, 1, 1, '登录系统', '2020-03-08 15:38:46');
INSERT INTO `adminlog` VALUES (180, 1, 1, '访问首页', '2020-03-08 15:38:46');
INSERT INTO `adminlog` VALUES (181, 1, 1, '查询了所有的员工', '2020-03-08 15:38:55');
INSERT INTO `adminlog` VALUES (182, 1, 1, '查询了所有的客户资料', '2020-03-08 15:41:00');
INSERT INTO `adminlog` VALUES (183, 1, 1, '查询了所有的员工', '2020-03-08 15:41:09');
INSERT INTO `adminlog` VALUES (184, 1, 1, '查询了所有的员工', '2020-03-08 15:42:59');
INSERT INTO `adminlog` VALUES (185, 1, 1, '查询了所有的员工', '2020-03-08 15:43:46');
INSERT INTO `adminlog` VALUES (186, 1, 1, '添加了员工信息', '2020-03-08 15:53:51');
INSERT INTO `adminlog` VALUES (187, 1, 1, '查询了所有的员工', '2020-03-08 15:53:51');
INSERT INTO `adminlog` VALUES (188, 1, 1, '查询了所有的员工', '2020-03-08 15:58:41');
INSERT INTO `adminlog` VALUES (189, 1, 1, '查询了所有的员工', '2020-03-08 15:59:31');
INSERT INTO `adminlog` VALUES (190, 1, 1, '查询了所有的员工', '2020-03-08 16:00:03');
INSERT INTO `adminlog` VALUES (191, 1, 1, '查询了所有的员工', '2020-03-08 16:00:40');
INSERT INTO `adminlog` VALUES (192, 1, 1, '添加了员工信息', '2020-03-08 16:01:07');
INSERT INTO `adminlog` VALUES (193, 1, 1, '查询了所有的员工', '2020-03-08 16:01:07');
INSERT INTO `adminlog` VALUES (194, 1, 1, '查询了库存', '2020-03-08 16:11:59');
INSERT INTO `adminlog` VALUES (195, 1, 1, '查询了库存', '2020-03-08 16:12:57');
INSERT INTO `adminlog` VALUES (196, 1, 1, '查询了收款信息', '2020-03-08 16:13:02');
INSERT INTO `adminlog` VALUES (197, 1, 1, '查询了所有的订单', '2020-03-08 16:13:07');
INSERT INTO `adminlog` VALUES (198, 1, 1, '查询了所有的订单', '2020-03-08 16:47:46');
INSERT INTO `adminlog` VALUES (199, 1, 1, '查询了库存', '2020-03-08 16:51:44');
INSERT INTO `adminlog` VALUES (200, 1, 1, '访问首页', '2020-03-08 16:53:21');
INSERT INTO `adminlog` VALUES (201, 1, 1, '访问首页', '2020-03-08 16:54:08');
INSERT INTO `adminlog` VALUES (202, 1, 1, '查询了库存', '2020-03-08 16:54:15');
INSERT INTO `adminlog` VALUES (203, 1, 1, '查询了所有销售订单', '2020-03-08 17:03:26');
INSERT INTO `adminlog` VALUES (204, 1, 1, '添加了汽车销售订单', '2020-03-08 17:04:06');
INSERT INTO `adminlog` VALUES (205, 1, 1, '查询了所有销售订单', '2020-03-08 17:04:06');
INSERT INTO `adminlog` VALUES (206, 1, 1, '查询了所有销售订单', '2020-03-08 17:33:26');
INSERT INTO `adminlog` VALUES (207, 1, 1, '查询了库存', '2020-03-08 17:33:32');
INSERT INTO `adminlog` VALUES (208, 1, 1, '查询了收款信息', '2020-03-08 17:36:12');
INSERT INTO `adminlog` VALUES (209, 1, 1, '查询了所有的订单', '2020-03-08 17:36:17');
INSERT INTO `adminlog` VALUES (210, 1, 1, '查询了所有销售订单', '2020-03-08 17:36:21');
INSERT INTO `adminlog` VALUES (211, 1, 1, '查询了所有的客户资料', '2020-03-08 17:58:32');
INSERT INTO `adminlog` VALUES (212, 1, 1, '查询了所有销售订单', '2020-03-08 18:16:30');
INSERT INTO `adminlog` VALUES (213, 1, 1, '查询了所有的客户资料', '2020-03-08 18:16:33');
INSERT INTO `adminlog` VALUES (214, 1, 1, '查询了所有的客户资料', '2020-03-08 18:25:40');
INSERT INTO `adminlog` VALUES (215, 1, 1, '查询了所有的订单', '2020-03-08 20:23:48');
INSERT INTO `adminlog` VALUES (216, 1, 1, '查询了收款信息', '2020-03-08 20:23:52');
INSERT INTO `adminlog` VALUES (217, 1, 1, '查询了所有销售订单', '2020-03-08 20:23:56');
INSERT INTO `adminlog` VALUES (218, 1, 1, '查询了所有销售订单', '2020-03-08 20:25:21');
INSERT INTO `adminlog` VALUES (219, 1, 1, '查询了所有销售订单', '2020-03-08 20:28:04');
INSERT INTO `adminlog` VALUES (220, 1, 1, '查询了库存', '2020-03-08 20:28:18');
INSERT INTO `adminlog` VALUES (221, 1, 1, '查询了收款信息', '2020-03-08 20:28:23');
INSERT INTO `adminlog` VALUES (222, 1, 1, '查询了所有的订单', '2020-03-08 20:28:25');
INSERT INTO `adminlog` VALUES (223, 1, 1, '查询了所有的订单', '2020-03-08 20:30:10');
INSERT INTO `adminlog` VALUES (224, 1, 1, '查询了所有销售订单', '2020-03-08 20:30:16');
INSERT INTO `adminlog` VALUES (225, 1, 1, '添加了汽车销售订单', '2020-03-08 20:30:26');
INSERT INTO `adminlog` VALUES (226, 1, 1, '查询了所有销售订单', '2020-03-08 20:30:26');
INSERT INTO `adminlog` VALUES (227, 1, 1, '查询了所有销售订单', '2020-03-08 20:30:34');
INSERT INTO `adminlog` VALUES (228, 1, 1, '查询了所有销售订单', '2020-03-08 20:32:04');
INSERT INTO `adminlog` VALUES (229, 1, 1, '查询了所有的订单', '2020-03-08 20:32:12');
INSERT INTO `adminlog` VALUES (230, 1, 1, '查询了所有的订单', '2020-03-08 20:33:10');
INSERT INTO `adminlog` VALUES (231, 1, 1, '查询了收款信息', '2020-03-08 20:33:13');
INSERT INTO `adminlog` VALUES (232, 1, 1, '查询了所有的订单', '2020-03-08 20:33:15');
INSERT INTO `adminlog` VALUES (233, 1, 1, '查询了收款信息', '2020-03-08 20:33:17');
INSERT INTO `adminlog` VALUES (234, 1, 1, '查询了所有的订单', '2020-03-08 20:33:18');
INSERT INTO `adminlog` VALUES (235, 1, 1, '查询了所有的订单', '2020-03-08 20:33:51');
INSERT INTO `adminlog` VALUES (236, 1, 1, '查询了收款信息', '2020-03-08 20:33:54');
INSERT INTO `adminlog` VALUES (237, 1, 1, '查询了收款信息', '2020-03-08 20:41:20');
INSERT INTO `adminlog` VALUES (238, 1, 1, '查询了收款信息', '2020-03-08 20:44:27');
INSERT INTO `adminlog` VALUES (239, 1, 1, '查询了收款信息', '2020-03-08 20:47:03');
INSERT INTO `adminlog` VALUES (240, 1, 1, '查询了收款信息', '2020-03-08 21:06:28');
INSERT INTO `adminlog` VALUES (241, 1, 1, '查询了收款信息', '2020-03-08 21:25:56');
INSERT INTO `adminlog` VALUES (242, 1, 1, '查询了库存', '2020-03-08 21:33:22');
INSERT INTO `adminlog` VALUES (243, 1, 1, '查询了所有的订单', '2020-03-08 23:16:48');

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `carId` int(11) NOT NULL AUTO_INCREMENT COMMENT '汽车编号',
  `seriesId` int(11) NOT NULL COMMENT '车系编号',
  `carName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '汽车名称',
  `carPrice` decimal(10, 2) NULL DEFAULT NULL COMMENT '汽车价格',
  `carTime` date NOT NULL COMMENT '出厂日期',
  PRIMARY KEY (`carId`) USING BTREE,
  INDEX `FK_seriesId`(`seriesId`) USING BTREE,
  CONSTRAINT `FK_seriesId` FOREIGN KEY (`seriesId`) REFERENCES `carseries` (`seriesId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '汽车表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES (1, 1, '2018款 30周年版 40 TFSI 进取版', 309800.00, '2018-01-01');
INSERT INTO `car` VALUES (2, 1, '2018款 30周年版 40 TFSI 运动版', 369800.00, '2018-01-01');
INSERT INTO `car` VALUES (4, 2, '2018款 30周年纪念版 TFSI 进取版', 406000.00, '2018-01-01');
INSERT INTO `car` VALUES (5, 2, '2018款 30周年纪念版 45 运动版', 512800.00, '2018-01-01');
INSERT INTO `car` VALUES (8, 3, '2018款 55 投放精英版', 937800.00, '2018-01-01');
INSERT INTO `car` VALUES (9, 3, '2018款 55 尊贵版', 999800.00, '2018-01-01');
INSERT INTO `car` VALUES (10, 4, '2013款 40 TFSI Hybrid', 608000.00, '2013-11-07');
INSERT INTO `car` VALUES (11, 4, '2013款 45 TFSI quattro 运动版', 588000.00, '2013-05-22');
INSERT INTO `car` VALUES (12, 7, '2018款 C 180 旅行轿车', 380800.00, '2018-03-01');
INSERT INTO `car` VALUES (13, 7, '2018款 C 200 轿跑车', 380800.00, '2018-03-01');
INSERT INTO `car` VALUES (14, 9, '2018款 CLA 260 4MATIC', 383800.00, '2018-03-01');
INSERT INTO `car` VALUES (15, 9, '2018款 CLA 180', 252800.00, '2018-03-01');
INSERT INTO `car` VALUES (16, 10, '2018款 320i M运动套装', 316800.00, '2018-04-05');
INSERT INTO `car` VALUES (17, 10, '2018款 xDrive 25i M运动套装', 399800.00, '2018-04-05');
INSERT INTO `car` VALUES (18, 11, '2018款 改款 540Li 行政版', 659900.00, '2018-03-07');
INSERT INTO `car` VALUES (19, 11, '2018款 xDrive28i', 751900.00, '2018-03-07');
INSERT INTO `car` VALUES (20, 12, '途观', 199800.00, '2018-03-01');
INSERT INTO `car` VALUES (21, 12, 'POLO', 75900.00, '2018-03-01');
INSERT INTO `car` VALUES (22, 12, '朗逸', 139900.00, '2018-03-01');
INSERT INTO `car` VALUES (23, 13, '宝来', 127800.00, '2018-04-11');
INSERT INTO `car` VALUES (24, 13, '大众CC', 252800.00, '2018-04-19');

-- ----------------------------
-- Table structure for carbrand
-- ----------------------------
DROP TABLE IF EXISTS `carbrand`;
CREATE TABLE `carbrand`  (
  `brandId` int(11) NOT NULL AUTO_INCREMENT COMMENT '品牌编号',
  `brandName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '品牌名称',
  `brandNum` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '品牌序号',
  PRIMARY KEY (`brandId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '汽车品牌表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carbrand
-- ----------------------------
INSERT INTO `carbrand` VALUES (1, '奥迪', 'A');
INSERT INTO `carbrand` VALUES (2, '奔驰', 'B');
INSERT INTO `carbrand` VALUES (3, '宝马', 'B');
INSERT INTO `carbrand` VALUES (4, '大众', 'D');
INSERT INTO `carbrand` VALUES (6, '小黄车1', '5');

-- ----------------------------
-- Table structure for carorder
-- ----------------------------
DROP TABLE IF EXISTS `carorder`;
CREATE TABLE `carorder`  (
  `orderId` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `carId` int(11) NULL DEFAULT NULL COMMENT '汽车编号',
  `companyId` int(11) NULL DEFAULT NULL COMMENT '公司编号',
  `orderNum` int(11) NULL DEFAULT NULL COMMENT '车辆数量',
  `orderType` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单状态（1：未审核、2：已审核）',
  `orderTotalPrice` decimal(10, 2) NULL DEFAULT NULL COMMENT '订单总价',
  PRIMARY KEY (`orderId`) USING BTREE,
  INDEX `FK_carId_order`(`carId`) USING BTREE,
  INDEX `FK_companyId_order`(`companyId`) USING BTREE,
  CONSTRAINT `FK_carId_order` FOREIGN KEY (`carId`) REFERENCES `car` (`carId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_companyId_order` FOREIGN KEY (`companyId`) REFERENCES `company` (`companyId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carorder
-- ----------------------------
INSERT INTO `carorder` VALUES (1, 12, 1, 1, '2', 380800.00);
INSERT INTO `carorder` VALUES (2, 19, 1, 1, '2', 751900.00);
INSERT INTO `carorder` VALUES (3, 21, 1, 3, '2', 227700.00);

-- ----------------------------
-- Table structure for carseries
-- ----------------------------
DROP TABLE IF EXISTS `carseries`;
CREATE TABLE `carseries`  (
  `seriesId` int(11) NOT NULL AUTO_INCREMENT COMMENT '车系编号',
  `brandId` int(11) NOT NULL COMMENT '品牌编号',
  `seriesName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车系名称',
  PRIMARY KEY (`seriesId`) USING BTREE,
  INDEX `FK_brandId`(`brandId`) USING BTREE,
  CONSTRAINT `FK_brandId` FOREIGN KEY (`brandId`) REFERENCES `carbrand` (`brandId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '汽车车系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carseries
-- ----------------------------
INSERT INTO `carseries` VALUES (1, 1, '奥迪A4');
INSERT INTO `carseries` VALUES (2, 1, '奥迪A6');
INSERT INTO `carseries` VALUES (3, 1, '奥迪A8L');
INSERT INTO `carseries` VALUES (4, 1, '奥迪Q5');
INSERT INTO `carseries` VALUES (7, 2, '奔驰C级');
INSERT INTO `carseries` VALUES (9, 2, '奔驰CLA级');
INSERT INTO `carseries` VALUES (10, 3, '宝马3系');
INSERT INTO `carseries` VALUES (11, 3, '宝马5系');
INSERT INTO `carseries` VALUES (12, 4, '一汽大众');
INSERT INTO `carseries` VALUES (13, 4, '上汽大众');

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `companyId` int(11) NOT NULL AUTO_INCREMENT COMMENT '公司编号',
  `companyName` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '公司名称',
  PRIMARY KEY (`companyId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公司表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (1, '欢迎');
INSERT INTO `company` VALUES (2, '湖南汽车AAA公司');
INSERT INTO `company` VALUES (3, '湖南汽车BBB公司');
INSERT INTO `company` VALUES (4, '湖南汽车CCC公司');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `customerId` int(11) NOT NULL AUTO_INCREMENT COMMENT '客户编号',
  `companyId` int(11) NOT NULL COMMENT '公司编号',
  `customerName` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户姓名',
  `customerPhone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户电话',
  `customerSex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户性别',
  `customerType` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户类型（1：个人、2：公司）',
  `customerBirthday` date NULL DEFAULT NULL COMMENT '客户生日',
  `customerCreateTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`customerId`) USING BTREE,
  INDEX `FK_companyId_cus`(`companyId`) USING BTREE,
  CONSTRAINT `FK_companyId_cus` FOREIGN KEY (`companyId`) REFERENCES `company` (`companyId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, 1, '张三', '18612344321', '男', '1', '1996-01-01', '2018-05-03 12:36:34');
INSERT INTO `customer` VALUES (2, 1, '李四', '18609877890', '男', '1', '1996-01-02', '2018-05-03 12:43:42');
INSERT INTO `customer` VALUES (3, 2, '王五', '13511223344', '男', '1', '1997-01-01', '2018-05-05 19:30:40');
INSERT INTO `customer` VALUES (4, 2, '赵六', '13555667788', '女', '1', '1997-01-01', '2018-05-05 19:31:16');
INSERT INTO `customer` VALUES (5, 1, '七哥', '13200775431', '女', '2', '1996-02-22', '2018-05-06 16:43:52');
INSERT INTO `customer` VALUES (6, 1, 'AAA', '13309809124', '女', '2', '1980-06-07', '2018-05-06 17:27:57');
INSERT INTO `customer` VALUES (7, 1, 'BBB', '18512340991', '男', '1', '1981-08-02', '2018-05-06 17:30:18');
INSERT INTO `customer` VALUES (8, 1, 'CCC', '17798204214', '女', '2', '1997-04-22', '2018-05-06 19:41:05');
INSERT INTO `customer` VALUES (9, 1, 'DDD', '15192740187', '男', '1', '1986-05-20', '2018-05-06 20:17:10');
INSERT INTO `customer` VALUES (10, 1, 'EEE', '18710295231', '男', '1', '1990-03-31', '2018-05-06 20:47:48');
INSERT INTO `customer` VALUES (12, 1, 'GGG', '17529402873', '男', '1', '1984-11-29', '2018-05-06 20:49:26');
INSERT INTO `customer` VALUES (13, 1, 'HHH', '15698232342', '男', '1', '1997-01-20', '2018-05-06 20:49:55');
INSERT INTO `customer` VALUES (14, 1, '大i', '16738293331', '男', '1', '1984-01-31', '2018-05-06 20:50:53');
INSERT INTO `customer` VALUES (15, 1, '马皮皮', '13766789433', '男', '1', '1993-07-07', '2020-03-05 13:31:31');
INSERT INTO `customer` VALUES (16, 1, '马允', '13766789422', '男', '1', '2020-03-02', '2020-03-06 13:34:56');
INSERT INTO `customer` VALUES (17, 1, '问问', '11367', '男', '1', '2020-03-03', '2020-03-06 13:35:37');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `empId` int(11) NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `positionId` int(11) NOT NULL COMMENT '职务编号',
  `companyId` int(11) NOT NULL COMMENT '公司编号',
  `empName` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工姓名',
  `empPhone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录手机',
  `empPassword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录密码',
  `empSalery` decimal(10, 2) NULL DEFAULT NULL COMMENT '员工工资',
  `activation` bit(1) NULL DEFAULT b'0' COMMENT '是否激活',
  PRIMARY KEY (`empId`) USING BTREE,
  INDEX `FK_companyId_emp`(`companyId`) USING BTREE,
  INDEX `FK_positionId`(`positionId`) USING BTREE,
  CONSTRAINT `FK_companyId_emp` FOREIGN KEY (`companyId`) REFERENCES `company` (`companyId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_positionId` FOREIGN KEY (`positionId`) REFERENCES `position` (`positionId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '员工表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, 1, 1, '经理1', '18673615878', '123456', 10000.00, b'1');
INSERT INTO `employee` VALUES (2, 1, 2, '赵一', '18673615878', '123456', NULL, b'1');
INSERT INTO `employee` VALUES (3, 1, 3, '王一', '18673615878', '123456', NULL, b'1');
INSERT INTO `employee` VALUES (4, 2, 1, '操作员1', '18673615789', '123456', 3000.00, b'1');
INSERT INTO `employee` VALUES (5, 2, 2, '赵二', '18123456789', '123456', NULL, b'1');
INSERT INTO `employee` VALUES (7, 3, 1, '销售员1', '18809572241', '123456', 4000.00, b'1');
INSERT INTO `employee` VALUES (8, 3, 1, '销售员2', '17682941111', '123456', 4000.00, b'1');
INSERT INTO `employee` VALUES (9, 1, 4, '平安', '13077265111', '123456', NULL, b'1');
INSERT INTO `employee` VALUES (10, 2, 1, '操作员赛高', '17645538836', '123456', 100.00, b'1');
INSERT INTO `employee` VALUES (11, 2, 1, '员工123', '17645538262', '123456', 111.00, b'0');
INSERT INTO `employee` VALUES (12, 3, 1, '员工12', '17645538844', '123456', 111.00, b'0');

-- ----------------------------
-- Table structure for evaluation
-- ----------------------------
DROP TABLE IF EXISTS `evaluation`;
CREATE TABLE `evaluation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` int(255) NOT NULL,
  `score` int(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of evaluation
-- ----------------------------
INSERT INTO `evaluation` VALUES (1, 'age', 3, 100);
INSERT INTO `evaluation` VALUES (2, 'age', 5, 60);
INSERT INTO `evaluation` VALUES (3, 'age', 10, 10);
INSERT INTO `evaluation` VALUES (4, 'km', 1000, 100);
INSERT INTO `evaluation` VALUES (5, 'km', 5000, 80);
INSERT INTO `evaluation` VALUES (6, 'km', 10000, 50);
INSERT INTO `evaluation` VALUES (7, 'km', 100000, 10);
INSERT INTO `evaluation` VALUES (8, 'brand', 1, 20);
INSERT INTO `evaluation` VALUES (9, 'brand', 2, 20);
INSERT INTO `evaluation` VALUES (10, 'brand', 3, 20);
INSERT INTO `evaluation` VALUES (11, 'brand', 4, 20);
INSERT INTO `evaluation` VALUES (12, 'brand', 6, 20);
INSERT INTO `evaluation` VALUES (13, 'brand', -1, 10);

-- ----------------------------
-- Table structure for financing
-- ----------------------------
DROP TABLE IF EXISTS `financing`;
CREATE TABLE `financing`  (
  `financingId` int(11) NOT NULL AUTO_INCREMENT COMMENT '财务编号',
  `saleId` int(11) NULL DEFAULT NULL COMMENT '销售编号',
  `repertoryId` int(11) NULL DEFAULT NULL COMMENT '库存编号',
  `companyId` int(11) NULL DEFAULT NULL COMMENT '公司编号',
  `financingMoney` decimal(10, 2) NULL DEFAULT NULL COMMENT '涉及金额',
  `financingType` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '财务状态（1：收入，2：支出）',
  `financingTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '生成时间',
  PRIMARY KEY (`financingId`) USING BTREE,
  INDEX `FK_companyId_financing`(`companyId`) USING BTREE,
  INDEX `FK_repertoryId`(`repertoryId`) USING BTREE,
  INDEX `FK_saleId`(`saleId`) USING BTREE,
  CONSTRAINT `FK_companyId_financing` FOREIGN KEY (`companyId`) REFERENCES `company` (`companyId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_repertoryId` FOREIGN KEY (`repertoryId`) REFERENCES `repertory` (`repertoryId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_saleId` FOREIGN KEY (`saleId`) REFERENCES `sale` (`saleId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '财务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of financing
-- ----------------------------
INSERT INTO `financing` VALUES (2, NULL, NULL, 1, 380800.00, '2', '2018-05-09 00:27:27');
INSERT INTO `financing` VALUES (3, NULL, NULL, 1, 227700.00, '2', '2018-05-09 10:51:14');
INSERT INTO `financing` VALUES (4, NULL, NULL, 1, 751900.00, '2', '2018-05-09 10:51:38');

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position`  (
  `positionId` int(11) NOT NULL AUTO_INCREMENT COMMENT '职务编号',
  `positionName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职务名称（经理、操作员、销售员）',
  `positionLevel` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职务等级（1：经理、2：操作员、3：销售员）',
  PRIMARY KEY (`positionId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '职务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES (1, '经理', '1');
INSERT INTO `position` VALUES (2, '操作员', '2');
INSERT INTO `position` VALUES (3, '销售员', '3');

-- ----------------------------
-- Table structure for repertory
-- ----------------------------
DROP TABLE IF EXISTS `repertory`;
CREATE TABLE `repertory`  (
  `repertoryId` int(11) NOT NULL AUTO_INCREMENT COMMENT '库存编号',
  `carId` int(11) NOT NULL COMMENT '汽车编号',
  `companyId` int(11) NOT NULL COMMENT '公司编号',
  `purchasePrice` decimal(10, 2) NULL DEFAULT NULL COMMENT '含税价格',
  `inTime` date NOT NULL COMMENT '入库时间',
  `repertoryNum` int(11) NOT NULL COMMENT '库存数量',
  PRIMARY KEY (`repertoryId`) USING BTREE,
  INDEX `FK_carId_repertory`(`carId`) USING BTREE,
  INDEX `FK_companyId_repertory`(`companyId`) USING BTREE,
  CONSTRAINT `FK_carId_repertory` FOREIGN KEY (`carId`) REFERENCES `car` (`carId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_companyId_repertory` FOREIGN KEY (`companyId`) REFERENCES `company` (`companyId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '库存表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of repertory
-- ----------------------------
INSERT INTO `repertory` VALUES (1, 20, 1, 259740.00, '2018-05-05', 3);
INSERT INTO `repertory` VALUES (3, 21, 1, 91080.00, '2018-05-09', 3);
INSERT INTO `repertory` VALUES (4, 19, 1, 902280.00, '2018-05-09', 1);

-- ----------------------------
-- Table structure for sale
-- ----------------------------
DROP TABLE IF EXISTS `sale`;
CREATE TABLE `sale`  (
  `saleId` int(11) NOT NULL AUTO_INCREMENT COMMENT '销售编号',
  `customerId` int(11) NOT NULL COMMENT '客户编号',
  `carId` int(11) NOT NULL COMMENT '汽车编号',
  `empId` int(11) NOT NULL COMMENT '员工编号',
  `companyId` int(11) NULL DEFAULT NULL COMMENT '公司编号',
  `saleCurPrice` decimal(10, 2) NOT NULL COMMENT '销售价格',
  `saleNum` int(11) NOT NULL COMMENT '销售数量',
  `saleType` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '销售状态（1、未付款，2、已付款）',
  `saleTotalPrice` decimal(10, 2) NULL DEFAULT NULL COMMENT '销售总价',
  `saleTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '销售时间',
  PRIMARY KEY (`saleId`) USING BTREE,
  INDEX `FK_carId_sale`(`carId`) USING BTREE,
  INDEX `FK_companyId_sale`(`companyId`) USING BTREE,
  INDEX `FK_customerId`(`customerId`) USING BTREE,
  INDEX `FK_empId_sale`(`empId`) USING BTREE,
  CONSTRAINT `FK_carId_sale` FOREIGN KEY (`carId`) REFERENCES `car` (`carId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_companyId_sale` FOREIGN KEY (`companyId`) REFERENCES `company` (`companyId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_customerId` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_empId_sale` FOREIGN KEY (`empId`) REFERENCES `employee` (`empId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale
-- ----------------------------
INSERT INTO `sale` VALUES (1, 6, 21, 7, 1, 91080.00, 1, '2', 91080.00, '2020-03-08 20:23:59');
INSERT INTO `sale` VALUES (2, 6, 21, 7, 1, 91080.00, 1, '1', 91080.00, '2020-03-08 20:30:26');

SET FOREIGN_KEY_CHECKS = 1;
