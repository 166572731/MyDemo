<%@ page import="org.springframework.web.context.request.SessionScope" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ChenLei
  Date: 2019/5/15
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
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
<div>
    <form name="aspnetForm" method="post" action="./Receiver.aspx" id="aspnetForm">
        <div>
            <input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
            <input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
            <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPaA8FDzhkNmUxNzkwNDhlNGRiNhgCBR5fX0NvbnRyb2xzUmVxdWlyZVBvc3RCYWNrS2V5X18WBQUoY3RsMDAkY3BoU2ltcGxlJEdyaWRWaWV3MSRjdGwwMiRjYlNlbGVjdAUoY3RsMDAkY3BoU2ltcGxlJEdyaWRWaWV3MSRjdGwwMyRjYlNlbGVjdAUoY3RsMDAkY3BoU2ltcGxlJEdyaWRWaWV3MSRjdGwwNCRjYlNlbGVjdAUoY3RsMDAkY3BoU2ltcGxlJEdyaWRWaWV3MSRjdGwwNSRjYlNlbGVjdAUoY3RsMDAkY3BoU2ltcGxlJEdyaWRWaWV3MSRjdGwwNiRjYlNlbGVjdAUZY3RsMDAkY3BoU2ltcGxlJEdyaWRWaWV3MQ88KwAMAQgCAWQLtc9J/YnIWzZxfrK2TLxV2+MAtvv+iNR4CSIoOe6nOQ==" />
        </div>

        <script type="text/javascript">

            //<![CDATA[
            var theForm = document.forms['aspnetForm'];
            if (!theForm) {
                theForm = document.aspnetForm;
            }
            function __doPostBack(eventTarget, eventArgument) {
                if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
                    theForm.__EVENTTARGET.value = eventTarget;
                    theForm.__EVENTARGUMENT.value = eventArgument;
                    theForm.submit();
                }
            }
            //]]>
        </script>


        <div>

            <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="DD478B30" />
            <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAA5EOOkQg3yhFAxMkRiCrmHxwt3WpwHc557BHsZTG9P86w09riXFVsfabSDgecMJHumXIis50g1VBa1i3MF7EuIwG5CXYm6I+Kgu8UX4h0W6LQ7GiO310lw04L5X5yrD4IhbvRRsspvvCjYEtKSHXwJpPSrU4IYS+exXiKDcFquzpbohICUNISkQXLnV/oQfl15ykK5O6j/wrbU7SbEOwNzUcKtuzoIMRGp52NuKj6dmwV9NTH2iwLdxqtAuK2dbvu8UUSYyG/r29kJ18ItZISTuXdl8aFHRvtQY2d6ZmxscVFgKG1LpQkPL3m/HsIQqWVL0xIcR7ccoJmK1l/KY2YVy" />
        </div>
        <div>


            <div class="content-wrapper-simple">

                <section class="content">

                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">
                                        <a id="xz1" ><span class="label label-success" id="xz"><i class="fa fa-plus"></i> 新增接收人</span></a>
                                        <a id="ctl00_cphSimple_lnbAddTo"><span class="label label-success" id="zj" ><i class="fa fa-plus"></i> 追加接收人</span></a>
                                    </h3>

                                </div>
                                <div class="box-body table-responsive no-padding">

                                    <div>
                                        <table class="table table-hover" cellspacing="0" border="0" id="ctl00_cphSimple_GridView1" style="border-width:0px;border-collapse:collapse;">
                                            <tr>
                                                <th scope="col">选择</th><th scope="col">部门</th><th scope="col"><a href="javascript:__doPostBack(&#39;ctl00$cphSimple$GridView1&#39;,&#39;Sort$FullName&#39;)">真实姓名</a></th><th scope="col"><a href="javascript:__doPostBack(&#39;ctl00$cphSimple$GridView1&#39;,&#39;Sort$UserName&#39;)">用户名</a></th><th scope="col"><a href="javascript:__doPostBack(&#39;ctl00$cphSimple$GridView1&#39;,&#39;Sort$RoleName_CHS&#39;)">角色</a></th><th scope="col">电话</th>
                                            </tr>
                                            <C:forEach items="${sessionScope.user}" var="m">
                                            <tr>

                                            <td>
                                                <input class="select" type="checkbox" name="ctl00$cphSimple$GridView1$ctl02$cbSelect" />
                                            </td>
                                            <c:if test="${m.fk_Department==1000}">
                                                 <td>总经办</td>
                                            </c:if>
                                            <c:if test="${m.fk_Department==1001}">
                                                <td>财务部</td>
                                            </c:if>
                                            <c:if test="${m.fk_Department==1002}">
                                                <td>行政部</td>
                                            </c:if>
                                            <c:if test="${u.fk_Department==1003}">
                                                <td>人力资源</td>
                                            </c:if>
                                            <c:if test="${u.fk_Department==1004}">
                                                <td>销售部</td>
                                            </c:if>
                                            <c:if test="${u.fk_Department==1005}">
                                                <td>市场部</td>
                                            </c:if>
                                            <c:if test="${u.fk_Department==1006}">
                                                <td>营销部</td>
                                            </c:if>

                                            <td>${m.FullName}</td>
                                            <td class="username">${m.userName}</td>
                                                <C:if test="${m.Position==1}">
                                                    <td>员工</td>
                                                </C:if>
                                                <C:if test="${m.Position==2}">
                                                    <td>经理</td>
                                                </C:if>
                                                <td>${m.Phone}</td>
                                            </tr>

                                            </C:forEach>
                                        </table>
                                    </div>


                                </div>

                            </div>
                        </div>
                    </div>

                </section>

            </div>


        </div>
    </form>
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
