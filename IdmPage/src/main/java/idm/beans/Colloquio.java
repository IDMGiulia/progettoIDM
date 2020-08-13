package idm.beans;



public class Colloquio {
	
	private int id;
	private int candidato;
	private String data;
	private String tipo;
	private String note;
	private float valutazione;
	
	
	
	@Override
	public String toString() {
		return "Colloquio [id=" + id + ", candidato=" + candidato + ", data=" + data + ", tipo=" + tipo + ", note="
				+ note + ", valutazione=" + valutazione + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public int getCandidato() {
		return candidato;
	}
	public void setCandidato(int candidato) {
		this.candidato = candidato;
	}
	
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public float getValutazione() {
		return valutazione;
	}
	public void setValutazione(float valutazione) {
		this.valutazione = valutazione;
	}
	
	
	

}
