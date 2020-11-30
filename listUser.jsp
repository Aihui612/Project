<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body background="listUser.jpg" style=" background-repeat:no-repeat; background-size:100% 100%; background-attachment: fixed;">
<!-- 得到 session 中的数据进行展示 userlist -->
得到 session 中的数据进行展示 userlist
<%-- <% List<UserBean> ulist=(List<UserBean>)request.getSession().getAttribute("userlist");

%> --%>
<%-- <table>
<tr><th>用户id</th><th>用户姓名</th><th>用户密码</th><th>操作</th></tr>
<%  for(int i=0;i<ulist.size();i++){
	UserBean us=ulist.get(i);
	
%>
<tr>
<td><%=us.getId() %></td><td><%=us.getUsername() %></td><td><%=us.getUserpassword() %></td><td></td>


</tr>	
	
	
	
<%} %>

</table> --%>
<table style=" border: solid red 2px">
<tr><th>用户id</th><th>用户姓名</th><th>用户密码</th><th>操作</th></tr>
<c:forEach var="ubean" items="${userlist}" >

<tr><td>${ubean.id}</td><td>${ubean.username}</td><td>${ubean.userpassword}</td><td>操作</td></tr>

</c:forEach>

</table>
</body>
</html>