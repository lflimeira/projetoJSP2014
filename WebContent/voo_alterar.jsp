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
<title>Alterar Dados do Voo</title>
</head>
<body>
	<div style="margin: auto; width: 940px; height: 350px; display: table;">
		<jsp:include page="header.jsp"></jsp:include>
		<form action="ControleVoo" method="post">
		<fieldset style="border: 1px;border-radius: 10px;border-style: solid; width: 400px; min-height: 150px; margin: auto; margin-top: 100px;">
			<legend style="color: red;">Alterar Dados da Voo</legend>
			<%
			
				//Pega a Sess�o
				HttpSession sessao = request.getSession();
			
				//Pega VooTO
				VooTO vooTO = (VooTO) sessao.getAttribute("vooTO");
				
			%>

				<table>
					<tr>
						<td style='text-align: right;'><%out.print(bundle.getString("lblCodigo"));%></td>
						<td>:</td>
						<td><input type='text' size='5' maxlength="5" name='codigo' id='codigo' value='<%out.print(vooTO.getCodigo()); %>' /></td>
					</tr>
					<tr>					
						<td style='text-align: right;'><%out.print(bundle.getString("voo.lblorigem"));%></td>
							<td>:</td>
						<td>
							<select id="origem" name="origem">
								<option value="Acre"<%if(vooTO.getOrigem().equals("Acre")){out.print("selected='selected'");} %>>Acre</option> 
								<option value="Alagoas"<%if(vooTO.getOrigem().equals("Alagoas")){out.print("selected='selected'");} %>>Alagoas</option> 
								<option value="Amazonas"<%if(vooTO.getOrigem().equals("Amazonas")){out.print("selected='selected'");} %>>Amazonas</option> 
								<option value="Amap�"<%if(vooTO.getOrigem().equals("Amap�")){out.print("selected='selected'");} %>>Amap�</option> 
								<option value="Bahia"<%if(vooTO.getOrigem().equals("Bahia")){out.print("selected='selected'");} %>>Bahia</option> 
								<option value="Cear�"<%if(vooTO.getOrigem().equals("Cear�")){out.print("selected='selected'");} %>>Cear�</option> 
								<option value="Distrito Federal"<%if(vooTO.getOrigem().equals("Distrito Federal")){out.print("selected='selected'");} %>>Distrito Federal</option> 
								<option value="Esp�rito Santo"<%if(vooTO.getOrigem().equals("Esp�rito Santo")){out.print("selected='selected'");} %>>Esp�rito Santo</option> 
								<option value="Goi�s"<%if(vooTO.getOrigem().equals("Goi�s")){out.print("selected='selected'");} %>>Goi�s</option> 
								<option value="Maranh�o"<%if(vooTO.getOrigem().equals("Maranh�o")){out.print("selected='selected'");} %>>Maranh�o</option> 
								<option value="Mato Grosso"<%if(vooTO.getOrigem().equals("Mato Grosso")){out.print("selected='selected'");} %>>Mato Grosso</option> 
								<option value="Mato Grosso do Sul"<%if(vooTO.getOrigem().equals("Mato Grosso do Sul")){out.print("selected='selected'");} %>>Mato Grosso do Sul</option> 
								<option value="Minas Gerais"<%if(vooTO.getOrigem().equals("Minas Gerais")){out.print("selected='selected'");} %>>Minas Gerais</option> 
								<option value="Par�"<%if(vooTO.getOrigem().equals("Par�")){out.print("selected='selected'");} %>>Par�</option> 
								<option value="Para�ba"<%if(vooTO.getOrigem().equals("Para�ba")){out.print("selected='selected'");} %>>Para�ba</option> 
								<option value="Paran�"<%if(vooTO.getOrigem().equals("Paran�")){out.print("selected='selected'");} %>>Paran�</option> 
								<option value="Pernambuco"<%if(vooTO.getOrigem().equals("Pernambuco")){out.print("selected='selected'");} %>>Pernambuco</option> 
								<option value="Piau�"<%if(vooTO.getOrigem().equals("Piau�")){out.print("selected='selected'");} %>>Piau�</option> 
								<option value="Rio de Janeiro"<%if(vooTO.getOrigem().equals("Rio de Janeiro")){out.print("selected='selected'");} %>>Rio de Janeiro</option> 
								<option value="Rio Grande do Norte"<%if(vooTO.getOrigem().equals("Rio Grande do Norte")){out.print("selected='selected'");} %>>Rio Grande do Norte</option> 
								<option value="Rond�nia"<%if(vooTO.getOrigem().equals("Rond�nia")){out.print("selected='selected'");} %>>Rond�nia</option> 
								<option value="Rio Grande do Sul"<%if(vooTO.getOrigem().equals("Rio Grande do Sul")){out.print("selected='selected'");} %>>Rio Grande do Sul</option> 
								<option value="Roraima"<%if(vooTO.getOrigem().equals("Roraima")){out.print("selected='selected'");} %>>Roraima</option> 
								<option value="Santa Catarina"<%if(vooTO.getOrigem().equals("Santa Catarina")){out.print("selected='selected'");} %>>Santa Catarina</option> 
								<option value="Sergipe"<%if(vooTO.getOrigem().equals("Sergipe")){out.print("selected='selected'");} %>>Sergipe</option> 
								<option value="S�o Paulo"<%if(vooTO.getOrigem().equals("S�o Paulo")){out.print("selected='selected'");} %>>S�o Paulo</option> 
								<option value="Tocantins"<%if(vooTO.getOrigem().equals("Tocantins")){out.print("selected='selected'");} %>>Tocantins</option> 
							</select>
						</td>
					</tr>
					
					<tr>					
						<td style='text-align: right;'><%out.print(bundle.getString("voo.lbldestino"));%></td>
							<td>:</td>
						<td>
							<select id="destino" name="destino">
								<option value="Acre"<%if(vooTO.getDestino().equals("Acre")){out.print("selected='selected'");} %>>Acre</option> 
								<option value="Alagoas"<%if(vooTO.getDestino().equals("Alagoas")){out.print("selected='selected'");} %>>Alagoas</option> 
								<option value="Amazonas"<%if(vooTO.getDestino().equals("Amazonas")){out.print("selected='selected'");} %>>Amazonas</option> 
								<option value="Amap�"<%if(vooTO.getDestino().equals("Amap�")){out.print("selected='selected'");} %>>Amap�</option> 
								<option value="Bahia"<%if(vooTO.getDestino().equals("Bahia")){out.print("selected='selected'");} %>>Bahia</option> 
								<option value="Cear�"<%if(vooTO.getDestino().equals("Cear�")){out.print("selected='selected'");} %>>Cear�</option> 
								<option value="Distrito Federal"<%if(vooTO.getDestino().equals("Distrito Federal")){out.print("selected='selected'");} %>>Distrito Federal</option> 
								<option value="Esp�rito Santo"<%if(vooTO.getDestino().equals("Esp�rito Santo")){out.print("selected='selected'");} %>>Esp�rito Santo</option> 
								<option value="Goi�s"<%if(vooTO.getDestino().equals("Goi�s")){out.print("selected='selected'");} %>>Goi�s</option> 
								<option value="Maranh�o"<%if(vooTO.getDestino().equals("Maranh�o")){out.print("selected='selected'");} %>>Maranh�o</option> 
								<option value="Mato Grosso"<%if(vooTO.getDestino().equals("Mato Grosso")){out.print("selected='selected'");} %>>Mato Grosso</option> 
								<option value="Mato Grosso do Sul"<%if(vooTO.getDestino().equals("Mato Grosso do Sul")){out.print("selected='selected'");} %>>Mato Grosso do Sul</option> 
								<option value="Minas Gerais"<%if(vooTO.getDestino().equals("Minas Gerais")){out.print("selected='selected'");} %>>Minas Gerais</option> 
								<option value="Par�"<%if(vooTO.getDestino().equals("Par�")){out.print("selected='selected'");} %>>Par�</option> 
								<option value="Para�ba"<%if(vooTO.getDestino().equals("Para�ba")){out.print("selected='selected'");} %>>Para�ba</option> 
								<option value="Paran�"<%if(vooTO.getDestino().equals("Paran�")){out.print("selected='selected'");} %>>Paran�</option> 
								<option value="Pernambuco"<%if(vooTO.getDestino().equals("Pernambuco")){out.print("selected='selected'");} %>>Pernambuco</option> 
								<option value="Piau�"<%if(vooTO.getDestino().equals("Piau�")){out.print("selected='selected'");} %>>Piau�</option> 
								<option value="Rio de Janeiro"<%if(vooTO.getDestino().equals("Rio de Janeiro")){out.print("selected='selected'");} %>>Rio de Janeiro</option> 
								<option value="Rio Grande do Norte"<%if(vooTO.getDestino().equals("Rio Grande do Norte")){out.print("selected='selected'");} %>>Rio Grande do Norte</option> 
								<option value="Rond�nia"<%if(vooTO.getDestino().equals("Rond�nia")){out.print("selected='selected'");} %>>Rond�nia</option> 
								<option value="Rio Grande do Sul"<%if(vooTO.getDestino().equals("Rio Grande do Sul")){out.print("selected='selected'");} %>>Rio Grande do Sul</option> 
								<option value="Roraima"<%if(vooTO.getDestino().equals("Roraima")){out.print("selected='selected'");} %>>Roraima</option> 
								<option value="Santa Catarina"<%if(vooTO.getDestino().equals("Santa Catarina")){out.print("selected='selected'");} %>>Santa Catarina</option> 
								<option value="Sergipe"<%if(vooTO.getDestino().equals("Sergipe")){out.print("selected='selected'");} %>>Sergipe</option> 
								<option value="S�o Paulo"<%if(vooTO.getDestino().equals("S�o Paulo")){out.print("selected='selected'");} %>>S�o Paulo</option> 
								<option value="Tocantins"<%if(vooTO.getDestino().equals("Tocantins")){out.print("selected='selected'");} %>>Tocantins</option> 
							</select>
						</td>
						</td>
					</tr>
					
					<tr>
						<td style='text-align: right;'><%out.print(bundle.getString("voo.lbldata"));%></td>
						<td>:</td>
						<td><input class="data" type='date' name='data' id='data' value='<%out.print(vooTO.getData());%>'/> </td>
					</tr>
					<tr>
						<td style='text-align: right;'><%out.print(bundle.getString("voo.lblhora"));%></td>
						<td>:</td>
						<td><input class="hora" type='time'name='hora' id='hora'value='<%out.print(vooTO.getHora());%>' /></td>
					</tr>
					<tr>
						<td style='text-align: right;'><%out.print(bundle.getString("voo.lblstatus"));%></td>
						<td>:</td>
						<td>
							<select id="situacao" name="situacao">
								  <option <%if(vooTO.getSituacao().equals(bundle.getString("voo.cbstatus.espera"))){out.print("selected='selected'");} %>>Em espera</option>
								  <option <%if(vooTO.getSituacao().equals(bundle.getString("voo.cbstatus.confirmado"))){out.print("selected='selected'");} %>>Confirmado</option>
								  <option <%if(vooTO.getSituacao().equals(bundle.getString("voo.cbstatus.cancelado"))){out.print("selected='selected'");} %>>Cancelado</option>
								  <option <%if(vooTO.getSituacao().equals(bundle.getString("voo.cbstatus.atrasado"))){out.print("selected='selected'");} %>>Atrasado</option>
								  <option <%if(vooTO.getSituacao().equals(bundle.getString("voo.cbstatus.embarque"))){out.print("selected='selected'");} %>>Embarque</option>
								  <option <%if(vooTO.getSituacao().equals(bundle.getString("voo.cbstatus.finalizado"))){out.print("selected='selected'");} %>>Finalizado</option>
								  <option <%if(vooTO.getSituacao().equals(bundle.getString("voo.cbstatus.encerrado"))){out.print("selected='selected'");} %>>Encerrado</option>
							</select>
						</td>
					</tr>
					<tr>
						<td style='text-align: right;'><%out.print(bundle.getString("voo.lblvalor"));%></td>
						<td>:</td>
						<td>R$<input id='valor' name='valor' size='5' value='<% out.print(vooTO.getValor()); %>'/></td>
					</tr>
					<tr>											
						<td style='text-align: right;'><%out.print(bundle.getString("voo.lblaeronave"));%></td>
							<td>:</td>
						<td>
							<select id="aeronave" name="aeronave">
							<%
	  							ArrayList<AeronaveTO> lista = (ArrayList<AeronaveTO>) session.getAttribute("lista");
	  							
								for(AeronaveTO aeronaveTO : lista){
									out.print("\n	<option value='"+aeronaveTO.getCodigo()+"'");
									if(vooTO.getAeronave() == aeronaveTO.getCodigo()){out.print("selected='selected'");}
									out.print(">"+aeronaveTO.getNomeAeronave()+"</option>");
								}
							%>
							</select>
						</td>
					</tr>
					<tr>					
						<td style='text-align: right;'><%out.print(bundle.getString("voo.lblescalas1"));%></td>
							<td>:</td>
						<td>
							<select id="escala1" name="escala1">
								<option value="">-------------</option> 
								<option value="Acre"<%if(vooTO.getEscala1().equals("Acre")){out.print("selected='selected'");} %>>Acre</option> 
								<option value="Alagoas"<%if(vooTO.getEscala1().equals("Alagoas")){out.print("selected='selected'");} %>>Alagoas</option> 
								<option value="Amazonas"<%if(vooTO.getEscala1().equals("Amazonas")){out.print("selected='selected'");} %>>Amazonas</option> 
								<option value="Amap�"<%if(vooTO.getEscala1().equals("Amap�")){out.print("selected='selected'");} %>>Amap�</option> 
								<option value="Bahia"<%if(vooTO.getEscala1().equals("Bahia")){out.print("selected='selected'");} %>>Bahia</option> 
								<option value="Cear�"<%if(vooTO.getEscala1().equals("Cear�")){out.print("selected='selected'");} %>>Cear�</option> 
								<option value="Distrito Federal"<%if(vooTO.getEscala1().equals("Distrito Federal")){out.print("selected='selected'");} %>>Distrito Federal</option> 
								<option value="Esp�rito Santo"<%if(vooTO.getEscala1().equals("Esp�rito Santo")){out.print("selected='selected'");} %>>Esp�rito Santo</option> 
								<option value="Goi�s"<%if(vooTO.getEscala1().equals("Goi�s")){out.print("selected='selected'");} %>>Goi�s</option> 
								<option value="Maranh�o"<%if(vooTO.getEscala1().equals("Maranh�o")){out.print("selected='selected'");} %>>Maranh�o</option> 
								<option value="Mato Grosso"<%if(vooTO.getEscala1().equals("Mato Grosso")){out.print("selected='selected'");} %>>Mato Grosso</option> 
								<option value="Mato Grosso do Sul"<%if(vooTO.getEscala1().equals("Mato Grosso do Sul")){out.print("selected='selected'");} %>>Mato Grosso do Sul</option> 
								<option value="Minas Gerais"<%if(vooTO.getEscala1().equals("Minas Gerais")){out.print("selected='selected'");} %>>Minas Gerais</option> 
								<option value="Par�"<%if(vooTO.getEscala1().equals("Par�")){out.print("selected='selected'");} %>>Par�</option> 
								<option value="Para�ba"<%if(vooTO.getEscala1().equals("Para�ba")){out.print("selected='selected'");} %>>Para�ba</option> 
								<option value="Paran�"<%if(vooTO.getEscala1().equals("Paran�")){out.print("selected='selected'");} %>>Paran�</option> 
								<option value="Pernambuco"<%if(vooTO.getEscala1().equals("Pernambuco")){out.print("selected='selected'");} %>>Pernambuco</option> 
								<option value="Piau�"<%if(vooTO.getEscala1().equals("Piau�")){out.print("selected='selected'");} %>>Piau�</option> 
								<option value="Rio de Janeiro"<%if(vooTO.getEscala1().equals("Rio de Janeiro")){out.print("selected='selected'");} %>>Rio de Janeiro</option> 
								<option value="Rio Grande do Norte"<%if(vooTO.getEscala1().equals("Rio Grande do Norte")){out.print("selected='selected'");} %>>Rio Grande do Norte</option> 
								<option value="Rond�nia"<%if(vooTO.getEscala1().equals("Rond�nia")){out.print("selected='selected'");} %>>Rond�nia</option> 
								<option value="Rio Grande do Sul"<%if(vooTO.getEscala1().equals("Rio Grande do Sul")){out.print("selected='selected'");} %>>Rio Grande do Sul</option> 
								<option value="Roraima"<%if(vooTO.getEscala1().equals("Roraima")){out.print("selected='selected'");} %>>Roraima</option> 
								<option value="Santa Catarina"<%if(vooTO.getEscala1().equals("Santa Catarina")){out.print("selected='selected'");} %>>Santa Catarina</option> 
								<option value="Sergipe"<%if(vooTO.getEscala1().equals("Sergipe")){out.print("selected='selected'");} %>>Sergipe</option> 
								<option value="S�o Paulo"<%if(vooTO.getEscala1().equals("S�o Paulo")){out.print("selected='selected'");} %>>S�o Paulo</option> 
								<option value="Tocantins"<%if(vooTO.getEscala1().equals("Tocantins")){out.print("selected='selected'");} %>>Tocantins</option> 
							</select>
						</td>
					</tr>
					
					<tr>					
						<td style='text-align: right;'><%out.print(bundle.getString("voo.lblescalas2"));%></td>
							<td>:</td>
						<td>
							<select id="escala2" name="escala2">
								<option value="">-------------</option> 
								<option value="Acre"<%if(vooTO.getEscala2().equals("Acre")){out.print("selected='selected'");} %>>Acre</option> 
								<option value="Alagoas"<%if(vooTO.getEscala2().equals("Alagoas")){out.print("selected='selected'");} %>>Alagoas</option> 
								<option value="Amazonas"<%if(vooTO.getEscala2().equals("Amazonas")){out.print("selected='selected'");} %>>Amazonas</option> 
								<option value="Amap�"<%if(vooTO.getEscala2().equals("Amap�")){out.print("selected='selected'");} %>>Amap�</option> 
								<option value="Bahia"<%if(vooTO.getEscala2().equals("Bahia")){out.print("selected='selected'");} %>>Bahia</option> 
								<option value="Cear�"<%if(vooTO.getEscala2().equals("Cear�")){out.print("selected='selected'");} %>>Cear�</option> 
								<option value="Distrito Federal"<%if(vooTO.getEscala2().equals("Distrito Federal")){out.print("selected='selected'");} %>>Distrito Federal</option> 
								<option value="Esp�rito Santo"<%if(vooTO.getEscala2().equals("Esp�rito Santo")){out.print("selected='selected'");} %>>Esp�rito Santo</option> 
								<option value="Goi�s"<%if(vooTO.getEscala2().equals("Goi�s")){out.print("selected='selected'");} %>>Goi�s</option> 
								<option value="Maranh�o"<%if(vooTO.getEscala2().equals("Maranh�o")){out.print("selected='selected'");} %>>Maranh�o</option> 
								<option value="Mato Grosso"<%if(vooTO.getEscala2().equals("Mato Grosso")){out.print("selected='selected'");} %>>Mato Grosso</option> 
								<option value="Mato Grosso do Sul"<%if(vooTO.getEscala2().equals("Mato Grosso do Sul")){out.print("selected='selected'");} %>>Mato Grosso do Sul</option> 
								<option value="Minas Gerais"<%if(vooTO.getEscala2().equals("Minas Gerais")){out.print("selected='selected'");} %>>Minas Gerais</option> 
								<option value="Par�"<%if(vooTO.getEscala2().equals("Par�")){out.print("selected='selected'");} %>>Par�</option> 
								<option value="Para�ba"<%if(vooTO.getEscala2().equals("Para�ba")){out.print("selected='selected'");} %>>Para�ba</option> 
								<option value="Paran�"<%if(vooTO.getEscala2().equals("Paran�")){out.print("selected='selected'");} %>>Paran�</option> 
								<option value="Pernambuco"<%if(vooTO.getEscala2().equals("Pernambuco")){out.print("selected='selected'");} %>>Pernambuco</option> 
								<option value="Piau�"<%if(vooTO.getEscala2().equals("Piau�")){out.print("selected='selected'");} %>>Piau�</option> 
								<option value="Rio de Janeiro"<%if(vooTO.getEscala2().equals("Rio de Janeiro")){out.print("selected='selected'");} %>>Rio de Janeiro</option> 
								<option value="Rio Grande do Norte"<%if(vooTO.getEscala2().equals("Rio Grande do Norte")){out.print("selected='selected'");} %>>Rio Grande do Norte</option> 
								<option value="Rond�nia"<%if(vooTO.getEscala2().equals("Rond�nia")){out.print("selected='selected'");} %>>Rond�nia</option> 
								<option value="Rio Grande do Sul"<%if(vooTO.getEscala2().equals("Rio Grande do Sul")){out.print("selected='selected'");} %>>Rio Grande do Sul</option> 
								<option value="Roraima"<%if(vooTO.getEscala2().equals("Roraima")){out.print("selected='selected'");} %>>Roraima</option> 
								<option value="Santa Catarina"<%if(vooTO.getEscala2().equals("Santa Catarina")){out.print("selected='selected'");} %>>Santa Catarina</option> 
								<option value="Sergipe"<%if(vooTO.getEscala2().equals("Sergipe")){out.print("selected='selected'");} %>>Sergipe</option> 
								<option value="S�o Paulo"<%if(vooTO.getEscala2().equals("S�o Paulo")){out.print("selected='selected'");} %>>S�o Paulo</option> 
								<option value="Tocantins"<%if(vooTO.getEscala2().equals("Tocantins")){out.print("selected='selected'");} %>>Tocantins</option>  
							</select>
						</td>
					</tr>
					</table>
					<input type="hidden" name='operacao' value="alterar" >
					<input type="hidden" name='subOperacao' value="alterar" >
					<input type='submit' value='Alterar' style="margin-left: 150px; margin-top: 10px;">
				</table>
		</fieldset>
		</form>
	</div>

</body>
</html>