<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Consulta - Aeronave</title>
	</head>
	<body>
		<div style="margin: auto; width: 940px; height: 350px; display: table;">
			<jsp:include page="header.jsp"></jsp:include>
			
			<fieldset style="border: 1px solid black; border-radius: 10px; width: 650px; min-height: 150px; margin: auto; margin-top: 100px;">
				<legend style="color: red;">Consulta de Aeronaves</legend>
			
				<div id="fomularioPesquisa" style='width: 590px; border: 1px solid black;margin: auto; '>
				<form action="ControleAeronave" method="post">
				
					<table> 
						<tr>
							<td>
								Código:
								<input type='text' name='codigo' size='3' maxlength="4">
								Nome da Aeronave:
								<input type='text' name='nomeAeronave' size='30' maxlength="50">
							</td>
							<td rowspan='2'>
								<input type='submit' value='Pesquisar' style='height:60px;'>
							</td>
						</tr>
						<tr>
							<td>
								Tipo da Aeronave:
								<input type='text' name='tipoAeronave' size='15' maxlength="50">
								Colunas:
								<input type='text' name='colunas' size='2' maxlength="4">
								Fileiras:
								<input type='text' name='fileiras' size='2' maxlength="4">
							</td>
						</tr>
					</table>
					
					<input type="hidden" name='operacao' value="consultar" />
				</form>
				</div>
				
				<div id="resultadoPesquisa">
				</div>
			</fieldset>
		</div>
		
	</body>
</html>