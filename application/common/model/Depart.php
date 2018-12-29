<?php
/*namespace app\common\model;
use think\Model;
class Depart extends BaseModel{
	
	protected $createTime = 'addtime';

	public function getList($status){

			$where= array();
			if($name=input('get.name')){
				$where['name']= array('LIKE',"%$name%");
			}

			$where['status'] = $status;
			$addtime = input('get.addtime');
			$update_time = input('get.update_time');
			/**
			 * 	判断时间搜索
			 */
			/*if($addtime && $update_time){
				$where['addtime'] = array('BETWEEN',[strtotime("$addtime 00:00:00",strtotime("$update_time 00:00:00"))]);
			}elseif($addtime){
				$where['addtime'] = array('EGT',strtotime("$addtime 00:00:00"));
			}else{
				$where['update_time'] = array('ELT',strtotime("$update_time 00:00:00"));
			}

			$order =[
				'id'=>'desc'
			];

				return $this->where($where)->order($order)->paginate(2);echo $this->getLastSql();
	}	
	
} */

namespace app\common\model;
use think\Model;
class Depart extends BaseModel{
	
	protected $autoWriteTimestamp = true;
	protected $createTime = 'addtime';



	public function getList($status){

		$where = array();
		$hId = input('get.hospital_id');
		if($hId){
			$where['hospital_id'] =$hId;
		}
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

		return $this->where($where)->order($order)->paginate(10);echo $this->getLastSql();

	}

}