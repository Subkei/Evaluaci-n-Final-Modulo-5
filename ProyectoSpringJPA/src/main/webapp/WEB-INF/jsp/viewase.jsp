<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Asesorias</title>
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

	<h1 class="display-4">Listado de Asesorias</h1>
<table id="tabla" class="table table-striped table-bordered" style="width: 100%; ">
	<thead>		
	<tr>
		<th>ID Asesoria</th>
		<th>Detalle</th>
		<th>Gestión</th>
		<th>Propuestas</th>
		<th>Fecha</th>
		<th>Especial</th>
		<th>Id Visita </th>
		<th>Acciones</th>
	</tr>
	</thead>
	
	<tbody>
	<c:forEach items="${listaasesorias}" var="ase">
	<tr>
		<td>${ase.getIdasesoria()}</td>
		<td>${ase.getDetalle()}</td>
		<td>${ase.getGestion()}</td>
		<td>${ase.getPropuestas()}</td>
		<td>${ase.getFecha()}</td>
		<td>${ase.getEspecial()}</td>
		<td>${ase.getVisitas_idvisita()}</td>
		<td>
			<a class="btn btn-danger mb-1" title="Eliminar asesoria" href="deletease/${ase.getIdasesoria()}">Eliminar</a>&nbsp;
			<a class="btn btn-warning mb-1" title="Editar asesoria" href="editase/${ase.getIdasesoria()}">Editar</a>&nbsp;
			<a class="btn btn-info mb-1" title="Detalle asesoria" href="asesoria/${ase.getIdasesoria()}">Detalle</a>
					
		</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
<br/>
	<a class="btn btn-success mb-1" title="Agregar nueva asesoria" href="aseform">Agregar nueva asesoria </a>&nbsp;&nbsp;
	<a class="btn btn-secondary mb-1" title="Volver al inicio" href="main">Volver al inicio</a>

</body>

</html>