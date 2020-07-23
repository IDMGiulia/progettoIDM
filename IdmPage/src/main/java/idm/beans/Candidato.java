package idm.beans;

import java.util.List;

public class Candidato {
	private int id;
	private String nome;
	private String cognome;
	private String email;
	private String telefono;
	private String competenze;
	private List<Competenze> favoriteFrameworks;
	private String [] comp; 
	
	public String[] getComp() {
		return comp;
	}
	public void setComp(String[] comp) {
		this.comp = comp;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public String getCompetenze() {
		return competenze;
	}
	public void setCompetenze(String competenze) {
		this.competenze = competenze;
	}
	
	public List<Competenze> getFavoriteFrameworks() {
		return favoriteFrameworks;
	}
	public void setFavoriteFrameworks(List<Competenze> favoriteFrameworks) {
		this.favoriteFrameworks = favoriteFrameworks;
	}
	
	


}
