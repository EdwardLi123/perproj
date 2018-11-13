<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*,com.bjsxt.pojo.*" pageEncoding="UTF-8"%>
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
<script type="text/javascript" src="js/jquery.js"></script>
<style type="text/css">
    .up{border-bottom:1px dashed #F00}    
</style>

<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script>


</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">个人信息</a></li>
    <li><a href="#">查看个人信息 </a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    <table class="tablelist">
    	<thead>
    	<tr>
        <th>账号<i class="sort"><img src="images/px.gif" /></i></th>
        <th>用户名</th>
        <th>性别</th>
        <th>地址</th>
        <th>电话</th>
        <th>年龄</th>
        <th>出生日期</th>
        <th>备注</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <td><%=((User)session.getAttribute("user")).getUid() %></td>
        <td><%=((User)session.getAttribute("user")).getUname() %></td>
       
        <%
        int sex = ((User)session.getAttribute("user")).getSex();
        if(sex == 0){
        %>
        <td>男</td>
        <%}else{ %>
        <td>女</td>
        <%}%>
        <td><%=((User)session.getAttribute("user")).getAddress() %></td>
        <td><%=((User)session.getAttribute("user")).getTel() %></td>
        <td><%=((User)session.getAttribute("user")).getAge() %></td>
        <td><%=((User)session.getAttribute("user")).getBirth() %></td>
        <td>备注怎么取出来呢？？？</td>
        <td>
            <label><a href="UserInfo/modify.jsp" class="up">编辑</a></label>
            <label><a href="UserInfo/reg.jsp" class="up">删除</a></label>
        </td>
        </tr> 
        </tbody>
    </table>
   <!--  <div class="tip">
    	<div class="tiptop">
    	    <span>提示信息</span>
    	    <a></a></div>
        
      <div class="tipinfo">
        <span><img src="images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    
    </div> -->
    
    
    
    
    </div>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>

</html>
