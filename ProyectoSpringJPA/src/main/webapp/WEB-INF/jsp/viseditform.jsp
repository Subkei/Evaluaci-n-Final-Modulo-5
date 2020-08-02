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
    <title>Editar Visitas</title>
  </head>
  <body>
    <div class="jumbotron">
        <header class="text-center">
            <h2>Editar Visitas</h2>
        </header>
    </div> 
     <form:form method="post" action="/ProyectoSpringJPA/viseditsave" modelAttribute="visitas">
     <form:errors path = "*" cssClass = "errorblock" element = "div" /> 
      <div class="container">
          <div class="row">
              <form:label path="direccion" class="col-4 lead font-weight-normal">Direccion:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
                <form:errors path = "direccion" cssClass = "error" />
              </div>
              <form:input class="col-6 input-group" path="direccion" placeholder="Ingresa direccion"/>
          </div>
             <div class="row">
              <form:label path="ciudad" class="col-4 lead font-weight-normal">Ciudad:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
                <form:errors path = "ciudad" cssClass = "error" />
              </div>
              <form:input class="col-6 input-group" path="ciudad" placeholder="Ingresa la Ciudad"/>
          </div>
          <br><br>
          <div class="row">
              <form:label path="fecha" class="col-4 lead font-weight-normal" >Fecha:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
                <form:errors path = "fecha" cssClass = "error" />
              </div>
              <form:input class="col-6 input-group" path="fecha" min="9" maxlength="10" placeholder="Ingresa Fecha 10-10-2020"/>
          </div>
          <br><br>
          <div class="row">
              <form:label path="resumen" class="col-4 lead font-weight-normal">Resumen:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
                <form:errors path = "resumen" cssClass = "error" />
              </div>
              <form:input class="col-6 input-group" path="resumen" placeholder=""/>
          </div>
          <br><br>
          <div class="row">
              <form:label path="observaciones" class="col-4 lead font-weight-normal">Observaciones:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <form:input class="col-6 input-group" path="observaciones" placeholder=""/>
          </div>
          <br><br>
          <div class="row">
              <form:label path="cliente_id" class="col-4 lead font-weight-normal">Cliente Id:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
                <form:errors path = "cliente_id" cssClass = "error" />
              </div>
              <form:input class="col-6 input-group" path="cliente_id" placeholder="Ingrese Cliente ID"/>
          </div>
          <div class="row">
              <form:label path="empleado_idempleado" class="col-4 lead font-weight-normal">Empleado Id:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
                <form:errors path = "empleado_idempleado" cssClass = "error" />
              </div>
              <form:input class="col-6 input-group" path="empleado_idempleado" placeholder="Ingrese Empleado ID"/>
          </div>
          </div>
          <br><br><br>
           <div class="row">
               <div class="container" style="max-width:55%">
               	<a class="btn btn-warning col-4" href="/ProyectoSpringJPA/viewvis" role="button">Volver</a>
                <form:hidden path="idvisita"/>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" class="btn btn-warning col-4" value="Editar Visitas"/>
               </div>
           </div>     
      </form:form> 
      <div class="container" style="height: 50px;"></div>
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <spring:url value="/resources/js/jquery-3.5.1.min.js" var="jqueryJS" />
    <spring:url value="/resources/js/popper.min.js" var="popperJS"/>
    <spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJS" />
    
    <script src="${jqueryJS}"></script>
    <script src="${popperJS}"></script>
    <script src="${bootstrapJS}"></script>
  </body>
</html>