<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>New Dojo</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="dashboard d-flex flex-column mx-auto">
		<h1 class="text-primary mx-auto">New Dojo</h1>
			<form:form action="/dojo/new" method="POST" modelAttribute="dojo" class="p-3 mx-auto">
			    <p>
			        <form:label path="dojoName">Name: </form:label>
			        <form:errors path="dojoName" class="text-danger"/>
			        <form:input path="dojoName"/>
			    </p>
			    <input type="submit" value="Submit" class="bg-warning"/>
			</form:form>
	</div> 
</body>
</html>