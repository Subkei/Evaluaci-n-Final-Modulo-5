<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Inicio</title>

	<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />
	<spring:url value="/resources/css/estilos.css" var="estilosCSS" />
	
	<link href="${bootstrapCSS}" rel="stylesheet" />
	<link href="${estilosCSS}" rel="stylesheet" />
</head>
<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
  <div class="container">
    <a class="navbar-brand" href="/ProyectoSpringJPA/">Proyecto Final Modulo 5</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">

        <li class="nav-item">
          <a type="button" class="btn btn-md btn-primary" href="login">Iniciar Sesión</a>
        </li>        
      </ul>
    </div>
  </div>
</nav>
<!-- Fin Navigation -->


<header>
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
      <!-- Slide One - Set the background image for this slide in the line below -->
      <div class="carousel-item active" style="background-image: url('https://img77.uenicdn.com/image/upload/v1592409335/business/ba7f067e-c980-41d6-9386-2693320f124a/New-beauty-videosevery-week---3-png.jpg')">
        <div class="carousel-caption d-none d-md-block bg-dark">
          <h2 class="display-4">¿Quiénes Somos?</h2>
          <p class="lead text-white">Somos una empresa que gestiona el control, la seguridad, y disponibilidad de información para la empresa y sus clientes.</p>
        </div>
      </div>
      <!-- Slide Two - Set the background image for this slide in the line below -->
      <div class="carousel-item" style="background-image: url('https://certin.org/wp-content/uploads/2020/04/brilenok_1.jpg')">
        <div class="carousel-caption d-none d-md-block bg-dark">
          <h2 class="display-4">Nuestros Objetivos</h2>
          <p class="lead ">Planificación de actividades y el control de ejecución de las mismas, la gestión de clientes, la coordinación entre la empresa, los profesionales y los clientes para la respuesta temprana ante incidentes de seguridad.</p>
        </div>
      </div>
      <!-- Slide Three - Set the background image for this slide in the line below -->
      <div class="carousel-item" style="background-image: url('https://miro.medium.com/max/3924/1*et-eVsOO4rC1WamcXJ_uSQ.png')">
        <div class="carousel-caption d-none d-md-block bg-dark">
          <h2 class="display-4">Reportes y Toma de Decisiones</h2>
          <p class="lead">Reportes y estadísticas que ayuden a tomar decisiones y mejorar el rendimiento de la empresa, considerando la carga laboral, y la demanda de clientes y las actividades que cada uno involucra para el cumplimiento de los contratos.</p>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Anterior</span>
        </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Siguiente</span>
        </a>
  </div>
</header>
</body>

	<!-- jQuery first, then Popper.js, then Bootstrap JS -->   
	<spring:url value="/resources/js/jquery-3.5.1.min.js" var="jqueryJS" />
	<spring:url value="/resources/js/bootstrap.bundle.min.js" var="bootstrapbJS" />
	<spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJS" />
  
  	<script src="${jqueryJS}"></script>
  	<script src="${bootstrapbJS}"></script>
  	<script src="${bootstrapJS}"></script>
	
</html>