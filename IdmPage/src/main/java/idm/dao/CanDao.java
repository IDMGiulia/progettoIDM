package idm.dao;


import java.sql.ResultSet;    
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;

import idm.beans.Candidato;
import idm.beans.Competenze;    


public class CanDao {
	JdbcTemplate template;   

	public void setTemplate(JdbcTemplate template) {    
		this.template = template;    
	}

	public void salva(Candidato candidato) {
		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();  
	    
		Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();  
		  
		SessionFactory factory = meta.getSessionFactoryBuilder().build();  
		int num = candidato.getComp().length;
		String[] comp = candidato.getComp();
		String descrizione=candidato.getCompetenze();
		List<Competenze> webFrameworkList = new ArrayList<Competenze>();
		for (int i=0; i<num;i++) {
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
		candidato.setCompetenze(descrizione);
		candidato.setFavoriteFrameworks(webFrameworkList);
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();
		session.saveOrUpdate(candidato);
		t.commit();
		session.close();

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
	public List<Candidato> getEmployees(){    
		return template.query("select * from candidati",new RowMapper<Candidato>(){    
			public Candidato mapRow(ResultSet rs, int row) throws SQLException {    
				Candidato e=new Candidato();    
				e.setId(rs.getInt(1));    
				e.setNome(rs.getString(2));  
				e.setCognome(rs.getString(3));
				e.setEmail(rs.getString(4));
				e.setTelefono(rs.getString(5));
				e.setCompetenze(rs.getString(6));        
				return e;    
			}    
		});    
	}
	public static void main(String[] args) {
		//idm.dao.CanDao;
	} */   
}
