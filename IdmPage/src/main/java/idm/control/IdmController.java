package idm.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IdmController {
	
	@RequestMapping("/policy")    
	public String policy () {
		return "policy";
	}
	
	@RequestMapping("/cookie-policy")    
	public String cookiePolicy () {
		return "cookie-policy";
	}
	
	@RequestMapping("/contatti")    
	public String contatti () {
		return "contatti";
	}

}
