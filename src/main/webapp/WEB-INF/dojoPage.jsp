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
    <title>Dojo Page</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="dashboard d-flex flex-column mx-auto">
			<h1 class="text-primary mx-auto"><c:out value ="${dojo.dojoName}"></c:out> Location Ninjas</h1>
			
			<table class="table table-bordered border-dark table-striped p-3 col-10 mx-auto" style="width: 65rem;">
			    <thead class="thead-dark bg-warning text-dark">
			        <tr>
			            <th>First Name</th>
			            <th>LastName</th>
			            <th>Age</th>
			            
			        </tr>
			    </thead>
			    <tbody>
			         <!-- loop over all the ninjas  -->
			         <c:forEach var="ninja" items="${dojo.ninjas}">
			         <tr>
			    		<td><c:out value="${ninja.firstName}"/></td>
			    		<td><c:out value="${ninja.lastName}"/></td>
			    		<td><c:out value="${ninja.age}"/></td> 
			         </tr>
			    		
					</c:forEach>
			    </tbody>
			</table> 
	</div>

</body>
</html>