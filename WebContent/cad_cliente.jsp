<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.ResourceBundle"
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Cadastro de Cliente</title>
	<link rel="stylesheet" type="text/css" href="css/estilo.css">
</head>
<body>
	<div style="margin: auto; width: 940px; height: 350px; display: table;">
		<jsp:include page="header.jsp"></jsp:include>
		<form action="controllerCliente" method="post">
		
		<fieldset style="border: 1px;border-radius: 10px;border-style: solid; width: 400px; min-height: 150px; margin: auto; margin-top: 100px;">
			<legend style="color: red;">Cadastro de Clientes</legend>
			<%
			
			int qtd_adultos = Integer.parseInt(session.getAttribute("adultos").toString());
			int qtd_criancas = Integer.parseInt(session.getAttribute("criancas").toString());
			int qtd_bebes = Integer.parseInt(session.getAttribute("bebes").toString());
			
			int contCli = 1;
			
			for(int i = 1; i <= qtd_adultos; i++){
			%>
				<table>
					<tr>					
						<td style='text-align: center;' colspan="3">Cliente <%= contCli%></td>
					</tr>
					<tr>					
						<td style='text-align: right;'>Tipo</td>
							<td>:</td>
						<td>
							<select id="tipo" name="tipo<%= i%>"> 
								<option value="Adulto">Adulto</option> 
							</select>
						</td>
					</tr>
					<tr>					
						<td style='text-align: right;'>Forma de tratamento</td>
							<td>:</td>
						<td>
							<select id="form_tratamento" name="form_tratamento<%= i%>"> 
								<option value="Sra.">Sra.</option> 
								<option value="Sr.">Sr.</option> 
								<option value="Srta.">Srta.</option> 
							</select>
						</td>
					</tr>
					<tr>					
						<td style='text-align: right;'>Nome</td>
							<td>:</td>
						<td>
							<input class="nome" type='text'name='nome<%= i%>' id='nome' />
						</td>
					</tr>
					<tr>					
						<td style='text-align: right;'>Sobrenome</td>
							<td>:</td>
						<td>
							<input class="nome" type='text'name='sobrenome<%= i%>' id='nome' />
						</td>
					</tr>
					<tr>
						<td style='text-align: right;'>Data de nascimento</td>
						<td>:</td>
						<td><input class="data" type='date'name='data_nasci<%= i%>' id='data' /></td>
					</tr>
					<tr>
						<td colspan="3">&nbsp;</td>
					</tr>
				</table>
			<% 
				contCli++;
			}
			
			for(int i = 1; i <= qtd_criancas; i++){
			%>
				<table>
					<tr>					
						<td style='text-align: center;' colspan="3">Cliente <%= contCli%></td>
					</tr>
					<tr>					
						<td style='text-align: right;'>Tipo</td>
							<td>:</td>
						<td>
							<select id="tipo" name="tipo_cri<%= i%>"> 
								<option value="Criança">Criança</option> 
							</select>
						</td>
					</tr>
					<tr>					
						<td style='text-align: right;'>Forma de tratamento</td>
							<td>:</td>
						<td>
							<select id="form_tratamento" name="form_tratamento_cri<%= i%>"> 
								<option value="Sra.">Sra.</option> 
								<option value="Sr.">Sr.</option> 
								<option value="Srta.">Srta.</option> 
							</select>
						</td>
					</tr>
					<tr>					
						<td style='text-align: right;'>Nome</td>
							<td>:</td>
						<td>
							<input class="nome" type='text'name='nome_cri<%= i%>' id='nome' />
						</td>
					</tr>
					<tr>					
						<td style='text-align: right;'>Sobrenome</td>
							<td>:</td>
						<td>
							<input class="nome" type='text'name='sobrenome_cri<%= i%>' id='nome' />
						</td>
					</tr>
					<tr>
						<td style='text-align: right;'>Data de nascimento</td>
						<td>:</td>
						<td><input class="data" type='date'name='data_nasci_cri<%= i%>' id='data' /></td>
					</tr>
					<tr>
						<td colspan="3">&nbsp;</td>
					</tr>
				</table>
			<% 
				contCli++;
			}
			
			for(int i = 1; i <= qtd_bebes; i++){
			%>
				<table>
					<tr>					
						<td style='text-align: center;' colspan="3">Cliente <%= contCli%></td>
					</tr>
					<tr>					
						<td style='text-align: right;'>Tipo</td>
							<td>:</td>
						<td>
							<select id="tipo" name="tipo_be<%= i%>"> 
								<option value="Bebê">Bebê</option> 
							</select>
						</td>
					</tr>
					<tr>					
						<td style='text-align: right;'>Forma de tratamento</td>
							<td>:</td>
						<td>
							<select id="form_tratamento" name="form_tratamento_be<%= i%>"> 
								<option value="Sra.">Sra.</option> 
								<option value="Sr.">Sr.</option> 
								<option value="Srta.">Srta.</option> 
							</select>
						</td>
					</tr>
					<tr>					
						<td style='text-align: right;'>Nome</td>
							<td>:</td>
						<td>
							<input class="nome" type='text'name='nome_be<%= i%>' id='nome' />
						</td>
					</tr>
					<tr>					
						<td style='text-align: right;'>Sobrenome</td>
							<td>:</td>
						<td>
							<input class="nome" type='text'name='sobrenome_be<%= i%>' id='nome' />
						</td>
					</tr>
					<tr>
						<td style='text-align: right;'>Data de nascimento</td>
						<td>:</td>
						<td><input class="data" type='date'name='data_nasci_be<%= i%>' id='data' /></td>
					</tr>
					<tr>
						<td colspan="3">&nbsp;</td>
					</tr>
				</table>
			<% 
				contCli++;
			}
			%>
				<input type="hidden" name='operacao' value="cadastrar_cliente" >
				<input type='submit' value='cadastrar' style="margin-left: 150px; margin-top: 10px;">
		</fieldset>
		</form>
	</div>
	<%
		//String mensagem = (String) request.getAttribute("mensagem");
		
		//mensagem = (mensagem != null ? mensagem : ""); 
		//if(mensagem.equals("sucesso")){
		//	out.print(	"<div style='background-color: #93DB70; margin-left:auto; margin-right: auto;margin-top: 50px;width: 350px; height: 30px; text-align: center;  border-radius: 10px;'>"
		//				+"<p style='font-weight: bold; color: black; margin-top: -20px; padding-top: 5px;'>"
		//				+"Cadastro de Voo realizado com Sucesso"
		//				+"</p>"
		//				+"</div>");
		//}
	
	%>

</body>
</html>
