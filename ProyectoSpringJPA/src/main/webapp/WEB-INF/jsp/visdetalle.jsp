<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>  
<!doctype html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Detalle Visita</title>
		<!-- Bootstrap CSS JS-->
	    <spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />
	    
	    <link href="${bootstrapCSS}" rel="stylesheet" />
	</head>
	<body>
		<div class="pt-md-5 pb-md-4 mx-auto"></div>
		 <div class="container">
      		<div class="card-deck mb-3">
        		<div class="card mb-4 box-shadow">
          			<div class="card-header">
            			<h4 class="my-0 font-weight-normal">Detalle Visita</h4>
          			</div>
          		<div class="card-body">
          			<ul class="list-unstyled mt-3 mb-4">
	          			<li>ID Visita: ${visData.getIdvisita()}</li>
	          			<li>Dirección: ${visData.getDireccion()}</li>
	          			<li>Ciudad: ${visData.getCiudad()}</li>
	          			<li>Fecha: ${visData.getFecha()}</li>
	          			<li>Resumen: ${visData.getResumen()}</li>
	          			<li>Observaciones: ${visData.getObservaciones()}</li>
	          			<li>ID Cliente: ${visData.getCliente_id()}</li>
	          			<li>ID Empleado: ${visData.getEmpleado_idempleado()}</li>
          			</ul>        
			<a type="button" class="btn btn-lg btn-primary" href="/ProyectoSpringJPA/viewvis">Volver al Listado</a>
          </div>
        </div>
      </div>
    </div>  
	</body>
</html>
