<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.util.ResourceBundle"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% ResourceBundle bundle = (ResourceBundle)session.getAttribute("linguagem");%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><%=bundle.getString("tela.titulo.pagina")%></title>
</head>
<body>

<div style="margin: auto; width: 940px; min-height: 500px;display: table; ">
	<div style="text-align: center;margin-top: 50px">
		<h1><%=bundle.getString("tela.sispassagem")%></h1>
	</div>
	<fieldset style="border: 1px;border-color: gray;border-style: solid;width: 500px;height:300px;margin: auto;margin-top: 50px;">
		<legend style="color:red;"> <%=bundle.getString("tela.login.titulo")%> </legend>
		<form action="home.jsp" method="post">
			<div style="text-align: center;margin-top: 70px;">
				<label >
					<%=bundle.getString("tela.login.labelUsuario")%>: <input type="text" name="usuario" /><br>
					<%=bundle.getString("tela.login.labelSenha")%>: <input type="password" name="senha" /><br>
					<br>
					<br>
					<input type="submit" id="entrar" name="Entrar" value="<%=bundle.getString("tela.btn.entrar")%>" style="" /> 
				</label>
			</div>
		</form>
	</fieldset>
</div>

</body>
</html>