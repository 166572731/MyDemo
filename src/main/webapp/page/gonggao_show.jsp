<%--
  Created by IntelliJ IDEA.
  User: ChenLei
  Date: 2019/5/15
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt"  prefix="c"%>
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
	<!-- 内容 -->
	<div>


		<div class="content-wrapper">

			<%--<section class="content-header">--%>
				<%--<h1>--%>
					<%--通知查看--%>
				<%--</h1>--%>
				<%--<ol class="breadcrumb">--%>
					<%--<li><a href="../"><i class="fa fa-home"></i> 首页</a></li>--%>
					<%--<li class="active">通知查看</li>--%>
				<%--</ol>--%>
			<%--</section>--%>

			<section class="content">

				<div id="ctl00_cphMain_AlertDiv"></div>

				<div class="box box-default">
					<div class="box-header with-border">
						<%--<h3 class="box-title">--%>
							<%--<a id="ctl00_cphMain_hlBack" href="ViewList.aspx?active=34,37"><span class="label label-back"><i class="fa fa-chevron-left"></i> 返回</span></a>--%>
							<%--<a id="ctl00_cphMain_hlPrint" href="../showById/${n.pk_Notice}.do"><span class="label label-primary"><i class="fa fa-print"></i> 打印</span></a>--%>
						<%--</h3>--%>
					</div>

					<div class="box-body">
						<div class="row">

							<div class="box-body">
								<div class="mailbox-read-info">
									<h3><span id="ctl00_cphMain_lblTitle">${notice.title}</span></h3>
									<h5><span id="ctl00_cphMain_lblFrom" class="mailbox-read-time">发布：
									 <c:if test="${notice.fk_Department==1000}">
										 总经办
									 </c:if>
                                                    <c:if test="${n.fk_Department==1001}">
														财务部
													</c:if>
                                                    <c:if test="${n.fk_Department==1002}">
														行政部
													</c:if>
                                                    <c:if test="${n.fk_Department==1003}">
														人力资源部
													</c:if>
                                                    <c:if test="${n.fk_Department==1004}">
														销售部
													</c:if>
                                                    <c:if test="${n.fk_Department==1005}">
														市场部
													</c:if>
                                                    <c:if test="${n.fk_Department==1006}">
														营销部
													</c:if>
									</span><span id="ctl00_cphMain_lblDate" class="mailbox-read-time pull-right">${notice.createDate}</span></h5>
								</div>
								<div class="mailbox-read-message">
									<span id="ctl00_cphMain_lblDescription">${notice.description}</span>
								</div>
							</div>

						</div>
					</div>

					<div class="box-footer">
						<input href="../" type="submit" name="ctl00$cphMain$btnBack" value="返回" id="ctl00_cphMain_btnBack" class="btn btn-default" />
					</div>

				</div>

			</section>

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
