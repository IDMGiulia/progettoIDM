package idm.control;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import idm.beans.Candidato;
import idm.dao.CanDao;

@Controller    
public class CanController {
	@Autowired    
	CanDao dao;

	@RequestMapping("/presentazione")  
	public String display()  
	{  
		return "home";  
	}
	
	 @ModelAttribute("favoriteFrameworks")
	   public List<String> getWebFrameworkList() {
	      List<String> webFrameworkList = new ArrayList<String>();
	      webFrameworkList.add("Java");
	      webFrameworkList.add("Python");
	      webFrameworkList.add("Angular");
	      webFrameworkList.add("Maven");
	      return webFrameworkList;
	   }

	@RequestMapping("/candidatura")    
	public String showform(Model m){    
		m.addAttribute("command", new Candidato());  
		return "canform";   
	} 

	/*It saves object into database. The @ModelAttribute puts request data  
	 *  into model object. You need to mention RequestMethod.POST method   
	 *  because default request is GET*/    
	@RequestMapping(value="/save",method = RequestMethod.POST)    
	public String save(@ModelAttribute("can") Candidato can){ 
		dao.salva(can);    
		return "canconf";//will derict to canconf   
	}  
	
	
}
