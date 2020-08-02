<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Detalle Asesorias</title>
	</head>
	
	<body>
	
		<h1>Detalle Cliente</h1>
		
		
		ID Asesoria: ${asesoriaData.getIdasesoria()}<br/>
		Detalle: ${asesoriaData.getDetalle()}<br/>
		Gestión: ${asesoriaData.getGestion()}<br/>
		Propuestas: ${asesoriaData.getPropuestas()}<br/>
		Especial: ${asesoriaData.getEspecial()}<br/>
		ID Visitas: ${asesoriaData.getVisitas_idvisita()}<br/>
		<br>
		<a class="btn btn-warning col-4" href="/ProyectoSpringJPA/viewase" role="button">Volver</a>  
	</body>
	
</html>