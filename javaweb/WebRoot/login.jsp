<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��¼����</title>
    
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
   		<h1 align="center">��ӭ��¼ϵͳ</h1>
    <h5 align="center">(��¼�Բ鿴Դ����)</h5>
    <form method=post action="./SetSession">
	    <table align="center" border="1" bordercolorlight="#cc99ff" cellpadding="2" bordercolordark="#ffffff" cellspacing="0"> 
			<tr bgcolor="#FFEEEE">
				<td width="120px" align="center">�û�����</td>
				<td width="150px" align="center">
					<input type="text" name="username" style={width:150px;height:24px} value="jw1201024">
				</td>
			</tr>
			<tr bgcolor="#CCE0FF">
				<td align="center">�� �룺</td>
				<td align="center">
					<input type="password" name="password" style={width:150px;height:24px}>
				</td>
			</tr>
		</table>
		<p align="center"> 
			<input type="reset" name="Reset" value="����"> 
			<input type="submit" name="Submit2" value="�ύ"> 
		</p> 
	</form>
	<h5 align="center">Tips:�û���Ϊjw1201024������Ϊ���˺��ϴ����롣</h5>
  </body>
</html>
