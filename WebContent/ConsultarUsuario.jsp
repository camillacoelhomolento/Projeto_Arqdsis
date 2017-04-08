
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import=" br.usjt.arqdsis.ProjetoArqdsis.model.Usuario"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Pesquisa - Usuario</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>

<body>
	<%
		ArrayList<Usuario> usuarios = (ArrayList<Usuario>) request.getAttribute("consultarUsuario");
	%>
	<!-- Barra superior com os menus de navegaÃ§Ã£o -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="ConsultarUsuario.html">Cadastro</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="ConsultarUsuario.html">UsuÃ¡rio</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Container Principal -->
	<div id="main" class="container">
		<h3 class="page-header">Consultar UsuÃ¡rio</h3>
		<!-- Formulario para inclusao de clientes -->
		<form action="ConsultarUsuario.do" method="post">
			<!-- area de campos do form -->
			<div class="row">
				<div class="form-group col-md-6">
					<label for="nome">Nome</label> <input type="text"
						class="form-control" name="nome" id="nome" maxlength="100"
						placeholder="Nome completo">
				</div>
				<div class="form-group col-md-6">
					<label for="nome">CPF</label> <input type="text"
						class="form-control" name="cpf" id="cpf" maxlength="11"
						placeholder="CPF">
				</div>
			</div>
			<div class="row">
				<div class="tabe-reaponsive">
					<table class="table table-hover" >
						<thead>
							<tr>
								<th>#</th>
								<th>Nome</th>
								<th>CPF</th>
								<th>E-mail</th>
								<th>Perfil</th>
								<th>Horario de Trabalho</th>
							</tr>
						</thead>
						<tbody>
						<%	for(int i = 0; i < usuarios.size(); i++) { 
								out.println("<tr onclick =\"location.href='AlterarUsuario.do?id=" + usuarios.get(i).getId() +"'\" >");
								out.println("<td>" + usuarios.get(i).getId() + "</td>");
								out.println("<td>" + usuarios.get(i).getNome() + "</td>");
								out.println("<td>" + usuarios.get(i).getCpf() + "</td>");
								out.println("<td>" + usuarios.get(i).getEmail() + "</td>");
								out.println("<td>" + usuarios.get(i).tratarUsuario() + "</td>");
								out.println("<td>" + usuarios.get(i).getHorarioTrabalho() + "</td>");
								
								out.println("</tr>");
								
								
						} %>
							</div>
							</div>

							<div id="actions" class="row">
								<div class="col-md-12">
									<button type="submit" class="btn btn-primary " name="acao"
										value="Consultar">Consultar</button>
									<a href="ConsultarUsuario.do" class="btn btn-default">Cancelar</a>
								</div>
							</div>
		</form>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>

</html>