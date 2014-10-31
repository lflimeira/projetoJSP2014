<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="to.*"
	import='java.util.*'
 	import="java.util.ResourceBundle"
%>
<% ResourceBundle bundle = (ResourceBundle)session.getAttribute("linguagem");%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Dados do Passageiro</title>
</head>

<body>
					<%
						
					//Pega a Sessão
					HttpSession sessao = request.getSession();
				
					ClienteTO clienteTO = (ClienteTO) sessao.getAttribute("cliente");
					
					
					%>

					<table>
					<tr>					
						<td style='text-align: center;' colspan="3">Cliente</td>
					</tr>
					<tr>					
						<td style='text-align: right;'>Tipo</td>
							<td>:</td>
						<td>
							<% out.print(clienteTO.getTipo());%>
						</td>
					</tr>
					<tr>					
						<td style='text-align: right;'>Forma de tratamento</td>
							<td>:</td>
						<td>
							<% out.print(clienteTO.getTratamento());%>
						</td>
					</tr>
					<tr>					
						<td style='text-align: right;'>Nome</td>
							<td>:</td>
						<td>
							<% out.print(clienteTO.getNome());%>
						</td>
					</tr>
					<tr>					
						<td style='text-align: right;'>Sobrenome</td>
							<td>:</td>
						<td>
							<% out.print(clienteTO.getSobrenome());%>
						</td>
					</tr>
					<tr>
						<td style='text-align: right;'>Data de nascimento</td>
						<td>:</td>
						<td>
							<% out.print(clienteTO.getDataNascimento());%>
						</td>
					</tr>
					<tr>
						<td colspan="3">&nbsp;</td>
					</tr>
				</table>
	
</body>
</html>