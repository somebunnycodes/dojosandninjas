<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Show Dojo</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> 
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
	<h1><c:out value="${dojo.name}" /></h1>
	<form:form>
		<ul>
			<c:forEach var="ninja" items="${dojo.ninjas}">
				<li><c:out value="${ninja.firstName}"/> <c:out value="${ninja.lastName}"/></li>
				<form:errors path="name"/>
			</c:forEach>
		</ul>
	</form:form>
</body>
</html>