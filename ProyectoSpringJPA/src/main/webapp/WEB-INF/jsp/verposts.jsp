<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Ver Posts</title>
	</head>
	<body>
		<h1>Detalle de post</h1>
		
		ID: <c:out value="${ps.getId()}"></c:out><br/>
		Usuario ID: <c:out value="${ps.getUserId()}"></c:out><br/>
		Titulo: <c:out value="${ps.getTitle()}"></c:out><br/>
		Cuerpo: <c:out value="${ps.getBody()}"></c:out><br/>
		<br><br>
		<a class="btn btn-secondary mb-1" title="Volver al inicio" href="/ProyectoSpringJPA/listadoposts">Volver al inicio</a>	
	</body>
</html>