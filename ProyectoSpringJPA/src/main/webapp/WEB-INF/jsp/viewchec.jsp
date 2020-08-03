<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>      
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Chequeos</title>
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

	<h1 class="display-4">Listado de Chequeos</h1>
<table id="tabla" class="table table-striped table-bordered" style="width: 100%; ">
	<thead>		
	<tr>
		<th>ID Chequeo</th>
		<th>Detalle</th>
		<th>Estado</th>
		<th>visitas ID</th>
		<th>Acciones</th>
	</tr>
	</thead>
	
	<tbody>
	<c:forEach items="${listachequeo}" var="ch">
	<tr>
		<td>${ch.getIdchequeo()}</td> 
		<td>${ch.getDetalle()}</td>
		<td>${ch.getEstado()}</td>
		<td>${ch.getVisitas_idvisita()}</td>
		
		<td>
			<a class="btn btn-danger mb-1" title="Eliminar chequeo" href="deletechec/${ch.getIdchequeo()}">Eliminar</a>&nbsp;
			<a class="btn btn-warning mb-1" title="Editar chequeo" href="editchec/${ch.getIdchequeo()}">Editar</a>&nbsp;
			<a class="btn btn-info mb-1" title="Detalle chequeo" href="chequeo/${ch.getIdchequeo()}">Detalle</a>&nbsp;
		</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
<br/>
	<a class="btn btn-success mb-1" title="Agregar nuevo chequeo" href="checform">Agregar nuevo Chequeo </a>&nbsp;&nbsp;
	<a class="btn btn-secondary mb-1" title="Volver al inicio" href="main">Volver al inicio</a>

</body>
</html>