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
    <form method="post" action="../task_ins/task_ins.do" enctype="multipart/form-data">
        <section class="content">

            <div id="ctl00_cphMain_AlertDiv"></div>

            <div class="box box-default">
                <div class="box-header with-border">
                    <h3 class="box-title">
                        <a id="ctl00_cphMain_hlBack" href="List.aspx?active=46,47"><span class="label label-back"><i class="fa fa-chevron-left"></i> 返回</span></a>
                    </h3>
                </div>

                <div class="box-body">
                    <div class="row">

                        <div class="col-md-6 form-group">
                            <label><span id="ctl00_cphMain_Label1">类型</span></label>
                            <select name="type" id="type" class="form-control select2">
                                <option value="0">公事</option>
                                <option selected="selected" value="1">私事</option>

                            </select>
                        </div>

                        <div class="col-md-6 form-group">
                            <label><span id="ctl00_cphMain_Label5">状态</span></label>
                            <select name="state" id="state" class="form-control select2">
                                <option selected="selected" value="1">新任务</option>
                                <option value="2">已接收</option>
                                <option value="3">进行中</option>
                                <option value="4">已完成</option>

                            </select>
                        </div>

                        <div class="col-md-6 form-group">
                            <label><span id="ctl00_cphMain_Label14">开始日期</span></label>
                            <input name="date" type="date"  id="starttime" class="form-control" onfocus="WdatePicker({dateFmt:yyyy-MM-dd})" />
                        </div>

                        <div class="col-md-6 form-group">
                            <label><span id="ctl00_cphMain_Label4">结束日期</span></label>
                            <input name="endtime" type="date"  id="endtime" class="form-control" onfocus="WdatePicker({dateFmt:yyyy-MM-dd })" />
                        </div>

                        <div class="col-md-6 form-group">
                            <label><span id="ctl00_cphMain_Label2">标题</span></label>
                            <input name="title" type="text"  id="title" class="form-control" />
                        </div>

                        <div class="col-md-6 form-group" style="position:relative;">
                            <label><span id="ctl00_cphMain_Label7">接收</span></label>
                            <input name="UserList" type="text" id="UserList" class="form-control jieshou" onfocus="this.blur()" />
                            <input name="ctl00$cphMain$txtReceiverID" type="text" id="ctl00_cphMain_txtReceiverID" style="display:none;" />
                            <div style="position:absolute; top:31px; right:20px;">
                                <span id="xz222" class="fancybox fancybox.iframe"  ><span class="label label-success" id="xz1"><i class="fa fa-plus"></i> 新增</span></span>
                            </div>
                        </div>


                        <div class="col-md-6 form-group">
                            <label><span id="ctl00_cphMain_Label3">描述</span></label>
                            <textarea name="describe" rows="5" cols="20" id="describe" class="form-control"></textarea>
                        </div>

                        <div class="col-md-6 form-group">
                            <label><span id="ctl00_cphMain_Label8">评价</span></label>
                            <textarea name="ctl00$cphMain$txtNote" rows="5" cols="20" id="ctl00_cphMain_txtNote" class="form-control">
</textarea>
                        </div>

                        <div class="col-md-6 form-group">
                            <label><span id="ctl00_cphMain_Label6">置顶</span></label>
                            <br />
                            <input id="ctl00_cphMain_cbTop" type="checkbox" name="ctl00$cphMain$cbTop" />
                        </div>

                        <div class="col-md-6 form-group">
                            <label><span id="ctl00_cphMain_Label9">取消</span></label>
                            <br />
                            <input id="ctl00_cphMain_cbCancel" type="checkbox" name="ctl00$cphMain$cbCancel" />
                        </div>

                    </div>

                    <div class="row">

                        <hr />

                        <div class="col-md-6 form-group" style="position:relative;">
                            <input name="ctl00$cphMain$txtFilePath" type="text" id="ctl00_cphMain_txtFilePath" class="form-control" onfocus="this.blur()" />
                            <div style="position:absolute; top:5px; right:20px;">
                                <a href="javascript:;"; onclick="removeAtt();"><span class="label label-danger"><i class="fa fa-remove"></i> 移除</span></a>
                            </div>
                        </div>

                        <div class="col-md-6 form-group">
                            <div class="btn btn-default btn-file">
                                <i class="fa fa-paperclip"></i> 增加附件
                                <input type="file" name="ctl00$cphMain$fuAttachment" id="ctl00_cphMain_fuAttachment" onchange="ChkUpload(this);" />
                                <span id="filepath"></span>
                            </div>
                            <p class="help-block">5MB以内</p>
                        </div>

                    </div>

                </div>

                <div class="box-footer">
                    <input type="submit" name="ctl00$cphMain$btnSave" value="保存" id="ctl00_cphMain_btnSave" class="btn btn-primary" />
                    <input type="submit" name="ctl00$cphMain$btnCancel" value="取消" id="ctl00_cphMain_btnCancel" class="btn btn-default" />
                </div>

            </div>

        </section>
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
    layui.use(['layer','form'], function () {
        var layer = layui.layer,layer = layui.form;
        $("#xz222").click(function () {
            $.post( '../all/all.do',{},function(data){
                top.layer.open({
                    area: ['50%', '50%'],
                    type: 2,
                    content: 'page/user_list.jsp', //这里content是一个普通的String
                    id:"aaa",
                    success:function (layero, index) {
                        console.log(layero)
                        var body = top.layer.getChildFrame('body', index);
                        var iframeWin = top.window[layero.find('iframe')[0]['name']]; //得到iframe页的窗口对象，执行iframe页的方法：iframeWin.method();
                        console.log(body.html()) //得到iframe页的body内容
                        body.find("#xz").click(function () {

                            var selects = body.find(".select:checked");
                             var b='';
                             body.find(selects).each(function(){
                                var tr = body.find(this).parents("tr");
                                var username = tr.find(".username").text();
                                var department = tr.find("td").eq(1);
                                b+=username+",";
                                 top.layer.close(index);
                            });

                            $("#UserList").val(b);
                        })
                    }
                });
            },"json");
        })


    });
</script>

</body>
</html>