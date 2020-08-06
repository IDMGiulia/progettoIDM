package idm.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

import org.hibernate.SessionFactory;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import idm.beans.Amministrazione;

public class AmministrazioneDao {

	StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();  
	Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();  
	SessionFactory factory = meta.getSessionFactoryBuilder().build();
	
	JdbcTemplate template;  
	
	public void setTemplate(JdbcTemplate template) {    
		this.template = template;    
	}
	public List<Amministrazione> getAmministrazione(){
		return template.query("select * from amministrazione", new RowMapper<Amministrazione>() {
			public Amministrazione mapRow(ResultSet rs, int row)throws SQLException{
				Amministrazione a= new Amministrazione();
				a.setUsername(rs.getString(1));
				a.setPassword(rs.getString(2));
				a.setPermessi(rs.getInt(3));
				return a;
			}
		});
	}


	public Optional<Amministrazione> login(String username, String password){
		List<Amministrazione>list=this.getAmministrazione();
		Optional<Amministrazione> risultato=null;
		risultato=list.stream()
				.filter(x->x.getUsername().equals(username)&&x.getPassword().equals(password))
				.findFirst();
		
		return risultato;
	}
}
