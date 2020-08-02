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
   
    <title>Agregar Chequeo</title>
  </head>   
  <body>
    <div class="jumbotron">
        <header class="text-center">
            <h2>Agregar Chequeo</h2>
        </header>
    </div> 
     <form:form method="post" action="checsave" modelAttribute="chequeo">
     <form:errors path = "*" cssClass = "errorblock" element = "div" /> 
      <div class="container">
          <div class="row">
              <form:label path="id chequeo" class="col-4 lead font-weight-normal">ID Chequeo:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
                <form:errors path = "idchequeo" cssClass = "error" />
              </div>
              <form:input class="col-6 input-group" path="idchequeo" placeholder="Ingresa id de chequeo"/>
          </div>
          <br><br>
          <div class="row">
              <form:label path="detalle" class="col-4 lead font-weight-normal" >Detalle:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
                <form:errors path = "detalle" cssClass = "error" />
              </div>
              <form:input class="col-6 input-group" path="detalle" rows="5" cols="60" placeholder="Ingresa detalle del chequeo con un máximo de 500 caracteres"/>
          </div>
          <br><br>              
          <div class="row">
              <form:label path="estado" class="col-4 lead font-weight-normal">Estado:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <form:input class="col-6 input-group" path="estado" rows="5" cols="60" placeholder="Ingresar detalle del estado del chequeo en terreno con un máximo hasta 500 caracteres"/>
          </div>
          <br><br>
          <div class="row">
              <form:label path="visita id" class="col-4 lead font-weight-normal">Visita ID:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
                <form:errors path = "idvisita" cssClass = "error" />
              </div>
              <form:input class="col-6 input-group" path="idvisita" placeholder="Ingresar ID Visitas"/>
          </div>
          <br><br><br>
           <div class="row">
               <div class="container" style="max-width:55%">
               <a class="btn btn-warning col-4" href="viewchec" role="button">Volver</a>
                &nbsp;&nbsp;&nbsp;&nbsp;
               <input type="submit" class="btn btn-warning col-4" value="Agregar chequeo">
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