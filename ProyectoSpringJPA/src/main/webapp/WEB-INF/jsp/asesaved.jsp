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

<title>Asesoría Registrada </title>

</head>
<body>

   <div class="jumbotron">
      <header class="text-center">
          <h2>Detalle Asesoría Registrada </h2>
      </header>
  </div> 
  	<div class="container">
      	<table >
         <tr class ="row ">
            <td> <label class="col-4">  Detalle:</label></td>
            <td>${detalle}</td>
         </tr>
         <tr class ="row">
            <td> <label class="col-4">  Gestión:</label></td>
            <td>${gestion}</td>
         </tr>
         <tr class ="row">
            <td> <label class="col-4">  Propuestas:</label></td>
            <td>${propuestas}</td>
         </tr >
         <tr class ="row">
            <td> <label class="col-4">  Fecha:</label></td>
            <td>${fecha}</td>
         </tr>
         <tr class ="row">
            <td> <label class="col-4">  Especial:</label></td>
            <td>${especial}</td>
         </tr>                  
                 <tr class ="row">
            <td> <label class="col-4">  ID Visita:</label></td>
            <td>${visitas_idvisita}</td>
         </tr>                  
 
      </table>
   </div>
      <br>
      <a class="btn btn-warning col-4" href="viewase" role="button">Volver</a> 


      <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <spring:url value="/resources/js/jquery-3.5.1.min.js" var="jqueryJS" />
    <spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJS" />
    
    <script src="${jqueryJS}"></script>
    <script src="${bootstrapJS}"></script>
</body>
</html>