<?php
namespace app\common\model;
use think\Model;
class Disease extends BaseModel{
	
	protected $autoWriteTimestamp = true;
	protected $createTime = 'addtime';



	public function getDiseaseList($status){

		$where = array();
		if($name = input('get.name')){
			$where['name'] = array('LIKE',"%$name%");
		}
		$where['status']=$status;
		$addtime = input('get.addtime');
		$updatetime = input('get.update_time');

		if($addtime && $updatetime){
			$where['add_time'] = ['between',[strtotime("$addtime 00:00:00"),strtotime("$updatetime 00:00:00")]];
		}elseif($addtime){
			$where['addtime'] = ['egt',[strtotime("$addtime 00:00:00")]];
		}elseif($updatetime){
			$where['update_time'] = ['elt',[strtotime("$updatetime 00:00:00")]];
		}


		$order = [

			'id'=>'desc',
		];

		return $this->where($where)->order($order)->paginate(2);echo $this->getLastSql();

	}

}