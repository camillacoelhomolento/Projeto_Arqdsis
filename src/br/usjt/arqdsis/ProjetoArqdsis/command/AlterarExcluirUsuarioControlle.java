package br.usjt.arqdsis.ProjetoArqdsis.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.usjt.arqdsis.ProjetoArqdsis.model.Usuario;
import br.usjt.arqdsis.ProjetoArqdsis.service.UsuarioService;


/**
 * Servlet implementation class ManterClienteController
 */
@WebServlet("/AlterarUsuario.do")
public class AlterarExcluirUsuarioControlle extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String idtexto = request.getParameter("id");
        
        int id = Integer.parseInt(idtexto);
        //instanciar o javabean
        Usuario usuario = new Usuario();
        usuario.setId(id);
             
        //instanciar o service
        UsuarioService us = new UsuarioService();
       
        //enviar para o jsp
        request.setAttribute("alterarUsuario", us.carregar(usuario.getId()));
        
        RequestDispatcher view = request.getRequestDispatcher("AlterarUsuario.jsp");
        view.forward(request, response);
    }
    
    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	if(request.getParameter("Criar") != null){ // alterando Usuario
    	
    	String idd = request.getParameter("id");
    	String nome = request.getParameter("nome");
        String user = request.getParameter("usuario");
        String senha = request.getParameter("senha");
        String email = request.getParameter("email");
        String horarioTrabalho = request.getParameter("horarioTrabalho");
        String perfil = request.getParameter("perfil");
        String cpf = request.getParameter("cpf");
        
        int p = Integer.parseInt(perfil);
        int id = Integer.parseInt(idd);

        
        //instanciar o javabean
        Usuario usuario = new Usuario();
        usuario.setId(id);
        usuario.setNome(nome);
        usuario.setUsuario(user);
        usuario.setEmail(email);
        usuario.setHorarioTrabalho(horarioTrabalho);
        usuario.setCpf(cpf);
        usuario.setTipoUsuario(p);
        usuario.setSenha(senha);
             
        //instanciar o service
        UsuarioService us = new UsuarioService();
        us.atualizar(usuario);

       
        //enviar para o jsp
        request.setAttribute("confirmacaoAlteracaoUsuario",  us.carregarId(usuario));
        
       RequestDispatcher view = request.getRequestDispatcher("ConfirmacaoAlteracaoUsuario.jsp");
       view.forward(request, response);
       
    	}else{ // excluindo usuario
    		
    		String idtexto = request.getParameter("id");
            
            int id = Integer.parseInt(idtexto);
            //instanciar o javabean
            Usuario usuario = new Usuario();
            usuario.setId(id);
                 
            //instanciar o service
            UsuarioService us = new UsuarioService();
            
           
            //enviar para o jsp
            request.setAttribute("confirmacaoExclusaoUsuario", us.excluir(usuario.getId()));
            
            RequestDispatcher view = request.getRequestDispatcher("ConfirmacaoExclusaoUsuario.jsp");
            view.forward(request, response);
        }
        
    		
    		
    	}
        
    }
    

