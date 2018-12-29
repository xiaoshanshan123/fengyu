<?php
namespace app\index\controller;
use think\Controller;
class Depart extends Base{


	public function _initialize(){

		$this->obj = model('Depart');

	}

	public function index(){

		$data = $this->obj->getList(1);
		$num = $this->obj->count();
		$hos = model('Hospital')->field('id,name')->where('status',1)->select();

		return $this->fetch('',[
			'data'=>$data,
			'num'=>$num,
			'hos'=>$hos
		]);
	}


	public function add(){

		if(!request()->isPost()){

			$data = model('Hospital')->field('id,name')->where('status',1)->select();

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

			$data = model('Hospital')->field('id,name')->where('status',1)->select();
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

		  $res= $this->obj->save(['status'=>0],['id'=>$id]);
        if(!$res){
            $this->error('删除失败');
        }else{
            $this->success('删除成功！','index');
        }

	}

}