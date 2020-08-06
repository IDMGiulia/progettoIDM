package idm.control;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;


import idm.beans.Recensione;
import idm.dao.RecensioneDao;

@Controller
public class RecensioneController {
	
	@Autowired    
	RecensioneDao dao;
	
	
	@RequestMapping("/inviarec")    
	public String recensione(Model m){   
		Recensione recensione= new Recensione();
		m.addAttribute("rec", recensione);  
		return "recensione";   
	}
	
	@RequestMapping(value="/salva",method = RequestMethod.POST)    
	public String save(@Valid @ModelAttribute("rec") Recensione rec, BindingResult result, 
			SessionStatus status,Model m){ 
	    //Check validation errors
	    if (result.hasErrors()) {   
	        return "recensione";
	    }
	    try {
	    dao.salva(rec); 
	    }catch (Exception e) {
	    	return "recensione";
		}
		return "risprecensione"; 
	} 
	
	
}
