<%@page contentType="text/html"%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page import="java.text.SimpleDateFormat"%>
<html>
	<head>
		<title>Atualizar Alunos</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
	</head>
	<body>
		<h1><img src="img/imgSlyde/logo.png">Atualizar Alunos</h1>
		<jsp:useBean id="aluno" scope="session"
			class="br.app.beans.Aluno" />
		<%
			SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
		%>
		<form action="ServletAlunos?cmd=atualizar" method="post">
		
				Rgm:<input type="text" maxlength="60" size="60" name="txtCa" value="<%=aluno.getCaAluno()%>" readonly="readonly" />
				
				Nome:<input type="text" maxlength="60" size="60" name="txtNome"	value="<%=aluno.getNomeAluno()%>" />
				
				E-mail<input type="text" maxlength="60" size="60" name="txtEmail" value="<%=aluno.getEmailAluno()%>"  />
		
				Nascimento (dd/mm/aaaa)
				<input type="text" maxlength="60" size="60" name="txtData" value="<%=data.format(aluno.getDtaNasc())%>" />
				
				Idade: <input type="text" maxlength="60" size="60" name="txtIdade" value="<%=aluno.getIdadeAluno()%>" />
				
				Endereço: <input type="text" maxlength="60" size="60" name="txtEndereco" value="<%=aluno.getEndAluno()%>" />
				
				Foto: <input type="file" name="foto" value="<%=aluno.getFoto()%>" />
				
				<a href ="index.jsp" class="bot">volta</a> 
				
				<input type="submit" name="btnAlterar" class="bot" value="Confirma Atualização" />
	
		</form>
	</body>
</html>