<?php
namespace app\index\controller;
use think\Controller;
use think\Request;
class Engine extends Base{


	public function _initialize(){

		$this->obj = model('Engine');

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
			
			return $this->fetch();

		}else{

			$data = input('post.');
			//$data['engine_img'] = $this->upload();
			print_r($data);
			$res = $this->obj->add($data);
			if(!$res){
				$this->error('新增失败');
			}else{
				$this->success('新增成功');
			}
		}
		
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


	public function upload(Request $request){

	$file =request()->file('file');
		
	$info = $file->move(ROOT_PATH . 'public' . DS . 'Uploads');	
	$array = array();
	if($info){
		$array['code'] =1;
		$array['savename'] = '/Uploads/'.$info->getSaveName();
	}else{
		$array['code']= 0;
		$array['err'] = $file->getError();
	}
	return $array;
	}

}