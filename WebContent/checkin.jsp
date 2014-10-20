<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Checkin</title>
</head>
<body>
	<div style="margin: auto; width: 940px; height: 350px; display: table;">
	<jsp:include page="header.jsp"></jsp:include>
		<form action="checkin" method="post">
			<fieldset style="border: 1px;border-radius: 10px;border-style: solid; width: 400px; min-height: 150px; margin: auto; margin-top: 100px;">
				<legend style="color: red;">Realizar Checkin</legend>
				<div style="margin-top: 50px;">
				
					<label>Numero da Passagem:</label>
					<input id="numero" name="numero" size="30" type="text"></input>
				
					<div>
						<input type="submit" id="checkin" name="checkin" value="Checkin" style="margin-left: 140px; margin-top:10px;"/>
					</div>			
				
				</div>			
			</fieldset>
		</form>
	</div>
</body>
</html>