/*
 Navicat Premium Data Transfer

 Source Server         : 10.10.30.57
 Source Server Type    : MySQL
 Source Server Version : 50726 (5.7.26-1)
 Source Host           : 10.10.30.57:3306
 Source Schema         : devops_admin

 Target Server Type    : MySQL
 Target Server Version : 50726 (5.7.26-1)
 File Encoding         : 65001

 Date: 06/03/2024 15:15:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_api
-- ----------------------------
DROP TABLE IF EXISTS `sys_api`;
CREATE TABLE `sys_api` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键编码',
  `handle` varchar(128) DEFAULT NULL COMMENT 'handle',
  `title` varchar(128) DEFAULT NULL COMMENT '标题',
  `path` varchar(128) DEFAULT NULL COMMENT '地址',
  `type` varchar(16) DEFAULT NULL COMMENT '接口类型',
  `action` varchar(16) DEFAULT NULL COMMENT '请求类型',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`),
  KEY `idx_sys_api_deleted_at` (`deleted_at`),
  KEY `idx_sys_api_create_by` (`create_by`),
  KEY `idx_sys_api_update_by` (`update_by`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_api
-- ----------------------------
BEGIN;
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (1, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysLoginLog.GetPage-fm', '登录日志列表', '/v1/sys-login-log', '', 'GET', '2024-03-06 14:52:07.723', '2024-03-06 14:52:07.723', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (2, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysLoginLog.Get-fm', '登录日志通过id获取', '/v1/sys-login-log/:id', '', 'GET', '2024-03-06 14:52:07.770', '2024-03-06 14:52:07.770', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (3, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysOperaLog.GetPage-fm', '操作日志列表', '/v1/sys-opera-log', '', 'GET', '2024-03-06 14:52:07.801', '2024-03-06 14:52:07.801', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (4, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysOperaLog.Get-fm', '操作日志通过id获取', '/v1/sys-opera-log/:id', '', 'GET', '2024-03-06 14:52:07.826', '2024-03-06 14:52:07.826', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (5, 'github.com/devops-base/devops-admin/pkg/app/other/apis/tools.SysTable.GetSysTablesInfo-fm', '', '/v1/sys/tables/info', '', 'GET', '2024-03-06 14:52:07.847', '2024-03-06 14:52:07.847', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (6, 'github.com/devops-base/devops-admin/pkg/app/other/apis/tools.SysTable.Get-fm', '获取配置', '/v1/sys/tables/info/:tableId', '', 'GET', '2024-03-06 14:52:07.874', '2024-03-06 14:52:07.874', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (7, 'github.com/devops-base/devops-admin/pkg/app/other/apis/tools.SysTable.GetPage-fm', '分页列表数据', '/v1/sys/tables/page', '', 'GET', '2024-03-06 14:52:07.901', '2024-03-06 14:52:07.901', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (8, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysApi.GetPage-fm', '获取接口管理列表', '/v1/sysApi', '', 'GET', '2024-03-06 14:52:07.917', '2024-03-06 14:52:07.917', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (9, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysApi.GetList-fm', '获取接口列表数据', '/v1/sysApi/list', '', 'GET', '2024-03-06 14:52:07.935', '2024-03-06 14:52:07.935', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (10, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysApi.Get-fm', '获取接口管理', '/v1/sysApi/:id', '', 'GET', '2024-03-06 14:52:07.963', '2024-03-06 14:52:07.963', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (11, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysDept.GetPage-fm', '分页部门列表数据', '/v1/sysDept', '', 'GET', '2024-03-06 14:52:07.984', '2024-03-06 14:52:07.984', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (12, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysDept.GetList-fm', '部门列表数据', '/v1/sysDept/list', '', 'GET', '2024-03-06 14:52:08.006', '2024-03-06 14:52:08.006', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (13, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysDept.Get-fm', '获取部门数据', '/v1/sysDept/:id', '', 'GET', '2024-03-06 14:52:08.028', '2024-03-06 14:52:08.028', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (14, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysMenu.GetPage-fm', 'Menu列表数据', '/v1/sysMenu', '', 'GET', '2024-03-06 14:52:08.057', '2024-03-06 14:52:08.057', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (15, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysMenu.GetList-fm', 'Menu列表数据', '/v1/sysMenu/list', '', 'GET', '2024-03-06 14:52:08.079', '2024-03-06 14:52:08.079', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (16, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysMenu.Get-fm', 'Menu详情数据', '/v1/sysMenu/:id', '', 'GET', '2024-03-06 14:52:08.100', '2024-03-06 14:52:08.100', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (17, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysRole.GetPage-fm', '角色列表数据', '/v1/sysRole', '', 'GET', '2024-03-06 14:52:08.112', '2024-03-06 14:52:08.112', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (18, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysRole.GetList-fm', '角色列表数据', '/v1/sysRole/list', '', 'GET', '2024-03-06 14:52:08.132', '2024-03-06 14:52:08.132', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (19, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysRole.Get-fm', '获取Role数据', '/v1/sysRole/:id', '', 'GET', '2024-03-06 14:52:08.149', '2024-03-06 14:52:08.149', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (20, 'github.com/devops-base/devops-admin/pkg/common/actions.IndexAction.func1', '', '/v1/sysjob', '', 'GET', '2024-03-06 14:52:08.168', '2024-03-06 14:52:08.168', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (21, 'github.com/devops-base/devops-admin/pkg/common/actions.ViewAction.func1', '', '/v1/sysjob/:id', '', 'GET', '2024-03-06 14:52:08.184', '2024-03-06 14:52:08.184', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (22, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysUser.GetPage-fm', '列表用户信息数据', '/v1/sysUser', '', 'GET', '2024-03-06 14:52:08.203', '2024-03-06 14:52:08.203', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (23, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysUser.Get-fm', '获取用户', '/v1/sysUser/:id', '', 'GET', '2024-03-06 14:52:08.224', '2024-03-06 14:52:08.224', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (24, 'github.com/devops-base/devops-admin/pkg/app/other/apis.ServerMonitor.ServerInfo-fm', '系统信息', '/v1/server-monitor', '', 'GET', '2024-03-06 14:52:08.240', '2024-03-06 14:52:08.240', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (25, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysConfig.Get2Set-fm', '获取配置', '/v1/set-config', '', 'GET', '2024-03-06 14:52:08.253', '2024-03-06 14:52:08.253', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (26, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysDictType.GetPage-fm', '字典类型列表数据', '/v1/dict/type', '', 'GET', '2024-03-06 14:52:08.269', '2024-03-06 14:52:08.269', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (27, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysDictType.GetAll-fm', '字典类型全部数据 代码生成使用接口', '/v1/dict/type-option-select', '', 'GET', '2024-03-06 14:52:08.292', '2024-03-06 14:52:08.292', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (28, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysDictType.Get-fm', '字典类型通过字典id获取', '/v1/dict/type/:id', '', 'GET', '2024-03-06 14:52:08.305', '2024-03-06 14:52:08.305', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (29, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysDictData.GetPage-fm', '字典数据列表', '/v1/dict/data', '', 'GET', '2024-03-06 14:52:08.318', '2024-03-06 14:52:08.318', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (30, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysDictData.Get-fm', '通过编码获取字典数据', '/v1/dict/data/:dictCode', '', 'GET', '2024-03-06 14:52:08.346', '2024-03-06 14:52:08.346', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (31, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysDictData.GetAll-fm', '数据字典根据key获取', '/v1/dict-data/option-select', '', 'GET', '2024-03-06 14:52:08.362', '2024-03-06 14:52:08.362', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (32, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysDept.Get2Tree-fm', '用户管理-左侧部门树', '/v1/deptTree', '', 'GET', '2024-03-06 14:52:08.378', '2024-03-06 14:52:08.378', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (33, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysUser.GetDash-fm', '获取首页', '/v1/dashboard', '', 'GET', '2024-03-06 14:52:08.399', '2024-03-06 14:52:08.399', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (34, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysConfig.GetPage-fm', '获取配置管理列表', '/v1/config', '', 'GET', '2024-03-06 14:52:08.427', '2024-03-06 14:52:08.427', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (35, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysConfig.Get-fm', '获取配置管理', '/v1/config/:id', '', 'GET', '2024-03-06 14:52:08.444', '2024-03-06 14:52:08.444', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (36, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysConfig.GetSysConfigByKEYForService-fm', '根据Key获取SysConfig的Service', '/v1/configKey/:configKey', '', 'GET', '2024-03-06 14:52:08.456', '2024-03-06 14:52:08.456', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (37, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.System.GenerateCaptchaHandler-fm', '获取验证码', '/v1/captcha', '', 'GET', '2024-03-06 14:52:08.491', '2024-03-06 14:52:08.491', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (38, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysMenu.GetMenuTreeSelect-fm', '角色修改使用的菜单列表', '/v1/roleMenuTreeselect/:roleId', '', 'GET', '2024-03-06 14:52:08.503', '2024-03-06 14:52:08.503', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (39, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysDept.GetDeptTreeRoleSelect-fm', '', '/v1/roleDeptTreeselect/:roleId', '', 'GET', '2024-03-06 14:52:08.518', '2024-03-06 14:52:08.518', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (40, 'github.com/devops-base/devops-core/sdk/pkg/jwtauth.(*GinJWTMiddleware).RefreshHandler-fm', '', '/v1/refresh_token', '', 'GET', '2024-03-06 14:52:08.528', '2024-03-06 14:52:08.528', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (41, 'github.com/devops-base/devops-admin/pkg/app/jobs/apis.SysJob.RemoveJobForService-fm', '', '/v1/job/remove/:id', '', 'GET', '2024-03-06 14:52:08.556', '2024-03-06 14:52:08.556', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (42, 'github.com/devops-base/devops-admin/pkg/app/jobs/apis.SysJob.StartJobForService-fm', '', '/v1/job/start/:id', '', 'GET', '2024-03-06 14:52:08.570', '2024-03-06 14:52:08.570', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (43, 'github.com/devops-base/devops-core/tools/transfer.Handler.func1', '', '/v1/metrics', '', 'GET', '2024-03-06 14:52:08.581', '2024-03-06 14:52:08.581', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (44, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysMenu.GetMenuRole-fm', '根据登录角色名称获取菜单列表数据（左菜单使用）', '/v1/menurole', '', 'GET', '2024-03-06 14:52:08.611', '2024-03-06 14:52:08.611', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (45, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysPost.GetPage-fm', '岗位列表数据', '/v1/post', '', 'GET', '2024-03-06 14:52:08.624', '2024-03-06 14:52:08.624', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (46, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysPost.Get-fm', '获取岗位信息', '/v1/post/:id', '', 'GET', '2024-03-06 14:52:08.635', '2024-03-06 14:52:08.635', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (47, 'github.com/devops-base/devops-admin/pkg/app/other/router.registerMonitorRouter.func1', '', '/v1/health', '', 'GET', '2024-03-06 14:52:08.664', '2024-03-06 14:52:08.664', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (48, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysConfig.Get2SysApp-fm', '获取系统前台配置信息，主要注意这里不在验证权限', '/v1/option-config', '', 'GET', '2024-03-06 14:52:08.674', '2024-03-06 14:52:08.674', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (49, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysUser.GetProfile-fm', '获取个人中心用户', '/v1/user/profile', '', 'GET', '2024-03-06 14:52:08.684', '2024-03-06 14:52:08.684', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (50, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysUser.GetInfo-fm', '获取个人信息', '/v1/getUserInfo', '', 'GET', '2024-03-06 14:52:08.696', '2024-03-06 14:52:08.696', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (51, 'github.com/gin-gonic/gin.(*RouterGroup).createStaticHandler.func1', '', '/static/*filepath', '', 'GET', '2024-03-06 14:52:08.707', '2024-03-06 14:52:08.707', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (52, 'github.com/swaggo/gin-swagger.CustomWrapHandler.func1', '', '/swagger/admin/*any', '', 'GET', '2024-03-06 14:52:08.717', '2024-03-06 14:52:08.717', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (53, 'github.com/devops-base/devops-core/sdk/pkg/ws.(*Manager).WsClient-fm', '', '/ws/:id/:channel', '', 'GET', '2024-03-06 14:52:08.727', '2024-03-06 14:52:08.727', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (54, 'github.com/devops-base/devops-core/sdk/pkg/ws.(*Manager).UnWsClient-fm', '', '/wslogout/:id/:channel', '', 'GET', '2024-03-06 14:52:08.738', '2024-03-06 14:52:08.738', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (55, 'github.com/devops-base/devops-admin/pkg/common/middleware/handler.Ping', '', '/info', '', 'GET', '2024-03-06 14:52:08.749', '2024-03-06 14:52:08.749', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (56, 'github.com/gin-gonic/gin.(*RouterGroup).createStaticHandler.func1', '', '/form-generator/*filepath', '', 'GET', '2024-03-06 14:52:08.759', '2024-03-06 14:52:08.759', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (57, 'github.com/devops-base/devops-admin/pkg/common/actions.CreateAction.func1', '', '/v1/sysjob', '', 'POST', '2024-03-06 14:52:08.769', '2024-03-06 14:52:08.769', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (58, 'github.com/devops-base/devops-admin/pkg/app/other/apis/tools.SysTable.Insert-fm', '添加表结构', '/v1/sys/tables/info', '', 'POST', '2024-03-06 14:52:08.778', '2024-03-06 14:52:08.778', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (59, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysDept.Insert-fm', '添加部门', '/v1/sysDept', '', 'POST', '2024-03-06 14:52:08.790', '2024-03-06 14:52:08.790', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (60, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysMenu.Insert-fm', '创建菜单', '/v1/sysMenu', '', 'POST', '2024-03-06 14:52:08.802', '2024-03-06 14:52:08.802', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (61, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysRole.Insert-fm', '创建角色', '/v1/sysRole', '', 'POST', '2024-03-06 14:52:08.813', '2024-03-06 14:52:08.813', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (62, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysUser.Insert-fm', '创建用户', '/v1/sysUser', '', 'POST', '2024-03-06 14:52:08.824', '2024-03-06 14:52:08.824', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (63, 'github.com/devops-base/devops-core/sdk/pkg/jwtauth.(*GinJWTMiddleware).LoginHandler-fm', '', '/v1/login', '', 'POST', '2024-03-06 14:52:08.837', '2024-03-06 14:52:08.837', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (64, 'github.com/devops-base/devops-admin/pkg/common/middleware/handler.LogOut', '', '/v1/logout', '', 'POST', '2024-03-06 14:52:08.848', '2024-03-06 14:52:08.848', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (65, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysDictData.Insert-fm', '添加字典数据', '/v1/dict/data', '', 'POST', '2024-03-06 14:52:08.860', '2024-03-06 14:52:08.860', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (66, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysDictType.Insert-fm', '添加字典类型', '/v1/dict/type', '', 'POST', '2024-03-06 14:52:08.871', '2024-03-06 14:52:08.871', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (67, 'github.com/devops-base/devops-admin/pkg/app/other/apis.File.UploadFile-fm', '上传图片', '/v1/public/uploadFile', '', 'POST', '2024-03-06 14:52:08.882', '2024-03-06 14:52:08.882', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (68, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysPost.Insert-fm', '添加岗位', '/v1/post', '', 'POST', '2024-03-06 14:52:08.891', '2024-03-06 14:52:08.891', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (69, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysConfig.Insert-fm', '创建配置管理', '/v1/config', '', 'POST', '2024-03-06 14:52:08.901', '2024-03-06 14:52:08.901', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (70, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysUser.InsetAvatar-fm', '修改头像', '/v1/user/avatar', '', 'POST', '2024-03-06 14:52:08.911', '2024-03-06 14:52:08.911', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (71, 'github.com/devops-base/devops-admin/pkg/common/actions.UpdateAction.func1', '', '/v1/sysjob', '', 'PUT', '2024-03-06 14:52:08.922', '2024-03-06 14:52:08.922', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (72, 'github.com/devops-base/devops-admin/pkg/app/other/apis/tools.SysTable.Update-fm', '修改表结构', '/v1/sys/tables/info', '', 'PUT', '2024-03-06 14:52:08.932', '2024-03-06 14:52:08.932', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (73, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysApi.Update-fm', '修改接口管理', '/v1/sysApi/:id', '', 'PUT', '2024-03-06 14:52:08.940', '2024-03-06 14:52:08.940', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (74, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysDept.Update-fm', '修改部门信息', '/v1/sysDept/:id', '', 'PUT', '2024-03-06 14:52:08.950', '2024-03-06 14:52:08.950', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (75, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysMenu.Update-fm', '修改菜单', '/v1/sysMenu/:id', '', 'PUT', '2024-03-06 14:52:08.960', '2024-03-06 14:52:08.960', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (76, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysRole.Update-fm', '修改用户角色', '/v1/sysRole/:id', '', 'PUT', '2024-03-06 14:52:08.974', '2024-03-06 14:52:08.974', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (77, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysUser.Update-fm', '修改用户数据', '/v1/sysUser/:id', '', 'PUT', '2024-03-06 14:52:08.987', '2024-03-06 14:52:08.987', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (78, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysConfig.Update2Set-fm', '设置配置', '/v1/set-config', '', 'PUT', '2024-03-06 14:52:09.003', '2024-03-06 14:52:09.003', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (79, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysUser.UpdatePwd-fm', '修改密码', '/v1/user/pwd/set', '', 'PUT', '2024-03-06 14:52:09.017', '2024-03-06 14:52:09.017', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (80, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysUser.ResetPwd-fm', '重置用户密码', '/v1/user/pwd/reset', '', 'PUT', '2024-03-06 14:52:09.029', '2024-03-06 14:52:09.029', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (81, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysUser.UpdateStatus-fm', '修改用户状态', '/v1/user/status', '', 'PUT', '2024-03-06 14:52:09.044', '2024-03-06 14:52:09.044', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (82, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysDictData.Update-fm', '修改字典数据', '/v1/dict/data/:dictCode', '', 'PUT', '2024-03-06 14:52:09.056', '2024-03-06 14:52:09.056', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (83, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysDictType.Update-fm', '修改字典类型', '/v1/dict/type/:id', '', 'PUT', '2024-03-06 14:52:09.068', '2024-03-06 14:52:09.068', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (84, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysRole.Update2Status-fm', '修改用户角色', '/v1/role-status', '', 'PUT', '2024-03-06 14:52:09.080', '2024-03-06 14:52:09.080', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (85, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysRole.Update2DataScope-fm', '更新角色数据权限', '/v1/roledatascope', '', 'PUT', '2024-03-06 14:52:09.089', '2024-03-06 14:52:09.089', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (86, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysConfig.Update-fm', '修改配置管理', '/v1/config/:id', '', 'PUT', '2024-03-06 14:52:09.100', '2024-03-06 14:52:09.100', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (87, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysPost.Update-fm', '修改岗位', '/v1/post/:id', '', 'PUT', '2024-03-06 14:52:09.110', '2024-03-06 14:52:09.110', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (88, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysLoginLog.Delete-fm', '登录日志删除', '/v1/sys-login-log', '', 'DELETE', '2024-03-06 14:52:09.119', '2024-03-06 14:52:09.119', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (89, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysOperaLog.Delete-fm', '删除操作日志', '/v1/sys-opera-log', '', 'DELETE', '2024-03-06 14:52:09.128', '2024-03-06 14:52:09.128', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (90, 'github.com/devops-base/devops-admin/pkg/common/actions.DeleteAction.func1', '', '/v1/sysjob', '', 'DELETE', '2024-03-06 14:52:09.139', '2024-03-06 14:52:09.139', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (91, 'github.com/devops-base/devops-admin/pkg/app/other/apis/tools.SysTable.Delete-fm', '删除表结构', '/v1/sys/tables/info/:tableId', '', 'DELETE', '2024-03-06 14:52:09.149', '2024-03-06 14:52:09.149', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (92, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysDept.Delete-fm', '删除部门', '/v1/sysDept/:id', '', 'DELETE', '2024-03-06 14:52:09.157', '2024-03-06 14:52:09.157', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (93, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysMenu.Delete-fm', '删除菜单', '/v1/sysMenu/:id', '', 'DELETE', '2024-03-06 14:52:09.166', '2024-03-06 14:52:09.166', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (94, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysRole.Delete-fm', '删除用户角色', '/v1/sysRole/:id', '', 'DELETE', '2024-03-06 14:52:09.176', '2024-03-06 14:52:09.176', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (95, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysUser.Delete-fm', '删除用户数据', '/v1/sysUser/:id', '', 'DELETE', '2024-03-06 14:52:09.186', '2024-03-06 14:52:09.186', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (96, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysDictData.Delete-fm', '删除字典数据', '/v1/dict/data', '', 'DELETE', '2024-03-06 14:52:09.197', '2024-03-06 14:52:09.197', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (97, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysDictType.Delete-fm', '删除字典类型', '/v1/dict/type', '', 'DELETE', '2024-03-06 14:52:09.207', '2024-03-06 14:52:09.207', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (98, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysConfig.Delete-fm', '删除配置管理', '/v1/config', '', 'DELETE', '2024-03-06 14:52:09.218', '2024-03-06 14:52:09.218', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (99, 'github.com/devops-base/devops-admin/pkg/app/admin/apis.SysPost.Delete-fm', '删除岗位', '/v1/post', '', 'DELETE', '2024-03-06 14:52:09.230', '2024-03-06 14:52:09.230', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (100, 'github.com/gin-gonic/gin.(*RouterGroup).createStaticHandler.func1', '', '/static/*filepath', '', 'HEAD', '2024-03-06 14:52:09.240', '2024-03-06 14:52:09.240', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (101, 'github.com/gin-gonic/gin.(*RouterGroup).createStaticHandler.func1', '', '/form-generator/*filepath', '', 'HEAD', '2024-03-06 14:52:09.251', '2024-03-06 14:52:09.251', NULL, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for sys_casbin_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_casbin_rule`;
CREATE TABLE `sys_casbin_rule` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ptype` varchar(100) DEFAULT NULL,
  `v0` varchar(100) DEFAULT NULL,
  `v1` varchar(100) DEFAULT NULL,
  `v2` varchar(100) DEFAULT NULL,
  `v3` varchar(100) DEFAULT NULL,
  `v4` varchar(100) DEFAULT NULL,
  `v5` varchar(100) DEFAULT NULL,
  `v6` varchar(25) DEFAULT NULL,
  `v7` varchar(25) DEFAULT NULL,
  `p_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sys_casbin_rule` (`ptype`,`v0`,`v1`,`v2`,`v3`,`v4`,`v5`,`v6`,`v7`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_casbin_rule
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_columns
-- ----------------------------
DROP TABLE IF EXISTS `sys_columns`;
CREATE TABLE `sys_columns` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `table_id` bigint(20) DEFAULT NULL,
  `column_name` varchar(128) DEFAULT NULL,
  `column_comment` varchar(128) DEFAULT NULL,
  `column_type` varchar(128) DEFAULT NULL,
  `go_type` varchar(128) DEFAULT NULL,
  `go_field` varchar(128) DEFAULT NULL,
  `json_field` varchar(128) DEFAULT NULL,
  `is_pk` varchar(4) DEFAULT NULL,
  `is_increment` varchar(4) DEFAULT NULL,
  `is_required` varchar(4) DEFAULT NULL,
  `is_insert` varchar(4) DEFAULT NULL,
  `is_edit` varchar(4) DEFAULT NULL,
  `is_list` varchar(4) DEFAULT NULL,
  `is_query` varchar(4) DEFAULT NULL,
  `query_type` varchar(128) DEFAULT NULL,
  `html_type` varchar(128) DEFAULT NULL,
  `dict_type` varchar(128) DEFAULT NULL,
  `sort` bigint(20) DEFAULT NULL,
  `list` varchar(1) DEFAULT NULL,
  `pk` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `super_column` tinyint(1) DEFAULT NULL,
  `usable_column` tinyint(1) DEFAULT NULL,
  `increment` tinyint(1) DEFAULT NULL,
  `insert` tinyint(1) DEFAULT NULL,
  `edit` tinyint(1) DEFAULT NULL,
  `query` tinyint(1) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `fk_table_name` longtext,
  `fk_table_name_class` longtext,
  `fk_table_name_package` longtext,
  `fk_label_id` longtext,
  `fk_label_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`column_id`),
  KEY `idx_sys_columns_deleted_at` (`deleted_at`),
  KEY `idx_sys_columns_create_by` (`create_by`),
  KEY `idx_sys_columns_update_by` (`update_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_columns
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键编码',
  `config_name` varchar(128) DEFAULT NULL COMMENT 'ConfigName',
  `config_key` varchar(128) DEFAULT NULL COMMENT 'ConfigKey',
  `config_value` varchar(255) DEFAULT NULL COMMENT 'ConfigValue',
  `config_type` varchar(64) DEFAULT NULL COMMENT 'ConfigType',
  `is_frontend` varchar(64) DEFAULT NULL COMMENT '是否前台',
  `remark` varchar(128) DEFAULT NULL COMMENT 'Remark',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  KEY `idx_sys_config_deleted_at` (`deleted_at`),
  KEY `idx_sys_config_create_by` (`create_by`),
  KEY `idx_sys_config_update_by` (`update_by`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` (`id`, `config_name`, `config_key`, `config_value`, `config_type`, `is_frontend`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, '皮肤样式', 'sys_index_skinName', 'skin-green', 'Y', '0', '主框架页-默认皮肤样式名称:蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow', 1, 1, '2021-05-13 19:56:37.913', '2021-06-05 13:50:13.123', NULL);
INSERT INTO `sys_config` (`id`, `config_name`, `config_key`, `config_value`, `config_type`, `is_frontend`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, '初始密码', 'sys_user_initPassword', '123456', 'Y', '0', '用户管理-账号初始密码:123456', 1, 1, '2021-05-13 19:56:37.913', '2021-05-13 19:56:37.913', NULL);
INSERT INTO `sys_config` (`id`, `config_name`, `config_key`, `config_value`, `config_type`, `is_frontend`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, '侧栏主题', 'sys_index_sideTheme', 'theme-dark', 'Y', '0', '主框架页-侧边栏主题:深色主题theme-dark，浅色主题theme-light', 1, 1, '2021-05-13 19:56:37.913', '2021-05-13 19:56:37.913', NULL);
INSERT INTO `sys_config` (`id`, `config_name`, `config_key`, `config_value`, `config_type`, `is_frontend`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, '系统名称', 'sys_app_name', 'go-admin管理系统', 'Y', '1', '', 1, 0, '2021-03-17 08:52:06.067', '2021-05-28 10:08:25.248', NULL);
INSERT INTO `sys_config` (`id`, `config_name`, `config_key`, `config_value`, `config_type`, `is_frontend`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, '系统logo', 'sys_app_logo', 'https://doc-image.zhangwj.com/img/go-admin.png', 'Y', '1', '', 1, 0, '2021-03-17 08:53:19.462', '2021-03-17 08:53:19.462', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL,
  `dept_path` varchar(255) DEFAULT NULL,
  `dept_name` varchar(128) DEFAULT NULL,
  `sort` tinyint(4) DEFAULT NULL,
  `leader` varchar(128) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sys_dept_create_by` (`create_by`),
  KEY `idx_sys_dept_update_by` (`update_by`),
  KEY `idx_sys_dept_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` (`id`, `parent_id`, `dept_path`, `dept_name`, `sort`, `leader`, `phone`, `email`, `status`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 0, '/0/1/', '牛掰科技', 11, 'bst', '13402877460', 'nn@qq.com', '2', 1, 1, '2021-05-13 19:56:37.913', '2023-03-31 16:34:51.625', NULL);
INSERT INTO `sys_dept` (`id`, `parent_id`, `dept_path`, `dept_name`, `sort`, `leader`, `phone`, `email`, `status`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (7, 1, '/0/1/7/', '站务组', 1, 'bst', '13402877460', 'nn@qq.com', '2', 1, 1, '2021-05-13 19:56:37.913', '2023-04-13 15:54:42.699', NULL);
INSERT INTO `sys_dept` (`id`, `parent_id`, `dept_path`, `dept_name`, `sort`, `leader`, `phone`, `email`, `status`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, 1, '/0/1/8/', '运维组', 0, 'cf', '13402877460', 'nn@qq.com', '2', 1, 1, '2021-05-13 19:56:37.913', '2023-04-13 15:54:42.699', NULL);
INSERT INTO `sys_dept` (`id`, `parent_id`, `dept_path`, `dept_name`, `sort`, `leader`, `phone`, `email`, `status`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (9, 1, '/0/1/9/', '前端组', 0, 'bst', '13402877460', 'nn@qq.com', '2', 1, 1, '2021-05-13 19:56:37.913', '2023-04-13 15:54:42.699', NULL);
INSERT INTO `sys_dept` (`id`, `parent_id`, `dept_path`, `dept_name`, `sort`, `leader`, `phone`, `email`, `status`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (10, 1, '/0/1/10/', '用车组', 3, 'bst', '13402877460', 'nn@qq.com', '1', 1, 1, '2021-05-13 19:56:37.913', '2021-06-05 17:07:08.503', NULL);
INSERT INTO `sys_dept` (`id`, `parent_id`, `dept_path`, `dept_name`, `sort`, `leader`, `phone`, `email`, `status`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (11, 1, '/0/1/11/', '中台组', 4, 'bst', '13402877460', 'nn@qq.com', '2', 1, 1, '2023-04-10 15:19:53.000', '2023-04-10 15:19:56.000', NULL);
INSERT INTO `sys_dept` (`id`, `parent_id`, `dept_path`, `dept_name`, `sort`, `leader`, `phone`, `email`, `status`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (12, 1, '/0/1/22/', '公共部门', 22, 'bst', '12312312321', 'nn@qq.com', '2', 0, 0, '2023-04-12 14:44:20.797', '2023-04-12 14:44:20.809', NULL);
INSERT INTO `sys_dept` (`id`, `parent_id`, `dept_path`, `dept_name`, `sort`, `leader`, `phone`, `email`, `status`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (13, 1, '/0/1/11/', '测试组1', 11, 'zhang1', '17212831321', 'zhang1@qq.com', '2', 0, 0, '2024-03-06 15:12:05.785', '2024-03-06 15:12:05.811', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT,
  `dict_sort` bigint(20) DEFAULT NULL,
  `dict_label` varchar(128) DEFAULT NULL,
  `dict_value` varchar(255) DEFAULT NULL,
  `dict_type` varchar(64) DEFAULT NULL,
  `css_class` varchar(128) DEFAULT NULL,
  `list_class` varchar(128) DEFAULT NULL,
  `is_default` varchar(8) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `default` varchar(8) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`dict_code`),
  KEY `idx_sys_dict_data_update_by` (`update_by`),
  KEY `idx_sys_dict_data_deleted_at` (`deleted_at`),
  KEY `idx_sys_dict_data_create_by` (`create_by`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 0, '正常', '2', 'sys_normal_disable', '', '', '', 2, '', '系统正常', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:40.168', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 0, '停用', '1', 'sys_normal_disable', '', '', '', 2, '', '系统停用', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 0, '男', '0', 'sys_user_sex', '', '', '', 2, '', '性别男', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, 0, '女', '1', 'sys_user_sex', '', '', '', 2, '', '性别女', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, 0, '未知', '2', 'sys_user_sex', '', '', '', 2, '', '性别未知', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (6, 0, '显示', '0', 'sys_show_hide', '', '', '', 2, '', '显示菜单', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (7, 0, '隐藏', '1', 'sys_show_hide', '', '', '', 2, '', '隐藏菜单', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, 0, '是', 'Y', 'sys_yes_no', '', '', '', 2, '', '系统默认是', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (9, 0, '否', 'N', 'sys_yes_no', '', '', '', 2, '', '系统默认否', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (10, 0, '正常', '2', 'sys_job_status', '', '', '', 2, '', '正常状态', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (11, 0, '停用', '1', 'sys_job_status', '', '', '', 2, '', '停用状态', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (12, 0, '默认', 'DEFAULT', 'sys_job_group', '', '', '', 2, '', '默认分组', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (13, 0, '系统', 'SYSTEM', 'sys_job_group', '', '', '', 2, '', '系统分组', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (14, 0, '通知', '1', 'sys_notice_type', '', '', '', 2, '', '通知', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (15, 0, '公告', '2', 'sys_notice_type', '', '', '', 2, '', '公告', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (16, 0, '正常', '2', 'sys_common_status', '', '', '', 2, '', '正常状态', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (17, 0, '关闭', '1', 'sys_common_status', '', '', '', 2, '', '关闭状态', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (18, 0, '新增', '1', 'sys_oper_type', '', '', '', 2, '', '新增操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (19, 0, '修改', '2', 'sys_oper_type', '', '', '', 2, '', '修改操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (20, 0, '删除', '3', 'sys_oper_type', '', '', '', 2, '', '删除操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (21, 0, '授权', '4', 'sys_oper_type', '', '', '', 2, '', '授权操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (22, 0, '导出', '5', 'sys_oper_type', '', '', '', 2, '', '导出操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (23, 0, '导入', '6', 'sys_oper_type', '', '', '', 2, '', '导入操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (24, 0, '强退', '7', 'sys_oper_type', '', '', '', 2, '', '强退操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (25, 0, '生成代码', '8', 'sys_oper_type', '', '', '', 2, '', '生成操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (26, 0, '清空数据', '9', 'sys_oper_type', '', '', '', 2, '', '清空操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (27, 0, '成功', '0', 'sys_notice_status', '', '', '', 2, '', '成功状态', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (28, 0, '失败', '1', 'sys_notice_status', '', '', '', 2, '', '失败状态', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (29, 0, '登录', '10', 'sys_oper_type', '', '', '', 2, '', '登录操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (30, 0, '退出', '11', 'sys_oper_type', '', '', '', 2, '', '', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (31, 0, '获取验证码', '12', 'sys_oper_type', '', '', '', 2, '', '获取验证码', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (32, 0, '正常', '1', 'sys_content_status', '', '', '', 1, '', '', 1, 1, '2021-05-13 19:56:40.845', '2021-05-13 19:56:40.845', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (33, 1, '禁用', '2', 'sys_content_status', '', '', '', 1, '', '', 1, 1, '2021-05-13 19:56:40.845', '2021-05-13 19:56:40.845', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dict_name` varchar(128) DEFAULT NULL,
  `dict_type` varchar(128) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`dict_id`),
  KEY `idx_sys_dict_type_update_by` (`update_by`),
  KEY `idx_sys_dict_type_deleted_at` (`deleted_at`),
  KEY `idx_sys_dict_type_create_by` (`create_by`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, '系统开关', 'sys_normal_disable', 2, '系统开关列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, '用户性别', 'sys_user_sex', 2, '用户性别列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, '菜单状态', 'sys_show_hide', 2, '菜单状态列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, '系统是否', 'sys_yes_no', 2, '系统是否列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, '任务状态', 'sys_job_status', 2, '任务状态列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (6, '任务分组', 'sys_job_group', 2, '任务分组列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (7, '通知类型', 'sys_notice_type', 2, '通知类型列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, '系统状态', 'sys_common_status', 2, '登录状态列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (9, '操作类型', 'sys_oper_type', 2, '操作类型列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (10, '通知状态', 'sys_notice_status', 2, '通知状态列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (11, '内容状态', 'sys_content_status', 2, '', 1, 1, '2021-05-13 19:56:40.813', '2021-05-13 19:56:40.813', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) DEFAULT NULL,
  `job_group` varchar(255) DEFAULT NULL,
  `job_type` tinyint(4) DEFAULT NULL,
  `cron_expression` varchar(255) DEFAULT NULL,
  `invoke_target` varchar(255) DEFAULT NULL,
  `args` varchar(255) DEFAULT NULL,
  `misfire_policy` bigint(20) DEFAULT NULL,
  `concurrent` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `entry_id` smallint(6) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`job_id`),
  KEY `idx_sys_job_deleted_at` (`deleted_at`),
  KEY `idx_sys_job_create_by` (`create_by`),
  KEY `idx_sys_job_update_by` (`update_by`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
BEGIN;
INSERT INTO `sys_job` (`job_id`, `job_name`, `job_group`, `job_type`, `cron_expression`, `invoke_target`, `args`, `misfire_policy`, `concurrent`, `status`, `entry_id`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (1, '接口测试', 'DEFAULT', 1, '0/5 * * * * ', 'http://localhost:8000', '', 1, 1, 1, 0, '2021-05-13 19:56:37.914', '2021-06-14 20:59:55.417', NULL, 1, 1);
INSERT INTO `sys_job` (`job_id`, `job_name`, `job_group`, `job_type`, `cron_expression`, `invoke_target`, `args`, `misfire_policy`, `concurrent`, `status`, `entry_id`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (2, '函数测试', 'DEFAULT', 2, '0/5 * * * * ', 'ExamplesOne', '参数', 1, 1, 1, 0, '2021-05-13 19:56:37.914', '2021-05-31 23:55:37.221', NULL, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键编码',
  `username` varchar(128) DEFAULT NULL COMMENT '用户名',
  `status` varchar(4) DEFAULT NULL COMMENT '状态',
  `ipaddr` varchar(255) DEFAULT NULL COMMENT 'ip地址',
  `login_location` varchar(255) DEFAULT NULL COMMENT '归属地',
  `browser` varchar(255) DEFAULT NULL COMMENT '浏览器',
  `os` varchar(255) DEFAULT NULL COMMENT '系统',
  `platform` varchar(255) DEFAULT NULL COMMENT '固件',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '登录时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `msg` varchar(255) DEFAULT NULL COMMENT '信息',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`),
  KEY `idx_sys_login_log_create_by` (`create_by`),
  KEY `idx_sys_login_log_update_by` (`update_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `icon` varchar(128) DEFAULT NULL,
  `path` varchar(128) DEFAULT NULL,
  `paths` varchar(128) DEFAULT NULL,
  `menu_type` varchar(1) DEFAULT NULL,
  `action` varchar(16) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `parent_id` smallint(6) DEFAULT NULL,
  `no_cache` tinyint(1) DEFAULT NULL,
  `breadcrumb` varchar(255) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `sort` tinyint(4) DEFAULT NULL,
  `visible` varchar(1) DEFAULT NULL,
  `is_frame` varchar(1) DEFAULT '0',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sys_menu_create_by` (`create_by`),
  KEY `idx_sys_menu_update_by` (`update_by`),
  KEY `idx_sys_menu_deleted_at` (`deleted_at`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=557 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 'Admin', '系统管理', 'api-server', '/admin', '', 'M', '', '', 0, 0, '', 'Layout', 15, '0', '1', 0, 1, '2021-05-20 21:58:45.679', '2023-03-30 11:24:18.116', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 'SysUserManage', '用户管理', 'user', '/admin/sysUser', '', 'C', '', 'admin:sysUser:list', 2, 0, '', '/admin/sys-user/index', 5, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-03-30 11:24:18.119', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (43, '', '新增管理员', 'app-group-fill', '', '', 'F', '', 'admin:sysUser:add', 3, 0, '', '', 11, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-03-30 11:24:18.121', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (44, '', '查询管理员', 'app-group-fill', '', '/44', 'F', 'GET', 'admin:sysUser:query', 3, 0, '', '', 40, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-03-30 11:24:18.124', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (45, '', '修改管理员', 'app-group-fill', '', '/45', 'F', 'PUT', 'admin:sysUser:update', 3, 0, '', '', 30, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-03-30 11:24:18.126', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (46, '', '删除管理员', 'app-group-fill', '', '/46', 'F', 'DELETE', 'admin:sysUser:delete', 3, 0, '', '', 20, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-03-30 11:24:18.127', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (51, 'SysMenuManage', '菜单管理', 'tree-table', '/admin/sysMenu', '/51', 'C', '无', 'admin:sysMenu:list', 2, 1, '', '/admin/sys-menu/index', 30, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-03-30 11:24:18.131', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (52, 'SysRoleManage', '角色管理', 'peoples', '/admin/sysRole', '/52', 'C', '无', 'admin:sysRole:list', 2, 1, '', '/admin/sys-role/index', 20, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-03-30 11:24:18.133', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (56, 'SysDeptManage', '部门管理', 'tree', '/admin/sysDept', '/56', 'C', '无', 'admin:sysDept:list', 2, 0, '', '/admin/sys-dept/index', 40, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-03-30 11:24:18.135', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (57, 'SysPostManage', '岗位管理', 'pass', '/admin/sysPost', '/57', 'C', '无', 'admin:sysPost:list', 2, 0, '', '/admin/sys-post/index', 50, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-03-30 11:24:18.136', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (58, 'Dict', '字典管理', 'education', '/admin/dict', '/58', 'C', '无', 'admin:sysDictType:list', 2, 0, '', '/admin/dict/index', 60, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-03-30 11:24:18.138', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (59, 'SysDictDataManage', '字典数据', 'education', '/admin/dict/data/:dictId', '/59', 'C', '无', 'admin:sysDictData:list', 2, 0, '', '/admin/dict/data', 100, '1', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-03-30 11:24:18.140', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (60, 'Tools', '开发工具', 'dev-tools', '/dev-tools', '/0/60', 'M', '无', '', 0, 0, '', 'Layout', 40, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-31 10:52:23.670', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (61, 'Swagger', '系统接口', 'guide', '/dev-tools/swagger', '/0/60/61', 'C', '无', '', 60, 0, '', '/dev-tools/swagger/index', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-31 10:52:23.670', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (62, 'SysConfigManage', '参数管理', 'swagger', '/admin/sysConfig', '/62', 'C', '无', 'admin:sysConfig:list', 2, 0, '', '/admin/sys-config/index', 70, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-03-30 11:24:18.147', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (211, 'Syslog', '系统审计', 'log', '/syslog', '/211', 'M', '', '', 0, 0, '', 'Layout', 80, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-03-30 11:24:18.150', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (212, 'SysLoginLogManage', '登录日志', 'logininfor', '/syslog/sysLoginLog', '', 'C', '', 'admin:sysLoginLog:list', 211, 0, '', '/syslog/sys-login-log/index', 2, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-03-30 11:24:18.152', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (216, 'OperLog', '操作日志', 'skill', '/syslog/sysOperaLog', '', 'C', '', 'admin:sysOperLog:list', 211, 0, '', '/syslog/sys-oper-log/index', 2, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-03-30 11:24:18.154', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (220, '', '新增菜单', 'app-group-fill', '', '/51/220', 'F', '', 'admin:sysMenu:add', 51, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.157', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (221, '', '修改菜单', 'app-group-fill', '', '/51/221', 'F', '', 'admin:sysMenu:edit', 51, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.159', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (222, '', '查询菜单', 'app-group-fill', '', '/51/222', 'F', '', 'admin:sysMenu:query', 51, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.161', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (223, '', '删除菜单', 'app-group-fill', '', '/51/223', 'F', '', 'admin:sysMenu:delete', 51, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.165', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (224, '', '新增角色', 'app-group-fill', '', '/52/224', 'F', '', 'admin:sysRole:add', 52, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.166', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (225, '', '查询角色', 'app-group-fill', '', '/52/225', 'F', '', 'admin:sysRole:query', 52, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.168', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (226, '', '修改角色', 'app-group-fill', '', '/52/226', 'F', '', 'admin:sysRole:update', 52, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.170', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (227, '', '删除角色', 'app-group-fill', '', '/52/227', 'F', '', 'admin:sysRole:remove', 52, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.173', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (228, '', '查询部门', 'app-group-fill', '', '/56/228', 'F', '', 'admin:sysDept:query', 56, 0, '', '', 40, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-03-30 11:24:18.175', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (229, '', '新增部门', 'app-group-fill', '', '/56/229', 'F', '', 'admin:sysDept:add', 56, 0, '', '', 10, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-03-30 11:24:18.182', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (230, '', '修改部门', 'app-group-fill', '', '/56/230', 'F', '', 'admin:sysDept:edit', 56, 0, '', '', 30, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-03-30 11:24:18.185', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (231, '', '删除部门', 'app-group-fill', '', '/56/231', 'F', '', 'admin:sysDept:remove', 56, 0, '', '', 20, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-03-30 11:24:18.187', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (232, '', '查询岗位', 'app-group-fill', '', '/57/232', 'F', '', 'admin:sysPost:query', 57, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.189', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (233, '', '新增岗位', 'app-group-fill', '', '/57/233', 'F', '', 'admin:sysPost:add', 57, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.191', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (234, '', '修改岗位', 'app-group-fill', '', '/57/234', 'F', '', 'admin:sysPost:edit', 57, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.193', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (235, '', '删除岗位', 'app-group-fill', '', '/57/235', 'F', '', 'admin:sysPost:remove', 57, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.196', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (236, '', '查询字典', 'app-group-fill', '', '/58/236', 'F', '', 'admin:sysDictType:query', 58, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.199', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (237, '', '新增类型', 'app-group-fill', '', '/58/237', 'F', '', 'admin:sysDictType:add', 58, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.200', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (238, '', '修改类型', 'app-group-fill', '', '/58/238', 'F', '', 'admin:sysDictType:edit', 58, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.202', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (239, '', '删除类型', 'app-group-fill', '', '/58/239', 'F', '', 'system:sysdicttype:remove', 58, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.204', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (240, '', '查询数据', 'app-group-fill', '', '/59/240', 'F', '', 'admin:sysDictData:query', 59, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.205', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (241, '', '新增数据', 'app-group-fill', '', '/59/241', 'F', '', 'admin:sysDictData:add', 59, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.208', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (242, '', '修改数据', 'app-group-fill', '', '/59/242', 'F', '', 'admin:sysDictData:edit', 59, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.209', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (243, '', '删除数据', 'app-group-fill', '', '/59/243', 'F', '', 'admin:sysDictData:remove', 59, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.212', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (244, '', '查询参数', 'app-group-fill', '', '/62/244', 'F', '', 'admin:sysConfig:query', 62, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.215', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (245, '', '新增参数', 'app-group-fill', '', '/62/245', 'F', '', 'admin:sysConfig:add', 62, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.218', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (246, '', '修改参数', 'app-group-fill', '', '/62/246', 'F', '', 'admin:sysConfig:edit', 62, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.220', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (247, '', '删除参数', 'app-group-fill', '', '/62/247', 'F', '', 'admin:sysConfig:remove', 62, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.222', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (248, '', '查询登录日志', 'app-group-fill', '', '/248', 'F', '', 'admin:sysLoginLog:query', 212, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.224', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (249, '', '删除登录日志', 'app-group-fill', '', '/249', 'F', '', 'admin:sysLoginLog:remove', 212, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.226', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (250, '', '查询操作日志', 'app-group-fill', '', '', 'F', '', 'admin:sysOperLog:query', 216, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.229', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (251, '', '删除操作日志', 'app-group-fill', '', '/251', 'F', '', 'admin:sysOperLog:remove', 216, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-30 11:24:18.231', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (261, 'Gen', '代码生成', 'code', '/dev-tools/gen', '/0/60/261', 'C', '', '', 60, 0, '', '/dev-tools/gen/index', 2, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-31 10:52:23.670', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (262, 'EditTable', '代码生成修改', 'build', '/dev-tools/editTable', '/0/60/262', 'C', '', '', 60, 0, '', '/dev-tools/gen/editTable', 100, '1', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-31 10:52:23.670', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (264, 'Build', '表单构建', 'build', '/dev-tools/build', '/0/60/264', 'C', '', '', 60, 0, '', '/dev-tools/build/index', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-03-31 10:52:23.670', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (269, 'ServerMonitor', '服务监控', 'druid', '/sys-tools/monitor', '', 'C', '', 'sysTools:serverMonitor:list', 537, 0, '', '/sys-tools/monitor', 3, '0', '1', 1, 1, '2020-04-14 00:28:19.000', '2023-03-30 11:24:18.238', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (459, 'Schedule', '定时任务', 'time-range', '/schedule', '/0/459', 'M', '无', '', 0, 0, '', 'Layout', 20, '0', '1', 1, 1, '2020-08-03 09:17:37.000', '2023-03-31 10:52:23.670', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (460, 'ScheduleManage', 'Schedule', 'job', '/schedule/manage', '/0/459/460', 'C', '无', 'job:sysJob:list', 459, 0, '', '/schedule/index', 0, '0', '1', 1, 1, '2020-08-03 09:17:37.000', '2023-03-31 10:52:23.670', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (461, 'sys_job', '分页获取定时任务', 'app-group-fill', '', '/0/459/460/461', 'F', '无', 'job:sysJob:query', 460, 0, '', '', 0, '0', '1', 1, 1, '2020-08-03 09:17:37.000', '2023-03-31 10:52:23.670', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (462, 'sys_job', '创建定时任务', 'app-group-fill', '', '/0/459/460/462', 'F', '无', 'job:sysJob:add', 460, 0, '', '', 0, '0', '1', 1, 1, '2020-08-03 09:17:37.000', '2023-03-31 10:52:23.670', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (463, 'sys_job', '修改定时任务', 'app-group-fill', '', '/0/459/460/463', 'F', '无', 'job:sysJob:edit', 460, 0, '', '', 0, '0', '1', 1, 1, '2020-08-03 09:17:37.000', '2023-03-31 10:52:23.670', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (464, 'sys_job', '删除定时任务', 'app-group-fill', '', '/0/459/460/464', 'F', '无', 'job:sysJob:remove', 460, 0, '', '', 0, '0', '1', 1, 1, '2020-08-03 09:17:37.000', '2023-03-31 10:52:23.670', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (471, 'JobLog', '日志', 'bug', '/schedule/log', '/0/459/471', 'C', '', '', 459, 0, '', '/schedule/log', 0, '1', '1', 1, 1, '2020-08-05 21:24:46.000', '2023-03-31 10:52:23.670', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (528, 'SysApiManage', '接口管理', 'api-doc', '/admin/sysApi', '', 'C', '', 'admin:sysApi:list', 2, 0, '', '/admin/sys-api/index', 5, '0', '0', 0, 1, '2021-05-20 22:08:44.526', '2023-03-30 11:24:18.254', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (529, '', '查询接口', 'app-group-fill', '', '/529', 'F', '无', 'admin:sysApi:query', 528, 0, '', '', 40, '0', '0', 0, 1, '2021-05-20 22:08:44.526', '2023-03-30 11:24:18.255', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (531, '', '修改接口', 'app-group-fill', '', '/531', 'F', '无', 'admin:sysApi:edit', 528, 0, '', '', 30, '0', '0', 0, 1, '2021-05-20 22:08:44.526', '2023-03-30 11:24:18.257', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (537, 'SysTools', '系统工具', 'system-tools', '/sys-tools', '/0/537', 'M', '', '', 0, 0, '', 'Layout', 30, '0', '1', 1, 1, '2021-05-21 11:13:32.166', '2023-03-30 11:24:18.263', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (540, 'SysConfigSet', '参数设置', 'system-tools', '/admin/sys-config/set', '/540', 'C', '', 'admin:sysConfigSet:list', 2, 0, '', '/admin/sys-config/set', 0, '0', '1', 1, 1, '2021-05-25 16:06:52.560', '2023-03-30 11:24:18.267', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (542, '', '修改', 'upload', '', '', 'F', '', 'admin:sysConfigSet:update', 540, 0, '', '', 2, '0', '1', 1, 1, '2021-06-13 11:45:48.670', '2023-03-30 11:24:18.269', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (544, 'Syslog', '系统审计', 'log', '/syslog', '/0/544', 'M', '', '', 0, 0, '', 'Layout', 50, '0', '1', 1, 1, '2023-03-17 14:06:32.859', '2023-04-03 15:15:28.187', '2023-03-17 14:08:07.760');
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (545, 'Dashboard', '数据预览', 'data', '/dashboard', '/0/545', 'M', '', '', 0, 0, '', '/dashboard', 50, '0', '1', 1, 1, NULL, '2023-04-13 14:17:18.118', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (546, 'Metadata', '基础数据', 'api-server', '/metadata', '', 'M', '', '', 0, 0, '', 'Layout', 60, '1', '1', 1, 6, '2023-04-07 13:39:31.706', '2023-06-08 11:02:51.446', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (547, 'Project', '项目管理', 'menus', '/metadata/project', '/547', 'C', '', 'metadata:project:list', 546, 0, '', '/metadata/project/index', 0, '0', '1', 1, 0, '2023-04-07 13:42:38.562', '2023-06-08 11:02:51.469', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (548, 'Module', '模块管理', 'module', '/metadata/module', '/548', 'C', '', 'metadata:module:list', 546, 0, '', '/metadata/module/index', 2, '0', '1', 1, 0, '2023-04-07 13:43:45.292', '2023-06-08 11:02:51.473', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (549, '', '增加项目', 'menus', '', '/547/549', 'F', '', 'metadata:project:add', 547, 0, '', '', 1, '', '0', 1, 0, '2023-04-11 15:48:03.771', '2023-06-08 11:02:51.476', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (550, '', '编辑项目', 'muns', '', '/547/550', 'F', '', 'metadata:project:edit', 547, 0, '', '', 2, '', '0', 1, 0, '2023-04-11 15:48:40.244', '2023-06-08 11:02:51.480', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (551, '', '删除项目', 'meus', '', '/547/551', 'F', '', 'metadata:project:delete', 547, 0, '', '', 3, '', '0', 1, 0, '2023-04-11 15:49:05.406', '2023-06-08 11:02:51.483', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (552, '', '增加模块', 'meus', '', '/548/552', 'F', '', 'metadata:module:add', 548, 0, '', '', 1, '', '0', 1, 0, '2023-04-11 15:52:40.822', '2023-06-08 11:02:51.485', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (553, '', '编辑模块', 'meus', '', '/548/553', 'F', '', 'metadata:module:edit', 548, 0, '', '', 2, '', '0', 1, 0, '2023-04-11 15:53:10.223', '2023-06-08 11:02:51.488', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (554, '', '删除模块', 'meus', '', '/548/554', 'F', '', 'metadata:module:delete', 548, 0, '', '', 3, '', '0', 1, 0, '2023-04-11 15:53:31.079', '2023-06-08 11:02:51.490', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (555, 'Application', '应用管理', 'eos-icons:application-window', '/application', '/0/555', 'M', '', '', 0, 0, '', 'Layout', 65, '0', '1', 6, 0, '2023-06-08 11:05:45.815', '2023-06-08 11:05:45.831', NULL);
INSERT INTO `sys_menu` (`id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (556, 'AppDeploy', '应用发布', 'menus', '/application/appDeploy', '', 'C', '', 'application:deploy:list', 555, 0, '', '/application/appDeploy/index', 5, '0', '1', 6, 6, '2023-06-08 11:08:44.787', '2023-06-08 11:22:25.985', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_menu_api_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_api_rule`;
CREATE TABLE `sys_menu_api_rule` (
  `sys_menu_id` bigint(20) NOT NULL,
  `sys_api_id` bigint(20) NOT NULL COMMENT '主键编码',
  PRIMARY KEY (`sys_menu_id`,`sys_api_id`) USING BTREE,
  KEY `fk_sys_menu_api_rule_sys_api` (`sys_api_id`),
  CONSTRAINT `sys_menu_api_rule_ibfk_1` FOREIGN KEY (`sys_api_id`) REFERENCES `sys_api` (`id`),
  CONSTRAINT `sys_menu_api_rule_ibfk_2` FOREIGN KEY (`sys_menu_id`) REFERENCES `sys_menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_menu_api_rule
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_migration
-- ----------------------------
DROP TABLE IF EXISTS `sys_migration`;
CREATE TABLE `sys_migration` (
  `version` varchar(191) NOT NULL,
  `apply_time` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_migration
-- ----------------------------
BEGIN;
INSERT INTO `sys_migration` (`version`, `apply_time`) VALUES ('1599190683659', '2023-03-13 14:57:48.275');
INSERT INTO `sys_migration` (`version`, `apply_time`) VALUES ('1653638869132', '2023-03-13 14:57:48.633');
COMMIT;

-- ----------------------------
-- Table structure for sys_opera_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_opera_log`;
CREATE TABLE `sys_opera_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键编码',
  `title` varchar(255) DEFAULT NULL COMMENT '操作模块',
  `business_type` varchar(128) DEFAULT NULL COMMENT '操作类型',
  `business_types` varchar(128) DEFAULT NULL COMMENT 'BusinessTypes',
  `method` varchar(128) DEFAULT NULL COMMENT '函数',
  `request_method` varchar(128) DEFAULT NULL COMMENT '请求方式: GET POST PUT DELETE',
  `operator_type` varchar(128) DEFAULT NULL COMMENT '操作类型',
  `oper_name` varchar(128) DEFAULT NULL COMMENT '操作者',
  `dept_name` varchar(128) DEFAULT NULL COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT NULL COMMENT '访问地址',
  `oper_ip` varchar(128) DEFAULT NULL COMMENT '客户端ip',
  `oper_location` varchar(128) DEFAULT NULL COMMENT '访问位置',
  `oper_param` text COMMENT '请求参数',
  `status` varchar(4) DEFAULT NULL COMMENT '操作状态 1:正常 2:关闭',
  `oper_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '操作时间',
  `json_result` varchar(255) DEFAULT NULL COMMENT '返回数据',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `latency_time` varchar(128) DEFAULT NULL COMMENT '耗时',
  `user_agent` varchar(255) DEFAULT NULL COMMENT 'ua',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`),
  KEY `idx_sys_opera_log_create_by` (`create_by`),
  KEY `idx_sys_opera_log_update_by` (`update_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_opera_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_name` varchar(128) DEFAULT NULL,
  `post_code` varchar(128) DEFAULT NULL,
  `sort` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`post_id`),
  KEY `idx_sys_post_create_by` (`create_by`),
  KEY `idx_sys_post_update_by` (`update_by`),
  KEY `idx_sys_post_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_post` (`post_id`, `post_name`, `post_code`, `sort`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, '首席执行官', 'CEO', 0, 2, '首席执行官', 1, 1, '2021-05-13 19:56:37.913', '2021-05-13 19:56:37.913', NULL);
INSERT INTO `sys_post` (`post_id`, `post_name`, `post_code`, `sort`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, '首席技术执行官', 'CTO', 2, 2, '首席技术执行官', 1, 1, '2021-05-13 19:56:37.913', '2021-05-13 19:56:37.913', NULL);
INSERT INTO `sys_post` (`post_id`, `post_name`, `post_code`, `sort`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, '首席运营官', 'COO', 3, 2, '测试工程师', 1, 1, '2021-05-13 19:56:37.913', '2021-05-13 19:56:37.913', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(128) DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  `role_key` varchar(128) DEFAULT NULL,
  `role_sort` bigint(20) DEFAULT NULL,
  `flag` varchar(128) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `data_scope` varchar(128) DEFAULT NULL,
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sys_role_create_by` (`create_by`),
  KEY `idx_sys_role_update_by` (`update_by`),
  KEY `idx_sys_role_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` (`id`, `role_name`, `status`, `role_key`, `role_sort`, `flag`, `remark`, `admin`, `data_scope`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, '系统管理员', '2', 'admin', 1, '', '', 1, '', 1, 1, '2021-05-13 19:56:37.913', '2021-05-13 19:56:37.913', NULL);
INSERT INTO `sys_role` (`id`, `role_name`, `status`, `role_key`, `role_sort`, `flag`, `remark`, `admin`, `data_scope`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, '访问用户权限', '2', 'guest', 1, '', '', 0, '2', 0, 0, '2023-03-31 10:56:43.800', '2023-04-13 15:54:42.693', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` smallint(6) NOT NULL,
  `dept_id` smallint(6) NOT NULL,
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_dept` (`role_id`, `dept_id`) VALUES (3, 7);
INSERT INTO `sys_role_dept` (`role_id`, `dept_id`) VALUES (3, 8);
INSERT INTO `sys_role_dept` (`role_id`, `dept_id`) VALUES (3, 9);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`menu_id`),
  KEY `fk_sys_role_menu_sys_menu` (`menu_id`),
  CONSTRAINT `sys_role_menu_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `sys_menu` (`id`),
  CONSTRAINT `sys_role_menu_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 545);
COMMIT;

-- ----------------------------
-- Table structure for sys_tables
-- ----------------------------
DROP TABLE IF EXISTS `sys_tables`;
CREATE TABLE `sys_tables` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) DEFAULT NULL,
  `table_comment` varchar(255) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `tpl_category` varchar(255) DEFAULT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `module_front_name` varchar(255) DEFAULT NULL COMMENT '前端文件名',
  `business_name` varchar(255) DEFAULT NULL,
  `function_name` varchar(255) DEFAULT NULL,
  `function_author` varchar(255) DEFAULT NULL,
  `pk_column` varchar(255) DEFAULT NULL,
  `pk_go_field` varchar(255) DEFAULT NULL,
  `pk_json_field` varchar(255) DEFAULT NULL,
  `options` varchar(255) DEFAULT NULL,
  `tree_code` varchar(255) DEFAULT NULL,
  `tree_parent_code` varchar(255) DEFAULT NULL,
  `tree_name` varchar(255) DEFAULT NULL,
  `tree` tinyint(1) DEFAULT '0',
  `crud` tinyint(1) DEFAULT '1',
  `remark` varchar(255) DEFAULT NULL,
  `is_data_scope` tinyint(4) DEFAULT NULL,
  `is_actions` tinyint(4) DEFAULT NULL,
  `is_auth` tinyint(4) DEFAULT NULL,
  `is_logical_delete` varchar(1) DEFAULT NULL,
  `logical_delete` tinyint(1) DEFAULT NULL,
  `logical_delete_column` varchar(128) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`table_id`),
  KEY `idx_sys_tables_deleted_at` (`deleted_at`),
  KEY `idx_sys_tables_create_by` (`create_by`),
  KEY `idx_sys_tables_update_by` (`update_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_tables
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编码',
  `username` varchar(64) DEFAULT NULL COMMENT '用户名',
  `password` varchar(128) DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(128) DEFAULT NULL COMMENT '昵称',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `role_id` bigint(5) DEFAULT NULL COMMENT '角色ID',
  `salt` varchar(255) DEFAULT NULL COMMENT '加盐',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `email` varchar(128) DEFAULT NULL COMMENT '邮箱',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门',
  `post_id` bigint(20) DEFAULT NULL COMMENT '岗位',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` varchar(4) DEFAULT NULL COMMENT '状态',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sys_user_create_by` (`create_by`),
  KEY `idx_sys_user_update_by` (`update_by`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` (`id`, `username`, `password`, `nick_name`, `phone`, `role_id`, `salt`, `avatar`, `sex`, `email`, `dept_id`, `post_id`, `remark`, `status`, `create_by`, `update_by`, `created_at`, `updated_at`) VALUES (1, 'admin', '$2a$10$/Glr4g9Svr6O0kvjsRJCXu3f0W8/dsP3XZyVNi1019ratWpSPMyw.', '管理员', '13818888888', 1, '', '', '1', '1@qq.com', 8, 1, '', '2', 1, 1, '2021-05-13 19:56:37.914', '2023-04-10 15:32:46.292');
INSERT INTO `sys_user` (`id`, `username`, `password`, `nick_name`, `phone`, `role_id`, `salt`, `avatar`, `sex`, `email`, `dept_id`, `post_id`, `remark`, `status`, `create_by`, `update_by`, `created_at`, `updated_at`) VALUES (2, 'zhangsan', '$2a$10$50Mh60EeUobIVeI7UlWixem9xfF52cf9F67EZ28EPXRmFUu/66Yxi', '张三', '17327271231', 2, '', '', '0', 'zhangsan@example.com', 7, 2, '', '2', 1, 0, '2023-03-13 15:22:27.101', '2023-03-22 11:17:02.459');
COMMIT;

-- ----------------------------
-- Table structure for tb_demo
-- ----------------------------
DROP TABLE IF EXISTS `tb_demo`;
CREATE TABLE `tb_demo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键编码',
  `name` varchar(128) DEFAULT NULL COMMENT '名称',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`),
  KEY `idx_tb_demo_deleted_at` (`deleted_at`),
  KEY `idx_tb_demo_create_by` (`create_by`),
  KEY `idx_tb_demo_update_by` (`update_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_demo
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
