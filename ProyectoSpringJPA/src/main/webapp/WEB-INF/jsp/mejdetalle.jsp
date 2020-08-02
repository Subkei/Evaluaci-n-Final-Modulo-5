<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<html>
<head>
<meta charset="ISO-8859-1">
<title>Detalle Act. Mejora</title>
</head>
<body>

<h1>Detalle Act. Mejora</h1>

ID Mejora: ${mejoraData.getIdmejora()}<br/>
Fecha: ${mejoraData.getFecha()}<br/>
Motivo: ${mejoraData.getMotivo()}<br/>
Actividades: ${mejoraData.getActividades()}<br/>
Estado: ${mejoraData.getEstado()}<br/>
ID Cliente: ${mejoraData.getCliente_id()}<br/>
<br>
<a class="btn btn-warning col-4" href="/ProyectoSpringJPA/viewmej" role="button">Volver</a>
</body>
</html>