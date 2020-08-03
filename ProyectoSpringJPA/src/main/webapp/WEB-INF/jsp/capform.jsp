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
   
    <title>Agregar Capacitacion</title>
  </head>
  <body>
    <div class="jumbotron">
        <header class="text-center">
            <h2>Agregar Capacitacion</h2>
        </header>
    </div> 
     <form:form method="post" action="capsave" modelAttribute="capacitacion">
     <form:errors path="*" cssClass="errorBlock" element="div" />
      <div class="container">
          <div class="row">
               <form:label path="fecha" class="col-4 lead font-weight-normal">Fecha:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
                <form:errors path="fecha" cssClass="error" />
              </div>
              <form:input type="date" class="col-6 input-group" path="fecha"/>
          </div>
          <br><br>
          <div class="row">
               <form:label path="hora" class="col-4 lead font-weight-normal">Hora:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              	<form:errors path="hora" cssClass="error" />
              </div>
              <form:input type="time" class="col-6 input-group" path="hora"/>
          </div>
          <br><br>
          <div class="row">
               <form:label path="numasistentes" class="col-4 lead font-weight-normal">Número de Asistentes:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              	<form:errors path="numasistentes" cssClass="error" />
              </div>
              <form:input type="number" class="col-6 input-group" path="numasistentes"/>
          </div>
          <br><br>
          <div class="row">
               <form:label path="visitas_idvisita" class="col-4 lead font-weight-normal">ID Visitas:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              	<form:errors path="visitas_idvisita" cssClass="error" />
              </div>
              <form:input class="col-6 input-group" path="visitas_idvisita"/>
          </div>
          <br><br>
          
          <br><br><br>
           <div class="row">
               <div class="container" style="max-width:55%">
               <a class="btn btn-warning col-4" href="viewcap" role="button">Volver</a>
                &nbsp;&nbsp;&nbsp;&nbsp;
               <input type="submit" class="btn btn-warning col-4" value="Agregar capacitacion">
               </div>
           </div>          
        </div>
      </form:form> 
      <div class="container" style="height: 50px;"></div>
  
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="/js/jquery-3.5.1.min.js"/></script>
	<script src="/js/popper.min.js"/></script>
    <script src="/js/bootstrap.min.js"/></script>
  </body>
</html>