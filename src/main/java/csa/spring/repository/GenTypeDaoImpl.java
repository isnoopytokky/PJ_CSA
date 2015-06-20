package csa.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;






import csa.spring.dao.GenTypeDao;
import csa.spring.model.GenType;



@Repository
public class GenTypeDaoImpl implements GenTypeDao{
	
	@Autowired
	private SessionFactory session;

	@Override
	public void add(GenType GenType) {
		session.getCurrentSession().save(GenType);
	}

	@Override
	public void edit(GenType GenType) {
		session.getCurrentSession().update(GenType);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getGenType(id));
	}

	@Override
	public GenType getGenType(int id) {
		
		return (GenType) session.getCurrentSession().get(GenType.class, id);
	}

	@Override
	public List getAllGenType() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from GenType").list();
	}
 

	
  

}
