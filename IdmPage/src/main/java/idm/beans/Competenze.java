package idm.beans;

import java.util.List;

public class Competenze {
	private String competenza;
	private String tipo;
	private List<Candidato> canandidato;
	private List<Senior> senior;
	
	
	public List<Senior> getSenior() {
		return senior;
	}
	public void setSenior(List<Senior> senior) {
		this.senior = senior;
	}
	public String getCompetenza() {
		return competenza;
	}
	public void setCompetenza(String competenza) {
		this.competenza = competenza;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	
	public List<Candidato> getCanandidato() {
		return canandidato;
	}
	public void setCanandidato(List<Candidato> canandidato) {
		this.canandidato = canandidato;
	}
	
	
	
}
