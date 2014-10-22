<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
	import='to.*'
	import="java.util.ArrayList"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Escolha de Vôo</title>
</head>
<body>
		<div style="margin: auto; width: 940px; height: 350px; display: table;">
			<jsp:include page="header.jsp"></jsp:include>
			
			<fieldset style="border: 1px solid black; border-radius: 10px; width: 600px; min-height: 150px; margin: auto; margin-top: 100px;">
				<legend style="color: red;">Consulta de Voos</legend>
				
				<div id="resultadoPesquisa" style='margin-top: 10px;'>
					<%
						//Pega a Sessão
						HttpSession sessao = request.getSession();
						
						//Pega o ArrayList que foi passado pelo controle
						ArrayList<VooTO> lista = (ArrayList<VooTO>) sessao.getAttribute("lista");
						
						//Formata todas as informações da lista item por item
						out.print("<table style='margin-left: auto;margin-right: auto; width: 580px; border: 1px solid black;'>");
						out.print("<tr style='font-weight: bold;background-color: #000000; color: white; text-align: center;'>"
								  +"\n	<td>Código</td>"
								  +"\n	<td>Origem</td>"
								  +"\n	<td>Destino</td>"
								  +"\n	<td>Data</td>"
								  +"\n	<td>Hora</td>"
								  +"\n  <td>Valor</td>"
								  +"\n	<td>Compra</td>"
								  +"\n</tr>");
						
						//Variavel de Cor
						int g = 1;
						
						for(VooTO vooTO : lista){
							
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
									+"\n		" + vooTO.getCodigo()
									+"\n	</td>"
									+"\n	<td style='padding-left: 5px;text-align: center;'>"
									+"\n		"+ vooTO.getOrigem()
									+"\n	</td>"
									+"\n	<td style='padding-left: 5px;text-align: center;'>"
									+"\n		" + vooTO.getDestino()
									+"\n	</td>"
									+"\n	<td style='text-align: center;'>"
									+"\n		" + vooTO.getData()
									+"\n	</td>"
									+"\n	<td style='text-align: center;'>"
									+"\n		" + vooTO.getHora()
									+"\n	</td>"
									+"\n	<td style='text-align: center;'>"
									+"\n		R$ " + vooTO.getValor()
									+"\n	</td>"
									+"\n	<td style='text-align: center;'>"
									+"\n		<a href='ControlePassagem?operacao=cadastroPassageiro&codigoVoo="+vooTO.getCodigo()+"'>Comprar</a>"
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