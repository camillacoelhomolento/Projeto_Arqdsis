package br.usjt.arqdsis.ProjetoArqdsis.service;

import java.util.ArrayList;

import br.usjt.arqdsis.ProjetoArqdsis.dao.UsuarioDAO;
import br.usjt.arqdsis.ProjetoArqdsis.model.Usuario;

public class UsuarioService {
	UsuarioDAO usuarioDAO = new UsuarioDAO();

	public int criar(Usuario usuario) {
		return usuarioDAO.criar(usuario);
	}

	public void atualizar(Usuario usuario) {
		usuarioDAO.atualizar(usuario);
	}

	public String excluir(int id) {
		return usuarioDAO.excluir(id);
	}

	public Usuario carregar(int id) {
		return usuarioDAO.carregar(id);
	}
	
	public Usuario carregarId(Usuario usuario) {
		return usuarioDAO.carregarId(usuario);
	}

	public ArrayList<Usuario> consultar(Usuario usuario) {
		ArrayList<Usuario> vazio = new ArrayList();
		
		if (usuario.getNome() != null && usuario.getCpf() != null) {
			if (usuario.getNome().isEmpty() == false && usuario.getCpf().isEmpty() == true) {
				return usuarioDAO.pesquisarPorNome(usuario);
			
			} else if (usuario.getCpf().isEmpty() == false && usuario.getNome().isEmpty() == true) {
				return usuarioDAO.pesquisarPorCPF(usuario);

			} else if(usuario.getNome().isEmpty() == false && usuario.getCpf().isEmpty() == false){
				return usuarioDAO.pesquisarTudoPreenxido(usuario);

			}
			return vazio;
		}
		
		return vazio;
		
	}

}
