<%--
  Created by IntelliJ IDEA.
  User: ChenLei
  Date: 2019/5/15
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport"
		  content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<meta name="keywords"
		  content="admin, dashboard, bootstrap, template, flat, modern, theme, responsive, fluid, retina, backend, html5, css, css3">
	<meta name="description" content="">
	<meta name="author" content="ThemeBucket">
	<link rel="shortcut icon" href="#" type="../image/png">
	<title>OA办公自动化系统</title>
	<!--common-->
	<link href="../layui/css/layui.css" rel="stylesheet">
	<link href="../css/style.css" rel="stylesheet">
	<link href="../css/style-responsive.css" rel="stylesheet">
<body style="background: #eff0f4;">
<!--body wrapper start-->
<button class="layui-btn" data-type="reload" id="insert">新增账号</button>
<div>
	<table class="layui-hide" id="Zhanghao" lay-filter="user"></table>
</div>
<!--body wrapper end-->
<!-- 将js放在文档的末尾，以便页面加载速度更快。 -->
<script src="../js/jquery-1.10.2.min.js"></script>
<script src="../js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="../js/jquery-migrate-1.2.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/modernizr.min.js"></script>
<script src="../js/jquery.nicescroll.js"></script>
<script src="../layui/layui.js"></script>

<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->

<script type="text/html" id="barDemo">
	<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<!--
<script type="text/html" id="aa">
	{{#  if(TypeID =="1"){ }}
	微信
	{{#  } else if(TypeID =="2") { }}
	支付宝
	{{#  } else }}
	银行卡
	{{#  } }}
</script>
!-->

<script>
    layui.use('table', function(){
        var table = layui.table;

        //方法级渲染
        table.render({
            elem: '#Zhanghao'
            ,url: '../ShowZhanghao.do'
            ,cols: [[
                {checkbox: true, fixed: true}
                ,{field:'pk_Account', title: 'ID',align: 'center', width:100, sort: true, fixed: true}
                ,{field:'TypeID', title: '类型',align: 'center',templet : '#aa', width:150}
                ,{field:'Title', title: '标题',align: 'center', width:200 }
                ,{field:'AccountName', title: '账号',align: 'center', width:200}
                ,{field:'Owner', title: '开户人',align: 'center'}
                ,{field:'CreateDate', title: '创建时间',align: 'center',templet: function (d) {
                        return layui.util.toDateString(d.CreateDate,'yyyy-MM-dd');
                    }}
                ,{field:'right', title: '操作',align: 'center',toolbar: '#barDemo'}
            ]]
            ,id: 'testReload'
            ,page: true
        });

        var $ = layui.$, active = {
            reload: function(){
                var demoReload = $('#demoReload');

                //执行重载
                table.reload('testReload', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    ,where: {
                        key: {
                            id: demoReload.val()
                        }
                    }
                });
            }
        };

        $("#insert").on('click', function() {

            location = "insertzhanghao.jsp";
            //location = "ceshi.jsp";

        })

        //监听行工具事件
        table.on('tool(user)', function(obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"

            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的DOM对象

 				if (layEvent === 'del') { //删除
                layer.confirm('真的删除行么', function(index) {
                    //	obj.del(); //删除对应行（tr）的DOM结构，并更新缓存
                    location ="/delzhanghao/"+data["pk_Account"]+".do";
                    //	layer.close(index);
                });
            }

        });
    });
</script>
<!--所有页面的通用脚本-->
<script src="../js/scripts.js"></script>
<script type="text/javascript">
    layui.use(['layer'], function () {
        var layer = layui.layer;
    });
</script>
</body>
</html>
