package idm.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IdmController {
	
// CONTROLLER FOOTER
	
	@RequestMapping("/policy")    
	public String policy () {
		return "footer/policy";
	}
	
	@RequestMapping("/cookie-policy")    
	public String cookiePolicy () {
		return "footer/cookie-policy";
	}
	
	@RequestMapping("/contatti")    
	public String contatti () {
		return "footer/contatti";
	}
	
// CONTROLLER NAVBAR
	
	// CHI SIAMO
	
		@RequestMapping("/mission")    
		public String mission () {
			return "navbar/chi-siamo/mission";
		}
		
		@RequestMapping("/partners")    
		public String partners () {
			return "navbar/chi-siamo/partners";
		}
		
		// CASE STUDIES
		
			@RequestMapping("/case-studies")    
			public String caseStudies () {
				return "navbar/chi-siamo/case-studies/case-studies";
			}
		
			@RequestMapping("/conqord-oil")    
			public String conqordOil () {
				return "navbar/chi-siamo/case-studies/conqord-oil";
			}
			
			@RequestMapping("/gulliver")    
			public String gulliver () {
				return "navbar/chi-siamo/case-studies/gulliver";
			}
			
			@RequestMapping("/mediaset")    
			public String mediaset () {
				return "navbar/chi-siamo/case-studies/mediaset";
			}
			
			@RequestMapping("/ipas")    
			public String ipas () {
				return "navbar/chi-siamo/case-studies/ipas";
			}
			
			@RequestMapping("/unifarma")    
			public String unifarma () {
				return "navbar/chi-siamo/case-studies/unifarma";
			}
		
	// SERVIZI
	
		@RequestMapping("/assistenza")    
		public String assistenza () {
			return "navbar/servizi/assistenza";
		}
	
		@RequestMapping("/consulenza")    
		public String consulenza () {
			return "navbar/servizi/consulenza";
		}
	
		@RequestMapping("/formazione")    
		public String formazione () {
			return "navbar/servizi/formazione";
		}
	
		@RequestMapping("/progetti")    
		public String progetti () {
			return "navbar/servizi/progetti";
		}
	
		@RequestMapping("/supporto")    
		public String supporto () {
			return "navbar/servizi/supporto";
		}
		
		@RequestMapping("/academy")    
		public String academy () {
			return "navbar/servizi/academy";
		}
		
			// ACADEMY
		
			
		
	// SOFTWARE
	
	// SOLUZIONI
	
	//NEWS
	
	//JOINUS
		
}
