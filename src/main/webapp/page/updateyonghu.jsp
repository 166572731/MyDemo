<%@ page contentType="text/html;  charset=UTF-8" isELIgnored="false" language="java" %>
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
<!--body wrapper end-->
<h1>${map.pk_user}</h1>
<form action="/updateyonghu.do">

    <div class="layui-form-item" style="display: none">
        <label class="layui-form-label">ID</label>
        <div class="layui-input-block">
            <input type="text" name="pk_user" required  value="${map.pk_user}" id="pk_user" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">姓名</label>
        <div class="layui-input-block">
            <input type="text" name="userName" required  value="${map.userName}" id="userName" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">部门</label>
        <div class="layui-input-block">
            <select name="fk_Department">
                <option value="1000">总经办</option>
                <option value="1001">财务部</option>
                <option value="1002">行政部</option>
                <option value="1003">人力资源部</option>
                <option value="1004">销售部</option>
                <option value="1005">市场部</option>
                <option value="1006">营销部</option>
                <option value="1020">保洁部</option>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">角色</label>
        <div class="layui-input-block">
            <select name="Position">
                <option value="1">CEO</option>
                <option value="2">总经理</option>
                <option value="3">副总经理</option>
                <option value="4">总监</option>
                <option value="5">部门经理</option>
                <option value="6">办公室主任</option>
                <option value="7">助理</option>
                <option value="8">文员</option>
                <option value="9">保洁员</option>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">电话</label>
        <div class="layui-input-block">
            <input type="text" name="Phone" required  lay-verify="required" value="${map.Phone}" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">性别</label>
        <div class="layui-input-block">
            <select name="Sex">
                <option value="0">女</option>
                <option value="1">男</option>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">基本工资</label>
        <div class="layui-input-block">
            <input type="text" name="Wages" required  lay-verify="required" value="${map.Wages}"  autocomplete="off" class="layui-input">
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


<!-- 将js放在文档的末尾，以便页面加载速度更快。 -->
<script src="../js/jquery-1.10.2.min.js"></script>
<script src="../js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="../js/jquery-migrate-1.2.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/modernizr.min.js"></script>
<script src="../js/jquery.nicescroll.js"></script>
<script src="../layui/layui.js"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
</body>
</html>
