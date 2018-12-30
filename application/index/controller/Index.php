<?php
namespace app\index\controller;
use think\Controller;

class Index extends Base
{
    public function index()
    {
        //var_dump(session('id'));
    	//var_dump($this->getLoginUser());
        return $this->fetch();

    }

    public function welcome(){

    	return $this->fetch();
    }
}
