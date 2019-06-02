<%--
  Created by IntelliJ IDEA.
  User: ChenLei
  Date: 2019/5/15
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
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
<form class="layui-form" action="load.do" >
	<div class="layui-form-item">
		<label class="layui-form-label">姓名</label>
		<div class="layui-input-inline" style="width: 400px;">
			<input type="text" name="userId"  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
		</div>

		<label class="layui-form-label">选择部门</label>
		<div class="layui-input-inline" style="width: 400px;">
			<select name="departmentId" lay-verify="required">
				<option value="">请选择部门</option>
				<option value="1000">总经办</option>
				<option value="1001">财务部</option>
				<option value="1002">行政部</option>
				<option value="1003">人力资源部</option>
				<option value="1004">销售部</option>
				<option value="1005">市场部</option>
				<option value="1006">营销部</option>
			</select>
		</div>
		<div class="layui-form-item">
		  <label class="layui-form-label">日期</label>
		   <div class="layui-input-inline" style="width: 400px;">
			<input type="text" name="date"  lay-verify="required" placeholder="请输入日期" autocomplete="off" class="layui-input">
		    </div>
		</div>

	</div>
	<div class="layui-form-item">
		<div class="layui-input-block">
			<button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
			<button type="reset" class="layui-btn layui-btn-primary">重置</button>
		</div>
	</div>
</form>
       <table class="layui-table">
		    <tr>
				<td>人员姓名</td>
                <td>星期</td>
			</tr>
           <c:forEach items="${list}" var="k">
			   <tr>
				   <td>${k.userName}</td>
                   <td>${k.DepartmentName}</td>

			   </tr>

		   </c:forEach>


	   </table>

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
<script src="../layuiold/layui.js"></script>
<script src="../layuiold/layui.all.js" ></script>
<!--所有页面的通用脚本-->
<script src="../js/scripts.js"></script>
<script type="text/javascript">
    layui.use(['layer'], function () {
        var layer = layui.layer;
    });
</script>
</body>
</html>
