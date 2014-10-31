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
<title><%=bundle.getString("excluir")%></title>
</head>
<body>
	<div style="margin: auto; width: 940px; height: 350px; display: table;">
		<jsp:include page="header.jsp"></jsp:include>
		<form action="ControleVoo" method="post">
		<fieldset style="border: 1px;border-radius: 10px;border-style: solid; width: 250px; min-height: 150px; margin: auto; margin-top: 100px;">
			<legend style="color: red;"><%=bundle.getString("excluir")%></legend>
			<%
				//Pega a Sessão
				HttpSession sessao = request.getSession();
			
				//Pega VooTO
					VooTO vooTO = (VooTO) sessao.getAttribute("vooTO");
			
			%>

				<table>
					<tr>
						<td style='text-align: right;font-weight: bold;'><%out.print(bundle.getString("lblCodigo"));%></td>
						<td>:</td>
						<td><% out.print(vooTO.getCodigo()); %></td>
					</tr>
					<tr>
						<td style='text-align: right;font-weight: bold;'><%out.print(bundle.getString("voo.lblorigem"));%></td>
						<td>:</td>
						<td><% out.print(vooTO.getOrigem()); %></td>
					</tr>
					<tr>
						<td style='text-align: right;font-weight: bold;'><%out.print(bundle.getString("voo.lbldestino"));%></td>
						<td>:</td>
						<td><% out.print(vooTO.getDestino()); %></td>
					</tr>
					<tr>
						<td style='text-align: right;font-weight: bold;'><%out.print(bundle.getString("voo.lbldata"));%></td>
						<td>:</td>
						<td><% out.print(vooTO.getData()); %></td>
					</tr>
					<tr>
						<td style='text-align: right;font-weight: bold;'><%out.print(bundle.getString("voo.lblhora"));%></td>
						<td>:</td>
						<td><% out.print(vooTO.getHora()); %></td>
					</tr>
					<tr>
						<td style='text-align: right;font-weight: bold;'><%out.print(bundle.getString("voo.lblstatus"));%></td>
						<td>:</td>
						<td><% out.print(vooTO.getSituacao()); %></td>
					</tr>
					<%
						if(!(vooTO.getEscala1().equals(""))){
							out.print("<tr>"
										+"<td style='text-align: right;font-weight: bold;'>Escala 1</td>"
										+"<td>:</td>"
										+"<td>"+vooTO.getEscala1()+"</td>"
									    +"</tr>");
						}
						if(!(vooTO.getEscala2().equals(""))){
							out.print("<tr>"
										+"<td style='text-align: right;font-weight: bold;'>Escala 2</td>"
										+"<td>:</td>"
										+"<td>"+vooTO.getEscala2()+"</td>"
									    +"</tr>");
						}
					%>
					<input type="hidden" name='operacao' value="excluir" >
					<input type="hidden" name='subOperacao' value="excluir" >
					<input type='hidden' name='codigo' value='<% out.print(vooTO.getCodigo()); %>'>
					<tr>
						<td><input type='submit' value=<%=bundle.getString("excluir")%>></td>
					</tr>
				</table>
		</fieldset>
		</form>
	</div>

</body>
</html>