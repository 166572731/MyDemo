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




<div class="mail-box">
	<aside class="mail-nav mail-nav-bg-color">
		<header class="header"> <h4>Mailbox</h4> </header>
		<div class="mail-nav-body">
			<div class="text-center">
				<a class="btn btn-compose" href="#" onclick="myframe.src='ShowMeil.jsp'">
					发邮件
				</a>
			</div>
			<ul class="nav nav-pills nav-stacked mail-navigation">
				<li class="active"><a href="#" onclick="myframe.src='put_mail.jsp'"> <i class="fa fa-inbox"></i> 收件箱  <span class="label label-danger pull-right inbox-notification">4</span></a></li>
				<li><a href="#"> <i class="fa fa-envelope-o"></i> 草稿箱</a></li>
				<li><a href="#"> <i class="fa fa-certificate"></i> 垃圾箱</a></li>
				<li><a href="#" onclick="myframe.src='Del_Mail.jsp'" > <i class="fa fa-trash-o"></i> 回收站</a></li>
			</ul>

			<ul class="nav nav-pills nav-stacked labels-info ">
				<li> <h5>Buddy online</h5> </li>
				<li> <a href="#"> <i class="fa fa-comments text-success"></i> Jonathan Smith <p>I do not think</p></a>  </li>
				<li> <a href="#"> <i class="fa fa-comments text-danger"></i> iRon <p>Busy with coding</p></a> </li>
				<li> <a href="#"> <i class="fa fa-comments text-muted "></i> Anjelina Joli <p>I out of control</p></a></li>
				<li> <a href="#"> <i class="fa fa-comments text-muted "></i> Tis man <p>I do not think</p></a>  </li>
			</ul>
		</div>

	</aside>
	<section class="mail-box-info">
		<header class="header">
			<div class="btn-group pull-right">
				<button class="btn btn-sm btn-primary" type="button">
					<i class="fa fa-chevron-left"></i>
				</button>
				<button class="btn btn-sm btn-primary" type="button">
					<i class="fa fa-chevron-right"></i>
				</button>
			</div>
			<div class="btn-toolbar">
				<div class="btn-group">
					<button class="btn btn-sm btn-primary"><i class="fa fa-refresh"></i></button>
				</div>
				<div class="btn-group select">
					<button data-toggle="dropdown" class="btn btn-primary btn-sm dropdown-toggle">
						<span style="width: 70px;" class="dropdown-label">Filter</span>
						<span class="caret"></span>
					</button>
					<ul class="dropdown-menu text-left text-sm">
						<li><a href="#">Read</a></li>
						<li><a href="#">Unread</a></li>
						<li><a href="#">Starred</a></li>
						<li><a href="#">Unstarred</a></li>
					</ul>
				</div>

			</div>

		</header>

		<section class="mail-list">

			<iframe src="put_mail.jsp" id="myframe" frameborder="0" style="width: 100%; height:120%;"></iframe>
			<%--<ul class="list-group ">--%>
			<%--<li class="list-group-item">--%>
			<%--<span class="pull-left chk">--%>
			<%--<input type="checkbox"/>--%>
			<%--</span>--%>
			<%--<a class="thumb pull-left" href="#"> <img src="../images/avatar-mini.jpg"> </a>--%>
			<%--<a class="" href="mail_view.html"> <small class="pull-right text-muted">15 April</small> <strong>John Doe</strong>  <span>Donec ultrices faucibus rutrum. Phasellus sodales </span> <span class="label label-sm btn-success">normal</span> </a>--%>
			<%--</li>--%>
			<%--<li class="list-group-item">--%>
			<%--<span class="pull-left chk">--%>
			<%--<input type="checkbox"/>--%>
			<%--</span>--%>
			<%--<a class="thumb pull-left" href="#"> <img src="../images/photos/user1.png"> </a>--%>
			<%--<a class="" href="mail_view.html"> <small class="pull-right text-muted">10 May</small> <strong>Jane Doe</strong> <span>Phasellus sodales vulputate urna, vel accumsan augue egestas ac  </span> <span class="label label-sm btn-danger">urgent</span> </a>--%>
			<%--</li>--%>
			<%--<li class="list-group-item">--%>
			<%--<span class="pull-left chk">--%>
			<%--<input type="checkbox"/>--%>
			<%--</span>--%>
			<%--<a class="thumb pull-left" href="#"> <img src="images/photos/user2.png"> </a>--%>
			<%--<a class="" href="mail_view.html"> <small class="pull-right text-muted">3 June</small> <strong>Jonathan Smith</strong>  <span>Porttitor eu consequat risus. </span> <span class="label label-sm btn-warning">error</span> </a>--%>
			<%--</li>--%>
			<%--<li class="list-group-item">--%>
			<%--<span class="pull-left chk">--%>
			<%--<input type="checkbox"/>--%>
			<%--</span>--%>
			<%--<a class="thumb pull-left" href="#"> <img src="images/photos/user3.png"> </a>--%>
			<%--<a class="" href="mail_view.html"> <small class="pull-right text-muted">15 April</small> <strong>John Doe</strong>  <span>Donec ultrices faucibus rutrum. Phasellus sodales </span>  </a>--%>
			<%--</li>--%>
			<%--<li class="list-group-item">--%>
			<%--<span class="pull-left chk">--%>
			<%--<input type="checkbox"/>--%>
			<%--</span>--%>
			<%--<a class="thumb pull-left" href="#"> <img src="images/photos/user4.png"> </a>--%>
			<%--<a class="" href="mail_view.html"> <small class="pull-right text-muted">10 May</small> <strong>Jane Doe</strong> <span>Phasellus sodales vulputate urna, vel accumsan augue egestas ac  </span> </a>--%>
			<%--</li>--%>
			<%--<li class="list-group-item">--%>
			<%--<span class="pull-left chk">--%>
			<%--<input type="checkbox"/>--%>
			<%--</span>--%>
			<%--<a class="thumb pull-left" href="#"> <img src="images/photos/user1.png"> </a>--%>
			<%--<a class="" href="mail_view.html"> <small class="pull-right text-muted">3 June</small> <strong>Jonathan Smith</strong>  <span>Porttitor eu consequat risus. </span> <span class="label label-sm btn-warning">error</span> </a>--%>
			<%--</li>--%>
			<%--<li class="list-group-item">--%>
			<%--<span class="pull-left chk">--%>
			<%--<input type="checkbox"/>--%>
			<%--</span>--%>
			<%--<a class="thumb pull-left" href="#"> <img src="images/photos/user5.png"> </a>--%>
			<%--<a class="" href="mail_view.html"> <small class="pull-right text-muted">15 April</small> <strong>John Doe</strong>  <span>Donec ultrices faucibus rutrum. Phasellus sodales </span>  </a>--%>
			<%--</li>--%>
			<%--<li class="list-group-item">--%>
			<%--<span class="pull-left chk">--%>
			<%--<input type="checkbox"/>--%>
			<%--</span>--%>
			<%--<a class="thumb pull-left" href="#"> <img src="images/photos/user1.png"> </a>--%>
			<%--<a class="" href="mail_view.html"> <small class="pull-right text-muted">10 May</small> <strong>Jane Doe</strong> <span>Phasellus sodales vulputate urna, vel accumsan augue egestas ac   </a>--%>
			<%--</li>--%>
			<%--<li class="list-group-item">--%>
			<%--<span class="pull-left chk">--%>
			<%--<input type="checkbox"/>--%>
			<%--</span>--%>
			<%--<a class="thumb pull-left" href="#"> <img src="images/avatar-mini.jpg"> </a>--%>
			<%--<a class="" href="mail_view.html"> <small class="pull-right text-muted">3 June</small> <strong>Jonathan Smith</strong>  <span>Porttitor eu consequat risus.  </a>--%>
			<%--</li>--%>
			<%--<li class="list-group-item">--%>
			<%--<span class="pull-left chk">--%>
			<%--<input type="checkbox"/>--%>
			<%--</span>--%>
			<%--<a class="thumb pull-left" href="#"> <img src="images/photos/user3.png"> </a>--%>
			<%--<a class="" href="mail_view.html"> <small class="pull-right text-muted">15 April</small> <strong>John Doe</strong>  <span>Donec ultrices faucibus rutrum. Phasellus sodales </span> <span class="label label-sm btn-success">normal</span> </a>--%>
			<%--</li>--%>
			<%--<li class="list-group-item">--%>
			<%--<span class="pull-left chk">--%>
			<%--<input type="checkbox"/>--%>
			<%--</span>--%>
			<%--<a class="thumb pull-left" href="#"> <img src="images/photos/user4.png"> </a>--%>
			<%--<a class="" href="mail_view.html"> <small class="pull-right text-muted">10 May</small> <strong>Jane Doe</strong> <span>Phasellus sodales vulputate urna, vel accumsan augue egestas ac  </span> <span class="label label-sm btn-danger">urgent</span> </a>--%>
			<%--</li>--%>
			<%--<li class="list-group-item">--%>
			<%--<span class="pull-left chk">--%>
			<%--<input type="checkbox"/>--%>
			<%--</span>--%>
			<%--<a class="thumb pull-left" href="#"> <img src="images/photos/user2.png"> </a>--%>
			<%--<a class="" href="mail_view.html"> <small class="pull-right text-muted">3 June</small> <strong>Jonathan Smith</strong>  <span>Porttitor eu consequat risus. </a>--%>
			<%--</li>--%>
			<%--<li class="list-group-item">--%>
			<%--<span class="pull-left chk">--%>
			<%--<input type="checkbox"/>--%>
			<%--</span>--%>
			<%--<a class="thumb pull-left" href="#"> <img src="images/avatar-mini.jpg"> </a>--%>
			<%--<a class="" href="mail_view.html"> <small class="pull-right text-muted">15 April</small> <strong>John Doe</strong>  <span>Donec ultrices faucibus rutrum. Phasellus sodales </span>  </a>--%>
			<%--</li>--%>
			<%--<li class="list-group-item">--%>
			<%--<span class="pull-left chk">--%>
			<%--<input type="checkbox"/>--%>
			<%--</span>--%>
			<%--<a class="thumb pull-left" href="#"> <img src="images/avatar-mini.jpg"> </a>--%>
			<%--<a class="" href="mail_view.html"> <small class="pull-right text-muted">10 May</small> <strong>Jane Doe</strong> <span>Phasellus sodales vulputate urna, vel accumsan augue egestas ac  </span>  </a>--%>
			<%--</li>--%>
			<%--<li class="list-group-item">--%>
			<%--<span class="pull-left chk">--%>
			<%--<input type="checkbox"/>--%>
			<%--</span>--%>
			<%--<a class="thumb pull-left" href="#"> <img src="images/avatar-mini.jpg"> </a>--%>
			<%--<a class="" href="mail_view.html"> <small class="pull-right text-muted">3 June</small> <strong>Jonathan Smith</strong>  <span>Porttitor eu consequat risus. </span> <span class="label label-sm btn-warning">error</span> </a>--%>
			<%--</li>--%>
			<%--<li class="list-group-item">--%>
			<%--<span class="pull-left chk">--%>
			<%--<input type="checkbox"/>--%>
			<%--</span>--%>
			<%--<a class="thumb pull-left" href="#"> <img src="images/avatar-mini.jpg"> </a>--%>
			<%--<a class="" href="mail_view.html"> <small class="pull-right text-muted">15 April</small> <strong>John Doe</strong>  <span>Donec ultrices faucibus rutrum. Phasellus sodales </span> <span class="label label-sm btn-success">normal</span> </a>--%>
			<%--</li>--%>
			<%--<li class="list-group-item">--%>
			<%--<span class="pull-left chk">--%>
			<%--<input type="checkbox"/>--%>
			<%--</span>--%>
			<%--<a class="thumb pull-left" href="#"> <img src="images/avatar-mini.jpg"> </a>--%>
			<%--<a class="" href="mail_view.html"> <small class="pull-right text-muted">10 May</small> <strong>Jane Doe</strong> <span>Phasellus sodales vulputate urna, vel accumsan augue egestas ac  </span> <span class="label label-sm btn-danger">urgent</span> </a>--%>
			<%--</li>--%>
			<%--<li class="list-group-item">--%>
			<%--<span class="pull-left chk">--%>
			<%--<input type="checkbox"/>--%>
			<%--</span>--%>
			<%--<a class="thumb pull-left" href="#"> <img src="images/avatar-mini.jpg"> </a>--%>
			<%--<a class="" href="mail_view.html"> <small class="pull-right text-muted">3 June</small> <strong>Jonathan Smith</strong>  <span>Porttitor eu consequat risus. </span> <span class="label label-sm btn-warning">error</span> </a>--%>
			<%--</li>--%>
			<%--</ul>--%>
		</section>


	</section>
</div>
<%--<!--body wrapper start-->--%>
<%--<div style="margin:50px ;width:2000px" >--%>

<%--<ul class="layui-nav" lay-filter="">--%>
<%--<li class="layui-nav-item"><a href="">收件箱</a></li>--%>
<%--<li class="layui-nav-item"><a href="">发件箱</a></li>--%>
<%--<li class="layui-nav-item"><a href="">草稿箱</a></li>--%>
<%--<li class="layui-nav-item"><a href="">垃圾箱</a></li>--%>
<%--<li class="layui-nav-item"><a href="">回收站</a></li>--%>

<%--</ul>--%>
<%--</div>--%>
<%--<div >--%>
<%--<iframe src="../main.jsp" id="myiframe" frameborder="1" style="width: 1500px; height:1500px;" ></iframe>--%>
<%--</div>--%>

<%--<script>--%>
<%--//注意：导航 依赖 element 模块，否则无法进行功能性操作--%>
<%--layui.use('element', function(){--%>
<%--var element = layui.element;--%>

<%--//…--%>
<%--});--%>
<%--</script>--%>
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
