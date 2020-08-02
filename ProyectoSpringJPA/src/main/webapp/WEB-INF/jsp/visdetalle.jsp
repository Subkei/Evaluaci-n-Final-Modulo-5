<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Detalle Visita</title>
	</head>
	<body>
		
		<h1>Detalle Visita</h1>
		
		ID Visita: ${visData.getIdvisita()}<br/>
		Dirección: ${visData.getDireccion()}<br/>
		Ciudad: ${visData.getCiudad()}<br/>
		Fecha: ${visData.getFecha()}<br/>
		Resumen: ${visData.getResumen()}<br/>
		Observaciones: ${visData.getObservaciones()}<br/>
		ID Cliente: ${visData.getCliente_id()}<br/>
		ID Empleado: ${visData.getEmpleado_idempleado()}<br/>
		<br>
		<a class="btn btn-warning col-4" href="/ProyectoSpringJPA/viewvis" role="button">Volver</a>  
	</body>
</html>
