package idm.control;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import idm.beans.Candidato;
import idm.dao.CanDao;
import idm.validator.canValid;

@Controller    
public class CanController {
	@Autowired    
	CanDao dao;

	
	
	@RequestMapping("/presentazione")  
	public String display()  
	{  
		return "home";  
	}
	
	@RequestMapping("/formregistrazione")  
	public String form()  
	{  
		return "formregistrazione";  
	}
	
	 @ModelAttribute("webFrameworkList")
	   public List<String> getWebFrameworkList() {
	      List<String> webFrameworkList = new ArrayList<String>();
	      webFrameworkList.add("Java");
	      webFrameworkList.add(".Net");
	      webFrameworkList.add("Javascript");
	      webFrameworkList.add("Angular JS");
	      webFrameworkList.add("HTML/CSS");
	      webFrameworkList.add("SQL");
	      return webFrameworkList;
	   }

	@RequestMapping("/candidatura")    
	public String showform(Model m){   
		Candidato candidato= new Candidato();
		m.addAttribute("can", candidato);  
		return "canform";   
	} 

	/*It saves object into database. The @ModelAttribute puts request data  
	 *  into model object. You need to mention RequestMethod.POST method   
	 *  because default request is GET*/    
	@RequestMapping(value="/save",method = RequestMethod.POST)    
	public String save(@Valid @ModelAttribute("can") Candidato can, BindingResult result, SessionStatus status,Model m){ 
	     
	    //Check validation errors
	    if (result.hasErrors()) {   
	        return "canform";
	    }
	    dao.salva(can); 
		return "canconf";//will derict to canconf   
	}  
	
	
}
