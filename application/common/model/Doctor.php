<?php
namespace app\common\model;
use think\Model;
class Doctor extends BaseModel{
	
	protected $autoWriteTimestamp = true;
	protected $createTime = 'add_time';
	public function getDoctorList($status){

		$where = array();
		if($name = input('get.name')){
			$where['name']= array('like',"%$name%");
		}
		$where['status']=$status;
		$addtime = input('get.add_time');
		$updatetime = input('get.update_time');

		if($addtime && $updatetime){
			$where['add_time'] = ['between',[strtotime("$add_time 00:00:00"),strtotime("$updatetime 00:00:00")]];
		}elseif($addtime){
			$where['add_time'] = ['egt',[strtotime("$add_time 00:00:00")]];
		}elseif($updatetime){
			$where['update_time'] = ['elt',[strtotime("$updatetime 00:00:00")]];
		}

		$order = [
			'id'  =>'desc',
		];
		$list = $this->where($where)->order($order)->paginate();echo $this->getLastSql();
		return $list;

	}

}