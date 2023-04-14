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
<title>New Dojo</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script defer src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container mt-3">
		<h1>New Dojo</h1>
		<form:form action="/dojos/new" method="post" modelAttribute="newDojo" class="w-25">
			<div class="mb-3">
				<form:label path="name" class="form-label">Name</form:label>
				<form:input type="text" path="name" class="form-control" />
				<p class="form-text text-danger"><form:errors path="name"/></p>
			</div>
			
			<button type="submit" class="btn btn-primary" >Create</button>

		</form:form>
	</div>

</body>
</html>