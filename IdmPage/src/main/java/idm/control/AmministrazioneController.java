package idm.control;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import idm.beans.Amministrazione;
import idm.beans.Candidato;
import idm.beans.Senior;
import idm.dao.AmministrazioneDao;
import idm.dao.SeniorDao;

@Controller
public class AmministrazioneController {
	
	@Autowired
	AmministrazioneDao dao;
	
	
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
	    if(dao.login(amministrazione.getUsername(), amministrazione.getPassword()).isPresent())
	    	return "logindopo";//will derict to canconf   
	    else {
			return "login";
		}
	} 
	

		
		
}
