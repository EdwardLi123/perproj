<%@ page language="java" contentType="text/html; charset=UTF-8" import="javafx.util.*,com.bjsxt.pojo.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>
<script type="text/javascript">
	$(function() {
		//顶部导航切换
		$(".nav li a").click(function() {
			$(".nav li a.selected").removeClass("selected")
			$(this).addClass("selected");
		})
		$("#out").click(function() {
			var flag = window.confirm("你确定要退出吗？");
			if (flag) {
				//window.top:表示当前页面的上一层页面（即登录页面），
				//这样就等于的由登录页面 发起的退出请求，退出后，页面才能真正跳转到登录页面
				//否则还是停留在当前页面
				window.top.location.href = "out?oper=out";//访问路径
			}
		})
	})
</script>


</head>

<body style="background: url(images/topbg.gif) repeat-x;">

	<div class="topleft">
		<a href="main.html" target="_parent"><img src="images/logo.png" title="系统首页" /></a>
	</div>

	<ul class="nav">
		<li><a href="default.html" target="rightFrame" class="selected"><img src="images/icon01.png" title="工作台" />
			<h2>工作台(后期可自己实现)</h2></a></li>
		<li><a href="imgtable.html" target="rightFrame"><img src="images/icon02.png" title="模型管理" />
			<h2>模型管理(后期可自己实现)</h2></a></li>
		<li><a href="imglist.html" target="rightFrame"><img src="images/icon03.png" title="模块设计" />
			<h2>模块设计(后期可自己实现)</h2></a></li>
		<li><a href="tools.html" target="rightFrame"><img src="images/icon04.png" title="常用工具" />
			<h2>常用工具(后期可自己实现)</h2></a></li>
		<li><a href="computer.html" target="rightFrame"><img src="images/icon05.png" title="文件管理" />
			<h2>文件管理(后期可自己实现)</h2></a></li>
		<li><a href="tab.html" target="rightFrame"><img src="images/icon06.png" title="系统设置" />
			<h2>系统设置(后期可自己实现)</h2></a></li>
	</ul>

	<div class="topright">
		<ul>
			<li><span><img src="images/help.png" title="帮助" class="helpimg" /></span><a href="#">帮助(后期可自己实现)</a></li>
			<li><a href="#">关于(后期可自己实现)</a></li>
			<li><a href="javascript:void(0)" id="out">退出</a></li>
		</ul>

		<div class="user">
			<span><%=((User) session.getAttribute("user")).getUname()%></span>
		</div>

	</div>

</body>
</html>
