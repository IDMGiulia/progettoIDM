package idm.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;  
import org.springframework.jdbc.core.RowMapper;

import idm.beans.CanComp;
import idm.beans.Candidato;
import idm.beans.Competenze;    


public class CanDao {
	StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();  
    
	Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();  
	  
	SessionFactory factory = meta.getSessionFactoryBuilder().build();
	JdbcTemplate template;   

	public void setTemplate(JdbcTemplate template) {    
		this.template = template;    
	}

	public void salva(Candidato candidato) {
		
		int num = candidato.getComp().length;
		String descrizione=candidato.getCompetenze();
		String [] compBox=descrizione.split(",");
		List<Competenze> webFrameworkList = new ArrayList<Competenze>();
		for (String el: compBox) {
			if(el.isEmpty()) {
				break;
			}
			Session session2 = factory.openSession();  
			Transaction t2 = session2.beginTransaction();
			Competenze competenze= new Competenze();
			competenze.setCompetenza(el.toUpperCase());
			competenze.setTipo("personale");
			webFrameworkList.add(competenze);
			session2.saveOrUpdate(competenze);
			t2.commit();
			session2.close();
		}
		descrizione=concatenaCompetenze(candidato, webFrameworkList, num);
		candidato.setCompetenze(descrizione);
		candidato.setFavoriteFrameworks(webFrameworkList);
		candidato.setStato("Nuova");
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();
		session.saveOrUpdate(candidato);
		t.commit();
		session.close();

	}
	
	public String concatenaCompetenze(Candidato candidato,List<Competenze> webFrameworkList, int lunghezza) {
		String[] comp = candidato.getComp();
		String descrizione=candidato.getCompetenze();
		for (int i=0; i<lunghezza;i++) {
			Session session1 = factory.openSession();  
			Transaction t1 = session1.beginTransaction();
			descrizione=descrizione.concat(", "+comp[i]);
			Competenze competenze= new Competenze();
			competenze.setCompetenza(comp[i]);
			competenze.setTipo("base");
			webFrameworkList.add(competenze);
			session1.saveOrUpdate(competenze);
			t1.commit();
			session1.close();
		}
		return descrizione;
	}
	//metodo per visualizzare tutti i candidati
	public List<Candidato> getCandidatos(){    
		return template.query("select * from candidati",new RowMapper<Candidato>(){    
			public Candidato mapRow(ResultSet rs, int row) throws SQLException {    
				Candidato e=new Candidato();    
				e.setId(rs.getInt(1));    
				e.setNome(rs.getString(2));  
				e.setCognome(rs.getString(3));
				e.setEmail(rs.getString(4));
				e.setTelefono(rs.getString(5));
				e.setCompetenze(rs.getString(6));  
				e.setLuogoCandidatura(rs.getString(7));
				e.setStato(rs.getString(8));
				e.setNote(rs.getString(9));
				e.setLivello(rs.getString(10));
				e.setPaeseDiploma(rs.getString(11));
				e.setPercorso(rs.getString(12));
				return e;    
			}    
		});    
	}
	//metodo per visualizzare tutte le competenze
	public List<CanComp> getComp(){    
		return template.query("select * from can_comp",new RowMapper<CanComp>(){    
			public CanComp mapRow(ResultSet rs, int row) throws SQLException {    
				CanComp c=new CanComp();    
				c.setCanId(rs.getInt(1));    
				c.setCompetenza(rs.getString(3)); 
				return c;    
			}    
		});    
	}
	
	//metodo per eliminare un candidato
	public int deleteCandidato(int id){    
		String sql="delete from candidati where id="+id+""; 
		String sql1="delete from can_comp where can_id="+id+"";
		template.update(sql1); 
		return template.update(sql);    
	} 
	
	//metodo per selezionare i candidati con una certa sede
	public List<Candidato> getCandidatoForSede(String sede){    
	    List<Candidato> e = new ArrayList<>();
	    e = this.getCandidatos();
	    List<Candidato> risultato = new ArrayList<>();
	    e.stream()
	      .filter(x->x.getLuogoCandidatura().equals(sede)||x.getLuogoCandidatura().equals("E"))
	      .forEach(x->risultato.add(x));
	        return risultato;    
	  }
	
	//metodo per selezionare i candidati con una certa stato
	public List<Candidato> getCandidatoForStato(String stato, List<Candidato> e){ 
		if(stato.compareTo("*")==0) {
			return e;
		}
	    List<Candidato> risultato = new ArrayList<>();
	    e.stream()
	      .filter(x->x.getStato().equals(stato))
	      .forEach(x->risultato.add(x));
	        return risultato;    
	  }
	
	public List<Candidato> getCandidatoComp(String comp, List<Candidato> e){ 
		if(comp.compareTo("*")==0) {
			return e;
		}
	    List<Candidato> risultato = new ArrayList<>();
	    e.stream()
	      .filter(x->x.getCompetenze().contains(comp))
	      .forEach(x->risultato.add(x));
	        return risultato;    
	  }
	
	public List<Candidato> getCandidatoForParameter(String sede,List<String> competenze, String stato){   
	    List<Candidato> candidato= new ArrayList <Candidato>();
	    List<Candidato> risultato = new ArrayList<>();
	    candidato = this.getCandidatos();
	    List<CanComp> e = new ArrayList<>();
	    e= this.getComp();
	    for(Candidato c:candidato) {
	      List<String> comp = new ArrayList<>();
	      e.stream().filter(x->x.getCanId()==c.getId()).forEach(x-> comp.add(x.getCompetenza()));
	      c.setConoscenze(comp);
	      }
	    risultato= candidato.stream()
	        .filter(x->x.getConoscenze().containsAll(competenze)
	            &&(x.getLuogoCandidatura().equals(sede)||x.getLuogoCandidatura().equals("E"))
	            &&(x.getStato().equals(stato)||stato.isEmpty()))
	        .collect(Collectors.toList());
	    
	    
	        return risultato;    
	  }
	  
//		//metodo per selezionare i candidati con una certa competenza 
//	  public List<Candidato> getCandidatoForCompetenze(List<String> competenze){    
//	    List<Candidato> e = new ArrayList<>();
//	    e = this.getCandidatos();
//	    List<Candidato> risultato = new ArrayList<>();
//	    e.stream()
//	      .filter(x->x.getFavoriteFrameworks().containsAll(competenze))
//	      .forEach(x->risultato.add(x));
//	        return risultato;    
//	  }
//	  
//	  //metodo per selezionare i candidati con una certa competenza e sede
//	  public List<Candidato> getCandidatoForCompetenzeAndSede(List<String> competenze,String sede){    
//	    List<Candidato> e = new ArrayList<>();
//	    e = this.getCandidatos();
//	    List<Candidato> risultato = new ArrayList<>();
//	    e.stream()
//	      .filter(x->x.getFavoriteFrameworks().containsAll(competenze)&&(x.getLuogoCandidatura().equals(sede)||x.getLuogoCandidatura().equals("E")))
//	      .forEach(x->risultato.add(x));
//	        return risultato;    
//	  }

	public void update(Candidato can) {
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();
		session.update(can);
		t.commit();
		session.close();
		
	}

	public Candidato getCanById(int id) {
		String sql="select * from candidati where id=?";    
	    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Candidato>(Candidato.class));
	}

	/*
	public String gestisciComp (String [] framework) {
		String elementoString="";
		for ( String x: framework) {
			elementoString=elementoString.concat(x);
		}
		return elementoString;
	}
		

	public int salva(Candidato p){    
		String competenze= p.getCompetenze().concat(gestisciComp(p.getFavoriteFrameworks()));
		String sql="insert into candidati(nome,cognome,email,telefono,competenze) values('"+p.getNome()+"','"+p.getCognome()+"','"+p.getEmail()+"','"+p.getTelefono()+"','"+competenze+"')";  
		return template.update(sql);    
	}
	
public int update(Candidato p){  
    String sql="update Emp99 set name='"+p.getName()+"', salary="+p.getSalary()+",designation='"+p.getDesignation()+"' where id="+p.getId()+"";    
    return template.update(sql);    
}   
	public int delete(int id){    
		String sql="delete from Emp99 where id="+id+"";    
		return template.update(sql);    
	}    
	/*public Emp getEmpById(int id){    
    String sql="select * from candidati where id=?";    
    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Emp>(Emp.class));    
}   
	
	public static void main(String[] args) {
		//idm.dao.CanDao;
	} */   
}
