<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:57:"F:\www\public/../application/index\view\media\update.html";i:1545468252;s:48:"F:\www\application\index\view\public\header.html";i:1545208666;}*/ ?>
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
        <form  method="post" action="<?php echo url('Media/update'); ?>" class="layui-form">
        
          <div class="layui-form-item">
              <label for="name" class="layui-form-label">
                  <span class="x-red">*</span>名    称
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="name" name="name" value="<?php echo $res['name']; ?>" required="" lay-verify="required"
                  autocomplete="off" class="layui-input">
              </div>
               <div class="layui-form-mid layui-word-aux">
                  <span class="x-red">*</span>名称必须填写
              </div>
          </div>
       
          <div class="layui-form-item">
              <label for="username" class="layui-form-label">
                  <span class="x-red">*</span>选择医院
              </label>
              <div class="layui-input-inline">
                  <select id="hospital_id" name="hospital_id" class="valid">
                    <option value="#">选择医院</option>
                    <?php if(is_array($data) || $data instanceof \think\Collection || $data instanceof \think\Paginator): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;if($res['hospital_id'] == $vo['id']): ?>
                    <option value="<?php echo $vo['id']; ?>" selected="selected"><?php echo $vo['name']; ?></option>
                   <?php else: ?>
                     <option value="<?php echo $vo['id']; ?>"><?php echo $vo['name']; ?></option>
                      <?php endif; endforeach; endif; else: echo "" ;endif; ?>
                  </select>
              </div>
          </div>
            <div><input type="hidden" name="id" value="<?php echo $res['id']; ?>"></div>
            <div class="layui-form-item">
              <label class="layui-form-label">
                  <span class="x-red">*</span>选择类型
              </label>
              <div class="layui-input-inline">
                  <select id="type_id" name="type_id" class="valid">
                    <?php switch($res['type_id']): case "1": ?>  <option value="1">网络</option><?php break; case "2": ?>  <option value="2">落地</option><?php break; case "3": ?>  <option value="3">其他</option><?php break; case "4": ?>  <option value="4">微信</option><?php break; case "5": ?>  <option value="5">杂志</option><?php break; endswitch; ?>
                  </select>
              </div>
          </div>
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
