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
import org.springframework.web.bind.support.SessionStatus;

import idm.beans.Candidato;
import idm.beans.Colloquio;
import idm.beans.Recensione;
import idm.beans.Senior;
import idm.dao.ColloquioDao;
import idm.dao.RecensioneDao;
import idm.dao.SeniorDao;

@Controller
public class ColloquioController {
	
	@Autowired    
	ColloquioDao dao;
	@Autowired
	SeniorDao senior;
	
	 //collega candidato all'elenco dei colloqui"  
    @RequestMapping(value="/colloqui/{id}")    
    public String crea(@PathVariable int id, Model m){    
    	List<Colloquio> list=dao.getColloquiCan(id);
    	Senior s=senior.getSenById(id);
        m.addAttribute("colloqui",list);  
        m.addAttribute("senior",s); 
        return "amministraColloqui";    
    } 
    
    //permette di aggiungere un nuovo colloquio
    @RequestMapping(value="/aggiungiColloqui/{id}")
    public String aggiungic(@PathVariable int id, Model m){   
    	System.out.println("SONO ENTRATO QUI");
    	Colloquio col=new Colloquio();
    	Senior s=senior.getSenById(id);
        m.addAttribute("col",col);  
        m.addAttribute("senior",s); 
        return "formColloquio";    
    } 
    
	@RequestMapping(value="/aggiungi",method = RequestMethod.POST)    
	public String salvaCol(@Valid @ModelAttribute("col") Colloquio col, BindingResult result, 
			SessionStatus status,Model m){ 
	    //Check validation errors
	    if (result.hasErrors()) {   
	        return "formColloquio";
	    }
	    try {
	    dao.inserisci(col);
	    }catch (Exception e) {
	    	return "formColloquio";
		}
		return "redirect:/amministraColloqui"; 
	} 
    
	
}
