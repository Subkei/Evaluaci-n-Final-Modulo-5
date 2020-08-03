<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>      
<!doctype html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Detalle Accidente</title>
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
            <h4 class="my-0 font-weight-normal">Detalle Accidente</h4>
          </div>
          <div class="card-body">
            <ul class="list-unstyled mt-3 mb-4">
              <li>ID Accidente:   ${accidenteData.getIdaccidente()}</li>
              <li>Fecha: ${accidenteData.getFecha()}</li>
              <li>Hora: ${accidenteData.getHora()}</li>
              <li>Suceso: ${accidenteData.getSuceso()}</li>
              <li>Lugar: ${accidenteData.getLugar()}</li>
              <li>Id Cliente: ${accidenteData.getCliente_id()}</li>
            </ul>
            <a type="button" class="btn btn-lg btn-primary" href="/ProyectoSpringJPA/viewacc">Volver al Listado</a>
          </div>
        </div>
      </div>
    </div>
  
</body>
</html>