<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Venda de Passagens</title>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#linguagem").change(function () {
		if($("#linguagem").val() == "1"){
			$("#entrar").val("Entrar");
			$("#entrar").css("display", "inherit");
		}else if($("#linguagem").val() == "2"){
			$("#entrar").val("Sing in");
			$("#entrar").css("display", "inherit");
		}else{
			$("#entrar").css("display", "none");
			alert("Português: Escolha um idioma \nEnglish: Choose a language.");
		}
	});
});
</script>
</head>
<body >

<div style="margin: auto; width: 940px; min-height: 500px;display: table; ">
	<div style="text-align: center;margin-top: 50px">
		<h1>Sistema de Passagens A&eacute;reas</h1>
	</div>
	<fieldset style="border: 1px;border-color: gray;border-style: solid;width: 500px;height:300px;margin: auto;margin-top: 50px;">
		<legend style="color:red;">Idioma / Language</legend>
		<form action="idioma" method="post">
			<div style="text-align: center;margin-top: 70px;">
				<label >
					Português: Escolha um idioma.<br>
					English: Choose a language.<br>
					<select name="linguagem" id="linguagem">
						<option value="">---------</option>
						<option value="1">Português</option>
						<option value="2">English</option>
					</select>
					<br>
					<br>
					<input type="submit" id="entrar" name="Entrar" value="Entrar" style="" /> 
				</label>
			</div>
		</form>
	</fieldset>
</div>

</body>
</html>