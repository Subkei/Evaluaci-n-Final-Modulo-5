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
   
    <title>Agregar Act. Mejora</title>
  </head>
  <body>
    <div class="jumbotron">
        <header class="text-center">
            <h2>Agregar Act de Mejora</h2>
        </header>
    </div> 
     <form:form method="post" action="/ProyectoSpringJPA/mejeditsave" modelAttribute="mejora">
      <form:errors path = "*" cssClass = "errorblock" element="div" />
      <div class="container">
          <div class="row">
              <form:label path="fecha" class="col-4 lead font-weight-normal">Fecha:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              	<form:errors path = "fecha" cssClass = "error" />
              </div>
              <form:input type="date" class="col-6 input-group" path="fecha"/>
          </div>
          <br><br>
          <div class="row">
              <form:label path="motivo" class="col-4 lead font-weight-normal">Motivo:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              	<form:errors path = "motivo" cssClass = "error" />
              </div>
              <form:input class="col-6 input-group" path="motivo"/>
          </div>
          <br><br>
          <div class="row">
              <form:label path="actividades" class="col-4 lead font-weight-normal">Actividades:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              	<form:errors path="actividades" cssClass = "error" />
              </div>
              <form:textarea class="col-6 input-group" path="actividades" rows="2" cols="20"/>
          </div>
          <br><br>
          <div class="row">
              <form:label path="estado" class="col-4 lead font-weight-normal">Estado:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <form:select class="col-6 input-group" path="estado">
              	<form:option value="-" label="  "/>
              	<form:option value="yes" label="realizado"/>
              	<form:option value="casi" label="en proceso"/>
              	<form:option value="no" label="no realizado"/>
              </form:select>
          </div>
          <br><br>
          <div class="row">
              <form:label path="cliente_id" class="col-4 lead font-weight-normal">Cliente Asociado:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              	<form:errors path = "cliente_id" cssClass = "error" />
              </div>
              <form:input class="col-6 input-group" path="cliente_id"/>
              <!--<form:select path="cliente_id">
    			<form:option value="-" label="--Seleccione un cliente--"/>
    			<form:options items="${listcli}" />
			  </form:select>-->
          </div>
          <br><br><br>
           <div class="row">
               <div class="container" style="max-width:55%">
               <input type="submit" class="btn btn-warning col-4" value="Volver" name="viewmej"/>
                <form:hidden path="idmejora"/>
                &nbsp;&nbsp;&nbsp;&nbsp;
               <input type="submit" class="btn btn-warning col-4" value="Editar Act. Mejora">
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