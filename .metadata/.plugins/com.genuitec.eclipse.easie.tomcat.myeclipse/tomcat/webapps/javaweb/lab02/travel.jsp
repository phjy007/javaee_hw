
<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>���з��ò�ѯ</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <%
	String c = request.getParameter("city");
	if(c != null) {
  %>
  	<c:set var="cityname" value="<%=c%>"/>
  <%	
	} else {
  %>
  	<c:set var="cityname" value="0"/>
  <%
  	}
  %>
  	
	<h4>���η��ò�ѯ</h4>
	<div>
		<form action="./lab02/travel.jsp">
	  		<select name="city">   
	        	<option value="0">�ص�</option>   
	        	<option value="1">����</option>   
	        	<option value="2">����</option>   
	        	<option value="3">�Ͼ�</option>   
	        	<option value="4">����</option>
	        	<option value="5">���</option>      
	   		</select>
	   		<input type="submit" value="�ύ">
	    </form>
	</div>
	
  	<c:choose>
  		<c:when test="${cityname==1}">
  			�����ķ���Ϊ1000Ԫ<br>
  		</c:when>
  		<c:when test="${cityname==2}">
  			���ݵķ���Ϊ100Ԫ<br>
  		</c:when>
  		<c:when test="${cityname==3}">
  			�Ͼ��ķ���Ϊ150Ԫ<br>
  		</c:when>
  		<c:when test="${cityname==4}">
  			���ݵķ���Ϊ800Ԫ<br>
  		</c:when>
  		<c:when test="${cityname==5}">
  			��۷���Ϊ1200Ԫ<br>
  		</c:when>
  		<c:otherwise>
  		</c:otherwise>
  	</c:choose>
  </body>
</html>