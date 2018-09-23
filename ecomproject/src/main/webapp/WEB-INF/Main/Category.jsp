<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ include file="NavBarDemo.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<table class="table table-bordered">

			<tr>
				<th>Category ID</th>
				<th>Category Name</th>
				
			</tr>

			<c:forEach var="category" items="${categorys}">
				<tr>
					<td>${category.id}</td>
					<td>${category.categoryName}</td>

					<td align="center"><a href="editCategory?id=${category.id}"
						class="btn btn-primary">Edit</a> | <a
						href="deleteCategory?id=${category.id}" class="btn btn-warning">Delete</a></td>
				</tr>

			</c:forEach>

		</table>
	</div>

</body>
</html>