<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="br.usjt.arqdsis.ProjetoArqdsis.model.Usuario"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Alteração de Usuario</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>

<body>
	<%
		Usuario usuario = (Usuario) request.getAttribute("confirmacaoAlteracaoUsuario");
	%>
	<!-- Barra superior com os menus de navegação -->

	<!-- Container Principal -->
	<div id="main" class="container">
		<h3 class="page-header">
			 Usuario Alterado com Sucesso #<%=usuario.getId()%></h3>
		<div class="row">
			<div class="col-md-12">
				<p>
					<strong>Nome</strong>
				</p>
				<p>
					<%=usuario.getNome()%>
				</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<p>
					<strong>Usuario</strong>
				</p>
				<p>
					<%=usuario.getUsuario()%>
				</p>
			</div>
			<div class="col-md-6">
				<p>
					<strong>E-Mail</strong>
				</p>
				<p>
					<%=usuario.getEmail()%>
				</p>
			</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<p>
						<strong>Senha</strong>
					</p>
					<p>
						<%=usuario.getSenha()%>
					</p>
				</div>
				<div class="col-md-6">
					<p>
						<strong>Horario de Trabalho</strong>
					</p>
					<p>
						<%=usuario.getHorarioTrabalho()%>
					</p>
				</div>
				<div class="col-md-12">
					<p>
						<strong>CPF</strong>
					</p>
					<p>
						<%=usuario.getCpf()%>
					</p>
				</div>
				<div class="col-md-12">
					<p>
						<strong>Perfil</strong>
					</p>
					<p>									
						<%= usuario.tratarUsuario() %>
					</p>
				</div>
			</div>
			<hr />
			<div id="actions" class="row">
				<div class="col-md-12">
					<a href="ConsultarUsuario.do" class="btn btn-default">Voltar</a>
				</div>
			</div>
		</div>
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
</body>

</html>