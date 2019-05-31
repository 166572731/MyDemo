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
    <link rel="shortcut icon" href="#" type="image/png">
    <title>OA办公自动化系统</title>
    <link href="js/info/layx.min.css" rel="stylesheet">
    <link href="js/time/time.css" rel="stylesheet">
    <!--common-->
    <link href="layui/css/layui.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet">
<body style="background: #eff0f4;">
<!--body wrapper start-->
<div class="row">
    <div class="col-md-6">
        <!--more statistics box start-->
        <div class="panel">
            <div class="panel-body" style="background-color: #00A55B;">
                <div class="row">
                    <div class="col-md-6 col-xs-5 col-sm-5">
                        <div class="box" id="clock">
                            <!-- 原点 -->
                            <div class="origin"></div>
                            <!-- 时钟数 -->
                            <div class="dot_box">
                                <div class="dot dotcolor">6</div>
                                <div class="dot">5</div>
                                <div class="dot">4</div>
                                <div class="dot dotcolor">3</div>
                                <div class="dot">2</div>
                                <div class="dot">1</div>
                                <div class="dot dotcolor">12</div>
                                <div class="dot">11</div>
                                <div class="dot">10</div>
                                <div class="dot dotcolor">9</div>
                                <div class="dot">8</div>
                                <div class="dot">7</div>
                            </div>
                            <!-- 时、分、秒针 -->
                            <div class="clock_line hour_line" id="hour_line"></div>
                            <div class="clock_line minute_line" id="minute_line"></div>
                            <div class="clock_line second_line" id="second_line"></div>
                            <!-- 时间 -->
                            <div class="time_info">
                                <div class="time" id="hour_time"></div>
                                <div class="time" id="minute_time"></div>
                                <div class="time" id="second_time"></div>
                            </div>
                        </div>
                    </div>
                    <!-- 日期 -->
                    <div class="col-md-6 col-xs-7 col-sm-7">
                        <div>
                            <div class="date_info" id="date_info"></div>
                            <i class="fa fa-clock-o"
                               style="font-size: 130px; color: rgba(255, 255, 255, 0.1); float: right;"></i>
                            <div style="font-size: 18px; margin: 55px 20px;"
                                 class="text-left">
                                <a href="javascript:;"> 查看详情 <i
                                        class="fa fa-arrow-circle-right"></i></a>
                            </div>
                            <button type="button"
                                    class="btn btn-success btn-block btn-lg">
                                <b>一 键 打 卡 </b><i class="fa fa-pagelines"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--more statistics box end-->
    </div>
    <div class="col-md-6">
        <!--statistics start-->
        <div class="row state-overview">
            <div class="col-md-6 col-xs-12 col-sm-6">
                <div class="panel purple">
                    <div class="symbol">
                        <i class="fa fa-gavel"></i>
                    </div>
                    <div class="state-value">
                        <div class="value">230</div>
                        <div class="title">待办任务</div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xs-12 col-sm-6">
                <div class="panel red">
                    <div class="symbol">
                        <i class="fa fa-tags"></i>
                    </div>
                    <div class="state-value">
                        <div class="value">3490</div>
                        <div class="title">我的便签</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row state-overview">
            <div class="col-md-6 col-xs-12 col-sm-6">
                <div class="panel blue">
                    <div class="symbol">
                        <i class="fa fa-money"></i>
                    </div>
                    <div class="state-value">
                        <div class="value">2001</div>
                        <div class="title">通讯录</div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xs-12 col-sm-6">
                <div class="panel green">
                    <div class="symbol">
                        <i class="fa fa-eye"></i>
                    </div>
                    <div class="state-value">
                        <div class="value">日程提醒</div>
                        <div class="title">Schedule Reminder</div>
                    </div>
                </div>
            </div>
        </div>
        <!--statistics end-->
    </div>

</div>
<div class="row">
    <!-- 公告通知栏 -->
    <div class="col-md-7">
        <div class="panel">
            <header class="panel-heading">
                公告通知 <span class="tools pull-right"> <a
                    class="fa fa-chevron-down" href="javascript:;"></a> <a
                    class="fa fa-times" href="javascript:;"></a>
								</span>
            </header>
            <div class="panel-body	">
                <table class="table table-hover">
                    <tr>
                        <th style="width: 80px">发布</th>
                        <th style="width: 100px">日期</th>
                        <th style="width: 80px">状态</th>
                        <th>标题</th>
                        <th style="width: 50px;"></th>
                    </tr>
                    <tr>
                        <td>总公司</td>
                        <td>2019-03-09</td>
                        <td><span
                                style="font-size: 9pt; color: #fff; padding: 2px 4px; border-radius: 3px; background-color: #00C0EF">一般</span>
                        </td>
                        <td title="请到我的工作查看">有1个工作审批已通过</td>
                        <td><a
                                href="../Notice/View.aspx?id=XiRAJSMhKiY3&active=34,37"><span
                                class="btn btn-default"
                                style="padding: 2px 5px; font-size: 9pt;"><i
                                class="fa fa-search"></i> 查看</span></a></td>
                    </tr>
                    <tr>
                        <td>总公司</td>
                        <td>2019-03-09</td>
                        <td><span
                                style="font-size: 9pt; color: #fff; padding: 2px 4px; border-radius: 3px; background-color: #DD4B39">紧急</span>
                        </td>
                        <td title="请到我的审批查看">有1个工作需要您审批</td>
                        <td><a
                                href="../Notice/View.aspx?id=XiRAJSMhKiY2&active=34,37"><span
                                class="btn btn-default"
                                style="padding: 2px 5px; font-size: 9pt;"><i
                                class="fa fa-search"></i> 查看</span></a></td>
                    </tr>
                    <tr>
                        <td>总公司</td>
                        <td>2015-10-23</td>
                        <td><span
                                style="font-size: 9pt; color: #fff; padding: 2px 4px; border-radius: 3px; background-color: #DD4B39">紧急</span>
                        </td>
                        <td title="请各部门同事务必9点到会议室开会，不得迟到！">周一上午全体员工会议 <a
                                href="../Files.aspx?file=XiRAJSMhKiZEb2N1bWVudC8xLzIwMTYwNTI1MTQwNzE2NDM1NjU1OTgucGRm"
                                target="_blank"><i class="fa fa-paperclip"></i></a></td>
                        <td><a
                                href="../Notice/View.aspx?id=XiRAJSMhKiYz&active=34,37"><span
                                class="btn btn-default"
                                style="padding: 2px 5px; font-size: 9pt;"><i
                                class="fa fa-search"></i> 查看</span></a></td>
                    </tr>
                    <tr>
                        <td>总公司</td>
                        <td>2015-10-22</td>
                        <td><span
                                style="font-size: 9pt; color: #fff; padding: 2px 4px; border-radius: 3px; background-color: #00C0EF">一般</span>
                        </td>
                        <td title="请各部门做好节前卫生工作，祝大家元旦快乐">元旦放假3天</td>
                        <td><a
                                href="../Notice/View.aspx?id=XiRAJSMhKiYy&active=34,37"><span
                                class="btn btn-default"
                                style="padding: 2px 5px; font-size: 9pt;"><i
                                class="fa fa-search"></i> 查看</span></a></td>
                    </tr>
                    <tr>
                        <td>总公司</td>
                        <td>2015-10-21</td>
                        <td><span
                                style="font-size: 9pt; color: #fff; padding: 2px 4px; border-radius: 3px; background-color: #F39C12">重要</span>
                        </td>
                        <td title="请各部门经理做好年终总结报告，以便在年会上发表">关于年度总结报告</td>
                        <td><a
                                href="../Notice/View.aspx?id=XiRAJSMhKiYx&active=34,37"><span
                                class="btn btn-default"
                                style="padding: 2px 5px; font-size: 9pt;"><i
                                class="fa fa-search"></i> 查看</span></a></td>
                    </tr>
                    <tr>
                        <td>总公司</td>
                        <td>2015-10-21</td>
                        <td><span
                                style="font-size: 9pt; color: #fff; padding: 2px 4px; border-radius: 3px; background-color: #F39C12">重要</span>
                        </td>
                        <td title="请各部门经理做好年终总结报告，以便在年会上发表">关于年度总结报告</td>
                        <td><a
                                href="../Notice/View.aspx?id=XiRAJSMhKiYx&active=34,37"><span
                                class="btn btn-default"
                                style="padding: 2px 5px; font-size: 9pt;"><i
                                class="fa fa-search"></i> 查看</span></a></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

    <!-- 日程栏 -->
    <div class="col-md-5">
        <div class="panel">
            <header class="panel-heading">
                工作日历 <span class="tools pull-right"> <a
                    class="fa fa-chevron-down" href="javascript:;"></a> <a
                    class="fa fa-times" href="javascript:;"></a>
								</span>
            </header>
            <div class="panel-body">
                <div id="test2" class="layui-inline"></div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <!-- 我的便签栏 -->
    <div class="col-md-5">
        <div class="panel">
            <header class="panel-heading">
                我的便签 <span class="tools pull-right"> <a
                    class="fa fa-chevron-down" href="javascript:;"></a> <a
                    class="fa fa-times" href="javascript:;"></a>
								</span>
            </header>
            <div class="panel-body">
                <ul class="to-do-list" id="sortable-todo">
                    <li class="clearfix"><span class="drag-marker"> <i></i>
									</span>
                        <div class="todo-check pull-left">
                            <input type="checkbox" value="None" id="todo-check"/> <label
                                for="todo-check"></label>
                        </div>
                        <p class="todo-title">Dashboard Design & Wiget placement</p>
                        <div class="todo-actionlist pull-right clearfix">

                            <a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
                        </div>
                    </li>
                    <li class="clearfix"><span class="drag-marker"> <i></i>
									</span>
                        <div class="todo-check pull-left">
                            <input type="checkbox" value="None" id="todo-check1"/> <label
                                for="todo-check1"></label>
                        </div>
                        <p class="todo-title">Wireframe prepare for new design</p>
                        <div class="todo-actionlist pull-right clearfix">

                            <a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
                        </div>
                    </li>
                    <li class="clearfix"><span class="drag-marker"> <i></i>
									</span>
                        <div class="todo-check pull-left">
                            <input type="checkbox" value="None" id="todo-check2"/> <label
                                for="todo-check2"></label>
                        </div>
                        <p class="todo-title">UI perfection testing for Mega
                            Section</p>
                        <div class="todo-actionlist pull-right clearfix">

                            <a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
                        </div>
                    </li>
                    <li class="clearfix"><span class="drag-marker"> <i></i>
									</span>
                        <div class="todo-check pull-left">
                            <input type="checkbox" value="None" id="todo-check2"/> <label
                                for="todo-check2"></label>
                        </div>
                        <p class="todo-title">UI perfection testing for Mega
                            Section</p>
                        <div class="todo-actionlist pull-right clearfix">

                            <a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
                        </div>
                    </li>
                    <li class="clearfix"><span class="drag-marker"> <i></i>
									</span>
                        <div class="todo-check pull-left">
                            <input type="checkbox" value="None" id="todo-check3"/> <label
                                for="todo-check3"></label>
                        </div>
                        <p class="todo-title">Wiget & Design placement</p>
                        <div class="todo-actionlist pull-right clearfix">

                            <a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
                        </div>
                    </li>

                    <li class="clearfix"><span class="drag-marker"> <i></i>
									</span>
                        <div class="todo-check pull-left">
                            <input type="checkbox" value="None" id="todo-check4"/> <label
                                for="todo-check4"></label>
                        </div>
                        <p class="todo-title">Development & Wiget placement</p>
                        <div class="todo-actionlist pull-right clearfix">

                            <a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
                        </div>
                    </li>

                </ul>
                <div class="row">
                    <div class="col-md-12">
                        <form role="form" class="form-inline">
                            <div class="form-group todo-entry">
                                <input type="text" placeholder="Enter your ToDo List"
                                       class="form-control" style="width: 100%">
                            </div>
                            <button class="btn btn-primary pull-right" type="submit">+</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 财务收支栏 -->
    <div class="col-md-7">
        <div class="panel">
            <div class="panel-body">
                <div class="row revenue-states">
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <h4>财务收支公示一览</h4>
                        <div class="icheck">
                            <div class="square-red single-row" style="margin-left: 20px;">
                                <div class="checkbox ">
                                    <input type="checkbox" checked> <label>Online</label>
                                </div>
                            </div>
                            <div class="square-blue single-row">
                                <div class="checkbox ">
                                    <input type="checkbox"> <label>Offline </label>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <ul class="revenue-nav">
                            <li><a href="#">weekly</a></li>
                            <li><a href="#">monthly</a></li>
                            <li class="active"><a href="#">yearly</a></li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="clearfix">
                            <div id="main-chart-legend" class="pull-right"></div>
                        </div>

                        <div id="main-chart">
                            <div id="main-chart-container" class="main-chart"></div>
                        </div>
                        <ul class="revenue-short-info">
                            <li>
                                <h1 class="red">15%</h1>
                                <p>Server Load</p>
                            </li>
                            <li>
                                <h1 class="purple">30%</h1>
                                <p>Disk Space</p>
                            </li>
                            <li>
                                <h1 class="green">84%</h1>
                                <p>Transferred</p>
                            </li>
                            <li>
                                <h1 class="blue">28%</h1>
                                <p>Temperature</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="panel">
            <div class="panel-body" style="height: 65px;">
                <div class="media usr-info">
                    <a href="#" class="pull-left"> <img class="thumb"
                                                        src="images/head/user2.png" alt=""/>
                    </a>
                    <div class="media-body row text-center" style="margin-top: 25px;">
                        <h4 class="media-heading col-md-4"><i class="fa fa-user"> </i><a>用户名</a></h4>
                        <p class="col-md-4"><i class="fa fa-heart"> </i><a>简介</a></p>
                        <span class="col-md-4"><i class="fa fa-shield"> </i><a>职位</a></span>
                    </div>
                </div>
            </div>
            <div class="panel-footer custom-trq-footer" style="height: 50px;">
                <ul class="user-states">
                    <li>
                        <hr class="layui-bg-orange" style="margin-top: -6px;">
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--body wrapper end-->
<!-- 将js放在文档的末尾，以便页面加载速度更快。 -->
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="js/jquery-migrate-1.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/modernizr.min.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<script src="layui/layui.js"></script>
<!--所有页面的通用脚本-->
<script src="js/scripts.js"></script>
<!-- 时钟 -->
<script type="text/javascript" src="js/time/time.js"></script>
<%-- main页面js --%>
<script src="js/myjs/main.js"></script>
<script type="text/javascript">
    //顯示用戶信息
    window.setTimeout(function () {
        var loginMan = JSON.parse(sessionStorage.getItem("loginMan"));
        $(".thumb").attr("src", "images/head/" + loginMan.ImagePath1);
        $(".media-body h4 a").text(' 用戶名：' + loginMan.userName);
        $(".media-body span a").text(' 部门：' + loginMan.DepartmentName + ' / ' + loginMan.roleName);
        $(".media-body p a").text(' 用户编号：' + loginMan.Number);
    }, 1000);
</script>
</body>
</html>
