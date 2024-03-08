<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
	<c:out value = "Hello! JSTL"/><br>
	<c:out value="Hello! JSTL2"></c:out>  <br>
	
	<hr>
	<h3>C:set</h3>
	<c:set var="name" value = "Yang"/> ${name} <br>
	<c:set var="name2">Kim</c:set>${name2} <br>
	
	<c:set var = "person" value="<%= new com.ssafy.dto.Person() %>"/>
	<c:set target="${person}" property="name" value="Yang2"/>
	${person} <br>
	
	
</body>
</html>