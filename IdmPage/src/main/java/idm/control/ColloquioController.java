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

import idm.beans.Colloquio;
import idm.beans.Senior;
import idm.dao.CanDao;
import idm.dao.ColloquioDao;
import idm.dao.SeniorDao;

@Controller
public class ColloquioController {
	
	@Autowired    
	ColloquioDao dao;
	@Autowired
	SeniorDao senior;
	@Autowired
	CanDao can;
	
	 //collega candidato all'elenco dei colloqui per i senior"  
    @RequestMapping(value="/colloqui/{id}")    
    public String crea(@PathVariable int id, Model m){    
    	List<Colloquio> list=dao.getColloquiCan("S".concat("_"+id));
    	Senior s=senior.getSenById(id);
        m.addAttribute("colloqui",list);  
        m.addAttribute("senior",s); 
        return "amministraColloqui";    
    } 
    
    @RequestMapping(value="/colloquio/{id}")    
    public String creaJ(@PathVariable int id, Model m){    
    	List<Colloquio> list=dao.getColloquiCan("J".concat("_"+id));
    	Candidato c=can.getCanById(id);
        m.addAttribute("colloqui",list);  
        m.addAttribute("cand",c); 
        return "amministraColloquiJ";    
    } 
    
    //permette di aggiungere un nuovo colloquio
    @RequestMapping(value="/aggiungiColloqui/{id}")
    public String aggiungic(@PathVariable int id, Model m){   
    	Colloquio col=new Colloquio();
    	Senior s=senior.getSenById(id);
        m.addAttribute("col",col);  
        m.addAttribute("senior",s); 
        return "formColloquio";    
    } 
    
    //permette di aggiungere un nuovo colloquio per i candidati
    @RequestMapping(value="/aggiungiColloquio/{id}")
    public String aggiungicJ(@PathVariable int id, Model m){   
    	Colloquio col=new Colloquio();
    	Candidato c= can.getCanById(id);
        m.addAttribute("col",col);  
        m.addAttribute("cand",c); 
        return "formColloquioJ";    
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
		return "redirect:/amministraSenior"; 
	} 
	
	@RequestMapping(value="/aggiungiJ",method = RequestMethod.POST)    
	public String salvaColJ(@Valid @ModelAttribute("col") Colloquio col, BindingResult result, 
			SessionStatus status,Model m){ 
	    //Check validation errors
	    if (result.hasErrors()) {   
	        return "formColloquioJ";
	    }
	    try {
	    dao.inserisci(col);
	    }catch (Exception e) {
	    	return "formColloquioJ";
		} 
		return "redirect:/amministrazione"; 
	} 
    
	// elenco di tutte le competenze "base"
		 @ModelAttribute("tipoColloquio")
		   public List<String> getWebFrameworkList() {
		      List<String> tipoColloquio = new ArrayList<String>();
		      tipoColloquio.add("Conoscitivo");
		      tipoColloquio.add("Tecnico");
		      tipoColloquio.add("Presso cliente");
		      tipoColloquio.add("Finale");
		      tipoColloquio.add("Altro");
		      return tipoColloquio;
		   }
	
}
