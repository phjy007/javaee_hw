<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>计算结果</title>
    
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
  		int num1, num2;
  		String op;
  		String sn1 = request.getParameter("n1");
  		String sn2 = request.getParameter("n2");
  		if(sn1 != "" && sn2 != "") {
			num1 = Integer.parseInt(sn1);
			num2 = Integer.parseInt(sn2);
			op = request.getParameter("operator");
	%>
		<jsp:useBean id="calcBean" class="lab02.com.servlet.CalcBean" scope="request"/>
	 	<jsp:setProperty name="calcBean" property="n1" value="<%=num1%>"/>
	 	<jsp:setProperty name="calcBean" property="n2" value="<%=num2%>"/>
	 	<jsp:setProperty name="calcBean" property="oper" value="<%=op%>"/>
	    <h4>
    	计算的结果是：<%=calcBean.getResult()%>
    </h4>
	
	<% 
		} else {
	%>
		<h4>您输入的数值有误，请重试。<a href="./lab02/calc.jsp">返回</a></h4>
	<%  
	   } 
	%>
		
   </body>
</html>
