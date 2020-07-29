/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : demo

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-07-29 13:24:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', 'Index', 'feather icon-bar-chart-2', '/', '2020-07-15 07:14:57', null);
INSERT INTO `admin_menu` VALUES ('2', '0', '2', 'Admin', 'feather icon-settings', '', '2020-07-15 07:14:57', '2020-07-28 07:19:34');
INSERT INTO `admin_menu` VALUES ('3', '2', '3', 'Users', '', 'auth/users', '2020-07-15 07:14:57', '2020-07-28 07:19:34');
INSERT INTO `admin_menu` VALUES ('4', '2', '4', 'Roles', '', 'auth/roles', '2020-07-15 07:14:57', '2020-07-28 07:19:34');
INSERT INTO `admin_menu` VALUES ('5', '2', '5', 'Permission', '', 'auth/permissions', '2020-07-15 07:14:57', '2020-07-28 07:19:34');
INSERT INTO `admin_menu` VALUES ('6', '2', '6', 'Menu', '', 'auth/menu', '2020-07-15 07:14:57', '2020-07-28 07:19:34');
INSERT INTO `admin_menu` VALUES ('7', '2', '7', 'Operation log', '', 'auth/logs', '2020-07-15 07:14:57', '2020-07-28 07:19:34');
INSERT INTO `admin_menu` VALUES ('9', '0', '9', '设备', 'fa-apple', 'device/device', '2020-07-27 02:56:19', '2020-07-28 07:19:34');
INSERT INTO `admin_menu` VALUES ('10', '0', '10', '设备日志', 'fa-apple', 'device/device_log', '2020-07-27 02:57:26', '2020-07-28 07:19:34');
INSERT INTO `admin_menu` VALUES ('11', '0', '11', '设备视频', 'fa-apple', 'device/device_video', '2020-07-27 02:58:31', '2020-07-28 07:19:34');

-- ----------------------------
-- Table structure for `admin_operation_log`
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `path` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `input` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2094 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-15 09:38:33', '2020-07-15 09:38:33');
INSERT INTO `admin_operation_log` VALUES ('2', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"pV7J93kCFbycSC6NpvAPuaUntl03eSemMic2osdO\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-15 09:38:45', '2020-07-15 09:38:45');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-15 09:38:46', '2020-07-15 09:38:46');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 09:38:56', '2020-07-15 09:38:56');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 09:39:02', '2020-07-15 09:39:02');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 09:39:37', '2020-07-15 09:39:37');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 09:39:55', '2020-07-15 09:39:55');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 09:40:30', '2020-07-15 09:40:30');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 09:40:32', '2020-07-15 09:40:32');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 09:41:41', '2020-07-15 09:41:41');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 09:41:43', '2020-07-15 09:41:43');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 09:41:43', '2020-07-15 09:41:43');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 09:41:58', '2020-07-15 09:41:58');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 09:42:33', '2020-07-15 09:42:33');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-16 00:51:26', '2020-07-16 00:51:26');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 01:17:52', '2020-07-16 01:17:52');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 01:17:53', '2020-07-16 01:17:53');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-07-16 01:18:01', '2020-07-16 01:18:01');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-16 01:21:54', '2020-07-16 01:21:54');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-07-16 01:22:08', '2020-07-16 01:22:08');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-16 01:58:05', '2020-07-16 01:58:05');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-07-16 01:58:14', '2020-07-16 01:58:14');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-16 02:00:19', '2020-07-16 02:00:19');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"user\"}', '2020-07-16 02:00:27', '2020-07-16 02:00:27');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-07-16 02:00:30', '2020-07-16 02:00:30');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:03:58', '2020-07-16 02:03:58');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-07-16 02:04:04', '2020-07-16 02:04:04');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:04:10', '2020-07-16 02:04:10');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:04:17', '2020-07-16 02:04:17');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:04:18', '2020-07-16 02:04:18');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/helpers/icons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:04:21', '2020-07-16 02:04:21');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:04:22', '2020-07-16 02:04:22');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-07-16 02:04:26', '2020-07-16 02:04:26');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:05:14', '2020-07-16 02:05:14');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:05:20', '2020-07-16 02:05:20');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:05:26', '2020-07-16 02:05:26');
INSERT INTO `admin_operation_log` VALUES ('37', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-16 02:05:26', '2020-07-16 02:05:26');
INSERT INTO `admin_operation_log` VALUES ('38', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"L7XXRRbTKH5hlYeuKuOlOR2Mjcywd0I7HualUMwI\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-16 02:05:32', '2020-07-16 02:05:32');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 02:05:32', '2020-07-16 02:05:32');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:14:28', '2020-07-16 02:14:28');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-07-16 02:14:32', '2020-07-16 02:14:32');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:20:11', '2020-07-16 02:20:11');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:20:16', '2020-07-16 02:20:16');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:20:18', '2020-07-16 02:20:18');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-16 02:20:49', '2020-07-16 02:20:49');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:20:52', '2020-07-16 02:20:52');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-07-16 02:20:56', '2020-07-16 02:20:56');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"migrations\"}', '2020-07-16 02:28:53', '2020-07-16 02:28:53');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"goods\"}', '2020-07-16 02:28:59', '2020-07-16 02:28:59');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"order\"}', '2020-07-16 02:29:02', '2020-07-16 02:29:02');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"user\"}', '2020-07-16 02:29:05', '2020-07-16 02:29:05');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-07-16 02:29:07', '2020-07-16 02:29:07');
INSERT INTO `admin_operation_log` VALUES ('53', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-16 02:40:50', '2020-07-16 02:40:50');
INSERT INTO `admin_operation_log` VALUES ('54', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"P3pqMpkWpxixxxQE2tDgBdlMg04Vnh78LU2Cs5pR\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-16 02:41:00', '2020-07-16 02:41:00');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-16 02:41:01', '2020-07-16 02:41:01');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-07-16 02:41:08', '2020-07-16 02:41:08');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-16 02:43:46', '2020-07-16 02:43:46');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-07-16 02:46:01', '2020-07-16 02:46:01');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-16 03:08:21', '2020-07-16 03:08:21');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-07-16 03:08:26', '2020-07-16 03:08:26');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"admin_users\"}', '2020-07-16 03:14:59', '2020-07-16 03:14:59');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-16 03:16:13', '2020-07-16 03:16:13');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"goods\"}', '2020-07-16 03:16:17', '2020-07-16 03:16:17');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-07-16 03:19:11', '2020-07-16 03:19:11');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:19:27', '2020-07-16 03:19:27');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:19:29', '2020-07-16 03:19:29');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:19:39', '2020-07-16 03:19:39');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:19:54', '2020-07-16 03:19:54');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:19:56', '2020-07-16 03:19:56');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:19:56', '2020-07-16 03:19:56');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:19:59', '2020-07-16 03:19:59');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:20:24', '2020-07-16 03:20:24');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:20:26', '2020-07-16 03:20:26');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-07-16 03:20:36', '2020-07-16 03:20:36');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-16 03:22:37', '2020-07-16 03:22:37');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-07-16 03:25:34', '2020-07-16 03:25:34');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-07-16 03:25:56', '2020-07-16 03:25:56');
INSERT INTO `admin_operation_log` VALUES ('78', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-16 03:41:26', '2020-07-16 03:41:26');
INSERT INTO `admin_operation_log` VALUES ('79', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"IWFYYF3OVo51BTQXXnOC4cosXvGaPFL0EytVsKhJ\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-16 03:41:41', '2020-07-16 03:41:41');
INSERT INTO `admin_operation_log` VALUES ('80', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-16 03:41:42', '2020-07-16 03:41:42');
INSERT INTO `admin_operation_log` VALUES ('81', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"N6jqph7v0YUXmIubs6vXuiAecO0t5xupE5UU2o95\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-16 03:41:55', '2020-07-16 03:41:55');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-16 03:41:55', '2020-07-16 03:41:55');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-07-16 03:42:00', '2020-07-16 03:42:00');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:45:48', '2020-07-16 03:45:48');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-07-16 03:45:53', '2020-07-16 03:45:53');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:46:23', '2020-07-16 03:46:23');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:46:24', '2020-07-16 03:46:24');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-07-16 03:46:28', '2020-07-16 03:46:28');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-16 05:26:00', '2020-07-16 05:26:00');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-16 05:26:07', '2020-07-16 05:26:07');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-16 05:29:49', '2020-07-16 05:29:49');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-07-16 05:29:54', '2020-07-16 05:29:54');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"user\"}', '2020-07-16 05:30:08', '2020-07-16 05:30:08');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-07-16 05:30:10', '2020-07-16 05:30:10');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"migrations\"}', '2020-07-16 05:31:21', '2020-07-16 05:31:21');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-07-16 05:31:24', '2020-07-16 05:31:24');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 06:02:51', '2020-07-16 06:02:51');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 06:06:01', '2020-07-16 06:06:01');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 06:06:35', '2020-07-16 06:06:35');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 06:11:45', '2020-07-16 06:11:45');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 06:13:07', '2020-07-16 06:13:07');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 06:42:00', '2020-07-16 06:42:00');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 06:42:03', '2020-07-16 06:42:03');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 06:42:31', '2020-07-16 06:42:31');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 06:44:04', '2020-07-16 06:44:04');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 06:45:21', '2020-07-16 06:45:21');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 06:49:01', '2020-07-16 06:49:01');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 06:49:25', '2020-07-16 06:49:25');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 06:49:52', '2020-07-16 06:49:52');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 06:49:55', '2020-07-16 06:49:55');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-16 06:50:16', '2020-07-16 06:50:16');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-16 06:50:21', '2020-07-16 06:50:21');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 06:50:22', '2020-07-16 06:50:22');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 06:50:44', '2020-07-16 06:50:44');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 06:50:56', '2020-07-16 06:50:56');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 07:50:00', '2020-07-16 07:50:00');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 07:59:48', '2020-07-16 07:59:48');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 08:01:24', '2020-07-16 08:01:24');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 08:01:28', '2020-07-16 08:01:28');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 08:02:14', '2020-07-16 08:02:14');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 08:04:00', '2020-07-16 08:04:00');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 08:04:48', '2020-07-16 08:04:48');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 08:04:55', '2020-07-16 08:04:55');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 08:12:02', '2020-07-16 08:12:02');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 08:12:11', '2020-07-16 08:12:11');
INSERT INTO `admin_operation_log` VALUES ('126', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-16 08:12:11', '2020-07-16 08:12:11');
INSERT INTO `admin_operation_log` VALUES ('127', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"DkBtKPImvME2EkMDlSrzXIIBRp4J2RNcsOan7Jl4\",\"username\":\"ww\",\"password\":\"www******\"}', '2020-07-16 08:12:19', '2020-07-16 08:12:19');
INSERT INTO `admin_operation_log` VALUES ('128', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"DkBtKPImvME2EkMDlSrzXIIBRp4J2RNcsOan7Jl4\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-16 08:12:40', '2020-07-16 08:12:40');
INSERT INTO `admin_operation_log` VALUES ('129', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-16 08:12:41', '2020-07-16 08:12:41');
INSERT INTO `admin_operation_log` VALUES ('130', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"HEqXxjSaC7RJCpc0SEtHy84Fl7EzORuQJHktgDu3\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-16 08:12:48', '2020-07-16 08:12:48');
INSERT INTO `admin_operation_log` VALUES ('131', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-16 08:12:49', '2020-07-16 08:12:49');
INSERT INTO `admin_operation_log` VALUES ('132', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"90XfTWWWE40ik0jpOsOS8qZgRdehKMC54Z48retF\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-16 08:12:55', '2020-07-16 08:12:55');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 08:12:55', '2020-07-16 08:12:55');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 08:13:08', '2020-07-16 08:13:08');
INSERT INTO `admin_operation_log` VALUES ('135', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-16 08:13:08', '2020-07-16 08:13:08');
INSERT INTO `admin_operation_log` VALUES ('136', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"8WhAqh8T2uxVuXPDMNGzReL1pI69GNVHnXLr4JnS\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-16 08:13:12', '2020-07-16 08:13:12');
INSERT INTO `admin_operation_log` VALUES ('137', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-16 08:13:13', '2020-07-16 08:13:13');
INSERT INTO `admin_operation_log` VALUES ('138', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"vs9RCqSiynn734HHkC2WRNvOFAaOSe2FPBQ6vKlu\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-16 08:13:19', '2020-07-16 08:13:19');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 08:13:19', '2020-07-16 08:13:19');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 08:55:26', '2020-07-16 08:55:26');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 08:56:00', '2020-07-16 08:56:00');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 09:08:58', '2020-07-16 09:08:58');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-16 09:22:46', '2020-07-16 09:22:46');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 01:02:02', '2020-07-17 01:02:02');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 02:37:53', '2020-07-17 02:37:53');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 02:39:21', '2020-07-17 02:39:21');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 02:50:05', '2020-07-17 02:50:05');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 02:51:49', '2020-07-17 02:51:49');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 02:54:24', '2020-07-17 02:54:24');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 02:58:04', '2020-07-17 02:58:04');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 02:58:34', '2020-07-17 02:58:34');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 03:05:12', '2020-07-17 03:05:12');
INSERT INTO `admin_operation_log` VALUES ('153', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-17 03:15:16', '2020-07-17 03:15:16');
INSERT INTO `admin_operation_log` VALUES ('154', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"36MDKGaPlPBZdwj6kYQwZfQMFBw8Cdmg1vfcIJzF\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-17 03:15:20', '2020-07-17 03:15:20');
INSERT INTO `admin_operation_log` VALUES ('155', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-17 03:15:21', '2020-07-17 03:15:21');
INSERT INTO `admin_operation_log` VALUES ('156', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"Lyleg2JwbjEs9W5AT1JvS4Ls6fudR39BS2dzg6a7\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-17 03:15:27', '2020-07-17 03:15:27');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-17 03:15:27', '2020-07-17 03:15:27');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 03:15:30', '2020-07-17 03:15:30');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 03:15:35', '2020-07-17 03:15:35');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 03:15:37', '2020-07-17 03:15:37');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 03:16:21', '2020-07-17 03:16:21');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-07-17 03:16:31', '2020-07-17 03:16:31');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 03:16:33', '2020-07-17 03:16:33');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 03:19:29', '2020-07-17 03:19:29');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 03:28:50', '2020-07-17 03:28:50');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 03:35:55', '2020-07-17 03:35:55');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 03:38:35', '2020-07-17 03:38:35');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 03:39:15', '2020-07-17 03:39:15');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 03:39:17', '2020-07-17 03:39:17');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 03:39:45', '2020-07-17 03:39:45');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 03:47:26', '2020-07-17 03:47:26');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 03:47:29', '2020-07-17 03:47:29');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 03:47:32', '2020-07-17 03:47:32');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 05:08:36', '2020-07-17 05:08:36');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 05:09:45', '2020-07-17 05:09:45');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 05:09:58', '2020-07-17 05:09:58');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 05:12:57', '2020-07-17 05:12:57');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 05:13:00', '2020-07-17 05:13:00');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 05:14:23', '2020-07-17 05:14:23');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 05:16:18', '2020-07-17 05:16:18');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 05:16:58', '2020-07-17 05:16:58');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 05:17:00', '2020-07-17 05:17:00');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 05:20:45', '2020-07-17 05:20:45');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 05:23:21', '2020-07-17 05:23:21');
INSERT INTO `admin_operation_log` VALUES ('185', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 05:31:34', '2020-07-17 05:31:34');
INSERT INTO `admin_operation_log` VALUES ('186', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 05:31:53', '2020-07-17 05:31:53');
INSERT INTO `admin_operation_log` VALUES ('187', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 05:32:18', '2020-07-17 05:32:18');
INSERT INTO `admin_operation_log` VALUES ('188', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 05:32:41', '2020-07-17 05:32:41');
INSERT INTO `admin_operation_log` VALUES ('189', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 05:34:04', '2020-07-17 05:34:04');
INSERT INTO `admin_operation_log` VALUES ('190', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 05:34:29', '2020-07-17 05:34:29');
INSERT INTO `admin_operation_log` VALUES ('191', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 05:37:03', '2020-07-17 05:37:03');
INSERT INTO `admin_operation_log` VALUES ('192', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 05:42:37', '2020-07-17 05:42:37');
INSERT INTO `admin_operation_log` VALUES ('193', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 05:43:35', '2020-07-17 05:43:35');
INSERT INTO `admin_operation_log` VALUES ('194', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 05:45:22', '2020-07-17 05:45:22');
INSERT INTO `admin_operation_log` VALUES ('195', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 05:47:30', '2020-07-17 05:47:30');
INSERT INTO `admin_operation_log` VALUES ('196', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 05:47:53', '2020-07-17 05:47:53');
INSERT INTO `admin_operation_log` VALUES ('197', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 05:48:29', '2020-07-17 05:48:29');
INSERT INTO `admin_operation_log` VALUES ('198', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-17 05:49:00', '2020-07-17 05:49:00');
INSERT INTO `admin_operation_log` VALUES ('199', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-17 05:49:02', '2020-07-17 05:49:02');
INSERT INTO `admin_operation_log` VALUES ('200', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 05:49:14', '2020-07-17 05:49:14');
INSERT INTO `admin_operation_log` VALUES ('201', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 05:49:19', '2020-07-17 05:49:19');
INSERT INTO `admin_operation_log` VALUES ('202', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 05:54:51', '2020-07-17 05:54:51');
INSERT INTO `admin_operation_log` VALUES ('203', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 05:55:06', '2020-07-17 05:55:06');
INSERT INTO `admin_operation_log` VALUES ('204', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 05:58:17', '2020-07-17 05:58:17');
INSERT INTO `admin_operation_log` VALUES ('205', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 05:58:55', '2020-07-17 05:58:55');
INSERT INTO `admin_operation_log` VALUES ('206', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:09:19', '2020-07-17 06:09:19');
INSERT INTO `admin_operation_log` VALUES ('207', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:09:46', '2020-07-17 06:09:46');
INSERT INTO `admin_operation_log` VALUES ('208', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:10:52', '2020-07-17 06:10:52');
INSERT INTO `admin_operation_log` VALUES ('209', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:12:10', '2020-07-17 06:12:10');
INSERT INTO `admin_operation_log` VALUES ('210', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:12:33', '2020-07-17 06:12:33');
INSERT INTO `admin_operation_log` VALUES ('211', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:12:48', '2020-07-17 06:12:48');
INSERT INTO `admin_operation_log` VALUES ('212', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:12:59', '2020-07-17 06:12:59');
INSERT INTO `admin_operation_log` VALUES ('213', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:13:12', '2020-07-17 06:13:12');
INSERT INTO `admin_operation_log` VALUES ('214', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:13:54', '2020-07-17 06:13:54');
INSERT INTO `admin_operation_log` VALUES ('215', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:15:32', '2020-07-17 06:15:32');
INSERT INTO `admin_operation_log` VALUES ('216', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 06:15:34', '2020-07-17 06:15:34');
INSERT INTO `admin_operation_log` VALUES ('217', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:15:47', '2020-07-17 06:15:47');
INSERT INTO `admin_operation_log` VALUES ('218', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 06:15:50', '2020-07-17 06:15:50');
INSERT INTO `admin_operation_log` VALUES ('219', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:29:05', '2020-07-17 06:29:05');
INSERT INTO `admin_operation_log` VALUES ('220', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:29:07', '2020-07-17 06:29:07');
INSERT INTO `admin_operation_log` VALUES ('221', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:29:17', '2020-07-17 06:29:17');
INSERT INTO `admin_operation_log` VALUES ('222', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:29:28', '2020-07-17 06:29:28');
INSERT INTO `admin_operation_log` VALUES ('223', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:32:39', '2020-07-17 06:32:39');
INSERT INTO `admin_operation_log` VALUES ('224', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:33:48', '2020-07-17 06:33:48');
INSERT INTO `admin_operation_log` VALUES ('225', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:33:50', '2020-07-17 06:33:50');
INSERT INTO `admin_operation_log` VALUES ('226', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:34:13', '2020-07-17 06:34:13');
INSERT INTO `admin_operation_log` VALUES ('227', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:35:58', '2020-07-17 06:35:58');
INSERT INTO `admin_operation_log` VALUES ('228', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:36:12', '2020-07-17 06:36:12');
INSERT INTO `admin_operation_log` VALUES ('229', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:36:19', '2020-07-17 06:36:19');
INSERT INTO `admin_operation_log` VALUES ('230', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:36:29', '2020-07-17 06:36:29');
INSERT INTO `admin_operation_log` VALUES ('231', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:37:14', '2020-07-17 06:37:14');
INSERT INTO `admin_operation_log` VALUES ('232', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:39:21', '2020-07-17 06:39:21');
INSERT INTO `admin_operation_log` VALUES ('233', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 06:39:32', '2020-07-17 06:39:32');
INSERT INTO `admin_operation_log` VALUES ('234', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:40:13', '2020-07-17 06:40:13');
INSERT INTO `admin_operation_log` VALUES ('235', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:40:33', '2020-07-17 06:40:33');
INSERT INTO `admin_operation_log` VALUES ('236', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:41:01', '2020-07-17 06:41:01');
INSERT INTO `admin_operation_log` VALUES ('237', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:42:01', '2020-07-17 06:42:01');
INSERT INTO `admin_operation_log` VALUES ('238', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:42:25', '2020-07-17 06:42:25');
INSERT INTO `admin_operation_log` VALUES ('239', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:45:21', '2020-07-17 06:45:21');
INSERT INTO `admin_operation_log` VALUES ('240', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:45:33', '2020-07-17 06:45:33');
INSERT INTO `admin_operation_log` VALUES ('241', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:51:01', '2020-07-17 06:51:01');
INSERT INTO `admin_operation_log` VALUES ('242', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 06:51:14', '2020-07-17 06:51:14');
INSERT INTO `admin_operation_log` VALUES ('243', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 06:54:47', '2020-07-17 06:54:47');
INSERT INTO `admin_operation_log` VALUES ('244', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 06:54:54', '2020-07-17 06:54:54');
INSERT INTO `admin_operation_log` VALUES ('245', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 07:09:50', '2020-07-17 07:09:50');
INSERT INTO `admin_operation_log` VALUES ('246', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 07:14:06', '2020-07-17 07:14:06');
INSERT INTO `admin_operation_log` VALUES ('247', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 07:15:47', '2020-07-17 07:15:47');
INSERT INTO `admin_operation_log` VALUES ('248', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 07:24:53', '2020-07-17 07:24:53');
INSERT INTO `admin_operation_log` VALUES ('249', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 08:08:17', '2020-07-17 08:08:17');
INSERT INTO `admin_operation_log` VALUES ('250', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 08:08:39', '2020-07-17 08:08:39');
INSERT INTO `admin_operation_log` VALUES ('251', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 08:11:06', '2020-07-17 08:11:06');
INSERT INTO `admin_operation_log` VALUES ('252', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 08:11:07', '2020-07-17 08:11:07');
INSERT INTO `admin_operation_log` VALUES ('253', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 08:11:21', '2020-07-17 08:11:21');
INSERT INTO `admin_operation_log` VALUES ('254', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 08:11:48', '2020-07-17 08:11:48');
INSERT INTO `admin_operation_log` VALUES ('255', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 08:12:12', '2020-07-17 08:12:12');
INSERT INTO `admin_operation_log` VALUES ('256', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 08:13:23', '2020-07-17 08:13:23');
INSERT INTO `admin_operation_log` VALUES ('257', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 08:14:32', '2020-07-17 08:14:32');
INSERT INTO `admin_operation_log` VALUES ('258', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 08:14:36', '2020-07-17 08:14:36');
INSERT INTO `admin_operation_log` VALUES ('259', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 08:16:08', '2020-07-17 08:16:08');
INSERT INTO `admin_operation_log` VALUES ('260', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 08:16:21', '2020-07-17 08:16:21');
INSERT INTO `admin_operation_log` VALUES ('261', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 08:33:43', '2020-07-17 08:33:43');
INSERT INTO `admin_operation_log` VALUES ('262', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 08:49:42', '2020-07-17 08:49:42');
INSERT INTO `admin_operation_log` VALUES ('263', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 08:49:45', '2020-07-17 08:49:45');
INSERT INTO `admin_operation_log` VALUES ('264', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 08:49:48', '2020-07-17 08:49:48');
INSERT INTO `admin_operation_log` VALUES ('265', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 08:49:52', '2020-07-17 08:49:52');
INSERT INTO `admin_operation_log` VALUES ('266', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-17 08:50:17', '2020-07-17 08:50:17');
INSERT INTO `admin_operation_log` VALUES ('267', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 08:50:19', '2020-07-17 08:50:19');
INSERT INTO `admin_operation_log` VALUES ('268', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 08:50:20', '2020-07-17 08:50:20');
INSERT INTO `admin_operation_log` VALUES ('269', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 08:50:22', '2020-07-17 08:50:22');
INSERT INTO `admin_operation_log` VALUES ('270', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 08:50:26', '2020-07-17 08:50:26');
INSERT INTO `admin_operation_log` VALUES ('271', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-17 08:51:20', '2020-07-17 08:51:20');
INSERT INTO `admin_operation_log` VALUES ('272', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"per_page\":\"10\",\"_pjax\":\"#pjax-container\"}', '2020-07-17 08:52:02', '2020-07-17 08:52:02');
INSERT INTO `admin_operation_log` VALUES ('273', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"per_page\":\"10\",\"_pjax\":\"#pjax-container\"}', '2020-07-17 08:52:12', '2020-07-17 08:52:12');
INSERT INTO `admin_operation_log` VALUES ('274', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 08:55:28', '2020-07-17 08:55:28');
INSERT INTO `admin_operation_log` VALUES ('275', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 08:55:30', '2020-07-17 08:55:30');
INSERT INTO `admin_operation_log` VALUES ('276', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 08:58:09', '2020-07-17 08:58:09');
INSERT INTO `admin_operation_log` VALUES ('277', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 08:58:17', '2020-07-17 08:58:17');
INSERT INTO `admin_operation_log` VALUES ('278', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 09:06:11', '2020-07-17 09:06:11');
INSERT INTO `admin_operation_log` VALUES ('279', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 09:06:21', '2020-07-17 09:06:21');
INSERT INTO `admin_operation_log` VALUES ('280', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 09:08:59', '2020-07-17 09:08:59');
INSERT INTO `admin_operation_log` VALUES ('281', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 09:09:00', '2020-07-17 09:09:00');
INSERT INTO `admin_operation_log` VALUES ('282', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"per_page\":\"10\",\"_pjax\":\"#pjax-container\"}', '2020-07-17 09:09:00', '2020-07-17 09:09:00');
INSERT INTO `admin_operation_log` VALUES ('283', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 09:09:01', '2020-07-17 09:09:01');
INSERT INTO `admin_operation_log` VALUES ('284', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 09:09:01', '2020-07-17 09:09:01');
INSERT INTO `admin_operation_log` VALUES ('285', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 09:09:13', '2020-07-17 09:09:13');
INSERT INTO `admin_operation_log` VALUES ('286', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 09:11:11', '2020-07-17 09:11:11');
INSERT INTO `admin_operation_log` VALUES ('287', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 09:11:15', '2020-07-17 09:11:15');
INSERT INTO `admin_operation_log` VALUES ('288', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2020-07-17 09:12:51', '2020-07-17 09:12:51');
INSERT INTO `admin_operation_log` VALUES ('289', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 09:12:55', '2020-07-17 09:12:55');
INSERT INTO `admin_operation_log` VALUES ('290', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-17 09:12:56', '2020-07-17 09:12:56');
INSERT INTO `admin_operation_log` VALUES ('291', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"x3I2deMmJ1aMGK7cFYbhHirAcJw8tudiRIPmuuKn\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-17 09:13:26', '2020-07-17 09:13:26');
INSERT INTO `admin_operation_log` VALUES ('292', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-17 09:13:27', '2020-07-17 09:13:27');
INSERT INTO `admin_operation_log` VALUES ('293', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 09:14:04', '2020-07-17 09:14:04');
INSERT INTO `admin_operation_log` VALUES ('294', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-17 09:14:04', '2020-07-17 09:14:04');
INSERT INTO `admin_operation_log` VALUES ('295', '0', 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2020-07-17 09:14:11', '2020-07-17 09:14:11');
INSERT INTO `admin_operation_log` VALUES ('296', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-17 09:14:12', '2020-07-17 09:14:12');
INSERT INTO `admin_operation_log` VALUES ('297', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-17 09:14:39', '2020-07-17 09:14:39');
INSERT INTO `admin_operation_log` VALUES ('298', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-17 09:14:53', '2020-07-17 09:14:53');
INSERT INTO `admin_operation_log` VALUES ('299', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-17 09:15:00', '2020-07-17 09:15:00');
INSERT INTO `admin_operation_log` VALUES ('300', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-17 09:29:45', '2020-07-17 09:29:45');
INSERT INTO `admin_operation_log` VALUES ('301', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-17 09:30:16', '2020-07-17 09:30:16');
INSERT INTO `admin_operation_log` VALUES ('302', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-17 09:30:17', '2020-07-17 09:30:17');
INSERT INTO `admin_operation_log` VALUES ('303', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-17 09:30:26', '2020-07-17 09:30:26');
INSERT INTO `admin_operation_log` VALUES ('304', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"kgSfs2UedTYe0RSdnqOHUhPPnU6ZGGXGner1behD\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-17 09:30:31', '2020-07-17 09:30:31');
INSERT INTO `admin_operation_log` VALUES ('305', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"kgSfs2UedTYe0RSdnqOHUhPPnU6ZGGXGner1behD\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-17 09:30:44', '2020-07-17 09:30:44');
INSERT INTO `admin_operation_log` VALUES ('306', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"kgSfs2UedTYe0RSdnqOHUhPPnU6ZGGXGner1behD\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-17 09:31:44', '2020-07-17 09:31:44');
INSERT INTO `admin_operation_log` VALUES ('307', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"kgSfs2UedTYe0RSdnqOHUhPPnU6ZGGXGner1behD\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-17 09:31:46', '2020-07-17 09:31:46');
INSERT INTO `admin_operation_log` VALUES ('308', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-17 09:35:30', '2020-07-17 09:35:30');
INSERT INTO `admin_operation_log` VALUES ('309', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-17 09:35:36', '2020-07-17 09:35:36');
INSERT INTO `admin_operation_log` VALUES ('310', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"kgSfs2UedTYe0RSdnqOHUhPPnU6ZGGXGner1behD\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-17 09:35:44', '2020-07-17 09:35:44');
INSERT INTO `admin_operation_log` VALUES ('311', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-17 09:36:58', '2020-07-17 09:36:58');
INSERT INTO `admin_operation_log` VALUES ('312', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-20 00:53:06', '2020-07-20 00:53:06');
INSERT INTO `admin_operation_log` VALUES ('313', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"7wbSHPLTZKdFXcfXuWCn7vVuCI1NXi0DMoPNOX4k\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-20 00:53:14', '2020-07-20 00:53:14');
INSERT INTO `admin_operation_log` VALUES ('314', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"7wbSHPLTZKdFXcfXuWCn7vVuCI1NXi0DMoPNOX4k\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-20 01:17:27', '2020-07-20 01:17:27');
INSERT INTO `admin_operation_log` VALUES ('315', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-20 01:17:28', '2020-07-20 01:17:28');
INSERT INTO `admin_operation_log` VALUES ('316', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 01:17:44', '2020-07-20 01:17:44');
INSERT INTO `admin_operation_log` VALUES ('317', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 01:26:37', '2020-07-20 01:26:37');
INSERT INTO `admin_operation_log` VALUES ('318', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 01:30:57', '2020-07-20 01:30:57');
INSERT INTO `admin_operation_log` VALUES ('319', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 01:54:34', '2020-07-20 01:54:34');
INSERT INTO `admin_operation_log` VALUES ('320', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 01:59:29', '2020-07-20 01:59:29');
INSERT INTO `admin_operation_log` VALUES ('321', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:02:03', '2020-07-20 02:02:03');
INSERT INTO `admin_operation_log` VALUES ('322', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:06:15', '2020-07-20 02:06:15');
INSERT INTO `admin_operation_log` VALUES ('323', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:07:49', '2020-07-20 02:07:49');
INSERT INTO `admin_operation_log` VALUES ('324', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:14:17', '2020-07-20 02:14:17');
INSERT INTO `admin_operation_log` VALUES ('325', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:15:40', '2020-07-20 02:15:40');
INSERT INTO `admin_operation_log` VALUES ('326', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:16:45', '2020-07-20 02:16:45');
INSERT INTO `admin_operation_log` VALUES ('327', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:17:07', '2020-07-20 02:17:07');
INSERT INTO `admin_operation_log` VALUES ('328', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:19:54', '2020-07-20 02:19:54');
INSERT INTO `admin_operation_log` VALUES ('329', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:21:01', '2020-07-20 02:21:01');
INSERT INTO `admin_operation_log` VALUES ('330', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:21:23', '2020-07-20 02:21:23');
INSERT INTO `admin_operation_log` VALUES ('331', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:25:19', '2020-07-20 02:25:19');
INSERT INTO `admin_operation_log` VALUES ('332', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:26:07', '2020-07-20 02:26:07');
INSERT INTO `admin_operation_log` VALUES ('333', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:27:00', '2020-07-20 02:27:00');
INSERT INTO `admin_operation_log` VALUES ('334', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:27:23', '2020-07-20 02:27:23');
INSERT INTO `admin_operation_log` VALUES ('335', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:28:21', '2020-07-20 02:28:21');
INSERT INTO `admin_operation_log` VALUES ('336', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:28:57', '2020-07-20 02:28:57');
INSERT INTO `admin_operation_log` VALUES ('337', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:29:23', '2020-07-20 02:29:23');
INSERT INTO `admin_operation_log` VALUES ('338', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:29:44', '2020-07-20 02:29:44');
INSERT INTO `admin_operation_log` VALUES ('339', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:30:22', '2020-07-20 02:30:22');
INSERT INTO `admin_operation_log` VALUES ('340', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-20 02:32:25', '2020-07-20 02:32:25');
INSERT INTO `admin_operation_log` VALUES ('341', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:32:29', '2020-07-20 02:32:29');
INSERT INTO `admin_operation_log` VALUES ('342', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:32:35', '2020-07-20 02:32:35');
INSERT INTO `admin_operation_log` VALUES ('343', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:32:39', '2020-07-20 02:32:39');
INSERT INTO `admin_operation_log` VALUES ('344', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:33:00', '2020-07-20 02:33:00');
INSERT INTO `admin_operation_log` VALUES ('345', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:33:26', '2020-07-20 02:33:26');
INSERT INTO `admin_operation_log` VALUES ('346', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:33:39', '2020-07-20 02:33:39');
INSERT INTO `admin_operation_log` VALUES ('347', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:33:58', '2020-07-20 02:33:58');
INSERT INTO `admin_operation_log` VALUES ('348', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:34:18', '2020-07-20 02:34:18');
INSERT INTO `admin_operation_log` VALUES ('349', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:35:21', '2020-07-20 02:35:21');
INSERT INTO `admin_operation_log` VALUES ('350', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:35:50', '2020-07-20 02:35:50');
INSERT INTO `admin_operation_log` VALUES ('351', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:37:10', '2020-07-20 02:37:10');
INSERT INTO `admin_operation_log` VALUES ('352', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:37:25', '2020-07-20 02:37:25');
INSERT INTO `admin_operation_log` VALUES ('353', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:38:18', '2020-07-20 02:38:18');
INSERT INTO `admin_operation_log` VALUES ('354', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:38:36', '2020-07-20 02:38:36');
INSERT INTO `admin_operation_log` VALUES ('355', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:39:23', '2020-07-20 02:39:23');
INSERT INTO `admin_operation_log` VALUES ('356', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:39:59', '2020-07-20 02:39:59');
INSERT INTO `admin_operation_log` VALUES ('357', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:43:46', '2020-07-20 02:43:46');
INSERT INTO `admin_operation_log` VALUES ('358', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:48:33', '2020-07-20 02:48:33');
INSERT INTO `admin_operation_log` VALUES ('359', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:48:44', '2020-07-20 02:48:44');
INSERT INTO `admin_operation_log` VALUES ('360', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:53:05', '2020-07-20 02:53:05');
INSERT INTO `admin_operation_log` VALUES ('361', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 02:58:33', '2020-07-20 02:58:33');
INSERT INTO `admin_operation_log` VALUES ('362', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 02:58:39', '2020-07-20 02:58:39');
INSERT INTO `admin_operation_log` VALUES ('363', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 02:58:39', '2020-07-20 02:58:39');
INSERT INTO `admin_operation_log` VALUES ('364', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 02:58:39', '2020-07-20 02:58:39');
INSERT INTO `admin_operation_log` VALUES ('365', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 03:01:37', '2020-07-20 03:01:37');
INSERT INTO `admin_operation_log` VALUES ('366', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:01:39', '2020-07-20 03:01:39');
INSERT INTO `admin_operation_log` VALUES ('367', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:01:39', '2020-07-20 03:01:39');
INSERT INTO `admin_operation_log` VALUES ('368', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:01:39', '2020-07-20 03:01:39');
INSERT INTO `admin_operation_log` VALUES ('369', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 03:03:06', '2020-07-20 03:03:06');
INSERT INTO `admin_operation_log` VALUES ('370', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:03:12', '2020-07-20 03:03:12');
INSERT INTO `admin_operation_log` VALUES ('371', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:03:12', '2020-07-20 03:03:12');
INSERT INTO `admin_operation_log` VALUES ('372', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:03:12', '2020-07-20 03:03:12');
INSERT INTO `admin_operation_log` VALUES ('373', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:03:23', '2020-07-20 03:03:23');
INSERT INTO `admin_operation_log` VALUES ('374', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:03:23', '2020-07-20 03:03:23');
INSERT INTO `admin_operation_log` VALUES ('375', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:03:23', '2020-07-20 03:03:23');
INSERT INTO `admin_operation_log` VALUES ('376', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:04:20', '2020-07-20 03:04:20');
INSERT INTO `admin_operation_log` VALUES ('377', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:04:22', '2020-07-20 03:04:22');
INSERT INTO `admin_operation_log` VALUES ('378', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:04:25', '2020-07-20 03:04:25');
INSERT INTO `admin_operation_log` VALUES ('379', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:04:25', '2020-07-20 03:04:25');
INSERT INTO `admin_operation_log` VALUES ('380', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:04:25', '2020-07-20 03:04:25');
INSERT INTO `admin_operation_log` VALUES ('381', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 03:04:37', '2020-07-20 03:04:37');
INSERT INTO `admin_operation_log` VALUES ('382', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 03:14:12', '2020-07-20 03:14:12');
INSERT INTO `admin_operation_log` VALUES ('383', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:14:15', '2020-07-20 03:14:15');
INSERT INTO `admin_operation_log` VALUES ('384', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:14:15', '2020-07-20 03:14:15');
INSERT INTO `admin_operation_log` VALUES ('385', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:14:15', '2020-07-20 03:14:15');
INSERT INTO `admin_operation_log` VALUES ('386', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 03:15:05', '2020-07-20 03:15:05');
INSERT INTO `admin_operation_log` VALUES ('387', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:15:09', '2020-07-20 03:15:09');
INSERT INTO `admin_operation_log` VALUES ('388', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:15:09', '2020-07-20 03:15:09');
INSERT INTO `admin_operation_log` VALUES ('389', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:15:09', '2020-07-20 03:15:09');
INSERT INTO `admin_operation_log` VALUES ('390', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 03:16:10', '2020-07-20 03:16:10');
INSERT INTO `admin_operation_log` VALUES ('391', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:16:12', '2020-07-20 03:16:12');
INSERT INTO `admin_operation_log` VALUES ('392', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:16:12', '2020-07-20 03:16:12');
INSERT INTO `admin_operation_log` VALUES ('393', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:16:12', '2020-07-20 03:16:12');
INSERT INTO `admin_operation_log` VALUES ('394', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 03:19:56', '2020-07-20 03:19:56');
INSERT INTO `admin_operation_log` VALUES ('395', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:20:02', '2020-07-20 03:20:02');
INSERT INTO `admin_operation_log` VALUES ('396', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:20:02', '2020-07-20 03:20:02');
INSERT INTO `admin_operation_log` VALUES ('397', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:20:02', '2020-07-20 03:20:02');
INSERT INTO `admin_operation_log` VALUES ('398', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 03:23:27', '2020-07-20 03:23:27');
INSERT INTO `admin_operation_log` VALUES ('399', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:23:29', '2020-07-20 03:23:29');
INSERT INTO `admin_operation_log` VALUES ('400', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:23:29', '2020-07-20 03:23:29');
INSERT INTO `admin_operation_log` VALUES ('401', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:23:29', '2020-07-20 03:23:29');
INSERT INTO `admin_operation_log` VALUES ('402', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:23:37', '2020-07-20 03:23:37');
INSERT INTO `admin_operation_log` VALUES ('403', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:23:53', '2020-07-20 03:23:53');
INSERT INTO `admin_operation_log` VALUES ('404', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 03:26:36', '2020-07-20 03:26:36');
INSERT INTO `admin_operation_log` VALUES ('405', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:26:38', '2020-07-20 03:26:38');
INSERT INTO `admin_operation_log` VALUES ('406', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:26:38', '2020-07-20 03:26:38');
INSERT INTO `admin_operation_log` VALUES ('407', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:26:38', '2020-07-20 03:26:38');
INSERT INTO `admin_operation_log` VALUES ('408', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 03:27:28', '2020-07-20 03:27:28');
INSERT INTO `admin_operation_log` VALUES ('409', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:27:30', '2020-07-20 03:27:30');
INSERT INTO `admin_operation_log` VALUES ('410', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:27:30', '2020-07-20 03:27:30');
INSERT INTO `admin_operation_log` VALUES ('411', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:27:30', '2020-07-20 03:27:30');
INSERT INTO `admin_operation_log` VALUES ('412', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:27:36', '2020-07-20 03:27:36');
INSERT INTO `admin_operation_log` VALUES ('413', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:27:38', '2020-07-20 03:27:38');
INSERT INTO `admin_operation_log` VALUES ('414', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 03:29:03', '2020-07-20 03:29:03');
INSERT INTO `admin_operation_log` VALUES ('415', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:29:05', '2020-07-20 03:29:05');
INSERT INTO `admin_operation_log` VALUES ('416', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:29:08', '2020-07-20 03:29:08');
INSERT INTO `admin_operation_log` VALUES ('417', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:40:46', '2020-07-20 03:40:46');
INSERT INTO `admin_operation_log` VALUES ('418', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:40:48', '2020-07-20 03:40:48');
INSERT INTO `admin_operation_log` VALUES ('419', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:40:51', '2020-07-20 03:40:51');
INSERT INTO `admin_operation_log` VALUES ('420', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:40:57', '2020-07-20 03:40:57');
INSERT INTO `admin_operation_log` VALUES ('421', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:42:53', '2020-07-20 03:42:53');
INSERT INTO `admin_operation_log` VALUES ('422', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:42:56', '2020-07-20 03:42:56');
INSERT INTO `admin_operation_log` VALUES ('423', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:43:00', '2020-07-20 03:43:00');
INSERT INTO `admin_operation_log` VALUES ('424', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:43:02', '2020-07-20 03:43:02');
INSERT INTO `admin_operation_log` VALUES ('425', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:43:04', '2020-07-20 03:43:04');
INSERT INTO `admin_operation_log` VALUES ('426', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:43:05', '2020-07-20 03:43:05');
INSERT INTO `admin_operation_log` VALUES ('427', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:43:08', '2020-07-20 03:43:08');
INSERT INTO `admin_operation_log` VALUES ('428', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:43:13', '2020-07-20 03:43:13');
INSERT INTO `admin_operation_log` VALUES ('429', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:43:24', '2020-07-20 03:43:24');
INSERT INTO `admin_operation_log` VALUES ('430', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-07-20 03:43:35', '2020-07-20 03:43:35');
INSERT INTO `admin_operation_log` VALUES ('431', '1', 'admin/auth/users', 'POST', '127.0.0.1', '{\"_token\":\"GSrC7nWbmcH0HgPfag7UfJ104lB1QhhuxA2jQWRf\",\"username\":\"xxx\",\"name\":\"xxxx\",\"avatar\":null,\"file-avatar\":null,\"_file_\":null,\"password\":\"111******\",\"password_confirmation\":\"111******\",\"roles\":[\"1\",null]}', '2020-07-20 03:44:17', '2020-07-20 03:44:17');
INSERT INTO `admin_operation_log` VALUES ('432', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:44:18', '2020-07-20 03:44:18');
INSERT INTO `admin_operation_log` VALUES ('433', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:44:34', '2020-07-20 03:44:34');
INSERT INTO `admin_operation_log` VALUES ('434', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:44:37', '2020-07-20 03:44:37');
INSERT INTO `admin_operation_log` VALUES ('435', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 03:46:48', '2020-07-20 03:46:48');
INSERT INTO `admin_operation_log` VALUES ('436', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:46:51', '2020-07-20 03:46:51');
INSERT INTO `admin_operation_log` VALUES ('437', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:46:51', '2020-07-20 03:46:51');
INSERT INTO `admin_operation_log` VALUES ('438', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:46:51', '2020-07-20 03:46:51');
INSERT INTO `admin_operation_log` VALUES ('439', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:47:31', '2020-07-20 03:47:31');
INSERT INTO `admin_operation_log` VALUES ('440', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:47:31', '2020-07-20 03:47:31');
INSERT INTO `admin_operation_log` VALUES ('441', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 03:47:31', '2020-07-20 03:47:31');
INSERT INTO `admin_operation_log` VALUES ('442', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:47:38', '2020-07-20 03:47:38');
INSERT INTO `admin_operation_log` VALUES ('443', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 03:49:40', '2020-07-20 03:49:40');
INSERT INTO `admin_operation_log` VALUES ('444', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 03:50:02', '2020-07-20 03:50:02');
INSERT INTO `admin_operation_log` VALUES ('445', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 03:50:30', '2020-07-20 03:50:30');
INSERT INTO `admin_operation_log` VALUES ('446', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 05:16:53', '2020-07-20 05:16:53');
INSERT INTO `admin_operation_log` VALUES ('447', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 05:18:37', '2020-07-20 05:18:37');
INSERT INTO `admin_operation_log` VALUES ('448', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:18:42', '2020-07-20 05:18:42');
INSERT INTO `admin_operation_log` VALUES ('449', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:18:45', '2020-07-20 05:18:45');
INSERT INTO `admin_operation_log` VALUES ('450', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 05:19:09', '2020-07-20 05:19:09');
INSERT INTO `admin_operation_log` VALUES ('451', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 05:23:17', '2020-07-20 05:23:17');
INSERT INTO `admin_operation_log` VALUES ('452', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:23:20', '2020-07-20 05:23:20');
INSERT INTO `admin_operation_log` VALUES ('453', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 05:24:01', '2020-07-20 05:24:01');
INSERT INTO `admin_operation_log` VALUES ('454', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 05:24:24', '2020-07-20 05:24:24');
INSERT INTO `admin_operation_log` VALUES ('455', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:24:27', '2020-07-20 05:24:27');
INSERT INTO `admin_operation_log` VALUES ('456', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 05:25:09', '2020-07-20 05:25:09');
INSERT INTO `admin_operation_log` VALUES ('457', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 05:25:58', '2020-07-20 05:25:58');
INSERT INTO `admin_operation_log` VALUES ('458', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 05:27:20', '2020-07-20 05:27:20');
INSERT INTO `admin_operation_log` VALUES ('459', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 05:27:42', '2020-07-20 05:27:42');
INSERT INTO `admin_operation_log` VALUES ('460', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:27:44', '2020-07-20 05:27:44');
INSERT INTO `admin_operation_log` VALUES ('461', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 05:28:25', '2020-07-20 05:28:25');
INSERT INTO `admin_operation_log` VALUES ('462', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:28:28', '2020-07-20 05:28:28');
INSERT INTO `admin_operation_log` VALUES ('463', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:28:29', '2020-07-20 05:28:29');
INSERT INTO `admin_operation_log` VALUES ('464', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:28:31', '2020-07-20 05:28:31');
INSERT INTO `admin_operation_log` VALUES ('465', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:28:33', '2020-07-20 05:28:33');
INSERT INTO `admin_operation_log` VALUES ('466', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:28:35', '2020-07-20 05:28:35');
INSERT INTO `admin_operation_log` VALUES ('467', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:28:37', '2020-07-20 05:28:37');
INSERT INTO `admin_operation_log` VALUES ('468', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 05:29:14', '2020-07-20 05:29:14');
INSERT INTO `admin_operation_log` VALUES ('469', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:29:19', '2020-07-20 05:29:19');
INSERT INTO `admin_operation_log` VALUES ('470', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 05:29:23', '2020-07-20 05:29:23');
INSERT INTO `admin_operation_log` VALUES ('471', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 05:29:23', '2020-07-20 05:29:23');
INSERT INTO `admin_operation_log` VALUES ('472', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 05:29:23', '2020-07-20 05:29:23');
INSERT INTO `admin_operation_log` VALUES ('473', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 05:37:10', '2020-07-20 05:37:10');
INSERT INTO `admin_operation_log` VALUES ('474', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 05:37:10', '2020-07-20 05:37:10');
INSERT INTO `admin_operation_log` VALUES ('475', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 05:37:10', '2020-07-20 05:37:10');
INSERT INTO `admin_operation_log` VALUES ('476', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 05:37:26', '2020-07-20 05:37:26');
INSERT INTO `admin_operation_log` VALUES ('477', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 05:37:29', '2020-07-20 05:37:29');
INSERT INTO `admin_operation_log` VALUES ('478', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:37:35', '2020-07-20 05:37:35');
INSERT INTO `admin_operation_log` VALUES ('479', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:37:45', '2020-07-20 05:37:45');
INSERT INTO `admin_operation_log` VALUES ('480', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 05:37:47', '2020-07-20 05:37:47');
INSERT INTO `admin_operation_log` VALUES ('481', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:37:50', '2020-07-20 05:37:50');
INSERT INTO `admin_operation_log` VALUES ('482', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 05:38:32', '2020-07-20 05:38:32');
INSERT INTO `admin_operation_log` VALUES ('483', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:38:34', '2020-07-20 05:38:34');
INSERT INTO `admin_operation_log` VALUES ('484', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 05:38:36', '2020-07-20 05:38:36');
INSERT INTO `admin_operation_log` VALUES ('485', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:38:39', '2020-07-20 05:38:39');
INSERT INTO `admin_operation_log` VALUES ('486', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 05:39:51', '2020-07-20 05:39:51');
INSERT INTO `admin_operation_log` VALUES ('487', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:39:56', '2020-07-20 05:39:56');
INSERT INTO `admin_operation_log` VALUES ('488', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 05:40:00', '2020-07-20 05:40:00');
INSERT INTO `admin_operation_log` VALUES ('489', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 05:40:00', '2020-07-20 05:40:00');
INSERT INTO `admin_operation_log` VALUES ('490', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 05:40:00', '2020-07-20 05:40:00');
INSERT INTO `admin_operation_log` VALUES ('491', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:40:14', '2020-07-20 05:40:14');
INSERT INTO `admin_operation_log` VALUES ('492', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:40:17', '2020-07-20 05:40:17');
INSERT INTO `admin_operation_log` VALUES ('493', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 05:42:53', '2020-07-20 05:42:53');
INSERT INTO `admin_operation_log` VALUES ('494', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 05:42:56', '2020-07-20 05:42:56');
INSERT INTO `admin_operation_log` VALUES ('495', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 05:42:56', '2020-07-20 05:42:56');
INSERT INTO `admin_operation_log` VALUES ('496', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 05:42:56', '2020-07-20 05:42:56');
INSERT INTO `admin_operation_log` VALUES ('497', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:43:02', '2020-07-20 05:43:02');
INSERT INTO `admin_operation_log` VALUES ('498', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 05:43:06', '2020-07-20 05:43:06');
INSERT INTO `admin_operation_log` VALUES ('499', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 05:43:06', '2020-07-20 05:43:06');
INSERT INTO `admin_operation_log` VALUES ('500', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 05:43:06', '2020-07-20 05:43:06');
INSERT INTO `admin_operation_log` VALUES ('501', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:43:10', '2020-07-20 05:43:10');
INSERT INTO `admin_operation_log` VALUES ('502', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2020-07-20 05:47:14', '2020-07-20 05:47:14');
INSERT INTO `admin_operation_log` VALUES ('503', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 05:47:18', '2020-07-20 05:47:18');
INSERT INTO `admin_operation_log` VALUES ('504', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 05:47:19', '2020-07-20 05:47:19');
INSERT INTO `admin_operation_log` VALUES ('505', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 05:47:19', '2020-07-20 05:47:19');
INSERT INTO `admin_operation_log` VALUES ('506', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:47:31', '2020-07-20 05:47:31');
INSERT INTO `admin_operation_log` VALUES ('507', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:47:34', '2020-07-20 05:47:34');
INSERT INTO `admin_operation_log` VALUES ('508', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:47:35', '2020-07-20 05:47:35');
INSERT INTO `admin_operation_log` VALUES ('509', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:47:38', '2020-07-20 05:47:38');
INSERT INTO `admin_operation_log` VALUES ('510', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 06:01:24', '2020-07-20 06:01:24');
INSERT INTO `admin_operation_log` VALUES ('511', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 06:01:27', '2020-07-20 06:01:27');
INSERT INTO `admin_operation_log` VALUES ('512', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 06:01:27', '2020-07-20 06:01:27');
INSERT INTO `admin_operation_log` VALUES ('513', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 06:01:27', '2020-07-20 06:01:27');
INSERT INTO `admin_operation_log` VALUES ('514', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 06:13:22', '2020-07-20 06:13:22');
INSERT INTO `admin_operation_log` VALUES ('515', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 06:14:33', '2020-07-20 06:14:33');
INSERT INTO `admin_operation_log` VALUES ('516', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 06:14:37', '2020-07-20 06:14:37');
INSERT INTO `admin_operation_log` VALUES ('517', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 06:14:38', '2020-07-20 06:14:38');
INSERT INTO `admin_operation_log` VALUES ('518', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 06:14:39', '2020-07-20 06:14:39');
INSERT INTO `admin_operation_log` VALUES ('519', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 06:18:19', '2020-07-20 06:18:19');
INSERT INTO `admin_operation_log` VALUES ('520', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 06:20:09', '2020-07-20 06:20:09');
INSERT INTO `admin_operation_log` VALUES ('521', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 06:23:37', '2020-07-20 06:23:37');
INSERT INTO `admin_operation_log` VALUES ('522', '1', 'admin/good/shopping/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 06:23:49', '2020-07-20 06:23:49');
INSERT INTO `admin_operation_log` VALUES ('523', '1', 'admin/good/shopping/4', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 06:23:50', '2020-07-20 06:23:50');
INSERT INTO `admin_operation_log` VALUES ('524', '1', 'admin/good/shopping/5', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 06:23:52', '2020-07-20 06:23:52');
INSERT INTO `admin_operation_log` VALUES ('525', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 06:26:12', '2020-07-20 06:26:12');
INSERT INTO `admin_operation_log` VALUES ('526', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 06:45:25', '2020-07-20 06:45:25');
INSERT INTO `admin_operation_log` VALUES ('527', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 06:56:47', '2020-07-20 06:56:47');
INSERT INTO `admin_operation_log` VALUES ('528', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 06:57:40', '2020-07-20 06:57:40');
INSERT INTO `admin_operation_log` VALUES ('529', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 06:58:47', '2020-07-20 06:58:47');
INSERT INTO `admin_operation_log` VALUES ('530', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 07:16:29', '2020-07-20 07:16:29');
INSERT INTO `admin_operation_log` VALUES ('531', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 07:16:46', '2020-07-20 07:16:46');
INSERT INTO `admin_operation_log` VALUES ('532', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:30:09', '2020-07-20 07:30:09');
INSERT INTO `admin_operation_log` VALUES ('533', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:30:11', '2020-07-20 07:30:11');
INSERT INTO `admin_operation_log` VALUES ('534', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:30:14', '2020-07-20 07:30:14');
INSERT INTO `admin_operation_log` VALUES ('535', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:30:17', '2020-07-20 07:30:17');
INSERT INTO `admin_operation_log` VALUES ('536', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:30:20', '2020-07-20 07:30:20');
INSERT INTO `admin_operation_log` VALUES ('537', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-20 07:30:33', '2020-07-20 07:30:33');
INSERT INTO `admin_operation_log` VALUES ('538', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:30:36', '2020-07-20 07:30:36');
INSERT INTO `admin_operation_log` VALUES ('539', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:30:41', '2020-07-20 07:30:41');
INSERT INTO `admin_operation_log` VALUES ('540', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:30:44', '2020-07-20 07:30:44');
INSERT INTO `admin_operation_log` VALUES ('541', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:31:15', '2020-07-20 07:31:15');
INSERT INTO `admin_operation_log` VALUES ('542', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 07:32:01', '2020-07-20 07:32:01');
INSERT INTO `admin_operation_log` VALUES ('543', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 07:32:01', '2020-07-20 07:32:01');
INSERT INTO `admin_operation_log` VALUES ('544', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 07:32:01', '2020-07-20 07:32:01');
INSERT INTO `admin_operation_log` VALUES ('545', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 07:33:45', '2020-07-20 07:33:45');
INSERT INTO `admin_operation_log` VALUES ('546', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 07:33:45', '2020-07-20 07:33:45');
INSERT INTO `admin_operation_log` VALUES ('547', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 07:33:45', '2020-07-20 07:33:45');
INSERT INTO `admin_operation_log` VALUES ('548', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:37:50', '2020-07-20 07:37:50');
INSERT INTO `admin_operation_log` VALUES ('549', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:41:16', '2020-07-20 07:41:16');
INSERT INTO `admin_operation_log` VALUES ('550', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 07:41:32', '2020-07-20 07:41:32');
INSERT INTO `admin_operation_log` VALUES ('551', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 07:47:32', '2020-07-20 07:47:32');
INSERT INTO `admin_operation_log` VALUES ('552', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:48:10', '2020-07-20 07:48:10');
INSERT INTO `admin_operation_log` VALUES ('553', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-20 07:48:11', '2020-07-20 07:48:11');
INSERT INTO `admin_operation_log` VALUES ('554', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"c7MqB4TfHAKfsti6YaEUxQlcZCHejeWGKcGqb3gx\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-20 07:48:14', '2020-07-20 07:48:14');
INSERT INTO `admin_operation_log` VALUES ('555', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-20 07:48:15', '2020-07-20 07:48:15');
INSERT INTO `admin_operation_log` VALUES ('556', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"nH6o3vpbkoCfNpZMYZkqjSo8CmCVXNTmprHFddI1\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-20 07:48:43', '2020-07-20 07:48:43');
INSERT INTO `admin_operation_log` VALUES ('557', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-20 07:48:44', '2020-07-20 07:48:44');
INSERT INTO `admin_operation_log` VALUES ('558', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-20 07:48:49', '2020-07-20 07:48:49');
INSERT INTO `admin_operation_log` VALUES ('559', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"wV678MRqI5EfYrhsmhNzOEcky7yAqxFKMinf51CH\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-20 07:48:53', '2020-07-20 07:48:53');
INSERT INTO `admin_operation_log` VALUES ('560', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-20 07:48:53', '2020-07-20 07:48:53');
INSERT INTO `admin_operation_log` VALUES ('561', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:48:57', '2020-07-20 07:48:57');
INSERT INTO `admin_operation_log` VALUES ('562', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:49:19', '2020-07-20 07:49:19');
INSERT INTO `admin_operation_log` VALUES ('563', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-20 07:49:19', '2020-07-20 07:49:19');
INSERT INTO `admin_operation_log` VALUES ('564', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"BJ5QMqbNhAMMxdLGoBcXjvrBtxtygKVtaPy58VdO\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-20 07:49:34', '2020-07-20 07:49:34');
INSERT INTO `admin_operation_log` VALUES ('565', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-20 07:49:34', '2020-07-20 07:49:34');
INSERT INTO `admin_operation_log` VALUES ('566', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:50:15', '2020-07-20 07:50:15');
INSERT INTO `admin_operation_log` VALUES ('567', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 07:57:37', '2020-07-20 07:57:37');
INSERT INTO `admin_operation_log` VALUES ('568', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 07:57:42', '2020-07-20 07:57:42');
INSERT INTO `admin_operation_log` VALUES ('569', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 07:58:00', '2020-07-20 07:58:00');
INSERT INTO `admin_operation_log` VALUES ('570', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 07:58:36', '2020-07-20 07:58:36');
INSERT INTO `admin_operation_log` VALUES ('571', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 07:58:40', '2020-07-20 07:58:40');
INSERT INTO `admin_operation_log` VALUES ('572', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 07:59:18', '2020-07-20 07:59:18');
INSERT INTO `admin_operation_log` VALUES ('573', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 07:59:23', '2020-07-20 07:59:23');
INSERT INTO `admin_operation_log` VALUES ('574', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:59:40', '2020-07-20 07:59:40');
INSERT INTO `admin_operation_log` VALUES ('575', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:25:23', '2020-07-20 08:25:23');
INSERT INTO `admin_operation_log` VALUES ('576', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:25:25', '2020-07-20 08:25:25');
INSERT INTO `admin_operation_log` VALUES ('577', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 08:25:55', '2020-07-20 08:25:55');
INSERT INTO `admin_operation_log` VALUES ('578', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 08:27:46', '2020-07-20 08:27:46');
INSERT INTO `admin_operation_log` VALUES ('579', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 08:27:52', '2020-07-20 08:27:52');
INSERT INTO `admin_operation_log` VALUES ('580', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:28:53', '2020-07-20 08:28:53');
INSERT INTO `admin_operation_log` VALUES ('581', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 08:29:36', '2020-07-20 08:29:36');
INSERT INTO `admin_operation_log` VALUES ('582', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 08:35:20', '2020-07-20 08:35:20');
INSERT INTO `admin_operation_log` VALUES ('583', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:35:28', '2020-07-20 08:35:28');
INSERT INTO `admin_operation_log` VALUES ('584', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-20 08:35:33', '2020-07-20 08:35:33');
INSERT INTO `admin_operation_log` VALUES ('585', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:35:39', '2020-07-20 08:35:39');
INSERT INTO `admin_operation_log` VALUES ('586', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 08:35:43', '2020-07-20 08:35:43');
INSERT INTO `admin_operation_log` VALUES ('587', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 08:36:55', '2020-07-20 08:36:55');
INSERT INTO `admin_operation_log` VALUES ('588', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:36:58', '2020-07-20 08:36:58');
INSERT INTO `admin_operation_log` VALUES ('589', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-20 08:37:16', '2020-07-20 08:37:16');
INSERT INTO `admin_operation_log` VALUES ('590', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:37:34', '2020-07-20 08:37:34');
INSERT INTO `admin_operation_log` VALUES ('591', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-20 08:38:15', '2020-07-20 08:38:15');
INSERT INTO `admin_operation_log` VALUES ('592', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:38:19', '2020-07-20 08:38:19');
INSERT INTO `admin_operation_log` VALUES ('593', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-20 08:38:32', '2020-07-20 08:38:32');
INSERT INTO `admin_operation_log` VALUES ('594', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-20 08:38:56', '2020-07-20 08:38:56');
INSERT INTO `admin_operation_log` VALUES ('595', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-20 08:39:05', '2020-07-20 08:39:05');
INSERT INTO `admin_operation_log` VALUES ('596', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-20 08:39:08', '2020-07-20 08:39:08');
INSERT INTO `admin_operation_log` VALUES ('597', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-20 08:39:15', '2020-07-20 08:39:15');
INSERT INTO `admin_operation_log` VALUES ('598', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-20 08:40:01', '2020-07-20 08:40:01');
INSERT INTO `admin_operation_log` VALUES ('599', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:40:04', '2020-07-20 08:40:04');
INSERT INTO `admin_operation_log` VALUES ('600', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"10\"}', '2020-07-20 08:40:11', '2020-07-20 08:40:11');
INSERT INTO `admin_operation_log` VALUES ('601', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2020-07-20 08:40:15', '2020-07-20 08:40:15');
INSERT INTO `admin_operation_log` VALUES ('602', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:42:01', '2020-07-20 08:42:01');
INSERT INTO `admin_operation_log` VALUES ('603', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 08:44:49', '2020-07-20 08:44:49');
INSERT INTO `admin_operation_log` VALUES ('604', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 08:45:13', '2020-07-20 08:45:13');
INSERT INTO `admin_operation_log` VALUES ('605', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 08:45:43', '2020-07-20 08:45:43');
INSERT INTO `admin_operation_log` VALUES ('606', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 08:46:24', '2020-07-20 08:46:24');
INSERT INTO `admin_operation_log` VALUES ('607', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 08:47:10', '2020-07-20 08:47:10');
INSERT INTO `admin_operation_log` VALUES ('608', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 08:47:50', '2020-07-20 08:47:50');
INSERT INTO `admin_operation_log` VALUES ('609', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 08:48:09', '2020-07-20 08:48:09');
INSERT INTO `admin_operation_log` VALUES ('610', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 08:48:41', '2020-07-20 08:48:41');
INSERT INTO `admin_operation_log` VALUES ('611', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 08:49:59', '2020-07-20 08:49:59');
INSERT INTO `admin_operation_log` VALUES ('612', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:50:56', '2020-07-20 08:50:56');
INSERT INTO `admin_operation_log` VALUES ('613', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:50:59', '2020-07-20 08:50:59');
INSERT INTO `admin_operation_log` VALUES ('614', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:51:06', '2020-07-20 08:51:06');
INSERT INTO `admin_operation_log` VALUES ('615', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:51:08', '2020-07-20 08:51:08');
INSERT INTO `admin_operation_log` VALUES ('616', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 08:51:42', '2020-07-20 08:51:42');
INSERT INTO `admin_operation_log` VALUES ('617', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:51:48', '2020-07-20 08:51:48');
INSERT INTO `admin_operation_log` VALUES ('618', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-20 08:52:15', '2020-07-20 08:52:15');
INSERT INTO `admin_operation_log` VALUES ('619', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:52:17', '2020-07-20 08:52:17');
INSERT INTO `admin_operation_log` VALUES ('620', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:52:52', '2020-07-20 08:52:52');
INSERT INTO `admin_operation_log` VALUES ('621', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:53:00', '2020-07-20 08:53:00');
INSERT INTO `admin_operation_log` VALUES ('622', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:53:03', '2020-07-20 08:53:03');
INSERT INTO `admin_operation_log` VALUES ('623', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:53:05', '2020-07-20 08:53:05');
INSERT INTO `admin_operation_log` VALUES ('624', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:53:10', '2020-07-20 08:53:10');
INSERT INTO `admin_operation_log` VALUES ('625', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:53:19', '2020-07-20 08:53:19');
INSERT INTO `admin_operation_log` VALUES ('626', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-20 08:54:04', '2020-07-20 08:54:04');
INSERT INTO `admin_operation_log` VALUES ('627', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:54:07', '2020-07-20 08:54:07');
INSERT INTO `admin_operation_log` VALUES ('628', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:54:22', '2020-07-20 08:54:22');
INSERT INTO `admin_operation_log` VALUES ('629', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-20 08:54:37', '2020-07-20 08:54:37');
INSERT INTO `admin_operation_log` VALUES ('630', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:54:40', '2020-07-20 08:54:40');
INSERT INTO `admin_operation_log` VALUES ('631', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:54:42', '2020-07-20 08:54:42');
INSERT INTO `admin_operation_log` VALUES ('632', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:54:52', '2020-07-20 08:54:52');
INSERT INTO `admin_operation_log` VALUES ('633', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-20 08:55:16', '2020-07-20 08:55:16');
INSERT INTO `admin_operation_log` VALUES ('634', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:55:19', '2020-07-20 08:55:19');
INSERT INTO `admin_operation_log` VALUES ('635', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:55:35', '2020-07-20 08:55:35');
INSERT INTO `admin_operation_log` VALUES ('636', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:55:38', '2020-07-20 08:55:38');
INSERT INTO `admin_operation_log` VALUES ('637', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-20 08:56:13', '2020-07-20 08:56:13');
INSERT INTO `admin_operation_log` VALUES ('638', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-20 08:56:43', '2020-07-20 08:56:43');
INSERT INTO `admin_operation_log` VALUES ('639', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-20 08:57:45', '2020-07-20 08:57:45');
INSERT INTO `admin_operation_log` VALUES ('640', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:57:48', '2020-07-20 08:57:48');
INSERT INTO `admin_operation_log` VALUES ('641', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 09:01:48', '2020-07-20 09:01:48');
INSERT INTO `admin_operation_log` VALUES ('642', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 09:02:03', '2020-07-20 09:02:03');
INSERT INTO `admin_operation_log` VALUES ('643', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 09:12:28', '2020-07-20 09:12:28');
INSERT INTO `admin_operation_log` VALUES ('644', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 09:20:36', '2020-07-20 09:20:36');
INSERT INTO `admin_operation_log` VALUES ('645', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 09:20:40', '2020-07-20 09:20:40');
INSERT INTO `admin_operation_log` VALUES ('646', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 09:24:31', '2020-07-20 09:24:31');
INSERT INTO `admin_operation_log` VALUES ('647', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 09:24:45', '2020-07-20 09:24:45');
INSERT INTO `admin_operation_log` VALUES ('648', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 09:24:53', '2020-07-20 09:24:53');
INSERT INTO `admin_operation_log` VALUES ('649', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 09:25:07', '2020-07-20 09:25:07');
INSERT INTO `admin_operation_log` VALUES ('650', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 09:25:17', '2020-07-20 09:25:17');
INSERT INTO `admin_operation_log` VALUES ('651', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 09:25:59', '2020-07-20 09:25:59');
INSERT INTO `admin_operation_log` VALUES ('652', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 09:26:20', '2020-07-20 09:26:20');
INSERT INTO `admin_operation_log` VALUES ('653', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 09:26:45', '2020-07-20 09:26:45');
INSERT INTO `admin_operation_log` VALUES ('654', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 09:27:21', '2020-07-20 09:27:21');
INSERT INTO `admin_operation_log` VALUES ('655', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 09:28:11', '2020-07-20 09:28:11');
INSERT INTO `admin_operation_log` VALUES ('656', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 09:28:51', '2020-07-20 09:28:51');
INSERT INTO `admin_operation_log` VALUES ('657', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 09:29:08', '2020-07-20 09:29:08');
INSERT INTO `admin_operation_log` VALUES ('658', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 09:29:42', '2020-07-20 09:29:42');
INSERT INTO `admin_operation_log` VALUES ('659', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 09:40:56', '2020-07-20 09:40:56');
INSERT INTO `admin_operation_log` VALUES ('660', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 09:41:15', '2020-07-20 09:41:15');
INSERT INTO `admin_operation_log` VALUES ('661', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-20 09:41:34', '2020-07-20 09:41:34');
INSERT INTO `admin_operation_log` VALUES ('662', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-21 01:01:54', '2020-07-21 01:01:54');
INSERT INTO `admin_operation_log` VALUES ('663', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-21 01:01:54', '2020-07-21 01:01:54');
INSERT INTO `admin_operation_log` VALUES ('664', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:02:15', '2020-07-21 01:02:15');
INSERT INTO `admin_operation_log` VALUES ('665', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:06:11', '2020-07-21 01:06:11');
INSERT INTO `admin_operation_log` VALUES ('666', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 01:08:09', '2020-07-21 01:08:09');
INSERT INTO `admin_operation_log` VALUES ('667', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 01:10:52', '2020-07-21 01:10:52');
INSERT INTO `admin_operation_log` VALUES ('668', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 01:39:35', '2020-07-21 01:39:35');
INSERT INTO `admin_operation_log` VALUES ('669', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 01:54:30', '2020-07-21 01:54:30');
INSERT INTO `admin_operation_log` VALUES ('670', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 01:54:34', '2020-07-21 01:54:34');
INSERT INTO `admin_operation_log` VALUES ('671', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 01:56:35', '2020-07-21 01:56:35');
INSERT INTO `admin_operation_log` VALUES ('672', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 01:56:38', '2020-07-21 01:56:38');
INSERT INTO `admin_operation_log` VALUES ('673', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 01:56:42', '2020-07-21 01:56:42');
INSERT INTO `admin_operation_log` VALUES ('674', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:56:46', '2020-07-21 01:56:46');
INSERT INTO `admin_operation_log` VALUES ('675', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 02:01:34', '2020-07-21 02:01:34');
INSERT INTO `admin_operation_log` VALUES ('676', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:01:39', '2020-07-21 02:01:39');
INSERT INTO `admin_operation_log` VALUES ('677', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 02:01:40', '2020-07-21 02:01:40');
INSERT INTO `admin_operation_log` VALUES ('678', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 02:02:37', '2020-07-21 02:02:37');
INSERT INTO `admin_operation_log` VALUES ('679', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:02:39', '2020-07-21 02:02:39');
INSERT INTO `admin_operation_log` VALUES ('680', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:02:42', '2020-07-21 02:02:42');
INSERT INTO `admin_operation_log` VALUES ('681', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:02:44', '2020-07-21 02:02:44');
INSERT INTO `admin_operation_log` VALUES ('682', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:02:46', '2020-07-21 02:02:46');
INSERT INTO `admin_operation_log` VALUES ('683', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:02:48', '2020-07-21 02:02:48');
INSERT INTO `admin_operation_log` VALUES ('684', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:02:50', '2020-07-21 02:02:50');
INSERT INTO `admin_operation_log` VALUES ('685', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 02:02:51', '2020-07-21 02:02:51');
INSERT INTO `admin_operation_log` VALUES ('686', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 02:06:10', '2020-07-21 02:06:10');
INSERT INTO `admin_operation_log` VALUES ('687', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 02:06:58', '2020-07-21 02:06:58');
INSERT INTO `admin_operation_log` VALUES ('688', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 02:08:04', '2020-07-21 02:08:04');
INSERT INTO `admin_operation_log` VALUES ('689', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 02:17:08', '2020-07-21 02:17:08');
INSERT INTO `admin_operation_log` VALUES ('690', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 02:20:09', '2020-07-21 02:20:09');
INSERT INTO `admin_operation_log` VALUES ('691', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 02:20:28', '2020-07-21 02:20:28');
INSERT INTO `admin_operation_log` VALUES ('692', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:20:32', '2020-07-21 02:20:32');
INSERT INTO `admin_operation_log` VALUES ('693', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 02:20:35', '2020-07-21 02:20:35');
INSERT INTO `admin_operation_log` VALUES ('694', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 02:24:09', '2020-07-21 02:24:09');
INSERT INTO `admin_operation_log` VALUES ('695', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 02:26:36', '2020-07-21 02:26:36');
INSERT INTO `admin_operation_log` VALUES ('696', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 02:34:34', '2020-07-21 02:34:34');
INSERT INTO `admin_operation_log` VALUES ('697', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:34:38', '2020-07-21 02:34:38');
INSERT INTO `admin_operation_log` VALUES ('698', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:34:41', '2020-07-21 02:34:41');
INSERT INTO `admin_operation_log` VALUES ('699', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 02:34:43', '2020-07-21 02:34:43');
INSERT INTO `admin_operation_log` VALUES ('700', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 02:34:55', '2020-07-21 02:34:55');
INSERT INTO `admin_operation_log` VALUES ('701', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:34:58', '2020-07-21 02:34:58');
INSERT INTO `admin_operation_log` VALUES ('702', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 02:46:29', '2020-07-21 02:46:29');
INSERT INTO `admin_operation_log` VALUES ('703', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:46:47', '2020-07-21 02:46:47');
INSERT INTO `admin_operation_log` VALUES ('704', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 02:46:50', '2020-07-21 02:46:50');
INSERT INTO `admin_operation_log` VALUES ('705', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 02:50:52', '2020-07-21 02:50:52');
INSERT INTO `admin_operation_log` VALUES ('706', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:50:56', '2020-07-21 02:50:56');
INSERT INTO `admin_operation_log` VALUES ('707', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 02:50:59', '2020-07-21 02:50:59');
INSERT INTO `admin_operation_log` VALUES ('708', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:51:04', '2020-07-21 02:51:04');
INSERT INTO `admin_operation_log` VALUES ('709', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:51:07', '2020-07-21 02:51:07');
INSERT INTO `admin_operation_log` VALUES ('710', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 02:51:09', '2020-07-21 02:51:09');
INSERT INTO `admin_operation_log` VALUES ('711', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 02:51:25', '2020-07-21 02:51:25');
INSERT INTO `admin_operation_log` VALUES ('712', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:51:27', '2020-07-21 02:51:27');
INSERT INTO `admin_operation_log` VALUES ('713', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:51:29', '2020-07-21 02:51:29');
INSERT INTO `admin_operation_log` VALUES ('714', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 02:51:49', '2020-07-21 02:51:49');
INSERT INTO `admin_operation_log` VALUES ('715', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:51:52', '2020-07-21 02:51:52');
INSERT INTO `admin_operation_log` VALUES ('716', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 02:52:10', '2020-07-21 02:52:10');
INSERT INTO `admin_operation_log` VALUES ('717', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:52:13', '2020-07-21 02:52:13');
INSERT INTO `admin_operation_log` VALUES ('718', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 02:53:02', '2020-07-21 02:53:02');
INSERT INTO `admin_operation_log` VALUES ('719', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:53:05', '2020-07-21 02:53:05');
INSERT INTO `admin_operation_log` VALUES ('720', '1', 'admin/shopping/add/4', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:53:08', '2020-07-21 02:53:08');
INSERT INTO `admin_operation_log` VALUES ('721', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 02:55:26', '2020-07-21 02:55:26');
INSERT INTO `admin_operation_log` VALUES ('722', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:55:30', '2020-07-21 02:55:30');
INSERT INTO `admin_operation_log` VALUES ('723', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:55:33', '2020-07-21 02:55:33');
INSERT INTO `admin_operation_log` VALUES ('724', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:55:35', '2020-07-21 02:55:35');
INSERT INTO `admin_operation_log` VALUES ('725', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:55:37', '2020-07-21 02:55:37');
INSERT INTO `admin_operation_log` VALUES ('726', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:55:40', '2020-07-21 02:55:40');
INSERT INTO `admin_operation_log` VALUES ('727', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:55:41', '2020-07-21 02:55:41');
INSERT INTO `admin_operation_log` VALUES ('728', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:55:43', '2020-07-21 02:55:43');
INSERT INTO `admin_operation_log` VALUES ('729', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 02:55:45', '2020-07-21 02:55:45');
INSERT INTO `admin_operation_log` VALUES ('730', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:55:48', '2020-07-21 02:55:48');
INSERT INTO `admin_operation_log` VALUES ('731', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:55:49', '2020-07-21 02:55:49');
INSERT INTO `admin_operation_log` VALUES ('732', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:55:51', '2020-07-21 02:55:51');
INSERT INTO `admin_operation_log` VALUES ('733', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:55:53', '2020-07-21 02:55:53');
INSERT INTO `admin_operation_log` VALUES ('734', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 02:55:56', '2020-07-21 02:55:56');
INSERT INTO `admin_operation_log` VALUES ('735', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 02:56:54', '2020-07-21 02:56:54');
INSERT INTO `admin_operation_log` VALUES ('736', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:56:56', '2020-07-21 02:56:56');
INSERT INTO `admin_operation_log` VALUES ('737', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:56:58', '2020-07-21 02:56:58');
INSERT INTO `admin_operation_log` VALUES ('738', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:57:01', '2020-07-21 02:57:01');
INSERT INTO `admin_operation_log` VALUES ('739', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:57:03', '2020-07-21 02:57:03');
INSERT INTO `admin_operation_log` VALUES ('740', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:57:05', '2020-07-21 02:57:05');
INSERT INTO `admin_operation_log` VALUES ('741', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:57:07', '2020-07-21 02:57:07');
INSERT INTO `admin_operation_log` VALUES ('742', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 02:58:58', '2020-07-21 02:58:58');
INSERT INTO `admin_operation_log` VALUES ('743', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:59:05', '2020-07-21 02:59:05');
INSERT INTO `admin_operation_log` VALUES ('744', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:59:07', '2020-07-21 02:59:07');
INSERT INTO `admin_operation_log` VALUES ('745', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 02:59:09', '2020-07-21 02:59:09');
INSERT INTO `admin_operation_log` VALUES ('746', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 02:59:12', '2020-07-21 02:59:12');
INSERT INTO `admin_operation_log` VALUES ('747', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 03:00:53', '2020-07-21 03:00:53');
INSERT INTO `admin_operation_log` VALUES ('748', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:00:55', '2020-07-21 03:00:55');
INSERT INTO `admin_operation_log` VALUES ('749', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:00:57', '2020-07-21 03:00:57');
INSERT INTO `admin_operation_log` VALUES ('750', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:00:59', '2020-07-21 03:00:59');
INSERT INTO `admin_operation_log` VALUES ('751', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:01:01', '2020-07-21 03:01:01');
INSERT INTO `admin_operation_log` VALUES ('752', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:01:02', '2020-07-21 03:01:02');
INSERT INTO `admin_operation_log` VALUES ('753', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:01:04', '2020-07-21 03:01:04');
INSERT INTO `admin_operation_log` VALUES ('754', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 03:01:48', '2020-07-21 03:01:48');
INSERT INTO `admin_operation_log` VALUES ('755', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:01:54', '2020-07-21 03:01:54');
INSERT INTO `admin_operation_log` VALUES ('756', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:01:56', '2020-07-21 03:01:56');
INSERT INTO `admin_operation_log` VALUES ('757', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:01:58', '2020-07-21 03:01:58');
INSERT INTO `admin_operation_log` VALUES ('758', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:02:00', '2020-07-21 03:02:00');
INSERT INTO `admin_operation_log` VALUES ('759', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 03:02:02', '2020-07-21 03:02:02');
INSERT INTO `admin_operation_log` VALUES ('760', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:02:04', '2020-07-21 03:02:04');
INSERT INTO `admin_operation_log` VALUES ('761', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:02:06', '2020-07-21 03:02:06');
INSERT INTO `admin_operation_log` VALUES ('762', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:02:08', '2020-07-21 03:02:08');
INSERT INTO `admin_operation_log` VALUES ('763', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:02:10', '2020-07-21 03:02:10');
INSERT INTO `admin_operation_log` VALUES ('764', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 03:02:11', '2020-07-21 03:02:11');
INSERT INTO `admin_operation_log` VALUES ('765', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 03:02:46', '2020-07-21 03:02:46');
INSERT INTO `admin_operation_log` VALUES ('766', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:02:49', '2020-07-21 03:02:49');
INSERT INTO `admin_operation_log` VALUES ('767', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:02:50', '2020-07-21 03:02:50');
INSERT INTO `admin_operation_log` VALUES ('768', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 03:03:18', '2020-07-21 03:03:18');
INSERT INTO `admin_operation_log` VALUES ('769', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:03:21', '2020-07-21 03:03:21');
INSERT INTO `admin_operation_log` VALUES ('770', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:03:25', '2020-07-21 03:03:25');
INSERT INTO `admin_operation_log` VALUES ('771', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:03:29', '2020-07-21 03:03:29');
INSERT INTO `admin_operation_log` VALUES ('772', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 03:03:30', '2020-07-21 03:03:30');
INSERT INTO `admin_operation_log` VALUES ('773', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 03:08:03', '2020-07-21 03:08:03');
INSERT INTO `admin_operation_log` VALUES ('774', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:08:06', '2020-07-21 03:08:06');
INSERT INTO `admin_operation_log` VALUES ('775', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:08:08', '2020-07-21 03:08:08');
INSERT INTO `admin_operation_log` VALUES ('776', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 03:08:51', '2020-07-21 03:08:51');
INSERT INTO `admin_operation_log` VALUES ('777', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:08:54', '2020-07-21 03:08:54');
INSERT INTO `admin_operation_log` VALUES ('778', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:08:56', '2020-07-21 03:08:56');
INSERT INTO `admin_operation_log` VALUES ('779', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:08:58', '2020-07-21 03:08:58');
INSERT INTO `admin_operation_log` VALUES ('780', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 03:09:00', '2020-07-21 03:09:00');
INSERT INTO `admin_operation_log` VALUES ('781', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 03:16:00', '2020-07-21 03:16:00');
INSERT INTO `admin_operation_log` VALUES ('782', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:16:03', '2020-07-21 03:16:03');
INSERT INTO `admin_operation_log` VALUES ('783', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:16:05', '2020-07-21 03:16:05');
INSERT INTO `admin_operation_log` VALUES ('784', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:16:06', '2020-07-21 03:16:06');
INSERT INTO `admin_operation_log` VALUES ('785', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 03:16:08', '2020-07-21 03:16:08');
INSERT INTO `admin_operation_log` VALUES ('786', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 03:16:55', '2020-07-21 03:16:55');
INSERT INTO `admin_operation_log` VALUES ('787', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:16:58', '2020-07-21 03:16:58');
INSERT INTO `admin_operation_log` VALUES ('788', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:16:59', '2020-07-21 03:16:59');
INSERT INTO `admin_operation_log` VALUES ('789', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:17:01', '2020-07-21 03:17:01');
INSERT INTO `admin_operation_log` VALUES ('790', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:17:04', '2020-07-21 03:17:04');
INSERT INTO `admin_operation_log` VALUES ('791', '1', 'admin/shopping/reduce/4', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:17:05', '2020-07-21 03:17:05');
INSERT INTO `admin_operation_log` VALUES ('792', '1', 'admin/shopping/reduce/4', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 03:17:07', '2020-07-21 03:17:07');
INSERT INTO `admin_operation_log` VALUES ('793', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 03:20:34', '2020-07-21 03:20:34');
INSERT INTO `admin_operation_log` VALUES ('794', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 03:22:01', '2020-07-21 03:22:01');
INSERT INTO `admin_operation_log` VALUES ('795', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 03:37:49', '2020-07-21 03:37:49');
INSERT INTO `admin_operation_log` VALUES ('796', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 03:37:52', '2020-07-21 03:37:52');
INSERT INTO `admin_operation_log` VALUES ('797', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 03:37:56', '2020-07-21 03:37:56');
INSERT INTO `admin_operation_log` VALUES ('798', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 03:37:57', '2020-07-21 03:37:57');
INSERT INTO `admin_operation_log` VALUES ('799', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 03:38:02', '2020-07-21 03:38:02');
INSERT INTO `admin_operation_log` VALUES ('800', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"jwruvLEJWDEF8LwTSS4ZO2VNPXCQwXYs63rL3HZ3\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"6\",\"4\",\"5\",\"7\"]}', '2020-07-21 03:38:07', '2020-07-21 03:38:07');
INSERT INTO `admin_operation_log` VALUES ('801', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"0\",\"_token\":\"jwruvLEJWDEF8LwTSS4ZO2VNPXCQwXYs63rL3HZ3\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"6\",\"4\",\"5\",\"7\"]}', '2020-07-21 03:39:11', '2020-07-21 03:39:11');
INSERT INTO `admin_operation_log` VALUES ('802', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"jwruvLEJWDEF8LwTSS4ZO2VNPXCQwXYs63rL3HZ3\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"6\",\"4\",\"5\",\"7\"]}', '2020-07-21 03:39:14', '2020-07-21 03:39:14');
INSERT INTO `admin_operation_log` VALUES ('803', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"0\",\"_token\":\"jwruvLEJWDEF8LwTSS4ZO2VNPXCQwXYs63rL3HZ3\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"6\",\"4\",\"5\",\"7\"]}', '2020-07-21 03:39:16', '2020-07-21 03:39:16');
INSERT INTO `admin_operation_log` VALUES ('804', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"jwruvLEJWDEF8LwTSS4ZO2VNPXCQwXYs63rL3HZ3\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"6\",\"4\",\"5\",\"7\"]}', '2020-07-21 03:42:09', '2020-07-21 03:42:09');
INSERT INTO `admin_operation_log` VALUES ('805', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 03:42:10', '2020-07-21 03:42:10');
INSERT INTO `admin_operation_log` VALUES ('806', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"xGr8HnRMbuu279TTDJJbxuUQqwYXJLrJqbPpVZID\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"6\",\"4\",\"5\",\"7\"]}', '2020-07-21 03:42:15', '2020-07-21 03:42:15');
INSERT INTO `admin_operation_log` VALUES ('807', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"0\",\"_token\":\"xGr8HnRMbuu279TTDJJbxuUQqwYXJLrJqbPpVZID\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"6\",\"4\",\"5\",\"7\"]}', '2020-07-21 03:42:19', '2020-07-21 03:42:19');
INSERT INTO `admin_operation_log` VALUES ('808', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"xGr8HnRMbuu279TTDJJbxuUQqwYXJLrJqbPpVZID\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"6\",\"4\",\"5\",\"7\"]}', '2020-07-21 03:45:24', '2020-07-21 03:45:24');
INSERT INTO `admin_operation_log` VALUES ('809', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 05:19:00', '2020-07-21 05:19:00');
INSERT INTO `admin_operation_log` VALUES ('810', '1', 'admin/shopping/add/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 05:19:04', '2020-07-21 05:19:04');
INSERT INTO `admin_operation_log` VALUES ('811', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 05:19:08', '2020-07-21 05:19:08');
INSERT INTO `admin_operation_log` VALUES ('812', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 05:19:10', '2020-07-21 05:19:10');
INSERT INTO `admin_operation_log` VALUES ('813', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 05:19:11', '2020-07-21 05:19:11');
INSERT INTO `admin_operation_log` VALUES ('814', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 05:19:13', '2020-07-21 05:19:13');
INSERT INTO `admin_operation_log` VALUES ('815', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 05:19:14', '2020-07-21 05:19:14');
INSERT INTO `admin_operation_log` VALUES ('816', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 05:19:16', '2020-07-21 05:19:16');
INSERT INTO `admin_operation_log` VALUES ('817', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 05:19:18', '2020-07-21 05:19:18');
INSERT INTO `admin_operation_log` VALUES ('818', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 05:19:19', '2020-07-21 05:19:19');
INSERT INTO `admin_operation_log` VALUES ('819', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 05:19:21', '2020-07-21 05:19:21');
INSERT INTO `admin_operation_log` VALUES ('820', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 05:19:23', '2020-07-21 05:19:23');
INSERT INTO `admin_operation_log` VALUES ('821', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 05:19:28', '2020-07-21 05:19:28');
INSERT INTO `admin_operation_log` VALUES ('822', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 05:19:30', '2020-07-21 05:19:30');
INSERT INTO `admin_operation_log` VALUES ('823', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 05:19:31', '2020-07-21 05:19:31');
INSERT INTO `admin_operation_log` VALUES ('824', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 05:19:43', '2020-07-21 05:19:43');
INSERT INTO `admin_operation_log` VALUES ('825', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"oPC3afHodQGeGvAIgLMSQJ1I8v9oZClpRksKOBVr\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"6\",\"4\",\"5\",\"7\"]}', '2020-07-21 05:21:03', '2020-07-21 05:21:03');
INSERT INTO `admin_operation_log` VALUES ('826', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 05:27:49', '2020-07-21 05:27:49');
INSERT INTO `admin_operation_log` VALUES ('827', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"H3gj8PcqZS6IXQ3NPQCYaTLQsBuvH55WcnUScjOf\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"6\",\"4\",\"5\",\"7\"]}', '2020-07-21 05:27:55', '2020-07-21 05:27:55');
INSERT INTO `admin_operation_log` VALUES ('828', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 06:00:33', '2020-07-21 06:00:33');
INSERT INTO `admin_operation_log` VALUES ('829', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:00:34', '2020-07-21 06:00:34');
INSERT INTO `admin_operation_log` VALUES ('830', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"E9P5VTqfhCqPFZerThGm6bdNlysCc9e5U8KWI0KW\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"6\",\"4\",\"5\",\"7\"]}', '2020-07-21 06:00:38', '2020-07-21 06:00:38');
INSERT INTO `admin_operation_log` VALUES ('831', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:01:08', '2020-07-21 06:01:08');
INSERT INTO `admin_operation_log` VALUES ('832', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"hlYEoBzUWxqjerx2c27jJxuZ7kLnUpqcDRexpF7C\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"6\",\"4\",\"5\",\"7\"]}', '2020-07-21 06:01:12', '2020-07-21 06:01:12');
INSERT INTO `admin_operation_log` VALUES ('833', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"hlYEoBzUWxqjerx2c27jJxuZ7kLnUpqcDRexpF7C\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"6\",\"4\",\"5\",\"7\"]}', '2020-07-21 06:04:18', '2020-07-21 06:04:18');
INSERT INTO `admin_operation_log` VALUES ('834', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 06:07:54', '2020-07-21 06:07:54');
INSERT INTO `admin_operation_log` VALUES ('835', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"4K3cknwAs78ZT3YwXsDNzVLhWFmDlSMy9V7jv5dt\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"6\",\"4\",\"5\",\"7\"]}', '2020-07-21 06:07:59', '2020-07-21 06:07:59');
INSERT INTO `admin_operation_log` VALUES ('836', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:15:46', '2020-07-21 06:15:46');
INSERT INTO `admin_operation_log` VALUES ('837', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:16:22', '2020-07-21 06:16:22');
INSERT INTO `admin_operation_log` VALUES ('838', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:16:25', '2020-07-21 06:16:25');
INSERT INTO `admin_operation_log` VALUES ('839', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:18:13', '2020-07-21 06:18:13');
INSERT INTO `admin_operation_log` VALUES ('840', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"L9vZbZjJNIC0w455dNbJzclLZ8RODKW8RfetsXCN\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"6\",\"4\",\"5\",\"7\"]}', '2020-07-21 06:18:17', '2020-07-21 06:18:17');
INSERT INTO `admin_operation_log` VALUES ('841', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:18:18', '2020-07-21 06:18:18');
INSERT INTO `admin_operation_log` VALUES ('842', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"Qae70RRQSf89wvm4fsT0JkFKl7d2gNjEqPWIbHiK\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"6\",\"4\",\"5\",\"7\"]}', '2020-07-21 06:18:32', '2020-07-21 06:18:32');
INSERT INTO `admin_operation_log` VALUES ('843', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:18:32', '2020-07-21 06:18:32');
INSERT INTO `admin_operation_log` VALUES ('844', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"0\",\"_token\":\"lVNBDKwZ60a3DwXmJBNHK83MRn4Z57AUni7HmWQE\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"6\",\"4\",\"5\",\"7\"]}', '2020-07-21 06:18:36', '2020-07-21 06:18:36');
INSERT INTO `admin_operation_log` VALUES ('845', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:18:36', '2020-07-21 06:18:36');
INSERT INTO `admin_operation_log` VALUES ('846', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:20:30', '2020-07-21 06:20:30');
INSERT INTO `admin_operation_log` VALUES ('847', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"TC3iJdDa0kGjsNDZEQWABZVMQypZ13KPg70YR1Dg\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"6\",\"4\",\"5\",\"7\"]}', '2020-07-21 06:20:33', '2020-07-21 06:20:33');
INSERT INTO `admin_operation_log` VALUES ('848', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:20:52', '2020-07-21 06:20:52');
INSERT INTO `admin_operation_log` VALUES ('849', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"Dit23gLHsM2ZT8MxEyG9qDg3DUN3YWqtBA7BAuqB\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"6\",\"4\",\"5\",\"7\"]}', '2020-07-21 06:20:55', '2020-07-21 06:20:55');
INSERT INTO `admin_operation_log` VALUES ('850', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:20:56', '2020-07-21 06:20:56');
INSERT INTO `admin_operation_log` VALUES ('851', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:21:18', '2020-07-21 06:21:18');
INSERT INTO `admin_operation_log` VALUES ('852', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"PWelWYHDrxD0Tt8y70Roam0ea1zF2lTMwdVUEcD5\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"6\",\"4\",\"5\",\"7\"]}', '2020-07-21 06:21:21', '2020-07-21 06:21:21');
INSERT INTO `admin_operation_log` VALUES ('853', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:21:22', '2020-07-21 06:21:22');
INSERT INTO `admin_operation_log` VALUES ('854', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-21 06:21:25', '2020-07-21 06:21:25');
INSERT INTO `admin_operation_log` VALUES ('855', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2020-07-21 06:21:28', '2020-07-21 06:21:28');
INSERT INTO `admin_operation_log` VALUES ('856', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"aFw2LmcNMywACyOyeo2v8GsgzfuSKwyXyGcOHDzW\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"4\",\"5\",\"6\",\"7\"]}', '2020-07-21 06:21:38', '2020-07-21 06:21:38');
INSERT INTO `admin_operation_log` VALUES ('857', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:21:38', '2020-07-21 06:21:38');
INSERT INTO `admin_operation_log` VALUES ('858', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"zGClswZVU4ryvjtE3UbdOgZ3dSM9GLsCWRzP3bYy\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"4\",\"5\",\"6\",\"7\"]}', '2020-07-21 06:23:40', '2020-07-21 06:23:40');
INSERT INTO `admin_operation_log` VALUES ('859', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"0\",\"_token\":\"zGClswZVU4ryvjtE3UbdOgZ3dSM9GLsCWRzP3bYy\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"4\",\"5\",\"6\",\"7\"]}', '2020-07-21 06:23:54', '2020-07-21 06:23:54');
INSERT INTO `admin_operation_log` VALUES ('860', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:24:26', '2020-07-21 06:24:26');
INSERT INTO `admin_operation_log` VALUES ('861', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2020-07-21 06:24:27', '2020-07-21 06:24:27');
INSERT INTO `admin_operation_log` VALUES ('862', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2020-07-21 06:26:49', '2020-07-21 06:26:49');
INSERT INTO `admin_operation_log` VALUES ('863', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2020-07-21 06:26:51', '2020-07-21 06:26:51');
INSERT INTO `admin_operation_log` VALUES ('864', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2020-07-21 06:27:09', '2020-07-21 06:27:09');
INSERT INTO `admin_operation_log` VALUES ('865', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:27:21', '2020-07-21 06:27:21');
INSERT INTO `admin_operation_log` VALUES ('866', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 06:27:27', '2020-07-21 06:27:27');
INSERT INTO `admin_operation_log` VALUES ('867', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:27:30', '2020-07-21 06:27:30');
INSERT INTO `admin_operation_log` VALUES ('868', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 06:47:38', '2020-07-21 06:47:38');
INSERT INTO `admin_operation_log` VALUES ('869', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:47:43', '2020-07-21 06:47:43');
INSERT INTO `admin_operation_log` VALUES ('870', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"rVulpgeydvM7VIEjJy1GcJEgZJBk7brP3kcNGwPP\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"6\",\"4\",\"5\",\"7\"]}', '2020-07-21 06:47:48', '2020-07-21 06:47:48');
INSERT INTO `admin_operation_log` VALUES ('871', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:47:49', '2020-07-21 06:47:49');
INSERT INTO `admin_operation_log` VALUES ('872', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:47:51', '2020-07-21 06:47:51');
INSERT INTO `admin_operation_log` VALUES ('873', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:48:57', '2020-07-21 06:48:57');
INSERT INTO `admin_operation_log` VALUES ('874', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:53:38', '2020-07-21 06:53:38');
INSERT INTO `admin_operation_log` VALUES ('875', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"0\",\"_token\":\"XsFAoDbOakavmciDPRqx4iPBxVK3qY4tcacrP3Jt\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"6\"]}', '2020-07-21 06:54:14', '2020-07-21 06:54:14');
INSERT INTO `admin_operation_log` VALUES ('876', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:54:14', '2020-07-21 06:54:14');
INSERT INTO `admin_operation_log` VALUES ('877', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:55:30', '2020-07-21 06:55:30');
INSERT INTO `admin_operation_log` VALUES ('878', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:57:11', '2020-07-21 06:57:11');
INSERT INTO `admin_operation_log` VALUES ('879', '1', 'admin/shopping/reduce/6', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 06:57:15', '2020-07-21 06:57:15');
INSERT INTO `admin_operation_log` VALUES ('880', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:57:44', '2020-07-21 06:57:44');
INSERT INTO `admin_operation_log` VALUES ('881', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"0\",\"_token\":\"23CMVPNYE26E6LgBvVQcwLsQdb8Pp6JegbB1RQ3b\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"6\"]}', '2020-07-21 06:57:50', '2020-07-21 06:57:50');
INSERT INTO `admin_operation_log` VALUES ('882', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:57:51', '2020-07-21 06:57:51');
INSERT INTO `admin_operation_log` VALUES ('883', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"NdteMDkuHKKZOqj9qYDt36giFZzoVq7xCm5EPbKo\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"4\",\"5\",\"7\"]}', '2020-07-21 06:57:56', '2020-07-21 06:57:56');
INSERT INTO `admin_operation_log` VALUES ('884', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:57:56', '2020-07-21 06:57:56');
INSERT INTO `admin_operation_log` VALUES ('885', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 06:58:02', '2020-07-21 06:58:02');
INSERT INTO `admin_operation_log` VALUES ('886', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 06:58:04', '2020-07-21 06:58:04');
INSERT INTO `admin_operation_log` VALUES ('887', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 06:58:07', '2020-07-21 06:58:07');
INSERT INTO `admin_operation_log` VALUES ('888', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-21 07:00:54', '2020-07-21 07:00:54');
INSERT INTO `admin_operation_log` VALUES ('889', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 07:01:00', '2020-07-21 07:01:00');
INSERT INTO `admin_operation_log` VALUES ('890', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 07:01:05', '2020-07-21 07:01:05');
INSERT INTO `admin_operation_log` VALUES ('891', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"0\",\"_token\":\"6eiTrxlWxsBNJzot9klfblLJa4hMBIGH91QRRfOt\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"9\",\"8\"]}', '2020-07-21 07:04:02', '2020-07-21 07:04:02');
INSERT INTO `admin_operation_log` VALUES ('892', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 07:04:02', '2020-07-21 07:04:02');
INSERT INTO `admin_operation_log` VALUES ('893', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 07:05:42', '2020-07-21 07:05:42');
INSERT INTO `admin_operation_log` VALUES ('894', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 07:05:43', '2020-07-21 07:05:43');
INSERT INTO `admin_operation_log` VALUES ('895', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 07:05:46', '2020-07-21 07:05:46');
INSERT INTO `admin_operation_log` VALUES ('896', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 07:05:48', '2020-07-21 07:05:48');
INSERT INTO `admin_operation_log` VALUES ('897', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"0\",\"_token\":\"3XcOlpfzQRQIJXAj8M66BJrrUFnCzE7wjcyjW03z\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"10\"]}', '2020-07-21 07:05:52', '2020-07-21 07:05:52');
INSERT INTO `admin_operation_log` VALUES ('898', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 07:05:52', '2020-07-21 07:05:52');
INSERT INTO `admin_operation_log` VALUES ('899', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 07:05:59', '2020-07-21 07:05:59');
INSERT INTO `admin_operation_log` VALUES ('900', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 07:06:02', '2020-07-21 07:06:02');
INSERT INTO `admin_operation_log` VALUES ('901', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-21 07:06:04', '2020-07-21 07:06:04');
INSERT INTO `admin_operation_log` VALUES ('902', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 07:06:06', '2020-07-21 07:06:06');
INSERT INTO `admin_operation_log` VALUES ('903', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"0\",\"_token\":\"OuEskmxqbIg4vRNBLg8JHfJEBU3rcs34kE2knPTV\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"12\",\"11\"]}', '2020-07-21 07:07:10', '2020-07-21 07:07:10');
INSERT INTO `admin_operation_log` VALUES ('904', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 07:07:10', '2020-07-21 07:07:10');
INSERT INTO `admin_operation_log` VALUES ('905', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"0\",\"_token\":\"bDJTgPNI8ff3apDAhkjCyJdDCj3Yhtvt7HknkCck\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"12\",\"11\"]}', '2020-07-21 07:08:54', '2020-07-21 07:08:54');
INSERT INTO `admin_operation_log` VALUES ('906', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 07:08:54', '2020-07-21 07:08:54');
INSERT INTO `admin_operation_log` VALUES ('907', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 07:12:36', '2020-07-21 07:12:36');
INSERT INTO `admin_operation_log` VALUES ('908', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 07:13:42', '2020-07-21 07:13:42');
INSERT INTO `admin_operation_log` VALUES ('909', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 07:14:21', '2020-07-21 07:14:21');
INSERT INTO `admin_operation_log` VALUES ('910', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 07:15:33', '2020-07-21 07:15:33');
INSERT INTO `admin_operation_log` VALUES ('911', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 07:30:58', '2020-07-21 07:30:58');
INSERT INTO `admin_operation_log` VALUES ('912', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 07:31:12', '2020-07-21 07:31:12');
INSERT INTO `admin_operation_log` VALUES ('913', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 07:34:35', '2020-07-21 07:34:35');
INSERT INTO `admin_operation_log` VALUES ('914', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 07:34:37', '2020-07-21 07:34:37');
INSERT INTO `admin_operation_log` VALUES ('915', '1', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 07:34:38', '2020-07-21 07:34:38');
INSERT INTO `admin_operation_log` VALUES ('916', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 07:34:39', '2020-07-21 07:34:39');
INSERT INTO `admin_operation_log` VALUES ('917', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 07:35:08', '2020-07-21 07:35:08');
INSERT INTO `admin_operation_log` VALUES ('918', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 07:41:01', '2020-07-21 07:41:01');
INSERT INTO `admin_operation_log` VALUES ('919', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 07:41:05', '2020-07-21 07:41:05');
INSERT INTO `admin_operation_log` VALUES ('920', '1', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 07:41:07', '2020-07-21 07:41:07');
INSERT INTO `admin_operation_log` VALUES ('921', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 07:41:07', '2020-07-21 07:41:07');
INSERT INTO `admin_operation_log` VALUES ('922', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 07:41:21', '2020-07-21 07:41:21');
INSERT INTO `admin_operation_log` VALUES ('923', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 07:43:44', '2020-07-21 07:43:44');
INSERT INTO `admin_operation_log` VALUES ('924', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 07:43:50', '2020-07-21 07:43:50');
INSERT INTO `admin_operation_log` VALUES ('925', '1', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 07:43:53', '2020-07-21 07:43:53');
INSERT INTO `admin_operation_log` VALUES ('926', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 07:46:39', '2020-07-21 07:46:39');
INSERT INTO `admin_operation_log` VALUES ('927', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 07:48:42', '2020-07-21 07:48:42');
INSERT INTO `admin_operation_log` VALUES ('928', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 07:49:46', '2020-07-21 07:49:46');
INSERT INTO `admin_operation_log` VALUES ('929', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 07:52:15', '2020-07-21 07:52:15');
INSERT INTO `admin_operation_log` VALUES ('930', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 08:08:31', '2020-07-21 08:08:31');
INSERT INTO `admin_operation_log` VALUES ('931', '1', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 08:08:38', '2020-07-21 08:08:38');
INSERT INTO `admin_operation_log` VALUES ('932', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 08:27:56', '2020-07-21 08:27:56');
INSERT INTO `admin_operation_log` VALUES ('933', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 08:39:18', '2020-07-21 08:39:18');
INSERT INTO `admin_operation_log` VALUES ('934', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 08:40:37', '2020-07-21 08:40:37');
INSERT INTO `admin_operation_log` VALUES ('935', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 08:41:54', '2020-07-21 08:41:54');
INSERT INTO `admin_operation_log` VALUES ('936', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 08:42:48', '2020-07-21 08:42:48');
INSERT INTO `admin_operation_log` VALUES ('937', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 09:08:33', '2020-07-21 09:08:33');
INSERT INTO `admin_operation_log` VALUES ('938', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 09:08:41', '2020-07-21 09:08:41');
INSERT INTO `admin_operation_log` VALUES ('939', '1', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 09:08:43', '2020-07-21 09:08:43');
INSERT INTO `admin_operation_log` VALUES ('940', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 09:09:14', '2020-07-21 09:09:14');
INSERT INTO `admin_operation_log` VALUES ('941', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 09:10:52', '2020-07-21 09:10:52');
INSERT INTO `admin_operation_log` VALUES ('942', '1', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?\",\"_token\":\"pyzDsppQxRXq9klGkXLFCQ17RBKF1wKMB3YXW3si\"}', '2020-07-21 09:10:55', '2020-07-21 09:10:55');
INSERT INTO `admin_operation_log` VALUES ('943', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 09:11:17', '2020-07-21 09:11:17');
INSERT INTO `admin_operation_log` VALUES ('944', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 09:12:33', '2020-07-21 09:12:33');
INSERT INTO `admin_operation_log` VALUES ('945', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 09:14:09', '2020-07-21 09:14:09');
INSERT INTO `admin_operation_log` VALUES ('946', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 09:15:12', '2020-07-21 09:15:12');
INSERT INTO `admin_operation_log` VALUES ('947', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 09:17:05', '2020-07-21 09:17:05');
INSERT INTO `admin_operation_log` VALUES ('948', '1', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?\",\"_token\":\"zyO6wNBBBElwSWi0MX1JSmTr8NSTd3xPm5wEvxZB\"}', '2020-07-21 09:17:08', '2020-07-21 09:17:08');
INSERT INTO `admin_operation_log` VALUES ('949', '1', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 09:17:12', '2020-07-21 09:17:12');
INSERT INTO `admin_operation_log` VALUES ('950', '1', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 09:17:36', '2020-07-21 09:17:36');
INSERT INTO `admin_operation_log` VALUES ('951', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 09:18:42', '2020-07-21 09:18:42');
INSERT INTO `admin_operation_log` VALUES ('952', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 09:19:08', '2020-07-21 09:19:08');
INSERT INTO `admin_operation_log` VALUES ('953', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 09:20:50', '2020-07-21 09:20:50');
INSERT INTO `admin_operation_log` VALUES ('954', '1', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"22\",\"name\":\"\\u77ed\\u88e4\",\"img\":null,\"file-img\":null,\"_file_\":null,\"kind\":\"222\",\"craeted_at\":\"2020-07-21 17:21:11\",\"price\":\"12\",\"count\":\"222\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?\",\"_token\":\"ea3R3ZaiagFzRAKO48kGJi94wdMyIkq7MyRGLFl5\"}', '2020-07-21 09:21:20', '2020-07-21 09:21:20');
INSERT INTO `admin_operation_log` VALUES ('955', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 09:21:20', '2020-07-21 09:21:20');
INSERT INTO `admin_operation_log` VALUES ('956', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 09:21:28', '2020-07-21 09:21:28');
INSERT INTO `admin_operation_log` VALUES ('957', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-21 09:23:32', '2020-07-21 09:23:32');
INSERT INTO `admin_operation_log` VALUES ('958', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 09:23:46', '2020-07-21 09:23:46');
INSERT INTO `admin_operation_log` VALUES ('959', '1', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 09:23:50', '2020-07-21 09:23:50');
INSERT INTO `admin_operation_log` VALUES ('960', '1', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"32\",\"name\":\"\\u9f20\\u6807\",\"img\":\"2\",\"kind\":\"111\",\"craeted_at\":null,\"price\":\"20\",\"count\":\"100\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?_pjax=%23pjax-container\",\"_token\":\"xU5YneD8FQwQuXuLPjbbfhFWtS8Kur3g3D4Lp7Gu\"}', '2020-07-21 09:24:09', '2020-07-21 09:24:09');
INSERT INTO `admin_operation_log` VALUES ('961', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 09:24:10', '2020-07-21 09:24:10');
INSERT INTO `admin_operation_log` VALUES ('962', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 09:24:17', '2020-07-21 09:24:17');
INSERT INTO `admin_operation_log` VALUES ('963', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-21 09:24:42', '2020-07-21 09:24:42');
INSERT INTO `admin_operation_log` VALUES ('964', '1', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 09:24:52', '2020-07-21 09:24:52');
INSERT INTO `admin_operation_log` VALUES ('965', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 09:25:56', '2020-07-21 09:25:56');
INSERT INTO `admin_operation_log` VALUES ('966', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 09:26:02', '2020-07-21 09:26:02');
INSERT INTO `admin_operation_log` VALUES ('967', '1', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 09:26:20', '2020-07-21 09:26:20');
INSERT INTO `admin_operation_log` VALUES ('968', '1', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"888\",\"name\":\"\\u72fc\\u4eba\\u6740\\u5361\\u724c\",\"img\":\"1\",\"kind\":\"\\u5403\\u67aa\\u5b50\\u5427\",\"craeted_at\":null,\"price\":\"10\",\"count\":\"200\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?_pjax=%23pjax-container\",\"_token\":\"TDTQJYDlCYAoW8M90jO8xRasEWbx7WcJEoyFbjgB\"}', '2020-07-21 09:26:50', '2020-07-21 09:26:50');
INSERT INTO `admin_operation_log` VALUES ('969', '1', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 09:26:50', '2020-07-21 09:26:50');
INSERT INTO `admin_operation_log` VALUES ('970', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 09:26:52', '2020-07-21 09:26:52');
INSERT INTO `admin_operation_log` VALUES ('971', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-21 09:27:31', '2020-07-21 09:27:31');
INSERT INTO `admin_operation_log` VALUES ('972', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 09:27:35', '2020-07-21 09:27:35');
INSERT INTO `admin_operation_log` VALUES ('973', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-21 09:31:12', '2020-07-21 09:31:12');
INSERT INTO `admin_operation_log` VALUES ('974', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 09:31:19', '2020-07-21 09:31:19');
INSERT INTO `admin_operation_log` VALUES ('975', '1', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 09:31:21', '2020-07-21 09:31:21');
INSERT INTO `admin_operation_log` VALUES ('976', '1', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-21 09:32:15', '2020-07-21 09:32:15');
INSERT INTO `admin_operation_log` VALUES ('977', '1', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"233\",\"name\":\"\\u6211\\u59bb\\u5584\\u9038\",\"img\":null,\"file-img\":null,\"_file_\":null,\"kind\":\"\\u5237\\u5237Shaun\",\"craeted_at\":null,\"price\":\"99\",\"count\":\"999\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?\",\"_token\":\"UIe2xfD0IBNkG0BHntY5ZvZd2HVz0pBGSeCp6CUG\"}', '2020-07-21 09:32:57', '2020-07-21 09:32:57');
INSERT INTO `admin_operation_log` VALUES ('978', '1', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 09:32:58', '2020-07-21 09:32:58');
INSERT INTO `admin_operation_log` VALUES ('979', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 09:33:00', '2020-07-21 09:33:00');
INSERT INTO `admin_operation_log` VALUES ('980', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 09:39:47', '2020-07-21 09:39:47');
INSERT INTO `admin_operation_log` VALUES ('981', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 09:39:48', '2020-07-21 09:39:48');
INSERT INTO `admin_operation_log` VALUES ('982', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-22 00:55:33', '2020-07-22 00:55:33');
INSERT INTO `admin_operation_log` VALUES ('983', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 00:55:38', '2020-07-22 00:55:38');
INSERT INTO `admin_operation_log` VALUES ('984', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 00:56:06', '2020-07-22 00:56:06');
INSERT INTO `admin_operation_log` VALUES ('985', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 00:56:31', '2020-07-22 00:56:31');
INSERT INTO `admin_operation_log` VALUES ('986', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"10\"}', '2020-07-22 00:56:38', '2020-07-22 00:56:38');
INSERT INTO `admin_operation_log` VALUES ('987', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"10\",\"page\":\"2\"}', '2020-07-22 00:56:41', '2020-07-22 00:56:41');
INSERT INTO `admin_operation_log` VALUES ('988', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"10\",\"page\":\"1\"}', '2020-07-22 00:56:43', '2020-07-22 00:56:43');
INSERT INTO `admin_operation_log` VALUES ('989', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 00:56:59', '2020-07-22 00:56:59');
INSERT INTO `admin_operation_log` VALUES ('990', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 01:01:18', '2020-07-22 01:01:18');
INSERT INTO `admin_operation_log` VALUES ('991', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 01:05:27', '2020-07-22 01:05:27');
INSERT INTO `admin_operation_log` VALUES ('992', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 01:18:40', '2020-07-22 01:18:40');
INSERT INTO `admin_operation_log` VALUES ('993', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 01:20:50', '2020-07-22 01:20:50');
INSERT INTO `admin_operation_log` VALUES ('994', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-22 01:20:50', '2020-07-22 01:20:50');
INSERT INTO `admin_operation_log` VALUES ('995', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-22 01:21:45', '2020-07-22 01:21:45');
INSERT INTO `admin_operation_log` VALUES ('996', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-22 01:22:16', '2020-07-22 01:22:16');
INSERT INTO `admin_operation_log` VALUES ('997', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 01:35:00', '2020-07-22 01:35:00');
INSERT INTO `admin_operation_log` VALUES ('998', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-22 01:35:00', '2020-07-22 01:35:00');
INSERT INTO `admin_operation_log` VALUES ('999', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-22 01:35:25', '2020-07-22 01:35:25');
INSERT INTO `admin_operation_log` VALUES ('1000', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-22 01:43:35', '2020-07-22 01:43:35');
INSERT INTO `admin_operation_log` VALUES ('1001', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-22 01:44:12', '2020-07-22 01:44:12');
INSERT INTO `admin_operation_log` VALUES ('1002', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"2OmuwNqyP1cav463o60vTszaBdhk4ZCV3xLqPHUP\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"12\"]}', '2020-07-22 01:44:16', '2020-07-22 01:44:16');
INSERT INTO `admin_operation_log` VALUES ('1003', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 01:44:57', '2020-07-22 01:44:57');
INSERT INTO `admin_operation_log` VALUES ('1004', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"3Z3m11R7GpEicuoX02sz9cQigjgRmqDHkWEMEWhv\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"11\"]}', '2020-07-22 01:45:05', '2020-07-22 01:45:05');
INSERT INTO `admin_operation_log` VALUES ('1005', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"3Z3m11R7GpEicuoX02sz9cQigjgRmqDHkWEMEWhv\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"11\"]}', '2020-07-22 01:45:15', '2020-07-22 01:45:15');
INSERT INTO `admin_operation_log` VALUES ('1006', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 01:45:21', '2020-07-22 01:45:21');
INSERT INTO `admin_operation_log` VALUES ('1007', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 01:45:24', '2020-07-22 01:45:24');
INSERT INTO `admin_operation_log` VALUES ('1008', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-22 01:45:31', '2020-07-22 01:45:31');
INSERT INTO `admin_operation_log` VALUES ('1009', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-22 01:45:32', '2020-07-22 01:45:32');
INSERT INTO `admin_operation_log` VALUES ('1010', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 01:45:58', '2020-07-22 01:45:58');
INSERT INTO `admin_operation_log` VALUES ('1011', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 01:46:10', '2020-07-22 01:46:10');
INSERT INTO `admin_operation_log` VALUES ('1012', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"n0JpDGhswebHYizGKSNn8ANjHoFJ04TR3JlB4EzS\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"14\"]}', '2020-07-22 01:46:41', '2020-07-22 01:46:41');
INSERT INTO `admin_operation_log` VALUES ('1013', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 01:48:20', '2020-07-22 01:48:20');
INSERT INTO `admin_operation_log` VALUES ('1014', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"fAQ2eDeOL73PdJhvLLv9TDF6bYBNiBuxs482dINd\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"13\"]}', '2020-07-22 01:48:24', '2020-07-22 01:48:24');
INSERT INTO `admin_operation_log` VALUES ('1015', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 01:48:24', '2020-07-22 01:48:24');
INSERT INTO `admin_operation_log` VALUES ('1016', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 01:50:12', '2020-07-22 01:50:12');
INSERT INTO `admin_operation_log` VALUES ('1017', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-22 01:51:10', '2020-07-22 01:51:10');
INSERT INTO `admin_operation_log` VALUES ('1018', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-22 01:51:12', '2020-07-22 01:51:12');
INSERT INTO `admin_operation_log` VALUES ('1019', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 01:51:14', '2020-07-22 01:51:14');
INSERT INTO `admin_operation_log` VALUES ('1020', '1', 'admin/shopping/add/16', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-22 01:51:22', '2020-07-22 01:51:22');
INSERT INTO `admin_operation_log` VALUES ('1021', '1', 'admin/shopping/reduce/16', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-22 01:51:24', '2020-07-22 01:51:24');
INSERT INTO `admin_operation_log` VALUES ('1022', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"CJgIfhA0E4pZLSNQ7oYm0ZFlfKZ36X6x2rbMf03w\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"16\"]}', '2020-07-22 01:51:32', '2020-07-22 01:51:32');
INSERT INTO `admin_operation_log` VALUES ('1023', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 01:52:24', '2020-07-22 01:52:24');
INSERT INTO `admin_operation_log` VALUES ('1024', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"p79NswUSB0NSWBSqzJuuxnWvWBVYtLF6Rpy6c2mu\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"15\"]}', '2020-07-22 01:52:27', '2020-07-22 01:52:27');
INSERT INTO `admin_operation_log` VALUES ('1025', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 01:54:22', '2020-07-22 01:54:22');
INSERT INTO `admin_operation_log` VALUES ('1026', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 01:54:24', '2020-07-22 01:54:24');
INSERT INTO `admin_operation_log` VALUES ('1027', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-22 01:54:28', '2020-07-22 01:54:28');
INSERT INTO `admin_operation_log` VALUES ('1028', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-22 01:54:30', '2020-07-22 01:54:30');
INSERT INTO `admin_operation_log` VALUES ('1029', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-22 01:54:33', '2020-07-22 01:54:33');
INSERT INTO `admin_operation_log` VALUES ('1030', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 01:54:36', '2020-07-22 01:54:36');
INSERT INTO `admin_operation_log` VALUES ('1031', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"lCSmKonaKuvdw0tb4q3tdJKXAgXu2QtUZZfyEtrn\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"19\"]}', '2020-07-22 01:54:41', '2020-07-22 01:54:41');
INSERT INTO `admin_operation_log` VALUES ('1032', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 01:55:54', '2020-07-22 01:55:54');
INSERT INTO `admin_operation_log` VALUES ('1033', '1', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"IZ8RwDSMOX0Zs5RZQGK9ozvj4sVRxbrXo7BDQbEL\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"18\"]}', '2020-07-22 01:55:58', '2020-07-22 01:55:58');
INSERT INTO `admin_operation_log` VALUES ('1034', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 01:55:58', '2020-07-22 01:55:58');
INSERT INTO `admin_operation_log` VALUES ('1035', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-22 01:59:16', '2020-07-22 01:59:16');
INSERT INTO `admin_operation_log` VALUES ('1036', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-22 02:00:11', '2020-07-22 02:00:11');
INSERT INTO `admin_operation_log` VALUES ('1037', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-22 02:00:14', '2020-07-22 02:00:14');
INSERT INTO `admin_operation_log` VALUES ('1038', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-22 02:00:37', '2020-07-22 02:00:37');
INSERT INTO `admin_operation_log` VALUES ('1039', '1', 'admin/shopping/create', 'GET', '127.0.0.1', '[]', '2020-07-22 02:01:55', '2020-07-22 02:01:55');
INSERT INTO `admin_operation_log` VALUES ('1040', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 02:01:59', '2020-07-22 02:01:59');
INSERT INTO `admin_operation_log` VALUES ('1041', '1', 'admin/shopping/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 02:02:00', '2020-07-22 02:02:00');
INSERT INTO `admin_operation_log` VALUES ('1042', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 02:02:04', '2020-07-22 02:02:04');
INSERT INTO `admin_operation_log` VALUES ('1043', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 02:04:56', '2020-07-22 02:04:56');
INSERT INTO `admin_operation_log` VALUES ('1044', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 02:16:00', '2020-07-22 02:16:00');
INSERT INTO `admin_operation_log` VALUES ('1045', '1', 'admin/order/create', 'GET', '127.0.0.1', '[]', '2020-07-22 02:16:23', '2020-07-22 02:16:23');
INSERT INTO `admin_operation_log` VALUES ('1046', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 02:16:30', '2020-07-22 02:16:30');
INSERT INTO `admin_operation_log` VALUES ('1047', '1', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-22 02:17:01', '2020-07-22 02:17:01');
INSERT INTO `admin_operation_log` VALUES ('1048', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 02:37:37', '2020-07-22 02:37:37');
INSERT INTO `admin_operation_log` VALUES ('1049', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-22 02:37:42', '2020-07-22 02:37:42');
INSERT INTO `admin_operation_log` VALUES ('1050', '1', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-22 02:38:11', '2020-07-22 02:38:11');
INSERT INTO `admin_operation_log` VALUES ('1051', '1', 'admin/good/shopping/2', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-22 02:38:14', '2020-07-22 02:38:14');
INSERT INTO `admin_operation_log` VALUES ('1052', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-22 02:43:51', '2020-07-22 02:43:51');
INSERT INTO `admin_operation_log` VALUES ('1053', '1', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 02:43:54', '2020-07-22 02:43:54');
INSERT INTO `admin_operation_log` VALUES ('1054', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-22 02:43:56', '2020-07-22 02:43:56');
INSERT INTO `admin_operation_log` VALUES ('1055', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-22 02:45:32', '2020-07-22 02:45:32');
INSERT INTO `admin_operation_log` VALUES ('1056', '1', 'admin/good/shopping/3', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-22 02:45:37', '2020-07-22 02:45:37');
INSERT INTO `admin_operation_log` VALUES ('1057', '1', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-22 02:51:50', '2020-07-22 02:51:50');
INSERT INTO `admin_operation_log` VALUES ('1058', '1', 'admin/good/shopping/5', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-22 02:51:59', '2020-07-22 02:51:59');
INSERT INTO `admin_operation_log` VALUES ('1059', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 02:52:02', '2020-07-22 02:52:02');
INSERT INTO `admin_operation_log` VALUES ('1060', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 02:52:23', '2020-07-22 02:52:23');
INSERT INTO `admin_operation_log` VALUES ('1061', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-22 02:52:23', '2020-07-22 02:52:23');
INSERT INTO `admin_operation_log` VALUES ('1062', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"7vRb4jOE4HrE3np1M9zny6G7uuQHAE4vTxgRpOnX\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-22 02:52:30', '2020-07-22 02:52:30');
INSERT INTO `admin_operation_log` VALUES ('1063', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-22 02:52:31', '2020-07-22 02:52:31');
INSERT INTO `admin_operation_log` VALUES ('1064', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 02:52:34', '2020-07-22 02:52:34');
INSERT INTO `admin_operation_log` VALUES ('1065', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 02:52:38', '2020-07-22 02:52:38');
INSERT INTO `admin_operation_log` VALUES ('1066', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-07-22 02:57:30', '2020-07-22 02:57:30');
INSERT INTO `admin_operation_log` VALUES ('1067', '1', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 02:57:34', '2020-07-22 02:57:34');
INSERT INTO `admin_operation_log` VALUES ('1068', '1', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-22 02:57:58', '2020-07-22 02:57:58');
INSERT INTO `admin_operation_log` VALUES ('1069', '1', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 03:00:16', '2020-07-22 03:00:16');
INSERT INTO `admin_operation_log` VALUES ('1070', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 03:00:25', '2020-07-22 03:00:25');
INSERT INTO `admin_operation_log` VALUES ('1071', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-22 03:00:25', '2020-07-22 03:00:25');
INSERT INTO `admin_operation_log` VALUES ('1072', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"fcbD6SHRBlD9R4CR6Ik9p6344oSNTM8f8Z5EDsyN\",\"username\":\"xxxx\",\"password\":\"111******\"}', '2020-07-22 03:00:34', '2020-07-22 03:00:34');
INSERT INTO `admin_operation_log` VALUES ('1073', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"fcbD6SHRBlD9R4CR6Ik9p6344oSNTM8f8Z5EDsyN\",\"username\":\"xxxx\",\"password\":\"111******\",\"remember\":\"1\"}', '2020-07-22 03:00:36', '2020-07-22 03:00:36');
INSERT INTO `admin_operation_log` VALUES ('1074', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"fcbD6SHRBlD9R4CR6Ik9p6344oSNTM8f8Z5EDsyN\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-22 03:00:41', '2020-07-22 03:00:41');
INSERT INTO `admin_operation_log` VALUES ('1075', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-22 03:00:42', '2020-07-22 03:00:42');
INSERT INTO `admin_operation_log` VALUES ('1076', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 03:00:46', '2020-07-22 03:00:46');
INSERT INTO `admin_operation_log` VALUES ('1077', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 03:00:51', '2020-07-22 03:00:51');
INSERT INTO `admin_operation_log` VALUES ('1078', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-22 03:00:52', '2020-07-22 03:00:52');
INSERT INTO `admin_operation_log` VALUES ('1079', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"YbjNWmTH6LKpfeJ7J4z8bQeI9te6WKyrchm0w4U5\",\"username\":\"xxx\",\"password\":\"111******\"}', '2020-07-22 03:00:58', '2020-07-22 03:00:58');
INSERT INTO `admin_operation_log` VALUES ('1080', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-22 03:00:59', '2020-07-22 03:00:59');
INSERT INTO `admin_operation_log` VALUES ('1081', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"mHIeGZDVNmEaGZMT74Mi1XNYKwZyBFmLIfYOgnyN\",\"username\":\"xxx\",\"password\":\"111******\",\"remember\":\"1\"}', '2020-07-22 03:01:08', '2020-07-22 03:01:08');
INSERT INTO `admin_operation_log` VALUES ('1082', '2', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-22 03:01:09', '2020-07-22 03:01:09');
INSERT INTO `admin_operation_log` VALUES ('1083', '2', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 03:01:12', '2020-07-22 03:01:12');
INSERT INTO `admin_operation_log` VALUES ('1084', '2', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 03:01:14', '2020-07-22 03:01:14');
INSERT INTO `admin_operation_log` VALUES ('1085', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 03:01:31', '2020-07-22 03:01:31');
INSERT INTO `admin_operation_log` VALUES ('1086', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 03:06:17', '2020-07-22 03:06:17');
INSERT INTO `admin_operation_log` VALUES ('1087', '2', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-22 03:09:31', '2020-07-22 03:09:31');
INSERT INTO `admin_operation_log` VALUES ('1088', '2', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-22 03:16:02', '2020-07-22 03:16:02');
INSERT INTO `admin_operation_log` VALUES ('1089', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 03:16:31', '2020-07-22 03:16:31');
INSERT INTO `admin_operation_log` VALUES ('1090', '2', 'admin/goods/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 03:16:32', '2020-07-22 03:16:32');
INSERT INTO `admin_operation_log` VALUES ('1091', '2', 'admin/goods/1', 'GET', '127.0.0.1', '[]', '2020-07-22 03:16:33', '2020-07-22 03:16:33');
INSERT INTO `admin_operation_log` VALUES ('1092', '2', 'admin/goods/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 03:26:44', '2020-07-22 03:26:44');
INSERT INTO `admin_operation_log` VALUES ('1093', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 03:32:18', '2020-07-22 03:32:18');
INSERT INTO `admin_operation_log` VALUES ('1094', '2', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 03:32:21', '2020-07-22 03:32:21');
INSERT INTO `admin_operation_log` VALUES ('1095', '2', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-22 03:33:13', '2020-07-22 03:33:13');
INSERT INTO `admin_operation_log` VALUES ('1096', '2', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-22 03:34:31', '2020-07-22 03:34:31');
INSERT INTO `admin_operation_log` VALUES ('1097', '2', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-22 03:39:58', '2020-07-22 03:39:58');
INSERT INTO `admin_operation_log` VALUES ('1098', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 03:49:46', '2020-07-22 03:49:46');
INSERT INTO `admin_operation_log` VALUES ('1099', '2', 'admin/goods/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 04:58:31', '2020-07-22 04:58:31');
INSERT INTO `admin_operation_log` VALUES ('1100', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 04:58:36', '2020-07-22 04:58:36');
INSERT INTO `admin_operation_log` VALUES ('1101', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:01:04', '2020-07-22 05:01:04');
INSERT INTO `admin_operation_log` VALUES ('1102', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"45\",\"name\":\"\\u9cd5\\u9c7c\",\"img\":null,\"file-img\":null,\"_file_\":null,\"kind\":\"2222\",\"craeted_at\":null,\"price\":\"40\",\"count\":\"100\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?_pjax=%23pjax-container\",\"_token\":\"s8FoKv4xXs9XUY2ysyj6IpSfzUxfeYSnp7ZaJjPc\"}', '2020-07-22 05:01:45', '2020-07-22 05:01:45');
INSERT INTO `admin_operation_log` VALUES ('1103', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:01:46', '2020-07-22 05:01:46');
INSERT INTO `admin_operation_log` VALUES ('1104', '2', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-22 05:11:20', '2020-07-22 05:11:20');
INSERT INTO `admin_operation_log` VALUES ('1105', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"32\",\"name\":\"\\u662f\\u662f\\u662f\",\"img\":null,\"file-img\":null,\"_file_\":null,\"kind\":\"\\u545c\\u54c7\",\"craeted_at\":null,\"price\":\"11\",\"count\":\"222\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?\",\"_token\":\"joFVQ8SPiQEeML3rbyzX2SXpePOZtdM0dzOQCxPH\"}', '2020-07-22 05:11:47', '2020-07-22 05:11:47');
INSERT INTO `admin_operation_log` VALUES ('1106', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:11:47', '2020-07-22 05:11:47');
INSERT INTO `admin_operation_log` VALUES ('1107', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"Hd6kySzNAR7ElSUY\",\"_token\":\"vZPYFSRFqmU0TvN4QGuGDwBDRsUoezlpYkP6FCWD\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_0\",\"name\":\"1.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Fri Jul 03 2020 17:15:46 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"127850\"}', '2020-07-22 05:13:25', '2020-07-22 05:13:25');
INSERT INTO `admin_operation_log` VALUES ('1108', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"555\",\"name\":\"\\u54c8\\u54c8\\u54c8\",\"img\":\"public\\/ima\\/\\/1.jpg\",\"file-img\":null,\"_file_\":null,\"kind\":\"22\",\"craeted_at\":null,\"price\":\"10\",\"count\":\"100\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?_pjax=%23pjax-container\",\"_token\":\"vZPYFSRFqmU0TvN4QGuGDwBDRsUoezlpYkP6FCWD\"}', '2020-07-22 05:13:43', '2020-07-22 05:13:43');
INSERT INTO `admin_operation_log` VALUES ('1109', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:13:44', '2020-07-22 05:13:44');
INSERT INTO `admin_operation_log` VALUES ('1110', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:20:45', '2020-07-22 05:20:45');
INSERT INTO `admin_operation_log` VALUES ('1111', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:20:46', '2020-07-22 05:20:46');
INSERT INTO `admin_operation_log` VALUES ('1112', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:20:48', '2020-07-22 05:20:48');
INSERT INTO `admin_operation_log` VALUES ('1113', '2', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-22 05:23:25', '2020-07-22 05:23:25');
INSERT INTO `admin_operation_log` VALUES ('1114', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"888\",\"name\":\"\\u53d1\\u53d1\\u53d1\",\"img\":null,\"file-img\":null,\"_file_\":null,\"kind\":\"\\u6211\",\"craeted_at\":null,\"price\":\"1\",\"count\":\"999\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?\",\"_token\":\"kMwyI675STLj9opZZzadpg4B6xmmKrX4p8EbEY09\"}', '2020-07-22 05:23:47', '2020-07-22 05:23:47');
INSERT INTO `admin_operation_log` VALUES ('1115', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:23:47', '2020-07-22 05:23:47');
INSERT INTO `admin_operation_log` VALUES ('1116', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"6EqaC24I8GRkQIO4\",\"_token\":\"NR6rxNrAyFgpKQaU2VXW2iY3mWVhRyyX6LocNKJr\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_0\",\"name\":\"4.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Wed Jul 08 2020 10:06:19 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"97734\"}', '2020-07-22 05:24:12', '2020-07-22 05:24:12');
INSERT INTO `admin_operation_log` VALUES ('1117', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"22\",\"name\":\"222222\",\"img\":\"public\\/ima\\/\\/4.jpg\",\"file-img\":null,\"_file_\":null,\"kind\":\"222\",\"craeted_at\":null,\"price\":\"22\",\"count\":\"222222\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?_pjax=%23pjax-container\",\"_token\":\"NR6rxNrAyFgpKQaU2VXW2iY3mWVhRyyX6LocNKJr\"}', '2020-07-22 05:24:18', '2020-07-22 05:24:18');
INSERT INTO `admin_operation_log` VALUES ('1118', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:24:18', '2020-07-22 05:24:18');
INSERT INTO `admin_operation_log` VALUES ('1119', '2', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-22 05:25:01', '2020-07-22 05:25:01');
INSERT INTO `admin_operation_log` VALUES ('1120', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"XO0kE2VBi768arJP\",\"_token\":\"HXyGLJu0k8lezxYZsbciF8gSqHjWSHaZoA0v8UHE\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_0\",\"name\":\"1.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Fri Jul 03 2020 17:15:46 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"127850\"}', '2020-07-22 05:25:09', '2020-07-22 05:25:09');
INSERT INTO `admin_operation_log` VALUES ('1121', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"333\",\"name\":\"333\",\"img\":\"public\\/ima\\/\\/076257f692c87292b5926a43022e2730.jpg\",\"file-img\":null,\"_file_\":null,\"kind\":\"3333\",\"craeted_at\":null,\"price\":\"333\",\"count\":\"3333\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?\",\"_token\":\"HXyGLJu0k8lezxYZsbciF8gSqHjWSHaZoA0v8UHE\"}', '2020-07-22 05:25:15', '2020-07-22 05:25:15');
INSERT INTO `admin_operation_log` VALUES ('1122', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:25:15', '2020-07-22 05:25:15');
INSERT INTO `admin_operation_log` VALUES ('1123', '2', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-22 05:30:04', '2020-07-22 05:30:04');
INSERT INTO `admin_operation_log` VALUES ('1124', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"YHvRTKQTguVlHDM7\",\"_token\":\"iQ4l2v9gPYBiVtHflcz6AZoYc0zVYHiNcJg9tM9a\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_0\",\"name\":\"1.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Fri Jul 03 2020 17:15:46 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"127850\"}', '2020-07-22 05:30:16', '2020-07-22 05:30:16');
INSERT INTO `admin_operation_log` VALUES ('1125', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"88822\",\"name\":\"33443\",\"img\":\"public\\/ima\\/\\/4693719b74173506f7d272c9e04ddd33.jpg\",\"file-img\":null,\"_file_\":null,\"kind\":\"3434\",\"craeted_at\":null,\"price\":\"0434\",\"count\":\"04343\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?\",\"_token\":\"iQ4l2v9gPYBiVtHflcz6AZoYc0zVYHiNcJg9tM9a\"}', '2020-07-22 05:30:22', '2020-07-22 05:30:22');
INSERT INTO `admin_operation_log` VALUES ('1126', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:30:22', '2020-07-22 05:30:22');
INSERT INTO `admin_operation_log` VALUES ('1127', '2', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-22 05:33:43', '2020-07-22 05:33:43');
INSERT INTO `admin_operation_log` VALUES ('1128', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"MNOsstVioQem7aPi\",\"_token\":\"7AX6aj7U0PJrQTmIblybYkZUQ6e1c0vM64jeOJPl\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_0\",\"name\":\"1.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Fri Jul 03 2020 17:15:46 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"127850\"}', '2020-07-22 05:34:09', '2020-07-22 05:34:09');
INSERT INTO `admin_operation_log` VALUES ('1129', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"222\",\"name\":\"\\u5730\\u7406\\u4e66\",\"img\":\"files\\/1.jpg\",\"file-img\":null,\"_file_\":null,\"kind\":\"\\u5929\\u4e66\",\"craeted_at\":null,\"price\":\"19\",\"count\":\"99999\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?\",\"_token\":\"7AX6aj7U0PJrQTmIblybYkZUQ6e1c0vM64jeOJPl\"}', '2020-07-22 05:34:31', '2020-07-22 05:34:31');
INSERT INTO `admin_operation_log` VALUES ('1130', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:34:31', '2020-07-22 05:34:31');
INSERT INTO `admin_operation_log` VALUES ('1131', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:34:36', '2020-07-22 05:34:36');
INSERT INTO `admin_operation_log` VALUES ('1132', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:35:21', '2020-07-22 05:35:21');
INSERT INTO `admin_operation_log` VALUES ('1133', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:35:24', '2020-07-22 05:35:24');
INSERT INTO `admin_operation_log` VALUES ('1134', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"moDSMJF5VWQwKOgN\",\"_token\":\"ccvm3sW9TimbOztudmzxZDcD7JwN3dPkVxqsChJS\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_0\",\"name\":\"1.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Fri Jul 03 2020 17:15:46 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"127850\"}', '2020-07-22 05:35:46', '2020-07-22 05:35:46');
INSERT INTO `admin_operation_log` VALUES ('1135', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"43\",\"name\":\"\\u6570\\u5b66\\u4e66\",\"img\":\"\\/61ce2f03a58ff388a7ec2245fb2c51a6.jpg\",\"file-img\":null,\"_file_\":null,\"kind\":\"\\u4e00\\u672c\\u6570\\u5b66\\u4e66\",\"craeted_at\":null,\"price\":\"19\",\"count\":\"111111\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?_pjax=%23pjax-container\",\"_token\":\"ccvm3sW9TimbOztudmzxZDcD7JwN3dPkVxqsChJS\"}', '2020-07-22 05:36:05', '2020-07-22 05:36:05');
INSERT INTO `admin_operation_log` VALUES ('1136', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:36:05', '2020-07-22 05:36:05');
INSERT INTO `admin_operation_log` VALUES ('1137', '2', 'admin/goods/create', 'GET', '127.0.0.1', '[]', '2020-07-22 05:37:34', '2020-07-22 05:37:34');
INSERT INTO `admin_operation_log` VALUES ('1138', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"7V2Xs01iaOJ9nqiq\",\"_token\":\"JbO9Mvy5GBJjCehY2l9xb8I1of6A1x7ngDtD4iY5\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_0\",\"name\":\"1.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Fri Jul 03 2020 17:15:46 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"127850\"}', '2020-07-22 05:37:51', '2020-07-22 05:37:51');
INSERT INTO `admin_operation_log` VALUES ('1139', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"32\",\"name\":\"\\u82f1\\u8bed\\u4e66\",\"img\":\"\\/8df4290ea5f89b75358396744912d4d2.jpg\",\"file-img\":null,\"_file_\":null,\"kind\":\"\\u592a\\u96be\\u4e86\",\"craeted_at\":null,\"price\":\"33\",\"count\":\"22222\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?\",\"_token\":\"JbO9Mvy5GBJjCehY2l9xb8I1of6A1x7ngDtD4iY5\"}', '2020-07-22 05:38:03', '2020-07-22 05:38:03');
INSERT INTO `admin_operation_log` VALUES ('1140', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:38:03', '2020-07-22 05:38:03');
INSERT INTO `admin_operation_log` VALUES ('1141', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:38:19', '2020-07-22 05:38:19');
INSERT INTO `admin_operation_log` VALUES ('1142', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 05:38:28', '2020-07-22 05:38:28');
INSERT INTO `admin_operation_log` VALUES ('1143', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 05:42:50', '2020-07-22 05:42:50');
INSERT INTO `admin_operation_log` VALUES ('1144', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:42:52', '2020-07-22 05:42:52');
INSERT INTO `admin_operation_log` VALUES ('1145', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"WINsP1Lgw6F6ZV3A\",\"_token\":\"eSxbBXZV0cZhjc7d7uG1gMU8jyDuVSfYo4JR2b6y\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_0\",\"name\":\"1.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Fri Jul 03 2020 17:15:46 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"127850\"}', '2020-07-22 05:43:00', '2020-07-22 05:43:00');
INSERT INTO `admin_operation_log` VALUES ('1146', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"233\",\"name\":\"\\u7231\\u75af\",\"img\":\"http:\\/\\/localhost\\/img\\/c10a9496778bff3c57f8008ec97f0528.jpg\",\"file-img\":null,\"_file_\":null,\"kind\":null,\"craeted_at\":null,\"price\":\"01\",\"count\":\"0111\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?_pjax=%23pjax-container\",\"_token\":\"eSxbBXZV0cZhjc7d7uG1gMU8jyDuVSfYo4JR2b6y\"}', '2020-07-22 05:43:05', '2020-07-22 05:43:05');
INSERT INTO `admin_operation_log` VALUES ('1147', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:43:05', '2020-07-22 05:43:05');
INSERT INTO `admin_operation_log` VALUES ('1148', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"H6PlLVD5VPPRODGt\",\"_token\":\"U4ADXjm91AVGn69xVcxBlef2A3C89W6nG9gfQE9R\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_1\",\"name\":\"1.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Fri Jul 03 2020 17:15:46 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"127850\"}', '2020-07-22 05:45:07', '2020-07-22 05:45:07');
INSERT INTO `admin_operation_log` VALUES ('1149', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"122\",\"name\":\"\\u77ed\\u88e4\",\"img\":\"http:\\/\\/localhost\\/img\\/c82ca31b318799346f0cd8e4d018a955.jpg\",\"file-img\":null,\"_file_\":null,\"kind\":null,\"craeted_at\":null,\"price\":\"0434\",\"count\":\"04343\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?_pjax=%23pjax-container\",\"_token\":\"U4ADXjm91AVGn69xVcxBlef2A3C89W6nG9gfQE9R\"}', '2020-07-22 05:45:12', '2020-07-22 05:45:12');
INSERT INTO `admin_operation_log` VALUES ('1150', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:45:12', '2020-07-22 05:45:12');
INSERT INTO `admin_operation_log` VALUES ('1151', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:45:15', '2020-07-22 05:45:15');
INSERT INTO `admin_operation_log` VALUES ('1152', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 05:45:17', '2020-07-22 05:45:17');
INSERT INTO `admin_operation_log` VALUES ('1153', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:45:56', '2020-07-22 05:45:56');
INSERT INTO `admin_operation_log` VALUES ('1154', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"6Zrv5SViYAK14ndf\",\"_token\":\"hdxN5kdG62x3gJfwnFuymb0z95DnROydtTHXarm2\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_2\",\"name\":\"1.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Fri Jul 03 2020 17:15:46 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"127850\"}', '2020-07-22 05:46:03', '2020-07-22 05:46:03');
INSERT INTO `admin_operation_log` VALUES ('1155', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"32\",\"name\":\"\\u77ed\\u88e4\",\"img\":\"img\\/1.jpg\",\"file-img\":null,\"_file_\":null,\"kind\":null,\"craeted_at\":null,\"price\":\"01\",\"count\":\"0111\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?_pjax=%23pjax-container\",\"_token\":\"hdxN5kdG62x3gJfwnFuymb0z95DnROydtTHXarm2\"}', '2020-07-22 05:46:08', '2020-07-22 05:46:08');
INSERT INTO `admin_operation_log` VALUES ('1156', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:46:09', '2020-07-22 05:46:09');
INSERT INTO `admin_operation_log` VALUES ('1157', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:46:33', '2020-07-22 05:46:33');
INSERT INTO `admin_operation_log` VALUES ('1158', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 05:46:36', '2020-07-22 05:46:36');
INSERT INTO `admin_operation_log` VALUES ('1159', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:47:21', '2020-07-22 05:47:21');
INSERT INTO `admin_operation_log` VALUES ('1160', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"0RvpRRhYM8NFjUM6\",\"_token\":\"0nruyK9owOhVA6yYMV8VWIj6DOoDekxY7jCtZtBn\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_3\",\"name\":\"1.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Fri Jul 03 2020 17:15:46 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"127850\"}', '2020-07-22 05:47:29', '2020-07-22 05:47:29');
INSERT INTO `admin_operation_log` VALUES ('1161', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"32\",\"name\":\"\\u9f20\\u6807\",\"img\":\"\\/538bc78efae81524c1890435b176f4bc.jpg\",\"file-img\":null,\"_file_\":null,\"kind\":\"22\",\"craeted_at\":null,\"price\":\"03232\",\"count\":\"25450\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?_pjax=%23pjax-container\",\"_token\":\"0nruyK9owOhVA6yYMV8VWIj6DOoDekxY7jCtZtBn\"}', '2020-07-22 05:47:39', '2020-07-22 05:47:39');
INSERT INTO `admin_operation_log` VALUES ('1162', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:47:39', '2020-07-22 05:47:39');
INSERT INTO `admin_operation_log` VALUES ('1163', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"qMhOcafdmAvXIRfF\",\"_token\":\"hF15A2soQ2ZItDHfK8vsLRH4D4mbBnmGiSkJW3To\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_4\",\"name\":\"1.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Fri Jul 03 2020 17:15:46 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"127850\"}', '2020-07-22 05:50:07', '2020-07-22 05:50:07');
INSERT INTO `admin_operation_log` VALUES ('1164', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"222\",\"name\":\"222\",\"img\":\"img\\/aad2471e1967aeac429b12d148106fc2.jpg\",\"file-img\":null,\"_file_\":null,\"kind\":\"222\",\"craeted_at\":null,\"price\":\"022\",\"count\":\"0222\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?_pjax=%23pjax-container\",\"_token\":\"hF15A2soQ2ZItDHfK8vsLRH4D4mbBnmGiSkJW3To\"}', '2020-07-22 05:50:12', '2020-07-22 05:50:12');
INSERT INTO `admin_operation_log` VALUES ('1165', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:50:13', '2020-07-22 05:50:13');
INSERT INTO `admin_operation_log` VALUES ('1166', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:50:15', '2020-07-22 05:50:15');
INSERT INTO `admin_operation_log` VALUES ('1167', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 05:50:18', '2020-07-22 05:50:18');
INSERT INTO `admin_operation_log` VALUES ('1168', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:51:06', '2020-07-22 05:51:06');
INSERT INTO `admin_operation_log` VALUES ('1169', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"cA20kT0bfxPes85d\",\"_token\":\"KtgTSDuhEDsAQAxWX4GuM1w4eWSDAvmInk4TCquH\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_5\",\"name\":\"1.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Fri Jul 03 2020 17:15:46 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"127850\"}', '2020-07-22 05:51:13', '2020-07-22 05:51:13');
INSERT INTO `admin_operation_log` VALUES ('1170', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"23\",\"name\":\"\\u8bed\\u6587\\u4e66\",\"img\":\"img\\/\\/cddf18d6c77f53cc60c407c7ded196f2.jpg\",\"file-img\":null,\"_file_\":null,\"kind\":\"11\",\"craeted_at\":null,\"price\":\"0111\",\"count\":\"01111\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?_pjax=%23pjax-container\",\"_token\":\"KtgTSDuhEDsAQAxWX4GuM1w4eWSDAvmInk4TCquH\"}', '2020-07-22 05:51:20', '2020-07-22 05:51:20');
INSERT INTO `admin_operation_log` VALUES ('1171', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:51:20', '2020-07-22 05:51:20');
INSERT INTO `admin_operation_log` VALUES ('1172', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:51:22', '2020-07-22 05:51:22');
INSERT INTO `admin_operation_log` VALUES ('1173', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 05:51:24', '2020-07-22 05:51:24');
INSERT INTO `admin_operation_log` VALUES ('1174', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:51:41', '2020-07-22 05:51:41');
INSERT INTO `admin_operation_log` VALUES ('1175', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"1gtCcTZxkgUASiaE\",\"_token\":\"2VusmRMJklD8zAR6s1KjUVbeJcvRAAHD2VYhtp5Y\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_6\",\"name\":\"3.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Tue Jul 07 2020 16:28:46 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"39164\"}', '2020-07-22 05:51:48', '2020-07-22 05:51:48');
INSERT INTO `admin_operation_log` VALUES ('1176', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"233\",\"name\":\"\\u9f20\\u6807\",\"img\":\"\\/4ebf7eca5c31be8bc6a4a9b034bae192.jpg\",\"file-img\":null,\"_file_\":null,\"kind\":null,\"craeted_at\":null,\"price\":\"10\",\"count\":\"011\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?_pjax=%23pjax-container\",\"_token\":\"2VusmRMJklD8zAR6s1KjUVbeJcvRAAHD2VYhtp5Y\"}', '2020-07-22 05:51:53', '2020-07-22 05:51:53');
INSERT INTO `admin_operation_log` VALUES ('1177', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:51:54', '2020-07-22 05:51:54');
INSERT INTO `admin_operation_log` VALUES ('1178', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"JCmkMgTrVs3CYB9e\",\"_token\":\"eFq9B3KTY4D5Z1fKau63zmqBbnyjy5CndWgrmRws\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_7\",\"name\":\"2.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Feb 23 2020 16:48:54 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"33427\"}', '2020-07-22 05:52:39', '2020-07-22 05:52:39');
INSERT INTO `admin_operation_log` VALUES ('1179', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"32\",\"name\":\"\\u8bed\\u6587\\u4e66\",\"img\":\"img\\/2.jpg\",\"file-img\":null,\"_file_\":null,\"kind\":null,\"craeted_at\":null,\"price\":\"0\",\"count\":\"0\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?_pjax=%23pjax-container\",\"_token\":\"eFq9B3KTY4D5Z1fKau63zmqBbnyjy5CndWgrmRws\"}', '2020-07-22 05:52:42', '2020-07-22 05:52:42');
INSERT INTO `admin_operation_log` VALUES ('1180', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:52:42', '2020-07-22 05:52:42');
INSERT INTO `admin_operation_log` VALUES ('1181', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:53:19', '2020-07-22 05:53:19');
INSERT INTO `admin_operation_log` VALUES ('1182', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:54:28', '2020-07-22 05:54:28');
INSERT INTO `admin_operation_log` VALUES ('1183', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"jMKYsAbuucZvoXF3\",\"_token\":\"QIoKCKMtS4wKDv5oeFK3rqeENj4fS7De43oCasYc\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_8\",\"name\":\"3.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Tue Jul 07 2020 16:28:46 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"39164\"}', '2020-07-22 05:54:33', '2020-07-22 05:54:33');
INSERT INTO `admin_operation_log` VALUES ('1184', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"22\",\"name\":\"\\u77ed\\u88e4\",\"img\":\"\\/c4b91d65bbc3b85bda752abe592332da.jpg\",\"file-img\":null,\"_file_\":null,\"kind\":null,\"craeted_at\":null,\"price\":\"0\",\"count\":\"0\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?_pjax=%23pjax-container\",\"_token\":\"QIoKCKMtS4wKDv5oeFK3rqeENj4fS7De43oCasYc\"}', '2020-07-22 05:54:37', '2020-07-22 05:54:37');
INSERT INTO `admin_operation_log` VALUES ('1185', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:54:37', '2020-07-22 05:54:37');
INSERT INTO `admin_operation_log` VALUES ('1186', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"h7bywdCS5nDu0UjO\",\"_token\":\"LrZ45JH4utLFHtznrQadtrI4mHtW6ct0vwGuvafs\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_9\",\"name\":\"proxy (1).jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Feb 23 2020 16:49:01 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"280756\"}', '2020-07-22 05:55:33', '2020-07-22 05:55:33');
INSERT INTO `admin_operation_log` VALUES ('1187', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"22\",\"name\":\"\\u77ed\\u88e4\",\"img\":\"\\/proxy (1).jpg\",\"file-img\":null,\"_file_\":null,\"kind\":null,\"craeted_at\":null,\"price\":\"0\",\"count\":\"0\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?_pjax=%23pjax-container\",\"_token\":\"LrZ45JH4utLFHtznrQadtrI4mHtW6ct0vwGuvafs\"}', '2020-07-22 05:55:37', '2020-07-22 05:55:37');
INSERT INTO `admin_operation_log` VALUES ('1188', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:55:37', '2020-07-22 05:55:37');
INSERT INTO `admin_operation_log` VALUES ('1189', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"V4lxXERfgEcCtHgD\",\"_token\":\"TfbF5ab1vI282QgqOnc69A0VoMqdVnr9eJadCSTo\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_10\",\"name\":\"proxy.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Feb 23 2020 16:48:54 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"33427\"}', '2020-07-22 05:56:08', '2020-07-22 05:56:08');
INSERT INTO `admin_operation_log` VALUES ('1190', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 05:56:18', '2020-07-22 05:56:18');
INSERT INTO `admin_operation_log` VALUES ('1191', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 05:56:20', '2020-07-22 05:56:20');
INSERT INTO `admin_operation_log` VALUES ('1192', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 05:56:34', '2020-07-22 05:56:34');
INSERT INTO `admin_operation_log` VALUES ('1193', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:01:12', '2020-07-22 06:01:12');
INSERT INTO `admin_operation_log` VALUES ('1194', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:03:02', '2020-07-22 06:03:02');
INSERT INTO `admin_operation_log` VALUES ('1195', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:03:24', '2020-07-22 06:03:24');
INSERT INTO `admin_operation_log` VALUES ('1196', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:04:01', '2020-07-22 06:04:01');
INSERT INTO `admin_operation_log` VALUES ('1197', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:05:09', '2020-07-22 06:05:09');
INSERT INTO `admin_operation_log` VALUES ('1198', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:05:15', '2020-07-22 06:05:15');
INSERT INTO `admin_operation_log` VALUES ('1199', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:05:45', '2020-07-22 06:05:45');
INSERT INTO `admin_operation_log` VALUES ('1200', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:05:47', '2020-07-22 06:05:47');
INSERT INTO `admin_operation_log` VALUES ('1201', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:06:30', '2020-07-22 06:06:30');
INSERT INTO `admin_operation_log` VALUES ('1202', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 06:06:41', '2020-07-22 06:06:41');
INSERT INTO `admin_operation_log` VALUES ('1203', '2', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:06:43', '2020-07-22 06:06:43');
INSERT INTO `admin_operation_log` VALUES ('1204', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-22 06:06:44', '2020-07-22 06:06:44');
INSERT INTO `admin_operation_log` VALUES ('1205', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"osU97WedKB7OhIv8SezsHXhpbUBwof32f64bSIdp\",\"username\":\"xxx\",\"password\":\"111******\",\"remember\":\"1\"}', '2020-07-22 06:06:48', '2020-07-22 06:06:48');
INSERT INTO `admin_operation_log` VALUES ('1206', '2', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-22 06:06:49', '2020-07-22 06:06:49');
INSERT INTO `admin_operation_log` VALUES ('1207', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:06:51', '2020-07-22 06:06:51');
INSERT INTO `admin_operation_log` VALUES ('1208', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 06:06:53', '2020-07-22 06:06:53');
INSERT INTO `admin_operation_log` VALUES ('1209', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:07:15', '2020-07-22 06:07:15');
INSERT INTO `admin_operation_log` VALUES ('1210', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:07:16', '2020-07-22 06:07:16');
INSERT INTO `admin_operation_log` VALUES ('1211', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:07:17', '2020-07-22 06:07:17');
INSERT INTO `admin_operation_log` VALUES ('1212', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:07:17', '2020-07-22 06:07:17');
INSERT INTO `admin_operation_log` VALUES ('1213', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:07:18', '2020-07-22 06:07:18');
INSERT INTO `admin_operation_log` VALUES ('1214', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:07:18', '2020-07-22 06:07:18');
INSERT INTO `admin_operation_log` VALUES ('1215', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:07:18', '2020-07-22 06:07:18');
INSERT INTO `admin_operation_log` VALUES ('1216', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 06:07:20', '2020-07-22 06:07:20');
INSERT INTO `admin_operation_log` VALUES ('1217', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:07:22', '2020-07-22 06:07:22');
INSERT INTO `admin_operation_log` VALUES ('1218', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:08:04', '2020-07-22 06:08:04');
INSERT INTO `admin_operation_log` VALUES ('1219', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:17:58', '2020-07-22 06:17:58');
INSERT INTO `admin_operation_log` VALUES ('1220', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"Zzk5eWDNzySjhSOq\",\"_token\":\"8BJRaDl8lHcwMuoZIwwZ15ffaOPR0IwnJLbkgwOI\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_0\",\"name\":\"23273494_0015_20190322-172443.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Fri Mar 22 2019 17:24:43 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"1429760\"}', '2020-07-22 06:18:10', '2020-07-22 06:18:10');
INSERT INTO `admin_operation_log` VALUES ('1221', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"32\",\"name\":\"\\u8001\\u82b1\\u955c\",\"img\":\"\\/23273494_0015_20190322-172443.png\",\"file-img\":null,\"_file_\":null,\"kind\":\"222\",\"craeted_at\":null,\"price\":\"0\",\"count\":\"0\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?_pjax=%23pjax-container\",\"_token\":\"8BJRaDl8lHcwMuoZIwwZ15ffaOPR0IwnJLbkgwOI\"}', '2020-07-22 06:18:14', '2020-07-22 06:18:14');
INSERT INTO `admin_operation_log` VALUES ('1222', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:18:15', '2020-07-22 06:18:15');
INSERT INTO `admin_operation_log` VALUES ('1223', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:18:27', '2020-07-22 06:18:27');
INSERT INTO `admin_operation_log` VALUES ('1224', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 06:18:29', '2020-07-22 06:18:29');
INSERT INTO `admin_operation_log` VALUES ('1225', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:18:56', '2020-07-22 06:18:56');
INSERT INTO `admin_operation_log` VALUES ('1226', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:19:41', '2020-07-22 06:19:41');
INSERT INTO `admin_operation_log` VALUES ('1227', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 06:20:21', '2020-07-22 06:20:21');
INSERT INTO `admin_operation_log` VALUES ('1228', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 06:21:11', '2020-07-22 06:21:11');
INSERT INTO `admin_operation_log` VALUES ('1229', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 06:23:09', '2020-07-22 06:23:09');
INSERT INTO `admin_operation_log` VALUES ('1230', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:23:14', '2020-07-22 06:23:14');
INSERT INTO `admin_operation_log` VALUES ('1231', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:27:45', '2020-07-22 06:27:45');
INSERT INTO `admin_operation_log` VALUES ('1232', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"WuNBgK0OSRfTu0Iq\",\"_token\":\"orsBDMI1yqPPJU8c9z19DetrJkoTeyzhmNRc4JLq\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_0\",\"name\":\"4.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Wed Jul 08 2020 10:06:19 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"97734\"}', '2020-07-22 06:28:20', '2020-07-22 06:28:20');
INSERT INTO `admin_operation_log` VALUES ('1233', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"122\",\"name\":\"\\u7231\\u75af\",\"img\":\"\\/c1627689751892c5051bdacfd0e65f30.jpg\",\"file-img\":null,\"_file_\":null,\"kind\":null,\"craeted_at\":null,\"price\":\"0\",\"count\":\"0\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?_pjax=%23pjax-container\",\"_token\":\"orsBDMI1yqPPJU8c9z19DetrJkoTeyzhmNRc4JLq\"}', '2020-07-22 06:28:22', '2020-07-22 06:28:22');
INSERT INTO `admin_operation_log` VALUES ('1234', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:28:22', '2020-07-22 06:28:22');
INSERT INTO `admin_operation_log` VALUES ('1235', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:28:26', '2020-07-22 06:28:26');
INSERT INTO `admin_operation_log` VALUES ('1236', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:28:33', '2020-07-22 06:28:33');
INSERT INTO `admin_operation_log` VALUES ('1237', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 06:28:35', '2020-07-22 06:28:35');
INSERT INTO `admin_operation_log` VALUES ('1238', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:28:36', '2020-07-22 06:28:36');
INSERT INTO `admin_operation_log` VALUES ('1239', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:29:12', '2020-07-22 06:29:12');
INSERT INTO `admin_operation_log` VALUES ('1240', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"UGpGQLfXId4MfQjJ\",\"_token\":\"IxKxrgcYCz4F6ONXWNaYVWYF0VmzikxlwHUCX2In\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_1\",\"name\":\"4.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Wed Jul 08 2020 10:06:19 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"97734\"}', '2020-07-22 06:29:44', '2020-07-22 06:29:44');
INSERT INTO `admin_operation_log` VALUES ('1241', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":null,\"name\":null,\"img\":\"\\/e21e82fce244016c67fad908baf99663.jpg\",\"file-img\":null,\"_file_\":null,\"kind\":null,\"craeted_at\":null,\"price\":\"0\",\"count\":\"0\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?_pjax=%23pjax-container\",\"_token\":\"IxKxrgcYCz4F6ONXWNaYVWYF0VmzikxlwHUCX2In\"}', '2020-07-22 06:29:46', '2020-07-22 06:29:46');
INSERT INTO `admin_operation_log` VALUES ('1242', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"32\",\"name\":\"\\u77ed\\u88e4\",\"img\":\"\\/e21e82fce244016c67fad908baf99663.jpg\",\"file-img\":null,\"_file_\":null,\"kind\":null,\"craeted_at\":null,\"price\":\"0\",\"count\":\"0\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?_pjax=%23pjax-container\",\"_token\":\"IxKxrgcYCz4F6ONXWNaYVWYF0VmzikxlwHUCX2In\"}', '2020-07-22 06:29:52', '2020-07-22 06:29:52');
INSERT INTO `admin_operation_log` VALUES ('1243', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:29:53', '2020-07-22 06:29:53');
INSERT INTO `admin_operation_log` VALUES ('1244', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:29:57', '2020-07-22 06:29:57');
INSERT INTO `admin_operation_log` VALUES ('1245', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 06:29:59', '2020-07-22 06:29:59');
INSERT INTO `admin_operation_log` VALUES ('1246', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:31:00', '2020-07-22 06:31:00');
INSERT INTO `admin_operation_log` VALUES ('1247', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:34:10', '2020-07-22 06:34:10');
INSERT INTO `admin_operation_log` VALUES ('1248', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 06:35:14', '2020-07-22 06:35:14');
INSERT INTO `admin_operation_log` VALUES ('1249', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 06:37:20', '2020-07-22 06:37:20');
INSERT INTO `admin_operation_log` VALUES ('1250', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 06:37:28', '2020-07-22 06:37:28');
INSERT INTO `admin_operation_log` VALUES ('1251', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 06:38:48', '2020-07-22 06:38:48');
INSERT INTO `admin_operation_log` VALUES ('1252', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:38:51', '2020-07-22 06:38:51');
INSERT INTO `admin_operation_log` VALUES ('1253', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:39:24', '2020-07-22 06:39:24');
INSERT INTO `admin_operation_log` VALUES ('1254', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:41:27', '2020-07-22 06:41:27');
INSERT INTO `admin_operation_log` VALUES ('1255', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:41:32', '2020-07-22 06:41:32');
INSERT INTO `admin_operation_log` VALUES ('1256', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"Avhyri1hGl0vuIGT\",\"_token\":\"ReYud8tdGCkK4c05gvz8Sx5WfqbbDW7YhaYAkkqO\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_0\",\"name\":\"2.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Feb 23 2020 16:48:54 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"33427\"}', '2020-07-22 06:41:37', '2020-07-22 06:41:37');
INSERT INTO `admin_operation_log` VALUES ('1257', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"32\",\"name\":\"\\u8bed\\u6587\\u4e66\",\"img\":\"img\\/2.jpg\",\"file-img\":null,\"_file_\":null,\"kind\":null,\"craeted_at\":null,\"price\":\"0\",\"count\":\"0\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?_pjax=%23pjax-container\",\"_token\":\"ReYud8tdGCkK4c05gvz8Sx5WfqbbDW7YhaYAkkqO\"}', '2020-07-22 06:41:39', '2020-07-22 06:41:39');
INSERT INTO `admin_operation_log` VALUES ('1258', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:41:40', '2020-07-22 06:41:40');
INSERT INTO `admin_operation_log` VALUES ('1259', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:42:13', '2020-07-22 06:42:13');
INSERT INTO `admin_operation_log` VALUES ('1260', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 06:42:15', '2020-07-22 06:42:15');
INSERT INTO `admin_operation_log` VALUES ('1261', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:42:18', '2020-07-22 06:42:18');
INSERT INTO `admin_operation_log` VALUES ('1262', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:42:19', '2020-07-22 06:42:19');
INSERT INTO `admin_operation_log` VALUES ('1263', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 06:42:21', '2020-07-22 06:42:21');
INSERT INTO `admin_operation_log` VALUES ('1264', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 06:48:47', '2020-07-22 06:48:47');
INSERT INTO `admin_operation_log` VALUES ('1265', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 06:49:18', '2020-07-22 06:49:18');
INSERT INTO `admin_operation_log` VALUES ('1266', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:49:20', '2020-07-22 06:49:20');
INSERT INTO `admin_operation_log` VALUES ('1267', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:49:24', '2020-07-22 06:49:24');
INSERT INTO `admin_operation_log` VALUES ('1268', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:50:08', '2020-07-22 06:50:08');
INSERT INTO `admin_operation_log` VALUES ('1269', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 06:50:51', '2020-07-22 06:50:51');
INSERT INTO `admin_operation_log` VALUES ('1270', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:50:53', '2020-07-22 06:50:53');
INSERT INTO `admin_operation_log` VALUES ('1271', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 06:50:59', '2020-07-22 06:50:59');
INSERT INTO `admin_operation_log` VALUES ('1272', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:54:25', '2020-07-22 06:54:25');
INSERT INTO `admin_operation_log` VALUES ('1273', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 06:54:25', '2020-07-22 06:54:25');
INSERT INTO `admin_operation_log` VALUES ('1274', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 06:54:36', '2020-07-22 06:54:36');
INSERT INTO `admin_operation_log` VALUES ('1275', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 06:54:47', '2020-07-22 06:54:47');
INSERT INTO `admin_operation_log` VALUES ('1276', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 06:55:10', '2020-07-22 06:55:10');
INSERT INTO `admin_operation_log` VALUES ('1277', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 06:56:10', '2020-07-22 06:56:10');
INSERT INTO `admin_operation_log` VALUES ('1278', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:56:24', '2020-07-22 06:56:24');
INSERT INTO `admin_operation_log` VALUES ('1279', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:56:48', '2020-07-22 06:56:48');
INSERT INTO `admin_operation_log` VALUES ('1280', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 06:57:06', '2020-07-22 06:57:06');
INSERT INTO `admin_operation_log` VALUES ('1281', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 07:01:43', '2020-07-22 07:01:43');
INSERT INTO `admin_operation_log` VALUES ('1282', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 07:06:18', '2020-07-22 07:06:18');
INSERT INTO `admin_operation_log` VALUES ('1283', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 07:06:20', '2020-07-22 07:06:20');
INSERT INTO `admin_operation_log` VALUES ('1284', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 07:06:58', '2020-07-22 07:06:58');
INSERT INTO `admin_operation_log` VALUES ('1285', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"ApYanAjOWleH0r0Y\",\"_token\":\"2AY3AI4K4BAF6THmb3BPLbFmaBhZ0UjvTKEU4xku\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_0\",\"name\":\"7.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Feb 23 2020 16:49:01 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"280756\"}', '2020-07-22 07:07:12', '2020-07-22 07:07:12');
INSERT INTO `admin_operation_log` VALUES ('1286', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"99\",\"name\":\"\\u6d4b\\u8bd5\",\"img\":\"\\/6dadd61db3e4ae587e5bc071db24b965.jpg\",\"file-img\":null,\"_file_\":null,\"kind\":\"\\u6d4b\\u8bd5\",\"craeted_at\":null,\"price\":\"20\",\"count\":\"1000\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?_pjax=%23pjax-container\",\"_token\":\"2AY3AI4K4BAF6THmb3BPLbFmaBhZ0UjvTKEU4xku\"}', '2020-07-22 07:07:23', '2020-07-22 07:07:23');
INSERT INTO `admin_operation_log` VALUES ('1287', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 07:07:23', '2020-07-22 07:07:23');
INSERT INTO `admin_operation_log` VALUES ('1288', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 07:07:26', '2020-07-22 07:07:26');
INSERT INTO `admin_operation_log` VALUES ('1289', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 07:07:28', '2020-07-22 07:07:28');
INSERT INTO `admin_operation_log` VALUES ('1290', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 07:09:55', '2020-07-22 07:09:55');
INSERT INTO `admin_operation_log` VALUES ('1291', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 07:10:14', '2020-07-22 07:10:14');
INSERT INTO `admin_operation_log` VALUES ('1292', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 07:18:05', '2020-07-22 07:18:05');
INSERT INTO `admin_operation_log` VALUES ('1293', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-22 07:18:25', '2020-07-22 07:18:25');
INSERT INTO `admin_operation_log` VALUES ('1294', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 07:18:29', '2020-07-22 07:18:29');
INSERT INTO `admin_operation_log` VALUES ('1295', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"XbssdwuqyhupfHDy\",\"_token\":\"7WBBvdfjH5i9BNGbmDQxQuxOXoxUUBH5dJgPNSsS\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_0\",\"name\":\"063aeccbc9b344e5a6ee64f5205f7af1_th.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Feb 23 2020 16:47:22 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"198777\"}', '2020-07-22 07:18:58', '2020-07-22 07:18:58');
INSERT INTO `admin_operation_log` VALUES ('1296', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"666\",\"name\":\"\\u627e\\u5230\\u539f\\u56e0\\u4e86\\uff01\",\"img\":\"\\/063aeccbc9b344e5a6ee64f5205f7af1_th.jpg\",\"file-img\":null,\"_file_\":null,\"kind\":null,\"craeted_at\":null,\"price\":\"99\",\"count\":\"100\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?_pjax=%23pjax-container\",\"_token\":\"7WBBvdfjH5i9BNGbmDQxQuxOXoxUUBH5dJgPNSsS\"}', '2020-07-22 07:19:07', '2020-07-22 07:19:07');
INSERT INTO `admin_operation_log` VALUES ('1297', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 07:19:07', '2020-07-22 07:19:07');
INSERT INTO `admin_operation_log` VALUES ('1298', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 07:19:10', '2020-07-22 07:19:10');
INSERT INTO `admin_operation_log` VALUES ('1299', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-22 07:19:13', '2020-07-22 07:19:13');
INSERT INTO `admin_operation_log` VALUES ('1300', '2', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 07:20:26', '2020-07-22 07:20:26');
INSERT INTO `admin_operation_log` VALUES ('1301', '2', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-22 07:20:28', '2020-07-22 07:20:28');
INSERT INTO `admin_operation_log` VALUES ('1302', '2', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-23 01:01:27', '2020-07-23 01:01:27');
INSERT INTO `admin_operation_log` VALUES ('1303', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-23 01:01:38', '2020-07-23 01:01:38');
INSERT INTO `admin_operation_log` VALUES ('1304', '2', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-24 01:00:25', '2020-07-24 01:00:25');
INSERT INTO `admin_operation_log` VALUES ('1305', '2', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-24 01:00:25', '2020-07-24 01:00:25');
INSERT INTO `admin_operation_log` VALUES ('1306', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 01:00:36', '2020-07-24 01:00:36');
INSERT INTO `admin_operation_log` VALUES ('1307', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 01:00:40', '2020-07-24 01:00:40');
INSERT INTO `admin_operation_log` VALUES ('1308', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:02:28', '2020-07-24 07:02:28');
INSERT INTO `admin_operation_log` VALUES ('1309', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"vqIbcK79fI7ZpgdI\",\"_token\":\"7OlZ5ovzsI3zQDJlTyhumdx4M8cWWAxqneYM0GaJ\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_0\",\"name\":\"89b4302fb8d740ff961ad3288630087d.jpeg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Feb 23 2020 16:45:18 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"188843\"}', '2020-07-24 07:03:04', '2020-07-24 07:03:04');
INSERT INTO `admin_operation_log` VALUES ('1310', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"122\",\"name\":\"\\u7962\\u8c46\\u5b50\",\"img\":\"\\/89b4302fb8d740ff961ad3288630087d.jpeg\",\"file-img\":null,\"_file_\":null,\"kind\":\"\\u6492\\u98d2\\u98d2\",\"craeted_at\":null,\"price\":\"99\",\"count\":\"100\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?_pjax=%23pjax-container\",\"_token\":\"7OlZ5ovzsI3zQDJlTyhumdx4M8cWWAxqneYM0GaJ\"}', '2020-07-24 07:03:39', '2020-07-24 07:03:39');
INSERT INTO `admin_operation_log` VALUES ('1311', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:03:40', '2020-07-24 07:03:40');
INSERT INTO `admin_operation_log` VALUES ('1312', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:03:44', '2020-07-24 07:03:44');
INSERT INTO `admin_operation_log` VALUES ('1313', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-24 07:03:47', '2020-07-24 07:03:47');
INSERT INTO `admin_operation_log` VALUES ('1314', '2', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:03:50', '2020-07-24 07:03:50');
INSERT INTO `admin_operation_log` VALUES ('1315', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:03:52', '2020-07-24 07:03:52');
INSERT INTO `admin_operation_log` VALUES ('1316', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-24 07:27:00', '2020-07-24 07:27:00');
INSERT INTO `admin_operation_log` VALUES ('1317', '2', 'admin/good/shopping/33', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-24 07:27:15', '2020-07-24 07:27:15');
INSERT INTO `admin_operation_log` VALUES ('1318', '2', 'admin/good/shopping/34', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-24 07:27:18', '2020-07-24 07:27:18');
INSERT INTO `admin_operation_log` VALUES ('1319', '2', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:27:20', '2020-07-24 07:27:20');
INSERT INTO `admin_operation_log` VALUES ('1320', '2', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:27:45', '2020-07-24 07:27:45');
INSERT INTO `admin_operation_log` VALUES ('1321', '2', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:35:04', '2020-07-24 07:35:04');
INSERT INTO `admin_operation_log` VALUES ('1322', '2', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-24 07:35:06', '2020-07-24 07:35:06');
INSERT INTO `admin_operation_log` VALUES ('1323', '2', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-24 07:35:40', '2020-07-24 07:35:40');
INSERT INTO `admin_operation_log` VALUES ('1324', '2', 'admin/shopping', 'GET', '127.0.0.1', '[]', '2020-07-24 07:35:47', '2020-07-24 07:35:47');
INSERT INTO `admin_operation_log` VALUES ('1325', '2', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"QIoB0TG9Su7llDHPyghth2sHRnYv8pMIoAEpvNHc\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"22\"]}', '2020-07-24 07:36:00', '2020-07-24 07:36:00');
INSERT INTO `admin_operation_log` VALUES ('1326', '2', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:36:00', '2020-07-24 07:36:00');
INSERT INTO `admin_operation_log` VALUES ('1327', '2', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:36:04', '2020-07-24 07:36:04');
INSERT INTO `admin_operation_log` VALUES ('1328', '2', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-24 07:36:08', '2020-07-24 07:36:08');
INSERT INTO `admin_operation_log` VALUES ('1329', '2', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-24 07:40:02', '2020-07-24 07:40:02');
INSERT INTO `admin_operation_log` VALUES ('1330', '2', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:40:06', '2020-07-24 07:40:06');
INSERT INTO `admin_operation_log` VALUES ('1331', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:40:07', '2020-07-24 07:40:07');
INSERT INTO `admin_operation_log` VALUES ('1332', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-24 07:40:09', '2020-07-24 07:40:09');
INSERT INTO `admin_operation_log` VALUES ('1333', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:40:51', '2020-07-24 07:40:51');
INSERT INTO `admin_operation_log` VALUES ('1334', '2', 'admin/dcat-api/form/upload', 'POST', '127.0.0.1', '{\"_id\":\"bEmmwZIHHPXNJ7Wr\",\"_token\":\"BBe0riCmODLiUeCR3LZFCszYU106skCjycH3Zjw5\",\"upload_column\":\"img\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"id\":\"WU_FILE_0\",\"name\":\"89b4302fb8d740ff961ad3288630087d.jpeg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Sun Feb 23 2020 16:45:18 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"188843\"}', '2020-07-24 07:41:03', '2020-07-24 07:41:03');
INSERT INTO `admin_operation_log` VALUES ('1335', '2', 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"seller_id\":\"122\",\"name\":\"\\u6d4b\\u8bd5\",\"img\":\"\\/89b4302fb8d740ff961ad3288630087d.jpeg\",\"file-img\":null,\"_file_\":null,\"kind\":\"\\u554a\\u554a\\u554a\\u554a\",\"craeted_at\":null,\"price\":\"99\",\"count\":\"100\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\GoodsAddForm\",\"_current_\":\"http:\\/\\/shopping\\/index.php\\/admin\\/goods\\/create?_pjax=%23pjax-container\",\"_token\":\"BBe0riCmODLiUeCR3LZFCszYU106skCjycH3Zjw5\"}', '2020-07-24 07:41:16', '2020-07-24 07:41:16');
INSERT INTO `admin_operation_log` VALUES ('1336', '2', 'admin/goods/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:41:16', '2020-07-24 07:41:16');
INSERT INTO `admin_operation_log` VALUES ('1337', '2', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:41:22', '2020-07-24 07:41:22');
INSERT INTO `admin_operation_log` VALUES ('1338', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:41:23', '2020-07-24 07:41:23');
INSERT INTO `admin_operation_log` VALUES ('1339', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-24 07:41:26', '2020-07-24 07:41:26');
INSERT INTO `admin_operation_log` VALUES ('1340', '2', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:41:39', '2020-07-24 07:41:39');
INSERT INTO `admin_operation_log` VALUES ('1341', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:41:41', '2020-07-24 07:41:41');
INSERT INTO `admin_operation_log` VALUES ('1342', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-24 07:41:43', '2020-07-24 07:41:43');
INSERT INTO `admin_operation_log` VALUES ('1343', '2', 'admin/good/shopping/35', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-24 07:41:45', '2020-07-24 07:41:45');
INSERT INTO `admin_operation_log` VALUES ('1344', '2', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:41:47', '2020-07-24 07:41:47');
INSERT INTO `admin_operation_log` VALUES ('1345', '2', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:41:49', '2020-07-24 07:41:49');
INSERT INTO `admin_operation_log` VALUES ('1346', '2', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:41:50', '2020-07-24 07:41:50');
INSERT INTO `admin_operation_log` VALUES ('1347', '2', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"rB6Y8eDI0sSTVN1KUjVJHD16hPM7nBKKwQUjudcg\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"24\"]}', '2020-07-24 07:41:54', '2020-07-24 07:41:54');
INSERT INTO `admin_operation_log` VALUES ('1348', '2', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:41:54', '2020-07-24 07:41:54');
INSERT INTO `admin_operation_log` VALUES ('1349', '2', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:41:56', '2020-07-24 07:41:56');
INSERT INTO `admin_operation_log` VALUES ('1350', '2', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:42:44', '2020-07-24 07:42:44');
INSERT INTO `admin_operation_log` VALUES ('1351', '2', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-24 07:43:58', '2020-07-24 07:43:58');
INSERT INTO `admin_operation_log` VALUES ('1352', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:44:02', '2020-07-24 07:44:02');
INSERT INTO `admin_operation_log` VALUES ('1353', '2', 'admin/goods/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:44:06', '2020-07-24 07:44:06');
INSERT INTO `admin_operation_log` VALUES ('1354', '2', 'admin/goods/1', 'GET', '127.0.0.1', '[]', '2020-07-24 07:44:29', '2020-07-24 07:44:29');
INSERT INTO `admin_operation_log` VALUES ('1355', '2', 'admin/goods/1', 'GET', '127.0.0.1', '[]', '2020-07-24 07:44:52', '2020-07-24 07:44:52');
INSERT INTO `admin_operation_log` VALUES ('1356', '2', 'admin/goods/1', 'GET', '127.0.0.1', '[]', '2020-07-24 07:46:36', '2020-07-24 07:46:36');
INSERT INTO `admin_operation_log` VALUES ('1357', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-24 07:49:15', '2020-07-24 07:49:15');
INSERT INTO `admin_operation_log` VALUES ('1358', '2', 'admin/goods', 'GET', '127.0.0.1', '[]', '2020-07-24 08:26:00', '2020-07-24 08:26:00');
INSERT INTO `admin_operation_log` VALUES ('1359', '2', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-27 01:44:24', '2020-07-27 01:44:24');
INSERT INTO `admin_operation_log` VALUES ('1360', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-27 01:44:33', '2020-07-27 01:44:33');
INSERT INTO `admin_operation_log` VALUES ('1361', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"mbWsUVG6tGzsXDH2wgL1nOHegTwCtszoUefcsUOv\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-27 01:44:43', '2020-07-27 01:44:43');
INSERT INTO `admin_operation_log` VALUES ('1362', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-27 01:44:44', '2020-07-27 01:44:44');
INSERT INTO `admin_operation_log` VALUES ('1363', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"9B7UUO0Abb7KkpjplvwZLuY1kuxHrDHwIpD9U0Wy\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-27 01:44:53', '2020-07-27 01:44:53');
INSERT INTO `admin_operation_log` VALUES ('1364', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-27 01:44:54', '2020-07-27 01:44:54');
INSERT INTO `admin_operation_log` VALUES ('1365', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-27 01:45:09', '2020-07-27 01:45:09');
INSERT INTO `admin_operation_log` VALUES ('1366', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-27 01:48:52', '2020-07-27 01:48:52');
INSERT INTO `admin_operation_log` VALUES ('1367', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-27 01:51:33', '2020-07-27 01:51:33');
INSERT INTO `admin_operation_log` VALUES ('1368', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 01:59:45', '2020-07-27 01:59:45');
INSERT INTO `admin_operation_log` VALUES ('1369', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-27 02:04:32', '2020-07-27 02:04:32');
INSERT INTO `admin_operation_log` VALUES ('1370', '2', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-27 02:05:59', '2020-07-27 02:05:59');
INSERT INTO `admin_operation_log` VALUES ('1371', '2', 'admin/goods', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 02:06:06', '2020-07-27 02:06:06');
INSERT INTO `admin_operation_log` VALUES ('1372', '2', 'admin/good/shopping/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-27 02:06:20', '2020-07-27 02:06:20');
INSERT INTO `admin_operation_log` VALUES ('1373', '2', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 02:06:22', '2020-07-27 02:06:22');
INSERT INTO `admin_operation_log` VALUES ('1374', '2', 'admin/shopping/add/17', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-27 02:06:26', '2020-07-27 02:06:26');
INSERT INTO `admin_operation_log` VALUES ('1375', '2', 'admin/shopping/reduce/17', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-27 02:06:28', '2020-07-27 02:06:28');
INSERT INTO `admin_operation_log` VALUES ('1376', '2', 'admin/shopping/add/17', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-27 02:06:30', '2020-07-27 02:06:30');
INSERT INTO `admin_operation_log` VALUES ('1377', '2', 'admin/shopping/add/23', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-27 02:06:32', '2020-07-27 02:06:32');
INSERT INTO `admin_operation_log` VALUES ('1378', '2', 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"action\":\"1\",\"_token\":\"EtdB248n041AkKzS7rC2UyPN7A9U9MIDX26FNTKm\",\"_action\":\"App_Admin_Extensions_Tools_ReleasePost\",\"_key\":[\"17\",\"23\"]}', '2020-07-27 02:06:36', '2020-07-27 02:06:36');
INSERT INTO `admin_operation_log` VALUES ('1379', '2', 'admin/shopping', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 02:06:37', '2020-07-27 02:06:37');
INSERT INTO `admin_operation_log` VALUES ('1380', '2', 'admin/order', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 02:06:39', '2020-07-27 02:06:39');
INSERT INTO `admin_operation_log` VALUES ('1381', '2', 'admin/order', 'GET', '127.0.0.1', '[]', '2020-07-27 02:06:45', '2020-07-27 02:06:45');
INSERT INTO `admin_operation_log` VALUES ('1382', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-27 02:40:17', '2020-07-27 02:40:17');
INSERT INTO `admin_operation_log` VALUES ('1383', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-27 02:43:41', '2020-07-27 02:43:41');
INSERT INTO `admin_operation_log` VALUES ('1384', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-27 02:50:01', '2020-07-27 02:50:01');
INSERT INTO `admin_operation_log` VALUES ('1385', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 02:50:32', '2020-07-27 02:50:32');
INSERT INTO `admin_operation_log` VALUES ('1386', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-27 02:53:54', '2020-07-27 02:53:54');
INSERT INTO `admin_operation_log` VALUES ('1387', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-27 02:55:45', '2020-07-27 02:55:45');
INSERT INTO `admin_operation_log` VALUES ('1388', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"device\",\"icon\":\"fa-apple\",\"uri\":\"\\/admin\\/auth\\/device\",\"roles\":[\"1\",null],\"permissions\":\"2,3,4,5,6\",\"_token\":\"KTItg0nQfgyaabUpjNmt7uZNmuS3wvBgSulN9Htw\"}', '2020-07-27 02:56:19', '2020-07-27 02:56:19');
INSERT INTO `admin_operation_log` VALUES ('1389', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-27 02:56:21', '2020-07-27 02:56:21');
INSERT INTO `admin_operation_log` VALUES ('1390', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"device_log\",\"icon\":\"fa-apple\",\"uri\":\"\\/admin\\/auth\\/device_log\",\"roles\":[\"1\",null],\"permissions\":\"2,3,4,5,6\",\"_token\":\"8pQPozHYvNHcWVvnn4NCIQ3ovB3QHQArO6f6huDJ\"}', '2020-07-27 02:57:26', '2020-07-27 02:57:26');
INSERT INTO `admin_operation_log` VALUES ('1391', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-27 02:57:28', '2020-07-27 02:57:28');
INSERT INTO `admin_operation_log` VALUES ('1392', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"device_video\",\"icon\":\"fa-apple\",\"uri\":\"\\/admin\\/auth\\/device_video\",\"roles\":[\"1\",null],\"permissions\":\"2,3,4,5,6\",\"_token\":\"fNj5JdFGVIVskGJzBOFprXBKYXuh4EX9DglqW1na\"}', '2020-07-27 02:58:31', '2020-07-27 02:58:31');
INSERT INTO `admin_operation_log` VALUES ('1393', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-27 02:58:33', '2020-07-27 02:58:33');
INSERT INTO `admin_operation_log` VALUES ('1394', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-27 02:59:31', '2020-07-27 02:59:31');
INSERT INTO `admin_operation_log` VALUES ('1395', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-27 02:59:36', '2020-07-27 02:59:36');
INSERT INTO `admin_operation_log` VALUES ('1396', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-27 02:59:42', '2020-07-27 02:59:42');
INSERT INTO `admin_operation_log` VALUES ('1397', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-27 03:00:13', '2020-07-27 03:00:13');
INSERT INTO `admin_operation_log` VALUES ('1398', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 03:00:28', '2020-07-27 03:00:28');
INSERT INTO `admin_operation_log` VALUES ('1399', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-07-27 03:00:34', '2020-07-27 03:00:34');
INSERT INTO `admin_operation_log` VALUES ('1400', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 03:00:38', '2020-07-27 03:00:38');
INSERT INTO `admin_operation_log` VALUES ('1401', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-27 03:01:50', '2020-07-27 03:01:50');
INSERT INTO `admin_operation_log` VALUES ('1402', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-27 03:06:26', '2020-07-27 03:06:26');
INSERT INTO `admin_operation_log` VALUES ('1403', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 03:06:28', '2020-07-27 03:06:28');
INSERT INTO `admin_operation_log` VALUES ('1404', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 03:06:28', '2020-07-27 03:06:28');
INSERT INTO `admin_operation_log` VALUES ('1405', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-27 03:46:39', '2020-07-27 03:46:39');
INSERT INTO `admin_operation_log` VALUES ('1406', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 03:46:42', '2020-07-27 03:46:42');
INSERT INTO `admin_operation_log` VALUES ('1407', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 03:49:04', '2020-07-27 03:49:04');
INSERT INTO `admin_operation_log` VALUES ('1408', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 03:49:07', '2020-07-27 03:49:07');
INSERT INTO `admin_operation_log` VALUES ('1409', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '[]', '2020-07-27 03:49:10', '2020-07-27 03:49:10');
INSERT INTO `admin_operation_log` VALUES ('1410', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '[]', '2020-07-27 03:49:40', '2020-07-27 03:49:40');
INSERT INTO `admin_operation_log` VALUES ('1411', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:03:01', '2020-07-27 05:03:01');
INSERT INTO `admin_operation_log` VALUES ('1412', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:03:15', '2020-07-27 05:03:15');
INSERT INTO `admin_operation_log` VALUES ('1413', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:03:16', '2020-07-27 05:03:16');
INSERT INTO `admin_operation_log` VALUES ('1414', '1', 'admin/device/device_video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:03:36', '2020-07-27 05:03:36');
INSERT INTO `admin_operation_log` VALUES ('1415', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:03:38', '2020-07-27 05:03:38');
INSERT INTO `admin_operation_log` VALUES ('1416', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:03:39', '2020-07-27 05:03:39');
INSERT INTO `admin_operation_log` VALUES ('1417', '1', 'admin/device/device_video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:05:22', '2020-07-27 05:05:22');
INSERT INTO `admin_operation_log` VALUES ('1418', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:06:33', '2020-07-27 05:06:33');
INSERT INTO `admin_operation_log` VALUES ('1419', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:06:47', '2020-07-27 05:06:47');
INSERT INTO `admin_operation_log` VALUES ('1420', '1', 'admin/device/device_video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:06:49', '2020-07-27 05:06:49');
INSERT INTO `admin_operation_log` VALUES ('1421', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:06:50', '2020-07-27 05:06:50');
INSERT INTO `admin_operation_log` VALUES ('1422', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '[]', '2020-07-27 05:09:45', '2020-07-27 05:09:45');
INSERT INTO `admin_operation_log` VALUES ('1423', '1', 'admin/device/device_video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:09:53', '2020-07-27 05:09:53');
INSERT INTO `admin_operation_log` VALUES ('1424', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:10:01', '2020-07-27 05:10:01');
INSERT INTO `admin_operation_log` VALUES ('1425', '1', 'admin/device/device_video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:10:03', '2020-07-27 05:10:03');
INSERT INTO `admin_operation_log` VALUES ('1426', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:16:56', '2020-07-27 05:16:56');
INSERT INTO `admin_operation_log` VALUES ('1427', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:17:01', '2020-07-27 05:17:01');
INSERT INTO `admin_operation_log` VALUES ('1428', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:17:23', '2020-07-27 05:17:23');
INSERT INTO `admin_operation_log` VALUES ('1429', '1', 'admin/device/device_video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:17:25', '2020-07-27 05:17:25');
INSERT INTO `admin_operation_log` VALUES ('1430', '1', 'admin/device/device_video', 'GET', '127.0.0.1', '[]', '2020-07-27 05:17:54', '2020-07-27 05:17:54');
INSERT INTO `admin_operation_log` VALUES ('1431', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:17:56', '2020-07-27 05:17:56');
INSERT INTO `admin_operation_log` VALUES ('1432', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:17:57', '2020-07-27 05:17:57');
INSERT INTO `admin_operation_log` VALUES ('1433', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:17:59', '2020-07-27 05:17:59');
INSERT INTO `admin_operation_log` VALUES ('1434', '1', 'admin/device/device_video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:17:59', '2020-07-27 05:17:59');
INSERT INTO `admin_operation_log` VALUES ('1435', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:18:05', '2020-07-27 05:18:05');
INSERT INTO `admin_operation_log` VALUES ('1436', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 05:25:02', '2020-07-27 05:25:02');
INSERT INTO `admin_operation_log` VALUES ('1437', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 05:25:06', '2020-07-27 05:25:06');
INSERT INTO `admin_operation_log` VALUES ('1438', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 05:26:00', '2020-07-27 05:26:00');
INSERT INTO `admin_operation_log` VALUES ('1439', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:26:02', '2020-07-27 05:26:02');
INSERT INTO `admin_operation_log` VALUES ('1440', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-27 05:27:06', '2020-07-27 05:27:06');
INSERT INTO `admin_operation_log` VALUES ('1441', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:27:08', '2020-07-27 05:27:08');
INSERT INTO `admin_operation_log` VALUES ('1442', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-27 05:28:35', '2020-07-27 05:28:35');
INSERT INTO `admin_operation_log` VALUES ('1443', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:28:42', '2020-07-27 05:28:42');
INSERT INTO `admin_operation_log` VALUES ('1444', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-27 05:28:53', '2020-07-27 05:28:53');
INSERT INTO `admin_operation_log` VALUES ('1445', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"xhoiKRKJBZWRJrf7pE4FVyYnckQK9lMoh9yF3d6s\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11}]},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-07-27 05:29:01', '2020-07-27 05:29:01');
INSERT INTO `admin_operation_log` VALUES ('1446', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-27 05:29:03', '2020-07-27 05:29:03');
INSERT INTO `admin_operation_log` VALUES ('1447', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-07-27 05:29:05', '2020-07-27 05:29:05');
INSERT INTO `admin_operation_log` VALUES ('1448', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:29:23', '2020-07-27 05:29:23');
INSERT INTO `admin_operation_log` VALUES ('1449', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 05:31:52', '2020-07-27 05:31:52');
INSERT INTO `admin_operation_log` VALUES ('1450', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 05:32:11', '2020-07-27 05:32:11');
INSERT INTO `admin_operation_log` VALUES ('1451', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:32:15', '2020-07-27 05:32:15');
INSERT INTO `admin_operation_log` VALUES ('1452', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:32:43', '2020-07-27 05:32:43');
INSERT INTO `admin_operation_log` VALUES ('1453', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 05:36:40', '2020-07-27 05:36:40');
INSERT INTO `admin_operation_log` VALUES ('1454', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 05:37:45', '2020-07-27 05:37:45');
INSERT INTO `admin_operation_log` VALUES ('1455', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:37:53', '2020-07-27 05:37:53');
INSERT INTO `admin_operation_log` VALUES ('1456', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:37:56', '2020-07-27 05:37:56');
INSERT INTO `admin_operation_log` VALUES ('1457', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 05:42:59', '2020-07-27 05:42:59');
INSERT INTO `admin_operation_log` VALUES ('1458', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 05:43:29', '2020-07-27 05:43:29');
INSERT INTO `admin_operation_log` VALUES ('1459', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 05:46:56', '2020-07-27 05:46:56');
INSERT INTO `admin_operation_log` VALUES ('1460', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 05:49:13', '2020-07-27 05:49:13');
INSERT INTO `admin_operation_log` VALUES ('1461', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 05:49:15', '2020-07-27 05:49:15');
INSERT INTO `admin_operation_log` VALUES ('1462', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 05:50:56', '2020-07-27 05:50:56');
INSERT INTO `admin_operation_log` VALUES ('1463', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 05:50:58', '2020-07-27 05:50:58');
INSERT INTO `admin_operation_log` VALUES ('1464', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 05:51:06', '2020-07-27 05:51:06');
INSERT INTO `admin_operation_log` VALUES ('1465', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 05:51:29', '2020-07-27 05:51:29');
INSERT INTO `admin_operation_log` VALUES ('1466', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:53:22', '2020-07-27 05:53:22');
INSERT INTO `admin_operation_log` VALUES ('1467', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:53:26', '2020-07-27 05:53:26');
INSERT INTO `admin_operation_log` VALUES ('1468', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:53:28', '2020-07-27 05:53:28');
INSERT INTO `admin_operation_log` VALUES ('1469', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 05:53:29', '2020-07-27 05:53:29');
INSERT INTO `admin_operation_log` VALUES ('1470', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 05:55:24', '2020-07-27 05:55:24');
INSERT INTO `admin_operation_log` VALUES ('1471', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 05:56:03', '2020-07-27 05:56:03');
INSERT INTO `admin_operation_log` VALUES ('1472', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 05:56:33', '2020-07-27 05:56:33');
INSERT INTO `admin_operation_log` VALUES ('1473', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 05:56:42', '2020-07-27 05:56:42');
INSERT INTO `admin_operation_log` VALUES ('1474', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:57:23', '2020-07-27 05:57:23');
INSERT INTO `admin_operation_log` VALUES ('1475', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:58:16', '2020-07-27 05:58:16');
INSERT INTO `admin_operation_log` VALUES ('1476', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:58:18', '2020-07-27 05:58:18');
INSERT INTO `admin_operation_log` VALUES ('1477', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 05:58:32', '2020-07-27 05:58:32');
INSERT INTO `admin_operation_log` VALUES ('1478', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 05:58:43', '2020-07-27 05:58:43');
INSERT INTO `admin_operation_log` VALUES ('1479', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 05:58:56', '2020-07-27 05:58:56');
INSERT INTO `admin_operation_log` VALUES ('1480', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 06:15:15', '2020-07-27 06:15:15');
INSERT INTO `admin_operation_log` VALUES ('1481', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 06:16:00', '2020-07-27 06:16:00');
INSERT INTO `admin_operation_log` VALUES ('1482', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 06:16:31', '2020-07-27 06:16:31');
INSERT INTO `admin_operation_log` VALUES ('1483', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 06:17:51', '2020-07-27 06:17:51');
INSERT INTO `admin_operation_log` VALUES ('1484', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 06:18:07', '2020-07-27 06:18:07');
INSERT INTO `admin_operation_log` VALUES ('1485', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 06:28:29', '2020-07-27 06:28:29');
INSERT INTO `admin_operation_log` VALUES ('1486', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 06:28:54', '2020-07-27 06:28:54');
INSERT INTO `admin_operation_log` VALUES ('1487', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 06:30:09', '2020-07-27 06:30:09');
INSERT INTO `admin_operation_log` VALUES ('1488', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 06:37:16', '2020-07-27 06:37:16');
INSERT INTO `admin_operation_log` VALUES ('1489', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 06:38:01', '2020-07-27 06:38:01');
INSERT INTO `admin_operation_log` VALUES ('1490', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 06:38:10', '2020-07-27 06:38:10');
INSERT INTO `admin_operation_log` VALUES ('1491', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 06:38:55', '2020-07-27 06:38:55');
INSERT INTO `admin_operation_log` VALUES ('1492', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 06:40:21', '2020-07-27 06:40:21');
INSERT INTO `admin_operation_log` VALUES ('1493', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 06:40:59', '2020-07-27 06:40:59');
INSERT INTO `admin_operation_log` VALUES ('1494', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 06:41:03', '2020-07-27 06:41:03');
INSERT INTO `admin_operation_log` VALUES ('1495', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 06:42:10', '2020-07-27 06:42:10');
INSERT INTO `admin_operation_log` VALUES ('1496', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 06:45:57', '2020-07-27 06:45:57');
INSERT INTO `admin_operation_log` VALUES ('1497', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 06:49:20', '2020-07-27 06:49:20');
INSERT INTO `admin_operation_log` VALUES ('1498', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 06:50:16', '2020-07-27 06:50:16');
INSERT INTO `admin_operation_log` VALUES ('1499', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 06:50:28', '2020-07-27 06:50:28');
INSERT INTO `admin_operation_log` VALUES ('1500', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 06:57:46', '2020-07-27 06:57:46');
INSERT INTO `admin_operation_log` VALUES ('1501', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 06:58:08', '2020-07-27 06:58:08');
INSERT INTO `admin_operation_log` VALUES ('1502', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 06:58:20', '2020-07-27 06:58:20');
INSERT INTO `admin_operation_log` VALUES ('1503', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 06:58:34', '2020-07-27 06:58:34');
INSERT INTO `admin_operation_log` VALUES ('1504', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 07:11:28', '2020-07-27 07:11:28');
INSERT INTO `admin_operation_log` VALUES ('1505', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 07:11:37', '2020-07-27 07:11:37');
INSERT INTO `admin_operation_log` VALUES ('1506', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 07:11:55', '2020-07-27 07:11:55');
INSERT INTO `admin_operation_log` VALUES ('1507', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 07:12:30', '2020-07-27 07:12:30');
INSERT INTO `admin_operation_log` VALUES ('1508', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 07:13:55', '2020-07-27 07:13:55');
INSERT INTO `admin_operation_log` VALUES ('1509', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 07:15:01', '2020-07-27 07:15:01');
INSERT INTO `admin_operation_log` VALUES ('1510', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 07:15:31', '2020-07-27 07:15:31');
INSERT INTO `admin_operation_log` VALUES ('1511', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 07:18:40', '2020-07-27 07:18:40');
INSERT INTO `admin_operation_log` VALUES ('1512', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 07:18:49', '2020-07-27 07:18:49');
INSERT INTO `admin_operation_log` VALUES ('1513', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 07:18:52', '2020-07-27 07:18:52');
INSERT INTO `admin_operation_log` VALUES ('1514', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 07:29:20', '2020-07-27 07:29:20');
INSERT INTO `admin_operation_log` VALUES ('1515', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 07:30:06', '2020-07-27 07:30:06');
INSERT INTO `admin_operation_log` VALUES ('1516', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 07:31:41', '2020-07-27 07:31:41');
INSERT INTO `admin_operation_log` VALUES ('1517', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 07:32:23', '2020-07-27 07:32:23');
INSERT INTO `admin_operation_log` VALUES ('1518', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 07:33:48', '2020-07-27 07:33:48');
INSERT INTO `admin_operation_log` VALUES ('1519', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 07:34:08', '2020-07-27 07:34:08');
INSERT INTO `admin_operation_log` VALUES ('1520', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 07:34:28', '2020-07-27 07:34:28');
INSERT INTO `admin_operation_log` VALUES ('1521', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 07:34:59', '2020-07-27 07:34:59');
INSERT INTO `admin_operation_log` VALUES ('1522', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 07:44:13', '2020-07-27 07:44:13');
INSERT INTO `admin_operation_log` VALUES ('1523', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 07:45:47', '2020-07-27 07:45:47');
INSERT INTO `admin_operation_log` VALUES ('1524', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 07:46:46', '2020-07-27 07:46:46');
INSERT INTO `admin_operation_log` VALUES ('1525', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 07:53:31', '2020-07-27 07:53:31');
INSERT INTO `admin_operation_log` VALUES ('1526', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 07:56:23', '2020-07-27 07:56:23');
INSERT INTO `admin_operation_log` VALUES ('1527', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 07:58:03', '2020-07-27 07:58:03');
INSERT INTO `admin_operation_log` VALUES ('1528', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 07:58:13', '2020-07-27 07:58:13');
INSERT INTO `admin_operation_log` VALUES ('1529', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 08:01:31', '2020-07-27 08:01:31');
INSERT INTO `admin_operation_log` VALUES ('1530', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 08:03:50', '2020-07-27 08:03:50');
INSERT INTO `admin_operation_log` VALUES ('1531', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 08:04:12', '2020-07-27 08:04:12');
INSERT INTO `admin_operation_log` VALUES ('1532', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 08:04:38', '2020-07-27 08:04:38');
INSERT INTO `admin_operation_log` VALUES ('1533', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '[]', '2020-07-27 08:06:50', '2020-07-27 08:06:50');
INSERT INTO `admin_operation_log` VALUES ('1534', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 08:06:53', '2020-07-27 08:06:53');
INSERT INTO `admin_operation_log` VALUES ('1535', '1', 'admin/device/device/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 08:06:56', '2020-07-27 08:06:56');
INSERT INTO `admin_operation_log` VALUES ('1536', '1', 'admin/device/device/2', 'GET', '127.0.0.1', '[]', '2020-07-27 08:06:57', '2020-07-27 08:06:57');
INSERT INTO `admin_operation_log` VALUES ('1537', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 08:09:13', '2020-07-27 08:09:13');
INSERT INTO `admin_operation_log` VALUES ('1538', '1', 'admin/device/device/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 08:09:19', '2020-07-27 08:09:19');
INSERT INTO `admin_operation_log` VALUES ('1539', '1', 'admin/device/device/2', 'GET', '127.0.0.1', '[]', '2020-07-27 08:11:32', '2020-07-27 08:11:32');
INSERT INTO `admin_operation_log` VALUES ('1540', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 08:11:35', '2020-07-27 08:11:35');
INSERT INTO `admin_operation_log` VALUES ('1541', '1', 'admin/device/device/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 08:11:38', '2020-07-27 08:11:38');
INSERT INTO `admin_operation_log` VALUES ('1542', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 08:15:00', '2020-07-27 08:15:00');
INSERT INTO `admin_operation_log` VALUES ('1543', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 08:21:37', '2020-07-27 08:21:37');
INSERT INTO `admin_operation_log` VALUES ('1544', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 08:32:35', '2020-07-27 08:32:35');
INSERT INTO `admin_operation_log` VALUES ('1545', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 08:34:27', '2020-07-27 08:34:27');
INSERT INTO `admin_operation_log` VALUES ('1546', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 08:34:32', '2020-07-27 08:34:32');
INSERT INTO `admin_operation_log` VALUES ('1547', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 08:40:41', '2020-07-27 08:40:41');
INSERT INTO `admin_operation_log` VALUES ('1548', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 08:51:54', '2020-07-27 08:51:54');
INSERT INTO `admin_operation_log` VALUES ('1549', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 08:52:45', '2020-07-27 08:52:45');
INSERT INTO `admin_operation_log` VALUES ('1550', '1', 'admin/view/log/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-27 08:52:47', '2020-07-27 08:52:47');
INSERT INTO `admin_operation_log` VALUES ('1551', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 08:52:54', '2020-07-27 08:52:54');
INSERT INTO `admin_operation_log` VALUES ('1552', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 08:52:58', '2020-07-27 08:52:58');
INSERT INTO `admin_operation_log` VALUES ('1553', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 08:53:50', '2020-07-27 08:53:50');
INSERT INTO `admin_operation_log` VALUES ('1554', '1', 'admin/view/log/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-27 08:53:54', '2020-07-27 08:53:54');
INSERT INTO `admin_operation_log` VALUES ('1555', '1', 'admin/view/log/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-27 08:54:02', '2020-07-27 08:54:02');
INSERT INTO `admin_operation_log` VALUES ('1556', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 08:54:50', '2020-07-27 08:54:50');
INSERT INTO `admin_operation_log` VALUES ('1557', '1', 'admin/view/log/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-27 08:54:52', '2020-07-27 08:54:52');
INSERT INTO `admin_operation_log` VALUES ('1558', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 08:55:21', '2020-07-27 08:55:21');
INSERT INTO `admin_operation_log` VALUES ('1559', '1', 'admin/view/log/1', 'POST', '127.0.0.1', '{\"_token\":\"{{csrf_token()}}\"}', '2020-07-27 08:55:46', '2020-07-27 08:55:46');
INSERT INTO `admin_operation_log` VALUES ('1560', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 08:56:16', '2020-07-27 08:56:16');
INSERT INTO `admin_operation_log` VALUES ('1561', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 08:56:47', '2020-07-27 08:56:47');
INSERT INTO `admin_operation_log` VALUES ('1562', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 08:59:13', '2020-07-27 08:59:13');
INSERT INTO `admin_operation_log` VALUES ('1563', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 09:00:11', '2020-07-27 09:00:11');
INSERT INTO `admin_operation_log` VALUES ('1564', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 09:05:35', '2020-07-27 09:05:35');
INSERT INTO `admin_operation_log` VALUES ('1565', '1', 'admin/view/log/1', 'GET', '127.0.0.1', '[]', '2020-07-27 09:05:56', '2020-07-27 09:05:56');
INSERT INTO `admin_operation_log` VALUES ('1566', '1', 'admin/view/log/1', 'GET', '127.0.0.1', '[]', '2020-07-27 09:06:51', '2020-07-27 09:06:51');
INSERT INTO `admin_operation_log` VALUES ('1567', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:06:57', '2020-07-27 09:06:57');
INSERT INTO `admin_operation_log` VALUES ('1568', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 09:07:28', '2020-07-27 09:07:28');
INSERT INTO `admin_operation_log` VALUES ('1569', '1', 'admin/view/log/1', 'GET', '127.0.0.1', '[]', '2020-07-27 09:07:30', '2020-07-27 09:07:30');
INSERT INTO `admin_operation_log` VALUES ('1570', '1', 'admin/view/log/1', 'GET', '127.0.0.1', '[]', '2020-07-27 09:08:21', '2020-07-27 09:08:21');
INSERT INTO `admin_operation_log` VALUES ('1571', '1', 'admin/view/log/1', 'GET', '127.0.0.1', '[]', '2020-07-27 09:10:08', '2020-07-27 09:10:08');
INSERT INTO `admin_operation_log` VALUES ('1572', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:10:17', '2020-07-27 09:10:17');
INSERT INTO `admin_operation_log` VALUES ('1573', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:10:20', '2020-07-27 09:10:20');
INSERT INTO `admin_operation_log` VALUES ('1574', '1', 'admin/view/log/2', 'GET', '127.0.0.1', '[]', '2020-07-27 09:10:28', '2020-07-27 09:10:28');
INSERT INTO `admin_operation_log` VALUES ('1575', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:10:33', '2020-07-27 09:10:33');
INSERT INTO `admin_operation_log` VALUES ('1576', '1', 'admin/view/log/2', 'GET', '127.0.0.1', '[]', '2020-07-27 09:10:39', '2020-07-27 09:10:39');
INSERT INTO `admin_operation_log` VALUES ('1577', '1', 'admin/view/log/2', 'GET', '127.0.0.1', '[]', '2020-07-27 09:11:22', '2020-07-27 09:11:22');
INSERT INTO `admin_operation_log` VALUES ('1578', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:11:24', '2020-07-27 09:11:24');
INSERT INTO `admin_operation_log` VALUES ('1579', '1', 'admin/view/log/1', 'GET', '127.0.0.1', '[]', '2020-07-27 09:11:27', '2020-07-27 09:11:27');
INSERT INTO `admin_operation_log` VALUES ('1580', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:12:11', '2020-07-27 09:12:11');
INSERT INTO `admin_operation_log` VALUES ('1581', '1', 'admin/view/log/1', 'GET', '127.0.0.1', '[]', '2020-07-27 09:12:14', '2020-07-27 09:12:14');
INSERT INTO `admin_operation_log` VALUES ('1582', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:12:22', '2020-07-27 09:12:22');
INSERT INTO `admin_operation_log` VALUES ('1583', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:12:27', '2020-07-27 09:12:27');
INSERT INTO `admin_operation_log` VALUES ('1584', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 09:13:26', '2020-07-27 09:13:26');
INSERT INTO `admin_operation_log` VALUES ('1585', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:13:28', '2020-07-27 09:13:28');
INSERT INTO `admin_operation_log` VALUES ('1586', '1', 'admin/view/log/1', 'GET', '127.0.0.1', '[]', '2020-07-27 09:13:31', '2020-07-27 09:13:31');
INSERT INTO `admin_operation_log` VALUES ('1587', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:13:36', '2020-07-27 09:13:36');
INSERT INTO `admin_operation_log` VALUES ('1588', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:14:13', '2020-07-27 09:14:13');
INSERT INTO `admin_operation_log` VALUES ('1589', '1', 'admin/view/log/1', 'GET', '127.0.0.1', '[]', '2020-07-27 09:14:15', '2020-07-27 09:14:15');
INSERT INTO `admin_operation_log` VALUES ('1590', '1', 'admin/view/log/1', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:14:19', '2020-07-27 09:14:19');
INSERT INTO `admin_operation_log` VALUES ('1591', '1', 'admin/view/log/1', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:14:20', '2020-07-27 09:14:20');
INSERT INTO `admin_operation_log` VALUES ('1592', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:14:22', '2020-07-27 09:14:22');
INSERT INTO `admin_operation_log` VALUES ('1593', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 09:19:41', '2020-07-27 09:19:41');
INSERT INTO `admin_operation_log` VALUES ('1594', '1', 'admin/view/log/1', 'GET', '127.0.0.1', '[]', '2020-07-27 09:19:45', '2020-07-27 09:19:45');
INSERT INTO `admin_operation_log` VALUES ('1595', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:20:41', '2020-07-27 09:20:41');
INSERT INTO `admin_operation_log` VALUES ('1596', '1', 'admin/view/log/1', 'GET', '127.0.0.1', '[]', '2020-07-27 09:20:44', '2020-07-27 09:20:44');
INSERT INTO `admin_operation_log` VALUES ('1597', '1', 'admin/view/log/1', 'GET', '127.0.0.1', '[]', '2020-07-27 09:25:37', '2020-07-27 09:25:37');
INSERT INTO `admin_operation_log` VALUES ('1598', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 09:27:46', '2020-07-27 09:27:46');
INSERT INTO `admin_operation_log` VALUES ('1599', '1', 'admin/view/log/1', 'GET', '127.0.0.1', '[]', '2020-07-27 09:27:48', '2020-07-27 09:27:48');
INSERT INTO `admin_operation_log` VALUES ('1600', '1', 'admin/view/log/1', 'GET', '127.0.0.1', '[]', '2020-07-27 09:27:55', '2020-07-27 09:27:55');
INSERT INTO `admin_operation_log` VALUES ('1601', '1', 'admin/view/log/2', 'GET', '127.0.0.1', '[]', '2020-07-27 09:28:02', '2020-07-27 09:28:02');
INSERT INTO `admin_operation_log` VALUES ('1602', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 09:30:34', '2020-07-27 09:30:34');
INSERT INTO `admin_operation_log` VALUES ('1603', '1', 'admin/view/video/1', 'GET', '127.0.0.1', '[]', '2020-07-27 09:30:39', '2020-07-27 09:30:39');
INSERT INTO `admin_operation_log` VALUES ('1604', '1', 'admin/view/video/2', 'GET', '127.0.0.1', '[]', '2020-07-27 09:30:44', '2020-07-27 09:30:44');
INSERT INTO `admin_operation_log` VALUES ('1605', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:31:08', '2020-07-27 09:31:08');
INSERT INTO `admin_operation_log` VALUES ('1606', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:31:10', '2020-07-27 09:31:10');
INSERT INTO `admin_operation_log` VALUES ('1607', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 09:32:32', '2020-07-27 09:32:32');
INSERT INTO `admin_operation_log` VALUES ('1608', '1', 'admin/view/log/1', 'GET', '127.0.0.1', '[]', '2020-07-27 09:32:34', '2020-07-27 09:32:34');
INSERT INTO `admin_operation_log` VALUES ('1609', '1', 'admin/view/log/1', 'GET', '127.0.0.1', '[]', '2020-07-27 09:33:04', '2020-07-27 09:33:04');
INSERT INTO `admin_operation_log` VALUES ('1610', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:33:19', '2020-07-27 09:33:19');
INSERT INTO `admin_operation_log` VALUES ('1611', '1', 'admin/view/video/1', 'GET', '127.0.0.1', '[]', '2020-07-27 09:33:22', '2020-07-27 09:33:22');
INSERT INTO `admin_operation_log` VALUES ('1612', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:33:26', '2020-07-27 09:33:26');
INSERT INTO `admin_operation_log` VALUES ('1613', '1', 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:33:53', '2020-07-27 09:33:53');
INSERT INTO `admin_operation_log` VALUES ('1614', '1', 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:33:56', '2020-07-27 09:33:56');
INSERT INTO `admin_operation_log` VALUES ('1615', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:33:58', '2020-07-27 09:33:58');
INSERT INTO `admin_operation_log` VALUES ('1616', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:34:00', '2020-07-27 09:34:00');
INSERT INTO `admin_operation_log` VALUES ('1617', '1', 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:34:03', '2020-07-27 09:34:03');
INSERT INTO `admin_operation_log` VALUES ('1618', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:34:07', '2020-07-27 09:34:07');
INSERT INTO `admin_operation_log` VALUES ('1619', '1', 'admin/helpers/icons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:34:10', '2020-07-27 09:34:10');
INSERT INTO `admin_operation_log` VALUES ('1620', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 09:34:19', '2020-07-27 09:34:19');
INSERT INTO `admin_operation_log` VALUES ('1621', '1', 'admin/view/log/1', 'GET', '127.0.0.1', '[]', '2020-07-27 09:34:33', '2020-07-27 09:34:33');
INSERT INTO `admin_operation_log` VALUES ('1622', '1', 'admin/view/log/1', 'GET', '127.0.0.1', '[]', '2020-07-27 09:34:50', '2020-07-27 09:34:50');
INSERT INTO `admin_operation_log` VALUES ('1623', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 09:37:20', '2020-07-27 09:37:20');
INSERT INTO `admin_operation_log` VALUES ('1624', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-27 09:40:33', '2020-07-27 09:40:33');
INSERT INTO `admin_operation_log` VALUES ('1625', '1', 'admin/view/log/1', 'GET', '127.0.0.1', '[]', '2020-07-27 09:40:58', '2020-07-27 09:40:58');
INSERT INTO `admin_operation_log` VALUES ('1626', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-28 01:00:53', '2020-07-28 01:00:53');
INSERT INTO `admin_operation_log` VALUES ('1627', '1', 'admin/view/log/1', 'GET', '127.0.0.1', '[]', '2020-07-28 01:01:04', '2020-07-28 01:01:04');
INSERT INTO `admin_operation_log` VALUES ('1628', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 01:01:11', '2020-07-28 01:01:11');
INSERT INTO `admin_operation_log` VALUES ('1629', '1', 'admin/view/video/1', 'GET', '127.0.0.1', '[]', '2020-07-28 01:01:14', '2020-07-28 01:01:14');
INSERT INTO `admin_operation_log` VALUES ('1630', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 01:01:18', '2020-07-28 01:01:18');
INSERT INTO `admin_operation_log` VALUES ('1631', '1', 'admin/view/log/2', 'GET', '127.0.0.1', '[]', '2020-07-28 01:01:21', '2020-07-28 01:01:21');
INSERT INTO `admin_operation_log` VALUES ('1632', '1', 'admin/view/log/1', 'GET', '127.0.0.1', '[]', '2020-07-28 01:07:40', '2020-07-28 01:07:40');
INSERT INTO `admin_operation_log` VALUES ('1633', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 01:08:17', '2020-07-28 01:08:17');
INSERT INTO `admin_operation_log` VALUES ('1634', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 01:08:50', '2020-07-28 01:08:50');
INSERT INTO `admin_operation_log` VALUES ('1635', '1', 'admin/device/device_video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 01:08:53', '2020-07-28 01:08:53');
INSERT INTO `admin_operation_log` VALUES ('1636', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 01:08:55', '2020-07-28 01:08:55');
INSERT INTO `admin_operation_log` VALUES ('1637', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '[]', '2020-07-28 01:13:59', '2020-07-28 01:13:59');
INSERT INTO `admin_operation_log` VALUES ('1638', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '[]', '2020-07-28 01:15:29', '2020-07-28 01:15:29');
INSERT INTO `admin_operation_log` VALUES ('1639', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '[]', '2020-07-28 01:15:50', '2020-07-28 01:15:50');
INSERT INTO `admin_operation_log` VALUES ('1640', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 01:16:13', '2020-07-28 01:16:13');
INSERT INTO `admin_operation_log` VALUES ('1641', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-28 01:20:33', '2020-07-28 01:20:33');
INSERT INTO `admin_operation_log` VALUES ('1642', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 01:20:52', '2020-07-28 01:20:52');
INSERT INTO `admin_operation_log` VALUES ('1643', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 01:39:06', '2020-07-28 01:39:06');
INSERT INTO `admin_operation_log` VALUES ('1644', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-28 02:14:05', '2020-07-28 02:14:05');
INSERT INTO `admin_operation_log` VALUES ('1645', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 02:29:08', '2020-07-28 02:29:08');
INSERT INTO `admin_operation_log` VALUES ('1646', '0', 'admin/auth/login', 'POST', '192.168.199.229', '{\"_token\":\"wzVYwrVRCEizLv4BGYeH0c0x2AOfbWy0Vbtfrk1r\",\"username\":\"\\u5c0f\\u7ea2\",\"password\":\"11\",\"remember\":\"1\"}', '2020-07-28 02:29:14', '2020-07-28 02:29:14');
INSERT INTO `admin_operation_log` VALUES ('1647', '0', 'admin/auth/login', 'POST', '192.168.199.229', '{\"_token\":\"wzVYwrVRCEizLv4BGYeH0c0x2AOfbWy0Vbtfrk1r\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-28 02:29:23', '2020-07-28 02:29:23');
INSERT INTO `admin_operation_log` VALUES ('1648', '1', 'admin', 'GET', '192.168.199.229', '[]', '2020-07-28 02:29:23', '2020-07-28 02:29:23');
INSERT INTO `admin_operation_log` VALUES ('1649', '1', 'admin', 'GET', '192.168.199.229', '{\"tdsourcetag\":\"s_pctim_aiomsg\"}', '2020-07-28 02:29:48', '2020-07-28 02:29:48');
INSERT INTO `admin_operation_log` VALUES ('1650', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 02:30:38', '2020-07-28 02:30:38');
INSERT INTO `admin_operation_log` VALUES ('1651', '0', 'admin/auth/login', 'GET', '192.168.199.169', '[]', '2020-07-28 02:30:57', '2020-07-28 02:30:57');
INSERT INTO `admin_operation_log` VALUES ('1652', '0', 'admin/auth/login', 'POST', '192.168.199.169', '{\"_token\":\"7AqliumNgMjNV4xkxYFQZ8LhR2NVE9x4KVSlnObE\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 02:31:01', '2020-07-28 02:31:01');
INSERT INTO `admin_operation_log` VALUES ('1653', '0', 'admin/auth/login', 'GET', '192.168.199.169', '[]', '2020-07-28 02:31:02', '2020-07-28 02:31:02');
INSERT INTO `admin_operation_log` VALUES ('1654', '1', 'admin', 'GET', '192.168.199.229', '[]', '2020-07-28 02:31:46', '2020-07-28 02:31:46');
INSERT INTO `admin_operation_log` VALUES ('1655', '1', 'admin', 'GET', '192.168.199.229', '[]', '2020-07-28 02:32:56', '2020-07-28 02:32:56');
INSERT INTO `admin_operation_log` VALUES ('1656', '1', 'admin/auth/logout', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 02:33:00', '2020-07-28 02:33:00');
INSERT INTO `admin_operation_log` VALUES ('1657', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 02:33:00', '2020-07-28 02:33:00');
INSERT INTO `admin_operation_log` VALUES ('1658', '0', 'admin/auth/login', 'POST', '192.168.199.229', '{\"_token\":\"UuUQSZ1DGiyazSnlgZ4tujPjNFBxgsbHp8C6sO7a\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 02:33:11', '2020-07-28 02:33:11');
INSERT INTO `admin_operation_log` VALUES ('1659', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 02:33:12', '2020-07-28 02:33:12');
INSERT INTO `admin_operation_log` VALUES ('1660', '0', 'admin/auth/login', 'POST', '192.168.199.229', '{\"_token\":\"IuN5EhJB58ZJ644M8CtKQssS9HFTXUqusoNAJYre\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-28 02:33:20', '2020-07-28 02:33:20');
INSERT INTO `admin_operation_log` VALUES ('1661', '1', 'admin', 'GET', '192.168.199.229', '[]', '2020-07-28 02:33:21', '2020-07-28 02:33:21');
INSERT INTO `admin_operation_log` VALUES ('1662', '0', 'admin/auth/login', 'POST', '192.168.199.169', '{\"_token\":\"QsFZwPuopTSf8KciwWnRBzFXD0YfC3JMqOAa428Q\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 02:37:30', '2020-07-28 02:37:30');
INSERT INTO `admin_operation_log` VALUES ('1663', '0', 'admin/auth/login', 'GET', '192.168.199.169', '[]', '2020-07-28 02:37:31', '2020-07-28 02:37:31');
INSERT INTO `admin_operation_log` VALUES ('1664', '1', 'admin/auth/logout', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 02:42:22', '2020-07-28 02:42:22');
INSERT INTO `admin_operation_log` VALUES ('1665', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 02:42:22', '2020-07-28 02:42:22');
INSERT INTO `admin_operation_log` VALUES ('1666', '0', 'admin/auth/login', 'POST', '192.168.199.229', '{\"_token\":\"LcggnKu1hLo7bTgUMkLf5Ec4BcCyBtc8XLP5BgQT\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 02:44:11', '2020-07-28 02:44:11');
INSERT INTO `admin_operation_log` VALUES ('1667', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 02:44:12', '2020-07-28 02:44:12');
INSERT INTO `admin_operation_log` VALUES ('1668', '0', 'admin/auth/login', 'POST', '192.168.199.229', '{\"_token\":\"TYqoKlj1N1x3hDLv73GLKw6P31RAXUvHkPjN729c\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 02:44:50', '2020-07-28 02:44:50');
INSERT INTO `admin_operation_log` VALUES ('1669', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 02:44:50', '2020-07-28 02:44:50');
INSERT INTO `admin_operation_log` VALUES ('1670', '0', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 02:48:59', '2020-07-28 02:48:59');
INSERT INTO `admin_operation_log` VALUES ('1671', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 02:48:59', '2020-07-28 02:48:59');
INSERT INTO `admin_operation_log` VALUES ('1672', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 02:49:52', '2020-07-28 02:49:52');
INSERT INTO `admin_operation_log` VALUES ('1673', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"LpvlIOq5os7ybxKpGQJ610Z8rtfxyCmvE44lnHPg\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 02:50:00', '2020-07-28 02:50:00');
INSERT INTO `admin_operation_log` VALUES ('1674', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 02:50:01', '2020-07-28 02:50:01');
INSERT INTO `admin_operation_log` VALUES ('1675', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 02:52:06', '2020-07-28 02:52:06');
INSERT INTO `admin_operation_log` VALUES ('1676', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 02:52:33', '2020-07-28 02:52:33');
INSERT INTO `admin_operation_log` VALUES ('1677', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"WvmLDDopH0uvqF4PDrKIOYxAwpKfuoM239yUm0rT\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 02:52:57', '2020-07-28 02:52:57');
INSERT INTO `admin_operation_log` VALUES ('1678', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 02:52:58', '2020-07-28 02:52:58');
INSERT INTO `admin_operation_log` VALUES ('1679', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 02:55:58', '2020-07-28 02:55:58');
INSERT INTO `admin_operation_log` VALUES ('1680', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"gwq5IqtzCe4IpzsiUzrefdNmymOWhRRJCtowzaF2\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 02:56:05', '2020-07-28 02:56:05');
INSERT INTO `admin_operation_log` VALUES ('1681', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 02:56:05', '2020-07-28 02:56:05');
INSERT INTO `admin_operation_log` VALUES ('1682', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 03:28:46', '2020-07-28 03:28:46');
INSERT INTO `admin_operation_log` VALUES ('1683', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 03:32:13', '2020-07-28 03:32:13');
INSERT INTO `admin_operation_log` VALUES ('1684', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"IU4YxDKquyPZXQMLfsR4nUj3ucHKfwfkfSjy3r0i\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 03:32:19', '2020-07-28 03:32:19');
INSERT INTO `admin_operation_log` VALUES ('1685', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 03:32:20', '2020-07-28 03:32:20');
INSERT INTO `admin_operation_log` VALUES ('1686', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"KUfUbWPTbjJutmoRYDDTMsb0hHi8ST4rH6YiPGba\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 03:32:33', '2020-07-28 03:32:33');
INSERT INTO `admin_operation_log` VALUES ('1687', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 03:32:34', '2020-07-28 03:32:34');
INSERT INTO `admin_operation_log` VALUES ('1688', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 03:32:58', '2020-07-28 03:32:58');
INSERT INTO `admin_operation_log` VALUES ('1689', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"xV6pxSIBp27O83YKZqwIwgAY6cM1KSSJg7MBc05Z\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 03:34:31', '2020-07-28 03:34:31');
INSERT INTO `admin_operation_log` VALUES ('1690', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 03:34:32', '2020-07-28 03:34:32');
INSERT INTO `admin_operation_log` VALUES ('1691', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"8Pe41PskajLgz8YAA2VoRSCuIwMB27eHKmI5v1BM\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 03:34:39', '2020-07-28 03:34:39');
INSERT INTO `admin_operation_log` VALUES ('1692', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 03:34:39', '2020-07-28 03:34:39');
INSERT INTO `admin_operation_log` VALUES ('1693', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"wyxLosd9nxF1B7KbCW4lW6sdh9r0Id4n6g9Hqogt\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-28 03:39:28', '2020-07-28 03:39:28');
INSERT INTO `admin_operation_log` VALUES ('1694', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-28 03:39:29', '2020-07-28 03:39:29');
INSERT INTO `admin_operation_log` VALUES ('1695', '1', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 03:39:37', '2020-07-28 03:39:37');
INSERT INTO `admin_operation_log` VALUES ('1696', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 03:40:07', '2020-07-28 03:40:07');
INSERT INTO `admin_operation_log` VALUES ('1697', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-07-28 03:40:13', '2020-07-28 03:40:13');
INSERT INTO `admin_operation_log` VALUES ('1698', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 03:40:25', '2020-07-28 03:40:25');
INSERT INTO `admin_operation_log` VALUES ('1699', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 03:40:36', '2020-07-28 03:40:36');
INSERT INTO `admin_operation_log` VALUES ('1700', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-28 03:40:47', '2020-07-28 03:40:47');
INSERT INTO `admin_operation_log` VALUES ('1701', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 03:40:51', '2020-07-28 03:40:51');
INSERT INTO `admin_operation_log` VALUES ('1702', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 03:41:47', '2020-07-28 03:41:47');
INSERT INTO `admin_operation_log` VALUES ('1703', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 03:41:53', '2020-07-28 03:41:53');
INSERT INTO `admin_operation_log` VALUES ('1704', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 03:41:54', '2020-07-28 03:41:54');
INSERT INTO `admin_operation_log` VALUES ('1705', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 03:41:56', '2020-07-28 03:41:56');
INSERT INTO `admin_operation_log` VALUES ('1706', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 03:42:04', '2020-07-28 03:42:04');
INSERT INTO `admin_operation_log` VALUES ('1707', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 03:42:08', '2020-07-28 03:42:08');
INSERT INTO `admin_operation_log` VALUES ('1708', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"qBZ1096IamePcQPvCJYXDCiezE6GdujA17GB7Aat\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-28 03:42:47', '2020-07-28 03:42:47');
INSERT INTO `admin_operation_log` VALUES ('1709', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-28 03:42:47', '2020-07-28 03:42:47');
INSERT INTO `admin_operation_log` VALUES ('1710', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-28 03:44:34', '2020-07-28 03:44:34');
INSERT INTO `admin_operation_log` VALUES ('1711', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-28 03:44:41', '2020-07-28 03:44:41');
INSERT INTO `admin_operation_log` VALUES ('1712', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 03:46:39', '2020-07-28 03:46:39');
INSERT INTO `admin_operation_log` VALUES ('1713', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 03:46:54', '2020-07-28 03:46:54');
INSERT INTO `admin_operation_log` VALUES ('1714', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 03:47:00', '2020-07-28 03:47:00');
INSERT INTO `admin_operation_log` VALUES ('1715', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 03:47:00', '2020-07-28 03:47:00');
INSERT INTO `admin_operation_log` VALUES ('1716', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"rwwc7ToUbPda9Jqud2gRcZoQjw9a5StUXWGZI1xM\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 03:47:07', '2020-07-28 03:47:07');
INSERT INTO `admin_operation_log` VALUES ('1717', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 03:47:08', '2020-07-28 03:47:08');
INSERT INTO `admin_operation_log` VALUES ('1718', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"w5SLfKUnjKlrrX0DsPjU0lVEf59dFlaAooInV7tZ\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 03:47:29', '2020-07-28 03:47:29');
INSERT INTO `admin_operation_log` VALUES ('1719', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 03:47:30', '2020-07-28 03:47:30');
INSERT INTO `admin_operation_log` VALUES ('1720', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"tZKjND59UptMwI5HNPqpgAn3LPeXmkzBiT7At8Wp\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 03:47:54', '2020-07-28 03:47:54');
INSERT INTO `admin_operation_log` VALUES ('1721', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 03:47:55', '2020-07-28 03:47:55');
INSERT INTO `admin_operation_log` VALUES ('1722', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"vKYxUq3e8YPE0hmjReinYQJORwDY3tGl5fN38yPW\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-28 03:48:24', '2020-07-28 03:48:24');
INSERT INTO `admin_operation_log` VALUES ('1723', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-28 03:48:25', '2020-07-28 03:48:25');
INSERT INTO `admin_operation_log` VALUES ('1724', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-28 05:03:08', '2020-07-28 05:03:08');
INSERT INTO `admin_operation_log` VALUES ('1725', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-28 05:04:32', '2020-07-28 05:04:32');
INSERT INTO `admin_operation_log` VALUES ('1726', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 05:09:57', '2020-07-28 05:09:57');
INSERT INTO `admin_operation_log` VALUES ('1727', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 05:09:57', '2020-07-28 05:09:57');
INSERT INTO `admin_operation_log` VALUES ('1728', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"5M7pPF3gF0lsVmD2czmGUAGlIywweR5fvCbLQyRm\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 05:10:04', '2020-07-28 05:10:04');
INSERT INTO `admin_operation_log` VALUES ('1729', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 05:10:05', '2020-07-28 05:10:05');
INSERT INTO `admin_operation_log` VALUES ('1730', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 05:13:40', '2020-07-28 05:13:40');
INSERT INTO `admin_operation_log` VALUES ('1731', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"pv1TO9ye7HTCgyjXv3oUFAasuRQH2gI78aLWFQ4y\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 05:13:55', '2020-07-28 05:13:55');
INSERT INTO `admin_operation_log` VALUES ('1732', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 05:13:56', '2020-07-28 05:13:56');
INSERT INTO `admin_operation_log` VALUES ('1733', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"MhHEWZ4oMyhiRw0FQJdVtNchjC5Aw12c3hJmULZq\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 05:14:01', '2020-07-28 05:14:01');
INSERT INTO `admin_operation_log` VALUES ('1734', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 05:14:02', '2020-07-28 05:14:02');
INSERT INTO `admin_operation_log` VALUES ('1735', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"kHp8rUo4rD6zvgohMYoFUtgOEFJiqH464cpAuIul\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 05:14:08', '2020-07-28 05:14:08');
INSERT INTO `admin_operation_log` VALUES ('1736', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 05:14:09', '2020-07-28 05:14:09');
INSERT INTO `admin_operation_log` VALUES ('1737', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"YLx7IIPTFAZCSdC8IreoMZJMWiO41GhnAzbc9af9\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-28 05:14:22', '2020-07-28 05:14:22');
INSERT INTO `admin_operation_log` VALUES ('1738', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-28 05:14:22', '2020-07-28 05:14:22');
INSERT INTO `admin_operation_log` VALUES ('1739', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 05:14:32', '2020-07-28 05:14:32');
INSERT INTO `admin_operation_log` VALUES ('1740', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 05:14:33', '2020-07-28 05:14:33');
INSERT INTO `admin_operation_log` VALUES ('1741', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 05:17:46', '2020-07-28 05:17:46');
INSERT INTO `admin_operation_log` VALUES ('1742', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"WGutoYpH1mJ16uhRfKlW4Jnz2hC2INdTV2kDgIxB\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 05:17:51', '2020-07-28 05:17:51');
INSERT INTO `admin_operation_log` VALUES ('1743', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 05:17:52', '2020-07-28 05:17:52');
INSERT INTO `admin_operation_log` VALUES ('1744', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 05:42:33', '2020-07-28 05:42:33');
INSERT INTO `admin_operation_log` VALUES ('1745', '0', 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2020-07-28 05:42:36', '2020-07-28 05:42:36');
INSERT INTO `admin_operation_log` VALUES ('1746', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 05:42:39', '2020-07-28 05:42:39');
INSERT INTO `admin_operation_log` VALUES ('1747', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 05:42:39', '2020-07-28 05:42:39');
INSERT INTO `admin_operation_log` VALUES ('1748', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 05:42:39', '2020-07-28 05:42:39');
INSERT INTO `admin_operation_log` VALUES ('1749', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 05:43:30', '2020-07-28 05:43:30');
INSERT INTO `admin_operation_log` VALUES ('1750', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 05:46:54', '2020-07-28 05:46:54');
INSERT INTO `admin_operation_log` VALUES ('1751', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"P1baaby68OJktwIWYYEGepJqXknYnwmaKATkXqZI\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 06:33:50', '2020-07-28 06:33:50');
INSERT INTO `admin_operation_log` VALUES ('1752', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-28 06:33:50', '2020-07-28 06:33:50');
INSERT INTO `admin_operation_log` VALUES ('1753', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 06:34:01', '2020-07-28 06:34:01');
INSERT INTO `admin_operation_log` VALUES ('1754', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 06:34:01', '2020-07-28 06:34:01');
INSERT INTO `admin_operation_log` VALUES ('1755', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"D9iaGSDGCdFZorhEfUvq3nD7GiRZ5atzticHES5x\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 06:34:04', '2020-07-28 06:34:04');
INSERT INTO `admin_operation_log` VALUES ('1756', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-28 06:34:05', '2020-07-28 06:34:05');
INSERT INTO `admin_operation_log` VALUES ('1757', '1', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 06:34:22', '2020-07-28 06:34:22');
INSERT INTO `admin_operation_log` VALUES ('1758', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 06:34:27', '2020-07-28 06:34:27');
INSERT INTO `admin_operation_log` VALUES ('1759', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 06:34:28', '2020-07-28 06:34:28');
INSERT INTO `admin_operation_log` VALUES ('1760', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"TNEFRsLjqbjMWpM0MbV0qULdNJGbqJV6azF0YIUZ\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 06:34:31', '2020-07-28 06:34:31');
INSERT INTO `admin_operation_log` VALUES ('1761', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-28 06:34:31', '2020-07-28 06:34:31');
INSERT INTO `admin_operation_log` VALUES ('1762', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 06:35:12', '2020-07-28 06:35:12');
INSERT INTO `admin_operation_log` VALUES ('1763', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 06:35:13', '2020-07-28 06:35:13');
INSERT INTO `admin_operation_log` VALUES ('1764', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"1kHFs5UPTRgM4zBtCP56gPbSXPgGqHHMw4s6Roym\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 06:35:17', '2020-07-28 06:35:17');
INSERT INTO `admin_operation_log` VALUES ('1765', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-28 06:35:17', '2020-07-28 06:35:17');
INSERT INTO `admin_operation_log` VALUES ('1766', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 06:35:51', '2020-07-28 06:35:51');
INSERT INTO `admin_operation_log` VALUES ('1767', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 06:36:11', '2020-07-28 06:36:11');
INSERT INTO `admin_operation_log` VALUES ('1768', '0', 'admin/auth/login', 'POST', '192.168.199.229', '{\"_token\":\"FylDVHzj038iIvz6XNyuqpkLXntiCxWMsudsVSZw\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 06:36:21', '2020-07-28 06:36:21');
INSERT INTO `admin_operation_log` VALUES ('1769', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 06:36:22', '2020-07-28 06:36:22');
INSERT INTO `admin_operation_log` VALUES ('1770', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 06:36:27', '2020-07-28 06:36:27');
INSERT INTO `admin_operation_log` VALUES ('1771', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 06:36:27', '2020-07-28 06:36:27');
INSERT INTO `admin_operation_log` VALUES ('1772', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"cRp2foKpNe0qpNtrWxUMUYKXdQFRxZjNn3wMCJLo\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 06:36:31', '2020-07-28 06:36:31');
INSERT INTO `admin_operation_log` VALUES ('1773', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-28 06:36:32', '2020-07-28 06:36:32');
INSERT INTO `admin_operation_log` VALUES ('1774', '0', 'admin/auth/login', 'POST', '192.168.199.229', '{\"_token\":\"WhdGZ9w91A7j04WfntsTuTQynbN4KApmB68RFjdA\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 06:36:41', '2020-07-28 06:36:41');
INSERT INTO `admin_operation_log` VALUES ('1775', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 06:36:41', '2020-07-28 06:36:41');
INSERT INTO `admin_operation_log` VALUES ('1776', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 06:37:26', '2020-07-28 06:37:26');
INSERT INTO `admin_operation_log` VALUES ('1777', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 06:37:26', '2020-07-28 06:37:26');
INSERT INTO `admin_operation_log` VALUES ('1778', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"Fyby5rs93Xk9gbbLHLGWCcnldPB6NmRvmRtU223G\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 06:37:31', '2020-07-28 06:37:31');
INSERT INTO `admin_operation_log` VALUES ('1779', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-28 06:37:32', '2020-07-28 06:37:32');
INSERT INTO `admin_operation_log` VALUES ('1780', '0', 'admin/auth/login', 'POST', '192.168.199.229', '{\"_token\":\"WFNKQvEJagfBPLpSriHLYqZDTcqG83kzfSjTXhJA\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-28 06:37:49', '2020-07-28 06:37:49');
INSERT INTO `admin_operation_log` VALUES ('1781', '1', 'admin', 'GET', '192.168.199.229', '{\"tdsourcetag\":\"s_pctim_aiomsg\"}', '2020-07-28 06:37:50', '2020-07-28 06:37:50');
INSERT INTO `admin_operation_log` VALUES ('1782', '1', 'admin/auth/logout', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 06:37:55', '2020-07-28 06:37:55');
INSERT INTO `admin_operation_log` VALUES ('1783', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 06:37:56', '2020-07-28 06:37:56');
INSERT INTO `admin_operation_log` VALUES ('1784', '0', 'admin/auth/login', 'POST', '192.168.199.229', '{\"_token\":\"wWp3xdp6Cb2cTozyebAP6Iw9TceP6aLQsw54DIJo\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 06:38:02', '2020-07-28 06:38:02');
INSERT INTO `admin_operation_log` VALUES ('1785', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 06:38:03', '2020-07-28 06:38:03');
INSERT INTO `admin_operation_log` VALUES ('1786', '0', 'admin/auth/login', 'POST', '192.168.199.229', '{\"_token\":\"hXEULPYI1inanFUYUsQNMq869a4UniKfAysDkjRp\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 06:38:33', '2020-07-28 06:38:33');
INSERT INTO `admin_operation_log` VALUES ('1787', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 06:38:34', '2020-07-28 06:38:34');
INSERT INTO `admin_operation_log` VALUES ('1788', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 06:38:43', '2020-07-28 06:38:43');
INSERT INTO `admin_operation_log` VALUES ('1789', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 06:38:44', '2020-07-28 06:38:44');
INSERT INTO `admin_operation_log` VALUES ('1790', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"3A1pL3gSAvRxlnV7tKOFw4SlvBZtaO4os6PdO6Er\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 06:38:48', '2020-07-28 06:38:48');
INSERT INTO `admin_operation_log` VALUES ('1791', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-28 06:38:48', '2020-07-28 06:38:48');
INSERT INTO `admin_operation_log` VALUES ('1792', '0', 'admin/auth/login', 'POST', '192.168.199.229', '{\"_token\":\"rWGB5qAnRP0fiKJqu3oml0AX72TstiD6cbpZPF8B\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 06:39:10', '2020-07-28 06:39:10');
INSERT INTO `admin_operation_log` VALUES ('1793', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 06:39:11', '2020-07-28 06:39:11');
INSERT INTO `admin_operation_log` VALUES ('1794', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 06:42:24', '2020-07-28 06:42:24');
INSERT INTO `admin_operation_log` VALUES ('1795', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 06:42:36', '2020-07-28 06:42:36');
INSERT INTO `admin_operation_log` VALUES ('1796', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 06:43:30', '2020-07-28 06:43:30');
INSERT INTO `admin_operation_log` VALUES ('1797', '0', 'admin/auth/login', 'POST', '192.168.199.229', '{\"_token\":\"vFqRmvdk31ot5ravtLRu0Pmo2diax5ASlA3sUJ99\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 06:43:38', '2020-07-28 06:43:38');
INSERT INTO `admin_operation_log` VALUES ('1798', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 06:43:39', '2020-07-28 06:43:39');
INSERT INTO `admin_operation_log` VALUES ('1799', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 06:43:51', '2020-07-28 06:43:51');
INSERT INTO `admin_operation_log` VALUES ('1800', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 06:46:47', '2020-07-28 06:46:47');
INSERT INTO `admin_operation_log` VALUES ('1801', '0', 'admin/auth/login', 'POST', '192.168.199.229', '{\"_token\":\"EIla1mJ2FsYBbJNf7IgNFGbw22rQfY3y6NrGVojk\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 06:46:55', '2020-07-28 06:46:55');
INSERT INTO `admin_operation_log` VALUES ('1802', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 06:46:56', '2020-07-28 06:46:56');
INSERT INTO `admin_operation_log` VALUES ('1803', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 06:54:31', '2020-07-28 06:54:31');
INSERT INTO `admin_operation_log` VALUES ('1804', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"ux4Xvv0Y7nhOuIEUaDMkZsLVgZeNv2SdKtvkzbrL\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 06:54:36', '2020-07-28 06:54:36');
INSERT INTO `admin_operation_log` VALUES ('1805', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 06:54:36', '2020-07-28 06:54:36');
INSERT INTO `admin_operation_log` VALUES ('1806', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"F3OZVJzDBS9DvOiPzZE95S8LGQTKGxqJkAmEMhl5\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 06:54:46', '2020-07-28 06:54:46');
INSERT INTO `admin_operation_log` VALUES ('1807', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 06:54:47', '2020-07-28 06:54:47');
INSERT INTO `admin_operation_log` VALUES ('1808', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"WcPQnBHyNf8lYXswpHrd29qYL16BEDW201HfZEBj\",\"username\":\"\\u5c0f\\u7ea2\",\"password\":\"11\"}', '2020-07-28 06:54:53', '2020-07-28 06:54:53');
INSERT INTO `admin_operation_log` VALUES ('1809', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"WcPQnBHyNf8lYXswpHrd29qYL16BEDW201HfZEBj\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 06:55:00', '2020-07-28 06:55:00');
INSERT INTO `admin_operation_log` VALUES ('1810', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 06:55:01', '2020-07-28 06:55:01');
INSERT INTO `admin_operation_log` VALUES ('1811', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 06:57:20', '2020-07-28 06:57:20');
INSERT INTO `admin_operation_log` VALUES ('1812', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"Pyzsz2WmYYBg5DrY10A4PtAlrbMp891nTpnMhkmS\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 06:57:25', '2020-07-28 06:57:25');
INSERT INTO `admin_operation_log` VALUES ('1813', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 06:57:26', '2020-07-28 06:57:26');
INSERT INTO `admin_operation_log` VALUES ('1814', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"Sv0r0b3JtlMED0V0cf1eoly4tm1EwFrnjlYafa5s\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 06:58:08', '2020-07-28 06:58:08');
INSERT INTO `admin_operation_log` VALUES ('1815', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 06:58:08', '2020-07-28 06:58:08');
INSERT INTO `admin_operation_log` VALUES ('1816', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 06:58:57', '2020-07-28 06:58:57');
INSERT INTO `admin_operation_log` VALUES ('1817', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"3wriGefMHjZnV4CkVSZDlUI2serw1eZvqYYPangh\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 06:59:09', '2020-07-28 06:59:09');
INSERT INTO `admin_operation_log` VALUES ('1818', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 06:59:09', '2020-07-28 06:59:09');
INSERT INTO `admin_operation_log` VALUES ('1819', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"mk5jITxYAsH6JAL0Rl2c6PcTMaffpAStBIxbcG42\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 06:59:27', '2020-07-28 06:59:27');
INSERT INTO `admin_operation_log` VALUES ('1820', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"mk5jITxYAsH6JAL0Rl2c6PcTMaffpAStBIxbcG42\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 06:59:31', '2020-07-28 06:59:31');
INSERT INTO `admin_operation_log` VALUES ('1821', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 06:59:32', '2020-07-28 06:59:32');
INSERT INTO `admin_operation_log` VALUES ('1822', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 07:00:29', '2020-07-28 07:00:29');
INSERT INTO `admin_operation_log` VALUES ('1823', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 07:05:58', '2020-07-28 07:05:58');
INSERT INTO `admin_operation_log` VALUES ('1824', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 07:11:07', '2020-07-28 07:11:07');
INSERT INTO `admin_operation_log` VALUES ('1825', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"DJroRMXtTVAH0QBHeIRXwvvNcoqwIMHpNexn8ZhJ\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 07:11:14', '2020-07-28 07:11:14');
INSERT INTO `admin_operation_log` VALUES ('1826', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-28 07:11:14', '2020-07-28 07:11:14');
INSERT INTO `admin_operation_log` VALUES ('1827', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 07:11:26', '2020-07-28 07:11:26');
INSERT INTO `admin_operation_log` VALUES ('1828', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 07:11:32', '2020-07-28 07:11:32');
INSERT INTO `admin_operation_log` VALUES ('1829', '0', 'admin/auth/login', 'POST', '192.168.199.229', '{\"_token\":\"2DjQsodsrhf1Xf9VRuRgNXrbI6BbUFI4zKdHL7aj\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 07:11:37', '2020-07-28 07:11:37');
INSERT INTO `admin_operation_log` VALUES ('1830', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 07:11:38', '2020-07-28 07:11:38');
INSERT INTO `admin_operation_log` VALUES ('1831', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 07:11:47', '2020-07-28 07:11:47');
INSERT INTO `admin_operation_log` VALUES ('1832', '0', 'admin/auth/login', 'POST', '192.168.199.229', '{\"_token\":\"Qph9rv4mKjIa3nfUogT4dzEG1HxqOgtDuzZmaO86\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 07:11:53', '2020-07-28 07:11:53');
INSERT INTO `admin_operation_log` VALUES ('1833', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 07:11:53', '2020-07-28 07:11:53');
INSERT INTO `admin_operation_log` VALUES ('1834', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-28 07:14:13', '2020-07-28 07:14:13');
INSERT INTO `admin_operation_log` VALUES ('1835', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:14:17', '2020-07-28 07:14:17');
INSERT INTO `admin_operation_log` VALUES ('1836', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-28 07:14:18', '2020-07-28 07:14:18');
INSERT INTO `admin_operation_log` VALUES ('1837', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"41HjL6zFkeeWgVUusRgw1nhJfoKdJDeJGqTWxonM\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 07:14:20', '2020-07-28 07:14:20');
INSERT INTO `admin_operation_log` VALUES ('1838', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-28 07:14:21', '2020-07-28 07:14:21');
INSERT INTO `admin_operation_log` VALUES ('1839', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 07:14:32', '2020-07-28 07:14:32');
INSERT INTO `admin_operation_log` VALUES ('1840', '0', 'admin/auth/login', 'POST', '192.168.199.229', '{\"_token\":\"CqMiFnqlVdh67RTO194Uk7FDit1NBfpHqHcHnxBO\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 07:14:37', '2020-07-28 07:14:37');
INSERT INTO `admin_operation_log` VALUES ('1841', '1', 'admin', 'GET', '192.168.199.229', '[]', '2020-07-28 07:14:38', '2020-07-28 07:14:38');
INSERT INTO `admin_operation_log` VALUES ('1842', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:15:37', '2020-07-28 07:15:37');
INSERT INTO `admin_operation_log` VALUES ('1843', '1', 'admin/device/device/1', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:16:09', '2020-07-28 07:16:09');
INSERT INTO `admin_operation_log` VALUES ('1844', '1', 'admin/device/device/1', 'GET', '192.168.199.229', '[]', '2020-07-28 07:16:09', '2020-07-28 07:16:09');
INSERT INTO `admin_operation_log` VALUES ('1845', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 07:16:14', '2020-07-28 07:16:14');
INSERT INTO `admin_operation_log` VALUES ('1846', '1', 'admin/view/log/1', 'GET', '192.168.199.229', '[]', '2020-07-28 07:16:17', '2020-07-28 07:16:17');
INSERT INTO `admin_operation_log` VALUES ('1847', '1', 'admin/view/video/1', 'GET', '192.168.199.229', '[]', '2020-07-28 07:16:24', '2020-07-28 07:16:24');
INSERT INTO `admin_operation_log` VALUES ('1848', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:17:02', '2020-07-28 07:17:02');
INSERT INTO `admin_operation_log` VALUES ('1849', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:17:07', '2020-07-28 07:17:07');
INSERT INTO `admin_operation_log` VALUES ('1850', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:17:09', '2020-07-28 07:17:09');
INSERT INTO `admin_operation_log` VALUES ('1851', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:17:20', '2020-07-28 07:17:20');
INSERT INTO `admin_operation_log` VALUES ('1852', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:17:22', '2020-07-28 07:17:22');
INSERT INTO `admin_operation_log` VALUES ('1853', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:17:26', '2020-07-28 07:17:26');
INSERT INTO `admin_operation_log` VALUES ('1854', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:17:33', '2020-07-28 07:17:33');
INSERT INTO `admin_operation_log` VALUES ('1855', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:17:34', '2020-07-28 07:17:34');
INSERT INTO `admin_operation_log` VALUES ('1856', '1', 'admin/device/device/1', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:17:40', '2020-07-28 07:17:40');
INSERT INTO `admin_operation_log` VALUES ('1857', '1', 'admin/device/device/1', 'GET', '192.168.199.229', '[]', '2020-07-28 07:17:40', '2020-07-28 07:17:40');
INSERT INTO `admin_operation_log` VALUES ('1858', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:18:03', '2020-07-28 07:18:03');
INSERT INTO `admin_operation_log` VALUES ('1859', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:18:08', '2020-07-28 07:18:08');
INSERT INTO `admin_operation_log` VALUES ('1860', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2020-07-28 07:18:15', '2020-07-28 07:18:15');
INSERT INTO `admin_operation_log` VALUES ('1861', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2020-07-28 07:18:16', '2020-07-28 07:18:16');
INSERT INTO `admin_operation_log` VALUES ('1862', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:18:23', '2020-07-28 07:18:23');
INSERT INTO `admin_operation_log` VALUES ('1863', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:18:50', '2020-07-28 07:18:50');
INSERT INTO `admin_operation_log` VALUES ('1864', '1', 'admin/auth/menu', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:19:11', '2020-07-28 07:19:11');
INSERT INTO `admin_operation_log` VALUES ('1865', '1', 'admin/auth/menu', 'POST', '192.168.199.229', '{\"_token\":\"t2XZGvm2CJMTGdd7P2uXCIZ3yHJXC9LjvhqfuBOM\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11}]}]\"}', '2020-07-28 07:19:34', '2020-07-28 07:19:34');
INSERT INTO `admin_operation_log` VALUES ('1866', '1', 'admin/auth/menu', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:19:36', '2020-07-28 07:19:36');
INSERT INTO `admin_operation_log` VALUES ('1867', '1', 'admin/auth/menu', 'GET', '192.168.199.229', '[]', '2020-07-28 07:19:36', '2020-07-28 07:19:36');
INSERT INTO `admin_operation_log` VALUES ('1868', '1', 'admin/auth/menu', 'GET', '192.168.199.229', '[]', '2020-07-28 07:20:53', '2020-07-28 07:20:53');
INSERT INTO `admin_operation_log` VALUES ('1869', '1', 'admin/auth/menu', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:21:19', '2020-07-28 07:21:19');
INSERT INTO `admin_operation_log` VALUES ('1870', '1', 'admin/auth/menu', 'GET', '192.168.199.229', '[]', '2020-07-28 07:21:33', '2020-07-28 07:21:33');
INSERT INTO `admin_operation_log` VALUES ('1871', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:22:12', '2020-07-28 07:22:12');
INSERT INTO `admin_operation_log` VALUES ('1872', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '[]', '2020-07-28 07:27:57', '2020-07-28 07:27:57');
INSERT INTO `admin_operation_log` VALUES ('1873', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:28:20', '2020-07-28 07:28:20');
INSERT INTO `admin_operation_log` VALUES ('1874', '1', 'admin/view/log/1', 'GET', '192.168.199.229', '[]', '2020-07-28 07:28:23', '2020-07-28 07:28:23');
INSERT INTO `admin_operation_log` VALUES ('1875', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:28:29', '2020-07-28 07:28:29');
INSERT INTO `admin_operation_log` VALUES ('1876', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 07:28:48', '2020-07-28 07:28:48');
INSERT INTO `admin_operation_log` VALUES ('1877', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:28:52', '2020-07-28 07:28:52');
INSERT INTO `admin_operation_log` VALUES ('1878', '1', 'admin/view/log/1', 'GET', '192.168.199.229', '[]', '2020-07-28 07:28:56', '2020-07-28 07:28:56');
INSERT INTO `admin_operation_log` VALUES ('1879', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:29:02', '2020-07-28 07:29:02');
INSERT INTO `admin_operation_log` VALUES ('1880', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '[]', '2020-07-28 07:29:39', '2020-07-28 07:29:39');
INSERT INTO `admin_operation_log` VALUES ('1881', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:29:44', '2020-07-28 07:29:44');
INSERT INTO `admin_operation_log` VALUES ('1882', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '[]', '2020-07-28 07:39:44', '2020-07-28 07:39:44');
INSERT INTO `admin_operation_log` VALUES ('1883', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:40:17', '2020-07-28 07:40:17');
INSERT INTO `admin_operation_log` VALUES ('1884', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:40:32', '2020-07-28 07:40:32');
INSERT INTO `admin_operation_log` VALUES ('1885', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:40:37', '2020-07-28 07:40:37');
INSERT INTO `admin_operation_log` VALUES ('1886', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:40:40', '2020-07-28 07:40:40');
INSERT INTO `admin_operation_log` VALUES ('1887', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:44:45', '2020-07-28 07:44:45');
INSERT INTO `admin_operation_log` VALUES ('1888', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 07:48:47', '2020-07-28 07:48:47');
INSERT INTO `admin_operation_log` VALUES ('1889', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 07:50:07', '2020-07-28 07:50:07');
INSERT INTO `admin_operation_log` VALUES ('1890', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 07:50:26', '2020-07-28 07:50:26');
INSERT INTO `admin_operation_log` VALUES ('1891', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:50:33', '2020-07-28 07:50:33');
INSERT INTO `admin_operation_log` VALUES ('1892', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:50:36', '2020-07-28 07:50:36');
INSERT INTO `admin_operation_log` VALUES ('1893', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:50:58', '2020-07-28 07:50:58');
INSERT INTO `admin_operation_log` VALUES ('1894', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 07:52:01', '2020-07-28 07:52:01');
INSERT INTO `admin_operation_log` VALUES ('1895', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 07:52:15', '2020-07-28 07:52:15');
INSERT INTO `admin_operation_log` VALUES ('1896', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 07:52:23', '2020-07-28 07:52:23');
INSERT INTO `admin_operation_log` VALUES ('1897', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 07:52:34', '2020-07-28 07:52:34');
INSERT INTO `admin_operation_log` VALUES ('1898', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 07:53:45', '2020-07-28 07:53:45');
INSERT INTO `admin_operation_log` VALUES ('1899', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 07:53:59', '2020-07-28 07:53:59');
INSERT INTO `admin_operation_log` VALUES ('1900', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 07:54:22', '2020-07-28 07:54:22');
INSERT INTO `admin_operation_log` VALUES ('1901', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:54:26', '2020-07-28 07:54:26');
INSERT INTO `admin_operation_log` VALUES ('1902', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 07:54:59', '2020-07-28 07:54:59');
INSERT INTO `admin_operation_log` VALUES ('1903', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 07:55:41', '2020-07-28 07:55:41');
INSERT INTO `admin_operation_log` VALUES ('1904', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 07:56:13', '2020-07-28 07:56:13');
INSERT INTO `admin_operation_log` VALUES ('1905', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 08:02:09', '2020-07-28 08:02:09');
INSERT INTO `admin_operation_log` VALUES ('1906', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 08:02:30', '2020-07-28 08:02:30');
INSERT INTO `admin_operation_log` VALUES ('1907', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:02:36', '2020-07-28 08:02:36');
INSERT INTO `admin_operation_log` VALUES ('1908', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:03:14', '2020-07-28 08:03:14');
INSERT INTO `admin_operation_log` VALUES ('1909', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:03:20', '2020-07-28 08:03:20');
INSERT INTO `admin_operation_log` VALUES ('1910', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:03:30', '2020-07-28 08:03:30');
INSERT INTO `admin_operation_log` VALUES ('1911', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:03:31', '2020-07-28 08:03:31');
INSERT INTO `admin_operation_log` VALUES ('1912', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:03:46', '2020-07-28 08:03:46');
INSERT INTO `admin_operation_log` VALUES ('1913', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:03:47', '2020-07-28 08:03:47');
INSERT INTO `admin_operation_log` VALUES ('1914', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:03:50', '2020-07-28 08:03:50');
INSERT INTO `admin_operation_log` VALUES ('1915', '1', 'admin/view/log/1', 'GET', '192.168.199.229', '[]', '2020-07-28 08:03:55', '2020-07-28 08:03:55');
INSERT INTO `admin_operation_log` VALUES ('1916', '1', 'admin/view/log/1', 'GET', '192.168.199.229', '[]', '2020-07-28 08:04:36', '2020-07-28 08:04:36');
INSERT INTO `admin_operation_log` VALUES ('1917', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:04:40', '2020-07-28 08:04:40');
INSERT INTO `admin_operation_log` VALUES ('1918', '1', 'admin/auth/menu', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:04:51', '2020-07-28 08:04:51');
INSERT INTO `admin_operation_log` VALUES ('1919', '1', 'admin/auth/menu', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:04:55', '2020-07-28 08:04:55');
INSERT INTO `admin_operation_log` VALUES ('1920', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:06:32', '2020-07-28 08:06:32');
INSERT INTO `admin_operation_log` VALUES ('1921', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 08:11:20', '2020-07-28 08:11:20');
INSERT INTO `admin_operation_log` VALUES ('1922', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 08:11:23', '2020-07-28 08:11:23');
INSERT INTO `admin_operation_log` VALUES ('1923', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 08:12:00', '2020-07-28 08:12:00');
INSERT INTO `admin_operation_log` VALUES ('1924', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:12:03', '2020-07-28 08:12:03');
INSERT INTO `admin_operation_log` VALUES ('1925', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:12:05', '2020-07-28 08:12:05');
INSERT INTO `admin_operation_log` VALUES ('1926', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 08:13:28', '2020-07-28 08:13:28');
INSERT INTO `admin_operation_log` VALUES ('1927', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 08:14:04', '2020-07-28 08:14:04');
INSERT INTO `admin_operation_log` VALUES ('1928', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 08:14:23', '2020-07-28 08:14:23');
INSERT INTO `admin_operation_log` VALUES ('1929', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 08:14:59', '2020-07-28 08:14:59');
INSERT INTO `admin_operation_log` VALUES ('1930', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 08:15:21', '2020-07-28 08:15:21');
INSERT INTO `admin_operation_log` VALUES ('1931', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 08:17:40', '2020-07-28 08:17:40');
INSERT INTO `admin_operation_log` VALUES ('1932', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:17:43', '2020-07-28 08:17:43');
INSERT INTO `admin_operation_log` VALUES ('1933', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 08:18:00', '2020-07-28 08:18:00');
INSERT INTO `admin_operation_log` VALUES ('1934', '0', 'admin/auth/login', 'POST', '192.168.199.229', '{\"_token\":\"M0QvD7ZpIN0TBvr01QA3VXxeE1QPX5qHYLmtFH0x\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-28 08:18:09', '2020-07-28 08:18:09');
INSERT INTO `admin_operation_log` VALUES ('1935', '0', 'admin/auth/login', 'GET', '192.168.199.229', '[]', '2020-07-28 08:18:10', '2020-07-28 08:18:10');
INSERT INTO `admin_operation_log` VALUES ('1936', '0', 'admin/auth/login', 'POST', '192.168.199.229', '{\"_token\":\"VaptN3aK6PptKAFRJKO8pTpJWJIN8heRvKI6zV2i\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-28 08:18:18', '2020-07-28 08:18:18');
INSERT INTO `admin_operation_log` VALUES ('1937', '1', 'admin', 'GET', '192.168.199.229', '[]', '2020-07-28 08:18:19', '2020-07-28 08:18:19');
INSERT INTO `admin_operation_log` VALUES ('1938', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:18:21', '2020-07-28 08:18:21');
INSERT INTO `admin_operation_log` VALUES ('1939', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:18:38', '2020-07-28 08:18:38');
INSERT INTO `admin_operation_log` VALUES ('1940', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:18:38', '2020-07-28 08:18:38');
INSERT INTO `admin_operation_log` VALUES ('1941', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '[]', '2020-07-28 08:19:17', '2020-07-28 08:19:17');
INSERT INTO `admin_operation_log` VALUES ('1942', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:19:21', '2020-07-28 08:19:21');
INSERT INTO `admin_operation_log` VALUES ('1943', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:19:23', '2020-07-28 08:19:23');
INSERT INTO `admin_operation_log` VALUES ('1944', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '[]', '2020-07-28 08:19:56', '2020-07-28 08:19:56');
INSERT INTO `admin_operation_log` VALUES ('1945', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '[]', '2020-07-28 08:21:13', '2020-07-28 08:21:13');
INSERT INTO `admin_operation_log` VALUES ('1946', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"device_id\":\"1\",\"name\":null,\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:21:18', '2020-07-28 08:21:18');
INSERT INTO `admin_operation_log` VALUES ('1947', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\",\"device_id\":\"2\",\"name\":null}', '2020-07-28 08:21:22', '2020-07-28 08:21:22');
INSERT INTO `admin_operation_log` VALUES ('1948', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\",\"device_id\":null,\"name\":null}', '2020-07-28 08:36:22', '2020-07-28 08:36:22');
INSERT INTO `admin_operation_log` VALUES ('1949', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"device_id\":null,\"name\":null,\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:38:47', '2020-07-28 08:38:47');
INSERT INTO `admin_operation_log` VALUES ('1950', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"device_id\":null,\"name\":null,\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:38:59', '2020-07-28 08:38:59');
INSERT INTO `admin_operation_log` VALUES ('1951', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"device_id\":null,\"name\":null}', '2020-07-28 08:41:27', '2020-07-28 08:41:27');
INSERT INTO `admin_operation_log` VALUES ('1952', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"name\":null,\"device_id\":null,\"created_at\":\"2020-07-27\",\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:41:38', '2020-07-28 08:41:38');
INSERT INTO `admin_operation_log` VALUES ('1953', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\",\"name\":null,\"device_id\":null,\"created_at\":\"2020-07-28\"}', '2020-07-28 08:41:43', '2020-07-28 08:41:43');
INSERT INTO `admin_operation_log` VALUES ('1954', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\",\"name\":null,\"device_id\":null,\"created_at\":\"2020-07-27\"}', '2020-07-28 08:41:50', '2020-07-28 08:41:50');
INSERT INTO `admin_operation_log` VALUES ('1955', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"name\":null,\"device_id\":null,\"created_at\":\"2020-07-27\"}', '2020-07-28 08:44:36', '2020-07-28 08:44:36');
INSERT INTO `admin_operation_log` VALUES ('1956', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"name\":null,\"device_id\":null,\"created_at\":null,\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:44:44', '2020-07-28 08:44:44');
INSERT INTO `admin_operation_log` VALUES ('1957', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"name\":null,\"device_id\":null,\"created_at\":null}', '2020-07-28 08:45:40', '2020-07-28 08:45:40');
INSERT INTO `admin_operation_log` VALUES ('1958', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"name\":null,\"device_id\":null,\"created_at\":null}', '2020-07-28 08:47:27', '2020-07-28 08:47:27');
INSERT INTO `admin_operation_log` VALUES ('1959', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"name\":null,\"device_id\":null,\"created_at\":null}', '2020-07-28 08:47:59', '2020-07-28 08:47:59');
INSERT INTO `admin_operation_log` VALUES ('1960', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"name\":null,\"device_id\":null,\"created_at\":\"d\",\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:48:05', '2020-07-28 08:48:05');
INSERT INTO `admin_operation_log` VALUES ('1961', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\",\"name\":null,\"device_id\":null,\"created_at\":\"28\"}', '2020-07-28 08:48:15', '2020-07-28 08:48:15');
INSERT INTO `admin_operation_log` VALUES ('1962', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\",\"name\":null,\"device_id\":null,\"created_at\":\"27\"}', '2020-07-28 08:48:20', '2020-07-28 08:48:20');
INSERT INTO `admin_operation_log` VALUES ('1963', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"name\":null,\"device_id\":null,\"created_at\":\"27\",\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:50:08', '2020-07-28 08:50:08');
INSERT INTO `admin_operation_log` VALUES ('1964', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"name\":null,\"device_id\":null,\"created_at\":\"27\",\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:50:10', '2020-07-28 08:50:10');
INSERT INTO `admin_operation_log` VALUES ('1965', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\",\"name\":null,\"device_id\":null,\"created_at\":null}', '2020-07-28 08:50:14', '2020-07-28 08:50:14');
INSERT INTO `admin_operation_log` VALUES ('1966', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"name\":null,\"device_id\":null,\"created_at\":null}', '2020-07-28 08:51:15', '2020-07-28 08:51:15');
INSERT INTO `admin_operation_log` VALUES ('1967', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:51:18', '2020-07-28 08:51:18');
INSERT INTO `admin_operation_log` VALUES ('1968', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:51:22', '2020-07-28 08:51:22');
INSERT INTO `admin_operation_log` VALUES ('1969', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 08:53:10', '2020-07-28 08:53:10');
INSERT INTO `admin_operation_log` VALUES ('1970', '1', 'admin/device/device', 'GET', '192.168.199.229', '[]', '2020-07-28 08:55:37', '2020-07-28 08:55:37');
INSERT INTO `admin_operation_log` VALUES ('1971', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"id\":null,\"state\":\"\\u6b63\\u5e38\",\"created_at\":null,\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:55:45', '2020-07-28 08:55:45');
INSERT INTO `admin_operation_log` VALUES ('1972', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"state\":\"\\u4e0d\\u6b63\\u5e38\",\"created_at\":null}', '2020-07-28 08:55:50', '2020-07-28 08:55:50');
INSERT INTO `admin_operation_log` VALUES ('1973', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"state\":\"\\u6b63\\u5e38\",\"created_at\":null}', '2020-07-28 08:55:55', '2020-07-28 08:55:55');
INSERT INTO `admin_operation_log` VALUES ('1974', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"id\":null,\"state\":\"\\u6b63\\u5e38\",\"created_at\":null}', '2020-07-28 08:56:40', '2020-07-28 08:56:40');
INSERT INTO `admin_operation_log` VALUES ('1975', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"id\":null,\"state\":\"\\u6b63\\u5e38\",\"created_at\":null}', '2020-07-28 08:57:45', '2020-07-28 08:57:45');
INSERT INTO `admin_operation_log` VALUES ('1976', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"id\":null,\"state\":\"\\u6b63\\u5e38\",\"created_at\":null,\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:57:59', '2020-07-28 08:57:59');
INSERT INTO `admin_operation_log` VALUES ('1977', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"state\":\"\\u6b63\\u5e38\",\"created_at\":null}', '2020-07-28 08:58:07', '2020-07-28 08:58:07');
INSERT INTO `admin_operation_log` VALUES ('1978', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"state\":\"\\u6b63\\u5e38\",\"created_at\":null}', '2020-07-28 08:58:14', '2020-07-28 08:58:14');
INSERT INTO `admin_operation_log` VALUES ('1979', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"state\":\"\\u6b63\\u5e38\",\"created_at\":null}', '2020-07-28 08:58:22', '2020-07-28 08:58:22');
INSERT INTO `admin_operation_log` VALUES ('1980', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"state\":\"\\u6b63\\u5e38\",\"created_at\":null}', '2020-07-28 08:58:35', '2020-07-28 08:58:35');
INSERT INTO `admin_operation_log` VALUES ('1981', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"id\":null,\"state\":\"\\u6b63\\u5e38\",\"created_at\":null,\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:59:16', '2020-07-28 08:59:16');
INSERT INTO `admin_operation_log` VALUES ('1982', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"state\":\"\\u6b63\\u5e38\",\"updated_at\":{\"start\":\"2020-07-29 16:59:18\",\"end\":\"2020-07-29 17:00:18\"},\"created_at\":null}', '2020-07-28 08:59:26', '2020-07-28 08:59:26');
INSERT INTO `admin_operation_log` VALUES ('1983', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 08:59:43', '2020-07-28 08:59:43');
INSERT INTO `admin_operation_log` VALUES ('1984', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"state\":null,\"created_at\":null}', '2020-07-28 08:59:51', '2020-07-28 08:59:51');
INSERT INTO `admin_operation_log` VALUES ('1985', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"state\":null,\"created_at\":null}', '2020-07-28 09:00:11', '2020-07-28 09:00:11');
INSERT INTO `admin_operation_log` VALUES ('1986', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 09:00:58', '2020-07-28 09:00:58');
INSERT INTO `admin_operation_log` VALUES ('1987', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '[]', '2020-07-28 09:01:51', '2020-07-28 09:01:51');
INSERT INTO `admin_operation_log` VALUES ('1988', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 09:01:57', '2020-07-28 09:01:57');
INSERT INTO `admin_operation_log` VALUES ('1989', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 09:02:00', '2020-07-28 09:02:00');
INSERT INTO `admin_operation_log` VALUES ('1990', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"state\":null,\"created_at\":null}', '2020-07-28 09:02:10', '2020-07-28 09:02:10');
INSERT INTO `admin_operation_log` VALUES ('1991', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"state\":null,\"created_at\":null}', '2020-07-28 09:02:11', '2020-07-28 09:02:11');
INSERT INTO `admin_operation_log` VALUES ('1992', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"state\":null,\"created_at\":\"2020-07-30\"}', '2020-07-28 09:02:18', '2020-07-28 09:02:18');
INSERT INTO `admin_operation_log` VALUES ('1993', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"id\":null,\"state\":null,\"created_at\":\"2020-07-30\"}', '2020-07-28 09:02:19', '2020-07-28 09:02:19');
INSERT INTO `admin_operation_log` VALUES ('1994', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"id\":null,\"state\":null,\"created_at\":null}', '2020-07-28 09:02:23', '2020-07-28 09:02:23');
INSERT INTO `admin_operation_log` VALUES ('1995', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"id\":null,\"state\":null,\"created_at\":\"2020-07-21\",\"_pjax\":\"#pjax-container\"}', '2020-07-28 09:02:28', '2020-07-28 09:02:28');
INSERT INTO `admin_operation_log` VALUES ('1996', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"id\":null,\"state\":null,\"created_at\":\"2020-07-21\"}', '2020-07-28 09:02:28', '2020-07-28 09:02:28');
INSERT INTO `admin_operation_log` VALUES ('1997', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"id\":null,\"state\":null,\"created_at\":null,\"_pjax\":\"#pjax-container\"}', '2020-07-28 09:02:56', '2020-07-28 09:02:56');
INSERT INTO `admin_operation_log` VALUES ('1998', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"state\":null,\"created_at\":{\"start\":\"2020-07-29 17:02:57\",\"end\":\"2020-07-30 17:03:57\"}}', '2020-07-28 09:03:01', '2020-07-28 09:03:01');
INSERT INTO `admin_operation_log` VALUES ('1999', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 09:03:05', '2020-07-28 09:03:05');
INSERT INTO `admin_operation_log` VALUES ('2000', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 09:03:32', '2020-07-28 09:03:32');
INSERT INTO `admin_operation_log` VALUES ('2001', '1', 'admin/device/device_log', 'GET', '192.168.199.229', '[]', '2020-07-28 09:05:50', '2020-07-28 09:05:50');
INSERT INTO `admin_operation_log` VALUES ('2002', '1', 'admin/helpers/extensions', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 09:22:17', '2020-07-28 09:22:17');
INSERT INTO `admin_operation_log` VALUES ('2003', '1', 'admin/helpers/scaffold', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 09:22:19', '2020-07-28 09:22:19');
INSERT INTO `admin_operation_log` VALUES ('2004', '1', 'admin/helpers/icons', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 09:22:21', '2020-07-28 09:22:21');
INSERT INTO `admin_operation_log` VALUES ('2005', '1', 'admin/helpers/scaffold', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 09:23:35', '2020-07-28 09:23:35');
INSERT INTO `admin_operation_log` VALUES ('2006', '1', 'admin/helpers/extensions', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 09:23:38', '2020-07-28 09:23:38');
INSERT INTO `admin_operation_log` VALUES ('2007', '1', 'admin', 'GET', '192.168.199.229', '[]', '2020-07-28 09:26:36', '2020-07-28 09:26:36');
INSERT INTO `admin_operation_log` VALUES ('2008', '1', 'admin/device/device', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 09:26:39', '2020-07-28 09:26:39');
INSERT INTO `admin_operation_log` VALUES ('2009', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 09:26:46', '2020-07-28 09:26:46');
INSERT INTO `admin_operation_log` VALUES ('2010', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '[]', '2020-07-28 09:31:03', '2020-07-28 09:31:03');
INSERT INTO `admin_operation_log` VALUES ('2011', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '[]', '2020-07-28 09:31:43', '2020-07-28 09:31:43');
INSERT INTO `admin_operation_log` VALUES ('2012', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '[]', '2020-07-28 09:32:54', '2020-07-28 09:32:54');
INSERT INTO `admin_operation_log` VALUES ('2013', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '[]', '2020-07-28 09:36:56', '2020-07-28 09:36:56');
INSERT INTO `admin_operation_log` VALUES ('2014', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '[]', '2020-07-28 09:37:08', '2020-07-28 09:37:08');
INSERT INTO `admin_operation_log` VALUES ('2015', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '[]', '2020-07-28 09:37:10', '2020-07-28 09:37:10');
INSERT INTO `admin_operation_log` VALUES ('2016', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '[]', '2020-07-28 09:37:45', '2020-07-28 09:37:45');
INSERT INTO `admin_operation_log` VALUES ('2017', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '[]', '2020-07-28 09:39:55', '2020-07-28 09:39:55');
INSERT INTO `admin_operation_log` VALUES ('2018', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '[]', '2020-07-28 09:41:36', '2020-07-28 09:41:36');
INSERT INTO `admin_operation_log` VALUES ('2019', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '[]', '2020-07-28 09:42:06', '2020-07-28 09:42:06');
INSERT INTO `admin_operation_log` VALUES ('2020', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '[]', '2020-07-28 09:42:37', '2020-07-28 09:42:37');
INSERT INTO `admin_operation_log` VALUES ('2021', '1', 'admin/device/device_video', 'GET', '192.168.199.229', '[]', '2020-07-28 09:43:03', '2020-07-28 09:43:03');
INSERT INTO `admin_operation_log` VALUES ('2022', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-29 00:56:58', '2020-07-29 00:56:58');
INSERT INTO `admin_operation_log` VALUES ('2023', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"CvFIzjS53KpZKf4nIIrqdxJYTzupsp2RPD5SBSIM\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-29 00:57:04', '2020-07-29 00:57:04');
INSERT INTO `admin_operation_log` VALUES ('2024', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-29 00:57:05', '2020-07-29 00:57:05');
INSERT INTO `admin_operation_log` VALUES ('2025', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"xmgIB6trW4hvVuSloKrQGtyJOdp7L4zFxBWigEEk\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-29 00:57:12', '2020-07-29 00:57:12');
INSERT INTO `admin_operation_log` VALUES ('2026', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-29 00:57:12', '2020-07-29 00:57:12');
INSERT INTO `admin_operation_log` VALUES ('2027', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"6rtAv0GzVt3a3tCBeHaLyacBTMA8mY5yKPnuedIR\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-29 00:57:13', '2020-07-29 00:57:13');
INSERT INTO `admin_operation_log` VALUES ('2028', '0', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-07-29 00:57:14', '2020-07-29 00:57:14');
INSERT INTO `admin_operation_log` VALUES ('2029', '0', 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"2HrHVtH2rPkpr8788v3m4kAP8LhxujKMqmSHMVNB\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-07-29 00:57:15', '2020-07-29 00:57:15');
INSERT INTO `admin_operation_log` VALUES ('2030', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-29 00:57:16', '2020-07-29 00:57:16');
INSERT INTO `admin_operation_log` VALUES ('2031', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 00:57:20', '2020-07-29 00:57:20');
INSERT INTO `admin_operation_log` VALUES ('2032', '1', 'admin/device/device_video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 00:57:24', '2020-07-29 00:57:24');
INSERT INTO `admin_operation_log` VALUES ('2033', '1', 'admin/device/device_video', 'GET', '127.0.0.1', '[]', '2020-07-29 01:01:11', '2020-07-29 01:01:11');
INSERT INTO `admin_operation_log` VALUES ('2034', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 01:03:39', '2020-07-29 01:03:39');
INSERT INTO `admin_operation_log` VALUES ('2035', '1', 'admin/device/device_video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 01:05:16', '2020-07-29 01:05:16');
INSERT INTO `admin_operation_log` VALUES ('2036', '1', 'admin/device/device_video', 'GET', '127.0.0.1', '[]', '2020-07-29 01:09:07', '2020-07-29 01:09:07');
INSERT INTO `admin_operation_log` VALUES ('2037', '1', 'admin/device/device_video', 'GET', '127.0.0.1', '[]', '2020-07-29 01:10:33', '2020-07-29 01:10:33');
INSERT INTO `admin_operation_log` VALUES ('2038', '0', 'admin/auth/login', 'GET', '192.168.199.254', '[]', '2020-07-29 02:51:00', '2020-07-29 02:51:00');
INSERT INTO `admin_operation_log` VALUES ('2039', '0', 'admin/auth/login', 'POST', '192.168.199.254', '{\"_token\":\"Txp6MvSGZPbaxMaQeasnDPxLPyLNMPyDgJcKIeJW\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-07-29 02:51:04', '2020-07-29 02:51:04');
INSERT INTO `admin_operation_log` VALUES ('2040', '1', 'admin', 'GET', '192.168.199.254', '[]', '2020-07-29 02:51:05', '2020-07-29 02:51:05');
INSERT INTO `admin_operation_log` VALUES ('2041', '1', 'admin/device/device', 'GET', '192.168.199.254', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 02:51:09', '2020-07-29 02:51:09');
INSERT INTO `admin_operation_log` VALUES ('2042', '1', 'admin/device/device_log', 'GET', '192.168.199.254', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 02:51:18', '2020-07-29 02:51:18');
INSERT INTO `admin_operation_log` VALUES ('2043', '1', 'admin/device/device_video', 'GET', '192.168.199.254', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 02:51:38', '2020-07-29 02:51:38');
INSERT INTO `admin_operation_log` VALUES ('2044', '1', 'admin/device/device_video', 'GET', '192.168.199.254', '[]', '2020-07-29 02:52:02', '2020-07-29 02:52:02');
INSERT INTO `admin_operation_log` VALUES ('2045', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 02:53:06', '2020-07-29 02:53:06');
INSERT INTO `admin_operation_log` VALUES ('2046', '1', 'admin/device/device', 'GET', '192.168.199.254', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 02:53:15', '2020-07-29 02:53:15');
INSERT INTO `admin_operation_log` VALUES ('2047', '1', 'admin/device/device_log', 'GET', '192.168.199.254', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 02:53:16', '2020-07-29 02:53:16');
INSERT INTO `admin_operation_log` VALUES ('2048', '1', 'admin', 'GET', '192.168.199.254', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 02:53:24', '2020-07-29 02:53:24');
INSERT INTO `admin_operation_log` VALUES ('2049', '1', 'admin/device/device_video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 02:53:32', '2020-07-29 02:53:32');
INSERT INTO `admin_operation_log` VALUES ('2050', '1', 'admin/device/device', 'GET', '192.168.199.254', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 02:54:11', '2020-07-29 02:54:11');
INSERT INTO `admin_operation_log` VALUES ('2051', '1', 'admin/device/device_log', 'GET', '192.168.199.254', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 02:54:13', '2020-07-29 02:54:13');
INSERT INTO `admin_operation_log` VALUES ('2052', '1', 'admin/device/device_video', 'GET', '192.168.199.254', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 02:54:14', '2020-07-29 02:54:14');
INSERT INTO `admin_operation_log` VALUES ('2053', '1', 'admin/device/device', 'GET', '192.168.199.254', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 02:54:21', '2020-07-29 02:54:21');
INSERT INTO `admin_operation_log` VALUES ('2054', '1', 'admin/device/device_log', 'GET', '192.168.199.254', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 02:54:23', '2020-07-29 02:54:23');
INSERT INTO `admin_operation_log` VALUES ('2055', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 02:54:50', '2020-07-29 02:54:50');
INSERT INTO `admin_operation_log` VALUES ('2056', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 02:55:05', '2020-07-29 02:55:05');
INSERT INTO `admin_operation_log` VALUES ('2057', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 02:55:09', '2020-07-29 02:55:09');
INSERT INTO `admin_operation_log` VALUES ('2058', '1', 'admin/device/device_video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 02:55:10', '2020-07-29 02:55:10');
INSERT INTO `admin_operation_log` VALUES ('2059', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 02:56:05', '2020-07-29 02:56:05');
INSERT INTO `admin_operation_log` VALUES ('2060', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 02:56:42', '2020-07-29 02:56:42');
INSERT INTO `admin_operation_log` VALUES ('2061', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 02:56:47', '2020-07-29 02:56:47');
INSERT INTO `admin_operation_log` VALUES ('2062', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 02:56:50', '2020-07-29 02:56:50');
INSERT INTO `admin_operation_log` VALUES ('2063', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-29 03:06:57', '2020-07-29 03:06:57');
INSERT INTO `admin_operation_log` VALUES ('2064', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-29 03:07:33', '2020-07-29 03:07:33');
INSERT INTO `admin_operation_log` VALUES ('2065', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 03:07:35', '2020-07-29 03:07:35');
INSERT INTO `admin_operation_log` VALUES ('2066', '1', 'admin/device/device_video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 03:07:38', '2020-07-29 03:07:38');
INSERT INTO `admin_operation_log` VALUES ('2067', '1', 'admin/device/device_video', 'GET', '127.0.0.1', '[]', '2020-07-29 03:09:22', '2020-07-29 03:09:22');
INSERT INTO `admin_operation_log` VALUES ('2068', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 03:09:29', '2020-07-29 03:09:29');
INSERT INTO `admin_operation_log` VALUES ('2069', '1', 'admin/device/device_video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 03:09:30', '2020-07-29 03:09:30');
INSERT INTO `admin_operation_log` VALUES ('2070', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 03:09:39', '2020-07-29 03:09:39');
INSERT INTO `admin_operation_log` VALUES ('2071', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '[]', '2020-07-29 03:10:15', '2020-07-29 03:10:15');
INSERT INTO `admin_operation_log` VALUES ('2072', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '[]', '2020-07-29 03:16:03', '2020-07-29 03:16:03');
INSERT INTO `admin_operation_log` VALUES ('2073', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 03:16:05', '2020-07-29 03:16:05');
INSERT INTO `admin_operation_log` VALUES ('2074', '1', 'admin/device/device', 'GET', '127.0.0.1', '[]', '2020-07-29 03:16:40', '2020-07-29 03:16:40');
INSERT INTO `admin_operation_log` VALUES ('2075', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 03:17:12', '2020-07-29 03:17:12');
INSERT INTO `admin_operation_log` VALUES ('2076', '1', 'admin/device/device_video', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 03:17:13', '2020-07-29 03:17:13');
INSERT INTO `admin_operation_log` VALUES ('2077', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 03:17:28', '2020-07-29 03:17:28');
INSERT INTO `admin_operation_log` VALUES ('2078', '1', 'admin/device/device', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 03:24:08', '2020-07-29 03:24:08');
INSERT INTO `admin_operation_log` VALUES ('2079', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 03:27:17', '2020-07-29 03:27:17');
INSERT INTO `admin_operation_log` VALUES ('2080', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '[]', '2020-07-29 03:27:18', '2020-07-29 03:27:18');
INSERT INTO `admin_operation_log` VALUES ('2081', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 03:27:36', '2020-07-29 03:27:36');
INSERT INTO `admin_operation_log` VALUES ('2082', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '[]', '2020-07-29 03:27:37', '2020-07-29 03:27:37');
INSERT INTO `admin_operation_log` VALUES ('2083', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 03:32:31', '2020-07-29 03:32:31');
INSERT INTO `admin_operation_log` VALUES ('2084', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"selected:1\"}', '2020-07-29 03:32:46', '2020-07-29 03:32:46');
INSERT INTO `admin_operation_log` VALUES ('2085', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2020-07-29 03:32:51', '2020-07-29 03:32:51');
INSERT INTO `admin_operation_log` VALUES ('2086', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '[]', '2020-07-29 03:34:21', '2020-07-29 03:34:21');
INSERT INTO `admin_operation_log` VALUES ('2087', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '[]', '2020-07-29 03:34:25', '2020-07-29 03:34:25');
INSERT INTO `admin_operation_log` VALUES ('2088', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '[]', '2020-07-29 03:34:32', '2020-07-29 03:34:32');
INSERT INTO `admin_operation_log` VALUES ('2089', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '[]', '2020-07-29 03:34:43', '2020-07-29 03:34:43');
INSERT INTO `admin_operation_log` VALUES ('2090', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '[]', '2020-07-29 03:49:44', '2020-07-29 03:49:44');
INSERT INTO `admin_operation_log` VALUES ('2091', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '[]', '2020-07-29 05:18:20', '2020-07-29 05:18:20');
INSERT INTO `admin_operation_log` VALUES ('2092', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '[]', '2020-07-29 05:18:39', '2020-07-29 05:18:39');
INSERT INTO `admin_operation_log` VALUES ('2093', '1', 'admin/device/device_log', 'GET', '127.0.0.1', '[]', '2020-07-29 05:20:39', '2020-07-29 05:20:39');

-- ----------------------------
-- Table structure for `admin_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '0',
  `parent_id` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'Auth management', 'auth-management', '', '', '1', '0', '2020-07-15 07:14:57', null);
INSERT INTO `admin_permissions` VALUES ('2', 'Users', 'users', '', '/auth/users*', '2', '1', '2020-07-15 07:14:57', null);
INSERT INTO `admin_permissions` VALUES ('3', 'Roles', 'roles', '', '/auth/roles*', '3', '1', '2020-07-15 07:14:57', null);
INSERT INTO `admin_permissions` VALUES ('4', 'Permissions', 'permissions', '', '/auth/permissions*', '4', '1', '2020-07-15 07:14:57', null);
INSERT INTO `admin_permissions` VALUES ('5', 'Menu', 'menu', '', '/auth/menu*', '5', '1', '2020-07-15 07:14:57', null);
INSERT INTO `admin_permissions` VALUES ('6', 'Operation log', 'operation-log', '', '/auth/logs*', '6', '1', '2020-07-15 07:14:57', null);

-- ----------------------------
-- Table structure for `admin_permission_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_permission_menu`;
CREATE TABLE `admin_permission_menu` (
  `permission_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_permission_menu_permission_id_menu_id_unique` (`permission_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin_permission_menu
-- ----------------------------
INSERT INTO `admin_permission_menu` VALUES ('2', '9', null, null);
INSERT INTO `admin_permission_menu` VALUES ('2', '10', null, null);
INSERT INTO `admin_permission_menu` VALUES ('2', '11', null, null);
INSERT INTO `admin_permission_menu` VALUES ('3', '9', null, null);
INSERT INTO `admin_permission_menu` VALUES ('3', '10', null, null);
INSERT INTO `admin_permission_menu` VALUES ('3', '11', null, null);
INSERT INTO `admin_permission_menu` VALUES ('4', '9', null, null);
INSERT INTO `admin_permission_menu` VALUES ('4', '10', null, null);
INSERT INTO `admin_permission_menu` VALUES ('4', '11', null, null);
INSERT INTO `admin_permission_menu` VALUES ('5', '9', null, null);
INSERT INTO `admin_permission_menu` VALUES ('5', '10', null, null);
INSERT INTO `admin_permission_menu` VALUES ('5', '11', null, null);
INSERT INTO `admin_permission_menu` VALUES ('6', '9', null, null);
INSERT INTO `admin_permission_menu` VALUES ('6', '10', null, null);
INSERT INTO `admin_permission_menu` VALUES ('6', '11', null, null);

-- ----------------------------
-- Table structure for `admin_roles`
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2020-07-15 07:14:57', '2020-07-15 07:14:58');

-- ----------------------------
-- Table structure for `admin_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_role_menu_role_id_menu_id_unique` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '9', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '10', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '11', null, null);

-- ----------------------------
-- Table structure for `admin_role_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_role_permissions_role_id_permission_id_unique` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `admin_role_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_role_users_role_id_user_id_unique` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);
INSERT INTO `admin_role_users` VALUES ('1', '2', null, null);

-- ----------------------------
-- Table structure for `admin_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$awmhCDGSzm59j2hzQpeKSuxy4UTURmdhBbB7MVgYaEwR5AHL.mSsa', 'Administrator', null, 'QhbrsQA0pJrhWquBsmN8MdiCpeWFP3oJZhpKTRLxF9XRCWZGtoWpnlUty1t7', '2020-07-15 07:14:57', '2020-07-15 07:14:57');
INSERT INTO `admin_users` VALUES ('2', 'xxx', '$2y$10$8vce0MDKoMsiQo0PckwLJuFEAXJcrepFhk9NTz9.TEZ3kXc.cXCRG', 'xxxx', null, '9U2f9G3jEsja1RzdxVTU6sgbANEsvNjQ55Ir2NCnqoLa8l8Fx7akMwbPIGj5', '2020-07-20 03:44:18', '2020-07-20 03:44:18');

-- ----------------------------
-- Table structure for `device`
-- ----------------------------
DROP TABLE IF EXISTS `device`;
CREATE TABLE `device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_code` int(11) NOT NULL,
  `device_name` char(255) NOT NULL,
  `state` char(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `relevance` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device
-- ----------------------------
INSERT INTO `device` VALUES ('1', '1', '名称', '正常', '2020-07-27 13:06:16', '2020-07-27 13:06:19', '未连接');
INSERT INTO `device` VALUES ('2', '2', '第二个', '正常', '2020-07-27 16:05:44', '2020-07-27 16:05:47', '未连接');

-- ----------------------------
-- Table structure for `device_log`
-- ----------------------------
DROP TABLE IF EXISTS `device_log`;
CREATE TABLE `device_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(255) NOT NULL,
  `information` char(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `device_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deviceLog_id` (`device_id`),
  CONSTRAINT `deviceLog_id` FOREIGN KEY (`device_id`) REFERENCES `device` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_log
-- ----------------------------
INSERT INTO `device_log` VALUES ('1', 'log1', '问问', '2020-07-27 13:08:32', '2020-07-27 13:08:36', '1');
INSERT INTO `device_log` VALUES ('2', '花少北', '啊啊啊', '2020-07-27 17:32:18', '2020-07-27 17:32:25', '1');
INSERT INTO `device_log` VALUES ('3', '龙', '啊啊啊', '2020-07-27 16:06:05', '2020-07-27 16:06:09', '2');

-- ----------------------------
-- Table structure for `device_video`
-- ----------------------------
DROP TABLE IF EXISTS `device_video`;
CREATE TABLE `device_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(255) NOT NULL,
  `time` time NOT NULL,
  `author` char(255) NOT NULL,
  `information` char(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `device_id` int(11) DEFAULT NULL,
  `video` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deviceVideo_id` (`device_id`),
  CONSTRAINT `deviceVideo_id` FOREIGN KEY (`device_id`) REFERENCES `device` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_video
-- ----------------------------
INSERT INTO `device_video` VALUES ('1', 'video1', '00:00:00', '某幻', '您吃了吗', '2020-07-27 13:09:31', '2020-07-27 13:09:34', '1', '1.mp4');
INSERT INTO `device_video` VALUES ('2', 'video2', '16:08:37', '中国boy', '带明猩', '2020-07-27 16:09:02', '2020-07-27 16:09:05', '2', '1.mp4');

-- ----------------------------
-- Table structure for `failed_jobs`
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) DEFAULT NULL,
  `name` char(255) NOT NULL,
  `price` int(10) NOT NULL,
  `count` int(255) NOT NULL,
  `craeted_at` datetime DEFAULT NULL,
  `kind` char(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `img` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '11', '勺子', '10', '45', '2020-07-15 16:12:28', '啊啊啊啊啊', '2020-07-27 02:06:36', '/1.jpg');
INSERT INTO `goods` VALUES ('2', '22', '瑞克壁纸', '50', '50', '2020-07-15 17:16:52', '瑞克and莫蒂', '2020-07-22 01:55:58', '/2.jpg');
INSERT INTO `goods` VALUES ('3', '12', '破旧的包', '24', '54', '2020-07-17 15:15:42', '烂！', '2020-07-22 01:54:41', '/3.jpg');
INSERT INTO `goods` VALUES ('4', '22', '短裤', '12', '222', '2020-07-21 09:21:20', '222', null, '/1.jpg');
INSERT INTO `goods` VALUES ('5', '32', '鼠标', '20', '100', '2020-07-21 09:24:10', '111', null, '/2.jpg');
INSERT INTO `goods` VALUES ('6', '888', '狼人杀卡牌', '10', '200', '2020-07-21 09:26:50', '吃枪子吧', null, '/1.jpg');
INSERT INTO `goods` VALUES ('7', '233', '我妻善逸', '99', '999', '2020-07-21 09:32:57', '刷刷Shaun', null, '/3.jpg');
INSERT INTO `goods` VALUES ('35', '122', '测试', '99', '99', '2020-07-24 07:41:16', '啊啊啊啊', '2020-07-24 07:41:54', '/89b4302fb8d740ff961ad3288630087d.jpeg');
INSERT INTO `goods` VALUES ('34', '122', '祢豆子', '99', '98', '2020-07-24 07:03:39', '撒飒飒', '2020-07-27 02:06:36', '/89b4302fb8d740ff961ad3288630087d.jpeg');
INSERT INTO `goods` VALUES ('33', '666', '找到原因了！', '99', '99', '2020-07-22 07:19:07', null, '2020-07-24 07:36:00', '/063aeccbc9b344e5a6ee64f5205f7af1_th.jpg');
INSERT INTO `goods` VALUES ('32', '99', '测试', '20', '1000', '2020-07-22 07:07:23', '测试', null, '/6dadd61db3e4ae587e5bc071db24b965.jpg');
INSERT INTO `goods` VALUES ('27', '22', '短裤', '0', '0', '2020-07-22 05:55:37', null, null, '/7.jpg');
INSERT INTO `goods` VALUES ('16', '43', '数学书', '19', '111111', '2020-07-22 05:36:05', '一本数学书', null, '/1.jpg');
INSERT INTO `goods` VALUES ('15', '222', '地理书', '19', '99999', '2020-07-22 05:34:31', '天书', null, '1.jpg');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2016_01_04_173148_create_admin_tables', '1');
INSERT INTO `migrations` VALUES ('3', '2019_08_19_000000_create_failed_jobs_table', '1');

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) NOT NULL,
  `good_id` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `time_action` datetime NOT NULL,
  `status` char(255) NOT NULL DEFAULT '未支付',
  `time_end` datetime DEFAULT NULL,
  `note` char(255) DEFAULT NULL,
  `count` int(255) NOT NULL,
  `img` char(255) DEFAULT NULL,
  `name` char(255) NOT NULL,
  `refund` char(255) DEFAULT NULL,
  `user_name` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1', '2', '1', '10', '2020-07-15 17:15:58', '已支付', '2020-07-15 17:15:59', null, '1', '1.jpg', '勺子', '退款中…', '1');
INSERT INTO `order` VALUES ('2', '6', '1', '10', '2020-07-21 06:47:48', '未支付', null, null, '16', '1.jpg', '勺子', null, '2');
INSERT INTO `order` VALUES ('3', '4', '2', '50', '2020-07-21 06:47:48', '未支付', null, null, '39', '2.jpg', '瑞克壁纸', null, null);
INSERT INTO `order` VALUES ('4', '5', '3', '24', '2020-07-21 06:47:48', '未支付', null, null, '41', '3.jpg', '破旧的包', null, null);
INSERT INTO `order` VALUES ('5', '7', '1', '10', '2020-07-21 06:47:48', '未支付', null, null, '10', '1.jpg', '勺子', null, null);
INSERT INTO `order` VALUES ('6', '6', '1', '10', '2020-07-21 06:54:14', '未支付', null, null, '16', '1.jpg', '勺子', null, null);
INSERT INTO `order` VALUES ('7', '6', '1', '10', '2020-07-21 06:57:50', '未支付', null, null, '2', '1.jpg', '勺子', null, null);
INSERT INTO `order` VALUES ('8', '4', '2', '50', '2020-07-21 06:57:56', '未支付', null, null, '4', '2.jpg', '瑞克壁纸', null, null);
INSERT INTO `order` VALUES ('9', '5', '3', '24', '2020-07-21 06:57:56', '未支付', null, null, '4', '3.jpg', '破旧的包', null, null);
INSERT INTO `order` VALUES ('10', '7', '1', '10', '2020-07-21 06:57:56', '未支付', null, null, '1', '1.jpg', '勺子', null, null);
INSERT INTO `order` VALUES ('11', '9', '2', '50', '2020-07-21 07:04:02', '未支付', null, null, '2', '2.jpg', '瑞克壁纸', null, null);
INSERT INTO `order` VALUES ('12', '8', '1', '10', '2020-07-21 07:04:02', '未支付', null, null, '1', '1.jpg', '勺子', null, null);
INSERT INTO `order` VALUES ('13', '10', '2', '50', '2020-07-21 07:05:52', '未支付', null, null, '1', '2.jpg', '瑞克壁纸', null, null);
INSERT INTO `order` VALUES ('14', '12', '1', '10', '2020-07-22 01:44:17', '未支付', null, null, '1', '1.jpg', '勺子', null, null);
INSERT INTO `order` VALUES ('15', '11', '2', '50', '2020-07-22 01:45:05', '未支付', null, null, '1', '2.jpg', '瑞克壁纸', null, null);
INSERT INTO `order` VALUES ('16', '14', '2', '50', '2020-07-22 01:46:41', '未支付', null, null, '1', '2.jpg', '瑞克壁纸', null, null);
INSERT INTO `order` VALUES ('17', '13', '1', '10', '2020-07-22 01:48:24', '未支付', null, null, '1', '1.jpg', '勺子', null, null);
INSERT INTO `order` VALUES ('18', '16', '2', '50', '2020-07-22 01:51:32', '未支付', null, null, '1', '2.jpg', '瑞克壁纸', null, null);
INSERT INTO `order` VALUES ('19', '15', '1', '10', '2020-07-22 01:52:27', '未支付', null, null, '1', '1.jpg', '勺子', null, null);
INSERT INTO `order` VALUES ('20', '19', '3', '24', '2020-07-22 01:54:41', '已支付', null, null, '1', '3.jpg', '破旧的包', null, null);
INSERT INTO `order` VALUES ('21', '18', '2', '50', '2020-07-22 01:55:58', '已支付', null, null, '1', '2.jpg', '瑞克壁纸', null, null);
INSERT INTO `order` VALUES ('22', '22', '33', '99', '2020-07-24 07:36:00', '已支付', null, null, '1', '/063aeccbc9b344e5a6ee64f5205f7af1_th.jpg', '找到原因了！', null, null);
INSERT INTO `order` VALUES ('23', '24', '35', '99', '2020-07-24 07:41:54', '已支付', null, null, '1', '/89b4302fb8d740ff961ad3288630087d.jpeg', '测试', null, '2');
INSERT INTO `order` VALUES ('24', '17', '1', '10', '2020-07-27 02:06:36', '已支付', null, null, '5', '/1.jpg', '勺子', null, '2');
INSERT INTO `order` VALUES ('25', '23', '34', '99', '2020-07-27 02:06:36', '已支付', null, null, '2', '/89b4302fb8d740ff961ad3288630087d.jpeg', '祢豆子', null, '2');

-- ----------------------------
-- Table structure for `shop`
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(255) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `check` int(10) NOT NULL,
  `price` int(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `good_id` int(10) NOT NULL,
  `count` int(255) unsigned zerofill NOT NULL DEFAULT '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001',
  `user_name` char(255) DEFAULT NULL,
  `img` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES ('21', '鼠标', '32', '0', '20', '2020-07-22 02:52:00', '5', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001', '1', '2.jpg');
INSERT INTO `shop` VALUES ('20', '瑞克壁纸', '22', '0', '50', '2020-07-22 02:38:14', '2', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001', '1', '2.jpg');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` char(32) NOT NULL,
  `password` int(30) NOT NULL,
  `postition` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '小红', '11', '0');
INSERT INTO `user` VALUES ('2', '小绿', '22', '0');
INSERT INTO `user` VALUES ('3', '小2', '11', '0');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
