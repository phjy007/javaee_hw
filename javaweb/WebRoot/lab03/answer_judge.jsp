<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>�������</title>
</head>
<body background="cyan">
<c:set var="guess" value="${requestScope.guess}" />
<c:set var="check" value="${requestScope.check}"/>
<c:set var="less" value="${requestScope.less}" />
<c:choose>
	<c:when test="${guess}">��ϲ�㣡�����ˣ�</c:when>
	<c:when test="${!guess}">
		<c:choose>
			<c:when test="${check}">
				<form action="./guessnum" method="POST">
					<div>
					<c:choose>
						<c:when test="${less}">̫С��</c:when>
						<c:when test="${!less}">̫����</c:when>
					</c:choose>
					 <h3>������(40��160)</h3>
  					<input name="user_number" type="text" value="" size="40" 
  		 				onkeyup="this.value=this.value.replace(/\D/g,'')" 
  		 				onafterpaste="this.value=this.value.replace(/\D/g,'')" /> 
  					<input type="submit" value="�Ҳ��Ҳ��Ҳ²²�">
				</form>
			</c:when>
			<c:when test="${!check}">
				<a href="./guessnum">���Ѳ´�10�Σ�������</a>
			</c:when>
		</c:choose>
	</c:when>
</c:choose><br/><br/>
</body>
</html>