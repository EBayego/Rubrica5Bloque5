<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.io.*,java.util.*,AuthorBooks.model.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List Authors</title>
</head>
<body>
		<form action="listAllAuthor" method="post">
			<select name="searchBy">
			  <option value="name">Nombre</option>
			  <option value="born">Fecha de Nacimiento</option>
			</select> 
			<input type="text" name="val" /> 
			<input type="submit" value="Registrar">
		</form>



<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>

<table border="1">
	<thead>
		<tr>
			<td>Nombre</td>
			<td>Apellido</td>
			<td>Fecha de Nacimiento</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="item" items="${listAllAuthor}">
			<tr>
				<td><c:out value="${item.name}"/> </td>
				<td><c:out value="${item.surname}"/> </td>
				<td><c:out value="${item.born}"/> </td>
	    	</tr>
		</c:forEach>
	</tbody>
</table>

</body>
</html>