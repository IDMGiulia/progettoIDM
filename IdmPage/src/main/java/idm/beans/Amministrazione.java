package idm.beans;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class Amministrazione {

	@NotEmpty
	private String username;
	@NotEmpty
	@Size(max=50)
	private String password;

	private int permessi;
	
	private String token;
	
public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
	public int getPermessi() {
		return permessi;
	}
	//	public Amministrazione(@NotEmpty String username, @NotEmpty @Size(max = 50) String password,
//			@NotEmpty boolean permessi) {
//		super();
//		this.username = username;
//		this.password = password;
//		this.permessi = permessi;
//	}
	public Amministrazione() {
		// TODO Auto-generated constructor stub
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int isPermessi() {
		return permessi;
	}
	public void setPermessi(int permessi) {
		this.permessi = permessi;
	}
}
