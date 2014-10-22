<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Transferir Passagem</title>
</head>
<body>
	<div style="margin: auto; width: 940px; height: 350px; display: table;">
	<jsp:include page="header.jsp"></jsp:include>
		<form action="ControlePassagem" method="post">
			<fieldset style="border: 1px;border-radius: 10px;border-style: solid; width: 400px; min-height: 150px; margin: auto; margin-top: 100px;">
				<legend style="color: red;">Transferencia de Passagem</legend>
				<div style="margin-top: 50px;">
				
					<label>Numero da Passagem:</label>
					<input id="numero" name="numero" size="30" type="text"></input>
				
					<div>
						<input type="submit" id="Transferir" name="Transferir" value="Transferir" style="margin-left: 146px; margin-top:10px;"/>
					</div>
					
					<div>
						<% 
						String mensagem = (String) request.getAttribute("mensagem");
						
						mensagem = (mensagem != null ? mensagem : ""); 
						if(mensagem.equals("sucesso"))
							out.print(	"<div style='background-color: #93DB70; margin-left:auto; margin-right: auto;margin-top: 50px;width: 350px; height: 30px; text-align: center;  border-radius: 10px;'>"
										+"<p style='font-weight: bold; color: black; margin-top: -20px; padding-top: 5px;'>"
										+"Passagem validada, deseja realizar Transferencia?"
										+"</p>"
										+"</div>");
						else if(mensagem.equals("erro"))
							out.print(	"<div style='background-color: #93DB70; margin-left:auto; margin-right: auto;margin-top: 50px;width: 350px; height: 30px; text-align: center;  border-radius: 10px;'>"
										+"<p style='font-weight: bold; color: black; margin-top: -20px; padding-top: 5px;'>"
										+"Passagem não encontrada, verefique os dados e tente novamente"
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