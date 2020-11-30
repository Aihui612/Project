<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body background="welcome.jpg"
style=" background-repeat:no-repeat; background-size:100% 100%; background-attachment: fixed;">
欢迎<%=request.getSession().getAttribute("username") %> 登录系统<br>
<a href="ListUserServlet">用户列表数据</a><br>
<a href="addUser.jsp">用户添加</a>
<a href="removeData.html">用户删除</a>
</body>
</html>