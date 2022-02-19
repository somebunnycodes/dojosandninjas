<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>New Ninja</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> 
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
	<h1>New Ninja:</h1>
		<form:form action="/ninjas" method="post" modelAttribute="ninja">
			<p>
				<form:label path="firstName">First Name:</form:label>
				<form:input path="firstName"/>
			</p>
			
			<p>
				<form:label path="lastName">Last Name:</form:label>
				<form:input path="lastName"/>
			</p>
			
			<p>
				<form:label path="age">Age:</form:label>
				<form:input path="age"/>
			</p>
			
			<p>
				<form:label path="dojo">Dojo:</form:label>
				<form:select path="dojo">
					<c:forEach var="eachDojo" items="${dojos}">
						<option value="${eachDojo.id}"><c:out value="${eachDojo.name}"/></option>
					</c:forEach>
				</form:select>
			</p>
			<input type="submit" value="Add Ninja" class="btn-primary"/>
		</form:form>
</body>
</html>