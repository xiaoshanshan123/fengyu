<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:54:"F:\www\public/../application/index\view\admin\add.html";i:1546160336;s:48:"F:\www\application\index\view\public\header.html";i:1545208666;}*/ ?>
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
        <form class="layui-form" method="post" action="<?php echo url('Admin/add'); ?>">
          <div class="layui-form-item" >
              <label for="name" class="layui-form-label">
                  <span class="x-red">*</span>登录名
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="inputName" value="" name="name" required="" lay-verify="required"
                  autocomplete="off" class="layui-input">
              </div>
              <div class="layui-form-mid layui-word-aux">
                  <span class="x-red">*</span>将会成为您唯一的登入名
              </div>
          </div>
            <div class="layui-form-item">
              <label for="L_pass" class="layui-form-label">
                  <span class="x-red">*</span>密码
              </label>
              <div class="layui-input-inline">
                  <input type="password" id="L_pass" value="" name="pass" required="" lay-verify="pass"
                  autocomplete="off" class="layui-input">
              </div>
              <div class="layui-form-mid layui-word-aux">
                  6到16个字符
              </div>
              <div id="showpwd" class="layui-btn layui-btn-sm layui-btn-danger">显示密码</div>
          </div>
          <div class="layui-form-item">
              <label for="L_repass" class="layui-form-label">
                  <span class="x-red">*</span>确认密码
              </label>
              <div class="layui-input-inline">
                  <input type="password" id="L_repass" name="repass" required="" lay-verify="repass"
                  autocomplete="off" class="layui-input">
              </div>
          </div>

          <div class="layui-form-item">
              <label for="" class="layui-form-label">
                  <span class="x-red">*</span>所在部门
              </label>
              <div class="layui-input-inline">
                  <select id="part_manage" name="part_id" class="valid">
                    <option value="0">选择所在部门</option>
                    <?php if(is_array($data) || $data instanceof \think\Collection || $data instanceof \think\Paginator): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                    <option value="<?php echo $vo['id']; ?>"><?php echo str_repeat('&nbsp;─│&nbsp;',$vo['level']); ?><?php echo $vo['title']; ?></option>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                  </select>
              </div>
               <div class="layui-form-mid layui-word-aux">
                  <span class="x-red">*</span> 部门必须选择。如果选择部门管理员，则该人员有权管理其本部门（包括所有下属部门）数据
              </div>
          </div>


                <div class="layui-form-item">
              <label for="L_repass" class="layui-form-label">
                  <span class="x-red">*</span>允许IP地址
              </label>
               <div class="layui-input-block">
                  <textarea id="demo"name="allow_ip" style="display: none;"></textarea>
                </div>
          </div>
          <input type="hidden" name="author" value="<?php echo \think\Session::get('info.name'); ?>"> 
          
          <div class="layui-form-item">
              <label for="L_repass" class="layui-form-label">
              </label>
              <button type="submit" class="layui-btn" lay-filter="add" lay-submit="">
                  增加
              </button>
          </div>
      </form>
    </div>
    <script>
        layui.use(['form','layer'], function(){
            $ = layui.jquery;
          var form = layui.form
          ,layer = layui.layer;
        

          layui.use('layedit', function(){
            var layedit = layui.layedit;
            layedit.build('demo'); //建立编辑器
          });
          /* ajax 自定义inputName*/
          $('#inputName').blur(function(){
             var val = $('#inputName').val();
             var Url = "<?php echo url('Admin/CheckName'); ?>";
             //layer.alert(val);
             $.post(Url,{val:val},function(data){
              if(data.status ==1){
                layer.alert('用户名可以使用,请继续你的操作');
              }else{
                layer.alert('用户名已经存在');
                 $('.layui-word-aux').html("用户名已经存在");
              }

             },'json')


          });
          //自定义验证规则
          form.verify({
            nikename: function(value){
              if(value.length < 5){
                return '昵称至少得5个字符啊';
              }
            }
            ,pass: [/(.+){6,12}$/, '密码必须6到12位']
            ,repass: function(value){
                if($('#L_pass').val()!=$('#L_repass').val()){
                    return '两次密码不一致';
                }
            }
          });

          
        });
    </script>
    <script>
        $('#showpwd').bind('click',function(){
           var pass = $('#L_pass').val();
            if(pass == ''){
                layer.msg('密码不能为空',{icon:6,shift:6},);
                return false;
            }
           layer.msg(pass,{icon:6,shift:6},); 
        })

    </script>
  </body>

</html>