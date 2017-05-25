<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>智能机器人</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

body {
	width: 100%;
	height: 100vh;
	background: url(img/bg.jpg) no-repeat;
	background-size: cover;
	overflow: hidden;
}

/* #head {
	width: 100%;
	height: 60px;
	background: rgba(0, 0, 0, .5);
	color: #fff;
	text-align: center;
	line-height: 60px;
	font-size: 24px;
} */

#content {
	width: 800px;
	height: 600px;
	border: 1px solid red;
	margin: 100px auto 0;
	background: rgba(255, 2555, 255, .5);
}

#content .c_head {
	width: 100%;
	height: 60px;
	background: #4caf50;
}

#content .c_head .h_img {
	float: left;
	margin: 0 20px;
}

#content .c_head .h_span {
	float: left;
	line-height: 60px;
	color: #fff;
	font-size: 20px;
}

#content .c_center {
	width: 100%;
	height: 400px;
	overflow:auto;
}

#content .c_center .rotWord {
	width: 100%;
	margin-top: 10px;
	overflow: hidden;
}

#content .c_center .rotWord span {
	background: url(img/rot.png);
	width: 40px;
	height: 40px;
	float: left;
	margin-left: 20px;
}

#content .c_center .rotWord p {
	max-width: 220px;
	background: rgba(0, 0, 225, .5);
	float: left;
	padding: 10px;
	border-radius: 10px;
	margin-left: 10px;
}

#content .c_center .mWord {
	width: 100%;
	margin-top: 10px;
	overflow: hidden;
}

#content .c_center .mWord span {
	background: url(img/my.png);
	width: 40px;
	height: 40px;
	float: right;
	margin-right: 20px;
}

#content .c_center .mWord p {
	max-width: 220px;
	background: rgba(0, 0, 225, .5);
	float: right;
	padding: 10px;
	border-radius: 10px;
	margin-right: 10px;
}

#content .c_footer {
	width: 760px;
	height: 60px;
	margin: 0 20px;
}

#f-left {
	float: left;
	width: 620px;
	height: 60px;
	outline: none;
	background: rgba(0, 0, 0, .1);
	font-size: 16px;
	border: none;
	border-radius: 5px;
	overflow: hidden;
	text-indent: 10px;
}

#btn {
	float: left;
	width: 100px;
	height: 60px;
	text-align: center;
	background: #666;
	cursor: pointer;
	text-align: center;
	line-height: 60px;
	font-size: 18px;
	user-select: none;
	border-radius: 10px;
}
</style>

</head>

<body>
	<!-- <div id="head">java开发机器人</div> -->

	<div id="content">
		<div class="c_head">
			<img src="img/logo.png" width="80" height="60" class="h_img" /> <span
				class="h_span">智能客服</span>
		</div>

		<div class="c_center">
			<div class="rotWord">
				<span></span>

				<p>嗨i，最近想我了吗？</p>
			</div>
		</div>

		<div class="c_footer">
			<input type="text" name="text" id="f-left" />
			<div id="btn">发送</div>

		</div>
	</div>

	<script type="text/javascript">
		$(function() {
			text.focus();
		});

		var text = $("#f-left");

		function action() {
			if (text.val() == null || text.val() == "") {
				text.focus();
				return;
			}

			$(".c_center").append("<div class='mWord'><span></span><p> " + text.val()+ "</p></div>");
			$(".c_center").scrollTop(100000000);

			$.ajax({
						type : "POST",
						url : "rot",
						data : {
							"text" : text.val()
						},
						success : function(data) {
							var result = $.parseJSON(data).text;
							/*  alert(result); */
							$(".c_center").append("<div class='rotWord'><span></span><p > "+ result + "</p></div>");
							$(".c_center").scrollTop(100000000);
							/*  result = result.replace(/\s+/g,",");  //去除空格 */

							var url = "http://tts.baidu.com/text2audio?lan=zh&ie=UTF-8&text="
									+ encodeURI(result) + "&spd=5";
							var n = new Audio(url);
							n.src = url;
							n.play();

							/* var url = "fanyi.baidu.com/gettts?lan=zh&text="+ result +"&spd=5&source=web";
							 var obj = "<audio src="+ url +" autoplay ></audio>";
							 $("body").append(obj); */
						}
					});

			text.val("");
			text.focus();

		}
		//按钮绑定
		$("#btn").click(function() {
			action();
		});
		//键盘响应
		$(document).keydown(function(event) {
			if (event.keyCode == 13) {
				action();
			}
		});
	</script>
</body>
</html>
