<%@ page language="java" import="java.util.*,lab03.com.servlet.shopping.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Java Web���Ϲ���</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <script language="javascript">
		function getNumber0() {
			//alert("00");
			return document.getElementById("item0").value;
		}
		function getNumber1() {
			//alert("11");
			return document.getElementById("item1").value;
		}
		function getNumber2() {
			//alert("22");
			return document.getElementById("item2").value;
		}
		function getNumber3() {
			//alert("33");
			return document.getElementById("item3").value;
		}
</script>
  
  
  <body>
<%	
	ArrayList<goodsItem> goods = (ArrayList<goodsItem>)session.getAttribute("goods");
	if(goods == null) { // ��ʼ����Ʒչʾҳ��
		goods = new ArrayList<goodsItem>();
		goods.add(new goodsItem("retina MacBook Pro 13(����)", 12000.0, 99));
		goods.add(new goodsItem("retina MacBook Pro 13(����)", 14000.0, 99));
		goods.add(new goodsItem("retina MacBook Pro 15(����)", 16000.0, 99));
		goods.add(new goodsItem("retina MacBook Pro 15(����)", 19000.0, 99));
	}
	
	MyCart cart = (MyCart)session.getAttribute("cart");
	if(cart == null) {
		cart = new MyCart(goods);
	}
	
	String count, name;
	int id;
	if(request.getParameter("id") != null) { 
		id = Integer.parseInt(request.getParameter("id"));
		if(id >= 0 && id < goods.size()) {
			count = request.getParameter("count");
			name = goods.get(id).getName();
			int sum = goods.get(id).getOrder() + Integer.parseInt(count);
			goods.get(id).setOrder(sum);
			
		}
	} else {
		
	}
	
	session.setAttribute("goods", goods);
	session.setAttribute("cart", cart);
%>

<CENTER><div>
<h2>��ӭѡ��retina MacBook Proϵ�в�Ʒ</h2>
<form action="./lab03/MyCart.jsp">
	<table border="1" bordercolorlight="#ccaaff" cellpadding="2" bordercolordark="#ffffff" cellspacing="0">
		<tr align="center"><td>��Ʒ����</td><td>����(Ԫ)</td><td>�������</td><td>��Ҫ����</td></tr>
		<tr align="center"><td><%=goods.get(0).getName()%></td><td><%=goods.get(0).getPrice()%></td><td><input type="text" name="item0" id="item0" size=4 value=0
			onkeyup="this.value=this.value.replace(/\D/g,'')" 
  		 	onafterpaste="this.value=this.value.replace(/\D/g,'')"/>(���ʣ��<%=goods.get(0).getInventory()-goods.get(0).getOrder()%>��)</td><td><a href="#" onClick="this.href='./lab03/ShoppingIndex.jsp?id=0&count='+getNumber0()">ѡ��</a></td></tr>
		<tr align="center"><td><%=goods.get(1).getName()%></td><td><%=goods.get(1).getPrice()%></td><td><input type="text" name="item1" id="item1" size=4 value=0
			onkeyup="this.value=this.value.replace(/\D/g,'')" 
  		 	onafterpaste="this.value=this.value.replace(/\D/g,'')"/>(���ʣ��<%=goods.get(1).getInventory()-goods.get(1).getOrder()%>��)</td><td><a href="#" onClick="this.href='./lab03/ShoppingIndex.jsp?id=1&count='+getNumber1()">ѡ��</a></td></tr>
		<tr align="center"><td><%=goods.get(2).getName()%></td><td><%=goods.get(2).getPrice()%></td><td><input type="text" name="item2" id="item2" size=4 value=0
			onkeyup="this.value=this.value.replace(/\D/g,'')" 
  		 	onafterpaste="this.value=this.value.replace(/\D/g,'')"/>(���ʣ��<%=goods.get(2).getInventory()-goods.get(2).getOrder()%>��)</td><td><a href="#" onClick="this.href='./lab03/ShoppingIndex.jsp?id=2&count='+getNumber2()">ѡ��</a></td></tr>
  		<tr align="center"><td><%=goods.get(3).getName()%></td><td><%=goods.get(3).getPrice()%></td><td><input type="text" name="item3" id="item3" size=4 value=0
			onkeyup="this.value=this.value.replace(/\D/g,'')" 
  		 	onafterpaste="this.value=this.value.replace(/\D/g,'')"/>(���ʣ��<%=goods.get(2).getInventory()-goods.get(3).getOrder()%>��)</td><td><a href="#" onClick="this.href='./lab03/ShoppingIndex.jsp?id=3&count='+getNumber3()">ѡ��</a></td></tr>
	</table><br>
	<input type="submit" value="�鿴���ﳵ" onclick="window.location='./lab03/MyCart.jsp'"/>
</form>
</div></CENTER>
</body>
</html>
