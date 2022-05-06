/*
 Navicat Premium Data Transfer

 Source Server         : shuchenhao
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : redb

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 05/05/2022 20:39:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for balance
-- ----------------------------
DROP TABLE IF EXISTS `balance`;
CREATE TABLE `balance` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '订单主键',
  `is_delete` int DEFAULT NULL COMMENT '0==删除 1==显示',
  `balance_status` int DEFAULT NULL COMMENT '1==未付款2==已付款3==已失效',
  `total_price` double(10,2) DEFAULT NULL COMMENT '订单总价',
  `open_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '小程序openid',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of balance
-- ----------------------------
BEGIN;
INSERT INTO `balance` VALUES (18, 1, 2, 39.00, '1', '2022-04-05 20:36:01', '2022-04-05 20:36:05');
INSERT INTO `balance` VALUES (19, 1, 2, 39.00, '2', '2022-04-05 20:37:21', '2022-04-05 20:37:25');
INSERT INTO `balance` VALUES (20, 1, 2, 78.00, '3', '2022-04-05 20:40:03', '2022-04-05 20:40:07');
INSERT INTO `balance` VALUES (21, 1, 2, 39.00, '4', '2022-04-05 20:46:30', '2022-04-05 20:46:36');
INSERT INTO `balance` VALUES (22, 1, 2, 39.00, '5', '2022-04-05 20:47:17', '2022-04-05 20:47:19');
INSERT INTO `balance` VALUES (23, 1, 2, 39.00, '6', '2022-04-05 20:50:59', '2022-04-05 20:51:01');
INSERT INTO `balance` VALUES (24, 1, 2, 39.00, '7', '2022-04-05 20:53:48', '2022-04-05 20:53:50');
INSERT INTO `balance` VALUES (25, 1, 2, 39.00, '8', '2022-04-05 21:06:31', '2022-04-05 21:06:34');
INSERT INTO `balance` VALUES (26, 1, 2, 39.00, '9', '2022-04-28 18:30:10', '2022-04-28 18:30:14');
INSERT INTO `balance` VALUES (27, 1, 1, 39.00, '10', '2022-04-28 18:41:30', '2022-04-28 18:41:30');
INSERT INTO `balance` VALUES (28, 1, 2, 39.00, '11', '2022-04-28 18:45:06', '2022-04-28 18:45:24');
INSERT INTO `balance` VALUES (29, 1, 2, 39.00, '12', '2022-04-28 18:46:20', '2022-04-28 18:46:23');
INSERT INTO `balance` VALUES (30, 1, 1, 39.00, '13', '2022-04-28 18:50:24', '2022-04-28 18:50:24');
INSERT INTO `balance` VALUES (31, 1, 2, 39.00, '14', '2022-04-28 19:02:00', '2022-04-28 19:02:02');
INSERT INTO `balance` VALUES (32, 1, 1, 66.00, '15', '2022-05-05 15:19:34', '2022-05-05 15:19:34');
INSERT INTO `balance` VALUES (33, 1, 2, 210.00, '16', '2022-05-05 16:30:58', '2022-05-05 16:31:11');
INSERT INTO `balance` VALUES (34, 1, 2, 144.00, NULL, '2022-05-05 19:29:31', '2022-05-05 19:29:42');
INSERT INTO `balance` VALUES (35, 1, 2, 325.00, NULL, '2022-05-05 19:46:15', '2022-05-05 19:46:19');
INSERT INTO `balance` VALUES (36, 1, 2, 144.00, '', '2022-05-05 19:48:14', '2022-05-05 19:48:16');
INSERT INTO `balance` VALUES (37, 1, 2, 136.00, NULL, '2022-05-05 19:55:28', '2022-05-05 19:55:33');
INSERT INTO `balance` VALUES (38, 1, 2, 80.00, NULL, '2022-05-05 19:58:35', '2022-05-05 19:58:39');
INSERT INTO `balance` VALUES (39, 1, 1, 80.00, NULL, '2022-05-05 19:58:55', '2022-05-05 19:58:55');
INSERT INTO `balance` VALUES (40, 1, 1, 169.00, NULL, '2022-05-05 20:32:32', '2022-05-05 20:32:32');
COMMIT;

-- ----------------------------
-- Table structure for coupon
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon` (
  `yhqid` int NOT NULL AUTO_INCREMENT COMMENT '优惠券主键',
  `imgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片url',
  `je` int DEFAULT NULL COMMENT '金额',
  `mzje` int DEFAULT NULL COMMENT '满足金额',
  `mztj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '满足条件',
  PRIMARY KEY (`yhqid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of coupon
-- ----------------------------
BEGIN;
INSERT INTO `coupon` VALUES (1, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic178.nipic.com%2Ffile%2F20180823%2F21398242_141722284000_2.jpg&refer=http%3A%2F%2Fpic178.nipic.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1654343413&t=27c986aca4fa7fa87005d112f941328f', 50, 6666, '每次限使用1张');
INSERT INTO `coupon` VALUES (2, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic178.nipic.com%2Ffile%2F20180823%2F21398242_141722284000_2.jpg&refer=http%3A%2F%2Fpic178.nipic.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1654343413&t=27c986aca4fa7fa87005d112f941328f', 50, 6666, '每次限使用1张');
COMMIT;

-- ----------------------------
-- Table structure for dish
-- ----------------------------
DROP TABLE IF EXISTS `dish`;
CREATE TABLE `dish` (
  `dish_id` int NOT NULL AUTO_INCREMENT COMMENT '菜的主键',
  `dish_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜名',
  `dish_url` varchar(2550) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜的路径',
  `hot_status` int DEFAULT NULL COMMENT '1==不辣 2==微辣 3==中辣 4==超辣',
  `praise_times` int DEFAULT NULL COMMENT '点赞次数',
  `is_sign` int DEFAULT NULL COMMENT '0==不是招牌 1==招牌',
  `is_new_dish` int DEFAULT NULL COMMENT '0==不是新品 1=新品',
  `sales_volume` int DEFAULT NULL COMMENT '菜的销量',
  `dish_price` double(10,2) DEFAULT NULL COMMENT '菜的价格',
  `dish_type` int DEFAULT NULL COMMENT '1==热销 2==新品3==锅底4==蔬菜5==肉类6==冷菜7==酒水',
  `dish_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜的描述',
  PRIMARY KEY (`dish_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of dish
-- ----------------------------
BEGIN;
INSERT INTO `dish` VALUES (1, '水煮肉片', 'https://img1.baidu.com/it/u=2059288099,3412333667&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500', 2, 666, 1, 1, 1004, 66.00, 1, '绝对美味，令人上瘾');
INSERT INTO `dish` VALUES (2, '干锅大虾', 'https://img1.baidu.com/it/u=2059288099,3412333667&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500', 2, 687, 1, 1, 893, 78.00, 1, '保证吃一次就爱上它');
INSERT INTO `dish` VALUES (3, '糖醋大排', 'https://img1.baidu.com/it/u=2059288099,3412333667&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500', 1, 333, 1, 0, 457, 45.00, 1, '绝对美味，令人上瘾');
INSERT INTO `dish` VALUES (4, '霸王别鸡', 'https://img1.baidu.com/it/u=2059288099,3412333667&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500', 2, 456, 1, 0, 357, 58.00, 1, '绝对美味，令人上瘾');
INSERT INTO `dish` VALUES (5, '蒸鹿尾', 'https://img1.baidu.com/it/u=2059288099,3412333667&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500', 1, 356, 1, 1, 679, 78.00, 1, '绝对美味，令人上瘾');
INSERT INTO `dish` VALUES (6, '凤尾鱼翅', 'https://img1.baidu.com/it/u=2059288099,3412333667&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500', 1, 234, 0, 0, 556, 68.00, 1, '绝对美味，令人上瘾');
INSERT INTO `dish` VALUES (7, '毛血旺', 'https://img1.baidu.com/it/u=2059288099,3412333667&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500', 4, 678, 0, 0, 337, 58.00, 1, '绝对美味，令人上瘾');
INSERT INTO `dish` VALUES (8, '凉拌木耳', 'https://img0.baidu.com/it/u=3473346447,1874496706&fm=253&fmt=auto&app=138&f=JPEG?w=460&h=465', 2, 555, 0, 0, 545, 22.00, 2, '清爽');
INSERT INTO `dish` VALUES (9, '花生米', 'https://img0.baidu.com/it/u=3473346447,1874496706&fm=253&fmt=auto&app=138&f=JPEG?w=460&h=465', 1, 999, 0, 0, 888, 12.00, 2, '下酒菜');
INSERT INTO `dish` VALUES (10, '皮蛋豆腐', 'https://img0.baidu.com/it/u=3473346447,1874496706&fm=253&fmt=auto&app=138&f=JPEG?w=460&h=465', 2, 444, 0, 0, 666, 18.00, 2, '清爽一下');
INSERT INTO `dish` VALUES (11, '农家小炒肉', 'https://img1.baidu.com/it/u=628671259,2815852771&fm=253&fmt=auto&app=138&f=JPEG?w=629&h=500', 2, 555, 0, 0, 88, 28.00, 3, '量足美味');
INSERT INTO `dish` VALUES (12, '爆炒牛肉', 'https://img1.baidu.com/it/u=628671259,2815852771&fm=253&fmt=auto&app=138&f=JPEG?w=629&h=500', 2, 55, 0, 0, 765, 38.00, 3, '量足美味');
INSERT INTO `dish` VALUES (13, '西红柿炒鸡蛋', 'https://img1.baidu.com/it/u=628671259,2815852771&fm=253&fmt=auto&app=138&f=JPEG?w=629&h=500', 1, 555, 0, 0, 567, 24.00, 3, '量足美味');
INSERT INTO `dish` VALUES (14, '宫保鸡丁', 'https://img1.baidu.com/it/u=628671259,2815852771&fm=253&fmt=auto&app=138&f=JPEG?w=629&h=500', 2, 555, 0, 0, 356, 38.00, 3, '量足美味');
INSERT INTO `dish` VALUES (15, '西红柿蛋汤', 'https://img0.baidu.com/it/u=2057335719,3241829020&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500', 1, 222, 0, 0, 245, 25.00, 4, '适宜下饭');
INSERT INTO `dish` VALUES (16, '排骨汤', 'https://img0.baidu.com/it/u=2057335719,3241829020&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500', 1, 333, 0, 0, 567, 45.00, 4, '肉美汤鲜');
INSERT INTO `dish` VALUES (17, '雪花啤酒', 'http://t13.baidu.com/it/u=2798771799,794734252&fm=224&app=112&f=JPEG?w=500&h=500', NULL, NULL, NULL, NULL, NULL, 10.00, 5, '夏日必备');
INSERT INTO `dish` VALUES (18, '可口可乐', 'https://img0.baidu.com/it/u=827681876,3642368082&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500', NULL, NULL, NULL, NULL, NULL, 10.00, 5, '聚会必备');
INSERT INTO `dish` VALUES (19, '西瓜', 'https://img0.baidu.com/it/u=3683154573,1846605085&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500', NULL, NULL, NULL, NULL, NULL, 15.00, 6, '饭后水果');
INSERT INTO `dish` VALUES (20, '哈密瓜', 'https://img0.baidu.com/it/u=3683154573,1846605085&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500', NULL, NULL, NULL, NULL, NULL, 15.00, 6, '饭后水果');
COMMIT;

-- ----------------------------
-- Table structure for dish_type
-- ----------------------------
DROP TABLE IF EXISTS `dish_type`;
CREATE TABLE `dish_type` (
  `type_id` int NOT NULL AUTO_INCREMENT COMMENT '菜的类型主键',
  `dish_type` int DEFAULT NULL COMMENT '1==热销 2==新品3==锅底4==蔬菜5==肉类6==冷菜7==酒水',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '种类名字',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of dish_type
-- ----------------------------
BEGIN;
INSERT INTO `dish_type` VALUES (1, 1, '主菜');
INSERT INTO `dish_type` VALUES (2, 2, '冷菜');
INSERT INTO `dish_type` VALUES (3, 3, '热菜');
INSERT INTO `dish_type` VALUES (4, 4, '汤煲');
INSERT INTO `dish_type` VALUES (5, 5, '饮料酒水');
INSERT INTO `dish_type` VALUES (6, 6, '水果');
COMMIT;

-- ----------------------------
-- Table structure for my_coupon
-- ----------------------------
DROP TABLE IF EXISTS `my_coupon`;
CREATE TABLE `my_coupon` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户主键',
  `open_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '小程序openid',
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户昵称',
  `yhqid` int DEFAULT NULL COMMENT '优惠券id',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  `end_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '失效时间',
  `is_delete` int DEFAULT NULL COMMENT '0==删除 1==显示',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `open_id` (`open_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of my_coupon
-- ----------------------------
BEGIN;
INSERT INTO `my_coupon` VALUES (1, '1', '秦梓航', 1, '2022-4-5', '2022-4-5', '2022-4-6', 1);
INSERT INTO `my_coupon` VALUES (16, 'undefined', NULL, 1, '2022-05-05 19:55:10', '2022-05-05 19:55:10', '2022-05-12 19:55:10', 1);
INSERT INTO `my_coupon` VALUES (17, 'undefined', NULL, 1, '2022-05-05 19:56:47', '2022-05-05 19:56:47', '2022-05-12 19:56:47', 1);
INSERT INTO `my_coupon` VALUES (18, 'undefined', NULL, 1, '2022-05-05 19:57:44', '2022-05-05 19:57:44', '2022-05-12 19:57:44', 1);
COMMIT;

-- ----------------------------
-- Table structure for res_table
-- ----------------------------
DROP TABLE IF EXISTS `res_table`;
CREATE TABLE `res_table` (
  `table_id` int NOT NULL AUTO_INCREMENT COMMENT '桌子主键',
  `max_seating` int NOT NULL,
  `table_status` int NOT NULL,
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of res_table
-- ----------------------------
BEGIN;
INSERT INTO `res_table` VALUES (1, 4, 1);
INSERT INTO `res_table` VALUES (2, 9, 2);
INSERT INTO `res_table` VALUES (3, 2, 3);
COMMIT;

-- ----------------------------
-- Table structure for reserve
-- ----------------------------
DROP TABLE IF EXISTS `reserve`;
CREATE TABLE `reserve` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '预约主键',
  `open_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '小程序openId',
  `user_id` int DEFAULT NULL COMMENT '用户id',
  `table_id` int DEFAULT NULL COMMENT '桌子id',
  `reserve_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '预约号码',
  `reserve_status` int DEFAULT NULL COMMENT '0==失效 1==预约 2== 等待 3==无法预约',
  `reserve_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '预约时间',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  `is_delete` int DEFAULT '1' COMMENT '0==删除  1==显示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of reserve
-- ----------------------------
BEGIN;
INSERT INTO `reserve` VALUES (1, '1', 1, 1, '864', 1, '2022-04-05 20:35:43', '2022-04-05 20:36:29', '2022-04-05 20:36:29', 1);
INSERT INTO `reserve` VALUES (2, '2', 1, 2, '324', 1, '2022-04-28 18:46:10', '2022-04-28 18:54:05', '2022-04-28 18:54:05', 0);
INSERT INTO `reserve` VALUES (3, '3', 1, 3, '463', 1, '2022-05-05 15:40:52', '2022-05-05 15:41:05', '2022-05-05 15:41:05', 1);
INSERT INTO `reserve` VALUES (28, '', NULL, NULL, '247', 1, '2022-05-05 17:09:45', '2022-05-05 19:47:44', '2022-05-05 19:47:44', 1);
COMMIT;

-- ----------------------------
-- Table structure for shop_cart
-- ----------------------------
DROP TABLE IF EXISTS `shop_cart`;
CREATE TABLE `shop_cart` (
  `shop_cart_id` int NOT NULL AUTO_INCREMENT COMMENT '购物车主键',
  `balance_id` int DEFAULT NULL COMMENT '订单主键',
  `dish_id` int DEFAULT NULL COMMENT '菜单主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜名',
  `price` double(10,2) DEFAULT NULL COMMENT '单价',
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `count` int DEFAULT NULL COMMENT '购买数量',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`shop_cart_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of shop_cart
-- ----------------------------
BEGIN;
INSERT INTO `shop_cart` VALUES (1, 1, 1, '五折', 1.00, NULL, 2, '2022-4-5', '2022-4-30');
INSERT INTO `shop_cart` VALUES (14, 18, 1, '鸳鸯火锅', 39.00, '无渣', 1, '2022-04-05 20:36:01', '2022-04-05 20:36:01');
INSERT INTO `shop_cart` VALUES (15, 19, 1, '鸳鸯火锅', 39.00, '无渣', 1, '2022-04-05 20:37:21', '2022-04-05 20:37:21');
INSERT INTO `shop_cart` VALUES (16, 20, 1, '鸳鸯火锅', 39.00, '无渣', 1, '2022-04-05 20:40:03', '2022-04-05 20:40:03');
INSERT INTO `shop_cart` VALUES (17, 20, 2, '重庆火锅', 39.00, '辣油', 1, '2022-04-05 20:40:03', '2022-04-05 20:40:03');
INSERT INTO `shop_cart` VALUES (18, 21, 1, '鸳鸯火锅', 39.00, '无渣', 1, '2022-04-05 20:46:30', '2022-04-05 20:46:30');
INSERT INTO `shop_cart` VALUES (19, 22, 2, '重庆火锅', 39.00, '辣油', 1, '2022-04-05 20:47:17', '2022-04-05 20:47:17');
INSERT INTO `shop_cart` VALUES (20, 23, 1, '鸳鸯火锅', 39.00, '无渣', 1, '2022-04-05 20:50:59', '2022-04-05 20:50:59');
INSERT INTO `shop_cart` VALUES (21, 24, 1, '鸳鸯火锅', 39.00, '无渣', 1, '2022-04-05 20:53:48', '2022-04-05 20:53:48');
INSERT INTO `shop_cart` VALUES (22, 25, 1, '鸳鸯火锅', 39.00, '无渣', 1, '2022-04-05 21:06:31', '2022-04-05 21:06:31');
INSERT INTO `shop_cart` VALUES (23, 26, 1, '鸳鸯火锅', 39.00, '无渣', 1, '2022-04-28 18:30:10', '2022-04-28 18:30:10');
INSERT INTO `shop_cart` VALUES (24, 27, 1, '鸳鸯火锅', 39.00, '无渣', 1, '2022-04-28 18:41:30', '2022-04-28 18:41:30');
INSERT INTO `shop_cart` VALUES (25, 28, 1, '鸳鸯火锅', 39.00, '无渣', 1, '2022-04-28 18:45:06', '2022-04-28 18:45:06');
INSERT INTO `shop_cart` VALUES (26, 29, 2, '重庆火锅', 39.00, '辣油', 1, '2022-04-28 18:46:20', '2022-04-28 18:46:20');
INSERT INTO `shop_cart` VALUES (27, 30, 2, '重庆火锅', 39.00, '辣油', 1, '2022-04-28 18:50:24', '2022-04-28 18:50:24');
INSERT INTO `shop_cart` VALUES (28, 31, 2, '重庆火锅', 39.00, '辣油', 1, '2022-04-28 19:02:00', '2022-04-28 19:02:00');
INSERT INTO `shop_cart` VALUES (29, 32, 1, '水煮肉片', 66.00, '绝对美味，令人上瘾', 1, '2022-05-05 15:19:34', '2022-05-05 15:19:34');
INSERT INTO `shop_cart` VALUES (30, 33, 2, '干锅大虾', 78.00, '保证吃一次就爱上它', 1, '2022-05-05 16:30:58', '2022-05-05 16:30:58');
INSERT INTO `shop_cart` VALUES (31, 33, 1, '水煮肉片', 66.00, '绝对美味，令人上瘾', 2, '2022-05-05 16:30:58', '2022-05-05 16:30:58');
INSERT INTO `shop_cart` VALUES (32, 34, 1, '水煮肉片', 66.00, '绝对美味，令人上瘾', 1, '2022-05-05 19:29:31', '2022-05-05 19:29:31');
INSERT INTO `shop_cart` VALUES (33, 34, 2, '干锅大虾', 78.00, '保证吃一次就爱上它', 1, '2022-05-05 19:29:31', '2022-05-05 19:29:31');
INSERT INTO `shop_cart` VALUES (34, 35, 1, '水煮肉片', 66.00, '绝对美味，令人上瘾', 1, '2022-05-05 19:46:15', '2022-05-05 19:46:15');
INSERT INTO `shop_cart` VALUES (35, 35, 2, '干锅大虾', 78.00, '保证吃一次就爱上它', 1, '2022-05-05 19:46:15', '2022-05-05 19:46:15');
INSERT INTO `shop_cart` VALUES (36, 35, 3, '糖醋大排', 45.00, '绝对美味，令人上瘾', 1, '2022-05-05 19:46:15', '2022-05-05 19:46:15');
INSERT INTO `shop_cart` VALUES (37, 35, 5, '蒸鹿尾', 78.00, '绝对美味，令人上瘾', 1, '2022-05-05 19:46:15', '2022-05-05 19:46:15');
INSERT INTO `shop_cart` VALUES (38, 35, 7, '毛血旺', 58.00, '绝对美味，令人上瘾', 1, '2022-05-05 19:46:15', '2022-05-05 19:46:15');
INSERT INTO `shop_cart` VALUES (39, 36, 1, '水煮肉片', 66.00, '绝对美味，令人上瘾', 1, '2022-05-05 19:48:14', '2022-05-05 19:48:14');
INSERT INTO `shop_cart` VALUES (40, 36, 2, '干锅大虾', 78.00, '保证吃一次就爱上它', 1, '2022-05-05 19:48:14', '2022-05-05 19:48:14');
INSERT INTO `shop_cart` VALUES (41, 37, 2, '干锅大虾', 78.00, '保证吃一次就爱上它', 1, '2022-05-05 19:55:28', '2022-05-05 19:55:28');
INSERT INTO `shop_cart` VALUES (42, 37, 4, '霸王别鸡', 58.00, '绝对美味，令人上瘾', 1, '2022-05-05 19:55:28', '2022-05-05 19:55:28');
INSERT INTO `shop_cart` VALUES (43, 38, 7, '毛血旺', 58.00, '绝对美味，令人上瘾', 1, '2022-05-05 19:58:35', '2022-05-05 19:58:35');
INSERT INTO `shop_cart` VALUES (44, 38, 8, '凉拌木耳', 22.00, '清爽', 1, '2022-05-05 19:58:35', '2022-05-05 19:58:35');
INSERT INTO `shop_cart` VALUES (45, 39, 7, '毛血旺', 58.00, '绝对美味，令人上瘾', 1, '2022-05-05 19:58:55', '2022-05-05 19:58:55');
INSERT INTO `shop_cart` VALUES (46, 39, 8, '凉拌木耳', 22.00, '清爽', 1, '2022-05-05 19:58:55', '2022-05-05 19:58:55');
INSERT INTO `shop_cart` VALUES (47, 40, 1, '水煮肉片', 66.00, '绝对美味，令人上瘾', 1, '2022-05-05 20:32:32', '2022-05-05 20:32:32');
INSERT INTO `shop_cart` VALUES (48, 40, 3, '糖醋大排', 45.00, '绝对美味，令人上瘾', 1, '2022-05-05 20:32:32', '2022-05-05 20:32:32');
INSERT INTO `shop_cart` VALUES (49, 40, 7, '毛血旺', 58.00, '绝对美味，令人上瘾', 1, '2022-05-05 20:32:32', '2022-05-05 20:32:32');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
