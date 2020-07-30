<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!doctype html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Detalle Pago de Cliente</title>
<!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>

<div class="pt-md-5 pb-md-4 mx-auto">
    </div>

    <div class="container">
      <div class="card-deck mb-3">
        <div class="card mb-4 box-shadow">
          <div class="card-header">
            <h4 class="my-0 font-weight-normal">Detalle Pago de Cliente</h4>
          </div>
          <div class="card-body">
            <ul class="list-unstyled mt-3 mb-4">
              <li>ID Pago: ${pagosData.getIdpago()}</li>
              <li>Año/Mes: ${pagosData.getMesanio()}</li>
              <li>Monto Regular: $${pagosData.getMontoregular()}</li>
              <li>Monto Adicionales: $${pagosData.getMontoadicionales()}</li>
              <li>ID Cliente: ${pagosData.getCliente_id()}</li>
            </ul>
            <a type="button" class="btn btn-lg btn-primary" href="/ProyectoSpringJPA/viewpag">Volver al Listado</a>
          </div>
        </div>
      </div>
    </div>
  
</body>
</html>
