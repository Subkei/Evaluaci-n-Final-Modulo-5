<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<h1>Listado de posts</h1>
<table>
<tr>
	<th>ID</th>
	<th>Usuario ID</th>
	<th>Titulo</th>
	<th>Acciones</th>
</tr>
<c:forEach items="${listadoposts}" var="ps">
<tr>
	<td><c:out value="${ps.getId()}"/></td>
	<td><c:out value="${ps.getUserId()}"/></td>
	<td><c:out value="${ps.getTitle()}"/></td>
	<td><a href="detallepost/${ps.getId()}">Ver detalle</a></td>
</tr>
</c:forEach>
</table>
<br><br>
<a class="btn btn-secondary mb-1" title="Volver al inicio" href="/ProyectoSpringJPA/main">Volver al inicio</a>

</body>
</html>