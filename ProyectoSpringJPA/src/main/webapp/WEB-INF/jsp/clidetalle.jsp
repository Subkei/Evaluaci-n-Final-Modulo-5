<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<html>
<head>
<meta charset="ISO-8859-1">
<title>Detalle Cliente</title>
</head>
<body>

<h1>Detalle Cliente</h1>

ID Cliente: ${clienteData.getId()}<br/>
Nombre: ${clienteData.getNombre()}<br/>
Telefono: ${clienteData.getTelefono()}<br/>
Correo electronico: ${clienteData.getCorreoelectronico()}<br/>
Rubro: ${clienteData.getRubro()}<br/>
Dirección: ${clienteData.getDireccion()}<br/>

<a class="btn btn-warning col-4" href="/ProyectoSpringJPA/viewcli" role="button">Volver</a>  
</body>
</html>
