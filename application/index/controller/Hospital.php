<?php
namespace app\index\controller;
use think\Controller;
use think\Request;
class Hospital extends Base
{

	public function _initialize(){

		$this->obj = model('Hospital');

	}
   public function index(){

   		$data = $this->obj->getHospitalList(1);
        return $this->fetch('',[
        	'data'=>$data,
        ]);

    }

    /**
     * 
     *
     *  add
     */
    public function add(){

    	if(!request()->isPost()){

 			return $this->fetch();

    	}else{

    		$data = input('post.');
    		$res = $this->obj->add($data);
    		print_r($res);
    		if(!$res){
    			$this->error('新增失败');
    		}else{
    			$this->success('新增成功！','index');
    		}
    	}
    }


    public function update($id){

    	if(!request()->isPost()){	

    		$data = $this->obj->getHospitalOne($id);
    		print_r($data);
    		return $this->fetch('',[
    			'data'=>$data,

    		]);


    	}else{

    		$data = input('post.');//print_r($data);
    		$res = $this->obj->save($data,['id'=>$data['id']]);

    		if(!$res){
    			$this->error('修改失败');
    		}else{
    			$this->success('修改成功','index');
    		}
    	}

    }

    /**/
    public function del($id){

        $res= $this->obj->save(['status'=>0],['id'=>$id]);
        if(!$res){
            $this->error('删除失败');
        }else{
            $this->success('删除成功！','index');
        }

    }

    /**/

    public function get(){



        $data = $this->obj->get(1);
        
        var_dump($data->doctors);
    }


}