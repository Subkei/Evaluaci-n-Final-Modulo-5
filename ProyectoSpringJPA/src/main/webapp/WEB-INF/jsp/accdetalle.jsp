<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<html>
<head>
<meta charset="UTF-8">
<title>Detalle Accidente </title>
</head>
<body>

ID Accidente:   ${accidenteData.getIdaccidente()}<br/>
Fecha: ${accidenteData.getFecha()}<br/>
Hora: ${accidenteData.getHora()}<br/>
Suceso: ${accidenteData.getSuceso()}<br/>
Lugar: ${accidenteData.getLugar()}<br/>
Id Cliente: ${accidenteData.getCliente_id()}<br/>


<br>
<a class="btn btn-warning col-4" href="/ProyectoSpringJPA/viewacc" role="button">Volver</a>  

</body>
</html>