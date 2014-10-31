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
						//Checkin
						CheckinTO checkinTO = (CheckinTO) sessao.getAttribute("checkinTO");
						//Voo
						VooTO vooTO = checkinTO.getVooTO();
						//Aeronave
						AeronaveTO aeronaveTO = (AeronaveTO) sessao.getAttribute("aeronaveTO");
						
					%>
<div style="margin: auto; width: 940px; height: 350px; display: table;">
	<jsp:include page="header.jsp"></jsp:include>
	<fieldset style="border: 1px;border-radius: 10px;border-style: solid; width: 300px; height: 100px; margin: auto; margin-top: 100px;">
				<legend style="color: red;"><%out.print(bundle.getString("lblDadosPassagem"));%></legend>
				
				<fieldset style='border: 1px solid black; border-radius: 10px; width: 300px; margin: auto;'>
				<legend></legend>
				
				<table style='margin: auto;'>
				<form action="ControleCheckin" method='post'>
					<tr>					
						<td style='text-align: right;'><%out.print(bundle.getString("tela.cadDCliente.poltrona"));%></td>
							<td>:</td>
						<td>
							<select id='poltrona' name='poltrona'>
							<%
							
								for(int i = 1; i <= aeronaveTO.getColunas(); i++){
									for(int y = 1; y <= aeronaveTO.getFileiras(); y++){
										out.print("<option value='"+i+"-"+y+"'>"+i+"-"+y+"</option>");
									}
								}								
							%>
							</select>
						</td>
					</tr>
					
				</table>
					<input type='submit' value='<%out.print(bundle.getString("lblProximo"));%>' style='margin-left: 120px;'/>
					<input type='hidden' name='operacao' value='escolherLugar' />
				</form>
				</fieldset>	
			</fieldset>
			</div>
			
	
</body>
</html>
