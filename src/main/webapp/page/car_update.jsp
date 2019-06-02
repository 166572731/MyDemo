<%--
  Created by IntelliJ IDEA.
  User: ChenLei
  Date: 2019/5/15
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
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
	<link href="../layuiold/css/layui.css" rel="stylesheet">
	<link href="../css/style.css" rel="stylesheet">
	<link href="../css/style-responsive.css" rel="stylesheet">
<body style="background: #eff0f4;">
<!--body wrapper start-->
<div>
	<form class="layui-form" action="/update.do">

		<div class="layui-form-item" style="width: 500px;">
			<label class="layui-form-label">车辆编号</label>
			<div class="layui-input-block">
				<input type="text" name="pk_Set" value="${map.pk_Set}"   lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item" style="width: 500px;">
			<label class="layui-form-label">标题</label>
			<div class="layui-input-block">
				<input type="text" name="Title" value="${map.Title}"  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">汽车型号</label>
			<div class="layui-input-inline">
				<select name="TypeID" lay-verify="required">
					<option value="">请选择汽车型号</option>
					<option value="2">宝马</option>
					<option value="3">奔驰</option>
					<option value="4">奥迪</option>
					<option value="5">大众</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item" style="width: 500px;">
			<label class="layui-form-label">当前状态</label>
			<div class="layui-input-inline">
				<select name="StatusID" lay-verify="required">
					<option value="">请选择汽车状态</option>
					<option value="1">使用中</option>
					<option value="2">未使用</option>
                    <option value="3">维修中</option>
				</select>
			</div>
		</div>

		<div class="layui-form-item" style="width: 500px;">
			<label class="layui-form-label">汽车描述</label>
			<div class="layui-input-block">
				<input type="text" name="Description" required  lay-verify="required" placeholder="请输入汽车描述" autocomplete="off" class="layui-input">
			</div>
		</div>


		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
	</form>
</div>
<!--body wrapper end-->
<!-- 将js放在文档的末尾，以便页面加载速度更快。 -->
<script src="../js/jquery-1.10.2.min.js"></script>
<script src="../js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="../js/jquery-migrate-1.2.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/modernizr.min.js"></script>
<script src="../js/jquery.nicescroll.js"></script>
<script src="../layuiold/layui.js"></script>
<!--所有页面的通用脚本-->
<script src="../js/scripts.js"></script>
<script type="text/javascript">
    layui.use(['layer'], function () {
        var layer = layui.layer;
    });
</script>
<script>
    //Demo
    layui.use('form', function(){
        var form = layui.form;

        //监听提交
       /* form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return false;
        });*/
    });
</script>
</body>
</html>
