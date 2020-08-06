package idm.control;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import idm.beans.Senior;
import idm.dao.SeniorDao;

@Controller
public class SeniorController {
	
	@Autowired
	SeniorDao dao;
	
	
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
		      webFrameworkList.add("Java1");
		      webFrameworkList.add("Javascript1");
		      webFrameworkList.add("Angular JS1");
		      webFrameworkList.add("HTML/CSS1");
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
}
