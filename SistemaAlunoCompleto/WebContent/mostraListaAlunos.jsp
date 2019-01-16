<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="br.app.beans.Aluno"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="ISO-8859-1"%>
<html>
	<head>
		<title>Lista Alunos</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
	</head>
	<body>
		<h2><img src="img/imgSlyde/logo.png">Lista de cadastro</h2>
		<table>
			<tr>
				<th>
					<b>RGM:</b>
				</th>
			
				<th>
					<b>Nome:</b>
				</th>
				<th>
					<b>E-mail:</b>
				</th>
				<th>
					<b>Data Nascimento</b>
				</th>
				<th>
					<b>Idade</b>
				</th>
				<th>
					<b>Endereço</b>
				</th>
				<th>
					<b>Foto</b>
				</th>
			</tr>
			<%
				SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
				List<Aluno> lista = new ArrayList<Aluno>();
				lista = (ArrayList) request.getAttribute("alunosList");
				for (Aluno a : lista) {
			%>
			<tr>
				<td>
					<%=a.getCaAluno()%>
				</td>				
				<td>
					<%=a.getNomeAluno()%>
				</td>				
				<td>
					<%=a.getEmailAluno()%>
				</td>				
				<td>
					<%=data.format(a.getDtaNasc())%>
				</td>				
				<td>
					<%=a.getIdadeAluno()%>
				</td>				
				<td>
					<%=a.getEndAluno()%>
				</td>
				<td>
					<img src="img/<%=a.getFoto()%>"/>
				</td>
			</tr>
			<%
				}
			%>
		</table>
		<a href ="index.jsp" class="bot forr">Página Principal</a> 
	</body>
</html>