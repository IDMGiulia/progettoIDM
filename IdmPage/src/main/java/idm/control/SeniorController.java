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

import idm.beans.Senior;
import idm.dao.SeniorDao;

@Controller
public class SeniorController {
	
	@Autowired
	SeniorDao dao;
	
	@RequestMapping("/seniorSelection")  
	public String display()  
	{  
		return "seniorSelection";  
	}
	
	 //link al form di candidatura Senior 
	@RequestMapping("/candidaturaSen")    
	public String showformSen(Model m){   
		Senior senior= new Senior();
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
	public String saveSen(@Valid @ModelAttribute("sen") Senior sen, BindingResult result, 
			SessionStatus status,Model m){ 
	    //Check validation errors
	    if (result.hasErrors()) {   
	        return "senior_form";
	    }
	    try {
	    dao.salva(sen); 
	    }catch (Exception e) {
	    	return "senior_form";
		}
		return "senior_cv";//will derict to canconf   
	} 
	
	//restituisce la tabella con tutti i senior candidati
		@RequestMapping("/amministraSenior")    
	    public String viewemp(Model m){    
	        List<Senior> list=dao.getSenior();    
	        m.addAttribute("list",list);  
	        return "amministraSenior";    
	    }
		
		/* It deletes record for the given id in URL and redirects to /amministraSenior */    
	    @RequestMapping(value="/deletesen/{id}",method = RequestMethod.GET)    
	    public String delete(@PathVariable int id){    
	        dao.deleteSenior(id);    
	        return "redirect:/amministraSenior";    
	    } 
	    
	    /* It displays object data into form for the given id.   
	     * The @PathVariable puts URL data into variable.*/    
	    @RequestMapping(value="/editsen/{id}")    
	    public String edit(@PathVariable int id, Model m){    
	        Senior senior =dao.getSenById(id);
	        m.addAttribute("command",senior );  
	        return "senEditForm";    
	    } 
	    
	    /* It updates model object. */    
	    @RequestMapping(value="/editsaveSenior",method = RequestMethod.POST)    
	    public String editsave(@ModelAttribute("sen") Senior sen){    
	        dao.update(sen);    
	        return "redirect:/amministraSenior";    
	    } 
	    
		@RequestMapping(value="/select")    
	    public String viewSenior(@RequestParam("sede") String sede, @RequestParam("competenza") String compe,
	        @RequestParam("stato") String stato,@RequestParam("posizioneLav") String pos,Model m){ 
	    List<Senior> list= new ArrayList<>();
	    list=dao.getSeniorForParameter(sede, compe+",", stato,pos);
	      m.addAttribute("list",list); 
	         return "amministraSenior";    
	  }
}
