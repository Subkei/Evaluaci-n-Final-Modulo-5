<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Act. de Mejora</title>
    <!-- CSS Bootstrap -->
	<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />
    <spring:url value="/resources/css/datatables.css" var="datatablesCSS"/>
    <spring:url value="/resources/css/dataTables.bootstrap4.css" var="datatablesbCSS"/>
    
    <link href="${bootstrapCSS}" rel="stylesheet" />
    <link href="${datatablesCSS}" rel="stylesheet" />
    <link href="${datatablesbCSS}" rel="stylesheet" />
    
    <!-- jQuery, datatable -->
    <spring:url value="/resources/js/jquery-3.5.1.min.js" var="jqueryJS" />
    <spring:url value="/resources/js/datatables.js" var="datatablesJS"/>
   	<spring:url value="/resources/js/jquery.dataTables.es.js" var="datatablesEsJS"/>
    
    <script src="${jqueryJS}"></script>
    <script src="${datatablesJS}"></script>
    <script src="${datatablesEsJS}"></script>
    
</head>
<body style="padding: 10px;">

	<h1 class="display-4">Listado de Actividades de Mejora</h1>
<table id="tabla" class="table table-striped table-bordered" style="width: 100%; ">
	<thead>		
	<tr>
		<th>ID Mejora</th>
		<th>Fecha</th>
		<th>Motivo</th>
		<th>Actividades</th>
		<th>Estado</th>
		<th>ID Cliente</th>
		<th>Acciones</th>
	</tr>
	</thead>
	
	<tbody>
	<c:forEach items="${listamejoras}" var="mej">
	<tr>
		<td>${mej.getIdmejora()}</td> 
		<td>${mej.getFecha()}</td>
		<td>${mej.getMotivo()}</td>
		<td>${mej.getActividades()}</td>
		<td>${mej.getEstado()}</td>
		<td>${mej.getCliente_id()}</td>
		<td>
		<sec:authorize access="hasRole('ROLE_EMPLEADO')">		
			<a class="btn btn-danger mb-1" title="Eliminar mejora" href="deletemej/${mej.getIdmejora()}">Eliminar</a>&nbsp;
			<a class="btn btn-warning mb-1" title="Editar mejora" href="editmej/${mej.getIdmejora()}">Editar</a>&nbsp;
		</sec:authorize>								
			<a class="btn btn-info mb-1" title="Detalle mejora" href="mejoras/${mej.getIdmejora()}">Detalle</a>&nbsp;
		</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
<br/>
<sec:authorize access="hasRole('ROLE_EMPLEADO')">
	<a class="btn btn-success mb-1" title="Agregar nueva mejora" href="mejform">Agregar Mejora</a>&nbsp;&nbsp;
</sec:authorize>				
	<a class="btn btn-secondary mb-1" title="Volver al inicio" href="main">Volver al inicio</a>

</body>
</html>