<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<body style="margin: auto; width: 940px; min-height: 500px; display: table;">
		<jsp:include page="header.jsp"></jsp:include>
		<br><br>
		<h3 align="center">Alterar Vôo</h3>

	<div
		style="margin: auto; width: 940px; min-height: 500px; display: table;">

		<fieldset
			style="border: 1px; border-color: gray; border-style: solid; width: 900px; min-height: 300px; margin: auto; margin-top: 100px;">
			<form class="form-horizontal" role="form" action="CadastraVoo"
				method="post">

				<div class="form-group">
					<label class="col-sm-2 control-label">Código</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="inputEmail3"
							placeholder="Código do Vôo">
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label">Origem</label>
					<div class="col-sm-8">
						<select class="form-control">
							<option>São Paulo</option>
							<option>Rio de Janeiro</option>
							<option>Salvador</option>
							<option>Fortaleza</option>
							<option>Florianopolis</option>
						</select>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label">Destino</label>
					<div class="col-sm-8">
						<select class="form-control">
							<option>São Paulo</option>
							<option>Rio de Janeiro</option>
							<option>Salvador</option>
							<option>Fortaleza</option>
							<option>Florianopolis</option>
						</select>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label">Status</label>
					<div class="col-sm-8">
						<select class="form-control">
							<option>Em Espera</option>
							<option>Confirmado</option>
							<option>Encerrado</option>
						</select>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label">Aeronave</label>
					<div class="col-sm-8">
						<select class="form-control">
							<option>Carga</option>
							<option>Comercial</option>
						</select>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label">Data</label>
					<div class="col-sm-8">
						<input type="date" class="form-control" id="inputdate">
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label">Hora</label>
					<div class="col-sm-8">
						<input type="time" class="form-control" id="inputhora">
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label">Escalas</label>
					<div class="col-sm-5">
						<label class="radio-inline"> <input type="radio"
							name="inlineRadioOptions" id="inlineRadio1" value="option1">
							1
						</label> <label class="radio-inline"> <input type="radio"
							name="inlineRadioOptions" id="inlineRadio2" value="option2">
							2
						</label> <label class="radio-inline"> <input type="radio"
							name="inlineRadioOptions" id="inlineRadio3" value="option3">
							3
						</label>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-8">
						<button type="submit" class="btn btn-default">Cadastrar</button>
					</div>
				</div>

			</form>
		</fieldset>
	</div>
</body>
</html>