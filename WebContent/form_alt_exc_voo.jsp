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
			<legend style="color: red;"> Alterar/Excluir V&ocirc;o </legend>
			<form action="" method="post">
				<div style="text-align: center; margin-top: 70px;">
					<label> Código do Vôo: <input type="text" name="codigo_voo" />
					</label> <label> Origem: <select name="origem">
							<option>------------</option>
					</select>
					</label> <label> Destino: <select name="destino">
							<option>------------</option>
					</select>
					</label> <label> Data: <input onclick="showCalendar(this, this);"
						name="data">
					</label> <label> Hora: <input type="text" name="hora" />
					</label> <label> Situação: <select name="situacao">
							<option>------------</option>
					</select>
					</label> <br /> <br /> <input type="submit" name="btn" value="Alterar" /> <input
						type="submit" name="btn" value="Excluir" /> <input type="submit"
						name="btn" value="Cancelar" />
				</div>
			</form>
		</fieldset>
	</div>

</body>
</html>