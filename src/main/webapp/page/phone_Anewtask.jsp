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


<form action="/phone/Anewtask.do" method="post" enctype="multipart/form-data">
    <div class="col-md-9" >
        <div class="box box-primary" align="center">
            <div class="box-header with-border">
                <h3 class="box-title">
                    <a id="ctl00_cphMain_hlBack" href="List.aspx?active=71,72"><span class="label label-back"><i class="fa fa-chevron-left"></i> 返回</span></a>
                </h3>
            </div>
            <div class="box-body">
                <div class="form-group">

                    <select name="comm_class_id" id="comm_class_id" class="form-control select2">
                        <c:forEach items="${sessionScope.all}" var="a">
                            <option value="${a.class_id}">${a.class_name}</option>
                        </c:forEach>
                    </select>

                </div>
                <div class="form-group">
                    <select name="comm_typeid" id="comm_typeid" class="form-control select2" onchange="ddlChange();">
                        <option value="1">我的通讯录</option>
                        <option  value="2">公司通讯录</option>
                        <option value="3">共享通讯录</option>

                    </select>
                </div>
            </div>

            <div id="ctl00_cphMain_ShareDiv" class="form-group" style="position:relative; display:none">
                <input name="ctl00$cphMain$txtReceiver" type="text" id="ctl00_cphMain_txtReceiver" class="form-control" placeholder="分享给：" onfocus="this.blur()" />
                <input name="ctl00$cphMain$txtReceiverID" type="text" id="ctl00_cphMain_txtReceiverID" style="display:none;" />
                <div style="position:absolute; top:5px; right:5px;">
                    <a id="ctl00_cphMain_hlShare" class="fancybox fancybox.iframe" ><span class="label label-success"><i class="fa fa-share-alt"></i> 分享</span></a>
                </div>
            </div>

            <div class="form-group">
                <select name="comm_thedegreeof" id="comm_thedegreeof" class="form-control select2">
                    <option value="1">一般</option>
                    <option  value="2">重要</option>

                </select>
            </div>
            <div class="form-group">
                <select name="comm_sex" id="comm_sex" class="form-control select2">
                    <option  value="1">男</option>
                    <option value="2">女</option>

                </select>
            </div>
            <div class="form-group">
                <input name="comm_name" type="text"  id="comm_name" class="form-control" placeholder="联系人：" />
            </div>
            <div class="form-group">
                <input name="comm_phone" type="text"  id="comm_phone" class="form-control" placeholder="手机号码：" />
            </div>
            <div class="form-group">
                <input name="comm_landline" type="text"  id="comm_landline" class="form-control" placeholder="公司电话：" />
            </div>
            <div class="form-group">
                <input name="comm_fax" type="text" id="comm_fax" class="form-control" placeholder="传真：" />
            </div>
            <div class="form-group">
                <input name="comm_email" type="text" id="comm_email" class="form-control" placeholder="Email：" />
            </div>
            <div class="form-group">
                <input name="comm_address" type="text" id="comm_address" class="form-control" placeholder="地址：" />
            </div>
            <div class="form-group">
                <input name="comm_note" type="text"  id="comm_note" class="form-control" placeholder="备注：" />
            </div>

            <div class="row">

                <hr />

                <div class="col-md-6 form-group">
                    <label><span id="ctl00_cphMain_Label17">头像</span></label>
                    <div class="user-edit-image"><img id="ctl00_cphMain_imgPortrait" src="ctl00_cphMain_imgPortrait" style="border-width:0px;" /></div>
                    <div class="form-group">
                        <div class="btn btn-default btn-file">
                            <i class="fa fa-upload"></i> 上传头像
                            <input type="file" name="myfile" id="comm_headportrait" onchange="ChkUploadImage(this,ctl00_cphMain_imgPortrait);" />
                        </div>
                        <p class="help-block">尺寸在512*512以内，大小在500KB以内</p>
                    </div>
                </div>

            </div>


        </div>
        <div class="box-footer">
            <div class="pull-right">
                <input type="hidden" id="comm_id" name="comm_id" />
                <input type="submit" name="ctl00$cphMain$btnSave" value="保存" id="ctl00_cphMain_btnSave" class="btn btn-primary" />
                <input type="submit" name="ctl00$cphMain$btnCancel" value="取消" id="ctl00_cphMain_btnCancel" class="btn btn-default" />
            </div>
        </div>
    </div>
    </div>

</form>

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

    $("#comm_typeid").change(function () {
        if($("#comm_typeid").val()==1){
            $("#ctl00_cphMain_ShareDiv").hide();
        }else if(($("#comm_typeid").val()==2)){
            $("#ctl00_cphMain_ShareDiv").hide();
        }else {
            $("#ctl00_cphMain_ShareDiv").show();
        }
    })

    $("#ctl00_cphMain_hlShare").click(function () {
        $.post( '../all/all.do',{},function(data){
            layer.open({
                area: ['50%', '50%'],
                type: 2,
                content: 'user_list.jsp', //这里content是一个普通的String
                success:function (layero, index) {
                    var body = layer.getChildFrame('body', index);
                    var iframeWin = window[layero.find('iframe')[0]['name']]; //得到iframe页的窗口对象，执行iframe页的方法：iframeWin.method();
                    console.log(body.html()) //得到iframe页的body内容
                    body.find("#xz").click(function () {
                        var selects = body.find(".select:checked");
                        var b='';
                        body.find(selects).each(function(){
                            var tr = body.find(this).parents("tr");
                            var username = tr.find(".username").text();
                            var department = tr.find("td").eq(1);
                            b+=username+",";
                            layer.close(index);
                        });
                        console.log(b)
                        $("#ctl00_cphMain_txtReceiver").val(b);
                    })
                }
            });
        },"json");
    })


</script>
</body>
</html>
