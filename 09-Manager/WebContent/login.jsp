<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录后台管理系统</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>
<script src="js/cloud.js" type="text/javascript"></script>

<script language="javascript">
	$(function() {
		$('.loginbox').css({
			'position' : 'absolute',
			'left' : ($(window).width() - 692) / 2
		});
		$(window).resize(function() {
			$('.loginbox').css({
				'position' : 'absolute',
				'left' : ($(window).width() - 692) / 2
			});
		})
	});
</script>

</head>

<body style="background-color: #df7611; background-image: url(images/light.png); background-repeat: no-repeat; background-position: center top; overflow: hidden;">



	<div id="mainBody">
		<div id="cloud1" class="cloud"></div>
		<div id="cloud2" class="cloud"></div>
	</div>


	<div class="logintop">
		<span>欢迎登录后台管理界面平台</span>
		<ul>
			<li><a href="#">回首页</a></li>
			<li><a href="#">帮助</a></li>
			<li><a href="#">关于</a></li>
		</ul>
	</div>

	<div class="loginbody">

		<span class="systemlogo"></span>
		<br/>
		<%
			//声明java代码块进行错误提示语的逻辑校验
			Object obj = request.getAttribute("flag");
			if (null != obj) {
		%>
		<div style="text-align: center;">
			<span style="font-size: 15px; color: red; font-weight: b">用户名或密码错误</span>
		</div>
		<%
			}
		%>
		<%
			//声明java代码块进行密码修改成功提示语
			Object pwd = session.getAttribute("pwd");
			if (null != pwd) {
		%>
		<div style="text-align: center;">
			<span style="font-size: 15px; color: red; font-weight: b">密码修改成功</span>
		</div>
		<%
			}
			session.removeAttribute("pwd");//提示后删除该属性
		%>
		<%
			//声明java代码块进行注册成功提示语
			Object reg = session.getAttribute("reg");
			if (null != reg) {
		%>
		<div style="text-align: center;">
			<span style="font-size: 15px; color: red; font-weight: b">注册成功</span>
		</div>
		<%
			}
			session.removeAttribute("reg");//提示后删除该属性
		%>
		<div class="loginbox loginbox1">

			<form action="login" method="post">
				<input type="hidden" name="oper" value="login" />
				<ul>
					<li></li>
					<li><input name="uname" type="text" placeholder="用户名" class="loginuser" /></li>
					<li><input name="password" type="password" placeholder="密码" class="loginpwd" /></li>
					<li class="yzm"><span><input name="" type="text" value="验证码" onclick="JavaScript:this.value=''" /></span><cite>X3D5S</cite></li>
					<li>
					    <input name="" type="submit" class="loginbtn" value="登录" onclick="javascript:window.location='main.html'" />
					    <label><a href="UserInfo/reg.jsp">注册</a></label>
					    <label><a href="#">忘记密码？</a></label>
					</li>
				</ul>
			</form>
		</div>
	</div>

    <br/><br/>
	<div class="loginbm">
		 <a href="http://www.uimaker.com"> </a>用户系统学习 2018-09-11
	</div>


</body>

</html>
