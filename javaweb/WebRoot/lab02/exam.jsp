
<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>在线小测试</title>
    
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
  	<h2>在线小测试</h2>
  	<form action="./lab02/result.jsp">
  		<div>
		  	<h4>一、填空题</h4>
		  	<div>
		  		现在的复旦校长姓名？<input name="q1" type="text" value="" size="6"/>
		  	</div>
		</div>
  		<div>
  			<h4> 二、单选题： </h4>
  			<div>你在哪个校区？
  			  <input name="q2" type="radio" value="邯郸">邯郸
  			  <input name="q2" type="radio" value="张江">张江
  			  <input name="q2" type="radio" value="江湾">江湾
  			</div>
  		</div>
  		<div>
  			<h4> 三、多选题： </h4>
  			<div>Java Web编程已学过什么？
  			  <input name="q3" type="checkbox" value="Servlet"/>Servlet
  			  <input name="q3" type="checkbox" value="JSP" />JSP
  			  <input name="q3" type="checkbox" value="Java Bean"/>Java Bean
  			  <input name="q3" type="checkbox" value="Java Mail" />Java Mail
  			</div>
  		</div>
  		<div>
  			<h4> 四、判断题： </h4>
  			<div>学了Java Web编程是否有用？<input name="q4" type="text" size="5"/> （T 或 F）</div>
  		</div>
  		<input type="reset" value="重置"> 
  		<input type="submit" value="提交"> 
  	</form>
  </body>
</html>
