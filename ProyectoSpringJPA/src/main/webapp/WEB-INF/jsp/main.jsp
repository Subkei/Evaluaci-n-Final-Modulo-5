<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es">
	<head>		
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Menu</title>
		
		<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />
		<spring:url value="/resources/css/estilos.css" var="estilosCSS" />
	
		<link href="${bootstrapCSS}" rel="stylesheet" />
		<link href="${estilosCSS}" rel="stylesheet" />

	</head>
<body class="body-main">
<nav class="navbar navbar-expand navbar-light bg-light">
  <div class="container">
    <a class="navbar-brand">Tablero de ${pageContext.request.userPrincipal.name}</a>

          <div>
            <a type="button" class="btn btn-md btn-primary" href="logout">Cerrar Sesión</a>
          </div>

  </div>
</nav>

		<!-- cierre de sesión -->
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<br><h5 class=" pl-4 text-white font-weight-light">Bienvenido, te has logeado como: ${pageContext.request.userPrincipal.name}</h5>
		</c:if>
    
<div class="container text-center">
  <h1 class="mt-4 text-white font-weight-light">¿Qué acción deseas realizar?</h1>

		<!-- For login user -->
		<c:url value="/j_spring_security_logout" var="logoutUrl" />
		<form action="${logoutUrl}" method="post" id="logoutForm">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
				
  <hr class="my-4 bg-light">

<!-- Sección Cliente -->
<sec:authorize access="hasRole('ROLE_CLIENTE')">  
  <div class= "container" id="cont"><br>
<h2 class="text-white font-weight-light">Cliente</h2>

	<div class="list-group text-center">
	<a href="c_aseform" class="list-group-item list-group-item-action list-group-item-light">Solicitar Asesoria </a>
 	<a href="r_accform" class="list-group-item  text-white list-group-item-action list-group-item-dark"> Reportar Accidente</a>
	</div>
</div>
</sec:authorize>

<!-- Sección Empleado -->
<sec:authorize access="hasRole('ROLE_EMPLEADO')">
<div class= "container" id="cont"><br>

	<h2 class="text-white font-weight-light">Profesional</h2>

	<div class="list-group text-center">
	<a href="viewcli" class="list-group-item list-group-item-action list-group-item-light">Revisar Clientes</a>
	<a href="viewcap" class="list-group-item text-white list-group-item-action list-group-item-dark">Gestionar Capacitaciones</a>
	<a href="viewacc" class="list-group-item list-group-item-action list-group-item-light">Gestionar Accidentes</a>
	<a href="viewase" class="list-group-item text-white list-group-item-action list-group-item-dark">Gestionar Asesorias</a>
	<a href="viewmej" class="list-group-item list-group-item-action list-group-item-light">Gestionar Actividades de Mejoras</a>
	<a href="viewvisita" class="list-group-item text-white list-group-item-action list-group-item-dark">Gestionar Visitas</a>
	<a href="viewchequeo" class="list-group-item list-group-item-action list-group-item-light">Gestionar Chequeos</a>
	</div>
</div>
</sec:authorize>


<!-- Sección Administrador-->
<sec:authorize access="hasRole('ROLE_ADMIN')">
<div class= "container" id="cont"><br>

	<h2 class="text-white font-weight-light">Herramientas del Administrador</h2>
	
	<div class="list-group text-center">
	<a href="viewcli" class="list-group-item list-group-item-action list-group-item-light">Gestionar Clientes</a>
	<a href="viewpag" class="list-group-item text-white list-group-item-action list-group-item-dark">Controlar Pagos de Clientes</a>
	<a href="viewemp" class="list-group-item list-group-item-action list-group-item-light">Gestionar Profesionales</a>
	
	<br><h3 class="text-white font-weight-light">Reportes</h3>
	
	<a href="viewmej" class="list-group-item text-white list-group-item-action list-group-item-dark">Reportes de Actividades de Mejoras</a>
	<a href="viewacc" class="list-group-item list-group-item-action list-group-item-light">Reportes de Accidentabilidad por Cliente*</a>
	<a href="#" class="list-group-item text-white list-group-item-action list-group-item-dark">Reportes por Cliente*</a>
	<a href="#" class="list-group-item list-group-item-action list-group-item-light">Reportes Globales*</a>
	</div>
</div>
</sec:authorize>

<br>

	<!-- jQuery first, then Popper.js, then Bootstrap JS -->   
	<spring:url value="/resources/js/jquery-3.5.1.min.js" var="jqueryJS" />
	<spring:url value="/resources/js/bootstrap.bundle.min.js" var="bootstrapbJS" />
	<spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJS" />
	<spring:url value="/resources/js/logoutform.js" var="logoutformJS" />
  
  <script src="${jqueryJS}"></script>
  <script src="${bootstrapbJS}"></script>
  <script src="${bootstrapJS}"></script>
	<script src="${logoutformJS}"></script>

  <br><p class="lead text-white">Talento Digital 2020</p>
</div>
</body>
</html>
