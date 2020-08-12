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
		candidato.setAnzianit("Academy");
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();
		session.saveOrUpdate(candidato);
		t.commit();
		session.close();

	}
	
	public void salvaSen(Candidato senior) {
		
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
		senior.setAnzianit("Senior");
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();
		session.saveOrUpdate(senior);
		t.commit();
		session.close();

	}
	
	public String concatenaCompetenze(Candidato candidato,List<Competenze> webFrameworkList, int lunghezza) {
		String[] comp = candidato.getComp();
		String descrizione=candidato.getCompetenze();
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
	public List<Candidato> getCandidatos(){    
		return template.query("select * from cand",new RowMapper<Candidato>(){    
			public Candidato mapRow(ResultSet rs, int row) throws SQLException {    
				Candidato e=new Candidato();    
				e.setId(rs.getInt(1));    
				e.setNome(rs.getString(2));  
				e.setCognome(rs.getString(3));
				e.setEmail(rs.getString(4));
				e.setTelefono(rs.getString(5));
				e.setLuogoCandidatura(rs.getString(6));
				e.setProvincia(rs.getString(7));
				e.setCompetenze(rs.getString(8));
				e.setStato(rs.getString(9));
				e.setNote(rs.getString(10));
				e.setLivello(rs.getString(11));
				e.setPercorso(rs.getString(12));
				e.setAnzianit(rs.getString(13));
				e.setPosizioneLav(rs.getString(14));
				return e;    
			}    
		});    
	}
	
	//metodo per eliminare un candidato
	public int deleteCandidato(int id){    
		String sql="delete from cand where id="+id+""; 
		String sql1="delete from CanComp where can_id="+id+"";
		template.update(sql1); 
		return template.update(sql);    
	} 
	
	public List<Candidato> getCandidatoForAnzianit(String anzianit){
		List<Candidato> candidato= new ArrayList <Candidato>();
	    List<Candidato> risultato = new ArrayList<>();
	    candidato = this.getCandidatos();
	    risultato= candidato.stream()
		          .filter(x->x.getAnzianit().contains(anzianit))
		          .collect(Collectors.toList());
	    return risultato;
	}
	
	public List<Candidato> getCandidatoForParameter(String sede,String competenze, String stato){   
	      List<Candidato> candidato= new ArrayList <Candidato>();
	      List<Candidato> risultato = new ArrayList<>();
	      candidato = getCandidatoForAnzianit("Academy");
	      risultato= candidato.stream()
	          .filter(x->x.getCompetenze().contains(competenze)
	              &&((x.getLuogoCandidatura().equals(sede)||x.getLuogoCandidatura().contains("E")||sede.contains("E")))
	              &&((x.getStato().equals(stato)||stato.compareTo("")==0)))
	          .collect(Collectors.toList());

	          return risultato;    
	    }
	
	//metodo per la selezione dei senior
	public List<Candidato> getSeniorForParameter(String sede,String competenze, String stato, String pos){   
	      List<Candidato> senior= new ArrayList <Candidato>();
	      List<Candidato> risultato = new ArrayList<>();
	      senior = getCandidatoForAnzianit("Senior");
	      risultato= senior.stream()
	          .filter(x->x.getCompetenze().contains(competenze)
	              &&((x.getLuogoCandidatura().equals(sede)||x.getLuogoCandidatura().contains("E")||sede.contains("E")))
	              &&((x.getStato().equals(stato)||stato.compareTo("")==0))
	          	&&((x.getPosizioneLav().equals(pos)|| x.getPosizioneLav().equals("E") || pos.contains("E"))))
	          .collect(Collectors.toList());
	          return risultato;    
	    }
	  
	public void update(Candidato can) {
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();
		session.update(can);
		t.commit();
		session.close();
		
	}

	public Candidato getCanById(int id) {
		String sql="select * from cand where id=?";    
	    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Candidato>(Candidato.class));
	}
	
}
