<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>         
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Proceso Exitoso</title>
    <!-- Bootstrap CSS-->
    <spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />
    
    <link href="${bootstrapCSS}" rel="stylesheet" />
</head>
<body>
<h2>Proceso Exitoso</h2>
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
	            <li>Fecha: ${fecha}</li>
	            <li>Motivo: ${motivo}</li>
	            <li>Actividades: ${actividades}</li>
	            <li>Estado: ${estado}</li>
	            <li>ID Cliente Asociado: ${cliente_id}</li>
            </ul>
            <a type="button" class="btn btn-lg btn-primary" href="viewmej">Volver</a>
          </div>
        </div>
      </div>
    </div>
      
</body>
</html>