<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Incluir Aluno</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script type="text/javascript" src="jquery/form.js"></script>
</head>
	<body>
		<h1><img src="img/imgSlyde/logo.png">Incluir Dados do Aluno</h1>
		<form action="ServletAlunos" method="get">
				<input type = "hidden" name ="cmd" value="incluir"> 

				<input type="text" name="txtCa" size="60" maxlength="60" class="imput" title="Rgm"/>

				<input type="text" name="txtNome" size="60" maxlength="60" class="imput"  title="Nome Completo"/>

				<input type="text" size="60" name="txtEmail" maxlength="60" class="imput"  title="E-mail"/>

				<input type="text" name="txtData" size="60" id="dtaNasc" maxlength="60" class="imput"  title="Data de nascimento"/>
				
				<input type="text" name="txtIdade" size="60" maxlength="60" class="imput"  title="Idade"/>

				<input type="text" name="txtEndereco" size="60" maxlength="60" class="imput" title="Endereço: Ex: Rua"/>
				
				<input type="file" name="foto">

				<a href="index.jsp" class="bot">Voltar</a>

				<input type="submit" class="bot imput" title="Gravar" value="Gravar"/>
		</form>
	</body>
</html>