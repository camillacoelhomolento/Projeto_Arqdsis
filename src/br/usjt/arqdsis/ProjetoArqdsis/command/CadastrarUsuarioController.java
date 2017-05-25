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
@WebServlet("/ManterUsuario.do")
public class CadastrarUsuarioController extends HttpServlet implements Command {
    private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    
    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nome = request.getParameter("nome");
        String user = request.getParameter("usuario");
        String senha = request.getParameter("senha");
        String email = request.getParameter("email");
        String horarioTrabalho = request.getParameter("horarioTrabalho");
        String perfil = request.getParameter("perfil");
        String cpf = request.getParameter("cpf");
        
        int p = Integer.parseInt(perfil);
        
        //instanciar o javabean
        Usuario usuario = new Usuario();
        usuario.setNome(nome);
        usuario.setUsuario(user);
        usuario.setEmail(email);
        usuario.setHorarioTrabalho(horarioTrabalho);
        usuario.setCpf(cpf);
        usuario.setTipoUsuario(p);
        usuario.setSenha(senha);
        
        
        //instanciar o service
        UsuarioService us = new UsuarioService();
        us.criar(usuario);
        
       
        //enviar para o jsp
        request.setAttribute("cadastrarUsuario",  us.carregar(usuario.getId()));
        
        RequestDispatcher view = request.getRequestDispatcher("CadastrarUsuario.jsp");
        view.forward(request, response);
        
    }

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}
    
}
