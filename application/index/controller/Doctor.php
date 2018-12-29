<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
class Doctor extends Base
{


   public function _initialize(){

   	$this->obj = model('Doctor');

	}

   public function index(){

   		$data = $this->obj->getDoctorList(1);
/*   		$res = Db::field('a.*,b.name as yyname')
   		->table(['doctor'=>'a','hospital'=>'b'])
   		->where('a.hospital_id =b.id')
   		->select();*/

        return $this->fetch('',[
        	'data'=>$data
        ]);

    }

    public function add(){

    	if(!request()->isPost()){

    		$data = model('Hospital')->field('id,name')->where('status',1)->select();
    		/*$no = $this->getZjh();
    		print_r($no);*/
    		return $this->fetch('',[
    			'data'=>$data
    		]);

    	}else{
    		$data = input('post.');//print_r($data);
    		$data['doctor_num'] = $this->getZjh();
    		$res = $this->obj->add($data); 
    		if(!$res){
    			$this->error('新增失败');
    		}else{
    			$this->success('新增成功','index');
    		}
    	}
    }

    /*生成专家号*/

    public function getZjh(){

    	 $no =  date('Ymd').substr(implode(NULL, array_map('ord', str_split(substr(uniqid(), 7, 13), 1))), 0, 8);
    	 return $no;
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

    /**
     * /
     * @param  [type] $id [description]
     * @return [type]     [description]
     */
    public function update($id){

    	if(!request()->isPost()){	
    		$data = model('hospital')->field('id,name')->where('status',1)->select();

    		$res = $this->obj->get($id);
    		return $this->fetch('',[
    			'data'=>$data,
    			'res'=>$res,
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




}