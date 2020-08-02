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
   
    <title>Agregar Cliente</title>
  </head>   
  <body>
    <div class="jumbotron">
        <header class="text-center">
            <h2>Agregar Cliente</h2>
        </header>
    </div> 
     <form:form method="post" action="clisave" modelAttribute="cliente">
     <form:errors path = "*" cssClass = "errorblock" element = "div" /> 
      <div class="container">
          <div class="row">
              <form:label path="nombre" class="col-4 lead font-weight-normal">Nombre:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
                <form:errors path = "nombre" cssClass = "error" />
              </div>
              <form:input class="col-6 input-group" path="nombre" placeholder="Ingresa el nombre completo"/>
          </div>
          <br><br>
          <div class="row">
              <form:label path="telefono" class="col-4 lead font-weight-normal" >Telefono:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
                <form:errors path = "telefono" cssClass = "error" />
              </div>
              <form:input class="col-6 input-group" path="telefono" minlength="9" maxlength="9" placeholder="Ingresa un número de 9 digitos"/>

          </div>
          <br><br>
          <div class="row">
              <form:label path="correoelectronico" class="col-4 lead font-weight-normal">Correo electrónico:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
                <form:errors path = "correoelectronico" cssClass = "error" />
              </div>
              <form:input class="col-6 input-group" path="correoelectronico" placeholder="ejemplo tucorreo@correo.com"/>
          </div>
          <br><br>
          <div class="row">
              <form:label path="rubro" class="col-4 lead font-weight-normal">Rubro:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <form:input class="col-6 input-group" path="rubro" placeholder="Constructor, Abogado, Vendedor"/>
          </div>
          <br><br>
          <div class="row">
              <form:label path="direccion" class="col-4 lead font-weight-normal">Dirección:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
                <form:errors path = "direccion" cssClass = "error" />
              </div>
              <form:input class="col-6 input-group" path="direccion" placeholder="Dirección #, Ciudad"/>
          </div>
          <br><br><br>
           <div class="row">
               <div class="container" style="max-width:55%">
               <a class="btn btn-warning col-4" href="viewcli" role="button">Volver</a>
                &nbsp;&nbsp;&nbsp;&nbsp;
               <input type="submit" class="btn btn-warning col-4" value="Agregar cliente">
               </div>
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