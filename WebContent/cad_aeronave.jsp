<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Aeronave</title>
</head>
<body>
	<div style="margin: auto; width: 940px; height: 350px; display: table;">
		<jsp:include page="header.jsp"></jsp:include>
		<fieldset
			style="border: 1px; border-color: gray; border-style: solid; width: 400px; min-height: 150px; margin: auto; margin-top: 100px;">
			<legend style="color: red;">Cadastro de Aeronave</legend>
			<form action="ControleAeronave" method="post">

				<table>
					<tr>
						<td style='text-align: right;'>Código da Aeronave</td>
						<td>:</td>
						<td><input type='text' size='5' maxlength="5" name='codigo'
							id='codigo' /></td>
					</tr>
					<tr>
						<td style='text-align: right;'>Nome da Aeronave</td>
						<td>:</td>
						<td><input type='text' size='30' maxlength="30"
							name='nomeAeronave' id='nomeAeronave' /></td>
					</tr>
					<tr>
						<td style='text-align: right;'>Tipo de Aeronave</td>
						<td>:</td>
						<td><input type='text' size='30' maxlength="30"
							name='tipoAeronave' id='tipoAeronave' /></td>
					</tr>
					<table
						style='margin-left: 70px; margin-top: 10px; border: 1px solid black;'>
						<tr>
							<td style='text-align: center;' colspan='4'>Localização de
								Assentos</td>
						</tr>
						<tr>
							<td>Colunas:</td>
							<td><input type="number" name="colunas" min="1" max="5"></td>
							<td>Fileiras:</td>
							<td><input type="number" name="fileiras" min="1" max="5"></td>
						</tr>
					</table>
					<input type="hidden" name='operacao' value="cadastrar" />
					<input type='submit' value='Cadastrar'
						style="margin-left: 150px; margin-top: 10px;" />

				</table>


			</form>
		</fieldset>
	</div>

</body>
</html>