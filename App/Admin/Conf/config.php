<?php

return array(
    /* 模板相关配置 */
    'TMPL_PARSE_STRING' => array(
        '__STATIC__' => __ROOT__ . '/Public/static',
        '__IMG__'    => __ROOT__ . '/Public/Admin/images',
        '__CSS__'    => __ROOT__ . '/Public/Admin/css',
        '__JS__'     => __ROOT__ . '/Public/Admin/js',
    ),
    /* 后台错误页面模板 */
    'TMPL_ACTION_ERROR'     => 'Public/error', // 默认错误跳转对应的模板文件
    'TMPL_ACTION_SUCCESS'   =>  'Public/success', // 默认成功跳转对应的模板文件
    'WEB_SITE_TITLE'        => "IAS",
    /* Auth设置 */
    'AUTH_ON' => true, // 认证开关
    'AUTH_KEY' => 'Uid', // 认证key
    'AUTH_TYPE' => 1, // 认证方式，1为实时认证；2为登录认证。
    'AUTH_GROUP' => 'auth_group', // 用户组数据表名
    'AUTH_RULE' => 'auth_rule', // 权限规则表
    'AUTH_USER' => 'User', // 用户信息表
    'AUTH_ADMIN'=>array('1','2'),
    'NOT_AUTH_MODULE' => 'Public,Index',
    "AUTH_USER_INDEX" => "Admin/Index/index",//网关
    "AUTH_USER_GATEWAY" => "Admin/Public/login",//网关

    /* SESSION设置 */
    'SESSION_AUTO_START' => true, // 是否自动开启Session
    'SESSION_OPTIONS' => array (), // session 配置数组 支持type name id path expire domain 等参数
    'SESSION_TYPE' => '', // session hander类型 默认无需设置 除非扩展了session hander驱动
    'SESSION_PREFIX' => 'ias_' // session 前缀
);
