<%@page contentType="text/html" pageEncoding="gb2312"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("gbk"); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http��equiv="Content��Type" content="text/html; charset=gb2312"> 
<title>��ѯ���ݿ���</title> 
</head> 
<body>
<sql:setDataSource driver="com.mysql.jdbc.Driver"   
       url="jdbc:mysql://10.12.8.28:3306/jw1201024"     
       user="jw1201024" password="281729" />
<% 
	String name = request.getParameter("name");
	String test = new String(name.getBytes("iso-8859-1"), "gb2312");
	test = "%" + test + "%";
	request.setAttribute("name", test);
%>
<sql:query var="query">
 select * from sample where ���� LIKE ?
 <sql:param value="${name}" />
</sql:query>
<div>ѧ����Ϣ��</div>
<table border=1>
<tr>
<td>ID</td><td>����</td><td>Email</td>
</tr>
<c:forEach var="row" items="${query.rowsByIndex}">
<tr>
	<td>${row[0] }</td>
	<td>${row[1] }</td>
	<td>${row[3] }</td>
</tr>
</c:forEach>
</table><br/>
<div><a href="../">����</a></div><br/>
</body>