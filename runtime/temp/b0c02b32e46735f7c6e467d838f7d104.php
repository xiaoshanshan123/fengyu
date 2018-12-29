<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:56:"D:\www\public/../application/index\view\admin\login.html";i:1545556448;s:48:"D:\www\application\index\view\public\header.html";i:1545208666;}*/ ?>
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
<body class="login-bg">
    
    <div class="login layui-anim layui-anim-up">
        <div class="message">医疗管理系统登录</div>
        <div id="darkbannerwrap"></div>
        
        <form method="post" class="layui-form" >
            <input name="name" placeholder="用户名"  type="text" lay-verify="required" class="layui-input" >
            <hr class="hr15">
            <input name="pass" lay-verify="required" placeholder="密码"  type="password" class="layui-input">
            <hr class="hr15">
            <input name="captcha" lay-verify="required" placeholder="验证码"  type="password" class="layui-input">
            <img src="<?php echo captcha_src(); ?>" id="submit_src" >
            <hr class="hr15">
            <input value="登录" lay-submit lay-filter="login" style="width:100%;" type="submit">
            <hr class="hr20" >
        </form>
    </div>
    <script>
        $(function  () {
            layui.use('form', function(){
              var form = layui.form;
              // layer.msg('玩命卖萌中', function(){
              //   //关闭后的操作
              //   });
              //监听提交
              form.on('submit(login)', function(data){
                // alert(888)
                var Url = "<?php echo url('Login/user_lo'); ?>";
                var formData = $('form').serialize();
                layer.alert(formData);
                $.post(Url,formData,function(data){
                   if(data.status == 1){
                    layer.alert('登录成功，并进入首页');
                   }else if(data.status ==2){
                      layer.alert('密码错误');
                   }else if(data.status ==3){
                     layer.alert('账号错误');
                   }else{
                     layer.alert('验证码错误');
                   }

                },'json');
                return false;
              });
            });
        })

      $('#submit_src').bind('click',function(){
        //layer.alert('00000000000');
        //
        var time = Date.parse(new Date())/1000; //返回时间戳
         $('#submit_src').attr('src','/index.php/captcha?id='+time);
      });
        
    </script>
</body>
</html>