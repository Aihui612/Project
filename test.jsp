<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%! int day = 3; %> 
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>浏览器中标签名</title>
</head>
<body>
<%out.println("Hello World"); //页面输出内容%></br>
<%out.println("你的IP是："+request.getRemoteAddr()); %></br>
<p>
今天的日期是：<%=(new java.util.Date()).toLocaleString()%>
</p>

<h3>IF...ELSE 实例</h3>
<% if (day == 1 | day == 7) { %>
      <p>今天是周末</p>
<% } else { %>
      <p>今天不是周末</p>
<% } %>

<h3>SWITCH...CASE 实例</h3>
<% 
switch(day) {
case 0:
   out.println("星期天");
   break;
case 1:
   out.println("星期一");
   break;
case 2:
   out.println("星期二");
   break;
case 3:
   out.println("星期三");
   break;
case 4:
   out.println("星期四");
   break;
case 5:
   out.println("星期五");
   break;
default:
   out.println("星期六");
}
%>

<%
   // 获取session创建时间
   Date createTime = new Date(session.getCreationTime());
   // 获取最后访问页面的时间
   Date lastAccessTime = new Date(session.getLastAccessedTime());

   String title = "再次访问菜鸟教程实例";
   Integer visitCount = new Integer(0);
   String visitCountKey = new String("visitCount");
   String userIDKey = new String("userID");
   String userID = new String("ABCD");

   // 检测网页是否有新的访问用户
   if (session.isNew()){
      title = "访问菜鸟教程实例";
      session.setAttribute(userIDKey, userID);
      session.setAttribute(visitCountKey,  visitCount);
   } else {
       visitCount = (Integer)session.getAttribute(visitCountKey);
       visitCount += 1;
       userID = (String)session.getAttribute(userIDKey);
       session.setAttribute(visitCountKey,  visitCount);
   }
%>
<html>
<head>
<title>Session 跟踪</title>
</head>
<body>

<h1>Session 跟踪</h1>

<table border="1" align="left"> 
<tr bgcolor="#949494">
   <th>Session 信息</th>
   <th>值</th>
</tr> 
<tr>
   <td>id</td>
   <td><% out.print( session.getId()); %></td>
</tr> 
<tr>
   <td>创建时间</td>
   <td><% out.print(createTime); %></td>
</tr> 
<tr>
   <td>最后访问时间</td>
   <td><% out.print(lastAccessTime); %></td>
</tr> 
<tr>
   <td>用户 ID</td>
   <td><% out.print(userID); %></td>
</tr> 
<tr>
   <td>访问次数</td>
   <td><% out.print(visitCount); %></td>
</tr> 
</table> 
</body>
</html>