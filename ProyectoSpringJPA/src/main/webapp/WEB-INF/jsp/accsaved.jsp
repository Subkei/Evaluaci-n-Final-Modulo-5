<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>      

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS JS-->
<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />
<spring:url value="/resources/js/jquery-3.5.1.min.js" var="jqueryJS" />

 <link href="${bootstrapCSS}" rel="stylesheet" />
<script src="${jqueryJS}"></script>

<title>Accidente Registrado </title>

</head>
<body>

   <div class="jumbotron">
      <header class="text-center">
          <h2>Detalle Accidente Registrado </h2>
      </header>
  </div> 
  	<div class="container">
      	<table >
         <tr class ="row ">
            <td> <label class="col-4">  Fecha:</label></td>
            <td>${fecha}</td>
         </tr>
         <tr class ="row">
            <td> <label class="col-4">  Hora:</label></td>
            <td>${hora}</td>
         </tr>
         <tr class ="row">
            <td> <label class="col-4">  Suceso:</label></td>
            <td>${suceso}</td>
         </tr >
         <tr class ="row">
            <td> <label class="col-4">  Lugar:</label></td>
            <td>${lugar}</td>
         </tr>
         <tr class ="row">
            <td> <label class="col-4">  ID Cliente:</label></td>
            <td>${cliente_id}</td>
         </tr>                  
      </table>
   </div>
      <br>
      <a class="btn btn-warning col-4" href="viewacc" role="button">Volver</a> 


      <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <spring:url value="/resources/js/jquery-3.5.1.min.js" var="jqueryJS" />
    <spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJS" />
    
    <script src="${jqueryJS}"></script>
    <script src="${bootstrapJS}"></script>
</body>
</html>