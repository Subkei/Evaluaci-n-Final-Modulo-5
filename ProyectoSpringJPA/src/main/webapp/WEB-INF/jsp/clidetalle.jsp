<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>      
<!doctype html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Detalle Cliente</title>
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
            <h4 class="my-0 font-weight-normal">Detalle Cliente</h4>
          </div>
          <div class="card-body">
            <ul class="list-unstyled mt-3 mb-4">
              <li>ID Cliente: ${clienteData.getId()}</li>
              <li>Nombre: ${clienteData.getNombre()}</li>
              <li>Telefono: ${clienteData.getTelefono()}</li>
              <li>Correo electronico: ${clienteData.getCorreoelectronico()}</li>
              <li>Rubro: ${clienteData.getRubro()}</li>
              <li>Dirección: ${clienteData.getDireccion()}</li>
            </ul>
            <a type="button" class="btn btn-lg btn-primary" href="/ProyectoSpringJPA/viewcli">Volver al Listado</a>
          </div>
        </div>
      </div>
    </div>
  
</body>
</html>