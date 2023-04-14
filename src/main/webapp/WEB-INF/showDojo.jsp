<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dojo Page</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script defer src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container mt-3">
		<h1><c:out value="${dojo.name }" /> Location Ninjas</h1>
		<table class="table">
			<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Age</th>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach var="eachNinja" items="${dojo.ninjas }">
					<tr>
						<td><c:out value="${eachNinja.firstName }"/></td>
						<td><c:out value="${eachNinja.lastName }"/></td>
						<td><c:out value="${eachNinja.age }"/></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>