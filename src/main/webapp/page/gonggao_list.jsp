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

								</h3>
								<div class="box-tools">
									<div class="input-group" style="width: 150px;">
										<input name="ctl00$cphMain$txtKeyword" type="text" id="ctl00_cphMain_txtKeyword" class="form-control input-sm pull-right" placeholder="查找..." />
										<div class="input-group-btn">
											<a id="ctl00_cphMain_lnbSearch" class="btn btn-sm btn-default" href="javascript:__doPostBack(&#39;ctl00$cphMain$lnbSearch&#39;,&#39;&#39;)"><i class="fa fa-search"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="box-body table-responsive no-padding">

								<div>
									<table class="table table-hover" cellspacing="0" border="0" id="ctl00_cphMain_GridView1" style="border-width:0px;border-collapse:collapse;">
										<tr>
											<th class="sort" scope="col"><a href="javascript:__doPostBack(&#39;ctl00$cphMain$GridView1&#39;,&#39;Sort$fk_Notice&#39;)">ID</a><span><img src='/Images/desc.gif' /></span></th><th scope="col"><a href="javascript:__doPostBack(&#39;ctl00$cphMain$GridView1&#39;,&#39;Sort$TypeID&#39;)">类型</a></th><th scope="col">标题</th><th scope="col">发布时间</th><th scope="col">发布人</th><th scope="col">部门</th><th scope="col"><a href="javascript:__doPostBack(&#39;ctl00$cphMain$GridView1&#39;,&#39;Sort$StatusID&#39;)">状态</a></th><th scope="col">附件</th><th scope="col">操作</th>
										</tr><tr>
										<td class="id">
											<span id="ctl00_cphMain_GridView1_ctl02_lblID">7</span>

										</td><td>
										<span id="ctl00_cphMain_GridView1_ctl02_lblType">通知</span>
									</td><td>
										<span id="ctl00_cphMain_GridView1_ctl02_lblTitle">有1个工作审批已通过</span>
									</td><td>
										<span id="ctl00_cphMain_GridView1_ctl02_lblCreateDate">2019/3/9 0:36:53</span>
									</td><td>
										<span id="ctl00_cphMain_GridView1_ctl02_lblCreateUser">盖茨</span>
									</td><td>
										<span id="ctl00_cphMain_GridView1_ctl02_lblDepartmentName">总公司</span>
									</td><td>
										<span id="ctl00_cphMain_GridView1_ctl02_lblStatus"><span style="font-size:9pt; color:#fff; padding:2px 4px; border-radius:3px; background-color:#00C0EF">一般</span></span>
									</td><td class="mailbox-attachment">
										<span id="ctl00_cphMain_GridView1_ctl02_lblAttachment"></span>
									</td><td>
										<a id="ctl00_cphMain_GridView1_ctl02_gvView" title="查看" href="View.aspx?id=XiRAJSMhKiY3&amp;active=34,37"><span class="label label-primary"><i class="fa fa-search"></i> 查看</span></a>
									</td>
									</tr><tr>
										<td class="id">
											<span id="ctl00_cphMain_GridView1_ctl03_lblID">6</span>

										</td><td>
										<span id="ctl00_cphMain_GridView1_ctl03_lblType">通知</span>
									</td><td>
										<span id="ctl00_cphMain_GridView1_ctl03_lblTitle">有1个工作需要您审批</span>
									</td><td>
										<span id="ctl00_cphMain_GridView1_ctl03_lblCreateDate">2019/3/9 0:36:11</span>
									</td><td>
										<span id="ctl00_cphMain_GridView1_ctl03_lblCreateUser">盖茨</span>
									</td><td>
										<span id="ctl00_cphMain_GridView1_ctl03_lblDepartmentName">总公司</span>
									</td><td>
										<span id="ctl00_cphMain_GridView1_ctl03_lblStatus"><span style="font-size:9pt; color:#fff; padding:2px 4px; border-radius:3px; background-color:#DD4B39">紧急</span></span>
									</td><td class="mailbox-attachment">
										<span id="ctl00_cphMain_GridView1_ctl03_lblAttachment"></span>
									</td><td>
										<a id="ctl00_cphMain_GridView1_ctl03_gvView" title="查看" href="View.aspx?id=XiRAJSMhKiY2&amp;active=34,37"><span class="label label-primary"><i class="fa fa-search"></i> 查看</span></a>
									</td>
									</tr><tr>
										<td class="id">
											<span id="ctl00_cphMain_GridView1_ctl04_lblID">3</span>

										</td><td>
										<span id="ctl00_cphMain_GridView1_ctl04_lblType">通知</span>
									</td><td>
										<span id="ctl00_cphMain_GridView1_ctl04_lblTitle">周一上午全体员工会议</span>
									</td><td>
										<span id="ctl00_cphMain_GridView1_ctl04_lblCreateDate">2015/10/23 22:07:38</span>
									</td><td>
										<span id="ctl00_cphMain_GridView1_ctl04_lblCreateUser">盖茨</span>
									</td><td>
										<span id="ctl00_cphMain_GridView1_ctl04_lblDepartmentName">总公司</span>
									</td><td>
										<span id="ctl00_cphMain_GridView1_ctl04_lblStatus"><span style="font-size:9pt; color:#fff; padding:2px 4px; border-radius:3px; background-color:#DD4B39">紧急</span></span>
									</td><td class="mailbox-attachment">
										<span id="ctl00_cphMain_GridView1_ctl04_lblAttachment"><a href="../Files.aspx?file=XiRAJSMhKiZEb2N1bWVudC8xLzIwMTYwNTI1MTQwNzE2NDM1NjU1OTgucGRm" target="_blank"><i class="fa fa-paperclip"></i></a></span>
									</td><td>
										<a id="ctl00_cphMain_GridView1_ctl04_gvView" title="查看" href="View.aspx?id=XiRAJSMhKiYz&amp;active=34,37"><span class="label label-primary"><i class="fa fa-search"></i> 查看</span></a>
									</td>
									</tr><tr>
										<td class="id">
											<span id="ctl00_cphMain_GridView1_ctl05_lblID">2</span>

										</td><td>
										<span id="ctl00_cphMain_GridView1_ctl05_lblType">通知</span>
									</td><td>
										<span id="ctl00_cphMain_GridView1_ctl05_lblTitle">元旦放假3天</span>
									</td><td>
										<span id="ctl00_cphMain_GridView1_ctl05_lblCreateDate">2015/10/22 22:06:10</span>
									</td><td>
										<span id="ctl00_cphMain_GridView1_ctl05_lblCreateUser">盖茨</span>
									</td><td>
										<span id="ctl00_cphMain_GridView1_ctl05_lblDepartmentName">总公司</span>
									</td><td>
										<span id="ctl00_cphMain_GridView1_ctl05_lblStatus"><span style="font-size:9pt; color:#fff; padding:2px 4px; border-radius:3px; background-color:#00C0EF">一般</span></span>
									</td><td class="mailbox-attachment">
										<span id="ctl00_cphMain_GridView1_ctl05_lblAttachment"></span>
									</td><td>
										<a id="ctl00_cphMain_GridView1_ctl05_gvView" title="查看" href="View.aspx?id=XiRAJSMhKiYy&amp;active=34,37"><span class="label label-primary"><i class="fa fa-search"></i> 查看</span></a>
									</td>
									</tr><tr>
										<td class="id">
											<span id="ctl00_cphMain_GridView1_ctl06_lblID">1</span>

										</td><td>
										<span id="ctl00_cphMain_GridView1_ctl06_lblType">公告</span>
									</td><td>
										<span id="ctl00_cphMain_GridView1_ctl06_lblTitle">关于年度总结报告</span>
									</td><td>
										<span id="ctl00_cphMain_GridView1_ctl06_lblCreateDate">2015/10/21 23:54:54</span>
									</td><td>
										<span id="ctl00_cphMain_GridView1_ctl06_lblCreateUser">盖茨</span>
									</td><td>
										<span id="ctl00_cphMain_GridView1_ctl06_lblDepartmentName">总公司</span>
									</td><td>
										<span id="ctl00_cphMain_GridView1_ctl06_lblStatus"><span style="font-size:9pt; color:#fff; padding:2px 4px; border-radius:3px; background-color:#F39C12">重要</span></span>
									</td><td class="mailbox-attachment">
										<span id="ctl00_cphMain_GridView1_ctl06_lblAttachment"></span>
									</td><td>
										<a id="ctl00_cphMain_GridView1_ctl06_gvView" title="查看" href="View.aspx?id=XiRAJSMhKiYx&amp;active=34,37"><span class="label label-primary"><i class="fa fa-search"></i> 查看</span></a>
									</td>
									</tr>
									</table>
								</div>

								<div id="pager">

									<!-- AspNetPager 7.3.2  Copyright:2003-2010 Webdiyer (www.webdiyer.com) -->
									<div id="ctl00_cphMain_ListPager" class="Pager">
										<div class="CustomInfo" style="width:40%;float:left;">
											<div class='cleft'>共<span>5</span>条 | 每页<span>20</span>条 | 共<span>1</span>页</div>
										</div><div class="Pager" style="width:60%;float:left;">
										<a disabled="disabled" style="margin-right:5px;"><span class=btnLink title='首页'><img src='/Images/first.gif' /></span></a><a disabled="disabled" style="margin-right:5px;"><span class=btnLink title='上一页'><img src='/Images/prev.gif' /></span></a><span class="CurrentPage" style="margin-right:5px;"><span class=Pager>1</span></span><a disabled="disabled" style="margin-right:5px;"><span class=btnLink title='下一页'><img src='/Images/next.gif' /></span></a><a disabled="disabled" style="margin-right:5px;"><span class=btnLink title='尾页'><img src='/Images/last.gif' /></span></a>
									</div>
									</div>
									<!-- AspNetPager 7.3.2  Copyright:2003-2010 Webdiyer (www.webdiyer.com) -->


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
