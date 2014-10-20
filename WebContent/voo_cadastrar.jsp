<%@page import="controller.ControleVoo"%>
<%@page import="jdk.nashorn.internal.runtime.ListAdapter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import='to.*'
	import='java.util.*'
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Cadastro de Voos</title>
	<link rel="stylesheet" type="text/css" href="css/estilo.css">
</head>
<body>
	<div style="margin: auto; width: 940px; height: 350px; display: table;">
		<jsp:include page="header.jsp"></jsp:include>
		<form action="ControleVoo" method="post">
		<fieldset style="border: 1px;border-radius: 10px;border-style: solid; width: 400px; min-height: 150px; margin: auto; margin-top: 100px;">
			<legend style="color: red;">Cadastro de Voos</legend>

				<table>
					<tr>
						<td style='text-align: right;'>Código do Voo</td>
						<td>:</td>
						<td><input type='text' size='5' maxlength="5" name='codigo' id='codigo' /></td>
					</tr>
					<tr>					
						<td style='text-align: right;'>Origem</td>
							<td>:</td>
						<td>
							<select id="origem" name="origem">
								<option value="">-------------</option> 
								<option value="Acre">Acre</option> 
								<option value="Alagoas">Alagoas</option> 
								<option value="Amazonas">Amazonas</option> 
								<option value="Amapá">Amapá</option> 
								<option value="Bahia">Bahia</option> 
								<option value="Ceará">Ceará</option> 
								<option value="Distrito Federal">Distrito Federal</option> 
								<option value="Espírito Santo">Espírito Santo</option> 
								<option value="Goiás">Goiás</option> 
								<option value="Maranhão">Maranhão</option> 
								<option value="Mato Grosso">Mato Grosso</option> 
								<option value="Mato Grosso do Sul">Mato Grosso do Sul</option> 
								<option value="Minas Gerais">Minas Gerais</option> 
								<option value="Pará">Pará</option> 
								<option value="Paraíba">Paraíba</option> 
								<option value="Paraná">Paraná</option> 
								<option value="Pernambuco">Pernambuco</option> 
								<option value="Piauí">Piauí</option> 
								<option value="Rio de Janeiro">Rio de Janeiro</option> 
								<option value="Rio Grande do Norte">Rio Grande do Norte</option> 
								<option value="Rondônia">Rondônia</option> 
								<option value="Rio Grande do Sul">Rio Grande do Sul</option> 
								<option value="Roraima">Roraima</option> 
								<option value="Santa Catarina">Santa Catarina</option> 
								<option value="Sergipe">Sergipe</option> 
								<option value="São Paulo">São Paulo</option> 
								<option value="Tocantins">Tocantins</option> 
							</select>
						</td>
					</tr>
					
					<tr>					
						<td style='text-align: right;'>Destino</td>
							<td>:</td>
						<td>
							<select id="destino" name="destino">
								<option value="">-------------</option> 
								<option value="Acre">Acre</option> 
								<option value="Alagoas">Alagoas</option> 
								<option value="Amazonas">Amazonas</option> 
								<option value="Amapá">Amapá</option> 
								<option value="Bahia">Bahia</option> 
								<option value="Ceará">Ceará</option> 
								<option value="Distrito Federal">Distrito Federal</option> 
								<option value="Espírito Santo">Espírito Santo</option> 
								<option value="Goiás">Goiás</option> 
								<option value="Maranhão">Maranhão</option> 
								<option value="Mato Grosso">Mato Grosso</option> 
								<option value="Mato Grosso do Sul">Mato Grosso do Sul</option> 
								<option value="Minas Gerais">Minas Gerais</option> 
								<option value="Pará">Pará</option> 
								<option value="Paraíba">Paraíba</option> 
								<option value="Paraná">Paraná</option> 
								<option value="Pernambuco">Pernambuco</option> 
								<option value="Piauí">Piauí</option> 
								<option value="Rio de Janeiro">Rio de Janeiro</option> 
								<option value="Rio Grande do Norte">Rio Grande do Norte</option> 
								<option value="Rondônia">Rondônia</option> 
								<option value="Rio Grande do Sul">Rio Grande do Sul</option> 
								<option value="Roraima">Roraima</option> 
								<option value="Santa Catarina">Santa Catarina</option> 
								<option value="Sergipe">Sergipe</option> 
								<option value="São Paulo">São Paulo</option> 
								<option value="Tocantins">Tocantins</option> 
							</select>
						</td>
					</tr>
					
					<tr>
						<td style='text-align: right;'>Data</td>
						<td>:</td>
						<td><input class="data" type='date'name='data' id='data' /></td>
					</tr>
					<tr>
						<td style='text-align: right;'>Hora</td>
						<td>:</td>
						<td><input class="hora" type='time'name='hora' id='hora' /></td>
					</tr>
					<tr>
						<td style='text-align: right;'>Situação</td>
						<td>:</td>
						<td>
							<select id="situacao" name="situacao">
								  <option>Em espera</option>
								  <option>Confirmado</option>
								  <option>Encerrado</option>
							</select>
						</td>
					</tr>
					<tr>											
						<td style='text-align: right;'>Aeronave</td>
							<td>:</td>
						<td>
							<select id="aeronave" name="aeronave">
							<%
	  							ArrayList<AeronaveTO> lista = (ArrayList<AeronaveTO>) request.getAttribute("lista");
								for(AeronaveTO aeronaveTO : lista){ 
									out.print("\n	<option value='"+aeronaveTO.getCodigo()+"'>"+aeronaveTO.getNomeAeronave()+"</option>");
								}
							%>
							</select>
						</td>
					</tr>
					<tr>					
						<td style='text-align: right;'>Escala 1</td>
							<td>:</td>
						<td>
							<select id="escala1" name="escala1">
								<option value="">-------------</option> 
								<option value="Acre">Acre</option> 
								<option value="Alagoas">Alagoas</option> 
								<option value="Amazonas">Amazonas</option> 
								<option value="Amapá">Amapá</option> 
								<option value="Bahia">Bahia</option> 
								<option value="Ceará">Ceará</option> 
								<option value="Distrito Federal">Distrito Federal</option> 
								<option value="Espírito Santo">Espírito Santo</option> 
								<option value="Goiás">Goiás</option> 
								<option value="Maranhão">Maranhão</option> 
								<option value="Mato Grosso">Mato Grosso</option> 
								<option value="Mato Grosso do Sul">Mato Grosso do Sul</option> 
								<option value="Minas Gerais">Minas Gerais</option> 
								<option value="Pará">Pará</option> 
								<option value="Paraíba">Paraíba</option> 
								<option value="Paraná">Paraná</option> 
								<option value="Pernambuco">Pernambuco</option> 
								<option value="Piauí">Piauí</option> 
								<option value="Rio de Janeiro">Rio de Janeiro</option> 
								<option value="Rio Grande do Norte">Rio Grande do Norte</option> 
								<option value="Rondônia">Rondônia</option> 
								<option value="Rio Grande do Sul">Rio Grande do Sul</option> 
								<option value="Roraima">Roraima</option> 
								<option value="Santa Catarina">Santa Catarina</option> 
								<option value="Sergipe">Sergipe</option> 
								<option value="São Paulo">São Paulo</option> 
								<option value="Tocantins">Tocantins</option> 
							</select>
						</td>
					</tr>
					
					<tr>					
						<td style='text-align: right;'>Escala 2</td>
							<td>:</td>
						<td>
							<select id="escala2" name="escala2">
								<option value="">-------------</option> 
								<option value="Acre">Acre</option> 
								<option value="Alagoas">Alagoas</option> 
								<option value="Amazonas">Amazonas</option> 
								<option value="Amapá">Amapá</option> 
								<option value="Bahia">Bahia</option> 
								<option value="Ceará">Ceará</option> 
								<option value="Distrito Federal">Distrito Federal</option> 
								<option value="Espírito Santo">Espírito Santo</option> 
								<option value="Goiás">Goiás</option> 
								<option value="Maranhão">Maranhão</option> 
								<option value="Mato Grosso">Mato Grosso</option>  
								<option value="Mato Grosso do Sul">Mato Grosso do Sul</option> 
								<option value="Minas Gerais">Minas Gerais</option> 
								<option value="Pará">Pará</option> 
								<option value="Paraíba">Paraíba</option> 
								<option value="Paraná">Paraná</option> 
								<option value="Pernambuco">Pernambuco</option> 
								<option value="Piauí">Piauí</option> 
								<option value="Rio de Janeiro">Rio de Janeiro</option> 
								<option value="Rio Grande do Norte">Rio Grande do Norte</option> 
								<option value="Rondônia">Rondônia</option> 
								<option value="Rio Grande do Sul">Rio Grande do Sul</option> 
								<option value="Roraima">Roraima</option> 
								<option value="Santa Catarina">Santa Catarina</option> 
								<option value="Sergipe">Sergipe</option> 
								<option value="São Paulo">São Paulo</option> 
								<option value="Tocantins">Tocantins</option> 
							</select>
						</td>
					</tr>

					<input type="hidden" name='operacao' value="cadastrar" >
					<input type="hidden" name='subOperacao' value="cadastra" >
				</table>
					<input type='submit' value='cadastrar' style="margin-left: 150px; margin-top: 10px;">
		</fieldset>
		</form>
	</div>
	
	<%
		String mensagem = (String) request.getAttribute("mensagem");
		
		mensagem = (mensagem != null ? mensagem : ""); 
		if(mensagem.equals("sucesso")){
			out.print(	"<div style='background-color: #93DB70; margin-left:auto; margin-right: auto;margin-top: 50px;width: 350px; height: 30px; text-align: center;  border-radius: 10px;'>"
						+"<p style='font-weight: bold; color: black; margin-top: -20px; padding-top: 5px;'>"
						+"Cadastro de Voo realizado com Sucesso"
						+"</p>"
						+"</div>");
		}
	
	%>

</body>
</html>