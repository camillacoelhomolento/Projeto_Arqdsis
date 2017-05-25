package br.usjt.arqdsis.ProjetoArqdsis.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.usjt.arqdsis.ProjetoArqdsis.model.Empresa;
import br.usjt.arqdsis.ProjetoArqdsis.service.EmpresaService;


/**
 * Servlet implementation class ManterClienteControllerh
 */
@WebServlet("/ConsultarEmpresa.do")
public class ConsultarEmpresaController extends HttpServlet {
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
        String rasao = request.getParameter("rasaoSocial");
        String cnpj = request.getParameter("cnpj");
        
        
        //instanciar o javabean
        Empresa empresa = new Empresa();
        empresa.setRazaoSocial(rasao);
        empresa.setCNPJ(cnpj);
        
        //instanciar o service
        EmpresaService us = new EmpresaService();
		List<Empresa> lista = us.consultar(empresa);

       
        //enviar para o jsp
        request.setAttribute("consultarEmpresa", lista);
        
        RequestDispatcher view = request.getRequestDispatcher("ConsultarEmpresa.jsp");
        view.forward(request, response);
        
    }
    
}

