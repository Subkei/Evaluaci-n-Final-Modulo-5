<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Detalle Chequeo</title>
	</head>
	<body>
	
		<h1>Detalle Chequeo</h1>
		
		ID Chequeo: ${checData.getIdchequeo()}<br/>
		Detalle: ${checData.getDetalle()}<br/>
		Estado: ${checData.getEstado()}<br/>
		ID Visita: ${checData.getIdVisita()}<br/>
		<br />
		<a  class="btn btn-warning col-4" href="/ProyectoSpringJPA/viewchec" role="button">Volver</a>
	
	</body>
</html>