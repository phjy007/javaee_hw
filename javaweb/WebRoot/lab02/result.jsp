
<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>测试得分</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%
    	int score = 0;
    	
    	String a1 = request.getParameter("q1");
    	a1 = new String(a1.getBytes("iso-8859-1"), "gb2312");
    	if("杨玉良".equals(a1)) {
    		score += 25;
    	}
    	
    	String a2 = request.getParameter("q2");
    	if(a2 != null)
    	a2 = new String(a2.getBytes("iso-8859-1"), "gb2312");
    	if("张江".equals(a2)) {
    		score += 25;
    	}
    	
    	String[] a3 = request.getParameterValues("q3");
    	if(a3 != null) {
	    	for(int i = 0; i< a3.length; i++) {
	    		a3[i] = new String(a3[i].getBytes("iso-8859-1"), "gb2312");
	    	}
	    	if((a3.length == 3) && "Servlet".equals(a3[0]) && "JSP".equals(a3[1]) && "Java Bean".equals(a3[2])) {
	    		score += 25;
	    	}
	    }
    	
    	String a4 = request.getParameter("q4");
    	if("T".equals(a4)) {
    		score += 25;
    	}
    %>
    
    <h4>你的成绩为：<%=score%></h4><br>
    <%
    	if(score == 100) {
    %>
    	恭喜你获得了满分!
    <%	} else if(score <=75) {
    %>
    	加油！再仔细想想争取更高分！
    <%  } else { %>
    	哎呀！分数有点低，再接再厉！
    <%  } %>
  </body>
</html>
