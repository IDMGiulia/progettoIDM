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

import idm.beans.Candidato;
import idm.beans.Recensione;
import idm.dao.CanDao;
import idm.dao.RecensioneDao;

@Controller    
public class CanController {

	@Autowired    
	CanDao dao;
	@Autowired    
	RecensioneDao Rdao;

	//link iniziale che manda alla home
	@RequestMapping("/presentazione")  
	public String display(Model m)  
	{  
		List<Recensione> list= new ArrayList<>();
		list=Rdao.getApprovate();
		m.addAttribute("rec",list); 
		return "ac_home";  
	}

	//link alla pagina senior
	@RequestMapping("/joinus")  
	public String joinus()  
	{  
		return "joinus";  
	}

	//invia alla pagina per selezionare alcuni candidati
	@RequestMapping("/selezione/{anz}")  
	public String selezione(@PathVariable String anz,Model m)  
	{  
		m.addAttribute("anz", anz);
		return "selection";  
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

	//restituisce la tabella con tutti i candidati
	@RequestMapping("/amministrazione")    
	public String viewemp(Model m){
		String anzianit="Academy";
		List<Candidato> list=dao.getCandidatoForAnzianit(anzianit);
		m.addAttribute("anz", anzianit);
		m.addAttribute("list",list);  
		return "amministrazione";    
	}

	// elenco di tutti gli stadi della selezione
	@ModelAttribute("Sede")
	public List<String> Sede() {
		List<String> sede = new ArrayList<String>();
		sede.add("Entrambi");
		sede.add("Torino");
		sede.add("Milano");
		return sede;
	}

	// elenco di tutti gli stadi della selezione
	 @ModelAttribute("StatoCand")
	   public List<String> StatoCand() {
	      List<String> statoCand = new ArrayList<String>();
	      statoCand.add("Nuova");
	      statoCand.add(" Selezione in corso");
	      statoCand.add(" Disponibile");
	      statoCand.add("  Non disponibile");
	      return statoCand;
	   }
	 
	// elenco di tutte le posizioni possibili
	@ModelAttribute("Posizioni")
	public List<String> Posizioni() {
		List<String> posizioni = new ArrayList<String>();
		posizioni.add("Senior Java Developer");
		posizioni.add("Senior .NET Developer");
		posizioni.add("Senior System Application Engineer");
		posizioni.add("Tutte le posizioni");
		return posizioni;
	}

	// elenco di tutte le province possibili
	@ModelAttribute("Provincia")
	public List<String> Provincia() {
		List<String> provincia = new ArrayList<String>();
		provincia.add("Agrigento");
		provincia.add("Alessandria");
		provincia.add("Ancona");
		provincia.add("Aosta");
		provincia.add("Arezzo");
		provincia.add("Ascoli Piceno");
		provincia.add("Asti");
		provincia.add("Avellino");
		provincia.add("Bari");
		provincia.add("Barletta-Andria-Trani");
		provincia.add("Belluno");
		provincia.add("Benevento");
		provincia.add("Bergamo");
		provincia.add("Biella");
		provincia.add("Bologna");
		provincia.add("Bolzano");
		provincia.add("Brescia");
		provincia.add("Brindisi");
		provincia.add("Cagliari");
		provincia.add("Caltanissetta");
		provincia.add("Campobasso");
		provincia.add("Carbonia-Iglesias");
		provincia.add("Caserta");
		provincia.add("Catania");
		provincia.add("Catanzaro");
		provincia.add("Chieti");
		provincia.add("Como");
		provincia.add("Cosenza");
		provincia.add("Cremona");
		provincia.add("Crotone");
		provincia.add("Cuneo");
		provincia.add("Enna");
		provincia.add("Fermo");
		provincia.add("Ferrara");
		provincia.add("Firenze");
		provincia.add("Foggia");
		provincia.add("Forli-Cesena");
		provincia.add("Frodinone");
		provincia.add("Genova");
		provincia.add("Gorizia");
		provincia.add("Grosseto");
		provincia.add("Imperia");
		provincia.add("Isernia");
		provincia.add("La Spezia");
		provincia.add("L'Aquila");
		provincia.add("Latina");
		provincia.add("Lecce");
		provincia.add("Lecco");
		provincia.add("Livorno");
		provincia.add("Lodi");
		provincia.add("Lucca");
		provincia.add("Macerata");
		provincia.add("Mantova");
		provincia.add("Massa-Carrara");
		provincia.add("Matera");
		provincia.add("Medio Campidano");
		provincia.add("Messina");
		provincia.add("Milano");
		provincia.add("Modena");
		provincia.add("Monza e della Brianza");
		provincia.add("Napoli");
		provincia.add("Novara");
		provincia.add("Nuoro");
		provincia.add("Ogliastra");
		provincia.add("Olbia-Tempio");
		provincia.add("Padova");
		provincia.add("Palermo");
		provincia.add("Parma");
		provincia.add("Pavia");
		provincia.add("Perugia");
		provincia.add("Pesaro e Urbino");
		provincia.add("Pescara");
		provincia.add("Piacena");
		provincia.add("Pisa");
		provincia.add("Pistoia");
		provincia.add("Pordenone");
		provincia.add("Potenza");
		provincia.add("Prato");
		provincia.add("Ragusa");
		provincia.add("Ravenna");
		provincia.add("Reggio Calabria");
		provincia.add("Reggio Emilia");
		provincia.add("Rieti");
		provincia.add("Rimini");
		provincia.add("Roma");
		provincia.add("Rovigo");
		provincia.add("Salerno");
		provincia.add("Sassari");
		provincia.add("Savona");
		provincia.add("Siena");
		provincia.add("Siracusa");
		provincia.add("Sondrio");
		provincia.add("Taranto");
		provincia.add("Teramo");
		provincia.add("Terni");
		provincia.add("Torino");
		provincia.add("Trapani");
		provincia.add("Trento");
		provincia.add("Treviso");
		provincia.add("Trieste");
		provincia.add("Udine");
		provincia.add("Varese");
		provincia.add("Venezia");
		provincia.add("Verbano-Cusio-Ossola");
		provincia.add("Vercelli");
		provincia.add("Verona");
		provincia.add("Vibo Valentia");
		provincia.add("Vicenza");
		provincia.add("Viterbo");
		return provincia;
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
		//metodo che controlla se il candidato è già presente
		if(dao.controlla(can)) {
			return "errore";
		}
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
		if(dao.getCanById(id).getAnzianit().equals("Academy")) {
			dao.deleteCandidato(id);
			return "redirect:/amministrazione"; 
		}
		dao.deleteCandidato(id);
		return "redirect:/amministraSenior";
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
		if(can.getAnzianit().equals("Academy"))
			return "redirect:/amministrazione"; 
		else {
			return "redirect:/amministraSenior";
		}
	} 

	//link al form di candidatura Senior 
	@RequestMapping("/candidaturaSen")    
	public String showformSen(Model m){   
		Candidato senior= new Candidato();
		m.addAttribute("sen", senior);  
		return "senior_form";   
	} 

	/*It saves object into database. The @ModelAttribute puts request data  
	 *  into model object. You need to mention RequestMethod.POST method   
	 *  because default request is GET*/    
	@RequestMapping(value="/saveSenior",method = RequestMethod.POST)    
	public String saveSen(@Valid @ModelAttribute("sen") Candidato sen, BindingResult result, 
			SessionStatus status,Model m){ 
		if(dao.controlla(sen)) {
			return "errore";
		}
	    //Check validation errors
	    if (result.hasErrors()) {   
	        return "senior_form";
	    }
	    try {
	    dao.salvaSen(sen); 
	    }catch (Exception e) {
	    	return "senior_form";
		}
		return "senior_cv";//will derict to canconf   
	} 

	//restituisce la tabella con tutti i senior candidati
	@RequestMapping("/amministraSenior")    
	public String viewSen(Model m){ 
		String anzianit="Senior";
		List<Candidato> list=dao.getCandidatoForAnzianit(anzianit);
		m.addAttribute("anz", anzianit);   
		m.addAttribute("list",list);  
		return "amministrazione";    
	}

	@RequestMapping(value="/select/{anz}")    
	public String viewSenior(@PathVariable String anz,@RequestParam("sede") String sede, @RequestParam("competenza") String compe,
			@RequestParam("stato") String stato,@RequestParam("posizioneLav") String pos,@RequestParam("provincia") String prov,Model m){ 
		List<Candidato> list= new ArrayList<>();
		System.out.println(sede+" "+compe+" "+stato+" "+pos);
		list=dao.getForParameter(anz,sede, compe+",", stato,pos,prov);
		m.addAttribute("list",list); 
		return "amministrazione";    
	}
}