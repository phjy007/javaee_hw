<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="myconvert" uri="/WEB-INF/tlds/convertTag.tld"%> 
<html>
<head>
<title>ת�����</title>
</head>
<body>
	<h3>ת��</h3>
	<myconvert:convert num='<%=request.getParameter("number") %>'/>
</body>
</html>