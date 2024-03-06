<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트릿</title>
</head>
<body>
	<h2>스크립트릿 연습</h2>
	
	<%
	
	int A = 10;
	int B = 20;
	
	out.println("A + B = " +(A+B)); // println이든 print든 줄 바꿈 반영 안됨
	
	// 줄바꿈 1번방법
	out.print("<br/>");
	
	out.print("A + B = " +(A+B)); // println이든 print든 줄 바꿈 반영 안됨
	
	// 줄바꿈 2번방법 : 아래처럼 끊어주고 br 후 다시 열기
	%> <br> <%
	
	%>
	
	<a href="index.html">홈으로</a>
</body>
</html>
