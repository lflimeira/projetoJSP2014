<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
	import="to.*"
 	import="java.util.ArrayList"
 	import="java.util.ResourceBundle"
%>
<% ResourceBundle bundle = (ResourceBundle)session.getAttribute("linguagem");%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="texxt/html; charset=ISO-8859-1">
		<title><%=bundle.getString("consultar")%></title>
	</head>
	<body>
		<div style="margin: auto; width: 940px; height: 350px; display: table;">
			<jsp:include page="header.jsp"></jsp:include>
			
			<fieldset style="border: 1px solid black; border-radius: 10px; width: 600px; min-height: 150px; margin: auto; margin-top: 100px;">
				<legend style="color: red;"><%=bundle.getString("consultar")%></legend>
				<div id='mensagem'>
						<%
							String mensagem = (String) request.getAttribute("mensagem");
							
							mensagem = (mensagem != null ? mensagem : ""); 
							if(mensagem.equals("alterado")){
								out.print(	"<div style='background-color: #93DB70;margin-top:20px; margin-left:auto; margin-right: auto; width: 390px; height: 30px; text-align: center;  border-radius: 10px;'>"
											+"<p style='font-weight: bold; color: black; margin-top: -20px; padding-top: 5px;'>"
											+bundle.getString("mensagem.alterar.exito")
											+"</p>"
											+"</div>");
							}
							if(mensagem.equals("excluido")){
								out.print(	"<div style='background-color: #93DB70;margin-top:20px; margin-left:auto; margin-right: auto; width: 390px; height: 30px; text-align: center;  border-radius: 10px;'>"
											+"<p style='font-weight: bold; color: black; margin-top: -20px; padding-top: 5px;'>"
											+bundle.getString("mensagem.excluir.exito")
											+"</p>"
											+"</div>");
							}	
						%>
				
				</div>
				
				<div id="resultadoPesquisa" style='margin-top: 10px;'>
					<%
						//Pega o ArrayList que foi passado pelo controle
						ArrayList<VooTO> lista = (ArrayList<VooTO>) request.getAttribute("lista");
						
						//Formata todas as informações da lista item por item
						out.print("<table style='margin-left: auto;margin-right: auto; width: 580px; border: 1px solid black;'>");
						out.print("<tr style='font-weight: bold;background-color: #000000; color: white; text-align: center;'>"
								  +"\n	<td>" + (bundle.getString("lblCodigo")) + "</td>"
								  +"\n	<td>" + (bundle.getString("voo.lblorigem")) + "</td>"
								  +"\n	<td>" + (bundle.getString("voo.lbldestino")) + "</td>"
								  +"\n	<td>" + (bundle.getString("voo.lblstatus")) + "</td>"
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
									+"\n		" + vooTO.getSituacao()
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