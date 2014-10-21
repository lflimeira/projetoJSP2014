<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<% ResourceBundle bundle = (ResourceBundle)session.getAttribute("linguagem");%>	

<link rel="stylesheet" href="css/style.css" type="text/css"
	media="screen, projection" />
<!--[if lte IE 7]>
    <link rel="stylesheet" type="text/css" href="css/ie.css" media="screen" />
<![endif]-->
<script type="text/javascript" src="js/jquery-1.3.1.min.js"></script>
<script type="text/javascript" src="js/jquery.dropdownPlain.js"></script>

<div class="menu_sistema" style="margin-left: 176px;">
	<ul class="dropdown">
		<li><a href="home.jsp"><%=bundle.getString("tela.header.inicio")%></a></li>
		<li><a href="#"><%=bundle.getString("tela.header.voo")%></a>
			<ul class="sub_menu">
				<li><a href="ControleVoo?operacao=cadastrar&subOperacao=form"><%=bundle.getString("tela.header.cadastrar")%></a></li>
				<li><a href="ControleVoo?operacao=consultar&subOperacao=consulta"><%=bundle.getString("tela.header.alterarExcluir")%></a></li>
				<li><a href='ControleVoo?operacao=consultar&subOperacao=status'><%=bundle.getString("tela.header.statusDeVoo")%></a></li>
			</ul></li>
		<li><a href="#"><%=bundle.getString("tela.header.aeronave")%></a>
			<ul class="sub_menu">
				<li><a href="cad_aeronave.jsp"><%=bundle.getString("tela.header.cadastrar")%></a></li>
				<li><a href="ControleAeronave?operacao=consultar"><%=bundle.getString("tela.header.alterarExcluir")%></a></li>
			</ul></li>
		<li><a href="#"><%=bundle.getString("tela.header.passagem")%></a>
			<ul class="sub_menu">
				<li><a href="passagem_qtd.jsp">Comprar</a></li>
				<li><a href="#">Cancelar</a></li>
				<li><a href="#">Transferir</a></li>
			</ul></li>
		<li><a href="checkin.jsp">Check-in</a></li>
		<li><a href="#">Trocar de usu&aacute;rio</a></li>
		<li><a href="#">Sair do sistema</a></li>
	</ul>
</div>
