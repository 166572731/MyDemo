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
	<div id="mydiv" style="width: 1000px;height:550px;">

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
<script src="../js/echarts.min.js"></script>
<!--所有页面的通用脚本-->
<script src="../js/scripts.js"></script>

<script>

    $(function(){

        //1、把div渲染成echarts组件--------------------------通过一个初始化操作完成
        var echart = echarts.init($("#mydiv")[0]);

        //2、设置图表的相关属性
        var option={
            title:{
                text:"2019年度XX公司盈利表",
                x:"center",
                subtext:"统计人：张三丰"
            },

            toolbox: {//工具盒
                show : true,
                feature : {
                    dataView : {show: true, readOnly: false},
                    magicType : {show: true, type: ['line', 'bar']},
                    restore : {show: true},
                    saveAsImage : {show: true}
                }
            },
            tooltip:{ //鼠标悬停时，默认显示对应的名称与数值
            },
            xAxis:{//x轴
                type:'category',
                data:["一月","二月","三月","四月","五月","六月","七月","八月","九月","十月","十一月","十二月"]
            },
            yAxis:{
                type: 'value'
			},//y轴
            series:[{ //用于指定，图形具体要显示数据
                name:"XX公司2019年账务表",//图形的名称
                type:"line",//图表的类型
                data:[-3056,10240,12508,-2035,5076,6553,3238]//要显示的数据
            }]
        };

        //3、把这些属性，关联到初始化以后的echarts组件
        echart.setOption(option);

    });
</script>
<script type="text/javascript">
    layui.use(['layer'], function () {
        var layer = layui.layer;
    });
</script>
</body>
</html>
