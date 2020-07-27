<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
	<h1>HTTP Status 403 - Acceso denegado</h1>

	<c:choose>
		<c:when test="${empty username}">
		  <h2>No tiene permiso para acceder a esta página</h2>
		</c:when>
		<c:otherwise>
		  <h2>Username : ${username} <br/>
                  	No tiene permiso para acceder a esta página</h2>
		</c:otherwise>
	</c:choose>

</body>
</html>