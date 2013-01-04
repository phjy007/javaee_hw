<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	Integer usertype = (Integer)session.getAttribute("usertype");
%>
<!-- Logo + Top Nav -->
		<div id="top">
			<h1><strong><a href="./project/refreshExperiment?page=1">教学实验内容管理系统</a></strong></h1>
			<div id="top-navigation">
				欢迎 <strong><%=(String)session.getAttribute("username")%></strong>
				(
				<%if(usertype == 1) { %>
				管理员
				<%} else if(usertype == 2) { %>
				教师
				<%} else if(usertype == 3) { %>
				学生
				<%} else if(usertype == 4) { %>
				未登入
				<%} %>
				)
				<span>|</span>
				<%if(usertype != 4) {%>
				<a href="./project/profile.jsp">个人信息</a>
				<span>|</span>
				<%} %>
				<a href="./project/logout">注销</a>
			</div>
		</div>
		<!-- End Logo + Top Nav -->

