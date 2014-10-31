<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
 	import='to.*'
 	import="java.util.ResourceBundle"
%>

<% ResourceBundle bundle = (ResourceBundle)session.getAttribute("linguagem");%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><%=bundle.getString("tela.alterarAeronave.alterarDados")%></title>
</head>
<body>
	<div style="margin: auto; width: 940px; height: 350px; display: table;">
		<jsp:include page="header.jsp"></jsp:include>
		<form action="ControleAeronave" method="post">
		<fieldset style="border: 1px;border-radius: 10px;border-style: solid; width: 400px; min-height: 150px; margin: auto; margin-top: 100px;">
			<legend style="color: red;"><%=bundle.getString("tela.alterarAeronave.alterarDados")%></legend>
			<%
			
				//Pega a Sessão
				HttpSession sessao = request.getSession();
			
				//Pega AeronaveTO
				AeronaveTO aeronaveTO = (AeronaveTO) sessao.getAttribute("aeronaveTO");
			
			%>

				<table>
					<tr>
						<td style='text-align: right;'><%=bundle.getString("tela.alterarAeronave.codDaAeronave")%></td>
						<td>:</td>
						<td><input type='text' size='5' maxlength="5" name='codigo'	id='codigo' value='<% out.print(aeronaveTO.getCodigo()); %>' /></td>
					</tr>
					<tr>
						<td style='text-align: right;'><%=bundle.getString("tela.alterarAeronave.nomeDaAeronave")%></td>
						<td>:</td>
						<td><input type='text' size='30' maxlength="30"	name='nomeAeronave' id='nomeAeronave' value='<% out.print(aeronaveTO.getNomeAeronave()); %>' /></td>
					</tr>
					<tr>
						<td style='text-align: right;'><%=bundle.getString("tela.alterarAeronave.tipoDeAeronave")%></td>
						<td>:</td>
						<td><input type='text' size='30' maxlength="30" name='tipoAeronave' id='tipoAeronave' value='<% out.print(aeronaveTO.getTipoAeronave()); %>'  /></td>
					</tr>
					<table style='margin-left: 70px; margin-top: 10px; border: 1px solid black; border-radius: 10px;'>
						<tr>
							<td style='text-align: center;' colspan='4'><%=bundle.getString("tela.alterarAeronave.localizacaoAssentos")%></td>
						</tr>
						<tr>
							<td><%=bundle.getString("tela.alterarAeronave.colunas")%>:</td>
							<td><input type="number" name="colunas" min="1" max="10" value='<% out.print(aeronaveTO.getColunas()); %>'></td>
							<td><%=bundle.getString("tela.alterarAeronave.fileiras")%>:</td>
							<td><input type="number" name="fileiras" min="1" max="40" value='<% out.print(aeronaveTO.getFileiras()); %>'></td>
						</tr>
					</table>
					<input type="hidden" name='operacao' value="alterar" >
					<input type="hidden" name='subOperacao' value="alterar" >
					<input type='submit' value='<%=bundle.getString("tela.alterarAeronave.alterar")%>' style="margin-left: 150px; margin-top: 10px;">
				</table>
		</fieldset>
		</form>
	</div>

</body>
</html>
