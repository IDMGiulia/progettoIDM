package idm.control;


import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import idm.beans.Candidato;
import idm.dao.CanDao;

@Controller    
public class CanController {
	@Autowired    
	CanDao dao;

	
	//link iniziale che manda alla home
	@RequestMapping("/presentazione")  
	public String display()  
	{  
		return "home";  
	}
	
	@RequestMapping("/selezione")  
	public String selezione()  
	{  
		return "viewpage";  
	}
	
	// Link che porta dal canconf.jsp alla pagina di conferma finale (response)
	@RequestMapping("/risposta")  
	public String risposta()  
	{  
		return "response";  
	}
	
	@RequestMapping("/visual")    
		public String viewCandidati(Model m){    
			String sede=(String) m.getAttribute("sede");
			List<Candidato> list=dao.getCandidatoForSede(sede);    
	        m.addAttribute("list",list);  
	       return "amministrazione2";    
   }
	
	@RequestMapping("/amministrazione")    
    public String viewemp(Model m){    
        List<Candidato> list=dao.getCandidatos();    
        m.addAttribute("list",list);  
        return "amministrazione";    
    }
	@RequestMapping("/amministrazione2")    
    public String viewempSede(Model m){    
        List<Candidato> list=dao.getCandidatoForSede("T");    
        m.addAttribute("list",list);  
        return "amministrazione";    
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
	public String save(@Valid @ModelAttribute("can") Candidato can, BindingResult result, 
			SessionStatus status,Model m){ 
	    //Check validation errors
	    if (result.hasErrors()) {   
	        return "canform";
	    }
	    try {
	    dao.salva(can); 
	    }catch (Exception e) {
	    	ObjectError error = new ObjectError("competenze","hai inserito troppi caratteri nel campo altre competenze");
	    	result.addError(error);
	    	return "canform";
		}
		return "canconf";//will derict to canconf   
	} 
	
	/* It deletes record for the given id in URL and redirects to /viewemp */    
    @RequestMapping(value="/deleteemp/{id}",method = RequestMethod.GET)    
    public String delete(@PathVariable int id){    
        dao.deleteCandidato(id);    
        return "redirect:/amministrazione";    
    } 
	
    /* It displays object data into form for the given id.   
     * The @PathVariable puts URL data into variable.*/    
    @RequestMapping(value="/editemp/{id}")    
    public String edit(@PathVariable int id, Model m){    
        Candidato emp=dao.getCanById(id);    
        m.addAttribute("command",emp);  
        return "canEditForm";    
    } 
    
    /* It updates model object. */    
    @RequestMapping(value="/editsave",method = RequestMethod.POST)    
    public String editsave(@ModelAttribute("can") Candidato can){    
        dao.update(can);    
        return "redirect:/amministrazione";    
    } 
    
 
	
}
