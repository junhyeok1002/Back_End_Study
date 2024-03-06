<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%!
	// 선언부 연습(변수나 함수 선언)
	int A = 20;
	int B = -20;
	String name = "SSAFY";
	
	public int add(int A, int B){
		return A+B;
	}
	
	public int abs(int A){
		return A > 0 ? A : -A ;
	}
	
%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언부</title>
</head>
<body>
	<a href="index.html">홈으로</a>
	<%
	// 여기에 메서드 선언 불가능!!!! => 선언부에 작성했어야만 함
	
	int C = 10;
	out.print("<br/>");
	
	out.print(add(A,B));
	out.print("<br/>");
	
	out.print(abs(B));
	out.print("<br/>");
	%>
</body>
</html>