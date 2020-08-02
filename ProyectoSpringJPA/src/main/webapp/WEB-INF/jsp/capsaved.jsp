<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">		
		<title>Capacitacion guardado con exito</title>
	</head>
	<body>	
		<h2>${mensaje}</h2>
	    <table>
	         <tr>
	            <td>Fecha</td>
	            <td>${fecha}</td>
	         </tr>
	         <tr>
	            <td>Hora</td>
	            <td>${hora}</td>
	         </tr>
	         <tr>
	            <td>Numero Asistentes</td>
	            <td>${numasistentes}</td>
	         </tr>
	         <tr>
	            <td>Visitas Id</td>
	            <td>${visitas_idvisitas}</td>
	         </tr>	                     
	     </table>	
	     <br>	
	     <a class="btn btn-warning col-4" href="viewcap" role="button">Volver</a>   
	</body>
</html>