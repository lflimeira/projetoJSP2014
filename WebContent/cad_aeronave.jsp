<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.util.ResourceBundle"
	pageEncoding="ISO-8859-1"%>
<% ResourceBundle bundle = (ResourceBundle)session.getAttribute("linguagem");%>	
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><%=bundle.getString("cadastrar")%></title>
</head>
<body>
	<div style="margin: auto; width: 940px; height: 350px; display: table;">
		<jsp:include page="header.jsp"></jsp:include>
		<form action="ControleAeronave" method="post">
		<fieldset style="border: 1px;border-radius: 10px;border-style: solid; width: 400px; min-height: 150px; margin: auto; margin-top: 100px;">
			<legend style="color: red;"><%=bundle.getString("cadastrar")%></legend>
			

				<table>
					<tr>
						<td style='text-align: right;'><%=bundle.getString("lblCodigo")%></td>
						<td>:</td>
						<td><input type='text' size='4' maxlength="4" name='codigo'	id='codigo' /></td>
					</tr>
					<tr>
						<td style='text-align: right;'><%=bundle.getString("tela.cadAeronave.nomeDaAeronave")%></td>
						<td>:</td>
						<td><input type='text' size='30' maxlength="30"
							name='nomeAeronave' id='nomeAeronave' /></td>
					</tr>
					<tr>
						<td style='text-align: right;'><%=bundle.getString("tela.cadAeronave.tipoDeAeronave")%></td>
						<td>:</td>
						<td><input type='text' size='30' maxlength="30"
							name='tipoAeronave' id='tipoAeronave' /></td>
					</tr>
					<table style='margin-left: 70px; margin-top: 10px; border: 1px solid black; border-radius: 10px;'>
						<tr>
							<td style='text-align: center;' colspan='4'><%=bundle.getString("tela.alterarAeronave.localizacaoAssentos")%></td>
						</tr>
						<tr>
							<td><%=bundle.getString("tela.alterarAeronave.colunas")%>:</td>
							<td><input type="number" name="colunas" min="1" max="10"></td>
							<td><%=bundle.getString("tela.alterarAeronave.fileiras")%>:</td>
							<td><input type="number" name="fileiras" min="1" max="40"></td>
						</tr>
					</table>
					<input type="hidden" name='operacao' value="cadastrar" >
					<input type='submit' value='<%=bundle.getString("tela.cadAeronave.cadastrar")%>' style="margin-left: 150px; margin-top: 10px;">
				</table>
		</fieldset>
		</form>
	</div>
	
	<%
		String mensagem = (String) request.getAttribute("mensagem");
		
		mensagem = (mensagem != null ? mensagem : ""); 
		if(mensagem.equals("sucesso")){
			out.print(	"<div style='background-color: #93DB70; margin-left:auto; margin-right: auto; width: 350px; height: 30px; text-align: center;  border-radius: 10px;'>"
						+"<p style='font-weight: bold; color: black; margin-top: -20px; padding-top: 5px;'>"
						+bundle.getString("tela.cadAeronave.cadAeroSucesso")
						+"</p>"
						+"</div>");
		}
	
	%>

</body>
</html>
