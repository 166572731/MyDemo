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
            $(".si_4").removeClass("layui-show");
            $(".talk_list li").each(function (index) {
                var li=$(this);
                $(li).click(function () {
                    $("#talkUser").attr("value",$(li).attr("value"));
                    $("#talkUser").text($(li).find(".user_name").text());
                });
            })
        }
        if ($(si).attr("id") == 'si_2') {
            //好友列表
            $(".si_1").removeClass("layui-show");
            $(".si_2").addClass("layui-show");
            $(".si_3").removeClass("layui-show");
            $(".si_4").removeClass("layui-show");
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
                            friendhtml += '<div class="friends_box">\n' +
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
        }
        if ($(si).attr("id") == 'si_3') {
            //群组列表
            $(".si_1").removeClass("layui-show");
            $(".si_2").removeClass("layui-show");
            $(".si_3").addClass("layui-show");
            $(".si_4").removeClass("layui-show");
            //加载用户所有的群聊
            $.post("../../loadgroup.do", function (data) {
                var grouphtml = '<ul class="group_list">';
                $.each(data, function (index, group) {
                    var groupString = JSON.stringify(group);
                    grouphtml += '<li id="' + group.pk_group + '">\n' +
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
                //点击群组聊天并获取群组成员
                $(".group_list li").each(function () {
                    $(this).click(function () {
                        var groupString = $(this).find("#groupString").text();
                        var group = JSON.parse(groupString);
                        var msg = "暂无消息";
                        var userIDstring = '';
                        $.post("../../loadGroupUser.do", {"fk_group": group.pk_group}, function (data) {
                            $.each(data, function (index, user) {
                                userIDstring += user.fk_user + ",";
                            })
                            $("#talkUser").attr("value", userIDstring);
                            $("#talkUser").text(group.groupName);
                            /*if ($(".talk_list #group" + group.pk_group).attr("value") == undefined) {
                                addtalkList(group, msg, userIDstring);
                            } else {
                                var li = $(".talk_list #group" + group.pk_group).clone();
                                $(".talk_list #group" + group.pk_group).remove();
                                $(".talk_list").prepend(li);
                            }*/
                        });
                    });
                })
            }, "json");
        }
        ;
        //我的收藏
        if ($(si).attr("id") == 'si_4') {
            $(".si_1").removeClass("layui-show");
            $(".si_2").removeClass("layui-show");
            $(".si_3").removeClass("layui-show");
            $(".si_4").addClass("layui-show");
        }
    });
})

//增加群聊聊天列表
function addtalkList(talkinfo, msg, talkID) {
    var talkhtml = '';
    if (talkinfo.pk_group == undefined) {
        talkhtml = '<li id="friend' + talkinfo.pk_user + '" value="' + talkID + '">\n' +
            '    <div class="user_head">\n' +
            '        <img src="../../images/head/' + talkinfo.ImagePath1 + '" />\n' +
            '        </div>\n' +
            '        <div class="user_text">\n' +
            '        <p class="user_name">' + talkinfo.userName + '</p>\n' +
            '        <p class="user_message">' + msg + '</p>\n' +
            '        </div>\n' +
            '        </li>';
    } else {
        talkhtml = '<li id="group' + talkinfo.pk_group + '" value="' + talkID + '">\n' +
            '    <div class="user_head">\n' +
            '        <img src="../../images/head/' + talkinfo.headUrl + '" />\n' +
            '        </div>\n' +
            '        <div class="user_text">\n' +
            '        <p class="user_name">' + talkinfo.groupName + '</p>\n' +
            '        <p class="user_message">' + msg + '</p>\n' +
            '        </div>\n' +
            '        </li>';
    }
    if (talkhtml != '') {
        $(".talk_list").prepend(talkhtml);
    }
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


