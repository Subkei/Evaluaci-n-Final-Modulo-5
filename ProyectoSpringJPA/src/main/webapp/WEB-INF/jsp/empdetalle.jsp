<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Detalle Empleado</title>
</head>
<body>

<h1>Detalle Empleado</h1>

ID Empleado: ${empleadoData.getIdempleado()}<br/>
Nombre: ${empleadoData.getNombre()}<br/>
Especialidad: ${empleadoData.getEspecialidad()}<br/>
<br>
<a class="btn bt-warning col-4" href="/ProyectoSpringJPA/viewemp" role="button">Volver</a>
</body>
</html>