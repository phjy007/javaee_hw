<%@ page language="java" import="java.util.*,lab03.com.servlet.shopping.*" pageEncoding="GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的购物车</title>
    
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
<CENTER><h2>欢迎选购retina MacBook Pro系列产品</h2>
<h4>我的购物车</h4>
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
		<tr align="center"><td>产品名称</td><td>单价(元)</td><td>已选购件数</td><td>总价(元)</td><td>取消购买</td></tr>
  		<% 
  			sumPrice = 0.0;
  			for(int i = 0; i < goods.size(); i++) {
  				if(cart.getGoods().get(i).getOrder() > 0) {
  				sumPrice += cart.getGoods().get(i).getOrder()*cart.getGoods().get(i).getPrice();
  		%>
  		<tr align="center"><td><%=cart.getGoods().get(i).getName()%></td><td><%=cart.getGoods().get(i).getPrice()%></td>
  		<td><%=cart.getGoods().get(i).getOrder()%></td><td><%=cart.getGoods().get(i).getOrder()*cart.getGoods().get(i).getPrice()%></td><td><a href="./lab03/MyCart.jsp?id=<%=i%>">删除</a></td>
  		<%
  				}
  			}
  			session.setAttribute("sumPrice", sumPrice);
  		} else {
  			sumPrice = 0.0;
  			%><div>您还没有选购产品，赶快去挑选您心仪的产品吧！</div><%
  			session.setAttribute("sumPrice", sumPrice);
  		}
  		%>
	</table><br>
	<input type="button" value="去结算咯" onclick="window.location='./Settlement.jsp'"/>
	<input type="button" value="继续购买" onclick="window.location='./ShoppingIndex.jsp'"/>
</form>
</CENTER>
</body>
</html>
