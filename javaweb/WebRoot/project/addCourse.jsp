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
	Integer userid = (Integer)session.getAttribute("userid");
%>
<!-- Header -->
<div id="header">
	<div class="shell">
		<jsp:include page="top.jsp"></jsp:include>  
		<!-- Main Nav -->
		<div id="navigation">
			<ul>
			    <li><a href="./project/refreshExperiment?page=1" class="active"><span>����ʵ��</span></a></li>
			    <li><a href="./project/showCourse.jsp?page=1"><span>ʵ��γ�</span></a></li>
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
						<h2>���ӿγ�</h2>
					</div>
					<!-- End Box Head -->
					
					<form action="./project/addCourseServlet" method="post">
						<!-- Form -->
						<div class="form" style="text-align:left;margin-left:80px;">
								<p  class="inline-field">
									�γ�����
									<input type="text" class="field size1" name="course_name"/>
								</p>	
								<p  class="inline-field">
									�ον�ʦ
									<%
										SqlConn sqlbean = new SqlConn();
										String getTeachers = "select * from javaee_pj_user where usertype=2";
										ArrayList<User> teachers = sqlbean.allUsers(getTeachers);
										//System.out.println("!!  " + courses.size());
									%>
									<select class="field size3" name="course_teacher_id" >
										<%for(User c:teachers) {
											if(c.getValidated() == 1) {
										%>
										<option value="<%=c.getId()%>"><%=c.getUsername() %></option>
										<%}} %>
									</select><br>
								</p>	
							
						</div>
						<!-- End Form -->
						
						<!-- Form Buttons -->
						<div class="buttons">
							<input type="submit" class="button" value="��   ��" />
						</div>
						<!-- End Form Buttons -->
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