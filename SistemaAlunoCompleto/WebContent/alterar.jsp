<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Atualizar Alunos</title>
		<link rel="stylesheet" type="text/css" href="css/style.css" />
	</head>
	<body>
		<h1><img src="img/imgSlyde/logo.png">Atualizar Alunos</h1>
		<form action="ServletAlunos?cmd=atu" method="post">
					<tbody>
						<td>CA do Aluno:</td>
						<input type="text" name="txtCa" size="10" maxlenght="10" />

					</tbody>
					<input type="submit" class="bot" value="Enviar">
			</form>
	</body>
</html>