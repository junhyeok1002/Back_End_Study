<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%! int count1 = 0; %>	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호출</title>
</head>
<body>
	<%
		int count2 = 0;
		
		// 새로 고침하면 count1만 계속 증가, count2는 계속0;
		// Servlet 객체가 싱글턴으로 구현되어 있기 때문에 전역변수같이 count1은 계속 증가
		out.print("count1 : "+(count1++) + "<br/>");
		out.print("count2 : "+(count2++) + "<br/>");
		
	%>
	<a href="index.html">홈으로</a>
</body>
</html>