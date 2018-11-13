<%@page import="com.bjsxt.pojo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"
+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <!-- 引入jquery文件 -->
    <script language="JavaScript" src="js/jquery.js"></script>
    <script type="text/javascript">
       $(function(){
    	   /*  $('#btn1').click(function(){
			  alert("1111");
		  }); */
       })
    </script>
</head>
<body>
	<div class="place">
        <span>位置：</span>
        <ul class="placeul">
        <li><a href="#">首页</a></li>
        <li><a href="#">个人信息</a></li>
        <li><a href="#">修改个人信息</a></li>
        </ul>
    </div>
    
    <div class="formbody">
        <div class="formtitle"><span>修改个人信息</span></div>
        <form action="modify" method="post" id="fm" target="_top">
            <input  type="hidden" name="oper" value="mod" />
            <input type="hidden" name="uid" value="<%=((User)session.getAttribute("user")).getUid() %>"/>
            <ul class="forminfo">
                <li><label>用户名</label><input name="uname" class="dfinput" data-options="required:true" missingMessage="用户名必填" 
				    value="<%=((User)session.getAttribute("user")).getUname() %>" /><i>中文数据组合（后期完善）</i></li>
                <li><label>年龄</label><input name="age" class="dfinput" value="<%=((User)session.getAttribute("user")).getAge() %>" /><i>校验两个密码是否一致（后期完善）</i></li>
                <li><label>出生年月</label><input name="birth" class="dfinput" value="<%=((User)session.getAttribute("user")).getBirth() %>" /></li>
                <li><label>电话</label><input name="tel" class="dfinput" value="<%=((User)session.getAttribute("user")).getTel() %>" /></li>
                <li><label>住址</label><input name="address" class="dfinput" value="<%=((User)session.getAttribute("user")).getAddress() %>" /></li>
                <li>
                    <input name="" type="submit" class="btn" value="确认"/>&nbsp;&nbsp;&nbsp;
                    
                </li>
                 
            </ul>
		</form>
		<div><button name="" type="button" id="btn1" value="重置"></button>&nbsp;&nbsp;&nbsp;</div>
	</div>
	<style scoped="scoped">
		.textbox{
			height:20px;
			margin:0;
			padding:0 2px;
			box-sizing:content-box;
		}
	</style>

</body>
</html>