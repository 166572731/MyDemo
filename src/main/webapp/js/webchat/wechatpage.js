//底部扩展键
$(function() {
    $('#doc-dropdown-js').dropdown({justify: '#doc-dropdown-justify-js'});
});

$(function(){
	$(".office_text").panel({iWheelStep:32});
});

//tab for three icon
$(document).ready(function(){
  	$(".sidestrip_icon a").click(function(){
      $(".sidestrip_icon a").eq($(this).index()).addClass("cur").siblings().removeClass('cur');
	  $(".middle").hide().eq($(this).index()).show();
    });
});

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


//三图标
window.onload = function() {
    function a() {
        var si1 = document.getElementById('si_1');
        var si2 = document.getElementById('si_2');
        var si3 = document.getElementById('si_3');
        si1.onclick = function() {
            si1.style.background = "url(../../images/icon/head_2_1.png) no-repeat"
            si2.style.background = "";
            si3.style.background = "";
        };
        si2.onclick = function() {
            si2.style.background = "url(../../images/icon/head_3_1.png) no-repeat"
            si1.style.background = "";
            si3.style.background = "";
        };
        si3.onclick = function() {
            si3.style.background = "url(../../images/icon/head_4_1.png) no-repeat"
            si1.style.background = "";
            si2.style.background = "";
        };
    };
    a();
};
// 绑定表情
$('.face-icon').SinaEmotion($('.text'));

function replyme(content) {
    html = '<li class="me"><img src="' + '../../images/own_head.jpg' + '"><span>' + content + '</span></li>';
    return html;
}
function replyother(content) {
    html = '<li class="other"><img src="' + '../../images/own_head.jpg' + '"><span>' + content + '</span></li>';
    return html;
}