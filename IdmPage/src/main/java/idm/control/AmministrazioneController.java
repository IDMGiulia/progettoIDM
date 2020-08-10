package idm.control;

import java.util.Calendar;
import java.util.Optional;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import idm.beans.Amministrazione;
import idm.dao.AmministrazioneDao;

@Controller
public class AmministrazioneController {
	
	@Autowired
	AmministrazioneDao dao;
	
	@Bean
	public PasswordEncoder passwordEncoder() {
	  return new BCryptPasswordEncoder();
	}
	
	 //link al form di candidatura Senior 
	@RequestMapping("/login")    
	public String log (Model m){   
		Amministrazione amministrazione= new Amministrazione();
		m.addAttribute("log", amministrazione);  
		return "login";   
	} 
	
	
	/*It saves object into database. The @ModelAttribute puts request data  
	 *  into model object. You need to mention RequestMethod.POST method   
	 *  because default request is GET*/    
	@RequestMapping(value="/log",method = RequestMethod.POST)    
	public String controllaLog(@Valid @ModelAttribute("log") Amministrazione amministrazione, Model m){ 
		Optional<Amministrazione> sara = dao.login(amministrazione.getUsername(), amministrazione.getPassword());
	    if(sara.isPresent()) {
	    	String token= sara.get().getUsername()+sara.get().getPassword()+Calendar.getInstance();
	    	PasswordEncoder passwordEncoder=this.passwordEncoder();
	    	sara.get().setToken(passwordEncoder.encode(token));
	    	System.out.println(sara.get().getToken());
	    	dao.salva(sara.get());
	    	return "logindopo";}//will derict to canconf   }
	    else {
			return "login";
		}
	} 
	

		
		
}
