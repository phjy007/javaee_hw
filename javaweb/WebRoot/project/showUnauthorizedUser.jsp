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
						<h2 class="left">��ע���û��б�</h2>
					</div>
					<!-- End Box Head -->	

					<!-- Table -->
					<div class="table">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<th>���</th>
								<th>�û���</th>
								<th>�û�����</th>
								<th>����ѡ��</th>
							</tr>
							<%	String getUnauthroizedUsers = "select * from javaee_pj_user where validated=0";
								ArrayList<User> users  = sqlbean.allUsers(getUnauthroizedUsers);
							//System.out.println("!!!  " + experiments.size());
								for(User c : users) {%>
								<tr>
									<td><%=c.getId()%></td>
									<td><%=c.getUsername() %></td>
									<td><% if(c.getUsertype() == 2) { %>
									��ʦ
									<% } else if(c.getUsertype() == 3) { %>
									ѧ��
									<%} %>
									</td>
									<%if(usertype == 1) {%>
									<td><a href="./project/delUnauthorizedUserServlet?id=<%=c.getId() %>" class="ico del">ɾ��</a>
										<a href="./project/approveUnauthorizedUserServlet?id=<%=c.getId() %>" class="ico edit">��׼</a>
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