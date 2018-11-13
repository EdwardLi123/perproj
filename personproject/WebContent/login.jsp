<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<!-- JSTL结合EL表达式处理登录失败，注册用户、修改密码 -->
		<c:choose >
		    <c:when test="${flag==0}">
		        <div style="text-align: center;">
		            <span style="font-size: 15px; color: red; font-weight: b">用户名或密码错误</span>
		        </div>
		    </c:when>
		    <c:when test="${flag==1}">
		        <div style="text-align: center;">
		            <span style="font-size: 15px; color: red; font-weight: b">密码修改成功</span>
		        </div>
		    </c:when>
		     <c:when test="${flag==2}">
		        <div style="text-align: center;">
		            <span style="font-size: 15px; color: red; font-weight: b">注册成功</span>
		        </div>
		    </c:when>
		</c:choose>
		<c:remove var="flag" scope="session"/>
		<div class="loginbox loginbox1">

			<form action="user" method="post">
				<input type="hidden" name="oper" value="login" />
				<ul>
					<li></li>
					<li><input name="uname" type="text" placeholder="用户名" class="loginuser" /></li>
					<li><input name="pwd" type="password" placeholder="密码" class="loginpwd" /></li>
					<li class="yzm"><span><input name="" type="text" value="验证码" onclick="JavaScript:this.value=''" /></span><cite>X3D5S</cite></li>
					<li><input name="" type="submit" class="loginbtn" value="登录" onclick="javascript:window.location='main.html'" /><label><a href="UserInfo/reg.jsp">注册</a></label><label><a href="#">忘记密码？</a></label></li>
				</ul>
			</form>


		</div>

	</div>


	<div class="loginbm">
		黎 锋 <a href="http://www.uimaker.com"> </a>用户系统学习 2018-09-11
	</div>


</body>

</html>
