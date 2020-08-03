<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>      
<!doctype html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Detalle Capacitación</title>
    <!-- Bootstrap CSS JS-->
    <spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />
    
    <link href="${bootstrapCSS}" rel="stylesheet" />
</head>
<body>

<div class="pt-md-5 pb-md-4 mx-auto">
    </div>

    <div class="container">
      <div class="card-deck mb-3">
        <div class="card mb-4 box-shadow">
          <div class="card-header">
            <h4 class="my-0 font-weight-normal">Detalle Capacitación</h4>
          </div>
          <div class="card-body">
            <ul class="list-unstyled mt-3 mb-4">
              <li>ID Capacitación: ${capData.getIdcapacitacion()}</li>
              <li>fecha: ${capData.getFecha()}</li>
              <li>hora: ${capData.getHora()}</li>
              <li>Número de asistentes: ${capData.getNumasistentes()}</li>
              <li>id Visita: ${capData.getVisitas_idvisita()}</li>
            </ul>
            <a type="button" class="btn btn-lg btn-primary" href="/ProyectoSpringJPA/viewcap">Volver al Listado</a>
          </div>
        </div>
      </div>
    </div>
  
</body>
</html>