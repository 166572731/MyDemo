var parentTitle = "桌面";
var title = "首页";
var url = "";
var headhtml = "";
var loginMan = JSON.parse(sessionStorage.getItem("loginMan"));
//格式化当前时间
Date.prototype.format = function (fmt) {
    var o = {
        "M+": this.getMonth() + 1,                 //月份
        "d+": this.getDate(),                    //日
        "h+": this.getHours(),                   //小时
        "m+": this.getMinutes(),                 //分
        "s+": this.getSeconds(),                 //秒
        "q+": Math.floor((this.getMonth() + 3) / 3), //季度
        "S": this.getMilliseconds()             //毫秒
    };
    if (/(y+)/.test(fmt)) {
        fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    }
    for (var k in o) {
        if (new RegExp("(" + k + ")").test(fmt)) {
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
        }
    }
    return fmt;
}
var newtime = new Date().format("yyyy-MM-dd hh:mm:ss");


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
websocket.onopen = function () {}
//连接发生错误的回调方法
websocket.onerror = function () {};
/**
 * 退出登录
 */
$(".exit").click(function () {
    websocket.close();
    location.href = "logout.do";
});

layui.use(['laydate', 'layer'], function () {
    var laydate = layui.laydate, layer = layui.layer;
    $(".webchat").click(function () {
        layer.open({
            area: ['862px', '583px'],
            closeBtn: 0,
            title: false,
            type: 2,
            shade: 0,
            resize: false,
            offset: '70px',
            content: 'page/webchat/webchat.jsp',
            id: "webchat",
            success: function (layero, index) {
                $(".webchat").addClass("newwebchat");
                $(".newwebchat").removeClass("webchat");
                $(".newwebchat").click(function () {
                    body.find('#talkUser').removeClass("hideinfo");
                    body.find('#talkUser').addClass("showinfo");
                    layer.style(index, {
                        top: '70px',
                    });
                });
                /**
                 * websocket聊天室
                 */
                var body = layer.getChildFrame('body', index);
                var iframeWin = window[layero.find('iframe')[0]['name']]; //得到iframe页的窗口对象，执行iframe页的方法：iframeWin.method();
                var talk = body.find('#talkbox');
                var office_text = body.find('#office_text');
                body.find(".windows_top").click(function () {
                    body.find('#talkUser').removeClass("showinfo");
                    body.find('#talkUser').addClass("hideinfo");
                    layer.style(index, {
                        top: '-1000px'
                    });
                })
                //发送消息
                body.find('#send').click(function () {
                    var to = body.find('#talkUser').attr("value");
                    if (to == '' || to == undefined) {
                        parent.layer.msg("请指定发送好友");
                        return false;
                    } else if (to == loginMan.pk_user) {
                        parent.layer.msg("请指定除自己以外的好友哦");
                        return false;
                    }
                    var inputText = body.find('.text').val();
                    if (inputText == '') {
                        return false;
                    } else {
                        var msg = {
                            "message": inputText,
                            "to": to,
                            "from": {
                                "pk_user": loginMan.pk_user,
                                "headimg": loginMan.ImagePath1,
                                "userName": loginMan.userName,
                                "isgroup": body.find('#talkUser').text() + to
                            },
                            "time": newtime
                        };
                        $.post("addtalk.do", {"talkinfo": JSON.stringify(msg)}, function (data) {
                            if (data > 0) {
                                if (msg.to.indexOf("group") != -1) {
                                    var groupID = msg.to.substring(5);
                                    var userIDstring = '';
                                    $.post("loadGroupUser.do", {"fk_group": groupID}, function (data) {
                                        $.each(data, function (index, user) {
                                            userIDstring += user.fk_user + ",";
                                        })
                                        msg["to"] = userIDstring;
                                        websocket.send(JSON.stringify(msg));
                                    });
                                } else {
                                    websocket.send(JSON.stringify(msg));
                                }
                            }
                        }, "text");
                        body.find('.text').val("");
                    }
                    ;
                });
                //接收到消息的回调方法
                websocket.onmessage = function (event) {
                    var data = JSON.parse(event.data);
                    var chat = body.find("#chatbox");
                    var office_text = body.find(".office_text");
                    if (data.from.pk_user == loginMan.pk_user) {
                        if (data.from.isgroup.indexOf("group") == -1) {
                            iframeWin.addtalkfriend(JSON.parse(event.data));
                        } else {
                            iframeWin.addtalkgroup(JSON.parse(event.data));
                        }
                        $(chat).append(iframeWin.replyme(iframeWin.AnalyticEmotion(data)));
                    } else {
                        if (data.from.isgroup.indexOf("group") != -1) {
                            iframeWin.addtalkgroup(JSON.parse(event.data));
                            var groupName = data.from.isgroup.substring(0, data.from.isgroup.indexOf("group"));
                            var groupID = data.from.isgroup.substring(data.from.isgroup.indexOf("group"));
                            if (body.find('#talkUser').attr("class") == "hideinfo" || body.find('#talkUser').attr("value") != groupID) {
                                layx.notice({
                                    title: "[群消息] " + groupName,
                                    message: data.message
                                });
                            } else {
                                $(chat).append(iframeWin.replyother(iframeWin.AnalyticEmotion(data)));
                            }
                        } else {
                            iframeWin.addtalkfriend(JSON.parse(event.data));
                            if (body.find('#talkUser').attr("class") == "hideinfo" || body.find('#talkUser').attr("value") != data.from.pk_user) {
                                layx.notice({
                                    title: data.from.userName,
                                    message: data.message
                                });
                            } else {
                                $(chat).append(iframeWin.replyother(iframeWin.AnalyticEmotion(data)));
                            }
                        }
                    }
                    iframeWin.updatescroll();
                    $(talk).css({"background-color": "#fff"});
                    body.find('.text')[0].style.background = "#fff";
                }
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
$.post("loadnav.do", function (data) {
    //保存登录用户
    sessionStorage.setItem("loginMan", JSON.stringify(data));
    $(".headimg").attr("src", "images/head/" + data.ImagePath1);
    $(".loginname").text(data.userName);
    var lihtml = '';
    var listhtml = '';
    $.each(data.mainMenus, function (index, mainmenu) {
        if (mainmenu.Url != undefined) {
            lihtml += ' <li class="menu-one"><a href="#" id="' + mainmenu.Url + '"><i class="fa ' + mainmenu.Icon + '"></i>'
                + '<span>' + mainmenu.Name_CHS + '</span></a></li>';
        } else {
            listhtml += '<li class="menu-list"><a href=""><i\n' +
                '                        class="fa fa-file-text"></i> <span>' + mainmenu.Name_CHS + '</span></a>\n' +
                '                    <ul class="sub-menu-list">\n';
            $.each(data.childMenus, function (index, childmenu) {
                if (mainmenu.LevelID == childmenu.ParentID) {
                    listhtml += '<li><a href="javascript:;" id="' + childmenu.Url + '">' + childmenu.Name_CHS + '</a></li>';
                }
            });
            listhtml += '</ul></li>';
        }
    })
    if (listhtml != '') {
        $(".nav-stacked").append(listhtml);
    }
    if (lihtml != '') {
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
}, "json");

/**
 * 打开新的子页面
 */
function childPagechange() {
    var n = arguments.length;
    for (var i = 0; i < n; i++) {
        $(".breadcrumb").append('<li class="active">' + arguments[i] + '</li>');
    }
    $(".returnpage").click(function () {
        $(".page-heading").html(headhtml);
        $("#frame").attr("src", "page/" + url + ".jsp");
    });
    $(".returnpage").removeAttr("class", "hide");
}