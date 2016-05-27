-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2016 年 05 月 26 日 18:04
-- 服务器版本: 5.5.47
-- PHP 版本: 5.3.29

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `test`
--

-- --------------------------------------------------------

--
-- 表的结构 `ias_auth_group`
--

CREATE TABLE IF NOT EXISTS `ias_auth_group` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pid` smallint(8) DEFAULT NULL COMMENT '上级ID',
  `title` varchar(100) DEFAULT NULL COMMENT '名称',
  `status` int(3) NOT NULL DEFAULT '1' COMMENT '状态',
  `rules` text COMMENT '规则',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `ias_auth_group`
--

INSERT INTO `ias_auth_group` (`id`, `pid`, `title`, `status`, `rules`) VALUES
(1, 0, '管理员', 1, '1,53,65,20,22,21,23,24,25,26,27,44,54,73,74,75,55,76,77,2,51,36,39,38,37,40,41,42,43,100,101'),
(2, 1, '技术员', 1, '1,53,65,20,22,21,23,24,25,26,27,44,54,73,74,75,55,76,77,2,51,36,39,38,37,40,41,42,43,100,101');

-- --------------------------------------------------------

--
-- 表的结构 `ias_auth_rule`
--

CREATE TABLE IF NOT EXISTS `ias_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pid` mediumint(8) DEFAULT '0' COMMENT '上级菜单',
  `name` varchar(100) DEFAULT NULL COMMENT '菜单名称',
  `title` varchar(100) DEFAULT NULL COMMENT '菜单标题',
  `icon` varchar(30) DEFAULT 'icon-form' COMMENT '图标',
  `type` varchar(1) DEFAULT '1' COMMENT '导航',
  `is_hide` varchar(1) DEFAULT '1' COMMENT '隐藏',
  `status` varchar(1) DEFAULT '1' COMMENT '状态',
  `sort` smallint(3) unsigned DEFAULT '1' COMMENT '排序',
  `condition` varchar(40) DEFAULT NULL COMMENT '附加参数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=102 ;

--
-- 转存表中的数据 `ias_auth_rule`
--

INSERT INTO `ias_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `type`, `is_hide`, `status`, `sort`, `condition`) VALUES
(1, 0, '', '系统', 'iconfont icon-all', '', '0', '1', 1, ''),
(2, 0, '', '用户', 'iconfont icon-account', '', '0', '1', 2, ''),
(24, 53, 'Admin/AuthRule/index', '菜单管理', 'iconfont icon-form', '1', '0', '1', 6, ''),
(40, 51, 'Admin/AuthGroup/index', '用户组管理', 'iconfont icon-form', '1', '0', '1', 2, ''),
(20, 53, 'Admin/Config/index', '配置管理', 'iconfont icon-form', '1', '0', '1', 5, ''),
(36, 51, 'Admin/User/index', '用户管理', 'iconfont icon-form', '1', '0', '1', 1, ''),
(22, 20, 'Admin/Config/edit', '编辑', 'iconfont icon-form', '1', '1', '1', 1, ''),
(21, 20, 'Admin/Config/add', '新增', 'iconfont icon-form', '1', '1', '1', 1, ''),
(23, 20, 'Admin/Config/del', '删除', 'iconfont icon-form', '1', '1', '1', 1, ''),
(25, 24, 'Admin/AuthRule/add', '新增', 'iconfont icon-form', '1', '1', '1', 1, ''),
(26, 24, 'Admin/AuthRule/edit', '编辑', 'iconfont icon-form', '1', '1', '1', 1, ''),
(27, 24, 'Admin/AuthRule/del', '删除', 'iconfont icon-form', '1', '1', '1', 1, ''),
(37, 36, 'Admin/User/add', '新增', 'iconfont icon-form', '1', '1', '1', 1, ''),
(38, 36, 'Admin/User/edit', '编辑', 'iconfont icon-form', '1', '1', '1', 1, ''),
(39, 36, 'Admin/User/del', '删除', 'iconfont icon-form', '1', '1', '1', 1, ''),
(41, 40, 'Admin/AuthGroup/add', '新增', 'iconfont icon-form', '1', '1', '1', 1, ''),
(42, 40, 'Admin/AuthGroup/edit', '编辑', 'iconfont icon-form', '1', '1', '1', 1, ''),
(43, 40, 'Admin/AuthGroup/del', '删除', 'iconfont icon-form', '', '1', '1', 1, ''),
(44, 1, '', '数据库管理', 'iconfont icon-form', '1', '0', '1', 8, ''),
(51, 2, '', '用户管理', 'iconfont icon-form', '1', '0', '1', 1, ''),
(53, 1, '', '系统设置', 'iconfont icon-form', '1', '0', '1', 1, ''),
(54, 44, 'Admin/Database/export_list', '备份数据库', 'iconfont icon-form', '1', '0', '1', 1, ''),
(55, 44, 'Admin/Database/import_list', '还原数据库', 'iconfont icon-form', '1', '0', '1', 2, ''),
(65, 53, 'Admin/Config/group', '系统设置', 'iconfont icon-form', '1', '0', '1', 1, ''),
(73, 54, 'Admin/Database/optimize', '优化表', 'iconfont icon-form', '0', '1', '1', 1, ''),
(74, 54, 'Admin/Database/repair', '修复表', 'iconfont icon-form', '0', '1', '1', 1, ''),
(75, 54, 'Admin/Database/export', '备份', 'iconfont icon-form', '0', '1', '1', 1, ''),
(76, 55, 'Admin/Database/import', '还原', 'iconfont icon-form', '0', '1', '1', 1, ''),
(77, 55, 'Admin/Database/del', '删除', 'iconfont icon-form', '0', '1', '1', 1, ''),
(100, 0, '', '文章', 'iconfont icon-warning', '', '0', '1', 3, ''),
(101, 100, '', '文章分类', 'iconfont icon-help', '', '0', '1', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `ias_config`
--

CREATE TABLE IF NOT EXISTS `ias_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '配置名称',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置类型',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '配置标题',
  `group` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置分组',
  `extra` varchar(255) NOT NULL COMMENT '配置参数',
  `remark` varchar(100) NOT NULL COMMENT '说明',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `value` text COMMENT '配置值',
  `sort` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`),
  KEY `type` (`type`),
  KEY `group` (`group`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- 转存表中的数据 `ias_config`
--

INSERT INTO `ias_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES
(1, 'WEB_SITE_TITLE', 1, '网站标题', 1, '', '网站标题前台显示标题', 1378898976, 1379235274, 1, 'IAS Web System', 0),
(2, 'WEB_SITE_DESCRIPTION', 2, '网站描述', 1, '', '网站搜索引擎描述', 1378898976, 1379235841, 1, 'IAS Web System', 1),
(3, 'WEB_SITE_KEYWORD', 2, '网站关键字', 1, '', '网站搜索引擎关键字', 1378898976, 1381390100, 1, 'IAS Web System', 8),
(4, 'WEB_SITE_CLOSE', 4, '关闭站点', 1, '0:关闭|1:开启', '站点关闭后其他用户不能访问，管理员可以正常访问', 1378898976, 1379235296, 1, '1', 1),
(9, 'CONFIG_TYPE_LIST', 3, '配置类型列表', 4, '', '主要用于数据解析和页面表单的生成', 1378898976, 1379235348, 1, '0:数字|1:字符|2:文本|3:数组|4:枚举|5:编辑器', 2),
(10, 'WEB_SITE_ICP', 1, '网站备案号', 1, '', '设置在网站底部显示的备案号，如“沪ICP备12007941号-2', 1378900335, 1379235859, 1, '无', 9),
(20, 'CONFIG_GROUP_LIST', 3, '配置分组', 4, '', '配置分组', 1379228036, 1384418383, 1, '1:基本|2:内容|3:用户|4:系统', 4),
(28, 'DATA_BACKUP_PATH', 1, '数据库备份根路径', 4, '', '路径必须以 / 结尾', 1381482411, 1381482411, 1, './Data/', 5),
(29, 'DATA_BACKUP_PART_SIZE', 0, '数据库备份卷大小', 4, '', '该值用于限制压缩后的分卷最大长度。单位：B；建议设置20M', 1381482488, 1381729564, 1, '20971520', 7),
(30, 'DATA_BACKUP_COMPRESS', 4, '数据库备份文件是否启用压缩', 4, '0:不压缩|1:启用压缩', '压缩备份文件需要PHP环境支持gzopen,gzwrite函数', 1381713345, 1381729544, 1, '1', 9),
(31, 'DATA_BACKUP_COMPRESS_LEVEL', 4, '数据库备份文件压缩级别', 4, '1:普通|4:一般|9:最高', '数据库备份文件的压缩级别，该配置在开启压缩时生效', 1381713408, 1381713408, 1, '1', 10),
(37, 'SHOW_PAGE_TRACE', 4, '是否显示页面Trace信息', 4, '0:关闭|1:开启', '是否显示页面Trace信息', 1387165685, 1387165685, 1, '0', 1);

-- --------------------------------------------------------

--
-- 表的结构 `ias_user`
--

CREATE TABLE IF NOT EXISTS `ias_user` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(32) NOT NULL COMMENT '用户名',
  `nickname` varchar(120) DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(64) NOT NULL COMMENT '用户密码',
  `group_id` int(3) DEFAULT NULL COMMENT '注册类型',
  `create_time` int(11) unsigned NOT NULL COMMENT '注册日期',
  `update_time` int(11) unsigned NOT NULL COMMENT '最后修改时间',
  `logip` varchar(20) DEFAULT NULL COMMENT '上次登录IP',
  `logdatetime` int(11) unsigned NOT NULL COMMENT '上次登录时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` int(3) DEFAULT '1' COMMENT '验证/状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `ias_user`
--

INSERT INTO `ias_user` (`id`, `username`, `nickname`, `password`, `group_id`, `create_time`, `update_time`, `logip`, `logdatetime`, `remark`, `status`) VALUES
(1, 'admin', '超级管理员', 'admin', 1, 1209600, 1463984740, '0.0.0.0', 1463988913, 'gg', 1),
(2, 'ryanlok', 'PHP研发工程师', '123456', 1, 0, 1463998025, '', 0, '', 1),
(7, 'ryan', 'ryan', '123456', 2, 1463986577, 1463998014, '0.0.0.0', 1463987553, '', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
