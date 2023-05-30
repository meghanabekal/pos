<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="ISO-8859-1">

<title>Insert title here</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

</head>

<body>

<form action="byname">

Enter Department Name:<input type="text" name = "txtDname">

<input type="submit">

</form>

<h2>Department List</h2>

<table class = "table table-bordered table-striped"></table>

<tr>

<th >Id</th>

<th >DepartmentName</th>

<th >Location</th>

<th >Budget</th>
</tr>
<c:forEach var="dep" items="${list}">
 <tr>
 <td>${list}</td>
<td>${dep.deptno}</td>
<td>${dep.dname}</td>
<td>${dep.loc}</td>
<td>${dep.budget}</td>
</tr>
</c:forEach>
 

</body>

</html>


