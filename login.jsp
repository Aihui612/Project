<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   <%String path=request.getContextPath() ;%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<script type="text/javascript">

function check(){
	var a=true;
	var b=true;
	var c=true;
	var uservalue=document.getElementById("uid").value;

	var pwdvalue=document.getElementById("pwd").value;
	var cidvalue=document.getElementById("cid").value;
	
	if(""==uservalue||null==uservalue){
		a=false;
		alert("用户名为空");
		document.getElementById("uid").focus();	
	}
	else{
		if(""==pwdvalue||null==pwdvalue){
			b=false;
			alert("密码为空");
			document.getElementById("pwd").focus();
		}
		else{
			if(""==cidvalue||null==cidvalue){
				
				c=false;
				alert("验证码不能为空");
				document.getElementById("fid").focus();
			}
		}
	}
	
	if(a==true&&b==true&&c==true){
		
		document.getElementById("fid").submit();
	}
}

function getcode(){
var img=	document.getElementById("mid");
img.src="../GetCode?time="+new Date().getTime();
}

</script>
<style >	<!-- 元素的设计： -->
td.right{			<!-- 名字 -->
	text-align: right; height:25px;						<!-- 文本-对齐属性：右对齐；表格高度：25px -->
}														<!-- align: left(靠左)，center(居中)，right(靠右) -->
</style>

</head>
<body background="login.jpg"
      style=" background-repeat:no-repeat; background-size:100% 100%; background-attachment: fixed;" >
<div align="center">
<h2>用户登录 </h2>
<span style=" color: red">
<%String msg="";
if(request.getSession().getAttribute("msg")!=null) {
msg=request.getSession().getAttribute("msg").toString();%>
<%=msg%><%} %></span>

<form action="LoginServlet" id="fid"><table >

<tr> <td class="right">用户名:</td> <td><input type="text" name="username" id="uid" /></td> </tr>
<tr> <td class="right">密    码:</td> <td><input type="password" name="userpassword" id="pwd"/></td> </tr>
<tr> <td class="right">验证码:</td> <td><input type="text" name="code" id="cid"><img src="../GetCode" id="mid"/><a href="javascript:getcode()">看不清换一张</a></td> </tr>
<tr> <td class="right"></td> <td><input type="button" value="登录" onclick="check()"> <input type="button" value="退出" onclick="check()"></td></tr> 

</table>
</form>
</div>
</body>
</html>