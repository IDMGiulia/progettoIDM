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
import idm.dao.AmministrazioneDao;
import idm.dao.CanDao;
import idm.dao.ColloquioDao;


@Controller
public class ColloquioController {

	@Autowired    
	ColloquioDao dao;
	@Autowired
	CanDao can;
	@Autowired 
	AmministrazioneDao aDao;

	@RequestMapping(value="/colloquio/{id}/{token}")    
	public String colloquio(@PathVariable int id, @PathVariable String token, Model m){    
		if(aDao.verificaToken(token).isPresent()) {
			List<Colloquio> list=dao.getColloquiCan(id);
			Candidato c=can.getCanById(id);
			m.addAttribute("colloqui",list);  
			m.addAttribute("cand",c);
			m.addAttribute("token",token);

			return "amministraColloqui";   }
		return "redirect:/login";
	} 

	//permette di aggiungere un nuovo colloquio per i candidati
	@RequestMapping(value="/aggiungiColloqui/{id}/{token}")
	public String aggiungiColloqui(@PathVariable int id, @PathVariable String token, Model m){   
		if(aDao.verificaToken(token).isPresent()) {
			Colloquio col=new Colloquio();
			Candidato c= can.getCanById(id);
			m.addAttribute("col",col);  
			m.addAttribute("cand",c); 
			m.addAttribute("token",token);
			return "formColloquio";   } 
		return "redirect:/login";
	} 

	@RequestMapping(value="/aggiungi/{id}/{token}",method = RequestMethod.POST)    
	public String aggiungi(@PathVariable int id, @PathVariable String token,@Valid @ModelAttribute("col") Colloquio col, BindingResult result, 
			SessionStatus status,Model m){ 
		if(aDao.verificaToken(token).isPresent()) {
			m.addAttribute("token",token);
			//Check validation errors
			if (result.hasErrors()) {   
				return "formColloquio";
			}
			dao.inserisci(col);
			List<Colloquio> list=dao.getColloquiCan(id);
			Candidato c=can.getCanById(id);
			m.addAttribute("colloqui",list);  
			m.addAttribute("cand",c);
			return "amministraColloqui"; }
		return "redirect:/login";
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

	/* It displays object data into form for the given id.   
	 * The @PathVariable puts URL data into variable.*/    
	@RequestMapping(value="/editcol/{id}")    
	public String editCol(@PathVariable int id, Model m){   
		Colloquio col=dao.getColById(id); 
		m.addAttribute("col",col);  
		return "ColEditForm";    
	}

	/* It deletes record for the given id in URL and redirects to /viewemp */    
	@RequestMapping(value="/deletecol/{id}",method = RequestMethod.GET)    
	public String delete(@PathVariable int id, Model m){ 
		Colloquio colloquio=dao.getColById(id);
		dao.deleteColloquio(id);
		List<Colloquio> list=dao.getColloquiCan(colloquio.getCandidato());
		Candidato c=can.getCanById(id);
		m.addAttribute("colloqui",list);  
		m.addAttribute("cand",c);
		return "amministraColloqui";
	}

	/* It updates model object. */    
	@RequestMapping(value="/aggiorna",method = RequestMethod.POST)    
	public String aggiorna(@ModelAttribute("col") Colloquio col, Model m){   
		dao.updateCol(col);
		int canId=col.getCandidato();
		List<Colloquio> list=dao.getColloquiCan(canId);
		Candidato c=can.getCanById(canId);
		m.addAttribute("colloqui",list);  
		m.addAttribute("cand",c);
		return "amministraColloqui";  
	}

	/* link per tornare dai colloqui alla tabella corretta*/    
	@RequestMapping(value="/amministra/{id}/{token}")    
	public String Amministrazione(@PathVariable int id,@PathVariable String token){    
		if(aDao.verificaToken(token).isPresent()) {
			if(can.getCanById(id).getAnzianit().equals("Academy")) {
				String url ="redirect:/amministrazione/"+token;
				return url;}
			else {
				String url ="redirect:/amministraSenior/"+token;
				return url;
			} 

		}
		return "redirect:/login";

	}

}
