package idm.beans;

import java.util.List;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;



public class Candidato {
	private int id;
	
	@NotEmpty()
	@Size(max=50)
	private String nome;
	@NotEmpty(message="il nome non può essere nullo")
	@Size(max=50)
	private String cognome;
	@NotEmpty
	@Email(message="email non valida")
	@Size(max=100)
	private String email;
	private String telefono;
	private String competenze;
	private List<Competenze> favoriteFrameworks;
	private String [] comp; 
	private String luogoCandidatura;
	
	
	
	public String getLuogoCandidatura() {
		return luogoCandidatura;
	}
	public void setLuogoCandidatura(String luogoCandidatura) {
		this.luogoCandidatura = luogoCandidatura;
	}
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
