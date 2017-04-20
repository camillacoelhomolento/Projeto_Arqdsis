F<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import=" br.usjt.arqdsis.ProjetoArqdsis.model.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Alterar Empresa</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>

<body>
	<%
		Empresa empresa = (Empresa) request.getAttribute("alterarEmpresa");
	%>
	<!-- Barra superior com os menus de navegação -->
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
				<a class="navbar-brand" href="AlterarEmpresa.jsp">Alterar
					Empresa</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="AlterarEmpresa.jsp">Alterar Empresa</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Container Principal -->
	<div id="main" class="container">
		<h3 class="page-header">Aterar Empresa</h3>
		<!-- Formulario para inclusao de clientes -->
		<form action="AlterarEmpresa.do" method="post">
			<!-- area de campos do form -->
			<div class="row">
				<div class="form-group col-md-1">
					<label for="nome">ID</label> <input type="number"
						class="form-control" name="id" id="id" required maxlength="100"
						value="<%=empresa.getId()%>">
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-12">
					<label for="nome">CNPJ</label> <input type="text"
						class="form-control" name="cnpj" id="cnpj" required
						maxlength="100" placeholder="CNPJ" value="<%=empresa.getCNPJ()%>">
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-12">
					<label for="nome">Razão Social</label> <input type="text"
						class="form-control" name="razaoSocial" id="razaoSocial" required
						maxlength="11" placeholder="Razao Social"
						value="<%=empresa.getRazaoSocial()%>">
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-6">
					<label for="nome">Horário Funcionamneto</label> <select
						class="form-control" name="horarioFuncionamneto"
						id="horarioFuncionamneto" required>
						<option>Selecione uma Opção</option>
						<option value="das 08:00 às 17:00"
						
							<%if (empresa.getHorarioAr().equals("das 08:00 às 17:00")) {
								out.print(" selected");
							}%>>das	08:00 às 17:00</option>
							
						<option value="das 10:00 às 20:00"
								<%if (empresa.getHorarioAr().equals("das 10:00 às 20:00")) {
									out.print(" selected");
								}%>>das 10:00 às 20:00</option>
					</select>
				</div>
				<div class="form-group col-md-6">
					<label for="nome">Temperatura Padrão</label> <select
						class="form-control" name="temperaturaPadrao"
						id="temperaturaPadrao" required>
						<option>Selecione uma Opção</option>
						<option value="20"
						<%if (empresa.getTemperaturaPadrao() == 20) {
								out.print(" selected");
							}%>>20</option>
						<option value="21"
						<%if (empresa.getTemperaturaPadrao() == 21) {
								out.print(" selected");
							}%>>21</option>
						<option value="22"
						<%if (empresa.getTemperaturaPadrao() == 22) {
								out.print(" selected");
							}%>>22</option>
						<option value="23" 
						<%if (empresa.getTemperaturaPadrao() == 23) {
								out.print(" selected");
							}%>>23</option>
						<option></option>
					</select>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-6">
					<label for="nome">Horário Ar Condicionado</label> <select
						class="form-control" name="horarioAr" id="horarioAr" required>
						<option>Selecione uma Opção</option>
						<option value="das 08:00 às 17:00"
						
							<%if (empresa.getHorarioAr().equals("das 08:00 às 17:00")) {
								out.print(" selected");
							}%>>das	08:00 às 17:00</option>
							
						<option value="das 10:00 às 20:00"
								<%if (empresa.getHorarioAr().equals("das 10:00 às 20:00")) {
									out.print(" selected");
								}%>>das 10:00 às 20:00</option>
					</select>
				</div>
				<div class="form-group col-md-6">
					<label for="nome">Conjunto</label> <select class="form-control"
						name="conjunto" id="conjunto" required>
						<option>Selecione uma Opção</option>
						<option value="1"
							<%if (empresa.getConjuntos() == 1) {
									out.print(" selected");
							}%>>1</option>
						<option value="2"
							<%if (empresa.getConjuntos() == 2) {
									out.print(" selected");
							}%>>2</option>
						<option value="3"
							<%if (empresa.getConjuntos() == 2) {
									out.print(" selected");
							}%>>3</option>
						<option value="4"
							<%if (empresa.getConjuntos() == 4) {
									out.print(" selected");
							}%>>4</option>
					</select>
				</div>
			</div>
	</div>
	<hr />
	<div id="actions" class="row">
		<div class="col-md-12">
			<button type="submit" class="btn btn-primary" name="Criar"
				value="Criar">Salvar</button>
			<button type="submit" class="btn btn-primary" name="Excluir"
				value="Excluir">Excluir</button>
			<a href="ConsultarEmpresa.do" class="btn btn-default">Cancelar</a>
		</div>
	</div>
	</form>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>

</html>