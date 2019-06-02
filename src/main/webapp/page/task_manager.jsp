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
<body style="background: #eff0f4;" >
<!--body wrapper start-->
<div>
	<p>任务管理</p>
	<a class="layui-btn" id="ins" >新增</a>

	<table id="mytable" lay-filter="test"></table>


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

<script type="text/html" id="barDemo1">
	<a class="layui-btn layui-btn-xs" layui-btn-xs lay-event="up">修改</a>
	<a class="layui-btn layui-btn-xs" layui-btn-xs lay-event="se">查看</a>
	<a class="layui-btn layui-btn-xs" layui-btn-xs lay-event="de">删除</a>
</script>







<script type="text/javascript">
    layui.use(['layer'], function () {
        var layer = layui.layer;
    })

var g=1;
    var s=2;

    layui.use('table', function(){
        var table = layui.table;

        //第一个实例
        table.render({
            elem: '#mytable'
            ,height: 312
            ,url: '../showall.do' //数据接口
            ,cellMinWidth: 80
            ,page: true //开启分页
            ,limit:5
            ,cols: [[ //表头
                {field: 'pk_Task', title: 'ID',  sort: true,align: 'center' }
                ,{ field:'TypeID',title: '类型',align: 'center'
                    ,templet: function(d){

                        if (d.TypeID==g){
                            return   '<span style="color: #003377;">'+'公事'+'</span>'
                        } if(d.TypeID==s){
                            return   '<span style="color: #770077;">'+'私事'+'</span>'
						}

                    }
                }
                ,{ field:'Title',title: '标题',align: 'center'}
                ,{field: 'username', title: '发布人', sort: true,align: 'center'}
                ,{field: 'StartDate', title: '发布时间', align: 'center',templet: function(d){


                        return layui.util.toDateString(d.StartDate,'yyyy-MM-dd');
                    }}
                ,{field: 'fk_Department', title: '部门',align: 'center'
                    ,templet: function(d){
                        if(d.fk_Department=='1000'){
                            return '<span style="color: #cc0000;">'+'总经办'+'</span>';
                        }else if(d.fk_Department=='1001'){
                            return '<span style="color: #cc0000;">'+'财务部'+'</span>';
                        }else if(d.fk_Department=='1002'){
                            return '<span style="color: #cc0000;">'+'行政部'+'</span>';
                        }else if(d.fk_Department=='1003'){
                            return '<span style="color: #cc0000;">'+'人力资源'+'</span>';
                        }else if(d.fk_Department=='1004'){
                            return '<span style="color: #cc0000;">'+'销售部'+'</span>';
                        }else if(d.fk_Department=='1005'){
                            return '<span style="color: #cc0000;">'+'市场部'+'</span>';
                        }else if(d.fk_Department=='1006'){
                            return '<span style="color: #cc0000;">'+'营销部'+'</span>';
                        }

                    }

                }
                , {
                    field: 'StatusID', title: '状态', sort: true, align: 'center',
                    templet: function (d) {
                        if (d.StatusID == '1') {
                            return '<span style="color: #cc0000;">' + '新任务' + '</span>';
                        } else if (d.StatusID == '2') {
                            return '<span style="color: #33FFFF;">' + '已接收' + '</span>';
                        } else if (d.StatusID == '3') {
                            return '<span style="color: #FFFF00;">' + '进行中' + '</span>';
                        }else if (d.StatusID == '4') {
                            return '<span style="color: #227700;">' + '已完成' + '</span>';
                        }
                    }
                }
                ,{field: 'FilePath', title: '附件',  sort: true,align: 'center',templet:function (d) {
                            if(d.FilePath==''){
                                return '';
                            }else if(d.FilePath==null){
                                return '';
                            }else{
                                return "<a href='#' onclick='openImg(\""+d.FilePath+"\")'>查看</a>"
                                //"<img src='../"+d.FilePath+"'/>"
                            }
                }}
                ,{title:'操作', toolbar: '#barDemo1',align:'center'}
            ]]
        });





        var table = layui.table;
        table.on('tool(test)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"

            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的DOM对象
            var cs=data.pk_Task;
            if(layEvent=='up'){
                $.post( '../up.do',{aa:cs},function(data){

                        layer.open({
                            area: ['1500px', '770px'],
                            type: 2,
                            content: 'task_up.jsp', //这里content是一个普通的String
                            success:function (layero, index) {
                                var body = layer.getChildFrame('body', index);
                                var iframeWin = window[layero.find('iframe')[0]['name']]; //得到iframe页的窗口对象，执行iframe页的方法：iframeWin.method();
                                console.log(body.html()) //得到iframe页的body内容
                                body.find('#type').val(data.TypeID);
                                body.find('#state').val(data.StatusID);
                                body.find('#starttime').val( layui.util.toDateString(data.StartDate,'yyyy-MM-dd'));
                                body.find('#endtime').val(layui.util.toDateString(data.EndDate,'yyyy-MM-dd'));
                                body.find('#title').val(data.Title);
                                body.find('#receive').val(data.UserList);
                                body.find('#describe').val(data.Description);


                            }
                        });
                },"json");
            }else if(layEvent=='se'){

                $.post( '../up.do',{aa:cs},function(data){

                    layer.open({
                        area: ['100%', '100%'],
                        type: 2,
                        content: 'task_se.jsp', //这里content是一个普通的String
                        success:function (layero, index) {
                            var body = layer.getChildFrame('body', index);
                            var iframeWin = window[layero.find('iframe')[0]['name']]; //得到iframe页的窗口对象，执行iframe页的方法：iframeWin.method();
                            console.log(body.html()) //得到iframe页的body内容
                            body.find('#bh').val(data.pk_Task);
                            body.find('#title').text(data.Title);
                            body.find('#issuer').text(data.username);
                            body.find('#participant').text(data.UserList);
                            body.find('#type').val(data.StatusID);
                            body.find('#starttime').text(layui.util.toDateString(data.StartDate,'yyyy-MM-dd'));
                            body.find('#starttime1').text(layui.util.toDateString(data.StartDate,'yyyy-MM-dd'));
                            body.find('#endtime1').text(layui.util.toDateString(data.endDate,'yyyy-MM-dd'));
                            body.find('#receive').text(data.UserList);
                            body.find('#describe').text(data.Description);



                        }
                    });
                },"json");
            }else if(layEvent=='de'){
                layer.open({
                    offset: 'auto',
                    title: ['确定删除吗?', 'font-size:18px;'],
                    type: 1,
                    btn: ['确定', '取消'],
                    yes: function(index, layero){
                        $.post( '../del/del.do',{aa:cs},function(data){
						alert('已删除')

						},"json");
                    }
                    ,btn2: function(index, layero){


                        //return false 开启该代码可禁止点击该按钮关闭
                    },
                    content: '<div></div>' ,



                   //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响


                });



            }

        });
        $("#ins").click(function () {
            layer.open({
                area: ['100%', '100%'],
                type: 2,
                content: 'ins.jsp', //这里content是一个普通的String
            })
        })


    });
    function openImg(FilePath){
        layer.open({
            area: ['100%', '100%'],
            type: 1,
            content: '<img src="../'+FilePath+'" style=\'width:100%;height:100%;\'/>' ,
            success:function(){

            }
        })
    }

</script>
</body>
</html>
