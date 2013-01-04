<%@ page language="java" import="java.util.*,project.com.model.*,project.com.service.*;" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	SqlConn sqlbean = new SqlConn();
	Integer usertype = (Integer)session.getAttribute("usertype");
	Integer userid = (Integer)session.getAttribute("userid");
	ArrayList<Experiment> search_res = (ArrayList<Experiment>)session.getAttribute("search_experiment_result");
%>
<!-- Main -->
		<div id="main">
			<div class="cl">&nbsp;</div>
			
			<!-- Content -->
			<div id="content">
				
				<!-- Box -->
				<div class="box">
					<!-- Box Head -->
					<div class="box-head">
						<h2 class="left">����������ҵ�<%=search_res.size() %>������</h2>
						<div class="right">
							<label>����ʵ��</label>
							<form action="./project/searchExperimentServlet" method="GET">
								<input type="text" class="field small-field" name="expname"/>
								<input type="submit" class="button" value="����" />
								<select name="search_type">
								  <option value ="����">������</option>
								  <option value ="����">������</option>
								</select>
							</form>
						</div>
					</div>
					<!-- End Box Head -->	

					<!-- Table -->
					<div class="table">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<th>���</th>
								<th>ʵ������</th>
								<th>��ʼʱ��</th>
								<th>����ʱ��</th>
								<th>����ѡ��</th>
							</tr>
							<% for(Experiment c : search_res) {%>
								<tr>
									<td><%=c.getId()%></td>
									<td><a href="./project/ShowOneExperiment.jsp?id=<%=c.getId() %>" ><%=c.getExpname() %></a></td>
									<td><%=c.getTimestart() %></td>
									<td><%=c.getTimeend() %></td>
									<%if(usertype == 1) {%>
									<td><a href="./project/delExperimentServlet?id=<%=c.getId() %>" class="ico del">Delete</a>
										<a href="./project/editExperiment.jsp?id=<%=c.getId() %>" class="ico edit">Edit</a>
									</td>
									<%} else if(usertype == 3) {%>
									<td> - �� - </td>
									<%} else if(usertype == 2) {
									 	String getCourse = "select * from javaee_pj_course where teacher_id=" + userid;
									 	ArrayList<Course> courses = sqlbean.allCourses(getCourse);
									 	System.out.println(userid + "   ASDSAD " + courses.size());
									 	boolean isMyCourse = false;
									 	for(Course cc:courses) {
									 		if(c.getExpcourse_id() == cc.getId()) {
									 			System.out.println(c.getExpcourse_id() + " == " +  cc.getId());
									 			isMyCourse = true;
									 			break;
									 		}
									 	}
									 	if(isMyCourse) {
									 %>
									 <td><a href="./project/delExperimentServlet?id=<%=c.getId() %>" class="ico del">Delete</a>
										<a href="./project/editExperiment.jsp?id=<%=c.getId() %>" class="ico edit">Edit</a>
									</td>
									 <%} else { %>
									 <td> - �� - </td>
									<%}} %>
									
								</tr>
							<%} %>						
						</table>
						
					</div>
					<!-- Table -->
					
				</div>
				<!-- End Box -->
				
			
			<div class="cl">&nbsp;</div>			
		</div>
		<!-- Main -->
