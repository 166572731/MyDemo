<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>基于meiziui的仿微信pc端</title>
	<link href="../../layui/css/layui.css" rel="stylesheet"/>
	<link rel="stylesheet" type="text/css" href="../../js/webchat/sinaFaceAndEffec.css" />
	<link rel="stylesheet" href="../../js/webchat/amazeui.min.css" />
	<link rel="stylesheet" href="../../js/webchat/main.css" />
</head>
<body>
	<div class="wechat">
		<div class="sidestrip">
			<div class="am-dropdown" data-am-dropdown>
				<!--头像插件-->
				<div class="own_head am-dropdown-toggle"></div>
				<div class="am-dropdown-content">
					<div class="own_head_top">
						<div class="own_head_top_text">
							<p class="own_name">
								<span></span><img src="../../images/icon/head.png" alt="" />
							</p>
							<p class="own_numb"></p>
						</div>
						<img id="headImg" src="" alt="" />
					</div>
				</div>
			</div>
			<!--三图标-->
			<div class="sidestrip_icon">
				<a><i id="si_1" class="layui-icon" style="color: #00BA17;">&#xe63a;</i></a>
				<a><i id="si_2" class="layui-icon">&#xe612;</i></a>
				<a><i id="si_3" class="layui-icon" style="font-size: 22px;margin-left: -3px;">&#xe613;</i></a>
				<a><i id="si_4" class="layui-icon">&#xe857;</i></a>
			</div>
		</div>

		<!--聊天列表-->
		<div class="middle layui-show si_1">
			<div class="wx_search">
				<input type="text" placeholder="搜索" />
				<button>+</button>
			</div>
			<div class="office_text">
				<ul class="user_list">
					<li>
						<div class="user_head">
							<img src="../../images/head/3.jpg" />
						</div>
						<div class="user_text">
							<p class="user_name">十里老街秋名山车神车队</p>
							<p class="user_message">乞讨两块交个话费</p>
						</div>
					</li>
				</ul>
			</div>
		</div>

		<!--好友列表-->
		<div class="middle si_2">
			<div class="wx_search">
				<input type="text" placeholder="搜索" />
				<button>+</button>
			</div>
			<div class="office_text">
				<ul class="friends_list"><li></li></ul>
			</div>
		</div>

		<!--群聊列表-->
		<div class="middle si_3">
			<div class="wx_search">
				<input type="text" placeholder="搜索" />
				<button>+</button>
			</div>
			<div class="office_text">
				<ul class="group_list"><li></li></ul>
			</div>
		</div>

		<!--程序列表-->
		<div class="middle si_4">
			<div class="wx_search">
				<input type="text" placeholder="搜索收藏内容" />
				<button>+</button>
			</div>
			<div class="office_text">
				<ul class="icon_list">
					<li class="icon_active">
						<div class="icon">
							<img src="../../images/icon/icon.png" alt="" />
						</div> <span>全部收藏</span>
					</li>
					<li>
						<div class="icon">
							<img src="../../images/icon/icon1.png" alt="" />
						</div> <span>链接</span>
					</li>
					<li>
						<div class="icon">
							<img src="../../images/icon/icon2.png" alt="" />
						</div> <span>相册</span>
					</li>
					<li>
						<div class="icon">
							<img src="../../images/icon/icon3.png" alt="" />
						</div> <span>笔记</span>
					</li>
					<li>
						<div class="icon">
							<img src="../../images/icon/icon4.png" alt="" />
						</div> <span>文件</span>
					</li>
					<li>
						<div class="icon">
							<img src="../../images/icon/icon5.png" alt="" />
						</div> <span>音乐</span>
					</li>
					<li>
						<div class="icon">
							<img src="../../images/icon/icon6.png" alt="" />
						</div> <span>标签</span>
					</li>
				</ul>
			</div>
		</div>

		<!--聊天窗口-->
		<div class="talk_window">
			<div class="windows_top">
				<div class="windows_top_box">
					<span>早安无恙</span>
				</div>
			</div>

			<!--聊天内容-->
			<div class="windows_body">
				<div class="office_text" style="height: 100%;">
					<ul class="content" id="chatbox">
						<li class="me"><img src="../../images/own_head.jpg"
							title="金少凯"><span>疾风知劲草，板荡识诚臣</span></li>
						<li class="other"><img src="../../images/head/15.jpg"
							title="张文超"><span>勇夫安知义，智者必怀仁</span></li>
					</ul>
				</div>
			</div>

			<div class="windows_input" id="talkbox">
				<div class="input_icon">
					<a href="javascript:;" class="face-icon"></a> <a
						href="javascript:;"></a>
				</div>
				<div class="input_box">
					<textarea name="" rows="" cols="" id="input_box" class="text"></textarea>
					<button id="send">发 &nbsp;&nbsp;&nbsp;送</button>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="../../js/jquery.min.js"></script>
	<script type="text/javascript" src="../../js/webchat/sinaFaceAndEffec.js"></script>
	<script type="text/javascript" src="../../js/webchat/amazeui.min.js"></script>
	<script type="text/javascript" src="../../js/webchat/zUI.js"></script>
	<script src="../../layui/layui.js"></script>
	<script type="text/javascript" src="../../js/webchat/wechatpage.js"></script>
</body>

</html>