<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"
+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<!-- 引入jquery文件 -->
<script language="JavaScript" src="js/jquery.js"></script>
<!-- 声明jquery代码域名 -->
<script type="text/javascript">
$(function() {
	//校验密码修改
	$("#fm").submit(function() {
		//校验新密码
		if($("#newPwd").val()==""){
			alert("新密码不能为空！");
			return false;
		}
		//校验确认密码
		if($("#cfPwd").val()==""){
			alert("确认密码 不能为空！");
			return false;
		}
		//校验新密码和确认密码是否一致
		if($("#cfPwd").val()!=$("#newPwd").val()){
			alert("两次密码不一致！");
			return false;
		}
		alert("两次密码一致！");
		return true;
	})
})
</script>
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">个人信息</a></li>
    <li><a href="#">修改密码</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>修改密码</span></div>
    <form action="user" method="post" id="fm" target="_top">
    <input  type="hidden" name="oper" value="pwd" />
    <ul class="forminfo">
    <li><label>新密码</label><input name="newPwd" id="newPwd" type="text" class="dfinput" /><i>中文数据组合（后期完善）</i></li>
    <li><label>确认密码</label><input name="" id="cfPwd" type="text" class="dfinput" /><i>校验两个密码是否一致（后期完善）</i></li>
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </form>
    
    </div>


</body>

</html>
