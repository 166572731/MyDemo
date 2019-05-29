//input box focus
$(document).ready(function(){
  	$("#input_box").focus(function(){
       $('.windows_input').css('background','#fff');
       $('#input_box').css('background','#fff');
   });
    $("#input_box").blur(function(){
       $('.windows_input').css('background','');
       $('#input_box').css('background','');
    });
});

var loginMan=JSON.parse(sessionStorage.getItem("loginMan"));
$(".own_name span").text(loginMan.userName);
$(".own_head").css({"background":"url(../../images/head/"+loginMan.ImagePath1+")"});
if(loginMan.Sex==0){
    $(".own_name img").attr("src","../../images/icon/head.png");
}else{
    $(".own_name img").attr("src","../../images/icon/nv.png");
}
$(".own_numb").text("员工编号 : "+loginMan.Number);
$("#headImg").attr("src","../../images/head/"+loginMan.ImagePath1);

//三图标
window.onload = function() {
    function a() {
        var si1 = document.getElementById('si_1');
        var si2 = document.getElementById('si_2');
        var si3 = document.getElementById('si_3');
        var si4 = document.getElementById('si_4');
        //消息列表
        si1.onclick = function() {
            $(si1).css({"color":"#00BA17"});
            $(si2).css({"color":"#C9C9C9"});
            $(si3).css({"color":"#C9C9C9"});
            $(si4).css({"color":"#C9C9C9"});
            $(".si_1").addClass("layui-show");
            $(".si_2").removeClass("layui-show");
            $(".si_3").removeClass("layui-show");
            $(".si_4").removeClass("layui-show");
        };
        //好友列表
        si2.onclick = function() {
            $(si1).css({"color":"#C9C9C9"});
            $(si2).css({"color":"#00BA17"});
            $(si3).css({"color":"#C9C9C9"});
            $(si4).css({"color":"#C9C9C9"});
            $(".si_1").removeClass("layui-show");
            $(".si_2").addClass("layui-show");
            $(".si_3").removeClass("layui-show");
            $(".si_4").removeClass("layui-show");
            $.post("../../loadfriend.do",function (data) {
                var friendhtml="";
                $.each(data.departments,function (index,department) {
                    var newtitle='';
                    $.each(data.users,function (index,user) {
                        if (user.fk_Department==department){
                            if (newtitle==''){
                                newtitle='<li>\n' +
                                    '        <p>'+user.DepartmentName+'</p>\n';
                                friendhtml+=newtitle;
                            }
                            friendhtml+='<div class="friends_box">\n' +
                                '            <div class="user_head">\n' +
                                '                <img src="../../images/head/'+user.ImagePath1+'" />\n' +
                                '            </div>\n' +
                                '            <div class="friends_text">\n' +
                                '                <p class="user_name">'+user.userName+'</p>\n' +
                                '            </div>\n' +
                                '        </div>\n';
                        }
                    })
                    friendhtml+='</li>';
                })
                $(".friends_list li").html(friendhtml);
            },"json");

        };
        //群组列表
        si3.onclick = function() {
            $(si1).css({"color":"#C9C9C9"});
            $(si2).css({"color":"#C9C9C9"});
            $(si3).css({"color":"#00BA17"});
            $(si4).css({"color":"#C9C9C9"});
            $(".si_1").removeClass("layui-show");
            $(".si_2").removeClass("layui-show");
            $(".si_3").addClass("layui-show");
            $(".si_4").removeClass("layui-show");
            $.post("../../loadgroup.do",function (data) {
                var grouphtml="";
                $.each(data,function (index,group) {
                    grouphtml+='<li class="group" id="'+group.pk_group+'">\n' +
                        '        <div class="friends_box">\n' +
                        '            <div class="user_head">\n' +
                        '                <img src="../../images/head/'+group.headUrl+'" />\n'+
                        '            </div>\n' +
                        '            <div class="user_text">\n' +
                        '                <p class="user_name">'+group.groupName+'</p>\n' +
                        '                <p class="user_message">'+group.conmment+'</p>\n' +
                        '            </div>\n' +
                        '        </div>\n'+
                        '       </li>';
                })
                $(".group_list li").html(grouphtml);
                $(".group").each(function () {
                    $(this).click(function () {
                        $.post("../../loadGroupUser.do",{"fk_group":$(this).attr("id")},function (data) {

                        });
                    });
                })
            },"json");
        };
        //我的收藏
        si4.onclick = function() {
            $(si1).css({"color":"#C9C9C9"});
            $(si2).css({"color":"#C9C9C9"});
            $(si3).css({"color":"#C9C9C9"});
            $(si4).css({"color":"#00BA17"});
            $(".si_1").removeClass("layui-show");
            $(".si_2").removeClass("layui-show");
            $(".si_3").removeClass("layui-show");
            $(".si_4").addClass("layui-show");
        };
    };
    a();
};
// 绑定表情
$('.face-icon').SinaEmotion($('.text'));

//消息发送（自己）
function replyme(content) {
    html = '<li class="me"><img src="' + '../../images/own_head.jpg' + '"><span>' + content + '</span></li>';
    return html;
}
//消息发送（他人）
function replyother(content) {
    html = '<li class="other"><img src="' + '../../images/own_head.jpg' + '"><span>' + content + '</span></li>';
    return html;
}


