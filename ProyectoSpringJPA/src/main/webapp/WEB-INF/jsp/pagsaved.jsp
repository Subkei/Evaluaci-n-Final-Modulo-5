<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pago ok</title>
</head>
<body>

<h2>${mensaje}</h2>
      <table>
         <tr>
            <td>Mes/Año</td>
            <td>${mesanio}</td>
         </tr>
         <tr>
            <td>Monto Regular</td>
            <td>${montoregular}</td>
         </tr>
         <tr>
            <td>Monto Adicionales</td>
            <td>${montoadicionales}</td>
         </tr>
         <tr>
            <td>ID Cliente</td>
            <td>${cliente_id}</td>
         </tr>                  
      </table>
      <br>
      <a class="btn btn-warning col-4" href="viewpag" role="button">Volver</a>  
      
</body>
</html>