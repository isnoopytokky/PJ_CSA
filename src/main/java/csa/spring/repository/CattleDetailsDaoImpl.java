package csa.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;





import csa.spring.dao.CattleDetailsDao;
import csa.spring.model.CattleDetails;



@Repository
public class CattleDetailsDaoImpl implements CattleDetailsDao{
	
	@Autowired
	private SessionFactory session;

	@Override
	public void add(CattleDetails cattledetail) {
		session.getCurrentSession().save(cattledetail);
	}

	@Override
	public void edit(CattleDetails cattledetail) {
		session.getCurrentSession().update(cattledetail);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getCattleDetail(id));
	}

	@Override
	public CattleDetails getCattleDetail(int id) {
		
		return (CattleDetails) session.getCurrentSession().get(CattleDetails.class, id);
	}

	@Override
	public List getAllCattleDetail() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from CattleDetails").list();
	}

	@Override
	public List getCattleDetailByType(int  typeid) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from CattleDetails where c_typeid = "+typeid).list();
	}

	
  

}
