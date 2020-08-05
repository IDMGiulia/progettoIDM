package idm.beans;

public class Recensione {
	
	private int recId;
	private String nome;
	private String cognome;
	private String recensione;
	private boolean approvata;
	
	
	public int getRecId() {
		return recId;
	}
	public void setRecId(int recId) {
		this.recId = recId;
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
	public String getRecensione() {
		return recensione;
	}
	public void setRecensione(String recensione) {
		this.recensione = recensione;
	}
	public boolean isApprovata() {
		return approvata;
	}
	public void setApprovata(boolean approvata) {
		this.approvata = approvata;
	}
	
	
}
