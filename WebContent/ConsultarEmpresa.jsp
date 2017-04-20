
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import=" br.usjt.arqdsis.ProjetoArqdsis.model.Empresa"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Pesquisa - Empresa</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>

<body>
	<%
		ArrayList<Empresa> empresas = (ArrayList<Empresa>) request.getAttribute("consultarEmpresa");
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
				<a class="navbar-brand" href="ConsultarEmpresa.html">Cadastro</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="ConsultarEmpresa.html">Empresa</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Container Principal -->
	<div id="main" class="container">
		<h3 class="page-header">Consultar Empresa</h3>
		<!-- Formulario para inclusao de clientes -->
		<form action="ConsultarEmpresa.do" method="post">
			<!-- area de campos do form -->
			<div class="row">
				<div class="form-group col-md-6">
					<label for="nome">Rasão Social</label> <input type="text"
						class="form-control" name="rasaoSocial" id="rasaoSocial" maxlength="100"
						placeholder="Rasão Social">
				</div>
				<div class="form-group col-md-6">
					<label for="nome">CNPJ</label> <input type="text"
						class="form-control" name="cnpj" id="cnpj" maxlength="11"
						placeholder="CNPJ">
				</div>
			</div>
			<div class="row">
				<div class="tabe-reaponsive">
					<table class="table table-hover" >
						<thead>
							<tr>
								<th>#</th>
								<th>Razão Social</th>
								<th>CNPJ</th>
								<th>Conjuntos</th>
								<th>Temperatura Padrão</th>
								<th>Horario Ar</th>
								<th>Horario Funcionamento</th>
								
							</tr>
						</thead>
						<tbody>
						<%	for(int i = 0; i < empresas.size(); i++) { 
								out.println("<tr onclick =\"location.href='AlterarEmpresa.do?id=" + empresas.get(i).getId() +"'\" >");
								out.println("<td>" + empresas.get(i).getId() + "</td>");
								out.println("<td>" + empresas.get(i).getRazaoSocial() + "</td>");
								out.println("<td>" + empresas.get(i).getCNPJ() + "</td>");
								out.println("<td>" + empresas.get(i).getConjuntos() + "</td>");
								out.println("<td>" + empresas.get(i).getTemperaturaPadrao() + "</td>");
								out.println("<td>" + empresas.get(i).getHorarioAr() + "</td>");
								out.println("<td>" + empresas.get(i).getHorarioFuncionamento() + "</td>");
							
								out.println("</tr>");
								
								
						} %>
							</div>
							</div>

							<div id="actions" class="row">
								<div class="col-md-12">
									<button type="submit" class="btn btn-primary " name="acao"
										value="Consultar">Consultar</button>
									<a href="ConsultarEmpresa.do" class="btn btn-default">Cancelar</a>
								</div>
							</div>
		</form>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>

</html>