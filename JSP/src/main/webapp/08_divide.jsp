<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- 아래의 지시자를 뺴면 500 : 내부 서버 오류 남 --%>
<%-- 아래의 지시자는 에러나면 해당 페이지로 보내줌 --%>
<%@ page errorPage="09_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러연습</title>
</head>
<body>
	<h2>정수를 0으로 나누어 보자</h2>
	<%-- 자바에서는 2 / 0 에러남 --%>
	<%= 2 / 0 %>

	<a href="index.html">홈으로</a>
</body>
</html>