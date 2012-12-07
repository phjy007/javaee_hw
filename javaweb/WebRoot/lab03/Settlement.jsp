<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>结算中心</title>
    
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
    <center>
    <h2>您所需要支付的金额:</h2>
    <%
    	double sumPrice;
    	if(session.getAttribute("sumPrice") != null) {
    		sumPrice = (Double)session.getAttribute("sumPrice");
    		%><h3><%=sumPrice%>元</h3><%
    	}
    	else {
    		sumPrice = 0.0;
    	%>
	<h3><%=sumPrice%>元</h3>
	<div><br>(您或许还没进行选购，快去选购您心仪的产品吧！)</div><%
	}%>
	
    </center>
  </body>
</html>
