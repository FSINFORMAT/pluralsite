<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
<%@include file="../css/style.css"%>
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Users list</title>

</head>
<body>
	<h2>Users list</h2>
	<table>
		<thead>
			<tr>
				<th>Name</th>
				<th>Age</th>
			</tr>
		</thead>
		<c:forEach var="user" items="${requestScope.userList}">
			<tr>
				<td>${user.name}</td>
				<td id="iage">${user.age}</td>
			</tr>
			
		</c:forEach>
	</table>
	<%--  <c:forEach var = "i" begin = "1" end = "5">
         Item <c:out value = "${i}"/><p>
      </c:forEach> --%>
</body>
</html>