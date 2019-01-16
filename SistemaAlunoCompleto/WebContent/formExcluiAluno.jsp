<%@page contentType="text/html"%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Excluir Alunos</title>
		<link rel="stylesheet" type="text/css" href="css/style.css" />
	</head>
	<body>
		<h1><img src="img/imgSlyde/logo.png">Exclusão de Cadastro</h1>
		<jsp:useBean id="aluno" scope="session"
			class="br.app.beans.Aluno" />
		<%
			SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
		%>
		<form action="ServletAlunos?cmd=excluir" method="post">
	
			Rgm:<input type="text" maxlength="60" size="60" name="txtCa" value="<%=aluno.getCaAluno()%>" readonly="readonly" />
			
			Nome:<input type="text" maxlength="60" size="60" name="txtNome"	value="<%=aluno.getNomeAluno()%>" readonly="readonly" />
			
			E-mail<input type="text" maxlength="60" size="60" name="txtEmail" value="<%=aluno.getEmailAluno()%>" readonly="readonly" />
	
			Nascimento (dd/mm/aaaa)
			<input type="text" maxlength="60" size="60" name="txtData" value="<%=data.format(aluno.getDtaNasc())%>" readonly="readonly" />
			
			Idade: <input type="text" maxlength="60" size="60" name="txtIdade" value="<%=aluno.getIdadeAluno()%>" readonly="readonly" />
			
			Endereço: <input type="text" maxlength="60" size="60" name="txtEndereco" value="<%=aluno.getEndAluno()%>" readonly="readonly" />
			
			Foto: <input type="text" name="arq" value="<%=aluno.getFoto()%>" readonly="readonly" />
	
			<input type="submit" name="btnExcluir" class="bot" value="Confirma Exclusão" />
	
		</form>
	</body>	
</html>