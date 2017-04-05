package br.usjt.arqdsis.ProjetoArqdsis.model;

public enum TipoUsuario {
	ATENDENTE(3), SINDICO(2), FUNCIONARIO(1);

	private int tipo;

	TipoUsuario(int tipo) {
		this.tipo = tipo;
	}

	public int getTipo() {
		return tipo;
	}

}
