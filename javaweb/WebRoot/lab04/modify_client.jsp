<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312" import="java.util.ArrayList,lab04.fm.service.*;"%>
<jsp:useBean id="sqlbean" scope="session" class="lab04.fm.service.SqlConn" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript">
function check() {
	var name = document.getElementById("name").value;
	if(name == ""){
		alert("�������ֲ���Ϊ��");
		return false;
	}
	else
		document.getElementById("nr").innerHTML = "";
		
	var phone= document.getElementById("phone").value;
	if(phone.length != 8){
		alert("���󣺵绰������������");
		return false;
	}
	else
		document.getElementById("pr").innerHTML = "";
		
	var mobile = document.getElementById("mobile").value; 
	if(!(/^1[3|4|5|8][0-9]\d{4,8}$/.test(mobile))){ 
		alert("�����ֻ�������������");
		return false; 
	}
	else
		document.getElementById("mr").innerHTML = "";
		
	return true;
}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>��Ϣ�޸�</title>
</head>
<body background="cyan">
<% 
	String id = request.getParameter("id");
	if(id == null){
%>
<h2>�û�ѡ�����</h2>
<div><a href="../">����</a></div><br/>
<%
	}
	else{
		String sql = "select * from client where id = " + id;
		System.out.println("id=" + id);
		ArrayList<Client> clients = sqlbean.list(sql);
		//assert(ps.size() == 1);
		Client p = clients.get(0);
%>
<form action="./control">
<table>
	<input type="hidden" name="action" value="toModify"/>
	<input type="hidden" name="id" value="<%=p.getId()%>"/>
  	<tr><td>��ţ�</td>
  	<td><!-- td><%=p.getId() %></td></tr-->
  	<input id="name" name="name" type="text" disabled size="20" value="<%=p.getId() %>"></tr>
  	<tr><td>������</td>
  	<td><input id="name" name="name" type="text" size="20" value="<%=p.getName() %>">
  		<td id="nr"></td>
  	</tr>
  	<tr><td>�绰��</td>
  		<td><input id ="phone" name="phone" type="text" size="20" value="<%=p.getPhone() %>" onkeyup="this.value=this.value.replace(/\D/g,'')" 
  		onafterpaste="this.value=this.value.replace(/\D/g,'')"/></td>
  		<td id="pr"></td>
  	</tr>
  	<tr><td>�ֻ����룺</td>
  		<td><input id="mobile" name="mobile" type="text" size="20" value="<%=p.getMobile() %>" onkeyup="this.value=this.value.replace(/\D/g,'')" 
  		 onafterpaste="this.value=this.value.replace(/\D/g,'')"/></td>
  		<td id="mr"></td>
  	</tr>
  	<tr><td>��ַ��</td>
  		<td><input id="address" name="address" type="text" size="20" value="<%=p.getAddress() %>"/></td>
  	</tr>
  	<tr>
  		<td><input type="submit" value="ȷ��" onclick="return check()"></td>
  	</tr>
</table><br/>
</form>
<div><a href="../">����</a></div><br/>
<%}%>
</body>
</html>
