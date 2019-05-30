<%@ page import="org.apache.shiro.session.Session" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="keywords"
          content="admin, dashboard, bootstrap, template, flat, modern, theme, responsive, fluid, retina, backend, html5, css, css3">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="#" type="image/png">
    <title>OA办公自动化系统</title>
    <link href="js/info/layx.min.css" rel="stylesheet">
    <link href="js/time/time.css" rel="stylesheet">
    <!--common-->
    <link href="layui/css/layui.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet">
</head>

<body class="sticky-header">
<section>
    <!-- left side start-->
    <div class="left-side sticky-left-side">

        <!--logo and iconic logo start-->
        <div class="logo">
            <a href="index.jsp"><img src="images/logo.png" alt=""></a>
        </div>

        <div class="logo-icon text-center">
            <a href="index.jsp"><img src="images/logo_icon.png" alt=""></a>
        </div>
        <!--logo and iconic logo end-->

        <div class="left-side-inner">

            <!-- 顶部导航(移动端) -->
            <div class="visible-xs hidden-sm hidden-md hidden-lg">
                <div class="media logged-user">
                    <img alt="" src="images/head/user-avatar.png"
                         class="media-object headimg"/>
                    <div class="media-body">
                        <h4>
                            <a href="#" class="loginname"></a>
                        </h4>
                        <span>"我就是我，不一样的烟火..."</span>
                    </div>
                </div>

                <h5 class="left-nav-title">用户信息</h5>
                <ul class="nav nav-pills nav-stacked custom-nav">
                    <li><a href="#"><i class="fa fa-user"></i> <span>个人资料</span></a></li>
                    <li><a href="#"><i class="fa fa-cog"></i> <span>系统设置</span></a></li>
                    <li><a href="login.jsp"><i class="fa fa-sign-out"></i> <span>退出</span></a></li>
                </ul>
            </div>

            <!--左侧导航-->
            <ul class="nav nav-pills nav-stacked custom-nav">
                <li class="active"><a href="index.jsp"><i
                        class="fa fa-home"></i> <span>首页</span></a></li>
            </ul>
            <!--sidebar nav end-->

        </div>
    </div>
    <!-- left side end-->

    <!-- main content start-->
    <div class="main-content">

        <!-- header section start-->
        <div class="header-section">

            <!--toggle button start-->
            <a class="toggle-btn"><i class="fa fa-bars"></i></a>

            <!--search start-->
            <form class="searchform" action="index.jsp" method="post">
                <input type="text" class="form-control" name="keyword"
                       placeholder="点击这里搜索 ..."/>
            </form>

            <!--notification menu start -->
            <div class="menu-right">
                <ul class="notification-menu">
                    <%-- 聊天室 --%>
                    <li><a href="#" class="btn info-number dropdown-toggle webchat"> <i
                            class="fa fa-comment"></i> <span class="badge">4</span>
                    </a></li>
                    <!-- 顶部代办任务 -->
                    <li><a href="#"
                           class="btn btn-default dropdown-toggle info-number"
                           data-toggle="dropdown"> <i class="fa fa-tasks"></i> <span
                            class="badge">8</span>
                    </a>
                        <div class="dropdown-menu dropdown-menu-head pull-right">
                            <h5 class="title">您有8个待办任务</h5>
                            <ul class="dropdown-list user-list">
                                <li class="new"><a href="#">
                                    <div class="task-info">
                                        <div>Database update</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div style="width: 40%" aria-valuemax="100"
                                             aria-valuemin="0" aria-valuenow="40" role="progressbar"
                                             class="progress-bar progress-bar-warning">
                                            <span class="">40%</span>
                                        </div>
                                    </div>
                                </a></li>
                                <li class="new"><a href="#">
                                    <div class="task-info">
                                        <div>Dashboard done</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div style="width: 90%" aria-valuemax="100"
                                             aria-valuemin="0" aria-valuenow="90" role="progressbar"
                                             class="progress-bar progress-bar-success">
                                            <span class="">90%</span>
                                        </div>
                                    </div>
                                </a></li>
                                <li class="new"><a href="">查看所有任务</a></li>
                            </ul>
                        </div>
                    </li>
                    <!-- 顶部邮件信息 -->
                    <li><a href="#"
                           class="btn btn-default dropdown-toggle info-number"
                           data-toggle="dropdown"> <i class="fa fa-envelope-o"></i> <span
                            class="badge">5</span>
                    </a>
                        <div class="dropdown-menu dropdown-menu-head pull-right">
                            <h5 class="title">你有5个新邮件</h5>
                            <ul class="dropdown-list normal-list">
                                <li class="new"><a href=""> <span class="thumb"><img
                                        src="images/head/user1.png" alt=""/></span> <span class="desc">
												<span class="name">John Doe <span
                                                        class="badge badge-success">new</span></span> <span class="msg">Lorem
													ipsum dolor sit amet...</span>
										</span>
                                </a></li>
                                <li><a href=""> <span class="thumb"><img
                                        src="images/head/user2.png" alt=""/></span> <span class="desc">
												<span class="name">Jonathan Smith</span> <span class="msg">Lorem
													ipsum dolor sit amet...</span>
										</span>
                                </a></li>
                                <li><a href=""> <span class="thumb"><img
                                        src="images/head/user3.png" alt=""/></span> <span class="desc">
												<span class="name">Jane Doe</span> <span class="msg">Lorem
													ipsum dolor sit amet...</span>
										</span>
                                </a></li>
                                <li class="new"><a href="mail.jsp">查看所有</a></li>
                            </ul>
                        </div>
                    </li>
                    <!-- 顶部信息通知 -->
                    <li><a href="#"
                           class="btn btn-default dropdown-toggle info-number"
                           data-toggle="dropdown"> <i class="fa fa-bell-o"></i> <span
                            class="badge">4</span>
                    </a>
                        <div class="dropdown-menu dropdown-menu-head pull-right">
                            <h5 class="title">通知</h5>
                            <ul class="dropdown-list normal-list">
                                <li class="new"><a href=""> <span
                                        class="label label-danger"><i class="fa fa-bolt"></i></span>
                                    <span class="name">Server #1 overloaded. </span> <em
                                            class="small">34 mins</em>
                                </a></li>
                                <li class="new"><a href=""> <span
                                        class="label label-danger"><i class="fa fa-bolt"></i></span>
                                    <span class="name">Server #3 overloaded. </span> <em
                                            class="small">1 hrs</em>
                                </a></li>
                                <li class="new"><a href=""> <span
                                        class="label label-danger"><i class="fa fa-bolt"></i></span>
                                    <span class="name">Server #5 overloaded. </span> <em
                                            class="small">4 hrs</em>
                                </a></li>
                                <li class="new"><a href=""> <span
                                        class="label label-danger"><i class="fa fa-bolt"></i></span>
                                    <span class="name">Server #31 overloaded. </span> <em
                                            class="small">4 hrs</em>
                                </a></li>
                                <li class="new"><a href="">查看所有</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="#" class="btn btn-default dropdown-toggle"
                           data-toggle="dropdown"> <img
                            src="images/head/user-avatar.png" alt="" class="headimg"/><span class="loginname"></span><span
                            class="caret"></span>
                    </a>
                        <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                            <li><a href="#"><i class="fa fa-user"></i> 个人资料</a></li>
                            <li><a href="#"><i class="fa fa-cog"></i> 系统设置</a></li>
                            <li><a href="#" id="exit"><i class="fa fa-sign-out"></i>
                                退出</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>

        <!-- page heading start-->
        <div class="page-heading">
            <h3 class="pull-right" style="margin-top: -5px;">首页</h3>
            <ul class="breadcrumb">
                <li><a href="index.jsp"><i class="fa fa-home"> </i> 首页</a></li>
                <li class="active">桌面</li>
            </ul>
        </div>
        <!--body wrapper start-->
        <div class="wrapper">
            <iframe src="main.jsp" id="frame" frameborder="0" style="width: 100%; height:75%;"></iframe>
        </div>
        <!--footer section start-->
        <footer class="sticky-footer text-center">
            <span  style="margin-left: -200px;"> 2019 &copy;AdminEx by 酷酷的磊哥哥，哈哈哈！</span>
        </footer>
    </div>
</section>
<!-- 将js放在文档的末尾，以便页面加载速度更快。 -->
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="js/jquery-migrate-1.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/modernizr.min.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<script src="layui/layui.js"></script>
<script src="http://cdn.jsdelivr.net/sockjs/1/sockjs.min.js"></script>
<%--<script type="text/javascript" src="js/webchat/wechat.js"></script>--%>
<script src="js/myjs/index.js"></script>

<!-- 信息提示框 -->
<script type="text/javascript" src="js/info/layx.min.js"></script>
</body>
</html>
