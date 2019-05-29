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
<form class="layui-form" action="" >
	<div class="layui-form-item">
		<label class="layui-form-label">姓名</label>
		<div class="layui-input-inline" style="width: 400px;">
			<input type="text" name="title"  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
		</div>

		<label class="layui-form-label">选择部门</label>
		<div class="layui-input-inline" style="width: 400px;">
			<select name="city" lay-verify="required">
				<option value="">请选择部门</option>
				<option value="0">北京</option>
				<option value="1">上海</option>
				<option value="2">广州</option>
				<option value="3">深圳</option>
				<option value="4">杭州</option>
			</select>
		</div>


	</div>
	<div class="layui-form-item">
		<div class="layui-input-block">
			<button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
			<button type="reset" class="layui-btn layui-btn-primary">重置</button>
		</div>
	</div>
</form>

<script>
    //Demo
    layui.use('form', function(){
        var form = layui.form;

        //监听提交
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });
</script>
<%--	 <form action="" class="layui-form">
		<div class="layui-form-item">
			<label class="layui-form-label">选择部门</label>
			<div class="layui-input-block">
				<select name="department" lay-verify="required">
					<option value="">请选择部门</option>
					<option value="0">总经办</option>
					<option value="1">财务部</option>
					<option value="2">行政部</option>
					<option value="3">人力资源部</option>
					<option value="4">销售部</option>
					<option value="5">市场部</option>
					<option value="6">营销部</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">姓名</label>
			<div class="layui-input-block">
				<input type="text" name="title" width="50px;" lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
			</div>
		</div>
		 <div class="layui-form-item">
			 <div class="layui-input-block">
				 <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
				 <button type="reset" class="layui-btn layui-btn-primary">重置</button>
			 </div>
		 </div>
	</form>
<script type="text/javascript">
	 layui.use('form',function(){
       var form=layui.form();
         form.on('submit(formDemo)', function(data){
             layer.msg(JSON.stringify(data.field));
             return false;
         });
	 })

</script>--%>
<!--body wrapper end-->
<!-- 将js放在文档的末尾，以便页面加载速度更快。 -->
<script src="../js/jquery-1.10.2.min.js"></script>
<script src="../js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="../js/jquery-migrate-1.2.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/modernizr.min.js"></script>
<script src="../js/jquery.nicescroll.js"></script>
<script src="../layui/layui.js"></script>
<script src="../layui/layui.all.js" ></script>
<!--所有页面的通用脚本-->
<script src="../js/scripts.js"></script>
<script type="text/javascript">
    layui.use(['layer'], function () {
        var layer = layui.layer;
    });
</script>
</body>
</html>
