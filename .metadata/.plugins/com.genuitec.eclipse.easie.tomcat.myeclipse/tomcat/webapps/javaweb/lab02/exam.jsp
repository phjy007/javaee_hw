
<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>����С����</title>
    
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
  	<h2>����С����</h2>
  	<form action="./lab02/result.jsp">
  		<div>
		  	<h4>һ�������</h4>
		  	<div>
		  		���ڵĸ���У��������<input name="q1" type="text" value="" size="6"/>
		  	</div>
		</div>
  		<div>
  			<h4> ������ѡ�⣺ </h4>
  			<div>�����ĸ�У����
  			  <input name="q2" type="radio" value="����">����
  			  <input name="q2" type="radio" value="�Ž�">�Ž�
  			  <input name="q2" type="radio" value="����">����
  			</div>
  		</div>
  		<div>
  			<h4> ������ѡ�⣺ </h4>
  			<div>Java Web�����ѧ��ʲô��
  			  <input name="q3" type="checkbox" value="Servlet"/>Servlet
  			  <input name="q3" type="checkbox" value="JSP" />JSP
  			  <input name="q3" type="checkbox" value="Java Bean"/>Java Bean
  			  <input name="q3" type="checkbox" value="Java Mail" />Java Mail
  			</div>
  		</div>
  		<div>
  			<h4> �ġ��ж��⣺ </h4>
  			<div>ѧ��Java Web����Ƿ����ã�<input name="q4" type="text" size="5"/> ��T �� F��</div>
  		</div>
  		<input type="reset" value="����"> 
  		<input type="submit" value="�ύ"> 
  	</form>
  </body>
</html>