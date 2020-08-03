<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Clientes</title>
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

		<!-- For login user -->
		<c:url value="/j_spring_security_logout" var="logoutUrl" />
		<form action="${logoutUrl}" method="post" id="logoutForm">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>

	<h1 class="display-4">Listado de Clientes</h1>
<table id="tabla" class="table table-striped table-bordered" style="width: 100%; ">
	<thead>		
	<tr>
		<th>ID Cliente</th>
		<th>Nombre</th>
		<th>Telefono</th>
		<th>Correo electrónico</th>
		<th>Rubro</th>
		<th>Direccion</th>
		<th>Acciones</th>
	</tr>
	</thead>
	
	<tbody>
	<c:forEach items="${listaclientes}" var="cli">
	<tr>
		<td>${cli.getId()}</td> 
		<td>${cli.getNombre()}</td>
		<td>${cli.getTelefono()}</td>
		<td>${cli.getCorreoelectronico()}</td>
		<td>${cli.getRubro()}</td>
		<td>${cli.getDireccion()}</td>
		<td>
		<sec:authorize access="hasRole('ROLE_ADMIN')">
			<a class="btn btn-danger mb-1" title="Eliminar cliente" href="deletecli/${cli.getId()}">Eliminar</a>&nbsp;
			<a class="btn btn-warning mb-1" title="Editar cliente" href="editcli/${cli.getId()}">Editar</a>&nbsp;
		</sec:authorize>			
			<a class="btn btn-info mb-1" title="Detalle cliente" href="cliente/${cli.getId()}">Detalle</a>&nbsp;
		</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
<br/>
	<sec:authorize access="hasRole('ROLE_ADMIN')">
	<a class="btn btn-success mb-1" title="Agregar nuevo cliente" href="cliform">Agregar nuevo Cliente</a>&nbsp;&nbsp;
	</sec:authorize>
	<a class="btn btn-secondary mb-1" title="Volver al inicio" href="main">Volver al inicio</a>

</body>
</html>