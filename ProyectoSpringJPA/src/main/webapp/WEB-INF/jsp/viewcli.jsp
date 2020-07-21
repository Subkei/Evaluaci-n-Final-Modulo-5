<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Clientes</title>
    <!-- CSS Bootstrap -->
	<link rel="stylesheet" href="/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/css/datatables.css"/>
    <link rel="stylesheet" href="/css/dataTables.bootstrap4.css"/>
    
    <!-- jQuery, datatable -->
    <script src="/js/jquery-3.5.1.min.js"/></script>
    <script src="/js/jquery.dataTables.js"/></script>
   	<script src="/js/jquery.dataTables.es.js"/></script>
    
</head>
<body style="padding: 10px;">

	<h1>Listado de Clientes</h1>
	<c:if test="${ccmensaje != null}">
		<h3>
		<c:out value="${ccmensaje}"></c:out>
		</h3>
	</c:if>
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
			<a href="deletecli/${cli.getId()}">Eliminar</a>&nbsp;
			<a href="editcli/${cli.getId()}">Editar</a>&nbsp;
		</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
<br/>
	<a href="cliform">Agregar nuevo Cliente</a>&nbsp;&nbsp;
	<a href="index.jsp">Volver al inicio</a>

</body>
</html>