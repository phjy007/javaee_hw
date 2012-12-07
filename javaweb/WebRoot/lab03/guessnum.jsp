<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>猜数字</title>
</head>
<body>
<h3>猜数字(40～160)</h3>
<%
	int num = (int)(Math.random() * 121) + 40;
	session.setAttribute("answer_number", num + "");
	session.setAttribute("count", new Integer(0));
%>
<form action="./guessnum" method="POST">
	<input name="user_number" type="text" value="" size="20" 
			 onkeyup="this.value=this.value.replace(/\D/g,'')" 
			 onafterpaste="this.value=this.value.replace(/\D/g,'')" /> 
	<input type="submit" value="我猜我猜我猜猜猜">
</form><br>
</body>
</html>
