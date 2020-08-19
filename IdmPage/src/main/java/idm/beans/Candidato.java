package idm.beans;

import java.util.ArrayList;
import java.util.List;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;



public class Candidato {
	//definito come autoIncrement dentro il mapping di hibernate
	private int id;
	
	@NotEmpty(message = "nome non valido")
	private String nome;
	@NotEmpty(message = "cognome non valido")
	@Size(max=50)
	private String cognome;
	@NotEmpty(message="email non valida")
	@Email(message="email non valida")
	@Size(max=100)
	private String email;
	@NotEmpty(message="telefono non valido")
	private String telefono;
	
	private String provincia;
	// stringa che contiene l'elenco delle competenze ed è l'ultima colonna della tabella candidato
	private String competenze;
	
	// lista di competenze utilizzata per creare la tabella che lega l'ID candidato con la competenza
	private List<Competenze> favoriteFrameworks;
	
	//array di competenze, dentro di esso vengono salvate in automatico le competenze selezione nel check box
	// non compaiono in tabella perché sono incorporate in favoriteFrameworks e in competenze
	private String [] comp; 
	
	//sede per la quale ci si candidata
	@NotEmpty (message="\u00E9 obbligatorio inserire una scelta per la sede di candidatura")
	private String luogoCandidatura;
	
	//stato della candidatura
	private String stato;
	
	//campo in cui Sara può inserire delle note sui candidati
	private String note;
	
	private String nuovaNota;
	
	public String getNuovaNota() {
		return nuovaNota;
	}
	public void setNuovaNota(String nuovaNota) {
		this.nuovaNota = nuovaNota;
	}
	//Livello di istruzione del candidato
	private String livello;
	
	//percorso di studi del candidato
	private String percorso;
	
	//elenco delle conoscenze
	private List<String>conoscenze=new ArrayList<>();
	
	//livello di anzianità
	private String anzianit;
	
	// per i senior (campo null per i junior)
	private String posizioneLav;
	
	private String cv;
	
	public String getCv() {
		return cv;
	}
	public void setCv(String cv) {
		this.cv = cv;
	}
	@Override
	public String toString() {
		return "Candidato: nome=" + nome + ", cognome=" + cognome + ", email=" + email + ", telefono="
				+ telefono + ", provincia=" + provincia + ", competenze=" + competenze + ", luogoCandidatura="
				+ luogoCandidatura + ", stato=" + stato + ", note=" + note + ", livello=" + livello + ", percorso="
				+ percorso + ", conoscenze=" + conoscenze + ", anzianit=" + anzianit + ", posizioneLav=" + posizioneLav;
	}
	public String getProvincia() {
		return provincia;
	}
	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}
	public String getAnzianit() {
		return anzianit;
	}
	public void setAnzianit(String anzianit) {
		this.anzianit = anzianit;
	}
	public String getPosizioneLav() {
		return posizioneLav;
	}
	public void setPosizioneLav(String posizioneLav) {
		this.posizioneLav = posizioneLav;
	}
	public List<String> getConoscenze() {
		return conoscenze;
	}
	public void setConoscenze(List<String> conoscenze) {
		this.conoscenze = conoscenze;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}

	public String getStato() {
		return stato;
	}
	public void setStato(String stato) {
		this.stato = stato;
	}
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
	public void setLivello(String livello) {
		this.livello = livello;
	}  
	public String getLivello( ) {
		return livello;
	}
	public String getPercorso() {
		return percorso;
	}
	public void setPercorso(String percorso) {
		this.percorso = percorso;
	}
	
	
}
