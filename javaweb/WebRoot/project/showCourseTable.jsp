<%@ page language="java" import="java.util.*,project.com.model.*,project.com.service.*;" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	SqlConn sqlbean = new SqlConn();
	Integer usertype = (Integer)session.getAttribute("usertype");
	Integer userid = (Integer)session.getAttribute("userid");
	String page_s = (String)request.getParameter("page");
	int pageNo = Integer.parseInt(page_s);
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
						<h2 class="left">�γ��б�</h2>
					</div>
					<!-- End Box Head -->	

					<!-- Table -->
					<div class="table">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<th>���</th>
								<th>�γ�����</th>
								<th>�ον�ʦ</th>
								<th>����ѡ��</th>
							</tr>
							<% 
								String courseCountSQL = "select count(*) as num from javaee_pj_course";
								Integer courseCount = sqlbean.getCount(courseCountSQL);
								//System.out.println("courseCount=" + courseCount);
								
								String getAllCourses = "select * from javaee_pj_course limit " + 12 * (pageNo-1) + ",12";
								ArrayList<Course> courses = sqlbean.allCourses(getAllCourses);
								
								for(Course c : courses) {%>
								<tr>
									<td><%=c.getId()%></td>
									<td><%=c.getCoursename() %></td>
									<%ArrayList<User> t = sqlbean.allUsers("select * from javaee_pj_user where id=" + c.getTeacher_id());
									%>
									<td><%=t.get(0).getUsername() %></td>
									<%if(usertype == 1) {%>
									<td><a href="./project/delCourseServlet?id=<%=c.getId() %>" class="ico del">ɾ��</a>
										
									</td>
									<%} else {%>
									 <td> - �� - </td>
									<%} %>
									
								</tr>
							<%} %>						
						</table>
						
						
						<!-- Pagging -->
						<div class="pagging">
							<div class="left">
							<%if(usertype == 1) {%>
								<a href="./project/addCourse.jsp">(+���ӿγ�)</a>
							<%} %>
							<span>��<%=(courseCount%12==0)?courseCount/12:(courseCount/12+1) %>ҳ</span>
							<div class="right">
								<%if(courseCount > 12) { %>
									<%if(pageNo > 1) {%>
										<a href="./project/showCourse.jsp?page=<%=pageNo-1 %>">ǰҳ</a>
									<% } %>
									<span>��<%=pageNo %>ҳ</span>
									<%if(pageNo < ((courseCount%12)==0 ? courseCount/12 : (courseCount/12+1))) { %>
										<a href="./project/showCourse.jsp?page=<%=pageNo+1 %>">��ҳ</a>
									<%} %>
								<%} %>
							</div>
						</div>
						
						
						<!-- End Pagging -->
						
					</div>
					<!-- Table -->
					
				</div>
				<!-- End Box -->
				
			
			<div class="cl">&nbsp;</div>			
		</div>
		<!-- Main -->