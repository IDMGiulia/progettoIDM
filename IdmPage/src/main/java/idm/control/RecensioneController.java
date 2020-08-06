package idm.control;

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

import idm.beans.Recensione;
import idm.dao.RecensioneDao;

@Controller
public class RecensioneController {
	
	@Autowired    
	RecensioneDao dao;
	
	//collega il link iniziale al form dove inserire la recensione
	@RequestMapping("/inviarec")    
	public String recensione(Model m){   
		Recensione recensione= new Recensione();
		m.addAttribute("rec", recensione);  
		return "recensione";   
	}
	
	
	//salva la recensione nel DB se è corretta se no rimanda al form
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
	
	//link di amministrazione che permette di vedere tutte le recensioni
	@RequestMapping("/amministraRecensioni")    
    public String viewemp(Model m){    
        List<Recensione> list=dao.getRecensioni();    
        m.addAttribute("list",list);  
        return "amministraRecensioni";    
    }
	
	/* It deletes record for the given id in URL and redirects to /viewemp */    
    @RequestMapping(value="/deleteRec/{id}",method = RequestMethod.GET)    
    public String delete(@PathVariable int id){    
        dao.deleteRecensione(id);   
        return "redirect:/amministraRecensioni";    
    } 
    
    /* It displays object data into form for the given id.   
     * The @PathVariable puts URL data into variable.*/    
    @RequestMapping(value="/editRec/{id}")    
    public String edit(@PathVariable int id, Model m){    
        Recensione rec=dao.getRecById(id);    
        m.addAttribute("command",rec);  
        return "modificaRecensione";    
    } 
    
    /* It updates model object. */    
    @RequestMapping(value="/editsalva",method = RequestMethod.POST)    
    public String editsave(@ModelAttribute("rec") Recensione rec){    
        dao.update(rec);    
        return "redirect:/amministraRecensioni";    
    } 
	
	
}
