<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��ҳ������Բ12212010024</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		.wrapper {
			width:250px;
			//border: 1px solid;
		}
		.exp_tilte {
			//text-align:left;
			color: #0066FF;
			font-size: 22px;
		}
		.source_title {
		text-align:left;
			color:  #1A94E6;
			font-size: 18px;
		}
	</style>
  </head>
  
  <body>
    <CENTER><FONT SIZE="6"><B>����Բ</B></FONT><FONT SIZE="3"><B>(12212010024)</B></FONT></CENTER><br>
  	<%
  		String username = (String)session.getAttribute("username");
  		if("jw1201024".equals(username)) {
  	%>
  	<div class="login_logout" align="center" style="font-size:12px; margin-bottom:5px;">
  		���ѵ�¼��������<a href="./logout.jsp">�˳�</a>
  	</div>
  		
  	<%
  		} else {
  	%>
  	<div class="login_logout" align="center" style="font-size:12px; margin-bottom:5px;">
  		��<a href="./login.jsp">��¼</a>�鿴Դ����
  	</div>
  	<%
  	    }
  	%>
  	<form method=post action="">
	<table align="center" border="1" bordercolorlight="#ccaaff" cellpadding="2" bordercolordark="#ffffff" cellspacing="0"> 
	<tr bgcolor="#CCE0FF"><td align="center" width="200px">������</td><td align="center" width="200px">Դ����</td></tr>
	<tr><td class="cap" colspan="2"  align="center" style="background-color:#FFEEEE">��һ��ʵ��</td></tr>	
	<tr>
		<td><a href="./lab01/first">FirstServlet</a></td>
		<td><a href="./ReadScode?lab=lab01&file=FirstServlet.java">FirstServlet.java</a></td>
	</tr>
	<tr>
		<td><a href="./lab01/login.html">Login</a></td>
		<td><a href="./ReadScode?lab=lab01&file=login.html">Login.html</a></td>
	</tr>
	<tr><td>&nbsp;</td>
		<td><a href="./ReadScode?lab=lab01&file=GetPostData.java">GetPostData.java</a></td>
	</tr>
	<tr><td class="cap" colspan="2" align="center" style="background-color:#FFEEEE">�ڶ���ʵ��</td></tr>
	<tr>
		<td><a href="./lab02/input.jsp">��������</a></td>
		<td><a href="./ReadScode?lab=lab02&file=input.jsp">input.jsp</a></td>
	</tr>
	<tr><td>&nbsp;</td>
		<td><a href="./ReadScode?lab=lab02&file=calculate.jsp">calculate.jsp</a></td>
	</tr>
	<tr><td>&nbsp;</td>
		<td><a href="./ReadScode?lab=lab02&file=output.jsp">output.jsp</a></td>
	</tr>
	<tr>
		<td><a href="./lab02/exam.jsp">����С����</a></td>
		<td><a href="./ReadScode?lab=lab02&file=exam.jsp">exam.jsp</a></td>
	</tr>
	<tr><td>&nbsp;</td>
		<td><a href="./ReadScode?lab=lab02&file=result.jsp">result.jsp</a></td>
	</tr>
	<tr>
		<td><a href="./lab02/calc.jsp">�򵥼�����</a></td>
		<td><a href="./ReadScode?lab=lab02&file=calc.jsp">calc.jsp</a></td>
	</tr>
	<tr><td>&nbsp;</td>
		<td><a href="./ReadScode?lab=lab02&file=calculate_result.jsp">calculate_result.jsp</a></td>
	</tr>
	<tr><td>&nbsp;</td>
		<td><a href="./ReadScode?lab=lab02&file=CalcBean.java">CalcBean.java</a></td>
	</tr>
	<tr>
		<td><a href="./lab02/travel.jsp">���η��ò�ѯ</a></td>
		<td><a href="./ReadScode?lab=lab02&file=travel.jsp">travel.jsp</a></td>
	</tr>
	</table>
  </form>
  	
  	
  		<!--div class="exp_tilte">
  			<b>��һ��ʵ��</b>
  		</div>
  		<div class="source_title">
  			����
  		</div>
  		<div class="items">
  			<a href="./lab01/first">firstservlet</a>
  		</div>
  		<div class="items">
  			<a href="./lab01/login.html">login</a>
  		</div>
  		<div class="source_title">
  			Դ����
  		</div>
  		<div class="items">
  			<a href="/javaweb/ReadScode">FirstServlet.java</a>
  		</div>
  		<div class="items">
  			<a href="/javaweb/ReadScode">login.html</a>
  		</div>
  		<div class="items">
  			<a href="/javaweb/ReadScode">GetPostData.java</a>
  		</div-->
  </body>
</html>