<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>���߼��׼�����</title>
    
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
	<h4>�򵥼�����</h4>
	<form action="./lab02/calculate_result.jsp">
	   <input name="n1" type="text" value="" size="13" 
	  		 onkeyup="this.value=this.value.replace(/\D/g,'')" 
	  		 onafterpaste="this.value=this.value.replace(/\D/g,'')" />
	   <select name="operator">   
	        <option value="+">+</option>   
	        <option value="-">-</option>   
	        <option value="*">*</option>   
	        <option value="/">/</option>   
	        <option value="%">%</option>      
	   </select>  
	   <input name="n2" type="text" value="" size="13" 
	  		 onkeyup="this.value=this.value.replace(/\D/g,'')" 
	  		 onafterpaste="this.value=this.value.replace(/\D/g,'')" /><br/><br/>
	  	<input type="reset" value="����"> 
	  	<input type="submit" value="�ύ">
	</form>
	
  </body>
</html>