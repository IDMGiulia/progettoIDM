package idm.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import idm.beans.Recensione;

public class RecensioneDao extends Dao {
	
	StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();  
	Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();  
	SessionFactory factory = meta.getSessionFactoryBuilder().build();
	
	public void salva(Recensione recensione) {
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();
		recensione.setApprovata(false);
		session.saveOrUpdate(recensione);
		t.commit();
		session.close();
	}
}
