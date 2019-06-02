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


        <script type="text/javascript">

            function removeAtt() {
                document.getElementById("ctl00_cphMain_txtFilePath").value = "";
            }

        </script>


        <div class="content-wrapper">


            <section class="content">


                <div id="ctl00_cphMain_AlertDiv"></div>
            <form method="post" action="../addNotice.do" enctype="multipart/form-data">
                <div class="box box-default">
                    <div class="box-header with-border">
                        <h3 class="box-title">
                            <a id="ctl00_cphMain_hlBack" href="List.aspx?active=34,35"><span class="label label-back"><i class="fa fa-chevron-left"></i> 返回</span></a>
                        </h3>
                    </div>

                    <div class="box-body">
                        <div class="row" >

                            <div class="col-md-6 form-group">
                                <label><span id="ctl00_cphMain_Label1">类型</span></label>
                                <select name="typeId" id="ctl00_cphMain_ddlType" class="form-control select2">
                                    <option value="1">公告</option>
                                    <option value="2">通知</option>
                                </select>
                            </div>

                            <div class="col-md-6 form-group">
                                <label><span id="ctl00_cphMain_Label5">状态</span></label>
                                <select name="statusId" id="ctl00_cphMain_ddlStatus" class="form-control select2">
                                    <option value="1">一般</option>
                                    <option value="2">重要</option>
                                    <option value="3">紧急</option>

                                </select>
                            </div>

                            <div class="col-md-6 form-group">
                                <label><span id="ctl00_cphMain_Label14">开始日期</span></label>
                                <input name="startDate" type="text" value="2019-05-23 12:00:00" id="ctl00_cphMain_txtStartDate" class="form-control"  />
                            </div>




                            <div class="col-md-6 form-group">
                                <label><span id="ctl00_cphMain_Label4">结束日期</span></label>
                                <input name="endDate" type="text" value="2019-05-30 12:00:00" id="ctl00_cphMain_txtEndDate" class="form-control" />
                            </div>

                            <div class="col-md-6 form-group">
                                <label><span id="ctl00_cphMain_Label2">标题</span></label>
                                <input name="title" type="text" id="ctl00_cphMain_txtTitle" class="form-control" />
                            </div>

                            <%--<div class="col-md-6 form-group">--%>
                                <%--<label><span id="ctl00_cphMain_Label7">链接</span></label>--%>
                                <%--<input name="url" type="text" id="ctl00_cphMain_txtUrl" class="form-control" />--%>
                            <%--</div>--%>

                            <div class="col-md-6 form-group">
                                <label><span id="ctl00_cphMain_Label3">描述</span></label>
                                <textarea name="description" rows="5" cols="20" id="ctl00_cphMain_txtDescription" class="form-control">
                                </textarea>
                            </div>

                            <%--<div class="col-md-6 form-group">--%>
                                <%--<label><span id="ctl00_cphMain_Label6">置顶</span></label>--%>
                                <%--<br />--%>
                                <%--<input id="ctl00_cphMain_cbTop"  type="checkbox" name="isTop" />--%>
                            <%--</div>--%>

                        </div>

                        <div class="row">

                            <hr />

                            <%--<div class="col-md-6 form-group" style="position:relative;">--%>
                                <%--<input name="ctl00$cphMain$txtFilePath" type="text" id="ctl00_cphMain_txtFilePath" class="form-control" onfocus="this.blur()" />--%>
                                <%--<div style="position:absolute; top:5px; right:20px;">--%>
                                    <%--<a href="javascript:void();" onclick="removeAtt();"><span class="label label-danger"><i class="fa fa-remove"></i> 移除</span></a>--%>
                                <%--</div>--%>
                            <%--</div>--%>

                            <%--<div class="col-md-6 form-group">--%>
                                <%--<div class="btn btn-default btn-file">--%>
                                    <%--<i class="fa fa-paperclip"></i> 增加附件--%>
                                    <%--<input type="file" name="filePath" id="ctl00_cphMain_fuAttachment" onchange="ChkUpload(this);" />--%>
                                    <%--<span id="filepath"></span>--%>
                                <%--</div>--%>
                                <%--<p class="help-block">5MB以内</p>--%>
                            <%--</div>--%>

                        </div>

                    </div>

                    <div class="box-footer">
                        <input type="submit" name="ctl00$cphMain$btnSave" value="保存" id="ctl00_cphMain_btnSave"  />
                        <input type="button" name="ctl00$cphMain$btnCancel" value="取消" id="ctl00_cphMain_btnCancel" class="btn btn-default" />
                    </div>

                </div>
            </form>

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

<script>
    //Demo
    layui.use('form', function(){
        var form = layui.form;

        //监听提交
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });
</script>

<script type="text/javascript">
    layui.use(['layer'], function () {
        var layer = layui.layer;
    });
</script>
</body>
</html>
