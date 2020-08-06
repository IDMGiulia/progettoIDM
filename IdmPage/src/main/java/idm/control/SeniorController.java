package idm.control;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import idm.beans.Senior;

@Controller
public class SeniorController {
	
	 //link al form di candidatura Senior 
	@RequestMapping("/candidaturaSen")    
	public String showformSen(Model m){   
		Senior senior= new Senior();
		m.addAttribute("sen", senior);  
		return "senior_form";   
	} 
	
	/*It saves object into database. The @ModelAttribute puts request data  
	 *  into model object. You need to mention RequestMethod.POST method   
	 *  because default request is GET*/    
	@RequestMapping(value="/save",method = RequestMethod.POST)    
	public String saveSen(@Valid @ModelAttribute("sen") Senior can, BindingResult result, 
			SessionStatus status,Model m){ 
	    //Check validation errors
	    if (result.hasErrors()) {   
	        return "senior_form";
	    }
	    try {
	    dao.salva(can); 
	    }catch (Exception e) {
	    	return "senior_form";
		}
		return "senior_cv";//will derict to canconf   
	} 
}
