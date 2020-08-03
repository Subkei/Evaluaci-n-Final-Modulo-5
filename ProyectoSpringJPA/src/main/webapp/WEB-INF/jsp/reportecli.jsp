<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reporte por Cliente</title>
    <!-- CSS Bootstrap -->
	<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />

    <link href="${bootstrapCSS}" rel="stylesheet" />
    
</head>
<body style="padding: 10px;">
		<!-- buscar por ID cliente -->
		<div class="container">
			<form action="reportecli" class="form-inline md-form mr-auto mb-4">
				<input class="form-control mr-sm-2" type="number" placeholder="Buscar por ID Cliente" id="idvisita" name="idvisita"/>
				<input class="btn btn-success mb-1" type="submit" value="Buscar"/>
			</form>
		</div>
    <div class="container">
      <div class="card-deck mb-0">
        <div class="card mb-0 box-shadow">
          <div class="card-header">
            <h4 class="my-0 font-weight-normal">Reporte por Cliente</h4>
          </div>
			<!-- Cliente -->
			<div class="row">
				<div class="card-body col-6">
				  <ul class="list-unstyled">
				    <li>ID de Cliente: ${visitaData.cliente.id}</li>
				    <li>Nombre: ${visitaData.cliente.nombre}</li>
				    <li>Telefono: ${visitaData.cliente.telefono}</li>
				    <li>Correo electronico: ${visitaData.cliente.correoelectronico}</li>
				    <li>Rubro: ${visitaData.cliente.rubro}</li>
				    <li>Dirección: ${visitaData.cliente.direccion}</li>
				  </ul>
				</div>	          
				<!-- Empleado -->
				<div class="card-body col-6">
				  <ul class="list-unstyled">
				    <li class="initialism">Empleado Asignado</li>
				    <li>Nombre: ${visitaData.empleado.nombre}</li>
				    <li>Especialidad: ${visitaData.empleado.especialidad}</li>
				  </ul>
				</div>
			</div>
			<!-- Datos Visita -->
          <div class="card-header">			
            <h5 class="my-0 font-weight-normal">Visitas Asignadas</h5>
          </div>                    				
			<table id="tabla" class="table table-striped" style="width: 100%; ">
				<thead>		
					<tr>
						<th>ID Visita</th>
						<th>Direccion</th>
						<th>Ciudad</th>
						<th>Fecha</th>
						<th>Resumen</th>
						<th>Observaciones</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${visitaData.getIdvisita()}</td> 
						<td>${visitaData.getDireccion()}</td>
						<td>${visitaData.getCiudad()}</td>
						<td>${visitaData.getFecha()}</td>
						<td>${visitaData.getResumen()}</td>
						<td>${visitaData.getObservaciones()}</td>
					</tr>
				
				</tbody>
			</table>          
        </div>
      </div><br>
      <a class="btn btn-secondary mb-1" title="Volver al inicio" href="/ProyectoSpringJPA/main">Volver al inicio</a>
    </div>
</body>
</html>