<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.ResourceBundle"
    import="model.Usuario"%>
    <% ResourceBundle bundle = (ResourceBundle)session.getAttribute("linguagem");%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><%=bundle.getString("tela.home.vendaDePassagens")%></title>
</head>
<body>
	<%
	Usuario user = (Usuario)session.getAttribute("usuario");
	%>
	<div style="margin: auto; width: 940px; min-height: 500px;display: table;">
		<jsp:include page="header.jsp"></jsp:include>
		<fieldset style="border: 1px;border-color: gray;border-style: solid;width: 500px;min-height:300px;margin: auto;margin-top: 100px;">
			<legend style="color:red;"><%=bundle.getString("tela.home.bemVindo")%></legend>
			<div style="text-align: center;margin-top: 70px;">
					<img alt="< nome usuario / vem do BD >" src="images/padrao.jpg" style="max-width: 320px;max-height: 400px;"/>
					</br>
					</br>
					<div style="width: 320px;text-align: left;margin: auto;">
						<%out.print(bundle.getString("tela.inicio.labelnome"));%>: <%= user.getNome()%> </br>
						<%out.print(bundle.getString("tela.inicio.labelperfil"));%>: <% if(user.getNivelAcesso() == 1){ 
							out.print(bundle.getString("tela.home.supervisor"));}else{out.print(bundle.getString("tela.home.atendente"));}%> </br>
						<%out.print(bundle.getString("tela.inicio.labelUsuario"));%>: <%=user.getLogin() %> </br>
						</br>
					</div>
			</div>
		</fieldset>
	</div>

</body>
</html>
