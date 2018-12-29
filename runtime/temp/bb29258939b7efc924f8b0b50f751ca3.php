<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:61:"F:\www\public/../application/index\view\auth_rule\update.html";i:1545580186;s:48:"F:\www\application\index\view\public\header.html";i:1545208666;}*/ ?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>后台登录-X-admin2.0</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="/static/admin/css/font.css">
    <link rel="stylesheet" href="/static/admin/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="/static/admin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/static/admin/js/xadmin.js"></script>

</head>
  <body>
    <div class="x-body">
        <form  method="post" action="<?php echo url('Part/add'); ?>" class="layui-form">
          <div class="layui-form-item">
              <label for="username" class="layui-form-label">
                  <span class="x-red">*</span>选择部门
              </label>
              <div class="layui-input-inline">
                  <select id="pid" name="pid" class="valid">
                    <option value="0">顶级部门</option>
                    <?php if(is_array($data) || $data instanceof \think\Collection || $data instanceof \think\Paginator): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                    <option value="<?php echo $vo['id']; ?>"><?php echo str_repeat('&nbsp;─│&nbsp;',$vo['level']); ?><?php echo $vo['name']; ?></option>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                  </select>
              </div>
          </div>

          <div class="layui-form-item">
              <label for="name" class="layui-form-label">
                  <span class="x-red">*</span>名    称
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="name" name="name" required="" lay-verify="required"
                  autocomplete="off" class="layui-input">
              </div>
               <div class="layui-form-mid layui-word-aux">
                  <span class="x-red">*</span>名称必须填写
              </div>
          </div>
          <input type="hidden" name="author" value="<?php echo \think\Session::get('info.name')?\think\Session::get('info.name'):''; ?>">
          <div class="layui-form-item">
              <label for="L_repass" class="layui-form-label">
              </label>
          <input type="submit" value="提交" class="layui-btn">
          </div>
      </form>
    </div>
<script type="text/javascript">
    


</script>
   
  </body>

</html>
