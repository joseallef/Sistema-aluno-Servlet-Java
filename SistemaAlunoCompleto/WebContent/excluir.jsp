<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Excluir Alunos</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
	</head>
	<body>
		<h1><img src="img/imgSlyde/logo.png">Excluir Aluno</h1>
		<form action="ServletAlunos?cmd=exc" method="post">
		
			Rgm:<input type="text" name="txtCa" size="10" maxlenght="10" />

			<a href="index.jsp" class="bot">Voltar</a>
			<input type="submit" class="bot" value="Enviar Dados"/>
		</form>
	</body>
</html>