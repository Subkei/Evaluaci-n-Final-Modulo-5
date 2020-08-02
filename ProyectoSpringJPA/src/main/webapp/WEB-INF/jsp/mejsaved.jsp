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
			<td>Fecha</td>
			<td>${fecha}</td>	
		</tr>
		<tr>
			<td>Motivo</td>
			<td>${motivo}</td>
		</tr>
		<tr>
			<td>Actividades</td>
			<td>${actividades}</td>
		</tr>
		<tr>
			<td>Estado</td>
			<td>${estado}</td>
		</tr>
		<tr>
			<td>ID Cliente Asociado</td>
			<td>${cliente_id}</td>
		</tr>		
	</table>
	<br>
	<a class="btn btn-warning col-4" href="viewmej" role="button">Volver</a>
	
</body>
</html>