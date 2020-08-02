<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Detalle Capacitación</title>
</head>
<body>

<h1>Detalle Capacitación</h1>

ID Capacitación: ${capData.getIdcapacitacion()}<br/>
fecha: ${capData.getFecha()}<br/>
hora: ${capData.getHora()}<br/>
Número de asistentes: ${capData.getNumasistentes()}<br/>
id Visita: ${capData.getVisitas_idvisita()}<br/>
<br>
<a class="btn bt-warning col-4" href="/ProyectoSpringJPA/viewcap" role="button">Volver</a>
</body>
</html>