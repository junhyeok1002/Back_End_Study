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
<title>표현식</title>
</head>
<body>
 	<%-- 변수의 값이나 계산식, 함수 값 등등을 문자열로 웹 문서에 출력 --%>
 	
	<%= name %><br>
	<%= A + B %><br>
	<%= add(A, B) %><br>

	<a href="index.html">홈으로</a>
</body>
</html>