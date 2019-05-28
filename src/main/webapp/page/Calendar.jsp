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
<body style="background: #fafbff;">

<button class="layui-btn layui-btn-radius" id="addRc" onclick="add()">添加日程</button>
<table id="demo" lay-filter="demo"></table>

<!--body wrapper end-->
<!-- 将js放在文档的末尾，以便页面加载速度更快。 -->
<script src="../js/jquery-1.10.2.min.js"></script>
<script src="../js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="../js/jquery-migrate-1.2.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/modernizr.min.js"></script>
<script src="../js/jquery.nicescroll.js"></script>
<script src="../layui/layui.js"></script>

<script>
    var table;
    layui.use('table', function(){
        table = layui.table;

        //第一个实例
        table.render({
            elem: '#demo'
            ,height: 570
            ,url: '../showCalendar.do' //数据接口
            ,page: true //开启分页
            ,cols: [[ //表头
                {field: 'TypeID', title: '类型', width:100,  fixed: 'left'}
                ,{field: 'Title', title: '标题', width:80}
                ,{field: 'Description', title: '描述', width:120}
                ,{field: 'StartDate', title: '开始时间', width:180,templet:function (d) {
                        return layui.util.toDateString(d.SentDate,'yyyy-MM-dd HH:mm:ss');
                    }}
                ,{field: 'EndDate', title: '结束时间', width:180,templet:function (d) {
                        return layui.util.toDateString(d.SentDate,'yyyy-MM-dd HH:mm:ss');
                    }}
                ,{field: 'StatusID', title: '状态', width: 80,templet:function (d) {
                        if(d.StatusID=='一般'){
                            return '<span style="color: #4eb221;">'+d.StatusID+'</span>'
                        }else if(d.StatusID=='重要'){
                            return '<span style="color: rgb(226,53,35);">'+d.StatusID+'</span>'
                        }
                    }}
                ,{field: 'wealth', title: '操作', width: 200,toolbar: '#barDemo'}
            ]]
        });

        table.on('tool(demo)', function(obj){
            var data = obj.data;
            if(obj.event === 'detail'){

            } else if(obj.event === 'del'){
                layer.confirm('真的删除行么', function(index){
                    obj.del();
                    layer.close(index);

                    $.post('../deleteCalendar.do',{'id':data.pk_Calendar}, function(str) {
                        layer.msg("删除成功");
                        //window.location.reload();-----页面刷新
                    });

                });
            }else if(obj.event === 'select'){

			}

        });

    });


</script>
<script>
    function add() {
        layer.open({
            title: '添加日程',
            offset: '0px',
            area: ['950px', '680px'],
            type: 2,
            content: 'Calendar_ADD.jsp'
        });
    }
    //Demo

</script>


<script id="barDemo" type="text/html">
	<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
	<a class="layui-btn layui-btn-normal layui-btn-xs " lay-event="select">修改</a>
	<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
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
