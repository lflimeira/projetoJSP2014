<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="to.*"
	import='java.util.*'
 %>
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
				
					CheckinTO checkinTO = (CheckinTO) sessao.getAttribute("checkinTO");
					int codigoPassagem = checkinTO.getCodigo();
					ClienteTO clienteTO = checkinTO.getClienteTO();
					VooTO vooTO = checkinTO.getVooTO();
					ResponsavelTO responsavelTO = checkinTO.getResponsavelTO();
					String status = checkinTO.getStatus();				
					
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