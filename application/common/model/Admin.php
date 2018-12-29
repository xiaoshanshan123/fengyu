<?php
namespace app\common\model;
use think\Model;
class Admin extends BaseModel{

	protected $autoWriteTimestamp = true;
	protected $createTime = 'addtime'; 
	protected $field = true;      //开启过滤掉数据库中没有的字段                      

}