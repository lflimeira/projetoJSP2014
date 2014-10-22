<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.ResourceBundle"
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Cadastro de Responsável</title>
	<link rel="stylesheet" type="text/css" href="css/estilo.css">
</head>
<body>
	<div style="margin: auto; width: 940px; height: 350px; display: table;">
		<jsp:include page="header.jsp"></jsp:include>
		<form action="controllerResponsavel" method="post">
		
		<fieldset style="border: 1px;border-radius: 10px;border-style: solid; width: 400px; min-height: 150px; margin: auto; margin-top: 100px;">
			<legend style="color: red;">Cadastro de Responsável</legend>
			
				<table>
					<tr>					
						<td style='text-align: center;' colspan="3"><%=request.getAttribute("mensagem") %></td>
					</tr>
					<tr>					
						<td style='text-align: right;'>E-mail</td>
							<td>:</td>
						<td>
							<input class="email" type='text'name='email' id='email' />
						</td>
					</tr>
					<tr>					
						<td style='text-align: right;'>Celular</td>
							<td>:</td>
						<td>
							<input class="celular" type='text'name='celular' id='celular' />
						</td>
					</tr>
					<tr>
						<td colspan="3">&nbsp;</td>
					</tr>
				</table>
				
				<input type="hidden" name='operacao' value="cadastrar_resposavel" >
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
