package br.usjt.arqdsis.ProjetoArqdsis.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.usjt.arqdsis.ProjetoArqdsis.model.Empresa;
import br.usjt.arqdsis.ProjetoArqdsis.service.EmpresaService;


/**
 * Servlet implementation class ManterClienteController
 */
@WebServlet("/AlterarEmpresa.do")
public class AlterarExcluirEmpresaControlle extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String idtexto = request.getParameter("id");
        
        int id = Integer.parseInt(idtexto);
        //instanciar o javabean
        Empresa empresa = new Empresa();
        empresa.setId(id);
             
        //instanciar o service
        EmpresaService us = new EmpresaService();
       
        //enviar para o jsp
        request.setAttribute("alterarEmpresa", us.carregar(empresa.getId()));
        
        RequestDispatcher view = request.getRequestDispatcher("AlterarEmpresa.jsp");
        view.forward(request, response);
    }
    
    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	if(request.getParameter("Criar") != null){ // alterando Empresa
    	
    		String idTexto = request.getParameter("id");
    		String cnpj = request.getParameter("cnpj");
    		String razaoSocial = request.getParameter("razaoSocial");
    		String horarioFuncionamneto = request.getParameter("horarioFuncionamneto");
    		String temperaturaPadrao = request.getParameter("temperaturaPadrao");
    		String horarioAr = request.getParameter("horarioAr");
    		String conjunto = request.getParameter("conjunto");

    		// instanciar o javabean
    		Empresa empresa = new Empresa();
    		empresa.setId(Integer.parseInt(idTexto));
    		empresa.setCNPJ(cnpj);
    		empresa.setRazaoSocial(razaoSocial);
    		empresa.setHorarioFuncionamento(horarioFuncionamneto);
    		empresa.setTemperaturaPadrao(Integer.parseInt(temperaturaPadrao));
    		empresa.setHorarioAr(horarioAr);
    		empresa.setConjuntos(Integer.parseInt(conjunto));

             
        //instanciar o service
        EmpresaService us = new EmpresaService();
        us.atualizar(empresa);

       
        //enviar para o jsp
        request.setAttribute("confirmacaoAlteracaoEmpresa",  us.carregarId(empresa));
        
       RequestDispatcher view = request.getRequestDispatcher("ConfirmacaoAlteracaoEmpresa.jsp");
       view.forward(request, response);
       
    	}else{ // excluindo empresa
    		
    		String idtexto = request.getParameter("id");
            
            int id = Integer.parseInt(idtexto);
            //instanciar o javabean
            Empresa empresa = new Empresa();
            empresa.setId(id);
                 
            //instanciar o service
            EmpresaService us = new EmpresaService();
            
           
            //enviar para o jsp
            request.setAttribute("confirmacaoExclusaoEmpresa", us.excluir(empresa.getId()));
            
            RequestDispatcher view = request.getRequestDispatcher("ConfirmacaoExclusaoEmpresa.jsp");
            view.forward(request, response);
        }
        
    		
    		
    	}
        
    }
    

