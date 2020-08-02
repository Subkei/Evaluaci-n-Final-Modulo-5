<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Visitas</title>
    <!-- CSS Bootstrap -->
	<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />
    <spring:url value="/resources/css/datatables.css" var="datatablesCSS"/>
    <spring:url value="/resources/css/dataTables.bootstrap4.css" var="datatablesbCSS"/>
    
    <link href="${bootstrapCSS}" rel="stylesheet" />
    <link href="${datatablesCSS}" rel="stylesheet" />
    <link href="${datatablesbCSS}" rel="stylesheet" />
    
    <!-- jQuery, datatable -->
    <spring:url value="/resources/js/jquery-3.5.1.min.js" var="jqueryJS" />
    <spring:url value="/resources/js/jquery.dataTables.js" var="datatablesJS"/>
   	<spring:url value="/resources/js/jquery.dataTables.es.js" var="datatablesEsJS"/>
    
    <script src="${jqueryJS}"></script>
    <script src="${datatablesJS}"></script>
    <script src="${datatablesEsJS}"></script>
    
</head>
<body style="padding: 10px;">

	<h1>Listado de Vistas</h1>
	<c:if test="${ccmensaje != null}">
		<h3>
		<c:out value="${ccmensaje}"></c:out>
		</h3>
	</c:if>
<table id="tabla" class="table table-striped table-bordered" style="width: 100%; ">
	<thead>		
	<tr>
		<th>ID Visita</th>
		<th>Direccion</th>
		<th>Ciudad</th>
		<th>Fecha</th>
		<th>Resumen</th>
		<th>Observaciones</th>
		<th>Cliente Id</th>
		<th>Empleado Id</th>
		<th>Acciones</th>
	</tr>
	</thead>
	
	<tbody>
	<c:forEach items="${listavisitas}" var="vis">
	<tr>
		<td>${vis.getIdvisita()}</td> 
		<td>${vis.getDireccion()}</td>
		<td>${vis.getCiudad()}</td>
		<td>${vis.getFecha()}</td>
		<td>${vis.getResumen()}</td>
		<td>${vis.getObservaciones()}</td>
		<td>${vis.getCliente_id()}</td>
		<td>${vis.getEmpleado_idempleado()}</td>
		<td>
			<a class="btn btn-danger mb-1" title="Eliminar visita" href="deletevis/${vis.getIdvisita()}">Eliminar</a>&nbsp;
			<a class="btn btn-warning mb-1" title="Editar visita" href="editvis/${vis.getIdvisita()}">Editar</a>&nbsp;
			<a class="btn btn-info mb-1" title="Detalle visita" href="visitas/${vis.getIdvisita()}">Detalle</a>&nbsp;
		</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
<br/>
	<a class="btn btn-success mb-1" title="Agregar nueva visita" href="visform">Agregar nueva Visita</a>&nbsp;&nbsp;
	<a class="btn btn-secondary mb-1" title="Volver al inicio" href="main">Volver al inicio</a>

</body>
</html>