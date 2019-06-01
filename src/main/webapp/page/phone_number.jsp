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
    <div class="content-wrapper">

        <section class="content-header">
            <h1>
                通讯录
            </h1>
            <ol class="breadcrumb">
                <li><a href="../"><i class="fa fa-home"></i> 首页</a></li>
                <li class="active">通讯录</li>
            </ol>
        </section>

        <section class="content">
            <div class="row">



                <div class="col-md-3">
                    <a id="ctl00_cphMain_Nav_hlAdd" class="btn btn-primary btn-block margin-bottom" ><i class="fa fa-pencil"></i> 新建联系人</a>
                    <div class="box box-solid">
                        <div class="box-header with-border">
                            <h3 class="box-title">通讯录</h3>
                            <div class="box-tools">
                                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                            </div>
                        </div>
                        <div id="ctl00_cphMain_Nav_NavDiv" class="box-body no-padding">
                            <ul class="nav nav-pills nav-stacked" id="ul"><li class="active"><a href="List.aspx?&active=71,72"><i class="fa fa-clock-o"></i> 最近</a></li>
                                <c:forEach items="${sessionScope.all}" var="a">
                                    <li class="active">${a.class_name}</li>

                                </c:forEach>

                            </ul>
                        </div>

                    </div>
                    <div class="box box-solid">
                        <div class="box-header with-border">
                            <h3 class="box-title">分类</h3>
                        </div>
                        <div class="box-body">
                            <div class="input-group">
                                <input name="ctl00$cphMain$Nav$txtFullName" type="text" id="ctl00_cphMain_Nav_txtFullName" class="form-control" placeholder="通讯录分类" />
                                <div class="input-group-btn">
                                   <input type="text" name="comm_class_id" id="comm_class_id111" /> <button id="button" class="layui-btn layui-btn-normal">新增</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box box-solid">
                        <div class="box-header with-border">
                            <h3 class="box-title">类型</h3>
                            <div class="box-tools">
                                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                            </div>
                        </div>
                        <div id="ctl00_cphMain_Nav_TypeDiv" class="box-body no-padding"><ul class="nav nav-pills nav-stacked"><li id="Mycommunication"><i class="fa fa-circle-o text-"></i> 我的通讯录</li><li id="Companydirectory"><i class="fa fa-circle-o text-"></i> 公司通讯录</li><li id="Shared"><i class="fa fa-circle-o text-"></i> 共享通讯录</li></ul></div>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <div class="box-tools">
                                <div class="input-group" style="width: 150px;">
                                    <input name="ctl00$cphMain$txtKeyword" type="text" id="ctl00_cphMain_txtKeyword" class="form-control input-sm pull-right" placeholder="查找..." />
                                    <div class="input-group-btn">
                                        <a id="ctl00_cphMain_lnbSearch" class="btn btn-sm btn-default" href="javascript:__doPostBack(&#39;ctl00$cphMain$lnbSearch&#39;,&#39;&#39;)"><i class="fa fa-search"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="box-body no-padding">

                            <div class="table-responsive mailbox-messages">

                                <div>
                                    <table class="table table-hover table-striped"  cellspacing="0" border="0" id="mytable" style="border-width:0px;border-collapse:collapse;"  lay-filter="test">
                                    </table>
                                </div>



                            </div>
                        </div>

                    </div>
                </div>



            </div>

        </section>

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

<script type="text/html" id="barDemo1">
    <a class="layui-btn layui-btn-xs" layui-btn-xs lay-event="up">修改</a>
    <a class="layui-btn layui-btn-xs" layui-btn-xs lay-event="se">查看</a>
    <a class="layui-btn layui-btn-xs" layui-btn-xs lay-event="de">删除</a>
</script>


<script type="text/javascript">
    layui.use(['layer'], function () {
        var layer = layui.layer;
    });

    //点击新增事件
    $("#button").click(function () {

       var nr= $(" input[ type='text' ] ").val()
        if(nr==null){
            alert("请输入内容")
        }

        $.post('../inse/typeid.do',{xz:nr},function (date) {

                })





    })





    //我的通讯录点击事件
    $("#Mycommunication").click(function (data) {
        var id=1;
        layui.use('table', function () {
            var table = layui.table;

            //第一个实例
            table.render({
                elem: '#mytable'
                , height: 312
                , url: '../all/communication.do?id=' + id //数据接口
                , cellMinWidth: 80
                , page: true //开启分页
                , limit: 5
                , cols: [[ //表头
                    {
                        field: 'comm_headportrait', title: '头像', sort: true, align: 'center', templet: function (d) {
                            if (d.comm_headportrait == null) {
                                return '';
                            } else if (d.comm_headportrait == '') {
                                return '';
                            } else {
                                return '<span>' + '<img src=../' + d.comm_headportrait + ' style="width:25px; height:25px;"  class="img-circle" />' + '</span>';
                            }

                        }
                    }
                    , {field: 'comm_name', title: '联系人', align: 'center'}
                    , {field: 'comm_phone', title: '手机号', align: 'center'}
                    , {
                        field: 'comm_classification', title: '类型', sort: true, align: 'center', templet: function (d) {
                            if (d.comm_typeid == "1") {
                                return '<span style="color: #cc0000;">' + '我的通讯录' + '</span>';
                            } else if (d.comm_typeid == "2") {
                                return '<span style="color: #cc0000;">' + '公司通讯录' + '</span>';
                            } else if (d.comm_typeid == "3") {
                                return '<span style="color: #cc0000;">' + '共享通讯录' + '</span>';
                            }
                        }
                    }
                    , {
                        field: 'comm_sex', title: '性别', align: 'center', templet: function (d) {
                            if (d.comm_sex == 1) {
                                return '<span style="color: #cc0000;">' + '<img id="ctl00_cphMain_imgSex" title="男" src="../upload/male.png" style="border-width:0px;width:18px;" />' + '</span>';
                            } else {
                                return '<span style="color: #cc0000;">' + '<img id="ctl00_cphMain_imgSex" title="女" src="../upload/female.png" style="border-width:0px;width:18px;" />' + '</span>';
                            }
                        }
                    }
                    , {field: 'class_name', title: '分类', align: 'center'}
                    , {
                        field: 'comm_thedegreeof', title: '状态', sort: true, align: 'center',
                        templet: function (d) {
                            if (d.comm_thedegreeof == 1) {
                                return '<span style="color: #cc0000;">' + '一般' + '</span>';
                            } else {
                                return '<span style="color: #33FFFF;">' + '重要' + '</span>';
                            }
                        }
                    }
                    , {title: '操作', toolbar: '#barDemo1', align: 'center'}
                ]]
            });
        });

    });

    //点击公司通讯录事件
    $("#Companydirectory").click(function () {
        var id2 = 2;
        layui.use('table', function () {
            var table = layui.table;

            //第一个实例
            table.render({
                elem: '#mytable'
                , height: 312
                , url: '../all/communication.do?id=' + id2 //数据接口
                , cellMinWidth: 80
                , page: true //开启分页
                , limit: 5
                , cols: [[ //表头
                    {
                        field: 'comm_headportrait', title: '头像', sort: true, align: 'center', templet: function (d) {
                            if (d.comm_headportrait == null) {
                                return '';
                            } else if (d.comm_headportrait == '') {
                                return '';
                            } else {
                                return '<span>' + '<img src=../' + d.comm_headportrait + ' style="width:25px; height:25px;"  class="img-circle" />' + '</span>';
                            }

                        }
                    }
                    , {field: 'comm_name', title: '联系人', align: 'center'}
                    , {field: 'comm_phone', title: '手机号', align: 'center'}
                    , {
                        field: 'comm_classification', title: '类型', sort: true, align: 'center', templet: function (d) {
                            if (d.comm_typeid == "1") {
                                return '<span style="color: #cc0000;">' + '我的通讯录' + '</span>';
                            } else if (d.comm_typeid == "2") {
                                return '<span style="color: #cc0000;">' + '公司通讯录' + '</span>';
                            } else if (d.comm_typeid == "3") {
                                return '<span style="color: #cc0000;">' + '共享通讯录' + '</span>';
                            }
                        }
                    }
                    , {
                        field: 'comm_sex', title: '性别', align: 'center', templet: function (d) {
                            if (d.comm_sex == 1) {
                                return '<span style="color: #cc0000;">' + '<img id="ctl00_cphMain_imgSex" title="男" src="../upload/male.png" style="border-width:0px;width:18px;" />' + '</span>';
                            } else {
                                return '<span style="color: #cc0000;">' + '<img id="ctl00_cphMain_imgSex" title="女" src="../upload/female.png" style="border-width:0px;width:18px;" />' + '</span>';
                            }
                        }
                    }
                    , {field: 'class_name', title: '分类', align: 'center'}

                    , {
                        field: 'comm_thedegreeof', title: '状态', sort: true, align: 'center',
                        templet: function (d) {
                            if (d.comm_thedegreeof == 1) {
                                return '<span style="color: #cc0000;">' + '一般' + '</span>';
                            } else {
                                return '<span style="color: #33FFFF;">' + '重要' + '</span>';
                            }
                        }
                    }
                    , {title: '操作', toolbar: '#barDemo1', align: 'center'}
                ]]
            });
        });
    })
    
    $("#Shared").click(function () {
        var id3=3;
        layui.use('table', function () {
            var table = layui.table;

            //第一个实例
            table.render({
                elem: '#mytable'
                , height: 312
                , url: '../all/communication.do?id=' + id3 //数据接口
                , cellMinWidth: 80
                , page: true //开启分页
                , limit: 5
                , cols: [[ //表头
                    {
                        field: 'comm_headportrait', title: '头像', sort: true, align: 'center', templet: function (d) {
                            if (d.comm_headportrait == null) {
                                return '';
                            } else if (d.comm_headportrait == '') {
                                return '';
                            } else {
                                return '<span>' + '<img src=../' + d.comm_headportrait + ' style="width:25px; height:25px;"  class="img-circle" />' + '</span>';
                            }

                        }
                    }
                    , {field: 'comm_name', title: '联系人', align: 'center'}
                    , {field: 'comm_phone', title: '手机号', align: 'center'}
                    , {
                        field: 'comm_classification', title: '类型', sort: true, align: 'center', templet: function (d) {
                            if (d.comm_typeid == "1") {
                                return '<span style="color: #cc0000;">' + '我的通讯录' + '</span>';
                            } else if (d.comm_typeid == "2") {
                                return '<span style="color: #cc0000;">' + '公司通讯录' + '</span>';
                            } else if (d.comm_typeid == "3") {
                                return '<span style="color: #cc0000;">' + '共享通讯录' + '</span>';
                            }
                        }
                    }
                    , {
                        field: 'comm_sex', title: '性别', align: 'center', templet: function (d) {
                            if (d.comm_sex == 1) {
                                return '<span style="color: #cc0000;">' + '<img id="ctl00_cphMain_imgSex" title="男" src="../upload/male.png" style="border-width:0px;width:18px;" />' + '</span>';
                            } else {
                                return '<span style="color: #cc0000;">' + '<img id="ctl00_cphMain_imgSex" title="女" src="../upload/female.png" style="border-width:0px;width:18px;" />' + '</span>';
                            }
                        }
                    }
                    , {field: 'class_name', title: '分类', align: 'center'}
                    , {
                        field: 'comm_thedegreeof', title: '状态', sort: true, align: 'center',
                        templet: function (d) {
                            if (d.comm_thedegreeof == 1) {
                                return '<span style="color: #cc0000;">' + '一般' + '</span>';
                            } else {
                                return '<span style="color: #33FFFF;">' + '重要' + '</span>';
                            }
                        }
                    }
                    , {title: '操作', toolbar: '#barDemo1', align: 'center'}
                ]]
            });
        });
    })


    //点击新建任务事件
    $("#ctl00_cphMain_Nav_hlAdd").click(function () {
        layer.open({
            area: ['1100px', '770px'],
            type: 2,
            content: 'phone_Anewtask.jsp', //这里content是一个普通的String
            success:function (layero, index) {
                var body = layer.getChildFrame('body', index);
                var iframeWin = window[layero.find('iframe')[0]['name']]; //得到iframe页的窗口对象，执行iframe页的方法：iframeWin.method();
                console.log(body.html()) //得到iframe页的body内容
                var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
                parent.layer.close(index); //再执行关闭
            }
        });



    })

    layui.use('table', function() {
        var table = layui.table;

        //第一个实例
        table.render({
            elem: '#mytable'
            , height: 312
            , url: '../all/communication.do' //数据接口
            , cellMinWidth: 80
            , page: true //开启分页
            , limit: 5
            , cols: [[ //表头
                {field: 'comm_headportrait', title: '头像', sort: true, align: 'center',templet:function (d) {
                   if(d.comm_headportrait==null){
                       return '';
                   }else if(d.comm_headportrait==''){
                       return '';
                   }else{
                       return '<span>' + '<img src=../'+d.comm_headportrait+' style="width:25px; height:25px;"  class="img-circle" />' + '</span>';
                   }

                    }}
                , {field: 'comm_name', title: '联系人', align: 'center'}
                , {field: 'comm_phone', title: '手机号', align: 'center'}
                , {field: 'comm_classification', title: '类型', sort: true, align: 'center',templet:function (d) {
                        if(d.comm_typeid=="1"){
                            return '<span style="color: #cc0000;">' + '我的通讯录' + '</span>';
                        }else if(d.comm_typeid=="2"){
                            return '<span style="color: #cc0000;">' + '公司通讯录' + '</span>';
                        }else if(d.comm_typeid=="3"){
                            return '<span style="color: #cc0000;">' + '共享通讯录' + '</span>';
                        }
                    }}
                , {field: 'comm_sex', title: '性别', align: 'center', templet: function (d) {
                        if(d.comm_sex==1){
                            return '<span style="color: #cc0000;">' + '<img id="ctl00_cphMain_imgSex" title="男" src="../upload/male.png" style="border-width:0px;width:18px;" />' + '</span>';
                        }else{
                            return '<span style="color: #cc0000;">' + '<img id="ctl00_cphMain_imgSex" title="女" src="../upload/female.png" style="border-width:0px;width:18px;" />' + '</span>';
                        }
                    }
                }
                , {field: 'class_name', title: '分类', align: 'center'}
                , {field: 'comm_thedegreeof', title: '状态', sort: true, align: 'center',
                    templet: function (d) {
                        if (d.comm_thedegreeof == 1) {
                            return '<span style="color: #cc0000;">' + '一般' + '</span>';
                        } else{
                            return '<span style="color: #33FFFF;">' + '重要' + '</span>';
                        }
                    }
                }
                , {title: '操作', toolbar: '#barDemo1', align: 'center'}
            ]]
        });

        var table = layui.table;
        table.on('tool(test)', function(obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"

            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的DOM对象
            var comm_id = data.comm_id;
        if(layEvent=='up'){
            $.post( '../comm/up.do',{comm_id:comm_id},function(data){
                layer.open({
                    area: ['1100px', '770px'],
                    type: 2,
                    content: 'phone_up.jsp', //这里content是一个普通的String
                    success:function (layero, index) {
                        var body = layer.getChildFrame('body', index);
                        var iframeWin = window[layero.find('iframe')[0]['name']]; //得到iframe页的窗口对象，执行iframe页的方法：iframeWin.method();
                        console.log(body.html()) //得到iframe页的body内容
                        body.find('#comm_id').val(data.comm_id);
                        body.find('#comm_class_id').val(data.comm_class_id);
                        body.find('#comm_typeid').val(data.comm_typeid);
                        body.find('#comm_thedegreeof').val(data.comm_thedegreeof);
                        body.find('#comm_sex').val(data.comm_sex);
                        body.find('#comm_name').val(data.comm_name);
                        body.find('#comm_phone').val(data.comm_phone);
                        body.find('#comm_landline').val(data.comm_landline);
                        body.find('#comm_fax').val(data.comm_fax);
                        body.find('#comm_email').val(data.comm_email);
                        body.find('#comm_address').val(data.comm_address);
                        body.find('#comm_note').val(data.comm_note);
                        body.find('#ctl00_cphMain_imgPortrait').val(data.comm_headportrait);
                    }
                });
            },"json");
        }else if(layEvent=='se'){
            //点击查看事件
            $.post( '../phone/toview.do',{comm_id:comm_id},function(data){

                layer.open({
                    area: ['1100px', '770px'],
                    type: 2,
                    content: 'phone_toview.jsp', //这里content是一个普通的String
                    success:function (layero, index) {
                        var body = layer.getChildFrame('body', index);
                        var iframeWin = window[layero.find('iframe')[0]['name']]; //得到iframe页的窗口对象，执行iframe页的方法：iframeWin.method();
                        console.log(body.html()) //得到iframe页的body内容
                        body.find('#comm_name').text(data.comm_name);
                        body.find('#comm_phone').text(data.comm_phone);
                        body.find('#comm_landline').text(data.comm_landline);
                        body.find('#comm_fax').text(data.comm_fax);
                        body.find('#comm_email').text(data.comm_email);
                        body.find('#comm_address').text(data.comm_address);
                        body.find('#comm_note').text(data.comm_note);
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
                    $.post( '../phone/thecontact.do',{comm_id:comm_id}

                    ,"json");
                    alert('已删除')
                    layer.close(index);
                }
                ,btn2: function(index, layero){


                    //return false 开启该代码可禁止点击该按钮关闭
                },
                content: '<div></div>' ,



                //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响


            });

        }


        })

    })

    $("#ul li").each(function () {
        var a= $(this);
        var id3=4;
        $(this).click(function () {
            var dj= $(this).text();

            layui.use('table', function () {
                var table = layui.table;

                //第一个实例
                table.render({
                    elem: '#mytable'
                    , height: 312
                    , url: '../all/communication.do?id=' + id3+'&nr='+dj //数据接口
                    , cellMinWidth: 80
                    , page: true //开启分页
                    , limit: 5
                    , cols: [[ //表头
                        {
                            field: 'comm_headportrait', title: '头像', sort: true, align: 'center', templet: function (d) {
                                if (d.comm_headportrait == null) {
                                    return '';
                                } else if (d.comm_headportrait == '') {
                                    return '';
                                } else {
                                    return '<span>' + '<img src=../' + d.comm_headportrait + ' style="width:25px; height:25px;"  class="img-circle" />' + '</span>';
                                }

                            }
                        }
                        , {field: 'comm_name', title: '联系人', align: 'center'}
                        , {field: 'comm_phone', title: '手机号', align: 'center'}
                        , {
                            field: 'comm_classification', title: '类型', sort: true, align: 'center', templet: function (d) {
                                if (d.comm_typeid == "1") {
                                    return '<span style="color: #cc0000;">' + '我的通讯录' + '</span>';
                                } else if (d.comm_typeid == "2") {
                                    return '<span style="color: #cc0000;">' + '公司通讯录' + '</span>';
                                } else if (d.comm_typeid == "3") {
                                    return '<span style="color: #cc0000;">' + '共享通讯录' + '</span>';
                                }
                            }
                        }
                        , {
                            field: 'comm_sex', title: '性别', align: 'center', templet: function (d) {
                                if (d.comm_sex == 1) {
                                    return '<span style="color: #cc0000;">' + '<img id="ctl00_cphMain_imgSex" title="男" src="../upload/male.png" style="border-width:0px;width:18px;" />' + '</span>';
                                } else {
                                    return '<span style="color: #cc0000;">' + '<img id="ctl00_cphMain_imgSex" title="女" src="../upload/female.png" style="border-width:0px;width:18px;" />' + '</span>';
                                }
                            }
                        }
                        , {
                            field: 'class_name', title: '分类', align: 'center'
                        }
                        , {
                            field: 'comm_thedegreeof', title: '状态', sort: true, align: 'center',
                            templet: function (d) {
                                if (d.comm_thedegreeof == 1) {
                                    return '<span style="color: #cc0000;">' + '一般' + '</span>';
                                } else {
                                    return '<span style="color: #33FFFF;">' + '重要' + '</span>';
                                }
                            }
                        }
                        , {title: '操作', toolbar: '#barDemo1', align: 'center'}
                    ]]
                });
            });




        });
    })

</script>
</body>
</html>
