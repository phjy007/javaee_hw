<%@ page language="java" import="java.util.*,lab03.com.servlet.shopping.*" pageEncoding="GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�ҵĹ��ﳵ</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <%
	MyCart cart = (MyCart)session.getAttribute("cart");
	ArrayList<goodsItem> goods = (ArrayList<goodsItem>)session.getAttribute("goods");
	double sumPrice = 0.0;
	int id;
	if(request.getParameter("id") != null) {
		id = Integer.parseInt(request.getParameter("id"));
		goods.get(id).setOrder(0);
	}

%>
 <body>
<CENTER><h2>��ӭѡ��retina MacBook Proϵ�в�Ʒ</h2>
<h4>�ҵĹ��ﳵ</h4>
<form action="./settlement.jsp">
	<% 
		boolean hasItem = false;
		for(int i = 0; i < cart.getGoods().size(); i++) {
			if(cart.getGoods().get(i).getOrder() > 0) {
				hasItem = true;
				break;
			}
		}
		if(hasItem) {
 	%>
	<table border="1" bordercolorlight="#ccaaff" cellpadding="2" bordercolordark="#ffffff" cellspacing="0">
		<tr align="center"><td>��Ʒ����</td><td>����(Ԫ)</td><td>��ѡ������</td><td>�ܼ�(Ԫ)</td><td>ȡ������</td></tr>
  		<% 
  			sumPrice = 0.0;
  			for(int i = 0; i < goods.size(); i++) {
  				if(cart.getGoods().get(i).getOrder() > 0) {
  				sumPrice += cart.getGoods().get(i).getOrder()*cart.getGoods().get(i).getPrice();
  		%>
  		<tr align="center"><td><%=cart.getGoods().get(i).getName()%></td><td><%=cart.getGoods().get(i).getPrice()%></td>
  		<td><%=cart.getGoods().get(i).getOrder()%></td><td><%=cart.getGoods().get(i).getOrder()*cart.getGoods().get(i).getPrice()%></td><td><a href="./lab03/MyCart.jsp?id=<%=i%>">ɾ��</a></td>
  		<%
  				}
  			}
  			session.setAttribute("sumPrice", sumPrice);
  		} else {
  			sumPrice = 0.0;
  			%><div>����û��ѡ����Ʒ���Ͽ�ȥ��ѡ�����ǵĲ�Ʒ�ɣ�</div><%
  			session.setAttribute("sumPrice", sumPrice);
  		}
  		%>
	</table><br>
	<input type="button" value="ȥ���㿩" onclick="window.location='./Settlement.jsp'"/>
	<input type="button" value="��������" onclick="window.location='./ShoppingIndex.jsp'"/>
</form>
</CENTER>
</body>
</html>
