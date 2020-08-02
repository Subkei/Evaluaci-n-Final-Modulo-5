<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Proceso Exitoso</title>
</head>
<body>

<h2>${mensaje}</h2>
	<table>
		<tr>
			<td>Nombre</td>
			<td>${nombre}</td>
		</tr>
		<tr>
			<td>Especialidad</td>
			<td>${especialidad}</td>
		</tr>
	</table>
	<br />
	<a class="btn btn-warning col-4" href="viewemp" role="button">Volver</a>

</body>
</html>