<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>      

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS JS-->
    <link rel="stylesheet" href="/css/bootstrap.min.css"/>
    <script src="/js/jquery-3.5.1.min.js"></script>
   
    <title>Agregar Cliente</title>
  </head>
  <body>
    <div class="jumbotron">
        <header class="text-center">
            <h2>Agregar Cliente</h2>
        </header>
    </div> 
     <form:form method="post" action="clisave" modelAttribute="cliente">
      <div class="container">
          <div class="row">
              <label class="col-4 lead font-weight-normal">Nombre:</label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <form:input class="col-6 input-group" path="nombre"/>
          </div>
          <br><br>
          <div class="row">
              <label class="col-4 lead font-weight-normal">Telefono:</label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <form:input class="col-6 input-group" path="telefono"/>
          </div>
          <br><br>
          <div class="row">
              <label class="col-4 lead font-weight-normal">Correo electrónico:</label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <form:input class="col-6 input-group" path="correoelectronico"/>
          </div>
          <br><br>
          <div class="row">
              <label class="col-4 lead font-weight-normal">Rubro:</label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <form:input class="col-6 input-group" path="rubro"/>
          </div>
          <br><br>
          <div class="row">
              <label class="col-4 lead font-weight-normal">Dirección:</label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <form:input class="col-6 input-group" path="direccion"/>
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
    <script src="/js/jquery-3.5.1.min.js"/></script>
	<script src="/js/popper.min.js"/></script>
    <script src="/js/bootstrap.min.js"/></script>
  </body>
</html>