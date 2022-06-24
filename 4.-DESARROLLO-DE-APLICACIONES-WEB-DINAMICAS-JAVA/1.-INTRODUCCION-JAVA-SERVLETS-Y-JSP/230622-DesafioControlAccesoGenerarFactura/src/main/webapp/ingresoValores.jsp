<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Formulario de ingreso</title>

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>

<body>

<%-- 
	<% 
	
	HttpSession sessionUser = request.getSession();
	String userName = (String) sessionUser.getAttribute("requestLogin");

	// En el caso de que no llegue a la factura
	sessionUser.setAttribute("requestLogin", userName);
		
	%>

	<nav class="navbar navbar-expand-lg bg-dark navbar-dark">
		<div class="container">
			<a class="navbar-brand" href="#">Generador factura</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item nav-link"><%=userName%></li>
					<li class="nav-item"><a class="nav-link" href="ingresoValores.jsp">Generar Factura</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="deslogueo">Cerrar Sesion</a>

					</li>
				</ul>
			</div>
		</div>
	</nav>
 --%>

<%-- 	<jsp:include page="navBar.html"></jsp:include>	
 --%>

 	<%@include file="navbar.jsp" %> <!-- Llamando al navbar del archivo navbar.jsp -->

	<section class="container mt-4">
		<div>
			<h1>Generador Factura</h1>
		</div>
	</section>


	<section class="container mt-5 border border-dark bg-dark">
		<form class="mt-5 p-5 m-auto" action="procesaFactura" method="POST">

			<div class="row">
				<div class="col-sm-12 col-md-6 col-lg-4">
					<label for="exampleFormControlInput1">Nombre Completo</label> <input
						type="text" class="form-control" id="nombre" name="nombre"
						placeholder="Nombre Apellido" value="Yerko" required>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-4">
					<label for="exampleFormControlInput1">Empresa</label> <input
						type="text" class="form-control" id="empresa" name="empresa"
						required placeholder="Nombre Empresa" value="Edutecno">
				</div>
				<div class="col-sm-12 col-md-6 col-lg-4">
					<label for="exampleFormControlInput1">Rut</label> <input
						type="text" class="form-control" id="rut" name="rut" required
						placeholder="27001001-1" value="123-4">
				</div>

				<div class="col-sm-12 col-md-6 col-lg-4">
					<label for="Direccion">Direccion</label> <input type="text"
						class="form-control" id="direccion" required name="direccion"
						placeholder="Direccion" value="Av JAVA #123321">
				</div>
				<div class="col-sm-12 col-md-6 col-lg-4">
					<label for="exampleFormControlInput1">Ciudad</label> <input
						type="text" class="form-control" id="ciudad" name="ciudad"
						required placeholder="Ciudad" value="Santiago">
				</div>
				<div class="col-sm-12 col-md-6 col-lg-4">
					<label for="exampleFormControlInput1">Pais</label> <input
						type="text" class="form-control" id="pais" name="pais" required
						placeholder="Pais" value="Chile">
				</div>
			</div>

			<table class="table table-dark table-striped mt-4">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">ITEM</th>
						<th scope="col">DESCRIPCION</th>
						<th scope="col">VALOR UNIDAD</th>
						<th scope="col">CANTIDAD</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>Valvulas Titanio</td>
						<td>Valvulas de carrera</td>
						<td>$120.000</td>
						<td><input class="form-control form-control-sm" type="number"
							name="valvulas" id="valvulas" placeholder="cantidad" value="3"
							required></td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>Turbo Full Carrera</td>
						<td>Turbo de competicion multimarca</td>
						<td>$1.700.000</td>
						<td><input class="form-control form-control-sm" type="number"
							name="turbo" id="turbo" placeholder="cantidad" value="2" required>
						</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Kit de Freno Competicion</td>
						<td>Juego de discos, balatas, caliper de competicion</td>
						<td>$760.000</td>
						<td><input class="form-control form-control-sm" type="number"
							name="frenos" id="frenos" placeholder="cantidad" value="1"
							required></td>
					</tr>
					<tr>
						<th scope="row">4</th>
						<td>Sistema de refrigeracion</td>
						<td>Sistema enfriamiento motor Carrera</td>
						<td>$2.300.000</td>
						<td><input class="form-control form-control-sm" type="number"
							name="refri" id="refri" placeholder="cantidad" value="2" required></td>
					</tr>
					<tr>
						<th scope="row">5</th>
						<td>Plumillas Limpiaparabrisas standar</td>
						<td>plumillas para la lluvia</td>
						<td>$10.000</td>
						<td><input class="form-control form-control-sm" type="number"
							name="plumas" id="plumas" placeholder="cantidad" value="2"
							required></td>
					</tr>
				</tbody>
			</table>

			<div
				style="margin: 0 auto; padding-left: 20px; padding-bottom: 20px; float: right;">
				<button type="submit" class="btn btn-success">Genera
					Factura</button>
				<button type="reset" class="btn btn-secondary" value="Reset">Limpiar</button>
			</div>
		</form>
	</section>

	<!-- Bootstrap popperjs -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<!--bootstrap js-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>
</body>

</html>