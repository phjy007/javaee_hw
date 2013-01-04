<%@ page language="java" import="java.util.*,project.com.model.*,project.com.service.*;" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	SqlConn sqlbean = new SqlConn();
	Integer usertype = (Integer)session.getAttribute("usertype");
	Integer userid = (Integer)session.getAttribute("userid");
	Integer expCount = (Integer)session.getAttribute("expCount");
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
						<h2 class="left">ʵ���б�</h2>
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
							<%ArrayList<Experiment> experiments = (ArrayList<Experiment>)session.getAttribute("experiments");
							//System.out.println("!!!  " + experiments.size());
								for(Experiment c : experiments) {%>
								<tr>
									<td><%=c.getId()%></td>
									<td><a href="./project/ShowOneExperiment.jsp?id=<%=c.getId() %>" ><%=c.getExpname() %></a></td>
									<td><%=c.getTimestart() %></td>
									<td><%=c.getTimeend() %></td>
									<%if(usertype == 1) {%>
									<td><a href="./project/delExperimentServlet?id=<%=c.getId() %>" class="ico del">ɾ��</a>
										<a href="./project/editExperiment.jsp?id=<%=c.getId() %>" class="ico edit">�༭</a>
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
									 <td><a href="./project/delExperimentServlet?id=<%=c.getId() %>" class="ico del">ɾ��</a>
										<a href="./project/editExperiment.jsp?id=<%=c.getId() %>" class="ico edit">�༭</a>
									</td>
									 <%} else { %>
									 <td> - �� - </td>
									<%}} %>
									
								</tr>
							<%} %>						
						</table>
						
						
						<!-- Pagging -->
						<div class="pagging">
							<%if(usertype == 1 || usertype == 2) { %>
								<div class="left"><a href="./project/addExperiment.jsp">+����ʵ��</a>
							<%} %>
							<span>��<%=(expCount%12==0)?expCount/12:(expCount/12+1) %>ҳ</span>
							<div class="right">
								<%if(expCount > 12) { %>
									<%if(pageNo > 1) {%>
										<a href="./project/refreshExperiment?page=<%=pageNo-1 %>">ǰҳ</a>
									<% } %>
									<span>��<%=pageNo %>ҳ</span>
									<%if(pageNo < ((expCount%12)==0 ? expCount/12 : (expCount/12+1))) { %>
										<a href="./project/refreshExperiment?page=<%=pageNo+1 %>">��ҳ</a>
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