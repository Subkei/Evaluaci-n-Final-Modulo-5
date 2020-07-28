<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page session="true"%>
<html>
<head>
<title>Página de Login</title>
	<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />
	<spring:url value="/resources/css/estilos.css" var="estilosCSS" />
	
	<link href="${bootstrapCSS}" rel="stylesheet" />
	<link href="${estilosCSS}" rel="stylesheet" />
	
</head>
<body onload='document.loginForm.username.focus();'>
	<div class="container-md text-center">
	<h1 class="display-4">Bienvenido, para acceder inicia sesión.</h1>
	</div>
	<div id="login-box">

		<h2>Inicio sesión</h2>
		<br>
		<c:if test="${not empty error}">
			<div class="errorlogin">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>

		<form name='loginForm'
		  action="<c:url value='/j_spring_security_check' />" method='POST'>
		<table>
			<tr>
				<td>Usuario:</td>
				<td><input type='text' name='username'></td>
			</tr>
			<tr>
				<td>Contraseña:</td>
				<td><input type='password' name='password' /></td>
			</tr>
			<tr>
				<td colspan='2'><br><input name="submit" type="submit"
				  value="iniciar sesión" /></td>
			</tr>
		  </table>
		
		  <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />

		</form>
		
	</div>
	<a href="/ProyectoSpringJPA">Página Principal</a>
</body>
</html>