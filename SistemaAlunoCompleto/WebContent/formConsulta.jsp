<%@page contentType="text/html"%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page import="java.text.SimpleDateFormat"%>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		<title>Consulta Alunos</title>
	</head>
	<body>
		<h1><img src="img/imgSlyde/logo.png">Consulta de Alunos</h1>
		<jsp:useBean id="aluno" scope="session"	class="br.app.beans.Aluno" />
		<%
			SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
		%>
		<form>
			Rgm:<input type="text" maxlength="60" size="60" name="txtCa" value="<%=aluno.getCaAluno()%>" readonly="readonly" />
			
			Nome:<input type="text" maxlength="60" size="60" name="txtNome"	value="<%=aluno.getNomeAluno()%>" readonly="readonly" />
			
			E-mail<input type="text" maxlength="60" size="60" name="txtEmail" value="<%=aluno.getEmailAluno()%>" readonly="readonly" />
	
			Nascimento (dd/mm/aaaa)
			<input type="text" maxlength="60" size="60" name="txtData" value="<%=data.format(aluno.getDtaNasc())%>" readonly="readonly" />
			
			Idade: <input type="text" maxlength="60" size="60" name="txtIdade" value="<%=aluno.getIdadeAluno()%>" readonly="readonly" />
			
			Endereço: <input type="text" maxlength="60" size="60" name="txtEndereco" value="<%=aluno.getEndAluno()%>" readonly="readonly" />
			
			Foto:<input type="text" name="foto" value="<%=aluno.getFoto()%>" readonly="readonly" />
		</form>
		<a href ="index.jsp" class="bot">Página Principal</a> 
	</body>
</html>