layui.use(['laydate', 'layer'], function () {
    var laydate = layui.laydate, layer = layui.layer;

    $.post('../getRic.do',{}, function(str) {

        laydate.render({

            elem: '#test2',
            position: 'static',
            change: function (value, date) { //监听日期被切换
                lay('#testView').jsp(value);
            },
            showBottom: true,
            theme: '',
            mark: {

                '00-00-1': '<i class="fa fa-flag-o" style="color:red;"></i>' //每个月10号

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


});