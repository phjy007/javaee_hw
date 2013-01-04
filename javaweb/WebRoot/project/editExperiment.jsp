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
						<h2>�޸�ʵ������</h2>
					</div>
					<!-- End Box Head -->
					
					<form  style="text-align:left;margin-left:80px;" action="./project/updateExperimentServlet?id=<%=exp_id_s %>" method="post">
						<!-- Form -->
						<div class="form">
								<p  class="inline-field">
									ʵ������
									<input type="text" class="field size1" name="experiment_name" value="<%=experiments.get(0).getExpname() %>"/>
								</p>	
								<p  class="inline-field">
									ʵ��γ�
									<%
										String getCourses = "select * from javaee_pj_course";
										ArrayList<Course> courses = sqlbean.allCourses(getCourses);
										//System.out.println("!!  " + courses.size());
									%>
									<select class="field size3" name="experiment_course" >
										<%for(Course c:courses) {
										%>
										<option value="<%=c.getId()%>" <%if(experiments.get(0).getExpcourse_id()==c.getId()){%>selected<%}%>><%=c.getCoursename() %></option>
										<%} %>
									</select><br>
								</p>
								<p class="inline-field">
									��ʼ����
									<select class="field size3" name="experiment_start_year">
										<option value="2013">2013��</option>
										<option value="2014">2014��</option>
										<option value="2015">2015��</option>
									</select>
									<select class="field size3" name="experiment_start_month">
										<option value="01">1��</option>
										<option value="02">2��</option>
										<option value="03">3��</option>
										<option value="04">4��</option>
										<option value="05">5��</option>
										<option value="06">6��</option>
										<option value="07">7��</option>
										<option value="08">8��</option>
										<option value="09">9��</option>
										<option value="10">10��</option>
										<option value="11">11��</option>
										<option value="12">12��</option>
									</select>
									<select class="field size2" name="experiment_start_day">
										<option value="01">1</option>
										<option value="02">2</option>
										<option value="03">3</option>
										<option value="04">4</option>
										<option value="05">5</option>
										<option value="06">6</option>
										<option value="07">7</option>
										<option value="08">8</option>
										<option value="09">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
										<option value="21">21</option>
										<option value="22">22</option>
										<option value="23">23</option>
										<option value="24">24</option>
										<option value="25">25</option>
										<option value="26">26</option>
										<option value="27">27</option>
										<option value="28">28</option>
										<option value="29">29</option>
										<option value="30">30</option>
										<option value="31">31</option>
									</select>
								</p>
								<p class="inline-field">
									��������
									<select class="field size3" name="experiment_end_year">
										<option value="2013">2013��</option>
										<option value="2014">2014��</option>
										<option value="2015">2015��</option>
									</select>
									<select class="field size3" name="experiment_end_month">
										<option value="01">1��</option>
										<option value="02">2��</option>
										<option value="03">3��</option>
										<option value="04">4��</option>
										<option value="05">5��</option>
										<option value="06">6��</option>
										<option value="07">7��</option>
										<option value="08">8��</option>
										<option value="09">9��</option>
										<option value="10">10��</option>
										<option value="11">11��</option>
										<option value="12">12��</option>
									</select>
									<select class="field size2" name="experiment_end_day">
										<option value="01">1</option>
										<option value="02">2</option>
										<option value="03">3</option>
										<option value="04">4</option>
										<option value="05">5</option>
										<option value="06">6</option>
										<option value="07">7</option>
										<option value="08">8</option>
										<option value="09">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
										<option value="21">21</option>
										<option value="22">22</option>
										<option value="23">23</option>
										<option value="24">24</option>
										<option value="25">25</option>
										<option value="26">26</option>
										<option value="27">27</option>
										<option value="28">28</option>
										<option value="29">29</option>
										<option value="30">30</option>
										<option value="31">31</option>
									</select>
								</p>
								
								<p>
									<label>ʵ������</label>
									<textarea class="field size1" rows="20" cols="30"  name="experiment_content"><%=experiments.get(0).getExpcontent() %></textarea>
								</p>	
							
						</div>
						<!-- End Form -->
						
						<!-- Form Buttons -->
						<div class="buttons">
							<input type="submit" class="button" value="��  ��" />
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