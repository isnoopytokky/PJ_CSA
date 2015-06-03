package csa.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import csa.spring.dao.FestivityDao;
import csa.spring.model.Festivity;

@Repository
public class FestivityDaoImpl implements FestivityDao {
	@Autowired
	private SessionFactory session;

	@Override
	public void add(Festivity festivity) {
		session.getCurrentSession().save(festivity);
	}

	@Override
	public void edit(Festivity festivity) {
		session.getCurrentSession().update(festivity);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getFestivity(id));
	}

	@Override
	public Festivity getFestivity(int id) {
		
		return (Festivity) session.getCurrentSession().get(Festivity.class, id);
	}

	@Override
	public List getAllFestivity() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Festivity").list();
	}
	
	@Override
	public List getAdmin1() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Festivity where type=1").list();
	}

	
	

}
