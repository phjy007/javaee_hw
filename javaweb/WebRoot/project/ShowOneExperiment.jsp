<%@ page language="java" import="java.util.*,project.com.model.*,project.com.service.*;" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��ѧʵ�����ݹ���ϵͳ</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!-- <link href="./project/static/bootstrap/css/bootstrap.css" rel="stylesheet"> -->
	<!-- <link href="./project/static/bootstrap/css/bootstrap-responsive.css" rel="stylesheet"> -->
	<link rel="stylesheet" href="./project/static/plugin/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="./project/static/css/common.css" type="text/css" media="all" />
	<script src="./project/static/js/jquery-1.8.3.js"></script>
	<!-- <script src="./project/static/bootstrap/js/bootstrap.min.js"></script> -->

  </head>
  
<body>
<%
	Integer usertype = (Integer)session.getAttribute("usertype");
	SqlConn sqlbean = new SqlConn();
	String exp_id_s = (String)request.getParameter("id");
	String exp = "select * from javaee_pj_experiment where id=" + exp_id_s;
	ArrayList<Experiment> experiments = sqlbean.allExperiments(exp);
	
%>
<!-- Header -->
<div id="header">
	<div class="shell">
		<jsp:include page="top.jsp"></jsp:include>  
		<!-- Main Nav -->
		<div id="navigation">
			<ul>
			    <li><a href="./project/refreshExperiment?page=1" class="active"><span>����ʵ��</span></a></li>
			    <li><a href="./project/showCourse.jsp?page=1"><span>���пγ�</span></a></li>
			    <%
			    	if(usertype == 1) {
			    %>
			    <li><a href="./project/auditNewUser.jsp"><span>ע�����</span></a></li>
			    <%} %>
			</ul>
		</div>
		<!-- End Main Nav -->
	</div>
</div>
<!-- End Header -->

<!-- Container -->
<div id="container">
	<div class="shell">
		 <div class="box">
					<!-- Box Head -->
					<div class="box-head">
						<h2><%=experiments.get(0).getExpname() %></h2>
					</div>
					<!-- End Box Head -->
					
					<form action="./project/updateExperimentServlet?id=<%=exp_id_s %>" method="post">
						<!-- Form -->
						<div class="form">	
								<p  class="inline-field">
									<b>ʵ��γ̣�</b>
									<%
										String getCourses = "select * from javaee_pj_course";
										ArrayList<Course> courses = sqlbean.allCourses(getCourses);
										//System.out.println("!!  " + courses.size());
									%>
									<span>
										<%for(Course c:courses) {
										%>
										<%if(experiments.get(0).getExpcourse_id()==c.getId()){%>
										<%=c.getCoursename() %>
										<%}%>
										<%} %>
									</span>
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<b>�ον�ʦ��</b>
									<%
										ArrayList<Course> t = sqlbean.allCourses("select * from javaee_pj_course where id=" + experiments.get(0).getExpcourse_id());
										ArrayList<User> u = sqlbean.allUsers("select * from javaee_pj_user where id=" + t.get(0).getTeacher_id());
									%>
									<%=u.get(0).getUsername() %>
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<b>��ʼ���ڣ�</b>
									<%=experiments.get(0).getTimestart()%>
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<b>�������ڣ�</b>
									<%=experiments.get(0).getTimeend()%>
								</p>
									<div><b>ʵ������</b></div>
									<hr>
									<div style="font-size:14px;line-height:22px;text-align:left;"><%=experiments.get(0).getExpcontent() %></div>
									
							
						</div>
						<!-- End Form -->
					</form>
				</div>
	</div>
</div>
<!-- End Container -->

<!-- Footer -->
<div id="footer">
	<div class="shell">
		<span class="left">&copy; 2012 - ��ѧʵ�����ݹ���ϵͳ</span>
		<span class="right">
			Copyright ����Բ 12212010024
		</span>
	</div>
</div>
<!-- End Footer -->
    
</body>
</html>