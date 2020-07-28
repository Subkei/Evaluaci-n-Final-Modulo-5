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
	<spring:url value="/resources/img/miImagen1.png" var="miImagen1" />
	
	<link href="${bootstrapCSS}" rel="stylesheet" />
	<link href="${estilosCSS}" rel="stylesheet" />
	<link href="${miImagen1}" rel="stylesheet" />
</head>
<body>
	<div class="container-md text-center">
		<h1 class="display-4">Pagina Principal</h1>
		<a href="login">Iniciar Sesión</a>
	</div>
	
	
	<div class="container" style="margin-top:30px " id="contenedor" >

		<h2>¿Quiénes Somos? </h2>
              
         	
              <img class="img-fluid" src="<c:url value="/resources/img/miImagen1.png"/>" id="miImagen1" alt="Quienes Somos" width="260" height="145"style = "border-radius:50%" > 
             
             <p>Somos una empresa que gestiona el control, la seguridad, y disponibilidad de información para la empresa y sus clientes </p>
</div>

  <div class="container" style="margin-top:30px"  id="contenedor" >

	<h2> Nuestros Objetivos </h2>
	<img class="img-fluid" src="<c:url value="/resources/img/miImagen2.png"/>" id="miImagen2"alt="Nuestros objetivos " width="260" height="145"style = "border-radius:50%" > 
	<p>Planificación de actividades y el control de ejecución de las mismas, la gestión de clientes, la coordinación entre la empresa, los profesionales y los clientes para la respuesta temprana ante incidentes de seguridad.</p>

		
  </div>

  <div class="container" style="margin-top:30px"  id="contenedor">

	<h2> Reportes y Toma de Decisiones </h2>
	<img class="img-fluid" src="<c:url value="/resources/img/miImagen3.png"/>" id="miImagen3" alt="beneficios" width="260" height="145" style = "border-radius:50%" > 
	<p> Reportes y estadísticas que ayuden a tomar  decisiones y mejorar el rendimiento de la empresa, considerando la carga laboral, y la demanda de clientes y las actividades que cada uno involucra para el cumplimiento de los contratos.</p>
 

  </div>
</body>
</html>