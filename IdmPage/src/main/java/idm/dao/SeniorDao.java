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
import idm.beans.Recensione;
import idm.beans.Senior;    


public class SeniorDao {
	StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();  
    
	Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();  
	  
	SessionFactory factory = meta.getSessionFactoryBuilder().build();
	JdbcTemplate template;   

	public void setTemplate(JdbcTemplate template) {    
		this.template = template;    
	}

	public void salva(Senior senior) {
		
		int num = senior.getComp().length;
		String descrizione=senior.getCompetenze();
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
		descrizione=concatenaCompetenze(senior, webFrameworkList, num);
		senior.setCompetenze(descrizione);
		senior.setFavoriteFrameworks(webFrameworkList);
		senior.setStato("Nuova");
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();
		session.saveOrUpdate(senior);
		t.commit();
		session.close();

	}
	
	public String concatenaCompetenze(Senior senior,List<Competenze> webFrameworkList, int lunghezza) {
		String[] comp = senior.getComp();
		String descrizione=senior.getCompetenze();
		for (int i=0; i<lunghezza;i++) {
			Session session1 = factory.openSession();  
			Transaction t1 = session1.beginTransaction();
			if (descrizione.isEmpty() || descrizione.endsWith(","))
				descrizione=descrizione.concat(" "+comp[i]+",");
			else {
				descrizione=descrizione.concat(","+" "+comp[i]+",");
			}
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
	public List<Senior> getSenior(){    
		return template.query("select * from senior",new RowMapper<Senior>(){    
			public Senior mapRow(ResultSet rs, int row) throws SQLException {    
				Senior e=new Senior();    
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
				e.setPosizioneLav(rs.getString(13));
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
	public List<Senior> getCandidatoForSede(String sede){    
	    List<Senior> e = new ArrayList<>();
	    e = this.getSenior();
	    if(sede.contains("E"))
	    	return e;
	    List<Senior> risultato = new ArrayList<>();
	    e.stream()
	      .filter(x->x.getLuogoCandidatura().equals(sede)||x.getLuogoCandidatura().equals("E"))
	      .forEach(x->risultato.add(x));
	        return risultato;    
	  }
	
	//metodo per selezionare i candidati con una certa stato
	public List<Senior> getCandidatoForStato(String stato, List<Senior> e){ 
		if(stato.compareTo("")==0) {
			return e;
		}
	    List<Senior> risultato = new ArrayList<>();
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
	
	public List<Senior> getCandidatoForParameter(String sede,String competenze, String stato){   
	      List<Senior> senior= new ArrayList <Senior>();
	      List<Senior> risultato = new ArrayList<>();
	      senior = this.getSenior();
	      risultato= senior.stream()
	          .filter(x->x.getCompetenze().contains(competenze)
	              &&((x.getLuogoCandidatura().equals(sede)||x.getLuogoCandidatura().contains("E")||sede.contains("E")))
	              &&((x.getStato().equals(stato)||stato.compareTo("")==0)))
	          .collect(Collectors.toList());
	      
	      
	          return risultato;    
	    }
	  
	public void update(Senior sen) {
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();
		session.update(sen);
		t.commit();
		session.close();
		
	}

	public Senior getSenById(int id) {
		String sql="select * from senior where id=?";    
	    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Senior>(Senior.class));
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
