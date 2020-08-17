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
import idm.dao.AmministrazioneDao;
import idm.dao.RecensioneDao;

@Controller
public class RecensioneController {

	@Autowired    
	RecensioneDao dao;
	@Autowired    
	AmministrazioneDao aDao;

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
	@RequestMapping("/amministraRecensioni/{token}")    
	public String viewemp(@PathVariable String token, Model m){   
		if(aDao.verificaToken(token).isPresent()) {
			List<Recensione> list=dao.getRecensioni();    
			m.addAttribute("list",list); 
			m.addAttribute("token",token);

			return "amministraRecensioni";    }
		return "redirect:/login";
	}

	/* It deletes record for the given id in URL and redirects to /viewemp */    
	@RequestMapping(value="/deleteRec/{id}/{token}",method = RequestMethod.GET)    
	public String delete( @PathVariable int id,@PathVariable String token){ 
		if(aDao.verificaToken(token).isPresent()) {
			dao.deleteRecensione(id); 
			String url= "redirect:/amministraRecensioni/"+token;
			return url;   }
		return "redirect:/login";
	} 

	/* It displays object data into form for the given id.   
	 * The @PathVariable puts URL data into variable.*/    
	@RequestMapping(value="/editRec/{id}/{token}")    
	public String edit(@PathVariable int id,@PathVariable String token, Model m){  
		if(aDao.verificaToken(token).isPresent()) {
			Recensione rec=dao.getRecById(id);    
			m.addAttribute("command",rec);  
			m.addAttribute("token",token);

			return "modificaRecensione";  }  
		return "redirect:/login";
	} 

	/* It updates model object. */    
	@RequestMapping(value="/editsalva/{token}",method = RequestMethod.POST)    
	public String editsave(@PathVariable String token,@ModelAttribute("rec") Recensione rec){    
		if(aDao.verificaToken(token).isPresent()) {
			dao.update(rec);    
			String url= "redirect:/amministraRecensioni/"+token;
			return url;    } 
		return "redirect:/login";
	} 	

}
