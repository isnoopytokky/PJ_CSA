package csa.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import csa.spring.dao.StatusNoDao;

import csa.spring.model.StatusNo;

@Repository
public class StatusNoDaoImpl implements StatusNoDao {
	
	@Autowired
	private SessionFactory session;

	@Override
	public void add(StatusNo statusno) {
		session.getCurrentSession().save(statusno);
	}

	@Override
	public void edit(StatusNo statusno) {
		session.getCurrentSession().update(statusno);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getStatusNo(id));
	}

	@Override
	public StatusNo getStatusNo(int id) {
		
		return (StatusNo) session.getCurrentSession().get(StatusNo.class, id);
	}

	@Override
	public List getAllStatusNo() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from StatusNo").list();
	}

}
