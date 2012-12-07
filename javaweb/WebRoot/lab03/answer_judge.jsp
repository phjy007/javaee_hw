<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>猜数结果</title>
</head>
<body background="cyan">
<c:set var="guess" value="${requestScope.guess}" />
<c:set var="check" value="${requestScope.check}"/>
<c:set var="less" value="${requestScope.less}" />
<c:choose>
	<c:when test="${guess}">恭喜你！猜中了！</c:when>
	<c:when test="${!guess}">
		<c:choose>
			<c:when test="${check}">
				<form action="./guessnum" method="POST">
					<div>
					<c:choose>
						<c:when test="${less}">太小了</c:when>
						<c:when test="${!less}">太大了</c:when>
					</c:choose>
					 <h3>猜数字(40～160)</h3>
  					<input name="user_number" type="text" value="" size="40" 
  		 				onkeyup="this.value=this.value.replace(/\D/g,'')" 
  		 				onafterpaste="this.value=this.value.replace(/\D/g,'')" /> 
  					<input type="submit" value="我猜我猜我猜猜猜">
				</form>
			</c:when>
			<c:when test="${!check}">
				<a href="./guessnum">您已猜错10次，请重试</a>
			</c:when>
		</c:choose>
	</c:when>
</c:choose><br/><br/>
</body>
</html>