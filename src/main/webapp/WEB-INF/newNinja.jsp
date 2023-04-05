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
    <title>New Ninja</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="dashboard d-flex flex-column mx-auto">
		<h1 class="text-primary mx-auto">New Ninja</h1>
		<form:form action="/ninja/new" method="POST" modelAttribute="ninja" class="p-3 mx-auto">
					<form:label path="dojo">Dojo: </form:label>
					<form:select path="dojo">
					<form:errors path="dojo" class="text-danger"/>
	       			<c:forEach var="dojo" items="${dojos}">
				         <tr>
			       			<form:option value="${dojo.id}" label="${dojo.dojoName}"/>  
					</c:forEach>
			        
			        </form:select>  
				    <p>
				        <form:label path="firstName">First Name: </form:label>
				        <form:errors path="firstName" class="text-danger"/>
				        <form:input path="firstName"/>
				    </p>
				    <p>
				        <form:label path="lastName">Last Name: </form:label>
				        <form:errors path="lastName" class="text-danger"/>
				        <form:input path="lastName"/>
				    </p>
				    <p>
				        <form:label path="age">Age: </form:label>
				        <form:errors path="age" class="text-danger"/>
				        <form:input type="number" path="age"/>
				    </p>
				      
				    <input type="submit" value="Submit" class="bg-warning"/>
		</form:form>    
	</div>
</body>
</html>