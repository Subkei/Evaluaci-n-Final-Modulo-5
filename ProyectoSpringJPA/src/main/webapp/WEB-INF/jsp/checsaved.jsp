<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>         
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pago ok</title>
    <!-- Bootstrap CSS-->
    <spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />
    
    <link href="${bootstrapCSS}" rel="stylesheet" />
</head>
<body>
<div class="pt-md-5 pb-md-4 mx-auto">
    </div>

    <div class="container">
      <div class="card-deck mb-3">
        <div class="card mb-4 box-shadow">
          <div class="card-header">
            <h4 class="my-0 font-weight-normal">${mensaje}</h4>
      </div>
          <div class="card-body">
            <ul class="list-unstyled mt-3 mb-4">
	            <li>Detalle: ${detalle}</li>
	            <li>Estado: ${estado}</li>
	            <li>ID Visitas: ${visitas_idvisitas}</li>
            </ul>
            <a type="button" class="btn btn-lg btn-primary" href="viewchec">Volver</a>
          </div>
        </div>
      </div>
    </div>
      
</body>
</html>