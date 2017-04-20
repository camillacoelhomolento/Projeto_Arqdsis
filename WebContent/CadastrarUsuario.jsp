<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Visualizar Usu</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>

<body>
	<%
		//Usuario usuario = (Usuario) request.getAttribute("cadastrarUsuario");
	%>
	<!-- Barra superior com os menus de navegação -->

	<!-- Container Principal -->
	<div id="main" class="container">
		<h3 class="page-header">
			Visualizar Usuario #${cadastrarUsuario.getId()}</h3>
		<div class="row">
			<div class="col-md-12">
				<p>
					<strong>Nome</strong>
				</p>
				<p>
					${cadastrarUsuario.getNome()}
				</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<p>
					<strong>Usuario</strong>
				</p>
				<p>
					${cadastrarUsuario.getUsuario()}
				</p>
			</div>
			<div class="col-md-6">
				<p>
					<strong>E-Mail</strong>
				</p>
				<p>
					${cadastrarUsuario.getEmail()}
				</p>
			</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<p>
						<strong>Senha</strong>
					</p>
					<p>
						${cadastrarUsuario.getSenha()}
					</p>
				</div>
				<div class="col-md-6">
					<p>
						<strong>Horario de Trabalho</strong>
					</p>
					<p>
						${cadastrarUsuario.getHorarioTrabalho()}
					</p>
				</div>
				<div class="col-md-12">
					<p>
						<strong>CPF</strong>
					</p>
					<p>
						${cadastrarUsuario.getCpf()}
					</p>
				</div>
				<div class="col-md-12">
					<p>
						<strong>Perfil</strong>
					</p>
					<p>									
						${ cadastrarUsuario.tratarUsuario() }
					</p>
				</div>
			</div>
			<hr />
			<div id="actions" class="row">
				<div class="col-md-12">
					<a href="CadastrarUsuario.html" class="btn btn-default">Voltar</a>
				</div>
			</div>
		</div>
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
</body>

</html>