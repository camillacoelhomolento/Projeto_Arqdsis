package br.usjt.arqdsis.ProjetoArqdsis.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.usjt.arqdsis.ProjetoArqdsis.model.Usuario;
import br.usjt.arqdsis.ProjetoArqdsis.service.UsuarioService;


/**
 * Servlet implementation class ManterClienteControllerh
 */
@WebServlet("/ConsultarUsuario.do")
public class ConsultarUsuarioController extends HttpServlet {
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
        String cpf = request.getParameter("cpf");
        
        
        //instanciar o javabean
        Usuario usuario = new Usuario();
        usuario.setNome(nome);
        usuario.setCpf(cpf);
             
        //instanciar o service
        UsuarioService us = new UsuarioService();
		List<Usuario> lista = us.consultar(usuario);

       
        //enviar para o jsp
        request.setAttribute("consultarUsuario", lista);
        
        RequestDispatcher view = request.getRequestDispatcher("ConsultarUsuario.jsp");
        view.forward(request, response);
        
    }
    
}

