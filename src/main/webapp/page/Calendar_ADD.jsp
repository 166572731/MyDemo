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
<p>&nbsp;</p>

	<form class="layui-form" action="">
		<div class="layui-form-item">
			<label class="layui-form-label">标题</label>
			<div class="layui-input-block" >
				<input type="text" id="Title" name="title" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">类型</label>
			<div class="layui-input-block">
				<select id="TypeID" name="city" lay-verify="required" style="width:30px">
					<option value="一般">一般</option>
					<option value="重要">重要</option>
				</select>
			</div>
		</div>



		<div class="layui-inline">
			<label class="layui-form-label" style="width: auto">开始时间</label>
			<div class="layui-input-inline">
				<input class="layui-input" id="StartDate"  placeholder="yyyy-MM-dd HH:mm:ss">
			</div>
		</div>


		<div class="layui-inline">
			<label class="layui-form-label" style="width: auto">结束时间</label>
			<div class="layui-input-inline">
				<input class="layui-input" id="EndDate"  placeholder="yyyy-MM-dd HH:mm:ss">
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label" style="width: auto">是否通知</label>
			<div class="layui-input-block">
				<input type="checkbox" id="IsRemind" name="switch" lay-skin="switch">
			</div>
		</div>

		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">内容</label>
			<div class="layui-input-block" style="width: 400px">
				<textarea name="desc" id="Description" placeholder="请输入内容" class="layui-textarea"></textarea>
			</div>
		</div>
		<p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>
		<div class="layui-form-item" style="text-align:center;">
			<div class="layui-input-block">
				<button class="layui-btn" id="tij" >立即提交</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
	</form>


<!--body wrapper end-->
<!-- 将js放在文档的末尾，以便页面加载速度更快。 -->
<script src="../js/jquery-1.10.2.min.js"></script>
<script src="../js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="../js/jquery-migrate-1.2.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/modernizr.min.js"></script>
<script src="../js/jquery.nicescroll.js"></script>
<script src="../layuiOld/layui.js"></script>
<!--所有页面的通用脚本-->
<script src="../js/scripts.js"></script>

<script>
	$('#tij').click(function () {
		var Title=$('#Title').val();//标题
		var TypeID=$('#TypeID').val();//类型
		var StartDate=$("#StartDate").val();
		var EndDate=$("#EndDate").val();
		var Description=$("#Description").val();
		var IsRemind=$("#IsRemind").val();

        $.post('../addCalendar.do',{'Title':Title,'TypeID':TypeID,'StartDate':StartDate,'EndDate':EndDate,'Description':Description,'IsRemind':IsRemind}, function(str) {
            layer.msg("添加成功");

        });
    })
</script>

<script>
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#EndDate'
            ,theme: '#47a628'
            ,type: 'datetime'
        });
        laydate.render({
            elem: '#StartDate'
            ,theme: '#4bb62f'
            ,type: 'datetime'
        });

        //监听提交
        form.on('submit(demo1)', function(data){
            layer.alert(JSON.stringify(data.field), {

            })
            return false;
        });


    });
</script>

<script type="text/javascript">
    layui.use(['layer'], function () {
        var layer = layui.layer;
    });
</script>
</body>
</html>
