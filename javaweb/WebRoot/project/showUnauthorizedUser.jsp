<%@ page language="java" import="java.util.*,project.com.model.*,project.com.service.*;" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	SqlConn sqlbean = new SqlConn();
	Integer usertype = (Integer)session.getAttribute("usertype");
	Integer userid = (Integer)session.getAttribute("userid");
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
						<h2 class="left">新注册用户列表</h2>
					</div>
					<!-- End Box Head -->	

					<!-- Table -->
					<div class="table">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<th>编号</th>
								<th>用户名</th>
								<th>用户类型</th>
								<th>操作选项</th>
							</tr>
							<%	String getUnauthroizedUsers = "select * from javaee_pj_user where validated=0";
								ArrayList<User> users  = sqlbean.allUsers(getUnauthroizedUsers);
							//System.out.println("!!!  " + experiments.size());
								for(User c : users) {%>
								<tr>
									<td><%=c.getId()%></td>
									<td><%=c.getUsername() %></td>
									<td><% if(c.getUsertype() == 2) { %>
									教师
									<% } else if(c.getUsertype() == 3) { %>
									学生
									<%} %>
									</td>
									<%if(usertype == 1) {%>
									<td><a href="./project/delUnauthorizedUserServlet?id=<%=c.getId() %>" class="ico del">删除</a>
										<a href="./project/approveUnauthorizedUserServlet?id=<%=c.getId() %>" class="ico edit">批准</a>
									</td>
									<%} %>
									
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
