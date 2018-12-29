<?php
namespace app\common\model;
use think\Model;
class Hospital extends BaseModel{



	protected $autoWriteTimestamp = true;
	protected $createTime = 'add_time';
	public function doctors(){

		return $this->hasMany('doctor','hospital_id','id');
	}


	public function getHospitalList($status){

		$where = array();
		if($name = input('get.name')){
		   $where['name'] = array('like', "%$name%");
		}
		$addtime = input('get.add_time');
		$uptime = input('get.update_time');

		if($addtime && $uptime){
			$where['add_time'] = ['BETWEEN',[strtotime("$addtime 00:00:00"),strtotime("$uptime 00:00:00")]];
		}elseif($addtime){
			$where['add_time'] = ['egt',strtotime("$addtime 00:00:00")];
		}elseif($uptime){
			$where['update_time'] = ['elt',strtotime("$uptime 00:00:00")];
		}
		$where['status'] = $status;
		$order = [
			'sort' => 'desc',
		];

	$list = $this->where($where)->order($order)->paginate(); 
	//$lsit = $this->doctors()->where($where)->paginate();echo $this->getLastSql();

	return  $list;
	}



	public function getHospitalOne($id){

	return 	$this->where(['id'=>$id])->find();

	}

	

}