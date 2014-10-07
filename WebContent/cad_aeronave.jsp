<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Cadastro de Aeronave</title>
	</head>
	<body>
		<div style="margin: auto; width: 940px; min-height: 500px;display: table;">
			<jsp:include page="header.jsp"></jsp:include>
				<fieldset style="border: 1px;border-color: gray;border-style: solid;width: 500px;min-height:300px;margin: auto;margin-top: 100px;">
			<legend style="color:red;">Cadastro de Aeronave</legend>
			<form action="#">
			
				<table>
					<tr>
						<td>Codigo da Aeronave</td>
						<td>:</td>
						<td>
							<input type='text' size='5' maxlength="5" name='codigo' id='codigo'/>
						</td>
					</tr>
					<tr>
						<td>Nome da Aeronave</td>
						<td>:</td>
						<td>
							<input type='text' size='40' maxlength="30" name='nomeAeronave' id='nomeAeronave'  />
						</td>
					</tr>
					<tr>
						<td>Tipo de Aeronave</td>
						<td>:</td>
						<td>
							<input type='text' size='40' maxlength="30" name='nomeAeronave' id='nomeAeronave'  />
						</td>
					</tr>
				</table>
			
			
			</form>
		</fieldset>
		</div>
				
	</body>
</html>