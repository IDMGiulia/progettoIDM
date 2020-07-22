package idm.beans;

public class Candidato {
	private int id;
	private String nome;
	private String cognome;
	private String email;
	private String telefono;
	private String competenze;
	private String [] favoriteFrameworks;

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
	public String[] getFavoriteFrameworks() {
	      return favoriteFrameworks;
	   }
	   public void setFavoriteFrameworks(String[] favoriteFrameworks) {
	      this.favoriteFrameworks = favoriteFrameworks;
	   }


}
