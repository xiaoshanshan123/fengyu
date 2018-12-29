<?php
namespace app\index\controller;
use think\Controller;
class Part extends Base{


	public function _initialize(){

		$this->obj = model('Part');

	}

	public function index(){
		$data =$this->obj->getList(1);
		$num = $this->obj->count();		
		$res = $this->obj->ListTree();
		return $this->fetch('',[
			'data'=>$data,
			'num' =>$num,
			'res' =>$res
		]);
	}


	public function add(){

		if(!request()->isPost()){
			$data = $this->obj->ListTree();
			$rules = model('AuthRule')->ListTree();

			return $this->fetch('',[
    			'data'=>$data,
    			'rules'=>$rules
    		]);

		}else{

			$data = input('post.');
			$data['rules'] = implode(',',$data['rules']);
			//print_r($data['rules']);exit;
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

			$data = $this->obj->ListTree();//print_r($data);
			$rules = model('AuthRule')->ListTree();
			$res = $this->obj->get($id)->toArray();//print_r($res);exit;
			$resRules = explode(',',$res['rules']); print_r($resRules);
			return $this->fetch('',[
    			'data'=>$data,
    			'res'=>$res,
				'rules'=>$rules,
				'resRules' =>$resRules
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
		  echo $id;
		  $res= $this->obj->save(['status'=>0],['id'=>$id]);
        if(!$res){
            $this->error('删除失败');
        }else{
            $this->success('删除成功！','index');
        }

	}



}