<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
 	import="java.util.ResourceBundle"
%>
<% ResourceBundle bundle = (ResourceBundle)session.getAttribute("linguagem");%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title><%out.print(bundle.getString("tela.cadDCliente.qntClientes"));%></title>
</head>
<body>
<div style="margin: auto; width: 940px; height: 350px; display: table;">
		<jsp:include page="header.jsp"></jsp:include>
		<form action="ControlePassagem" method="post">
		<fieldset style="border: 1px;border-radius: 10px;border-style: solid; width: 180px; min-height: 150px; margin: auto; margin-top: 100px;">
			<legend style="color: red;"></legend>
			

				<table>
					<tr>
						<td style='text-align: right;'><%out.print(bundle.getString("tela.cadDCliente.adulto"));%></td>
						<td>:</td>
						<td><input type="number" name="adultos" min="0" max="20" value='0'></td>
					</tr>
					<tr>
						<td style='text-align: right;'><%out.print(bundle.getString("tela.cadDCliente.crianca"));%></td>
						<td>:</td>
						<td><input type="number" name="criancas" min="0" max="20" value='0'></td>
					</tr>
					<tr>
						<td style='text-align: right;'><%out.print(bundle.getString("tela.cadDCliente.bebe"));%></td>
						<td>:</td>
						<td><input type="number" name="bebes" min="0" max="20" value='0'></td>
					</tr>
					<tr>
						<td><input type='radio' name='opcao' value='ida' > Ida</td>
						<td colspan='2'><input type='radio' name='opcao' value='idaVolta' > Ida e Volta</td>
					</tr>
					<tr>
						<td colspan='3'><input type='submit' value='Escolher Vôo' style="margin-left: 40px; margin-top: 10px;" /></td>
					</tr>
				</table>
				<input type='hidden' name='operacao' id='operacao' value='escolheVoo' />
		</fieldset>
		</form>
	</div>
	

</body>
</html>