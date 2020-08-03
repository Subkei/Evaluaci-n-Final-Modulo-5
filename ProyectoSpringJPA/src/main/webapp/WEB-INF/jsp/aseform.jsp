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
   
    <title>Ingresar Asesoria </title>
  </head>
  <body>
    <div class="jumbotron">
        <header class="text-center">
            <h2>Ingresar Asesoria </h2>
        </header>
    </div> 
    
     <form:form method="post" action="asesave" modelAttribute="asesoria">
     <form:errors path = "*" cssClass = "errorblock" element = "div" />       
      <div class="container">          
          <div class="row">
               <form:label path="detalle" class="col-4 lead font-weight-normal">Detalle :</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <form:input class="col-6 input-group" path="detalle" placeholder="Describe el detalle"/>
              <form:errors path="detalle" cssClass = "error" />
          </div>
          <br><br>
          <div class="row">
               <form:label path="gestion" class="col-4 lead font-weight-normal">Gestión:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <form:input class="col-6 input-group" path="gestion" placeholder="Describe la gestión"/>
              <form:errors path="gestion" cssClass = "error" />
          </div>
          <br><br>
          
          <div class="row">
               <form:label path="propuestas" class="col-4 lead font-weight-normal">Propuestas:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <form:input class="col-6 input-group" path="propuestas" placeholder="Detalla una propuesta"/>
              <form:errors path="propuestas" cssClass = "error" />
          </div>
          <br><br>   
                 
          <div class="row">
               <form:label path="fecha" class="col-4 lead font-weight-normal">Fecha:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <form:input type="date" class="col-6 input-group" path="fecha"/>
              <form:errors path="fecha" cssClass = "error" />
          </div>
          <br><br>         
          <div class="row">
               <form:label path="especial" class="col-4 lead font-weight-normal">Especial:</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <form:select path="especial" class="col-6 input-group">
	           <form:option value="si" label="si"/>
              	<form:option value="no" label="no"/>
              </form:select>
              <form:errors path="especial" cssClass = "error" />
          </div>
          <br><br>      
    	<div class="row">
               <form:label path="visitas_idvisita" class="col-4 lead font-weight-normal">ID Visita</form:label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <form:input type="number" class="col-6 input-group" path="visitas_idvisita"/>
              <form:errors path="visitas_idvisita" cssClass = "error" />
          </div>
         
          <br><br><br>
    
          <div class="row">
               <div class="container" style="max-width:55%">
                <a class="btn btn-warning col-4" href="viewase" role="button">Volver</a>
                &nbsp;&nbsp;&nbsp;&nbsp;
               <input type="submit" class="btn btn-warning col-4" value="Agregar Asesoria">
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