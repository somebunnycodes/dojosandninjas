<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>New Dojo</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> 
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
	<h1>New Ninja:</h1>
	<form:form action="/dojos" method="POST" modelAttribute="dojo">
		<p>
			<form:label path="name">Dojo Name</form:label>
			<form:input path="name"/>
			<form:errors path="name"/>
		</p>
		<input type="submit" value="submit"/>
	</form:form>
</body>
</html>