<?php

/*
 * 默认首页控制器
 */

namespace Admin\Controller;

class IndexController extends AdminController {

    /**
     * 后台首页
     */
	public function index() {
    $this->assign ( "CurLogin",session('userinfo.username'));
    $this->assign ( "MainMenu",$this->GetMenu());
		$this->display ();
	}

    /**
     * 导航菜单
     */
    public function menu(){
		$pid=I('get.pid',0);
		$menus = $this->GetMenu();
		$this->ajaxReturn($menus[$pid]['children']);
    }

}
