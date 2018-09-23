<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="NavBarDemo.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products List</title>
</head>
<body>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<div class="container">
		<b>Products List</b>
		<table class="table table-stripped">
			<thead>
				<tr>
					<th>Product Name</th>
					<th>Brand</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="p" items="${productsList }">
					<tr>
						<td>${p.productname }</td>
						<td>${p.brand }</td>
						<td>${p.price }</td>
						<td>${p.quantity }</td>
						<td><a href=""><span
								class="glyphicon glyphicon-info-sign"></span></a> <a href=""><span
								class="glyphicon glyphicon-trash"></span></a> <a href=""><span
								class="glyphicon glyphicon-pencil"></span></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>