<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Capacitacion</title>
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

	<h1>Listado de Capacitacion</h1>
	<c:if test="${ccmensaje != null}">
		<h3>
		<c:out value="${ccmensaje}"></c:out>
		</h3>
	</c:if>
	<table id="tabla" class="table table-striped table-bordered" style="width: 100%; ">
		<thead>		
		<tr>
			<th>ID Capacitacion</th>
			<th>Fecha</th>
			<th>Hora</th>
			<th>Numero Asitentes</th>
			<th>Id Visitas</th>
			<th>Acciones</th>
		</tr>
		</thead>
		
		<tbody>
		<c:forEach items="${listacapacitacion}" var="cap">
		<tr>
			<td>${cap.getIdcapacitacion()}</td> 
			<td>${cap.getFecha()}</td>
			<td>${cap.getHora()}</td>
			<td>${cap.getNumasistentes()}</td>
			<td>${cap.getVisitas_idvisita()}</td>
			<td>
				<a class="btn btn-danger mb-1" title="Eliminar capacitacion" href="deletecap/${cap.getIdcapacitacion()}">Eliminar</a>&nbsp;
				<a class="btn btn-warning mb-1" title="Editar capacitacion" href="editcap/${cap.getIdcapacitacion()}">Editar</a>&nbsp;
				<a class="btn btn-info mb-1" title="Detalle capacitacion" href="capacitacion/${cap.getIdcapacitacion()}">Detalle</a>&nbsp;
			</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<br/>
	<a class="btn btn-success mb-1" title="Agregar nueva capacitacion" href="capform">Agregar nueva capacitacion</a>&nbsp;&nbsp;
	<a class="btn btn-secondary mb-1" title="Volver al inicio" href="main">Volver al inicio</a>

</body>
</html>