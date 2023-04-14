<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Ninja</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script defer src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container mt-3">
		<h1>New Ninja</h1>
		<form:form action="/ninjas/new" method="post" modelAttribute="newNinja" class="w-25">
			<div class="mb-3">
				<form:label path="dojo" class="form-label">Dojo:</form:label>
				<form:select path="dojo" class="form-select">
					 <c:forEach var="eachDojo" items="${dojos }">
					 	<form:option value="${eachDojo.id}"><c:out value="${eachDojo.name}" /></form:option>
					 </c:forEach>
				</form:select>
				<p class="form-text text-danger"><form:errors path="dojo"/></p>
			</div>
			<div class="mb-3">
				<form:label path="firstName" class="form-label">First Name:</form:label>
				<form:input type="text" path="firstName" class="form-control" />
				<p class="form-text text-danger"><form:errors path="firstName"/></p>
			</div>
			<div class="mb-3">
				<form:label path="lastName" class="form-label">Last Name:</form:label>
				<form:input type="text" path="lastName" class="form-control" />
				<p class="form-text text-danger"><form:errors path="lastName"/></p>
			</div>
			<div class="mb-3">
				<form:label path="age" class="form-label">Age:</form:label>
				<form:input type="number" path="age" class="form-control" />
				<p class="form-text text-danger"><form:errors path="age"/></p>
			</div>
			
			<button type="submit" class="btn btn-primary" >Create</button>

		</form:form>
	</div>
</body>
</html>