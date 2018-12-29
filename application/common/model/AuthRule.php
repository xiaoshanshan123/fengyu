<?php
namespace app\common\model;
use think\Model;
class AuthRule extends BaseModel{

	protected $createTime = '';
	protected $updateTime = '';

	public function getList($status){


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