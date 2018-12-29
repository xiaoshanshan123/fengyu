<?php
namespace app\index\controller;
use think\Controller;
use think\Config;
use think\Validate;
use think\Session;
class Login extends Controller
{

	/**
	 * 	1.在源码中进行最高权限判断，最高权限并不显示在数据库中！
	 *  2.admin账号为最高权限
	 * 
	 */

	public function index(){

		/*先判断验证码*/

		return $this->fetch('admin/login');
	}
	//print_r(config('user.password'));
	public function user_lo(){
		$data = input('post.');//print_r($data);
		$validate = new Validate();
		$res =$this->validate($data,[
			'name|账号'=> 'require',
			'pass' =>'require',
			'captcha|验证码' =>'require|captcha'
		]);
		if($res !==true){
			return show(0,'error');
		}
		/*判断账号是否正确 -------下面为本地超级管理员登录--------*/ 
		/*

		if(MD5($data['name']) !== config('user.admin')){
				return show(3,'账号不正确！');
		}
		
		//var_dump(config('user.password'));exit;
		if(MD5($data['pass'].config('user.yzm')) !==config('user.password')){

				return show(2,'管理员密码不正确！');
		}*/
		$name = model('admin')->where('name',$data['name'])->find();

		if(!$name){
				return show(3,'账号不正确！');
		}
		if($name->pass !==MD5($data['pass'])){
				return show(2,'管理员密码不正确！');
		}
		//print_r($name);exit;
		session::set('id',$name['id']);
		session::set('info',$name);
		return show(1,'登录成功');
	}



	public function logout(){


		session(null);
		$this->success('退出登录！','Login/index');
	}


}