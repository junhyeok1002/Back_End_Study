<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>

	<!-- 로그 아웃하는 방법 -->
	<% session.removeAttribute("id"); %>
	
	<% session.invalidate(); %>
	
	<script>
		alert("로그아웃 했습니다.")
		location.href = "index.html";
	</script>
	
</body>
</html>