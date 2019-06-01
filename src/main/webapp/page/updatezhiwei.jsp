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
    <link href="../layui/css/layui.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
    <link href="../css/style-responsive.css" rel="stylesheet">
<body style="background: #eff0f4;">
<!--body wrapper start-->

<h1>${map.pk_Position}</h1>
<form class="layui-form" action="/updatezhiwei.do" >
    <div class="layui-form-item" STYLE="display: none">
        <label class="layui-form-label">Id</label>
        <div class="layui-input-block">
            <input type="text" name="pk_Position" required  lay-verify="required" value="${map.pk_Position}" id="pk_Department" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">名称</label>
        <div class="layui-input-block">
            <input type="text" name="PositionName" required  lay-verify="required" value="${map.PositionName}" id="DepartmentName" autocomplete="off" class="layui-input">
        </div>
    </div>


    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit >保存</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            <a href="/page/user_bumen_manager.jsp" class="layui-btn">返回</a>
        </div>
    </div>


</form>
<!--所有页面的通用脚本-->
<script src="../js/scripts.js"></script>
<script type="text/javascript">
    layui.use(['layer'], function () {
        var layer = layui.layer;
    });
</script>
</body>
</html>
