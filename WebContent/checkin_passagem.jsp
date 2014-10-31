<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
 	import="java.util.ResourceBundle"
%>
<% ResourceBundle bundle = (ResourceBundle)session.getAttribute("linguagem");%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><%=bundle.getString("tela.menu.checkin")%></title>
</head>
<body>
	<div style="margin: auto; width: 940px; height: 350px; display: table;">
	<jsp:include page="header.jsp"></jsp:include>
		<form action="ControleCheckin" method="post">
			<fieldset style="border: 1px;border-radius: 10px;border-style: solid; width: 550px; min-height: 150px; margin: auto; margin-top: 100px;">
				<legend style="color: red;"><%=bundle.getString("tela.menu.checkin")%></legend>
				<div style="margin-top: 50px;">
				
					<label style='margin-left: 100px'><%=bundle.getString("lblnumeroPassagem")%>:</label>
					<input id="numero" name="numero" size="4" type="text"></input>
					<input type='hidden' name='operacao' id='operacao' value='mostraInformacoes' />
					<input type="submit" id="checkin" name="checkin" value=<%=bundle.getString("tela.menu.checkin")%> style="margin-left: 30px; margin-top:10px;"/>
					
					
					<div>
						<% 
						String mensagem = (String) request.getAttribute("mensagem");
						
						mensagem = (mensagem != null ? mensagem : ""); 
						if(mensagem.equals("sucesso"))
							out.print(	"<div style='background-color: #93DB70; margin-left:auto; margin-right: auto;margin-top: 50px; width: 250px; height: 30px; text-align: center;  border-radius: 10px;'>"
										+"<p style='font-weight: bold; color: black; margin-top: -20px; padding-top: 5px;'>"
										+bundle.getString("mensagem.checkin.exito")
										+"</p>"
										+"</div>");
						else if(mensagem.equals("erro"))
							out.print(	"<div style='background-color: #93DB70; margin-left:auto; margin-right: auto;margin-top: 50px; width: 550px; height: 30px; text-align: center;  border-radius: 10px;'>"
										+"<p style='font-weight: bold; color: black; margin-top: -20px; padding-top: 5px;'>"
										+bundle.getString("mensagem.checkin.erro")
										+"</p>"
										+"</div>");
						
						%>						
					</div>			
					
					<div>
						<% 
							
						%>						
					</div>			
				</div>			
			</fieldset>
		</form>
	</div>
</body>
</html>