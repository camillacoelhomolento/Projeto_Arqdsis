<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="br.usjt.arqdsis.ProjetoArqdsis.model.Empresa"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Visualizar Empresa</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<%
		Empresa empresa = (Empresa) request.getAttribute("cadastrarEmpresa");
	%>
	<!-- Barra superior com os menus de navegação -->

	<!-- Container Principal -->
	<div id="main" class="container">
		<h3 class="page-header">
			Visualizar Empresa #<%=empresa.getId()%></h3>
		<div class="row">
			<div class="col-md-12">
				<p>
					<strong>CNPJ</strong>
				</p>
				<p>
					<%=empresa.getCNPJ()%>
				</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<p>
					<strong>Razão Social</strong>
				</p>
				<p>
					<%=empresa.getRazaoSocial()%>
				</p>
			</div>
			<div class="col-md-6">
				<p>
					<strong>Horario Funcionamneto</strong>
				</p>
				<p>
					<%=empresa.getHorarioFuncionamento()%>
				</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<p>
					<strong>Temperatura Padrão</strong>
				</p>
				<p>
					<%=empresa.getTemperaturaPadrao()%>
				</p>
			</div>
			<div class="col-md-6">
				<p>
					<strong>Horario Ar</strong>
				</p>
				<p>
					<%=empresa.getHorarioAr()%>
				</p>
			</div>
			<div class="col-md-12">
				<p>
					<strong>Conjunto</strong>
				</p>
				<p>
					<%=empresa.getConjuntos()%>
				</p>
			</div>
		<hr />
		<div id="actions" class="row">
			<div class="col-md-12">
				<a href="CadastrarEmpresa.html" class="btn btn-default">Voltar</a>
			</div>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>
</html>