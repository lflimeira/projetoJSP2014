<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
 	import='model.*'
 	import='dao.*'
 	import='to.*'
 	import="java.util.ArrayList"
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Consulta - Aeronave</title>
	</head>
	<body>
		<div style="margin: auto; width: 940px; height: 350px; display: table;">
			<jsp:include page="header.jsp"></jsp:include>
			
			<fieldset style="border: 1px solid black; border-radius: 10px; width: 600px; min-height: 150px; margin: auto; margin-top: 100px;">
				<legend style="color: red;">Consulta de Aeronaves</legend>
			
			<!--
				<div id="fomularioPesquisa" style='position: relative; width: 590px; margin:auto;'>
				<form action="ControleAeronave" method="post">
				
					<table> 
						<tr>
							<td>
								Código:
								<input type='text' name='codigo' size='3' maxlength="4">
								Nome da Aeronave:
								<input type='text' name='nomeAeronave' size='30' maxlength="50">
							</td>
							<td rowspan='2'>
								<input type='submit' value='Pesquisar' style='height:60px;'>
							</td>
						</tr>
						<tr>
							<td>
								Tipo da Aeronave:
								<input type='text' name='tipoAeronave' size='15' maxlength="50">
								Colunas:
								<input type='text' name='colunas' size='2' maxlength="4">
								Fileiras:
								<input type='text' name='fileiras' size='2' maxlength="4">
							</td>
						</tr>
					</table>
					
					<input type="hidden" name='operacao' value="consultar" />
				</form>
				</div> 
			-->
				
				<div id='mensagem'>
						<%
							String mensagem = (String) request.getAttribute("mensagem");
							
							mensagem = (mensagem != null ? mensagem : ""); 
							if(mensagem.equals("alterado")){
								out.print(	"<div style='background-color: #93DB70;margin-top:20px; margin-left:auto; margin-right: auto; width: 390px; height: 30px; text-align: center;  border-radius: 10px;'>"
											+"<p style='font-weight: bold; color: black; margin-top: -20px; padding-top: 5px;'>"
											+"Dados da Aeronave alterados com Sucesso"
											+"</p>"
											+"</div>");
							}
							if(mensagem.equals("excluido")){
								out.print(	"<div style='background-color: #93DB70;margin-top:20px; margin-left:auto; margin-right: auto; width: 390px; height: 30px; text-align: center;  border-radius: 10px;'>"
											+"<p style='font-weight: bold; color: black; margin-top: -20px; padding-top: 5px;'>"
											+"Aeronave Excluida com Sucesso"
											+"</p>"
											+"</div>");
							}	
						%>
				
				</div>
				
				<div id="resultadoPesquisa" style='margin-top: 10px;'>
					<%
						//Pega o ArrayList que foi passado pelo controle
						ArrayList<AeronaveTO> lista = (ArrayList<AeronaveTO>) request.getAttribute("lista");
						
						//Formata todas as informações da lista item por item
						out.print("<table style='margin-left: auto;margin-right: auto; width: 580px; border: 1px solid black;'>");
						out.print("<tr style='font-weight: bold;background-color: #000000; color: white; text-align: center;'>"
								  +"\n	<td>Código</td>"
								  +"\n	<td>Nome da Aeronave</td>"
								  +"\n	<td>Tipo da Aeronave</td>"
								  +"\n	<td>Colunas</td>"
								  +"\n	<td>Fileiras</td>"
								  +"\n	<td colspan='2'>Alterar/Excluir</td>"
								  +"\n</tr>");
						
						//Variavel de Cor
						int g = 1;
						
						for(AeronaveTO aeronaveTO : lista){
							
							out.print("\n<tr style='background-color: ");
									if(g==1){
										out.print("#A9A9A9;");
										g=0;
									}
									else{
										out.print("#D3D3D3;");
										g=1;
									}
									out.print("'>"
									+"\n	<td style='text-align: center;'>"
									+"\n		" + aeronaveTO.getCodigo()
									+"\n	</td>"
									+"\n	<td style='padding-left: 5px;'>"
									+"\n		" + aeronaveTO.getNomeAeronave()
									+"\n	</td>"
									+"\n	<td style='padding-left: 5px;'>"
									+"\n		" + aeronaveTO.getTipoAeronave()
									+"\n	</td>"
									+"\n	<td style='text-align: center;'>"
									+"\n		" + aeronaveTO.getColunas()
									+"\n	</td>"
									+"\n	<td style='text-align: center;'>"
									+"\n		" + aeronaveTO.getFileiras()
									+"\n	</td>"
									+"\n	<td style='text-align: center;background-color: #98FB98;'>"
									+"\n		<a href='ControleAeronave?operacao=alterar&codigo="+aeronaveTO.getCodigo()+"&subOperacao=form'><img src='imagens/editar.png' width='20px' height='20px'></a>" 
									+"\n	</td>"
									+"\n	<td style='text-align: center;background-color: #FFA07A;'>"
									+"\n		<a href='ControleAeronave?operacao=excluir&subOperacao=form&codigo="+aeronaveTO.getCodigo()+"'><img src='imagens/excluir.png' width='20px' height='20px'></a>" 
									+"\n	</td>"
									+"\n</tr>"									
									);
						}
					
						out.print("\n</table>");
					%>
					<br>
				</div>
			</fieldset>
		</div>
		
	</body>
</html>