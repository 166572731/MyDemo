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
    <blockquote class="layui-elem-quote " style="margin-left: -1px;background-color: white;">
        <form class="layui-form layui-inline myform">
            <input type="file" name="png" id="png" required lay-verify="required" class="layui-input layui-hide">
            <button type="button" class="layui-btn layui-btn-primary" onclick="document.getElementById('png').click();">
                <i class="layui-icon">&#xe67c;</i>上传png
            </button>
            <span id="fileName1"></span>
            <input type="file" name="bpmn" id="bpmn" required  lay-verify="required" class="layui-input layui-hide">
            <button type="button" class="layui-btn layui-btn-primary" onclick="document.getElementById('bpmn').click();">
                <i class="layui-icon">&#xe67c;</i>上传bpmn
            </button>
            <span id="fileName2"></span>
            <button class="layui-btn" lay-submit lay-filter="addprocess">添 加</button>
        </form>
        <button class="layui-btn layui-btn-danger deleteall">删除所选</button>
    </blockquote>

    <table id="demo" lay-filter="test"></table>
</div>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="detail">查看</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<!--body wrapper end-->
<!-- 将js放在文档的末尾，以便页面加载速度更快。 -->
<script src="../js/jquery-1.10.2.min.js"></script>
<script src="../js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="../js/jquery-migrate-1.2.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/modernizr.min.js"></script>
<script src="../js/jquery.nicescroll.js"></script>
<script src="../layuiold/layui.js"></script>
<!--所有页面的通用脚本-->
<script src="../js/scripts.js"></script>
<script type="text/javascript">
    $("#png").bind("change",function () {
        var png=$("#png").val();
        if (png.substring(png.lastIndexOf("."))!=".png"){
            $("#png").val("");
            layer.msg("文件格式错误！");
            return false;
        }
        $("#fileName1").text(png);
    })
    $("#bpmn").bind("change",function () {
        var bpmn=$("#bpmn").val();
        if (bpmn.substring(bpmn.lastIndexOf("."))!=".bpmn"){
            $("#bpmn").val("");
            layer.msg("文件格式错误！");
            return false;
        }
        $("#fileName2").text(bpmn);
    })
    layui.use(['layer', 'table','upload','form'], function () {
        var layer = layui.layer;
        var table = layui.table;
        var upload = layui.upload;
        var form = layui.form;
        //第一个实例
        table.render({
            elem: '#demo'
            , url: '../loadProcess.do' //数据接口
            , even: true
            , cols: [[ //表头
                {field: 'id', type: "checkbox", width: 50, fixed: 'left'},
                {field: 'name', align: "center", title: '事项名称'},
                {field: 'key', align: "center", title: 'kEY'},
                {field: 'deploymentId', align: "center", title: '部署Id'},
                {field: 'version', align: "center", title: '版本'},
                {field: 'diagramResourceName',hide:true},
                {fixed: 'right', title: '操作', width: 200, align: 'center', toolbar: '#barDemo'}
            ]]
            , parseData: function (res) { //res 即为原始返回的数据
                return {
                    "code": 0, //解析接口状态
                    "msg": "", //解析提示文本
                    "count": res.size, //解析数据长度
                    "data": res //解析数据列表
                }
            }
        });
        //监听工具条
        table.on('tool(test)', function (obj) {
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的DOM对象

            if (layEvent === 'detail') { //查看
                //alert(data.diagramResourceName);
                window.open('../readProcess/'+data.deploymentId+'/'+data.diagramResourceName+'.do',"_blank");
            } else if (layEvent === 'del') { //删除
                layer.confirm('确定删除这项流程吗？',{icon: 3, title:'警告'}, function (index) {
                    layer.close(index);
                    $.post("../delProcess.do",{"deployId":data.deploymentId},function (data) {
                        if (data==0){
                            obj.del();
                            layer.msg("已成功删除");
                        }
                    });
                });
            }
        });

        form.on('submit(addprocess)', function(data){
            var form=new FormData($(".myform")[0]);//拿到表单对象
            $.ajax({
                type : "POST",//提交方式
                url : "../addProcess.do",//提交地址
                cache: false,    //上传文件不需缓存
                data:form,
                processData:false,//需设置为false，因为data值是FormData对象，不需要对数据做处理
                contentType:false,//需设置为false，因为是FormData对象，且已经声明了属性enctype="multipart/form-data"
                success : function(data) {
                    if(data=="1"){
                        layer.msg("添加成功！");
                        $("#fileName1").text("");
                        $("#png").val("");
                        $("#fileName2").text("");
                        $("#bpmn").val("");
                        table.reload("demo",data);
                    }else{
                        layer.msg("网络错误，请重试！！！");
                    }
                },
                erreo : function(request) {
                    layer.msg("网络错误，请重试！！！");
                }
            });
            return false;
        });

        $(".deleteall").click(function () {
            layer.confirm('确定删除这些流程吗？',{icon: 3, title:'警告'}, function (index) {
                layer.close(index);
                var data=layui.table.checkStatus('demo').data;
                var stringID='';
                $.each(data,function (index,d) {
                    stringID+=d.deploymentId+",";
                })
                $.post("../delProcess.do",{"deployId":stringID},function (data) {
                    if (data==0){
                        layer.msg("已成功删除");
                        table.reload("demo",data);
                    }
                });
            });
        });
    });
</script>
</body>
</html>
