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
	Integer userid = (Integer)session.getAttribute("userid");
	//System.out.println(userid + "  asdsadsada");
	ArrayList<User> u = sqlbean.allUsers("select * from javaee_pj_user where id=" + userid);
	//System.out.println(u.get(0).getUsername() + "   !!!!");
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
						<h2>�޸ĸ�����Ϣ</h2>
					</div>
					<!-- End Box Head -->
					
					<form action="./project/profileUpdateServlet?id=<%=userid %>" method="post" style="text-align:left;margin-left:400px;">
						<!-- Form -->
						<div class="form">
							<div class="control-group" style="marigin-top:5px;">
				    			�û�����<input type="text" id="inputUsername" name="username" value="<%=u.get(0).getUsername() %>">
				  			</div>
				  			<div></div>
				  			<div class="control-group" style="marigin-top:5px;">
				    			��&nbsp&nbsp&nbsp�룺<input type="password" id="inputPassword" name="password" value="<%=u.get(0).getPassword() %>">
							</div>
							<div class="control-group" style="marigin-top:5px;">
				    			��&nbsp&nbsp&nbsp��
								<select name="gender">
								  <option value ="��">��</option>
								  <option value ="Ů">Ů</option>
								</select>
							</div>
							<div class="control-group" style="marigin-top:5px;">
				    			��&nbsp&nbsp&nbsp�ݣ�
								<select name="usertype">
								  <option value ="2">��ʦ</option>
								  <option value ="3">ѧ��</option>
								</select>
							</div>
						</div>
						<!-- End Form -->
						<div></div>
						<!-- Form Buttons -->
					<div style="margin:5px 0 10px 60px;">
							<input type="submit" id="login_submit" class="button" value="�����޸�" style="margin:0px 10xp 0 0"/>
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