<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Quantidade de Clientes</title>
</head>
<body>
<div style="margin: auto; width: 940px; height: 350px; display: table;">
		<jsp:include page="header.jsp"></jsp:include>
		<form action="ControlePassagem" method="post">
		<fieldset style="border: 1px;border-radius: 10px;border-style: solid; width: 180px; min-height: 150px; margin: auto; margin-top: 100px;">
			<legend style="color: red;">Quantidade de Clientes</legend>
			

				<table>
					<tr>
						<td style='text-align: right;'>Adultos</td>
						<td>:</td>
						<td><input type="number" name="adultos" min="0" max="20" value='0'></td>
					</tr>
					<tr>
						<td style='text-align: right;'>Crian�as</td>
						<td>:</td>
						<td><input type="number" name="criancas" min="0" max="20" value='0'></td>
					</tr>
					<tr>
						<td style='text-align: right;'>Beb�s</td>
						<td>:</td>
						<td><input type="number" name="bebes" min="0" max="20" value='0'></td>
					</tr>
					<tr>
						<td colspan='3'><input type='submit' value='Escolher V�o' style="margin-left: 40px; margin-top: 10px;" /></td>
					</tr>
				</table>
				<input type='hidden' name='operacao' id='operacao' value='escolheVoo' />
		</fieldset>
		</form>
	</div>
	

</body>
</html>