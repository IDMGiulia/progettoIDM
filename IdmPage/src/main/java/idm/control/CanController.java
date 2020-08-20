package idm.control;


import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
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

import idm.beans.Amministrazione;
import idm.beans.Candidato;
import idm.beans.Recensione;
import idm.dao.AmministrazioneDao;
import idm.dao.CanDao;
import idm.dao.RecensioneDao;

@Controller    
public class CanController {

	@Autowired    
	CanDao dao;
	@Autowired    
	RecensioneDao Rdao;
	@Autowired    
	AmministrazioneDao aDao;

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	//link al form di candidatura Senior 
	@RequestMapping("/download/{id}")    
	public String download (@PathVariable int id,Model m){ 
		Candidato candidato = dao.getCanById(id);
		String cv= candidato.getCv();
		if(cv == null)
			return "cvErrore";
		else {
			m.addAttribute("cv",candidato.getCv());
			return "download";   
		}
	} 

	//link al form di candidatura Senior 
	@RequestMapping("/login")    
	public String login (Model m){   
		Amministrazione amministrazione= new Amministrazione();
		m.addAttribute("log", amministrazione);  
		return "login";   
	} 


	/*It saves object into database. The @ModelAttribute puts request data  
	 *  into model object. You need to mention RequestMethod.POST method   
	 *  because default request is GET*/    
	@RequestMapping(value="/log",method = RequestMethod.POST)    
	public String log(@Valid @ModelAttribute("log") Amministrazione amministrazione, Model m){ 

		Optional<Amministrazione> sara = aDao.login(amministrazione.getUsername(), amministrazione.getPassword());
		String token;
		if(sara.isPresent()) {
			do {
				String toke= sara.get().getUsername()+sara.get().getPassword()+LocalDateTime.now();
				PasswordEncoder passwordEncoder=this.passwordEncoder();
				token = passwordEncoder.encode(toke);
			}
			while(token.contains("/")||token.contains("."));
			sara.get().setToken(token);
			aDao.salva(sara.get());
			m.addAttribute("token",token);
			return "logindopo";}//will derict to canconf   }
		else {
			return "login";
		}
	}

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
	@RequestMapping("/selezione/{anz}/{token}")  
	public String selezione(@PathVariable String anz, @PathVariable String token,Model m)  
	{  
		if(aDao.verificaToken(token).isPresent()) {
			m.addAttribute("anz", anz);
			m.addAttribute("token", token);
			return "selection";  
		}
		return "redirect:/login";

	}

	//invia da una pagina all'altra
	@RequestMapping("/cambia/{anz}/{token}")  
	public String cambia(@PathVariable String anz,@PathVariable String token)  
	{  
		if(aDao.verificaToken(token).isPresent()) {
			if(anz.equals("Academy")) {
				String url ="redirect:/amministraSenior/"+token;
				return url;}
			else {
				String url ="redirect:/amministrazione/"+token;
				return url;
			} 

		}
		return "redirect:/login";
	}

	// Link che porta dal canconf.jsp alla pagina di conferma finale (response)
	@RequestMapping("/risposta/{cv}")  
	public String risposta(@PathVariable String cv,Model m)  
	{  
		cv=cv.replace("£",".");
		dao.salvaNFile(cv);
		m.addAttribute("nome",cv.split("_")[2]);
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

	@RequestMapping("/amministrazione/{token}")    
	public String amministrazione(@PathVariable String token, Model m){
		System.out.println(token);
		if(aDao.verificaToken(token).isPresent()) {
			String anzianit="Academy";
			List<Candidato> list=dao.getCandidatoForAnzianit(anzianit);
			m.addAttribute("anz", anzianit);
			m.addAttribute("list",list); 
			m.addAttribute("token",token);
			return "amministrazione";    }

		return "redirect:/login";
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
		statoCand.add("  Scartato");
		statoCand.add("Eliminato");
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
	public List<String> WebFrameworkList() {
		List<String> webFrameworkList = new ArrayList<String>();
		webFrameworkList.add("Java");
		webFrameworkList.add("Javascript");
		webFrameworkList.add("Angular JS");
		webFrameworkList.add("HTML/CSS");
		webFrameworkList.add("SQL");
		return webFrameworkList;
	}
	
	// elenco di tutte le competenze "base"
			@ModelAttribute("linguaggi")
			public List<String> linguaggi() {
				List<String> competenze = new ArrayList<String>();
				competenze.add("Java");
				competenze.add("Javascript");
				competenze.add("Angular JS");
				competenze.add("HTML/CSS");
				competenze.add("SQL");
				competenze.add("Python");
				competenze.add("C");
				competenze.add("C++");
				return competenze;
			}	
			
			// elenco di tutte le competenze "base"
			@ModelAttribute("database")
			public List<String> database() {
				List<String> competenze = new ArrayList<String>();
				competenze.add("MySql");
				competenze.add("HeidiSQL");
				competenze.add("MongoDB");
				competenze.add("Oracle");
				return competenze;
			}
		
			// elenco di tutte le competenze "base"
			@ModelAttribute("framework")
			public List<String> framework() {
				List<String> competenze = new ArrayList<String>();
				competenze.add("Angula JS");
				competenze.add("Hibernate");
				competenze.add("Spring");
				competenze.add("Spring MVC");
				return competenze;
			}
			
			// elenco di tutte le competenze "base"
			@ModelAttribute("software")
			public List<String> software() {
				List<String> competenze = new ArrayList<String>();
				competenze.add("Eclipse");
				competenze.add("Maven");
				competenze.add("Struts");
				competenze.add("Soap UI");
				competenze.add("Atom");
				competenze.add("Spring Tool Suite");
				return competenze;
			}
			
			// elenco di tutte le competenze "base"
			@ModelAttribute("altro")
			public List<String> altro() {
				List<String> competenze = new ArrayList<String>();
				competenze.add("Android");
				competenze.add("IOS");
				competenze.add("GlassFish");
				competenze.add("TomCat");
				return competenze;
			}
	
	// elenco di tutte le competenze "base"
	@ModelAttribute("competenze")
	public List<String> competenze() {
		List<String> competenze = new ArrayList<String>();
		competenze.add("Java");
		competenze.add("Javascript");
		competenze.add("Angular JS");
		competenze.add("HTML/CSS");
		competenze.add("SQL");
		competenze.add("Python");
		competenze.add("C");
		competenze.add("C++");
		competenze.add("MySql");
		competenze.add("HeidiSQL");
		competenze.add("MongoDB");
		competenze.add("Oracle");
		competenze.add("Angula JS");
		competenze.add("Hibernate");
		competenze.add("Spring");
		competenze.add("Spring MVC");
		competenze.add("Eclipse");
		competenze.add("Maven");
		competenze.add("Struts");
		competenze.add("Soap UI");
		competenze.add("Atom");
		competenze.add("Spring Tool Suite");
		competenze.add("Android");
		competenze.add("IOS");
		competenze.add("GlassFish");
		competenze.add("TomCat");
		return competenze;
	}

	//link al form di candidatura Academy
	@RequestMapping("/candidaturaAc")    
	public String candidaturaAc(Model m){   
		Candidato candidato= new Candidato();
		m.addAttribute("can", candidato);  
		return "ac_form";   
	} 
	
	//link al form di aggiornameto candidato
		@RequestMapping(value="/aggiorna",method = RequestMethod.POST)    
		public String aggiorna(@ModelAttribute("command") Candidato can, Model m){   
			dao.salva(can);
			return "ac_cv";  
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
	@RequestMapping(value="annullaCan/{anzianit}/{token}",method = RequestMethod.GET)    
	public String annullaCan(@PathVariable String anzianit, @PathVariable String token){   
		if(aDao.verificaToken(token).isPresent()) {
			if(anzianit.equals("Academy")) {
				String url ="redirect:/amministrazione/"+token;
				return url;
			}
			else {
				String url ="redirect:/amministraSenior/"+token;
				return url;}
		}
		return "redirect:/login";
	} 

	/* It deletes record for the given id in URL and redirects to /viewemp */    
	@RequestMapping(value="/deleteemp/{id}/{token}",method = RequestMethod.GET)    
	public String deleteEmp(@PathVariable int id, @PathVariable String token){   
		if(aDao.verificaToken(token).isPresent()) {
			if(dao.getCanById(id).getAnzianit().equals("Academy")) {
				dao.deleteCandidato(id);
				String url ="redirect:/amministrazione/"+token;
				return url;
			}
			else {
				dao.deleteCandidato(id);
				String url ="redirect:/amministraSenior/"+token;
				return url;}
		}
		return "redirect:/login";
	} 

	/* It displays object data into form for the given id.   
	 * The @PathVariable puts URL data into variable.*/    
	@RequestMapping(value="/editemp/{id}/{token}")    
	public String editTemp(@PathVariable int id, @PathVariable String token, Model m){   
		if(aDao.verificaToken(token).isPresent()) {
			Candidato emp=dao.getCanById(id); 
			m.addAttribute("command",emp);  
			m.addAttribute("token",token);
			return "canEditForm";   }
		return "redirect:/login";
	} 

	/* It updates model object. */    
	@RequestMapping(value="/editsave/{token}",method = RequestMethod.POST)    
	public String editSave(@PathVariable String token, @ModelAttribute("can") Candidato can){ 
		if(aDao.verificaToken(token).isPresent()) {
			if(can.getNote().isEmpty()) {
				if(!can.getNuovaNota().isEmpty())
					can.setNote(LocalDateTime.now()+"     "+can.getNuovaNota());}
			else {
				if(!can.getNuovaNota().isEmpty())
					can.setNote(can.getNote()+"\n"+LocalDateTime.now()+"     "+can.getNuovaNota());
				}
			dao.update(can);  
			if(can.getAnzianit().equals("Academy")) {
				String url ="redirect:/amministrazione/"+token;
				return url; }
			else {
				String url ="redirect:/amministraSenior/"+token;
				return url;
			}}
		return "redirect:/login";
	} 

	//link al form di candidatura Senior 
	@RequestMapping("/candidaturaSen")    
	public String candidaturaSen(Model m){   
		Candidato senior= new Candidato();
		m.addAttribute("sen", senior);  
		return "senior_form";   
	} 

	/*It saves object into database. The @ModelAttribute puts request data  
	 *  into model object. You need to mention RequestMethod.POST method   
	 *  because default request is GET*/    
	@RequestMapping(value="/saveSenior",method = RequestMethod.POST)    
	public String saveSenior(@Valid @ModelAttribute("sen") Candidato sen, BindingResult result, 
			SessionStatus status,Model m){ 
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
	@RequestMapping("/amministraSenior/{token}")    
	public String amministraSenior(@PathVariable String token,Model m){ 
		if(aDao.verificaToken(token).isPresent()) {
			String anzianit="Senior";
			List<Candidato> list=dao.getCandidatoForAnzianit(anzianit);
			m.addAttribute("anz", anzianit);   
			m.addAttribute("list",list); 
			m.addAttribute("token",token);
			return "amministrazione";    
		}

		return "redirect:/login";
	}

	@RequestMapping(value="/select/{anz}/{token}")    
	public String select(@PathVariable String anz,@PathVariable String token,@RequestParam("sede") String sede, @RequestParam("competenza") List<String> compe,
			@RequestParam("stato") String stato,@RequestParam("posizioneLav") String pos,@RequestParam("provincia") String prov,Model m){ 
		List<Candidato> list= new ArrayList<>();
		list=dao.getForParameter(anz,sede, compe, stato,pos,prov);
		m.addAttribute("list",list); 
		return "amministrazione";    
	}

	//link alla pagina con i pulsanti
	@RequestMapping("/ritorna")  
	public String ritorna()  
	{  
		return "logindopo";  
	}
}