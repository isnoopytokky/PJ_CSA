package csa.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;






import csa.spring.dao.TypeDao;
import csa.spring.model.Type;



@Repository
public class TypeDaoImpl implements TypeDao{
	
	@Autowired
	private SessionFactory session;

	@Override
	public void add(Type Type) {
		session.getCurrentSession().save(Type);
	}

	@Override
	public void edit(Type Type) {
		session.getCurrentSession().update(Type);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getType(id));
	}

	@Override
	public Type getType(int id) {
		
		return (Type) session.getCurrentSession().get(Type.class, id);
	}

	@Override
	public List getAllType() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Type").list();
	}
 

	
  

}
