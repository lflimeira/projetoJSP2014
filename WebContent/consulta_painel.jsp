<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Venda de Passagens</title>
<script language="JavaScript" src="js/calendario.js"></script>
</head>
<body onLoad="initCalendar();">

	<div
		style="margin: auto; width: 940px; min-height: 500px; display: table;">
		<jsp:include page="header.jsp"></jsp:include>
		<fieldset
			style="border: 1px; border-color: gray; border-style: solid; width: 940px; min-height: 300px; margin: auto; margin-top: 100px;">
			<legend style="color: red;"> Consulta para Painel </legend>
			<div style="text-align: center; margin-top: 70px;">
				Código do Vôo: <input type="text" name="codigo_voo" /> Origem: <select
					name="origem">
					<option>------------</option>
				</select> Destino: <select name="destino">
					<option>------------</option>
				</select> Data: <input onclick="showCalendar(this, this);" name="data">
				Hora: Situação:
			</div>
		</fieldset>
	</div>

</body>
</html>