<?php
namespace app\index\validate;
use think\Validate;
class Doctor extends Validate{


	protected  $rule =[

			'name' =>'require|max:10|unique:doctor',
	];

	protected $message = [

		'name.requier' => '名称必须',
		'name.max' => '名称最多不能超过10个字符',
		'name.unique' => '名称唯一',
	];

}