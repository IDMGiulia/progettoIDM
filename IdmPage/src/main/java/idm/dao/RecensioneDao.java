package idm.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

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


import idm.beans.Recensione;

public class RecensioneDao {
	
	StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();  
	Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();  
	SessionFactory factory = meta.getSessionFactoryBuilder().build();
	
	JdbcTemplate template;  
	
	public void setTemplate(JdbcTemplate template) {    
		this.template = template;    
	}
	
	public void salva(Recensione recensione) {
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();
		recensione.setApprovata(false);
		session.saveOrUpdate(recensione);
		t.commit();
		session.close();
	}
	
	
	
	//metodo per visualizzare tutti i candidati
		public List<Recensione> getRecensioni(){    
			return template.query("select * from recensione",new RowMapper<Recensione>(){    
				public Recensione mapRow(ResultSet rs, int row) throws SQLException {    
					Recensione e=new Recensione();    
					e.setRecId(rs.getInt(1));    
					e.setNome(rs.getString(2));  
					e.setCognome(rs.getString(3));
					e.setRecensione(rs.getString(4));
					e.setApprovata(rs.getBoolean(5));
					return e;    
				}    
			});    
		}
		
		//metodo per eliminare una recensione
		public int deleteRecensione(int id){    
			String sql="delete from recensione where recId="+id+""; 
			return template.update(sql);    
		} 
		
		//metodo per aggiornare una recensione 
		public void update(Recensione rec) {
			Session session = factory.openSession();  
			Transaction t = session.beginTransaction();
			session.update(rec);
			t.commit();
			session.close();
			
		}

		public Recensione getRecById(int id) {
			String sql="select * from recensione where recId=?";    
		    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Recensione>(Recensione.class));
		}
		
	
	
	
	
}
