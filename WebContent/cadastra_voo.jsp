<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	 import="model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Venda de Passagens</title>

<!-- Bootstrap Core CSS -->
<link href="bootstrap-3.2/css/bootstrap.min.css" rel="stylesheet">

<link href="bootstrap-3.2/css/bootstrap.css" rel="stylesheet">

<link href="bootstrap-3.2/css/bootstrap-responsive.css" rel="stylesheet">

</head>
<body
	style="margin: auto; width: 940px; min-height: 500px; display: table;">

	<!-- cabeçalho -->
	<header style="margin-bottom: 90px;"> <jsp:include
		page="header.jsp"></jsp:include> </header>

			<div class="alert alert-success" role="alert">

				<%
					VooTO voo = (VooTO) request.getAttribute("obj");
					out.print("Cadastro de Voo Realizado com sucesso!<br>");
					out.print("Codigo: " + voo.getCodigo() + "<br>");
					out.print("Origem: " + voo.getOrigem() + "<br>");
					out.print("Destino: " + voo.getDestino() + "<br>");
					out.print("Hora: " + voo.getHora() + "<br>");
				%>

			</div>
	<div class="panel panel-primary">
		<h4 align="center">
			<font color="#0000FF">Cadastro de Vôos</font>
		</h4>

		<form class="form-horizontal" role="form" action="CadastraVoo"
			method="post">

			<div class="form-group">
				<label class="col-sm-2 control-label">Código</label>
				<div class="col-sm-8">
					<input name="cod" type="text" class="form-control" id="inputEmail3"
						placeholder="Código do Vôo">
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">Origem</label>
				<div class="col-sm-8">
					<select name="origem" class="form-control">
						<option>São Paulo</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">Destino</label>
				<div class="col-sm-8">
					<select name="destino" class="form-control">
						<option>Florianopolis</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">Status</label>
				<div class="col-sm-8">
					<select name="status"class="form-control">
						<option>Em Espera</option>
						<option>Confirmado</option>
						<option>Encerrado</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">Tipo Aeronave</label>
				<div class="col-sm-8">
					<select name="tipo_aero"class="form-control">
						<option>Carga</option>
						<option>Comercial</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">Aeronave</label>
				<div class="col-sm-8">
					<select name="aeronave"class="form-control">
						<option>J123</option>
						<option>J124</option>
						<option>J125</option>
						<option>J126</option>
						<option>J127</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">Data</label>
				<div class="col-sm-8">
					<input name="data" type="date" class="form-control" id="inputdate">
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">Hora</label>
				<div class="col-sm-8">
					<input name="hora"type="time" class="form-control" id="inputhora">
				</div>
			</div>


			<div class="form-group">
				<div class="col-md-12">
					<div class="form-group row">
						<label for="inputKey" class="col-md-2 control-label">Escalas</label>
						<div class="col-md-4">
							<select name="escala1" class="form-control">
								<option>J127</option>
							</select>	
						</div>
						<div class="col-md-4">
							<select name="escala2"class="form-control">
								<option>J123</option>
							</select>
						</div>
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-8">
					<button type="submit" class="btn btn-default">Cadastrar</button>
				</div>
			</div>

		</form>
	</div>
	</div>
</body>
</html>