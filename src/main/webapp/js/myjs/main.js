layui.use(['laydate', 'layer'], function () {
    var laydate = layui.laydate, layer = layui.layer;

    laydate.render({
        elem: '#test2',
        position: 'static',
        change: function (value, date) { //监听日期被切换
            lay('#testView').jsp(value);
        },
        showBottom: true,
        theme: '',
        mark: {
            '0-10-14': '生日',
            '0-12-31': '跨年' //每年12月31日
            ,
            '0-0-10': '<i class="fa fa-flag-o" style="color:red;"></i>' //每个月10号
            ,
            '2017-8-15': '' //具体日期
            ,
            '2017-8-20': '预发' //如果为空字符，则默认显示数字+徽章
            ,
            '2017-8-21': '发布'
        },
        done: function (value, date) {
            if (date.year === 2019
                && date.month === 5
                && date.date === 15) { //点击2017年8月15日，弹出提示语
                alert('中国人民抗日战争胜利72周年');
            }
        }
    });


});