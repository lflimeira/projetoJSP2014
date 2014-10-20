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
						<td style='text-align: right;'>C�digo do Voo</td>
						<td>:</td>
						<td><input type='text' size='5' maxlength="5" name='codigo' id='codigo' /></td>
					</tr>
					<tr>					
						<td style='text-align: right;'>Origem</td>
							<td>:</td>
						<td>
							<select id="origem" name="origem">
								<option>---------</option>
							  	<option>S�o Paulo</option>
							  	<option>Rio de Janeiro</option>
							  	<option>Rio Grande Do Sul</option>
							  	<option>Salvador</option>
							</select>
						</td>
					</tr>
					
					<tr>					
						<td style='text-align: right;'>Destino</td>
							<td>:</td>
						<td>
							<select id="destino" name="destino">
								<option>---------</option>
								  <option>S�o Paulo</option>
								  <option>Rio de Janeiro</option>
								  <option>Rio Grande Do Sul</option>
								  <option>Salvador</option>
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

<!-- 					<tr>					 -->
<!-- 						<td style='text-align: right;'>Escala 1</td> -->
<!-- 							<td>:</td> -->
<!-- 						<td> -->
<!-- 							<select id="escala1" name="escala1"> -->
<!-- 							  <option>S�o Paulo</option> -->
<!-- 							  <option>Rio de Janeiro</option> -->
<!-- 							  <option>Rio Grande Do Sul</option> -->
<!-- 							  <option>Salvador</option> -->
<!-- 							</select> -->
<!-- 						</td> -->
<!-- 					</tr> -->
					
<!-- 					<tr>					 -->
<!-- 						<td style='text-align: right;'>Escala 2</td> -->
<!-- 							<td>:</td> -->
<!-- 						<td> -->
<!-- 							<select id="escala2" name="escala2"> -->
<!-- 							  <option>S�o Paulo</option> -->
<!-- 							  <option>Rio de Janeiro</option> -->
<!-- 							  <option>Rio Grande Do Sul</option> -->
<!-- 							  <option>Salvador</option> -->
<!-- 							</select> -->
<!-- 						</td> -->
<!-- 					</tr> -->
					<tr>
						<td style='text-align: right;'>Situa��o</td>
						<td>:</td>
						<td>
							<select id="situacao" name="situacao">
									<option></option>
									  <option>S�o Paulo</option>
									  <option>Rio de Janeiro</option>
									  <option>Rio Grande Do Sul</option>
									  <option>Salvador</option>
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