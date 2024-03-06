<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다른 JSP include</title>
</head>
<body>
	<%@ include file = "/template/header.jsp" %>
	
	<h2>include 실습용 jsp 입니다</h2>
	
	<%-- footer도 작성해서 include 할 수 있다. --%>
	
	<a href="index.html">홈으로</a>
</body>
</html>