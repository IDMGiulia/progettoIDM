package idm.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import idm.beans.Candidato;
import idm.dao.CanDao;





@Controller    
public class CanController {
	 @Autowired    
	 CanDao dao;
	
	 @RequestMapping("/candidatura")    
	    public String showform(Model m){    
	        m.addAttribute("command", new Candidato());  
	        return "canform";   
	    } 
	 
	    /*It saves object into database. The @ModelAttribute puts request data  
	     *  into model object. You need to mention RequestMethod.POST method   
	     *  because default request is GET*/    
	    @RequestMapping(value="/savataggio")    
	    public String save(@ModelAttribute("can") Candidato can){ 
	    	System.out.println("entro qui");
	        dao.salva(can);    
	        return "canconf";//will derict to canconf   
	    }  
}
