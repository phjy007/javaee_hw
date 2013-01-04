<%@page contentType="text/html" pageEncoding="gb2312"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http－equiv="Content－Type" content="text/html; charset=gb2312"> 
<title>查询数据库</title> 
</head> 
<body bgcolor="#FFFFFF">
<sql:setDataSource driver="com.mysql.jdbc.Driver"   
       url="jdbc:mysql://10.12.8.28:3306/jw1201024"     
       user="jw1201024" password="281729" />
<sql:query var="query"  sql="select * from sample"/>
<table align=center border=3>
<tr>
<td>ID</td><td>姓名</td><td>密码</td><td>Email</td>
</tr>
<c:forEach var="row" items="${query.rowsByIndex}">
<tr>
	<c:forEach var="col" items="${row}">
	<td><c:out value="${col}"/></td>
	</c:forEach>
</tr>
</c:forEach>
</table><br/>
<div><a href="../">返回</a></div><br/>
</body>
