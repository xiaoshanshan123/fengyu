<?php
namespace app\common\model;
use think\Model;
class Part extends BaseModel{
	
	protected $autoWriteTimestamp = true;
	protected $createTime = 'addtime';

	public function getList($status){

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

		return $this->where($where)->order($order)->select();//echo $this->getLastSql();

	}

	public function ListTree(){
		$data = $this->select();
		return $this->_Tree($data);
	}

	public function _Tree($data,$pid=0,$level=0){
		static $arr=array();
		foreach ($data as $k => $v) {
				if($v['pid'] == $pid){
					$v['level'] =$level;
					$arr[] = $v;
					$this->_Tree($data,$v['id'],$level+1);
				}	
			}
		return $arr;
	}

}