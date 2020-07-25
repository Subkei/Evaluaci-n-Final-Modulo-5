<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>      

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS JS-->
    <spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />
    <spring:url value="/resources/css/estilos.css" var="estilosCSS" />
    <spring:url value="/resources/js/jquery-3.5.1.min.js" var="jqueryJS" />
    
    <link href="${bootstrapCSS}" rel="stylesheet" />
    <link href="${estilosCSS}" rel="stylesheet" />
    <script src="${jqueryJS}"></script>
    <title>Editar Pago Clientes</title>
  </head>
  <body>
    <div class="jumbotron">
        <header class="text-center">
            <h2>Editar Pago Clientes</h2>
        </header>
    </div> 
     <form:form method="post" action="/ProyectoSpringJPA/pageditsave" modelAttribute="pagos">
      <div class="container">
          <div class="row">
              <form:label path="mesanio" class="col-4 lead font-weight-normal">Mes/Año:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
                <form:errors path = "mesanio" cssClass = "error" />
              </div>
              <form:input class="col-6 input-group" path="mesanio" placeholder="Ingresa en formato mes/año, 05/2020"/>
          </div>
          <br><br>
          <div class="row">
              <form:label path="montoregular" class="col-4 lead font-weight-normal">Monto Regular:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
                <form:errors path = "montoregular" cssClass = "error" />
              </div>
              <form:input class="col-6 input-group" path="montoregular" placeholder="Ingresa solo valores numéricos"/>
          </div>
          <br><br>
          <div class="row">
              <form:label path="montoadicionales" class="col-4 lead font-weight-normal">Monto Adicionales:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
                <form:errors path = "montoadicionales" cssClass = "error" />
              </div>
              <form:input class="col-6 input-group" path="montoadicionales" placeholder="Ingresa solo valores numéricos"/>
          </div>
          <br><br>
          <div class="row">
              <form:label path="cliente_id" class="col-4 lead font-weight-normal">ID Cliente:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
                <form:errors path = "cliente_id" cssClass = "error" />
              </div>
              <form:input class="col-6 input-group" path="cliente_id" placeholder="Corresponde al ID de un cliente valido"/>
          </div>                              
          <br><br><br>
           <div class="row">
               <div class="container" style="max-width:55%">
               <a class="btn btn-warning col-4" href="/ProyectoSpringJPA/viewpag" role="button">Volver</a>
                <form:hidden path="idpago"/>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" class="btn btn-warning col-4" value="Editar Pago"/>
               </div>
           </div>          
        </div>
      </form:form> 
      <div class="container" style="height: 50px;"></div>
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Boot strap JS -->
    <spring:url value="/resources/js/jquery-3.5.1.min.js" var="jqueryJS" />
    <spring:url value="/resources/js/popper.min.js" var="popperJS"/>
    <spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJS" />
    
    <script src="${jqueryJS}"></script>
    <script src="${popperJS}"></script>
    <script src="${bootstrapJS}"></script>
  </body>
</html>