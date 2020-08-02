<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Chequeo agregado</title>
</head>
<body>

<h2>${mensaje}</h2>
      <table>
         <tr>
            <td>Detalle</td>
            <td>${detalle}</td>
         </tr>
         <tr>
            <td>Estado</td>
            <td>${estado}</td>
         </tr>
         <tr>
            <td>ID Visita</td>
            <td>${idvisita}</td>
         </tr>                  
      </table>
      <br>
      <a class="btn btn-warning col-4" href="viewchec" role="button">Volver</a>  
      
</body>
</html>