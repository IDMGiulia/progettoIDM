package idm.beans;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class Amministrazione {
	@NotEmpty
	private String username;
	@NotEmpty
	@Size(max=50)
	private String password;
	@NotEmpty
	private boolean permessi;
	public Amministrazione(@NotEmpty String username, @NotEmpty @Size(max = 50) String password,
			@NotEmpty boolean permessi) {
		super();
		this.username = username;
		this.password = password;
		this.permessi = permessi;
	}
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
	public boolean isPermessi() {
		return permessi;
	}
	public void setPermessi(boolean permessi) {
		this.permessi = permessi;
	}
}
