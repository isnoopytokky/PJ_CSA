package csa.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;






import csa.spring.dao.TypeCowDao;
import csa.spring.model.Typecow;



@Repository
public class TypeCowDaoImpl implements TypeCowDao{
	
	@Autowired
	private SessionFactory session;

	@Override
	public void add(Typecow typecow) {
		session.getCurrentSession().save(typecow);
	}

	@Override
	public void edit(Typecow typecow) {
		session.getCurrentSession().update(typecow);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getTypecow(id));
	}

	@Override
	public Typecow getTypecow(int id) {
		
		return (Typecow) session.getCurrentSession().get(Typecow.class, id);
	}

	@Override
	public List getAllTypecow() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Typecow").list();
	}
 

	
  

}
