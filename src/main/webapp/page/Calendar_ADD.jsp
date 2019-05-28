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


	<form class="layui-form" action="">
		<div class="layui-form-item">
			<label class="layui-form-label">输入框</label>
			<div class="layui-input-block">
				<input type="text" name="title" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">密码框</label>
			<div class="layui-input-inline">
				<input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid layui-word-aux">辅助文字</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">选择框</label>
			<div class="layui-input-block">
				<select name="city" lay-verify="required">
					<option value=""></option>
					<option value="0">北京</option>
					<option value="1">上海</option>
					<option value="2">广州</option>
					<option value="3">深圳</option>
					<option value="4">杭州</option>
				</select>
			</div>
		</div>

		<div class="layui-inline">
			<label class="layui-form-label">日期时间选择器</label>
			<div class="layui-input-inline">
				<input class="layui-input" id="sj1" type="text" placeholder="yyyy-MM-dd HH:mm:ss">
			</div>
		</div>


		<div class="layui-inline">
			<label class="layui-form-label">日期时间选择器</label>
			<div class="layui-input-inline">
				<input class="layui-input" id="test5" type="text" placeholder="yyyy-MM-dd HH:mm:ss">
			</div>
		</div>

		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">文本域</label>
			<div class="layui-input-block">
				<textarea name="desc" placeholder="请输入内容" class="layui-textarea"></textarea>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
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
<script src="../layui/layui.js"></script>
<!--所有页面的通用脚本-->
<script src="../js/scripts.js"></script>
<script>
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#test5'
            ,theme: '#47a628'
            ,type: 'datetime'
        });
        laydate.render({
            elem: '#sj1'
            ,theme: '#4bb62f'
            ,type: 'datetime'
        });

        //监听提交
        form.on('submit(demo1)', function(data){
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
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
