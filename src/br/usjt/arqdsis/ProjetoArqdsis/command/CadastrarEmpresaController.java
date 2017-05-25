package br.usjt.arqdsis.ProjetoArqdsis.command;

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
 * Servlet implementation class ManterEmpresaController
 */
@WebServlet("/ManterEmpresa.do")
public class CadastrarEmpresaController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cnpj = request.getParameter("cnpj");
		String razaoSocial = request.getParameter("razaoSocial");
		String horarioFuncionamneto = request.getParameter("horarioFuncionamneto");
		String temperaturaPadrao = request.getParameter("temperaturaPadrao");
		String horarioAr = request.getParameter("horarioAr");
		String conjunto = request.getParameter("conjunto");

		// instanciar o javabean
		Empresa empresa = new Empresa();
		empresa.setCNPJ(cnpj);
		empresa.setRazaoSocial(razaoSocial);
		empresa.setHorarioFuncionamento(horarioFuncionamneto);
		empresa.setTemperaturaPadrao(Integer.parseInt(temperaturaPadrao));
		empresa.setHorarioAr(horarioAr);
		empresa.setConjuntos(Integer.parseInt(conjunto));

		// instanciar o service
		EmpresaService em = new EmpresaService();
		em.criar(empresa);
		empresa = em.carregar(empresa.getId());

		// enviar para o jsp
		request.setAttribute("cadastrarEmpresa", empresa);

		RequestDispatcher view = request.getRequestDispatcher("CadastrarEmpresa.jsp");
		view.forward(request, response);
	}
}
