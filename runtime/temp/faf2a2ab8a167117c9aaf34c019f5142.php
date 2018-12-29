<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:56:"F:\www\public/../application/index\view\index\index.html";i:1545811376;s:48:"F:\www\application\index\view\public\header.html";i:1545208666;s:46:"F:\www\application\index\view\public\left.html";i:1545619911;s:46:"F:\www\application\index\view\public\foot.html";i:1545205892;}*/ ?>
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
    <div class="container">
        <div class="logo"><a href="./index.html">系统</a></div>
        <div class="left_open">
            <i title="展开左侧栏" class="iconfont">&#xe699;</i>
        </div>
        <ul class="layui-nav left fast-add" lay-filter="">
          <li class="layui-nav-item">
            <a href="javascript:;">系统管理</a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
              <dd><a onclick="x_admin_show('菜单管理','http://www.baidu.com')"><i class="iconfont">&#xe6a2;</i>菜单管理</a></dd>
              <dd><a onclick="x_admin_show('图片','http://www.baidu.com')"><i class="iconfont">&#xe6a8;</i>图片</a></dd>
              <dd><a onclick="x_admin_show('用户','http://www.baidu.com')"><i class="iconfont">&#xe6b8;</i>用户</a></dd>
            </dl>
          </li>
          <li class="layui-nav-item">
            <a href="javascript:;">+新增</a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
              <dd><a onclick="x_admin_show('资讯','http://www.baidu.com')"><i class="iconfont">&#xe6a2;</i>资讯</a></dd>
              <dd><a onclick="x_admin_show('图片','http://www.baidu.com')"><i class="iconfont">&#xe6a8;</i>图片</a></dd>
               <dd><a onclick="x_admin_show('用户','http://www.baidu.com')"><i class="iconfont">&#xe6b8;</i>用户</a></dd>
            </dl>
          </li>
          <li class="layui-nav-item">
            <a href="javascript:;">+新增</a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
              <dd><a onclick="x_admin_show('资讯','http://www.baidu.com')"><i class="iconfont">&#xe6a2;</i>资讯</a></dd>
              <dd><a onclick="x_admin_show('图片','http://www.baidu.com')"><i class="iconfont">&#xe6a8;</i>图片</a></dd>
               <dd><a onclick="x_admin_show('用户','http://www.baidu.com')"><i class="iconfont">&#xe6b8;</i>用户</a></dd>
            </dl>
          </li>
        </ul>

        <ul class="layui-nav right" lay-filter="">
          <li class="layui-nav-item">
            <a href="javascript:;"><?php echo \think\Session::get('info.name')=='admin'?'超级管理员  '.\think\Session::get('info.name'):'管理员  '.\think\Session::get('info.name'); ?></a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
              <dd><a onclick="x_admin_show('个人信息','http://www.baidu.com')">个人信息</a></dd>
              <dd><a onclick="x_admin_show('切换帐号','http://www.baidu.com')">切换帐号</a></dd>
              <dd><a href="<?php echo url('Login/logout'); ?>">退出</a></dd>
            </dl>
          </li>
          <li class="layui-nav-item to-index"><a href="/">前台首页</a></li>
        </ul>
        
    </div>
    <!-- 顶部结束 -->
    <!-- 中部开始 -->
     <!-- 左侧菜单开始 -->
    <div class="left-nav">
      <div id="side-nav">
        <ul id="nav">
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe6b8;</i>
                    <cite>病人预约管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="member-list.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>预约登记列表</cite>
                            
                        </a>
                    </li >
                    <li>
                        <a _href="member-del.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>客服明细报表</cite>
                            
                        </a>
                    </li>
                     <li>
                        <a _href="member-del.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>月趋势报表</cite>
                            
                        </a>
                    </li>
                     <li>
                        <a _href="member-del.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>自定义图形报表</cite>
                            
                        </a>
                    </li>
                     <li>
                        <a _href="member-del.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>导出病人数据</cite>
                            
                        </a>
                    </li>

                      <li>
                        <a _href="member-del.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>数据横向对比</cite>
                        </a>
                    </li>
                    
                  
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe723;</i>
                    <cite>订单管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="order-list.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>订单列表</cite>
                        </a>
                    </li >
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe723;</i>
                    <cite>分类管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="cate.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>多级分类</cite>
                        </a>
                    </li >
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe723;</i>
                    <cite>城市联动</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="city.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>三级地区联动</cite>
                        </a>
                    </li >
                </ul>
            </li>
              <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe6ce;</i>
                    <cite>系统统计</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="echarts1.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>拆线图</cite>
                        </a>
                    </li >
                    <li>
                        <a _href="echarts2.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>柱状图</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="echarts3.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>地图</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="echarts4.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>饼图</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="echarts5.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>雷达图</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="echarts6.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>k线图</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="echarts7.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>热力图</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="echarts8.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>仪表图</cite>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe726;</i>
                    <cite>系统管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="<?php echo url('Part/index'); ?>">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>菜单管理</cite>
                        </a>
                    </li >
                    <li>
                        <a _href="<?php echo url('Admin/index'); ?>">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>人员管理</cite>
                        </a>
                    </li >
                   
                    <li>
                        <a _href="<?php echo url('auth_rule/index'); ?>">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>权限管理</cite>
                        </a>
                    </li >
                     <li>
                        <a _href="<?php echo url('Part/index'); ?>">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>部门管理</cite>
                        </a>
                    </li >
                     <li>
                        <a _href="<?php echo url('Part/index'); ?>">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>医院管理</cite>
                        </a>
                    </li >
                     <li>
                        <a _href="<?php echo url('Part/index'); ?>">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>通知管理</cite>
                        </a>
                    </li >
                </ul>
            </li>
          
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe6b4;</i>
                    <cite>设置</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                     <li>
                        <a _href="<?php echo url('Hospital/index'); ?>">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>医院设置</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="<?php echo url('Doctor/index'); ?>">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>医生设置</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="<?php echo url('Disease/index'); ?>">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>疾病设置</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="<?php echo url('Media/index'); ?>">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>媒体类型设置</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="<?php echo url('Depart/index'); ?>">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>医院科室设置</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="<?php echo url('Engine/index'); ?>">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>搜索引擎设置</cite>
                        </a>
                    </li>
                </ul>

            </li>
        </ul>
      </div>
    </div>

    <!-- 右侧主体开始 -->
    <div class="page-content">
        <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
          <ul class="layui-tab-title">
            <li class="home"><i class="layui-icon">&#xe68e;</i>我的桌面</li>
          </ul>
          <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <iframe src="<?php echo url('Index/welcome'); ?>" frameborder="0" scrolling="yes" class="x-iframe"></iframe>
            </div>
          </div>
        </div>
    </div>
    <div class="page-content-bg"></div>
    <!-- 中部结束 -->
  <!-- 底部开始 -->
    <div class="footer">
        <div class="copyright">Copyright ©2017 x-admin v2.3 All Rights Reserved</div>  
    </div>
    <!-- 底部结束 -->
    <script>
    //百度统计可去掉
    var _hmt = _hmt || [];
    (function() {
      var hm = document.createElement("script");
      hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
      var s = document.getElementsByTagName("script")[0]; 
      s.parentNode.insertBefore(hm, s);
    })();
    </script>
</body>
</html>
<script>



</script>