<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��ѧʵ�����-���¼</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<link rel="stylesheet" href="./project/static/plugin/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="./project/static/css/common.css" type="text/css" media="all" />
	<script src="./project/static/js/login.js"></script>
  </head>
  
<body>
<div id="container">
	
	<h2 id="login_title" style="color:#B22222;"><b>��ӭ������ѧʵ�����ݹ���ϵͳ</b></h2>
	<br><br>
	<div class="shell" id="login_main">
		<div><img src="./project/static/img/login_bg.jpg" style="height:350px;width:600px;margin-bottom:10px;" /></div>
		<!-- Main -->
		<div id="main">
			<!-- Content -->
			<!--  div id="content">-->
				<!-- Box -->
				<div class="box">
				
					
				
					<form action="./project/loginServlet" method="post">
						<!-- Form -->
						<div class="form">
							<div class="control-group">
				    			�û�����<input type="text" id="inputUsername" name="username" value="admin"/>
				  			</div>
				  			<div></div>
				  			<div class="control-group">
				    			��&nbsp&nbsp&nbsp�룺<input type="password" id="inputPassword" name="password" value="admin"/>
							</div>
						</div>
						<!-- End Form -->
						<div></div>
						<!-- Form Buttons -->
						<div style="margin:5px 0 10px 0">
							<input type="submit" id="login_submit" class="button" value="��¼" style="margin:0px 10xp 0 0"/>
							<input type="button" id="login_register" class="button" value="ע��" onclick="window.location.href('./register.jsp')"/>
						</div>
						<!-- End Form Buttons -->
					</form>
					
					<form action="./project/loginServlet" method="post" style="margin:0px 0 10px 0">
						<input type="submit" id="login_visitor" class="button" value="���ǹ���" />
			    		<input type="hidden" id="inputUsername" name="username" value="�ο�" />
			    		<input type="hidden" id="inputPassword" name="password" value="yk" />
					</form>
					
				</div>
				<!-- End Box -->
			<!-- End Content -->
					
		</div>
		
		<!-- Main -->
		<%
		 Boolean logined = (Boolean)session.getAttribute("logined");
		 session.removeAttribute("logined");
		 if(logined == null) {
		 	
		 } else if(logined == false) {
    %>
   		<!-- div style="color:red;">��¼ʧ��</div> -->
   		<div class="msg msg-error">
			<p><strong>��¼ʧ�ܣ������µ�¼</strong></p>
			<a href="./project/login.jsp" class="close" onclick='javascript:window.self.location="./project/login.jsp"'>close</a>
		</div>
    <%						 	
		 }
	%>
	</div>
	
	
</div>
<!-- End Container -->


</body>
  
</html>