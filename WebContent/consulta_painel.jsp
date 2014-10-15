<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Venda de Passagens</title>


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.css">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>


</head>
<body>
	<div style="margin: auto; width: 940px; min-height: 500px; display: table;">
		<jsp:include page="header.jsp"></jsp:include>
		<fieldset
			style="border: 1px; border-color: gray; border-style: solid; width: 1000px; min-height: 300px; margin: auto; margin-top: 100px;">

			<div class="row" align="center">
				<div class="col-lg-12">
					<h2>Lista de Voos</h2>
					<table class="table table-bordered table-hover table-striped">
						<thead>
							<tr>
								<th>Código</th>
								<th>Origem</th>
								<th>Destino</th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody>
							<tr class="success">
								<td width=5%>1265</td>
								<td>Guarulhos</td>
								<td>Fortaleza</td>
								<td width=5%>Confirmado</td>
							</tr>
							<tr class="danger">
								<td>1265</td>
								<td>Guarulhos</td>
								<td>Fortaleza</td>
								<td>Cancelado</td>
							</tr>
							<tr class="warning">
								<td>1265</td>
								<td>Guarulhos</td>
								<td>Fortaleza</td>
								<td>Atrasado</td>
							</tr>
							<tr class="warning">
								<td>1265</td>
								<td>Guarulhos</td>
								<td>Fortaleza</td>
								<td>Embarque</td>
							</tr>
							<tr>
								<td>1265</td>
								<td>Guarulhos</td>
								<td>Fortaleza</td>
								<td>Finalizado</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</fieldset>
	</div>
</body>
</html>