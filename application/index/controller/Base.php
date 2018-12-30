<?php
namespace app\index\controller;
use think\Controller;
use think\Loader;
class Base extends Controller{


	protected $current_action;
	public $account;
	public function _initialize(){

		$isLogin =$this->isLogin();
		if(!$isLogin){
			return $this->redirect(url('login/index'));
		}
		// 权限控制
			Loader::import("org/Auth", EXTEND_PATH);
	        $auth=new \Auth();
			$this->current_action = request()->module().'/'.request()->controller().'/'.lcfirst(request()->action());
			$result = $auth->check($this->current_action,session('id'));print_r($result);//exit;
			/*if(!$result){
				$this->error('你的权限未认证',url('login/index'));
			}*/
	}

	public function isLogin(){

		$user = $this->getLoginUser();
		if($user) {
            return true;
        }
        return false;
	}

	public function getLoginUser(){

		if(!$this->account){
			$this->account= session('id');
		}
		return $this->account;
	}
}