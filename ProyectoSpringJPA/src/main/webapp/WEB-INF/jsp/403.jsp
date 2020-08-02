<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

	<title>HTTP Status 403 - Acceso denegado</title>
	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
	<!-- Custom stlylesheet -->
	<spring:url value="/resources/css/error403.css" var="error403CSS"/>
    
    <link href="${error403CSS}" rel="stylesheet" />

</head>
<body>
	<c:choose>
		<c:when test="${empty username}">
			<h2>No tiene permiso para acceder a esta página</h2>
				</c:when>
		<c:otherwise>
			<div id="notfound">
				<div class="notfound">
					<div class="notfound-403">
						<h1>4<span>0</span>3</h1>
					</div>
						<h1>El usuario "${username}"</h1><br><h2>No tiene permiso para acceder a esta página.</h2>
				</div>
			</div>			
		</c:otherwise>
	</c:choose>

</body>
</html>