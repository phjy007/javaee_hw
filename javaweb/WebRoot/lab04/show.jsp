<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312" import="java.util.ArrayList,lab04.fm.service.*;"%>
<jsp:useBean id="sqlbean" scope="session" class="lab04.fm.service.SqlConn" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>�ͻ���Ϣ��</title>
</head>
<body>
	<h2>�ͻ���Ϣ��</h2>
	<table border="1">
	<tr><td>���</td><td>����</td><td>�绰</td><td>�ֻ�����</td><td>��ַ</td><td>�޸�|ɾ��</td></tr>
	<%
		String sql = "select * from client";
		ArrayList<Client> clients = sqlbean.list(sql);
		for(Client c:clients){%>
		<tr>
			<td><%=c.getId() %></td>
			<td><%=c.getName() %></td>
			<td><%=c.getPhone() %></td>
			<td><%=c.getMobile() %></td>
			<td><%=c.getAddress() %></td>
			<td>
				<a href="./control?action=modify&id=<%=c.getId() %>">�޸�</a>|<a href="./control?action=delete&id=<%=c.getId() %>">ɾ��</a>
			</td>
		</tr>
		<%}%>
	</table><br/>
	<form action="./control">
		<input type="hidden" name="action" value="add"/>
		<button type="submit" onclick>����</button>
	</form>
<div><a href="../">����</a></div><br/>
</body>
</html>