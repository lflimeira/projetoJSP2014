<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Venda de Passagens</title>
<script language="JavaScript" src="js/calendario.js"></script>
</head>
<body onLoad="initCalendar();">

	<div style="margin: auto; width: 940px; min-height: 500px;display: table;">
		<jsp:include page="header.jsp"></jsp:include>
		<fieldset style="border: 1px;border-color: gray;border-style: solid;width: 940px;min-height:300px;margin: auto;margin-top: 100px;">
			<legend style="color:red;"> Buscar V&ocirc;o </legend>
			<form action="?" method="post" >
				<div style="text-align: center;margin-top: 30px;">
					<label>
						Código do Vôo: <input type="text" name="codigo_voo"  /> 
					</label>
					<label>	
						Origem: 
						<select name="origem">
							<option>------------</option> 
						</select>
					</label>
					<label>	 
						Destino: 
						<select name="destino">
							<option>------------</option>
						</select>
					</label>
					<br />	
					<label> 
						Data: <input  onclick="showCalendar(this, this);" name="data">
					</label>
					<label>	
						Hora: <input type="text" name="hora"  />
					</label>
					<label>	 
						Situação:
						<select name="situacao">
							<option>------------</option> 
						</select>
					</label>	
					<br />
					<input type="submit" name="btn" value="Buscar"/>
				</div>
			</form>
			
			<br/>
			<br/>
			<form action="form_alt_exc_voo.jsp" name="formulario" method="get">
			<input type="hidden" name="id" />
			</form>
			<table style="width: 940px;" cellspacing="0px">
				<tr>
					<td style="background-color:gray; border: 1px;border-right:0px; border-style: solid;border-color: silver ;text-align: center;">C&oacute;digo do V&ocirc;o</td>
					<td style="background-color:gray;border: 1px;border-right:0px;border-style: solid;border-color: silver;text-align: center;">Origem</td>
					<td style="background-color:gray;border: 1px;border-right:0px;border-style: solid;border-color: silver;text-align: center;">Destino</td>
					<td style="background-color:gray;border: 1px;border-right:0px;border-style: solid;border-color: silver;text-align: center;">Data</td>
					<td style="background-color:gray;border: 1px;border-right:0px;border-style: solid;border-color: silver;text-align: center;">Hora</td>
					<td style="background-color:gray;border: 1px;border-style: solid;border-color: silver;text-align: center;">Situa&ccedil;&atilde;o</td>
				</tr>
				
				<tr onclick="document.formulario.id.value=1;document.formulario.submit();" style="cursor: pointer;">
					<td style="background-color: white;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: white;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: white;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: white;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: white;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: white;border: 1px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
				</tr>
				<tr onclick="document.formulario.id.value=1;document.formulario.submit();" style="cursor: pointer;">
					<td style="background-color: #edf4f6;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: #edf4f6;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: #edf4f6;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: #edf4f6;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: #edf4f6;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: #edf4f6;border: 1px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
				</tr>
				<tr onclick="document.formulario.id.value=1;document.formulario.submit();" style="cursor: pointer;">
					<td style="background-color: white;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: white;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: white;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: white;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: white;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: white;border: 1px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
				</tr>
				<tr onclick="document.formulario.id.value=1;document.formulario.submit();" style="cursor: pointer;">
					<td style="background-color: #edf4f6;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: #edf4f6;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: #edf4f6;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: #edf4f6;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: #edf4f6;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: #edf4f6;border: 1px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
				</tr>
				<tr onclick="document.formulario.id.value=1;document.formulario.submit();" style="cursor: pointer;">
					<td style="background-color: white;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: white;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: white;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: white;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: white;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: white;border: 1px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
				</tr>
				<tr onclick="document.formulario.id.value=1;document.formulario.submit();" style="cursor: pointer;">
					<td style="background-color: #edf4f6;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: #edf4f6;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: #edf4f6;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: #edf4f6;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: #edf4f6;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: #edf4f6;border: 1px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
				</tr>
				<tr onclick="document.formulario.id.value=1;document.formulario.submit();" style="cursor: pointer;">
					<td style="background-color: white;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: white;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: white;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: white;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: white;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: white;border: 1px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
				</tr>
				<tr onclick="document.formulario.id.value=1;document.formulario.submit();" style="cursor: pointer;">
					<td style="background-color: #edf4f6;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: #edf4f6;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: #edf4f6;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: #edf4f6;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: #edf4f6;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: #edf4f6;border: 1px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
				</tr>
				<tr onclick="document.formulario.id.value=1;document.formulario.submit();" style="cursor: pointer;">
					<td style="background-color: white;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: white;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: white;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: white;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: white;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: white;border: 1px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
				</tr>
				<tr onclick="document.formulario.id.value=1;document.formulario.submit();" style="cursor: pointer;">
					<td style="background-color: #edf4f6;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: #edf4f6;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: #edf4f6;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: #edf4f6;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: #edf4f6;border: 1px;border-right:0px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
					<td style="background-color: #edf4f6;border: 1px;border-top:0px;border-style: solid;border-color: silver;">&nbsp;</td>
				</tr>
			
			</table>
		</fieldset>
	</div>

</body>
</html>