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
import idm.beans.Competenze;
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
	
	 @ModelAttribute("webFrameworkList")
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
		Candidato candidato= new Candidato();
//		 List<Competenze> webFrameworkList = new ArrayList<Competenze>();
//		 Competenze c = new Competenze();
//		 c.setCompetenza("Java");
//		 c.setTipo("base");
//		 Competenze c1 = new Competenze();
//		 c1.setCompetenza("Python");
//		 c1.setTipo("base");
//		 webFrameworkList.add(c);
//		 webFrameworkList.add(c1);
//	     candidato.setFavoriteFrameworks(webFrameworkList);
		m.addAttribute("command", candidato);  
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
