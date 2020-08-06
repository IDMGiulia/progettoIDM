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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import idm.beans.CanComp;
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
		return "ac_home";  
	}
	
	//link alla pagina senior
	@RequestMapping("/joinus")  
	public String joinus()  
	{  
		return "joinus";  
	}
	
	//invia alla pagina per selezionare alcuni candidati
	@RequestMapping("/selezione")  
	public String selezione()  
	{  
		return "viewpage";  
	}
	

	//invia alla pagina per selezionare alcuni candidati
	@RequestMapping("/login")  
	public String login()  
	{  
		return "login";  
	}
	
	// Link che porta dal canconf.jsp alla pagina di conferma finale (response)
	@RequestMapping("/risposta/{nome}")  
	public String risposta(@PathVariable String nome,Model m)  
	{  
		 m.addAttribute("nome",nome.split("_")[2]);
		return "response";  
	}
	
	// Link che riporta alla canconf.jsp se il file ha estenzione sbagliata
	@RequestMapping("/errore/{nome}")  
	public String errore(@PathVariable String nome,Model m)  
	{ 
		 m.addAttribute("nome",nome.split("_")[2]);
		return "rispostadierrore";  
	}
	
	@RequestMapping(value="/visual")    
    public String viewCandidati(@RequestParam("sede") String sede, @RequestParam("competenza") String compe,
        @RequestParam("stato") String stato,Model m){ 
    List<Candidato> list= new ArrayList<>();
    list=dao.getCandidatoForParameter(sede, compe+",", stato);
      m.addAttribute("list",list); 
          System.out.println(sede+compe+stato);
         return "amministrazione2";    
  }


	//restituisce la tabella con tutti i candidati
	@RequestMapping("/amministrazione")    
    public String viewemp(Model m){    
        List<Candidato> list=dao.getCandidatos();    
        m.addAttribute("list",list);  
        return "amministrazione";    
    }
	
	// elenco di tutte le competenze "base"
	 @ModelAttribute("webFrameworkList")
	   public List<String> getWebFrameworkList() {
	      List<String> webFrameworkList = new ArrayList<String>();
	      webFrameworkList.add("Java");
	      webFrameworkList.add("Javascript");
	      webFrameworkList.add("Angular JS");
	      webFrameworkList.add("HTML/CSS");
	      webFrameworkList.add("SQL");
	      return webFrameworkList;
	   }
	 
	 //link al form di candidatura Academy
	@RequestMapping("/candidaturaAc")    
	public String showform(Model m){   
		Candidato candidato= new Candidato();
		m.addAttribute("can", candidato);  
		return "ac_form";   
	} 
	
	/*It saves object into database. The @ModelAttribute puts request data  
	 *  into model object. You need to mention RequestMethod.POST method   
	 *  because default request is GET*/    
	@RequestMapping(value="/save",method = RequestMethod.POST)    
	public String save(@Valid @ModelAttribute("can") Candidato can, BindingResult result, 
			SessionStatus status,Model m){ 
	    //Check validation errors
	    if (result.hasErrors()) {   
	        return "ac_form";
	    }
	    try {
	    dao.salva(can); 
	    }catch (Exception e) {
	    	ObjectError error = new ObjectError("competenze","hai inserito troppi caratteri nel campo altre competenze");
	    	result.addError(error);
	    	return "ac_form";
		}
		return "ac_cv";//will derict to canconf   
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
	
		
		// metodo per vedere tutte le competenze, per ora non visibile lato client
		@RequestMapping("/amministrazione1")    
	    public String viewcomp(Model m){    
	        List<CanComp> list=dao.getComp();    
	        m.addAttribute("list",list);  
	        return "viewComp";    
	    }
		
		//selezione competenza singola (non utilizzato)
		@RequestMapping(value="/visualll")    
			public String viewCandidatii(@RequestParam("sede") String sede, @RequestParam("competenza") String compe,
					@RequestParam("stato") String stato,Model m){   
				List<Candidato> list=dao.getCandidatoForSede(sede);
				list=dao.getCandidatoForStato(stato, list);
				list=dao.getCandidatoComp((compe+","), list);
				m.addAttribute("list",list); 
		        System.out.println(sede+compe+stato);
		       return "amministrazione2";    
		}
	
}
