<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es">
	<head>		
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Inicio ${titulo}</title>
		
		<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />
		<spring:url value="/resources/css/estilos.css" var="estilosCSS" />
	
		<link href="${bootstrapCSS}" rel="stylesheet" />
		<link href="${estilosCSS}" rel="stylesheet" />

	</head>
<body>
<div class="container-md text-center" >
  <h1 class="display-4">Pagina Inicio ${titulo}</h1>
  <p class="lead">¿Qué acción deseas realizar?</p>
		
		<!-- For login user -->
		<c:url value="/j_spring_security_logout" var="logoutUrl" />
		<form action="${logoutUrl}" method="post" id="logoutForm">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
				
  <hr class="my-4">
</div>
<sec:authorize access="hasAnyRole('ROLE_CLIENTE')">
<div class= "container" id="cont">
<h2>Cliente</h2>

	<div class="list-group text-center">
	<a href="c_aseform" class="list-group-item list-group-item-action list-group-item-light">Solicitar Asesoria </a>
 	<a href="r_accform" class="list-group-item list-group-item-action list-group-item-dark"> Reportar Accidente</a>
	</div>
</div>

<br/>
<br/>
</sec:authorize>

<sec:authorize access="hasAnyRole('ROLE_EMPLEADO')">
<div class= "container" id="cont">

	<h2>Profesional</h2>

	<div class="list-group text-center">
	<a href="viewcli" class="list-group-item list-group-item-action list-group-item-light">Revisar Clientes</a>
	<a href="viewcap" class="list-group-item list-group-item-action list-group-item-dark">Gestionar Capacitaciones</a>
	<a href="viewacc" class="list-group-item list-group-item-action list-group-item-light">Gestionar Accidentes</a>
	<a href="viewase" class="list-group-item list-group-item-action list-group-item-dark">Gestionar Asesorias</a>
	<a href="viewmej" class="list-group-item list-group-item-action list-group-item-light">Gestionar Actividades de Mejoras</a>
	<a href="viewvisita" class="list-group-item list-group-item-action list-group-item-dark">Gestionar Visitas</a>
	<a href="viewchequeo" class="list-group-item list-group-item-action list-group-item-light">Gestionar Chequeos</a>
	</div>
</div>
</sec:authorize>

<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
<div class= "container" id="cont">

	<h2>Administración del Sistema</h2><br>
	
	<div class="list-group text-center">
	<a href="viewcli" class="list-group-item list-group-item-action list-group-item-light">Gestionar Clientes</a>
	<a href="viewpag" class="list-group-item list-group-item-action list-group-item-dark">Controlar Pagos de Clientes</a>
	<a href="viewemp" class="list-group-item list-group-item-action list-group-item-light">Gestionar Profesionales</a>
	
	<br><h3>Reportes</h3><br>
	
	<a href="viewmej" class="list-group-item list-group-item-action list-group-item-dark">Reportes de Actividades de Mejoras</a>
	<a href="viewacc" class="list-group-item list-group-item-action list-group-item-light">Reportes de Accidentabilidad por Cliente*</a>
	<a href="viewvisita" class="list-group-item list-group-item-action list-group-item-dark">Reportes por Cliente*</a>
	<a href="viewchequeo" class="list-group-item list-group-item-action list-group-item-light">Reportes Globales*</a>
	</div>
</div>
</sec:authorize>
		<br>
		<!-- cierre de sesión -->
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<h5>
				Te has logeado como: ${pageContext.request.userPrincipal.name} <br>
				
				<a href="logout"> Cerrar sesión</a>
			</h5>
		</c:if>
			
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->   
	<spring:url value="/resources/js/jquery-3.5.1.min.js" var="jqueryJS" />
	<spring:url value="/resources/js/bootstrap.bundle.min.js" var="bootstrapbJS" />
	<spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJS" />
	<spring:url value="/resources/js/logoutform.js" var="logoutformJS" />
    <script src="${jqueryJS}"></script>
    <script src="${bootstrapbJS}"></script>
    <script src="${bootstrapJS}"></script>
	<script src="${logoutformJS}"></script>
</body>
</html>
