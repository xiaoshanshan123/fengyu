<?php
namespace app\index\controller;
use think\Controller;
class Admin extends Base{

	public function _initialize(){

		$this->obj = model('Admin');
	}
	public function index(){

		return $this->fetch();
	}

	public function add(){

		if(!request()->isPost()){
			$data = model('Part')->ListTree();//print_r($data);exit;
			$hos = model('hospital')->getHospitalList(1);
			return $this->fetch('',[
				'data'=>$data,
				'hos'=>$hos
			]);
		}else{
			$data = input('post.');
			$data['hospitals'] =implode(',',$data['hospitals'])?'':implode(',',$data['hospitals']) ;
			$data['part_id'] = implode(',',$data['part_id'])?'':implode(',',$data['part_id']);
			//判断添加的用户是否存在

			$res = $this->obj->add($data);var_dump($res);
			if($res){
				$this->error('新增员工成功');
			}else{
				$this->success('新增员工失败','index');
			}
		}
		
	}

	public function CheckName($val){
		
		$res = $this->obj->where('name',$val)->find();	
		
		if(!$res == true){
			return show(1,'success');
		}else if($res == true){
			return show(0,'error');
		}else if($res == ''){
			return show(-1,'不能为空');
		}

	}
}