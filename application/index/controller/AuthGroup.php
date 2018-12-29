<?php
namespace app\index\controller;
use think\Controller;
class AuthRule extends Base{


	public function _initialize(){

		$this->obj = model('AuthRule');

	}

	public function index(){
		$data =$this->obj->getList(1);
		$num = $this->obj->count();		
		$res = $this->obj->where('status,1')->ListTree();//print_r($res);
		return $this->fetch('',[
			'data'=>$data,
			'num' =>$num,
			'res' =>$res
		]);
	}


	public function add(){

		if(!request()->isPost()){
			$data = $this->obj->ListTree();
			return $this->fetch('',[
    			'data'=>$data
    		]);

		}else{

			$data = input('post.');
			$res = $this->obj->add($data);
			if(!$res){
				$this->error('新增失败');
			}else{
				$this->success('新增成功');
			}
		}
		return $this->fetch();
	}


	public function update($id){

		if(!request()->isPost()){

			$data = $this->obj->ListTree();

			$res = $this->obj->get($id);


			return $this->fetch('',[
    			'data'=>$data,
    			'res'=>$res
    		]);

		}else{
			$data = input('post.');
			$id = input('post.id');
			$res = $this->obj->save($data,['id'=>$data['id']]);

			if(!$res){
				$this->error('修改失败！');
			}else{
				$this->success('修改成功！');
			}
		}


	}


	public function del($id){




	}


}