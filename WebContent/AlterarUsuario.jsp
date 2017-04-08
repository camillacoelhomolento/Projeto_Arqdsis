<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import=" br.usjt.arqdsis.ProjetoArqdsis.model.Usuario"%><!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Alterar Usuário</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
<%
		Usuario usuario = (Usuario) request.getAttribute("alterarUsuario");
	%>
    <!-- Barra superior com os menus de navegação -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="AlterarUsuario.jsp">Alterar Usuário</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="AlterarUsuario.jsp">Alterar Usuário</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Container Principal -->
    <div id="main" class="container">
        <h3 class="page-header">Aterar Usuário </h3>
        <!-- Formulario para inclusao de clientes -->
        <form action="AlterarUsuario.do" method="post">
            <!-- area de campos do form -->
            <div class="row">
                <div class="form-group col-md-1">
                    <label for="nome">ID</label>
                    <input type="number" class="form-control" name="id" id="id"  required maxlength="100"  value= "<%=usuario.getId()%>">
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12">
                    <label for="nome">Nome</label>
                    <input type="text" class="form-control" name="nome" id="nome" required maxlength="100" placeholder="Nome completo" value= "<%=usuario.getNome()%>">
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12">
                    <label for="nome">CPF</label>
                    <input type="text" class="form-control" name="cpf" id="cpf" required maxlength="11"  value= "<%=usuario.getCpf()%>">
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12">
                    <label for="nome">Usuário</label>
                    <input type="text" class="form-control" name="usuario" id="usuario" required maxlength="100" value="<%=usuario.getUsuario()%>">
                </div>
            </div>
             <div class="row">
                <div class="form-group col-md-12">
                    <label for="nome">Senha</label>
                    <input type="text" class="form-control" name="senha" id="senha" required maxlength="40" value="<%=usuario.getSenha()%>">
                </div>                
            </div>
            <div class= "row"> 
	            <div class="form-group col-md-6">
	                <label for="nome">Horário de Trabalho</label>
	 				 <select class="form-control" name= "horarioTrabalho" id="horarioTrabalho" required>
	 				 	  <option><%=usuario.getHorarioTrabalho()%></option>
	 				 	  <option value= "das 08:00 às 17:00">das 08:00 às 17:00</option>
	  					  <option value= "das 10:00 às 20:00">das 10:00 às 20:00</option>
	  				</select>
	  			</div>
	            <div class="form-group col-md-6">
	                <label for="nome">Perfil</label>
	 				 <select class="form-control" name= "perfil" id="perfil" required>
	 				 	  <option value=0> </option>
	 				 	  <option value=1 <%
	 				 	  
	 				 	  if(usuario.getTipoUsuario()==1){
	 				 		  out.print(" selected");
	 				 	  }
	 				 	  
	 				 	  %>    >Funcionario</option>
	  					  <option value=2<%
	 				 	  
	 				 	  if(usuario.getTipoUsuario()==2){
	 				 		  out.print(" selected");
	 				 	  }
	 				 	  
	 				 	  %> >Sindico</option>
	   					  <option value=3<%
	 				 	  
	 				 	  if(usuario.getTipoUsuario()==3){
	 				 		  out.print(" selected");
	 				 	  }
	 				 	  
	 				 	  %> >Atendente</option>
	  				</select>
	  			</div>
	  		</div>
             <div class="row">
                <div class="form-group col-md-12">
                    <label for="email">E-Mail</label>
                    <input type="email" class="form-control" name="email" id="email" required maxlength="60" value="<%=usuario.getEmail()%>">
                </div>
            </div>
            <hr />
            <div id="actions" class="row">
                <div class="col-md-12">
                    <button type="submit" class="btn btn-primary" name="acao" value="Criar">Salvar</button>
                    <a href="ConsultarUsuario.jsp" class="btn btn-default">Cancelar</a>
                </div>
            </div>
        </form>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>

</html>