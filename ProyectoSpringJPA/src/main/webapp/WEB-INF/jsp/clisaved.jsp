<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cliente ok</title>
</head>
<body>

<h2>${mensaje}</h2>
      <table>
         <tr>
            <td>Nombre</td>
            <td>${nombre}</td>
         </tr>
         <tr>
            <td>Telefono</td>
            <td>${telefono}</td>
         </tr>
         <tr>
            <td>Correo electrónico</td>
            <td>${correoelectronico}</td>
         </tr>
         <tr>
            <td>Rubro</td>
            <td>${rubro}</td>
         </tr>
         <tr>
            <td>Dirección</td>
            <td>${direccion}</td>
         </tr>                  
      </table>
      <br>
      <a class="btn btn-warning col-4" href="viewcli" role="button">Volver</a>  
      
</body>
</html>