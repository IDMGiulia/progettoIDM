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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import idm.beans.Candidato;
import idm.dao.CanDao;


@Controller
public class SeniorController {
	
	@Autowired
	CanDao can;
	
	
	
	@RequestMapping("/seniorSelection")  
	public String display()  
	{  
		return "seniorSelection";  
	}
	
	 //link al form di candidatura Senior 
	@RequestMapping("/candidaturaSen")    
	public String showformSen(Model m){   
		Candidato senior= new Candidato();
		m.addAttribute("sen", senior);  
		return "senior_form";   
	} 
	
	// elenco di tutte le competenze "base"
		 @ModelAttribute("webFrameworkList1")
		   public List<String> getWebFrameworkList() {
		      List<String> webFrameworkList = new ArrayList<String>();
		      webFrameworkList.add("Java");
		      webFrameworkList.add("Javascript");
		      webFrameworkList.add("Angular JS");
		      webFrameworkList.add("HTML/CSS");
		      webFrameworkList.add("SQL");
		      return webFrameworkList;
		   }
	
	/*It saves object into database. The @ModelAttribute puts request data  
	 *  into model object. You need to mention RequestMethod.POST method   
	 *  because default request is GET*/    
	@RequestMapping(value="/saveSenior",method = RequestMethod.POST)    
	public String saveSen(@Valid @ModelAttribute("sen") Candidato sen, BindingResult result, 
			SessionStatus status,Model m){ 
	    //Check validation errors
	    if (result.hasErrors()) {   
	        return "senior_form";
	    }
	    try {
	    can.salvaSen(sen); 
	    }catch (Exception e) {
	    	return "senior_form";
		}
		return "senior_cv";//will derict to canconf   
	} 
	
	//restituisce la tabella con tutti i senior candidati
		@RequestMapping("/amministraSenior")    
	    public String viewemp(Model m){    
	        List<Candidato> list=can.getCandidatoForAnzianit("Senior");   
	        m.addAttribute("list",list);  
	        return "amministraSenior";    
	    }
		
		/* It deletes record for the given id in URL and redirects to /amministraSenior */    
	    @RequestMapping(value="/deletesen/{id}",method = RequestMethod.GET)    
	    public String delete(@PathVariable int id){    
	        can.deleteCandidato(id);  
	        return "redirect:/amministraSenior";    
	    } 
	    
	    /* It displays object data into form for the given id.   
	     * The @PathVariable puts URL data into variable.*/    
	    @RequestMapping(value="/editsen/{id}")    
	    public String edit(@PathVariable int id, Model m){    
	        Candidato senior = can.getCanById(id);
	        m.addAttribute("command",senior );  
	        return "senEditForm";    
	    } 
	    
	    /* It updates model object. */    
	    @RequestMapping(value="/editsaveSenior",method = RequestMethod.POST)    
	    public String editsave(@ModelAttribute("sen") Candidato sen){    
	        can.update(sen);
	        return "redirect:/amministraSenior";    
	    } 
	    
		@RequestMapping(value="/select")    
	    public String viewSenior(@RequestParam("sede") String sede, @RequestParam("competenza") String compe,
	        @RequestParam("stato") String stato,@RequestParam("posizioneLav") String pos,Model m){ 
	    List<Candidato> list= new ArrayList<>();
	    System.out.println(sede+" "+compe+" "+stato+" "+pos);
	    list=can.getSeniorForParameter(sede, compe+",", stato,pos);
	      m.addAttribute("list",list); 
	         return "amministraSenior";    
	  }
}
