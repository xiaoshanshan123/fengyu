<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:53:"F:\www\public/../application/index\view\part\add.html";i:1546153971;s:48:"F:\www\application\index\view\public\header.html";i:1545208666;}*/ ?>
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
                    <option value="<?php echo $vo['id']; ?>"><?php echo str_repeat('&nbsp;─│&nbsp;',$vo['level']); ?><?php echo $vo['title']; ?></option>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                  </select>
              </div>
          </div>

          <div class="layui-form-item">
              <label for="name" class="layui-form-label">
                  <span class="x-red">*</span>名    称
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="name" name="title" required="" lay-verify="required"
                  autocomplete="off" class="layui-input">
              </div>
               <div class="layui-form-mid layui-word-aux">
                  <span class="x-red">*</span>名称必须填写
              </div>
          </div>
            <div class="layui-form-item">
                <!-- <div class="layui-input-block">
                    <input type="checkbox" lay-skin="primary"  id="c_all" lay-filter="c_all" title="全部">
                    <input type="checkbox" lay-skin="primary"  id="f_all" lay-filter="f_all" title="反选">
                    <br/><br/>
                    <?php if(is_array($rules) || $rules instanceof \think\Collection || $rules instanceof \think\Paginator): $i = 0; $__LIST__ = $rules;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                    <input type="checkbox" name="rules[]" lay-skin="primary" lay-filter="c_one" class="cityId"  title="<?php echo $vo['name']; ?>" value="<?php echo $vo['id']; ?>">
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                </div> -->
                <table class="layui-table">
                      <colgroup>
                        <col width="100">
                        <col width="150">
                        <col>
                      </colgroup>
                      <thead>
                        <tr>
                          <th>权   限</th>
                        </tr> 
                      </thead>
                      <tbody>
                         <?php if(is_array($rules) || $rules instanceof \think\Collection || $rules instanceof \think\Paginator): $i = 0; $__LIST__ = $rules;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                        <tr>
                          <td><input class="checkbox-parent <?php if($vo['level'] != 0): ?> checkbox-child <?php endif; ?>" type="checkbox" dataid="id-1-2-3" value="<?php echo $vo['id']; ?>" name="rules[]" title="<?php echo str_repeat('&nbsp;&nbsp;',$vo['level']*3); ?><?php echo $vo['name']; ?>" lay-skin="primary"></td>
                        </tr>
                        <?php endforeach; endif; else: echo "" ;endif; ?>
                      </tbody>
                    </table>
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

      $('input.checkbox-parent').on('change',function(){
          var dataid = $(this).attr('dataid');
          alert('dataid');
      })

   /*layui.use('form', function () {
        var form = layui.form;
        //全选
        form.on('checkbox(c_all)', function (data) {
            var a = data.elem.checked;
            if (a == true) {
                $(".cityId").prop("checked", true);
                form.render('checkbox');
            } else {
                $(".cityId").prop("checked", false);
                form.render('checkbox');
            }
        });
        //反选
        form.on('checkbox(f_all)', function (data) {
            var item = $(".cityId");
            item.each(function () {
                if ($(this).prop("checked")) {
                    $(this).prop("checked", false);
                } else {
                    $(this).prop("checked", true);
                }
            })
            form.render('checkbox');
        });
        //有一个未选中全选取消选中
        form.on('checkbox(c_one)', function (data) {
            var item = $(".cityId");
            for (var i = 0; i < item.length; i++) {
                if (item[i].checked == false) {
                    $("#c_all").prop("checked", false);
                    form.render('checkbox');
                    break;
                }
            }
            //如果都勾选了  勾上全选
            var  all=item.length;
            for (var i = 0; i < item.length; i++) {
                if (item[i].checked == true) {
                    all--;
                }
            }
            if(all==0){
                $("#c_all").prop("checked", true);
                form.render('checkbox');}
        });
    });*/
</script>
   
  </body>

</html>
