package idm.dao;
import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;    
import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;

import idm.beans.Candidato;    


public class CanDao {
	JdbcTemplate template;   

	public void setTemplate(JdbcTemplate template) {    
		this.template = template;    
	}    
	public int salva(Candidato p){    
		System.out.println("sono entrata");
		String sql="insert into candidati(nome,cognome,email,telefono,competenze) values('"+p.getNome()+"',"+p.getCognome()+",'"+p.getEmail()+"',"+p.getTelefono()+",'"+p.getCompetenze()+"')";  
		return template.update(sql);    
	}
	/*
public int update(Candidato p){  
    String sql="update Emp99 set name='"+p.getName()+"', salary="+p.getSalary()+",designation='"+p.getDesignation()+"' where id="+p.getId()+"";    
    return template.update(sql);    
}   */ 
	public int delete(int id){    
		String sql="delete from Emp99 where id="+id+"";    
		return template.update(sql);    
	}    
	/*public Emp getEmpById(int id){    
    String sql="select * from candidati where id=?";    
    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Emp>(Emp.class));    
}  */  
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
	}    
}
