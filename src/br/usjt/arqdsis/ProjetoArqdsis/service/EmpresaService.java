package br.usjt.arqdsis.ProjetoArqdsis.service;

import java.util.ArrayList;

import br.usjt.arqdsis.ProjetoArqdsis.dao.EmpresaDAO;
import br.usjt.arqdsis.ProjetoArqdsis.model.Empresa;
import br.usjt.arqdsis.ProjetoArqdsis.model.Usuario;
import br.usjt.arqdsis.ProjetoArqdsis.model.Empresa;

public class EmpresaService {
	EmpresaDAO empresaDAO = new EmpresaDAO();	
	
	
	public int criar(Empresa empresa) {
		return empresaDAO.criar(empresa);
	}
	
	public void atualizar(Empresa empresa){
		empresaDAO.atualizar(empresa);
	}
	
	public String excluir(int id){
		return empresaDAO.excluir(id);
	}
	
	public Empresa carregar(int id){
		return empresaDAO.carregar(id);
	}
	
	public Empresa carregarId(Empresa empresa) {
		return empresaDAO.carregarId(empresa);
	}
	
	public ArrayList<Empresa> consultar(Empresa empresa) {
		ArrayList<Empresa> vazio = new ArrayList();
		
		if (empresa.getRazaoSocial() != null && empresa.getCNPJ() != null) {
			if (empresa.getRazaoSocial().isEmpty() == false && empresa.getCNPJ().isEmpty() == true) {
				return empresaDAO.pesquisarPorRazaoSocial(empresa);
			
			} else if (empresa.getCNPJ().isEmpty() == false && empresa.getRazaoSocial().isEmpty() == true) {
				return empresaDAO.pesquisarPorCNPJ(empresa);

			} else if(empresa.getRazaoSocial().isEmpty() == false && empresa.getCNPJ().isEmpty() == false){
				return empresaDAO.pesquisarTudoPreenxido(empresa);

			}
			return vazio;
		}
		
		return vazio;
		
	}


}
