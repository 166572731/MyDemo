<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>基于meiziui的仿微信pc端</title>
<link rel="stylesheet" href="../../js/webchat/amazeui.min.css" />
<link rel="stylesheet" href="../../js/webchat/main.css" />

<link rel="stylesheet" type="text/css"
	href="../../js/webchat/sinaFaceAndEffec.css" />
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
								彭于晏丶plus<img src="../../../../images/icon/head.png" alt="" />
							</p>
							<p class="own_numb">微信号：jsk8787682</p>
						</div>
						<img src="../../images/own_head.jpg" alt="" />
					</div>
					<div class="own_head_bottom">
						<p>
							<span>地区</span>江西 九江
						</p>
						<div class="own_head_bottom_img">
							<a href=""><img src="../../images/icon/head_1.png" /></a> <a
								href=""><img src="../../images/icon/head_2.png" /></a>
						</div>
					</div>
				</div>
			</div>
			<!--三图标-->
			<div class="sidestrip_icon">
				<a id="si_1"
					style="background: url(../../images/icon/head_2_1.png) no-repeat;"></a>
				<a id="si_2"></a> <a id="si_3"></a>
			</div>
		</div>

		<!--聊天列表-->
		<div class="middle on">
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
						<div class="user_time">昨天</div>
					</li>
					<li>
						<div class="user_head">
							<img src="../../images/head/4.jpg" />
						</div>
						<div class="user_text">
							<p class="user_name">阿杰</p>
							<p class="user_message">[动画表情]</p>
						</div>
						<div class="user_time">昨天</div>
					</li>
					<li>
						<div class="user_head">
							<img src="../../images/head/5.jpg" />
						</div>
						<div class="user_text">
							<p class="user_name">订阅号</p>
							<p class="user_message">庐山国际水彩艺术节：</p>
						</div>
						<div class="user_time">星期三</div>
					</li>
					<li>
						<div class="user_head">
							<img src="../../images/head/6.jpg" />
						</div>
						<div class="user_text">
							<p class="user_name">小龙网食品</p>
							<p class="user_message">槟榔的100种吃法</p>
						</div>
						<div class="user_time">星期二</div>
					</li>
					<li>
						<div class="user_head">
							<img src="../../images/head/7.jpg" />
						</div>
						<div class="user_text">
							<p class="user_name">文件传输助手</p>
							<p class="user_message"></p>
						</div>
						<div class="user_time">星期二</div>
					</li>
					<li>
						<div class="user_head">
							<img src="../../images/head/8.jpg" />
						</div>
						<div class="user_text">
							<p class="user_name">陈明杰</p>
							<p class="user_message">妈的，你在聊我</p>
						</div>
						<div class="user_time">星期四</div>
					</li>
					<li>
						<div class="user_head">
							<img src="../../images/head/9.jpg" />
						</div>
						<div class="user_text">
							<p class="user_name">妈</p>
							<p class="user_message">面</p>
						</div>
						<div class="user_time">星期四</div>
					</li>
					<li>
						<div class="user_head">
							<img src="../../images/head/10.jpg" />
						</div>
						<div class="user_text">
							<p class="user_name">土豆</p>
							<p class="user_message">[图片]</p>
						</div>
						<div class="user_time"></div>
					</li>
					<li>
						<div class="user_head">
							<img src="../../images/head/11.jpg" />
						</div>
						<div class="user_text">
							<p class="user_name">Emmera</p>
							<p class="user_message"></p>
						</div>
						<div class="user_time"></div>
					</li>
					<li>
						<div class="user_head">
							<img src="../../images/head/12.jpg" />
						</div>
						<div class="user_text">
							<p class="user_name">彭于晏丶plus</p>
							<p class="user_message">我送20个都他妈的能赢，这群鬼人真的恐怖</p>
						</div>
						<div class="user_time"></div>
					</li>
				</ul>
			</div>
		</div>

		<!--好友列表-->
		<div class="middle">
			<div class="wx_search">
				<input type="text" placeholder="搜索" />
				<button>+</button>
			</div>
			<div class="office_text">
				<ul class="friends_list">
					<li>
						<p>新的朋友</p>
						<div class="friends_box">
							<div class="user_head">
								<img src="../../images/head/1.jpg" />
							</div>
							<div class="friends_text">
								<p class="user_name">新的朋友</p>
							</div>
						</div>
					</li>
					<li>
						<p>公众号</p>
						<div class="friends_box">
							<div class="user_head">
								<img src="../../images/head/2.jpg" />
							</div>
							<div class="friends_text">
								<p class="user_name">公众号</p>
							</div>
						</div>
					</li>
					<li>
						<p>A</p>
						<div class="friends_box">
							<div class="user_head">
								<img src="../../images/head/3.jpg" />
							</div>
							<div class="friends_text">
								<p class="user_name">彭于晏丶plus</p>
							</div>
						</div>
						<div class="friends_box">
							<div class="user_head">
								<img src="../../images/head/4.jpg" />
							</div>
							<div class="friends_text">
								<p class="user_name">陈依依</p>
							</div>
						</div>
						<div class="friends_box">
							<div class="user_head">
								<img src="../../images/head/5.jpg" />
							</div>
							<div class="friends_text">
								<p class="user_name">毛毛</p>
							</div>
						</div>
					</li>
					<li>
						<p>B</p>
						<div class="friends_box">
							<div class="user_head">
								<img src="../../images/head/6.jpg" />
							</div>
							<div class="friends_text">
								<p class="user_name">苏笑言</p>
							</div>
						</div>
						<div class="friends_box">
							<div class="user_head">
								<img src="../../images/head/7.jpg" />
							</div>
							<div class="friends_text">
								<p class="user_name">往事不再提</p>
							</div>
						</div>
					</li>
					<li>
						<p>C</p>
						<div class="friends_box">
							<div class="user_head">
								<img src="../../images/head/8.jpg" />
							</div>
							<div class="friends_text">
								<p class="user_name">夏继涛</p>
							</div>
						</div>
						<div class="friends_box">
							<div class="user_head">
								<img src="../../images/head/9.jpg" />
							</div>
							<div class="friends_text">
								<p class="user_name">早安无恙</p>
							</div>
						</div>
						<div class="friends_box">
							<div class="user_head">
								<img src="../../images/head/10.jpg" />
							</div>
							<div class="friends_text">
								<p class="user_name">王鹏</p>
							</div>
						</div>
					</li>
					<li>
						<p>D</p>
						<div class="friends_box">
							<div class="user_head">
								<img src="../../images/head/11.jpg" />
							</div>
							<div class="friends_text">
								<p class="user_name">涨了潮了</p>
							</div>
						</div>
						<div class="friends_box">
							<div class="user_head">
								<img src="../../images/head/12.jpg" />
							</div>
							<div class="friends_text">
								<p class="user_name">Ktz丶中融资</p>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>

		<!--程序列表-->
		<div class="middle">
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
						href="javascript:;"></a> <a href="javascript:;"></a> <a
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
	<script type="text/javascript" src="../../js/webchat/wechatpage.js"></script>
</body>

</html>