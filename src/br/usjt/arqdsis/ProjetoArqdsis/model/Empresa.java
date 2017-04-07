package br.usjt.arqdsis.ProjetoArqdsis.model;

public class Empresa {
	private String CNPJ, razaoSocial, horarioFuncionamento, horarioAr;
	private int conjuntos, temperaturaPadrao, id;
	
	public String getCNPJ() {
		return CNPJ;
	}
	public void setCNPJ(String cNPJ) {
		CNPJ = cNPJ;
	}
	public String getRazaoSocial() {
		return razaoSocial;
	}
	public void setRazaoSocial(String rasaoSocial) {
		this.razaoSocial = rasaoSocial;
	}
	public String getHorarioFuncionamento() {
		return horarioFuncionamento;
	}
	public void setHorarioFuncionamento(String horarioFuncionamento) {
		this.horarioFuncionamento = horarioFuncionamento;
	}
	public String getHorarioAr() {
		return horarioAr;
	}
	public void setHorarioAr(String horarioAr) {
		this.horarioAr = horarioAr;
	}
	public int getConjuntos() {
		return conjuntos;
	}
	public void setConjuntos(int conjuntos) {
		this.conjuntos = conjuntos;
	}
	public int getTemperaturaPadrao() {
		return temperaturaPadrao;
	}
	public void setTemperaturaPadrao(int temperaturaPadrao) {
		this.temperaturaPadrao = temperaturaPadrao;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}



}
