//input box focus
$(document).ready(function () {
    $("#input_box").focus(function () {
        $('.windows_input').css('background', '#fff');
        $('#input_box').css('background', '#fff');
    });
    $("#input_box").blur(function () {
        $('.windows_input').css('background', '');
        $('#input_box').css('background', '');
    });
});

var loginMan = JSON.parse(sessionStorage.getItem("loginMan"));
$(".own_name span").text(loginMan.userName);
$(".own_head").css({"background": "url(../../images/head/" + loginMan.ImagePath1 + ")"});
if (loginMan.Sex == 0) {
    $(".own_name img").attr("src", "../../images/icon/head.png");
} else {
    $(".own_name img").attr("src", "../../images/icon/nv.png");
}
$(".own_numb").text("员工编号 : " + loginMan.Number);
$("#headImg").attr("src", "../../images/head/" + loginMan.ImagePath1);
function talklist(){
    $(".talk_list li").each(function (index) {
        var li=$(this);
        $(this).css({"background-color":"#E5E4E4"});
        if ($(this).attr("value")==$('#talkUser').attr("value")){
            $(li).css({"background-color":"#d6d1d1"});
        }
        $(li).click(function () {
            var aaa=$(this);
            $(".talk_list li").each(function (index) {
                $(this).css({"background-color":"#E5E4E4"});
            });
            $(aaa).css({"background-color":"#d6d1d1"});
            $("#chatbox").empty();
            $("#talkUser").attr("value",$(li).attr("value"));
            $("#talkUser").text($(li).find(".user_name").text());
            $.post("../../loadTalk.do",{"talk_from":loginMan.pk_user,"talk_to":$(li).attr("value")},function (data) {
                console.log(JSON.stringify(data));
                $.each(data,function (index,talk) {
                    var msg={
                        "message":talk.talk_content,
                        "to":talk.talk_to,
                        "from":JSON.parse(talk.talk_frominfo),
                        "time":talk.talk_time
                    };
                    if (talk.talk_from==loginMan.pk_user){
                        $("#chatbox").append(replyme(AnalyticEmotion(msg)));
                    }else{
                        $("#chatbox").append(replyother(AnalyticEmotion(msg)));
                    }
                });
                updatescroll();
            },"json");
        });
    })
}

$.post("../../loadfriend.do", function (data) {
    var friendhtml = '<ul class="friends_list">';
    $.each(data.departments, function (index, department) {
        var newtitle = '';
        $.each(data.users, function (index, user) {
            if (user.fk_Department == department) {
                if (newtitle == '') {
                    newtitle = '<li>\n' +
                        '        <p>' + user.DepartmentName + '</p>\n';
                    friendhtml += newtitle;
                }
                friendhtml += '<div class="friends_box" id="friend'+user.pk_user+'">\n' +
                    '<span class="layui-hide" id="friendString">' + JSON.stringify(user) + '</span>' +
                    '            <div class="user_head">\n' +
                    '                <img src="../../images/head/' + user.ImagePath1 + '" />\n' +
                    '            </div>\n' +
                    '            <div class="friends_text">\n' +
                    '                <p class="user_name">' + user.userName + '</p>\n' +
                    '            </div>\n' +
                    '        </div>\n';
            }
        })
        friendhtml += '</li>';
    })
    $(".friends_list").html(friendhtml + '</ul>');
    //点击好友聊天并获取个人信息
    $(".friends_box").each(function () {
        $(this).click(function () {
            var friendString = $(this).find("#friendString").text();
            var friend = JSON.parse(friendString);
            if (friend.pk_user!=loginMan.pk_user){
                if (friend.pk_user!=$("#talkUser").attr("value")){
                    $("#chatbox").empty();
                    $("#talkUser").attr("value", friend.pk_user);
                    $("#talkUser").text(friend.userName);
                    $.post("../../loadTalk.do",{"talk_from":loginMan.pk_user,"talk_to":friend.pk_user},function (data) {
                        console.log(JSON.stringify(data));
                        $("#chatbox").empty();
                        $.each(data,function (index,talk) {
                            var msg={
                                "message":talk.talk_content,
                                "to":talk.talk_to,
                                "from":JSON.parse(talk.talk_frominfo),
                                "time":talk.talk_time
                            };
                            if (talk.talk_from==loginMan.pk_user){
                                $("#chatbox").append(replyme(AnalyticEmotion(msg)));
                            }else{
                                $("#chatbox").append(replyother(AnalyticEmotion(msg)));
                            }
                        });
                        updatescroll();
                    },"json");
                }
            }else{
                $("#talkUser").attr("value","");
            }
        });
    })
}, "json");
//三图标
$(".sidestrip_icon a").each(function () {
    $(this).click(function () {
        var si = $(this).find("i");
        $(".sidestrip_icon a i").each(function () {
            $(this).css({"color": "#C9C9C9"});
        })
        $(si).css({"color": "#00BA17"});
        if ($(si).attr("id") == 'si_1') {
            //消息列表
            $(".si_1").addClass("layui-show");
            $(".si_2").removeClass("layui-show");
            $(".si_3").removeClass("layui-show");
            talklist();
        }
        if ($(si).attr("id") == 'si_2') {
            //好友列表
            $(".si_1").removeClass("layui-show");
            $(".si_2").addClass("layui-show");
            $(".si_3").removeClass("layui-show");
        }
        if ($(si).attr("id") == 'si_3') {
            //群组列表
            $(".si_1").removeClass("layui-show");
            $(".si_2").removeClass("layui-show");
            $(".si_3").addClass("layui-show");
            //加载用户所有的群聊
            $.post("../../loadgroup.do", function (data) {
                var grouphtml = '<ul class="group_list">';
                grouall=data;
                $.each(data, function (index, group) {
                    var groupString = JSON.stringify(group);
                    grouphtml += '<li id="group' + group.pk_group + '">\n' +
                        //保存群信息
                        '<span class="layui-hide" id="groupString">' + groupString + '</span>' +
                        '        <div class="friends_box">\n' +
                        '            <div class="user_head">\n' +
                        '                <img src="../../images/head/' + group.headUrl + '" />\n' +
                        '            </div>\n' +
                        '            <div class="user_text">\n' +
                        '                <p class="user_name">' + group.groupName + '</p>\n' +
                        '                <p class="user_message">' + group.conmment + '</p>\n' +
                        '            </div>\n' +
                        '        </div>\n' +
                        '       </li>';
                });
                $(".group_list").html(grouphtml + '</ul>');
                //点击群组聊天并获取群组聊天记录
                $(".group_list li").each(function () {
                    $(this).click(function () {
                        var groupString = $(this).find("#groupString").text();
                        var group = JSON.parse(groupString);
                        $("#chatbox").empty();
                        $("#talkUser").attr("value", "group"+group.pk_group);
                        $("#talkUser").text(group.groupName);
                        $.post("../../loadTalk.do",{"talk_from":loginMan.pk_user,"talk_to":"group"+group.pk_group},function (data) {
                            console.log(JSON.stringify(data));
                            $.each(data,function (index,talk) {
                                var msg={
                                    "message":talk.talk_content,
                                    "to":talk.talk_to,
                                    "from":JSON.parse(talk.talk_frominfo),
                                    "time":talk.talk_time
                                };
                                if (talk.talk_from==loginMan.pk_user){
                                    $("#chatbox").append(replyme(AnalyticEmotion(msg)));
                                }else{
                                    $("#chatbox").append(replyother(AnalyticEmotion(msg)));
                                }
                            });
                            updatescroll();
                        },"json");
                    });
                })
            }, "json");
        };
    });
})

//增加群聊聊天列表
function addtalkgroup(data) {
    var groupName=data.from.isgroup.substring(0,data.from.isgroup.indexOf("group"));
    var groupID=data.from.isgroup.substring(data.from.isgroup.indexOf("group"));
    var talkhtml = '';
    var img= $(".group_list #"+groupID).find("img").attr("src");
    if ($(".talk_list #"+groupID).attr("id")!=undefined){
        $(".talk_list #"+groupID).remove();
    }
    talkhtml = '<li id="'+groupID+'" value="' + groupID + '">\n' +
        '    <div class="user_head">\n' +
        '        <img src="' + img + '" />\n' +
        '        </div>\n' +
        '        <div class="user_text">\n' +
        '        <p class="user_name">' + groupName + '</p>\n' +
        '        <p class="user_message">' + data.message + '</p>\n' +
        '        </div>\n' +
        '        </li>';
    $(".talk_list").prepend(talkhtml);
    talklist();
};
//增加好友聊天列表
function addtalkfriend(data) {
    var talkhtml = '';
    if (loginMan.pk_user==data.to){
        if ($(".talk_list #"+data.from.pk_user).attr("id")!=undefined){
            $(".talk_list #"+data.from.pk_user).remove();
        }
        talkhtml = '<li id="' + data.from.pk_user + '" value="' + data.from.pk_user + '">\n' +
            '    <div class="user_head">\n' +
            '        <img src="../../images/head/' + data.from.headimg + '" />\n' +
            '        </div>\n' +
            '        <div class="user_text">\n' +
            '        <p class="user_name">' + data.from.userName + '</p>\n' +
            '        <p class="user_message">' + data.message + '</p>\n' +
            '        </div>\n' +
            '        </li>';
    } else {
        if ($(".talk_list #"+data.to).attr("id")!=undefined){
            $(".talk_list #"+data.to).remove();
        }
        var friendString = $(".friends_list #friend"+data.to).find("#friendString").text();
        var friend = JSON.parse(friendString);
        talkhtml = '<li id="' + data.to + '" value="' + data.to + '">\n' +
            '    <div class="user_head">\n' +
            '        <img src="../../images/head/' + friend.ImagePath1 + '" />\n' +
            '        </div>\n' +
            '        <div class="user_text">\n' +
            '        <p class="user_name">' + friend.userName + '</p>\n' +
            '        <p class="user_message">' + data.message + '</p>\n' +
            '        </div>\n' +
            '        </li>';
    }
    $(".talk_list").prepend(talkhtml);
    talklist();
};

// 绑定表情
$('.face-icon').SinaEmotion($('.text'));

//消息发送（自己）
function replyme(content) {
    html = '<li class="me"><img src="../../images/head/'+content.from.headimg+'"><span>' + content.message + '</span></li>';
    console.log(html);
    return html;
}

//消息发送（他人）
function replyother(content) {
    html = '<li class="other"><img src="../../images/head/'+content.from.headimg+'"><span>' + content.message + '</span></li>';
    return html;
}

function updatescroll() {
    $(office_text).scrollTop($("#office_text")[0].scrollHeight);
}


