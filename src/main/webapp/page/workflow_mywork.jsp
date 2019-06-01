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
<div class="layui-hide moudle">
    <form class="layui-form layui-form-pane" style="margin: 20px auto;width: 80%">
        <div class="layui-form-item">
            <label class="layui-form-label">标题</label>
            <div class="layui-input-block">
                <input type="text" name="title" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">工作模板</label>
            <div class="layui-input-block">
                <input type="radio" name="work" value="1" title="请款">
                <input type="radio" name="work" value="2" title="请假" checked>
                <input type="radio" name="work" value="3" title="人事">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn layui-btn-sm" lay-submit lay-filter="formDemo">确定</button>
                <button type="reset" class="layui-btn layui-btn-sm layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
</div>
<!--body wrapper start-->
<div>
    <blockquote class="layui-elem-quote " style="margin-left: -1px;background-color: white;">
        <button class="layui-btn addmywork">新增工作</button>
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
    layui.use(['layer', 'table','form'], function () {
        var layer = layui.layer;
        var table = layui.table;
        var form = layui.form;
        $(".addmywork").click(function () {
            var index=layer.open({
                area:["40%","43%"],
                type:1,
                shadeClose:true,
                content:$(".moudle").html()
            })
            form.on('submit(formDemo)',function (data) {
                console.log(data.elem) //被执行事件的元素DOM对象，一般为button对象
                console.log(data.form) //被执行提交的form对象，一般在存在form标签时才会返回
                console.log(data.field) //当前容器的全部表单字段，名值对形式：{name: value}
                layer.close(index);

                return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
            });
        });
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

            } else if (layEvent === 'del') { //删除
                layer.confirm('确定删除这项流程吗？',{icon: 3, title:'警告'}, function (index) {
                    layer.close(index);

                });
            }
        });
    });
</script>
</body>
</html>
