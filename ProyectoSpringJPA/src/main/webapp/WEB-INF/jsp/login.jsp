<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page session="true"%>
<html>
<head>
<title>Página de Login</title>
	<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />
	<spring:url value="/resources/css/login.css" var="loginCSS" />
	
	<link href="${bootstrapCSS}" rel="stylesheet" />
	<link href="${loginCSS}" rel="stylesheet" />
	
</head>
<body onload='document.loginForm.username.focus();'>
<div class="container-fluid">
  <div class="row no-gutter">
    <div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"></div>
    <div class="col-md-8 col-lg-6">
      <div class="login d-flex align-items-center py-5">
        <div class="container">
          <div class="row">
            <div class="col-md-9 col-lg-8 mx-auto">
              <h3 class="login-heading mb-4">¡Bienvenido!</h3>
              
                <c:if test="${not empty error}">
                      <div class="errorlogin">${error}</div>
                </c:if>
                <c:if test="${not empty msg}">
                      <div class="msg">${msg}</div>
                </c:if>
                
		      <form name='loginForm' action="<c:url value='/j_spring_security_check' />" method='POST'>
                <div class="form-label-group">
                  <input type="text" name='username' id="inputEmail" class="form-control" placeholder="Usuario" autofocus>
                  <label for="inputEmail">Usuario</label>
                </div>

                <div class="form-label-group">
                  <input type="password" name='password' id="inputPassword" class="form-control" placeholder="Contraseña" required>
                  <label for="inputPassword">Contraseña</label>
                </div>

                <div class="custom-control custom-checkbox mb-3">
                  <input type="checkbox" class="custom-control-input" id="customCheck1">
                  <label class="custom-control-label" for="customCheck1">Recordar contraseña</label>
                </div>
                <button class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2" type="submit">Iniciar sesión</button>
                		  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                      <div class="text-center"><br>
                  <a class="medium" href="/ProyectoSpringJPA">Volver a Página Principal</a></div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>