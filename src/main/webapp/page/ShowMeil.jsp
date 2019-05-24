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

<div id="txl" class="hide">
	<table class="layui-table">
		<colgroup>
			<col width="150">
			<col width="200">
			<col>
		</colgroup>
		<thead>
		<tr>
			<th>帐号</th>
			<th>真实姓名</th>
			<th>部门</th>
            <th>操作</th>
		</tr>
		</thead>
        <tbody></tbody>
	</table>
</div>

<h1 style="font-size:35px;text-align:center;" class="layui-bg-orange">写信</h1>

<button id="txlBtn" class="layui-btn">通讯录</button>
<form class="layui-form" action="../addMail.do">

	<div class="layui-form-item">
		<label class="layui-form-label">收件人</label>
		<div class="layui-input-block">
			<input style="width: 300px;height: 40px" type="text" name="MailTo" required  lay-verify="required" autocomplete="off" class="layui-input" id="MailTo">
		</div>
	</div>

	<div class="layui-form-item">
		<label class="layui-form-label">类型</label>
		<div class="layui-input-block">
			<input type="radio" name="TypeID" value="邮件" title="邮件" checked>
			<input type="radio" name="TypeID" value="通知" title="通知" >
		</div>
	</div>

	<div class="layui-form-item">
		<label class="layui-form-label">主题</label>
		<div class="layui-input-block">
			<input style="width: 300px;height: 40px" type="text" name="Subject" required lay-verify="required" autocomplete="off" class="layui-input">
		</div>
	</div>


	<div class="layui-form-item layui-form-text">
		<label class="layui-form-label">内容</label>
		<div class="layui-input-block">
			<textarea style="width: 550px;height: 300px" name="Body" placeholder="请输入内容" class="layui-textarea"></textarea>
		</div>
	</div>

	<div class="layui-form-item">
		<div class="layui-input-block">
			<button class="layui-btn" lay-submit >发送</button>
			<button type="reset" class="layui-btn layui-btn-primary">重置</button>
		</div>
	</div>

</form>


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


<script src="layer.js"></script>

<script>

    layui.use('form', function(){
        var form = layui.form;

        //监听提交
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });

    //联系人点击事件
    $("#txlBtn").click(function(){
        //Ajax获取
        $.post('../txl.do', {}, function(str){

            var userhtml="";
            $(str).each(function(index,uesr){
                userhtml+='<tr>\n' +
                    '                <td>'+uesr.linkman_id+'</td>\n' +
                    '                <td>'+uesr.linkman_name+'</td>\n' +
                    '                <td>'+uesr.linkman_section+'</td>\n' +
                    '                <td><button class="layui-btn layui-btn-normal sss" id="'+uesr.linkman_id+'">选择</button></td>\n' +
                    '                </tr>';
            });
            $('#txl table tbody').html(userhtml);

           var index= layer.open({
                title :'联系人',
                offset: '100px',
                area: ['600px', '400px'],
                type: 1,
                content: $('#txl').html(),

            });
            $(".sss").each(function () {
                $(this).click(function () {
                    $('#MailTo').val($(this).attr("id"));
                    layer.close(index);
                })
            })
        });
    });
</script>

</body>
</html>
