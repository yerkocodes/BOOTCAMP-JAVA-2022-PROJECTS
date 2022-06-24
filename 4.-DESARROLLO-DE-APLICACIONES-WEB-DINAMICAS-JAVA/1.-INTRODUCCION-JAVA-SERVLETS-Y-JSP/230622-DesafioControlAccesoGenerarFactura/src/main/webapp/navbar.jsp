<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
HttpSession sessionUser = request.getSession();
String userName = (String) sessionUser.getAttribute("requestLogin");
%>

<nav class="navbar navbar-expand-lg bg-dark navbar-dark">
	<div class="container">
		<a class="navbar-brand" href="#">Generador factura</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ms-auto">
				<li class="nav-item nav-link"><%=userName%></li>
				<li class="nav-item"><a class="nav-link"
					href="ingresoValores.jsp">Generar Factura</a></li>
				<li class="nav-item"><a class="nav-link" href="deslogueo">Cerrar
						Sesion</a></li>
			</ul>
		</div>
	</div>
</nav>