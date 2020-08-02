<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">	
		<title>Visitas guardada con exito </title>
	</head>
	<body>
	  <h2>${mensaje}</h2>
      <table>
         <tr>
            <td>Direccion</td>
            <td>${direccion}</td>
         </tr>
         <tr>
            <td>Ciudad</td>
            <td>${ciudad}</td>
         </tr>
         <tr>
            <td>Fecha</td>
            <td>${fecha}</td>
         </tr>
         <tr>
            <td>Resumen</td>
            <td>${resumen}</td>
         </tr>
         <tr>
            <td>Observaciones</td>
            <td>${observaciones}</td>
         </tr>           
         <tr>
            <td>Cliente Id</td>
            <td>${cliente_id}</td>
         </tr>   <tr>
            <td>Empleado Id</td>
            <td>${empleado_idempleado}</td>
         </tr>          
      </table>
	  <br />
      <a class="btn btn-warning col-4" href="viewvis" role="button">Volver</a>  
	</body>
</html>