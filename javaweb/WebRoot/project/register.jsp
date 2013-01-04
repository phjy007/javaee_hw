<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>教学实验管理-请登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<!-- <link href="./project/static/bootstrap/css/bootstrap.css" rel="stylesheet"> -->
	<!-- <link href="./project/static/bootstrap/css/bootstrap-responsive.css" rel="stylesheet"> -->
	<link rel="stylesheet" href="./project/static/plugin/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="./project/static/css/common.css" type="text/css" media="all" />
	<script src="./project/static/js/jquery-1.8.3.js"></script>
	<!-- <script src="./project/static/bootstrap/js/bootstrap.min.js"></script> -->
	<script src="./project/static/js/login.js"></script>
  </head>
  
<body>
<div id="container">
	<br><br>
	<h2 id="login_title">欢迎来到教学实验内容管理系统</h2>
	<br><br>
	<div class="shell" id="login_main">
		<!-- Main -->
		<div id="main">
			<!-- Content -->
			<!--  div id="content">-->
				<!-- Box -->
				<div class="box">
					
					<form action="./project/registerServlet" method="post" style="text-align:left;margin-left:200px;">
						<!-- Form -->
						<div class="form">
							<div class="control-group" style="marigin-top:5px;">
				    			用户名：<input type="text" id="inputUsername" name="username">
				  			</div>
				  			<div></div>
				  			<div class="control-group" style="marigin-top:5px;">
				    			密&nbsp&nbsp&nbsp码：<input type="password" id="inputPassword" name="password"">
							</div>
							<div class="control-group" style="marigin-top:5px;">
				    			性&nbsp&nbsp&nbsp别：
								<select name="gender">
								  <option value ="男">男</option>
								  <option value ="女">女</option>
								</select>
							</div>
							<div class="control-group" style="marigin-top:5px;">
				    			身&nbsp&nbsp&nbsp份：
								<select name="usertype">
								  <option value ="2">教师</option>
								  <option value ="3">学生</option>
								</select>
							</div>
						</div>
						<!-- End Form -->
						<div></div>
						<!-- Form Buttons -->
					<div style="margin:5px 0 10px 60px;">
							<input type="submit" id="login_submit" class="button" value="注册" style="margin:0px 10xp 0 0"/>
						</div>
						<!-- End Form Buttons -->
					</form>
				</div>
					
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
   		<!-- div style="color:red;">登录失败</div> -->
   		<div class="msg msg-error">
			<p><strong>登录失败，请重新登录</strong></p>
			<a href="./project/login.jsp" class="close" onclick='javascript:window.self.location="./project/login.jsp"'>close</a>
		</div>
    <%						 	
		 }
	%>
	</div>
	
	

<!-- End Container -->


</body>
  
</html>
