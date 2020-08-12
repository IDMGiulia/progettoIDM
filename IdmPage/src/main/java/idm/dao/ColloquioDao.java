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

import idm.beans.Colloquio;


public class ColloquioDao {
	
	StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();  
    
	Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();  
	  
	SessionFactory factory = meta.getSessionFactoryBuilder().build();
	
	
	JdbcTemplate template;   

	public void setTemplate(JdbcTemplate template) {    
		this.template = template;    
	}
	
	//metodo per il salvataggio dei senior
	public void inserisci(Colloquio colloquio) {
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();
		session.saveOrUpdate(colloquio);
		t.commit();
		session.close();
	}
	
	
	//metodo per visualizzare tutti i senior
	public List<Colloquio> getColloqui(){    
		return template.query("select * from colloqui",new RowMapper<Colloquio>(){    
			public Colloquio mapRow(ResultSet rs, int row) throws SQLException {    
				Colloquio e=new Colloquio();    
				e.setId(rs.getInt(1));    
				e.setCandidato(rs.getInt(2));
				e.setData(rs.getString(3));
				e.setTipo(rs.getString(4));
				e.setNote(rs.getString(5));
				e.setValutazione(rs.getFloat(6));
				return e;    
			}    
		});    
	}
	
	
	//metodo per la selezione dei colloqui di un certo candidato
	public List<Colloquio> getColloquiCan(int candidato){   
	      List<Colloquio> colloqui= new ArrayList <Colloquio>();
	      List<Colloquio> risultato = new ArrayList<>();
	      colloqui = this.getColloqui();
	      risultato= colloqui.stream()
	          .filter(x->x.getCandidato()==candidato)
	          .collect(Collectors.toList());
	          return risultato;    
	    }
	
	public Colloquio getColById(int id) {
		String sql="select * from colloqui where id=?";    
	    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Colloquio>(Colloquio.class));
	}

}
