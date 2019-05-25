var parentTitle = "桌面";
var title = "首页";
var url = "";
var headhtml="";
/**
 *创建wensocket连接
 * @type {null}
 */
var websocket = null;
if ('WebSocket' in window) {
    websocket = new WebSocket("ws://localhost:8080/websocket");
}
else if ('MozWebSocket' in window) {
    websocket = new MozWebSocket("ws://localhost:8080/websocket");
}
else {
    websocket = new SockJS("http://localhost:8080/websocket");
}
//连接成功建立的回调方法
websocket.onopen = function () {
}
//连接发生错误的回调方法
websocket.onerror = function () {
};
/**
 * 退出登录
 */
$("#exit").click(function () {
    websocket.close();
    location.href = "logout.do";
});

/**
 * 消息提示
 */
/*layx.notice({
    title : '成功提示',
    type : 'success',
    message : '我是消息提示消息提示消息提示消息提示'
});*/
websocket.onmessage = function (event) {
    var msg=JSON.parse(event.data);
    layx.notice({
        title : msg.userinfo.userName,
        message : msg.message
    });
}

layui.use(['laydate', 'layer'], function () {
    var laydate = layui.laydate, layer = layui.layer;
    $(".webchat").click(function () {
        layer.open({
            area: ['862px', '625px'],
            closeBtn: 1,
            title: "微聊 —— 畅享轻聊办公",
            type: 2,
            shade: 0,
            resize: false,
            offset: '55px',
            content: 'page/webchat/webchat.jsp',
            id: "webchat",
            success: function (layero, index) {
                /**
                 * websocket聊天室
                 */
                var body = layer.getChildFrame('body', index);
                var iframeWin = window[layero.find('iframe')[0]['name']]; //得到iframe页的窗口对象，执行iframe页的方法：iframeWin.method();
                //发送消息
                body.find('#send').click(function () {
                    var talk = body.find('#talkbox');
                    var inputText = body.find('.text').val();
                    var office_text=body.find('.office_text');
                    if (inputText == '') {
                        return false;
                    } else {
                        websocket.send(inputText);
                        body.find('.text').val("");
                        //接收到消息的回调方法
                        websocket.onmessage = function (event) {
                            var chat=body.find("#chatbox");
                            var office_text=body.find("#office_text");
                            $(chat).append(iframeWin.replyme(iframeWin.AnalyticEmotion(JSON.parse(event.data).message)));
                            $(office_text).scrollTop($(office_text)[0].scrollHeight);
                            talk.style.background = "#fff";
                            body.find('.text')[0].style.background = "#fff";
                        }
                    };
                });
            }
        });
    });
    /**
     * 日历监听
     */
    laydate.render({
        elem: '#test2',
        position: 'static',
        change: function (value, date) { //监听日期被切换
            lay('#testView').jsp(value);
        },
        showBottom: false,
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
/**
 * 动态加载左侧导航
 * */
$.post("loadnav.do",function (data) {
    sessionStorage.setItem("loginMan",JSON.stringify(data));
    $(".headimg").attr("src","images/head/"+data.ImagePath1);
    $(".loginname").text(data.userName);
    var lihtml='';
    var listhtml='';
    $.each(data.mainMenus,function (index,mainmenu) {
        if (mainmenu.Url!=undefined){
            lihtml+=' <li class="menu-one"><a href="#" id="'+mainmenu.Url+'"><i class="fa '+mainmenu.Icon+'"></i>'
                +'<span>'+mainmenu.Name_CHS+'</span></a></li>';
        }else {
            listhtml+='<li class="menu-list"><a href=""><i\n' +
            '                        class="fa fa-file-text"></i> <span>'+mainmenu.Name_CHS+'</span></a>\n' +
            '                    <ul class="sub-menu-list">\n';
            $.each(data.childMenus,function(index,childmenu){
                if (mainmenu.LevelID==childmenu.ParentID){
                    listhtml+='<li><a href="javascript:;" id="'+childmenu.Url+'">'+childmenu.Name_CHS+'</a></li>';
                }
            });
            listhtml+= '</ul></li>';
        }
    })
    if (listhtml!=''){
        $(".nav-stacked").append(listhtml);
    }
    if (lihtml!=''){
        $(".nav-stacked").append(lihtml);
    }
    $.getScript("js/scripts.js");  //重新载入js文件
    /**
     * 页面切换
     * */
    $(".menu-one").each(function () {
        $(this).find("a").click(function () {
            title = $(this).find("span").text();
            parentTitle = $(this).find("span").text();
            url = $(this).attr("id");
            pagechange();
        })
    });
    $(".menu-list").each(function () {
        $(this).find("a").each(function (index) {
            $(this).click(function () {
                if (index === 0) {
                    parentTitle = $(this).text();
                } else {
                    title = $(this).text();
                    url = $(this).attr("id");
                    pagechange();
                }
            })
        })
    });
    function pagechange() {
        headhtml = '<h3 class="pull-right"  style="margin-top: -5px;">' + title + '</h3>\n' +
            '<a href="#" class="returnpage hide"><span style="color: #4db14d; margin-right: 20px;" class="pull-right">\n' +
            '     返回上一级 <i class="fa fa-share"></i>\n' +
            '</span></a>' +
            '<ul class="breadcrumb">\n' +
            '<li><a href="index.jsp"><i class="fa fa-home"> </i> 首页</a></li>\n' +
            '<li class="active">' + parentTitle + '</li>\n' +
            '</ul>';
        $(".page-heading").html(headhtml);
        if (url == "") {
            location.href = "index.jsp";
            return false;
        }
        $("#frame").attr("src", "page/" + url + ".jsp");
    }
},"json");
/**
 * 打开新的子页面
 */
function childPagechange(){
    var n=arguments.length;
        for (var i = 0; i < n ; i++) {
            $(".breadcrumb").append('<li class="active">'+arguments[i]+'</li>');
        }
        $(".returnpage").click(function () {
            $(".page-heading").html(headhtml);
            $("#frame").attr("src", "page/" + url + ".jsp");
        });
        $(".returnpage").removeAttr("class","hide");
}

