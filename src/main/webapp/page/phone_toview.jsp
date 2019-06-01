<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ChenLei
  Date: 2019/5/15
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  isELIgnored="false" language="java" %>
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
<div>
    <div class="content-wrapper" align="center">

        <section class="content-header">
            <h1>
                联系人查看
            </h1>
            <ol class="breadcrumb">
                <li><a href="../"><i class="fa fa-home"></i> 首页</a></li>
                <li class="active">联系人查看</li>
            </ol>
        </section>

        <section class="content">
            <div class="row">

                <div class="col-md-9">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">查看</h3>
                        </div>

                        <div class="box-body">

                            <div class="mailbox-read-info" align="center">
                                <h3>
                                    <span id="comm_name"></span>
                                    <c:if test="${sessionScope.comm_sex==2}">
                                    <img id="comm_sex" title="女" src="../upload/female.png" style="border-width:0px;width:18px;" />
                                    </c:if>
                                    <c:if test="${sessionScope.comm_sex==1}">
                                        <img id="comm_sex" title="男" src="../upload/male.png" style="border-width:0px;width:18px;" />
                                    </c:if>


                                </h3>
                            </div>
                            <div class="row" align="center">

                                <div class="col-md-6 form-group" align="center">
                                    <div class="user-edit-image" ><img src="../${sessionScope.comm_headportrait}"  style="float: right; width:40px; height:40px;margin-right: -30px;"  class="img-circle" /></div>
                                </div>

                            </div>
                            <div class="mailbox-read-message" align="center">
                                <span id="ctl00_cphMain_lblContent"><p ><b>手机号码：</b><span id="comm_phone"></span></p><p ><b>公司电话：</b><span id="comm_landline"></span></p><p ><b>传真：</b><span id="comm_fax"></span></p><p ><b>Email：</b><span id="comm_email"></span></p><p ><b>地址：</b><span id="comm_address"></span></p><p ><b>备注：</b><span id="comm_note"></span></p></span>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </section>

    </div>


</div>

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
<!--所有页面的通用脚本-->
<script src="../js/scripts.js"></script>
<script type="text/javascript">
    layui.use(['layer'], function () {
        var layer = layui.layer;
    });
</script>
</body>
</html>
