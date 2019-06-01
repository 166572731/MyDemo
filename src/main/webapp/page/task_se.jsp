<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ChenLei
  Date: 2019/5/15
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
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
    <div>


        <div class="content-wrapper">
        <form action="../se.do" method="post">

            <section class="content-header">
                <h1>
                    任务查看
                </h1>
                <ol class="breadcrumb">
                    <li><a href="../"><i class="fa fa-home"></i> 首页</a></li>
                    <li class="active">任务查看</li>
                </ol>
            </section>

            <section class="content">

                <div id="ctl00_cphMain_AlertDiv"></div>

                <div class="box box-default">
                    <div class="box-header with-border">
                        <h3 class="box-title">
                            <a id="ctl00_cphMain_hlBack" href="List.aspx?active=46,47"><span class="label label-back"><i class="fa fa-chevron-left"></i> 返回</span></a>
                            <a id="ctl00_cphMain_hlPrint" href="javascript:McPrintHide(&#39;.box-title,.box-footer&#39;);"><span class="label label-primary"><i class="fa fa-print"></i> 打印</span></a>
                        </h3>
                    </div>

                    <div class="box-body">
                        <div class="row">

                            <div class="box-body">
                                <div class="mailbox-read-info">
                                    <h3>&nbsp;&nbsp;&nbsp;&nbsp;<span id="title"></span></h3>
                                    <h5>&nbsp;&nbsp;&nbsp;&nbsp;发布：<span id="issuer" class="mailbox-read-time"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参加人员：<span id="participant" class="mailbox-read-time"></span></h5>
                                </div>
                                <div class="mailbox-read-message">
                                    <span id="describe"></span>

                                    <table>
                                        <c:forEach items="${sessionScope.feedback}" var="s">
                                        <tr>
                                            <td>${s.fe_list}</td>
                                        </tr>
                                            <tr>
                                                <td>${s.fe_type}</td>
                                            </tr>
                                        </c:forEach>
                                    </table>

                                    <span id="ctl00_cphMain_lblFeedback"><h5 style="margin-top:20px;">&nbsp;&nbsp;&nbsp;&nbsp;任务进度（<span id="starttime1"></span> 至 <span id="endtime1"></span>）<span id="schedule">${sessionScope.schedule}</span></h5><div class="progress xs" style="margin:10px 0;"><div class="progress-bar progress-bar-aqua" style="width: ${sessionScope.schedule}" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div></div></span>
                                    <span id="ctl00_cphMain_lblNote"></span>
                                </div>
                            </div>

                        </div>

                        <div class="row">

                            <div class="col-md-6 form-group">
                                <label><span id="ctl00_cphMain_Label5">状态</span></label>
                                <select name="type" id="type" class="form-control select2">
                                    <option selected="selected" value="1">新任务</option>
                                    <option value="2">已接收</option>
                                    <option value="3">进行中</option>
                                    <option value="4">已完成</option>

                                </select>
                            </div>

                            <div class="col-md-6 form-group">
                                <label><span id="ctl00_cphMain_Label2">反馈</span></label>
                                <input name="feedback" type="text" id="feedback" class="form-control" />
                                <input name="fk_task" type="hidden" id="bh"   />
                            </div>

                        </div>



                    </div>

                    <div class="box-footer">

                        <input type="submit"  value="保存" id="ctl00_cphMain_btnSave" class="btn btn-primary" />
                        <input type="submit"  value="返回" id="ctl00_cphMain_btnBack" class="btn btn-default" />
                    </div>

                </div>

            </section>
        </form>
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
