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
    <link rel="shortcut icon" href="#" type="../../image/png">
    <title>OA办公自动化系统</title>
    <!--common-->
    <link href="../../layui/css/layui.css" rel="stylesheet">
    <link href="../../css/style.css" rel="stylesheet">
    <link href="../../css/style-responsive.css" rel="stylesheet">
<body style="background: #eff0f4;">
<div id="role_list" class="row"></div>
<!-- 模态框 -->
<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <form>
                <div class="modal-body">
                    <p>输入部门权限角色名称</p>
                    <input type="hidden" name="changeID" id="changeID">
                    <input type="text" name="roleName" placeholder="权限角色名称" autocomplete="off" class="form-control placeholder-no-fix">
                </div>
                <div class="modal-footer">
                    <button data-dismiss="modal" class="btn btn-default" type="button"> 取 消</button>
                    <button class="btn btn-primary bs_submit" type="button"> 提 交</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- 将js放在文档的末尾，以便页面加载速度更快。 -->
<script src="../../js/jquery-1.10.2.min.js"></script>
<script src="../../js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="../../js/jquery-migrate-1.2.1.min.js"></script>
<script src="../../js/bootstrap.min.js"></script>
<script src="../../js/modernizr.min.js"></script>
<script src="../../js/jquery.nicescroll.js"></script>
<script src="../../layui/layui.js"></script>
<script src="js/role_manager.js"></script>
</body>
</html>
