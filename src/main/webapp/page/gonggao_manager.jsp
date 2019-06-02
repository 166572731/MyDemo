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
<c:if test="${list==null}">
    <jsp:forward page="/findAll.do"/>
</c:if>
<!--body wrapper start-->
<div>
    <!-- 内容 -->
    <div>


        <div class="content-wrapper">



            <section class="content">

                <div class="row">
                    <div class="col-xs-12">
                        <div class="box">
                            <div class="box-header">
                                <h3 class="box-title">
                                    <a id="ctl00_cphMain_hlAdd" href="${pageContext.request.contextPath}/page/gonggao_add.jsp"><span class="label label-success"><i class="fa fa-plus"></i> 新增</span></a>
                                </h3>
                                <%--<div class="box-tools">--%>
                                    <%--<div class="input-group" style="width: 150px;">--%>
                                        <%--<input name="ctl00$cphMain$txtKeyword" type="text" id="ctl00_cphMain_txtKeyword" class="form-control input-sm pull-right" placeholder="查找..." />--%>
                                        <%--<div class="input-group-btn">--%>
                                            <%--<a id="ctl00_cphMain_lnbSearch" class="btn btn-sm btn-default" href="javascript:__doPostBack(&#39;ctl00$cphMain$lnbSearch&#39;,&#39;&#39;)"><i class="fa fa-search"></i></a>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            </div>
                            <div class="box-body table-responsive no-padding">

                                <div>
                                    <table class="table table-hover" cellspacing="0" border="0" id="ctl00_cphMain_GridView1" style="border-width:0px;border-collapse:collapse;">

                                        <tr>
                                            <th class="sort" scope="col"><a href="javascript:__doPostBack(&#39;ctl00$cphMain$GridView1&#39;,&#39;Sort$pk_Notice&#39;)">ID</a><span><i class="layui-icon" >&#xe625;</i></span></th><th scope="col"><a href="javascript:__doPostBack(&#39;ctl00$cphMain$GridView1&#39;,&#39;Sort$TypeID&#39;)">类型</a></th><th scope="col">标题</th><th scope="col">发布时间</th><th scope="col">发布人</th><th scope="col">部门</th><th scope="col"><a href="javascript:__doPostBack(&#39;ctl00$cphMain$GridView1&#39;,&#39;Sort$StatusID&#39;)">状态</a></th><th scope="col">操作</th>
                                        </tr>
                                        <c:forEach items="${list}" var="n">
                                            <tr>

                                                <td class="id">
                                                    <span id="ctl00_cphMain_GridView1_ctl02_lblID">${n.pk_Notice}</span>
                                                </td><td>
                                                <c:if test="${n.typeId==1}">
                                                    <span id="ctl00_cphMain_GridView1_ctl02_lblType">公告</span>
                                                </c:if>
                                                <c:if test="${n.typeId==2}">
                                                    <span id="ctl00_cphMain_GridView1_ctl02_lblType">通知</span>
                                                </c:if>

                                            </td><td>
                                                <span id="ctl00_cphMain_GridView1_ctl02_lblTitle">${n.title}</span>
                                            </td><td>
                                                <span id="ctl00_cphMain_GridView1_ctl02_lblCreateDate">${n.startDate}</span>
                                            </td><td>

                                                <span id="ctl00_cphMain_GridView1_ctl02_lblCreateUser">${loginMan.userName}</span>
                                            </td><td>
                                                <span id="ctl00_cphMain_GridView1_ctl02_lblDepartmentName">
                                                    <c:if test="${n.fk_Department==1000}">
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
                                                </span>
                                            </td><td>
                                                <span id="ctl00_cphMain_GridView1_ctl02_lblStatus">
                                                    <c:if test="${n.statusId==1}">
                                                        <span style="font-size:9pt; color:#fff; padding:2px 4px; border-radius:3px; background-color:#00C0EF">一般</span>
                                                    </c:if>
                                                    <c:if test="${n.statusId==2}">
                                                        <span style="font-size:9pt; color:#fff; padding:2px 4px; border-radius:3px; background-color:#F39C12">重要</span>
                                                    </c:if>
                                                    <c:if test="${n.statusId==3}">
                                                        <span style="font-size:9pt; color:#fff; padding:2px 4px; border-radius:3px; background-color:#DD4B39">紧急</span>
                                                    </c:if>
                                                    </span>
                                            </td>
                                                <%--<td class="mailbox-attachment">--%>
                                                <%--<span id="ctl00_cphMain_GridView1_ctl02_lblAttachment"></span>--%>
                                            <%--</td>--%>
                                                <%--<td>--%>
                                                <%--<span disabled="disabled"><input id="ctl00_cphMain_GridView1_ctl02_cbTop" type="checkbox" name="ctl00$cphMain$GridView1$ctl02$cbTop" disabled="disabled" /></span>--%>
                                            <%--</td>--%>
                                                <td>
                                                <%--<a id="ctl00_cphMain_GridView1_ctl02_gvEdit" title="修改" href="Edit.aspx?id=XiRAJSMhKiY3&amp;active=34,35"><span class="label label-primary"><i class="fa fa-edit"></i> 修改</span></a>--%>
                                                <a onclick="{return confirm(&#39;删除该记录将不能恢复，确定删除吗？&#39;);};" id="ctl00_cphMain_GridView1_ctl02_gvDelete" title="删除" href="../delById/${n.pk_Notice}.do"><span class="label label-danger"><i class="fa fa-remove"></i> 删除</span></a>
                                            </td>
                                            </tr>


                                        </c:forEach>

                                    </table>
                                </div>



                                    <!-- AspNetPager 7.3.2  Copyright:2003-2010 Webdiyer (www.webdiyer.com) -->
                                    <%--<div id="ctl00_cphMain_ListPager" class="Pager">--%>
                                        <%--<div class="CustomInfo" style="width:40%;float:left;">--%>
                                            <%--<div class='cleft'>共<span>5</span>条 | 每页<span>20</span>条 | 共<span>1</span>页</div>--%>
                                        <%--</div><div class="Pager" style="width:60%;float:left;">--%>
                                        <%--<a disabled="disabled" style="margin-right:5px;"><span class=btnLink title='首页'><img src='/Images/first.gif' /></span></a><a disabled="disabled" style="margin-right:5px;"><span class=btnLink title='上一页'><img src='/Images/prev.gif' /></span></a><span class="CurrentPage" style="margin-right:5px;"><span class=Pager>1</span></span><a disabled="disabled" style="margin-right:5px;"><span class=btnLink title='下一页'><img src='/Images/next.gif' /></span></a><a disabled="disabled" style="margin-right:5px;"><span class=btnLink title='尾页'><img src='/Images/last.gif' /></span></a>--%>
                                    <%--</div>--%>
                                    <%--</div>--%>
                                    <!-- AspNetPager 7.3.2  Copyright:2003-2010 Webdiyer (www.webdiyer.com) -->
                                    <div id="test1"></div>



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
<script>
    layui.use('laypage', function(){
        var laypage = layui.laypage;

        //执行一个laypage实例
        laypage.render({
            elem: 'test1' //注意，这里的 test1 是 ID，不用加 # 号
            ,count: 50 //数据总数，从服务端得到
        });
    });
</script>
<!--所有页面的通用脚本-->
<script src="../js/scripts.js"></script>
<script type="text/javascript">
    layui.use(['layer'], function () {
        var layer = layui.layer;
    });
</script>
</body>
</html>
